# Security Testing Guidelines  

This document is used to guide developers to design test cases for testing each entry in the [Security Design Guide](https://gitee.com/edgegallery/community/blob/master/Security%20WG/Secure%20Design/Security%20Design%20Guide.md). 

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
2. Design vertical privilege escalation test cases to verify the existence of authorization mechanism. e.g. User A try to perform opertions or use functions out of his/her permisson scope.

1.3 The server must validate the size, type, length, and special characters of all untrusted data sources and reject any data that fails the validation.  
**Notice**: To prevent attackers from intercepting and tampering with requests through a proxy to bypass the validity check of the client, data validation must be performed on the server.

Test steps:
1. Review the code to confirm all APIs validate the size, type, length, and special characters of all untrusted data sources.
2. Design test cases to invoke APIs with abnoraml data payload and confirm any data that fails the validation are rejected.

1.4 Functions that allow access to the system or data while bypassing the system security mechanism (such as authentication, permission control, and log recording) are prohibited.  
**Notice**: If a product has functions that allow access to the system or data without the system security mechanism, malicious personnel may be aware of the functions and perform operations without authorization, which greatly affects the system.  

Test steps:
1. Review the code to confirm the founctions that allow access to the system or data cannot bypassing the system security mechanism.
2. Perfrom penetration tesing to validate there is no way to bypass the system security mechanism.

Test tools：
OWASP ZAP, Postman

1.5 According to the principle of least privilege, accounts used to run software programs are low-privilege OS accounts.  
**Notice**: Privileged accounts such as root, administrator, and supervisor or high-level accounts cannot be used to run software programs. Instead, use common accounts to run software programs.  

Test steps:
1. Review the Dockerfile to confirm Docker are run as a non-root user.
2. Design privilege escalation scripts to validatethe  file permission and file owner settings are proper.

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
1. Login the system and use the change password function, try to change password to commnly chosen passwords and weak passphrases.
2. Confirm the operation will fail due to use of commonly chosen passwords and weak passphrases.

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
1. Use openssl to scan ports in the deployment environment, confirm SSL2.0, SSL3.0, TLS1.0 and TLS1.1 are disabled.

Test tools:
openssl

2.3 Proper certification revocation, such as Online Certificate Status Protocol (OCSP) Stapling, must be enabled and configured.

Test steps:
1. Review the code and confirm the implementation of certification revocation mechanism.

## 3. Sensitive and Private Data Protection  

3.1 Authentication credentials (such as passwords and keys) cannot be stored in plaintext in the system and must be encrypted. If plaintext does not need to be restored, use the irreversible PBKDF2 algorithm for encryption. If plaintext needs to be restored, you can use the AES-256 GCM algorithm for encryption.  

Test steps:
TBD

3.2 Avoid storing passwords in easily accessible locations. Consider storing cryptographic hashes of passwords as an alternative to storing in plaintext. 

Test steps:
TBD

3.3 All sensitive data is sent to the server in the HTTP message body (i.e., URL parameters are never used to send sensitive data).  

Test steps:
TBD

3.4 By default, personal data of a data subject cannot be not directly read. If necessary, provide an interface to obtain data subjects' authorization.  
**Notice**: Personal data belongs to data subjects. If personal data needs to be accessed and collected, data subjects' consent and authorization are required.  

Test steps:
1. Examine the system to check whether an interface to obtain data subjects' consent and authorization for collecting personal data is exist.

3.5 By default, data generated during application processing cannot be transferred to a third party. If necessary, provide an interface to obtain data subjects' authorization.  
**Notice**: Before transferring personal data of data subjects to a third party, provide a reasonable method to notify the data subjects of the types of personal data to be transferred, transfer purposes, and information about the data recipients, and obtain the consent of the data subjects.  

Test steps:
1. Examine the system to check whether an interface to obtain data subjects' authorization for transferring data to third party is exist.

3.6 If personal data needs to be used for marketing, user profiling, and market survey, provide an interface to obtain data subjects' authorization and provide an interface for data subjects to withdraw their authorization at any time.  
**Notice**: If personal data is used for user profiling and marketing, explicit user authorization must be obtained so that users can choose whether to use their personal data for basic services. Products or systems sold to the EU, if involving user profiling and marketing, must inform users of the user profiling logic, consequences of rejecting to provide personal data, and whether personal data is transferred out of European Economic Area (EEA), apart from informing them of their right to reject.  

Test steps:
1. Examine the system to check whether an interface to obtain data subjects' authorization and an interface for data subjects to withdraw their authorization are exist.

3.7 Have a legal justification for your data processing activities as per GDPR policies.  
**Notice**: Art. 6 GDPR Lawfulness of processing define GDPR poicies (https://gdpr.eu/article-6-how-to-process-personal-data-legally/). 

Test steps:
TBD

## 4. Encryption Algorithm and Key Management  

4.1 Do not use proprietary and non-standard cryptographic algorithms.  
**Notice**: Proprietary and non-standard cryptographic algorithms cannot be used in products. On the one hand, it is difficult to ensure the security strength of cryptographic algorithms designed by non-cryptography professionals. On the other hand, such algorithms are not analyzed and validated in the industry, and may have unknown defects. In addition, such design violates the open and transparent security design principles. It is recommended that common open-source password components in the industry, such as OpenSSL and OpenSSH, be used.  

Test steps:
1. Examine the code and confirm proprietary and non-standard cryptographic algorithms are not used.

4.2 Do not use insecure cryptographic algorithms. Strong cryptographic algorithms are recommended.  
**Notice**: With the development of cryptographic technologies and improvement of computing capabilities, some cryptographic algorithms no longer apply to the current security field, such as insecure symmetric encryption algorithms DES and RC4, insecure asymmetric encryption algorithm RSA-1024, insecure hash algorithms SHA-0, SHA-1, MD2, MD4, and MD5, and insecure key negotiation algorithms DH-1024. Instead, AES-256, RSA-3072, SHA-256, PBKDF2, or stronger cryptographic algorithms are recommended.  

Test steps:
1. Examine the code and confirm strong cryoptograhic cipher suites are used.
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

## 5. DOS Attack

5.1 Anti-automation must be in place to prevent breached credential testing, brute forcing, and account lockout attacks.

Test steps:
1. Design user login scripts to simulate brutal login attempts, confirm the user account will be locked out. 
2. Use JMeter to simulate DOS attcck against APIs, check the operational status of the system.

Test tools:
JMeter

5.2 The application must limit the number of active concurrent sessions.

Test steps:
1. Design test case to establish as many concurtent sessions as possible and confirm that the number of acitve concurrent sessions is limited.

5.3 All input must be limited to an appropriate size limit.

Test steps:
1. Examine the code to confirm input size validations are used for any data from untrusted resource.
2. Design test cases to invoke APIs with oversized payload to confirm the input size validation is functional.

## 6. Session Management

6.1 Authenticate a user, or otherwise for establishing a new user session. without invalidating any existing session identifier gives an attacker the opportunity to steal authenticated sessions.  
**Notice**: Invalidate any existing session identifiers prior to authorizing a new user session. 

Test steps:
1. (User A) Log in the system, record the session identifier.
2. (User A) Log in the system using another client.
3. Confirm the seesion identifier generated in step 1 has been invalidated.

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

## 7. Web Service Serurity

7.1 The same encoding style must be between the client and the server.  
**Notice**: Different encodings between client and server can have security implications and have been used in the past to bypass validation and WAFs to perform XSS attacks.

Test steps:
1. Examine the code to comfirm same encoding style is used.

7.2 XML or JSON schema must be in place and verified before accepting input.  
**Notice**: Schema validation is the first level of defence against attacks on the application logic.

Test steps:
1. Examine the code to confirm XML and JSON schema validation is implemented.
2. Design test cases to invoke APIs with abnormal XML or JSON payload to verify the schema validation is functional, confirm any data that fails the validation are rejected.

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
**Notice**: Unsanitized loging can allow an attacker to forge log entries or inject malicious content into logs.

Test steps:
1. Examine the system log and confirim there is no unsanitized user date included.

9.2 Sufficient Logging.  
**Notice**: Ensure that all security-related successes and failures be logged. When security-critical events are not logged properly, such as a failed login attempt, this can make malicious behavior more difficult to detect and may hinder forensic analysis after an attack succeeds.

Test steps:
1. Examine the system log and confirm all security-related successes and failures be logged.

9.3 Do not add Sensitive Information into Log or Log file.  
**Notice**: Consider seriously the sensitivity of the information written into log files. Do not write secrets into the log files. Remove debug log files before deploying the application into production. Protect log files against unauthorized read/write.

9.4 Avoid Logging of Excessive Data.  
**Notice**: Suppress large numbers of duplicate log messages and replace them with periodic summaries. For example, syslog may include an entry that states "last message repeated X times" when recording repeated events. Support a maximum size for the log file that can be controlled by the administrator. 

## 10. Threat Modelling

10.1 All feature design must do threat Modelling and check if all aspects of security is considered in design.  
ce**: Threat Modeling is a process to analyze the architecture of a product and identify security issues in it’s design. For more details refer https://gitee.com/edgegallery/community/blob/master/Security%20WG/Secure%20Design/Threat%20Modeling%20--%20STRIDE.md

Test Steps:
For each mitigation methods:
1. Design a test case to check the implementation correctness of the mitigation method;
1. Design a test case to attck the system from an attacker's perspective and verify the effectiveness of the mitigation method.