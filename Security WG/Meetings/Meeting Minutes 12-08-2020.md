## Meeting Logistics

| Meeting Day | Meeting Time                    | Conference Bridge                          |
| ----------- | ------------------------------- | ------------------------------------------ |
| 12-08-2020  | 16:30 PM to 17:30 PM (UTC+8:00) | https://welink-meeting.zoom.us/j/924233092 |

## Meeting Attendees
** **
- 吕京 （华为）
- Gaurav （华为）
- 程润东 （华为）
- Satish （华为）
- Khemendra (华为）
- 彭育 （华为）
- 刘慧玲 （华为）



## Meeting Agenda
** **
| Item | Owner |
| ---- | ---- |
| 安全测试方案讨论 | ALL |
| 证书，秘钥，明文数据库密码等社区策略评审 | 陈传雨 |
| 安全工作组Chair选举 | ALL |



## Discussion Items and Minutes
** **
- 吕京介绍了安全工具准备情况
- 吕京介绍了安全测试方案，安全测试目前包含三个部分：安全渗透测试，安全设计规范检查项测试，Fuzz测试。
- Khemendra提出社区明文密码策略：部署过程中用到的密码或证书以明文方式配置在K8S部署manifest中，和其他开源社区保持一致。对于系统中用到的密码等通过加密形式保存。satish将输出这部分的社区指导文档。
- 讨论了社区允许使用的三方件的许可证范围，待确认，提到TSC讨论。安全工作组将研究是否有用于检查license和漏洞的本地工具。
- 讨论了社区使用的JAVA和Golang版本，将提到TSC讨论。
- 讨论了社区项目的代码覆盖率标准。程润东将研究如何在sonarqube中进行代码覆盖率检查。

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
讨论同意社区证书，秘钥，明文数据库密码等使用策略：部署过程中用到的密码或证书以明文方式配置在K8S部署manifest中，和其他开源社区保持一致。对于系统中用到的密码等通过加密形式保存。