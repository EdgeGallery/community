# Security Testing Guidelines  

This document is uesd to capture the test case design suggestion for testing each entry in the security design guide. 

## 1. Identification, Authentication and Authorization  

1.1 All machine-to-machine and man-to-machine interfaces for cross-network transmission must have an access authentication mechanism, and the authentication process must be performed on a server.  
**Notice**: Cross-network interfaces must support identity authentication to prevent spoofing access.<br>

测试用例设计思路：<br>
1.检视采用的认证方案，确认认证在服务器端进行;<br>
2.构造测试用例使用无效用户信息（未注册用户,错误密码）进行服务调用/资源操作测试是否可以绕过系统认证。


1.2 For each access request that requires authorization, the server must verify whether the user is authorized to perform this operation.  
**Notice**: Unauthorized URL access is a typical web security vulnerability. Attackers can easily bypass the system permission control to access system resources and use system functions without authorization. To prevent users from directly entering a URL to request and execute some pages without authorization, the background needs to authenticate the permission of the user who requests the URL.

测试用例设计思路：<br>
1.构造测试用例：使用用户A创建资源，使用用户B对用户A创建的资源进行资源查看/修改等操作，检查操作是否成功;<br>
2.构造测试用例：使用用户A对权限范围外的资源进行操作，检查操作是否成功。

1.3 The server must validate the size, type, length, and special characters of all untrusted data sources and reject any data that fails the validation.  
**Notice**: To prevent attackers from intercepting and tampering with requests through a proxy to bypass the validity check of the client, data validation must be performed on the server.

测试用例设计思路：<br>
1.构造接口调用用例，分别带有无效类参数（请求payload大小/长度/类型超出允许范围），检查系统处理情况（可以通过检查系统日志或系统中资源进行验证）;<br>
2.检视代码对API参数是否进行验证。

1.4 Functions that allow access to the system or data while bypassing the system security mechanism (such as authentication, permission control, and log recording) are prohibited.  
**Notice**: If a product has functions that allow access to the system or data without the system security mechanism, malicious personnel may be aware of the functions and perform operations without authorization, which greatly affects the system.  

测试用例设计思路：

1.5 According to the principle of least privilege, accounts used to run software programs are low-privilege OS accounts.  
**Notice**: Privileged accounts such as root, administrator, and supervisor or high-level accounts cannot be used to run software programs. Instead, use common accounts to run software programs.  

测试用例设计思路：<br>
1.检查各组件Dockerfile是否使用non-root用户；
2. 使用提权脚本进行测试，检查脚本属主，权限设置是否合适。

1.6 Account identity authentication functions (such as update profile, forgot password, disabled / lost token, help desk or IVR) that might regain access to the account are at least as resistant to attack as the primary authentication mechanism.

测试用例设计思路：

1.7 All authentication controls must fail securely..  
**Notice**: The developer must just handle the displaying of the error message properly.

测试用例设计思路：

1.8 The forgotten password function and other recovery paths should not reveal the current password and the new password should not sent in clear text to the user.

测试用例设计思路：

1.9 The changing password functionality must include the old password, the new password, and a password confirmation.

测试用例设计思路：

1.10 Verify that measures are in place to block the use of commonly chosen passwords and weak passphrases.

测试用例设计思路：

## 2. Secure Transmission  

2.1 Sensitive data (including passwords) or key service data (network structure, model parameters) must be transmitted across networks using secure transmission protocols or encrypted before transmission.  
**Notice**: When data is transmitted across networks, it is vulnerable to theft or tampering by attackers. Therefore, important data must be protected.  

测试用例设计思路：<br>
1.根据通信矩阵，使用openssl扫描各端口，检查是否默认开启了https；<br>
2.使用openssl扫描各端口，查看端口加密套件是否符合要求。

