**meeting 会议时间**: 19:00-20:00

## attendee参与人员
- 刘辉（紫金山实验室）
- 姜伟（紫金山实验室）
- 侯敏熙（Redhat）
- 张怡（联想）
- 彭育（华为）
- 张阿利（中软）
- 李媛媛（中软）
- 孟璞辉(VMware)

## Topics议题
1.现有test case设计总结、问题交流及后续工作讨论； owner all

Discussion about current design results of test cases and following works.

【已同Dev-Appstore组、MECM组review了相应测试用例；同MEP相关人员沟通了DNS、网络隔离等设计要求】

【后续准备自动化测试脚本，测试报告模板，为9月14日代码冻结后的测试做准备】

|姓名|任务|  
|---|---|
|刘辉| EG 生态能力优化test 【移入ReleaseV1.0】 |
|侯敏熙   |network isolation test；public cloud integration；|
|彭育   | 安装部署支持All-in-one;支持JJB部署；5G网元集成 ;installation test； |
|李媛媛|app构建测试发布过程 test【移入ReleaseV1.0】 ；developer&AppStore GUI测试|
|zhangali|app管理验证【移入ReleaseV1.0】；MECM GUI测试|
|姜伟|ak/sk【移入ReleaseV1.0】；app心跳【移入ReleaseV1.0】；离线部署测试 |
|mengpuhui|dns test；|
|丁宇卿|ETSI interface test；|
|all|doc test；|


2.测试组内工作指标讨论
【彭育分享了google测试之道有关测试代码覆盖率的内容，大家针对性的讨论了相关指标的有效性；继续讨论】

3.代码覆盖率测试工具使用指南讨论
--java jacoco【已集成在sonarcube，CI过程即可产生代码覆盖率结果】
-- go  go test【已有相关指导方案，开发指导及CI sonarcube集成方案】

## meeting link
 https://welink-meeting.zoom.us/j/527698434﻿
## Minutes纪要
## 纪要人
刘辉

## 遗留任务
1.开展测试用例分析（9月4日明确哪些TC自动化测试，哪些人工），逐步开展自动化测试脚本开发 --owner all
- 基于Selenium开发界面自动化测试脚本
- api自动化测试脚本开发


2. 分享vmware测试开发框架  -- owner mengpuhui
3. 分享openstack测试管理 -- owner houminxi
4. app心跳同研发团队核实 -- owner jiangwei【移入ReleaseV1.0】
5. 5g网元集成同维涛核实  -- owner pengyu【保留在ReleaseV0.9】
6. mecm app管理验证 同研发团队核实 -- owner zhangali
7. 准备测试报告模板          --owner liuhui houminxi  pengyu

