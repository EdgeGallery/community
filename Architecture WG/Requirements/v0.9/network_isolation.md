### 需求来源

EdgeGallery 版本规划

### 需求描述
- EdgeGallery 部署支持多网络平面提升安全性
- 支持基于Kubernetes场景下，一个Pod 多网卡配置
- 支持多网卡业务描述
- 支持以ETSI 定义的Mm3/Mm5/Mp1等网络平面设置
- 支持基于Kubernetes的Service 通过多网络平面暴露

### Usecase
![Network Isolation](https://images.gitee.com/uploads/images/2020/0730/095700_99279ac7_7624977.png "network_isolation.png")

#### 如图所示，典型Usecase
- APPLCM 与 MEP 通过 Mm5平面交互
- APPLCM 与 OM网络（中心-边缘）通过Mm3平面交互
- MEP 与 APP 通过 MP1接口交互
- 管理面也可以OM与业务平面隔离
### 涉及模块 && EPIC && Story
- Integration & Test
  - 各个项目安装测试脚本
- MECM
  - APPLCM 下发命令走 Mm5平面
  - MEAO下发命令走Mm3平面
  - 支持APP 多网络平面的创建与配置
- MEP
  - 与APPLCM交互走Mm5平面
  - 与APP 交互走Mp1 平面
- Developer
  - 生成 APP Package支持多网络平面描述
  - 支持 APP 自定义配置开放Service与网络平面的组合
- APPStore
  - 隔离与Developer/MECM的网络平面
- Kubernetes扩充
  - 单Pod支持多CNI配置
  - APP Service支持通过非default CNI 对外暴露

### 业务流程
![输入图片说明](https://images.gitee.com/uploads/images/2020/0810/190744_46e41300_7786320.png "Selection_019.png")
![输入图片说明](https://images.gitee.com/uploads/images/2020/0810/191048_4cbcb8f5_7786320.png "Selection_020.png")

Solution for Service Isolation
- Extend Service Definition with annotation to denote the network definition name (Network) on which this service would be supported.
- Define a new NetworkAttachService Custom Controller which does below job:
  - Create Client sets of k8s API service and support informers handling for Pod, Service, endpoint to handle their events when its resource is added/Modified or deleted.
  - Based on informer messages, match the service annotation Network definition name with pods annotations name. 
  - When there is a match, update the Service endpoints through the Kubernets ServiceAPI client. This would add this new interface/port to service endpoints so that all the packets to this service would be routed to this endpoint (Interface)

### 接口定义
N/A

### 工作量评估
TBA