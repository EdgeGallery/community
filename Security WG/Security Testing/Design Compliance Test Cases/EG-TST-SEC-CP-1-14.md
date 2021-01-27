# EG-TST-SEC-CP-1-14



| Test Case ID            | EG-TST-SEC-CP-1-14                                           |
| :---------------------- | :----------------------------------------------------------- |
| **Test case name**      | The contents in the password box cannot be displayed and copied/cut out, and the password field should disable autocomplete. |
| Test purpose            |                                                              |
| Test description        | The password cannot be copied/cut out, otherwise it is easy to cause the leakage of password information. Browsers have the ability to  automatically save user input data and auto-fill data, in order to  ensure the security of user names and passwords, the auto-fill function  must be turned off. |
| Test Mode               | Manual                                                       |
| Test tool               |                                                              |
| Test tool configuration | Test tool and environment setup description                  |
| config step 1           |                                                              |
| **Test steps**          | **Test step description and expected result**                |
| Test step 1             | Try to copy/cut out the contents of the password box, and check whether  the input type is password: < input type="password"><br/> |
| Test step 2             | When entering the password, check whether there is an auto-fill  function, and check whether the input parameter is < input  autocomplete="off"><br/> |
| **Expected result**     | In test step 1: Cannot copy/cut out the contents of the password box，and the input type is password：< input type="password"><br/>In test step 2: The auto-fill function is not prompted when entering the password, and the input parameter is < input autocomplete="off"> |
| References              |                                                              |

