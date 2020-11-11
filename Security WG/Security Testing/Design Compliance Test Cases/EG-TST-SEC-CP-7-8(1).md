# EG-TST-SEC-CP-7-8



| Test Case ID     | EG-TST-SEC-CP-7-8                                            |
| :--------------- | :----------------------------------------------------------- |
| Test case name   | Test whether the session attributes are properly set.        |
| Test purpose     | The application should use each attribute correctly, such as security  attributes; httpOnly attributes; path attributes; expired attributes; |
| Test description | The function of each cookie attribute:<br/>Secure: After setting, cookies can only be passed through https;<br/>HttpOnly: Disable JavaScript to obtain cookies after setting;<br/>Path: The path of the page where this cookie can be accessed;<br/>Expires/Max-Age: Configure the cookie timeout period. The default is session. |
| Test tool        | Browser                                                      |
| Test Mode        | Manual                                                       |
| Test steps       | Test step description and expected result                    |
| Test step 1      | ①Log in to user account;<br/>                                |
| Test step 2      | ②Use the browser F12 to view "Network" tab, find the server's response when logging in, and check whether the "Set-Cookie" header in the response header has "Secure" and "HttpOnly" attributes; |
| Test step 3      | ③After logging in, use the browser F12 to check the cookie and check whether the "secure" and "HttpOnly" attributes are "true". |
| Expected result  | In test step 2: "Set-Cookie" response header token has Secure attributes, session has Secure and HttpOnly attributes;<br/>In test step 3: "secure" and "HttpOnly" attributes are both "true". |
| References       |                                                              |

