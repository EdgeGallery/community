# MECM V0.9版本相关需求安全规则项涉及情况  

需求的详细设计，请参考：https://gitee.com/edgegallery/community/tree/master/MECM%20PT/Release%20V0.9


|需求名称|涉及的规则项|
|----|----|
|[【MECM】添加边缘节点具备位置关联出坐标的能力](https://gitee.com/OSDT/dashboard?issue_id=I1QXQD) <br> [【MECM】地图具备打开省/市/区县的能力，在大地图时显示统计数据，小地图时显示拓扑数据](https://gitee.com/OSDT/dashboard?issue_id=I1QXQG)| 纯界面需求，不涉及安全规则|
|[【MECM】应用包管理优化--菜单项+应用包列表+应用包详情](https://gitee.com/OSDT/dashboard?issue_id=I1QXS5) | Rule 1.1,Rule1.2|
|[【MECM】提供ak/sk分配功能](https://gitee.com/OSDT/dashboard?issue_id=I1R5LY) | Rule 3.1, Rule3.3|

## [【MECM】应用包管理优化--菜单项+应用包列表+应用包详情](https://gitee.com/OSDT/dashboard?issue_id=I1QXS5) 
***
| Content                 | Related Information                                          |
| ----------------------- | ------------------------------------------------------------ |
| Security design rule ID | 1.1 All machine-to-machine and man-to-machine interfaces for cross-network transmission must have an access authentication mechanism, and the authentication process must be performed on a server.   |
| Implemetation details   | 1. Use the user/password to authenticate. The user-management module can provide these function. |
| Related APIs            | NA                      |
| Example API payload     | NA |
| Related files           | NA |
| Related GUI URLs        | NA                          |
| GUI testing steps       | 1. login system , select a app store , and select any applications, then synchronize |
| GUI input example       | NA             |
| Additional Info         | NA |

***
| Content                 | Related Information                                          |
| ----------------------- | ------------------------------------------------------------ |
| Security design rule ID | 1.2 For each access request that requires authorization, the server must verify whether the user is authorized to perform this operation.  |
| Implemetation details   | 1. Use the user/password to authenticate. The user-management module can provide these function. |
| Related APIs            | NA                      |
| Example API payload     | NA |
| Related files           | NA |
| Related GUI URLs        | NA                          |
| GUI testing steps       | 1. login system , select a app store , and select any applications, then synchronize |
| GUI input example       | NA             |
| Additional Info         | NA |

## [【MECM】提供ak/sk分配功能](https://gitee.com/OSDT/dashboard?issue_id=I1R5LY) 

***
| Content                 | Related Information                                          |
| ----------------------- | ------------------------------------------------------------ |
| Security design rule ID | 3.1 Authentication credentials (such as passwords and keys) cannot be stored in plaintext in the system and must be encrypted. If plaintext does not need to be restored, use the irreversible PBKDF2 algorithm for encryption. If plaintext needs to be restored, you can use the AES-256 GCM algorithm for encryption   |
| Implemetation details   | 1. SK is a sensitive data. SK will be saved to database as encrypted data. |
| Related APIs            | NA                      |
| Example API payload     | NA |
| Related files           | NA |
| Related GUI URLs        | NA                          |
| GUI testing steps       | 1. Instantiate any app . And a new AK/SK will be allocated for this app instance. |
| GUI input example       | NA             |
| Additional Info         | Check the database table for saving SK data, it shall be encrypted data. |

***
| Content                 | Related Information                                          |
| ----------------------- | ------------------------------------------------------------ |
| Security design rule ID | 3.3 All sensitive data is sent to the server in the HTTP message body (i.e., URL parameters are never used to send sensitive data).   |
| Implemetation details   | 1. APPLCM support config credentials API . And make AK/SK info in the body. |
| Related APIs            | APPLCM: PUT /mec/v1/applcm/app_instance/{app_instance_id}/confs                      |
| Example API payload     | {    <br>    "authInfo":{<br>        "credentials":{<br>            "accessKeyId":"QVUJMSUMgS0VZLS0tLS0",<br>           "secretKey":"DXPb4sE1KhcHe07Kw5uorayETwId1JOjjOIRomRs5wyszoCR5R7AtVa28KT31Sc"<br>        }<br>    }<br>} |
| Related files           | NA |
| Related GUI URLs        | NA                          |
| GUI testing steps       | 1. Instantiate any app . And a new AK/SK will be allocated for this app instance. This api will be called. |
| GUI input example       | NA             |
| Additional Info         | Check the database table for saving SK data, it shall be encrypted data. |