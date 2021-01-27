# EG-TST-SEC-CP-1-15



| Test Case ID            | EG-TST-SEC-CP-1-15                                           |
| :---------------------- | :----------------------------------------------------------- |
| **Test case name**      | Accounts that are no longer used must be deleted. when an account is  deleted, the corresponding credentials (such as the password and  authentication key) must also be deleted to prevent them from being  suspected as backdoors. |
| Test purpose            |                                                              |
| Test description        |                                                              |
| Test Mode               | Manual                                                       |
| Test tool               |                                                              |
| Test tool configuration | Test tool and environment setup description                  |
| config step 1           |                                                              |
| **Test steps**          | **Test step description and expected result**                |
| Test step 1             | Log in to the user management page to view the disabled users. If its not necessary to keep these users, you should delete these users. (Be careful to delete all data related to the user, including passwords, secret keys, etc.)<br/> |
| Test step 2             | Log in to the user management page to check whether there is an undisclosed high privileged account. If exist, delete these accounts. |
| **Expected result**     | In test step 1: There are no disabled accounts that are not necessary to be retained;<br/>In test step 2: There are no undisclosed high privileged accounts. |
| References              |                                                              |

