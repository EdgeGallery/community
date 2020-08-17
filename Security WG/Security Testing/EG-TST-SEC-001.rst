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
|Test tool     | Open source privilege escalation script                      |
|              |                                                              |
|              | - https://github.com/rebootuser/LinEnum                      |
|              |                                                              |
+--------------+--------------------------------------------------------------+
|Test          | Open source privilege escalation scripts are executed on a   |
|description   | target system to enumerate the system configuration and run  |
|              | privilege escalation checks against the following vectors.   |
|              |                                                              |
|              | Vectors of Privilege Escalation                              |
|              |                                                              |
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
|              | - User's Sudo Right                                          |
|              | - Wildcard Injection                                         |
|              |                                                              |
+--------------+--------------------------------------------------------------+
|Configuration | Test tool and environment setup description                  |
|steps         |                                                              |
+--------------+--------------------------------------------------------------+
|step 1        | Bash into the target docker container as root user           |
|              |                                                              |
|              | docker exec -it -u root <contaienr_name> /bin/bash           |
|              |                                                              |
|              | Note: if Bash is not available in the target docker          |
|              | contianer, use sh instead.                                   |
+--------------+--------------------------------------------------------------+
|step 2        | Download the open source privilege escalation scripts to the |
|              | target docker container via wget command                     |
|              |                                                              |
|              | For example:                                                 |
|              | wget https://raw.githubusercontent.com/rebootuser/LinEnum/master/LinEnum.sh |
|              |                                                              |
+--------------+--------------------------------------------------------------+
|Test          | Test step description and expected result                    |
|steps         |                                                              |
+--------------+--------------------------------------------------------------+
|step 1        | Bash into the target docker container as root user           |
|              |                                                              |
|              | docker exec -it -u root <contaienr_name> /bin/bash           |
|              |                                                              |
|              | Note: if Bash is not available in the target docker          |
|              | contianer, use sh instead.                                   |
+--------------+--------------------------------------------------------------+
|step 2        | Once download the script, run it by tying the following      |
|              | command on the terminal. Hence it will dump all fetched data |
|              | and system details.                                          |
|              |                                                              |
|              | For example:                                                 |
|              | bash LinEnum.sh -e ./ -t                                     |
|              |                                                              |
+--------------+--------------------------------------------------------------+
|step 3        | Analysis the following results                               |
|              |                                                              |
|              | Super User Accounts, Sudo Rights User, Home Directories File |
|              | Permission, etc                                              |
|              |                                                              |
+--------------+--------------------------------------------------------------+
|Test verdict  | Define the result of a test case execution.                  |
|              | It has 5 possible values: none, pass, inconc, fail, error.   |
|              |                                                              |
+--------------+--------------------------------------------------------------+
|References    | -                                                            |
|              |                                                              |
|              |                                                              |
+--------------+--------------------------------------------------------------+