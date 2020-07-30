Container technology is a popular packaging method for developers and system administrators to build, ship and run distributed applications. EdgeGallery has adopted Docker technology, the design of good images ultimately boils down to the crafting of good Dockerfiles.

This page captures and develops best practices, guidance, recommendations and common tools for the design of images built using Dockerfiles.

* * *

General Guidelines
------------------



### 1\. Understand build context

When executing `docker build`, the current working directory is the _build context_. By default, the Dockerfile is assumed to be in the current working directory.

Irrespective of where the Dockerfile is located, all recursive contents of files and directories in the current directory are sent to the Docker daemon as the build context.

Inadvertently including files that are not necessary for building an image results in a larger build context and larger image size. This can increase the time to build the image, time to pull and push it, and the container runtime size.

### 2\. Exclude with .dockerignore

Exclude files not relevant to the build with a`.dockerignore` file. This file supports exclusion patterns similar to `.gitignore` files.

### 3\. Use multi-stage builds

[Multi-stage builds](https://docs.docker.com/develop/develop-images/multistage-build/) reduces the size of an image, without worrying about the number of intermediate layers and files. An image is built during the final stage of the build process. The number of image layers can be minimized by [leveraging build cache](https://docs.docker.com/develop/develop-images/dockerfile_best-practices/#leverage-build-cache).

For a build that contains several layers, order them from the less frequently changed (re-use build cache) to the more frequently changed:

*   Install tools you need to build your application

*   Install or update library dependencies

*   Generate your application

### 4\. Don’t install unnecessary packages

Avoid installing extra or unnecessary packages. This will reduce complexity, dependencies, file sizes, and build times.

Don't include a text editor in a database image.

### 5\. Decouple applications

Apply the principle of "[separation of concerns](https://en.wikipedia.org/wiki/Separation_of_concerns)"

Each container should have only one concern. Decoupling applications into multiple containers makes it easier to reuse containers.

### 6\. Minimize the number of layers

The instructions `RUN`, `COPY`, `ADD` create layers and directly increase the size of the build.

[Use multi-stage builds](https://docs.docker.com/develop/develop-images/multistage-build/), to only copy the artifacts you need into the final image. Tools and debug information can be added to intermediate build stages without increasing the size of the final image.

### 7\. Sort multi-line arguments

To minimize duplication of packages and make the list of packages much easier to update, sort multi-line arguments alphanumerically.

### 8\. Re-use the build cache

As each instruction in the Dockerfile is examined, the builder looks for an existing image in its cache that can be reused, rather than creating a duplicate image.

*   For the `ADD` and `COPY` instructions, the contents of the file(s) in the image are examined and a checksum is calculated for each file. The last-modified and last-accessed times of the file(s) are not considered in these checksums. During the cache lookup, the checksum is compared against the checksum in the existing images. If anything has changed in the file(s), such as the contents and metadata, then the cache is invalidated.

*   Aside from the `ADD` and `COPY` commands, cache checking does not look at the files in the container to determine a cache match.

*   For example, when processing a `RUN apt-get -y update` command the files updated in the container are not examined to determine if a cache hit exists. In that case just the command string itself is used to find a match.

Once the cache is invalidated, all subsequent Dockerfile commands generate new images and the cache is not used.

* * *

Run Docker as a non-root user
-----------------------------

The Docker containers by default run with the root privilege and so does the application that runs inside the container. This is a major concern from the security perspective because anyone who accesses your container running as root can start undesirable processes in it, such as injecting malicious code. And running a process in your container as root makes it possible to change the user id (UID) or group id (GID) when starting the container, which makes your application vulnerable. Hackers can gain root access to the Docker host by hacking the application running inside the container.

Changing the configuration of your containers to make them run as `non-root` adds an extra layer of security. Here's how you can run change a Docker container to run as a non-root user:

```
## CREATE APP USER ##
# Create the home directory for the new app user.
RUN mkdir -p /home/app

# Create an app user so our program doesn't run as root.
RUN groupadd -r app &&\
    useradd -r -g app -d /home/app -s /sbin/nologin -c "Docker image user" app

# Set the home directory to our app user's home.
ENV HOME=/home/app
ENV APP_HOME=/home/app/my-project

## SETTING UP THE APP ##
RUN mkdir $APP_HOME
WORKDIR $APP_HOME

# ***
# Do any custom logic needed prior to adding your code here
# ***

# Copy in the application code.
COPY --chown=app:app . $APP_HOME

# Change to the app user.
USER app
```