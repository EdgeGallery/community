*********************************************
EdgeGallery Security Compliance Test Case 7-1
*********************************************

+--------------+--------------------------------------------------------------+
|Test case ID  | EG-TST-SEC-CP-7-1                                            |
|              |                                                              |
+--------------+--------------------------------------------------------------+
|Test tool     | N/A                                                          |
|              |                                                              |
+--------------+--------------------------------------------------------------+
|Test          | Check that frontend and backend use the same encoding style  |
|description   |                                                              |
|              |                                                              |
+--------------+--------------------------------------------------------------+
|Configuration | Test tool and environment setup description                  |
|steps         |                                                              |
+--------------+--------------------------------------------------------------+
|step 1        | N/A                                                          |
|              |                                                              |
|              |                                                              |
+--------------+--------------------------------------------------------------+
|Test          | Test step description and expected result                    |
|steps         |                                                              |
+--------------+--------------------------------------------------------------+
|step 1        | Examine and record the encoding style of frontend and        |
|              | backend                                                      |
|              |                                                              |
|              | Visit ftrontend interface, for example                       |
|              | URL: https://x.x.x.x                                         |
|              | On the page, click right mouse click, choose 'inspect page   |
|              | source code', you can find the frontend encoding style in    |
|              | <meta charset>                                               |
|              |                                                              |
|              | Examine the source code of corresponding backend project,    |
|              | use code search tool to search 'encoding' and find out the   |
|              | encoding style                                               |
+--------------+--------------------------------------------------------------+
|step 2        | Compare the encoding style is consistent between frontend    |
|              | and frontend                                                 |
|              |                                                              |
+--------------+--------------------------------------------------------------+
|Test verdict  | Different encodings between client(frontend) and             |
|              | server(backend) can have security implicatio                 |
|              |                                                              |
+--------------+--------------------------------------------------------------+