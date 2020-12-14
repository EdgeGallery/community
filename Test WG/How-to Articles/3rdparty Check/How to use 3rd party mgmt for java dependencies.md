# 3rd Party Management for Java Dependency

All Java dependencies imported by the JAVA projects in EdgeGallery can be separated into 2 parts,
direct dependencies and indirect ones. What EdgeGallery community concerned is all direct dependencies
including the dependency name and its version. That means, all direct dependencies and
their versions used by one project should be approved by the community before.
Currently for one direct dependency, there is only one version accepted by the community.

# JAVA Projects Developer

For Java projects (e.g. developer-be and mecm-app) developers, please try your best to use the dependencies
and the versions which have been accepted by the community. You can go to the file
[global dependencies file](https://gitee.com/edgegallery/ci-management/blob/master/3rdparty-check/java/conf/global_direct_dependencies.yaml),
which lists the whole scope of Java direct dependencies.

If it's necessary to use another dependency that haven't been accepted by the community, please following
the guide below to add it into the [community's global dependencies scope](https://gitee.com/edgegallery/ci-management/blob/master/3rdparty-check/java/conf/global_direct_dependencies.yaml).

## Add New Java Projects

There is a [project file](https://gitee.com/edgegallery/ci-management/blob/master/3rdparty-check/java/conf/projects.yaml)
list all these Java projects. If your project is not included in this file, please add it here.

After adding the project into [project file](https://gitee.com/edgegallery/ci-management/blob/master/3rdparty-check/java/conf/projects.yaml),
please use  **generate**  command to automatically add all dependencies that new in this new project
but haven't been added into [global dependencies file](https://gitee.com/edgegallery/ci-management/blob/master/3rdparty-check/java/conf/global_direct_dependencies.yaml).

```
root@ubuntu:~# git clone https://gitee.com/edgegallery/ci-management.git
root@ubuntu:~# cd ci-management/3rdparty-check/java
root@ubuntu:~/ci-management/3rdparty-check/java# mvn assembly:assembly
root@ubuntu:root@ubuntu:~/ci-management/3rdparty-check/java# java -jar -Dmethod=generate -Dfile=../conf/global_requirements.yaml target/java-dependency-check-1.0-SNAPSHOT-jar-with-dependencies.jar
```

## Check All Direct Dependencies

In this part, we will take the project  _developer-be_  as the example. When you are adding a new direct module
to its  _pom.xml_  file, and then create a PR to  _developer-be_  project, there is a Jenkins Job named
"developer-be-3rdParty-check-{branch}" triggered as the gating job. Only when this job build successfully,
this PR can be merged. This job checks all direct dependencies list in _pom.xml_ file.

In this case, this Job will be failed because you are adding a new direct dependencies.
Also you can find the error message in the job's console output.

```
+ java -jar -Dmethod=check -DprojectDir=/home/jenkins/workspace/developer-be-3rdparty-check-master target/java-dependency-check-1.0-SNAPSHOT-jar-with-dependencies.jar
2020-12-14 11:01:47,923 DEBUG [org.edgegallery.thirdparty.utils.MavenCmds] - Successfully list all direct dependencies in /home/jenkins/workspace/developer-be-3rdparty-check-master to /home/jenkins/workspace/developer-be-3rdparty-check-master/direct_dependencies.txt
2020-12-14 11:01:47,925 DEBUG [org.edgegallery.thirdparty.utils.FileOps] - Successfully read file /home/jenkins/workspace/developer-be-3rdparty-check-master/direct_dependencies.txt
2020-12-14 11:01:47,997 ERROR [org.edgegallery.thirdparty.check.CheckDependency] - The version of direct dependency org.springframework.security.oauth:spring-security-oauth2:jar doesn't in global scope
2020-12-14 11:01:47,997 ERROR [org.edgegallery.thirdparty.check.CheckDependency] - Current version is 2.5.0.RELEASE, shoule be changed to [2.3.3.RELEASE]
2020-12-14 11:01:47,997 ERROR [org.edgegallery.thirdparty.DependencyMgmt] - Failed to check project under /home/jenkins/workspace/developer-be-3rdparty-check-master
Build step 'Execute shell' marked build as failure
Finished: FAILURE
```

What the console output mean is that, dependency version **2.5.0.RELEASE** of **org.springframework.security.oauth:spring-security-oauth2**
hasn't been accepted by EdgeGallery community as direct modules. With this reason, this PR can't be merged until solving
this issue.

## Add a New Dependency into the Whole Scope

Before adding the new dependency, you need to make sure that this dependency meets the requirements of
what EdgeGallery require. Please following the checklist below and provide the supporting materials
when submitting the request.

- License of this dependency
- CVE Score (NA if couldn't find this module)

After getting all supporting materials, please add the new dependency and all its related indirect dependency
to [global dependency file](https://gitee.com/edgegallery/ci-management/blob/master/3rdparty-check/java/conf/global_direct_dependencies.yaml).
After that you can create a PR to project  _ci-management_  and attach your supporting materials for reviewing.

Also project _ci-management_ has a gating job named "ci-management-3rdparty-check-{branch}". Please make sure this job successful which means:

- The file is still in good status after you have changed it
    - Each dependency is with the required format
    - There are no duplicate lines
    - There are only one specify version of one direct dependency

After the community (Test WG) reviewing the PR creating in project _ci-management_ and then merging it,
the new dependencies have been approved by the community. Then please re-trigger the gating job of your own
project and it should be successful, which means your PR to add the new dependencies is ready to be merged now.