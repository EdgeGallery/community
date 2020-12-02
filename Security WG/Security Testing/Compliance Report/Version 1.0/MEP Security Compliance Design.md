# MEP V1.0版本相关需求安全规则项涉及情况  

|需求名称|涉及的规则项|
|----|----|
|[【MEP】MEP Support to query the capabilities.](https://gitee.com/edgegallery/mep/issues/I1W7UU) | Rule 1.1, Rule 8.1, Rule 9.4|
|[【MEP】Mep Server add app heartbeat API](https://gitee.com/OSDT/dashboard?issue_id=I1QGUZ)|Rule 1.2 |
|[【MEP】修改服务注册逻辑，为服务增加默认路由转发](https://gitee.com/OSDT/dashboard?issue_id=I23QX2)|不涉及 |
|[【MEP-Agent】修改服务注册逻辑，允许不注册服务](https://gitee.com/OSDT/dashboard?issue_id=I23QX4)|不涉及 |
|[【MEP-Agent】mep-agent get token interface](https://gitee.com/OSDT/dashboard?issue_id=I23QX8)| Rule 1.1, 2.1, 8.1, 9.2, 9.4  |
|[【MEP-Agent】AK/SK configuration](https://gitee.com/OSDT/dashboard?issue_id=I1QT48)| Rule 9.3 |

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

## 【MEP-Agent】mep-agent get token interface

### Rule 1.1

| Content                 | Related Information                                          |
| ----------------------- | ------------------------------------------------------------ |
| Security design rule ID | 1.1 All machine-to-machine and human-to-machine interfaces used for cross-network transmission must have an access authentication mechanism, and the authentication process must be performed on the server. |
| Implementation details  | Mep-agent providing an API to get the token to the application which will run along with it in same pod. Since both of them running in same pod, this rule is not applicable. No user authentication is required.|
| Related APIs            | GET /mep-agent/v1/token |
| Example API payload     | NA |
| Related files           | NA |
| Related GUI URLs        | NA |
| GUI testing steps       | NA |
| GUI input example       | NA |
| Additional Info         | NA |

### Rule 2.1
| Content                 | Related Information                                          |
| ----------------------- | ------------------------------------------------------------ |
| Security design rule ID | 2.1 Sensitive data (including passwords) or key service data (network structure, model parameters) must be transmitted across networks using secure transmission protocols or encrypted before transmission. |
| Implementation details  | Mep-agent providing an API to get the token to the application which will run along with it in same pod. Since both of them running in same pod, this rule is not applicable. We use http to get the token. And the port is internal to POD and not exposed outside. |
| Related APIs            | GET /mep-agent/v1/token |
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
| Implementation details  | New get token interface has been recorded in the API documents. [link](https://gitee.com/edgegallery/community/blob/master/MEP%20PT/Release%20V1.0/mep_agent_token_api.md)|
| Related APIs            | GET /mep-agent/v1/token |
| Example API payload     | NA |
| Related files           | NA |
| Related GUI URLs        | NA |
| GUI testing steps       | NA |
| GUI input example       | NA |
| Additional Info         | NA |

### Rule 9.2

| Content                 | Related Information                                          |
| ----------------------- | ------------------------------------------------------------ |
| Security design rule ID | Sufficient Logging |
| Implementation details  | Logs are taken care to record only failure scenarios and some events. |
| Related APIs            | GET /mep-agent/v1/token |
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
| Related APIs            | GET /mep-agent/v1/token |
| Example API payload     | NA |
| Related files           | NA |
| Related GUI URLs        | NA |
| GUI testing steps       | NA |
| GUI input example       | NA |
| Additional Info         | NA |

## 【MEP-Agent】AK/SK configuration

### Rule 9.3

| Content                 | Related Information                                          |
| ----------------------- | ------------------------------------------------------------ |
| Security design rule ID | 9.3 Do not add Sensitive Information into Log or Log file.  | No logs added to print AK/SK values. |
| Related APIs            | NA |
| Example API payload     | NA |
| Related files           | NA |
| Related GUI URLs        | NA |
| GUI testing steps       | NA |
| GUI input example       | NA |
| Additional Info         | NA |