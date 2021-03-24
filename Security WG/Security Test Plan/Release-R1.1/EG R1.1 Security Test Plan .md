# EdgeGallery R1.1 Security Test Plan

## EdgeGallery R1.1 安全测试计划



#### 1.测试目标 Test target

本测试计划为EdgeGallery Release v1.1 安全测试计划，目的在于发现应用程序在版本迭代过程中可能出现的缺陷/漏洞，并评估其严重等级，并提供修补建议。以确保应用程序在版本迭代过程中的安全性。

This test plan is the EdgeGallery Release v1.1 security test plan. The purpose is to discover possible bugs/vulnerabilities of the application during the version iteration process, and evaluate its threat-level, and then provide some repair suggestions. The finally purpose is to ensure the security of the application during the version iteration process.

#### 2.先决条件 Prerequisites

[v1.1里程碑计划 Release Milestone](https://gitee.com/edgegallery/community/blob/master/TSC/Release/v1.1/%E7%89%88%E6%9C%AC%E8%AE%A1%E5%88%92.md)

[v1.1需求设计文档](https://gitee.com/edgegallery/community/tree/master/Architecture%20WG/Requirements/v1.1)

[v1.1需求列表 Epic List](https://gitee.com/OSDT/dashboard/issues?issue_type_id=238024&sort=created_at%20desc&milestone_id=92309)

[v1.1特性列表 Story List](https://gitee.com/OSDT/dashboard/issues?issue_type_id=199539&sort=created_at%20desc&milestone_id=92309)

[v1.1安全设计文档 Security Design Docs](https://gitee.com/edgegallery/community/tree/master/Security%20WG/Security%20Testing/Compliance%20Report/Version%201.1)

[EdgeGallery安全设计规范 Security Design Guide](https://gitee.com/edgegallery/community/blob/master/Security%20WG/Secure%20Design/Security%20Design%20Guide%20CN.md)

[EdgeGallery合规测试用例 Compliance Test Cases]()

[EdgeGallery渗透测试用例 Penetration Test Cases]()

#### 3.测试日期计划 Test Date Plain

1.1版本整体从1.30启动详细设计及编码，计划3.31发布。测试时间参考自 [EdgeGallery v1.1 里程碑](https://gitee.com/edgegallery/community/blob/master/TSC/Release/v1.1/%E7%89%88%E6%9C%AC%E8%AE%A1%E5%88%92.md) 。

The 1.1 version starts detailed design and coding from 1.30 as a whole, and is planned to be released in 3.31. Test time reference from [EdgeGallery v1.1 Milestone](https://gitee.com/edgegallery/community/blob/master/Security%20WG/Security%20Testing/README.md).

| Date        | Coding Status    | Compliance Test          | Penetration Test          | Regression Test          |
| ----------- | ---------------- | ------------------------ | ------------------------- | ------------------------ |
| 2.1 - 2.11  | Sprint 1 coding  |                          |                           |                          |
| 2.18 - 2.28 | Sprint 2 coding  | Sprint 1 compliance test | Sprint 1 penetration test |                          |
| 3.1 - 3.12  | Sprint 3 coding  | Sprint 2 compliance test | Sprint 2 penetration test | Sprint 1 regression test |
| 3.13 - 3.22 | Bug-fixing       | Sprint 3 compliance test | Sprint 3 penetration test | Sprint 2 regression test |
| 3.23 - 3.28 | Bug-fixing       |                          |                           | Sprint 3 regression test |
| 3.29 - 3.31 | Ready to release | Complete Test Report     | Complete Test Report      |                          |

#### 4.测试人员及分工 Testers and Division

4.1 扈冰：

​    UserMgmt (ComplianceTest/PenetrationTest)

​    Appstore (ComplianceTest/PenetrationTest)

​    Developer (ComplianceTest/PenetrationTest)

​    ATP (ComplianceTest/PenetrationTest)

​    MECM (ComplianceTest/PenetrationTest)

​    MEP (ComplianceTest/PenetrationTest)


#### 5.测试范围 Test Scope

测试范围按照特性划分，开发状态分为“已完成”和“未完成”，测试状态分为“未开始”、“测试中”、“通过”和“不通过”，详见下表：

The test scope is divided according to stories, the development status is divided into "completed" and "not completed", and the test status is divided into "not started", "testing", "passed" and "not passed" , see the table below for details:

##### 5.1  Sprint 1:


| Story                                                        | 开  发  状  态 |                        关联合规用例                         | 合规测试状态 | 关联渗透用例 | 渗透测试状态 |
| --------   | :----:  | :----: | :----: |  :----: | :----:  |
| [【developer】支持国际化](https://gitee.com/OSDT/dashboard?issue_id=I37RKA)|已完成|-|-|-|[I38KCS](https://gitee.com/OSDT/dashboard?issue_id=I38KCS)不通过|
| [【MECM】example-apps support demo app service call.     ](https://gitee.com/OSDT/dashboard?issue_id=I2P8CH) |未完成| - | - | - | - |
| [【MECM】 Adaptive mep url unify ](https://gitee.com/OSDT/dashboard?issue_id=I2NTWF) | 已完成 | - | - | - | - |
| [【developer】可视化界面设计和开发（sprint1, sprint2）](https://gitee.com/OSDT/dashboard?issue_id=I2EDT9) | 未完成 | - | - | - | - |
| [【developer】支持部署文件可视化配置（sprint1, sprint2）](https://gitee.com/OSDT/dashboard?issue_id=I2EDT4) | 未完成 | - | - | 007 | sprint1编码未完成，移至sprint2测试 |
| [【developer】mep SDK的验证和使用 python](https://gitee.com/OSDT/dashboard?issue_id=I2EDQV) | | - | - | - | - |
| [【developer】vnc接口实现](https://gitee.com/OSDT/dashboard?issue_id=I2EDQ9) |  已完成 | 2.1 | 测试完毕，通过 | 007 | [I39EDO](https://gitee.com/OSDT/dashboard?issue_id=I39EDO)，[I39L4X](https://gitee.com/OSDT/dashboard?issue_id=I39L4X), [I39QF7](https://gitee.com/OSDT/dashboard?issue_id=I39QF7)不通过 |
| [【developer】vnc界面设计和开发](https://gitee.com/OSDT/dashboard?issue_id=I2EDQ5) |  已完成   | 2.1 | 测试完毕，通过 | - | - |
| [【developer】developer部署失败，返回详细的错误信息](https://gitee.com/OSDT/dashboard?issue_id=I2EDP0) |未完成 | - | - | - | - |
| [ATP管理面portal优化](https://gitee.com/OSDT/dashboard?issue_id=I2EC3E) |  已完成 | 1.1, 1.2, 1.3, 1.12, 2.2, 5.3, 7.2, 7.9, 8.1, 9.1, 9.2, 9.4 | 测试完毕,[I38AAW](https://gitee.com/OSDT/dashboard?issue_id=I38AAW)不通过 | 007， 015 | 未开始，待分权功能完成后测试 |
| [ATP应用包区分ARM、X86](https://gitee.com/OSDT/dashboard?issue_id=I2EC1E) |已完成 | - | - | - | - |
| [Appstore应用包区分ARM、X86](https://gitee.com/OSDT/dashboard?issue_id=I2EC19) |未完成 | - | - | - | - |
| [【UserMgmt】用户统一管理功能支持对用户停用/启用](https://gitee.com/OSDT/dashboard?issue_id=I2E9MB) | 已完成| 1.2, 1.6, 1.15, 8.1 | 测试完毕,[I38BIZ](https://gitee.com/OSDT/dashboard?issue_id=I38BIZ)不通过 | 007 | 测试完毕，通过 |
| [【UserMgmt】支持用户统一管理基本查询展示功能](https://gitee.com/OSDT/dashboard?issue_id=I2E9M8) | 已完成| 1.6, 1.15, 8.1 | 测试完毕,[I38BIZ](https://gitee.com/OSDT/dashboard?issue_id=I38BIZ)不通过 | 005 | 测试完毕，[I38RU2](https://gitee.com/OSDT/dashboard?issue_id=I38RU2), [I38RL7](https://gitee.com/OSDT/dashboard?issue_id=I38RL7)不通过 |
| [【MEP】mep url unify](https://gitee.com/OSDT/dashboard?issue_id=I2E8D5) | 已完成| 8.1 | [I391DX](https://gitee.com/OSDT/dashboard?issue_id=I391DX)不通过 | - | - |
| [【Developer】Developer应用支持分权控制，区分不同角色进行差异化功能展现（sprint1, sprint2）](https://gitee.com/OSDT/dashboard?issue_id=I2E6S7) | 未完成| 1.2 | 测试完毕，通过 | 007 | 测试完毕，通过 |
| [【Appstore】应用共享界面优化](https://gitee.com/OSDT/dashboard?issue_id=I2E1U4) |已完成 | - | - | - | - |
| [【Appstore】应用仓库界面优化](https://gitee.com/OSDT/dashboard?issue_id=I2E1T5) | 已完成| - | - | - | - |
| [【installer】支持PaaS层按需部署](https://gitee.com/OSDT/dashboard?issue_id=I2E0SI) | 未完成| - | - | - | - |
| [【installer】支持IaaS层按需部署（sprint1, sprint2）](https://gitee.com/OSDT/dashboard?issue_id=I2E0NU) |未完成 | - | - | - | - |
| [【UserMgmt】用户统一管理功能支持设置用户所属角色](https://gitee.com/OSDT/dashboard?issue_id=I23FRE) | 已完成| 1.2 | 测试完毕，通过 |007|测试完毕，通过|
| [【MECM】APP Instance Termination Enhancement](https://gitee.com/OSDT/dashboard?issue_id=I2DQVG) |  已完成  | - | - | - | - |
| [【MEP】APP Instance Termination Enhancement](https://gitee.com/OSDT/dashboard?issue_id=I2DQV5) | 已完成| 1.1, 2.2, 8.1, 9.2 | 测试完毕,[I38O5Y](https://gitee.com/OSDT/dashboard?issue_id=I38O5Y),[I3952Z](https://gitee.com/OSDT/dashboard?issue_id=I3952Z)不通过 | - | - |
| [【mep-agent】mep-agent提供根据service name返回endpoint信息](https://gitee.com/OSDT/dashboard?issue_id=I2CXVE) | 已完成| 8.1, 9.2 | 测试完毕，通过 | - | - |
| [【MECM】增加对依赖应用实例的删除校验逻辑](https://gitee.com/OSDT/dashboard?issue_id=I24W8Z) | 已完成 | - | - | - | - |
| [【MECM】增加对依赖应用的查询与部署提示](https://gitee.com/OSDT/dashboard?issue_id=I1QWVL) | 已完成| - | - | - | - |





##### 5.2  Sprint 2:


| Story        | 开 发 状 态   | 关联合规用例 | 合规测试状态 | 关联渗透用例  | 渗透测试状态  |
| :-------   | :----:  | :----: | :----: |  :----: | :----:  |
| [【AppStore】支持应用主动拉取功能页面](https://gitee.com/OSDT/dashboard?issue_id=I394KM)| 已完成 | - |-|-|-|
| [【ATP】ATP任务接口模型变更](https://gitee.com/OSDT/dashboard?issue_id=I2Z56Y)|已完成|-|-|-|-|
| [【MECM/example-apps】Make  example-apps open source](https://gitee.com/OSDT/dashboard?issue_id=I2P8VJ) | 已完成 | - | - | - | - |
| [【UserMgmt】支持用户通过邮箱地址登录](https://gitee.com/OSDT/dashboard?issue_id=I2P8LC)|已完成|-|-|-|-|
| [【Developer】Developer Support Demo APP guidence（sprint2，sprint3）](https://gitee.com/OSDT/dashboard?issue_id=I2P8C2) |已完成| - | - | - | - |
| [【ATP】ATP测试用例扩充到总数14个](https://gitee.com/OSDT/dashboard?issue_id=I2NU9C) |已完成 | - | - | 信息收集 | [I39NCD](https://gitee.com/OSDT/dashboard?issue_id=I39NCD)不通过 |
| [【developer】可视化界面设计和开发（sprint1, sprint2）](https://gitee.com/OSDT/dashboard?issue_id=I2EDT9) | 已完成 | - | - | - | - |
| [【developer】支持部署文件可视化配置（sprint1, sprint2）](https://gitee.com/OSDT/dashboard?issue_id=I2EDT4) |已完成 | 1.1 | 测试完毕，通过 | - | - |
| [【developer】样例界面开发](https://gitee.com/OSDT/dashboard?issue_id=I2EDSG) |已完成| - | - | - | - |
| [【developer】部署结果展示端口、协议等信息](https://gitee.com/OSDT/dashboard?issue_id=I2EDPL) |已完成 | - | - | - | - |
| [【developer】支持能力中心管理](https://gitee.com/OSDT/dashboard?issue_id=I2EDOC)|已完成|1.3|测试完毕，[I3B49X](https://gitee.com/OSDT/dashboard?issue_id=I3B49X)不通过|005，信息泄露|测试完毕，[I3B4JR](https://gitee.com/OSDT/dashboard?issue_id=I3B4JR)不通过|
| [【developer】支持配置沙箱环境](https://gitee.com/OSDT/dashboard?issue_id=I2EDO1)|已完成|1.3|测试完毕，[I3B49X](https://gitee.com/OSDT/dashboard?issue_id=I3B49X)不通过|005，信息泄露|测试完毕，[I3B4JR](https://gitee.com/OSDT/dashboard?issue_id=I3B4JR)不通过|
| [【developer】系统管理面界面开发](https://gitee.com/OSDT/dashboard?issue_id=I2EDNR)|已完成|developer分权的子任务，一并测试|-|-|-|
| [【ATP】支持在用户面贡献测试用例](https://gitee.com/OSDT/dashboard?issue_id=I2EC4R) | 已完成| - | - | 011 | 待sprint3完成上传功能后测试 |
| [【ATP】引入Test Scenario,Test Suite, Test Case三层模型概念](https://gitee.com/OSDT/dashboard?issue_id=I2EC2R) |已完成| - | - | 逻辑漏洞 | 测试完毕，[I3ABAL](https://gitee.com/OSDT/dashboard?issue_id=I3ABAL)不通过 |
| [【UserMgmt】支持用户忘记密码后通过邮箱找回](https://gitee.com/OSDT/dashboard?issue_id=I2E9LG) |已完成| 1.6, 1.8, 1.10, 1.14, 1.15 | 测试完毕，通过 | 007，邮件轰炸 | 测试完毕，[I3A7CJ](https://gitee.com/OSDT/dashboard?issue_id=I3A7CJ)不通过 |
| [【UserMgmt】支持用户通过邮箱注册](https://gitee.com/OSDT/dashboard?issue_id=I2E9LE) |已完成| 1.6, 1.10, 1.14, 1.15 | 测试完毕，通过 | 任意用户注册，邮件轰炸 | 测试完毕,[I3A8BQ](https://gitee.com/OSDT/dashboard?issue_id=I3A8BQ), 不通过 |
| [【MEP】notify  to app when subscibed service status changed](https://gitee.com/OSDT/dashboard?issue_id=I2E83K) |已完成| - | - | - | - |
| [【MEP】subscribe api     ](https://gitee.com/OSDT/dashboard?issue_id=I2E835) |已完成| - | - | - | - |
| [【Developer】Developer应用支持分权控制，区分不同角色进行差异化功能展现](https://gitee.com/OSDT/dashboard?issue_id=I2E6S7)|已完成|1.2|测试中，[I3AGUW](https://gitee.com/OSDT/dashboard?issue_id=I3AGUW)不通过|007|测试中，[I3AGUW](https://gitee.com/OSDT/dashboard?issue_id=I3AGUW)不通过|
| [【AppStore】支持容器镜像管理 Support Container Image Manage](https://gitee.com/OSDT/dashboard?issue_id=I2E3T8) |已完成| -| -| -| -|
| [【Appstore】文档界面优化](https://gitee.com/OSDT/dashboard?issue_id=I2E1TG) |已完成| - | - | - | - |
| [【AppStore】支持应用主动拉取功能](https://gitee.com/OSDT/dashboard?issue_id=I2E10V) |已完成| 1.1 1.2 | 测试完毕，通过 | 007 | 测试完毕，[I3A4LI](https://gitee.com/OSDT/dashboard?issue_id=I3A4LI), [I39SBF](https://gitee.com/OSDT/dashboard?issue_id=I39SBF)不通过 |
| [【installer】支持IaaS层按需部署（sprint1, sprint2）](https://gitee.com/OSDT/dashboard?issue_id=I2E0NU) |已完成 | - | - | - | - |




##### 5.3  Sprint 3:

| Story        | 开 发 状 态   | 关联合规用例 |  合规测试状态  | 关联渗透用例  | 渗透测试状态 |
| --------   | -----:  | :----: | :----:  | :----:  | :----:  |
| [【AppStore】首页优化](https://gitee.com/OSDT/dashboard?issue_id=I39OZT)|已完成|-|-|004|测试完毕，通过|
| [【AppStore】消息中心界面优化](https://gitee.com/OSDT/dashboard?issue_id=I39OZR)|已完成|-|-|-|-|
| [【ATP】管理面引入Test Scenario,Test Suite, Test Case三层模型概念](https://gitee.com/OSDT/dashboard?issue_id=I391V6)|已完成|-|-|-|-|
| [对接Dev设计的CSAR包，自动生成设计结果](https://gitee.com/OSDT/dashboard?issue_id=I34K3X) |未完成| - | - | - | - |
| [【MECM】Applcm support logs of the app deployment to developer](https://gitee.com/OSDT/dashboard?issue_id=I2P8KM) | 已完成 | 1.1, 1.3, 1.12, 2.1, 2.2, 5.3, 6.2, 8.1,  9.1, 9.2, 9.4 | 测试中 | - | - |
| [【Developer】Developer Support Demo APP guidence（sprint2，sprint3）](https://gitee.com/OSDT/dashboard?issue_id=I2P8C2) |已完成| - | - | - | - |
| [【MECM】MECM Edge Portal integrate with MEP portal. ](https://gitee.com/OSDT/dashboard?issue_id=I2P7T7) | 已完成| - | - | - | - |
| [【MECM】MECM APPO/Inventory support synchronize data from edge.](https://gitee.com/OSDT/dashboard?issue_id=I2P7RL) |已完成| 1.1, 1.3, 1.5, 1.12, 2.1, 2.2, 5.3, 6.2, 8.1,  9.1, 9.2, 9.4 | 测试中 | - | - |
| [【developer】支持在ATP测试时，将镜像包传递给atp。](https://gitee.com/OSDT/dashboard?issue_id=I2MALE) |已完成| - | - | - | - |
| [【developer】支持在发布到AppStore时，将应用镜像信息传递给appstore。](https://gitee.com/OSDT/dashboard?issue_id=I2MALB) |已完成| - | - | - | - |
| [【developer】支持本地上传镜像接口](https://gitee.com/OSDT/dashboard?issue_id=I2MAL7)|已完成|-|-|-|-|
| [【developer】CSAR包支持配置镜像信息](https://gitee.com/OSDT/dashboard?issue_id=I2MAL4)|已完成|-|-|-|-|
| [【MEP】MEP展示服务调用次数统计信息](https://gitee.com/OSDT/dashboard?issue_id=I2M74K) |已完成| 1.1, 2.2, 9.2 | 测试中 | - | - |
| [【MEP】MEP拓扑展示订阅关系及订阅应用和被订阅应用数量](https://gitee.com/OSDT/dashboard?issue_id=I2M74E) |已完成| 1.1, 2.2, 9.2 | 测试中 | - | - |
| [【MEP】MEP页面与MECM自治Portal完成集成](https://gitee.com/OSDT/dashboard?issue_id=I2M743) |已完成| 1.1, 2.2, 9.2 | 测试中 | - | - |
| [【developer】usermgmt支持机机接口后，developer支持24h后自动释放资源](https://gitee.com/OSDT/dashboard?issue_id=I2EEAU) |已完成 | - | - | - | - |
| [【developer】样例界面开发（sprint2，sprint3）](https://gitee.com/OSDT/dashboard?issue_id=I2EDSG) |已完成| - | - | - | - |
| [【developer】mep face recognition SDK的验证和使用 java](https://gitee.com/OSDT/dashboard?issue_id=I2EDRU) | 已完成| - | - | - | - |
| [【developer】新增获取pod详情接口](https://gitee.com/OSDT/dashboard?issue_id=I2EDP2)|已完成|1.1|测试完毕，通过|-|-|
| [【ATP】支持手工测试用例](https://gitee.com/OSDT/dashboard?issue_id=I2EC5P) |已完成| - | - | - | - |
| [【ATP】ATP优化问题单（用例下载，测试报告下载格式修改）](https://gitee.com/OSDT/dashboard?issue_id=I2EC47) |已完成 | - | - | - | - |
| [【MEP】MEP支持服务管理架构可视化](https://gitee.com/OSDT/dashboard?issue_id=I2EB85) |已完成| 1.1, 2.2, 9.2 | 测试中 | - | - |
| [【MECM】MECM 支持本地边缘自治 Edge Autonomous](https://gitee.com/OSDT/dashboard?issue_id=I2EB7C) |已完成| 1.1, 1.3, 1.5, 1.12, 2.1, 2.2, 5.3, 6.2, 8.1,  9.1, 9.2, 9.4 | 测试中 | 007 | 测试中 |
| [【Lab】Lab应用首页集成个人帐号中心](https://gitee.com/OSDT/dashboard?issue_id=I2E9M5) |已完成| 1.6, 1.15 | 测试完毕，通过 | 007 |测试完毕，通过 |
| [【ATP】ATP应用首页集成个人帐号中心](https://gitee.com/OSDT/dashboard?issue_id=I2E9M4) |已完成| 1.6, 1.15 | 测试完毕，通过 | 007 | 测试完毕，通过 |
| [【Mecm】Mecm应用首页集成个人帐号中心](https://gitee.com/OSDT/dashboard?issue_id=I2E9M3) |已完成| 1.6, 1.15 | 测试完毕，通过 | 007 | 测试完毕，通过 |
| [【AppStore】AppStore应用首页集成个人帐号中心](https://gitee.com/OSDT/dashboard?issue_id=I2E9LX) |已完成| 1.6, 1.15 | 测试完毕，通过 | 007 | 测试完毕，通过 |
| [【Developer】Developer应用首页集成个人帐号中心](https://gitee.com/OSDT/dashboard?issue_id=I2E9LS) |已完成| 1.6, 1.15 | 测试完毕，通过 | 007 | 测试完毕，通过 |
| [【UserMgmt】用户个人帐号中心支持修改个人登录密码](https://gitee.com/OSDT/dashboard?issue_id=I2E9LM) |已完成| 1.6, 1.15 | 测试完毕，通过 | 007 | 测试完毕，通过 |
| [【UserMgmt】用户个人帐号中心支持修改个人信息](https://gitee.com/OSDT/dashboard?issue_id=I2E9LL) |已完成| 1.6, 1.15 | 测试完毕，通过 | 007 | 测试完毕，通过 |
| [【UserMgmt】支持通过用户个人帐号中心查看个人信息](https://gitee.com/OSDT/dashboard?issue_id=I2E9LK) |已完成| 1.6, 1.15 | 测试完毕，通过 | 007 | 测试完毕，通过 |
| [【Mecm】Mecm应用支持分权控制，区分不同角色进行差异化功能展现](https://gitee.com/OSDT/dashboard?issue_id=I2E6SS) |已完成| 1.2 | 测试完毕，通过 | 007 | 测试完毕，通过 |
| [【ATP】ATP应用支持分权控制，区分不同角色进行差异化功能展现](https://gitee.com/OSDT/dashboard?issue_id=I2E6SQ) |已完成| 1.2 | 测试完毕，通过 | 007 | 测试完毕，[I3BJ4L](https://gitee.com/OSDT/dashboard?issue_id=I3BJ4L)不通过 |
| [【AppStore】AppStore应用支持分权控制，区分不同角色进行差异化功能展现](https://gitee.com/OSDT/dashboard?issue_id=I2E6SE)|已完成|1.2|测试完毕,[I2E6SE](https://gitee.com/OSDT/dashboard?issue_id=I2E6SE)不通过|007|测试完毕,[I3A0WP](https://gitee.com/OSDT/dashboard?issue_id=I3A0WP)不通过|
| [【MECM】支持容器镜像管理Support Container Image Manage](https://gitee.com/OSDT/dashboard?issue_id=I2E3V8) |已完成| 1.1, 1.3, 1.12, 2.1, 2.2, 5.3, 6.2, 8.1, 9.1, 9.2, 9.4 | 测试中 | - | - |
| [【Developer】支持容器镜像管理](https://gitee.com/OSDT/dashboard?issue_id=I2E3SL)|已完成|-|-|-|-|
| [【Installer】支持容器镜像管理](https://gitee.com/OSDT/dashboard?issue_id=I2E3RE)|已完成|-|-|-|-|
| [【Appstore】reconstuct the application details page](https://gitee.com/OSDT/dashboard?issue_id=I2E1TT) |已完成| - | - | - | - |
| [【installer】支持用户定制化按需部署](https://gitee.com/OSDT/dashboard?issue_id=I2E0UK) |已完成| - | - | - | - |
| [【installer】支持应用按需部署](https://gitee.com/OSDT/dashboard?issue_id=I2E0TP) |已完成| - | - | - | - |



#### 6.安全测试用例管理 Security Test Cases Management

安全测试用例包括 [安全合规测试用例](https://gitee.com/edgegallery/community/tree/master/Security%20WG/Security%20Testing/Design%20Compliance%20Test%20Cases) 和 [渗透测试用例](https://gitee.com/edgegallery/community/tree/master/Security%20WG/Security%20Testing/Penetration%20Test%20Cases) 。

测试用例包括：测试用例ID，测试目的，测试描述，测试工具及其配置，测试步骤，预期结果等。

测试用例模板请参考 [测试用例模板](https://gitee.com/edgegallery/community/blob/master/Security%20WG/Security%20Testing/Security%20Test%20Case%20Templeate.rst) 。

测试结果包括：通过 / 不通过

Security test cases include [Security Compliance Test Cases](https://gitee.com/edgegallery/community/tree/master/Security%20WG/Security%20Testing/Design%20Compliance%20Test%20Cases) and [Penetration Test Cases](https://gitee.com/edgegallery/community/tree/master/Security%20WG/Security%20Testing/Penetration%20Test%20Cases).

Test cases include: test case ID, test purpose, test description, test tool and configuration, test steps, expected results, etc.

Please refer to [Test Case Template](https://gitee.com/edgegallery/community/blob/master/Security%20WG/Security%20Testing/Security%20Test%20Case%20Templeate.rst) for test case templates.

Test results include: pass / fail

#### 7.缺陷/漏洞管理 Bug/vulne Management

缺陷/漏洞统一在Gitee中录入，录入方法请参考[操作指南](https://gitee.com/edgegallery/community/blob/master/Test%20WG/Test%20case-bug%20template/Gitee_test_bug_template.md)。

缺陷/漏洞优先级分为：严重，主要，次要，一般。

Bugs/vulnerabilities are entered in Gitee. Please click [operation guide](https://gitee.com/edgegallery/community/blob/master/Test%20WG/Test%20case-bug%20template/Gitee_test_bug_template.md).

The priority of bugs/vulnerabilities is divided into: serious, major, minor, and general.

#### 8.相关工具 Relative Tools

| No.  | Tool name | version   | purpose                                   | comment |
| ---- | --------- | --------- | ----------------------------------------- | ------- |
| 1    | BurpSuite | v2020.9.1 | Capture http package for analyzing        | ...     |
| 2    | OWASP ZAP | 2.9.0     | Comprehensive vulnerability scanning tool |         |
| 3    | SenInfo   | 2.0.10    | Scan for sensitive information            |         |

#### 9.手动开发测试脚本 Test scripts developed manually

| No.  | Tool name | version | purpose | comment |
| ---- | --------- | ------- | ------- | ------- |
|      | N/A       | ...     | ...     | ...     |

#### 10.测试总结 Test Summary

测试完毕后，将生成 “EdgeGallery R1.1安全测试报告”。

After the test, plain to export “EdgeGallery R1.1 Security Test Report”.