2.2 Do not use SSL2.0, SSL3.0, TLS1.0, or TLS1.1 for secure transmission. TLS1.2 and TLS1.3 are recommended.  
**Notice**: Secure Sockets Layer (SSL) 2.0 and SSL 3.0 have been disabled by Internet Engineering Task Force (IETF) in March 2011 and June 2015 due to security issues. In Transport Layer Security (TLS) 1.0, the symmetric encryption algorithm supports only the RC4 algorithm and the cipher block chaining (CBC) mode of the block cipher algorithm. RC4 algorithm is regarded as insecure and is disabled by IETF in all TLS versions. The CBC mode of the symmetric encryption algorithm has the problem of predictable initialization vector (IV) and is vulnerable to BEAST attacks. Therefore, TLS 1.2 and TLS 1.3 are recommended.  

测试用例设计思路：<br>
1.根据通信矩阵，使用openssl扫描各端口，检查各端口是否满足要求.

2.3 Proper certification revocation, such as Online Certificate Status Protocol (OCSP) Stapling, must be enabled and configured.

测试用例设计思路：

## 3. Sensitive and Private Data Protection  

3.1 Authentication credentials (such as passwords and keys) cannot be stored in plaintext in the system and must be encrypted.   If plaintext does not need to be restored, use the irreversible PBKDF2 algorithm for encryption. If plaintext needs to be restored, you can use the AES-256 GCM algorithm for encryption.  

测试用例设计思路：

3.2 Avoid storing passwords in easily accessible locations. Consider storing cryptographic hashes of passwords as an alternative to storing in plaintext. 

测试用例设计思路：<br>
1.构造测试用例使用有效用户信息通过接口获取用户信息，获取成功；<br>
2.构造测试用例使用无效用户信息通过接口获取用户信息，获取失败.

3.3 All sensitive data is sent to the server in the HTTP message body (i.e., URL parameters are never used to send sensitive data).  

测试用例设计思路：<br>

3.4 By default, personal data of a data subject cannot be not directly read. If necessary, provide an interface to obtain data subjects' authorization.  
**Notice**: Personal data belongs to data subjects. If personal data needs to be accessed and collected, data subjects' consent and authorization are required.  

测试用例设计思路：<br>

3.5 By default, data generated during application processing cannot be transferred to a third party. If necessary, provide an interface to obtain data subjects' authorization.  
**Notice**: Before transferring personal data of data subjects to a third party, provide a reasonable method to notify the data subjects of the types of personal data to be transferred, transfer purposes, and information about the data recipients, and obtain the consent of the data subjects.  

测试用例设计思路：<br>

3.6 If personal data needs to be used for marketing, user profiling, and market survey, provide an interface to obtain data subjects' authorization and provide an interface for data subjects to withdraw their authorization at any time.  
**Notice**: If personal data is used for user profiling and marketing, explicit user authorization must be obtained so that users can choose whether to use their personal data for basic services. Products or systems sold to the EU, if involving user profiling and marketing, must inform users of the user profiling logic, consequences of rejecting to provide personal data, and whether personal data is transferred out of European Economic Area (EEA), apart from informing them of their right to reject.  

测试用例设计思路：<br>

