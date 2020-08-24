+----------------------------------+----------------------------------+
| Forgot password should include   |                                  |
| verification methods             |                                  |
+==================================+==================================+
| Test case ID                     | EG-TST-SEC-IAM-011               |
+----------------------------------+----------------------------------+
| Test purpose                     | When password is required to     |
|                                  | reset dueto forgotton password,  |
|                                  | user should be verified with old |
|                                  | password, etc                    |
|                                  |                                  |
|                                  | Effect: +ve                      |
|                                  |                                  |
|                                  | NOTE: Same is applicable if      |
|                                  | verify code is used in place of  |
|                                  | current password                 |
+----------------------------------+----------------------------------+
| Test tool                        |                                  |
+----------------------------------+----------------------------------+
| Test description                 | Verify the password reset API    |
|                                  | weather it asks for old password |
+----------------------------------+----------------------------------+
| Configuration steps              |                                  |
+----------------------------------+----------------------------------+
| step 1                           | Create a user with proper        |
|                                  | password with allowed policies   |
|                                  | format                           |
+----------------------------------+----------------------------------+
| Test steps                       |                                  |
+----------------------------------+----------------------------------+
| step 1                           | Run the reset password API and   |
|                                  | verify that it checks for        |
|                                  | current password validity before |
|                                  | checking the new password        |
|                                  | setting                          |
+----------------------------------+----------------------------------+
| Test verdict                     | make sure 403 status code is     |
|                                  | reported by the API in response  |
|                                  | http status code when wrong      |
|                                  | current password is provided.    |
+----------------------------------+----------------------------------+
| References                       | TBD (add reference to eg micro   |
|                                  | service forgot password API)     |
+----------------------------------+----------------------------------+