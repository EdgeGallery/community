# EdgeGallery v1.1 Security Test Report

## EdgeGallery v1.1 安全测试报告



### 1.引言 Introduction

#### 1.1项目简介 Project Description

EdgeGallery社区聚焦5G边缘计算场景，通过开源协作构建起MEC边缘的资源、应用、安全、管理的基础框架和网络开放服务的事实标准，并实现同公有云的互联互通。在兼容边缘基础设施异构差异化的基础上，构建起统一的MEC应用生态系统。

更详细介绍请参考 [系统简介](https://gitee.com/edgegallery/docs/blob/master/Get%20Started/Start%20from%20A%20Demo%20on%20EdgeGallery.md) 。

The EdgeGallery community focuses on the 5G edge computing scenario, through open source collaboration to build the basic framework of resources, applications, security, management of the MEC edge and the de facto standard for network open services, and to achieve interconnection with public clouds. Build a unified MEC application ecosystem based on the heterogeneous differentiation of compatible edge infrastructure.

For more detailed introduction, please refer to [System Introduction](https://gitee.com/edgegallery/docs/blob/master/Get%20Started/Start%20from%20A%20Demo%20on%20EdgeGallery.md).

#### 1.2报告目的 Report Purpose

本安全测试报告为 EdgeGallery v1.1版本 安全测试报告，目的在于总结安全测试过程中所涉及测试环境、测试用例、测试人员、测试过程、发现安全问题及解决情况等，描述预定需求的符合性及预定质量指标的符合性，并为EdgeGallery开源社区其他成员提供参考。本报告重点在于统计所发现的安全问题和解决情况。安全测试工作由安全工作组执行。安全工作组介绍及工作文档详见 [SecurityWG工作目录](https://gitee.com/edgegallery/community/tree/master/Security%20WG)。

This security test report is the EdgeGallery Rx.x version security test report. The purpose is to summarize the test environment, test cases, testers, test process, discovery and resolution of security issues, etc., involved in the security test process, and describe the compliance and Predetermine compliance with quality indicators, and provide references for other members of the EdgeGallery open source community. The focus of this report is on the security issues discovered and the solutions based on statistics. The security testing is executed by the security working group. For the introduction and working documents of SecurityWG, see [SecurityWG work documents](https://gitee.com/edgegallery/community/tree/master/Security%20WG).



### 2.安全测试概要 Security Test Overview

#### 2.1 测试环境 Test Environment

| No.  | Server IP   | Usage         | Passwd |
| ---- | ----------- | ------------- | ------ |
| 1    | 119.8.36.45 | Center + Edge |        |

#### 2.2 先决条件 Prerequisites

[v1.1里程碑计划 Release Milestone](https://gitee.com/edgegallery/community/blob/master/TSC/Release/v1.1/版本计划.md)

[v1.1需求设计文档 Requirement Design Docs](https://gitee.com/edgegallery/community/tree/master/Architecture WG/Requirements/v1.1)

[v1.1需求列表 Epic List on gitee](https://gitee.com/OSDT/dashboard/issues?issue_type_id=238024&sort=created_at desc&milestone_id=92309)

[v1.1特性列表 Story List on gitee](https://gitee.com/OSDT/dashboard/issues?issue_type_id=199539&sort=created_at desc&milestone_id=92309)

[v1.1安全设计文档 Security Design Docs](https://gitee.com/edgegallery/community/tree/master/Security WG/Security Testing/Compliance Report/Version 1.1)

[EdgeGallery安全设计规范 Security Design Guide](https://gitee.com/edgegallery/community/blob/master/Security WG/Secure Design/Security Design Guide CN.md)

#### 2.3 测试用例 Test Cases

请点击 [安全合规测试用例](https://gitee.com/edgegallery/community/tree/master/Security%20WG/Security%20Testing/Design%20Compliance%20Test%20Cases) 和 [渗透测试用例](https://gitee.com/edgegallery/community/tree/master/Security%20WG/Security%20Testing/Penetration%20Test%20Cases) 以查看测试用例具体内容。

Please click [Security Compliance Test Cases](https://gitee.com/edgegallery/community/tree/master/Security%20WG/Security%20Testing/Design%20Compliance%20Test%20Cases) and [Penetration Test Cases](https://gitee.com/edgegallery/community/tree/master/Security%20WG/Security%20Testing/Penetration%20Test%20Cases) to view the specific content of the test cases.

#### 2.4 测试人员及分工 Testers and Division

本次测试人员： 扈冰（包括UserMgmt、Appstore、Developer、MECM、ATP、MEP等）。

The testers: Hubing (UserMgmt, Appstore, Developer, MECM, ATP, MEP, ect).

#### 2.5 测试日期 Test Date

整体起止日期：2021.02.19 - 2021.03.30

The overall start and end dates: 2021.02.19 - 2021.03.26

| Date          | Compliance Test          | Penetration Test          | Regression Test          |
| ------------- | ------------------------ | ------------------------- | ------------------------ |
| 02.19 - 02.28 | Sprint 1 compliance test | Sprint 1 penetration test | -                        |
| 03.01 - 03.12 | Sprint 2 compliance test | Sprint 2 penetration test | Sprint 1 regression test |
| 03.13 - 03.25 | Sprint 3 compliance test | Sprint 3 penetration test | Sprint 2 regression test |
| 03.26 - 03.39 |                          |                           | Sprint 3 regression test |
| 03.30 - 03.31 | Ready to release         |                           |                          |



### 3.安全测试内容 Security Test Content

本次测试共包括**sprint1，sprint2，sprint3**三个迭代。

首先针对各Story匹配测试用例，然后从**安全合规测试**和**渗透测试**2个维度展开测试。

测试内容详见 [v1.1 Security Test Plan](https://gitee.com/edgegallery/community/blob/master/Security%20WG/Security%20Test%20Plan/Release-R1.1/EG%20R1.1%20Security%20Test%20Plan%20.md) **第5节“测试范围”**相关内容。

The test include three iterations of **sprint1, sprint2, and sprint3**. 

First, match test cases for each Story, and then start testing from the two dimensions of **security compliance testing** and **penetration testing**. 

For details of Security test content, please refer to [v1.1 Security Test Plan](https://gitee.com/edgegallery/community/blob/master/Security%20WG/Security%20Test%20Plan/Release-R1.1/EG%20R1.1%20Security%20Test%20Plan%20.md) **Section 5 "Test Scope"**. 



### 4.安全测试结果 Security Test Result

#### 4.1 测试结果概述 Test Result Overview

本次测试安全工作组共提单：69个。其中安全类问题34个，功能类问题31个，取消4个。

本次安全测试过程中，所有发现的安全类问题已在gitee提单（安全类问题单均包含“【Security】”标签），请访问gitee [安全类问题单](https://e.gitee.com/OSDT/issues/list?is%5Bmilestone_id%5D=92309&is%5Bsearch%5D=Security&is%5Bissue_type_id%5D=199540&is%5Bsort%5D=created_at&is%5Bdirection%5D=desc) 以查看详情。

In this test, the SecurityWG has a total of 69 issues. Among them, there are 34 security issues, 31 function issues, and 4 were cancelled. 

In this test, all the security issues found can been found on gitee (all the security issues include the "【Security】" tag), please visit gitee [Security Issues](https://e.gitee.com/OSDT/issues/list?is%5Bmilestone_id%5D=92309&is%5Bsearch%5D=Security&is%5Bissue_type_id%5D=199540&is%5Bsort%5D=created_at&is%5Bdirection%5D=desc) for details. 

#### 4.2 测试结果分析 Test Result Analysis

在34个安全问题中：

4.2.1 按**漏洞类型**统计：信息泄露 9个，DOS 2个，越权/权限 7个，木马/远控 3个，输入校验 5个，逻辑漏洞 1个，文件上传 2个，文档类 5个。

可以看到，**信息泄露**（26%）、**越权/权限问题**（20%）和**输入校验**（15%）是占比较高的问题（此3项共占比61%）。

信息泄露类问题主要包括前端页面泄露、源码硬编码明文密码、后端返回敏感信息等。

由于此版本引入分权控制，导致越权/权限类问题占比较高。

输入校验问题主要包括前端未校验、前端校验不正确、前后端校验规则不同等问题。

另外此版本引入的VNC功能，初期由于安全防护不足，引入了严重的**任意命令执行/木马写入/远程控制**的风险。

Statistics by vulnerability type:

Information leakage problems mainly include the leakage of front-end pages, hard-coded plaintext passwords in the source code, and the server returning sensitive information.

Due to the introduction of decentralized control in this version, the problem of ultra-authority/authority accounted for a relatively high proportion.

Input verification problems mainly include front-end unverified, front-end verification incorrect, and front-end and back-end verification rules are different.

In addition, the VNC function introduced in this version introduced a serious risk of **arbitrary command execution/trojan writing/remote control** due to insufficient security protection in the early stage. 

<img src="https://raw.githubusercontent.com/nirvinana/Pics/main/v1.1%E6%BC%8F%E6%B4%9E%E5%88%86%E6%9E%90-%E6%8C%89%E6%BC%8F%E6%B4%9E%E7%B1%BB%E5%9E%8B%E7%BB%9F%E8%AE%A1.png" style="zoom:75%;" />

4.2.2 按**严重性**统计：12个严重，13个主要，9个次要，0个不重要。

注：“严重”和“主要”安全问题详见**4.4节“严重/主要级别安全问题**。

Statistics by severity: 12 serious, 13 main, 9 minor, 0 unimportant.

Note: "Serious" and "Main" security issues are detailed in **Section 4.4 "Serious/Main Level Security Issues"**. 

<img src="https://raw.githubusercontent.com/nirvinana/Pics/main/v1.1%E6%BC%8F%E6%B4%9E%E5%88%86%E6%9E%90-%E6%8C%89%E4%B8%A5%E9%87%8D%E6%80%A7%E7%BB%9F%E8%AE%A1.png" style="zoom:80%;" />

4.2.3 按**修复状态**统计：28个已修复，6个遗留

注：遗留安全问题详见**4.5节“遗留安全问题”**。

Statistics by restoration status:

Note: Leaving security issues are detailed in **Section 4.5 "Leaving Security Issues"**. 

<img src="https://raw.githubusercontent.com/nirvinana/Pics/main/v1.1%E6%BC%8F%E6%B4%9E%E5%88%86%E6%9E%90-%E6%8C%89%E4%BF%AE%E5%A4%8D%E7%8A%B6%E6%80%81%E7%BB%9F%E8%AE%A1.png" style="zoom:80%;" />

4.2.4 按**所属模块**统计：UserMgmt 6个， AppStore 4个， Developer 13个， MECM 4个， ATP 5个， MEP 2个

由于此版本Developer部署调测改动较大（引入镜像管理），并新增了VNC远程连接、沙箱/能力中心管理等功能，整体改动较大，所以安全问题数量明显偏高。

由于此版本UserMgmt新增功能较多，包括邮箱注册、密码修改、个人账户中心、admin用户管理、分权控制等，所以安全问题数量也较高。

Statistics by modules: 

Due to the major changes in the deployment and commissioning of this version of Developer module (the introduction of image management), and the addition of VNC remote connection, sandbox/competence center management and other functions, the overall changes are relatively large, so the number of security issues is higher. 

Because this version of UserMgmt has many new features, including mailbox registration, password modification, personal account center, admin user management, decentralized control, etc., the number of security issues is also high. 

<img src="https://raw.githubusercontent.com/nirvinana/Pics/main/v1.1%E6%BC%8F%E6%B4%9E%E5%88%86%E6%9E%90-%E6%8C%89%E6%89%80%E5%B1%9E%E6%A8%A1%E5%9D%97%E7%BB%9F%E8%AE%A1.png" style="zoom:80%;" />

4.2.5 按**所属迭代**统计：sprint1 8个， sprint2 10个， sprint3 16个

Statistics by sprints:

<img src="https://raw.githubusercontent.com/nirvinana/Pics/main/v1.1%E6%BC%8F%E6%B4%9E%E5%88%86%E6%9E%90-%E6%8C%89%E6%89%80%E5%B1%9E%E8%BF%AD%E4%BB%A3%E7%BB%9F%E8%AE%A1.png" style="zoom:80%;" />

#### 4.3 安全测试记录/测试数据 Security Test Record

安全测试记录包括**安全合规测试记录**和**渗透测试记录**。测试记录中记录了各个story的测试方法、过程和结论。详见[v1.1安全合规测试记录、v1.1渗透测试记录](https://gitee.com/edgegallery/community/tree/master/Security%20WG/Security%20Test%20Result/Test%20result%20Release%20V1.1)。

Security test record include **security compliance test record** and **penetration test record**. The test method, process and conclusion of each story are recorded in security test records. For details, please check [v1.1 compliance test record、v1.1 penetration test record](https://gitee.com/edgegallery/community/tree/master/Security%20WG/Security%20Test%20Result/Test%20result%20Release%20V1.1)

#### 4.4 严重/主要级别安全问题 Completed Security Issues

v1.1版本安全测试过程中共发现严重级别安全问题12个，主要级别安全问题13个，详见下表：

During v1.1 security test, a total of 12 serious-level security issues and 13 main-level security issues were found. See the following table for details: 

| No.  | Issue Title                                                  |   Status    | Severity-level |
| :--: | ------------------------------------------------------------ | :---------: | :------------: |
|  1   | [【mecm】【Security】lcm portal should add login/auth function, or is weak of DOS attack](https://e.gitee.com/OSDT/issues/list?issue=I3DP2D) | **Leaving** |    Serious     |
|  2   | [【developer】【Security】攻击者可以通过修改获取沙箱环境密码](https://e.gitee.com/OSDT/issues/list?issue=I3D2IS) |  Restored   |    Serious     |
|  3   | [【developer】【Security】部署调测成功后，VNC一直保持“Connecting...”状态，无法连接](https://e.gitee.com/OSDT/issues/list?issue=I3BZWZ) |  Restored   |    Serious     |
|  4   | [【ATP】【Security】通过usermgmt用户管理将某用户设为管理员角色后，该用户并未实际获得管理员权限](https://e.gitee.com/OSDT/issues/list?issue=I3BJ4L) |  Restored   |    Serious     |
|  5   | [【usermgmt】【Security】个人账号中心密码修改后提示“密码修改成功”，但实际未生效](https://e.gitee.com/OSDT/issues/list?issue=I3B0QD) |  Restored   |    Serious     |
|  6   | [【developer】【Security】"沙箱管理"和"能力中心管理"存在垂直越权漏洞](https://e.gitee.com/OSDT/issues/list?issue=I3AGUW) |  Restored   |    Serious     |
|  7   | [【atp】【Security】atp测试时，如果不选测试场景，可以绕过atp测试直接发布应用](https://e.gitee.com/OSDT/issues/list?issue=I3ABAL) |  Restored   |    Serious     |
|  8   | [【usermgmt】【Security】用户注册功能，存在任意用户注册漏洞](https://e.gitee.com/OSDT/issues/list?issue=I3A8BQ) | **Leaving** |    Serious     |
|  9   | [【usermgmt】【Security】邮箱找回密码功能，存在邮件轰炸漏洞](https://e.gitee.com/OSDT/issues/list?issue=I3A7CJ) | **Leaving** |    Serious     |
|  10  | [【appstore】【Security】通过usermgmt用户管理将某个用户设为管理员后，该用户并未实际获得appstore管理员权限](https://e.gitee.com/OSDT/issues/list?issue=I3A0WP) |  Restored   |    Serious     |
|  11  | [【mecm】【Security】mecm点击“注销”后，access_token未失效，仍可以继续使用](https://e.gitee.com/OSDT/issues/list?issue=I3A0JE) | **Leaving** |    Serious     |
|  12  | [【developer】【Security】【Vulnerability】VNC远程调试功能存在严重越权漏洞](https://e.gitee.com/OSDT/issues/list?issue=I39EDO) | **Leaving** |    Serious     |
|  13  | [【appstore】【Security】管理员用户(非admin)，删除应用时返回“403 forbidden”](https://e.gitee.com/OSDT/issues/list?issue=I3CAET) |  Restored   |      Main      |
|  14  | [【developer】【Security】APP镜像上传功能，应该限制上传文件大小的上限](https://e.gitee.com/OSDT/issues/list?issue=I3CA8V) |  Restored   |      Main      |
|  15  | [【developer】【Security】上传app镜像包时，建议增加对镜像包格式的校验（目前可以上传任何格式的文件）](https://e.gitee.com/OSDT/issues/list?issue=I3C2FC) |  Restored   |      Main      |
|  16  | [【mecm】【Security】应用市场注册系统中，访客和普通租户角色可以看到应用仓库密码](https://e.gitee.com/OSDT/issues/list?issue=I3C0MX) | **Leaving** |      Main      |
|  17  | [【ATP】【Security】“测试场景”、“测试套”、“测试用例”的新增/修改功能未限制用户输入数据大小](https://e.gitee.com/OSDT/issues/list?issue=I3BO9Z) |  Restored   |      Main      |
|  18  | [【appstore】【Security】普通租户登录appstore后循环访问messages接口，并返回403状态码](https://e.gitee.com/OSDT/issues/list?issue=I3BCWQ) |  Restored   |      Main      |
|  19  | [【developer】【Security】报错信息中不应包含过于详细的信息，如Sql插入语句。](https://e.gitee.com/OSDT/issues/list?issue=I3B4JR) |  Restored   |      Main      |
|  20  | [【developer】【Security】“沙箱管理”->“上传配置文件”功能，普通租户可以越权上传文件](https://e.gitee.com/OSDT/issues/list?issue=I3AKYP) |  Restored   |      Main      |
|  21  | [【appstore】【Security】“操作分析”页面存在纵向越权漏洞](https://e.gitee.com/OSDT/issues/list?issue=I3AA1H) |  Restored   |      Main      |
|  22  | [【developer】【Security】vnc功能，源码中不应使用硬编码明文密码](https://e.gitee.com/OSDT/issues/list?issue=I39QF7) |  Restored   |      Main      |
|  23  | [【developer】【Security】部署调测结束，并释放资源后，应自动注销vnc登录](https://e.gitee.com/OSDT/issues/list?issue=I39L4X) |  Restored   |      Main      |
|  24  | [【UserMgmt】【Security】安全建议：目前用户管理登录url过于简单，易被猜解，建议更换为复杂路径](https://e.gitee.com/OSDT/issues/list?issue=I38RU2) |  Restored   |      Main      |
|  25  | [【UserMgmt】【Security】安全建议：建议用户管理页面不要显示完整的用户邮箱和手机号信息，使用****屏蔽部分内容。](https://e.gitee.com/OSDT/issues/list?issue=I38RL7) |  Restored   |      Main      |

#### 4.5 遗留安全问题 Leaving Security Issues

##### v1.1版本遗留安全问题 v1.1 leaving security issues:

| No.  | Issue ID | Issue Title                                                  | Status  | Reason                                                       | Complete Plain | Note |
| ---- | -------- | ------------------------------------------------------------ | ------- | ------------------------------------------------------------ | -------------- | ---- |
| 1    | I3C0MX   | [【mecm】【Security】应用市场注册系统中，访客和普通租户角色可以看到应用仓库密码](https://e.gitee.com/OSDT/issues/list?issue=I3C0MX) | Leaving | 已经和shashi确认，本次版本后台不作处理                       | 遗留至下版本   |      |
| 2    | I3A8BQ   | [【usermgmt】【Security】用户注册功能，存在任意用户注册漏洞](https://e.gitee.com/OSDT/issues/list?issue=I3A8BQ) | Leaving | 经讨论，该问题遗留到下个版本，通过能与服务端进行联动的验证方式来实现频率限制。 | 遗留至下版本   |      |
| 3    | I3A7CJ   | [【usermgmt】【Security】邮箱找回密码功能，存在邮件轰炸漏洞](https://e.gitee.com/OSDT/issues/list?issue=I3A7CJ) | Leaving | 经讨论，该问题遗留到下个版本，通过能与服务端进行联动的验证方式来实现频率限制。 | 遗留至下版本   |      |
| 4    | I3A0JE   | [【mecm】【Security】mecm点击“注销”后，access_token未失效，仍可以继续使用](https://e.gitee.com/OSDT/issues/list?issue=I3A0JE) | Leaving | 遗留至下版本                                                 | 遗留至下版本   |      |
| 5    | I3DP2D   | [【mecm】【Security】lcm portal should add login/auth function, or is weak of DOS attack](https://e.gitee.com/OSDT/issues/list?issue=I3DP2D) | Leaving | 此版本未做计划，遗留至下版本                                 | 遗留至下版本   |      |
| 6    | I39EDO   | [【developer】【Security】【Vulnerability】VNC远程调试功能存在严重越权漏洞](https://e.gitee.com/OSDT/issues/list?issue=I39EDO) | Leaving | 目前没有有效解决方案，暂时遗留                               | 遗留至下版本   |      |

##### 历史版本遗留问题 history versions leaving security issues：

| No.  | Issue ID | Issue Title                                                  | Status  | Leave from which version | Note                                                     |
| ---- | -------- | ------------------------------------------------------------ | ------- | ------------------------ | -------------------------------------------------------- |
| 1    | I2A17N   | [【Security Test】Mecm会话超时后，依然可以操作AppLCM、AppRule、边缘节点注册等功能](https://gitee.com/OSDT/dashboard?issue_id=I2A17N) | Leaving | v1.0                     |                                                          |
| 2    | I28F84   | [【Security Test】Developer插件上传功能存在重放攻击漏洞](https://gitee.com/OSDT/dashboard?issue_id=I28F84) | Leaving | v1.0                     | 目前仅通过hash校验防止重放攻击。需要讨论更完善解决方案。 |
| 3    | I23DY8   | [【Security Test】mecm-postgresql;developer-fe ;user-mgmt-redis-0 项目默认登录用户为root用户](https://gitee.com/OSDT/dashboard?issue_id=I23DY8) | Leaving | v1.0                     |                                                          |
| 4    | I1VY5P   | [【Security Test】【developer】Password is exposed](https://gitee.com/OSDT/dashboard?issue_id=I1VY5P) | Leaving | v0.9                     |                                                          |



### 5.安全测试结论  Security Test Conclusion

在EdgeGallery v1.1版本安全测试中，整个测试过程按计划执行，版本特性全部覆盖，未修复问题均进行了遗留处理，整体安全性要求满足预期要求。

In the EdgeGallery v1.1 version security test, 100% of the test cases were executed, the version stories were all covered, unfixed issues have been left behind , the overall security requirements met the expected requirements.