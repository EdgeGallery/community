# MECM V1.1 Security Design rule involvement

|Story Name |Related Security Design Rule|
|----|----|
| [[【MECM】Mecm应用首页集成个人帐号中心Account Management Portal Integrated to MECM admin Portal](https://gitee.com/OSDT/dashboard/issues?id=I2E9M3) |  NA (Portal redirects to user-management for authentication)   |  
| [[【Mecm】Mecm应用支持分权控制，区分不同角色进行差异化功能展现MECM Support Administrator/Tanant/Guest Role](https://gitee.com/OSDT/dashboard?issue_id=I2E6SS) |  NA (Only API modifications) |   
| [[【MECM】MECM APPO/Inventory support synchronize data from edge](https://gitee.com/OSDT/dashboard/issues?id=I2P7RL) | New applicable rules: (1.3, 5.3, 9.1) (9.2, 9.4), 1.12, 8.1   |   
| [[【MECM】MECM 支持本地边缘自治 Edge Autonomous](https://gitee.com/OSDT/dashboard/issues?id=I2EB7C) |  Rule: 1.1, 2.1, 2.2, 5.3, 1.5, 6.2, (1.3, 5.3, 9.1) (9.2, 9.4), 8.1 <br/> Note: User-Management Integration Login/Logout + Token  based Authorization will be deferred to future release |   
| [[【MECM】MECM Edge Portal integrate with MEP portal.](https://gitee.com/OSDT/dashboard/issues?id=I2P7T7) |  NA  |   
| [[【MECM】APP Instance Termination Enhancement](https://gitee.com/OSDT/dashboard/issues?id=I2DQVG) |  NA (MECM as client) |   
| [[【MECM】 Adaptive mep url unify](https://gitee.com/OSDT/dashboard/issues?id=I2NTWF) |  NA (MECM as client) |   
| [[【MECM】支持容器镜像管理Support Container Image Manage](https://gitee.com/OSDT/dashboard/issues?id=I2E3V8) |  New applicable rules: (1.3, 5.3, 9.1) (9.2, 9.4), 1.12, 8.1 <br/> Authentication credentials storage (master key) (3.1) |   
| [[【MECM】增加对依赖应用实例的删除校验逻辑 ](https://gitee.com/OSDT/dashboard/issues?id=I24W8Z) |  NA (Old feature only test effort) |   
| [[【MECM】增加对依赖应用的查询与部署提示 ](https://gitee.com/OSDT/dashboard/issues?id=I1QWVL) |  NA (Old feature only test effort) |   
| [[【MECM】Applcm support VM based app. ](https://gitee.com/OSDT/dashboard/issues?id=I2P88K) |  New applicable rules: (1.3, 5.3, 9.1) (9.2, 9.4), 1.12, 8.1 |    |   
| [[【MECM】example-apps support demo app service call. ](https://gitee.com/OSDT/dashboard/issues?id=I2P8CH) |  NA  (Example APP as client) |   
| [[【MECM】Applcm support logs of the app deployment to developer ](https://gitee.com/OSDT/dashboard/issues?id=I2P8KM) |  New applicable rules: (1.3, 5.3, 9.1) (9.2, 9.4), 1.12, 8.1  |   
| [[【MECM/example-apps】Make example-apps open source ](https://gitee.com/OSDT/dashboard/issues?id=I2P8VJ) |  NA (Already discussed in last release) |   

TBD Points Details listed at: https://gitee.com/edgegallery/community/blob/master/MECM%20PT/Release%20V1.1/MEMC%20V1.1%20Open%20Security%20Points.md

## 【MECM】支持容器镜像管理Support Container Image Manage

### Rule 1.3, 5.3, 9.1
Note: All three rules are related to input parameter validations of REST request and thereby combining the same.

| Content                 | Related Information                                          |
| ----------------------- | ------------------------------------------------------------ |
| Security design rule ID | 1.1 Input Validation.<br/> 5.3 All input must be limited to an appropriate size limit.<br/> 9.1 Do not log unsanitized user input. |
| Implementation details  | All security measures applied to the query app package info and sync interfaces it includes input parameter validations, input parameter length validation and logging. |
| Related APIs            | POST /inventory/v1/appstores.<br/> PUT /inventory/v1/appstores/{appstoreId}.<br/> GET /inventory/v1/appstores<br/> DELETE /inventory/v1/appstores/{appstoreId}.<br/> GET /inventory/v1/appstores/{appstoreId}.<br/> DELETE /inventory/v1/appstores.<br/> GET apm/v1/apppkginfos/appstores/{appstoreId}.<br/> POST apm/v1/syncapppkgs.<br/> GET apm/v1/syncapppkgs/status |
| Example API payload     | http://docs.edgegallery.org/en/latest/Projects/MECM/Apm_Interfaces_en.html<br/> http://docs.edgegallery.org/en/latest/Projects/MECM/Inventory_Interfaces_en.html |
| Related files           | NA |
| Related GUI URLs        | NA |
| GUI testing steps       | NA |
| GUI input example       | NA |
| Additional Info         | NA |

### Rule 1.12

| Content                 | Related Information                                          |
| ----------------------- | ------------------------------------------------------------ |
| Security design rule ID | 1.12 Role based Access control. |
| Implementation details  | App package info query and sync API's has been pre authorized for the role MECM_TENANT/MECM_ADMIN. |
| Related APIs            | POST /inventory/v1/appstores.<br/> PUT /inventory/v1/appstores/{appstoreId}.<br/> GET /inventory/v1/appstores<br/> DELETE /inventory/v1/appstores/{appstoreId}.<br/> GET /inventory/v1/appstores/{appstoreId}.<br/> DELETE /inventory/v1/appstores.<br/> GET apm/v1/apppkginfos/appstores/{appstoreId}.<br/> POST apm/v1/syncapppkgs.<br/> GET apm/v1/syncapppkgs/status  |
| Example API payload     | http://docs.edgegallery.org/en/latest/Projects/MECM/Apm_Interfaces_en.html<br/> http://docs.edgegallery.org/en/latest/Projects/MECM/Inventory_Interfaces_en.html |
| Related files           | NA |
| Related GUI URLs        | NA |
| GUI testing steps       | NA |
| GUI input example       | NA |
| Additional Info         | NA |

### Rule 8.1

| Content                 | Related Information                                          |
| ----------------------- | ------------------------------------------------------------ |
| Security design rule ID | 8.1 All public function interfaces, RESTful interfaces, local function interfaces, command line interfaces and the default username and password for authentication must be described in the product or application documentation. |
| Implementation details  | New synchronize and app package info query interface has been recorded in the API documents. |
| Related APIs            | POST /inventory/v1/appstores.<br/> PUT /inventory/v1/appstores/{appstoreId}.<br/> GET /inventory/v1/appstores<br/> DELETE /inventory/v1/appstores/{appstoreId}.<br/> GET /inventory/v1/appstores/{appstoreId}.<br/> DELETE /inventory/v1/appstores.<br/> GET apm/v1/apppkginfos/appstores/{appstoreId}.<br/> POST apm/v1/syncapppkgs.<br/> GET apm/v1/syncapppkgs/status  |
| Example API payload     | http://docs.edgegallery.org/en/latest/Projects/MECM/Apm_Interfaces_en.html<br/> http://docs.edgegallery.org/en/latest/Projects/MECM/Inventory_Interfaces_en.html |
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
| Related APIs            | POST /inventory/v1/appstores.<br/> PUT /inventory/v1/appstores/{appstoreId}.<br/> GET /inventory/v1/appstores<br/> DELETE /inventory/v1/appstores/{appstoreId}.<br/> GET /inventory/v1/appstores/{appstoreId}.<br/> DELETE /inventory/v1/appstores.<br/> GET apm/v1/apppkginfos/appstores/{appstoreId}.<br/> POST apm/v1/syncapppkgs.<br/> GET apm/v1/syncapppkgs/status  |
| Example API payload     | http://docs.edgegallery.org/en/latest/Projects/MECM/Apm_Interfaces_en.html<br/> http://docs.edgegallery.org/en/latest/Projects/MECM/Inventory_Interfaces_en.html |
| Related files           | NA |
| Related GUI URLs        | NA |
| GUI testing steps       | NA |
| GUI input example       | NA |
| Additional Info         | NA |

## 【MECM】MECM APPO/Inventory support synchronize data from edge

### Rule 1.3, 5.3, 9.1
Note: All three rules are related to input parameter validations of REST request and thereby combining the same.

| Content                 | Related Information                                          |
| ----------------------- | ------------------------------------------------------------ |
| Security design rule ID | 1.1 Input Validation.<br/> 5.3 All input must be limited to an appropriate size limit.<br/> 9.1 Do not log unsanitized user input. |
| Implementation details  | All security measures applied to the query interfaces it includes input parameter validations, input parameter length validation and logging. |
| Related APIs            | GET /lcmcontroller/v1/tenants/:tenantId/app_instances.<br/> GET /inventory/v1/syncronize<br/> GET /lcmcontroller/v1/hosts<br/> GETapprulemgr/v1/tenants/:tenantId/app_instances/:appInstanceId/appd_configuration  |
| Example API payload     | http://docs.edgegallery.org/en/latest/Projects/MECM/Applcm_Interfaces_en.html<br/>http://docs.edgegallery.org/en/latest/Projects/MECM/Inventory_Interfaces_en.html<br/> http://docs.edgegallery.org/zh_CN/latest/Projects/MECM/MECM_AppRule_Manager.html |
| Related files           | NA |
| Related GUI URLs        | NA |
| GUI testing steps       | NA |
| GUI input example       | NA |
| Additional Info         | NA |

### Rule 1.12

| Content                 | Related Information                                          |
| ----------------------- | ------------------------------------------------------------ |
| Security design rule ID | 1.12 Role based Access control. |
| Implementation details  | Data synchronize API's has been pre authorized for the role MECM_TENANT/MECM_ADMIN. |
| Related APIs            | GET /lcmcontroller/v1/tenants/:tenantId/app_instances.<br/> GET /inventory/v1/syncronize<br/> GET /lcmcontroller/v1/hosts<br/> GETapprulemgr/v1/tenants/:tenantId/app_instances/:appInstanceId/appd_configuration  |
| Example API payload     | http://docs.edgegallery.org/en/latest/Projects/MECM/Applcm_Interfaces_en.html<br/>http://docs.edgegallery.org/en/latest/Projects/MECM/Inventory_Interfaces_en.html<br/> http://docs.edgegallery.org/zh_CN/latest/Projects/MECM/MECM_AppRule_Manager.html |
| Related files           | NA |
| Related GUI URLs        | NA |
| GUI testing steps       | NA |
| GUI input example       | NA |
| Additional Info         | NA |

### Rule 8.1

| Content                 | Related Information                                          |
| ----------------------- | ------------------------------------------------------------ |
| Security design rule ID | 8.1 All public function interfaces, RESTful interfaces, local function interfaces, command line interfaces and the default username and password for authentication must be described in the product or application documentation. |
| Implementation details  | New data synchronize interface has been recorded in the API documents. |
| Related APIs            | GET /lcmcontroller/v1/tenants/:tenantId/app_instances.<br/> GET /inventory/v1/syncronize<br/> GET /lcmcontroller/v1/hosts<br/> GETapprulemgr/v1/tenants/:tenantId/app_instances/:appInstanceId/appd_configuration  |
| Example API payload     | http://docs.edgegallery.org/en/latest/Projects/MECM/Applcm_Interfaces_en.html<br/>http://docs.edgegallery.org/en/latest/Projects/MECM/Inventory_Interfaces_en.html<br/> http://docs.edgegallery.org/zh_CN/latest/Projects/MECM/MECM_AppRule_Manager.html |
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
| Related APIs            | GET /lcmcontroller/v1/tenants/:tenantId/app_instances.<br/> GET /inventory/v1/syncronize<br/> GET /lcmcontroller/v1/hosts<br/> GETapprulemgr/v1/tenants/:tenantId/app_instances/:appInstanceId/appd_configuration  |
| Example API payload     | http://docs.edgegallery.org/en/latest/Projects/MECM/Applcm_Interfaces_en.html<br/>http://docs.edgegallery.org/en/latest/Projects/MECM/Inventory_Interfaces_en.html<br/> http://docs.edgegallery.org/zh_CN/latest/Projects/MECM/MECM_AppRule_Manager.html |
| Related files           | NA |
| Related GUI URLs        | NA |
| GUI testing steps       | NA |
| GUI input example       | NA |
| Additional Info         | NA |

## 【MECM】MECM 支持本地边缘自治 Edge Autonomous

### Rule 1.1
Note: All three rules are related to security and thereby combining the same.<br/>

| Content                 | Related Information                                          |
| ----------------------- | ------------------------------------------------------------ |
| Security design rule ID | 1.1 All machine-to-machine and man-to-machine interfaces for cross-network transmission must have an access authentication mechanism, and the authentication process must be performed on a server. |
| Implementation details  | TBD |
| Related APIs            | POST /lcmcontroller/v1/tenants/:tenantId/app_instances/:appInstanceId/batchInstantiate.<br/> GET /lcmcontroller/v1/tenants/:tenantId/app_instances.<br/> POST /lcmcontroller/v1/tenants/:tenantId/app_instances/batchterminate.<br/> POST /lcmcontroller/v1/hosts.<br/> PUT /lcmcontroller/v1/hosts.<br/> DELETE /lcmcontroller/v1/hosts/{hostIp}.<br/> GET /lcmcontroller/v1/hosts.<br/> POST /apprulemgr/v1/tenants/:tenantId/app_instances/:appInstanceId/appd_configuration.<br/> PUT /lcmcontroller/v1/hosts.<br/> POST /apprulemgr/v1/tenants/:tenantId/app_instances/:appInstanceId/appd_configuration.<br/> PUT /apprulemgr/v1/tenants/:tenantId/app_instances/:appInstanceId/appd_configuration.<br/> GET /apprulemgr/v1/tenants/:tenantId/app_instances/:appInstanceId/appd_configuration.<br/> DELETE /apprulemgr/v1/tenants/:tenantId/app_instances/:appInstanceId/appd_configuration |
| Example API payload     | http://docs.edgegallery.org/en/latest/Projects/MECM/Applcm_Interfaces_en.html<br/> http://docs.edgegallery.org/zh_CN/latest/Projects/MECM/MECM_AppRule_Manager.html |
| Related files           | NA |
| Related GUI URLs        | NA |
| GUI testing steps       | NA |
| GUI input example       | NA |
| Additional Info         | NA |

### Rule 2.1, 2.2
Note: All three rules are related to security and thereby combining the same.

| Content                 | Related Information                                          |
| ----------------------- | ------------------------------------------------------------ |
| Security design rule ID | 2.1 Sensitive data (including passwords) or key service data (network structure, model parameters) must be transmitted across networks using secure transmission protocols or encrypted before transmission.<br/> 2.2 Do not use SSL2.0, SSL3.0, TLS1.0, or TLS1.1 for secure transmission. TLS1.2 and TLS1.3 are recommended. |
| Implementation details  | mepm-fe use TLS1.2 to communicate with backend. |
| Related APIs            | POST /lcmcontroller/v1/tenants/:tenantId/app_instances/:appInstanceId/batchInstantiate.<br/> GET /lcmcontroller/v1/tenants/:tenantId/app_instances.<br/> POST /lcmcontroller/v1/tenants/:tenantId/app_instances/batchterminate.<br/> POST /lcmcontroller/v1/hosts.<br/> PUT /lcmcontroller/v1/hosts.<br/> DELETE /lcmcontroller/v1/hosts/{hostIp}.<br/> GET /lcmcontroller/v1/hosts.<br/> POST /apprulemgr/v1/tenants/:tenantId/app_instances/:appInstanceId/appd_configuration.<br/> PUT /lcmcontroller/v1/hosts.<br/> POST /apprulemgr/v1/tenants/:tenantId/app_instances/:appInstanceId/appd_configuration.<br/> PUT /apprulemgr/v1/tenants/:tenantId/app_instances/:appInstanceId/appd_configuration.<br/> GET /apprulemgr/v1/tenants/:tenantId/app_instances/:appInstanceId/appd_configuration.<br/> DELETE /apprulemgr/v1/tenants/:tenantId/app_instances/:appInstanceId/appd_configuration |
| Example API payload     | http://docs.edgegallery.org/en/latest/Projects/MECM/Applcm_Interfaces_en.html<br/> http://docs.edgegallery.org/zh_CN/latest/Projects/MECM/MECM_AppRule_Manager.html |
| Related files           | NA |
| Related GUI URLs        | NA |
| GUI testing steps       | NA |
| GUI input example       | NA |
| Additional Info         | NA |

### Rule 1.5

| Content                 | Related Information                                          |
| ----------------------- | ------------------------------------------------------------ |
| Security design rule ID | 1.5 According to the principle of least privilege, accounts used to run software programs are low-privilege OS accounts. |
| Implementation details  | All security measures applied to the MEPM-FE docker image. |
| Related APIs            | NA |
| Example API payload     | NA |
| Related files           | NA |
| Related GUI URLs        | NA |
| GUI testing steps       | NA |
| GUI input example       | NA |
| Additional Info         | NA |


### Rule 1.3, 5.3, 9.1
Note: All three rules are related to input parameter validations of REST request and thereby combining the same.

| Content                 | Related Information                                          |
| ----------------------- | ------------------------------------------------------------ |
| Security design rule ID | 1.1 Input Validation.<br/> 5.3 All input must be limited to an appropriate size limit.<br/> 9.1 Do not log unsanitized user input. |
| Implementation details  | All security measures applied to the interfaces it includes input parameter validations, input parameter length validation and logging. |
| Related APIs            | POST /lcmcontroller/v1/tenants/:tenantId/app_instances/:appInstanceId/batchInstantiate.<br/> GET /lcmcontroller/v1/tenants/:tenantId/app_instances.<br/> POST /lcmcontroller/v1/tenants/:tenantId/app_instances/batchterminate.<br/> POST /lcmcontroller/v1/hosts.<br/> PUT /lcmcontroller/v1/hosts.<br/> DELETE /lcmcontroller/v1/hosts/{hostIp}.<br/> GET /lcmcontroller/v1/hosts.<br/> POST /apprulemgr/v1/tenants/:tenantId/app_instances/:appInstanceId/appd_configuration.<br/> PUT /lcmcontroller/v1/hosts.<br/> POST /apprulemgr/v1/tenants/:tenantId/app_instances/:appInstanceId/appd_configuration.<br/> PUT /apprulemgr/v1/tenants/:tenantId/app_instances/:appInstanceId/appd_configuration.<br/> GET /apprulemgr/v1/tenants/:tenantId/app_instances/:appInstanceId/appd_configuration.<br/> DELETE /apprulemgr/v1/tenants/:tenantId/app_instances/:appInstanceId/appd_configuration |
| Example API payload     | http://docs.edgegallery.org/en/latest/Projects/MECM/Applcm_Interfaces_en.html<br/> http://docs.edgegallery.org/zh_CN/latest/Projects/MECM/MECM_AppRule_Manager.html |
| Related files           | NA |
| Related GUI URLs        | NA |
| GUI testing steps       | NA |
| GUI input example       | NA |
| Additional Info         | NA |

### Rule 1.12, 6.2

| Content                 | Related Information                                          |
| ----------------------- | ------------------------------------------------------------ |
| Security design rule ID | 1.12 Role based Access control.<br/> 6.2 Set sessions/credentials a valid expiration date. |
| Implementation details  | All API's has been pre authorized for the role MECM_TENANT/MECM_ADMIN/MECM_GUEST. |
| Related APIs            | POST /lcmcontroller/v1/tenants/:tenantId/app_instances/:appInstanceId/batchInstantiate.<br/> GET /lcmcontroller/v1/tenants/:tenantId/app_instances.<br/> POST /lcmcontroller/v1/tenants/:tenantId/app_instances/batchterminate.<br/> POST /lcmcontroller/v1/hosts.<br/> PUT /lcmcontroller/v1/hosts.<br/> DELETE /lcmcontroller/v1/hosts/{hostIp}.<br/> GET /lcmcontroller/v1/hosts.<br/> POST /apprulemgr/v1/tenants/:tenantId/app_instances/:appInstanceId/appd_configuration.<br/> PUT /lcmcontroller/v1/hosts.<br/> POST /apprulemgr/v1/tenants/:tenantId/app_instances/:appInstanceId/appd_configuration.<br/> PUT /apprulemgr/v1/tenants/:tenantId/app_instances/:appInstanceId/appd_configuration.<br/> GET /apprulemgr/v1/tenants/:tenantId/app_instances/:appInstanceId/appd_configuration.<br/> DELETE /apprulemgr/v1/tenants/:tenantId/app_instances/:appInstanceId/appd_configuration  |
| Example API payload     | http://docs.edgegallery.org/en/latest/Projects/MECM/Applcm_Interfaces_en.html<br/> http://docs.edgegallery.org/zh_CN/latest/Projects/MECM/MECM_AppRule_Manager.html |
| Related files           | NA |
| Related GUI URLs        | NA |
| GUI testing steps       | NA |
| GUI input example       | NA |
| Additional Info         | NA |

### Rule 8.1

| Content                 | Related Information                                          |
| ----------------------- | ------------------------------------------------------------ |
| Security design rule ID | 8.1 All public function interfaces, RESTful interfaces, local function interfaces, command line interfaces and the default username and password for authentication must be described in the product or application documentation. |
| Implementation details  | New interfaces has been recorded in the API documents. |
| Related APIs            | POST /lcmcontroller/v1/tenants/:tenantId/app_instances/:appInstanceId/batchInstantiate.<br/> GET /lcmcontroller/v1/tenants/:tenantId/app_instances.<br/> POST /lcmcontroller/v1/tenants/:tenantId/app_instances/batchterminate.<br/> POST /lcmcontroller/v1/hosts.<br/> PUT /lcmcontroller/v1/hosts.<br/> DELETE /lcmcontroller/v1/hosts/{hostIp}.<br/> GET /lcmcontroller/v1/hosts.<br/> POST /apprulemgr/v1/tenants/:tenantId/app_instances/:appInstanceId/appd_configuration.<br/> PUT /lcmcontroller/v1/hosts.<br/> POST /apprulemgr/v1/tenants/:tenantId/app_instances/:appInstanceId/appd_configuration.<br/> PUT /apprulemgr/v1/tenants/:tenantId/app_instances/:appInstanceId/appd_configuration.<br/> GET /apprulemgr/v1/tenants/:tenantId/app_instances/:appInstanceId/appd_configuration.<br/> DELETE /apprulemgr/v1/tenants/:tenantId/app_instances/:appInstanceId/appd_configuration  |
| Example API payload     | http://docs.edgegallery.org/en/latest/Projects/MECM/Applcm_Interfaces_en.html<br/> http://docs.edgegallery.org/zh_CN/latest/Projects/MECM/MECM_AppRule_Manager.html |
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
| Related APIs            | POST /lcmcontroller/v1/tenants/:tenantId/app_instances/:appInstanceId/batchInstantiate.<br/> GET /lcmcontroller/v1/tenants/:tenantId/app_instances.<br/> POST /lcmcontroller/v1/tenants/:tenantId/app_instances/batchterminate.<br/> POST /lcmcontroller/v1/hosts.<br/> PUT /lcmcontroller/v1/hosts.<br/> DELETE /lcmcontroller/v1/hosts/{hostIp}.<br/> GET /lcmcontroller/v1/hosts.<br/> POST /apprulemgr/v1/tenants/:tenantId/app_instances/:appInstanceId/appd_configuration.<br/> PUT /lcmcontroller/v1/hosts.<br/> POST /apprulemgr/v1/tenants/:tenantId/app_instances/:appInstanceId/appd_configuration.<br/> PUT /apprulemgr/v1/tenants/:tenantId/app_instances/:appInstanceId/appd_configuration.<br/> GET /apprulemgr/v1/tenants/:tenantId/app_instances/:appInstanceId/appd_configuration.<br/> DELETE /apprulemgr/v1/tenants/:tenantId/app_instances/:appInstanceId/appd_configuration  |
| Example API payload     | http://docs.edgegallery.org/en/latest/Projects/MECM/Applcm_Interfaces_en.html<br/> http://docs.edgegallery.org/zh_CN/latest/Projects/MECM/MECM_AppRule_Manager.html |
| Related files           | NA |
| Related GUI URLs        | NA |
| GUI testing steps       | NA |
| GUI input example       | NA |
| Additional Info         | NA |

## 【MECM】Applcm support logs of the app deployment to developer

### Rule 1.3, 5.3, 9.1
Note: All three rules are related to input parameter validations of REST request and thereby combining the same.

| Content                 | Related Information                                          |
| ----------------------- | ------------------------------------------------------------ |
| Security design rule ID | 1.1 Input Validation.<br/> 5.3 All input must be limited to an appropriate size limit.<br/> 9.1 Do not log unsanitized user input. |
| Implementation details  | All security measures applied to the query log interfaces it includes input parameter validations, input parameter length validation and logging. |
| Related APIs            | GET /lcmcontroller/v1/tenants/:tenantId/app_instances/:appInstanceId/pods/desc/{podname}  |
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
| Implementation details  | Query log has been pre authorized for the role MECM_TENANT/MECM_ADMIN. |
| Related APIs            | GET /lcmcontroller/v1/tenants/:tenantId/app_instances/:appInstanceId/pods/desc/{podname}  |
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
| Implementation details  | New query log interface has been recorded in the API documents. |
| Related APIs            | GET /lcmcontroller/v1/tenants/:tenantId/app_instances/:appInstanceId/pods/desc/{podname}  |
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
| Related APIs            | GET /lcmcontroller/v1/tenants/:tenantId/app_instances/:appInstanceId/pods/desc/{podname}  |
| Example API payload     | http://docs.edgegallery.org/en/latest/Projects/MECM/Applcm_Interfaces_en.html |
| Related files           | NA |
| Related GUI URLs        | NA |
| GUI testing steps       | NA |
| GUI input example       | NA |
| Additional Info         | NA |

