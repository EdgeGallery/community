**meeting 会议时间**: 20201223 16:30-17:30

## attendee参与人员
- 刘辉（紫金山实验室）
-  _侯敏熙（Redhat）_ 
- 李治谦（华为） 
- 姜伟（紫金山实验室）
- _ 张怡（联想）_ 
- 张阿利（中软）
- 李媛媛（中软）
- 孟璞辉(VMware) 
- 许丹（华为）
- 于洋（华为）  
- 丁宇卿（紫金山实验室）
-  李强（华为）
-  _扈冰（华为）_ 
-    _kanaga（华为）_  
-  _shashikanth（华为）_ 
-  _蔡舒豪（华为）_ 
-  _徐军杰（九州云）_ 
- _yangyang 、_ zhangbeiyuan、 _luxin、chenchuanyu 、_ chenruidong  （华为）

## Topics议题

1.review第三轮迭代测试进展、问题及总结--owner all

Review progress for the third iterative test.

【12月22日9：00累计189个bug（其中32个安全类bug）：29个修复中（含待确认15，已确认10，修复中4个），147个已修复(含修复完待验证44个，已完成修复103个)，5个遗留，8个取消；严重bug14个(2个修复中，10个已修复，2个取消)；主要bug62个；次要bug79个；其余bug36个】


- 【Developer】构建测试能力详情优化 【李媛媛】（已测，bug尚未修复完；当前流规则/dns配置在内部版测试）
- 【Dev/MECM/App/Atp/MEP/APPLCM】EdgeGallery生态能力优化【李治谦】（1.0版相关feature均测完毕；无严重bug）
- 【Test】 Provide the health check for Edgegallery platform in one-click deployment【李治谦】（测试完毕）
- 【Test】The optimization of edgegallery installation package 【姜伟】（打标签的story已完成，发现安装包太大（已有5.6G，当前尚未有改观），在测；其他story放入后续版本）【许丹后续跟踪安装包缩减的问题】
- 【MECM】Application Managment & Topology Enhancement 【张阿利】（流规则/dns规则需要内部跟进在clab环境测试，同developer）
- 【installtaion】installation script （several modes）【李治谦】（离线安装脚本jjb每天运行，比较稳定；姜伟在测离线安装包；大问题放在1.1版改造）
- 【mep】network isolation【敏熙】（维持上周状态；鹿鑫-支持多work节点部署，敏熙会后确认）
- 【ATP】App应用的测试能力增强 【张阿利】（在测；【倍源】无阻塞问题）
- 【Developer】应用发布界面优化 【李媛媛】（应用发布界面持续修改中；【倍源：当前已有稳定版，可测】）
-  _【Lab】搭建社区实验室管理服务平台_ 
- 【Test】develop the Test Platform for supporting testcase management【孟璞辉】（需要自行build，启动测试）
- 【MEP/MECM】ak/sk配置接口【丁宇卿】（鹿鑫-通过mecm测试；利用postman测试意义不大）
- 【专项测试】治谦  applcm部署建议；部署前检测ip/port占用情况，放入后期版本

2.代码覆盖率情况、三方件情况（含许可一致性）--许丹
code converage & third-party components（including license-compliance） --owner Xudan

【developer-be需提高代码覆盖率到50%，一起模块已满足要求；发布前sonarqube内的bug/vulnerability需清零，许丹每天邮件提醒下】
【许可一致性需利用之前工具扫描下，确保满足要求--owner xudan】

3.edgeT测试进展 --owner 孟璞辉

【在本地部署测试；ubuntu ok，centos不兼容；部署已测完，已有api测试有结果，但无法判断结果正确性；无法新增/删除用例，只能list已有用例】


4.test report preparation -- owner liuhui lizhiqian houminxi lvjing

【测试报告随后一周内需补充完善】

5、crane-framework架构分享 --luoxiaoyun

【介绍了craneframework的架构及测试情况；】

## meeting link
https://welink-meeting.zoom.us/j/395196124

## Minutes纪要
## 纪要人
刘辉

#遗留任务
1、edgeT如何发挥预期设计效果 --于洋等
