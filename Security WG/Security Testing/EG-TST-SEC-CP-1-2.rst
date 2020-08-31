+----------------------------------+----------------------------------+
| Must unauthedicate unknown eg    |                                  |
| user                             |                                  |
+==================================+==================================+
| Test case ID                     | EG-TST-SEC-CP-1-2                |
+----------------------------------+----------------------------------+
| Test purpose                     | Reject access to EG service from |
|                                  | unknown eg user.                 |
|                                  |                                  |
|                                  | Effect: -ve                      |
+----------------------------------+----------------------------------+
| Test tool                        | Any HTTP based tool such as Curl |
+----------------------------------+----------------------------------+
| Test description                 | Every micro service eg should be |
|                                  | enabled with proper              |
|                                  | authendication approach such as  |
|                                  | Basic Authendication, password,  |
|                                  | Token based, etc for machine/man |
|                                  | access via HTTP API. Don’t Allow |
|                                  | unauthendicated user.            |
+----------------------------------+----------------------------------+
| Configuration steps              |                                  |
+----------------------------------+----------------------------------+
| Step 1                           | NA                               |
+----------------------------------+----------------------------------+
| Test steps                       | For Each of the API supported in |
|                                  | eg service, following steps are  |
|                                  | expected to tested and verify    |
|                                  | the result                       |
+----------------------------------+----------------------------------+
| step 1                           |  Generate random invalid token   |
|                                  | in supported format              |
+----------------------------------+----------------------------------+
| step 2                           |  Perform the given API with      |
|                                  | token generated in step 1        |
+----------------------------------+----------------------------------+
| Test verdict                     | make sure 401 status code is     |
|                                  | reported by the API in response  |
|                                  | http status code.                |
|                                  |                                  |
|                                  | NOTE: Make sure the reported     |
|                                  | error message in response does   |
|                                  | not reveal the secured           |
|                                  | information.                     |
+----------------------------------+----------------------------------+
| References                       | TBD (add reference to eg micro   |
|                                  | service REST API document URL)   |
+----------------------------------+----------------------------------+