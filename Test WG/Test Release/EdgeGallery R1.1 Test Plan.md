**1. Prerequisites** 

- [release milestone](https://gitee.com/edgegallery/community/blob/master/TSC/Release/v1.1/%E7%89%88%E6%9C%AC%E8%AE%A1%E5%88%92.md)
- [requirement list](https://gitee.com/OSDT/dashboard/issues?issue_type_id=238024&labels=ReleaseV1.1)
- [requirement list-excel](https://gitee.com/edgegallery/community/blob/master/Architecture%20WG/Requirements/v1.1/EdgeGallery%2021%E5%B9%B4%E9%9C%80%E6%B1%82%E8%A7%84%E5%88%92v0.95.xlsx)

**2. Test target** 
    
     - Quality Index for R1.1

|指标|目标值|备注|
|---|---|---|
|需求完成率|90%|实际完成的需求个数/计划完成的需求个数|
|遗留DI|10|1、本迭代发现的不影响本迭代只影响下个迭代的问题，也要计入本迭代的遗留DI中；2、本迭代发布时说明遗留问题的影响及对策，版本经理同意后可特例发布；"	∑(提示问题个数*0.1+一般问题个数*1+严重问题个数*3+致命问题个数*10)
|严重及以上问题数|≤1	|严重≤1，致命0;∑(严重问题个数+致命问题个数)|
|开源软件禁选|0|开源软件禁选个数为0|
|代码静态检查告警|0|代码静态检查告警个数（findbugs、stylecheck、dependency check、PWD）|
|测试用例执行率|90%|计划执行的测试用例数/实际执行的测试用例数|
|单元测试代码覆盖率|	>=55%|


**3. Test Scope** 


 **3.1 第一次迭代需求** 

- 【Developer】【POC】搭建设计态前台框架
-  **【Developer】应用包区分ARM，x86【李媛媛】--done** 
-  **【developer】提升应用本地调测能力， 如端口配置错误，网络不匹配、服务名冲突等【李媛媛、李治谦】--done** 
-  **【developer】提供可视化配置，部署文件的可视化配置【李媛媛】--done** 
-  **【developer】提供应用远程登录如VNC运维能力【李媛媛】--done** (有尚未解决bug)
-  **【UserMgmt】 **EdgeGallery平台用户管理特性优化** 【张阿利、李治谦】--done** 
-  **【UserMgmt】 **EdgeGallery平台支持用户分权控制** 【张阿利】--done** 
-  **【UserMgmt】 **支持用户通过邮箱注册** 【李治谦】--done** 
-  **【UserMgmt】 **支持用户通过邮箱登录** 【李治谦】--done** 
-  **【Appstore】统一appstore组件风格【张阿利】--done** 
-  **【Appstore】应用包区分ARM，x86【张阿利】--done** 
-  **【AppStore】 **前端界面优化（应用共享、应用仓库）** 【张阿利】--done** 
-  **【mep】 **mep url unify** 【张阿利】--done** 
- 【mep-agent】 **mep-agent提供根据service name返回endpoint信息**  pmeng 
- 【MEP/MECM】 **APP Instance Termination Enhancement** 【刘辉】--本周结束
- 【mecm】 **Adaptive mep url unify【张阿利】--done** 
- 【mecm】 **example-apps support demo app service call【张阿利】--done** （待回归）
-  **【ATP】ATP应用包区分ARM、X86【李媛媛】--done** 
-  **【ATP】ATP管理面portal优化：ATP管理面任务增加批量删除操作、新加统计分析接口【李媛媛】--done** 


 **3.2 第二次迭代需求** 

-  **【developer】新增获取pod详情接口【李媛媛】--done** 
-  **【Developer】Developer Support Demo APP guidence【李媛媛】--done**  
-  **【developer】修改建议，日志下载功能【李媛媛】--done，下载功能取消** 
-  **【developer】提供可视化配置，部署文件的可视化配置【李媛媛】--done**（尚有未解决bug-偶发） 
-  **【developer】支持项目管理、支持配置沙箱环境【李媛媛】--done**  
-  **【developer】部署结果展示端口、协议等信息【李媛媛】--done**（尚有未解决bug-偶发） 
- 【developer】【POC】在应用设计时，可以通过点击查看组件的基本信息；可以设计服务之间的依赖关系；以通过拖拽的方式进行App设计，并保存设计结果； **支持拖拽的方式进行组件移动** 
- 【developer】【POC】在EG平台按需部署设计时，支持保存设计结果，支持导出部署脚本
-  **【Developer】Developer应用支持分权控制，区分不同角色进行差异化功能展现【李媛媛】--done**（尚有为解决bug-多页签下登录信息相互影响） 
-  **【developer】usermgmt支持机机接口后，developer支持24h后自动释放资源；developer部署失败，返回详细的错误信息【李媛媛】--done** --已交付待回归 
-  **【developer】系统管理面界面开发【李媛媛】--done**  
-  **【developer】支持项目管理、支持能力中心管理【李媛媛】--done** 
-  **【developer】提升SDK/API可获性与可用性【李媛媛】--done**  
-  **【UserMgmt】支持用户忘记密码后通过邮箱找回【李治谦】--done** 
-  **【Appstore】文档界面优化【李治谦】--done** 
-  **【AppStore】支持容器镜像管理 Support Container Image Manage【张阿利、李治谦】--done**（尚有问题未解决--本版本是否仅支持镜像路hardcoding一种？） 
- 【AppStore】 **支持应用主动拉取功能--done** 【张阿利】
- 【AppStore】 **AppStore应用支持分权控制，区分不同角色进行差异化功能展现（迭代二完成task->【AppStore】应用共享和应用管理分权控制）【张阿利】--done** 
- 【MEP】 **MEP展示服务调用次数统计信息 **--本周测试结束 
-  **【MEP】subscribe api** --本周测试结束
-  **【MEP】notify to app when subscibed service status changed** --本周测试结束
-  **【MECM/example-apps】Make example-apps open source【张阿利】** --done
-  **【MECM】Applcm support logs of the app deployment to developer【张阿利】--done** 
- 【MECM】支持容器镜像管理Support Container Image Manage【李治谦】--待确定
-  **【Mecm】Mecm应用支持分权控制，区分不同角色进行差异化功能展现MECM Support Administrator/Tanant/Guest Role【张阿利】--done** 
- 【ATP】 **用户面引入Test Scenario,Test Suite, Test Case三层模型概念【李媛媛】** --done
- 【ATP】 **支持在用户面贡献测试用例【李媛媛】** --done
- 【ATP】 **ATP测试用例扩充到总数14个** --done
- 【ATP】 **ATP任务接口模型变更【李媛媛】** --done
- 【installation】 **EG离线部署脚本优化，实现按需部署能力【侯敏熙】--done** (补充测试多节点部署；补充测试多网络平面)


 **3.3 第三次迭代需求** 

-  **【developer】样例界面开发【李媛媛】--done** 
-  **【Developer】在EG平台按需部署设计时，支持对默认组件的配置--done** 
-  **【Developer】【POC】Developer support VM app** --刚交付，待测试
-  **【Developer】支持容器镜像管理【李治谦】--done**
- 【Developer】【POC】在应用设计时，可以通过点击查看已选组件的信息，并且进行参数配;对接Dev设计的CSAR包，自动生成设计结果;
 **在设计态首页，可以创建/删除一个设计** 
- 【developer】 **支持在ATP测试时，将镜像包传递给atp;支持在发布到AppStore时，将应用镜像信息传递给appstore--done** 
- 【developer】 **mep face recognition SDK的验证和使用 java--done** 
- 【Developer】 **Developer应用首页集成个人帐号中心--done** 
- 【UserMgmt】 **支持通过用户个人帐号中心查看个人信息;用户个人帐号中心支持修改个人信息;用户个人帐号中心支持修改个人登录密码--done** 【李治谦】
- 【MEP】 **MEP拓扑展示订阅关系及订阅应用和被订阅应用数量** 【yuxiaolong】
- 【MEP】 **MEP支持服务管理架构可视化** --本周测试结束
- 【MEP】 **MEP页面与MECM自治Portal完成集成** --已交付，本周测试结束
- 【Appstore】 **reconstuct the application details page--done** 【张阿利】
- 【AppStore】【POC】Appstore support VM based app【张阿利】--本周测试结束
- 【AppStore】 **AppStore应用首页集成个人帐号中心--done** 【张阿利】
- 【MECM】【POC】Applcm support VM based app.【张阿利】 --本周测试结束
-  **【MECM】MECM 支持本地边缘自治 Edge Autonomous;MECM Edge Portal integrate with MEP portal;MECM APPO/Inventory support synchronize data from edge.** 【张阿利】--已交付， 本周测试结束
- 【Mecm】 **Mecm应用首页集成个人帐号中心Account Management Portal Integrated to MECM admin Portal--done** 【张阿利】
- 【ATP】 **管理面引入Test Scenario,Test Suite, Test Case三层模型概念--done** 【李媛媛】
- 【ATP】 **ATP应用支持分权控制，区分不同角色进行差异化功能展现--done** 
- 【ATP】 **ATP优化问题单（用例下载，测试报告下载格式修改）--done** 【李媛媛】
- 【ATP】 **支持手工测试用例--done** 【李媛媛】
- 【ATP】 **ATP应用首页集成个人帐号中心--done ** 
- 【installation】online installation【敏熙】



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


**6. relative Tools** 

|Tool Name|Version|Address | comments  |
|---|---|---|---|
|SonarQube|8.4.2 |http://159.138.132.188:9000/projects  ||
|Jacoco|0.7.7.201606060606  |None |   |
|go test| 1.15.5 |None |   |

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

**9. Test Planning** 

| 时间  | 迭代研发  | 迭代测试  |
|---|---|---|
|0201-0211   | 第一次迭代  |   |
|0218-0228   | 第二次迭代  |第一次   |
|0301-0312   | 第三次迭代  |第二次   |
|0315-0326   | 修改bug  |第三次   |
|0329-0331   | 准备并发布  |准备并发布   |

针对测试人员，在第i次迭代测试开始前（即第i-1次测试过程中），需同研发人员澄清本轮测试需求，完成测试用例设计及评审；在第i次迭代测试执行中需执行所设计的测试用例（含自动化测试脚本），记录bug（及提出需求优化建议等），同时完成第i-1轮bug的回归测试。

**10. CI/CD Configuration Plan** 

**11. Criteria for Iterative Test Execution** 

    - Starting Criteria for Iterative test excution
        - 完成本次迭代的详细设计/架构更新Complete detail design/architecture updating for current iteration        
        - PTL确认所有task关闭（PTL confirm ）all tasks in current iteration are closed
        - PTL确认所有新开发代码都有自动化测试用例（PTL）confirm all recently developed code has autotest cases
        - PTL确认项目完成开发者自验证（PTL confirm）complete self-verification of project （including bugs from gitee visitors）
        - 近1天镜像自动构建成功率100% daily build for last 1 days is all succeeded【First Iteration】
        - 近1天镜像CICD成功率100% daily build for last 1 days is all succeeded【Second Iteration】  
        - 近1天镜像CICD成功率100%（含自动测试） daily build for last 1 days is all succeeded【Third Iteration】

    - Ending Criteria for test execution in Final Iteration

        - PTL确认bug单关闭（PTL confirm） vital/blocked bugs are all closed
        - 所有测试活动完整，测试通过 all test activities are completed and test results are passed
        - 无阻塞性及严重性问题遗留 No blocked or vital problems/bugs are left。
        - 确认所有依赖软件都在本地库中 confirm all dependent softwares are all stored locally
        - PTL确认满足单元测试覆盖率>=50%要求（PTL confirm） satisfy code coverage rate for unit test
        - PTL确认三方件归一化扫描结果（PTL confirm） 3rd-party components  are all scanned and have consistent versions（including license compliance）

**12. Risk analysis about testing** 

- 针对需求/设计调整和细化延迟的风险，尽可能提前接入需求分析，准备用例；
- 针对测试人员不足的风险，尽可能发挥现有人员的积极性，加强培训，提高自动化测试占比，提高效率。

**13. Test Summary** 

- Test Report（最后一次迭代测试执行完毕后，出具测试报告，含Known Issues&Defects，为项目发布服务）
- Test Work Summary（总结每位组员贡献，分享经验和不足，提出工作优化建议）

**Appendix. [Test category reference](https://gitee.com/edgegallery/community/blob/master/Test%20WG/Test%20Category/Edgeggallery_Test_Cateory.md)** 