3.7 Have a legal justification for your data processing activities as per GDPR policies.  
**Notice**: Art. 6 GDPR Lawfulness of processing define GDPR poicies (https://gdpr.eu/article-6-how-to-process-personal-data-legally/). 

测试用例设计思路：

## 4. Encryption Algorithm and Key Management  

4.1 Do not use proprietary and non-standard cryptographic algorithms.  
**Notice**: Proprietary and non-standard cryptographic algorithms cannot be used in products. On the one hand, it is difficult to ensure the security strength of cryptographic algorithms designed by non-cryptography professionals. On the other hand, such algorithms are not analyzed and validated in the industry, and may have unknown defects. In addition, such design violates the open and transparent security design principles. It is recommended that common open-source password components in the industry, such as OpenSSL and OpenSSH, be used.  

测试用例设计思路：<br>
1.搜索代码中关键字进行查找，人工检视

4.2 Do not use insecure cryptographic algorithms. Strong cryptographic algorithms are recommended.  
**Notice**: With the development of cryptographic technologies and improvement of computing capabilities, some cryptographic algorithms no longer apply to the current security field, such as insecure symmetric encryption algorithms DES and RC4, insecure asymmetric encryption algorithm RSA-1024, insecure hash algorithms SHA-0, SHA-1, MD2, MD4, and MD5, and insecure key negotiation algorithms DH-1024. Instead, AES-256, RSA-3072, SHA-256, PBKDF2, or stronger cryptographic algorithms are recommended.  

测试用例设计思路：<br>
1.搜索代码中关键字进行查找，人工检视；<br>
2.使用openssl扫描接口检查加密套件情况。
        
4.3 Keys used to encrypt data cannot be hard-coded.  
**Notice**: Keys must be replaceable to prevent disclosure risks caused by long-term use.  

测试用例设计思路：<br>
1.搜索代码中关键字进行查找，人工检视

4.4 Use cryptographically secure random numbers for security purposes.  
**Notice**: Random numbers are used for cryptographic algorithm purposes, such as the generation of IVs, salts, and keys. Insecure random numbers make keys and IVs partially or entirely predictable. Cryptographically secure random numbers must be unpredictable.  

测试用例设计思路：<br>
1. 搜索代码中关键字进行查找，人工检视

4.5 Use a secure random number generator to generate keys.  
**Notice**: If the key is generated by a random number generator, the random number generator must be secure. If an insecure random number generator is used, the obtained keys may be predicted. For example, you can use RAND_bytes in the OpenSSL library, /dev/random device interface in the Linux OS, and the RNG in the Trusted Platform Module (TPM).  

测试用例设计思路：<br>
1. 搜索代码中关键字进行查找，人工检视

## 5. DOS Attack

5.1 Anti-automation must be in place to prevent breached credential testing, brute forcing, and account lockout attacks.

测试用例设计思路：<br>
1.构造登录脚本进行暴力登录测试，检查账户状态；<br>
2.使用Jmeter进行DOS攻击测试，检查点包括系统服务运行情况是否受到影响。

5.2 The application must limit the number of active concurrent sessions.

测试用例设计思路：<br>

5.3 All input must be limited to an appropriate size limit.

测试用例设计思路：<br>

## 6. Session Management

6.1 Authenticate a user, or otherwise for establishing a new user session. without invalidating any existing session identifier gives an attacker the opportunity to steal authenticated sessions.  
**Notice**: Invalidate any existing session identifiers prior to authorizing a new user session. 

测试用例设计思路：<br>

6.2 Set sessions/credentials a valid expiration date.

测试用例设计思路：<br>

6.3 Protect the application's sessions from information leakage. Make sure that a session's data is not used or visible by other sessions.

测试用例设计思路：<br>

6.4 The session must be invalidated when the user logs out.

测试用例设计思路：<br>

6.5 Successful authentication and re-authentication must generate a new session and session id.

测试用例设计思路：<br>

## 7. Web Service Serurity

7.1 The same encoding style must be between the client and the server.  
**Notice**: Different encodings between client and server can have security implications and have been used in the past to bypass validation and WAFs to perform XSS attacks.

测试用例设计思路：<br>

7.2 XML or JSON schema must be in place and verified before accepting input.  
**Notice**: Schema validation is the first level of defence against attacks on the application logic.

测试用例设计思路：<br>

## 8. Security Document  

8.1 All public function interfaces, RESTful interfaces, local function interfaces, command line interfaces, and default usernames and passwords used for identity authentication must be described in the product or application document.  
**Notice**: All the preceding new interfaces must be described application document to help users better understand the corresponding modules.  

测试用例设计思路：<br>
1.人工检查文档中通信矩阵，API接口，默认用户名/密码的内容是否完整。

8.2 External communication connections are necessary for system running and maintenance. All communication ports used must be described in the port matrix document. Dynamic listening ports must be limited to a proper range.  
**Notice**: If external communication ports are not described in the port matrix document, user security configuration may be affected. 

测试用例设计思路：<br>
1.使用nmap对部署环境进行扫描，人工检查是否与文档中通信矩阵一致。

## 9. Threat Modelling

9.1 All feature design must do threat Modelling and check if all aspects of security is considered in design.  

**Notice**: Threat Modeling is a process to analyze the architecture of a product and identify security issues in it’s design. For more details refer https://gitee.com/edgegallery/community/blob/master/Security%20WG/Secure%20Design/Threat%20Modeling%20--%20STRIDE.md