**********************************
EdgeGallery Security Test Case 002
**********************************

+-----------------------------------------------------------------------------+
| Web Security Penetration                                                    |
|                                                                             |
+--------------+--------------------------------------------------------------+
|Test case ID  | EG-TST-SEC-002                                               |
|              |                                                              |
+--------------+--------------------------------------------------------------+
|Test purpose  | The purpose of test case SEC-002 is to perform penetration   |
|              | testing on a web application and find security               |
|              | vulnerabilities.                                             |
|              |                                                              |
+--------------+--------------------------------------------------------------+
|Test tool     | OWASP Zed Attack Proxy                                       |
|              |                                                              |
|              | Zed Attack Proxy (ZAP) is a free, open-source penetration    |
|              | testing tool being maintained under the umbrella of the Open |
|              | Web Application Security Project (OWASP).                    |
|              |                                                              |
+--------------+--------------------------------------------------------------+
|Test          | ZAP stands between the tester’s browser and the web          |
|description   | application so that it can intercept and inspect messages    |
|              | sent between browser and web application, modify the         |
|              | contents if needed, and then forward those packets on to the |
|              | destination.                                                 |
|              |                                                              |
+--------------+--------------------------------------------------------------+
|Configuration | Test tool and environment setup description                  |
|steps         |                                                              |
+--------------+--------------------------------------------------------------+
|step 1        | Install ZAP                                                  |
|              |                                                              |
|              | Download the appropriate installer for Windows, Linux, or    |
|              | Mac OS/X from https://www.zaproxy.org/download/ and install  |
|              | ZAP                                                          |
|              | Note: ZAP requires Java 8+ in order to run.                  |
|              |                                                              |
|              | Once the installation is complete, launch ZAP and read the   |
|              | license terms. Click Agree if you accept the terms, and ZAP  |
|              | will finish installing, then ZAP will automatically start.   |
|              |                                                              |
+--------------+--------------------------------------------------------------+
|Test          | Test step description and expected result                    |
|steps         |                                                              |
+--------------+--------------------------------------------------------------+
|step 1        | Running an automated scan                                    |
|              |                                                              |
|              | To run a Quick Start Automated Scan:                         |
|              | 1. Start ZAP and click the Quick Start tab of the Workspace  |
|              | Window                                                       |
|              | 2. Click the large Automated Scan button                     |
|              | 3. In the URL to attack text box, enter the full URL of the  |
|              | web application you want to attack                           |
|              | 4.Click the Attack                                           |
|              |                                                              |
|              | As ZAP spiders the web application, it constructs a map of   |
|              | the web applications’ pages and the resources used to render |
|              | those pages. Then it records the requests and responses sent |
|              | to each page and creates alerts if there is something        |
|              | potentially wrong with a request or response.                |
|              |                                                              |
+--------------+--------------------------------------------------------------+
|step 2        | View alerts and alerts details                               |
|              |                                                              |
|              | To view the alerts created during your test:                 |
|              | 1.Click the Alerts tab in the Information Window.            |
|              | 2.Click each alert displayed in that window to display the   |
|              | 3.URL and the vulnerability detected in the right side of    |
|              | the Information Window.                                      |
|              | 4.In the Workspace Windows, click the Response tab to see    |
|              | the contents of the header and body of the response. The     |
|              | part of the response that generated the alert will be        |
|              | highlighted.                                                 |
|              |                                                              |
+--------------+--------------------------------------------------------------+
|Test verdict  | Define the result of a test case execution.                  |
|              | It has 5 possible values: none, pass, inconc, fail, error.   |
|              |                                                              |
+--------------+--------------------------------------------------------------+
|References    | https://www.zaproxy.org/getting-started/                     |
|              |                                                              |
|              |                                                              |
+--------------+--------------------------------------------------------------+