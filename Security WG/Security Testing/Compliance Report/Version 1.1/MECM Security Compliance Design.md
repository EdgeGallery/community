# MECM V1.1 Security Design rule involvement

|Story Name |Related Security Design Rule|
|----|----|
| [[【MECM】Mecm应用首页集成个人帐号中心Account Management Portal Integrated to MECM admin Portal](https://gitee.com/OSDT/dashboard/issues?id=I2E9M3) |  TBC   |  
| [[【Mecm】Mecm应用支持分权控制，区分不同角色进行差异化功能展现MECM Support Administrator/Tanant/Guest Role](https://gitee.com/OSDT/dashboard?issue_id=I2E6SS) |  NA (Only API modifications) |   
| [[【MECM】MECM APPO/Inventory support synchronize data from edge](https://gitee.com/OSDT/dashboard/issues?id=I2P7RL) | TBC   |   
| [[【MECM】MECM 支持本地边缘自治 Edge Autonomous](https://gitee.com/OSDT/dashboard/issues?id=I2EB7C) |  TBC   |   
| [[【MECM】MECM Edge Portal integrate with MEP portal.](https://gitee.com/OSDT/dashboard/issues?id=I2P7T7) |  NA  |   
| [[【MECM】APP Instance Termination Enhancement](https://gitee.com/OSDT/dashboard/issues?id=I2DQVG) |  NA (MECM as client) |   
| [[【MECM】 Adaptive mep url unify](https://gitee.com/OSDT/dashboard/issues?id=I2NTWF) |  NA (MECM as client) |   
| [[【MECM】支持容器镜像管理Support Container Image Manage](https://gitee.com/OSDT/dashboard/issues?id=I2E3V8) |  TBC |   
| [[【MECM】增加对依赖应用实例的删除校验逻辑 ](https://gitee.com/OSDT/dashboard/issues?id=I24W8Z) |  TBC (Old feature only test effort) |   
| [[【MECM】增加对依赖应用的查询与部署提示 ](https://gitee.com/OSDT/dashboard/issues?id=I1QWVL) |  TBC (Old feature only test effort) |   
| [[【MECM】Applcm support VM based app. ](https://gitee.com/OSDT/dashboard/issues?id=I2P88K) |  TBC |   
| [[【MECM】example-apps support demo app service call. ](https://gitee.com/OSDT/dashboard/issues?id=I2P8CH) |  NA  (Example APP as client) |   
| [[【MECM】Applcm support logs of the app deployment to developer ](https://gitee.com/OSDT/dashboard/issues?id=I2P8KM) |  Base framework related rules (part of existing framework) - Rule: 1.1, 2.1, 2.2, 5.3 (partially exists - Body & URL Limit exists), 6.2<br/> New applicable rules: (1.3, 5.3, 9.1) (9.2, 9.4), 1.12, 8.1, 3.6  |   
| [[【MECM/example-apps】Make example-apps open source ](https://gitee.com/OSDT/dashboard/issues?id=I2P8VJ) |  NA (Already discussed in last release) |   

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

### Rule 3.6

| Content                 | Related Information                                          |
| ----------------------- | ------------------------------------------------------------ |
| Security design rule ID | 3.6 Do not show/provide Physical abolute paths and file structures of servers to unauthorized users. |
| Implementation details  | Not displaying Physical abolute paths and file structures of servers. |
| Related APIs            | GET /lcmcontroller/v1/tenants/:tenantId/app_instances/:appInstanceId/pods/desc/{podname}  |
| Example API payload     | http://docs.edgegallery.org/en/latest/Projects/MECM/Applcm_Interfaces_en.html |
| Related files           | NA |
| Related GUI URLs        | NA |
| GUI testing steps       | NA |
| GUI input example       | NA |
| Additional Info         | NA |

## 【MECM】Mecm应用首页集成个人帐号中心Account Management Portal Integrated to MECM admin Portal

### Rule xyz

| Content                 | Related Information                                          |
| ----------------------- | ------------------------------------------------------------ |
| Security design rule ID |  |
| Implementation details  |  |
| Related APIs            | NA |
| Example API payload     | NA |
| Related files           | NA |
| Related GUI URLs        | NA |
| GUI testing steps       | NA |
| GUI input example       | NA |
| Additional Info         | NA |

