### 发布时间 详细设计开始的第一周
- 2020.12.31

### 项目概述 Project Overview



### 从上一个版本开始架构的变化 Architecture changes from last release
- 无变化

### v1.0 引入的新功能特性 New component capabilites for v1.0(Chocolate)
- 1 增加Guest默认账号，首次访问链接使用Guest登录。Guest用户只能查看AppStore、Developer、MECM、ATP功能，不能编辑修改
- 2 增加ATP平台的用户定义，分为ADMIN、TENANT、GUEST角色
- 3 增加修改用户、修改密码

### 新增或者修改的接口 New or modified interfaces
#### 新增接口
##### 2.4 查询用户

用户管理员查询所有的用户信息

```
Resource URI: /v1/users
Method: GET
Role: APPSTORE_ADMIN or DEVELOPER_ADMIN or MECM_ADMIN or LAB_ADMIN or ATP_ADMIN
```

| Name      | Definition |type   | Required|Describe |
| --------- | ---------- |-------|---------|-------- |


Example request:
```json
{
  "username": "TestUser1",
  "telephone": "13812345678"
}
```

Example response:
```json
response 200 OK
[
  {
    "username": "TestUser1",
    "company": "company",
    "gender": "male",
    "telephone": "13812345678",
    "userId": "37423702-051a-46b4-bf2b-f190759cc0b8",
    "permissions": [
      {
        "platform": "APPSTORE",
        "role": "GUEST"
      }
    ]
  }
]

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

##### 2.5 删除用户

用户管理员可以根据用户ID删除任何用户

```
Resource URI: /v1/users/{userId}
Method: DELETE
Role: APPSTORE_ADMIN or DEVELOPER_ADMIN or MECM_ADMIN or LAB_ADMIN or ATP_ADMIN
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


##### 2.6 修改用户

用户管理员可以根据用户ID修改用户信息，返回修改后的信息。

```
Resource URI: /v1/users/{userId}
Method: PUT
Role: APPSTORE_ADMIN or DEVELOPER_ADMIN or MECM_ADMIN or LAB_ADMIN or ATP_ADMIN
```

| Name      | Definition |type   | Required|Describe |
| --------- | ---------- |-------|---------|-------- |
| userId    | 用户ID      | path  | 是      |uuid     |

Example request:
```json
{
  "username": "TestUser1",
  "company": "company",
  "gender": "male",
  "telephone": "13812345678",
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
{
  "username": "TestUser1",
  "company": "company",
  "gender": "male",
  "telephone": "13812345678",
  "userId": "37423702-051a-46b4-bf2b-f190759cc0b8",
  "permissions": [
    {
      "platform": "APPSTORE",
      "role": "GUEST"
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
```

#### 修改接口
- 无

#### 如有，他们是否是后向兼容的 If modified, are the backwards compatible


### 接口API 简述 interface naming
列出所有API的介绍

### 接口API参考文档 Reference to the interfaces
列出对应的swagger yaml即可
- 如有标准参考，可以附上标准文档链接
- 具体实现的Swaggeryaml，也附上对应的docs链接即可。

### 系统的限制目前有哪些 What are the system limits
如操作系统，用户权限等等