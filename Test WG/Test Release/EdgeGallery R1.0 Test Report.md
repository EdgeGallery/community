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

设计测试用例共计137个。
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

b.CICD工具Jenkins：http://119.8.34.36:8080/

c.镜像库：http://159.138.137.155/

三、测试结果及缺陷分析 Test Results and Defects Analysis

3.1 测试执行情况及记录Test exceuction and Records

3.1.1 测试组织 Test Organizing

测试组负责人：刘辉。

| 姓名 | 任务分工 |
|---|---|
| 侯敏熙 | network isolation test；public cloud integration； |
| 彭育 | 安装部署支持All-in-one;支持JJB部署；5G网元集成;installation test； |
| 李媛媛 | developer&AppStore测试 |
| zhangali | MECM测试 |
| 姜伟 | 离线部署测试 |
| mengpuhui | dns test； |
| 丁宇卿 | ETSI interface test； |
| all | doc test； |

3.1.2 测试时间（各负责人daily更新） Test Schedule

第一轮迭代测试2020年11月16日至11月28日。

|需求点|测试活动|计划工作量（人天）|计划开始时间|计划完成时间|实际开始时间|实际完成时间|实际工作量（人天）|负责人|Progress|
|---|---|---|---|---|---|---|---|---|---|
|各个项目提测确认|APP/MECM/developer/mep |2人天 |2020/11/16 |2020/11/17|20201116 |20201118 | 1|刘辉/彭育/侯敏熙 | 100%|
|冒烟测试|APP/MECM/developer |1人天 | |2020/11/18| |20201120 |2 |张阿里/李媛媛 |100%|
|【Developer】构建测试界面优化|| |2020/11/18 |2020/11/28 |2020/11/19 |2020/11/28 |4 | 李媛媛|100%|
|【UserMgmt】EdgeGallery平台需要优化用户管理，进行分权分域设置(访客模式) || |2020/11/18 |2020/11/28 |2020/11/19 |2020/11/28 |4 | 张阿利|100%|
|【Dev/MECM/App/Atp/MEP/APPLCM】EdgeGallery生态能力优化|| |2020/11/18 |2020/11/28 |2020/11/19 |2020/11/28 |4 | 李治谦|100%|
|【AppStore】Optimization for the existing features|| |2020/11/18 |2020/11/28 |2020/11/19 |2020/11/28 |4 | 刘辉|100%|
|【installtaion】installation script （several modes）|| |2020/11/18 |2020/11/28 |2020/11/19 |2020/11/28 |4 | 李治谦|100%|
|【mep】network isolation|| |2020/11/18 |2020/11/28 |2020/11/19 |2020/11/28 |4 | 侯敏熙|100%|
|【ATP】App应用的测试能力增强|| |2020/11/18 |2020/11/28 |2020/11/19 |2020/11/28 |4 | 张阿利|100%|
|第二轮迭代测试准备|需求澄清；测试用例设计评审| |2020/11/23 |2020/11/28 |2020/11/23 |2020/11/28 |4 | all|100%|

第二轮迭代测试2020年11月30日至12月12日。

