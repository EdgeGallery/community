### 发布时间
2020.3.30

### 项目概述 Project Overview
设计态平台主要完成应用的可视化设计，通过集成MEP能力/生态能力等，帮助开发者在应用开发之前完成应用的概要设计。
同时还为EdgeGallery平台维护者，提供平台快速部署的能力，帮助开发者按需部署平台。

### 架构设计   Architecture changes fron last release

- 架构视图

![输入图片说明](https://images.gitee.com/uploads/images/2021/0202/115602_7be3ddac_5659718.png "屏幕截图.png")

- 部署视图：

![输入图片说明](https://images.gitee.com/uploads/images/2021/0202/115629_422f6336_5659718.png "屏幕截图.png")

### v1.1引入的新功能特性 New component capabilites for v1.0
- 实现EdgeGallery按需部署界面框架
- 实现应用设计的界面展示

### 新增或者修改的接口  New or modified interfaces

| API | 方法 | API说明 | 修改或新增 | 说明 |
| --- | --- | --- | --- | --- |
| /mec/design/v1/projects | POST | 新建项目 | 新增 | 创建一个设计任务 |
| /mec/design/v1/projects/{projectsId} | DELETE| 删除项目 | 新增 | 删除一个设计任务 |
| /mec/design/v1/projects| GET| 查询 | 新增| 查看所有的设计任务，支持分页|
| /mec/design/v1/eg/models    | GET| 查询模型 | 新增| 获取所有的eg组件模型 |
| /mec/design/v1/projects/{projectId}/action/save    | POST | 保存结果 | 新增 | 保存设计结果 |
| //mec/design/v1/projects/{projectId}/design-result   | GET| 查询结果 | 新增| 获取设计结果，用于界面展示结果 |
| mec/design/v1/projects/{projectId}/deploy-script    | GET| 下载脚本 | 新增| 获取设计后的部署脚本 |
|/mec/design/v1/public/projects | POST | 创建项目 | 新增 | Developer调用设计态接口，进行应用设计 |

#### 如有， 他们是否是向后兼容的 If modified, are the backwards compatible
不涉及

### 接口API简述 interface naming
N/A

### 系统的限制目前有哪些  What are the system limits
tenant用户可见，暂不支持admin和guest用户
