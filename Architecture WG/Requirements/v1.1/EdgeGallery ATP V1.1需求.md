### 需求来源
EdgeGallery版本规划。
### 需求描述
1. 引入Test Scenario， Test Suite，Test Cases三层模型概念。管理员可以在管理面对测试场景、测试套、测试用例进行管理。
测试场景、测试套、测试用例的关系如下：


### Usecase

### 涉及模块 && EPIC && Story
涉及模块：ATP
EPIC: 
- [【ATP】ATP测试用例扩充](https://gitee.com/OSDT/dashboard/issues?id=I2NU3F)  
- [【ATP】测试用例模型增强](https://gitee.com/OSDT/dashboard/issues?id=I2EBZ2)  
STORIES:
- [ATP测试用例扩充到总数14个](https://gitee.com/OSDT/dashboard/issues?id=I2NU9C)  
- [ATP管理面portal优化](https://gitee.com/OSDT/dashboard/issues?id=I2EC3E)  
- [ATP优化问题单（用例下载，测试报告下载格式修改](https://gitee.com/OSDT/dashboard/issues?&id=I2EC47)
- [支持在用户面贡献测试用例](https://gitee.com/OSDT/dashboard/issues?id=I2EC4R) 
- [支持手工测试 用例](https://gitee.com/OSDT/dashboard/issues?id=I2EC5P) 
- [ATP应用包区分ARM、X86](https://gitee.com/OSDT/dashboard/issues?id=I2EC1E)
- [ATP应用支持分权控制，区分不同角色进行差异化功能展现](https://gitee.com/OSDT/dashboard/issues?id=I2E6SQ)
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
7.4k