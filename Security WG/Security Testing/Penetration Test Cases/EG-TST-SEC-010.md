# EG-TST-SEC-010



| Test Case ID            | EG-TST-SEC-010                                               |
| :---------------------- | :----------------------------------------------------------- |
| **Test case name**      | **CSRF Vulnerability**                                       |
| Test purpose            | CSRF(Cross-site request forgery):It is an attack method that induces users to use their legal identity to perform unintentional operations on the logged-in Web application.<br/>Through the CSRF penetration test, to ensure that the web application does not have CSRF vulnerabilities. |
| Test description        | In some impotrant user oparations，use Burp to capture the package， delete referer，token imformation, and then observe if the request will be executed. |
| Test tool               | BurpSuite (hereinafter referred to as "Burp")<br/>Note: It is recommended to use Burp's built-in browser to cooperate with the  browser used by Burp (the capture result is more stable),  the  opening method is: Proxy -> Intercept -> Open Broswer |
| Test tool configuration | Test tool and environment setup description                  |
| config step 1           | Download and install Burp: <br/>Visit [https://portswigger.net/burp/communitydownload to](https://translate.google.com/translate?hl=zh-CN&prev=_t&sl=zh-CN&tl=en&u=https://portswigger.net/burp/communitydownload) and download the Burp community version, and click Install. |
| config step 2           | Import the Burp certificate into the browser: (If you use Burp's built-in browser, you can skip this step) <br/>①Open Burp, use the browser to visit 127.0.0.1:8080, click "CA Certificate"  in the upper right corner of the page, and download the "cacert.der"  certificate file ; <br/>②Enter browser settings -> privacy/security -> certificate -> view certificate, open the certificate manager page, click "Import", and  import the "cacert.der" certificate file. (Please check "Trust this certification authority to identify the website" when importing) |
| config step 3           | Set proxy: (If you use Burp's built-in browser, you can skip this step) <br/>①Set Burp port to 8080 (default); <br/>②Set browser proxy to 127.0.0.1:8080 <br/>Note: Burp can be used when it is not in use or after use Turn off the browser proxy. |
| Test Mode               | Manual                                                       |
| **Test steps**          | **Test step description and expected result**                |
| Test step 1             | ① Identify important user operation scenarios, such as creating new projects, deleting projects, etc.<br/> |
| Test step 2             | ② Start Burp, log in to the account through the browser, use Burp to capture the request package in the above scenarios;<br/> |
| Test step 3             | ③ Delete the "Referer" or "Origin" request header, and click "Forward" button to continue sending, to check whether you can get the correct response;<br/> |
| Test step 4             | ④ Repeat test step 2, capture the request package, and check whether there are two same "token" values in the request; |
| Test step 5             | ⑤ Delete one of the token values, and click "Forward" button to continue sending, to check whether you can get the correct response; |
| **Expected result**     | In test step 3: Cannot get the correct response;<br/>In test step 4: There are two same token values;<br/>In test step 5: Cannot get the correct response.<br/> |
| References              |                                                              |