|需求点|测试活动|计划工作量（人天）|计划开始时间|计划完成时间|实际开始时间|实际完成时间|实际工作量（人天）|负责人|Progress|
|---|---|---|---|---|---|---|---|---|---|
|各个项目提测确认|APP/MECM/developer/mep/atp |1人天 | |2020/11/30| |20201202 | 1|刘辉/彭育/侯敏熙 | 100%|
|冒烟测试|APP/MECM/developer/atp |1人天 | |2020/12/02| |20201203 | |刘辉/侯敏熙/李治谦 |100%|
|【Developer】构建测试界面优化| |3人天 |2020/12/02 |2020/12/06 |2020/12/06 |2020/12/12 |4人天 | 李媛媛|100%|
|【ATP】App应用的测试能力增强| |3人天 |2020/12/02 |2020/12/06 |2020/12/06 |2020/12/12 |4人天 | 张阿利|100%|
|【Developer】构建测试能力详情优化 | |3人天 |2020/12/02 |2020/12/06 |2020/12/06 |2020/12/12 |4人天 | 李媛媛|100%|
|【Developer】API界面优化，分析多语言SDK，集成到开发者平台| |3人天 |2020/12/02 |2020/12/06 |2020/12/06 |2020/12/12 |4人天 | 李媛媛|100%|
|【Dev/MECM/App/Atp/MEP/APPLCM】EdgeGallery生态能力优化| |3人天 |2020/12/02 |2020/12/06 |2020/12/06 |2020/12/12 |4人天 | 李治谦|100%|
|【Test】The optimization of edgegallery installation package| |3人天 |2020/12/02 |2020/12/06 |2020/12/06 |2020/12/12 |4人天 | 姜伟|100%|
|【MECM】Application Managment & Topology Enhancement | |3人天 |2020/12/02 |2020/12/06 |2020/12/06 |2020/12/12 |4人天 | 张阿利|100%|
|【installtaion】installation script （several modes） | |3人天 |2020/12/02 |2020/12/06 |2020/12/06 |2020/12/12 |4人天 |李治谦|100%|
|【mep】mepserver add app heartbeat API, referring to etsi mec 011 latest stable draft | |3人天 |2020/12/02 |2020/12/06 |2020/12/06 |2020/12/12 |4人天 |侯敏熙|100%|
|第三轮迭代测试准备|需求澄清；测试用例设计评审| |2020/12/07 |2020/12/12 |2020/12/07 |2020/12/12 |4 | all|100%|

第三轮迭代测试2020年12月14日至12月26日。

|需求点|测试活动|计划工作量（人天）|计划开始时间|计划完成时间|实际开始时间|实际完成时间|实际工作量（人天）|负责人|Progress|
|---|---|---|---|---|---|---|---|---|---|
|各个项目提测确认|APP/MECM/developer/mep/atp/edgeT |1人天 |2020/12/14 |2020/12/14|2020/12/14 |20200915 | 1|刘辉/李治谦/侯敏熙 | 100%|
|冒烟测试|APP/MECM/developer/atp/edgeT |1人天 | |2020/12/14| |20201216 | |刘辉/李治谦/侯敏熙 |100%|
|【ATP】App应用的测试能力增强| |3人天 |2020/12/14 |2020/12/19 |2020/12/14 |2020/12/19 |4人天 | 张阿利|%|
|【Developer】应用发布界面优化| |3人天 |2020/12/14 |2020/12/19 |2020/12/14 |2020/12/19 |4人天 |李媛媛|%|
|【Dev/MECM/App/Atp/MEP/APPLCM】EdgeGallery生态能力优化| |3人天 |2020/12/14 |2020/12/19 |2020/12/14 |2020/12/19 |4人天 | 李治谦|%|
|【installtaion】installation script （several modes）| |3人天 |2020/12/14 |2020/12/19 |2020/12/14 |2020/12/19 |4人天 | 李治谦|%|
|【Test】develop the Test Platform for supporting testcase management| |3人天 |2020/12/14 |2020/12/19 |2020/12/14 |2020/12/19 |4人天 | 孟璞辉|%|
|【MEP/MECM】ak/sk配置接口| |3人天 |2020/12/14 |2020/12/19 |2020/12/14 |2020/12/19 |4人天 | 丁宇卿|%|
|【Test】The optimization of edgegallery installation package| |3人天 |2020/12/14 |2020/12/19 |2020/12/14 |2020/12/19 |4人天 | 姜伟|%|
|【Test】 Provide the health check for Edgegallery platform in one-click deployment| |3人天 |2020/12/14 |2020/12/19 |2020/12/14 |2020/12/19 |4人天 | 李治谦|%|



3.1.3 测试用例执行统计 analysis of Test Case execution

