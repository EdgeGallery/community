**meeting 会议时间**: 20201216 16:30-17:30

## attendee参与人员
- 刘辉（紫金山实验室）
- 侯敏熙（Redhat）
- 李治谦（华为） 
- 姜伟（紫金山实验室）
- _ 张怡（联想）_ 
- 张阿利（中软）
- 李媛媛（中软）
- 孟璞辉(VMware) 
- 许丹（华为）
-  _于洋（华为）_  
- 丁宇卿（紫金山实验室）
-  李强（华为）
-  _扈冰（华为）_ 
-    _kanaga（华为）_  
-  _shashikanth（华为）_ 
-  _蔡舒豪（华为）_ 
-  _徐军杰（九州云）_ 
- _yangyang 、_ zhangbeiyuan、luxin、chenchuanyu _、chenruidong_  （华为）

## Topics议题

1.review第三轮迭代测试进展、问题及总结--owner all
代码覆盖率情况--许丹
Review progress for the third iterative test.

【12月15日9：00累计157个bug（其中23个安全类bug）：95个修复中，51个已修复，5个遗留，6个取消；严重bug9个(5个修复中，2个已修复，2个取消)；主要bug48个；次要bug67个；其余bug33个】


- 【Developer】构建测试能力详情优化 【李媛媛】（已测，bug尚未修复完）
- 【Dev/MECM/App/Atp/MEP/APPLCM】EdgeGallery生态能力优化【李治谦】（对于不在1.0版本的epic/story等，将标签sprint3去掉，改成其他版本标签；在1.0版但尚未研发完毕的，本周结束，下周开始测试）
- 【Test】 Provide the health check for Edgegallery platform in one-click deployment【李治谦】（测试完毕）
- 【Test】The optimization of edgegallery installation package 【姜伟】（有3个story可测，发现安装包太大（已有5.6G），在测；其他放入迭代3）【会后治谦看一下story标签】
- 【MECM】Application Managment & Topology Enhancement 【张阿利】（上周结束测试）
- 【installtaion】installation script （several modes）【李治谦】（离线安装脚本jjb每天运行；姜伟在测离线安装包；大问题放在1.1版改造）
- 【mep】network isolation【敏熙】（维持上周状态；鹿鑫-支持多work节点部署，敏熙会后确认）
- 【ATP】App应用的测试能力增强 【张阿利】（在测；）
- 【Developer】应用发布界面优化 【李媛媛】（已经提测；dns/流量配置不具备测试条件；当前测试环境下尚未成功发布过）
-  _【Lab】搭建社区实验室管理服务平台_ 
- 【Test】develop the Test Platform for supporting testcase management【孟璞辉】（需要自行build，启动测试）
- 【MEP/MECM】ak/sk配置接口【丁宇卿】（鹿鑫-通过mecm测试；利用postman测试意义不大）

2.edgeT测试进展 --owner 孟璞辉
【尚未有明确进展；还在开发测试用例；尚缺部署脚本；孟璞辉可联系治谦或姜伟利用pml资源vpn接入即可】

3.test report preparation -- owner liuhui lizhiqian lvjing

【治谦--测试报告中安全部分联系润东】

## meeting link
https://welink-meeting.zoom.us/j/786921560

## Minutes纪要
## 纪要人
刘辉

#遗留任务
