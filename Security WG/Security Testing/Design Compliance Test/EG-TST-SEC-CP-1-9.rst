+----------------------------------+----------------------------------+
| Password should be super complex |                                  |
+==================================+==================================+
| Test case ID                     | EG-TST-SEC-CP-1-9                |
+----------------------------------+----------------------------------+
| Test purpose                     | Password should include          |
|                                  | different complexity to avoid    |
|                                  | attackers.                       |
|                                  |                                  |
|                                  | Effect: +ve                      |
+----------------------------------+----------------------------------+
| Test tool                        |                                  |
+----------------------------------+----------------------------------+
| Test description                 | Verify the user's password       |
|                                  | complexity to include predefined |
|                                  | policies such as including       |
|                                  | special char, alphanumeric       |
|                                  | letters                          |
+----------------------------------+----------------------------------+
| Configuration steps              |                                  |
+----------------------------------+----------------------------------+
| step 1                           | Create a user                    |
+----------------------------------+----------------------------------+
| Test steps                       |                                  |
+----------------------------------+----------------------------------+
| step 1                           | Set the user's password with all |
|                                  | defined policies and length      |
+----------------------------------+----------------------------------+
| Test verdict                     | make sure 200 status code is     |
|                                  | reported by the API in response  |
|                                  | http status code                 |
+----------------------------------+----------------------------------+
| References                       | TBD (add reference to eg micro   |
|                                  | service password reset API)      |
+----------------------------------+----------------------------------+