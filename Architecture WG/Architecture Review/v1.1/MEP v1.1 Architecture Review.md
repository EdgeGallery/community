### 发布时间 详细设计开始的第一周
Detailed design start time: 1.15

Release time: 3.31

### 项目概述 Project Overview
MEP(MEC Platform) implmentation based on ETSI specification. The MEP server interface is divided into two categories, one is the Mp1 interface that follows the ETSI MEC 011 v2.1.1 standard, which mainly provides functions such as service registration discovery, app status notification subscription, and Dns rule acquisition; another is Mm5 interface, which mainly provides configuration management functions for MECM/MEPM.

![](http://docs.edgegallery.org/zh_CN/latest/_images/144714_23890cda_7624956.png "MEP arch v0.9.png")

### 从上一个版本开始架构的变化 Architecture changes from last release
None

### v1.1 引入的新功能特性 New component capabilites for v1.1
* UPF dataplane implementation and Mm5 changes for appd configurations.
* Traffic rule support for Mp1 interface.

### 新增或者修改的接口 New or modified interfaces
* Deleted Mm5 individual DNS interface and added Mm5 appd configuration interface which including both DNS and Traffic rules.
* New traffic rule interface for Mp1.

#### 如有，他们是否是后向兼容的 If modified, are the backwards compatible
* Mm5 DNS interface is removed as it was not used by MECM and added new interface with both DNS and Traffic rules together.

### 接口API 简述 interface naming

#### Mp1
|  Method | URL  | Description|
|---|---|---|
| GET | /mep/mec_app_support/v1/applications/\{appInstanceId\}/traffic_rules | Get all traffic rules |
| GET | /mep/mec_app_support/v1/applications/\{appInstanceId\}/traffic_rules/\{trafficRuleId\} | Get individual traffic rule |
| PUT | /mep/mec_app_support/v1/applications/\{appInstanceId\}/traffic_rules/\{trafficRuleId\} | Update a traffic rule |

#### Mm5
|  Method | URL  | Description|
|---|---|---|
| POST | /mepcfg/app_lcm/v1/applications/:appInstanceId/appd_configuration | Create appd configuration |
| GET | /mepcfg/app_lcm/v1/applications/:appInstanceId/appd_configuration | Get appd configuration |
| PUT | /mepcfg/app_lcm/v1/applications/:appInstanceId/appd_configuration | Put appd configuration |
| DELETE | /mepcfg/app_lcm/v1/applications/:appInstanceId/appd_configuration | Delete appd configuration |

#### Mep-agent
|  Method | URL  | Description|
|---|---|---|
| GET | /mep-agent/v1/endpoint/:serName | Get producer endpoint by service name |

### 接口API参考文档 Reference to the interfaces
* Appd Configuration [interface](https://gitee.com/edgegallery/docs/blob/master/Projects/MEP/MEP_Interfaces.md)
* Traffic rule Configuration [interface](https://gitee.com/edgegallery/docs/blob/master/Projects/MEP/MEP_Interfaces.md)

### 系统的限制目前有哪些 What are the system limits
None