### 发布时间
2020.3.30

### 项目概述 Project Overview
设计态平台主要完成应用的可视化设计，通过集成MEP能力/生态能力等，帮助开发者在应用开发之前完成应用的概要设计。
同时还为EdgeGallery平台维护者，提供平台快速部署的能力，帮助开发者按需部署平台。

### 架构设计   Architecture changes fron last release



v1.1的目标：
- 实现EdgeGallery按需部署界面框架
- 实现应用设计的界面展示

### v1.1引入的新功能特性 New component capabilites for v1.0
- 实现EdgeGallery按需部署界面框架
- 实现应用设计的界面展示

### 新增或者修改的接口  New or modified interfaces

| API | 方法 | API说明 | 修改或新增 | 说明 |
| --- | --- | --- | --- | --- |
| /mec/developer/v1/deploy/ | POST | 可视化配置接口 | 新增 | 用于可视化部署文件配置 |
| /mec/developer/v1/hosts/vnc | POST | 远程登录接口 | 新增 | 用于容器或虚机远程登录 |
| /mec/developer/v1/system/projects | POST | 项目管理接口 | 新增| developer管理员查看所有项目详情|
| /mec/developer/v1/system/hosts    | POST | 新增沙箱环境接口 | 新增| developer管理员新增沙箱环境 |
| /mec/developer/v1/system/hosts | PUT | 修改沙箱环境接口 | 新增 | developer管理员修改沙箱环境 |
| /mec/developer/v1/system/hosts | DELETE | 删除沙箱环境接口 | 新增 | developer管理员删除沙箱环境 |
| /mec/developer/v1/system/hosts/logs | GET | 沙箱环境操作日志接口 | 新增 | 记录沙箱环境的操作日志 |
| /mec/developer/v1/system/capability | POST | 上传平台服务能力 | 新增 | developer管理员新增平台能力   |
| /mec/developer/v1/system/capability | PUT | 修改平台服务能力 | 新增 | developer管理员修改平台能力   |
| /mec/developer/v1/system/capability | DELETE | 删除平台服务能力 | 新增 | developer管理员删除平台能力   |
| /mec/developer/v1/system/capability | GET | 获取服务所有能力 | 新增 | developer管理员获取平台能力   |
| /mec/developer/v1/projects/vm-test-config | POST| 创建虚机部署测试接口 | 新增 | 创建虚机部署测试详情 |
| /mec/developer/v1/projects/vm-test-config | PUT| 修改虚机部署测试接口 | 新增 | 修改虚机部署测试详情 |
| /mec/developer/v1/projects/vm-test-config | DELETE| 删除虚机部署测试接口 | 新增 | 删除虚机部署测试详情 |
| /mec/developer/v1/projects/vm-test-config | GET| 获取虚机部署测试接口 | 新增 | 获取虚机部署测试详情 |
| /mec/developer/v1/vm/resource | POST| 创建虚机部署资源详情接口 | 新增 | 创建虚机部署资源详情接口 |
| /mec/developer/v1/vm/resource | PUT| 修改虚机部署资源详情接口 | 新增 | 修改虚机部署资源详情接口 |
| /mec/developer/v1/vm/resource | DELETE| 删除虚机部署资源详情接口 | 新增 | 删除虚机部署资源详情接口 |
| /mec/developer/v1/vm/resource | GET| 获取虚机部署资源详情接口 | 新增 | 创建虚机部署资源详情接口 |
| /mec/developer/v1/project/vm/deploy | POST | 虚机镜像打包 | 新增 | 将虚机打包成镜像 |
| /mec/developer/v1/project/vm/files | POST | 向虚机上传文件 | 新增 | 向虚机上传文件接口 |

#### 如有， 他们是否是向后兼容的 If modified, are the backwards compatible
是

### 接口API简述 interface naming

### 系统的限制目前有哪些  What are the system limits
如操作系统，用户权限等等
新增admin用户权限的相关操作