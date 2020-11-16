### 发布时间
2020.12.13

### 项目概述 Project Overview
Developer是开发者开发和测试边缘应用的edgegallery平台，该平台提供了开发工具、开放的API能力、集成测试验证环境等，完成测试后可直接生成统一规范的应用包，
使开发者更加方便快捷的开发应用并集成到edgegallery平台，开发者最终也可以选择发布自己的应用到appstore或者发布生态API。
![输入图片说明](https://images.gitee.com/uploads/images/2020/1116/105533_1d88ae68_7625288.png "屏幕截图.png")

### 架构设计   Architecture changes fron last release
![输入图片说明](https://images.gitee.com/uploads/images/2020/1116/102645_f98a0276_7625288.png "屏幕截图.png")

开发者平台功能架构图

v1.0的目标：
- 开发者平台详情界面优化：能力详情-应用开发-部署调测-应用发布
- 支持多语言SDK下载：go、java、python（源码、安装指导）
- 应用部署测试端到端流程打通：是否依赖平台能力，是否发布API
- 应用规则配置：流量转发规则、DNS规则
- 集成应用测试：与ATP测试打通
- API管理界面的优化，支持生态API的删除

### v1.0引入的新功能特性 New component capabilites for v1.0
* 多语言SDK的集成：支持swagger API生成多语言SDK源码（支持java、python、go）
* 新增展示部署详情：显示Pod信息，下载应用日志
* 新增应用发布： 配置应用规则、服务信息、集成应用测试（ATP）
* 集成mep-agent 配置AK/SK、服务注册
* 应用包优化、应用包详情展示
![输入图片说明](https://images.gitee.com/uploads/images/2020/1116/105641_2d41bc04_7625288.png "屏幕截图.png")
v1.0需求

### 新增或者修改的接口  New or modified interfaces

| API | 方法 | API说明 | 修改或新增 | 说明 |
| --- | --- | --- | --- |
| /mec/developer/v1/hosts | POST | 上传边缘节点信息 | 修改 | 新增userId,开发者可以配置自己的节点 |
| /mec/developer/v1/filescheck | POST | 部署文件校验接口 | 新增 | 用于yaml文件的校验 |
| /mec/developer/v1/projects/{projectId}/test-config | POST | 部署详情接口 | 修改| 新增 deploy_file_id， platform, pod,部署文件信息、平台信息、pod状态信息|
| /mec/developer/v1/capability-groups/{groupId}    | POST | API能力详情接口 | 修改| 新增host、port、guide_file_id、protocol、appId、packgeId,服务信息和包信息 |
| /mec/developer/v1/capability-groups/SDK/{lan} | POST | 下载SDK接口 | 新增 | 选择语言、下载SDK源码 |
| /mec/developer/v1/projects/{projectId}/action/terminate | POST | 终止实例化接口 | 新增 | 测试完成后卸载应用，释放沙箱环境 |
| /mec/developer/v1/projects/{projectId}/release-config | POST | 发布详情接口 | 新增 | 应用发布配置接口，用于配置服务信息、应用规则及应用测试   |
| /mec/developer/v1/projects/{projectId}/appInstanceId/{appInstanceId}/files/ | GET| 获取应用包详情接口 | 新增 | 显示应用包的目录结构及内容 |
| /mec/developer/v1/projects/{projectId}/atp/upload | POST | 应用测试接口 | 新增 | 对接ATP模块，进行应用包的测试 |
| /mec/developer/v1/projects/{projectId}/log/download | POST | 日志下载 | 新增 | 应用日志下载 |

#### 如有， 他们是否是向后兼容的 If modified, are the backwards compatible
是

### 接口API简述 interface naming

https://gitee.com/edgegallery/docs/blob/master/Projects/Developer/Developer_Interfaces.md

### 系统的限制目前有哪些  What are the system limits
如操作系统，用户权限等等
有关admin权限的操作暂时不支持



