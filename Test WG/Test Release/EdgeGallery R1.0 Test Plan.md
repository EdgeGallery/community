**1. Prerequisites** 

- [release milestone](https://gitee.com/edgegallery/community/blob/master/TSC/Release/v1.0/%E7%89%88%E6%9C%AC%E8%AE%A1%E5%88%92.md)
- [requirement list](https://gitee.com/edgegallery/community/tree/master/Architecture%20WG/Requirements/v1.0)

**2. Test target** 
    
     - Quality Index for R1.0

|指标|目标值|备注|
|---|---|---|
|需求完成率|90%|实际完成的需求个数/计划完成的需求个数|
|遗留DI|10|1、本迭代发现的不影响本迭代只影响下个迭代的问题，也要计入本迭代的遗留DI中；2、本迭代发布时说明遗留问题的影响及对策，版本经理同意后可特例发布；"	∑(提示问题个数*0.1+一般问题个数*1+严重问题个数*3+致命问题个数*10)
|严重及以上问题数|≤1	|严重≤1，致命0;∑(严重问题个数+致命问题个数)|
|开源软件禁选|0|开源软件禁选个数为0|
|代码静态检查告警|0|代码静态检查告警个数（findbugs、stylecheck、dependency check、PWD）|
|测试用例执行率|90%|计划执行的测试用例数/实际执行的测试用例数|
|单元测试代码覆盖率|	>=50%|


**3. Test Scope** 


 **3.1 第一次迭代需求** 


- 【UserMgmt】EdgeGallery平台需要优化用户管理，进行分权分域设置  【张阿利】
- 【USER】51OpenLab集成EdgeGallery平台  【姜伟】
- 【Developer】构建测试详情界面优化        【李媛媛】
- 【Developer】应用开发界面优化           【李媛媛】
- 【Dev/MECM/App/Atp/MEP/APPLCM】EdgeGallery生态能力优化【李治谦】
- 【MEP/MECM】ak/sk配置接口
- 【AppStore】Optimization for the existing features


 **3.2 第二次迭代需求** 


- 【ATP】App应用的测试能力增强    【张阿利】
- 【Developer】构建测试界面优化                              【李媛媛】
- 【Developer】API界面优化，分析多语言SDK，集成到开发者平台    【李媛媛】
- 【Dev/MECM/App/Atp/MEP/APPLCM】EdgeGallery生态能力优化【李治谦】
- 【Lab】搭建社区实验室管理服务平台   
- 【Test】 Provide the health check for Edgegallery platform in one-click deployment
- 【Test】The optimization of edgegallery installation package  【姜伟】


 **3.3 第三次迭代需求** 

- 【ATP】App应用的测试能力增强      【张阿利】
- 【Developer】应用发布界面优化               【李媛媛】
- 【Dev/MECM/App/Atp/MEP/APPLCM】EdgeGallery生态能力优化【李治谦】
- 【Lab】搭建社区实验室管理服务平台   


**4. Test Case Management** 

A Test Case contains: ID, purpose, test tools, Prerequisites, test data, test steps, desired Test Results, actual test Results, Test Verdict.
测试用例包括：ID，测试目的，测试工具，前置条件，测试数据，测试步骤，预期结果，实际结果，测试结果等。

- 测试用例ID：EG-[EPIC ID]-TC-ID(ID三位数，从001开始)。
- 测试结果：pass/fail。

测试用例如无EPIC关联，则ID中的EPIC ID用模块缩写代替，如MEP、MECM等；同时测试用例关联对应story。

测试用例均在Gitee上创建并管理，关联EPIC任务。在测试用例标题中填入ID和测试目的。具体参见[操作指南](https://gitee.com/edgegallery/community/blob/master/Test%20WG/Test%20case-bug%20template/Gitee_test_case_template.md)。

测试用例评审：召集社区的研发、测试等相关人员评审测试用例，确保测试用例有效、多方理解一致且覆盖版本需求。评审后，调整补充完善测试用例。可针对不同epic或不同模块分别组织评审会，每次会议不超30分钟。

**5. 缺陷管理 Bug Management** 

缺陷统一在Gitee中录入，点击[操作指南](https://gitee.com/edgegallery/community/blob/master/Test%20WG/Test%20case-bug%20template/Gitee_test_bug_template.md)。

bug优先级为：严重、主要、次要、一般。

严重bug尽可能1个工作日内解决（非强制，需协商）；
主要bug尽可能3个工作日内解决（非强制，需协商）；
次要bug尽可能5个工作日内解决（非强制，需协商）。

测试执行阶段，每天邮件发送bug清单汇总，并对超期未关闭bug重点提醒。

- 针对测试人员提的bug，测试人员跟踪目标研发人员修复，完成修复后，测试人员回归验证并通过后设定bug状态为“已验收”。
- 针对于研发人员自己提的bug，建议bug修复后PTL协调研发人员交叉验证，通过后设置bug状态为“已验收”。
- 针对访客提的bug，由PTL安排人员跟踪修复，研发人员回归验证后设置bug为“已验收”。

版本发布后，针对测试人员/研发人员/访客提的bug，标签为已发布的版本号，如果研发人员确认该bug在下一版本修订，则将该bug同时打上下一版本号的标签，便于跟踪。针对已发布版本中新发现的bug，每周/两周发邮件提醒。

**6. Delivery Epic** 

- [安装部署支持all-in-one部署/离线部署](https://gitee.com/edgegallery/community/blob/master/Architecture%20WG/Requirements/v0.9/Support%20offline%20installation%20in%20one-click-deploy%20scripts.md)
- [Support JJB in jenkins jobs](https://gitee.com/edgegallery/community/blob/master/Architecture%20WG/Requirements/v0.9/Support%20JJB%20in%20jenkins%20jobs.md)
- third part component management（GO）

**7. relative Tools** 

|Tool Name|Version|Address | comments  |
|---|---|---|---|
|SonarQube| |  ||
|Jacoco|  | |   |
|wiremock|  | |   |
|go test|  | |   |

**8. Test development info** 

| tools&Language | version | remark | link |
|----------------|---------|--------|------|
| Robotframework | v3.2.1        |        |      |
| selenium       | v3.141.0        |        |      |
| python         | v3.7.2        |        |      |
| IDE ride       | v1.7.4.2        |        |      |
| IDE pycharm    |         |        |      |
| visual studio code(user)    | 1.48.0        |        |      |

**9. Test env info** 

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

**10. Test Planning** 

| 时间  | 迭代研发  | 迭代测试  |
|---|---|---|
|1102-1114   | 第一次迭代  |   |
|1116-1128   | 第二次迭代  |第一次   |
|1130-1212   | 第三次迭代  |第二次   |
|1214-1226   | 修改bug  |第三次   |
|1227-1231   | 准备并发布  |准备并发布   |

针对测试人员，在第i次迭代测试开始前（即第i-1次测试过程中），需同研发人员澄清本轮测试需求，完成测试用例设计及评审；在第i次迭代测试执行中需执行所设计的测试用例（含自动化测试脚本），记录bug（及提出需求优化建议等），同时完成第i-1轮bug的回归测试。

**11. Criteria for Iterative Test Execution** 

    - Starting Criteria for Iterative test excution
        - 完成本次迭代的详细设计/架构更新Complete detail design/architecture updating for current iteration        
        - PTL确认所有task关闭（PTL confirm ）all tasks in current iteration are closed
        - PTL确认gitee门户外部bug类问题关闭（PTL confirm） bugs（vital/blocked in current iteration ） out of gitee are all closed
        - PTL确认所有新开发代码都有自动化测试用例（PTL）confirm all recently developed code has autotest cases
        - PTL确认满足单元测试覆盖率要求（PTL confirm） satisfy code coverage rate for unit test
        - PTL确认项目完成开发者自验证（PTL confirm）complete self-verification of project
        - PTL确认三方件归一化扫描结果（PTL confirm） 3rd-party components  are all scanned and have consistent versions
        - PTL确认代码许可证合规扫结果（PTL confirm）licenses for 3rd-party components are all scanned and their compliance is ensured
        - 近1天每日构建成功率100% daily build for last 1 days is all succeeded

    - Ending Criteria for test execution in Final Iteration

        - PTL确认bug单关闭（PTL confirm） vital/blocked bugs are all closed
        - 所有测试活动完整，测试通过 all test activities are completed and test results are passed
        - 无阻塞性及严重性问题遗留 No blocked or vital problems/bugs are left。
        - 确认所有依赖软件都在本地库中 confirm all dependent softwares are all stored locally

**12. Risk analysis about testing** 

- 针对需求/设计调整和细化延迟的风险，尽可能提前接入需求分析，准备用例；
- 针对测试人员不足的风险，尽可能发挥现有人员的积极性，加强培训，提高自动化测试占比，提高效率。

**13. Test Summary** 

- Test Report（最后一次迭代测试执行完毕后，出具测试报告，含Known Issues&Defects，为项目发布服务）
- Test Work Summary（总结每位组员贡献，分享经验和不足，提出工作优化建议）

**Appendix. [Test category reference](https://gitee.com/edgegallery/community/blob/master/Test%20WG/Test%20Category/Edgeggallery_Test_Cateory.md)** 


