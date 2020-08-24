+----------------------------------+----------------------------------+
| Allow super Authorized user      |                                  |
| access                           |                                  |
+==================================+==================================+
| Test case ID                     | EG-TST-SEC-IAM-004               |
+----------------------------------+----------------------------------+
| Test purpose                     | Allow user (who is having more   |
|                                  | access level than required       |
|                                  | level, e.g admin accessing       |
|                                  | user’s resource) to access only  |
|                                  | permitted Guard EG service’s     |
|                                  | operation.                       |
|                                  |                                  |
|                                  | Effect: +ve                      |
+----------------------------------+----------------------------------+
| Test tool                        | Any HTTP based tool such as Curl |
+----------------------------------+----------------------------------+
| Test description                 | Every micro service eg should be |
|                                  | enabled with proper              |
|                                  | authorization to make sure the   |
|                                  | eg resource’s access is allowed  |
|                                  | ONLY based on the authorization  |
|                                  | level, which current user has.   |
+----------------------------------+----------------------------------+
| Configuration steps              |                                  |
+----------------------------------+----------------------------------+
| step 1                           | Create user with higher (more    |
|                                  | than required) access rights     |
|                                  | like RBAC, etc. which is         |
|                                  | required for performing given    |
|                                  | API in Test steps                |
+----------------------------------+----------------------------------+
| Step 2                           | Based on the authendication      |
|                                  | approach, configuration to be    |
|                                  | enabled in test tools            |
|                                  | environment for generating the   |
|                                  | required token, such as          |
|                                  | username, password, and          |
|                                  | additional configurations such   |
|                                  | as AK, SK, etc.                  |
+----------------------------------+----------------------------------+
| Test steps                       | For Each of the API supported in |
|                                  | eg service, following steps are  |
|                                  | expected to tested and verify    |
|                                  | the result                       |
+----------------------------------+----------------------------------+
| step 1                           | Using configured environment     |
|                                  | details, generate the user token |
|                                  | by following login/token API.    |
+----------------------------------+----------------------------------+
| step 2                           |  Perform the given API with      |
|                                  | token generated in step 1        |
+----------------------------------+----------------------------------+
| Test verdict                     | make sure 403 status code is not |
|                                  | reported by the API in response  |
|                                  | http status code                 |
+----------------------------------+----------------------------------+
| References                       | TBD (add reference to eg micro   |
|                                  | service REST API document URL)   |
+----------------------------------+----------------------------------+