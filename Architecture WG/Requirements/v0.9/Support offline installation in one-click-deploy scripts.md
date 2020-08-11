### 需求来源

EdgeGallery 版本规划

### 需求描述
- 部署Edgegallery平台支持离线和all-in-one形态安装；
### 涉及模块 && EPIC && Story
- 【platform-mgmt】本地创建仓库repo，从远端仓库下载images到local仓库
   - 工作量：1K shell
- 【helm chart】helm chart 的配置支撑从本地run images
   - 工作量：0.1K
- 【CICD】部署CD任务验证离线部署和all-in-one部署能力
   - 工作量：0.5K jjb scripts；
    - 安装组网图
    ![输入图片说明](https://images.gitee.com/uploads/images/2020/0811/174350_ea6646e2_7624512.png "oflline installer for edgegallery.png")
###  接口定义
NA
### 工作量评估
完成开发和测试验证，预计15人；