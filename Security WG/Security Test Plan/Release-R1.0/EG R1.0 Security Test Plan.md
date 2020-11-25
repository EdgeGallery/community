# EdgeGallery R1.0 Security Test Plain

## EdgeGallery R1.0 安全测试计划



#### 1.先决条件 Prerequisites

[里程碑 Release Milestone](https://gitee.com/edgegallery/community/blob/master/TSC/Release/v1.0/%E7%89%88%E6%9C%AC%E8%AE%A1%E5%88%92.md)

[需求列表 Requirement List](https://gitee.com/OSDT/dashboard/issues?sort=created_at%20desc&labels=Sprint1,Sprint2,Sprint3)

#### 2.测试目标 Test target

本测试计划为EdgeGallery Release 1.0 安全测试计划，目的在于发现应用程序在版本迭代过程中可能出现的缺陷/漏洞，并评估其严重等级，并提供修补建议。以确保应用程序在版本迭代过程中的安全性。

This test plan is the EdgeGallery Release 1.0 security test plan. The purpose is to discover possible bugs/vulnerabilities of the application during the version iteration process, and evaluate its threat-level, and then provide some repair suggestions. The finally purpose is to ensure the security of the application during the version iteration process.

#### 3.测试范围 Test Scope

##### 3.1  sprint1:


| Story        | 开发   |  合规安全测试  | 渗透安全测试  |
| --------   | -----:  | :----:  | :----:  |
| [need to add the role of GUEST for all of GET APIs in Developer](https://gitee.com/OSDT/dashboard?issue_id=I24IMF)      | 已完成   |   未开始     |   未开始     |
| [need to add the role of GUEST for all of GET APIs in AppStore](https://gitee.com/OSDT/dashboard?issue_id=I24IKL)        |   已完成   |   未开始   |未开始     |
| [访客模式登录后，header需要保留“登录”入口，点击“登录”跳转到登录界面](https://gitee.com/OSDT/dashboard?issue_id=I23VQ7)       |   已完成    |  未开始  |未开始     |
| [用户管理模块中需要支持用户的角色定义](https://gitee.com/OSDT/dashboard?issue_id=I23FRE)      |    已完成    |  未开始  | 未开始     |
| [用户管理支持guest访客用户，在界面上只有只读权限](https://gitee.com/OSDT/dashboard?issue_id=I23FRC)     |    开发中    |  未开始  | 未开始     |
| [【MEP】MEP Support to query the capabilities.](https://gitee.com/OSDT/dashboard?issue_id=I1W7UU)        |    已完成    |  未开始  | 未开始     |
| [【Developer】应用开发界面优化](https://gitee.com/OSDT/dashboard?issue_id=I1TDI2)        |    已完成    |  未开始  | 未开始     |
| [【Developer】构建测试详情界面优化](https://gitee.com/OSDT/dashboard?issue_id=I1TDHC)       |    已完成    |  未开始  | 未开始     |
| [mepserver app heartbeat design documentation](https://gitee.com/OSDT/dashboard?issue_id=I1QT6P)        |   已完成   |  未开始  |  未开始     |


##### 3.2  sprint2:


| Story        | 开发   |  合规安全测试  | 渗透安全测试  |
| --------   | -----:  | :----:  | :----:  |
| [构建测试界面优化及联调](https://gitee.com/OSDT/dashboard?issue_id=I262FG)      | 开发中   |   未开始     |   未开始     |
| [多语言SDK的集成](https://gitee.com/OSDT/dashboard?issue_id=I262E6)       |   已完成   |   未开始   |未开始     |
| [【Developer】csar包的优化](https://gitee.com/OSDT/dashboard?issue_id=I25OQA)       |   开发中    |  未开始  |未开始     |
| [【Developer】构建测试相关接口实现](https://gitee.com/OSDT/dashboard?issue_id=I25OPG)     |    开发中    |  未开始  | 未开始     |
| [【AppStore】适配新版csar包结构，能够正确读取csar包信息](https://gitee.com/OSDT/dashboard?issue_id=I24W83)    |    已完成    |  未开始  | 未开始     |
| [【MECM】MECM Support Batch Distribution and Batch Deployment](https://gitee.com/OSDT/dashboard?issue_id=I249AF)        |    设计中    |  未开始  | 未开始     |
| [【MEP-Agent】修改服务注册逻辑，允许不注册服务](https://gitee.com/OSDT/dashboard?issue_id=I23QX4)       |    已完成    |  未开始  | 未开始     |
| [【MEP】修改服务注册逻辑，为服务增加默认路由转发](https://gitee.com/OSDT/dashboard?issue_id=I23QX2)       |    已完成    |  未开始  | 未开始     |
|  [【Developer】API界面优化，分析多语言SDK，集成到开发者平台](https://gitee.com/OSDT/dashboard?issue_id=I22V1U)        |   待办   |  未开始  |  未开始     |
|  [【MECM 】MECM Support to query the capabilities](https://gitee.com/OSDT/dashboard?issue_id=I1Z3CN)        |   待办   |  未开始  |  未开始     |
|  [【Example APP】support positioning service as an example app.](https://gitee.com/OSDT/dashboard?issue_id=I1W7UJ)        |   待办   |  未开始  |  未开始     |
|  [【Developer】优化API管理，支持生态API的删除](https://gitee.com/OSDT/dashboard?issue_id=I1TDJF)        |   开发中   |  未开始  |  未开始     |
|  [【Developer】界面优化](https://gitee.com/OSDT/dashboard?issue_id=I1TDIS)        |   开发中   |  未开始  |  未开始     |
|  [【MECM】外部系统显示优化](https://gitee.com/OSDT/dashboard?issue_id=I1QYJJ)        |   已完成   |  未开始  |  未开始     |
| [【MECM】边缘仓库能力支持](https://gitee.com/OSDT/dashboard?issue_id=I1QXSY)       |   开发中   |  未开始  |  未开始     |
|  [【MECM】应用包管理优化--菜单项+应用包列表+应用包详情](https://gitee.com/OSDT/dashboard?issue_id=I1QXS5)        |   设计中   |  未开始  |  未开始     |
|  [【MEP-Agent】添加ak/sk配置接口](https://gitee.com/OSDT/dashboard?issue_id=I1QT48)       |   开发中   |  未开始  |  未开始     |
|  [【MECM】首页显示全局告警/监控/统计/资源状态数据图，单节点数据通过拓扑中单边缘节点详细信息查看](https://gitee.com/OSDT/dashboard?issue_id=I1QXQP)       |   已完成   |  未开始  |  未开始     |


##### 3.3  sprint3:


| Story        | 开发   |  合规安全测试  | 渗透安全测试  |
| --------   | -----:  | :----:  | :----:  |
| [【APPLCM】Support download application log interface](https://gitee.com/OSDT/dashboard?issue_id=I25M0K)     | 待办   |   未开始     |   未开始     |
|   [【APPLCM】适配新版csar包结构，能够正确部署应用](https://gitee.com/OSDT/dashboard?issue_id=I24W9I)   | 待办   |   未开始     |   未开始     |
|  [need to add the role of GUEST for all of GET APIs in MECM](https://gitee.com/OSDT/dashboard?issue_id=I24IKE)    | 待办   |   未开始     |   未开始     |
|   [【MECM】MECM Support APP Rule Cofing From Portal](https://gitee.com/OSDT/dashboard?issue_id=I24700)   | 待办   |   未开始     |   未开始     |
|   [【MECM】MECM Support APP Rule Config During APP Orchestration](https://gitee.com/OSDT/dashboard?issue_id=I246ZD)    | 待办   |   未开始     |   未开始     |
|   [【MEP-Agent】增加获取token接口](https://gitee.com/OSDT/dashboard/issues?sort=created_at%20desc&labels=Sprint3&id=I23QX8)   | 开发中   |   未开始     |   未开始     |
|   [【Developer】CSAR包结构重构](https://gitee.com/OSDT/dashboard?issue_id=I23QX0)   | 待办   |   未开始     |   未开始     |
|  [【Developer】部署应用流程适配，增加对依赖项的检测](https://gitee.com/OSDT/dashboard?issue_id=I23QWU)    | 待办   |   未开始     |   未开始     |
|  [【Developer】应用发布界面优化](https://gitee.com/OSDT/dashboard?issue_id=I1XZMT)    | 待办   |   未开始     |   未开始     |
|  [【MECM】MECM支持限制活动的并发会话数](https://gitee.com/OSDT/dashboard?issue_id=I1TH8K)    | 待办   |   未开始     |   未开始     |
|  [【MECM】MECM支持权限处理，避免横向越权](https://gitee.com/OSDT/dashboard?issue_id=I1TH3T)    | 待办   |   未开始     |   未开始     |
|   [【MECM】提供ak/sk分配功能](https://gitee.com/OSDT/dashboard?issue_id=I1R5LY)   | 待办   |   未开始     |   未开始     |
|   [mepagent call mepserver service liveness api to keep heartbeat for app service](https://gitee.com/OSDT/dashboard?issue_id=I1R0VX)   | 已完成   |   未开始     |   未开始     |
|  [【MECM】增加对依赖应用的查询与部署提示](https://gitee.com/OSDT/dashboard?issue_id=I1QWVL)    | 待办   |   未开始     |   未开始     |
|   [【Developer】打通应用成为无状态生态应用前后端流程](https://gitee.com/OSDT/dashboard?issue_id=I1QWV9)   | 待办   |   未开始     |   未开始     |
|   [mepserver add app heartbeat API, referring to etsi mec 011 latest stable draft](https://gitee.com/OSDT/dashboard?issue_id=I1QT6E)   | 已完成   |   未开始     |   未开始     |


#### 4.安全测试用例管理 Security Test Case Management

安全测试用例包括 [安全合规测试用例](https://gitee.com/edgegallery/community/tree/master/Security%20WG/Security%20Testing/Design%20Compliance%20Test%20Cases) 和 [渗透测试用例](https://gitee.com/edgegallery/community/tree/master/Security%20WG/Security%20Testing/Penetration%20Test%20Cases) 。

测试用例包括：测试用例ID，测试目的，测试描述，测试工具及其配置，测试步骤，预期结果等。

测试用例模板请参考 [测试用例模板](https://gitee.com/edgegallery/community/blob/master/Security%20WG/Security%20Testing/Security%20Test%20Case%20Templeate.rst) 。

测试结果包括：通过 / 不通过

Security test cases include [Security Compliance Test Cases](https://gitee.com/edgegallery/community/tree/master/Security%20WG/Security%20Testing/Design%20Compliance%20Test%20Cases) and [Penetration Test Cases](https://gitee.com/edgegallery/community/tree/master/Security%20WG/Security%20Testing/Penetration%20Test%20Cases).

Test cases include: test case ID, test purpose, test description, test tool and configuration, test steps, expected results, etc.

Please refer to [Test Case Template](https://gitee.com/edgegallery/community/blob/master/Security%20WG/Security%20Testing/Security%20Test%20Case%20Templeate.rst) for test case templates.

Test results include: pass / fail

#### 5.缺陷/漏洞管理 Bug/vulne Management

缺陷/漏洞统一在Gitee中录入，录入方法请参考[操作指南](https://gitee.com/edgegallery/community/blob/master/Test%20WG/Test%20case-bug%20template/Gitee_test_bug_template.md)。

缺陷/漏洞优先级分为：严重，主要，次要，一般。

Bugs/vulnerabilities are entered in Gitee. Please click [operation guide](https://gitee.com/edgegallery/community/blob/master/Test%20WG/Test%20case-bug%20template/Gitee_test_bug_template.md).

The priority of bugs/vulnerabilities is divided into: serious, major, minor, and general.

#### 6.相关工具 Relative Tools

| No.  | Tool name | version   | purpose                                   | comment |
| ---- | --------- | --------- | ----------------------------------------- | ------- |
| 1    | BurpSuite | v2020.9.1 | Capture http package for analyzing        | ...     |
| 2    | OWASP ZAP | 2.9.0     | Comprehensive vulnerability scanning tool |         |
| 3    | SenInfo   | 2.0.10    | Scan for sensitive information            |         |

#### 7.手动开发测试脚本 Test scripts developed manually

| No.  | Tool name | version | purpose | comment |
| ---- | --------- | ------- | ------- | ------- |
|      | N/A       | ...     | ...     | ...     |

#### 8.测试计划 Test Plain

更详细测试计划，请查看 Security WG Milestone 。

For a more detailed test plan, please check Security WG Milestone.

| Date          | Sprint Coding    | Sprint Security Testing               |
| ------------- | ---------------- | ------------------------------------- |
| - 11.24       | Sprint 1 coding  |                                       |
| 11.25 - 11.29 | Sprint 2 coding  | Sprint 1 security pre-test            |
| 11.30 - 12.13 | Sprint 3 coding  | Sprint 2 security pre-test            |
| 12.14 - 12.18 | Bug-fixing       | Sprint 3 security pre-test            |
| 12.19 - 12.27 |                  | compliance test and penetratrion test |
| 12.28 - 12.31 | Ready to release | Ready to release                      |

#### 9.测试总结 Test Summary

测试完毕后，计划生成 “EdgeGallery R1.0安全测试报告”。

After the test, plain to export “EdgeGallery R1.0 Security Test Report”.

