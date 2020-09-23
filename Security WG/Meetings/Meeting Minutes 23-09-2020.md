## Meeting Logistics

| Meeting Day | Meeting Time                    | Conference Bridge                          |
| ----------- | ------------------------------- | ------------------------------------------ |
| 23-09-2020  | 16:00 PM to 17:30 PM (UTC+8:00) | https://welink-meeting.zoom.us/j/502138208 |

## Meeting Attendees
** **
- 吕京
- Gaurav Agrawal
- 鹿鑫
- 陈传雨
- Kanag
- 杨阳
- 程润东



## Meeting Agenda

** **
| Item                               | Owner  |
| ---------------------------------- | ------ |
| 合规测试问题单状态评审             | Jing Lu |
| 合规测试用例R1.0优化计划           | ALL     |


## Discussion Items and Minutes

** **
1. 吕京介绍了当前问题单的状态，R0.9版本共19个问题单，当前3个问题单待解决，一个问题单正在修复中，其余问题单已完成修复并通过回归测试
2. 关于问题单“Deploy Prometheus and Graphana with HTTPS enabled”，Gaurav介绍了当前边缘节点上prometheus和grafana之间的交互使用的是HTTP，中心节点上MECM FE与Grafana之间的交互使用的是HTTP。结论：对于R0.9版本MECM FE与Grafana接口需要开启HTTPS。prometheus和grafana间的接口因在同一边缘节点网络中仍使用HTTP。

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