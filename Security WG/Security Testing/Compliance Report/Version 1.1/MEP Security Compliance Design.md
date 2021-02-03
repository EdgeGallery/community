# MEP V1.1 version Security Design rule involvement

|Requirements |Rules involved|
|----|----|
|[【MEP】mep url unify.](https://gitee.com/OSDT/dashboard?issue_id=I2E8D5) | Not involved. Only the Url change.|
|[【MEP】APP Instance Termination Enhancement.](https://gitee.com/OSDT/dashboard?issue_id=I2DQV5)|Rule 1.1, Rule 2.2, Rule 8.1, Rule 9.2 |
|[【MEP】notify to app when subscibed service status changed.](https://gitee.com/OSDT/dashboard?issue_id=I2E83K)|Rule |
|[【MEP】subscribe api](https://gitee.com/OSDT/dashboard?issue_id=I2E835)| Not involved. No code changes, only for testing. |

## 【MEP】APP Instance Termination Enhancement.

### Rule 1.1

| Content                 | Related Information                                          |
| ----------------------- | ------------------------------------------------------------ |
| Security design rule ID | 1.1 All machine-to-machine and human-to-machine interfaces used for cross-network transmission must have an access authentication mechanism, and the authentication process must be performed on the server. |
| Implementation details  | Using Mm5 interface to terminate the application instance. All security measures applied for Mm5 will be applied by default to the terminate instance interface. Only https is implemented in Mm5 interface, as both MEP and MECM are deployed in same trusted boundary. |
| Related APIs            | POST /mep/mec_app_support/v1/applications/:appInstanceId/AppInstanceTermination |
| Example API payload     | NA |
| Related files           | NA |
| Related GUI URLs        | NA |
| GUI testing steps | NA |
| GUI input example       | NA |
| Additional Info         | NA |

### Rule 2.2

| Content                 | Related Information                                          |
| ----------------------- | ------------------------------------------------------------ |
| Security design rule ID | Do not use SSL2.0, SSL3.0, TLS1.0, or TLS1.1 for secure transmission. TLS1.2 and TLS1.3 are recommended. |
| Implementation details  | Only https and TLS 1.2 is implemented in Mm5 interface. |
| Related APIs            | POST /mep/mec_app_support/v1/applications/:appInstanceId/AppInstanceTermination |
| Example API payload     | NA |
| Related files           | NA |
| Related GUI URLs        | NA |
| GUI testing steps | NA |
| GUI input example       | NA |
| Additional Info         | NA |

### Rule 8.1

| Content                 | Related Information                                          |
| ----------------------- | ------------------------------------------------------------ |
| Security design rule ID | 8.1 All public function interfaces, RESTful interfaces, local function interfaces, command line interfaces and the default username and password for authentication must be described in the product or application documentation. |
| Implementation details  | New terminate instance interface in Mm5 has been recorded in the API documents. |
| Related APIs            | POST /mep/mec_app_support/v1/applications/:appInstanceId/AppInstanceTermination |
| Example API payload     | NA |
| Related files           | NA |
| Related GUI URLs        | NA |
| GUI testing steps | NA |
| GUI input example       | NA |
| Additional Info         | NA |

### Rule 9.2

| Content                 | Related Information                                          |
| ----------------------- | ------------------------------------------------------------ |
| Security design rule ID | 9.4 Sufficient Logging. |
| Implementation details  | Logs are taken care to be recorded. |
| Related APIs            | POST /mep/mec_app_support/v1/applications/:appInstanceId/AppInstanceTermination |
| Example API payload     | NA |
| Related files           | NA |
| Related GUI URLs        | NA |
| GUI testing steps | NA |
| GUI input example       | NA |
| Additional Info         | NA |