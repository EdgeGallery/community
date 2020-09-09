**********************************
EdgeGallery Security Test Case 003
**********************************

+-----------------------------------------------------------------------------+
| Port Fuzzing                                                                |
|                                                                             |
+--------------+--------------------------------------------------------------+
|Test case ID  | EG-TST-SEC-003                                               |
|              |                                                              |
+--------------+--------------------------------------------------------------+
|Test purpose  | The purpose of test case SEC-003 is to perform fuzz testing  |
|              | on network services/ports.                                   |
|              |                                                              |
+--------------+--------------------------------------------------------------+
|Test tool     | UniOFuzz                                                     |
|              |                                                              |
|              | UniOFuzz is an  open source universal fuzzing tool for       |
|              | browsers, web services, files, programs and network          |
|              | services/ports.                                              |
|              |                                                              |
+--------------+--------------------------------------------------------------+
|Test          |                                                              |
|description   |                                                              |
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
|step 2        | Download the UniOFuzz script to the target docker container  |
|              | via wget command                                             |
|              |                                                              |
|              | For example:                                                 |
|              | wget raw.githubusercontent.com/nullsecuritynet/tools/master/ |
|              | fuzzer/uniofuzz/release/uniofuzz.py                          |
|              |                                                              |
+--------------+--------------------------------------------------------------+
|Test          | Test step description and expected result                    |
|steps         |                                                              |
+--------------+--------------------------------------------------------------+
|step 1        | Run the test script to implement network servive/port        |
|              | fuzzing                                                      |
|              |                                                              |
|              | Usage:                                                       |
|              | python uniofuzz.py -n -i 0.01 -ip xx.xx.xx.xx -port xx       |
|              |                                                              |
+--------------+--------------------------------------------------------------+
|step 2        | The test script will run against the target port until an    |
|              | error is encountered                                         |
|              |                                                              |
|              | Fpr each port, a minimum 100000 times iteration is           |
|              | recommended                                                  |
|              |                                                              |
+--------------+--------------------------------------------------------------+
|Test verdict  | Define the result of a test case execution.                  |
|              | It has 5 possible values: none, pass, inconc, fail, error.   |
|              |                                                              |
+--------------+--------------------------------------------------------------+
|References    | https://en.kali.tools/all/?tool=1478                         |
|              |                                                              |
|              |                                                              |
+--------------+--------------------------------------------------------------+