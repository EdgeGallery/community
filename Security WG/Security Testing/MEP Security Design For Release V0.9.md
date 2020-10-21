# MEP V0.9版本相关需求安全规则项涉及情况  

需求的详细设计，请参考：https://gitee.com/edgegallery/community/blob/master/MEP%20PT/release/design_doc.md/service_heartbeat_api.md

|需求名称|涉及的规则项|
|----|----|
|[【MEP】mepauth中增加ak/sk配置接口](https://gitee.com/edgegallery/mep/issues/I1QT40) | Rule 1.2, Rule 3.1|
|[【MEP】mepserver add app heartbeat API](https://gitee.com/OSDT/dashboard?issue_id=I1QXQD)|Rule 1.2 |
|[【MEP】Provide DNS Configuration capabilities](https://gitee.com/OSDT/dashboard/issues?id=I1OWJI)|Rule 1.1, Rule 1.2, Rule 1.3, Rule 1.4, <br/>Rule 1.5, Rule 2.1, Rule 2.2, Rule 2.3,<br/>Rule 3.3, Rule 5.1, Rule 5.2, Rule 5.3, <br/>Rule 8.1, Rule 8.2, Rule 9.1, Rule 9.2, <br/>Rule 9.3, Rule 9.4, Rule 10.1, Rule 10.2, <br/>Rule 11.1|


## 【MEP】mepauth中增加ak/sk配置接口

### Rule 1.2

| Content                 | Related Information                                          |
| ----------------------- | ------------------------------------------------------------ |
| Security design rule ID | 1.2 For each access request that requires authorization, the server must verify whether the user is authorized to perform this operation.  |
| Implementation details  | use kong plugin, ip restriction to add MECM ip, so that other client can not call this API |
| Related APIs            | PUT mepauth/mepauth/v1/applications/${AppInstanceId}/confs                     |
| Example API payload     | {    <br>    "authInfo":{<br>        "credentials":{<br>            "accessKeyId":"QVUJMSUMgS0VZLS0tLS0",<br>           "secretKey":"DXPb4sE1KhcHe07Kw5uorayETwId1JOjjOIRomRs5wyszoCR5R7AtVa28KT31Sc"<br>        }<br>    }<br>} |
| Related files           | NA |
| Related GUI URLs        | NA 
| GUI testing steps       | NA |
| GUI input example       | NA |
| Additional Info         | NA |

### Rule 3.1

| Content                 | Related Information                                          |
| ----------------------- | ------------------------------------------------------------ |
| Security design rule ID | 3.1 Authentication credentials (such as passwords and keys) cannot be stored in plaintext in the system and must be encrypted. If plaintext does not need to be restored, use the irreversible PBKDF2 algorithm for encryption. If plaintext needs to be restored, you can use the AES-256 GCM algorithm for encryption   |
| Implementation details  | SK (Secret Key) is a sensitive data. SK will first encrypt and then save to database |
| Related APIs            | NA |
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

## 【MEP】Provide DNS Configuration capabilities

### Rule 1.1

| Content                 | Related Information                                          |
| ----------------------- | ------------------------------------------------------------ |
| Security design rule ID | 1.1 All machine-to-machine and man-to-machine interfaces for cross-network transmission must have an access authentication mechanism, and the authentication process must be performed on a server.  |
| Implementation details  | **DNS**: As per RFC of DNS, no authentication/authorization is require between client and server.<br/> **DNS Agent to Server**: Also dns agent and server are in same pod/cluster, so no need of secure authentication mechanism.<br/> **Mm5**: MM5 interface is not authenticated, this we discussed in Security WG and got approval for this release. |
| Related APIs            | **Mp1**<br/> GET /mepserver/mec_app_support/v1/applications/{appInstanceId}/dns_rules<br/> GET /mepserver/mec_app_support/v1/applications/{appInstanceId}/dns_rules/{dnsRuleId}<br/> PUT /mepserver/mec_app_support/v1/applications/{appInstanceId}/dns_rules/{dnsRuleId}<br/>**Mm5**<br/>POST /mepcfg/mec_app_config/v1/rules/{appInstanceId}/dns_rules<br/> GET /mepcfg/mec_app_config/v1/rules/{appInstanceId}/dns_rules<br/> GET /mepcfg/mec_app_config/v1/rules/{appInstanceId}/dns_rules/{dnsRuleId}<br/> PUT /mepcfg/mec_app_config/v1/rules/{appInstanceId}/dns_rules/{dnsRuleId}<br/> DELETE /mepcfg/mec_app_config/v1/rules/{appInstanceId}/dns_rules/{dnsRuleId} |
| Example API payload     | NA |
| Related files           | NA |
| Related GUI URLs        | NA |
| GUI testing steps       | NA |
| GUI input example       | NA |
| Additional Info         | NA |

### Rule 1.2

| Content                 | Related Information                                          |
| ----------------------- | ------------------------------------------------------------ |
| Security design rule ID | 1.2 For each access request that requires authorization, the server must verify whether the user is authorized to perform this operation.  |
| Implementation details  | **DNS**: As per RFC of DNS, no authentication/authorization is require between client and server.<br/> **DNS Agent to Server**: Also dns agent and server are in same pod/cluster, so no need of secure authentication mechanism.<br/> **Mm5**: MM5 interface is not authenticated, this we discussed in Security WG and got approval for this release. |
| Related APIs            | **Mp1**<br/> GET /mepserver/mec_app_support/v1/applications/{appInstanceId}/dns_rules<br/> GET /mepserver/mec_app_support/v1/applications/{appInstanceId}/dns_rules/{dnsRuleId}<br/> PUT /mepserver/mec_app_support/v1/applications/{appInstanceId}/dns_rules/{dnsRuleId}<br/>**Mm5**<br/>POST /mepcfg/mec_app_config/v1/rules/{appInstanceId}/dns_rules<br/> GET /mepcfg/mec_app_config/v1/rules/{appInstanceId}/dns_rules<br/> GET /mepcfg/mec_app_config/v1/rules/{appInstanceId}/dns_rules/{dnsRuleId}<br/> PUT /mepcfg/mec_app_config/v1/rules/{appInstanceId}/dns_rules/{dnsRuleId}<br/> DELETE /mepcfg/mec_app_config/v1/rules/{appInstanceId}/dns_rules/{dnsRuleId} |
| Example API payload     | NA |
| Related files           | NA |
| Related GUI URLs        | NA |
| GUI testing steps       | NA |
| GUI input example       | NA |
| Additional Info         | NA |

### Rule 1.3

| Content                 | Related Information                                          |
| ----------------------- | ------------------------------------------------------------ |
| Security design rule ID | 1.3 The server must validate the size, type, length, and special characters of all untrusted data sources and reject any data that fails the validation.  |
| Implementation details  | Size and other inputs of Mp1 and Mm5 messages are validated before processing the request. |
| Related APIs            | **Mp1**<br/> GET /mepserver/mec_app_support/v1/applications/{appInstanceId}/dns_rules<br/> GET /mepserver/mec_app_support/v1/applications/{appInstanceId}/dns_rules/{dnsRuleId}<br/> PUT /mepserver/mec_app_support/v1/applications/{appInstanceId}/dns_rules/{dnsRuleId}<br/>**Mm5**<br/>POST /mepcfg/mec_app_config/v1/rules/{appInstanceId}/dns_rules<br/> GET /mepcfg/mec_app_config/v1/rules/{appInstanceId}/dns_rules<br/> GET /mepcfg/mec_app_config/v1/rules/{appInstanceId}/dns_rules/{dnsRuleId}<br/> PUT /mepcfg/mec_app_config/v1/rules/{appInstanceId}/dns_rules/{dnsRuleId}<br/> DELETE /mepcfg/mec_app_config/v1/rules/{appInstanceId}/dns_rules/{dnsRuleId} |
| Example API payload     | NA |
| Related files           | NA |
| Related GUI URLs        | NA |
| GUI testing steps       | NA |
| GUI input example       | NA |
| Additional Info         | NA |

### Rule 1.4

| Content                 | Related Information                                          |
| ----------------------- | ------------------------------------------------------------ |
| Security design rule ID | 1.4 Functions that allow access to the system or data while bypassing the system security mechanism (such as authentication, permission control, and log recording) are prohibited.  |
| Implementation details  | No bypassing methods has been implemented. But, Mm5 doesn't have authentication implemented in this release, which has got approval from Security WG. |
| Related APIs            | **Mp1**<br/> GET /mepserver/mec_app_support/v1/applications/{appInstanceId}/dns_rules<br/> GET /mepserver/mec_app_support/v1/applications/{appInstanceId}/dns_rules/{dnsRuleId}<br/> PUT /mepserver/mec_app_support/v1/applications/{appInstanceId}/dns_rules/{dnsRuleId}<br/>**Mm5**<br/>POST /mepcfg/mec_app_config/v1/rules/{appInstanceId}/dns_rules<br/> GET /mepcfg/mec_app_config/v1/rules/{appInstanceId}/dns_rules<br/> GET /mepcfg/mec_app_config/v1/rules/{appInstanceId}/dns_rules/{dnsRuleId}<br/> PUT /mepcfg/mec_app_config/v1/rules/{appInstanceId}/dns_rules/{dnsRuleId}<br/> DELETE /mepcfg/mec_app_config/v1/rules/{appInstanceId}/dns_rules/{dnsRuleId} |
| Example API payload     | NA |
| Related files           | NA |
| Related GUI URLs        | NA |
| GUI testing steps       | NA |
| GUI input example       | NA |
| Additional Info         | NA |

### Rule 1.5

| Content                 | Related Information                                          |
| ----------------------- | ------------------------------------------------------------ |
| Security design rule ID | 1.5 According to the principle of least privilege, accounts used to run software programs are low-privilege OS accounts. |
| Implementation details  | The mepserver and dns-server components are running with least privileged user accounts. |
| Related APIs            | NA |
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
| Implementation details  | **DNS**: As per RFC of DNS, no security is require between client and server.<br/> **DNS Agent to Server**: Also agent and server are in same pod/cluster so no need of secure transmission.<br/> **Mm5**: Mm5 security has not yet realized in current version with the approval of security WG. |
| Related APIs            | NA |
| Example API payload     | NA |
| Related files           | NA |
| Related GUI URLs        | NA |
| GUI testing steps       | NA |
| GUI input example       | NA |
| Additional Info         | NA |

### Rule 2.2

| Content                 | Related Information                                          |
| ----------------------- | ------------------------------------------------------------ |
| Security design rule ID | 2.2 Do not use SSL2.0, SSL3.0, TLS1.0, or TLS1.1 for secure transmission. TLS1.2 and TLS1.3 are recommended. |
| Implementation details  | **DNS**: As per RFC of DNS, no security is require between client and server.<br/> **DNS Agent to Server**: Agent and server are in same pod/cluster so no need of secure transmission.<br/> **Mm5**: Mm5 security has not yet realized in current version with the approval of security WG. |
| Related APIs            | NA |
| Example API payload     | NA |
| Related files           | NA |
| Related GUI URLs        | NA |
| GUI testing steps       | NA |
| GUI input example       | NA |
| Additional Info         | NA |

### Rule 2.3

| Content                 | Related Information                                          |
| ----------------------- | ------------------------------------------------------------ |
| Security design rule ID | 2.3 Proper certification revocation, such as Online Certificate Status Protocol (OCSP) Stapling, must be enabled and configured. |
| Implementation details  | **DNS**: As per RFC of DNS, no security is require between client and server.<br/> **DNS Agent to Server**: Agent and server are in same pod/cluster so no need of secure transmission.<br/> **Mm5**: Mm5 security has not yet realized in current version with the approval of security WG.|
| Related APIs            | NA |
| Example API payload     | NA |
| Related files           | NA |
| Related GUI URLs        | NA |
| GUI testing steps       | NA |
| GUI input example       | NA |
| Additional Info         | NA |

### Rule 3.3

| Content                 | Related Information                                          |
| ----------------------- | ------------------------------------------------------------ |
| Security design rule ID | 3.3 All sensitive data is sent to the server in the HTTP message body (i.e., URL parameters are never used to send sensitive data). |
| Implementation details  | **DNS**: No sensitive data is been passed in the DNS query request.<br/> **DNS Agent to Server**: No sensitive data is been passed in the DNS config request.<br/> **Mp1**: No sensitive data is been passed in the Mp1 config request.<br/> **Mm5**: No sensitive data is been passed in the Mm5 config request.|
| Related APIs            | **Mp1**<br/> GET /mepserver/mec_app_support/v1/applications/{appInstanceId}/dns_rules<br/> GET /mepserver/mec_app_support/v1/applications/{appInstanceId}/dns_rules/{dnsRuleId}<br/> PUT /mepserver/mec_app_support/v1/applications/{appInstanceId}/dns_rules/{dnsRuleId}<br/>**Mm5**<br/>POST /mepcfg/mec_app_config/v1/rules/{appInstanceId}/dns_rules<br/> GET /mepcfg/mec_app_config/v1/rules/{appInstanceId}/dns_rules<br/> GET /mepcfg/mec_app_config/v1/rules/{appInstanceId}/dns_rules/{dnsRuleId}<br/> PUT /mepcfg/mec_app_config/v1/rules/{appInstanceId}/dns_rules/{dnsRuleId}<br/> DELETE /mepcfg/mec_app_config/v1/rules/{appInstanceId}/dns_rules/{dnsRuleId} |
| Example API payload     | NA |
| Related files           | NA |
| Related GUI URLs        | NA |
| GUI testing steps       | NA |
| GUI input example       | NA |
| Additional Info         | NA |

### Rule 5.1

| Content                 | Related Information                                          |
| ----------------------- | ------------------------------------------------------------ |
| Security design rule ID | 5.1 Anti-automation must be in place to prevent breached credential testing, brute forcing, and account lockout attacks. |
| Implementation details  | **DNS**: No security measures against attack has been implemented in current release. This need to be taken care in the future. Currently took permission from SEC WG for this release.<br/> **DNS Agent to Server**: Internal modules, no security required.<br/> **Mm5**: No security measures against attack has been implemented in current release. This need to be taken care in the future. Currently took permission from SEC WG for this release.|
| Related APIs            | **Mm5**<br/>POST /mepcfg/mec_app_config/v1/rules/{appInstanceId}/dns_rules<br/> GET /mepcfg/mec_app_config/v1/rules/{appInstanceId}/dns_rules<br/> GET /mepcfg/mec_app_config/v1/rules/{appInstanceId}/dns_rules/{dnsRuleId}<br/> PUT /mepcfg/mec_app_config/v1/rules/{appInstanceId}/dns_rules/{dnsRuleId}<br/> DELETE /mepcfg/mec_app_config/v1/rules/{appInstanceId}/dns_rules/{dnsRuleId} |
| Example API payload     | NA |
| Related files           | NA |
| Related GUI URLs        | NA |
| GUI testing steps       | NA |
| GUI input example       | NA |
| Additional Info         | NA |

### Rule 5.2

| Content                 | Related Information                                          |
| ----------------------- | ------------------------------------------------------------ |
| Security design rule ID | 5.2 The application must limit the number of active concurrent sessions. |
| Implementation details  | **DNS**: As per RFC, there is no session management in DNS.<br/> **DNS Agent to Server**: Internal modules, no security required.<br/> **Mm5**: No session management required as per specification. |
| Related APIs            | NA |
| Example API payload     | NA |
| Related files           | NA |
| Related GUI URLs        | NA |
| GUI testing steps       | NA |
| GUI input example       | NA |
| Additional Info         | NA |

### Rule 5.3

| Content                 | Related Information                                          |
| ----------------------- | ------------------------------------------------------------ |
| Security design rule ID | 5.3 All input must be limited to an appropriate size limit. |
| Implementation details  | **DNS**: Query size limited to one question per request.<br/> **DNS Agent to Server**: Internal modules, handled the size internally.<br/> **Mm5**: Message size limited to 4K. |
| Related APIs            | NA |
| Example API payload     | NA |
| Related files           | NA |
| Related GUI URLs        | NA |
| GUI testing steps       | NA |
| GUI input example       | NA |
| Additional Info         | NA |

### Rule 8.1

| Content                 | Related Information                                          |
| ----------------------- | ------------------------------------------------------------ |
| Security design rule ID | 8.1 All public function interfaces, RESTful interfaces, local function interfaces, command line interfaces, and default usernames and passwords used for identity authentication must be described in the product or application document. |
| Implementation details  | Interfaces has been documented in the docs, others not applicable. |
| Related APIs            | **Mp1**<br/> GET /mepserver/mec_app_support/v1/applications/{appInstanceId}/dns_rules<br/> GET /mepserver/mec_app_support/v1/applications/{appInstanceId}/dns_rules/{dnsRuleId}<br/> PUT /mepserver/mec_app_support/v1/applications/{appInstanceId}/dns_rules/{dnsRuleId}<br/>**Mm5**<br/>POST /mepcfg/mec_app_config/v1/rules/{appInstanceId}/dns_rules<br/> GET /mepcfg/mec_app_config/v1/rules/{appInstanceId}/dns_rules<br/> GET /mepcfg/mec_app_config/v1/rules/{appInstanceId}/dns_rules/{dnsRuleId}<br/> PUT /mepcfg/mec_app_config/v1/rules/{appInstanceId}/dns_rules/{dnsRuleId}<br/> DELETE /mepcfg/mec_app_config/v1/rules/{appInstanceId}/dns_rules/{dnsRuleId} |
| Example API payload     | NA |
| Related files           | NA |
| Related GUI URLs        | NA |
| GUI testing steps       | NA |
| GUI input example       | NA |
| Additional Info         | NA |

### Rule 8.2

| Content                 | Related Information                                          |
| ----------------------- | ------------------------------------------------------------ |
| Security design rule ID | 8.2 External communication connections are necessary for system running and maintenance. All communication ports used must be described in the port matrix document. Dynamic listening ports must be limited to a proper range. |
| Implementation details  | Listening ports 53(UDP), and 8080(TCP) are added to the port matrix. |
| Related APIs            | NA |
| Example API payload     | NA |
| Related files           | NA |
| Related GUI URLs        | NA |
| GUI testing steps       | NA |
| GUI input example       | NA |
| Additional Info         | NA |

### Rule 9.1

| Content                 | Related Information                                          |
| ----------------------- | ------------------------------------------------------------ |
| Security design rule ID | 9.1 Do not log unsanitized user input. |
| Implementation details  | Not recording any user inputs. |
| Related APIs            | NA |
| Example API payload     | NA |
| Related files           | NA |
| Related GUI URLs        | NA |
| GUI testing steps       | NA |
| GUI input example       | NA |
| Additional Info         | NA |

### Rule 9.2

| Content                 | Related Information                                          |
| ----------------------- | ------------------------------------------------------------ |
| Security design rule ID | 9.2 Sufficient Logging. |
| Implementation details  | Proper loggings are added to the system. |
| Related APIs            | NA |
| Example API payload     | NA |
| Related files           | NA |
| Related GUI URLs        | NA |
| GUI testing steps       | NA |
| GUI input example       | NA |
| Additional Info         | NA |

### Rule 9.3

| Content                 | Related Information                                          |
| ----------------------- | ------------------------------------------------------------ |
| Security design rule ID | 9.3 Do not add Sensitive Information into Log or Log file.|
| Implementation details  | No sensitive information in logs. |
| Related APIs            | NA |
| Example API payload     | NA |
| Related files           | NA |
| Related GUI URLs        | NA |
| GUI testing steps       | NA |
| GUI input example       | NA |
| Additional Info         | NA |

### Rule 9.4

| Content                 | Related Information                                          |
| ----------------------- | ------------------------------------------------------------ |
| Security design rule ID | 9.4 Avoid Logging of Excessive Data.|
| Implementation details  | No excessive logs. |
| Related APIs            | NA |
| Example API payload     | NA |
| Related files           | NA |
| Related GUI URLs        | NA |
| GUI testing steps       | NA |
| GUI input example       | NA |
| Additional Info         | NA |

### Rule 10.1

| Content                 | Related Information                                          |
| ----------------------- | ------------------------------------------------------------ |
| Security design rule ID | 10.1 Default password provided by database vendor must not be used and password must be complex and unused Default Database accounts must be disabled/deleted.|
| Implementation details  | Using in-memory embedded database, which is not exposed outside. Hence no authentication required.|
| Related APIs            | NA |
| Example API payload     | NA |
| Related files           | NA |
| Related GUI URLs        | NA |
| GUI testing steps       | NA |
| GUI input example       | NA |
| Additional Info         | NA |

### Rule 10.2

| Content                 | Related Information                                          |
| ----------------------- | ------------------------------------------------------------ |
| Security design rule ID | 10.2 Each database account must have proper authorization privileges set. Assign only the least privilege required for the task.|
| Implementation details  | Using in-memory embedded database, which is not exposed outside. Hence no authorization required.|
| Related APIs            | NA |
| Example API payload     | NA |
| Related files           | NA |
| Related GUI URLs        | NA |
| GUI testing steps       | NA |
| GUI input example       | NA |
| Additional Info         | NA |

### Rule 11.1

| Content                 | Related Information                                          |
| ----------------------- | ------------------------------------------------------------ |
| Security design rule ID | 11.1 All feature design must do threat Modelling and check if all aspects of security is considered in design.|
| Implementation details  | Analysis has been done.|
| Related APIs            | NA |
| Example API payload     | NA |
| Related files           | NA |
| Related GUI URLs        | NA |
| GUI testing steps       | NA |
| GUI input example       | NA |
| Additional Info         | NA |