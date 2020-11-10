# MEP V1.0版本相关需求安全规则项涉及情况  

|Story Name |Related Security Design Rule|
|----|----|
| [【MECM】【Docs】Finalize MECM v1.0 Documentation](https://gitee.com/OSDT/dashboard?issue_id=I23V93) |    |  
| [Health-check support for eg components(using liveliness & readiness probes)--mecm](https://gitee.com/OSDT/dashboard?issue_id=I23CZC) |    |   
| [【MECM】MECM Support APP Rule Cofing From Portal](https://gitee.com/OSDT/dashboard?issue_id=I24700) |     |
| [【MECM】MECM Support APP Rule Config During APP Orchestration](https://gitee.com/OSDT/dashboard?issue_id=I246ZD) |     | 
| [【MECM】应用实例化功能优化](https://gitee.com/OSDT/dashboard?issue_id=I1QWVL) |    |  
| [【MECM 】MECM Support ATP LCM test features: Solution & Implementation](https://gitee.com/OSDT/dashboard?issue_id=I1YRXF) |    |  
| [【MECM】提供ak/sk分配功能 ATP Spport](https://gitee.com/OSDT/dashboard?issue_id=I1R5LY) |     |
| [【MECM】边缘仓库能力支持 Edge Repo Support Test](https://gitee.com/OSDT/dashboard?issue_id=I1QXSY) |     |   
| [【MECM】应用包管理优化--菜单项+应用包列表+应用包详情 Portal Enhancement for APM](https://gitee.com/OSDT/dashboard?issue_id=I1QXS5) |     | 
| [【MECM】外部系统显示优化 Portal Enhancement for ESR](https://gitee.com/OSDT/dashboard?issue_id=I1QYJJ) |     |  
| [【MECM】MECM支持限制活动的并发会话数 Session Limitaion for Security](https://gitee.com/OSDT/dashboard?issue_id=I1TH8K) |     |  
| [【MECM】MECM支持权限处理，避免横向越权 Authentication limite for Secuirty](https://gitee.com/OSDT/dashboard?issue_id=I1TH3T) |     | 
| [【Example APP】support positioning service as an example app.](https://gitee.com/OSDT/dashboard?issue_id=I1W7UJ) |     |   
| [【MECM 】MECM Support to query the capabilities](https://gitee.com/OSDT/dashboard?issue_id=I1Z3CN) |     |  
| [【MECM】MECM Support Batch Distribution and Batch Deployment](https://gitee.com/OSDT/dashboard?issue_id=I249AF) |     | 



## 【MEP】MEP Support to query the capabilities

### Rule 1.1

| Content                 | Related Information                                          |
| ----------------------- | ------------------------------------------------------------ |
| Security design rule ID | 1.1 All machine-to-machine and human-to-machine interfaces used for cross-network transmission must have an access authentication mechanism, and the authentication process must be performed on the server. |
| Implementation details  | Using Mm5 interface for query capability request. All security measures applied for Mm5 will be applied by default to the query capability interfaces. Only https is implemented in Mm5 interface, as both MEP and MECM are deployed in same trusted boundary. |
| Related APIs            | GET /mepcfg/mec_platform_config/v1/capabilities<br/> GET /mepcfg/mec_platform_config/v1/capabilities/{capabilityId} |
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
| Implementation details  | New query capability interface in Mm5 has been recorded in the API documents. |
| Related APIs            | GET /mepcfg/mec_platform_config/v1/capabilities<br/> GET /mepcfg/mec_platform_config/v1/capabilities/{capabilityId} |
| Example API payload     | NA |
| Related files           | NA |
| Related GUI URLs        | NA |
| GUI testing steps       | NA |
| GUI input example       | NA |
| Additional Info         | NA |

### Rule 9.4

| Content                 | Related Information                                          |
| ----------------------- | ------------------------------------------------------------ |
| Security design rule ID | 9.4 Avoid recording too much data. |
| Implementation details  | Logs are taken care to record only failure scenarios. |
| Related APIs            | GET /mepcfg/mec_platform_config/v1/capabilities<br/> GET /mepcfg/mec_platform_config/v1/capabilities/{capabilityId} |
| Example API payload     | NA |
| Related files           | NA |
| Related GUI URLs        | NA |
| GUI testing steps       | NA |
| GUI input example       | NA |
| Additional Info         | NA |



## 【MEP】mepserver add app heartbeat API

### Rule 1.2

| Content                 | Related Information                                          |
| ----------------------- | ------------------------------------------------------------ |
| Security design rule ID | 1.2 For each access request that requires authorization, the server must verify whether the user is authorized to perform this operation.  |
| Implementation details  | already support ak/sk mechanism to verify if the app have the permission to call mp1 interfaces |
| Related APIs            | PUT mepauth/mepserver/v1/applications/${AppInstanceId}/liveness                     |
| Example API payload     | NA |
| Related files           | NA |
| Related GUI URLs        | NA |
| GUI testing steps       | NA |
| GUI input example       | NA |
| Additional Info         | NA |
