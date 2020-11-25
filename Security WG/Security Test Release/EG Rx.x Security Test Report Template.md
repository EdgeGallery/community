# EdgeGallery Rx.x Security Test Report

## EdgeGallery Rx.x 安全测试报告



### 1.引言 Introduction

#### 1.1报告目的 Report Purpose

本安全测试报告为 EdgeGallery Rx.x版本 安全测试报告，目的在于总结安全测试过程中所涉及测试环境、测试用例、测试人员、测试过程、发现安全问题及解决情况等，描述预定需求的符合性及预定质量指标的符合性，并为EdgeGallery开源社区其他成员提供参考。本报告重点在于统计所发现的安全问题和解决情况。安全测试工作由安全工作组执行。

This security test report is the EdgeGallery Rx.x version security test report. The purpose is to summarize the test environment, test cases, testers, test process, discovery and resolution of security issues, etc., involved in the security test process, and describe the compliance and Predetermine compliance with quality indicators, and provide references for other members of the EdgeGallery open source community. The focus of this report is on the security issues discovered and the solutions based on statistics. The security testing is executed by the security working group.

#### 1.2项目简介 Project Description

EdgeGallery社区聚焦5G边缘计算场景，通过开源协作构建起MEC边缘的资源、应用、安全、管理的基础框架和网络开放服务的事实标准，并实现同公有云的互联互通。在兼容边缘基础设施异构差异化的基础上，构建起统一的MEC应用生态系统。

更详细介绍请参考 [系统简介](https://gitee.com/edgegallery/docs/blob/master/Get%20Started/Start%20from%20A%20Demo%20on%20EdgeGallery.md) 。

The EdgeGallery community focuses on the 5G edge computing scenario, through open source collaboration to build the basic framework of resources, applications, security, management of the MEC edge and the de facto standard for network open services, and to achieve interconnection with public clouds. Build a unified MEC application ecosystem based on the heterogeneous differentiation of compatible edge infrastructure.

For more detailed introduction, please refer to [System Introduction](https://gitee.com/edgegallery/docs/blob/master/Get%20Started/Start%20from%20A%20Demo%20on%20EdgeGallery.md).



### 2.测试概要 Test Overview

#### 2.1 测试环境 Test Environment

| No.  | Server IP | Usage  | Passwd |
| ---- | --------- | ------ | ------ |
| 1    | x.x.x.x   | Center | ***    |
| 2    | x.x.x.x   | Edge   | ***    |

#### 2.2 测试用例 Test Cases

本次测试共涉及测试用例 x个。请点击 [安全合规测试用例清单](https://gitee.com/edgegallery/community/tree/master/Security%20WG/Security%20Testing/Design%20Compliance%20Test%20Cases) 和 [渗透测试用例清单](https://gitee.com/edgegallery/community/tree/master/Security%20WG/Security%20Testing/Penetration%20Test%20Cases) 以查看测试用例具体内容。

This test involves a total number of x test cases. Please click [Security Compliance Test Case List](https://gitee.com/edgegallery/community/tree/master/Security%20WG/Security%20Testing/Design%20Compliance%20Test%20Cases) and [Penetration Test Case List](https://gitee.com/edgegallery/community/tree/master/Security%20WG/Security%20Testing/Penetration%20Test%20Cases) to view the specific content of the test cases.

#### 2.3 测试人员 Testers

本次测试人员包括： Satish，程润东，扈冰。

The testers include: xxx, xxx, xxx.

#### 2.4 测试日期和过程 Test Date and Process

整体起止日期为xx.xx - xx.xx。

The overall start and end dates are xx.xx - xx.xx.

| Date          | Test Content                | Test Details |
| ------------- | --------------------------- | ------------ |
| xx.xx - xx.xx | pre-test                    | ...          |
| xx.xx - xx.xx | regression of pre-test      | ...          |
|               | sprint 1 test               | ...          |
| xx.xx-xx.xx   | regression of sprint 1 test | ...          |
|               | sprint 2 test               | ...          |
| xx.xx - xx.xx | regression of sprint 2 test | ...          |
| ...           | ...                         | ...          |



### 3.测试结果及问题处理 Test Result and Issue Sloving

本次测试共发现安全缺陷/漏洞数量 ： x个。

其中已解决数量： x个 ； 遗留数量： x个。

请点击 [缺陷列表](https://gitee.com/OSDT/dashboard/issues?issue_type_id=199540&sort=created_at%20desc) 和 [漏洞列表](https://gitee.com/OSDT/dashboard/issues?issue_type_id=238025&sort=created_at%20desc) 以查看详情。

The totally number of security issues found in this test: x.

Among them, the number of resolved issues: x;  The number of remaining issues: x.

Please click [Bugs List](https://gitee.com/OSDT/dashboard/issues?issue_type_id=199540&sort=created_at%20desc) and [Vulns List](https://gitee.com/OSDT/dashboard/issues?issue_type_id=238025&sort=created_at%20desc) to view the details.

#### 3.1 已解决安全问题 Completed Security Issues

| No.  | Issue ID | Issue Title | Status    | Note |
| ---- | -------- | ----------- | --------- | ---- |
| 1    | ...      | ...         | Completed |      |
| 2    | ...      | ...         | Completed |      |

#### 3.2 遗留安全问题 Remaining Security Issues

| No.  | Issue ID | Issue Title | Status    | Reason | Complete Plain             |
| ---- | -------- | ----------- | --------- | ------ | -------------------------- |
| 1    | ...      | ...         | Remaining | ...    | Remaining to next version. |



### 4.测试结论 Test Conclusion and Suggestion

在EdgeGallery Rx.x版本安全测试中，测试用例100%执行，版本需求全部覆盖，整体安全性要求满足预期要求，并且无严重遗留问题。

In the EdgeGallery Rx.x version security test, 100% of the test cases were executed, the version requirements were all covered, the overall security requirements met the expected requirements, and there were no serious remaining problems.