# Security Design Guidelines  

This document is developed based on industry standards and open source best practices to guide developers in module design and avoid high security design risks.  
For each rule in this guide some test steps are provided to help the developers to design and implement test cases.

## 1. Identification, Authentication and Authorization  

1.1 All machine-to-machine and man-to-machine interfaces for cross-network transmission must have an access authentication mechanism, and the authentication process must be performed on a server.  
**Notice**: Cross-network interfaces must support identity authentication to prevent spoofing access.

Test steps:
1. List all machine-to-machine and man-to-machine interfaces.
2. Examine all interfaces to confirm the existence of authentication mechanisms and record the results.

Test tools:
telnet, snmp, ssh, ftp, sftp, netconf

1.2 For each access request that requires authorization, the server must verify whether the user is authorized to perform this operation.  
**Notice**: Unauthorized URL access is a typical web security vulnerability. Attackers can easily bypass the system permission control to access system resources and use system functions without authorization. To prevent users from directly entering a URL to request and execute some pages without authorization, the background needs to authenticate the permission of the user who requests the URL.

Test steps:
1. Design horizontal privilege escalation test cases to verify the existence of authorization mechanism. e.g. User A try to access user B's resources.
2. Design vertical privilege escalation test cases to verify the existence of authorization mechanism. e.g. User A try to perform operations or use functions out of his/her permission scope.

1.3 The server must validate the size, type, length, and special characters of all untrusted data sources and reject any data that fails the validation.  
**Notice**: To prevent attackers from intercepting and tampering with requests through a proxy to bypass the validity check of the client, data validation must be performed on the server.

Test steps:
1. Review the code to confirm all APIs validate the size, type, length, and special characters of all untrusted data sources.
2. Design test cases to invoke APIs with abnormal data payload and confirm any data that fails the validation are rejected.

1.4 Functions that allow access to the system or data while bypassing the system security mechanism (such as authentication, permission control, and log recording) are prohibited.  
**Notice**: If a product has functions that allow access to the system or data without the system security mechanism, malicious personnel may be aware of the functions and perform operations without authorization, which greatly affects the system.  

Test steps:
1. Review the code to confirm the functions that allow access to the system or data cannot bypassing the system security mechanism.
2. Perform penetration teasing to validate there is no way to bypass the system security mechanism.

Test tools：
OWASP ZAP, Postman

1.5 According to the principle of least privilege, accounts used to run software programs are low-privilege OS accounts.  
**Notice**: Privileged accounts such as root, administrator, and supervisor or high-level accounts cannot be used to run software programs. Instead, use common accounts to run software programs.  

Test steps:
1. Review the Dockerfile to confirm Docker are run as a non-root user.
2. Design privilege escalation scripts to validate the  file permission and file owner settings are proper.

1.6 Account identity authentication functions (such as update profile, forgot password, disabled / lost token, help desk or IVR) that might regain access to the account are at least as resistant to attack as the primary authentication mechanism.

Test steps:
TBD

1.7 All authentication controls must fail securely.  
**Notice**: The developer must just handle the displaying of the error message properly.

Test steps:
1. For each authentication scenario, implement various kinds of authentication failures, i.e., non-exist user, incorrect password, user without permission.
2. Examine the error messages both displayed in the system interfaces and recorded in the logs, confirm the messages are proper.

1.8 The forgotten password function and other recovery paths should not reveal the current password and the new password should not sent in clear text to the user.

Test Steps:
1. Login the system and use the forgotten password function to reset password.
2. Examine the current password is not reveal and new password is encrypted. 

1.9 The changing password functionality must include the old password, the new password, and a password confirmation.

Test Steps:
1. Login the system and use the change password function, examine the interface include the old password, the new password, and a password confirmation. 

1.10 Verify that measures are in place to block the use of commonly chosen passwords and weak passphrases.

Test Steps:
1. Login the system and use the change password function, try to change password to commonly chosen passwords and weak passphrases.
2. Confirm the operation will fail due to use of commonly chosen passwords and weak passphrases.

