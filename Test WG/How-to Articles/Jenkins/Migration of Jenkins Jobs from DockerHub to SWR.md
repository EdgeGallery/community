### Who Can use this Document?

This Document can be used by the people who wants to migrate their existing Jenkins Jobs from DockerHub to SWR

### Follow below steps to Migrate Jenkins Job from DockerHub to SWR

#### 1. Go to  Job -> Configure -> General
##### 1.1 Select Restrict where this project can be run checkbox
##### 1.2 and enter `openmec-jenkins-slave01` in Label Expression value
#### 2. Before performing Docker commands add following SWR Docker login command in “Execute Shell” of build section.

`docker login -u [Regional project name]@[AK] -p [Login key] [Image repository address]`

for more and actual information refer [this link](https://support.huaweicloud.com/en-us/usermanual-swr/swr_01_1000.html)

#### 3. While updating below commands be cautious, image name and image tag should not be changed in any case.
#### 4. Add Docker tag command after docker build, as below, by replacing module name and image tag value according to the original job configuration

 **Instance 1** : docker image tag is read from String parameter.

`docker tag edgegallery/mepauth:$IMAGE_TAG swr.ap-southeast-1.myhuaweicloud.com/edgegallery/mepauth:$IMAGE_TAG`
 
**Instance 2** : image tag value is mentioned directly in the command without referring any parameter value/ ENV value

`docker tag edgegallery/mepauth:1.0 swr.ap-southeast-1.myhuaweicloud.com/edgegallery/mepauth:1.0`

#### 5. Update docker push command as below, by replacing module name and image tag value according to the original job configuration

 **Instance 1** : docker image tag is read from String parameter of Jenkins job configuration.

`docker push swr.ap-southeast-1.myhuaweicloud.com/edgegallery/mepauth:$IMAGE_TAG`

 **Instance 2** : image tag value is mentioned directly in the command without referring any parameter value/ ENV value

`docker push swr.ap-southeast-1.myhuaweicloud.com/edgegallery/mepauth:1.0`

#### 6. Update docker manifest push command as below
Replace set1 with set2

 **Set 1**

`docker manifest push -p edgegallery/mep-agent:$IMAGE_TAG`

 **Set 2**

`docker tag edgegallery/mep-agent:$IMAGE_TAG swr.ap-southeast-1.myhuaweicloud.com/edgegallery/mep-agent:$IMAGE_TAG`

`docker manifest push swr.ap-southeast-1.myhuaweicloud.com/edgegallery/mep-agent:$IMAGE_TAG`

#### 7. Original/Base Job configuration
Docker Hub commands in Execute Shell of Build Section:  
![输入图片说明](https://images.gitee.com/uploads/images/2020/0720/194239_783b4d61_7642053.png "屏幕截图.png")
#### 8. SWR Migrated Job configuration:
Docker commands updated for SWR in Execute Shell of Build 
![输入图片说明](https://images.gitee.com/uploads/images/2020/0720/194228_6ee9fe53_7642053.png "屏幕截图.png")