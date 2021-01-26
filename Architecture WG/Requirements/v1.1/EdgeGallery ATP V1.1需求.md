### 需求来源
EdgeGallery版本规划。
### 需求描述
1. 引入Test Scenario， Test Suite，Test Cases三层模型概念。管理员可以在管理面对测试场景、测试套、测试用例进行管理。
测试场景、测试套、测试用例的关系如下：
![输入图片说明](https://images.gitee.com/uploads/images/2021/0126/145604_14e1268f_7854857.png "model.png")
2. ATP管理面portal优化（首页统计分析的逻辑实现、测试任务列表支持批量删除）
3. ATP优化问题单（测试报告下载pdf格式、支持用例脚本下载）
4. 应用包添加区分ARM还是X86的标识，应用包部署要部署到对应属性的边缘节点
5. 目前测试用例管理都是在管理面，需求管理员权限才能操作。新增用户面贡献测试用例描述的入口，支持用户用md文件的方式提交测试用例描述方案
6. 目前的测试用例都是自动化执行的，为了适配CLAB等不能自动化完成的用例，新增支持手工测试用例的情况，管理员在后台手动修改手工测试用例的状态
7. 部署ATP应用测试用例数量，新增7个测试用例
8. ATP执行分权控制
### Usecase

### 涉及模块 && EPIC && Story
涉及模块：ATP
EPIC: 
- [【ATP】ATP测试用例扩充](https://gitee.com/OSDT/dashboard/issues?id=I2NU3F)  
- [【ATP】测试用例模型增强](https://gitee.com/OSDT/dashboard/issues?id=I2EBZ2)  
STORIES:
- [ATP测试用例扩充到总数14个](https://gitee.com/OSDT/dashboard/issues?id=I2NU9C)  
- [ATP管理面portal优化](https://gitee.com/OSDT/dashboard/issues?id=I2EC3E)  
- [ATP优化问题单（用例下载，测试报告下载格式修改](https://gitee.com/OSDT/dashboard/issues?&id=I2EC47)
- [支持在用户面贡献测试用例](https://gitee.com/OSDT/dashboard/issues?id=I2EC4R) 
- [支持手工测试 用例](https://gitee.com/OSDT/dashboard/issues?id=I2EC5P) 
- [ATP应用包区分ARM、X86](https://gitee.com/OSDT/dashboard/issues?id=I2EC1E)
- [ATP应用支持分权控制，区分不同角色进行差异化功能展现](https://gitee.com/OSDT/dashboard/issues?id=I2E6SQ)
### 业务流程
如下链接低保真设计
[ATP V1.1需求详细设计](https://gitee.com/edgegallery/community/blob/master/Architecture%20WG/Requirements/v1.1/%E5%BA%94%E7%94%A8%E6%B5%8B%E8%AF%95%E5%B9%B3%E5%8F%B0V1.1%E9%9C%80%E6%B1%82%E8%AE%BE%E8%AE%A1.pptx)
### 接口定义
如下链接API接口设计
[ATP V1.1需求详细设计](https://gitee.com/edgegallery/community/blob/master/Architecture%20WG/Requirements/v1.1/%E5%BA%94%E7%94%A8%E6%B5%8B%E8%AF%95%E5%B9%B3%E5%8F%B0V1.1%E9%9C%80%E6%B1%82%E8%AE%BE%E8%AE%A1.pptx)

### 工作量预估 estimate effort
7.4k