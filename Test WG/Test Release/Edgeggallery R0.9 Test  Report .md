一、引言Introduction

1.1 编写目的Writing Purpose

本测试报告为EdgeGallery Release0.9的测试报告，在于总结测试阶段的测试情况以及分析结果，描述预定需求的符合性及预定质量指标的符合性。作为测试质量参考文档提供给开源社区开发人员、测试人员、管理人员及感兴趣的其他人员等参考。

1.2 项目背景 Project Background

EdgeGallery社区聚焦5G边缘计算场景，通过开源协作构建起MEC边缘的资源、应用、安全、管理的基础框架和网络开放服务的事实标准，并实现同公有云的互联互通。在兼容边缘基础设施异构差异化的基础上，构建起统一的MEC应用生态系统。

1.3 [系统简介 System Overview](https://gitee.com/edgegallery/docs/blob/master/Get%20Started/Start%20from%20A%20Demo%20on%20EdgeGallery.md)

1.4 参考资料 References

1.[Release V0.9需求](https://gitee.com/edgegallery/community/blob/master/TSC/Release/v0.9/%E7%89%88%E6%9C%AC%E9%9C%80%E6%B1%82.md)

2.[Release V0.9测试计划（含版本质量指标）](https://gitee.com/edgegallery/community/blob/master/Test%20WG/Test%20Release/Edgeggallery%20R0.9%20Test%20%20Planning%20.md)

二、测试概要 Test Overview

2.1 测试用例及脚本设计 Test Cases and Auto test scripts

设计测试用例共计254个。
请点击[测试用例清单](https://gitee.com/OSDT/dashboard/issues?issue_type_id=232575&labels=ReleaseV0.9)查看详情。

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

2020年9月14日至9月28日。

|需求点|测试活动|计划工作量（人天）|计划开始时间|计划完成时间|实际开始时间|实际完成时间|实际工作量（人天）|负责人|Progress|
|---|---|---|---|---|---|---|---|---|---|
|各个项目提测确认|APP/MECM/developer |1人天 | |2020/09/14| |20200915 | 1|刘辉/彭育/侯敏熙 | 100%|
|冒烟测试|APP/MECM/developer |1人天 | |2020/09/14| |20200916 | |刘辉/彭育/侯敏熙 |100%|
|network isolation test|1.NetworkAttachServic生命周期测试（6 test cases） |3人天 |2020/09/15 |2020/09/15 |2020/09/19 |2020/09/19 |4人天 | 侯敏熙|100%|
|network isolation test|2.应用服务生命周期测试(4 test cases)|2人天 | 2020/09/17|2020/09/17 | 2020/09/17| 2020/09/20|2人天 | 侯敏熙|100%|
|network isolation test|3.带宽测试(2 test cases)|2人天 | 2020/09/18|2020/09/18 |2020/09/18 | 2020/09/20| 2人天| 侯敏熙|100%|
|public cloud integration|1.部署kubeedge测试 |1人天 | 2020/09/19 |2020/09/19 |2020/09/22 | 2020/09/22| 4人天| 侯敏熙|100%|
|public cloud integration|1.部署示例应用程序测试 |1人天 |2020/09/23 |2020/09/19 |2020/09/23 |2020/09/24|1人天 | 侯敏熙|100%||
|安装部署支持All-in-one|1.ARM/X86环境准备|1人天| | 2020/09/14|09/14 |09/15 |2人天 | Pengyu|100%|
|安装部署支持All-in-one|2.ARM 环境部署测试|1人天|  |2020/09/15| | | | Pengyu|100%|
|安装部署支持All-in-one|3.X86 环境部署测试|1人天| | 2020/09/16| 09/15 |09/18 |3人天  | Pengyu|100%|
|安装部署支持All-in-one|4.问题确认和回归测试|2人天|  |2020/09/17|20200917 |20200919 |2人天 | Pengyu|100%|
|离线部署测试| | | |2020/09/18 | 20200915| 20200919|4人天 |彭育/姜伟 |100%|
|支持JJB部署| 1.0 测试环境准备|1人天 | |2020/09/21 |20200919 |20200921 |2人天 | Pengyu|0%|
|支持JJB部署| 2.0 模板测试|1人天  | |2020/09/22 |20200921 |20200922 |2人天 |PengYu |0%|
|支持JJB部署| 3.0 CD任务JJB测试|1人天 | |2020/09/23 |0922 |0923 |2人天 |PengYu |0%|
|installation test|1.ARM/X86环境准备|1人天| | 2020/09/18| | | | Pengyu|不用测试|
|installation test|1.ARM/X86平台测试|1人天| | 2020/09/19| | | | Pengyu|不用测试|
|developer&appstore功能测试用例| |5人天| |2020/08/25| |2020/08/25|5人天|李媛媛|100%|
|developer接口自动化用例脚本开发| |5人天| |2020/09/13| |2020/09/09|5人天|李媛媛|100%|
|developer功能测试| |3人天|2020/09/15|2020/09/21|2020/09/15|2020/09/18|2人天|李媛媛|100%|
|developer UI自动化测试脚本开发| |5人天| |2020/09/28| | | |李媛媛|0%|
|AppStore功能测试| |2人天|2020/09/15|2020/09/21|2020/09/15|2020/09/18|1人天|李媛媛|100%|
|AppStore UI自动化测试脚本开发| |5人天| |2020/09/28 | | | |李媛媛|0%|
|Jenkins集成developer接口自动化用例| |1.5人天| | 2020/09/14| |2020/09/10|1.5人天|张阿利/李媛媛|100%|
|Jenkins集成appstore接口自动化用例| |1.5人天| | 2020/09/14| |2020/09/10|1.5人天|张阿利|100%|
|Jenkins集成mecm接口自动化用例| |1.5人天|2020/09/15 | 2020/09/14|2020/09/15 |2020/09/10|1.5人天|张阿利|100%|
|mecm功能测试用例| |5人天| |2020/08/25| |2020/08/25|5人天|张阿利|100%|
|mecm接口自动化用例脚本开发| |5人天| |2020/09/13| |2020/09/09|5人天|张阿利|100%|
|mecm功能测试| |5人天| | 2020/09/21|| 2020/09/21| |张阿利|100%|
|mecm UI自动化测试脚本开发| |5人天| |2020/09/28| | | |张阿利|0%|
|dns test|1.deploy dns-service|1人天| |2020/09/14| | | |pmeng|100%|
|dns test|2.dns system testing|5人天| |2020/09/21| | | |pmeng|100%|
|5G网元集成| | | | | | | | |不在必须测试范围内|
|ETSI interface test| | | | | | | | | 不在必须测试范围内|

3.1.3 测试用例执行统计 analysis of Test Case execution

|需求点|TC总数|成功个数|失败个数|未执行个数|TC成功率|
|--|--|--|--|--|--|
| dev-appstore-usermgnt | 182 |  |  |  |  |
| mecm|51 |  |  |  |  |
| mep-dns|1 |  |  |  |  |
| 部署相关|4 | 4 |0  | 0 | 4 |
| network isolation;public cloud integration|16 |  |  |  |  |

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


3.3 缺陷统计及分析 Statistical analysis of Defects/Bugs

请点击[缺陷清单](https://gitee.com/OSDT/dashboard/issues?issue_type_id=199540&labels=ReleaseV0.9)查看详情。

3.3.1 缺陷汇总 Defects Summary

已剔除6个无效bug后，总缺陷数量：71（含18个安全类缺陷），已解决数量：66个；未解决bug5个（含1个known issue，遗留到下一版本解决）。

3.3.2 缺陷分析 Defects Analysis

按缺陷类型分析：安全类bug18个；其他类bug53个。
按缺陷严重级别分析：严重bug6个；主要bug23个；次要bug28个；不指定14个。
按需求点分析
缺陷收敛性分析：总计77个bug（含6个无效bug；含安全类bug）；第一轮58个bug（含5个无效bug）；第二轮个19bug（含1个无效bug）

3.3.3 遗留缺陷及未解决问题 Residual Defects and known issues

|BugID|Bug描述|状态|未解决说明|预计处理安排|
|--|--|--|--|--|
| I1W7NB |developer-fe portal redirects to different ip|遗留 | clienturl must public IP | 遗留到1.0版处理 |

3.4 安全测试执行情况及记录（安全工作组负责）

EdgeGallery R0.9版本安全测试主要分为安全设计合规测试与安全渗透测试

3.4.1 安全测试组织Security Test Organizing

安全测试由安全工作组执行

3.4.2 安全测试执行情况 Security Test Execution

3.4.2.1 EdgeGallery R0.9 安全设计合规测试

时间：2020.09.14 ~ 2020.09.20

测试项目： AppStore, Developer, User-mgmt, MECM，MEP

测试人员： 吕京, 程润东，Kanag， Prakash

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

时间：2020.09.21 ~ 2020.09.24

测试人员： 吕京

安全渗透测试用例：

- EG-TST-SEC-001
- EG-TST-SEC-002
- EG-TST-SEC-003

3.4.3 安全缺陷汇总分析 summary analysis for Security bugs

![输入图片说明](https://images.gitee.com/uploads/images/2020/0928/162232_290b5230_5645267.png "屏幕截图.png")

*Fixed Security Issues*

- [I1VFV9](https://gitee.com/OSDT/dashboard/issues?id=I1VFV9) -- 两次密码输入不一致，也可以注册成功
- [I1VN01](https://gitee.com/OSDT/dashboard/programs/114640/issues?labels=bug&issue_id=I1VN01) -- mecm平台，点击注销时候报 network error，页面不会改变，注销不生效
- [I1VG05](https://gitee.com/OSDT/dashboard/programs/114640/issues?labels=bug&issue_id=I1VG05) -- appstore模块退出登录后，在develop里面点击插件列表，依然可以操作，查看插件列表
- [I1VG3M](https://gitee.com/OSDT/dashboard/programs/114640/issues?labels=bug&issue_id=I1VG3M) -- developer注销页面没有改变，点击刷新才跳转登录页面
- [I1VG7F](https://gitee.com/OSDT/dashboard/programs/114640/issues?labels=bug&issue_id=I1VG7F) -- developer前台 上传应用文件前台类型没有做限制
- [I1VG5S](https://gitee.com/OSDT/dashboard/programs/114640/issues?labels=bug&issue_id=I1VG5S) -- 登录后，使用拦截工具可以拦截到用户名和密码
- [I1VY62](https://gitee.com/OSDT/dashboard/programs/114640/issues?labels=bug&issue_id=I1VY62) -- developer swagger-data
- [I1VY5F](https://gitee.com/OSDT/dashboard/programs/114640/issues?labels=bug&issue_id=I1VY5F) -- Duplicate data in log
- [I1VY4B](https://gitee.com/OSDT/dashboard/programs/114640/issues?labels=bug&issue_id=I1VY4B) -- Security password is exposed
- [I1VVW4](https://gitee.com/OSDT/dashboard/programs/114640/issues?labels=bug&issue_id=I1VVW4) -- "#invalid data(EG-TST-SEC-CP-1-7)
- [I1VZG7](https://gitee.com/OSDT/dashboard/programs/114640/issues?labels=bug&issue_id=I1VZG7) -- MECM-FE容器未使用non-root用户运行
- [I1VCGN](https://gitee.com/OSDT/dashboard/programs/114640/issues?labels=bug&issue_id=I1VCGN) -- MECM HELM Charts Bug Fixes/Optimizations
- [I1VUWJ](https://gitee.com/OSDT/dashboard/programs/114640/issues?labels=bug&issue_id=I1VUWJ) -- EG-TST-SEC-CP-1-7(Expected status Code as 400)
- [I1VCL2](https://gitee.com/OSDT/dashboard/programs/114640/issues?labels=bug&issue_id=I1VCL2) -- Deploy Prometheus and Graphana with HTTPS enabled

渗透测试详细测试报告见[EdgeGallery R0.9渗透测试结果.docx](https://gitee.com/edgegallery/community/blob/master/Security%20WG/%20Release%20V0.9/EdgeGallery%20R0.9%E6%B8%97%E9%80%8F%E6%B5%8B%E8%AF%95%E7%BB%93%E6%9E%9C.docx)

3.4.4 安全缺陷及未解决问题 Residual Defects and known issues about Security

|BugID|Bug描述|状态|未解决说明|预计处理安排|
|--|--|--|--|--|
| I1VY5P | Password is exposed  | 遗留 | 该问题是因为引入Spring Security组件后，如果没有设置账号，会使用默认账号，并随机生成一个默认密码，默认账号名是user，生成的默认密码会打印在日志中，是一个随机的uuid，每次启动不同。 Appstore-be和developer-be引入了Spring Security组件，但只用来做jwttoken的解析校验，没有使用到/login接口，浏览器也不会直接访问到后台的/login接口（会在website-gateway被拦截，转发到user-mgmt的/login做登陆）。 User-mgmt使用了Spring Security组件，但是user-mgmt实现了/login接口，对securityconfig的配置，所以不会有该问题。 | 遗留到R1.0版本处理 |

四、测试结论及建议 Test Conclusion and Suggestion
