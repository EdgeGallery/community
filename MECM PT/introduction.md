MECM简介
-------------------

MECM是边缘系统中的管控部分，主要具有以下功能：
- 对边缘系统有全局的视图，管理所有边缘节点及其资源可用状态。
- 管理所有边缘节点上部署的应用
- 负责应用包的全局管理，上传，分发到边缘等。
- 负责应用的生命周期管理，能够通过中心管理面进行应用的部署，删除等。
- 对边缘节点和应用部署状态进行中心化管理。同时MECM能够对整体系统有个全局的视图，管理应用包的上传下载与分发，应用的部署。
- 初始化应用时，能够根据应用的部署策略，资源要求，网络资源状态等，正确的将应用部署到合适的边缘。
- 能够根据管理员的策略设置，对应用进行自动化的调度和迁移。

MECM架构
-------------------

![输入图片说明](https://images.gitee.com/uploads/images/2020/0709/163347_f2c0fdc4_5504908.png "mecm.png")

MECM模块介绍
-------------------
APPO：APP编排器。负责应用生命周期管理的编排模块

ESR：外部系统注册模块。负责外部系统的注册和管理，例如边缘节点，边缘APPLCM，对接的APPStore等

APPLCM：应用生命周期管理。下沉到边缘上的管理模块，具有应用的实例化，终止，状态管理等功能

APM：应用包管理。负责应用包的上传，管理，分发到边缘等功能

Policy：策略模块：提供策略管理功能，例如应用部署策略，应用扩容，迁移策略等

Common Services: 公共服务，提供例如日志，数据库，认证授权等功能模块

Analytics：分析模块。处理生命周期管理中的变更通知等。

Homing&Placement:负责应用程序的部署位置选择等功能。

项目组人员信息：
------------------
项目组长：待定  

项目组成员：

| 姓名  | 公司  | 邮箱  | 
|---|---|---|
| 陈传雨  |  华为 |  chenchuanyu@huawei.com |
| 罗文杰  |  中国联通 |  luowj26@chinaunicom.cn | 
| 彭康桓  | 讯琥 |  kris.peng@xeniro.io | 
| 范振伟  |  讯琥 |  charles.fan@xeniro.io | 
| 刘小飞  |  讯琥 |  xiaofei.liu@xeniro.io |  
| 杨阳    |  华为 |  yangyang263@huawei.com |
| 章清洁  |  华为 |  zhangqingjie@huawei.com |
| Khemendra    |  华为 |  khemendra.kumar@huawei.com |
| Shashikanth |  华为 |  shashikanth.vh@huawei.com |
| Vidya |  华为 |  Vidyashree.Rama@huawei.com |
| Rama |  华为 |  Rama.Subba.Reddy.S@huawei.com |
| 程润东 |  华为 |  chengruidong@huawei.com |
