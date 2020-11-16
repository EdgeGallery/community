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


