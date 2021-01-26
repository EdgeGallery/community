### 需求来源
EdgeGallery 1.1版本规划对用户管理特性进行部分优化，平台支持分权控制。

### 需求描述
一、用户管理特性优化
1. 支持通过邮箱注册和忘记密码后找回
（1）用户注册时增加邮箱地址（选填），电话号码改为选填，去掉注册验证，去掉公司信息和性别
（2）忘记密码后支持通过邮箱地址找回
2. 支持个人帐号中心管理，可以查看与修改个人信息，可以修改密码
3. 支持统一用户管理，可以查询、停用/启用用户。其中查询支持条件过滤、分页和排序。

二、支持分权控制
1. 统一用户管理支持设置用户所属角色。
2. 各应用平台（Developer、AppStore、MECM、ATP、Lab）区分登录用户所属角色，进行分权控制，为不同角色提供差异化功能。
       
### Usecase

### 涉及模块 && EPIC && Story
涉及模块：UserMgmt，Developer/AppStore/MECM/ATP/Lab

EPIC: 
- [【UserMgmt】EdgeGallery平台用户管理特性优化](https://gitee.com/OSDT/dashboard/issues?id=I2E6AI)  

STORIES:
- [【UserMgmt】支持用户通过邮箱注册](https://gitee.com/OSDT/dashboard/issues?id=I2E9LE)  
- [【UserMgmt】支持用户忘记密码后通过邮箱找回](https://gitee.com/OSDT/dashboard/issues?id=I2E9LG)  
- [【UserMgmt】支持用户统一管理基本查询展示功能](https://gitee.com/OSDT/dashboard/issues?id=I2E9M8)  
- [【UserMgmt】用户统一管理功能支持对用户停用/启用](https://gitee.com/OSDT/dashboard/issues?id=I2E9MB)  
- [【UserMgmt】支持通过用户个人帐号中心查看个人信息](https://gitee.com/OSDT/dashboard/issues?id=I2E9LK)  
- [【UserMgmt】用户个人帐号中心支持修改个人信息](https://gitee.com/OSDT/dashboard/issues?id=I2E9LL)  
- [【UserMgmt】用户个人帐号中心支持修改个人登录密码](https://gitee.com/OSDT/dashboard/issues?id=I2E9LM)  
- [【Developer】Developer应用首页集成个人帐号中心](https://gitee.com/OSDT/dashboard/issues?id=I2E9LS)  
- [【AppStore】AppStore应用首页集成个人帐号中心](https://gitee.com/OSDT/dashboard/issues?id=I2E9LX)  
- [【Mecm】Mecm应用首页集成个人帐号中心](https://gitee.com/OSDT/dashboard/issues?id=I2E9M3)  
- [【ATP】ATP应用首页集成个人帐号中心](https://gitee.com/OSDT/dashboard/issues?id=I2E9M4)  
- [【Lab】Lab应用首页集成个人帐号中心](https://gitee.com/OSDT/dashboard/issues?id=I2E9M5)  


EPIC: 
- [【UserMgmt】EdgeGallery平台支持用户分权控制](https://gitee.com/OSDT/dashboard/issues?id=I1QGSH)  

STORIES:
- [【UserMgmt】用户统一管理功能支持设置用户所属角色](https://gitee.com/OSDT/dashboard/issues?id=I23FRE)  
- [【Developer】Developer应用支持分权控制，区分不同角色进行差异化功能展现](https://gitee.com/OSDT/dashboard/issues?id=I2E6S7)  
- [【AppStore】AppStore应用支持分权控制，区分不同角色进行差异化功能展现](https://gitee.com/OSDT/dashboard/issues?id=I2E6SE)  
- [【Mecm】Mecm应用支持分权控制，区分不同角色进行差异化功能展现](https://gitee.com/OSDT/dashboard/issues?id=I2E6SS)  
- [【ATP】ATP应用支持分权控制，区分不同角色进行差异化功能展现](https://gitee.com/OSDT/dashboard/issues?id=I2E6SQ)  
- [【Lab】Lab应用支持分权控制，区分不同角色进行差异化功能展现](https://gitee.com/OSDT/dashboard/issues?id=I2E6T4)  

### 界面设计
参考Edge Gallery1.1 用户管理特性优化与分权控制方案分析.pptx

### 业务流程
不涉及架构变动，业务流程与当前已有业务的处理流程一致。

### 数据库结构变更
1. 用户信息表中新增字段：“MAILADDRESS(邮箱地址)”，允许为空
2. 电话号码字段：TELEPHONENUMBER，由原来的NOT NULL改为允许为空
3. 邮箱地址创建唯一索引
4. ISALLOWED字段用来支持启用/停用
5. 公司信息和性别两个字段废弃不用


### 接口定义
涉及新增的接口：
|模块|接口名称|Method |URL |接口描述
|----|---------|-------|-------|----|--------
|UserMgmt|查询用户列表|POST| /v1/users/list | 查询用户列表，支持条件过滤、分页和排序
|UserMgmt|停用用户|PUT| /v1/users/{userId}/status/disallow |停用用户
|UserMgmt|启用用户|PUT| /v1/users/{userId}/status/allow |启用用户
|UserMgmt|设置用户角色|PUT| /v1/users/{userId}/settings |设置用户所属角色
|UserMgmt|修改用户密码|PUT| /v1/users/{userId}/password |修改用户密码
|UserMgmt|获取邮件验证码|PUT| /v1/identity/mail |获取邮件验证码

涉及修改的接口：
|模块|接口名称|Method |URL |接口描述|修改说明
|----|---------|-------|-------|----|--------
|UserMgmt|获取当前登录用户信息|GET| /auth/login-info |获取当前登录用户的信息|返回邮箱地址，去掉公司信息和性别
|UserMgmt|修改用户信息|PUT| /v1/users/{userId} |修改用户信息|支持更新邮箱地址，去掉对所属角色的更新，返回结构补充邮箱地址，去掉公司信息和性别
|UserMgmt|注册用户|PUT| /v1/users |注册用户|扩充邮箱地址，不再对用户进行验证，去掉公司信息和性别的处理
|UserMgmt|校验重复用户|POST| /v1/users/action/uniqueness |校验重复用户|扩充支持按照邮箱地址校验重复性
|UserMgmt|登录|POST| /login |用户登录|判断用户已停用则不允许登录，返回报错信息
|UserMgmt|找回密码|PUT| /v1/users/password |忘记密码后找回密码|扩充支持按照邮箱地址来校验验证码
|Website-Gateway|获取当前登录用户信息|GET| /auth/login-info |获取当前登录用户的信息|扩充返回跳转到个人中心的链接地址，供各应用进行集成

涉及删除的接口：
|模块|接口名称|Method |URL |接口描述|删除原因
|----|---------|-------|-------|----|--------
|UserMgmt|获取全部用户|GET| /v1/users |获取全部用户|未使用；本访问会提供POST /v1/users/list(查询用户列表)

### 各应用平台的工作
1. 首页控制在登录状态下提供“个人帐号”链接，通过/auth/login-info返回的personalInfoPage跳转至个人帐号中心
2. 前台分权控制
（1）根据/auth/login-info返回的authorities来判断访问当前应用平台的角色，控制管理员、租户、访客可操作的功能，隐藏无权访问的功能菜单
（2）针对每个定义了路由的菜单，对应功能界面加载时也要判断是否有权限，没有权限则报错，防止越权访问
3. 后台权限判断
各应用的后台接口根据分权要求，通过PreAuthorize注解和hasRole表达式控制分权，没有权限返回错误

### 工作量预估 estimate effort
端到端6.7k