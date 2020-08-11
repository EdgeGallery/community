### 需求来源

EdgeGallery 版本规划

### 需求描述
- Edgegallery平台上的jenkins job支持以JJB的形式部署；
### 涉及模块 && EPIC && Story
- 【CICD】按照PR/build/gating/it/CD/Secuity 类别创建template，每个项目基于类型模板以上项目创建自己项目的JJB任务
- 工作量：预计工作量1.5k
    - Step1、在gitee上创建ci-management repo，创建各个类型jjb的template
    - Step2、移植已有的jenkins job到jjb格式；
    - Step3、jenkins定期从gitee上的ci-mangaement下获取最新的jjb任务，创建相应的jjb job；
![输入图片说明](https://images.gitee.com/uploads/images/2020/0811/181755_435f98ec_7624512.png "jjb .png")

###  接口定义
NA
### 工作量评估
预计工作量1.5k；