### 需求来源


- EdgeGallery 版本规划
- ETSI MEC 010


### 需求描述 （Requirement Description）
- Support DNS rules activation
- Support DNS rules deactivation
- Support DNS rules configuration
- AppD support a description of DNS Rules which provide specific FQDNs to be registered into the MEC system


### Usecase


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
![Configuration of DNS rules](https://images.gitee.com/uploads/images/2020/0810/110313_dd5b9558_7624977.png "Configuration of DNS rules.png")
![activation](https://images.gitee.com/uploads/images/2020/0810/110346_359bafc3_7624977.png "activation.png")
![deactivation](https://images.gitee.com/uploads/images/2020/0810/110408_d6fb1d4d_7624977.png "deactivation.png")
### 接口定义
N/A

### 工作量评估
TBA