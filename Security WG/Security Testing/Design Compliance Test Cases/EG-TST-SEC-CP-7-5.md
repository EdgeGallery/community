# EG-TST-SEC-CP-7-5



| Test Case ID     | EG-TST-SEC-CP-7-5                                            |
| :--------------- | :----------------------------------------------------------- |
| Test case name   | Avoid using cookie data for a security-related decision.     |
| Test purpose     | Attackers can easily modify cookies, within the browser or by  implementing the client-side code outside of the browser. Attackers can  bypass protection mechanisms such as authorization and authentication by modifying the cookie to contain an expected value. |
| Test description |                                                              |
| Test tool        | Burp                                                         |
| Test Mode        | Manual                                                       |
| Test steps       | Test step description and expected result                    |
| Test step 1      | ①Log in to the user account and use Burp to capture the login request at the same time<br/> |
| Test step 2      | ②Make sure that all the contents in the cookie have been deleted, then click "forward" to continue submitting the request, and observe whether the login is successful<br/> |
| Expected result  | In test step 2: login successful<br/>                        |
| References       |                                                              |

