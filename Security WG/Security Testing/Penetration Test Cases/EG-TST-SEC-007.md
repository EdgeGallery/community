# EG-TST-SEC-007



| Test Case ID            | EG-TST-SEC-007                                               |
| :---------------------- | :----------------------------------------------------------- |
| **Test case name**      | **Privilege Escalation Vulnerability**                       |
| Test purpose            | Usually, people refer to vertical escalation when it is possible to access resources granted to more privileged accounts (e.g., acquiring admin privileges for the application), and to horizontal escalation when it is possible to access resources granted to a similarly configured account (e.g., in a Web application, accessing information related to other users). Through privilege escalation penetration test， to check whether the web application has the privilege escalation vulnerability. |
| Test description        | The basic test method is to identify the userID and replace it with the userID of other users(same privilege or high-privilege), and then check whether can get the correct response. |
| Test Mode               | Manual                                                       |
| Test tool               | BurpSuite (hereinafter referred to as "Burp")<br/>Note: It is recommended to use Burp's built-in browser to cooperate with the  browser used by Burp (the capture result is more stable),  the  opening method is: Proxy -> Intercept -> Open Broswer |
| Test tool configuration | Test tool and environment setup description                  |
| config step 1           | Download and install Burp: <br/>Visit [https://portswigger.net/burp/communitydownload to](https://translate.google.com/translate?hl=zh-CN&prev=_t&sl=zh-CN&tl=en&u=https://portswigger.net/burp/communitydownload) and download the Burp community version, and click Install. |
| config step 2           | Import the Burp certificate into the browser: (If you use Burp's built-in browser, you can skip this step) <br/>①Open Burp, use the browser to visit 127.0.0.1:8080, click "CA Certificate"  in the upper right corner of the page, and download the "cacert.der"  certificate file ; <br/>②Enter browser settings -> privacy/security -> certificate -> view certificate, open the certificate manager page, click "Import", and  import the "cacert.der" certificate file. (Please check "Trust this certification authority to identify the website" when importing) |
| config step 3           | Set proxy: (If you use Burp's built-in browser, you can skip this step) <br/>①Set Burp port to 8080 (default); <br/>②Set browser proxy to 127.0.0.1:8080 <br/>Note: Burp can be used when it is not in use or after use Turn off the browser proxy. |
| **Test steps**          | **Test step description and expected result**                |
| Test step 1             | ① Identify whether there is a user login function in the web application (to judge whether there may be horizontal privilege escalation);<br/>Identify whether the web application is divided into high-privileged users and low-privileged users (to judge whether there may be vertical privilege escalation);<br/> |
| Test step 2             | ② Register 2 ordinary user accounts, after registration, check and record their userIDs through the browser F12 "Network" tab;<br/> |
| Test step 3             | ③ Identify scenarios that require userID to be accessed, such as create new projects or file uploads;<br/> |
| Test step 4             | ④ Log in to userA account, perform the operations identified in step 3, and use burp to capture the package, modify the userID of user A to the userID of user B, and then click Burp "Forward" button to continue sending, and check whether you can get the correct response;<br/> |
| Test step 5             | ⑤ Register high-privileged users and low-privileged users. After registration, check and record their userIDs through the browser F12 "Network" tab;<br/> |
| Test step 6             | ⑥ Log in to the low-privileged account, perform the operations identified in step 3, and use Burp to capture the package, change the userID of the low-privileged account to the userID of the high-privileged account, and then click Burp "Forward" button to continue sending, and check whether you can get the correct response;<br/> |
| **Expected result**     | In test step 4: Cannot get the correct response;<br/>In test step 6, Cannot get the correct response(If the Web application privilege han been divided into high-privilege and low-privilege).<br/> |
| References              |                                                              |

