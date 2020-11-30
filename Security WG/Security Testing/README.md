# R1.0 安全测试规划

![输入图片说明](https://images.gitee.com/uploads/images/2020/0814/111024_641ff307_5645267.png "测试领域分类-v0.2.png")

# R1.0 安全测试工作

![输入图片说明](https://images.gitee.com/uploads/images/2020/1125/115446_aaf615c4_7785218.png "安全测试流程.png")

# R1.0 安全摸底测试计划

时间：2020.11.25 ~ 2020.12.2

测试项目： AppStore, Developer, User-mgmt, MECM, ATP

测试人员：  程润东，扈冰

安全合规测试用例：
1. AppStore:
 - Sensitive and Private Data Protection: 3.8
 
2. ATP
 - Identification, Authentication and Authorization: 1.1, 1.3, 1.12
 - Secure Transmission: 2.2
 - DOS attack : 5.3
 - Security Document: 8.1
 - Log Security: 9.1, 9.2, 9.4
 
3. User-mgmt
- Sensitive and Private Data Protection: 3.8

4. MECM 
 - Identification, Authentication and Authorization: 1.1, 1.2, 1.3, 1.12
 - Secure Transmission: 2.1, 2.2
 - Sensitive and Private Data Protection: 3.1, 3.3
 - Encryption algorithm and key management 4.5
 - DOS attack 5.2, 5.3
 - Session management 6.2
 - Security Document: 8.1
 - Log Security: 9.1, 9.2, 9.4

**MEP Project is exclude in pre-code-freeze test**

5. MEP
 - Identification, Authentication and Authorization: 1.1, 1.2
 - Security Document: 8.1
 - Log Security: 9.4

6. Monitoring Application
 - Identification, Authentication and Authorization: 1.1, 1.3, 1.5
 - Secure Transmission: 2.1, 2.2
 - DOS attack  5.3
 - Web Service Security: 7.4, 7.6
 - Security Document: 8.1, 8.2
 - Log Security: 9.1, 9.2, 9.4
