# EG-TST-SEC-CP-7-9



| Test Case ID            | EG-TST-SEC-CP-7-9                                            |
| :---------------------- | :----------------------------------------------------------- |
| **Test case name**      | Web pages must provide logout options. On Logout servers must clear  using session information. After a user closes a browser (not by  clicking the Logout button on the webpage), the server can keep the session only until it times out or immediately and clear the session. |
| Test purpose            |                                                              |
| Test description        |                                                              |
| Test Mode               | Manual                                                       |
| Test tool               |                                                              |
| Test tool configuration | Test tool and environment setup description                  |
| config step 1           |                                                              |
| **Test steps**          | **Test step description and expected result**                |
| Test step 1             | Check whether there is a "logout" function on the webpage and whether to log out the session immediately after clicking<br/> |
| Test step 2             | Login to the system，close the browser(not by  clicking the Logout button on the webpage)，and open the browser immediately to visit the webpage;<br/> |
| Test step 3             | Login to the system，close the browser(not by  clicking the Logout button on the webpage)，and wait for the session time-out ,then open the browser to visit the webpage.<br/> |
| **Expected result**     | In test step 1：There is a "logout" function on the webpage，the sesison will be log out immediately after clicking；<br/>In test step 2：Can hold the login status；<br/>In test step 3：The login status has been logged out, need to log in again。 |
| References              |                                                              |

