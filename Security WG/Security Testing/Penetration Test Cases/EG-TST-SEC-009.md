# EG-TST-SEC-009



| Test Case ID            | EG-TST-SEC-009                                               |
| :---------------------- | :----------------------------------------------------------- |
| **Test case name**      | **Stored-XSS Vulnerability**                                 |
| Test purpose            | Stored-XSS: (stored Cross-Site-Scripting)<br/>The payload of the stored-XSS vulnerability is generally stored in the back-end database. If the user browses the page containing the malicious XSS-payload, the malicious script will be executed, which may cause the user's cookie to be stolen, URL jump and other hazards. <br/>Through the stored-XSS vulnerability penetration test, to check if the Web application has the stored-XSS vulnerability. |
| Test description        | The common scenarios where stored-XSS occurs such as comment areas, message boards, and user information modification. <br/>Submit XSS_payload to the above scenario, and then check if the payloads can be parsed and executed by the browser. |
| Test tool               | Browser                                                      |
| Test tool configuration | Test tool and environment setup description                  |
| config step 1           | N/A                                                          |
| Test Mode               | Manual                                                       |
| **Test steps**          | **Test step description and expected result**                |
| Test step 1             | ① Identify all scenarios where stored-XSS may occur, such as comment area, message board, user information modification, etc.<br/> |
| Test step 2             | ② Submit XSS_payload in the above scenarios, such as "<scirpt>alert(1)</script>", "<img src='' onerror=alert(1)/>", etc.;<br/>Note: After submission, you can view the source code of the front-end page to determine ifr it is necessary to add some closing symbols such as ">" or quotation marks before XSS_payload.<br/> |
| Test step 3             | ③ After submission, try to obtain the XSS_payload just submitted in the above scenario (read XSS_payload from the back-end database), and determine if the obtained XSS_payload can be parsed and executed by the browser (such as a pop-up warning-message-box);<br/>Note: You can combine viewing the source code of the front-end page, to determine if the syntax structure of XSS_payload was escaped.<br/> |
| **Expected result**     | In test step 3: All XSS_payload cannot be parsed and executed.<br/> |
| References              |                                                              |

