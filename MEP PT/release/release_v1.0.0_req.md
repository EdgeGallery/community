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


## milestones

[release plan in tsc](https://gitee.com/edgegallery/community/blob/master/TSC/Release/v0.9/%E7%89%88%E6%9C%AC%E8%AE%A1%E5%88%92.md): 

- M0: kickoff review -- Aug 5th
- M1: feature freeze -- Aug 11th
- M2: code freeze -- Sep 14th
- RC: release candidate -- Sep 21/28


