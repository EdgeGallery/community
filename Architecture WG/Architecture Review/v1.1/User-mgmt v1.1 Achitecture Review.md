### 发布时间
- 2021.2.1

### 项目概述 Project Overview
User Management 用户管理模块，为EdgeGallery提供了基本的用户增删改查功能，定义了用户的角色与权限，并且支持了单点登录（Single Sign On）能力。
目前支持的用户角色有：Admin/Tenatn/Guest，支持的平台有：AppStore/Developer/MECM/ATP/LAB。


### 从上一个版本开始架构的变化 Architecture changes from last release
- 无变化

### v1.1 引入的新功能特性 New component capabilites for v1.0(Chocolate)
- 为超级管理员admin提供统一用户管理功能界面，可以查询用户、停用/启用用户、设置用户所属角色和可访问平台
- 用户注册优化，去掉公司信息和性别的填写，增加邮箱地址，同时去掉注册过程中的手机号码验证
- 支持忘记密码后通过邮箱地址找回密码
- 支持个人帐号中心，可以修改个人信息和密码

### 数据库结构变更 Database Structure Change


用户信息表(tbl_tenant)结构变更：
- 新增字段：“MAILADDRESS(邮箱地址)”，允许为空，创建唯一索引
- 电话号码字段：TELEPHONENUMBER，由原来的NOT NULL改为允许为空
- ISALLOWED字段用来支持启用/停用
- 公司信息和性别两个字段废弃不用
- 新增CREATETIME、MODIFYTIME两个字段，分别用来记录创建时间(即注册时间)和修改时间(暂不用)。用户列表查询默认按照创建时间升序排序。

### 新增或者修改的接口 New or modified interfaces
#### 新增接口
##### 1、查询用户列表

用户管理员查询用户列表

```
Resource URI: /v1/users/list
Method: POST
Role: APPSTORE_ADMIN or DEVELOPER_ADMIN or MECM_ADMIN or LAB_ADMIN or ATP_ADMIN
User: admin
```

| Name      | Definition |type   | Required|Describe |
| --------- | ---------- |-------|---------|-------- |
| username | 用户名 |body|否|用于模糊查询条件的用户名关键字 |
| mailAddress| 邮箱地址 |body|否|用于模糊查询条件的邮箱地址关键字 |
| telephone| 电话号码 |body|否|用于模糊查询条件的电话号码关键字 |
| role| 角色 |body|是|ALL--全部;ADMIN--管理员;TENANT--租户;GUEST--访客 |
| status| 状态 |body|是|-1--全部;0--停用;1--启用 |
| createTime| 创建时间(即注册时间)范围 |body|否|包含两个元素的字符串数组，分别表示起始日期和终止日期，用来过滤查询该时间范围内注册的用户 |
| offset| 查询起始位置 |body|是|分页控制参数，表示查询起始位置 |
| limit| 查询记录数 |body|是|分页控制参数，表示每页查询记录数 |
| sortBy|排序字段 |body|否|用于排序的字段名。USERNAME--按用户名排序;CREATETIME--按创建(注册)时间排序 |
| sortOrder|排序顺序 |body|否|排序顺序。ASC--升序;DESC--降序 |


Example request:
```json
{
  "username": "",
  "mailAddress": "",
  "telephone": "",
  "role": "",
  "status": -1,
  "createTime": ["2021-1-21", "2021-2-1"]
  "queryCtrl": {
    "offset": 0,
    "limit": 10,
    "sortBy": "USERNAME",
    "sortOrder": "DESC"
  }
}
```

Example response:
```json
response 200 OK
{
  "totalCount": 20,
  "userList": [
    {
      "username": "TestUser1",
      "mailAddress": "test@edgegallery.org",
      "telephone": "13812345678",
      "userId": "37423702-051a-46b4-bf2b-f190759cc0b8",
      "permissions": [
        {
          "platform": "APPSTORE",
          "role": "GUEST"
        }
      ],
      "allowed": true,
      "createTime": "2021-1-21 10:24:45"
    }
  ]
}

response 400 Bad Request
{
  "code": 0,
  "message": "string",
  "detail": "string"
}

response 403 FORBIDDEN
{
  "code": 0,
  "message": "string",
  "detail": "string"
}

response 500 INTERNAL SERVER ERROR
{
  "code": 0,
  "message": "string",
  "detail": "string"
}
```

##### 2、停用用户

用户管理员可以根据用户ID停用用户，其中用户ID为非内置用户的用户ID。用户停用后将无法登录。

```
Resource URI: /v1/users/{userId}/status/disallow
Method: PUT
Role: APPSTORE_ADMIN or DEVELOPER_ADMIN or MECM_ADMIN or LAB_ADMIN or ATP_ADMIN
User: admin
```

| Name      | Definition |type   | Required|Describe |
| --------- | ---------- |-------|---------|-------- |
| userId    | 用户ID      | path  | 是      |uuid     |

