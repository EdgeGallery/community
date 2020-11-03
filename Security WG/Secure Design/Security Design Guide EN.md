# Safety Design Specification

This document is developed according to industry standards and open source best practices, and can guide developers in module design and avoid high-security design risks.
For each rule in this guide, some test steps are provided to help developers design and implement test cases.

## 1. Identification, authentication and authorization

1.1 All machine-to-machine and human-to-machine interfaces used for cross-network transmission must have an access authentication mechanism, and the authentication process must be performed on the server.
**Note**: Cross-network interface must support authentication to prevent fraudulent access.

Test steps:
1. List all machine-to-machine and human-to-machine interfaces.
2. Check all interfaces to confirm the existence of the authentication mechanism and record the results.

test tools:
telnet, snmp, ssh, ftp, sftp, netconf

1.2 For each access request that requires authorization, the server must verify whether the user is authorized to perform this operation.
**Note**: Unauthorized URL access is a typical web security hole. Attackers can easily bypass system access control to access system resources and use system functions without authorization. In order to prevent users from directly entering URLs to request and execute certain pages without authorization, the background needs to verify the permissions of the user requesting the URL.
Test bypass authentication architecture

Test steps:
1. Design level privilege escalation test cases to verify the existence of authorization mechanism. For example, user A tries to access user B's resources.
2. Design vertical privilege escalation test cases to verify the existence of authorization mechanism. For example, the user attempts to perform an operation or use a function beyond the scope of his permission.
3. Parameter modification, such as modifying the parameters in the request, try    
4.SQL injection

Testing tools: WebGoat; OWASP Zed Attack Proxy (ZAP)

1.3 The server must verify the size, type, length and special characters of all untrusted data sources, and reject all data that fails the verification.
**Note**: In order to prevent attackers from intercepting and tampering with the request through the proxy to bypass the validity check of the client, data verification must be performed on the server.

Test steps:
1. View the code to confirm that all APIs verify the size, type, length and special characters of all untrusted data sources.
2. Design test cases to call API with abnoraml data payload and confirm that all data that fails the verification will be rejected.

1.4 It is forbidden to allow access to system or data functions (such as authentication, access control, and logging) while bypassing the system security mechanism.
**Note**: If the product has functions that can access the system or data without the need for system security mechanisms, malicious persons may be aware of these functions and perform operations without authorization, which will seriously affect the system.

Test steps:
1. Check the code to confirm the function that allows access to the system or the data cannot bypass the system security mechanism.
2. Conduct a penetration test to verify that there is no way to bypass the system security mechanism.

test tools:
OWASP ZAP, Postman

1.5 According to the principle of least privilege, the account used to run software programs is a low-privileged OS account.
**Note**: Privileged accounts (such as root, administrator and super user) or advanced accounts cannot be used to run software programs. Instead, use a common account to run software programs.

Test steps:
1. Check the Dockerfile to confirm that Docker is running as a non-root user.
2. Design a privilege escalation script to verify whether the file permissions and file owner settings are correct.

1.6 Account authentication functions that may regain access to the account (such as updating configuration files, forgetting passwords, disabled/lost tokens, help desk or IVR) have at least the same resistance to attacks as the main authentication mechanism.

Test steps:
To be determined

1.7 All authentication controls must fail safely.
**Note**: Developers must handle the display of error messages correctly.

Test steps:
1. For each authentication scheme, implement various authentication failures, that is, no user, wrong password, unauthorized user.
2. Check the error message displayed in the system interface and the error message recorded in the log to confirm that the message is correct.

1.8 The forgotten password function and other recovery paths should not reveal the current password, and the new password should not be sent to the user in clear text.

Test steps:
1. Log in to the system and use the "Forgot Password" function to reset the password.
2. Check that the current password is not displayed and the new password is encrypted.

1.9 Change password function must include old password, new password and password confirmation.

Test steps:
1. Log in to the system and use the password change function. The check interface includes the old password, new password and password confirmation.

1.10 Confirm that measures have been taken to prevent the use of commonly used passwords and weak passphrases.

