### 发布时间 详细设计开始的第一周
发布时间: 3月末

详细设计开始时间: 2021.1.25
### 项目概述 Project Overview
应用测试认证服务，可以让用户选择应用包的测试场景，执行对应场景的测试用例。社区场景会对应用包进行安全性测试（病毒扫描）、遵从性测试（根据APPD、ETSI标准验证包结构）以及沙箱测试（应用实例化、卸载）， 对于测试通过的应用包，才可以发布到应用商店。

测试场景、测试套、测试用例三层模型概念对应关系
![模型](https://images.gitee.com/uploads/images/2021/0201/144135_8b426622_7854857.png "model.png")



### 从上一个版本开始架构的变化 Architecture changes from last release
1. 去除V1.0版本认证模板的概念，对应于V1.1版本的测试场景概念；V1.0版本安全性测试、遵从性测试、沙箱测试名称是固定的,V1.1版本这些概念对应于测试套的概念，都可以由管理员在管理面进行增删改。
2. V1.0版本的测试用例都是自动化执行的，V1.1版本引入手工测试用例概念，手工用例需要管理员在管理面手动更新状态。

### v1.1 引入的新功能特性 New component capabilites for v1.1
1. 引入Test Scenario, Test Suite,Test Case三层模型概念
2. ATP管理面portal首页有统计测试次数的柱状图，测试任务列表支持批量删除
3. 管理面支持测试用例下载
4. 支持在用户面以提交.md描述文件的方式贡献测试用例
5. 支持手工测试用例
6. 支持分权控制

### 新增或者修改的接口 New or modified interfaces
* 修改测试任务相关接口（模型变更）
* 修改测试用例相关接口（模型变更）
* 新增测试场景相关接口
* 新增测试套相关接口
* 新增测试任务分析、测试任务批量下载接口

#### 如有，他们是否是后向兼容的 If modified, are the backwards compatible
* 创建测试任务和执行测试任务接口请求体和返回体有变化，需要开发者平台和应用商店适配修改。

| API                                          | 方法   | API说明  | 请求体                                            | 返回体                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          | 变更说明                                 |
|----------------------------------------------|------|--------|------------------------------------------------|----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|--------------------------------------|
| edgegallery/atp/v1/tasks                     | POST | 创建测试任务 | {     file:file }                              | {    "id":"",    "packagePath”:"",    "appName":"",    "appVersion":"",    "providerId”:"",    "status":"",    "createTime":123456789,    "user":{        "userId"："",        "userName":""    } }                                                                                                                                                                                                                                                                                                                                                                                                                                           | 请求体去掉了isRun字段，返回体去掉了testCaseDetail字段 |
| edgegallery/atp/v1/tasks/{taskId}/action/run | POST | 执行测试任务 | { scenarioIdList: [“scenario1”,” scenario2”] } | {    "id":"",    "packagePath”:"",    "appName":"",    "appVersion":"",    "providerId”:"",    "status":"",    "createTime":123456789,    "user":{        "userId"："",        "userName":""    }  “testScenarios":[     {           "id":"",       "nameCh":"联通场景",       "nameEn":"",       "testSuites":[        {           "id":"",           "nameCh":"安全性测试",           "nameEn":"",           "testCases":[              {                "id":"",                "nameCh":"防炸弹攻击校验",                "nameEn":"",                "result":"",                "reason":""              }             ]         }        ]        } ] } | 请求体增加了场景id列表，返回体testCaseDetail格式变更   |


### 接口API 简述 interface naming
https://gitee.com/edgegallery/community/blob/master/Architecture%20WG/Requirements/v1.1/%E5%BA%94%E7%94%A8%E6%B5%8B%E8%AF%95%E5%B9%B3%E5%8F%B0V1.1%E9%9C%80%E6%B1%82%E8%AE%BE%E8%AE%A1.pptx

### 接口API参考文档 Reference to the interfaces
https://gitee.com/edgegallery/community/blob/master/Architecture%20WG/Requirements/v1.1/%E5%BA%94%E7%94%A8%E6%B5%8B%E8%AF%95%E5%B9%B3%E5%8F%B0V1.1%E9%9C%80%E6%B1%82%E8%AE%BE%E8%AE%A1.pptx

### 系统的限制目前有哪些 What are the system limits
None