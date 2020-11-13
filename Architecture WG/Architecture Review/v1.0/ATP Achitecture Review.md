 **发布时间** ： 12.13

 **详细设计开始时间** ：9.20

 **项目概述** ：
应用测试认证服务，对应用包进行安全性测试（病毒扫描）、遵从性测试（根据APPD、ETSI标准验证包结构）以及沙箱测试（应用实例化、卸载），
对于测试通过的应用包，才可以发布到应用商店。

测试用例设计(https://images.gitee.com/uploads/images/2020/1113/100657_512529a6_7854857.png "屏幕截图.png")

架构设计(https://images.gitee.com/uploads/images/2020/1113/100757_47fa1eae_7854857.png "屏幕截图.png")

 **API简介** ：

![输入图片说明](https://images.gitee.com/uploads/images/2020/1113/100826_7ebec1b7_7854857.png "屏幕截图.png")


 **接口API参考文档** :
[atp yaml文档](https://gitee.com/edgegallery/community/blob/master/Architecture%20WG/Architecture%20Review/v1.0/atp.yaml)

 **系统的限制** 
目前接口需要租户权限才能访问
atp服务没有自己的平台页面,作为服务，可以嵌入到任何平台中。

