+----------------------------------+----------------------------------+
| Must Authendicate eg users       |                                  |
| successfully                     |                                  |
+==================================+==================================+
| Test case ID                     | EG-TST-SEC-IAM-001               |
+----------------------------------+----------------------------------+
| Test purpose                     | Allown only audendicated eg user |
|                                  | for accessing EG service         |
|                                  |                                  |
|                                  | Effect: +ve                      |
+----------------------------------+----------------------------------+
| Test tool                        | Any HTTP based tool such as Curl |
+----------------------------------+----------------------------------+
| Test description                 | Every micro service eg should be |
|                                  | enabled with proper              |
|                                  | authendication approach such as  |
|                                  | Basic Authendication, password,  |
|                                  | Token based, etc for machine/man |
|                                  | access via HTTP API. Allow       |
|                                  | authendicated user               |
+----------------------------------+----------------------------------+
| Configuration steps              |                                  |
+----------------------------------+----------------------------------+
| Step 1                           | Create eg user with required     |
|                                  | details like AK/SK or            |
|                                  | username/password, etc           |
+----------------------------------+----------------------------------+
| step 2                           | Based on the authendication      |
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
| step 1                           |  Using configured environment    |
|                                  | details, generate the user token |
|                                  | by following login/token API.    |
+----------------------------------+----------------------------------+
| step 2                           |  Perform the given API with      |
|                                  | token generated in step 1        |
+----------------------------------+----------------------------------+
| Test verdict                     | make sure 401 status code is not |
|                                  | reported by the API in response  |
|                                  | http status code.                |
+----------------------------------+----------------------------------+
| References                       | TBD (add reference to eg micro   |
|                                  | service REST API document URL)   |
+----------------------------------+----------------------------------+