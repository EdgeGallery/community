# EG-TST-SEC-011



| Test Case ID            | EG-TST-SEC-011                                               |
| :---------------------- | :----------------------------------------------------------- |
| **Test case name**      | **URL Redirect vulnerability**                               |
| Test purpose            | If server does not check and filter the incoming redirect url variable(the incoming may be controled by attacker), which may cause the attacker to create a malicious url and induce the user to jump to the malicious website.<br/>Through the URL redirect vulnerability test, to avoid web applications from URL redirect attacks. |
| Test description        | The basic test method is to identify the scenario of url redirection, and then modify the redirect url variable and check if it can be executed successfully. |
| Test tool               | Browser                                                      |
| Test tool configuration | Test tool and environment setup description                  |
| config step 1           | N/A                                                          |
| Test Mode               | Manual                                                       |
| **Test steps**          | **Test step description and expected result**                |
| Test step 1             | ① Identify the url where the url jump occurs, the url structure is similar to "https://x.x.x.x/?jumpto=https://x.x.x.x";<br/> |
| Test step 2             | ② Modify the redirect parameters. for example, modify the url to "https://x.x.x.x/?jumpto=https://www.baidu.com";<br/>Submit the url and check if the page can jump to the modified page.<br/> |
| **Expected result**     | In test step 2: The page cannot jump to the modified page.<br/> |
| References              |                                                              |

