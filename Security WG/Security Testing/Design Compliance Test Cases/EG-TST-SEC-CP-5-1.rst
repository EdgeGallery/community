+----------------------------------+----------------------------------+
| Account is locked after multiple |                                  |
| login failure attempt            |                                  |
+==================================+==================================+
| Test case ID                     | EG-TST-SEC-CP-5-1                |
+----------------------------------+----------------------------------+
| Test purpose                     | Account is locked after multiple |
|                                  | login failure attempt            |
|                                  |                                  |
|                                  | Effect: -ve                      |
+----------------------------------+----------------------------------+
| Test tool                        | Any HTTP based tool such as Curl |
+----------------------------------+----------------------------------+
| Test description                 | user mgmt login service should   |
|                                  | not allow failure attempt        |
|                                  | multiple times. then account     |
|                                  | should be locked. with 403       |
+----------------------------------+----------------------------------+
| Test Steps                       |                                  |
+----------------------------------+----------------------------------+
| Step 1                           | Create eg user with required     |
|                                  | details like AK/SK or            |
|                                  | username/password, etc           |
+----------------------------------+----------------------------------+
| step 2                           | Login with proper username       |
|                                  | with invalid password multiple   |
|                                  | times, on 4th attempt onwards    |
|                                  | should lock the user account for |
|                                  | 15 mins (or predefined timeout)  |
+----------------------------------+----------------------------------+
| Test verdict                     | make sure 403 status code is     |
|                                  | reported by the API in response  |
|                                  | http status code.                |
+----------------------------------+----------------------------------+
| References                       | Refer usermgmt API document for  |
|                                  | login api                        |
+----------------------------------+----------------------------------+
