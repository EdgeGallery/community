### 发布时间 
2021.2.1

### 项目概述 Project Overview
AppStore是开发者发布和上线App应用的市场，由Developer平台开发的边缘应用，经过测试可以直接分享到AppStore应用商店。AppStore分为前后台两个部分，appstore-be是后台部分，提供主要功能接口供前台或其他三方系统调用，appstore-fe是前台部分，提供界面展示。

### 从上一个版本开始架构的变化 Architecture changes from last release
架构无变化

### v1.1 引入的新功能特性 New component capabilites for v1.1(Chocolate)
* 增加上传应用时可上传应用的演示短视频或者图片
* 管理员角色可以主动从别的应用平台拉取应用


### 新增或者修改的接口 New or modified interfaces
| API | 方法 | API说明 | 变更类型 | 说明 |
| --- | --- | --- | --- | --- |
| /mec/appstore/v1/apps | POST | 上传app | 修改 | 修改上传请求参数，增加可选字段demo，含义为应用演示视频或图片 |
| /mec/appstore/{appstoreId}/pullable/packages | GET | 查询指定平台仓库可拉取应用列表 | 新增 | appstore后台调用指定平台仓库的URI，查询可推送应用列表，并过滤本平台已有的应用，返回可拉取的应用列表给appstore前台 |
| /mec/appstore//pullable/packages/{packageId}/action/pull | POST | 从指定平台仓库拉取指定应用 | 新增 | appstore后台调用指定平台仓库的URI，下载指定应用的应用包和图标，并注册该应用到本平台，同时记录一条拉取消息 |

#### 如有，他们是否是后向兼容的 If modified, are the backwards compatible
是

### 接口API 简述 interface naming

https://gitee.com/edgegallery/docs/blob/master/Projects/APPSTORE/AppStore_Interfaces.md

### 系统的限制目前有哪些 What are the system limits
| 角色 | 操作权限 | 可见界面 |
| --- | --- | --- |
| ADMIN | 查看/下载/删除平台所有发布的应用、上传应用，管理外部仓库、推送应用到外部仓库、从外部仓库拉取应用、消息管理、操作分析。 | 应用仓库、我的应用（本用户上传的应用）、应用共享、帮助 |
| TENANT | 查看平台所有发布的应用、上传应用、下载/删除本用户发布的应用 | 应用仓库、我的应用（本用户上传的应用）、帮助 |
| GUEST | 查看平台所有发布的应用 | 应用仓库、帮助 |