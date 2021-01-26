### 需求来源
EdgeGallery版本规划。
### 需求描述
1. 引入Test Scenario， Test Suite，Test Cases三层模型概念。管理员可以在管理面对测试场景、测试套、测试用例进行管理。
测试场景、测试套、测试用例的关系如下：
      

### Usecase

### 涉及模块 && EPIC && Story
涉及模块：Installer，Developer，AppStore，MECM  
EPIC: 
- [【Installer/Developer/MECM/AppStore】支持容器镜像管理](https://gitee.com/OSDT/dashboard?issue_id=I2E40L)  
STORIES:
- [【Installer】支持容器镜像管理](https://gitee.com/OSDT/dashboard/issues?id=I2E3RE)  
- [【Developer】支持容器镜像管理](https://gitee.com/OSDT/dashboard/issues?id=I2E3SL)  
- [【AppStore】支持容器镜像管理 Support Container Image Manage](https://gitee.com/OSDT/dashboard/issues?id=I2E3T8)
### 业务流程
![输入图片说明](https://images.gitee.com/uploads/images/2021/0126/113548_2505f469_7624954.png "imagemgr1.PNG")
![输入图片说明](https://images.gitee.com/uploads/images/2021/0126/113601_d8666eaf_7624954.png "imagemgr2.PNG")
### 接口定义
涉及新增/变更的接口：
|模块|新增or修改|接口名称|Method |URL |接口描述|
|----|---------|-------|-------|----|--------|
|Developer|新增|上传APP镜像|POST| 待定义 | Developer支持应用开发者上传APP镜像|
|Appstore|修改|上传AppPackage|POST|/mec/appstore/v1/apps/{appId}/packages/{packageId}/action/publish| Developer往AppStore发布app镜像，该接口涉及流程更新，需要支持镜像的相关处理，从developer将镜像发布到appstore的镜像仓库中|
|MECM| 新增 | 从appStore同步appPackage |POST | 待定义 | MECM使用，从appStore同步单个应用，MECM将apppackage同步到MECM，并将镜像push到中心仓|


### 工作量预估 estimate effort
4k