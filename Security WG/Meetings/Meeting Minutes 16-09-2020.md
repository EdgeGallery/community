## Meeting Logistics

| Meeting Day | Meeting Time                    | Conference Bridge                          |
| ----------- | ------------------------------- | ------------------------------------------ |
| 16-09-2020  | 16:00 PM to 17:30 PM (UTC+8:00) | https://welink-meeting.zoom.us/j/184641077 |

## Meeting Attendees
** **
- Jing Lu
- Kanag Manickam
- Cheng Rundong



## Meeting Agenda

** **
| Item                               | Owner  |
| ---------------------------------- | ------ |
| 合规测试进展及发现问题同步     | Jing Lu |


## Discussion Items and Minutes

** **
- 吕京介绍了安全合规测试的当前进展：吕京负责用例部分剩余2.2及7.2两个用例，程润东负责用例部分剩余4.1,4.2,6.2 MECM部分测试未完成。Kanag用例部分进度稍落后于计划。
- 吕京、程润东介绍了当前已发现的问题：
  1. 摸底测试中发现的TLS 1.0/1.1未关闭问题已经解决。已完成回归测试，测试通过。
  2. 用户注册时个人数据收集声明及隐私条款已补上，未勾选无法进行用户注册。已完成回归测试，测试通过。
  3. 用户注册密码输入不一致但注册成功 -- https://gitee.com/OSDT/dashboard/issues?id=I1VFV9
  4. 用户在平台注销后，用户权限未及时注销及跳转问题 -- https://gitee.com/OSDT/dashboard/issues?id=I1VG05， https://gitee.com/OSDT/dashboard/issues?id=I1VG3M
  5. 用户登录操作，可以拦截到用户名和密码 -- https://gitee.com/OSDT/dashboard/issues?id=I1VG5S
  6. 开发者平台应用创建信息未对输入字符大小做限制 -- https://gitee.com/OSDT/dashboard/issues?id=I1VG6B
  7. Developer 前台上传应用文件前台类型没有做限制 --  https://gitee.com/OSDT/dashboard/issues?id=I1VG7F

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