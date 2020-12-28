# EdgeGallery R1.0 Security Test Report

## EdgeGallery R1.0 安全测试报告



### 1.引言 Introduction

#### 1.1报告目的 Report Purpose

本安全测试报告为 EdgeGallery Rx.x版本 安全测试报告，目的在于总结安全测试过程中所涉及测试环境、测试用例、测试人员、测试过程、发现安全问题及解决情况等，描述预定需求的符合性及预定质量指标的符合性，并为EdgeGallery开源社区其他成员提供参考。本报告重点在于统计所发现的安全问题和解决情况。安全测试工作由安全工作组执行。

This security test report is the EdgeGallery Rx.x version security test report. The purpose is to summarize the test environment, test cases, testers, test process, discovery and resolution of security issues, etc., involved in the security test process, and describe the compliance and Predetermine compliance with quality indicators, and provide references for other members of the EdgeGallery open source community. The focus of this report is on the security issues discovered and the solutions based on statistics. The security testing is executed by the security working group.

#### 1.2项目简介 Project Description

EdgeGallery社区聚焦5G边缘计算场景，通过开源协作构建起MEC边缘的资源、应用、安全、管理的基础框架和网络开放服务的事实标准，并实现同公有云的互联互通。在兼容边缘基础设施异构差异化的基础上，构建起统一的MEC应用生态系统。

