### 需求来源
- EdgeGallery 版本规划
- ETSI MEC 011

### 需求描述 （Requirement Description）
- Support service heartbeat in MEP for app service to keep liveness

### Usecase

- MEC service deregistration

![Flow of MEC service deregistration](https://images.gitee.com/uploads/images/2020/0811/170749_a5cc1989_7624956.png "mec_service_deregistration.png")


    - Each MEC service instance that has previously registered in MEC platform and is configured for heartbeat shall send heartbeat message to the MEC platform periodically in order to show that the MEC service instance is still operational.
    - The time interval at which the MEC platform shall be contacted is deployment-specific, and is indicated by the MEC platform to the MEC service instance in a successful service registration.
    - When the MEC platform has not received the heartbeat for a configurable amount of time, the MEC platform considers that the service instance can no longer be discovered. The MEC platform notifies the MEC service consumers subscribed to receive notifications of status change of the MEC service instance.
    - MEC service heartbeat, as illustrated in above, consists of the following steps:
        1)	MEC service instance sends a heartbeat message to the MEC platform periodically.
        2)	The MEC platform returns a service heatbeat acknowledgement.


- Service liveness update using PATCH

1.	The MEC application instance that provides MEC service shall send a PATCH request to the resource URI representing the liveness of the service instance.
2.	The MEC platform shall update the liveness resource as follows: It shall record the time when the message was received in the "timeStamp" attribute. Also, if the "state" attribute in the resource contains the value "SUSPENDED" and the "state" attribute in the payload body contains the value "ACTIVE", it shall set the value of the "state" attribute in the resource to that value. 
3.	If there is no payload body to return upon successful execution, the MEC platform shall return "204 No Content". 
4.	Alternatively, if the MEC platform intends to instruct the application to use a new liveness "interval" value for the service instance, it shall return "200 OK" along with the full ServiceLivenessInfo.

### 涉及模块 && EPIC && Story

- MEP 
    - mepserver add app heartbeat API, referring to etsi mec 011 latest stable draft
- MEP-Agent
    - mepagent call service liveness api to keep heartbeat for app service


### 业务流程
![Service liveness update using PATCH](https://images.gitee.com/uploads/images/2020/0811/170835_62ba43c1_7624956.png "service_liveness_update.png")

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
#### MEP Server changes:

1. MP1 interface to support the New heartbeat messages.

2. MEP Server Support to handle these new feature of heartbeat and its corresponding registrations to ServiceComb.

#### MEP Agent:
1. By Default we would support for Heart Beat. Two messages for GET and PATCH must be supported in MEP Agent as well.
2. Immediately after Registration of Service is successful, Send regular PATCH message to MEP server on the received URL of Registration response message.


####  Security Design applicability:
1. No seperate Security to be considered for this Feature other than Log security as MP1 is already secured channel.



### 工作量评估 Estimate effort
2K Loc