tag: version v1.0

1.11 Ensure no capture-replay attack posible.  
**Notice**: A capture-replay flaw exists when the design of the software makes it possible for a malicious user to sniff network traffic and bypass authentication by replaying it to the server
Utilize some sequence or time stamping functionality along with a checksum which takes this into account in order to ensure that messages can be parsed only once. (This rule will take effect in R1.0*)

Test Steps:
1. By snooping the authentication packet and try to replay it with same content should not be allowed to login and authentication must fail.

tag: version v1.0

1.12 Role based Access control.  
**Notice**: Role based access control must be defined and followed to access the resources in the system. Applicable for users as well as Applications. (This rule will take effect in R1.0*)

Test Steps:
1. Set Different user different privileges.
2. Cross check only the privilaged users can access the resource.

1.13 When using a role-based access control mechanism, authorization and user role data must be stored on the server side, and authentication processing must also be completed on the server side.<br/>
**Notice**: It is forbidden to store authorization and role data in the client (such as cookies or hidden fields) to prevent tampering.

Test Steps:<br/>
Check cookie or hidden field, whether there is authorization and role data.

tag: version v1.1

1.14 The contents in the password box cannot be displayed and copied/cut out, and the password field should disable autocomplete.<br/>
**Notice**: The password cannot be copied/cut out, otherwise it is easy to cause the leakage of password information. Browsers have the ability to automatically save user input data and auto-fill data, in order to ensure the security of user names and passwords, the auto-fill function must be turned off.

Test Steps:<br/>
1. Try to copy/cut out the contents of the password box, and check whether the input type is password: < input type="password"> <br/>
2. When entering the password, check whether there is an auto-fill function, and check whether the input parameter is < input autocomplete="off">

tag: version v1.1

1.15 Accounts that are no longer used must be deleted/disabled. when an account is deleted, the corresponding credentials (such as the password and authentication key) must also be deleted to prevent them from being suspected as backdoors.<br/>

Test Steps:<br/>
1. Check if any unused accounts or default account exist in the system. <br/>
2. If any such account exist, try to login with such accounts, login must fail.  <br/>

tag: version v1.1


## 2. Secure Transmission  

2.1 Sensitive data (including passwords) or key service data (network structure, model parameters) must be transmitted across networks using secure transmission protocols or encrypted before transmission.  
**Notice**: When data is transmitted across networks, it is vulnerable to theft or tampering by attackers. Therefore, important data must be protected.  

Test steps:
1. According to the port communication document, use openssl to scan each port and confirm HTTPS is enabled by default.

Test tools:
openssl

2.2 Do not use SSL2.0, SSL3.0, TLS1.0, or TLS1.1 for secure transmission. TLS1.2 and TLS1.3 are recommended.  
**Notice**: Secure Sockets Layer (SSL) 2.0 and SSL 3.0 have been disabled by Internet Engineering Task Force (IETF) in March 2011 and June 2015 due to security issues. In Transport Layer Security (TLS) 1.0, the symmetric encryption algorithm supports only the RC4 algorithm and the cipher block chaining (CBC) mode of the block cipher algorithm. RC4 algorithm is regarded as insecure and is disabled by IETF in all TLS versions. The CBC mode of the symmetric encryption algorithm has the problem of predictable initialization vector (IV) and is vulnerable to BEAST attacks. Therefore, TLS 1.2 and TLS 1.3 are recommended.  

Test steps:
1. Use sslscan to scan IP in the deployment environment, confirm SSL2.0, SSL3.0, TLS1.0 and TLS1.1 are disabled.

Test tools:
sslscan

2.3 Proper certification revocation, such as Online Certificate Status Protocol (OCSP) Stapling, must be enabled and configured.

Test steps:
1. Review the code and confirm the implementation of certification revocation mechanism.

## 3. Sensitive and Private Data Protection  

