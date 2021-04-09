### 发布时间 
2021.2.1

### 项目概述 Project Overview
AppStore是开发者发布和上线App应用的市场，由Developer平台开发的边缘应用，经过测试可以直接分享到AppStore应用商店。AppStore分为前后台两个部分，appstore-be是后台部分，提供主要功能接口供前台或其他三方系统调用，appstore-fe是前台部分，提供界面展示。

### 从上一个版本开始架构的变化 Architecture changes from last release
架构无变化

### v1.1 引入的新功能特性 New component capabilites for v1.1(Chocolate)
* 管理员角色可以主动从别的应用平台拉取应用
![输入图片说明](https://images.gitee.com/uploads/images/2021/0201/201452_ba6e4f51_8354563.png "pullapp.png")


### 新增或者修改的接口 New or modified interfaces
| API | 方法 | API说明 | 变更类型 | 说明 |
| --- | --- | --- | --- | --- |
| /mec/appstore/v1/apps | GET | 获取应用 | 新增 | 增加查询字段 appName limit offset;变更为后台分页查询，模糊查询  ，新增返回数量，列表排序,增加返回类 |
| /mec/appstore/v1/packages | GET | 获取app应用包 | 新增 | 增加查询字段 appName limit offset;变更为后台分页查询，模糊查询，新增返回数量，列表排序,增加返回类 |
| /mec/appstore/v1/appstores| GET | 获取appStore | 新增 | 增加查询字段 appStore limit offset;变更为后台分页查询，模糊查询，新增返回数量，列表排序,增加返回类 |
| /mec/appstore/v1/packages/pushable | GET | 获取应用推送app列表 | 新增 | 增加查询字段 appName limit offset;变更为后台分页查询，模糊查询，新增返回数量，列表排序,增加返回类 |
| /mec/appstore/v1/packages/pullable | GET | 获取应用推送app列表 | 新增 | 增加查询字段 appName limit offset;变更为后台分页查询，模糊查询，新增返回数量，列表排序,增加返回类 |
| /mec/appstore/v1/messages | GET | 操作分析消息列表 | 新增 | 增加查询字段 appName limit offset;变更为后台分页查询，模糊查询，新增返回数量，列表排序,增加返回类 |

### 接口URI变更

| 原URI | 现URI | 方法 | API说明 |
| --- | --- | --- | --- |

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