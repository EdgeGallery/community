### 发布时间 详细设计开始的第一周
Detailed design start time: 9.20

Release time: 12.13

### 项目概述 Project Overview
MECM (multi access edge compute manager) provides orchestration and life cycle management of application in edgegallery architecture. MECM provides various features including application on-boarding, application orchestration by selecting appropriate edge based on deployment strategy, application life cycle management, homing and placement of application based on analytics and policies, application/edge resource monitoring and provides unified topology view.

![](MECM PT/Release V1.0/144714_23890cda_7624957.png "MEP arch v0.9.png")

### 从上一个版本开始架构的变化 Architecture changes from last release
None

### v1.0 引入的新功能特性 New component capabilites for v1.0(Chocolate)
* Platform Software Capability Query. [Design](https://gitee.com/edgegallery/community/tree/master/MECM%20PT/Release%20V1.0)
* Platform Hardware Capability. [Design](https://gitee.com/edgegallery/community/tree/master/MECM%20PT/Release%20V1.0)
* AK/SK Support. [Design](https://gitee.com/edgegallery/community/tree/master/MECM%20PT/Release%20V1.0)
* ATP Integration. [Design](https://gitee.com/edgegallery/community/tree/master/MECM%20PT/Release%20V1.0)
* Application Batch Deploy. [Design](https://gitee.com/edgegallery/community/tree/master/MECM%20PT/Release%20V1.0)

### 新增或者修改的接口 New or modified interfaces
* Modified inventory API to support hardware capability.
* APM new Onboard interface for ATP Integration.
* Modified APPO create interface to support capability.
* APPO new interfaces added to support application batch deploy.

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

### 接口API参考文档 Reference to the interfaces
* Query capability [interface](http://docs.edgegallery.org/zh_CN/latest/Projects/MEP/MEP_Interfaces.html#query-platform-capabilities-services)
* Heartbeat [interface](https://gitee.com/edgegallery/docs/blob/master/Projects/MEP/MEP_Interfaces.md)

### 系统的限制目前有哪些 What are the system limits
Heartbeat feature limitation: MEP use servicecomb (3rd party libraray) for rest server which doesn't support rest PATCH message. So we use PUT instead of PATCH for "/applications/{appInstanceId}/service/{serviceId}/liveness" . Though it is PUT, the behaviour is same as PATCH.