Test steps:
1. Log in to the system and use the change password function, try to change the password to a common password and a weak password.
2. Confirm that the operation failed due to the use of commonly used passwords and weak passphrases.

1.11 Ensure that there is no possibility of capture-replay attacks. version: v1.0
Note: When the software is designed to make it possible for malicious users to sniff network traffic and bypass authentication by replaying it to the server, there is a catch-replay defect. Use certain sequence or time stamp functions and checksums that take this into account to ensure that the message can only be parsed once. (This rule will take effect in R1.0*)

Test steps:

By listening to the authentication packet and trying to replay it with the same content, it should not be allowed to log in and the authentication must fail.

1.12 Role-based access control. version: v1.0
Note: The role-based access control must be defined and followed in order to access the resources in the system. Suitable for users and applications. (This rule will take effect in R1.0*)

Test steps:

Set different privileges for different users.
Cross check that only privileged users can access resources.



## 2. Secure transmission

2.1 Sensitive data (including passwords) or critical service data (network structure, model parameters) must be transmitted on the network using a secure transmission protocol, or encrypted before transmission.
**Note**: When data is transmitted across networks, it is vulnerable to theft or tampering by attackers. Therefore, important data must be protected.

Test steps:
1. According to the port communication document, use openssl to scan each port and confirm that HTTPS is enabled by default.

test tools:
openssl

2.2 Do not use SSL2.0, SSL3.0, TLS1.0 or TLS1.1 for secure transmission. It is recommended to use TLS1.2 and TLS1.3.
**Note**: Due to security issues, the Internet Engineering Task Force (IETF) has disabled Secure Sockets Layer (SSL) 2.0 and SSL 3.0 in March 2011 and June 2015. In Transport Layer Security (TLS) 1.0, the symmetric encryption algorithm only supports the RC4 algorithm and the cipher block chaining (CBC) mode of the block cipher algorithm. The RC4 algorithm is considered insecure, and is banned by the IETF in all TLS versions. The CBC mode of the symmetric encryption algorithm has a predictable initialization vector (IV) problem and is vulnerable to BEAST attacks. Therefore, TLS 1.2 and TLS 1.3 are recommended.

Test steps:
1. Use openssl to scan the ports in the deployment environment and confirm that SSL2.0, SSL3.0, TLS1.0 and TLS1.1 are disabled.

test tools:
openssl

2.3 Appropriate certificate revocation must be enabled and configured, such as online certificate status protocol (OCSP) binding.

Test steps:
1. Review the code and confirm the implementation of the certificate revocation mechanism.

2.4 Testing weak transport layer security

Test steps:
1. Verify the service configuration.
2. The test ensures that TLS security cannot be bypassed and is implemented correctly throughout the application.



## 3. Sensitive and private data protection

3.1 Authentication credentials (such as passwords and keys) cannot be stored in the system in plain text format and must be encrypted. If you do not need to restore the plain text, please use the irreversible PBKDF2 algorithm for encryption. If you need to restore plain text, you can use the AES-256 GCM algorithm for encryption.

Test steps:
1. Check the credential encryption mechanism and confirm that the user credential is encrypted before storage.

3.2 Avoid storing passwords in easily accessible locations. Consider storing encrypted hashes of passwords instead of storing them in clear text.

Test steps:
To be determined

3.3 All sensitive data is sent to the server via the HTTP message body (ie, URL parameters are never used to send sensitive data).

Test steps:
1. Check the code and confirm that sensitive data is not transmitted as URL parameters.
2. Use API​​tools (such as Postman) to verify.

test tools:
Postman

3.4 By default, the personal data of the data subject cannot be read directly. If necessary, provide an interface to obtain authorization from the data subject.
**Note**: Personal data belongs to the data subject. If you need to access and collect personal data, you need the consent and authorization of the data subject.



Test steps:
1. Check the system to check whether there is an interface for obtaining the consent of the data subject and authorization to collect personal data.

3.5 By default, data generated during application processing cannot be transmitted to third parties. If necessary, provide an interface to obtain authorization from the data subject.
**Note**: Before transferring the personal data of the data subject to a third party, please provide a reasonable method to notify the data subject of the type of personal data to be transferred, the purpose of the transfer, and information about the data recipient, and obtain The consent of the data subject.

