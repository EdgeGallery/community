### 发布时间 详细设计开始的第一周
Detailed design start time: 9.20

Release time: 12.13

### 项目概述 Project Overview
MEP to support capabilities(services) query over Mm5 interface. The capability(services) will be registered to MEP by MEC applications or other modules. 
These capability query result is used by the MECM to display in its portal.

### 从上一个版本开始架构的变化 Architecture changes from last release
New feature, design can be found [here](https://gitee.com/edgegallery/community/blob/master/MEP%20PT/Release%20V1.0/platform_query_capabilities.md).

### v1.0 引入的新功能特性 New component capabilites for v1.0(Chocolate)
* Query all capability(service) list and its consumers.
* Query a single capability and its consumers.

### 新增或者修改的接口 New or modified interfaces
Added new APIs to the existing Mm5 interface between MEP and MECM.

#### 如有，他们是否是后向兼容的 If modified, are the backwards compatible
None

### 接口API 简述 interface naming
|  Method | URL  | Description|
|---|---|---|
| GET  | /mepcfg/mec_platform_config/v1/capabilities | Get all capabilities |
| GET  | /mepcfg/mec_platform_config/v1/capabilities/\{capabilityId\} | Get individual capabilities |
### 接口API参考文档 Reference to the interfaces
API interface documentation can be found [here](http://docs.edgegallery.org/zh_CN/latest/Projects/MEP/MEP_Interfaces.html#query-platform-capabilities-services)

### 系统的限制目前有哪些 What are the system limits
None