*********************************************
EdgeGallery Security Compliance Test Case 3-2
*********************************************

+--------------+--------------------------------------------------------------+
|Test case ID  | EG-TST-SEC-CP-3-2                                            |
|              |                                                              |
+--------------+--------------------------------------------------------------+
|Test tool     | N/A                                                          |
|              |                                                              |
|              |                                                              |
+--------------+--------------------------------------------------------------+
|Test          | Check that passwords are stored in proper locations          |
|description   |                                                              |
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
|step 1        | Log into the database with credentials                       |
|              |                                                              |
|              | The credentials can be found in the EdgeGallery Kubernetes   |
|              | deployment manifests                                         |
+--------------+--------------------------------------------------------------+
|step 2        | Verify that user passwords/sk are stored in the database in  |
|              | encrypted form                                               |
|              |                                                              |
|              |                                                              |
+--------------+--------------------------------------------------------------+
|step 3        | Scan the source code to verify that no password is           |
|              | hard-coded                                                   |
|              |                                                              |
+--------------+--------------------------------------------------------------+
|Test verdict  | User passwords/sk are securely encrypted and stored in the   |
|              | database                                                     |
|              |                                                              |
+--------------+--------------------------------------------------------------+