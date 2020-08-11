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


### 接口定义
N/A

### 工作量评估
TBA

### 参考 Reference
![KubeEdge_arc](https://images.gitee.com/uploads/images/2020/0811/153420_245e65e2_7624977.png "KubeEdge_arc")