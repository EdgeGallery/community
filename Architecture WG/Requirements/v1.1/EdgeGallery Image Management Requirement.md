### 需求来源
EdgeGallery版本规划。当前版本EdgeGallery未对应用镜像进行管理。在V1.1版本中，需要管理应用镜像。
### 需求描述
EdgeGallery的Developer，AppStore，MECM均需有自身的镜像仓库。Developer镜像仓库管理应用开发&集成过程中用户上传的调测镜像，AppStore镜像仓库管理已发布的镜像，MECM镜像仓库作为中心仓库，管理生产系统中的镜像。
Installer支持在部署时部署容器镜像仓库（默认部署，可选，系统部署人员可以选择其他仓库进行设置）

Developer需要支持系统自有的容器镜像仓库，Developer支持配置镜像仓库信息，暂时支持配置文件即可
Developer支持用户上传镜像，系统后台将上传的镜像上传到Developer的镜像仓库中。（注意，如果仓库中已经有该镜像且内容相同，可以不需要重复上传，确保速度。）
Developer支持部署测试时，从系统镜像仓库获取部署脚本中的镜像。
Developer支持在发布到AppStore时，将应用镜像信息传递给appstore。

AppStore需要支持系统自有的容器镜像仓库，AppStore的支持配置镜像仓库信息，暂时支持配置文件即可
AppStore支持在Developer发布应用时，将镜像从Developer拉取到AppStore。（注意，如果appstore镜像仓库中已经有该镜像且内容未改变，可以不需要重复拉取。确保速度）

MECM需要支持系统自有的容器镜像仓库，MECM支持配置镜像仓库信息，暂时支持配置文件即可
MECM support its own docker repo, MECM admin portal should support the docker repoinfo config.
MECM支持从Appstore同步应用，同步时，将应用镜像同步到MECM的镜像仓库。（注意，如果MECM镜像仓库中已经有该应用镜像且内容未改变，可以不需要重复同步，确保速度）
MECM support synchronize the app from appstore, and also pull the docker image from appstores repo and save to MECM's repo.
If the docker image already exist(no change), we can directly return success to save the sync time(so that when we do demo it will not take a long time to sychronize the image.)
MECM支持分发应用时，将应用镜像从MECM镜像仓库到边缘的集群中。（注意，如果边缘节点上已经有该应用镜像且内容未改变，可以不需要重复同步，确保速度）
MECM distribute the app package, MECM should support to distribute the image from centrilized repo to the edge K8s cluster.
If the docker image already exist in the edge , we wont do it again to save the time (for the demo we can show distrubite quickly)
       
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

### 接口定义
涉及新增/变更的接口：
|模块|新增or修改|接口名称|Method |URL |接口描述|
|----|---------|-------|-------|----|--------|
|Developer|新增|上传APP镜像|POST| 待定义 | Developer支持应用开发者上传APP镜像|
|Appstore|修改|上传AppPackage|POST|/mec/appstore/v1/apps/{appId}/packages/{packageId}/action/publish| Developer往AppStore发布app镜像，该接口涉及流程更新，需要支持镜像的相关处理，从developer将镜像发布到appstore的镜像仓库中|
|MECM| 新增 | 从appStore同步appPackage |POST | 待定义 | MECM使用，从appStore同步单个应用，MECM将apppackage同步到MECM，并将镜像push到中心仓|


### 工作量预估 estimate effort
4k