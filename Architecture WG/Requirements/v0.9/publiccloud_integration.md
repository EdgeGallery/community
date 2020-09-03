*   [需求来源](#需求来源)
*   [需求描述](#需求描述)
*   [Usecase](#Usecase)
    *   [典型Usecase](#如图所示，典型Usecase)
*   [业务流程](#业务流程)
    *   [待解决问题](#待解决问题)
*   [接口定义](#接口定义)
*   [工作量评估](#工作量评估)
*   [Reference](#参考)

### 需求来源

EdgeGallery 版本规划

### 需求描述
- 集成公有云及其相关边缘计算解决方案，为EdgeGallery边缘应用提供公有云相关能力
- 联合公有云共建边缘生态，提升
- v0.9版本优先集成KubeEdge（HuaweiPulicCloud）
    

### Usecase
![PublicCloudIntegration](https://images.gitee.com/uploads/images/2020/0810/153159_3e12e332_7624977.png "PublicCloudIntegration.png")

#### 如图所示，典型Usecase
- EdgeGallery支持与公有云集成（包含其边缘计算解决方案）
    - EdgeGallery可调用公有云部署公有云应用
        - EdgeGallery管理面通过调用公有云部署应用倒边缘
        - EdgeGallery 管理面通过调用公有云运维监控模块（如果有，或者API）同步相关应用状态
    - 公有云开放能力（包含边缘开放能力）可以通过EdgeGallery MEP暴露给边缘应用 
        - 即API/SDK相关能力均可通过API GW开放，为所有EdgeGallery边缘节点上的应用提供一致体验
    - EdgeGallery APPStore可以与公有云APPStore互通
### 业务流程
- MECM CloudConnector 调用 KubeEdge CloudCore API触发APP的部署（包含manifest）
- MECM CloudConnector 调用 KubeEdge CloudCore API 通过APP状态与资源消耗等监控状态


#### 待解决问题
- KubEEdge部署
    - 手动部署KubeEdge
    - 自动化部署KubeEdge （stretch goal）
- KubeEdge EdgeCore修改了Kublet，需要考虑是否可以再边缘复用此Kublet或者两个Kubelet同时存在

### 接口定义
N/A

### 工作量评估
部署应用：1.2K
API 能力集成开放：待评估

### 参考 Reference
![KubeEdge_arc](https://images.gitee.com/uploads/images/2020/0811/153420_245e65e2_7624977.png  "KubeEdge_arc")


### Public Cloud Integration Level 0 Design

![输入图片说明](https://images.gitee.com/uploads/images/2020/0902/193443_e1100448_7625689.png "Integration.png")

- Integrate KubeEdge EdgeCore on the edge side along with MEP Server.
- Leverage the kubeEdge openess capabilities(for example, device management capabilities) through MP1 interface.
- KubeEdge Capabilities to be registered to MEP Server.
- Any application deployed in Edge which need these KubeEdge services can subscribe and get its services.

###  v0.9 Requirement scope 
v0.9 Requirement scope (To validate how to deploy kubeedge and understand it features and deploy sample app)
    - Deploy the kubeedge(both cloudcore and edgecore components) with automated scripts.
    - Deploy sample application in edge through kubeedge NBI.
 
### Review
明确引入应用的场景
- MEC应用
- near Edge场景（不是4G/5G 接入点，而是以WIFI或者其他网络接入，如何支持）
公有云的配合
- APP包的开放，更多的是法律问题