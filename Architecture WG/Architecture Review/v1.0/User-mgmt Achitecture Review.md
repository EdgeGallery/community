### 发布时间 详细设计开始的第一周
- 2020.12.31

### 项目概述 Project Overview
User Management 用户管理模块，为EdgeGallery提供了基本的用户增删改查功能，定义了用户的角色与权限，并且包含了两个关键特性：手机验证和单点登录（Single Sign On）能力。
结构图：
![输入图片说明](https://images.gitee.com/uploads/images/2020/1116/103814_b26820ac_5659718.png "屏幕截图.png")

### 从上一个版本开始架构的变化 Architecture changes from last release
- 无变化

### v1.0 引入的新功能特性 New component capabilites for v1.0(Chocolate)
- 1 增加Guest默认账号，首次访问链接使用Guest登录。Guest用户只能查看AppStore、Developer、MECM、ATP功能，不能编辑修改
- 2 增加ATP平台的用户定义，分为ADMIN、TENANT、GUEST角色
- 3 增加修改用户、修改密码

### 新增或者修改的接口 New or modified interfaces
#### 新增接口
- 1 查询账号
- 2 修改账号
- 3 删除账号

#### 修改接口
- 无

#### 如有，他们是否是后向兼容的 If modified, are the backwards compatible


### 接口API 简述 interface naming
列出所有API的介绍

### 接口API参考文档 Reference to the interfaces
列出对应的swagger yaml即可
- 如有标准参考，可以附上标准文档链接
- 具体实现的Swaggeryaml，也附上对应的docs链接即可。

### 系统的限制目前有哪些 What are the system limits
如操作系统，用户权限等等