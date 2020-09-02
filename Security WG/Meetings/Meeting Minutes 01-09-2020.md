## Meeting Logistics

| Meeting Day | Meeting Time                    | Conference Bridge                          |
| ----------- | ------------------------------- | ------------------------------------------ |
| 01-09-2020  | 16:00 PM to 17:30 PM (UTC+8:00) | https://welink-meeting.zoom.us/j/529472508 |

## Meeting Attendees
** **




## Meeting Agenda

** **
| Item                               | Owner  |
| ---------------------------------- | ------ |
| 安全设计规范更新同步及版本策略     | 袁国平，吕京 |
| 各项目R0.9安全合规情况排查   | ALL |
| 各项目代码问题清理情况   | ALL |
| 安全合规测试用例涉及进展   | 袁国平，吕京 |

## Discussion Items and Minutes

** **
1. 吕京介绍了安全设计规范新增的4条规则，由于目前社区项目已经进入开发阶段，新增规则计划下个版本正式生效。安全工作组将补充关于每个版本安全规范更新规则的说明。
2. 陈传雨介绍MECM项目目前安全风险，MECM项目目前基本满足社区安全设计规范，2条规则需要申请例外，（rule1.2横向越权防护机制，Rule 5.2会话并发数目）计划R1.0版本实现。
3. 张倍源介绍appstore/developer/user-mgmt项目目前安全风险。appstore/developer目前基本满足社区安全设计规范，7条规则需要申请例外。user-mgmt用户注册时个人数据条款需要整体考虑。
3. 单元测试的代码需要满足编码规范，硬编码等问题按照例外处理。
4. 讨论SonarQube gate设置为只对全量代码做覆盖率检查，覆盖率标准定为40%。
5.【action item】吕京double check mecm-applcm-be项目检查排除文件设置，排除代码生成的两个文件。
6. 讨论计划由安全工作组安全提前进行摸底测试，避免发布前测试阶段发现问题过多，开发组无法及时修复。

## Voting Items

** **
SEC Voting to Approve XYZ:
| No.  | Name | Company | Y/N/A |
| ---- | ---- | ------- | ----- |
| 1    | Name | Company | Y     |

## Action Items
** **
| Done? | Item | Responsible | Due Date |
| ----- | ---- | ----------- | -------- |
|       | item | who         | due_date |

## Other Notes & Information
N/A