3.1 Authentication credentials (such as passwords and keys) cannot be stored in plaintext in the system and must be encrypted. If plaintext does not need to be restored, use the irreversible PBKDF2 algorithm for encryption. If plaintext needs to be restored, you can use the AES-256 GCM algorithm for encryption.  
**Notice**: Authentication credentials like database passwords, certificates, etc., can be passed in during user installation and can be in plain text. 

Test steps:
1. Examine the credential encryption mechanism and confirm that user credentials are encrypted before stored.

3.2 Avoid storing passwords in easily accessible locations. Consider storing cryptographic hashes of passwords as an alternative to storing in plaintext. 

Test steps:
TBD

3.3 All sensitive data is sent to the server in the HTTP message body (i.e., URL parameters are never used to send sensitive data).  

Test steps:
1. Review the code and confirm sensitive data are not transmitted as URL parametes.
2. Use API tools such as Postman for validation.

Test tools:
Postman

                                                                                                                                                        
3.5 Test whether the browser history and cache cache sensitive information 

Test steps:
1.Using the "back" button allows the user (or attacker) to return to the previously displayed screen. The tester clicks the browser's "back" button to check whether unauthenticated users can access the previously displayed sensitive information.

tag: version v1.0


3.6 Do not show/provide Physical abolute paths and file structures of servers to unauthorized users. 

Test steps:<br/>
1.Check if any display commands or web clients shows the file paths or file structures.<br/>
2.If such cases occurs check if Physical abolute paths are not shown for the default Guest account or for unauthorized users.<br/>

tag: version v1.1



## 4. Encryption Algorithm and Key Management  

4.1 Do not use proprietary and non-standard cryptographic algorithms.  
**Notice**: Proprietary and non-standard cryptographic algorithms cannot be used in products. On the one hand, it is difficult to ensure the security strength of cryptographic algorithms designed by non-cryptography professionals. On the other hand, such algorithms are not analyzed and validated in the industry, and may have unknown defects. In addition, such design violates the open and transparent security design principles. It is recommended that common open-source password components in the industry, such as OpenSSL and OpenSSH, be used.  

Test steps:
1. Examine the code and confirm proprietary and non-standard cryptographic algorithms are not used.

4.2 Do not use insecure cryptographic algorithms. Strong cryptographic algorithms are recommended.  
**Notice**: With the development of cryptographic technologies and improvement of computing capabilities, some cryptographic algorithms no longer apply to the current security field, such as insecure symmetric encryption algorithms DES and RC4, insecure asymmetric encryption algorithm RSA-1024, insecure hash algorithms SHA-0, SHA-1, MD2, MD4, and MD5, and insecure key negotiation algorithms DH-1024. Instead, AES-256, RSA-3072, SHA-256, PBKDF2, or stronger cryptographic algorithms are recommended.  

Test steps:
1. Examine the code and confirm strong cryptographic cipher suites are used.
2. User openssl to scan each port to verify the cipher suites used.
        
4.3 Keys used to encrypt data cannot be hard-coded.  
**Notice**: Keys must be replaceable to prevent disclosure risks caused by long-term use.  

Test steps：
1. Examine the code and confirm keys are configurable.

4.4 Use cryptographically secure random numbers for security purposes.  
**Notice**: Random numbers are used for cryptographic algorithm purposes, such as the generation of IVs, salts, and keys. Insecure random numbers make keys and IVs partially or entirely predictable. Cryptographically secure random numbers must be unpredictable.  

Test steps：
1. Examine the code and confirm cryptographically secure random numbers are used.

4.5 Use a secure random number generator to generate keys.  
**Notice**: If the key is generated by a random number generator, the random number generator must be secure. If an insecure random number generator is used, the obtained keys may be predicted. For example, you can use RAND_bytes in the OpenSSL library, /dev/random device interface in the Linux OS, and the RNG in the Trusted Platform Module (TPM).  

Test steps：
1. Examine the code and confirm random number generator is used.

tag: version v1.0

