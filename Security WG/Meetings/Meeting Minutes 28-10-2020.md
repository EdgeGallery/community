## Meeting Logistics

| Meeting Day | Meeting Time                    | Conference Bridge                          |
| ----------- | ------------------------------- | ------------------------------------------ |
| 28-10-2020  | 15:30 PM to 16:30 PM (UTC+8:00) | https://welink-meeting.zoom.us/j/397714662 |

## Meeting Attendees
** **
- Satish
- 扈冰
- 彭育
- 张倍源
- 程润东
- 贺龙飞

## Meeting Agenda

** **
| Item                               | Owner  |
| ---------------------------------- | ------ |
| 安全设计规范扩展初稿讨论              | 程润东  |
| EG项目Slow-DOS遗留问题               | 扈冰   |
| api-emulator;toolchain;plugins开仓讨论               | 张倍源   |


## Discussion Items and Minutes

** **
- 程润东介绍了基于已有4个安全维度的扩展，目前部分扩展规则来源于一些安全论坛，需要寻找是否可以在安全组织找到类似规则，修改初稿后和satish和开发对各规则进行review，确定了在1.0版本里面新增的测试用，遗留：对测试用例添加satish建议的一些规则，并对所有新增的测试用例缺少测试步骤的用例进行补充。
- Slow-DOS问题，经过测定确定了Springboot配置文件中默认max-threads=200参数为触发slow-dos的关键因素，将该参数扩大到500不会有影响，由于dos防御攻击可以从物理WAF，系统WAF,代码三个层面防护，建议当前阶段代码层面不做改变，等到时机环境部署之后再进行slow-dos能力评估，
渗透测试问题，扈冰介绍了渗透测试的定义，测试内容，常用工具，常规测试步骤等，并列举了建议进行渗透测试的项目，后续计划尽快形成渗透测试用例并进行评估。
- api-emulator;toolchain;plugins开仓讨论，张倍源从sonarqube， dependency check ，license方面和安全组进行讨论，并展示检查报告，除过plugin没有dependeny check，其他都是没问题，结论：satish找Gaurav确定plugin的dependency check 结果，并发送是否开仓结论。

Conclusion:
  - Reports of api-emulator, toolchain, plugins are checked and it is ok. Plugin repo to check for Fossid issue and fix it.
  - Security testing is pending. Kanag/Pengu to check on it and complete it before the release which Beiyun shared.

  After above issues closed, the repos api-emulator;toolchain;plugins can be released.

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