Test steps:
1. Check the system to check whether there is an interface for obtaining the authorization of the data subject to transmit data to a third party.

3.6 If personal data needs to be used for marketing, user profiles and market research, an interface is provided to obtain the authorization of the data subject, and an interface is provided for the data subject to withdraw its authorization at any time.
**Note**: If personal data is used for user profiles and marketing, clear user authorization must be obtained so that users can choose whether to use their personal data for basic services. For products or systems sold to the European Union, if user profiles and marketing are involved, in addition to notifying users, they must also inform users of their user profile logic, the consequences of refusing to provide personal data, and whether to transfer personal data to the European Economic Area ( EEA) they have the right to refuse.

Test steps:
1. Check the system to check whether there is an interface for obtaining authorization from the data subject and an interface for revoking authorization by the data subject.

3.7 Test whether the browser history and cache cache sensitive information version: v1.0
Using the "back" button allows the user (or attacker) to return to the previously displayed screen. The tester clicks the browser's "back" button to check whether unauthenticated users can access the previously displayed sensitive information.

3.8 Testing for unsafe direct object references version: v1.0
Insecure direct object references refer to an authorized user who has access to an object that was not authorized by changing a parameter during access
Internal resources such as specific file names, paths, or database keywords on the server are exposed in URLs or web pages, and attackers can try to access other resources directly.
1. Avoid directly quoting internal file names or database keywords in URLs or web pages.
2. You can use a custom mapping name to replace the direct object name, for example, http://example.test/online/news.asp?item=0245, etc.
3. Lock all directories and folders on the website server, and set access permissions.
4. Verify user input and URL request, and reject requests that include ./or ../

## 4. Encryption algorithm and key management

4.1 Do not use proprietary and non-standard encryption algorithms.
**Note**: Proprietary and non-standard cryptographic algorithms cannot be used in the product. On the one hand, it is difficult to ensure the security strength of cryptographic algorithms designed by non-cryptographic professionals. On the other hand, such algorithms have not been analyzed and verified in the industry, and may have unknown flaws. In addition, this design violates the open and transparent security design principles. It is recommended to use common open source cryptographic components in the industry, such as OpenSSL and OpenSSH.

Test steps:
1. Check the code and confirm that no proprietary and non-standard encryption algorithms are used.

4.2 Do not use insecure cryptographic algorithms. It is recommended to use a strong password algorithm.
**Note**: With the development of encryption technology and the improvement of computing power, some encryption algorithms are no longer suitable for the current security field, such as the insecure symmetric encryption algorithms DES and RC4, and the insecure asymmetric encryption algorithm RSA- 1024, insecure hash algorithms SHA-0, SHA-1, MD2, MD4 and MD5, and insecure key agreement algorithm DH-1024. Instead, it is recommended to use AES-256, RSA-3072, SHA-256, PBKDF2 or stronger encryption algorithms.

Test steps:
1. Check the code and confirm that a strong low temperature cipher suite is used.
2. The user openssl scans each port to verify the cipher suite used.
        
4.3 The key used to encrypt data cannot be hard-coded.
**Note**: The key must be replaceable to prevent disclosure risks due to long-term use.

Test steps:
1. Check the code and confirm whether the key is configurable.

4.4 For the sake of security, please use cryptographically secure random numbers.
**Note**: Random numbers are used for encryption algorithms, such as IV, salt and key generation. Insecure random numbers can make keys and IVs partially or completely predictable. The random number for password security must be unpredictable.

Test steps:
1. Check the code and confirm the use of cryptographically secure random numbers.

4.5 Use a secure random number generator to generate keys.
**Note**: If the key is generated by a random number generator, the random number generator must be secure. If an insecure random number generator is used, the key obtained can be predicted. For example, you can use RAND_bytes in OpenSSL library, /dev/random device interface in Linux OS, and RNG in Trusted Platform Module (TPM).

Test steps:
1. Check the code and confirm that a random number generator is used.

4.6 Reuse random numbers and prohibit key pairs in encryption. version: v1.0
Note: You can only use Nonce at the moment, and you can only use it once. Use techniques such as request increment, time-based and/or challenge response to ensure the uniqueness of random numbers. (This rule will take effect in R1.0*)

