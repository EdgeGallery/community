### 需求来源
- EdgeGallery 版本规划
- ETSI MEC 011

### 需求描述 （Requirement Description）
- Support service heartbeat in MEP for app service to keep liveness

### Usecase
![Flow of MEC service deregistration](https://images.gitee.com/uploads/images/2020/0810/110313_dd5b9558_7624977.png "Configuration of DNS rules.png")
![Service liveness update using PATCH](https://images.gitee.com/uploads/images/2020/0810/110346_359bafc3_7624977.png "activation.png")


#### 如图所示，典型Usecase
- DNS Configuration
    - The DNS rules can be configured by the NM over Mm2.
    - The AppD along with DNS configurations can be querried from MEO over Mm3.
- DNS 
    - The DNS rules serving a particular application instance can be activated by the NM over Mm2.
    - The DNS rules can be activated from MEC APP over Mp1.
- DNS
    - The DNS rules serving a particular application instance can be deactivated by the NM over Mm2.
    - The DNS rules can be deactivated from MEC APP over Mp1.


### 涉及模块 && EPIC && Story

- MEP 
    - mepserver add app heartbeat API, referring to etsi mec 011 latest stable draft
- MEP-Agent
    - mepagent call service liveness api to keep heartbeat for app service


### 业务流程
![Service liveness update Flow](https://images.gitee.com/uploads/images/2020/0810/111242_57abb6a4_7624977.png "Configuration.png")


### 接口定义
#### 1. Mp1 (MECAPP -> MEP)
Reference: https://forge.etsi.org/rep/mec/gs011-app-enablement-api/blob/master/MecAppSupportApi.json
|  Method | URL  | Body|
|---|---|---|
| GET  | /applications/{appInstanceId}/service/{serviceId}/liveness| - |
| PATCH  | /applications/{appInstanceId}/service/{serviceId}/liveness | {<br> "ServiceLivenessUpdate": {"state": "ACTIVE"<br>}<br>} |



```
      "responses": {
        "200": {
          "$ref": "#/components/responses/ServiceLivenessInfo.200"
        },
        "400": {
          "$ref": "#/components/responses/Error.400"
        },
        "403": {
          "$ref": "#/components/responses/Error.403"
        },
        "404": {
          "$ref": "#/components/responses/Error.404"
        }

```

### 工作量评估 Estimate effort
1.5K Loc