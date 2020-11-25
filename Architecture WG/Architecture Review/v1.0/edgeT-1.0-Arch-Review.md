### 发布时间 详细设计开始的第一周

### 项目概述 Project Overview
包含项目描述以及内部架构图
A micro-services to manage, execute, run test cases (developed in different run-time like java, python, go, script, ROBOT, docker, etc) and with dashboard to analyze the result. It can be integrated with other edge gallery services. Helps to develop test cases once (either by community or partner or operators or app developer) use it across at various devops phases includes CICD, app development, production deployment for user-service verification , etc as One platform for all testing.
### 从上一个版本开始架构的变化 Architecture changes from last release


### v1.0 引入的新功能特性 New component capabilites for v1.0(Chocolate)

[图片上传中…(image-d1WbnUzHf6cQF1NjYcTq)]

### 接口API参考文档 Reference to the interfaces

  - name: Profile
  - name: Scenario
  - name: Testsuite
  - name: Testcase
  - name: Execution

列出对应的swagger yaml即可

https://gitee.com/edgegallery/edgeT -> RESTful API