Test steps:

Check the code and confirm that Nonce is always regenerated and not reused.



## 5. DOS attack

5.1 Must have anti-automation function to prevent breach of credential test, brute force cracking and account lockout attacks.

Test steps:
1. Design a user login script to simulate a brutal login attempt and confirm that the user account will be locked.
2. Use JMeter to simulate DOS attcck against API and check the running status of the system.

test tools:
JMeter

5.2 The application must limit the number of active concurrent sessions.

Test steps:
1. Design test cases to establish as many concurrent sessions as possible and confirm the number of concurrent sessions going on at the same time.

5.3 All inputs must be limited to appropriate size limits.

Test steps:
1. Check the code to confirm that the input size verification is used for any data in untrusted resources.
2. Design a test case to call an API with a large payload to confirm that the verification function of the input size is normal.



## 6. Session Management

6.1 Verify user identity, otherwise, it is used to establish a new user session. Without invalidating any existing session identifiers, an attacker has the opportunity to steal authenticated sessions.
**Note**: Before authorizing a new user session, please invalidate all existing session identifiers.

Test steps:
1. (User A) Log in to the system and record the session ID.
2. (User A) Use another client to log in to the system.
3. Confirm that the penetration identifier generated in step 1 is invalid.
The following is used in version: v1.0 
4. To test for caching vulnerabilities, whenever the session ID is passed, instructions should be used to prevent intermediate caches or even local caches from caching it. 
5. GET and POST vulnerabilities, GET requests should not be used, because the session ID may be exposed in the proxy or firewall logs

6.2 Set the session/voucher to a valid expiration date.

Test steps:
1. Log in to the system and confirm that the session and credentials have a valid expiration date.

6.3 Protect the session of the application from information leakage. Ensure that the data of the session is not used or visible by other sessions.

Test steps:

6.4 When the user logs out, the session must be invalid.

Test steps:
1. Log out of the system and confirm that the session is invalid.

6.5 Successful authentication and re-authentication must generate a new session and session ID.

Test steps:
1. Log in to the system and record the session ID.
2. Log out and log in to the system again, compare the session ID with the previous one, and confirm that the session ID is different.

6.6 Test the exposed session variable version: v1.0
   1. Test for caching vulnerabilities. Whenever the session ID is passed, instructions should be used to prevent intermediate caches or even local caches from caching it.
   2. GET and POST vulnerabilities, GET requests should not be used, because the session ID may be exposed in the proxy or firewall logs



## 7. Web Service Security

7.1 The client and server must have the same encoding style.
**Note**: Different encodings between client and server may affect security, and have been used in the past to bypass authentication and WAF to perform XSS attacks.

Test steps:
1. Check the code to confirm that the same coding style is used.

7.2 Must accept XML or JSON schema and validate it before accepting input.
**Note**: Pattern verification is the first level of defense against application logic attacks.

Test steps:
1. Check the code to confirm that the XML and JSON schema validation has been implemented.
2. Design test cases to call APIs with abnormal XML or JSON payloads to verify that the schema verification is valid, and confirm that all data that fails the verification will be rejected.

7.3 The test session cannot be predicted version: v1.0 Note: The tester wants to check whether cookies and other session tokens have been created in a safe and unpredictable way. An attacker who can predict and forge weak cookies can easily hijack the sessions of legitimate users.

Test steps:

Check the id itself to ensure its quality, randomness, uniqueness, resistance to statistics and cryptanalysis, and information leakage from a security perspective. 2. Perform it manually, or use a cryptanalysis tool to infer any patterns in the Session ID content to determine whether there are any recognizable or predictable patterns. Check which elements of the session ID are time-related? Which parts of the session ID are predictable.

7.4 Test whether the session attributes are set normally. version: v1.0

Note: The application should use each attribute correctly, such as security attributes; httpOnly attributes; path attributes; expired attributes;

Test steps: 1. Use blocking proxy to view cookies, 2. Check by viewing browser cookies

