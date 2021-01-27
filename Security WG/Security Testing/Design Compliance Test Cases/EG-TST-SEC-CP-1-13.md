# EG-TST-SEC-CP-1-13



| Test Case ID            | EG-TST-SEC-CP-1-13                                           |
| :---------------------- | :----------------------------------------------------------- |
| **Test case name**      | When using a role-based access control mechanism, authorization and user role data must be stored on the server side, and authentication  processing must also be completed on the server side. |
| Test purpose            |                                                              |
| Test description        | It is forbidden to store authorization and role data in the client (such as cookies or hidden fields) to prevent tampering. |
| Test Mode               | Manual                                                       |
| Test tool               |                                                              |
| Test tool configuration | Test tool and environment setup description                  |
| config step 1           |                                                              |
| **Test steps**          | **Test step description and expected result**                |
| Test step 1             | Log in to the system (including ordinary users and admin users) to check whether there is user role data in Local Storage, Session Storage, IndexedDB, WebSQL and other local storage<br/> |
| Test step 2             | Check the source code of the page, whether there is user role data in the hidden field of the form (you can search for the keyword "hidden")<br/> |
| **Expected result**     | In test step 1: User role data does not exist in local storage;<br/>In test step 2: There is no user role data in the hidden field of the form. |
| References              |                                                              |

