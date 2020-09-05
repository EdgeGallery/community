[TOC]
# App Traffic Rules API
## 功能介绍

为APP提供定位服务。

# 接口清单
## appTrafficRules
## /applications/{appInstanceId}/traffic_rules GET
此方法查询有关与MEC应用程序实例关联的所有流量规则的信息。

### 请求参数
|参数 |位置 | 是否必选 | 类型 | 说明 |
|-----|-----|----|------|-----|
|appInstanceId | path | Y | String | 应用实例ID |
### 返回数据
|返回码 |描述|
|-----|-----|
|200 | 成功 |
|400 | 错误的请求 |
|403 | 禁止访问 |
|404 | 未找到资源 |

## /applications/{appInstanceId}/traffic_rules/{trafficRuleId} GET
此方法查询有关与MEC应用程序实例关联的所有流量规则的信息。

### 请求参数
|参数 |位置 | 是否必选 | 类型 | 说明 |
|-----|-----|----|------|-----|
|appInstanceId | path | Y | String | 应用实例ID |
|trafficRuleId | path | Y | String | 流量规则ID |
### 返回数据
|返回码 |描述|
|-----|-----|
|200 | 成功 |
|400 | 错误的请求 |
|403 | 禁止访问 |
|404 | 未找到资源 |

## /applications/{appInstanceId}/traffic_rules/{trafficRuleId} PUT
此方法修改有关与MEC应用程序实例关联的所有流量规则的信息。

### 请求参数
|参数 |位置 | 是否必选 | 类型 | 说明 |
|-----|-----|----|------|-----|
|appInstanceId | path | Y | String | 应用实例ID |
|trafficRuleId | path | Y | String | 流量规则ID |
### 返回数据
|返回码 |描述|
|-----|-----|
|200 | 成功 |
|400 | 错误的请求 |
|403 | 禁止访问 |
|404 | 未找到资源 |
|412 | 前提条件失败 |