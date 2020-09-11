一、引言Introduction

1.1 编写目的Writing Purpose

1.2 项目背景 Project Background

1.3 系统简介 System Overview

1.4 测试版本 Test Version

1.5 术语和缩略词 Terms and Abbreviations

1.6 参考资料 References

1.[Release V0.9需求](https://gitee.com/edgegallery/community/blob/master/TSC/Release/v0.9/%E7%89%88%E6%9C%AC%E9%9C%80%E6%B1%82.md)

2.[Release V0.9测试计划（含版本质量指标）](https://gitee.com/edgegallery/community/blob/master/Test%20WG/Test%20Release/Edgeggallery%20R0.9%20Test%20%20Planning%20.md)

二、测试概要 Test Overview

2.1 测试用例及脚本设计 Test Cases and Auto test scripts

2.2 测试环境与配置 Test Env and related Configuration

2.3 测试方法和工具 Test Method and Tools

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

|需求点|测试活动|计划工作量（人天）|计划完成时间（人天）|实际完成时间|实际工作量|负责人|Progress|
|---|---|---|---|---|---|---|---|
|各个项目提测确认|APP/MECM/developer |1人天 |2020/09/14| | |刘辉/彭育/侯敏熙 | 0%|
|冒烟测试|APP/MECM/developer |1人天 |2020/09/14| | |刘辉/彭育/侯敏熙 |0%|
|network isolation test|1.xx | | | | | |0%|
|network isolation test|2.xx | | | | |  |0%|
|network isolation test|3.xx | | | | | |0%|
|public cloud integration| | | | | | |0%|
|安装部署支持All-in-one|1.ARM/X86环境准备|1人天| 2020/09/14| | | Pengyu|0%|
|安装部署支持All-in-one|2.ARM 环境部署测试|1人天| 2020/09/15| | | Pengyu|0%|
|安装部署支持All-in-one|3.X86 环境部署测试|1人天| 2020/09/16| | | Pengyu|0%|
|安装部署支持All-in-one|4.问题确认和回归测试|2人天| 2020/09/17| | | Pengyu|0%|
|离线部署测试| | | | | | |0%|
|支持JJB部署| | | | | | |0%|
|installation test|1.ARM/X86环境准备|1人天| 2020/09/18| | | Pengyu|0%|
|installation test|1.ARM/X86平台测试|1人天| 2020/09/19| | | Pengyu|0%|
|developer&AppStore测试| | | | | | |0%|
|MECM测试| | | | | | | 0%|
|dns test| | | | | | |0%|
|5G网元集成| | | | | | |0%|
|ETSI interface test| | | | | | | 0%|

3.1.3 测试用例执行统计 analysis of Test Case execution

|需求点|TC总数|成功个数|失败个数|未执行个数|TC成功率|
|--|--|--|--|--|--|
|  |  |  |  |  |  |


3.2 覆盖分析 Coverage Analysis

3.2.1 需求覆盖 Requirement Coverage

软件实现100%覆盖Release V0.9需求。

3.2.2 单元测试代码覆盖（数据源于SonarQube） Code Coverage for Unit Test

3.3 缺陷统计及分析 Statistical analysis of Defects/Bugs

3.3.1 缺陷汇总 Defects Summary

总缺陷数量：，已解决数量：。

3.3.2 缺陷分析 Defects Analysis

按缺陷类型分析
按缺陷严重级别分析
按需求点分析
缺陷收敛性分析

3.3.3 遗留缺陷及未解决问题 Residual Defects and known issues

|BugID|Bug描述|状态|未解决说明|预计处理安排|
|--|--|--|--|--|
|  |  |  |  |  |

3.4 安全测试执行情况及记录（安全工作组负责）

3.4.1 安全测试组织Security Test Organizing

3.4.2 安全测试执行情况 Security Test Execution

3.4.3 安全缺陷汇总分析 summary analysis for Security bugs

3.4.4 安全缺陷及未解决问题 Residual Defects and known issues about Security 

|BugID|Bug描述|状态|未解决说明|预计处理安排|
|--|--|--|--|--|
|  |  |  |  |  |

四、测试结论及建议 Test Conclusion and Suggestion
