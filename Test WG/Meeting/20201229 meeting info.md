本次会议同TSC、架构组联合召开
会议纪要参见：https://gitee.com/edgegallery/community/blob/master/TSC/Meetings/202012/29-12-2020%20Meeting%20Minutes.md

### Topic(测试组相关)

1、版本发布测试问题总结与评审


- 【Developer】构建测试能力详情优化 【李媛媛】（已测，bug尚未修复完；当前流规则/dns配置在内部版测试）
- 【Dev/MECM/App/Atp/MEP/APPLCM】EdgeGallery生态能力优化【李治谦】（1.0版相关feature均测完毕；无严重bug）
- 【Test】 Provide the health check for Edgegallery platform in one-click deployment【李治谦】（测试完毕）
- 【Test】The optimization of edgegallery installation package 【姜伟】（打标签的story已完成，发现安装包太大（已有5.6G，当前尚未有改观），在测；其他story放入后续版本）【许丹后续跟踪安装包缩减的问题】
- 【MECM】Application Managment & Topology Enhancement 【张阿利】（流规则/dns规则需要内部跟进在clab环境测试，同developer）
- 【installtaion】installation script （several modes）【李治谦】（离线安装脚本jjb每天运行，比较稳定；姜伟在测离线安装包；大问题放在1.1版改造）
- 【mep】network isolation【敏熙】（敏熙已确认一个网络平面可以跨一个边缘节点（一个k8s集群）的多个worker节点；但一个网络平面是否可跨多个边缘节点（即跨多个k8s集群），还需进一步确认）
- 【ATP】App应用的测试能力增强 【张阿利】（在测；【倍源】无阻塞问题）
- 【Developer】应用发布界面优化 【李媛媛】（应用发布界面持续修改中；【倍源：当前已有稳定版，可测】）
- 【Lab】搭建社区实验室管理服务平台
- 【Test】develop the Test Platform for supporting testcase management【孟璞辉】（需要自行build，启动测试）
- 【MEP/MECM】ak/sk配置接口【丁宇卿】（鹿鑫-通过mecm测试；利用postman测试意义不大）
- 【专项测试】治谦 applcm部署建议；部署前检测ip/port占用情况，放入后期版本


### meeting link


https://welink-meeting.zoom.us/j/944147532