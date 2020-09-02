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