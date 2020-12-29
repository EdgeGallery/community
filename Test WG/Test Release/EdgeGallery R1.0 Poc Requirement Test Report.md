一、引言Introduction

1.1 编写目的Writing Purpose

本测试报告为EdgeGallery Release1.0 Poc需求的测试报告。

1.2 项目背景 Project Background

EdgeGallery社区聚焦5G边缘计算场景，通过开源协作构建起MEC边缘的资源、应用、安全、管理的基础框架和网络开放服务的事实标准，并实现同公有云的互联互通。在兼容边缘基础设施异构差异化的基础上，构建起统一的MEC应用生态系统。

1.3 [系统简介 System Overview](https://gitee.com/edgegallery/docs/blob/master/Get%20Started/Start%20from%20A%20Demo%20on%20EdgeGallery.md)

1.4 参考资料 References

1.[Release V1.0需求](https://gitee.com/OSDT/dashboard/issues?issue_type_id=238024&labels=ReleaseV1.0)

2.[Release V1.0测试计划（含版本质量指标）](https://gitee.com/edgegallery/community/blob/master/Test%20WG/Test%20Release/EdgeGallery%20R1.0%20Test%20Plan.md)

二、测试概要 Test Overview

2.1 测试用例及脚本设计 Test Cases and Auto test scripts

设计测试用例共计xxx个。
请点击[测试用例清单](https://gitee.com/OSDT/dashboard/issues?issue_type_id=232575&labels=ReleaseV1.0)查看详情。

2.2 测试环境与配置 Test Env and related Configuration
参考主测试报告。


三、测试结果及缺陷分析 Test Results and Defects Analysis

3.1 测试执行情况及记录Test exceuction and Records

3.1.1 测试组织 Test Organizing

测试组负责人：刘辉。

| 姓名 | 任务分工 |
|---|---|
| 罗小云 | 测试crane-framework插件框架相关接口功能 |

3.1.2 测试时间（各负责人更新） Test Schedule

2020年12月7日至12月25日。

|需求点|测试活动|计划工作量（人天）|计划开始时间|计划完成时间|实际开始时间|实际完成时间|实际工作量（人天）|负责人|Progress|
|---|---|---|---|---|---|---|---|---|---|
|需求确认|APPStore/MECM/developer/mep |2 |2020/12/7 |2020/12/24|2020/12/7|2020/12/24| 1|张海龙/张倍源/刘慧玲/陆鑫 | 100%|
|测试用例管理页面|ATP测试用例管理页面功能测试 |2 |2020/12/14 |2020/12/19|2020/12/14|2020/12/24| 1|刘慧玲 | 100%|
|测试用例管理后台|ATP测试用例管理对应的后台接口测试 |2 |2020/12/14 |2020/12/19|2020/12/14|2020/12/24| 1|刘慧玲 | 100%|
|AppStore之间应用相互推送/拉取|appstore上需要能够注册其他平台的appstore平台，作为后续推送的目标|2|2020/12/14|2020/12/25|2020/12/14|2020/12/25|1|孙靖涵|100%|
|AppStore之间应用相互推送/拉取|appstore上需要能提供下载连接，供外部appstore平台进行下载package|2|2020/12/14|2020/12/25|2020/12/14|2020/12/25|1|孙靖涵|100%|
|AppStore之间应用相互推送/拉取|appstore上需要能够对推送的数量/下载数量进行统计|2|2020/12/14|2020/12/25|2020/12/14|2020/12/25|1|孙靖涵|100%|
|AppStore之间应用相互推送/拉取|appstore上admin需要能够选择app并且进行推送|2|2020/12/14|2020/12/25|2020/12/14|2020/12/25|1|孙靖涵|100%|
|AppStore之间应用相互推送/拉取|appstore上admin需要能够查看所有待推送的app|2|2020/12/14|2020/12/25|2020/12/14|2020/12/25|1|孙靖涵|100%|
|crane-framework插件框架|插件框架的插件制作、插件管理和系统插件功能测试|2|2020/12/24|2020/12/26|2020/12/24|2020/12/26|2|罗小云|100%|
|服务治理前台页面展示|服务治理前台页面展示功能测试|2|2020/12/24|2020/12/26|2020/12/24|2020/12/26|2|鹿鑫|100%|
 

3.1.3 测试用例执行统计 analysis of Test Case execution

|需求点|TC总数|成功个数|失败个数|未执行个数|TC成功率|
|--|--|--|--|--|--|
| appstore| 5| 5| 0 | x|100% |
| atp| 4| 4| 0 | 0| 100% |
| crane-framework| 5| 5| 0 | 0| 100% |
| 服务治理前台页面展示| 4| 4| 0 | 0| 100% |
| 其他| x| x| 0 | x| % |



四、测试结论及建议 Test Conclusion and Suggestion

POC测试主要涉及APPStore、ATP等模块，共涉及需求X个，设计用例X个，测试通过率x%。

