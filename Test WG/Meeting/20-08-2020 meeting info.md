**meeting 会议时间**: 19:00-20:00

## attendee参与人员
- 刘辉（紫金山实验室）
- 姜伟（紫金山实验室）
- 侯敏熙（联想）
- 张怡（联想）
- 彭育（华为）
- 张阿利（中软）
- 李媛媛（中软）
- 许丹 （华为）
- 孟璞辉(VMware)
- Prakash(prakash.e@huawei.com)
- Kanagaraj(kanagaraj.manickam@huawei.com)

## Topics议题
1.需求澄清跟踪工作情况汇总讨论（和release manager 确认需求澄清计划）；  owner 刘辉& 侯敏熙&彭育
Discussion about requirement clarification
|姓名|任务|  
|---|---|
|刘辉| ETSI interface test；AppStore GUI test；EG 生态能力优化test  |
|侯敏熙   |network isolation test；public cloud integration；|
|彭育   | 安装部署支持All-in-one/支持离线部署;支持JJB部署；5G网元集成 ;installation test； |
|李媛媛|app构建测试发布过程 test；developer GUI测试|
|zhangali|app管理验证；MECM GUI测试|
|姜伟|ak/sk；app心跳 |
|mengpuhui|dns test；|
|all|doc test；|

2.test case设计讨论(模板/计划/管理方式)--owner 刘辉& 侯敏熙&彭育
discussion about test case design（template&plan&tools）
【test case由gitee上录入并管理，每条gitee记录对应一条test case】

3.版本发布质量指标讨论
【参见[test plan](https://gitee.com/edgegallery/community/blob/master/Test%20WG/Test%20Release/Edgeggallery%20R0.9%20Test%20%20Planning%20.md)】

4.问题反馈：
- robotframework 执行时候的failed是否可以自动化创建bug trace list； owner ： 张阿利（不可以）
- 研究结对测试，pict测试工具；  owner：彭育（TBD）
- 确认bug和builder 版本关联关系；  owner 刘辉& 侯敏熙&彭育(不可实现)
- 讨论社区安全测试如何与测试组其他测试协作进行（包括用例设计/实现/执行，分工情况）（已完成） 
- 需要确认developer什么时候提供daily build；   owner 刘辉& 侯敏熙&彭育（近3天研发dailybuild成功率100%后转测试）

## meeting link
 https://welink-meeting.zoom.us/j/937675032
## Minutes纪要
## 纪要人
刘辉

## 遗留任务


1. AK/SK测试由测试组还是安全组负责--liuhui【据吕京反馈ak/sk安全组会基于安全角度测试，测试组从功能角度测试】
2. 介绍ETSI Plugtest --owner pengyu
3. 测试组内工作指标讨论 --owner all

