# EdgeGallery Security Compliance Test Case 4-4

|Test ID   |EG-TST-SEC-CP-4-4   |
| ------------ | ------------ |
|Test tool    |Sonarqube; IDEA   |
|Test description   |Use encrypted and secure random numbers<br>Random numbers are the basis of cryptography. The random numbers of keys ensure that attackers cannot guess the keys and therefore cannot decrypt the ciphertext. The salt values are random. As a result, hackers can obtain the values queried in ciphertext, which are the passwords with salt values instead of the passwords set by users, we can't construct a rainbow table and then return the remote password ciphertext. The randomness of IVs ensures that attackers cannot find the statistical characteristics of ciphertext. If randomness is not ensured, various attacks are easy and the system is exposed to great threats.   |
|Configuration Steps   |Obtaining Test Object Design Documents and Codes   |
|Step 1   |Use sonarqube for the user module to scan code for encryption algorithm problems.   |
|Step 2   |Use Souce Insight to search for the forbidden java.util.Random class of hava.   |
|Step 3   |Use IDEA to check whether the same seed is set for java.security.SecureRandom() each time. As a result, the random number generated each time is the same.   |
|   |Use IDEA to check whether the generated random number contains more than 24 characters or 192 bits.<br>Note: Do not use the java.util.Random class of Java to generate random numbers for security purposes.<br>Do not set phase each time when java.secutiry.SecureRandom() is used to generate same seed.   |
|Test Verdict   |Secure random numbers are used to generate session IDs.<br>Security is considered secure if the security configuration for generating a session is used.   |