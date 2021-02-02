# EG-TST-SEC-013



| Test Case ID            | EG-TST-SEC-013                                               |
| :---------------------- | :----------------------------------------------------------- |
| **Test case name**      | **Brute Force of Login Interface**                           |
| Test purpose            | Through brute force, to test ① weak passwords that may exist in the application; ② whether the application has anti-brute force cracking mechanisms (such as locking users, blocking ips, etc.) |
| Test description        |                                                              |
| Test Mode               | Manual                                                       |
| Test tool               | BurpSuite (hereinafter referred to as "Burp")<br/>Note: It is recommended to use Burp's built-in browser to cooperate with the  browser used by  Burp (the capture result is more stable),  the  opening method is: Proxy -> Intercept -> Open Broswer |
| Test tool configuration | Test tool and environment setup description                  |
| config step 1           | Download and install Burp: <br/>Visit [https://portswigger.net/burp/communitydownload to](https://translate.google.com/translate?hl=zh-CN&prev=_t&sl=zh-CN&tl=en&u=https://portswigger.net/burp/communitydownload) and download the Burp community version, and click Install. |
| config step 2           | Import the Burp certificate into the browser: (If you use Burp's built-in browser, you can skip this step) <br/>①Open Burp, use the browser to visit 127.0.0.1:8080, click "CA Certificate"   in the upper right corner of the page, and download the "cacert.der"   certificate file ; <br/>②Enter browser settings -> privacy/security  -> certificate -> view certificate, open the certificate manager  page, click "Import", and  import the "cacert.der" certificate file.  (Please check "Trust this certification authority to identify the  website" when importing) |
| config step 3           | Set proxy: (If you use Burp's built-in browser, you can skip this step) <br/>①Set Burp port to 8080 (default); <br/>②Set browser proxy to 127.0.0.1:8080 <br/>Note: Burp can be used when it is not in use or after use Turn off the browser proxy. |
| **Test steps**          | **Test step description and expected result**                |
| Test step 1             | ①Start Burp，log in to the account through the browser, enter "admin" in the username box, and enter any words in password box，use Burp to capture package, and send the captured login request to the "Intruder" module;<br/> |
| Test step 2             | ②Click “Intruder” module to set:<br/>a) Under the "Positions" tab, set "Attack type" to "Sniper";<br/>b) Under the "Position" tab, only set the password content as variable, and cancel the variable setting of other contents;<br/>c) Under the "Payloads" tab, set "Payload set" to "1", and set "Payload type" to "Simple list";<br/>d) Under the "Payloads" tab, click the "Load" button in the "Payload Options" option to load a weak-password dictionary;<br/> |
| Test step 3             | ③Click the "Start Attack" button, to start brute force cracking<br/> |
| **Expected result**     | In test step 3: After sending numbers of payloads (usually a few to dozens), the server returns the status code from 200/401 to 403/423, and the brute force cracking cannot be continued.<br/> |
| References              |                                                              |

