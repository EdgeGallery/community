### 需求来源

EdgeGallery版本规划

### 需求描述

首先EdgeGallery中各项目（包含Golang与JAVA相关项目）均会引用一些三方件，虽然各项目均是容器化部署，不存在不同项目间的三方件冲突问题，
但是引入的三方件本身的License、合法性、稳定性、长期维护能力、是否存在安全漏洞等均存在不确定性，这将影响EdgeGallery的重复稳定部署
能力与开源义务履行。基于此，需要对所有项目引入三方件约束，规定可以使用的三方件全集并指定固定版本。

其次本需求包含维护一份本地的三方件仓库，便于支持离线部署等功能。

注：目前阶段仅考虑直接引用的三方件，间接引用的三方件不在管理范围之内。

### 涉及模块 && EPIC && Story

- 【Requirements】分别针对Golang与JAVA提供多种场景下的三方件自动化检测脚本。
   - 工作量：3k
    - Step1、Add New Modules新增一个三方件的处理流程
    - Step2、Update Modules更新现有的三方件的处理流程
    - Step3、Remove Modules移除多余的三方件的处理流程

- 【CICD】通过在CICD流程中加入三方件检测任务实现对各项目引入的三方件的检测与约束。
   - 工作量：0.2k
    - Step1、各项目提交PR后的自动检测任务，检测所有三方件是否符合EdgeGallery要求
    - Step2、各项目有增加或修改EdgeGallery现有三方件全集的需求时，提交PR修改全集，触发对全集的检查任务

###  业务流程

- 各项目有增加新的三方件到EdgeGallery全集的场景

![输入图片说明](https://images.gitee.com/uploads/images/2020/0814/164702_a1ffbab5_7634758.png"Add new modules.png")

- 各项目有修改现有EdgeGallery全集中的三方件的场景

![输入图片说明](https://images.gitee.com/uploads/images/2020/0814/165124_593ae97b_7634758.png"Update modules.png")

- 处理所有项目均不会使用的多余三方件的场景

![输入图片说明](https://images.gitee.com/uploads/images/2020/0814/165446_4208e30c_7634758.png"Delete modules.png")

###  接口定义

NA

### 工作量评估

预计工作量3.2k