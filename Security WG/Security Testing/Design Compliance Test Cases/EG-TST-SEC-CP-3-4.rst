*********************************************
EdgeGallery Security Compliance Test Case 3-4
*********************************************

+--------------+--------------------------------------------------------------+
|Test case ID  | EG-TST-SEC-CP-3-4                                            |
|              |                                                              |
+--------------+--------------------------------------------------------------+
|Test tool     | N/A                                                          |
|              |                                                              |
|              |                                                              |
+--------------+--------------------------------------------------------------+
|Test          | Check that data subjects' consent and authorization is       |
|description   | obtained for personal data collection.                       |
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
|step 1        | List all scenarios that have functions for collecting        |
|              | personal data.                                               |
|              |                                                              |
|              | For R2, only user's mobile number, company, email address    |
|              | and gender are collected during user registration.           |
|              |                                                              |
|              | Try to create a new user account by visiting the user        |
|              | registration interface.                                      |
|              |                                                              |
|              | User registration URL: https://x.x.x.x                       |
|              |                                                              |
|              |                                                              |
|              |                                                              |
+--------------+--------------------------------------------------------------+
|step 2        | Fill in the use info without agreeing the privacy policy.    |
|              |                                                              |
|              | Click the 'create' button and verify user account creation   |
|              | failed.                                                      |
|              |                                                              |
+--------------+--------------------------------------------------------------+
|step 3        | Evaluate the privacy policy, the personal data collected     |
|              | should be stated in the privacy statement.                   |
|              |                                                              |
|              | Agree the privacy policy and click the 'create' button and   |
|              | verify user account creation succeed.                        |
|              |                                                              |
+--------------+--------------------------------------------------------------+
|Test verdict  | User registration should only allowed when data subjects'    |
|              | consent and authorization is obtained for personal data      |
|              | collection.                                                  |
|              |                                                              |
+--------------+--------------------------------------------------------------+