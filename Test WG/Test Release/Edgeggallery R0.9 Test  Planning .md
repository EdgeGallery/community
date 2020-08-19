- Overview
    - [release milestone](https://gitee.com/edgegallery/community/blob/master/TSC/Release/v0.9/%E7%89%88%E6%9C%AC%E8%AE%A1%E5%88%92.md)
    - [requirement list](https://gitee.com/edgegallery/community/blob/master/TSC/Release/v0.9/%E7%89%88%E6%9C%AC%E9%9C%80%E6%B1%82.md)
- Test strategy
    - Test target in R0.9
        - Test coverage Rate
        - code coverage Rate
- Test Scope
    - _L1/L2--func/API/Unit testcase /Gating/static check_
    - L3--Integration Test Case 
        - ETSI interface test;    - 待定  刘辉找人研究
    - L4- E2E Test Case
        - usecase1 zoomminder     - 待定 等待需求测试用例输出，再讨论
        - usecase2 
    - the mini scope of testcases  --testcases 定稿后，筛选；
    - the R0.9 Requirement testcases
        - installation test；   owner:zhaobaohui
        - MEP DNS test;         owner:mengpuhui  
        - docs test;          all 
        - network isolation test; owner:houminxi
        - GUI test            owner:liuhui
        - 【MECM/APPStore】Edgegallery生态能力优化 test owner:liuhui
        - 【MEP/MECM]】AK/SK配置接口   【姜伟】
        - 【MEP】支持APP服务的心跳      【姜伟】
        - 【Developer】优化APP的构建+测试+发布过程【李媛媛】
        - 【MECM】 application management& verification 【张阿利】
        - 【MEP/MECM】 Public cloud Integration owner:liuhui
        - 【Test】安装部署支持all-in-one/支持离线部署 owner 彭育
        - 【Test】Jenkins job 支持JJB部署；  owenr 彭育
        - 【Poc/Test feature】 5G 网元集成      owenr 彭育
- S3P test scope
    - N/A
- Delivery Epic
    - [安装部署支持all-in-one部署/离线部署](https://gitee.com/edgegallery/community/blob/master/Architecture%20WG/Requirements/v0.9/Support%20offline%20installation%20in%20one-click-deploy%20scripts.md)
    - [Support JJB in jenkins jobs](https://gitee.com/edgegallery/community/blob/master/Architecture%20WG/Requirements/v0.9/Support%20JJB%20in%20jenkins%20jobs.md)
    - third part component management（GO）
- [Test&relative Tools]

|Tool Name|Version|Address | comments  |
|---|---|---|---|
|SonarQube| |  ||
|Jacoco|  | |   |
|robotframework| - |- | -  |
|  - | - |- | -  |
|Jenkins|  | |需联系彭育申请账号，当前每组的PTL有一个账号|

- [Test Planning](https://gitee.com/edgegallery/community/blob/master/Test%20WG/Test%20Release/Test%20WG%20%20R0.9%20Release%20milestone.md)
- Resource dependency
    - Jenkins addr：http://jenkins.edgegallery.org/
    - repo
        - [integration-testing](https://gitee.com/EdgeGallery_group/integration-testing)
        - [ci-management](https://gitee.com/edgegallery/ci-management)
        - [platform-mgmt](https://gitee.com/EdgeGallery_group/platform-mgmt)
        - [helm-charts](https://gitee.com/EdgeGallery_group/helm-charts)
    - Test env
        - daily build jenkins
        - Weekly build Jenkins
        - ......
    - Lab
        - 5GC env + Integration test；
        -
- Known Defects and Issues
- [Test category reference](https://gitee.com/edgegallery/community/blob/master/Test%20WG/Test%20Category/Edgeggallery_Test_Cateory.md)

| Version | Date       | remark  |
|---------|------------|---------|
| v0.1    | 2020/08/13 | initial |
