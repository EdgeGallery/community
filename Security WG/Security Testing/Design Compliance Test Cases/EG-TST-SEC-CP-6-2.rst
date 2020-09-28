*********************************************
EdgeGallery Security Compliance Test Case 6-2
*********************************************

+--------------+--------------------------------------------------------------+
|Test case ID  | EG-TST-SEC-CP-6-2                                            |
|              |                                                              |
+--------------+--------------------------------------------------------------+
|Test tool     | N/A                                                          |
|              |                                                              |
|              |                                                              |
+--------------+--------------------------------------------------------------+
|Test          | Check whether a mechanism exists for re-login after the      |
|description   | browser window times out                                     |
|              |                                                              |
+--------------+--------------------------------------------------------------+
|Configuration | 1. Known website address <br>                                   |
|steps         | 2. Web services are running properly.                        |
|              | 3. The login authentication module is available for web      |
|              | services.                                                    |
|              | 4. The user name and password are always correct.            |
|              |                                                              |
|              |                                                              |
+--------------+--------------------------------------------------------------+
|step 1        | N/A                                                          |
|              |                                                              |
|              |                                                              |
+--------------+--------------------------------------------------------------+
|Test          | Test step description and expected result                    |
|steps         |                                                              |
+--------------+--------------------------------------------------------------+
|step 1        |   Log in to the system using a normal user name and password.                                                           |
|              |                                                              |
|              |                                                              |
+--------------+--------------------------------------------------------------+
|step 2        |Increase the idle time of the browser window (11 minutes)<br> by one minute.
Note: Currently, the validity period is one day.                                                             |
|              |                                                              |
|              |                                                              |
+--------------+--------------------------------------------------------------+
|step 3        |                                                              |
|              |                                                              |
|              |                                                              |
+--------------+--------------------------------------------------------------+
|Test verdict  | Persona data transfer should only allowed when data          |
|              | subjects' consent and authorization is obtained.             |
|              |                                                              |
+--------------+--------------------------------------------------------------+