4.6 Reusing a Nonce, Key Pair in Encryption is prohibited.  
**Notice**: Nonces should be used for the present occasion and only once.
Use techniques such as requiring incrementing, time based and/or challenge response to assure uniqueness of nonces. (This rule will take effect in R1.0*)  

Test steps：
1. Examine the code and confirm Nonce is always regenerated and not reused.

## 5. DOS Attack

5.1 Anti-automation must be in place to prevent breached credential testing, brute forcing, and account lockout attacks.

Test steps:
1. Design user login scripts to simulate brutal login attempts, confirm the user account will be locked out. 
2. Use JMeter to simulate DOS attack against APIs, check the operational status of the system.

Test tools:
JMeter

5.2 The application must limit the number of active concurrent sessions.

Test steps:
1. Design test case to establish as many concurrent sessions as possible and confirm that the number of active concurrent sessions is limited.

5.3 All input must be limited to an appropriate size limit.

Test steps:
1. Examine the code to confirm input size validations are used for any data from untrusted resource.
2. Design test cases to invoke APIs with oversized payload to confirm the input size validation is functional.

## 6. Session Management

tag: version v1.0

6.1 Authenticate a user, or otherwise for establishing a new user session. without invalidating any existing session identifier gives an attacker the opportunity to steal authenticated sessions.  
**Notice**: Invalidate any existing session identifiers prior to authorizing a new user session. 

Test steps:
1. (User A) Log in the system, record the session identifier.
2. (User A) Log in the system using another client.
3. Confirm the session identifier generated in step 1 has been invalidated.

The following is used in version: v1.0 
4. To test for caching vulnerabilities, whenever the session ID is passed, instructions should be used to prevent intermediate caches or even local caches from caching it. 
5. GET and POST vulnerabilities, GET requests should not be used, because the session ID may be exposed in the proxy or firewall logs


6.2 Set sessions/credentials a valid expiration date.

Test steps:
1. Log in the system and confirm the session and credential have a valid expiration date.

6.3 Protect the application's sessions from information leakage. Make sure that a session's data is not used or visible by other sessions.

Test steps:

6.4 The session must be invalidated when the user logs out.

Test steps:
1. Log out the system and confirm the session has been invalidated.

6.5 Successful authentication and re-authentication must generate a new session and session id.

Test steps:
1. Log in the system and record the session ID.
2. Log out then log in the system again, compare the session ID with the previous one, confirm the session IDs are different.

## 7. Web Service Security

7.1 The same encoding style must be between the client and the server.  
**Notice**: Different encodings between client and server can have security implications and have been used in the past to bypass validation and WAFs to perform XSS attacks.

Test steps:
1. Examine the code to confirm same encoding style is used.

7.2 XML or JSON schema must be in place and verified before accepting input.  
**Notice**: Schema validation is the first level of defense against attacks on the application logic.

Test steps:
1. Examine the code to confirm XML and JSON schema validation is implemented.
2. Design test cases to invoke APIs with abnormal XML or JSON payload to verify the schema validation is functional, confirm any data that fails the validation are rejected.

7.3 Session ID of web application must be random and after authentication new session id must be generated. (*This rule will take effect in R1.0**)

Test steps:
1. Log in the system and record the session ID.
2. Log out then log in the system again, compare the session ID with the previous one, confirm the session IDs are different.

7.4 Server must have mechanism to restrict the file types during uploading of files to the directories which contain web page files.  (**This rule will take effect in R1.0**)

Test steps:
1. Upload the files with restricted file extensions.
2. Examine that upload should fail with proper response.

tag: version v1.0

7.5 Avoid using cookie data for a security-related decision.   (**This rule will take effect in R1.0**)
**Notice**: Attackers can easily modify cookies, within the browser or by implementing the client-side code outside of the browser. Attackers can bypass protection mechanisms such as authorization and authentication by modifying the cookie to contain an expected value.

Test steps：
1. Try to login to the system without deleting or clearing the cookies.
2. Make sure cookie is no way involved in authentication process, that is the whole authentication is carried out with Password or other valid authentic mechanism.

