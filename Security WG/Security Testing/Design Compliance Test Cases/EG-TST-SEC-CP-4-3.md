# EdgeGallery Security Compliance Test Case 4-3

|Test ID   |EG-TST-SEC-CP-4-3   |
| ------------ | ------------ |
|Test tool   |sonarqube	   |
|Test description   |No hard-coded encryption key exists in the code.   |
|Configuration Steps   |Through interviews or other methods, analyze where storage encryption keys and communication encryption keys are designed in the system.   |
|Step 1   |Communicate with the R&D personnel to check whether the key is generated using a tool and determine the scenarios where the encryption key is used.   |
|Step 2   |Analyze the modules that may use encryption keys based on scenarios. Focus on the code walk-through and check whether hard code exists.   |
|Step 3   |Use sonaeqube scan code , check if contains hardcode   |
|Test verdict   |Keys for encrypting sensitive data and transmitting encrypted data cannot be hardcoded in codes. Keys that need to be encrypted must be stored in files or databases.   |