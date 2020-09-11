*   [带宽服务接口说明](#带宽服务接口说明)
    *   [功能介绍](#功能介绍)

*   [接口清单](#接口清单)
    *   [bwm](#bwm)
    *   [/bw_allocations GET](#/bw-allocations-GET)
    *   [/bw_allocations POST](#/bw_allocations-POST)
    *   [/bw_allocations/{allocationId} GET](#/bw_allocations/{allocationId}-GET)
    *   [/bw_allocations/{allocationId} PUT](#/bw_allocations/{allocationId}-PUT)
    *   [/bw_allocations/{allocationId} PATCH](#/bw_allocations/{allocationId}-PATCH)
    *   [/bw_allocations/{allocationId} DELETE](#/bw_allocations/{allocationId}-DELETE)
   

# 带宽服务接口说明
## 功能介绍

为APP提供网络宽带业务相关功能。

# 接口清单
## bwm
## /bw_allocations GET
查看服务，用于查看一个可用的宽带分配服务资源列表。

### 返回数据
|返回码 |描述|
|-----|-----|
|200 | 成功 |
|400 | 错误的请求 |
|403 | 禁止访问 |
|404 | 未找到资源 |


## /bw_allocations POST
注册服务，用于创建一个可用的宽带分配服务资源。
### 请求参数

|参数 |位置 | 是否必选 | 类型 | 说明 |
|-----|-----|----|------|-----|
|bwInfo | body |Y| bwInfo | bwInfo结构体 |

```json
{
  "timeStamp": {
    "seconds": 0,
    "nanoSeconds": 0
  },
  "appInsId": "string",
  "requestType": "APPLICATION_SPECIFIC_BW_ALLOCATION",
  "sessionFilter": [
    {
      "sourceIp": "string",
      "sourcePort": [
        "string"
      ],
      "dstAddress": "string",
      "dstPort": [
        "string"
      ],
      "protocol": "string"
    }
  ],
  "fixedBWPriority": "not defined in the present document",
  "fixedAllocation": "string",
  "allocationDirection": "00 = Downlink (towards the UE)"
}

```

### 返回数据
|返回码 |描述|
|-----|-----|
|200 | 成功 |
|400 | 错误的请求 |
|403 | 禁止访问 |
|404 | 未找到资源 |

## /bw_allocations/{allocationId} GET
查看服务，通过分配服务ID查看一个可用的宽带分配服务资源列表。
### 请求参数
|参数 |位置 | 是否必选 | 类型 | 说明 |
|-----|-----|----|------|-----|
|allocationId | path |Y| String | 服务资源的实例ID，类型为UUID |
### 返回数据
|返回码 |描述|
|-----|-----|
|200 | 成功 |
|400 | 错误的请求 |
|403 | 禁止访问 |
|404 | 未找到资源 |

## /bw_allocations/{allocationId} PUT
修改服务，通过分配服务ID查看一个可用的宽带分配服务资源列表。
### 请求参数
|参数 |位置 | 是否必选 | 类型 | 说明 |
|-----|-----|----|------|-----|
|allocationId | path |Y| String | 服务资源的实例ID，类型为UUID |
|bwInfo | body |Y| bwInfo | bwInfo结构体 |

### 返回数据
|返回码 |描述|
|-----|-----|
|200 | 成功 |
|400 | 错误的请求 |
|403 | 禁止访问 |
|404 | 未找到资源 |

## /bw_allocations/{allocationId} PATCH
此方法更新有关特定的带宽分配资源的信息。
### 请求参数
|参数 |位置 | 是否必选 | 类型 | 说明 |
|-----|-----|----|------|-----|
|allocationId | path |Y| String | 服务资源的实例ID，类型为UUID |
|bwInfo | body |Y| bwInfo | bwInfo结构体 |
### 返回数据
|返回码 |描述|
|-----|-----|
|200 | 成功 |
|400 | 错误的请求 |
|403 | 禁止访问 |
|404 | 未找到资源 |

## /bw_allocations/{allocationId} DELETE
删除服务，通过分配服务ID删除服务资源。
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