tag: version v1.0
penetration test

7.6 Testing cross-site request forgery:  
   The attacker may force the user of the web application to perform an action chosen by the attacker to determine whether it is possible to initiate a request on behalf of the user that was not initiated by the user.
   1. Verify the HTTP Referer field on the server side, such as request.getHeader("Referer").
   2. Add token verification in the request address, such as session.getAttribue("token"), and then put the token in Seesion to get the token in the request sent by the attacker
     Compare.

tag: version v1.0

7.7 The test session cannot be predicted 
penetration test
**Note**: The tester wants to check whether cookies and other session tokens have been created in a safe and unpredictable way. An attacker who can predict and forge weak cookies can easily hijack the sessions of legitimate users.

Test steps:
1. Check the id itself to ensure its quality, randomness, uniqueness, resistance to statistics and cryptanalysis, and information leakage from a security perspective.
2. Perform it manually, or use a cryptanalysis tool to infer any patterns in the Session ID content to determine whether there are any recognizable or predictable patterns. Check which elements of the session ID are time-related? Which parts of the session ID are predictable?

tag: version v1.0

7.8 Test whether the session attributes are properly set. 
  
**Note**: The application should use each attribute correctly, such as security attributes; httpOnly attributes; path attributes; expired attributes;

Test steps:
1. Use blocking proxy to view cookies,
2. Check by viewing the cookies of your browser

7.9 Web pages must provide logout options. On Logout servers must clear using session information. After a user closes a browser (not by clicking theLogout button on a webpage), the server can keep the session only until it times out or immediately and clear the session.<br/>

Test Steps:<br/>
1. Check if logout option is provided for web client. <br/>
2. If browser is closed the session details must have been cleared. This can be checked using if any session details available.  <br/>

tag: version v1.1

## 8. Security Document  

8.1 All public function interfaces, RESTful interfaces, local function interfaces, command line interfaces, and default usernames and passwords used for identity authentication must be described in the product or application document.  
**Notice**: All the preceding new interfaces must be described application document to help users better understand the corresponding modules.  

Test steps:
1. List all public function interfaces, RESTful interfaces, local function interfaces, command line interfaces.
2. Examine all interfaces, default usernames and passwords used for identity authentication are described in the product or application document.  

8.2 External communication connections are necessary for system running and maintenance. All communication ports used must be described in the port matrix document. Dynamic listening ports must be limited to a proper range.  
**Notice**: If external communication ports are not described in the port matrix document, user security configuration may be affected. 

Test steps:
1. Use NMap to scan ports in the deployment environment, compare the scanning results with the port matrix document. Verify all ports are documented in the port matrix document.

Test tools:
NMap

## 9 . Log Security 

9.1 Do not log unsanitized user input.
**Notice**: Unsanitized logging can allow an attacker to forge log entries or inject malicious content into logs.

Test steps:
1. Examine the system log and confirm there is no unsanitized user date included.

9.2 Sufficient Logging.  
**Notice**: Ensure that all security-related successes and failures be logged. When security-critical events are not logged properly, such as a failed login attempt, this can make malicious behavior more difficult to detect and may hinder forensic analysis after an attack succeeds.

Test steps:
1. Examine the system log and confirm all security-related successes and failures are logged.

9.3 Do not add Sensitive Information into Log or Log file.  
**Notice**: Consider seriously the sensitivity of the information written into log files. Do not write secrets into the log files. Remove debug log files before deploying the application into production. Protect log files against unauthorized read/write.

Test steps:
1. Examine the system log and confirm no sensitive data are logged.

9.4 Avoid Logging of Excessive Data.  
**Notice**: Suppress large numbers of duplicate log messages and replace them with periodic summaries. For example, syslog may include an entry that states "last message repeated X times" when recording repeated events. Support a maximum size for the log file that can be controlled by the administrator. 

Test steps:
1. Examine the system log and confirm only minimum data are logged.

## 10. Database Security

