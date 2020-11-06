# release 1 requirements collection

> please input the requirements below:


## features

1. Provide DNS Configuration capabilities -- from Arch WG
   add dns rule mp1 APIs -- [link](https://gitee.com/OSDT/dashboard?issue_id=I1OWJI)

2. Support service heartbeat for App -- refering to etsi mec 011 latest stable draft -- [link](https://gitee.com/OSDT/dashboard?issue_id=I1QGUZ)
- serviceinfo add livenessInterval attributes
- add ServiceLivenessInfo and ServiceLivenessUpdate object
- add apis for app heartbeat in mep (etsi mec 011 chapter 8.2.10) 

3. mepauth and mepagent provide ak/sk config interface for MECM to config ak/sk -- [link](https://gitee.com/OSDT/dashboard?issue_id=I1QGVD)

4. mep provide kubernetes manifest for one-key deploy -- [link](https://gitee.com/OSDT/dashboard?issue_id=I1QGV6)

5. network isolation for mep base on kubernetes  -- [link](https://gitee.com/OSDT/dashboard?issue_id=I1OY0L)

6. mm5 apis security

7. dns server security

8. traffic rules mp1 apis

## testing

1. mep mp1 interfaces pass etsi robotframework test cases in ci




