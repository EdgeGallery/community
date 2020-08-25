*********************************************
EdgeGallery Security Compliance Test Case 3-3
*********************************************

+--------------+--------------------------------------------------------------+
|Test case ID  | EG-TST-SEC-CP-3-3                                            |
|              |                                                              |
+--------------+--------------------------------------------------------------+
|Test tool     | Postman                                                      |
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
|              | information, such as: forgot/reset password interface, user  |
|              | registrartion interface, check whether there is sensitive    |
|              | information in plaintext, including: plaintext or ciphertext |
|              | of password, key, bank account number, session ID, etc. in   |
|              | the URL.                                                     |
|              |                                                              |
|              | Target GUI URLs:                                             |
|              | -                                                            |
|              | -                                                            |
|              |                                                              |
+--------------+--------------------------------------------------------------+
|step 2        | Test applcm ak/sk config API                                 |
|              |                                                              |
|              | PUT /mec/v1/applcm/app_instance/{app_instance_id}/confs      |
|              |                                                              |
|              | with example body:                                           |
|              |                                                              |
|              | ``{``                                                        |
|              |                                                              |
|              |    ``"authInfo":{``                                          |
|              |                                                              |
|              |       `` "credentials":{``                                   |
|              |                                                              |
|              | ``           "accessKeyId":"QVUJMSUMgS0VZLS0tLS0",``         |
|              |                                                              |
|              | ``           "secretKey":"DXPb4sE1KhcHe07Kw5uorayETwId1JOj`` |
|              |                                                              |
|              |                         ``jOIRomRs5wyszoCR5R7AtVa28KT31Sc"   |
|              |                                                              |
|              | ``        }``                                                |
|              |                                                              |
|              | ``    }``                                                    |
|              |                                                              |
|              | `` }``                                                       |
|              |                                                              |
+--------------+--------------------------------------------------------------+
|step 3        | For the error information returned by the application, check |
|              | whether there is any sensitive information in plaintext,     |
|              | including: plaintext or ciphertext of password, key, bank    |
|              | account number, session ID, etc.                             |
|              |                                                              |
|              | Error info can be generated by providing illegal input in    |
|              | the GUI interfaces. Such as:                                 |
|              |                                                              |
|              | incorrect SMS verification code                              |
|              |                                                              |
+--------------+--------------------------------------------------------------+
|Test verdict  | Define the expected result when this test case FAIL and PASS |
|              |                                                              |
|              |                                                              |
+--------------+--------------------------------------------------------------+