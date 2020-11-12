# EG-TST-SEC-006



| Test Case ID            | EG-TST-SEC-006                                               |
| :---------------------- | :----------------------------------------------------------- |
| **Test case name**      |  **Replay Attack Vulnerability**                                   |
| Test purpose            | The tester simulates the attacker to resend the request that the server has received, and then check if the request is correctly responded. If it can be responded correctly, it may be exploited by attackers to cause user identity disguise, DOS attack and other harm. |
| Test description        | The two most likely functions for replay attacks:<br/>① User login;<br/>② File upload;<br/>This test case will test the above two functions separately. |
| Test tool               | BurpSuite (hereinafter referred to as "Burp")<br/>Note: It is recommended to use Burp's built-in browser to cooperate with the  browser used by Burp (the capture result is more stable),  the  opening method is: Proxy -> Intercept -> Open Broswer |
| Test tool configuration | Test tool and environment setup description                  |
| config step 1           | Download and install Burp: <br/>Visit [https://portswigger.net/burp/communitydownload to](https://translate.google.com/translate?hl=zh-CN&prev=_t&sl=zh-CN&tl=en&u=https://portswigger.net/burp/communitydownload) and download the Burp community version, and click Install. |
| config step 2           | Import the Burp certificate into the browser: (If you use Burp's built-in browser, you can skip this step) <br/>①Open Burp, use the browser to visit 127.0.0.1:8080, click "CA Certificate"  in the upper right corner of the page, and download the "cacert.der"  certificate file ; <br/>②Enter browser settings -> privacy/security -> certificate -> view certificate, open the certificate manager page, click "Import", and  import the "cacert.der" certificate file. (Please check "Trust this certification authority to identify the website" when importing) |
| config step 3           | Set proxy: (If you use Burp's built-in browser, you can skip this step) <br/>①Set Burp port to 8080 (default); <br/>②Set browser proxy to 127.0.0.1:8080 <br/>Note: Burp can be used when it is not in use or after use Turn off the browser proxy. |
| Test Mode               | Manual                                                       |
| **Test steps**          | **Test step description and expected result**                |
| Test step 1             | ①Start Burp, log in to the account through the browser, use Burp to capture package, and send the captured login request to the "Repeater" module;<br/> |
| Test step 2             | ②Log out in the browser, and then visit the url after logging in, and it will be redirected to the login page; (Indicating that the logout is successful)<br/> |
| Test step 3             | ③Log in to the account again through the browser, use Burp to intercept the login package, and replace the message content of the login request with the content saved by the Repeater module in test step 1, and then click Burp "forward" button to send;<br/> |
| Test step 4             | ④Use browser to access the url after login, and check if the login is successful;<br/> |
| Test step 5             | ⑤Start Burp, log in to account through the browser, click the "upload" function, fill in the information required for upload, click upload, and use Burp to capture the request package;<br/> |
| Test step 6             | ⑥Send the captured request package to the "Repeater" module, and click "Send" button several times to recend the package repeatedly, and check if the sent request is effective<br/>Note: When sending repeatedly, you can modify the basic content (such as the file name) to avoid uploading failures caused by the same upload file.<br/> |
| **Expected result**     | In test step 4: login failed;<br/>In test step 6: The repeated request does not take effect.<br/> |
| References              |                                                              |

