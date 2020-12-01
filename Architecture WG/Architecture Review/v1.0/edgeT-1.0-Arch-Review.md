### 发布时间 详细设计开始的第一周

### 项目概述 Project Overview
包含项目描述以及内部架构图

A micro-services to manage, execute, run test cases (developed in different run-time like java, python, go, script, ROBOT, docker, etc) and with dashboard to analyze the result. It can be integrated with other edge gallery services. Helps to develop test cases once (either by community or partner or operators or app developer) use it across at various devops phases includes CICD, app development, production deployment for user-service verification , etc as One platform for all testing.

### 从上一个版本开始架构的变化 Architecture changes from last release

NA

### v1.0 引入的新功能特性 New component capabilites for v1.0(Chocolate)

[图片上传中…(image-8jckMzuBrwZM0vB4KUqV)]

### 新增或者修改的接口 New or modified interfaces

  - name: Profile
  - name: Scenario
  - name: Testsuite
  - name: Testcase
  - name: Execution

#### 如有，他们是否是后向兼容的 If modified, are the backwards compatible

NA

### 接口API 简述 interface naming
列出所有API的介绍
### 接口API参考文档 Reference to the interfaces
列出对应的swagger yaml即可
- 如有标准参考，可以附上标准文档链接
- 具体实现的Swaggeryaml，也附上对应的docs链接即可。

https://gitee.com/edgegallery/edgeT -> RESTful API

### 系统的限制目前有哪些 What are the system limits
如操作系统，用户权限等等