10.1 Default password provided by database vendor must not be used and password must be complex and unused Default Database accounts must be disabled/deleted. (**This rule will take effect in R1.0**)

Test steps:
1. Try login with default password. It must fail.
2. Query all the database accounts. Account which are no longer required must not exist.

10.2 Each database account must have proper authorization privileges set. Assign only the least privilege required for the task. (**This rule will take effect in R1.0**) 

Test steps:
1. Try the operations of admin using user account, it must not allow.

## 11. Image Repository

11.1 Software packages / Application images in repository must not contain virus softwares. The inner software integrity protection mechanism can be implemetated to cross check the tampering of images. <br/>

Test steps: <br/>
1. Run antivirus regularly to check if any virus is loaded. <br/>
2. Tampered images must be caught by the system and rejected when it is deployed. <br/>

tag: version v1.1

11.2 Check the confidentiality of the warehouse image. Whether the container (+image) is confidential, that is, whether the image is run by the target user

Test steps:

tag: version v1.1

11.3 Detect that the mirrored application directory is implanted in Webshell

Test steps:

By scanning the "Web application files" from the Docker container through the Webshell scanning engine on the host side (these files can be obtained through the "docker cp" command or the "dynamic mount" mechanism), it helps to discover the Webshell implanted by the attacker

tag: version v1.1

## 12. Multi-tenancy

12.1. The management network of the edge computing platform must be isolated from tenenats private networks by default. <br/>

Test steps:<br/>
1. Query and check if both the networks for management and tenant are different.<br/>

tag: version v1.1

12.2. Virtual CPU's, memories, storage devices, data and networks must be isolated among tenants so that confidentiality and privacy of tenants is maintained.<br/>

Test steps: <br/>
1. Data of one tenant must not be visible in another tenant. For example the database can be checked from one tenants login. <br/>
2. Network address must be different among tenants. This can be cross check by checking the ip addresses. <br/>

tag: version v1.1

12.3. Interference between tenants because of tenant workloads or others must be taken care.   For example an overload created by one tenant may negatively impact the performance of another tenant. <br/>
Test steps: <br/>
1. Overload CPU of one tenant. This should not impact the other tenants performace or should not block other tenant services. <br/>

tag: version v1.1

12.4. Must have an access control mechanism employing a large number of authorization rules, across conflicting policy domains, for large numbers of users. (RBAC)
Test steps: <br/>
1. Check if the system configuration allows to Configure Roles for each resources. <br/>
2. Check if the system configuration allows to Configure seperate permission for each role. <br/>

tag: version v1.1

## 13. Threat Modelling

11.1 All feature design must do threat Modelling and check if all aspects of security is considered in design.  
**Notice**: Threat Modeling is a process to analyze the architecture of a product and identify security issues in it’s design. For more details refer https://gitee.com/edgegallery/community/blob/master/Security%20WG/Secure%20Design/Threat%20Modeling%20--%20STRIDE.md

Test Steps:
For each mitigation methods:
1. Design a test case to check the implementation correctness of the mitigation method;
2. Design a test case to attack the system from an attacker's perspective and verify the effectiveness of the mitigation method.


## References
1. https://gdpr-info.eu/
2. https://gitee.com/mindspore/community/tree/master/security
3. http://cwe.mitre.org/data/definitions/1008.html
4. https://github.com/devonfw/devonfw-security/wiki/guide-security-quick-owasp-asvs
5. https://github.com/OWASP/wstg/blob/master/document/4-Web_Application_Security_Testing/06-Session_Management_Testing/README.md
6. https://wiki.owasp.org/index.php/OWASP_Testing_Project
7. https://ico.org.uk/for-organisations/guide-to-data-protection/guide-to-the-general-data-protection-regulation-gdpr/encryption/how-should-we-implement-encryption/
8. https://www.researchgate.net/publication/261342160_Multitenancy_-_Security_Risks_and_Countermeasures
9. https://cloudsecurityalliance.org/research/guidance/#_overview