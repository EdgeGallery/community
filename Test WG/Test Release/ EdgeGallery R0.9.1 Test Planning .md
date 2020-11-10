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
![| 任务                            | owner        | 时间               | 进展   |
|-------------------------------|--------------|------------------|------|
| CI环境准备                        | 许丹           | 2020/10/26       | 100% |
| images build                  | 许丹           | 2020/10/27       | 100% |
| 安装脚本准备                        | sharath      | 2020/10/27       | 100% |
| 全量部署验证                        | 彭育           | 2020/10/27       | 100% |
| 开发自验证                         | zhangbeiyuan | 2020/10/28       | 100% |
| appstore/mecm/developer用例回归验证 | 张阿利          | 2020/10/30-11/06 | 100% |
| v0.9版本问题单验证                   | 彭育/李媛媛/赵宝辉   | 2020/10/30-11/06 | 100% |
| 0.9x补丁新需求验证                   | 彭育/李媛媛/赵宝辉   | 2020/10/30-11/06 | 100% |
](https://images.gitee.com/uploads/images/2020/1110/151902_64dd354f_7624512.png "屏幕截图.png")

3.1.2 测试时间（各负责人daily更新） Test Schedule

2020年10月28日至11月6日。


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

软件实现100%覆盖Release V0.9需求。

3.2.2 单元测试代码覆盖（数据源于SonarQube） Code Coverage for Unit Test

根据TSC20200923会议决定，本次测试版本暂不考虑前端代码覆盖率，关注后台代码覆盖率。
| 模块  | 代码覆盖率  |
|---|---|
|developer-be   | 48.1%  |
| appstore-be  | 64.9% |
|user-mgmt-be|44.4%|
|website-gateway|31%|
| mecm-inventory|53.3%|
| mecm-apm  | 57.9% |
| mecm-appo  |52.8% |
| memc-mepm-k8splugin | 51.6% |
| mecm-applcm-be  |59.1%|
| mecm-inventory |53.3%|
| mep-mepserver|57.5%|
| mep-mepauth|48.7%|
| mep-dnsserver|70.6%|
| mep-agent|48.4%|

*注：website-gateway代码覆盖率低的解释：website-gateway本身是一个框架工程只有200多行代码，没有业务逻辑，而且大部分代码都是实现spring的配置类，ut运行不到。目前我们只能多其中的login和logout接口做测试，所以覆盖率达不到40%。

3.3 缺陷统计及分析 Statistical analysis of Defects/Bugs

请点击[缺陷清单](https://gitee.com/OSDT/dashboard/issues?issue_type_id=199540&labels=ReleaseV0.9)查看详情。

3.3.1 缺陷汇总 Defects Summary

已剔除6个无效bug后，总缺陷数量：98（含22个安全类缺陷），已解决数量：93个；未解决bug5个（含2个known issue，遗留到下一版本解决）。

3.3.2 缺陷分析 Defects Analysis

按缺陷类型分析：安全类bug26个；其他类bug78个。
按缺陷严重级别分析：严重bug10个；主要bug27个；次要bug30个；不指定37个。
按需求点分析
缺陷收敛性分析：总计104个bug（含6个无效bug；含安全类bug）；第一轮75个bug（含5个无效bug）；第二轮个29bug（含1个无效bug）

3.3.3 遗留缺陷及未解决问题 Residual Defects and known issues

|BugID|Bug描述|状态|未解决说明|预计处理安排|
|--|--|--|--|--|
| I1W7NB |developer-fe portal redirects to different ip|遗留 | clienturl must public IP | 遗留到1.0版处理 |
| I1UHDN |https://[ip]:8443/mepauth/mepauth/v1/token一直提示Invalid account credential| 待办的 |  |  |
| I1XA0N |In test env，node port not exposed in the deployment for prometheus| 已确认 |需要修改部署脚本  |  |

3.4 安全测试执行情况及记录（安全工作组负责）

EdgeGallery R0.9版本安全测试主要分为安全设计合规测试与安全渗透测试

3.4.1 安全测试组织Security Test Organizing

安全测试由安全工作组执行

3.4.2 安全测试执行情况 Security Test Execution

3.4.2.1 EdgeGallery R0.9 安全设计合规测试

时间：2020年10月28日至11月6日。

测试项目： AppStore, Developer, User-mgmt, MECM，MEP

测试人员： 程润东，扈冰

安全合规测试用例：
1. AppStore:
 - Identification, Authentication and Authorization: 1.1, 1.2, 1.3, 1.4, 1.7, 1.8
 - Secure Transmission: 2.1, 2.2
 - Sensitive and Private Data Protection: 3.2, 3.3
 - Encryption algorithm and key management 4.1, 4.2, 4.3, 4.4
 - DOS attack 5.1, 5.3
 - Session management 6.2, 6.3
 - Web Service Security: 7.1, 7.2
 - Log Security: 9.1, 9.2, 9.3, 9.4
2. Developer
 - Identification, Authentication and Authorization: 1.1, 1.2, 1.3, 1.4, 1.7, 1.8
 - Secure Transmission: 2.1, 2.2
 - Sensitive and Private Data Protection: 3.2, 3.3
 - Encryption algorithm and key management 4.1, 4.3, 4.4
 - DOS attack 5.1, 5.3
 - Session management 6.2, 6.3
 - Web Service Security: 7.1, 7.2
 - Log Security: 9.1, 9.2, 9.3, 9.4
3. User-mgmt
 - Identification, Authentication and Authorization: 1.1, 1.2, 1.4, 1.6, 1.7, 1.8, 1.10
 - Secure Transmission: 2.1, 2.2
 - Sensitive and Private Data Protection: 3.1, 3.2, 3.3, 3.4
 - Encryption algorithm and key management 4.1, 4.2, 4.3, 4.4
 - DOS attack 5.1, 5.3
 - Session management 6.2, 6.3, 6.4, 6.5
 - Web Service Security: 7.1, 7.2
 - Log Security: 9.1, 9.2, 9.3, 9.4
4. MECM
 - Identification, Authentication and Authorization: 1.1, 1.3, 1.4, 1.5, 1.6, 1.7, 1.8
 - Secure Transmission: 2.1, 2.2
 - Sensitive and Private Data Protection: 3.1, 3.2, 3.3
 - Encryption algorithm and key management 4.1, 4.2, 4.3
 - DOS attack 5.3
 - Session management 6.2, 6.3, 6.4, 6.5
 - Web Service Security: 7.1, 7.2
 - Log Security: 9.1, 9.2, 9.3, 9.4

5. MEP
 - Identification, Authentication and Authorization: 1.2
 - Secure Transmission: 2.1

3.4.2.2 EdgeGallery R0.9 安全渗透测试


3.4.4 安全缺陷及未解决问题 Residual Defects and known issues about Security

问题单[list](https://gitee.com/OSDT/dashboard/programs/114631/issues?issue_type_id=199540&labels=ReleaseV0.9&created_at_start=2020-10-29&created_at_end=2020-11-06)

|BugID|Bug描述|状态|未解决说明|预计处理安排|
|--|--|--|--|--|
| I2416V | grafana界面资源显示有问题  | 遗留 | 该问题为三方件的问题，需要在对应三方件社区提issue跟踪解决。 | 遗留到R1.0版本处理 |


四、测试结论及建议 Test Conclusion and Suggestion

测试用例100%执行，ReleaseV0.9.1需求全部覆盖（不含POC需求），代码覆盖率满足预期指标，安全性要求满足预期要求，known issue已明确，无严重遗留问题。