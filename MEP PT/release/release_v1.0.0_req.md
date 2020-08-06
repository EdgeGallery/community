# release 1 requirements collection

> please input the requirements below:


## features

1. Provide DNS Configuration capabilities -- from Arch WG
   add dns rule mp1 APIs

2. Support service heartbeat for App -- refering to etsi mec 011 latest stable draft
- serviceinfo add livenessInterval attributes
- add ServiceLivenessInfo and ServiceLivenessUpdate object
- add apis for app heartbeat in mep (etsi mec 011 chapter 8.2.10) 

3. mepauth and mepagent provide ak/sk config interface for MECM to config ak/sk

4. mep provide kubernetes manifest for one-key deploy

## testing

1. mep mp1 interfaces pass etsi robotframework test cases in ci




