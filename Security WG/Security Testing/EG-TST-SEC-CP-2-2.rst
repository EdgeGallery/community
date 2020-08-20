*********************************************
EdgeGallery Security Compliance Test Case 2-2
*********************************************

+--------------+--------------------------------------------------------------+
|Test case ID  | EG-TST-SEC-CP-2-2                                            |
|              |                                                              |
+--------------+--------------------------------------------------------------+
|Test tool     | sslscan                                                      |
|              |                                                              |
+--------------+--------------------------------------------------------------+
|Test          | TLS (or SSL) protocol default configuration check            |
|description   |                                                              |
|              |                                                              |
+--------------+--------------------------------------------------------------+
|Configuration | Test tool and environment setup description                  |
|steps         |                                                              |
+--------------+--------------------------------------------------------------+
|step 1        | Install sslscan in the target deployment environment         |
|              |                                                              |
+--------------+--------------------------------------------------------------+
|Test          | Test step description and expected result                    |
|steps         |                                                              |
+--------------+--------------------------------------------------------------+
|step 1        | Use the sslscan to scan the target IP addresses              |
|              |                                                              |
|              | For example:                                                 |
|              |     sslscan 10.x.x.2                                         |
|              |                                                              |
|              | The returned result is mainly composed of three parts:       |
|              | 1.Supported server cipher(s)                                 |
|              | 2.Prefered server cipher(s)                                  |
|              | 3.SSL certificate                                            |
|              |                                                              |
+--------------+--------------------------------------------------------------+
|step 2        | Review the returned result                                   |
|              |                                                              |
|              | The first part shows the support of all encryption algorithm |
|              | suites, among which Accepted means support, Failed means not |
|              | support, mainly depends on whether the supported encryption  |
|              | algorithm suite is safe; the second part shows the preferred |
|              | encryption algorithm suite negotiated with the target,       |
|              | mainly to view the preferred encryption Whether the          |
|              | algorithm suite is secure; the third part displays the       |
|              | information of the received certificate.                     |
|              |                                                              |
+--------------+--------------------------------------------------------------+
|Test verdict  | The use of SSL2.0 and SSL3.0 protocols is prohibited. TLS1.0 |
|              | can only be left behind in scenarios such as backward        |
|              | compatibility and third-party docking.                       |
|              |                                                              |
|              | The use of anonymous authentication (that is, no identity    |
|              | authentication) or weak identity authentication (such as     |
|              | RSA/DSA keys with a key length of less than 2048 bits) is    |
|              | prohibited in the cryptographic protocol; the use of cipher  |
|              | suites with asymmetric encryption is prohibited.             |
|              |                                                              |
+--------------+--------------------------------------------------------------+