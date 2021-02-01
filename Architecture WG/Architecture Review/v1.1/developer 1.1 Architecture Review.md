### 发布时间
2020.3.30

### 项目概述 Project Overview
Developer是开发者开发和测试边缘应用的edgegallery平台，该平台提供了开发工具、开放的API能力、集成测试验证环境等，完成测试后可直接生成统一规范的应用包，
使开发者更加方便快捷的开发应用并集成到edgegallery平台，开发者最终也可以选择发布自己的应用到appstore或者发布生态API。
![输入图片说明](https://images.gitee.com/uploads/images/2020/1116/105533_1d88ae68_7625288.png "屏幕截图.png")

### 架构设计   Architecture changes fron last release


开发者平台功能架构图

v1.1的目标：
- 优化部署调测：提升应用本地调测能力, 新增日志下载
- 虚机支持：支持虚机部署，打通虚机申请、测试、打包、发布流程
- 管理面开发：新增项目管理、沙箱环境管理、能力中心管理
- 开发指导界面：端到端的指导文档，包括如何使用mep的能力进行服务注册发现、路由转发以及SDK的使用
- VNC远程登录：容器和虚机支持VNC远程登录
- CSAR包优化：支持配置镜像包信息，相关资源定义


### v1.1引入的新功能特性 New component capabilites for v1.0
* 提升应用本地调测能力, 提示详细的错误信息以及修改建议，提供日志下载
* 虚机支持：支持虚机部署，创建项目提供虚机创建、虚机申请、虚机测试、虚机镜像打包、虚机应用发布
* VNC远程登录：容器和虚机支持VNC远程登录
* 支持镜像上传：csar包支持配置镜像信息
* develoepr管理面开发：项目管理、沙箱环境管理、能力中心管理
![输入图片说明](https://images.gitee.com/uploads/images/2020/1116/105641_2d41bc04_7625288.png "屏幕截图.png")
v1.1需求

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

https://gitee.com/edgegallery/docs/blob/master/Projects/Developer/Developer_Interfaces.md

### 系统的限制目前有哪些  What are the system limits
如操作系统，用户权限等等
新增admin用户权限的相关操作