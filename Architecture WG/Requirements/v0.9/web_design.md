### EdgeGallery web开发需求

### 需求来源
版本需求

### 涉及模块

1.开发者平台

需求描述
- 优化沙箱流程  
![增加步骤引导](https://images.gitee.com/uploads/images/2020/0811/164305_7a8a0ad8_7625361.png "屏幕截图.png")
![步骤弹框](https://images.gitee.com/uploads/images/2020/0811/164422_c6b3af25_7625361.png "屏幕截图.png")
- 优化API使用指导，增加引导性文字内容  
![api增加使用说明](https://images.gitee.com/uploads/images/2020/0811/164517_2a349de7_7625361.png "屏幕截图.png")
![参考示例](https://images.gitee.com/uploads/images/2020/0811/171118_326c3342_7625361.png "屏幕截图.png")

2.应用商店需求

需求描述
- 优化步骤指导  
![步骤弹框](https://images.gitee.com/uploads/images/2020/0811/164422_c6b3af25_7625361.png "屏幕截图.png")
- 优化界面显示，增加引导性文字内容  
![增加类似的tip提示，覆盖整个流程](https://images.gitee.com/uploads/images/2020/0811/164701_ced3b8b0_7625361.png "屏幕截图.png")
3.MECM需求

需求描述
- 首页拓扑图展示内容设计和开发  
增加告警提示以及节点分维度展示
- 节点分层展示，维度划分，地图下钻到区县  
![首页地图展示](https://images.gitee.com/uploads/images/2020/0811/164038_e16759cf_7625361.png "屏幕截图.png")
![区县级展示](https://images.gitee.com/uploads/images/2020/0811/164134_d7fd461f_7625361.png "屏幕截图.png")
- 图形化展示架构功能  
![架构图标以及node节点展示](https://images.gitee.com/uploads/images/2020/0811/163924_676aca32_7625361.png "屏幕截图.png")
- 模块状展示节点以及applcm、appstore列表  
![applcm设计](https://images.gitee.com/uploads/images/2020/0811/163837_0473576f_7625361.png "屏幕截图.png")
- 优化app管理界面的列表展示，增加图标状态显示  
 ![增加图表以及部分图标](https://images.gitee.com/uploads/images/2020/0811/170616_4035b7b4_7625361.png "屏幕截图.png")
- App管理支持批量分发、部署以及统一管理
### 业务流程
目前先改动不影响功能的部分（例：tip增加，文字说明内容补充...），同时需要进行界面功能流程设计，然后确定功能后进行页面UE设计、评审、UI设计、开发

### 接口定义

### 工作量评估
总工作量：5k  
#### 0.9版本：
- developer：api引导、测试步骤优化、增加tip展示
- MECM：首页地图分级下钻展示，增加坐标功能，applcm、appstore列表展示优化
- appstore：tip引导、步骤优化  
v0.9工作量：2.5k
#### 下个版本：
- developer：沙箱流程优化
- MECM：节点分维度展示，增加告警功能，app支持批量下发、部署node节点扩展优化
- appstore：暂定
工作量：2.5k
