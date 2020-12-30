一、引言Introduction

1.1 编写目的Writing Purpose

本测试报告为EdgeGallery Release1.0的测试报告，在于总结测试阶段的测试情况以及分析结果，描述预定需求的符合性及预定质量指标的符合性。作为测试质量参考文档提供给开源社区开发人员、测试人员、管理人员及感兴趣的其他人员等参考。

1.2 项目背景 Project Background

EdgeGallery社区聚焦5G边缘计算场景，通过开源协作构建起MEC边缘的资源、应用、安全、管理的基础框架和网络开放服务的事实标准，并实现同公有云的互联互通。在兼容边缘基础设施异构差异化的基础上，构建起统一的MEC应用生态系统。

1.3 [系统简介 System Overview](https://gitee.com/edgegallery/docs/blob/master/Get%20Started/Start%20from%20A%20Demo%20on%20EdgeGallery.md)

1.4 参考资料 References

1.[Release V1.0需求](https://gitee.com/OSDT/dashboard/issues?issue_type_id=238024&labels=ReleaseV1.0)

2.[Release V1.0测试计划（含版本质量指标）](https://gitee.com/edgegallery/community/blob/master/Test%20WG/Test%20Release/EdgeGallery%20R1.0%20Test%20Plan.md)

二、测试概要 Test Overview

2.1 测试用例及脚本设计 Test Cases and Auto test scripts

设计测试用例共计158个。
请点击[测试用例清单](https://gitee.com/OSDT/dashboard/issues?issue_type_id=232575&labels=ReleaseV1.0)查看详情。

2.2 测试环境与配置 Test Env and related Configuration
| server ip |Usage   | password |
|-----------|---|----------|
| 159.138.30.89| edge  |xxxx |
| 119.8.36.45 | 中心  | xxxx    |


2.3 测试方法和工具 Test Method and Tools

a.单元测试代码覆盖率工具：Jacoco（Java语言）、GoTest（Go语言）
【基于当前实际情况，本次版本前端代码不做单元测试及代码覆盖率检查，改为界面检视】
  
代码覆盖率测试结果分析（SonarQube）：http://159.138.132.188:9000/projects?sort=-analysis_date

|Tool Name|Version|Address | comments  |
|---|---|---|---|
|SonarQube|8.4.2 |http://159.138.132.188:9000/projects  ||
|Jacoco|0.7.7.201606060606  |None |   |
|go test| 1.15.5 |None |   |

b.CICD工具Jenkins：http://119.8.34.36:8080/

c.镜像库：http://159.138.137.155/

三、测试结果及缺陷分析 Test Results and Defects Analysis

3.1 测试执行情况及记录Test exceuction and Records

3.1.1 测试组织 Test Organizing

测试组负责人：刘辉。

| 姓名 | 任务分工 |
|---|---|
| 侯敏熙 | network isolation test, public cloud integration |
| 李治谦 | 生态能力优化测试、健康检查需求测试 |
| 许丹 | 支持JJB部署 |
| 李媛媛 | developer&AppStore测试 |
| 张阿利 | MECM测试、ATP测试、example app测试 |
| 姜伟 | 离线部署测试 |
| mengpuhui | EdgeT 测试 |
| 丁宇卿 | ETSI interface test |
| 刘辉 | appstore优化已有feature测试 |
| all | doc test |
| PTL | POC需求测试|
3.1.2 测试时间（各负责人daily更新） Test Schedule

第一轮迭代测试2020年11月16日至11月28日。

|需求点|测试活动|计划工作量（人天）|计划开始时间|计划完成时间|实际开始时间|实际完成时间|实际工作量（人天）|负责人|Progress|
|---|---|---|---|---|---|---|---|---|---|
|各个项目提测确认|APP/MECM/developer/mep |2 |2020/11/16 |2020/11/17|2020/11/16 |2020/11/18 | 1|刘辉/李治谦/侯敏熙 | 100%|
|冒烟测试|APP/MECM/developer |1 |2020/11/16 |2020/11/16|2020/11/19 |2020/11/20 |1 |张阿利 /李媛媛 |100%|
|【Developer】构建测试界面优化||4 |2020/11/18 |2020/11/28 |2020/11/19 |2020/11/28 |4 | 李媛媛|100%|
|【UserMgmt】EdgeGallery平台需要优化用户管理，进行分权分域设置(访客模式) || 4|2020/11/18 |2020/11/28 |2020/11/19 |2020/11/28 |4 | 张阿利|100%|
|【Dev/MECM/App/Atp/MEP/APPLCM】EdgeGallery生态能力优化|| 4|2020/11/18 |2020/11/28 |2020/11/19 |2020/11/28 |4 | 李治谦|100%|
|【AppStore】Optimization for the existing features|| 4|2020/11/18 |2020/11/28 |2020/11/19 |2020/11/28 |4 | 刘辉|100%|
|【installtaion】installation script （several modes）|| 4|2020/11/18 |2020/11/28 |2020/11/19 |2020/11/28 |4 | 李治谦|100%|
|【mep】network isolation||4 |2020/11/18 |2020/11/28 |2020/11/19 |2020/11/28 |4 | 侯敏熙|100%|
|【ATP】App应用的测试能力增强||4 |2020/11/18 |2020/11/28 |2020/11/19 |2020/11/28 |4 | 张阿利|100%|
|支持JJB部署| | |2020/10/9 |2020/12/15 |2020/10/9 |2020/11/30| | 许丹|100%|
|第二轮迭代测试准备|需求澄清；测试用例设计评审|4 |2020/11/23 |2020/11/28 |2020/11/23 |2020/11/28 |4 | all|100%|

第二轮迭代测试2020年11月30日至12月12日。

|需求点|测试活动|计划工作量（人天）|计划开始时间|计划完成时间|实际开始时间|实际完成时间|实际工作量（人天）|负责人|Progress|
|---|---|---|---|---|---|---|---|---|---|
|各个项目提测确认|APP/MECM/developer/mep/atp |1 |2020/11/30 |2020/11/30|2020/12/02 |2020/12/04 | 1|刘辉/李治谦/侯敏熙 | 100%|
|冒烟测试|APP/MECM/developer/atp |1 |2020/11/30 |2020/12/01|2020/12/07 |2020/12/08 |1 |张阿利/李媛媛 |100%|
|【Developer】构建测试界面优化| |3 |2020/12/02 |2020/12/06 |2020/12/07 |2020/12/12 |4人天 | 李媛媛|100%|
|【ATP】App应用的测试能力增强| |3 |2020/12/02 |2020/12/06 |2020/12/07 |2020/12/12 |4人天 | 张阿利|100%|
|【Developer】构建测试能力详情优化 | |3 |2020/12/02 |2020/12/06 |2020/12/07 |2020/12/12 |4 | 李媛媛|100%|
|【Developer】API界面优化，分析多语言SDK，集成到开发者平台| |3 |2020/12/02 |2020/12/06 |2020/12/07 |2020/12/12 |4 | 李媛媛|100%|
|【Dev/MECM/App/Atp/MEP/APPLCM】EdgeGallery生态能力优化| |3 |2020/12/02 |2020/12/06 |2020/12/11 |2020/12/12 |1 | 李治谦|100%|
|【Test】The optimization of edgegallery installation package| |3 |2020/12/02 |2020/12/06 |2020/12/06 |2020/12/12 |4 | 姜伟|100%|
|【MECM】Application Managment & Topology Enhancement | |3 |2020/12/02 |2020/12/06 |2020/12/07 |2020/12/12 |4 | 张阿利|100%|
|【installtaion】installation script （several modes） | |3 |2020/12/02 |2020/12/06 |2020/12/07 |2020/12/12 |4 |李治谦|100%|
|【mep】mepserver add app heartbeat API, referring to etsi mec 011 latest stable draft | |3 |2020/12/02 |2020/12/06 |2020/12/06 |2020/12/12 |4 |侯敏熙|100%|
|第三轮迭代测试准备|需求澄清；测试用例设计评审| |2020/12/07 |2020/12/12 |2020/12/07 |2020/12/12 |4 | all|100%|

第三轮迭代测试2020年12月14日至12月26日。

|需求点|测试活动|计划工作量（人天）|计划开始时间|计划完成时间|实际开始时间|实际完成时间|实际工作量（人天）|负责人|Progress|
|---|---|---|---|---|---|---|---|---|---|
|各个项目提测确认|APP/MECM/developer/mep/atp/edgeT |1 |2020/12/14 |2020/12/14|2020/12/15 |20200917 | 1|刘辉/李治谦/侯敏熙 | 100%|
|冒烟测试|APP/MECM/developer/atp/edgeT |1 |2020/12/14 |2020/12/14|2020/12/16 |2020/12/18 |1 |刘辉/李治谦/侯敏熙 |100%|
|【ATP】App应用的测试能力增强| |3 |2020/12/14 |2020/12/19 |2020/12/14 |2020/12/19 |4 | 张阿利|100%|
|【Developer】应用发布界面优化| |3 |2020/12/14 |2020/12/19 |2020/12/14 |2020/12/19 |4 |李媛媛|100%|
|【Dev/MECM/App/Atp/MEP/APPLCM】EdgeGallery生态能力优化| |3 |2020/12/14 |2020/12/19 |2020/12/23 |2020/12/24 |1 | 李治谦|100%|
|【installtaion】installation script （several modes）| |3 |2020/12/14 |2020/12/19 |2020/12/14 |2020/12/19 |4 | 李治谦|100%|
|【Test】develop the Test Platform for supporting testcase management| |3 |2020/12/14 |2020/12/19 |2020/12/14 |2020/12/19 |4 | 孟璞辉|100%|
|【MEP/MECM】ak/sk配置接口| |3 |2020/12/14 |2020/12/19 |2020/12/14 |2020/12/19 |4 | 丁宇卿|100%|
|【Test】The optimization of edgegallery installation package| |3 |2020/12/14 |2020/12/19 |2020/12/14 |2020/12/19 |4 | 姜伟|100%|
|【Test】 Provide the health check for Edgegallery platform in one-click deployment| |3 |2020/12/14 |2020/12/19 |2020/12/14 |2020/12/19 |4 | 李治谦|100%|
|【专项测试】 Developer部署测试失败场景专项测试分析| |1 |2020/12/23 |2020/12/24 |2020/12/23 |2020/12/24 |1 | 李治谦|100%|
|【MECM】Application Managment & Topology Enhancement | |3 |2020/12/14 |2020/12/19 |2020/12/06 |2020/12/19 |4 | 张阿利|100%|
|UI自动化脚本开发| |3 |2020/12/23 |2020/12/25 |2020/12/23 |2020/12/25 |3 |李媛媛|100%|
|developer模块api自动化脚本维护| |5人天 |2020/12/14 |2020/12/19 |2020/12/14 |2020/12/19|5 |李媛媛|100%|
|appstore、mecm模块api自动化脚本维护| |10|2020/12/14|2020/12/26 |2020/12/14 |2020/12/26 |10 |张阿利 |100%|
|【专项测试】EdgeGallery后台服务资源占用情况专项测试分析| |2 |2020/12/25 |2020/12/26 |2020/12/25 |2020/12/26 |2 | 张阿利|100%|
 

3.1.3 测试用例执行统计 analysis of Test Case execution

|需求点|TC总数|成功个数|失败个数|未执行个数|TC成功率|
|--|--|--|--|--|--|
| developer | 41 | 41 | 0 | 0 | 100% |
| appstore-atp | 38 |38  |0  |0  | 100% |
| usermgmt | 24 | 24 | 0 |0  | 100% |
| mecm|43 |43  | 0 | 0 | 100% |
| 生态能力优化 | 4 | 4 | 0 | 0 | 100% |
| EdgeT |2 | 2 | 0 | 0 | 100% |
| 离线部署相关|1 | 1 |0  | 0 | 100% |
| CRANE|5 |5 | 0 | 0 | 100% |

3.2 覆盖分析 Coverage Analysis

3.2.1 需求覆盖 Requirement Coverage

软件实现100%覆盖Release V1.0需求。

3.2.2 单元测试代码覆盖（数据源于SonarQube） Code Coverage for Unit Test

根据TSC20200923会议决定，本次测试版本不考虑前端代码覆盖率，关注后台代码覆盖率。
所有数据来自于北京时间 2020.12.26 15:00 [SonarQube页面查询结果](http://159.138.132.188:9000/projects?sort=name)。

| 模块                      | 代码覆盖率 |
|---------------------------|-----------|
| api-emulator              | 55.3%     |
| appstore-be               | 60.2%     |
| atp-be                    | 52.8%     |
| developer-be              | 50.5%     |
| mecm-apm                  | 56.8%     |
| memc-applcm-k8splugin     | 57.3%     |
| memc-applcm-lcmcontroller | 59.8%     |
| mecm-appo                 | 57.4%     |
| mecm-apprulemgr           | 67.2%     |
| mecm-inventory            | 54.3%     |
| mep-agent                 | 58.9%     |
| mep-dnsserver             | 70.3%     |
| mep-mepauth               | 52.4%     |
| mep-mepserver             | 56.3%     |
| plugins                   | 70.4%     |
| toolchain                 | 44.7%     |
| user-mgmt-be              | 59.3%     |
| website-gateway           | 29.2%     |


**Note:**  1、website-gateway代码覆盖率低的解释：website-gateway本身是一个框架工程只有200多行代码，没有业务逻辑，而且大部分代码都是实现spring的配置类，ut运行不到。目前我们只能多其中的login和logout接口做测试，所以覆盖率达不到40%。
2、toolchain代码覆盖率低的解释：toolchain后台是集成的代码分析工具，只做了接口调用的封装，业务逻辑少，所以覆盖率没有到达50%，由于功能简单，后期也不会有功能开发，所以维持现状，后期也不会补充。

3.3 缺陷统计及分析 Statistical analysis of Defects/Bugs

请点击[缺陷清单](https://gitee.com/OSDT/dashboard/issues?issue_type_id=199540&labels=ReleaseV1.0)查看详情。

3.3.1 缺陷汇总 Defects Summary

已剔除 10个无效bug后，总缺陷数量： 205（含 33个安全类缺陷），已解决数量：164 个；未解决bug 8个（含8 个known issue，遗留到下一版本解决）。

3.3.2 缺陷分析 Defects Analysis

按缺陷类型分析：安全类bug 35个；其他类bug 180个。
按缺陷严重级别分析：严重bug 16个；主要bug 72个；次要bug 90个；不重要bug 10个；不指定27 个。
按需求点分析
缺陷收敛性分析：总计215 个bug（含 10个无效bug；含安全类bug 35）；迭代一 22 个bug（含 1个无效bug）；迭代二 84 个bug（含 5个无效bug）；迭代三 83 个bug（含 3个无效bug）；未制定迭代 26 个bug（含 1个无效bug）

3.3.3 经评审遗留缺陷及未解决问题 Residual Defects and known issues

请点击[遗留清单](https://gitee.com/OSDT/dashboard/issues?issue_type_id=199540&labels=ReleaseV1.0&issue_state_ids=826576)
非安全问题遗留清单：
|BugID|Bug描述|状态|未解决说明|预计处理安排|
|--|--|--|--|--|
| I29CJM |appstore集成嵌套atp页面,appstore登陆后，概率性出现atp页面接口不通，报错token expired  |遗留 | 非必现问题 |  |
| I1XZLD |user-mgmt pod has openssl version dependency  |遗留 | 非必现问题 |  |
| I29XWW |developer平台，对于已发布应用，再次点击发布按钮，应该提示“应用已发布”，而非“应用发布失败” |遗留 |  | 遗留到下个版处理 |
| I24GTE |developer平台，插件上传页面，‘上传API’功能为必填项，建议优化 |遗留 |  | 遗留到下个版处理 |
| I28U3B |developer平台，部署调测页面下载日志功能未实现 |遗留 |当前版本没有实现日志下载的接口  | 遗留到下个版处理 |

3.4 安全测试执行情况及记录（安全工作组负责）

EdgeGallery R1.0 版本安全测试主要分为安全设计合规测试与安全渗透测试

3.4.1 安全测试组织Security Test Organizing

安全测试由安全工作组执行

3.4.2 安全测试执行情况 Security Test Execution

3.4.2.1 EdgeGallery R1.0 安全设计合规测试

时间：2020.11.25 ~ 2020.12.25

测试项目： AppStore, Developer, User-mgmt, MECM，MEP，Apt,Toolchain

测试人员： 程润东，扈冰

安全合规测试用例：

[EG R1.0 Security Test Plan.md](https://gitee.com/edgegallery/community/blob/master/Security%20WG/Security%20Test%20Plan/Release-R1.0/EG%20R1.0%20Security%20Test%20Plan.md)


安全渗透测试用例：

[渗透测试用例](https://gitee.com/edgegallery/community/tree/master/Security%20WG/Security%20Testing/Penetration%20Test%20Cases)
- EG-TST-SEC-004
- EG-TST-SEC-005
- EG-TST-SEC-007

3.4.3 安全缺陷汇总分析 summary analysis for Security bugs


*Fixed Security Issues*


安全测试总结报告见：[EdgeGallery v1.0.0 Security Test Report](https://gitee.com/edgegallery/community/blob/master/Security%20WG/Security%20Test%20Result/Test%20result%20Release%20V1.0/EG%20v1.0.0%20Security%20Test%20Report.md)

3.4.4 安全缺陷及未解决问题 Residual Defects and known issues about Security


详见：[安全测试问题单](https://gitee.com/OSDT/dashboard/issues?search=%E3%80%90Security%20Test%E3%80%91)
安全问题遗留清单：
| 序号  | Issue编号 | Issue标题        | 状态    | 原因             | 完成计划             | 备注           |
| ---- | -------- | ------------------ | --------- | ----------------------- | ------------------ | -------------- |
| 1    | I2A17N   | [【Security Test】Mecm会话超时后，依然可以操作AppLCM、AppRule、边缘节点注册等功能](https://gitee.com/OSDT/dashboard?issue_id=I2A17N) | Remaining | 由于业务功能需要，目前token有效期为12小时，但是有效期过长的token会存在一定的安全隐患。建议暂时将此问题遗留。 | Remaining to next version. | 一般性安全问题（主要） |
| 2    | I28F84   | [【Security Test】Developer插件上传功能存在重放攻击漏洞](https://gitee.com/OSDT/dashboard?issue_id=I28F84) | Remaining | 目前采用hash值校验方法进行防御。后续版本可能增加同步时间戳、存储空间上限等方法进行防御。 | Remaining to next version. | 安全漏洞（主要）       |
| 3    | I23DY8   | [【Security Test】mecm-postgresql;developer-fe ;user-mgmt-redis-0 项目默认登录用户为root用户](https://gitee.com/OSDT/dashboard?issue_id=I23DY8) | Remaining |                                                              | Remaining to next version. |  一般性安全问题（主要）             |
| 4    | I1VY5P   | [【Security Test】【developer】Password is exposed](https://gitee.com/OSDT/dashboard?issue_id=I1VY5P) | Remaining |                                                              | Remaining to next version. |    一般性安全问题（次要）            |


四、测试结论及建议 Test Conclusion and Suggestion

测试主要包括交付需求测试，分别从系统功能性、稳定性、易用性以及安全性（详见安全测试报告）方面进行测试，同时针对个别场景进行专项测试，问题单提单量总计219个，其中安全类问题39个，经评审遗留8个，其中安全测试问题3个，功能性问题5个。

- 需求完成率（[EPIC](https://gitee.com/OSDT/dashboard/issues?issue_type_id=238024&labels=ReleaseV1.0)）25/25=100%，（[story](https://gitee.com/OSDT/dashboard/issues?issue_type_id=199539&labels=ReleaseV1.0),剔除无效story后）90/95=95%, 满足版本发布质量要求。
- 未解决的严重问题<=1,满足版本发布质量要求。
- 遗留Defect Index，即DI=2 * 0.1+5 * 1+1 * 3=8.2<10，满足版本发布质量要求。
- 测试用例执行率，单元测试代码覆盖率等指标满足版本发布质量要求。