|需求点|TC总数|成功个数|失败个数|未执行个数|TC成功率|
|--|--|--|--|--|--|
| dev-appstore-usermgnt | 182 |  |  |  |  |
| mecm|51 | 34 | 17 | 0 | 66.67% |
| mep-dns|1 |  |  |  |  |
| 部署相关|4 | 4 |0  | 0 | 4 |
| network isolation;public cloud integration|16 |15 | 1 | 15 | 93.75% |

3.2 覆盖分析 Coverage Analysis

3.2.1 需求覆盖 Requirement Coverage

软件实现100%覆盖Release V1.0需求。

3.2.2 单元测试代码覆盖（数据源于SonarQube） Code Coverage for Unit Test

根据TSC20200923会议决定，本次测试版本不考虑前端代码覆盖率，关注后台代码覆盖率。
| 模块  | 代码覆盖率  |
|---|---|
|developer-be   | %  |
| appstore-be  | % |
|user-mgmt-be|%|
|website-gateway|%|
| mecm-inventory|%|
| mecm-apm  | % |
| mecm-appo  |% |
| memc-mepm-k8splugin | % |
| mecm-applcm-be  |%|
| mecm-inventory |%|
| mep-mepserver|%|
| mep-mepauth|%|
| mep-dnsserver|%|
| mep-agent|%|

*注：website-gateway代码覆盖率低的解释：website-gateway本身是一个框架工程只有200多行代码，没有业务逻辑，而且大部分代码都是实现spring的配置类，ut运行不到。目前我们只能多其中的login和logout接口做测试，所以覆盖率达不到40%。

3.3 缺陷统计及分析 Statistical analysis of Defects/Bugs

请点击[缺陷清单](https://gitee.com/OSDT/dashboard/issues?issue_type_id=199540&labels=ReleaseV1.0)查看详情。

3.3.1 缺陷汇总 Defects Summary

已剔除 个无效bug后，总缺陷数量： （含 个安全类缺陷），已解决数量： 个；未解决bug 个（含 个known issue，遗留到下一版本解决）。

3.3.2 缺陷分析 Defects Analysis

按缺陷类型分析：安全类bug 个；其他类bug 个。
按缺陷严重级别分析：严重bug 个；主要bug 个；次要bug 个；不指定 个。
按需求点分析
缺陷收敛性分析：总计 个bug（含 个无效bug；含安全类bug）；第一轮 个bug（含 个无效bug）；第二轮个 bug（含 个无效bug）

3.3.3 遗留缺陷及未解决问题 Residual Defects and known issues

|BugID|Bug描述|状态|未解决说明|预计处理安排|
|--|--|--|--|--|

3.4 安全测试执行情况及记录（安全工作组负责）

EdgeGallery R0.9版本安全测试主要分为安全设计合规测试与安全渗透测试

3.4.1 安全测试组织Security Test Organizing

安全测试由安全工作组执行

3.4.2 安全测试执行情况 Security Test Execution

3.4.2.1 EdgeGallery R1.0 安全设计合规测试

时间：2020.09.14 ~ 2020.09.20

测试项目： AppStore, Developer, User-mgmt, MECM，MEP

测试人员： 吕京, 程润东，Kanag， Prakash

安全合规测试用例：

3.4.2.2 EdgeGallery R0.9 安全渗透测试

时间：2020.09.21 ~ 2020.09.24

测试人员： 吕京

安全渗透测试用例：

- EG-TST-SEC-001
- EG-TST-SEC-002
- EG-TST-SEC-003

3.4.3 安全缺陷汇总分析 summary analysis for Security bugs


*Fixed Security Issues*


渗透测试详细测试报告见[EdgeGallery R1.0渗透测试结果.docx]()

3.4.4 安全缺陷及未解决问题 Residual Defects and known issues about Security

|BugID|Bug描述|状态|未解决说明|预计处理安排|
|--|--|--|--|--|


四、测试结论及建议 Test Conclusion and Suggestion
