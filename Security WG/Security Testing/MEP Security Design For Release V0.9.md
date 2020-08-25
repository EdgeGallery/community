# MEP V0.9版本相关需求安全规则项涉及情况  

需求的详细设计，请参考：https://gitee.com/edgegallery/community/blob/master/MEP%20PT/release/design_doc.md/service_heartbeat_api.md

|需求名称|涉及的规则项|
|----|----|
|[【MEP】mepauth中增加ak/sk配置接口](https://gitee.com/edgegallery/mep/issues/I1QT40) | Rule 1.2, Rule 3.1|
|[【MEP】mepserver add app heartbeat API](https://gitee.com/OSDT/dashboard?issue_id=I1QXQD)|Rule1.2 |


## 【MEP】mepauth中增加ak/sk配置接口

### Rule 1.2

| Content                 | Related Information                                          |
| ----------------------- | ------------------------------------------------------------ |
| Security design rule ID | 1.2 For each access request that requires authorization, the server must verify whether the user is authorized to perform this operation.  |
| Implemetation details   | use kong plugin, ip restriction to add MECM ip, so that other client can not call this API |
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
| Implemetation details   | SK (Secret Key) is a sensitive data. SK will first encrypt and then save to database |
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
| Implemetation details   | already support ak/sk mechanism to verify if the app have the permission to call mp1 interfaces |
| Related APIs            | PUT mepauth/mepserver/v1/applications/${AppInstanceId}/liveness                     |
| Example API payload     | NA |
| Related files           | NA |
| Related GUI URLs        | NA |
| GUI testing steps       | NA |
| GUI input example       | NA |
| Additional Info         | NA |