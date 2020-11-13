### 发布时间 
2020.12.13

### 项目概述 Project Overview
AppStore是开发者发布和上线App应用的市场，由Developer平台开发的边缘应用，经过测试可以直接分享到AppStore应用商店。AppStore分为前后台两个部分，appstore-be是后台部分，提供主要功能接口供前台或其他三方系统调用，appstore-fe是前台部分，提供界面展示。

### 从上一个版本开始架构的变化 Architecture changes from last release
架构无变化

### v1.0 引入的新功能特性 New component capabilites for v1.0(Chocolate)
* 增加删除应用单个版本的功能，并限制只有此版本上传者可删除
* 前台限制应用下载功能，只有版本上传者可下载此应用包
* 适配新版本csar包，支持解析、存储与展示

### 新增或者修改的接口 New or modified interfaces
| API | 方法 | API说明 | 修改说明 |
| --- | --- | --- | --- |
| /mec/appstore/v1/apps | POST | 上传app | 修改上传成功返回值，包含appId与packageId |

#### 如有，他们是否是后向兼容的 If modified, are the backwards compatible
是

### 接口API 简述 interface naming

https://gitee.com/edgegallery/docs/blob/master/Projects/APPSTORE/AppStore_Interfaces.md

### 系统的限制目前有哪些 What are the system limits
如操作系统，用户权限等等