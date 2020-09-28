+----------------------------------+----------------------------------+
| Must Authendicate eg users       |                                  |
| successfully                     |                                  |
+==================================+==================================+
| Test case ID                     | EG-TST-SEC-CP-6-2               |
+----------------------------------+----------------------------------+
| Test purpose                     |                                  |
|                                  |                                  |
|                                  |  Setting the Session/Certificate to a Valid Expiration Time                                |
|                                  |                                  |
+----------------------------------+----------------------------------+
| Test tool                        | N/A |
+----------------------------------+----------------------------------+
| Test description                 | Every micro service eg should be |
|                                  | enabled with proper              |
|                                  | authendication approach such as  |
|                                  | Basic Authendication, password,  |
|                                  | Token based, etc for machine/man |
|                                  | access via HTTP API. Allow       |
|                                  | authendica                       |
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
| References                       | Refer API samples below section  |
+----------------------------------+----------------------------------+


Samples API to Refer
--------------------
As an reference, consider MECM REST API as provided here and for every API, iterate above test cases with required Headers, query params and response body as defined in actual MECM REST API document.

* /apm/v1/tenants/{tenant_id}/packages
* /appo/v1/tenants/{tenant_id}/app_instance_infos
* /appo/v1/tenants/{tenant_id}/app_instances
* /inventory/v1/tenants/{tenant_id}/applcms
* /inventory/v1/tenant/{tenant_id}/appstores
* /inventory/v1/tenant/{tenant_id}/mechosts

NOTE: if any of the API is defined without authendication token header, then it should not be passed by test case unless its required for an usecase.
