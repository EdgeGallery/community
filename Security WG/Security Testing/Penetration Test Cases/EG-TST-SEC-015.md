# EG-TST-SEC-015



| Test Case ID            | EG-TST-SEC-015                                               |
| :---------------------- | :----------------------------------------------------------- |
| **Test case name**      | **Arbitrary File Download**                                  |
| Test purpose            | Through the arbitrary-file-download test, to check whether the application has any file download vulnerability. |
| Test description        | If the application does not restrict the files that users can view or download, malicious users can view or download any files across directories, including source code, system-sensitive files, etc. |
| Test Mode               | Manual                                                       |
| Test tool               |                                                              |
| Test tool configuration | Test tool and environment setup description                  |
| config step 1           |                                                              |
| **Test steps**          | **Test step description and expected result**                |
| Test step 1             | Determine the url of the downloaded file, such as "https://xxx.com/?file=xxx"<br/> |
| Test step 2             | Assign different values below to the key parameter (such as "file"), and try to read system sensitive files (such as "/etc/passwd") through a cross-directory method:<br/>file=../etc/passwd<br/>file=../../etc/passwd<br/>file=../../../etc/passwd<br/>file=../../../../etc/passwd<br/>file=../../../../../etc/passwd<br/>file=../../../../../../etc/passwd<br/>... |
| **Expected result**     | In test step 2: Cannot read or download any sensitive files other than the downloaded file<br/> |
| References              |                                                              |

