**1. Prerequisites** 

- [release milestone](https://gitee.com/edgegallery/community/blob/master/TSC/Release/v0.9/%E7%89%88%E6%9C%AC%E8%AE%A1%E5%88%92.md)
- [requirement list](https://gitee.com/edgegallery/community/blob/master/TSC/Release/v0.9/%E7%89%88%E6%9C%AC%E9%9C%80%E6%B1%82.md)

**2. Test target** 
    
     - Quality Index for R0.9

|指标|目标值|备注|
|---|---|---|
|需求完成率|90%|实际完成的需求个数/计划完成的需求个数|
|遗留DI|10|1、本迭代发现的不影响本迭代只影响下个迭代的问题，也要计入本迭代的遗留DI中；2、本迭代发布时说明遗留问题的影响及对策，版本经理同意后可特例发布；"	∑(提示问题个数*0.1+一般问题个数*1+严重问题个数*3+致命问题个数*10)
|严重及以上问题数|≤1	|严重≤1，致命0;∑(严重问题个数+致命问题个数)|
|开源软件禁选|0|开源软件禁选个数为0|
|代码静态检查告警|0|代码静态检查告警个数|
|测试用例执行率|90%|计划执行的测试用例数/实际执行的测试用例数|
|单元测试代码覆盖率|	>=40%|


**3. Test Scope** 

    - _L1/L2--func/API/Unit testcase /Gating/static check_
    - L3--Integration Test Case 
        - ETSI interface test;    - 丁宇卿
    - L4- E2E Test Case
        - usecase1 zoomminder     - 待定 等待需求测试用例输出，再讨论
        - usecase2 
    - the mini scope of testcases  --testcases 定稿后，筛选；
    - the R0.9 Requirement testcases
        - installation test；   owner:彭育
        - MEP DNS test;         owner:mengpuhui  
        - docs test;          all 
        - network isolation test; owner:houminxi
        - GUI test            owner:dev&appstore GUI 李媛媛；mecm gui 张阿利
        - 【MECM/APPStore】Edgegallery生态能力优化 test owner:liuhui
        - 【MEP/MECM]】AK/SK配置接口   【姜伟】
        - 【MEP】支持APP服务的心跳      【姜伟】
        - 【Developer】优化APP的构建+测试+发布过程【李媛媛】
        - 【MECM】 application management& verification 【张阿利】
        - 【MEP/MECM】 Public cloud Integration owner:侯敏熙
        - 【Test】安装部署支持all-in-one/支持离线部署 owner 彭育
        - 【Test】Jenkins job 支持JJB部署；  owenr 彭育
        - 【Poc/Test feature】 5G 网元集成      owenr 彭育
- S3P test scope
    - N/A

**4. Test Case Management** 

A Test Case contains: ID, purpose, test tools, Prerequisites, test data, test steps, desired Test Results, actual test Results, Test Verdict.
测试用例包括：ID，测试目的，测试工具，前置条件，测试数据，测试步骤，预期结果，实际结果，测试结果等。

- 测试用例ID：EG-[EPIC ID]-TC-ID(ID三位数，从001开始)。
- 测试结果：pass/fail。

测试用例如无EPIC关联，则ID中的EPIC ID用模块缩写代替，如MEP、MECM等；同时测试用例关联对应story。

测试用例均在Gitee上创建并管理，关联EPIC任务。在测试用例标题中填入ID和测试目的。具体参见[操作指南](https://gitee.com/edgegallery/community/blob/master/Test%20WG/Test%20case%20template/Gitee_test_case_template.md)。

测试用例评审：召集社区的研发、测试等相关人员评审测试用例，确保测试用例有效、多方理解一致且覆盖版本需求。评审后，调整补充完善测试用例。可针对不同epic或不同模块分别组织评审会，每次会议不超30分钟。

**5. Delivery Epic** 

- [安装部署支持all-in-one部署/离线部署](https://gitee.com/edgegallery/community/blob/master/Architecture%20WG/Requirements/v0.9/Support%20offline%20installation%20in%20one-click-deploy%20scripts.md)
- [Support JJB in jenkins jobs](https://gitee.com/edgegallery/community/blob/master/Architecture%20WG/Requirements/v0.9/Support%20JJB%20in%20jenkins%20jobs.md)
- third part component management（GO）

**6. relative Tools** 

|Tool Name|Version|Address | comments  |
|---|---|---|---|
|SonarQube| |  ||
|Jacoco|  | |   |
|wiremock|  | |   |

**7. Test development info** 

| tools&Language | version | remark | link |
|----------------|---------|--------|------|
| Robotframework | v3.2.1        |        |      |
| selenium       | v3.141.0        |        |      |
| python         | v3.7.2        |        |      |
| IDE ride       | v1.7.4.2        |        |      |
| IDE pycharm    |         |        |      |
| visual studio code(user)    | 1.48.0        |        |      |

**8. Test env info** 

| infra  | Version | address | remarks |
|--------|---------|---------|---------|
| K8S    | v1.18.4 |         |         |
| k3s    | v1.18.4 |         |         |
| docker | v19.03.12|         |         |
| helm   | v3.2.4  |         |         |
| ....   | ......  |         |         |


    - Jenkins addr：http://jenkins.edgegallery.org/
    - repo
        - [integration-testing](https://gitee.com/EdgeGallery_group/integration-testing)()
        - [ci-management](https://gitee.com/edgegallery/ci-management)
        - [platform-mgmt](https://gitee.com/EdgeGallery_group/platform-mgmt)
        - [helm-charts](https://gitee.com/EdgeGallery_group/helm-charts)

    - Reference env
        - daily build jenkins：daily.developer.edgegallery.org;daily.appstore.edgegallery.org;daily.mecm.edgegallery.org
        - Weekly build Jenkins:weekly.developer.edgegallery.org;weekly.appstore.edgegallery.org;weekly.mecm.edgegallery.org
        - ......
    - Lab
        - 5GC env + Integration test；
        -

基于测试环境选定的软件版本，在社区CI/CD环境上完成测试环境搭建相关配置，自动搭建测试目标，以支撑自动测试(开发相应自动化测试脚本)或人工测试。

**9. [Test Planning](https://gitee.com/edgegallery/community/blob/master/Test%20WG/Test%20Release/Test%20WG%20%20R0.9%20Release%20milestone.md)** 

**10. Criteria for Test Execution** 

    - Starting Criteria for test excution
        - 完成详细设计/架构更新        
        - PTL确认所有task关闭
        - PTL确认gitee门户外部bug类问题关闭
        - PTL确认所有新开发代码都有自动化测试用例
        - PTL确认满足单元测试覆盖率要求
        - PTL确认项目完成开发者自验证
        - PTL确认三方件归一化扫描结果
        - PTL确认代码许可证合规扫结果
        - 近3天每日构建成功率100%

    - Ending Criteria for test execution

        - PTL确认bug单关闭
        - 所有测试活动完整，测试通过
        - 无阻塞性及严重性问题遗留
        - 确认所有依赖软件都在本地库中

**11. Risk analysis about testing** 

- 针对需求/设计调整和细化延迟的风险，尽可能提前接入需求分析，准备用例；
- 针对测试人员不足的风险，尽可能发挥现有人员的积极性，加强培训，提高自动化测试占比，提高效率。

**12. Test Summary** 

- Test Report（测试执行完毕后，出具测试报告，含Known Issues&Defects，为项目发布服务）
- Test Work Summary（总结每位组员贡献，分享经验和不足，提出工作优化建议）

**Appendix. [Test category reference](https://gitee.com/edgegallery/community/blob/master/Test%20WG/Test%20Category/Edgeggallery_Test_Cateory.md)** 

| Version | Date       | remark  |
|---------|------------|---------|
| v0.1    | 2020/08/13 | initial |
| v0.2    | 2020/08/20 | enhanced |
| v0.3    | 2020/08/25 | enhanced |
