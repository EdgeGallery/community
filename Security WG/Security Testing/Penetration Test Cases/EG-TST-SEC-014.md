# EG-TST-SEC-014



| Test Case ID            | EG-TST-SEC-014                                               |
| :---------------------- | :----------------------------------------------------------- |
| **Test case name**      | **Authentication Bypass**                                    |
| Test purpose            | Through the authentication bypass test, to check whether the application authentication function is at risk of being bypassed, and check whether the login page has SQL-injection vulnerabilities. |
| Test description        | Test the following:<br/>①Whether can skip the authentication to visit the post-authentication page;<br/>②Whether can bypass the authentication logic. |
| Test Mode               | Manual                                                       |
| Test tool               |                                                              |
| Test tool configuration | Test tool and environment setup description                  |
| config step 1           |                                                              |
| **Test steps**          | **Test step description and expected result**                |
| Test step 1             | ① Directly visit a page that must be authenticated without logging in.<br/> |
| Test step 2             | ②On the login page, enter "admin" in the username box<br/>   |
| Test step 3             | ③On the login page, enter the following payloads in the password box, and try to log in：<br/>a) admin' or '1'='1<br/>b) admin" or "1"="1<br/>c) ' or 1=1-- -<br/>d) ' or 1=1#<br/>e) admin) or (1=1<br/>f) admin") or ("1"="1<br/>g) " or 1-- - |
| **Expected result**     | In test step 1: Cannot access the webpage;<br/>In test step 2: All the Payloads were login failed。 |
| References              |                                                              |

