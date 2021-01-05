**meeting 会议时间**: 20210106 16:30-17:30

## attendee参与人员
- 刘辉（紫金山实验室）
-  侯敏熙（Redhat） 
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

1.1.0版问题总结及对1.1版需求的建议--owner all

Summarize problems for 1.0 and suggest requirement spec for 1.1.

- 【Developer】构建测试能力详情优化 【李媛媛】（已测，bug尚未修复完；当前流规则/dns配置在内部版测试）
- 【Dev/MECM/App/Atp/MEP/APPLCM】EdgeGallery生态能力优化【李治谦】（1.0版相关feature均测完毕；无严重bug）
- 【Test】 Provide the health check for Edgegallery platform in one-click deployment【李治谦】（测试完毕）
- 【Test】The optimization of edgegallery installation package 【姜伟】（打标签的story已完成，发现安装包太大（已有5.6G，当前尚未有改观），在测；其他story放入后续版本）【许丹后续跟踪安装包缩减的问题】
- 【MECM】Application Managment & Topology Enhancement 【张阿利】（流规则/dns规则需要内部跟进在clab环境测试，同developer）
- 【installtaion】installation script （several modes）【李治谦】（离线安装脚本jjb每天运行，比较稳定；姜伟在测离线安装包；大问题放在1.1版改造）
- 【mep】network isolation【敏熙】（敏熙已确认一个网络平面可以跨一个边缘节点（一个k8s集群）的多个worker节点；但一个网络平面是否可跨多个边缘节点（即跨多个k8s集群），还需进一步确认）
- 【ATP】App应用的测试能力增强 【张阿利】（在测；【倍源】无阻塞问题）
- 【Developer】应用发布界面优化 【李媛媛】（应用发布界面持续修改中；【倍源：当前已有稳定版，可测】）
-  _【Lab】搭建社区实验室管理服务平台_ 
- 【Test】develop the Test Platform for supporting testcase management【孟璞辉】（需要自行build，启动测试）
- 【MEP/MECM】ak/sk配置接口【丁宇卿】（鹿鑫-通过mecm测试；利用postman测试意义不大）
- 【专项测试】治谦  applcm部署建议；部署前检测ip/port占用情况，放入后期版本

2.专项测试情况分享--张阿利

share results of subject test task. --owner zhangali

3.测试指标讨论 --owner all

- 满负载测试，即测试单个边缘节点在高负载（k8s集群压力达90-100%），持续运行1天，集群状态是否正常；
- 长稳测试，即模拟常态边缘节点运行状态，测试边缘节点稳定性（k8s集群负载50-70%，持续运行10天左右，边缘节点是否正常）；
- 边缘节点自治稳定性测试，即当中心控制节点故障，查看边缘节点运行状态是否正常
- 边缘节点上启动一个app的时间是否也要测试（10、50、90、99分位下）？对mep上发布的服务的调用时延是否也有必要测试下？
- 新增一个边缘节点时，该边缘节点的初始化时间是否需要测试？


## meeting link
https://welink-meeting.zoom.us/j/326342448

## Minutes纪要
## 纪要人
刘辉

#遗留任务
1、edgeT如何发挥预期设计效果 --于洋等
