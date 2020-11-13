### 发布时间 详细设计开始的第一周
Detailed design start time: 9.20

Release time: 12.13

### 项目概述 Project Overview
MEP(MEC Platform) implmentation based on ETSI specification. The MEP server interface is divided into two categories, one is the Mp1 interface that follows the ETSI MEC 011 v2.1.1 standard, which mainly provides functions such as service registration discovery, app status notification subscription, and Dns rule acquisition; another is Mm5 interface, which mainly provides configuration management functions for MECM/MEPM.

![](http://docs.edgegallery.org/zh_CN/latest/_images/144714_23890cda_7624956.png "MEP arch v0.9.png")

### 从上一个版本开始架构的变化 Architecture changes from last release
None

### v1.0 引入的新功能特性 New component capabilites for v1.0(Chocolate)
* Pleatform Capability(service) Query on Mm5 interface. [Design](https://gitee.com/edgegallery/community/blob/master/MEP%20PT/Release%20V1.0/platform_query_capabilities.md)
* Heartbeat feature for MEC apps on Mp1 interface. [Design](https://gitee.com/edgegallery/community/blob/master/Architecture%20WG/Requirements/v1.0/service_heartbeat.md)

### 新增或者修改的接口 New or modified interfaces
* Modified Mp1 to support application heartbeat.
* Modified Mm5 for platform capability query.

#### 如有，他们是否是后向兼容的 If modified, are the backwards compatible
None

### 接口API 简述 interface naming

#### Mp1
|  Method | URL  | Description|
|---|---|---|
| GET  | /applications/\{appInstanceId\}/service/\{serviceId\}/liveness | Get individual liveness information for a service |
| PUT  | /applications/\{appInstanceId\}/service/\{serviceId\}/liveness | Send heartbeat message to MEP |

#### Mm5
|  Method | URL  | Description|
|---|---|---|
| GET  | /mepcfg/mec_platform_config/v1/capabilities | Get all capabilities |
| GET  | /mepcfg/mec_platform_config/v1/capabilities/\{capabilityId\} | Get individual capabilities |

### 接口API参考文档 Reference to the interfaces
* Query capability [interface](http://docs.edgegallery.org/zh_CN/latest/Projects/MEP/MEP_Interfaces.html#query-platform-capabilities-services)
* Heartbeat [interface](https://gitee.com/edgegallery/docs/blob/master/Projects/MEP/MEP_Interfaces.md)

### 系统的限制目前有哪些 What are the system limits
None