# EG-TST-SEC-005



| Test Case ID            | EG-TST-SEC-005                                               |
| :---------------------- | :----------------------------------------------------------- |
| Test case name          | SQL Injection Vulnerability                                  |
| Test purpose            | Through the SQL injection penetration test, to determine whether there are SQL injection points in the web application,  to avoid attacks such as information leakage or writing Trojan horses in the database. |
| Test description        | SQL injection is to insert SQL commands into the string of Web form submission or page request, and finally achieve the purpose of deceiving the server to execute malicious SQL commands and achieving the purpose of attack. |
| Test tool               | SQLMap:<br/>SQLMap is an open source penetration tool that can automatically detect and exploit SQL injection vulnerabilities. <br/>The following parameters may be used in this test case:<br/>-u: set test target<br/>--cookie: use the specified cookie value<br/>--level: specify scan level<br/>--risk: specify the scan risk level<br/>--dbms: specify the database |
| Test tool configuration | Test tool and environment setup description                  |
| config step 1           | Download and install Python2.7: (If Python2.7 is already installed, you can skip this step)<br/>Visit https://www.python.org/download/releases/2.7/ to download and install Python2.7; |
| config step 2           | Download and install SQLMap: <br/>①Visit http://sqlmap.org/ to download SQLMap;<br/>②Unzip the SQLMap installation package and copy it to the "C:\Python27" directory;<br/>③On the desktop create sqlmap shortcut (object location is cmd, starting location is "C:\Python27\sqlmap") |
| Test Mode               | Manual + Tool                                                |
| **Test steps**          | **Test step description and expected result**                |
| Test step 1             | ① Identify the URL that may have database interaction;(Normally, you don't need to identify all URLs, you can justidentify one or more URLs as needed)<br/> |
| Test step 2             | ②Log in to the user account through the browser. View the obtained cookie through F12, and record the parameters in the cookie.(such as "xxxSESSIONID=???")<br/> |
| Test step 3             | ③Execute "sqlmap.bat", run the following command to execute the test:<br/>python sqlmap.py -u "https://x.x.x.x:x/mec-appstore/mec/appstore/v1/apps/98ccd3bf50404cc79330c7c171976b93/packages*/" --cookie="APPSTORESESSIONID=???; AUTHSERVERSESSIONID=?? ?; XSRF-TOKEN=???;" --level 3 --risk 3 --dbms=PostgreSQL<br/>Note: The host and cookie value here should be set according to the actual situation<br/> |
| Test step 4             | ④If SQLMap notice  "heuristics detected that the target is protected by some kind of WAF/IPS, are you sure that you want to continue with further target testing? [Y/n]"<br/>Please type "Y"; |
| Test step 5             | ⑤If SQLMap notice  "custom injection marker ('*') found in option '-u'. Do you want to process it? [Y/n/q]"<br/>Please type "Y"; |
| Test step 6             | ⑥If SQLMap notice  "Cookie parameter 'XSRF-TOKEN' appears to hold anti-CSRF token. Do you want sqlmap to automatically update it in further requests? [y/N]"<br/>Please type "N"; |
| Test step 7             | ⑦Wait for 1 minute or more, SQLMap will get the scan result. |
| **Expected result**     | In test step 7: SQLMap scan result shows "all tested parameters do not appear to be injectable."<br/> |
| References              |                                                              |

