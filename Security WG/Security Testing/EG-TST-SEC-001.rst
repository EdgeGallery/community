**********************************
EdgeGallery Security Test Case 001
**********************************

+-----------------------------------------------------------------------------+
| Privilege Escalation                                                        |
|                                                                             |
+--------------+--------------------------------------------------------------+
|Test case ID  | EG-TST-SEC-001                                               |
|              |                                                              |
+--------------+--------------------------------------------------------------+
|Test purpose  | The purpose of test case SEC-001 is trying to escalate       |
|              | privileges on a target system. It helps developers to verify |
|              | that it is not possible for a user to modify their           |
|              | privileges or roles inside the application in ways that      |
|              | could allow privilege escalation attacks.                    |
|              |                                                              |
+--------------+--------------------------------------------------------------+
|Test tool     | Open source privilege escalation scripts                     |
|              |                                                              |
|              | - https://github.com/rebootuser/LinEnum                      |
|              | - www.securitysift.com/download/linuxprivchecker.py          |
|              | - https://github.com/jondonas/linux-exploit-suggester-2      |
|              |                                                              |
+--------------+--------------------------------------------------------------+
|Test          | Open source privilege escalation scripts are executed on a   |
|description   | target system to enumerates the system configuration and run |
|              | privilege escalation checks against the following vectors.   |
|              |                                                              |
|              | Vectors of Privilege Escalation                              |  
|              | - OS Detail & Kernel Version                                 |
|              | - Any Vulnerable package installed or running                |
|              | - Files and Folders with Full Control or Modify Access       |
|              | - File with SUID Permissions                                 |
|              | - Mapped Drives (NFS)                                        |
|              | - Potentially Interesting Files                              |
|              | - Environment Variable Path                                  |
|              | - Network Information (interfaces, arp, netstat)             |
|              | - Running Processes                                          |
|              | - Cronjobs                                                   |
|              | - User’s Sudo Right                                          |
|              | - Wildcard Injection                                         |
|              |                                                              |
+--------------+--------------------------------------------------------------+
|Configuration | Test tool and environment setup description                  |
|steps         |                                                              |
+--------------+--------------------------------------------------------------+
|step 1        |                                                              |
|              |                                                              |
|              |                                                              |
+--------------+--------------------------------------------------------------+
|step 2        |                                                              |
|              |                                                              |
|              |                                                              |
+--------------+--------------------------------------------------------------+
|Test          | Test step description and expected result                    |
|steps         |                                                              |
+--------------+--------------------------------------------------------------+
|step 1        |                                                              |
|              |                                                              |
|              |                                                              |
+--------------+--------------------------------------------------------------+
|step 2        |                                                              |
|              |                                                              |
|              |                                                              |
+--------------+--------------------------------------------------------------+
|step 3        |                                                              |
|              |                                                              |
|              |                                                              |
+--------------+--------------------------------------------------------------+
|step 4        |                                                              |
|              |                                                              |
|              |                                                              |
+--------------+--------------------------------------------------------------+
|Test verdict  | Define the result of a test case execution.                  |
|              | It has 5 possible values: none, pass, inconc, fail, error.   |
|              |                                                              |
+--------------+--------------------------------------------------------------+
|References    | Useful external reference URLs.                              |
|              |                                                              |
|              |                                                              |
+--------------+--------------------------------------------------------------+