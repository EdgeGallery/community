+----------------------------------+----------------------------------+
| Password should be super complex |                                  |
+==================================+==================================+
| Test case ID                     | EG-TST-SEC-CP-1-10               |
+----------------------------------+----------------------------------+
| Test purpose                     | Password should include          |
|                                  | different complexity to avoid    |
|                                  | attackers.                       |
|                                  |                                  |
|                                  | Effect: -ve                      |
+----------------------------------+----------------------------------+
| Test tool                        |                                  |
+----------------------------------+----------------------------------+
| Test description                 | Verify when user’s password     |
|                                  | complexity is not met, system    |
|                                  | failed the request for password  |
|                                  | update                           |
+----------------------------------+----------------------------------+
| Configuration steps              |                                  |
+----------------------------------+----------------------------------+
| step 1                           | Create a user with proper        |
|                                  | password with allowed policies   |
|                                  | format                           |
+----------------------------------+----------------------------------+
| Test steps                       |                                  |
+----------------------------------+----------------------------------+
| step 1                           | Set the user’s password with    |
|                                  | violating characters or length   |
+----------------------------------+----------------------------------+
| Test verdict                     | make sure 400 status code is     |
|                                  | reported by the API in response  |
|                                  | http status code                 |
+----------------------------------+----------------------------------+
| References                       | TBD (add reference to eg micro   |
|                                  | service password reset API)      |
+----------------------------------+----------------------------------+