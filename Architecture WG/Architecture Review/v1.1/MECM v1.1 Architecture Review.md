### 发布时间 详细设计开始的第一周
Detailed design start time: 1.15

Release time: 3.31

### 项目概述 Project Overview
MECM (multi access edge compute manager) provides orchestration and life cycle management of application in edgegallery architecture. MECM provides various features including application on-boarding, application orchestration by selecting appropriate edge based on deployment strategy, application life cycle management, homing and placement of application based on analytics and policies, application/edge resource monitoring and provides unified topology view.

<\br>
![输入图片说明](https://images.gitee.com/uploads/images/2021/0201/212240_23e75a35_7784933.png "Architecture.png")
<\br>

### 从上一个版本开始架构的变化 Architecture changes from last release
Following new modules will be added as part of release v1.1
1. MEPM Portal
2. Openstack Plugin

### v1.0 引入的新功能特性 New component capabilities for v1.1
* Administrator Role for MECM Components. [Design](https://gitee.com/edgegallery/community/blob/master/MECM%20PT/Release%20V1.1/MECM%20admin%20role%20support.pptx)
* Edge Autonomous Portal [Design](https://gitee.com/edgegallery/community/blob/master/MECM%20PT/Release%20V1.1/Edge%20Autonomous%20Portal.pptx)

- MEPM Portal.
- Data Synchronization from Edge to Center
- MEP Portal Integration with MEPM Portal

* APP Instance Termination Enhancement. [Design] (https://gitee.com/edgegallery/community/blob/master/MECM%20PT/Release%20V1.1/MECM-Call-Flows.pptx)
* VM based workload support. [Design](https://gitee.com/edgegallery/community/blob/master/MECM%20PT/Release%20V1.1/EdgeGallery%E6%94%AF%E6%8C%81%E8%99%9A%E6%9C%BA%E5%BA%94%E7%94%A8%E6%96%B9%E6%A1%88%E8%AE%BE%E8%AE%A1VM%20APP%20Support.pptx)
* Example Application Integration with MEP for service discovery & interaction. [Design](https://gitee.com/edgegallery/community/blob/master/MECM%20PT/Release%20V1.1/Consumer%20Application.odp)
* Logs retrieval for developer troubleshooting. 

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
* AK/SK Support. [interface](http://docs.edgegallery.org/en/latest/Projects/MECM/Applcm_Interfaces_en.html#)
* ATP Integration. [interface](http://docs.edgegallery.org/en/latest/Projects/MECM/Apm_Interfaces_en.html)
* Application Batch Deploy. [interface](http://docs.edgegallery.org/en/latest/Projects/MECM/Appo_Interfaces_en.html)
* UPF Integration documentation: In-progress 

### 系统的限制目前有哪些 What are the system limits
No Change