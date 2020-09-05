[TOC]
# 服务发现接口说明
## 功能介绍

为APP提供服务注册与发现相关功能。

# 接口清单
## appSubscriptions
## applications/{appInstanceId}/services GET
查看服务，用于查看一个可用的mec服务资源列表。
### 请求参数
|参数 |位置 | 是否必选 | 类型 | 说明 |
|-----|-----|----|------|-----|
|appInstanceId | path |Y| String | app的实例ID，类型为UUID |

### 返回数据
|返回码 |描述|
|-----|-----|
|200 | 成功 |
|400 | 错误的请求 |
|403 | 禁止访问 |
|404 | 未找到资源 |


## /applications/{appInstanceId}/services POST
注册服务，用于创建一个可用的mec服务资源。
### 请求参数

|参数 |位置 | 是否必选 | 类型 | 说明 |
|-----|-----|----|------|-----|
|appInstanceId | path |Y| String | app的实例ID，类型为UUID |
### 返回数据
|返回码 |描述|
|-----|-----|
|200 | 成功 |
|400 | 错误的请求 |
|403 | 禁止访问 |
|404 | 未找到资源 |

## /applications/{appInstanceId}/services/{serviceId} GET
查看资源信息，用于创建一个可用的mec服务资源。
### 请求参数
|参数 |位置 | 是否必选 | 类型 | 说明 |
|-----|-----|----|------|-----|
|appInstanceId | path |Y| String | app的实例ID，类型为UUID |
|serviceId | path |Y| String | 服务实例ID，类型为UUID |
### 返回数据
|返回码 |描述|
|-----|-----|
|200 | 成功 |
|400 | 错误的请求 |
|403 | 禁止访问 |
|404 | 未找到资源 |

## /applications/{appInstanceId}/services/{serviceId} PUT
修改资源信息，用于创建一个可用的mec服务资源。
### 请求参数
|参数 |位置 | 是否必选 | 类型 | 说明 |
|-----|-----|----|------|-----|
|appInstanceId | path |Y| String | app的实例ID，类型为UUID |
|serviceId | path |Y| String | 服务实例ID，类型为UUID |
### 返回数据
|返回码 |描述|
|-----|-----|
|200 | 成功 |
|400 | 错误的请求 |
|403 | 禁止访问 |
|404 | 未找到资源 |

## /applications/{appInstanceId}/services/{serviceId} DELETE
查看资源信息，用于创建一个可用的mec服务资源。
### 请求参数
|参数 |位置 | 是否必选 | 类型 | 说明 |
|-----|-----|----|------|-----|
|appInstanceId | path |Y| String | app的实例ID，类型为UUID |
|serviceId | path |Y| String | 服务实例ID，类型为UUID |
### 返回数据
|返回码 |描述|
|-----|-----|
|200 | 成功 |
|400 | 错误的请求 |
|403 | 禁止访问 |
|404 | 未找到资源 |

## services
## /services GET
查看所有可用服务资源列表

### 返回数据
|返回码 |描述|
|-----|-----|
|200 | 成功 |
|400 | 错误的请求 |
|403 | 禁止访问 |
|404 | 未找到资源 |
|414 | 拒绝处理 |

## /services/{serviceId} GET
通过服务ID查看所有服务资源信息
### 请求参数
|参数 |位置 | 是否必选 | 类型 | 说明 |
|-----|-----|----|------|-----|
|serviceId | path |Y| String | 服务实例ID，类型为UUID |
### 返回数据
|返回码 |描述|
|-----|-----|
|200 | 成功 |
|400 | 错误的请求 |
|403 | 禁止访问 |
|404 | 未找到资源 |

## transports
## /transports
检索有关可用传输列表的信息

### 返回数据
|返回码 |描述|
|-----|-----|
|200 | 成功 |
|400 | 错误的请求 |
|403 | 禁止访问 |
|404 | 未找到资源 |
