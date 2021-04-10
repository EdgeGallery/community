一、引言Introduction

1.1 编写目的Writing Purpose

本测试报告为EdgeGallery Release1.1的测试报告，在于总结测试阶段的测试情况以及分析结果，描述预定需求的符合性及预定质量指标的符合性。作为测试质量参考文档提供给开源社区开发人员、测试人员、管理人员及感兴趣的其他人员等参考。

1.2 项目背景 Project Background

EdgeGallery社区聚焦5G边缘计算场景，通过开源协作构建起MEC边缘的资源、应用、安全、管理的基础框架和网络开放服务的事实标准，并实现同公有云的互联互通。在兼容边缘基础设施异构差异化的基础上，构建起统一的MEC应用生态系统。

1.3 [系统简介 System Overview](https://gitee.com/edgegallery/docs/blob/master/Get%20Started/Start%20from%20A%20Demo%20on%20EdgeGallery.md)

1.4 参考资料 References

1.Release V1.1需求

- [R1.1 EPIC](https://gitee.com/OSDT/dashboard/issues?issue_type_id=238024&milestone_id=92309)
- [R1.1 Story](https://gitee.com/OSDT/dashboard/issues?issue_type_id=199539&milestone_id=92309)
- [R1.1需求文档](https://gitee.com/edgegallery/community/tree/master/Architecture%20WG/Requirements/v1.1)

2.[Release V1.1测试计划（含版本质量指标）](https://gitee.com/edgegallery/community/blob/master/Test%20WG/Test%20Release/EdgeGallery%20R1.1%20Test%20Plan.md)

二、测试概要 Test Overview

2.1 测试用例及脚本设计 Test Cases and Auto test scripts

设计测试用例共计134个。
请点击[测试用例清单](https://gitee.com/OSDT/dashboard/issues?issue_type_id=232575&sort=created_at%20asc&labels=ReleaseV1.1)查看详情。

2.2 测试环境与配置 Test Env and related Configuration
| server ip |Usage   | password |
|-----------|---|----------|
| 119.8.36.45 | 中心  | xxxx    |


2.3 测试方法和工具 Test Method and Tools

a.单元测试代码覆盖率工具：Jacoco（Java语言）、GoTest（Go语言）
【基于当前实际情况，本次版本前端代码不做单元测试及代码覆盖率检查，改为界面检视】
  
代码覆盖率测试结果分析（SonarQube）：http://159.138.132.188:9000/projects?sort=-analysis_date

|Tool Name|Version|Address | comments  |
|---|---|---|---|
|SonarQube|8.7 |http://159.138.132.188:9000/projects  ||
|Jacoco|0.7.7.201606060606  |None |   |
|go test| 1.15.5 |None |   |

b.CICD工具Jenkins：http://119.8.34.36:8080/

c.镜像库：http://159.138.137.155/

三、测试结果及缺陷分析 Test Results and Defects Analysis

3.1 测试执行情况及记录Test exceuction and Records

3.1.1 测试组织 Test Organizing

测试组负责人：刘辉

测试人员：侯敏熙、李治谦、许丹、李媛媛、张阿利、姜伟、mengpuhui、丁宇卿、于小龙

配置管理人员：许丹

3.1.2 测试时间（各负责人daily更新） Test Schedule

第一轮迭代测试2021年2月18日至2月28日。

- 【Developer】【POC】搭建设计态前台框架
-  **【Developer】应用包区分ARM，x86【李媛媛】--done** 
-  **【developer】提升应用本地调测能力， 如端口配置错误，网络不匹配、服务名冲突等【李媛媛、李治谦】--done** 
-  **【developer】提供可视化配置，部署文件的可视化配置【李媛媛】--done** 
-  **【developer】提供应用远程登录如VNC运维能力【李媛媛】--done** 
-  **【UserMgmt】 **EdgeGallery平台用户管理特性优化** 【张阿利、李治谦】--done** 
-  **【UserMgmt】 **EdgeGallery平台支持用户分权控制** 【张阿利】--done** 
-  **【UserMgmt】 **支持用户通过邮箱注册** 【李治谦】--done** 
-  **【UserMgmt】 **支持用户通过邮箱登录** 【李治谦】--done** 
-  **【Appstore】统一appstore组件风格【张阿利】--done** 
-  **【Appstore】应用包区分ARM，x86【张阿利】--done** 
-  **【AppStore】 **前端界面优化（应用共享、应用仓库）** 【张阿利】--done** 
-  **【mep】 **mep url unify** 【张阿利】--done** 
- 【mep-agent】 **mep-agent提供根据service name返回endpoint信息--done**  pmeng 
- 【MEP/MECM】 **APP Instance Termination Enhancement--done** 【刘辉】
- 【mecm】 **Adaptive mep url unify【张阿利】--done** 
- 【mecm】 **example-apps support demo app service call【张阿利】--done** 
-  **【ATP】ATP应用包区分ARM、X86【李媛媛】--done** 
-  **【ATP】ATP管理面portal优化：ATP管理面任务增加批量删除操作、新加统计分析接口【李媛媛】--done** 

 第二轮迭代测试2021年3月1日至3月14日。

-  **【developer】新增获取pod详情接口【李媛媛】--done** 
-  **【Developer】Developer Support Demo APP guidence【李媛媛】--done**  
-  **【developer】修改建议，日志下载功能【李媛媛】--done，下载功能取消** 
-  **【developer】提供可视化配置，部署文件的可视化配置【李媛媛】--done** 
-  **【developer】支持项目管理、支持配置沙箱环境【李媛媛】--done**  
-  **【developer】部署结果展示端口、协议等信息【李媛媛】--done** 
- 【developer】【POC】在应用设计时，可以通过点击查看组件的基本信息；可以设计服务之间的依赖关系；以通过拖拽的方式进行App设计，并保存设计结果； **支持拖拽的方式进行组件移动** 
- 【developer】【POC】在EG平台按需部署设计时，支持保存设计结果，支持导出部署脚本
-  **【Developer】Developer应用支持分权控制，区分不同角色进行差异化功能展现【李媛媛】--done**
-  **【developer】usermgmt支持机机接口后，developer支持24h后自动释放资源；developer部署失败，返回详细的错误信息【李媛媛】--done** 
-  **【developer】系统管理面界面开发【李媛媛】--done**  
-  **【developer】支持项目管理、支持能力中心管理【李媛媛】--done** 
-  **【developer】提升SDK/API可获性与可用性【李媛媛】--done**  
-  **【UserMgmt】支持用户忘记密码后通过邮箱找回【李治谦】--done** 
-  **【Appstore】文档界面优化【李治谦】--done** 
-  **【AppStore】支持容器镜像管理 Support Container Image Manage【张阿利、李治谦】--done**（本版本不支持镜像路hardcoding，遗留到1.2版本） 
- 【AppStore】 **支持应用主动拉取功能--done** 【张阿利】
- 【AppStore】 **AppStore应用支持分权控制，区分不同角色进行差异化功能展现（迭代二完成task->【AppStore】应用共享和应用管理分权控制）【张阿利】--done** 
- 【MEP】 **MEP展示服务调用次数统计信息 --done**【张阿利】
-  **【MEP】subscribe api--done** 【张阿利】
-  **【MEP】notify to app when subscibed service status changed** 
-  **【MECM/example-apps】Make example-apps open source【张阿利】** --done
-  **【MECM】Applcm support logs of the app deployment to developer【张阿利】--done** 
-  **【MECM】支持容器镜像管理Support Container Image Manage--done** 【李治谦】
-  **【Mecm】Mecm应用支持分权控制，区分不同角色进行差异化功能展现MECM Support Administrator/Tanant/Guest Role【张阿利】--done** 
- 【ATP】 **用户面引入Test Scenario,Test Suite, Test Case三层模型概念【李媛媛】** --done
- 【ATP】 **支持在用户面贡献测试用例【李媛媛】** --done
- 【ATP】 **ATP测试用例扩充到总数14个** --done
- 【ATP】 **ATP任务接口模型变更【李媛媛】** --done
- 【installation】 **EG离线部署脚本优化，实现按需部署能力【侯敏熙】--done** 


第三轮迭代测试2021年3月15日至3月28日。

-  **【developer】样例界面开发【李媛媛】--done** 
-  **【Developer】在EG平台按需部署设计时，支持对默认组件的配置--done** 
-  **【Developer】【POC】Developer support VM app--done**【李治谦、张阿利】
-  **【Developer】支持容器镜像管理【李治谦】--done**
- 【Developer】【POC】在应用设计时，可以通过点击查看已选组件的信息，并且进行参数配;对接Dev设计的CSAR包，自动生成设计结果;
 **在设计态首页，可以创建/删除一个设计** 
- 【developer】 **支持在ATP测试时，将镜像包传递给atp;支持在发布到AppStore时，将应用镜像信息传递给appstore--done** 
- 【developer】 **mep face recognition SDK的验证和使用 java--done** 
- 【Developer】 **Developer应用首页集成个人帐号中心--done** 
- 【UserMgmt】 **支持通过用户个人帐号中心查看个人信息;用户个人帐号中心支持修改个人信息;用户个人帐号中心支持修改个人登录密码--done** 【李治谦】
- 【MEP】 **MEP拓扑展示订阅关系及订阅应用和被订阅应用数量--done** 【yuxiaolong】
- 【MEP】 **MEP支持服务管理架构可视化【张阿利】--done** 
- 【MEP】 **MEP页面与MECM自治Portal完成集成--done** 【张阿利】
- 【Appstore】 **reconstuct the application details page--done** 【张阿利】
- 【AppStore】 **【POC】Appstore support VM based app【张阿利】--done** 
- 【AppStore】 **AppStore应用首页集成个人帐号中心--done** 【张阿利】
- 【MECM】 **【POC】Applcm support VM based app.【张阿利】 --done** 
-  **【MECM】MECM 支持本地边缘自治 Edge Autonomous;MECM Edge Portal integrate with MEP portal; MECM APPO/Inventory support synchronize data from edge . 【张阿利】--done**
- 【Mecm】 **Mecm应用首页集成个人帐号中心Account Management Portal Integrated to MECM admin Portal--done** 【张阿利】
- 【ATP】 **管理面引入Test Scenario,Test Suite, Test Case三层模型概念--done** 【李媛媛】
- 【ATP】 **ATP应用支持分权控制，区分不同角色进行差异化功能展现--done** 【李媛媛】
- 【ATP】 **ATP优化问题单（用例下载，测试报告下载格式修改）--done** 【李媛媛】
- 【ATP】 **支持手工测试用例--done** 【李媛媛】
- 【ATP】 **ATP应用首页集成个人帐号中心--done **【李媛媛】 
- 【installation】 **online installation【敏熙】--done** 

 

3.1.3 测试用例执行统计 analysis of Test Case execution

|需求点|TC总数|成功个数|失败个数|未执行个数|TC成功率|
|--|--|--|--|--|--|
| developer | 37 | 37 | 0 | 0 | 100% |
| appstore | 31 |31  |0  |0  | 100% |
| usermgmt | 13 | 13 | 0 |0  | 100% |
| mecm|8 |8  | 0 | 0 | 100% |
| ATP | 43 | 43 | 0 | 0 | 100% |
| MEP |2 | 2 | 0 | 0 | 100% |


3.2 覆盖分析 Coverage Analysis

3.2.1 需求覆盖 Requirement Coverage

软件实现XX%覆盖Release V1.1需求。

3.2.2 单元测试代码覆盖（数据源于SonarQube） Code Coverage for Unit Test

根据TSC20200923会议决定，本次测试版本依然不考虑前端代码覆盖率，关注后台代码覆盖率。
所有数据来自于北京时间 2021.3.29 17:00 [SonarQube页面查询结果](http://159.138.132.188:9000/projects?sort=name)。

| 模块                      | 代码覆盖率 |
|---------------------------|-----------|
| api-emulator              | 55.2%     |
| appstore-be               | 57.2%     |
| atp-be                    | 56.3%     |
| developer-be              | 57.7%     |
| mecm-apm                  | 50.6%     |
| memc-applcm-k8splugin     | 61.2%     |
| memc-applcm-lcmcontroller | 64.0%     |
| mecm-appo                 | 59.9%     |
| mecm-apprulemgr           | 58.2%     |
| mecm-inventory            | 61.3%     |
| mep-agent                 | 60.7%     |
| mep-dnsserver             | 70.8%     |
| mep-mepauth               | 56.3%     |
| mep-mepserver             | 55.4%     |
| plugins                   | 70.2%     |
| toolchain                 | 44.7%     |
| user-mgmt-be              | 56.8%     |
| website-gateway           | 31.5%     |


**Note:**  1、website-gateway代码覆盖率低的解释：website-gateway本身是一个框架工程只有200多行代码，没有业务逻辑，而且大部分代码都是实现spring的配置类，ut运行不到。目前我们只能多其中的login和logout接口做测试，所以覆盖率达不到40%。
2、toolchain代码覆盖率低的解释：toolchain后台是集成的代码分析工具，只做了接口调用的封装，业务逻辑少，所以覆盖率没有到达50%，由于功能简单，后期也不会有功能开发，所以维持现状，后期也不会补充。

3.3 缺陷统计及分析 Statistical analysis of Defects/Bugs

请点击[缺陷清单](https://gitee.com/OSDT/dashboard/issues?issue_type_id=199540&sort=created_at%20asc&milestone_id=92309)查看详情。

3.3.1 缺陷汇总 Defects Summary

已剔除 14个无效bug后，总缺陷数量： 267（含 34个安全类缺陷），已解决数量： 265个；未解决bug 16个（含16 个known issue，遗留到下一版本解决）。

3.3.2 缺陷分析 Defects Analysis

按缺陷类型分析：安全类bug 35个；其他类bug 246个。
按缺陷严重级别分析：严重bug 31个；主要bug 70个；次要bug 129个；不重要bug 9个；不指定42 个。
按需求点分析
缺陷收敛性分析：总计281 个bug（含 14个无效bug；含安全类bug 34）；迭代一 39 个bug（含 3个无效bug）；迭代二 65 个bug（含 5个无效bug）；迭代三 143 个bug（含 4个无效bug）；未制定迭代34 个bug（含 2个无效bug）

3.3.3 经评审遗留缺陷及未解决问题 Residual Defects and known issues

请点击[遗留清单](https://gitee.com/OSDT/dashboard/issues?issue_type_id=199540&created_at_start=2021-02-01&created_at_end=2021-03-31&issue_state_ids=826576)
非安全问题遗留清单：
| 序号  |BugID|Bug描述|状态|未解决说明|预计处理安排|
| --|--|--|--|--|--|
|1| I3B5TC |[【appstore】建议通过浏览器返回到首页记住之前所在位置](https://gitee.com/OSDT/dashboard/issues?id=I3B5TC)  |遗留 | 属于优化问题，下个版本再做 |  |
|2| I3CAM5 |[【mecm】优化建议：建议“应用包管理”列表中增加“应用市场”和“同步时间”字段](https://gitee.com/OSDT/dashboard/issues?id=I3CAM5) |遗留 | 暂时接口无对应信息，无法添加，可以下个版本优化|  |
|3| I3DYG0 |[【mecm】概览界面，切换应用没有调用mep软件能力列表接口](https://gitee.com/OSDT/dashboard/issues?id=I3DYG0)|遗留 | 经讨论，该问题遗留到下个版本|  |
|4| I3D6SN |[【Developer】部署调测monitoring-service-mepagent的项目时，界面显示部署成功，按其后台pod未启动成功](https://gitee.com/OSDT/dashboard/issues?id=I3D6SN) |遗留 | 建议下一版本在developer部署调测页面里当一个应用实例化后“部署成功”可以改成其他文字，以体现应用helm部署成功但应用镜像可能拉取失败的情况|  |
|5| I2BRI3 |[【Developer】添加项目的能力选择页面需优化](https://gitee.com/OSDT/dashboard/issues?id=I2BRI3) |遗留 | 经讨论，developer页面可能会重新设计|  |
|6| I2C3TS |[【Developer】功能问题：新建的项目没有编辑功能入口](https://gitee.com/OSDT/dashboard/issues?id=I2C3TS) |遗留 | 当前版本暂时不支持项目可编辑，下个版本需讨论|  |
|7| I38ZSK |[【developer】功能问题：新建应用集成项目，自己上传图标，快速反复点击确认按钮后生成多条重复数据 ](https://gitee.com/OSDT/dashboard/issues?id=I38ZSK) |遗留 | 网络不好时会复现该问题，下个版本需讨论|  |
|8| I38U3X |[【UserMgmt】使用不存在的账号登录，失败5次后无有效阻止措施](https://gitee.com/OSDT/dashboard/issues?id=I38U3X) |遗留 | 经讨论，该问题遗留到下个版本，强化验证方式，通过能与服务端进行联动的验证方式来实现验证|  |
|9| I3DZKV |[【UserMgmt】出现平台不同步登录的问题（不必现）](https://gitee.com/OSDT/dashboard/issues?id=I3DZKV) |遗留 | 经讨论，该问题遗留到下个版本,现已给出规避方案|  |
|10| I2ZWKL |[【user-mgmt】用户登录超时后显示用户还在登录状态 ](https://gitee.com/OSDT/dashboard/issues?id=I2ZWKL) |遗留 | 经讨论，该问题遗留到下个版本统一解决|  |


3.4 安全测试执行情况及记录（安全工作组负责）

EdgeGallery v1.1 版本安全测试包括 **安全合规测试** 和 **渗透测试** ，安全测试依照 **v1.1安全测试计划** 开展，详见[v1.1 Security Test Plan](https://gitee.com/edgegallery/community/blob/master/Security%20WG/Security%20Test%20Plan/Release-R1.1/EG%20R1.1%20Security%20Test%20Plan%20.md)。

3.4.1 安全测试组织Security Test Organizing

安全测试由 **安全工作组(SecurityWG)** 执行

3.4.2 安全测试执行情况 Security Test Execution

测试时间： 2021.2.19 ~ 2021.3.30

测试环境： 119.8.36.45  Center+Edge

测试项目： AppStore, Developer, User-mgmt, MECM，MEP，Apt

测试人员： 扈冰


测试内容： 本次测试共包括sprint1，sprint2，sprint3三个迭代。首先针对各Story匹配测试用例，然后从安全合规测试和渗透测试2个维度展开测试。测试内容详见 [v1.1安全测试计划](https://gitee.com/edgegallery/community/blob/master/Security%20WG/Security%20Test%20Plan/Release-R1.1/EG%20R1.1%20Security%20Test%20Plan%20.md)  **第5节“测试范围”** 相关内容。


安全合规测试用例： [安全合规测试用例](https://gitee.com/edgegallery/community/tree/master/Security%20WG/Security%20Testing/Design%20Compliance%20Test%20Cases)

渗透测试用例： [渗透测试用例](https://gitee.com/edgegallery/community/tree/master/Security%20WG/Security%20Testing/Penetration%20Test%20Cases)



3.4.3 安全测试结果及分析 summary analysis for Security test result


v1.1版本共提交安全类问题 **34个** 。详见：[安全类问题单](https://e.gitee.com/OSDT/issues/list?is%5Bmilestone_id%5D=92309&is%5Bsearch%5D=security&is%5Bissue_type_id%5D=199540&is%5Bsort%5D=created_at&is%5Bdirection%5D=desc&openMore=1#note_4590175)


按 **严重性** 统计：12个严重，13个主要，9个次要，0个不重要。

按 **修复状态** 统计：28个已修复，6个遗留。

按 **所属模块** 统计：UserMgmt 6个， AppStore 4个， Developer 13个， MECM 4个， ATP 5个， MEP 2个。

按 **漏洞类型** 统计：信息泄露 9个，DOS 2个，越权/权限 7个，木马/远控 3个，输入校验 5个，逻辑漏洞 1个，文件上传 2个，文档类 5个。

按 **所属迭代** 统计：sprint1 8个， sprint2 10个， sprint3 16个。


.
 **安全测试结果及分析详见v1.1安全测试报告**  ：[EdgeGallery v1.1 Security Test Report](https://gitee.com/edgegallery/community/blob/master/Security%20WG/Security%20Test%20Result/Test%20result%20Release%20V1.1/EG%20v1.1%20Security%20Test%20Report.md)
.


3.4.4 遗留安全类问题 Leaving Security Issues


安全问题遗留清单：
| 序号  | Issue编号 | Issue标题        | 状态    | 原因             | 完成计划             | 严重性           |
| ---- | -------- | ------------------ | --------- | ----------------------- | ------------------ | -------------- |
|1|I3C0MX|【mecm】【Security】应用市场注册系统中，访客和普通租户角色可以看到应用仓库密码| 遗留 |已经和shashi确认，本次版本后台不作处理| 遗留至下个版本 |主要 |
|2|I3A8BQ|【usermgmt】【Security】用户注册功能，存在任意用户注册漏洞|遗留|经讨论，该问题遗留到下个版本，通过能与服务端进行联动的验证方式来实现频率限制。|遗留至下个版本|严重|
|3|I3A7CJ|【usermgmt】【Security】邮箱找回密码功能，存在邮件轰炸漏洞|遗留|经讨论，该问题遗留到下个版本，通过能与服务端进行联动的验证方式来实现频率限制。|遗留至下个版本|严重|
|4|I3A0JE|【mecm】【Security】mecm点击“注销”后，access_token未失效，仍可以继续使用|遗留|遗留至下版本|遗留至下个版本|严重|
|5|I3DP2D|【mecm】【Security】lcm portal should add login/auth function, or is weak of DOS attack|遗留|此版本未做计划，遗留至下版本|遗留至下个版本|严重|
|6|I39EDO|【developer】【Security】【Vulnerability】VNC远程调试功能存在严重越权漏洞|遗留|目前没有有效解决方案，暂时遗留|遗留至下个版本|严重|


四、测试结论及建议 Test Conclusion and Suggestion

测试主要包括交付需求测试，分别从系统功能性、稳定性、易用性以及安全性（详见安全测试报告）方面进行测试，同时针对个别场景进行专项测试，问题单提单量总计xx个，其中安全类问题xx个，经评审遗留xx个，其中安全测试问题x个，功能性问题x个。

- 需求完成率（[EPIC](https://gitee.com/OSDT/dashboard/issues?issue_type_id=238024&milestone_id=92309)）28/29=97%，（[story](https://gitee.com/OSDT/dashboard/issues?issue_type_id=199539&milestone_id=92309),剔除无效story后）123/123=100%, 满足版本发布质量要求。
- 未解决的严重问题<=1（不含遗留的严重问题）,满足版本发布质量要求。
- 遗留Defect Index，即DI=7* 0.1+3 * 1=3.7<10（不含遗留的bug），满足版本发布质量要求。
- 测试用例执行率，单元测试代码覆盖率等指标满足版本发布质量要求。


