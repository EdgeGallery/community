### 发布时间 详细设计开始的第一周
Detailed design start time: 9.20

Release time: 12.13

### 项目概述 Project Overview
MECM (multi access edge compute manager) provides orchestration and life cycle management of application in edgegallery architecture. MECM provides various features including application on-boarding, application orchestration by selecting appropriate edge based on deployment strategy, application life cycle management, homing and placement of application based on analytics and policies, application/edge resource monitoring and provides unified topology view.

![](https://images.gitee.com/uploads/images/2020/1124/182849_b1e412e6_7639205.png "144714_23890cda_7624957.png")
<br/> Note: Components in blue are available as part of current release

### 从上一个版本开始架构的变化 Architecture changes from last release
Application Rule Manager (AppRuleMgr) will be added in Release 1.0

### v1.0 引入的新功能特性 New component capabilites for v1.0(Chocolate)
* Platform Software Capability Query. [Design](https://gitee.com/edgegallery/community/blob/master/MECM%20PT/Release%20V1.0/Capabilities%20Exposure%20Solution.pptx)
* Platform Hardware Capability. [Design](https://gitee.com/edgegallery/community/blob/master/MECM%20PT/Release%20V1.0/Capabilities%20Exposure%20Solution.pptx)
* AK/SK Support. [Design](https://gitee.com/edgegallery/community/blob/master/MECM%20PT/Release%20V1.0/Automated%20AkSk%20Management%20Solution.pptx)
* ATP Integration. [Design](https://gitee.com/edgegallery/community/blob/master/MECM%20PT/Release%20V1.0/ATP%20MECM%20Integration.pptx)
* Application Batch Deploy. [Design](https://gitee.com/edgegallery/community/blob/master/MECM%20PT/Release%20V1.0/Application%20deployment%20on%20multiple-edges.pptx)
* UPF Integration. [Design](https://gitee.com/edgegallery/community/blob/master/MECM%20PT/Release%20V1.0/MECM_UPF_Integration.pptx)

### 新增或者修改的接口 New or modified interfaces
* Software Capability: New APIs in APPLCM & APPO.
* Hardware Capability: New/Modified API in Inventory & APPO.
* Automated AK/SK Management: Modified API in K8s Plugin.
* ATP Integration: New API in APM.
* Application Batch Deploy: APPO new interfaces added to support application batch deploy.
* UPF Integration: Support Traffic rules and DNS rules configuration API for UPF integration in APPO, Inventory & App Rule Manager.

#### 如有，他们是否是后向兼容的 If modified, are the backwards compatible
yes

### 接口API 简述 interface naming

|  Method | URL  | Description|
|---|---|---|
| POST  | /apm/v1/tenants/\{tenant_id\}/packages/upload | Onboard application package |
| GET  | /inventory/v1/tenants/\{tenant_id\}/mechosts/\{mechost_ip\}/capabilities | Retrieves edge host capabilities |
| GET  | /inventory/v1/tenants/{tenant_id}/mechosts/{mechost_ip}/capabilities/{capability_type}/applications | Retrieves applications matching capability |
| POST  | /inventory/v1/tenants/\{tenant_id\}/mechosts/\{mechost_ip\}/apps | Adds application record |
| DELETE  | /inventory/v1/tenants/\{tenant_id\}/mechosts/\{mechost_ip\}/apps/\{app_id\} | Deletes application record |
| PUT  | /inventory/v1/tenants/\{tenant_id\}/mechosts/\{mechost_ip\}/apps/\{app_id\} | Updates application record |
| POST  | /appo/v1/tenants/\{tenant_id\}/app_instances/batch_create | Batch create application instances |
| POST  | /appo/v1/tenants/\{tenant_id\}/app_instances/batch_instantiate | Batch instantiate application instances |
| DELETE  | /appo/v1/tenants/\{tenant_id\}/app_instances/batch_terminate | Batch delete application instances |
| GET  | /appo/v1/tenants/\{tenant_id\}/app_instance_infos?appInstId=uuid1&appInstId=uuid2 | Retrieves application instances |
| GET  | /appo/v1/tenants/{tenant_id}/hosts/\{host_ip\}/mep_capabilities/\{capability_id\} | Retrieves MEP software capabilities |
| GET  | /inventory/v1/app_instances/\{app_instance_id\}/appd_configuration | Retrieves APPD configurations |
| POST  | /inventory/v1/app_instances/\{app_instance_id\}/appd_configuration | Adds APPD configuration |
| DELETE  | /inventory/v1/app_instances/\{app_instance_id\}/appd_configuration | Deletes APPD configuration |
| PUT  | /inventory/v1/app_instances/\{app_instance_id\}/appd_configuration | Updates APPD configuration |
| POST  | /appo/v1/tenants/\{tenant_id\}/app_instances/\{app_instance_id\}/appd_configuration | Adds APPD configuration |
| PUT  | /appo/v1/tenants/\{tenant_id\}/app_instances/\{app_instance_id\}/appd_configuration | Updates APPD configuration |
| DELETE  | /appo/v1/tenants/\{tenant_id\}/app_instances/\{app_instance_id\}/appd_configuration | Deletes APPD configuration |
| POST  | /apprule/v1/app_instances/\{app_instance_id\}/appd_configuration | Adds APPD configuration |
| PUT  | /apprule/v1/app_instances/\{app_instance_id\}/appd_configuration | Updates APPD configuration |
| DELETE  | /apprule/v1/app_instances/\{app_instance_id\}/appd_configuration | Deletes APPD configuration |


### 接口API参考文档 Reference to the interfaces
* Platform Software Capability Query. [interface](http://docs.edgegallery.org/en/latest/Projects/MECM/Appo_Interfaces_en.html)
* Platform Hardware Capability. [interface](http://docs.edgegallery.org/en/latest/Projects/MECM/Inventory_Interfaces_en.html)
* ATP Integration. [interface](http://docs.edgegallery.org/en/latest/Projects/MECM/Apm_Interfaces_en.html)
* Application Batch Deploy. [interface](http://docs.edgegallery.org/en/latest/Projects/MECM/Appo_Interfaces_en.html)
* UPF Integration documentation: In-progress 

### 系统的限制目前有哪些 What are the system limits
No Change