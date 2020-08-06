First, let's talk about what Jenkins did.

![输入图片说明](https://images.gitee.com/uploads/images/2020/0709/172953_d0b33f1d_5504908.jpeg "dr1.jpg")

Jenkins pulls code from the Git repository, uses the written Dockerfile docker build to generate an image, and then pushes the image to the Docker Registry. Then pull the image from the Docker Registry and run it as a container. Once the purpose is clear, the problem can be easily solved by doing this set.

According to the project requirements, we have to create 2 Jenkins projects for api 、5 Jenkins projects for daily tasks and 2 Jenkins projects for weekly tasks.The following is the Jenkins project I created


#### Api jobs

*   Project integration-testing-api-docker-image-build-master
    
*   Project integration-testing-api-docker-image-run-master


#### Daily build

*   Project integration-testing-docker-image-build-update-daily-master
    
*   Project integration-testing-docker-image-build-update-daily-maste
    
*   Project integration-testing-EdgegalleryDeveloper-daily-master
    
*   Project integration-testing-EdgegalleryAppStore-daily-master
    
*   Project integration-testing-EdgegalleryMecm-daily-master
    

#### Weekly build

*   Project integration-testing-docker-image-build-update-weekly-stable
    
*   Project integration-testing-zoneminde-csit-weekly-master
    

Build
=====

The most important part of the CI integrated into Jenkins is the Build module. You need to write the shell script for building the image in the Build module. The code of the build module for each task is similar, so I won’t repeat them one by one. Take the following two modules as examples

### integration-testing-docker-image-build-update-daily-master

1.Set the shell execution mode

```
#!/bin/bash
set -x
set -e
```

2.Enter the path where the docker folder is located

```
cd $WORKSPACE/edgegallery-csit-master/
```

3.Build a Docker image.

```
docker build -t edgegallery/integration-testing:latest -f docker/dockerfile .
```

4.Push to the Docker Registry

```
docker push edgegallery/integration-testing:latest
```

In this way, the configuration of the image building is complete.Now, let's see how to start the container to execute test cases and generate test reports.

### integration-testing-docker-image-build-update-daily-maste

1.Set the shell execution mode

```
#!/bin/bash
set -x
```

2.Delete the original folder for saving the test report and create a new one.

```
rm -rf /home/jenkins/workspace/integration-testing-zoneminde-csit-daily-master/UsercaseTestForPortal/tests/reportfile
mkdir /home/jenkins/workspace/integration-testing-zoneminde-csit-daily-master/UsercaseTestForPortal/tests/reportfile
```

3.Stop and delete the original container

```
docker stop integ-testing
docker rm integ-testing
```

4.Delete the original image

```
docker rmi edgegallery/integration-testing
```

5.Run the container.

```
docker run -dit -e PLANPATH="functionalityCI" -e PLATFORM="x86" -e SYSDEV="159.138.49.97:30092" -e SYSAPP="159.138.49.97:30091" -e SYSMECM="159.138.49.97:30093" -e IPURL="119.8.125.174" --shm-size="1g" -p 8080:9987 --name integ-testing edgegallery/integration-testing:latest
```

Parameter Description

*   PLANPATH：Test case suite folder name to be executed，the test case suite path is edgegallery-csit-master/plans/integration
    
*   PLATFORM：The current platform is x86
    
*   SYSDEV：The IP address and port of the developer platform page
    
*   SYSAPP：The IP address and port of the appstore platform page
    
*   SYSMECM：The IP address and port of the mecm platform page
    
*   IPURL：IP of APPLCM node
    

6.Copy the test report folder from the container to the host

```
containerid=$(docker ps -aqf 'name=integ-testing')
docker cp $containerid:/home/edgegallery/archives /home/jenkins/workspace/integration-testing-zoneminde-csit-daily-master/UsercaseTestForPortal/tests/reportfile
```

The shell script configuration is complete. Next, configure the plug-in that generates the test report.

Post-build Actions
==================

### Publish Robot Framework test results

![输入图片说明](https://images.gitee.com/uploads/images/2020/0709/173124_2800bdce_5504908.png "dr2.png")

### Editable EmailNotification

![输入图片说明](https://images.gitee.com/uploads/images/2020/0709/173134_c4cd2d4a_5504908.png "dr3.png")

Other configurations have been configured in the global configuration. If you need to configure them separately, modify them in different projects.

Test Report
===========

![输入图片说明](https://images.gitee.com/uploads/images/2020/0709/173149_2aaf2c81_5504908.png "dr4.png")

On the construction page, you can view the execution status of test cases. To view detailed causes, click Open report.html.

![输入图片说明](https://images.gitee.com/uploads/images/2020/0709/173203_da5fd9dc_5504908.png "dr5.png")