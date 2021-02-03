# EdgeGallery R1.1 Security Test Plan

## EdgeGallery R1.1 安全测试计划



#### 1.测试目标 Test target

本测试计划为EdgeGallery Release v1.1 安全测试计划，目的在于发现应用程序在版本迭代过程中可能出现的缺陷/漏洞，并评估其严重等级，并提供修补建议。以确保应用程序在版本迭代过程中的安全性。

This test plan is the EdgeGallery Release v1.1 security test plan. The purpose is to discover possible bugs/vulnerabilities of the application during the version iteration process, and evaluate its threat-level, and then provide some repair suggestions. The finally purpose is to ensure the security of the application during the version iteration process.

#### 2.先决条件 Prerequisites

[v1.1里程碑计划 Release Milestone](https://gitee.com/edgegallery/community/blob/master/TSC/Release/v1.1/%E7%89%88%E6%9C%AC%E8%AE%A1%E5%88%92.md)

[v1.1需求设计文档 Requirement Design Docs](https://gitee.com/edgegallery/community/tree/master/Architecture%20WG/Requirements/v1.1)

[v1.1需求列表 Epic List](https://gitee.com/OSDT/dashboard/issues?issue_type_id=238024&sort=created_at%20desc&milestone_id=92309)

[v1.1特性列表 Story List](https://gitee.com/OSDT/dashboard/issues?issue_type_id=199539&sort=created_at%20desc&milestone_id=92309)

[v1.1安全设计文档 Security Design Docs](https://gitee.com/edgegallery/community/tree/master/Security%20WG/Security%20Testing/Compliance%20Report/Version%201.1)

[EdgeGallery安全设计规范 Security Design Guide](https://gitee.com/edgegallery/community/blob/master/Security%20WG/Secure%20Design/Security%20Design%20Guide%20CN.md)

[EdgeGallery合规测试用例 Compliance Test Cases]()

[EdgeGallery渗透测试用例 Penetration Test Cases]()

#### 3.测试日期计划 Test Date Plan

1.1版本整体从1.30启动详细设计及编码，计划3.31发布。测试时间参考自 [EdgeGallery v1.1 里程碑](https://gitee.com/edgegallery/community/blob/master/TSC/Release/v1.1/%E7%89%88%E6%9C%AC%E8%AE%A1%E5%88%92.md) 。

The 1.1 version starts detailed design and coding from 1.30 as a whole, and is planned to be released in 3.31. Test time reference from [EdgeGallery v1.1 Milestone](https://gitee.com/edgegallery/community/blob/master/Security%20WG/Security%20Testing/README.md).

| Date        | Coding Status    | Compliance Test          | Penetration Test          | Regression Test            |
| ----------- | ---------------- | ------------------------ | ------------------------- | -------------------------- |
| 2.1 - 2.11  | Sprint 1 coding  |                          |                           |                            |
| 2.18 - 2.28 | Sprint 2 coding  | Sprint 1 compliance test | Sprint 1 penetration test |                            |
| 3.1 - 3.12  | Sprint 3 coding  | Sprint 2 compliance test | Sprint 2 penetration test |                            |
| 3.13 - 3.22 | Bug-fixing       | Sprint 3 compliance test | Sprint 3 penetration test | Sprint 1 regression test   |
| 3.23 - 3.28 | Bug-fixing       |                          |                           | Sprint 2,3 regression test |
| 3.29 - 3.31 | Ready to release | Complete Test Report     | Complete Test Report      |                            |

#### 4.测试人员及分工 Testers and Division

4.1 扈冰 

Hu Bing

4.2 程润东 

Cheng Rundong

4.3 Satish

Satish

#### 5.测试范围 Test Scope

测试范围按照特性划分，详见下表：

The test scope is divided according to stories, see the table below for details:

##### 5.1  Sprint1:


| Story        | 开发状态   | 关联合规用例 |  合规安全测试  |关联渗透用例| 渗透测试状态  |
| --------   | :----:  | :----: | :----: |  :----: | :----:  |
| [【Lab】用户面支持边缘节点口令查看](https://gitee.com/OSDT/dashboard?issue_id=I34NSE) |          |              |              |              |              |
| [【Lab】管理面支持边缘节点口令管理（包括管理员账号的查看修改）](https://gitee.com/OSDT/dashboard?issue_id=I34K7E) |          |              |              |              |              |
| [在EG平台按需部署设计时，支持对默认组件的配置](https://gitee.com/OSDT/dashboard?issue_id=I34JOK) |          |              |              |              |              |
| [【MECM】example-apps support demo app service call.     ](https://gitee.com/OSDT/dashboard?issue_id=I2P8CH) |          |              |              |              |              |
| [【Lab】管理面统计功能增强，增加按用户统计、通过使用次数查看使用记录（包括资源维度和用户维度）、可以按照实验室维度统计](https://gitee.com/OSDT/dashboard?issue_id=I2NU1Y) |          |              |              |              |              |
| [【Lab】用户面增加用户历史申请信息查看](https://gitee.com/OSDT/dashboard?issue_id=I2NU1P) |          |              |              |              |              |
| [【Lab】支持用户登录、注销，根据用户角色展示对应页面。](https://gitee.com/OSDT/dashboard?issue_id=I2NU0W) |          |              |              |              |              |
| [【MECM】 Adaptive mep url unify ](https://gitee.com/OSDT/dashboard?issue_id=I2NTWF) |          |              |              |              |              |
| [在EG平台按需部署设计时，支持拖拽的方式进行组件移动](https://gitee.com/OSDT/dashboard?issue_id=I2M6B2) |          |              |              |              |              |
| [在EG平台按需部署设计时，支持模板选择](https://gitee.com/OSDT/dashboard?issue_id=I2M6AQ) | | | | | |
| [在EG平台按需部署设计时，支持IaaS和PaaS的选择 ](https://gitee.com/OSDT/dashboard?issue_id=I2M6AN) | | | | | |
| [【developer】可视化界面设计和开发](https://gitee.com/OSDT/dashboard?issue_id=I2EDT9) | | | | | |
| [【developer】支持部署文件可视化配置](https://gitee.com/OSDT/dashboard?issue_id=I2EDT4) | | | | | |
| [【developer】样例界面开发](https://gitee.com/OSDT/dashboard?issue_id=I2EDSG) | | | | | |
| [【developer】mep SDK的验证和使用 python](https://gitee.com/OSDT/dashboard?issue_id=I2EDQV) | | | | | |
| [【developer】部署结果展示端口、协议等信息](https://gitee.com/OSDT/dashboard?issue_id=I2EDPL) | | | | | |
| [【developer】新增日志下载接口](https://gitee.com/OSDT/dashboard?issue_id=I2EDP2) | | | | | |
| [【developer】developer部署失败，返回详细的错误信息](https://gitee.com/OSDT/dashboard?issue_id=I2EDP0) | | | | | |
| [ATP管理面portal优化](https://gitee.com/OSDT/dashboard?issue_id=I2EC3E) | | | | | |
| [ATP应用包区分ARM、X86](https://gitee.com/OSDT/dashboard?issue_id=I2EC1E) | | | | | |
| [脚本构造appstore、developer、mecm数据 ](https://gitee.com/OSDT/dashboard?issue_id=I2EAIG) | | | | | |
| [【UserMgmt】用户统一管理功能支持对用户停用/启用](https://gitee.com/OSDT/dashboard?issue_id=I2E9MB) | | | | | |
| [【UserMgmt】支持用户统一管理基本查询展示功能](https://gitee.com/OSDT/dashboard?issue_id=I2E9M8) | | | | | |
| [【MEP】mep url unify](https://gitee.com/OSDT/dashboard?issue_id=I2E8D5) | | | | | |
| [【Developer】Developer应用支持分权控制，区分不同角色进行差异化功能展现](https://gitee.com/OSDT/dashboard?issue_id=I2E6S7) | | | | | |
| [【AppStore】支持容器镜像管理 Support Container Image Manage](https://gitee.com/OSDT/dashboard?issue_id=I2E3T8) | | | | | |
| [【Appstore】应用共享界面优化](https://gitee.com/OSDT/dashboard?issue_id=I2E1U4) | | | | | |
| [【Appstore】应用仓库界面优化](https://gitee.com/OSDT/dashboard?issue_id=I2E1T5) | | | | | |
| [【installer】支持PaaS层按需部署](https://gitee.com/OSDT/dashboard?issue_id=I2E0SI) | | | | | |
| [【installer】支持IaaS层按需部署](https://gitee.com/OSDT/dashboard?issue_id=I2E0NU) | | | | | |
| [【MEP】APP Instance Termination Enhancement](https://gitee.com/OSDT/dashboard?issue_id=I2DQV5) | | | | | |
| [【mep-agent】mep-agent提供根据service name返回endpoint信息](https://gitee.com/OSDT/dashboard?issue_id=I2CXVE) | | | | | |
| [【UserMgmt】用户统一管理功能支持设置用户所属角色](https://gitee.com/OSDT/dashboard?issue_id=I23FRE) | | | | | |


##### 5.2  Sprint2:


| Story        | 开发状态   | 关联合规用例 | 合规测试状态 | 关联渗透用例  | 渗透测试状态  |
| :-------   | :----:  | :----: | :----: |  :----: | :----:  |
|       |          |              |              |              |              |
|       |          |              |              |              |              |
|       |          |              |              |              |              |
|       |          |              |              |              |              |
|       |          |              |              |              |              |
|       |          |              |              |              |              |
|       |          |              |              |              |              |
|       |          |              |              |              |              |
|       |          |              |              |              |              |
|       |          |              |              |              |              |
|       |          |              |              |              |              |
|       |          |              |              |              |              |
|       |          |              |              |              |              |
|       |          |              |              |              |              |
|       |          |              |              |              |              |
|       |          |              |              |              |              |
|       |          |              |              |              |              |
|       |          |              |              |              |              |
|       |          |              |              |              |              |
|       |          |              |              |              |              |
|       |          |              |              |              |              |
|       |          |              |              |              |              |
|       |          |              |              |              |              |
|       |          |              |              |              |              |
|       |          |              |              |              |              |

##### 5.3  Sprint3:

| Story        | 开发状态   | 关联合规用例 |  合规测试状态  | 关联渗透用例  | 渗透测试状态 |
| --------   | -----:  | :----: | :----:  | :----:  | :----:  |
|       |          |              |              |              |              |
|       |          |              |              |              |              |
|       |          |              |              |              |              |
|       |          |              |              |              |              |
|       |          |              |              |              |              |
|       |          |              |              |              |              |
|       |          |              |              |              |              |
|       |          |              |              |              |              |
|       |          |              |              |              |              |
|       |          |              |              |              |              |
|       |          |              |              |              |              |
|       |          |              |              |              |              |
|       |          |              |              |              |              |
|       |          |              |              |              |              |
|       |          |              |              |              |              |
|       |          |              |              |              |              |
|       |          |              |              |              |              |
|       |          |              |              |              |              |
|       |          |              |              |              |              |
|       |          |              |              |              |              |
|       |          |              |              |              |              |

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

