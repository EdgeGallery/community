*********************************************
EdgeGallery Security Compliance Test Case 3-1
*********************************************

+--------------+--------------------------------------------------------------+
|Test case ID  | EG-TST-SEC-CP-3-1                                            |
|              |                                                              |
+--------------+--------------------------------------------------------------+
|Test tool     | Seninfo or sensitive info scan script                        |
|              |                                                              |
|              |                                                              |
+--------------+--------------------------------------------------------------+
|Test          | Check that the system does not store authentication          |
|description   | credentials (including passwords, keys, passwords, etc.) in  |
|              | plain text.                                                  |
|              |                                                              |
+--------------+--------------------------------------------------------------+
|Configuration | Test tool and environment setup description                  |
|steps         |                                                              |
+--------------+--------------------------------------------------------------+
|step 1        | N/A                                                          |
|              |                                                              |
+--------------+--------------------------------------------------------------+
|Test          | Test step description and expected result                    |
|steps         |                                                              |
+--------------+--------------------------------------------------------------+
|step 1        | Use sensitive scan tool or script to scan the MEP/MECM       |
|              | source code                                                  |
|              |                                                              |
+--------------+--------------------------------------------------------------+
|step 2        | The tester analyzes and confirms the scan results to see if  |
|              | the passwords/keys meet the security requirements            |
|              |                                                              |
|              |                                                              |
+--------------+--------------------------------------------------------------+
|step 3        | Examine the mep source code, verify sk is encrypted then     |
|              | stored in the database.                                      |
|              |                                                              |
|              |                                                              |
+--------------+--------------------------------------------------------------+
|step 4        | Use the GUI to instantiate a mec app.                        |
|              | Check the as/sk for the new a mec app instance is stored in  |
|              | the database(encrypted).                                     |
|              |                                                              |
+--------------+--------------------------------------------------------------+
|Test verdict  | Password is not stored in plaintext                          |
|              |                                                              |
|              | Password used in the software installation phase is not      |
|              | bound by this test.                                          |
|              |                                                              |
|              | The plaintext of the authentication credentials in the       |
|              | memory is not bound by this test. Because there are          |
|              | technical constraints, such as the jre garbage collection    |
|              | cycle, the authentication protocol definition and others.    |
|              |                                                              |
+--------------+--------------------------------------------------------------+