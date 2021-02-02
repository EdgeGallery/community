### 发布时间 详细设计开始的第一周
Detailed design start time: 1.15

Release time: 3.31

### 项目概述 Project Overview
MECM (multi access edge compute manager) provides orchestration and life cycle management of application in edgegallery architecture. MECM provides various features including application on-boarding, application orchestration by selecting appropriate edge based on deployment strategy, application life cycle management, homing and placement of application based on analytics and policies, application/edge resource monitoring and provides unified topology view.

![输入图片说明](https://images.gitee.com/uploads/images/2021/0201/212240_23e75a35_7784933.png "Architecture.png")

### 从上一个版本开始架构的变化 Architecture changes from last release
Following new modules will be added as part of release v1.1
1. MEPM Portal
2. Openstack Plugin

### v1.1 引入的新功能特性 New component capabilities for v1.1
* Administrator Role for MECM Components. [Design](https://gitee.com/edgegallery/community/blob/master/MECM%20PT/Release%20V1.1/MECM%20admin%20role%20support.pptx)
* Edge Autonomous Portal [Design](https://gitee.com/edgegallery/community/blob/master/MECM%20PT/Release%20V1.1/Edge%20Autonomous%20Portal.pptx)
  - MEPM Portal.
  - Data Synchronization from Edge to Center
  - MEP Portal Integration with MEPM Portal
* APP Instance Termination Enhancement. [Design](https://gitee.com/edgegallery/community/blob/master/MECM%20PT/Release%20V1.1/MECM-Call-Flows.pptx)
* VM based workload support. [Design](https://gitee.com/edgegallery/community/blob/master/MECM%20PT/Release%20V1.1/EdgeGallery%E6%94%AF%E6%8C%81%E8%99%9A%E6%9C%BA%E5%BA%94%E7%94%A8%E6%96%B9%E6%A1%88%E8%AE%BE%E8%AE%A1VM%20APP%20Support.pptx)
* Example Application (Consumer Application) Integration with MEP for service discovery. [Design](https://gitee.com/edgegallery/community/blob/master/MECM%20PT/Release%20V1.1/Consumer%20Application.odp)
* Image management. [Design](https://gitee.com/edgegallery/community/blob/master/Architecture%20WG/Requirements/v1.1/EdgeGallery%20Image%20Management%20Requirement.md)
* Logs retrieval for developer troubleshooting. 

### 新增或者修改的接口 New or modified interfaces
* Administrator Role for MECM Components: Updated APIs in Inventory.
* Edge Autonomous Portal: .
* Image management: .
* VM based workload support: New Openstack Plugin module with new APIs.
* Logs retrieval for developer troubleshooting: API changes in APPLCM & K8sPlugin (In-Progress)

#### 如有，他们是否是后向兼容的 If modified, are the backwards compatible
API changes for Admin role will not be backward compatible as it will be made tenant agnostic

### 接口API 简述 interface naming

|  Method | URL  | Description|
|---|---|---|
| GET  | /inventory/v1/applcms | Retrieves all application LCM records |
| POST  | /inventory/v1/applcms | Adds new application LCM record |
| DELETE  | /inventory/v1/applcms | Deletes all application LCM Records |
| GET  | /inventory/v1/applcms/{applcm_ip} | Retrieves application LCM Record |
| PUT  | /inventory/v1/applcms/{applcm_ip} | Updates existing application LCM record |
| DELETE  | /inventory/v1/applcms/{applcm_ip} | Deletes application LCM record |
| GET  | /inventory/v1/appstores | Retrieves all appstore records |
| POST  | /inventory/v1/appstores | Adds new appstore record |
| DELETE  | /inventory/v1/appstores | Deletes all appstore Records |
| GET  | /inventory/v1/appstores/{appstore_ip} | Retrieves appstore Record |
| PUT  | /inventory/v1/appstores/{appstore_ip} | Updates existing appstore record |
| DELETE  | /inventory/v1/appstores/{appstore_ip} | Deletes appstore record |
| GET  | /inventory/v1/mechosts | Retrieves all MEC host records |
| POST  | /inventory/v1/mechosts | Adds new MEC host record |
| DELETE  | /inventory/v1/mechosts | Deletes all MEC host Records |
| GET  | /inventory/v1/mechosts/{mechost_ip} | Retrieves MEC host Record |
| PUT  | /inventory/v1/mechosts/{mechost_ip} | Updates existing MEC host record |
| DELETE  | /inventory/v1/mechosts/{mechost_ip} | Deletes MEC host record |
| GET  | /inventory/v1/apprulemanagers | Retrieves all app rule manager records |
| POST  | /inventory/v1/apprulemanagers | Adds new app rule manager record |
| DELETE  | /inventory/v1/apprulemanagers | Deletes all app rule manager Records |
| GET  | /inventory/v1/apprulemanagers/{app_rule_manager_ip} | Retrieves app rule manager Record |
| PUT  | /inventory/v1/apprulemanagers/{app_rule_manager_ip} | Updates existing app rule manager record |
| DELETE  | /inventory/v1/apprulemanagers/{app_rule_manager_ip} | Deletes app rule manager record |
| POST  | /inventory/v1/mechosts/{mechost_ip}/k8sconfig | Upload configuration file |
| DELETE  | /inventory/v1/mechosts/{mechost_ip}/k8sconfig | Delete configuration file |

### 接口API参考文档 Reference to the interfaces
http://docs.edgegallery.org/en/latest/Projects/MECM/MECM.html 

### 系统的限制目前有哪些 What are the system limits
No Change in this release
|  Category | Max Value  |
|---|---|
| No: of Tenants | 20 |
| No: of Application Instances per tenant | 50 |
| No: of Rules per tenant | 50 |
| No: of APPLCM, AppRuleMgr, AppStore, MEC Host | 50 |
