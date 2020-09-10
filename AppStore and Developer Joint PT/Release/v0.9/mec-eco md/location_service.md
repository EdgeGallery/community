*   [位置服务接口说明](#位置服务接口说明)
    *   [功能介绍](#功能介绍)

*   [接口清单](#接口清单)
     *   [zones](#zones)
     *   [subscriptions](#subscriptions)
# 位置服务接口说明
## 功能介绍

为APP提供定位服务。

# 接口清单
## zones
## /users GET
获取指定地域、接入点的用户列表

### 请求参数
|参数 |位置 | 是否必选 | 类型 | 说明 |
|-----|-----|----|------|-----|
|zoneId | queryParam |Y| String | 区域ID |
|accessPointId | queryParam |Y| String | 访问标识符 |
### 返回数据
|返回码 |描述|
|-----|-----|
|200 | 成功 |

## /users/{userId} GET
获取指定用户的详细信息

### 请求参数
|参数 |位置 | 是否必选 | 类型 | 说明 |
|-----|-----|----|------|-----|
|userId | path |Y| String | 区域ID |
### 返回数据
|返回码 |描述|
|-----|-----|
|200 | 成功 |

## /users/{userId} GET
获取指定用户的详细信息

### 请求参数
|参数 |位置 | 是否必选 | 类型 | 说明 |
|-----|-----|----|------|-----|
|userId | path |Y| String | 区域ID |
### 返回数据
|返回码 |描述|
|-----|-----|
|200 | 成功 |

## subscriptions
## /subscriptions/zonalTraffic GET
检索所有活动订阅（获取区域跟踪更改通知的订阅）。

### 返回数据
|返回码 |描述|
|-----|-----|
|200 | 成功 |

## /subscriptions/zonalTraffic POST
订阅事件，订阅区域跟踪更改的事件
### 请求参数
|参数 |位置 | 是否必选 | 类型 | 说明 |
|-----|-----|----|------|-----|
|zonalTrafficSubscription | body |Y| String | 区域交通订阅 |
### 返回数据
|返回码 |描述|
|-----|-----|
|200 | 成功 |

```json
{
  "clientCorrelator": "0123",
  "callbackReference": {
    "notifyURL": "http://clientApp.example.com/location_notifications/123456"
  },
  "zoneId": "zone01",
  "interestRealm": [
    "LA"
  ],
  "userEventCriteria": [
    "Entering"
  ],
  "duration": "0",
  "resourceURL": "http://example.com/exampleAPI/location/v1/subscriptions/userTracking/subscription123"
}
```

## /subscriptions/zonalTraffic/{subscriptionId} GET
查询指定跟踪订阅的详情
### 请求参数
|参数 |位置 | 是否必选 | 类型 | 说明 |
|-----|-----|----|------|-----|
|subscriptionId | path |Y| String | 区域交通订阅 |
### 返回数据
|返回码 |描述|
|-----|-----|
|200 | 成功 |

## /subscriptions/zonalTraffic/{subscriptionId} DELETE
删除指定的跟踪订阅
### 请求参数
|参数 |位置 | 是否必选 | 类型 | 说明 |
|-----|-----|----|------|-----|
|subscriptionId | path |Y| String | 区域交通订阅 |
### 返回数据
|返回码 |描述|
|-----|-----|
|200 | 成功 |

## /subscriptions/zonalStatus GET
获取所有区域状态订阅
### 返回数据
|返回码 |描述|
|-----|-----|
|200 | 成功 |

## /subscriptions/zonalStatus POST
订阅事件，区域状态改变的事件
### 请求参数
|参数 |位置 | 是否必选 | 类型 | 说明 |
|-----|-----|----|------|-----|
|zoneStatusSubscription | body |Y| object | 区域交通订阅 |
### 返回数据
|返回码 |描述|
|-----|-----|
|200 | 成功 |

```
{
  "clientCorrelator": "0123",
  "resourceURL": "http://example.com/exampleAPI/location/v1/subscriptions/userTracking/subscription123",
  "callbackReference": {
    "notifyURL": "http://clientApp.example.com/location_notifications/123456"
  },
  "zoneId": "zone01",
  "numberOfUsersZoneThreshold": 40,
  "numberOfUsersAPThreshold": 20,
  "operationStatus": [
    "Serviceable"
  ]
}
```

## /subscriptions/zoneStatus/{subscriptionId} GET
获取指定的区域状态订阅详情
### 请求参数
|参数 |位置 | 是否必选 | 类型 | 说明 |
|-----|-----|----|------|-----|
|subscriptionId | path | Y | String | 区域交通订阅 |
### 返回数据
|返回码 |描述|
|-----|-----|
|200 | 成功 |

## /subscriptions/zoneStatus/{subscriptionId} DELETE
删除指定的区域状态订阅
### 请求参数
|参数 |位置 | 是否必选 | 类型 | 说明 |
|-----|-----|----|------|-----|
|subscriptionId | path | Y | String | 区域交通订阅 |
### 返回数据
|返回码 |描述|
|-----|-----|
|200 | 成功 |