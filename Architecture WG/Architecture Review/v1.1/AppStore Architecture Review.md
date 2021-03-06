### 发布时间 
2021.2.1

### 项目概述 Project Overview
AppStore是开发者发布和上线App应用的市场，由Developer平台开发的边缘应用，经过测试可以直接分享到AppStore应用商店。AppStore分为前后台两个部分，appstore-be是后台部分，提供主要功能接口供前台或其他三方系统调用，appstore-fe是前台部分，提供界面展示。

### 从上一个版本开始架构的变化 Architecture changes from last release
架构无变化

### v1.1 引入的新功能特性 New component capabilites for v1.1(Chocolate)
* 增加上传应用时可上传应用的演示短视频或者图片
![输入图片说明](https://images.gitee.com/uploads/images/2021/0201/201433_caa99356_8354563.png "uploadapp.png")
* 管理员角色可以主动从别的应用平台拉取应用
![输入图片说明](https://images.gitee.com/uploads/images/2021/0201/201452_ba6e4f51_8354563.png "pullapp.png")


### 新增或者修改的接口 New or modified interfaces
| API | 方法 | API说明 | 变更类型 | 说明 |
| --- | --- | --- | --- | --- |
| /mec/appstore/v1/apps | POST | 上传app | 修改 | 修改上传请求参数，增加可选字段demoVideo，含义为应用演示视频 |
| /mec/appstore/v1/packages/pullable | GET | 获取本平台仓库全部可拉取应用列表 | 新增 | 查询可拉取的应用列表|
| /mec/appstore/v1/packages/{platformId}/pullable | GET | 查询指定平台仓库可拉取应用列表 | 新增 | appstore后台调用指定平台仓库的URI，查询可推送应用列表，并过滤本平台已发布的应用，返回可拉取的应用列表给appstore前台 |
| /mec/appstore/v1/packages/{packageId}/action/pull | POST | 从指定平台仓库拉取指定应用 | 新增 | appstore后台调用指定平台仓库的URI，下载指定应用的应用包和图标，并注册该应用到本平台，同时记录一条拉取消息 |
| /mec/appstore/v1/apps/upload | POST | 分片上传应用包 | 新增 | 当应用包大于10M时，采用分片上传方式 |
| /mec/appstore/v1/apps/merge | GET | 合并应用包 | 新增 | 将分片的应用包合并到一起上传到服务器目标路径 |
| /mec/appstore/v1/apps/vm-register | POST | 注册虚机应用 | 新增 | 对于应用包较大的虚机应用调用此接口注册 |
| /mec/appstore/v1/apps/{appId}/demoVideo | GET | 获取应用视频 | 新增 | 根据应用ID获取演示视频 |

### 接口URI变更

| 原URI | 现URI | 方法 | API说明 |
| --- | --- | --- | --- |
| /mec/appstore/poke/pushable/packages | /mec/appstore/v1/packages/pushable | GET | 查询可推送的应用列表 |
| /mec/appstore/poke/pushable/packages/{packageId} | /mec/appstore/v1/packages/{packageId}/pushable | GET | 根据packageId获取可推送应用包 |
| /mec/appstore/poke/pushable/packages/{packageId}/action/push | /mec/appstore/v1/packages/{packageId}/action/push | POST | 根据packageId推送应用包|
| /mec/appstore/poke/pushable/packages/{packageId}/action/download-package | /mec/appstore/v1/packages/{packageId}/action/download-package | GET | 根据packageId下载推送应用包 |
| /mec/appstore/poke/pushable/packages/{packageId}/action/download-icon | /mec/appstore/v1/packages/{packageId}/action/download-icon | GET | 根据packageId下载推送应用图标 |
| /mec/appstore/poke/appstores | /mec/appstore/v1/appstores | POST | 新增外部应用仓库 |
| /mec/appstore/poke/appstores/{appStoreId} | /mec/appstore/v1/appstores/{appStoreId} | DELETE | 删除外部应用仓库 |
| /mec/appstore/poke/appstores/{appStoreId} | /mec/appstore/v1/appstores/{appStoreId} | PUT | 修改外部应用仓库 |
| /mec/appstore/poke/appstores | /mec/appstore/v1/appstores | GET | 查询外部应用仓库列表 |
| /mec/appstore/poke/appstores/{appStoreId} | /mec/appstore/v1/appstores/{appStoreId} | GET | 查询外部应用仓库 |
| /mec/appstore/poke/messages | /mec/appstore/v1/messages| POST | 新增一条消息 |
| /mec/appstore/poke/messages | /mec/appstore/v1/messages | GET | 根据消息类型获取消息 |
| /mec/appstore/poke/messages/{messageId} | /mec/appstore/v1/messages/{messageId} | GET | 根据message id获取消息 |
| /mec/appstore/poke/messages/{messageId} | /mec/appstore/v1/messages/{messageId} | DELETE | 根据message id删除消息 |
| /mec/appstore/poke/messages/{messageId}/action/download | /mec/appstore/v1/messages/{messageId}/action/download | GET | 根据message id下载app相关信息 |
| /mec/appstore/poke/messages/{messageId}/action/readed | /mec/appstore/v1/messages/{messageId}/action/readed | PUT | 根据message id更新消息状态 |

### 删除接口

| API | 方法 | API说明 |
| --- | --- | --- |
| /mec/appstore/poke/messages/{messageId}/report-data | GET | 根据message id获取测试报告 |

#### 如有，他们是否是后向兼容的 If modified, are the backwards compatible
Poc特性相关接口URI做了调整，请使用了"/mec/appstore/poke"相关接口，请修改为新接口。

### 接口API 简述 interface naming

https://gitee.com/edgegallery/docs/blob/master/Projects/APPSTORE/AppStore_Interfaces.md

### 系统的限制目前有哪些 What are the system limits
| 角色 | 操作权限 | 可见界面 |
| --- | --- | --- |
| ADMIN | 查看/下载/删除平台所有发布的应用、上传应用，管理外部仓库、推送应用到外部仓库、从外部仓库拉取应用、消息管理、操作分析。 | 应用仓库、我的应用（本用户上传的应用）、应用共享、帮助 |
| TENANT | 查看平台所有发布的应用、上传应用、下载/删除本用户发布的应用 | 应用仓库、我的应用（本用户上传的应用）、帮助 |
| GUEST | 查看平台所有发布的应用 | 应用仓库、帮助 |