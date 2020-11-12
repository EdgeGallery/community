# EG-TST-SEC-004



| Test Case ID            | EG-TST-SEC-004                                               |
| :---------------------- | :----------------------------------------------------------- |
| **Test case name**      | **File Upload Vulnerability**                                |
| Test purpose            | By testing the uploaded file suffix format, file size, whether the full  path of the file is leaked, etc., to prevent the web application/server  from being uploaded by Trojan horses, webshells, etc. |
| Test description        | The following items will be tested:<br/>①Whether the front-end checks and filters the file suffix;<br/>②Whether the back-end checks and filters the file suffix;<br/>③Whether the backend check the "content-type" request header;<br/>④Whether the file size is limited;<br/>⑤Whether the file name is renamed randomly ;<br/>⑥Whether users can get the full uploaded-file path. |
| Test Mode               | Manual                                                       |
| Test tool               | BurpSuite (hereinafter referred to as "Burp")<br/>Note: It is recommended to use Burp's built-in browser to cooperate with the  browser used by Burp (the capture result is more stable),  the  opening method is: Proxy -> Intercept -> Open Broswer |
| Test tool configuration | Test tool and environment setup description                  |
| config step 1           | Download and install Burp: <br/>Visit [https://portswigger.net/burp/communitydownload to](https://translate.google.com/translate?hl=zh-CN&prev=_t&sl=zh-CN&tl=en&u=https://portswigger.net/burp/communitydownload) and download the Burp community version, and click Install. |
| config step 2           | Import the Burp certificate into the browser: (If you use Burp's built-in browser, you can skip this step) <br/>①Open Burp, use the browser to visit 127.0.0.1:8080, click "CA Certificate"  in the upper right corner of the page, and download the "cacert.der"  certificate file ; <br/>②Enter browser settings -> privacy/security -> certificate -> view certificate, open the certificate manager page, click "Import", and  import the "cacert.der" certificate file. (Please check "Trust this certification authority to identify the website" when importing) |
| config step 3           | Set proxy: (If you use Burp's built-in browser, you can skip this step) <br/>①Set Burp port to 8080 (default); <br/>②Set browser proxy to 127.0.0.1:8080 <br/>Note: Burp can be used when it is not in use or after use Turn off the browser proxy. |
| **Test steps**          | **Test step description and expected result**                |
| Test step 1             | ①Identify all upload points of the target website (such as app upload, avatar upload, etc.), and identify the formats allowed to upload;<br/> |
| Test step 2             | ②Set the browser proxy to Burp, start Burp, upload disallowed files, and check if the front-end prompts the file format error;<br/> |
| Test step 3             | ③Upload allowed files, use Burp to capture the package, and  modify the suffix to disallowed format(such as .jsp)  and check if the upload is successful;  capture the package again and modify the suffix to disallowed formart(such as .12345) and check if the upload is successful, to determine if the back-end has a filtering method of blacklist or whitelist;<br/> |
| Test step 4             | ④Upload allowed files, use Burp to capture the package, modify the  content-type to disallowed format, and check if the upload is successful, to determine if the  back-end checks the "content-type" request header of the uploaded file;<br/> |
| Test step 5             | ⑤Close the browser JavaScript, upload oversized files, and check if the upload is successful, to determine if the back-end has limited upload file size;<br/> |
| Test step 6             | ⑥Upload allowed files. After the upload is  successful, use following 2 methods to determine if the upload file path can be leaked: <br/>a)  Check the page/source code; <br/>b)  Check the response content of the request;<br/>In addition: if the file path is available, Check if the file name is randomly renamed;<br/> |
| **Expected result**     | In test step 2, file upload failed; <br/>In test step 3, file upload of the .jsp file format failed; <br/>In test step 4, file upload failed; <br/>In test step 5, file upload failed; <br/>In test step 6, the file path could not be obtained. |
| References              |                                                              |