更详细介绍请参考 [系统简介](https://gitee.com/edgegallery/docs/blob/master/Get%20Started/Start%20from%20A%20Demo%20on%20EdgeGallery.md) 。

The EdgeGallery community focuses on the 5G edge computing scenario, through open source collaboration to build the basic framework of resources, applications, security, management of the MEC edge and the de facto standard for network open services, and to achieve interconnection with public clouds. Build a unified MEC application ecosystem based on the heterogeneous differentiation of compatible edge infrastructure.

For more detailed introduction, please refer to [System Introduction](https://gitee.com/edgegallery/docs/blob/master/Get%20Started/Start%20from%20A%20Demo%20on%20EdgeGallery.md).



### 2.安全测试概要 Security Test Overview

#### 2.1 测试环境 Test Environment

| No.  | Server IP       | Usage                           | Passwd |
| ---- | --------------- | ------------------------------- | ------ |
| 1    | 159.138.139.166 | Center                          | ***    |
| 2    | 159.138.129.53  | Edge                            | ***    |
| 3    | 119.8.36.45     | Center+Edge (spare environment) |        |

#### 2.2 测试内容 Test Content

本次测试内容为EdgeGallery v1.0版本，共包括sprint1，sprint2，sprint3三个迭代。从安全合规测试和渗透测试2个维度展开测试。

请点击 [Release1.0 story分解](https://gitee.com/OSDT/dashboard/issues?sort=created_at%20desc&labels=ReleaseV1.0&issue_type_id=199539) 查看各个迭代story具体内容。

请点击 [R1.0安全合规设计文档](https://gitee.com/edgegallery/community/tree/master/Security%20WG/Security%20Testing/Compliance%20Report/Version%201.0) 查看各模块安全需求与合规测试用例的匹配情况。

请点击 [R1.0 Security Test Plan](https://gitee.com/edgegallery/community/blob/master/Security%20WG/Security%20Test%20Plan/Release-R1.0/EG%20R1.0%20Security%20Test%20Plan.md) 查看各个迭代story测试进度及测试结果是否通过。

The test content is EdgeGallery v1.0 version, including three iterations of sprint1, sprint2, and sprint3. Test from two dimensions: security compliance testing and penetration testing.

Please click [Release1.0 story decomposition](https://gitee.com/OSDT/dashboard/issues?sort=created_at%20desc&labels=ReleaseV1.0&issue_type_id=199539) to view the specific content of each iteration story. 

Please click [R1.0 Secuirty Compliance Design](https://gitee.com/edgegallery/community/tree/master/Security%20WG/Security%20Testing/Compliance%20Report/Version%201.0) to check the match between the security requirements of each module and the compliance test cases.

Please click [R1.0 Security Test Plan](https://gitee.com/edgegallery/community/blob/master/Security%20WG/Security%20Test%20Plan/Release-R1.0/EG%20R1.0%20Security %20Test%20Plan.md) to view the test progress of each iteration story and whether the test results pass.

#### 2.3 测试用例 Test Cases

本次测试共涉及测试用例 38个。请点击 [安全合规测试用例清单](https://gitee.com/edgegallery/community/tree/master/Security%20WG/Security%20Testing/Design%20Compliance%20Test%20Cases) 和 [渗透测试用例清单](https://gitee.com/edgegallery/community/tree/master/Security%20WG/Security%20Testing/Penetration%20Test%20Cases) 以查看测试用例具体内容。

This test involves a total number of 38 test cases. Please click [Security Compliance Test Case List](https://gitee.com/edgegallery/community/tree/master/Security%20WG/Security%20Testing/Design%20Compliance%20Test%20Cases) and [Penetration Test Case List](https://gitee.com/edgegallery/community/tree/master/Security%20WG/Security%20Testing/Penetration%20Test%20Cases) to view the specific content of the test cases.

#### 2.4 测试人员 Testers

本次测试人员包括： 程润东，扈冰。

The testers include: Cheng Rundong, Hubing.

#### 2.5 测试日期和过程 Test Date and Process

整体起止日期为11.27 - 12.25。

The overall start and end dates are 11.27 - 12.25.

| Date          | Test Content                                | Test Details |
| ------------- | ------------------------------------------- | ------------ |
| 11.27 - 12.2  | sprint 1 test                               | ...          |
| 12.2 - 12.12  | sprint 2 test                               | ...          |
| 12.14 - 12.19 | sprint 3 test， regression of sprint 1 test | ...          |
| 12.21 - 12.25 | regression of sprint 2/sprint 3 test        |              |
| 12.26 -       | Code freeze, and ready to release           |              |



### 3.测试结果及问题处理 Test Result and Issue Sloving

#### 3.1 测试结果概述 Test Result Overview

本次测试共发现安全缺陷/功能缺陷数量 ： 35个。 （已解决数量： 33个 ； 遗留数量： 2个。）

35个问题中：

①安全漏洞（可以明确对服务器或用户造成危害）：4个。

②一般性安全问题（不能直接造成危害，但存在安全隐患）：18个。

③功能性Bug：13个。

另外上版本遗留至本版本问题： 2个。

所有安全测试过程中发现的问题已在gitee提单（安全工作组问题单均以“【Security Test】开头”），请点击 [缺陷列表(含安全类缺陷)](https://gitee.com/OSDT/dashboard/issues?issue_type_id=199540&sort=created_at%20desc) 和 [安全漏洞列表](https://gitee.com/OSDT/dashboard/issues?issue_type_id=238025&sort=created_at%20desc) 以查看详情。

The totally number of security issues found in this test: 35.

Among them, the number of resolved issues: 33;  The number of remaining issues: 2.

Among the 35 questions: 

① Security vulnerabilities (can clearly cause harm to the server or users): 4. 

②General security issues (cannot directly cause harm, but there are safety risks): 18. 

③ Functional bugs: 13.

In addition, there are 2 issues left from the previous version to this version.

All the problems found during the security test have been in the gitee issues (the WecurityWG issues all start with "【Security Test】"). Please click [Bugs List](https://gitee.com/OSDT/dashboard/issues?issue_type_id=199540&sort=created_at%20desc) and [Vulns List](https://gitee.com/OSDT/dashboard/issues?issue_type_id=238025&sort=created_at%20desc) to view the details.

#### 3.2 测试结果/测试数据 Test Result/Test Data

测试结果分为安全合规测试结果和渗透测试结果。测试结果比较详细的记录了各个story的测试方法、测试过程和测试结论。

[R1.0安全合规测试结果、R1.0渗透测试结果 及其他测试数据](https://gitee.com/edgegallery/community/tree/master/Security%20WG/Security%20Test%20Result/Test%20result%20Release%20V1.0)已上传至社区SecurityWG，请点击查看。

#### 3.3 已解决安全问题 Completed Security Issues

| No.  | Issue ID | Issue Title                                                  | Status    | Note           |
| ---- | -------- | ------------------------------------------------------------ | --------- | -------------- |
| 1    | I2AUML   | 【Security Test】Mep-Agent、Mep-Auth日志存在敏感信息         | Completed | 一般性安全问题 |
| 2    | I2ANPP   | 【Security Test】Developer工具链上传功能，存在压缩包炸弹攻击漏洞 | Completed | 安全漏洞       |
| 3    | I2AGGQ   | 【Security Test】Developer工具链上传功能，未对上传文件进行随机重命名 | Completed | 一般性安全问题 |
| 4    | I2ADR0   | 【Security Test】AppStore首页上传csar包功能存在重放攻击漏洞  | Completed | 安全漏洞       |
| 5    | I2AA40   | 【Security Test】Developer“部署调测”界面如果修改了ip或端口，无法打开“启用环境”开关 | Completed | 功能bug        |
| 6    | I29XX3   | 【Security Test】Mecm 删除App Rule时弹框信息显示错误         | Completed | 功能bug        |
| 7    | I29WET   | 【Security Test】Developer release-config接口存在横向越权漏洞 | Completed | 安全漏洞       |
| 8    | I29QDU   | 【Security Test】Mecm接口说明文档中Delete application rule manager records部分内容错误 | Completed | 功能bug        |
| 9    | I29KLQ   | 【Security Test】Developer项目详情中上传.md文件功能不应返回绝对路径 | Completed | 一般性安全问题 |
| 10   | I29JJS   | 【Security Test】AppStore上传应用功能未对上传文件进行随机重命名 | Completed | 一般性安全问题 |
| 11   | I29JIN   | 【Security Test】AppStore上传应用功能不应返回绝对路径        | Completed | 一般性安全问题 |
| 12   | I29IBI   | 【Security Test】Developer如果修改“应用开发”中节点信息，“部署调测”-“节点信息”中节点信息内容未及时修改 | Completed | 功能bug        |
| 13   | I29I0W   | 【Security Test】Developer导入节点信息IP，测试完毕后如果修改信息，再次测试无效 | Completed | 功能bug        |
| 14   | I29H0A   | 【Security Test】Developer开发环境准备界面，部分情况下“示例代码”链接无效 | Completed | 功能bug        |
| 15   | I295JQ   | 【Security Test】Developer应用详情-上传App镜像页面“安装向导”链接报404错误 | Completed | 功能bug        |
| 16   | I294OA   | 【Security Test】Developer能力中心部分文字显示未对齐         | Completed | 功能bug        |
| 17   | I292QJ   | 【Security Test】AppStore应用详情点击右边栏，部分内容显示异常 | Completed | 功能bug        |
| 18   | I291TD   | 【Security Test】Developer应用测试功能没有对上传文件进行随机重命名 | Completed | 一般性安全问题 |
| 19   | I291P4   | 【Security Test】Developer应用测试功能不应返回上传文件的绝对存储路径 | Completed | 一般性安全问题 |
| 20   | I290WT   | 【Security Test】Developer插件上传功能不应返回插件的绝对存储路径 | Completed | 一般性安全问题 |
| 21   | I28WBS   | 【Security Test】Developer新建项目时如果未选择能力，则下载SDK时报500错误 | Completed | 功能bug        |
| 22   | I28VBL   | 【Security Test】AppStore应用程序基本信息packages接口不应返回文件存储绝对路径 | Completed | 一般性安全问题 |
| 23   | I28V7M   | 【Security Test】ATP没有足够的日志记录。记录所有与安全相关的成功和失败 | Completed | 一般性安全问题 |
| 24   | I28UOG   | 【Security Test】ATP上传文件成功后，不应返回文件存储的绝对存储路径 | Completed | 一般性安全问题 |
| 25   | I28O8U   | 【Security Test】session过期后，MECM点击页面没响应，不能直接跳转到登陆页面，需要刷新页面，建议优化 | Completed | 一般性安全问题 |
| 26   | I286OV   | 【Security Test】Mecm APPLCM注册失败                         | Completed | 功能bug        |
| 27   | I281KP   | 【Security Test】Developer访客用户在工具链中可以通过POST接口上传文件，并生成分析报告 | Completed | 一般性安全问题 |
| 28   | I2808A   | 【Security Test】use invalidate hostIp to query capability successful | Completed | 一般性安全问题 |
| 29   | I27Z75   | 【Security Test】注册边缘节点，上传配置文件失败没有 明确 提示 | Completed | 功能bug        |
| 30   | I27Z52   | 【Security Test】mecm 注销失败                               | Completed | 一般性安全问题 |
| 31   | I27BLQ   | 【Security Test】用户注册时，对手机号是否已注册的判断逻辑不准确 | Completed | 功能bug        |
| 32   | I27BK7   | 【Security Test】使用同一个浏览器同时登录多个用户时，登录判定逻辑不正确 | Completed | 一般性安全问题 |
| 33   | I27B67   | 【Security Test】user-mgmt 输入错误密码登录失败后，刷新页面，已输入的密码未清空 | Completed | 一般性安全问题 |

#### 3.4 遗留安全问题 Remaining Security Issues

| No.  | Issue ID | Issue Title                                                  | Status    | Reason                                                       | Complete Plain             | Note           |
| ---- | -------- | ------------------------------------------------------------ | --------- | ------------------------------------------------------------ | -------------------------- | -------------- |
| 1    | I2A17N   | [【Security Test】Mecm会话超时后，依然可以操作AppLCM、AppRule、边缘节点注册等功能](https://gitee.com/OSDT/dashboard?issue_id=I2A17N) | Remaining | 由于业务功能需要，目前token有效期为12小时，但是有效期过长的token会存在一定的安全隐患。建议暂时将此问题遗留。 | Remaining to next version. | 一般性安全问题 |
| 2    | I28F84   | [【Security Test】Developer插件上传功能存在重放攻击漏洞](https://gitee.com/OSDT/dashboard?issue_id=I28F84) | Remaining | 目前采用hash值校验方法进行防御。后续版本可能增加同步时间戳、存储空间上限等方法进行防御。 | Remaining to next version. | 安全漏洞       |
| 3    | I23DY8   | [【Security Test】mecm-postgresql;developer-fe ;user-mgmt-redis-0 项目默认登录用户为root用户](https://gitee.com/OSDT/dashboard?issue_id=I23DY8) | Remaining |                                                              | Remaining to next version. |                |
| 4    | I1VY5P   | [【Security Test】【developer】Password is exposed](https://gitee.com/OSDT/dashboard?issue_id=I1VY5P) | Remaining |                                                              | Remaining to next version. |                |



### 4.测试结论 Test Conclusion and Suggestion

在EdgeGallery R1.0版本安全测试中，测试用例100%执行，版本特性全部覆盖，整体安全性要求满足预期要求，并且无特别严重的遗留问题。

In the EdgeGallery R1.0 version security test, 100% of the test cases were executed, the version stories were all covered, the overall security requirements met the expected requirements, and there were no serious remaining problems.