7.5 Avoid using cookie data for security-related decisions. version: v1.0
(This rule will take effect in R1.0) Note: Attackers can easily modify cookies in the browser or by implementing client-side code outside the browser. An attacker can bypass protection mechanisms such as authorization and authentication by modifying the cookie to contain expected values.

Test steps:

Try to log in to the system without deleting or clearing cookies.
Make sure that the cookie does not participate in the authentication process, that is, the entire authentication is performed using a password or other effective authentication mechanism.

7.6 Testing cross-site request forgery: version: v1.0
   The attacker may force the user of the web application to perform an action chosen by the attacker to determine whether it is possible to initiate a request on behalf of the user that was not initiated by the user.
   1. Verify the HTTP Referer field on the server side such as request.getHeader("Referer").
   2. Add token verification in the request address, such as session.getAttribue("token"), and then put the token in Seesion to get the token in the request sent by the attacker 
     Compare.



## 8. Secure documents

8.1 All public function interfaces, RESTful interfaces, local function interfaces, command line interfaces and the default username and password for authentication must be described in the product or application documentation.
**Note**: All previous new interfaces must be described in the application documentation to help users better understand the corresponding modules.

Test steps:
1. List all public function interfaces, RESTful interfaces, local function interfaces, and command line interfaces.
2. Check all interfaces, product or application documents describing the default username and password for authentication.

8.2 System operation and maintenance require external communication connections. All communication ports used must be described in the port matrix document. The dynamic listening port must be restricted within the appropriate range.
**Note**: If the external communication port is not described in the port matrix document, it may affect the user's security configuration.

Test steps:
1. Use NMap to scan the ports in the deployment environment and compare the scan results with the port matrix document. Verify that all ports are recorded in the port matrix document.

test tools:
map

## 9. Log Security

9.1 Do not record unsterilized user input.
**Note**: Unsterilized log records may allow attackers to forge log entries or inject malicious content into the log.

Test steps:
1. Check the system log to confirm that the non-sterile user date is not included.

9.2 Adequate logging.
**Note**: Make sure to record all safety-related successes and failures. If security-critical events (such as failed login attempts) are not properly recorded, this will make malicious behavior more difficult to detect and may prevent forensic analysis after a successful attack.

Test steps:
1. Check the system log and confirm that all safety-related successes and failures have been recorded.

9.3 Do not add sensitive information to the log or log file.
**Note**: Please carefully consider the sensitivity of the information written to the log file. Do not write confidential information to log files. Before deploying the application to the production environment, delete the debug log file. Protect log files from unauthorized reading/writing.

Test steps:
1. Check the system log and confirm that no sensitive data is recorded.

9.4 Avoid recording too much data.
**Note**: Disallow a large number of repetitive log messages and replace them with periodic summaries. For example, syslog may contain an entry that declares "the last message repeated X times" when recording repetitive events. Supports the maximum size of log files that can be controlled by the administrator.

Test steps:
1. Check the system log and confirm that only the smallest data is recorded.

## 10. Threat modeling

10.1 Threat modeling must be carried out for all functional designs and check whether all aspects of security are considered in the design.
**Note**: Threat modeling is a process that can analyze the product's architecture and identify security issues in product design. For more details, please see https://gitee.com/edgegallery/community/blob/master/Security%20WG/Secure%20Design/Threat%20Modeling%20--%20STRIDE.md

Test steps:
For each mitigation method:
1. Design a test case to check the correctness of the mitigation method;
2. Design a test case to attack the system from an attacker's perspective and verify the effectiveness of the mitigation method.

## External references
1. https://gdpr-info.eu/
2. https://gitee.com/mindspore/community/tree/master/security
3. http://cwe.mitre.org/data/definitions/1008.html
4. https://github.com/devonfw/devonfw-security/wiki/guide-security-quick-owasp-asvs
5. https://ico.org.uk/for-organisations/guide-to-data-protection/guide-to-the-general-data-protection-regulation-gdpr/encryption/how-should-we-implement- encryption/
6.https://github.com/OWASP/wstg/blob/master/document/4-Web_Application_Security_Testing/06-Session_Management_Testing/README.md
7.https://wiki.owasp.org/index.php/OWASP_Testing_Project