### 需求来源

EdgeGallery 版本规划

### 需求描述
- 开发者平台 APP的构建、测试、发布流程优化

### 涉及模块 && EPIC && Story
- 【Developer】新建项目只保留基本信息填写和依赖服务选择两步
    - 工作量：0.2K
     ![输入图片说明](https://images.gitee.com/uploads/images/2020/0811/173543_380393d7_7783954.jpeg "20200811173536.jpg")
- 【Developer】项目详情页面中的API、工具链、项目链接移出工作空间，多平台迁移工具在开发工具中显示
    - 工作量：0.2K
    ![输入图片说明](https://images.gitee.com/uploads/images/2020/0811/173523_fe97766e_7783954.jpeg "20200811173516.jpg")
- 【Developer】项目详情页面支持多种k8s资源的可视化部署
    - 工作量：3K
    - 参考kuboard等k8s可视化部署界面进行修改，支持k8s资源从页面配置或yaml文件导入、配置预检查、部署状态日志查看、第三方集群添加、csar包生成
      - 可视化编辑添加资源示意图：
      ![输入图片说明](https://images.gitee.com/uploads/images/2020/0811/170833_fb25b157_7783954.jpeg "20200811165543.jpg")
      - 从文件导入配置示意图：
      ![输入图片说明](https://images.gitee.com/uploads/images/2020/0811/171002_2d7f4fa8_7783954.jpeg "20200811170953.jpg")
      - 部署状态、日志查看示意图：
      ![输入图片说明](https://images.gitee.com/uploads/images/2020/0811/171114_1130e86f_7783954.jpeg "20200811171109.jpg")
      - 配置预检查示意图：
      ![输入图片说明](https://images.gitee.com/uploads/images/2020/0811/171212_ae5b2e42_7783954.jpeg "20200811171205.jpg")
      - 镜像管理，添加docker仓库示意图：
      ![输入图片说明](https://images.gitee.com/uploads/images/2020/0811/171335_efc9ac1b_7783954.jpeg "20200811171329.jpg")
- 【Developer】k8s集群连接管理、配置保存、预检查、mep-agent等配置注入、csar包生成、签名
    - 工作量：2K
    - 支持远程连接到k8s集群，并创建相应资源
    - 保存开发者通过界面配置或上传的资源
    - 检查资源配置的正确性、合法性
    - 将平台相关资源，如mep-agent、名称空间、服务暴露service注入到要部署的资源中
    - 部署资源状态监控、日志查看
    - 根据保存的用户配置导出最终的csar包，并进行签名处理
###  接口定义
NA

### 工作量评估
5.4K