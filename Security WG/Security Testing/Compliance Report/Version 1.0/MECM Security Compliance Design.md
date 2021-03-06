# MECM V1.0 Security Design

|Story Name |Related Security Design Rule|
|----|----|
| [【MECM】【Docs】Finalize MECM v1.0 Documentation](https://gitee.com/OSDT/dashboard?issue_id=I23V93) |  NA  |  
| [Health-check support for eg components(using liveliness & readiness probes)--mecm](https://gitee.com/OSDT/dashboard?issue_id=I23CZC) |  Base framework related rules (part of existing framework) - Rule: 1.1, 2.1, 2.2, 5.3 (partially exists - Body & URL Limit exists) <br/> New applicable rules: 8.1  |   
| [【MECM】MECM Support APP Rule Cofing From Portal](https://gitee.com/OSDT/dashboard?issue_id=I24700) |    Base framework related rules (part of existing framework) - Rule: 1.1, 2.1, 2.2, 5.3 (partially exists - Body & URL Limit exists), 6.2 <br/> New applicable rules: (1.3, 5.3, 9.1) (9.2, 9.4), 1.12, 8.1  |
| [【MECM】MECM Support APP Rule Config During APP Orchestration](https://gitee.com/OSDT/dashboard?issue_id=I246ZD) |  Base framework related rules (part of existing framework) - Rule: 1.1, 2.1, 2.2, 5.3 (partially exists - Body & URL Limit exists), 6.2 <br/> New applicable rules: (1.3, 5.3, 9.1) (9.2, 9.4), 1.12, 8.1   | 
| [【MECM】应用实例化功能优化](https://gitee.com/OSDT/dashboard?issue_id=I1QWVL) |  Existing API only logic changes. Rule 8.1, (9.2, 9.4)  |  
| [【MECM 】MECM Support ATP LCM test features: Solution & Implementation](https://gitee.com/OSDT/dashboard?issue_id=I1YRXF) | Base framework related rules (part of existing framework) - Rule: 1.1, 2.1, 2.2, 5.3 (partially exists - Body & URL Limit exists), 6.2 <br/> New applicable rules: (1.3, 5.3, 9.1) (9.2, 9.4), 1.12, 8.1   |  
| [【MECM】提供ak/sk分配功能 Support](https://gitee.com/OSDT/dashboard?issue_id=I1R5LY) | Base framework related rules (part of existing framework) - Rule: 1.1, 2.1, 2.2, 5.3 (partially exists - Body & URL Limit exists), 6.2 <br/> New applicable rules: (1.3, 5.3, 9.1) (9.2, 9.4), 1.12, 8.1, 3.3, 4.5    |
| [【MECM】边缘仓库能力支持 Edge Repo Support Test](https://gitee.com/OSDT/dashboard?issue_id=I1QXSY) | Base framework related rules (part of existing framework) - Rule: 1.1, 2.1, 2.2, 5.3 (partially exists - Body & URL Limit exists), 1.3, 5.3, 9.1, 6.2<br/> New applicable rules: (9.2, 9.4), 8.1, 3.1   |   
| [【MECM】应用包管理优化--菜单项+应用包列表+应用包详情 Portal Enhancement for APM](https://gitee.com/OSDT/dashboard?issue_id=I1QXS5) |   No new rule application (only some logic change)   | 
| [【MECM】外部系统显示优化 Portal Enhancement for ESR](https://gitee.com/OSDT/dashboard?issue_id=I1QYJJ) |   No new rule application (only some logic change)   |  
| [【MECM】MECM支持限制活动的并发会话数 Session Limitation for Security](https://gitee.com/OSDT/dashboard?issue_id=I1TH8K) |  Rule 5.2   |  
| [【MECM】MECM支持权限处理，避免横向越权 Authentication limit for Secuirty](https://gitee.com/OSDT/dashboard?issue_id=I1TH3T) | Rule 1.2  | 
| [【Example APP】support positioning service as an example app.](https://gitee.com/OSDT/dashboard?issue_id=I1W7UJ) |  Covered in separate document   |   
| [【MECM 】MECM Support to query the capabilities](https://gitee.com/OSDT/dashboard?issue_id=I1Z3CN) |   Base framework related rules (part of existing framework) - Rule: 1.1, 2.1, 2.2, 5.3 (partially exists - Body & URL Limit exists), 6.2 <br/> New applicable rules: (1.3, 5.3, 9.1) (9.2, 9.4), 1.12, 8.1  |  
| [【MECM】MECM Support Batch Distribution and Batch Deployment](https://gitee.com/OSDT/dashboard?issue_id=I249AF) | Base framework related rules (part of existing framework) - Rule: 1.1, 2.1, 2.2, 5.3 (partially exists - Body & URL Limit exists), 6.2<br/> New applicable rules: (1.3, 5.3, 9.1) (9.2, 9.4), 1.12, 8.1    | 

## [Health-check support for eg components(using liveliness & readiness probes)--mecm]

### Rule 8.1

| Content                 | Related Information                                          |
| ----------------------- | ------------------------------------------------------------ |
| Security design rule ID | 8.1 All public function interfaces, RESTful interfaces, local function interfaces, command line interfaces and the default username and password for authentication must be described in the product or application documentation. |
| Implementation details  | New health check interface to be recorded in the API documents. |
| Related APIs            | TBD |
| Example API payload     | TBD |
| Related files           | NA |
| Related GUI URLs        | NA |
| GUI testing steps       | NA |
| GUI input example       | NA |
| Additional Info         | NA |

## 【MECM】MECM Support to query software capabilities

### Rule 1.3, 5.3, 9.1
Note: All three rules are related to input parameter validations of REST request and thereby combining the same.

| Content                 | Related Information                                          |
| ----------------------- | ------------------------------------------------------------ |
| Security design rule ID | 1.1 Input Validation.<br/> 5.3 All input must be limited to an appropriate size limit.<br/> 9.1 Do not log unsanitized user input. |
| Implementation details  | All security measures applied to the query software capability interfaces it includes input parameter validations, input parameter length validation and logging. |
| Related APIs            | GET /appo/v1/tenants/{tenant_id}/hosts/{host_ip}/mep_capabilities<br/> GET /appo/v1/tenants/{tenant_id}/hosts/{host_ip}/mep_capabilities/{capabilityId}<br/> GET /lcmcontroller/v1/tenants/{tenantId}/hosts/{hostIp}/mep_capabilities<br/> GET /lcmcontroller/v1/tenants/{tenantId}/hosts/{hostIp}/mep_capabilities/{capability_id} |
| Example API payload     | http://docs.edgegallery.org/en/latest/Projects/MECM/Appo_Interfaces_en.html<br/> http://docs.edgegallery.org/en/latest/Projects/MECM/Applcm_Interfaces_en.html|
| Related files           | NA |
| Related GUI URLs        | NA |
| GUI testing steps       | NA |
| GUI input example       | NA |
| Additional Info         | NA |

### Rule 1.12

| Content                 | Related Information                                          |
| ----------------------- | ------------------------------------------------------------ |
| Security design rule ID | 1.12 Role based Access control. |
| Implementation details  | New query software capability interface has been pre authorized for the role MECM_TENANT. |
| Related APIs            | GET /appo/v1/tenants/{tenant_id}/hosts/{host_ip}/mep_capabilities<br/> GET /appo/v1/tenants/{tenant_id}/hosts/{host_ip}/mep_capabilities/{capabilityId}<br/> GET /lcmcontroller/v1/tenants/{tenantId}/hosts/{hostIp}/mep_capabilities<br/> GET /lcmcontroller/v1/tenants/{tenantId}/hosts/{hostIp}/mep_capabilities/{capability_id} |
| Example API payload     | http://docs.edgegallery.org/en/latest/Projects/MECM/Appo_Interfaces_en.html<br/> http://docs.edgegallery.org/en/latest/Projects/MECM/Applcm_Interfaces_en.html| |
| Related files           | NA |
| Related GUI URLs        | NA |
| GUI testing steps       | NA |
| GUI input example       | NA |
| Additional Info         | NA |

### Rule 8.1

| Content                 | Related Information                                          |
| ----------------------- | ------------------------------------------------------------ |
| Security design rule ID | 8.1 All public function interfaces, RESTful interfaces, local function interfaces, command line interfaces and the default username and password for authentication must be described in the product or application documentation. |
| Implementation details  | New query software capability interface has been recorded in the API documents. |
| Related APIs            | GET /appo/v1/tenants/{tenant_id}/hosts/{host_ip}/mep_capabilities<br/> GET /appo/v1/tenants/{tenant_id}/hosts/{host_ip}/mep_capabilities/{capabilityId}<br/> GET /lcmcontroller/v1/tenants/{tenantId}/hosts/{hostIp}/mep_capabilities<br/> GET /lcmcontroller/v1/tenants/{tenantId}/hosts/{hostIp}/mep_capabilities/{capability_id} |
| Example API payload     | http://docs.edgegallery.org/en/latest/Projects/MECM/Appo_Interfaces_en.html<br/> http://docs.edgegallery.org/en/latest/Projects/MECM/Applcm_Interfaces_en.html| |
| Related files           | NA |
| Related GUI URLs        | NA |
| GUI testing steps       | NA |
| GUI input example       | NA |
| Additional Info         | NA |

### Rule 9.2, 9.4
Note: Both rules are related to logging and thereby combining the same.

| Content                 | Related Information                                          |
| ----------------------- | ------------------------------------------------------------ |
| Security design rule ID | 9.2 Sufficient Logging.<br/> 9.4 Avoid Logging of Excessive Data. |
| Implementation details  | Sufficient logs added in the success flows and excessive logging is taken care by adding logs only in failure scenarios. |
| Related APIs            | GET /appo/v1/tenants/{tenant_id}/hosts/{host_ip}/mep_capabilities<br/> GET /appo/v1/tenants/{tenant_id}/hosts/{host_ip}/mep_capabilities/{capabilityId}<br/> GET /lcmcontroller/v1/tenants/{tenantId}/hosts/{hostIp}/mep_capabilities<br/> GET /lcmcontroller/v1/tenants/{tenantId}/hosts/{hostIp}/mep_capabilities/{capability_id} |
| Example API payload     | http://docs.edgegallery.org/en/latest/Projects/MECM/Appo_Interfaces_en.html<br/> http://docs.edgegallery.org/en/latest/Projects/MECM/Applcm_Interfaces_en.html| |
| Related files           | NA |
| Related GUI URLs        | NA |
| GUI testing steps       | NA |
| GUI input example       | NA |
| Additional Info         | NA |

## 【MECM】MECM Support for hardware capabilities

### Rule 1.3, 5.3, 9.1
Note: All three rules are related to input parameter validations of REST request and thereby combining the same.

| Content                 | Related Information                                          |
| ----------------------- | ------------------------------------------------------------ |
| Security design rule ID | 1.1 Input Validation.<br/> 5.3 All input must be limited to an appropriate size limit.<br/> 9.1 Do not log unsanitized user input. |
| Implementation details  | All security measures applied to the hardware capability interfaces it includes input parameter validations, input parameter length validation and logging. |
| Related APIs            | GET /inventory/v1/tenants/{tenant_id}/mechosts<br/> POST /inventory/v1/tenants/{tenant_id}/mechosts<br/> DELETE /inventory/v1/tenants/{tenant_id}/mechosts<br/> GET /inventory/v1/tenants/{tenant_id}/mechosts/{mechost_ip}<br/> PUT /inventory/v1/tenants/{tenant_id}/mechosts/{mechost_ip}<br/> DELETE /inventory/v1/tenants/{tenant_id}/mechosts/{mechost_ip}<br/> POST /appo/v1/tenants/{tenant_id}/app_instances<br/> POST /appo/v1/tenants/{tenant_id}/mechosts/ {mechost_ip}/app<br/> GET /inventory/v1/tenants/{tenant_id}/mechosts/ {mechost_ip}/capabilities<br/> GET /inventory/v1/tenants/{tenant_id}/mechosts/ {mechost_ip}/capabilities/{capability_type}/applications  |
| Example API payload     | http://docs.edgegallery.org/en/latest/Projects/MECM/Appo_Interfaces_en.html<br/>http://docs.edgegallery.org/en/latest/Projects/MECM/Inventory_Interfaces_en.html |
| Related files           | NA |
| Related GUI URLs        | NA |
| GUI testing steps       | NA |
| GUI input example       | NA |
| Additional Info         | NA |

### Rule 1.12

| Content                 | Related Information                                          |
| ----------------------- | ------------------------------------------------------------ |
| Security design rule ID | 1.12 Role based Access control. |
| Implementation details  | Hardware capability interfaces has been pre authorized for the role MECM_TENANT. |
| Related APIs            | GET /inventory/v1/tenants/{tenant_id}/mechosts<br/> POST /inventory/v1/tenants/{tenant_id}/mechosts<br/> DELETE /inventory/v1/tenants/{tenant_id}/mechosts<br/> GET /inventory/v1/tenants/{tenant_id}/mechosts/{mechost_ip}<br/> PUT /inventory/v1/tenants/{tenant_id}/mechosts/{mechost_ip}<br/> DELETE /inventory/v1/tenants/{tenant_id}/mechosts/{mechost_ip}<br/> POST /appo/v1/tenants/{tenant_id}/app_instances<br/> POST /appo/v1/tenants/{tenant_id}/mechosts/ {mechost_ip}/app<br/> GET /inventory/v1/tenants/{tenant_id}/mechosts/ {mechost_ip}/capabilities<br/> GET /inventory/v1/tenants/{tenant_id}/mechosts/ {mechost_ip}/capabilities/{capability_type}/applications  |
| Example API payload     | http://docs.edgegallery.org/en/latest/Projects/MECM/Appo_Interfaces_en.html<br/> http://docs.edgegallery.org/en/latest/Projects/MECM/Applcm_Interfaces_en.html| |
| Related files           | NA |
| Related GUI URLs        | NA |
| GUI testing steps       | NA |
| GUI input example       | NA |
| Additional Info         | NA |

### Rule 8.1

| Content                 | Related Information                                          |
| ----------------------- | ------------------------------------------------------------ |
| Security design rule ID | 8.1 All public function interfaces, RESTful interfaces, local function interfaces, command line interfaces and the default username and password for authentication must be described in the product or application documentation. |
| Implementation details  | New hardware capability interface has been recorded in the API documents. |
| Related APIs            | GET /inventory/v1/tenants/{tenant_id}/mechosts<br/> POST /inventory/v1/tenants/{tenant_id}/mechosts<br/> DELETE /inventory/v1/tenants/{tenant_id}/mechosts<br/> GET /inventory/v1/tenants/{tenant_id}/mechosts/{mechost_ip}<br/> PUT /inventory/v1/tenants/{tenant_id}/mechosts/{mechost_ip}<br/> DELETE /inventory/v1/tenants/{tenant_id}/mechosts/{mechost_ip}<br/> POST /appo/v1/tenants/{tenant_id}/app_instances<br/> POST /appo/v1/tenants/{tenant_id}/mechosts/ {mechost_ip}/app<br/> GET /inventory/v1/tenants/{tenant_id}/mechosts/ {mechost_ip}/capabilities<br/> GET /inventory/v1/tenants/{tenant_id}/mechosts/ {mechost_ip}/capabilities/{capability_type}/applications  |
| Example API payload     | http://docs.edgegallery.org/en/latest/Projects/MECM/Appo_Interfaces_en.html<br/>http://docs.edgegallery.org/en/latest/Projects/MECM/Inventory_Interfaces_en.html |
| Related files           | NA |
| Related GUI URLs        | NA |
| GUI testing steps       | NA |
| GUI input example       | NA |
| Additional Info         | NA |

### Rule 9.2, 9.4
Note: Both rules are related to logging and thereby combining the same.

| Content                 | Related Information                                          |
| ----------------------- | ------------------------------------------------------------ |
| Security design rule ID | 9.2 Sufficient Logging.<br/> 9.4 Avoid Logging of Excessive Data. |
| Implementation details  | Sufficient logs added in the success flows and excessive logging is taken care by adding logs only in failure scenarios. |
| Related APIs            | GET /inventory/v1/tenants/{tenant_id}/mechosts<br/> POST /inventory/v1/tenants/{tenant_id}/mechosts<br/> DELETE /inventory/v1/tenants/{tenant_id}/mechosts<br/> GET /inventory/v1/tenants/{tenant_id}/mechosts/{mechost_ip}<br/> PUT /inventory/v1/tenants/{tenant_id}/mechosts/{mechost_ip}<br/> DELETE /inventory/v1/tenants/{tenant_id}/mechosts/{mechost_ip}<br/> POST /appo/v1/tenants/{tenant_id}/app_instances<br/> POST /appo/v1/tenants/{tenant_id}/mechosts/ {mechost_ip}/app<br/> GET /inventory/v1/tenants/{tenant_id}/mechosts/ {mechost_ip}/capabilities<br/> GET /inventory/v1/tenants/{tenant_id}/mechosts/ {mechost_ip}/capabilities/{capability_type}/applications  |
| Example API payload     | http://docs.edgegallery.org/en/latest/Projects/MECM/Appo_Interfaces_en.html<br/>http://docs.edgegallery.org/en/latest/Projects/MECM/Inventory_Interfaces_en.html |
| Related files           | NA |
| Related GUI URLs        | NA |
| GUI testing steps       | NA |
| GUI input example       | NA |
| Additional Info         | NA |

## 【MECM】MECM Support for application batch deploy

### Rule 1.3, 5.3, 9.1
Note: All three rules are related to input parameter validations of REST request and thereby combining the same.

| Content                 | Related Information                                          |
| ----------------------- | ------------------------------------------------------------ |
| Security design rule ID | 1.1 Input Validation.<br/> 5.3 All input must be limited to an appropriate size limit.<br/> 9.1 Do not log unsanitized user input. |
| Implementation details  | All security measures applied to the application batch deploy interfaces it includes input parameter validations, input parameter length validation and logging. |
| Related APIs            | POST /appo/v1/tenants/{{tenant-id}}/app_instances/create<br/> POST /appo/v1/tenants/{{tenant-id}}/app_instances/instantiate<br/> GET /appo/v1/tenants/{{tenant-id}}/app_instance_infos?appInstId=uuid1&appInstId=uuid2<br/> POST /appo/v1/tenants/{{tenant-id}}/app_instances/terminate  |
| Example API payload     | http://docs.edgegallery.org/en/latest/Projects/MECM/Appo_Interfaces_en.html |
| Related files           | NA |
| Related GUI URLs        | NA |
| GUI testing steps       | NA |
| GUI input example       | NA |
| Additional Info         | NA |

### Rule 1.12

| Content                 | Related Information                                          |
| ----------------------- | ------------------------------------------------------------ |
| Security design rule ID | 1.12 Role based Access control. |
| Implementation details  | Batch deploy interfaces has been pre authorized for the role MECM_TENANT. |
| Related APIs            | POST /appo/v1/tenants/{{tenant-id}}/app_instances/create<br/> POST /appo/v1/tenants/{{tenant-id}}/app_instances/instantiate<br/> GET /appo/v1/tenants/{{tenant-id}}/app_instance_infos?appInstId=uuid1&appInstId=uuid2<br/> POST /appo/v1/tenants/{{tenant-id}}/app_instances/terminate  |
| Example API payload     | http://docs.edgegallery.org/en/latest/Projects/MECM/Appo_Interfaces_en.html |
| Related files           | NA |
| Related GUI URLs        | NA |
| GUI testing steps       | NA |
| GUI input example       | NA |
| Additional Info         | NA |

### Rule 8.1

| Content                 | Related Information                                          |
| ----------------------- | ------------------------------------------------------------ |
| Security design rule ID | 8.1 All public function interfaces, RESTful interfaces, local function interfaces, command line interfaces and the default username and password for authentication must be described in the product or application documentation. |
| Implementation details  | Batch application deploy interface has been recorded in the API documents. |
| Related APIs            | POST /appo/v1/tenants/{{tenant-id}}/app_instances/create<br/> POST /appo/v1/tenants/{{tenant-id}}/app_instances/instantiate<br/> GET /appo/v1/tenants/{{tenant-id}}/app_instance_infos?appInstId=uuid1&appInstId=uuid2<br/> POST /appo/v1/tenants/{{tenant-id}}/app_instances/terminate  |
| Example API payload     | http://docs.edgegallery.org/en/latest/Projects/MECM/Appo_Interfaces_en.html |
| Related files           | NA |
| Related GUI URLs        | NA |
| GUI testing steps       | NA |
| GUI input example       | NA |
| Additional Info         | NA |

### Rule 9.2, 9.4
Note: Both rules are related to logging and thereby combining the same.

| Content                 | Related Information                                          |
| ----------------------- | ------------------------------------------------------------ |
| Security design rule ID | 9.2 Sufficient Logging.<br/> 9.4 Avoid Logging of Excessive Data. |
| Implementation details  | Sufficient logs added in the success flows and excessive logging is taken care by adding logs only in failure scenarios. |
| Related APIs            | POST /appo/v1/tenants/{{tenant-id}}/app_instances/create<br/> POST /appo/v1/tenants/{{tenant-id}}/app_instances/instantiate<br/> GET /appo/v1/tenants/{{tenant-id}}/app_instance_infos?appInstId=uuid1&appInstId=uuid2<br/> POST /appo/v1/tenants/{{tenant-id}}/app_instances/terminate  |
| Example API payload     | http://docs.edgegallery.org/en/latest/Projects/MECM/Appo_Interfaces_en.html |
| Related files           | NA |
| Related GUI URLs        | NA |
| GUI testing steps       | NA |
| GUI input example       | NA |
| Additional Info         | NA |

## 【MECM】MECM Support AK/SK

### Rule 1.3, 5.3
Note: All three rules are related to input parameter validations of REST request and thereby combining the same.

| Content                 | Related Information                                          |
| ----------------------- | ------------------------------------------------------------ |
| Security design rule ID | 1.1 Input Validation.<br/> 5.3 All input must be limited to an appropriate size limit. |
| Implementation details  | All security measures applied to the interfaces it includes input parameter validations, input parameter length validation and logging. |
| Related APIs            | GRPC InstantiateRequest   |
| Example API payload     | http://docs.edgegallery.org/en/latest/Projects/MECM/Applcm_Interfaces_en.html |
| Related files           | NA |
| Related GUI URLs        | NA |
| GUI testing steps       | NA |
| GUI input example       | NA |
| Additional Info         | NA |

### Rule 3.3

| Content                 | Related Information                                          |
| ----------------------- | ------------------------------------------------------------ |
| Security design rule ID | 3.3 All sensitive data is sent to the server in the HTTP message body and not in URL. |
| Implementation details  | All security measures applied to the instantiation interfaces it includes sensitive data to be part of request body. |
| Related APIs            | GRPC InstantiateRequest   |
| Example API payload     | http://docs.edgegallery.org/en/latest/Projects/MECM/Applcm_Interfaces_en.html |
| Related files           | NA |
| Related GUI URLs        | NA |
| GUI testing steps       | NA |
| GUI input example       | NA |
| Additional Info         | NA |

### Rule 4.5

| Content                 | Related Information                                          |
| ----------------------- | ------------------------------------------------------------ |
| Security design rule ID | 4.5 Use a secure random number generator to generate keys. |
| Implementation details  | All security measures applied while generation AS/SK keys. |
| Related APIs            | GRPC InstantiateRequest   |
| Example API payload     | http://docs.edgegallery.org/en/latest/Projects/MECM/Applcm_Interfaces_en.html |
| Related files           | NA |
| Related GUI URLs        | NA |
| GUI testing steps       | NA |
| GUI input example       | NA |
| Additional Info         | NA |

### Rule 1.12

| Content                 | Related Information                                          |
| ----------------------- | ------------------------------------------------------------ |
| Security design rule ID | 1.12 Role based Access control. |
| Implementation details  | AK/SK interfaces has been pre authorized for the role MECM_TENANT. |
| Related APIs            | GRPC InstantiateRequest  |
| Example API payload     | http://docs.edgegallery.org/en/latest/Projects/MECM/Applcm_Interfaces_en.html |
| Related files           | NA |
| Related GUI URLs        | NA |
| GUI testing steps       | NA |
| GUI input example       | NA |
| Additional Info         | NA |

### Rule 8.1

| Content                 | Related Information                                          |
| ----------------------- | ------------------------------------------------------------ |
| Security design rule ID | 8.1 All public function interfaces, RESTful interfaces, local function interfaces, command line interfaces and the default username and password for authentication must be described in the product or application documentation. |
| Implementation details  | Interface update for AK/SK support has been recorded in the API documents. |
| Related APIs            | GRPC InstantiateRequest   |
| Example API payload     | http://docs.edgegallery.org/en/latest/Projects/MECM/Applcm_Interfaces_en.html |
| Related files           | NA |
| Related GUI URLs        | NA |
| GUI testing steps       | NA |
| GUI input example       | NA |
| Additional Info         | NA |

### Rule 9.2, 9.4
Note: Both rules are related to logging and thereby combining the same.

| Content                 | Related Information                                          |
| ----------------------- | ------------------------------------------------------------ |
| Security design rule ID | 9.2 Sufficient Logging.<br/> 9.4 Avoid Logging of Excessive Data. |
| Implementation details  | Sufficient logs added in the success flows and excessive logging is taken care by adding logs only in failure scenarios. |
| Related APIs            | GRPC InstantiateRequest   |
| Example API payload     | http://docs.edgegallery.org/en/latest/Projects/MECM/Applcm_Interfaces_en.html |
| Related files           | NA |
| Related GUI URLs        | NA |
| GUI testing steps       | NA |
| GUI input example       | NA |
| Additional Info         | NA |

## 【MECM】MECM Support ATP LCM test features: Solution & Implementation

### Rule 1.3, 5.3, 9.1
Note: All three rules are related to input parameter validations of REST request and thereby combining the same.

| Content                 | Related Information                                          |
| ----------------------- | ------------------------------------------------------------ |
| Security design rule ID | 1.1 Input Validation.<br/> 5.3 All input must be limited to an appropriate size limit.<br/> 9.1 Do not log unsanitized user input. |
| Implementation details  | All security measures applied to the application Onboarding interfaces it includes input parameter validations, input parameter length validation and logging. |
| Related APIs            | POST /apm/v1/tenants/{tenant_id}/packages/upload  |
| Example API payload     | http://docs.edgegallery.org/en/latest/Projects/MECM/Apm_Interfaces_en.html |
| Related files           | NA |
| Related GUI URLs        | NA |
| GUI testing steps       | NA |
| GUI input example       | NA |
| Additional Info         | NA |

### Rule 1.12

| Content                 | Related Information                                          |
| ----------------------- | ------------------------------------------------------------ |
| Security design rule ID | 1.12 Role based Access control. |
| Implementation details  | APM Onboard interface has been pre authorized for the role MECM_TENANT. |
| Related APIs            | POST /apm/v1/tenants/{tenant_id}/packages/upload  |
| Example API payload     | http://docs.edgegallery.org/en/latest/Projects/MECM/Apm_Interfaces_en.html |
| Related files           | NA |
| Related GUI URLs        | NA |
| GUI testing steps       | NA |
| GUI input example       | NA |
| Additional Info         | NA |

### Rule 8.1

| Content                 | Related Information                                          |
| ----------------------- | ------------------------------------------------------------ |
| Security design rule ID | 8.1 All public function interfaces, RESTful interfaces, local function interfaces, command line interfaces and the default username and password for authentication must be described in the product or application documentation. |
| Implementation details  | New application onboard interface has been recorded in the API documents. |
| Related APIs            | POST /apm/v1/tenants/{tenant_id}/packages/upload  |
| Example API payload     | http://docs.edgegallery.org/en/latest/Projects/MECM/Apm_Interfaces_en.html |
| Related files           | NA |
| Related GUI URLs        | NA |
| GUI testing steps       | NA |
| GUI input example       | NA |
| Additional Info         | NA |

### Rule 9.2, 9.4
Note: Both rules are related to logging and thereby combining the same.

| Content                 | Related Information                                          |
| ----------------------- | ------------------------------------------------------------ |
| Security design rule ID | 9.2 Sufficient Logging.<br/> 9.4 Avoid Logging of Excessive Data. |
| Implementation details  | Sufficient logs added in the success flows and excessive logging is taken care by adding logs only in failure scenarios. |
| Related APIs            | POST /apm/v1/tenants/{tenant_id}/packages/upload  |
| Example API payload     | http://docs.edgegallery.org/en/latest/Projects/MECM/Apm_Interfaces_en.html |
| Related files           | NA |
| Related GUI URLs        | NA |
| GUI testing steps       | NA |
| GUI input example       | NA |
| Additional Info         | NA |

## 【MECM】Edge Repo Support Test

### Rule 9.2, 9.4
Note: Both rules are related to logging and thereby combining the same.

| Content                 | Related Information                                          |
| ----------------------- | ------------------------------------------------------------ |
| Security design rule ID | 9.2 Sufficient Logging.<br/> 9.4 Avoid Logging of Excessive Data. |
| Implementation details  | Sufficient logs added in the success flows and excessive logging is taken care by adding logs only in failure scenarios. |
| Related APIs            | POST /apm/v1/tenants/{tenant_id}/packages  |
| Example API payload     | http://docs.edgegallery.org/en/latest/Projects/MECM/Apm_Interfaces_en.html |
| Related files           | NA |
| Related GUI URLs        | NA |
| GUI testing steps       | NA |
| GUI input example       | NA |
| Additional Info         | NA |

### Rule 8.1

| Content                 | Related Information                                          |
| ----------------------- | ------------------------------------------------------------ |
| Security design rule ID | 8.1 All public function interfaces, RESTful interfaces, local function interfaces, command line interfaces and the default username and password for authentication must be described in the product or application documentation. |
| Implementation details  | Application onboard interface has been recorded in the API documents. |
| Related APIs            | POST /apm/v1/tenants/{tenant_id}/packages  |
| Example API payload     | http://docs.edgegallery.org/en/latest/Projects/MECM/Apm_Interfaces_en.html |
| Related files           | NA |
| Related GUI URLs        | NA |
| GUI testing steps       | NA |
| GUI input example       | NA |
| Additional Info         | NA |

### Rule 3.1

| Content                 | Related Information                                          |
| ----------------------- | ------------------------------------------------------------ |
| Security design rule ID | 3.1 Authentication credentials (such as passwords and keys) cannot be stored in plaintext in the system and must be encrypted. Notice: Authentication credentials like database passwords, certificates, etc., can be passed in during user installation and can be in plain text. |
| Implementation details  | All security measures applied for this feature including getting repo username and repo password passed in during deployment. |
| Related APIs            | POST /apm/v1/tenants/{tenant_id}/packages  |
| Example API payload     | http://docs.edgegallery.org/en/latest/Projects/MECM/Apm_Interfaces_en.html |
| Related files           | NA |
| Related GUI URLs        | NA |
| GUI testing steps       | NA |
| GUI input example       | NA |
| Additional Info         | NA |

## 【MECM】MECM Support APP Rule Config During APP Orchestration & 【MECM】MECM Support APP Rule Cofing From Portal]

### Rule 1.3, 5.3, 9.1
Note: All three rules are related to input parameter validations of REST request and thereby combining the same.

| Content                 | Related Information                                          |
| ----------------------- | ------------------------------------------------------------ |
| Security design rule ID | 1.1 Input Validation.<br/> 5.3 All input must be limited to an appropriate size limit.<br/> 9.1 Do not log unsanitized user input. |
| Implementation details  | Feature design in-progress. |
| Related APIs            | Feature design in-progress |
| Example API payload     | NA |
| Related files           | NA |
| Related GUI URLs        | NA |
| GUI testing steps       | NA |
| GUI input example       | NA |
| Additional Info         | NA |

### Rule 1.12

| Content                 | Related Information                                          |
| ----------------------- | ------------------------------------------------------------ |
| Security design rule ID | 1.12 Role based Access control. |
| Implementation details  | Feature design in-progress. |
| Related APIs            | Feature design in-progress |
| Example API payload     | NA |
| Related files           | NA |
| Related GUI URLs        | NA |
| GUI testing steps       | NA |
| GUI input example       | NA |
| Additional Info         | NA |

### Rule 8.1

| Content                 | Related Information                                          |
| ----------------------- | ------------------------------------------------------------ |
| Security design rule ID | 8.1 All public function interfaces, RESTful interfaces, local function interfaces, command line interfaces and the default username and password for authentication must be described in the product or application documentation. |
| Implementation details  | Feature design in-progress. |
| Related APIs            | Feature design in-progress |
| Example API payload     | NA |
| Related files           | NA |
| Related GUI URLs        | NA |
| GUI testing steps       | NA |
| GUI input example       | NA |
| Additional Info         | NA |

### Rule 9.2, 9.4
Note: Both rules are related to logging and thereby combining the same.

| Content                 | Related Information                                          |
| ----------------------- | ------------------------------------------------------------ |
| Security design rule ID | 9.2 Sufficient Logging.<br/> 9.4 Avoid Logging of Excessive Data. |
| Implementation details  | Feature design in-progress. |
| Related APIs            | Feature design in-progress |
| Example API payload     | NA |
| Related files           | NA |
| Related GUI URLs        | NA |
| GUI testing steps       | NA |
| GUI input example       | NA |
| Additional Info         | NA |
