*********************************************
EdgeGallery Security Compliance Test Case 3-3
*********************************************

+--------------+--------------------------------------------------------------+
|Test case ID  | EG-TST-SEC-CP-3-3                                            |
|              |                                                              |
+--------------+--------------------------------------------------------------+
|Test tool     | N/A                                                          |
|              |                                                              |
|              |                                                              |
+--------------+--------------------------------------------------------------+
|Test          | Check that URL parameters are never used to send sensitive   |
|description   | data                                                         |
|              |                                                              |
+--------------+--------------------------------------------------------------+
|Configuration | Test tool and environment setup description                  |
|steps         |                                                              |
+--------------+--------------------------------------------------------------+
|step 1        | N/A                                                          |
|              |                                                              |
|              |                                                              |
+--------------+--------------------------------------------------------------+
|Test          | Test step description and expected result                    |
|steps         |                                                              |
+--------------+--------------------------------------------------------------+
|step 1        | For GUI interfaces related to password/key/personal          |
|              | information, check whether there is sensitive information in |
|              | plaintext, including: plaintext or ciphertext of password,   |
|              | key, bank account number, session ID, etc. in the URL        |
|              |                                                              |
|              | Target GUI URLs:                                             |
|              |                                                              |
+--------------+--------------------------------------------------------------+
|step 2        | For the error information returned by the application, check |
|              | whether there is any sensitive information in plaintext,     |
|              | including: plaintext or ciphertext of password, key, bank    |
|              | account number, session ID, etc.                             |
|              |                                                              |
|              |                                                              |
+--------------+--------------------------------------------------------------+
|step 3        |                                                              |
|              |                                                              |
|              |                                                              |
+--------------+--------------------------------------------------------------+
|Test verdict  | Define the expected result when this test case FAIL and PASS |
|              |                                                              |
|              |                                                              |
+--------------+--------------------------------------------------------------+