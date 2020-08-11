### 需求来源

EdgeGallery 版本规划

### 需求描述
- App Store/Developer/MECM 平台用户的分权分域设计

### 典型场景分析
- 场景1：一个开发者通过developer平台创作了一个App，经过测试验证后，上传到AppStore平台为大家使用
- 场景2：App生产厂商将自己开发的App软件，上传到AppStore平台，准备部署到边缘侧。上传的App需要通过AppStore平台的沙箱测试，然后通过人工审核的方式发布到AppStore平台
- 场景3：App消费厂商通过AppStore平台选购喜欢的App，通知MECM平台部署到边缘侧
- 场景4：维护人员需要在MECM平台上，对App进行分发部署，并定期查看App的状态
- 场景5：厂商的维护人员通过MECM平台，查看App的状态

### 涉及模块
![输入图片说明](https://images.gitee.com/uploads/images/2020/0810/201635_b1e13050_5659718.png "屏幕截图.png")

### 业务流程
![输入图片说明](https://images.gitee.com/uploads/images/2020/0810/201752_5dfe416c_5659718.png "屏幕截图.png")
![输入图片说明](https://images.gitee.com/uploads/images/2020/0810/202202_d48f4cc0_5659718.png "屏幕截图.png")

详细设计请参考：https://gitee.com/edgegallery/community/tree/master/Architecture%20WG/Requirements/v0.9/User%20definition%20and%20authority%20management

### 接口定义
N/A

### 工作量评估
50人天


### 评审意见
两种应用部署方式：
- 运营商购买应用
- APP租赁运营商资源，MECM提供管理页面
    - 涉及OSS/BSS 对于资源offer的设计
- APPStore
    - APPD 需要考虑跨运营商的适配
- APP厂商与运营商的交互
    - Day0/Day1/Day2的配置脚本
    - APP的调优
    - LCM的过程补充
    - Flavor/Capacity的补充和映射