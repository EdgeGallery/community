*********************************************
EdgeGallery Security Compliance Test Case 2-1
*********************************************

+--------------+--------------------------------------------------------------+
|Test case ID  | EG-TST-SEC-CP-2-1                                            |
|              |                                                              |
+--------------+--------------------------------------------------------------+
|Test tool     | N/A                                                          |
|              |                                                              |
|              |                                                              |
+--------------+--------------------------------------------------------------+
|Test          | Check that data is encrypted before transmitted across       |
|description   | networks.                                                    |
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
|step 1        | List and evaluate all encrypted transmission scenarios and   |
|              | check if there are omissive scenarios.                       |
|              |                                                              |
|              | 1. User registration                                         |
|              |    URL: https://x.x.x.x |
|              |       |
|              |                                                       |
|              | 2. App download                                              |
|              |    URL: https://x.x.x.x      |
|              | 3. Plugin upload                                             |
|              |    URL: https://x.x.x.x           |
|              |                                   |
+--------------+--------------------------------------------------------------+
|step 2        | Scan the source code or search with keywords to check that   |
|              | there is no hard-coded key in the source code.               |
|              |                                                              |
+--------------+--------------------------------------------------------------+
|Test verdict  | The key configured in the deployment scripts during the      |
|              | installation phase is not bound by this test.                |
|              |                                                              |
+--------------+--------------------------------------------------------------+