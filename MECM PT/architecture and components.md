MECM架构
-------------------

![输入图片说明](https://images.gitee.com/uploads/images/2020/0709/163347_f2c0fdc4_5504908.png "mecm.png")

AppO组件:
------------
应用编排器。AppO 是采用ONAP的SO模块进行定制后实现的。对外提供应用生命周期管理功能，同时维护应用的整体视图，在应用部署时，编排器基于应用的部署策略，选择合适的边缘节点进行部署。
![输入图片说明](https://images.gitee.com/uploads/images/2020/0709/163805_0bb62e3c_5504908.png "appo.png")

#### API Handler

*   对外提供北向接口.
    
*   处理应用相关生命周期管理请求.
    

#### BPMN Execution Engine

*   BPMN执行引擎，管理和执行应用生命周期管理相关工作流.
    
*  管理应用生命周期状态。
    

#### Adapters

*   南向接口适配器，对接其它南向APPLCM等模块.
    

BPMN工作流可以通过CAMUNDA Modler工具进行设计，如图所示：

![输入图片说明](https://images.gitee.com/uploads/images/2020/0709/163844_b7433e0e_5504908.png "ada.png")



APM:
-----------
应用包管理模块。通过对ONAP的VF-C Catalog模块进行定制后实现。负责管理应用包的上载和维护，以及分发功能。同时和APPStore集成，能够从APPStore获取相关应用包。

![输入图片说明](https://images.gitee.com/uploads/images/2020/0709/163908_9a86e921_5504908.png "apm.png")

### APM组件

#### API Handler

*  对外提供API接口发布.
    
*   处理应用包管理相关接口请求.
    

#### Manager

*   负责从APPStore获取应用包，处理应用上载和维护应用包状态。
    

#### Distributor

*   分发器负责将应用包分发到指定的边缘节点。
    

**AppLCM:**
------------------

APPLCM组件会被部署在边缘节点，，负责单节点上的应用的生命周期管理。
![输入图片说明](https://images.gitee.com/uploads/images/2020/0709/163928_da6bb6c3_5504908.png "applcm.png")

### **AppLCM组件**

**API Handler**

*   对外发布API接口.
    

*   处理中心MECM发送的应用生命周期管理请求。
    

**BROKER**

*   负责根据应用的形态和部署要求，选择对应的部署插件，进行应用的部署。

Policy:
--------------

![输入图片说明](https://images.gitee.com/uploads/images/2020/0709/163949_7f01208e_5504908.png "policy.png")

*   APEX引擎中运行配置好的策略.
    
*   策略通过事件触发，并执行设置好的动作    
