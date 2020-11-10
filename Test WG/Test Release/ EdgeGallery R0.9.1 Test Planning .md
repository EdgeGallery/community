一、引言Introduction

1.1 编写目的Writing Purpose

本测试报告为EdgeGallery Release0.9.1 补丁的测试报告，在于总结测试阶段的测试情况以及分析结果，描述预定需求的符合性及预定质量指标的符合性。作为测试质量参考文档提供给开源社区开发人员、测试人员、管理人员及感兴趣的其他人员等参考。

1.2 项目背景 Project Background

EdgeGallery社区聚焦5G边缘计算场景，通过开源协作构建起MEC边缘的资源、应用、安全、管理的基础框架和网络开放服务的事实标准，并实现同公有云的互联互通。在兼容边缘基础设施异构差异化的基础上，构建起统一的MEC应用生态系统。

1.3 [系统简介 System Overview](https://gitee.com/edgegallery/docs/blob/master/Get%20Started/Start%20from%20A%20Demo%20on%20EdgeGallery.md)

1.4 参考资料 References

1.[Release V0.9.1需求](https://gitee.com/edgegallery/community/blob/master/TSC/Release/v0.9.x/%E7%89%88%E6%9C%AC%E9%9C%80%E6%B1%82.md)

二、测试概要 Test Overview

2.1 测试用例及脚本设计 Test Cases and Auto test scripts

设计测试用例共计239个基本用例。
请点击[测试用例清单](https://gitee.com/OSDT/dashboard/issues?issue_type_id=232575&author_id=7785293)查看详情。

2.2 测试环境与配置 Test Env and related Configuration
| server ip |Usage   | password |
|-----------|---|----------|
| 159.138.30.89| edge  |xxxx |
| 119.8.36.45 | 中心  | xxxx    |


2.3 测试方法和工具 Test Method and Tools
a.CICD工具Jenkins：http://119.8.34.36:8080/

b.镜像库：http://159.138.137.155/

三、测试结果及缺陷分析 Test Results and Defects Analysis

3.1 测试执行情况及记录Test exceuction and Records

3.1.1 测试组织 Test Organizing

测试组负责人：彭育。
| 任务                            | owner        | 时间               | 进展   |
|-------------------------------|--------------|------------------|------|
| CI环境准备                        | 许丹           | 2020/10/26       | 100% |
| images build                  | 许丹           | 2020/10/27       | 100% |
| 安装脚本准备                        | sharath      | 2020/10/27       | 100% |
| 全量部署验证                        | 彭育           | 2020/10/27       | 100% |
| 开发自验证                         | zhangbeiyuan | 2020/10/28       | 100% |
| appstore/mecm/developer用例回归验证 | 张阿利          | 2020/10/30-11/06 | 100% |
| v0.9版本问题单验证                   | 彭育/李媛媛/赵宝辉   | 2020/10/30-11/06 | 100% |
| 0.9x补丁新需求验证                   | 彭育/李媛媛/赵宝辉   | 2020/10/30-11/06 | 100% |


3.1.2 测试时间（各负责人daily更新） Test Schedule

2020年10月28日至11月6日。


3.1.3 测试用例执行统计 analysis of Test Case execution


3.2 缺陷统计及分析 Statistical analysis of Defects/Bugs

请点击[缺陷清单](https://gitee.com/OSDT/dashboard/issues?issue_type_id=199540&labels=ReleaseV0.9)查看详情。

3.2.1 缺陷汇总 Defects Summary

一共发现13个bug，剔除一个无效bug，已解决11个，遗留一个问题到v1.0解决。

3.2.2 缺陷分析 Defects Analysis

3.2.3 遗留缺陷及未解决问题 Residual Defects and known issues

问题单[list](https://gitee.com/OSDT/dashboard/programs/114631/issues?issue_type_id=199540&labels=ReleaseV0.9&created_at_start=2020-10-29&created_at_end=2020-11-06)

|BugID|Bug描述|状态|未解决说明|预计处理安排|
|--|--|--|--|--|
| I2416V | grafana界面资源显示有问题  | 遗留 | 该问题为三方件的问题，需要在对应三方件社区提issue跟踪解决。 | 遗留到R1.0版本处理 |

3.3 安全测试执行情况及记录（安全工作组负责）

EdgeGallery R0.9.1版本安全测试主要分为安全设计合规测试与安全渗透测试

3.3.1 安全测试组织Security Test Organizing

安全测试由安全工作组执行

3.3.2 安全测试执行情况 Security Test Execution

3.3.2.1 EdgeGallery R0.9.1 安全设计合规测试

时间：2020年10月28日至11月6日。

测试项目： AppStore, Developer, User-mgmt, MECM

测试人员： 程润东，扈冰

安全合规测试用例：
1. AppStore:
 - Identification, Authentication and Authorization: 1.5
 - DOS attack 5.1, 5.2
 - Log Security: 9.3
2. Developer
 - Identification, Authentication and Authorization: 1.5
 - DOS attack 5.1, 5.2
 - Log Security: 9.3
3. User-mgmt
 - Identification, Authentication and Authorization: 1.5
 - DOS attack 5.1, 5.2
 - Log Security: 9.3
4. MECM
 - Identification, Authentication and Authorization: 1.5
 - DOS attack 5.1, 5.2
 - Log Security: 9.3

3.3.3 安全缺陷汇总分析 summary analysis for Security bugs

共发现安全缺陷总数量：3个； 已解决数量：2个； 遗留到下版本解决：1个。

请点击[缺陷清单](https://gitee.com/OSDT/dashboard/issues?sort=created_at%20desc&program_id=114640)查看详情。

| 序号 | 任务ID | 任务标题 |状态|
| -- | -- | -- | -- |
| 1 | I23DU6 | 用户登录失败后，滑动条没有复原| 已完成 |
| 2 | I23DT4 | 用户超过3次的多次登录账户没有锁定| 已完成 |

3.3.4 安全缺陷及未解决问题 Residual Defects and known issues about Security
|BugID|Bug描述|状态|未解决说明|预计处理安排|
|--|--|--|
|I23DY8|mecm-postgresql;developer-fe ;user-mgmt-redis-0 项目默认登录用户为root用户|遗留|该问题经过安全工作组评审，将在R1.0版本修复|遗留到R1.0版本处理|


四、测试结论及建议 Test Conclusion and Suggestion

测试用例100%执行，ReleaseV0.9.1需求全部覆盖（不含POC需求），代码覆盖率满足预期指标，安全性要求满足预期要求，known issue已明确，无严重遗留问题。