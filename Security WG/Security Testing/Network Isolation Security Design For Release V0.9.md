# Network Isolation V0.9版本相关需求安全规则项涉及情况  
需求的详细设计，请参考：https://gitee.com/edgegallery/community/blob/master/Architecture%20WG/Requirements/v0.9/network_isolation.md
规则1 识别，认证和授权
-------------------------
|需求名称|涉及的规则项|
|----|----|
|[Network Isolation](https://gitee.com/OSDT/dashboard?issue_id=I1OY0L) | Rule 9.1, Rule9.2, Rule 9.3, Rule 9.4|

Rule 9 log security
-------------------
### 9.1 Do not record unsterilized user input.

| content                | Related Information                                      |
| ----------------------- | ------------------------------------------------------------ |
| Safety design rule number | 9.1 Do not record unsterilized user input. <br>Note: Unsterilized log records can allow attackers to forge log entries or inject malicious content into the log. |
| Implementation details	   | No user input has been printed in log file  |
| Related API	         |NA|
| API payload example     | NA|
| Related documents           | /usr/mep/log/k8s-net-attach.log |
| Related GUI URL        |        NA                   |
| GUI test steps      | NA|
| GUI input example      |     NA        |
| extra information         | NA |
### 9.2 Adequate logging.

| content                | Related Information                                      |
| ----------------------- | ------------------------------------------------------------ |
| Safety design rule number | 9.2 Sufficient logging. <br>Note: Make sure to record all security-related successes and failures. If critical security events are not properly recorded, such as failed login attempts, this will make malicious behavior more difficult to detect and may prevent forensic analysis after a successful attack.    |
| Implementation details	   | Sufficient logs has been added accross the funtions. |
| Related API	         |NA|
| API payload example     | NA|
| Related documents           | /usr/mep/log/k8s-net-attach.log |
| Related GUI URL        |        NA                   |
| GUI test steps      | NA|
| GUI input example      |     NA        |
| extra information         | NA |
### 9.3 Do not add sensitive information to the log or log file.

| content                | Related Information                                      |
| ----------------------- | ------------------------------------------------------------ |
| Safety design rule number | 9.3 Do not add sensitive information to the log or log file. <br>Note: Carefully consider the sensitivity of the information written to the log file. Do not write confidential information to log files. Before deploying the application to the production environment, delete the debug log file. Protect log files from unauthorized reading/writing. |
| Implementation details	   | No sensitive event has been present in the code. No debug exist. Only error, info, warning has been used.  |
| Related API	         |NA|
| API payload example     | NA|
| Related documents           | /usr/mep/log/k8s-net-attach.log |
| Related GUI URL        |        NA                   |
| GUI test steps      | NA|
| GUI input example      |     NA        |
| extra information         | NA |
### 9.4 Avoid recording too much data.

| content                | Related Information                                      |
| ----------------------- | ------------------------------------------------------------ |
| Safety design rule number | 9.4 Avoid recording too much data. <br>Note: Disallow a large number of repeated log messages and replace them with periodic summaries. For example, syslog may contain an entry that declares "the last message repeated X times" when recording repetitive events. Supports the maximum size of log files that can be controlled by the administrator.  |
| Implementation details	   | Avoided logs in loops, Max size 30 mb, max backups 30, and max age 30 days has been set. lumberjack and logrus has been usd for log framework. |
| Related API	         |NA|
| API payload example     | NA|
| Related documents           | /usr/mep/log/k8s-net-attach.log |
| Related GUI URL        |        NA                   |
| GUI test steps      | NA|
| GUI input example      |     NA        |
| extra information         | NA |