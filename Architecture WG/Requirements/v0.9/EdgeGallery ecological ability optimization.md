### 需求来源

EdgeGallery 版本规划

### 需求描述
- 应用在开放自身到EdgeGallery后，会成为EdgeGallery生态应用。第三方应用如何获取并正确的使用生态应用，服务间通信如何定义？

### 涉及模块 && EPIC && Story
- 【DEV】CSAR包结构优化支持依赖应用部署与Service类型切换--1k
- 【DEV】模拟器流程优化，提供固定模拟器环境。并为生态应用自动生成框架代码与镜像--2k
- 【APP】CSAR包格式校验优化--0.3k
- 【APP】新增csar包部署测试功能--1.5k
- 【MECM】应用实例化功能优化，增加部署生态应用流程--0.5k
- 【APPLCM】应用实例化功能优化，增加对helm部署参数的支持--0.5k

### 方案分析

#### 【MECM】与【APP】场景
第三方应用使用k8s的ServiceName + Port的方式访问生态应用，并通过NameSpace进行网络隔离：
- 1) 当应用单独部署时Service使用NodePort类型，可不创建NameSpace，使用Default NameSpace；
- 2) 当应用作为生态应用部署时使用ClusterIP类型，并且生态应用与应用部署在单独的NameSpace中。
![输入图片说明](https://images.gitee.com/uploads/images/2020/0811/185320_dbf4db86_7625245.jpeg "1597143058(1).jpg")

#### 【DEV】场景
第三方应用使用k8s的ServiceName + Port的方式访问生态应用：
- 1) 当应用选择成为生态应用时，DEV直接将其部署在模拟器环境中，Service类型可以选择NodePort：
NodePort可以保证应用在开发阶段就可以通过 IP + Port 的形式，直接调用生态应用的api进行测试；提示开发者通过DEV进行部署验证时，要将代码中的 IP + Port 改为 ServiceName + Port。
- 2) 当应用需要部署测试时，DEV直接将其部署在模拟器环境中，无需重复部署依赖应用（生态应用）。
![输入图片说明](https://images.gitee.com/uploads/images/2020/0811/185415_fe9fb8fb_7625245.jpeg "1597143238(1).jpg")

### 工作量评估
5.8k