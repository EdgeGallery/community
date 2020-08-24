+---------------------------+-----------------------------------------+
| Do not allow invalid data |                                         |
+===========================+=========================================+
| Test case ID              | EG-TST-SEC-IAM-007                      |
+---------------------------+-----------------------------------------+
| Test purpose              | Verify the eg service API to make sure  |
|                           | it does not allow invalid data which    |
|                           | violates required format and allowed    |
|                           | values.                                 |
|                           |                                         |
|                           | Effect: -ve                             |
+---------------------------+-----------------------------------------+
| Test tool                 | Any HTTP based tool such as Curl        |
+---------------------------+-----------------------------------------+
| Test description          | Every micro service eg should be        |
|                           | enabled with proper validation of API   |
|                           | request data to make it does not        |
|                           | allowed for parameter injection, SQL    |
|                           | injection, command injection related    |
|                           | attacks.                                |
+---------------------------+-----------------------------------------+
| Configuration steps       |                                         |
+---------------------------+-----------------------------------------+
| step 1                    | Create user with required access rights |
|                           | like RBAC, etc. which is required for   |
|                           | performing given API in Test steps      |
+---------------------------+-----------------------------------------+
| Step 2                    | Based on the authendication approach,   |
|                           | configuration to be enabled in test     |
|                           | tools environment for generating the    |
|                           | required token, such as username,       |
|                           | password, and additional configurations |
|                           | such as AK, SK, etc.                    |
+---------------------------+-----------------------------------------+
| Test steps                | For Each of the API supported in eg     |
|                           | service, following steps are expected   |
|                           | to tested and verify the result         |
+---------------------------+-----------------------------------------+
| step 1                    | Using configured environment details,   |
|                           | generate the user token by following    |
|                           | login/token API.                        |
+---------------------------+-----------------------------------------+
| step 2                    |  Perform the given API with token       |
|                           | generated in step 1 and input invalid   |
|                           | input parameters in all aspects         |
|                           | includes query params, request body and |
|                           | request headers                         |
+---------------------------+-----------------------------------------+
| Test verdict              | make sure 400 status code is not        |
|                           | reported by the API in response http    |
|                           | status code                             |
|                           |                                         |
|                           | NOTE: Make sure the reported error      |
|                           | message in response does not reveal the |
|                           | secured information.                    |
+---------------------------+-----------------------------------------+
| References                | TBD (add reference to eg micro service  |
|                           | REST API document URL)                  |
+---------------------------+-----------------------------------------+