Example request:
```json
```

Example response:
```json
response 200 OK

response 400 Bad Request
{
  "code": 0,
  "message": "string",
  "detail": "string"
}

response 403 FORBIDDEN
{
  "code": 0,
  "message": "string",
  "detail": "string"
}
```

##### 3、启用用户

用户管理员可以根据用户ID启用用户，其中用户ID为非内置用户的用户ID。

```
Resource URI: /v1/users/{userId}/status/disallow
Method: PUT
Role: APPSTORE_ADMIN or DEVELOPER_ADMIN or MECM_ADMIN or LAB_ADMIN or ATP_ADMIN
User: admin
```

| Name      | Definition |type   | Required|Describe |
| --------- | ---------- |-------|---------|-------- |
| userId    | 用户ID      | path  | 是      |uuid     |

Example request:
```json
```

Example response:
```json
response 200 OK

response 400 Bad Request
{
  "code": 0,
  "message": "string",
  "detail": "string"
}

response 403 FORBIDDEN
{
  "code": 0,
  "message": "string",
  "detail": "string"
}
```


##### 4、设置用户角色

用户管理员可以根据用户ID设置其所属角色和可访问平台。

```
Resource URI: /v1/users/{userId}/settings
Method: PUT
Role: APPSTORE_ADMIN or DEVELOPER_ADMIN or MECM_ADMIN or LAB_ADMIN or ATP_ADMIN
User: admin
```

| Name      | Definition |type   | Required|Describe |
| --------- | ---------- |-------|---------|-------- |
| userId    | 用户ID      | path  | 是      | uuid     |
| platform  | 可访问平台      | body  | 是      | 用户可访问的平台    |
| role| 角色      | body  | 是      | 用户所属角色    |

Example request:
```json
{
  "permissions": [
    {
      "platform": "APPSTORE",
      "role": "GUEST"
    }
  ]
}
```

Example response:
```json
response 200 OK

response 400 Bad Request
{
  "code": 0,
  "message": "string",
  "detail": "string"
}

response 403 FORBIDDEN
{
  "code": 0,
  "message": "string",
  "detail": "string"
}
```

##### 5、获取邮件验证码

发送验证码到指定的邮箱，发送成功返回200，发送失败返回417

```
Resource URI: /v1/identity/mail
Method: POST
```

| Name      | Definition |type   | Required|Describe |
| --------- | ---------- |-------|---------|-------- |
| mailAddress    | 邮箱地址      | body  | 是      |用以接收验证码的邮箱地址     |

Example request:
```json
{
  "mailAddress": "test@edgegallery.org"
}
```

Example response:
```json
response 200 OK

response 400 Bad Request
{
  "code": 0,
  "message": "string",
  "detail": "string"
}

response 417 Expectation Failed
{
  "code": 0,
  "message": "string",
  "detail": "string"
}
```

#### 修改接口
##### 1、获取当前登录用户信息
```
Resource URI: /v1/auth/login-info
Method: GET
```
主要修改点：返回信息中去掉公司信息和性别，增加邮箱地址

##### 2、修改用户信息
```
Resource URI: /v1/users/{userId}
Method: PUT
```
主要修改点：
(1)请求与响应结构中去掉公司信息和性别、增加邮箱地址
(2)请求与响应结构中去掉permissions权限信息：该接口被用来支持修改个人信息，而权限是不能由用户自己修改的。

##### 3、注册用户
```
Resource URI: /v1/users
Method: POST
```
主要修改点：
(1)请求与响应结构中去掉公司信息和性别、增加邮箱地址
(2)去掉手机验证处理
(3)补充按照邮箱地址校验唯一性

##### 4、校验重复用户
```
Resource URI: /v1/users/action/uniqueness
Method: POST
```
主要修改点：扩充按照邮箱地址校验唯一性

##### 5、登录
```
Resource URI: /login
Method: POST
```
主要修改点：
(1)控制已停用的用户不允许登录
(2)支持通过邮箱地址登录

##### 5、Website-Gateway模块的接口：获取当前登录用户信息
```
Resource URI: /auth/login-info
Method: GET
```
主要修改点：扩充返回跳转到个人帐号中心的链接地址，供各应用平台首页集成“个人帐号中心”

#### 删除接口
##### 1、获取全部用户
```
Resource URI: /v1/users
Method: GET
```
删除原因：当前未使用；v1.1版本提供POST /v1/users/list接口用来支持查询用户，可以分页、过滤、排序。


### 接口API参考文档 Reference to the interfaces
https://gitee.com/edgegallery/docs/blob/master/Projects/User%20Management/User_Interfaces.md

### 功能约束 What are the system limits
- 1 查询用户列表、停用/启用用户、设置用户所属角色只支持admin用户操作
- 2 已停用的用户不支持设置其所属角色
- 3 未开启邮箱通知功能时，不能通过邮箱找回密码