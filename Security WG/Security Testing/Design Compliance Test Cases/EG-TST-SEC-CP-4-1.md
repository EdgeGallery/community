# EdgeGallery Security Compliance Test Case 4-1

|Test ID   |EG-TST-SEC-CP-4-1   |
| ------------ | ------------ |
|Test tool   |Nessus<br>Download URL:https://www.tenable.com/downloads/nessus?loginAttempted=true   |
|Test description   |Do not use proprietary and non-standard encryption algorithms<br>Proprietary algorithms are prohibited for encryption and decryption, including:<br>1. User-defined data conversion algorithms that are executed by transformation, character shift, and replacement.<br>2. Pseudo encryption for data encryption using encoding (for example, Base64 encoding).<br>Sub-check items:<br>1. Do not use self-designed cryptographic algorithms or algorithms that do not disclose the details of the algorithms.<br>2. Do not reconstruct or use standard cryptographic algorithm.<br>3. Do not use self-defined data conversion by transformation, character shift, or replacement.<br>4. Do not use coding (such as Base64 coding) to encrypt data.<br>5. Do not use error control codes (such as parity check and CRC) to implement integrity check.   |
|Configuration Steps   |Obtaining Product Source Codes and Design Documents   |
|Step 1   |Check the design document to see whether the encryption and decryption design meets the requirements.   |
|Step 2   |Check all sensitive data, such as passwords and keys, stored in the database, files, and memory. Check whether the algorithms meet requirements.   |
|Step 3   |Use the nessus tool to check for illegal algorithm keywords   |
|Step 4   |Check whether the code meets requirements.   |
|Test Verdict   |Common open-source cryptographic components are used in the product, which meets the test requirements. No proprietary and non-standard cryptographic algorithms are used.   |