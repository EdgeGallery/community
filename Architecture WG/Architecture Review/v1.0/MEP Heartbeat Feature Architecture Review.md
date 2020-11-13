 **Release time**: 12.13

 **Detailed design start time**: 9.20

 **Project Overview**:
Each MEC service instance that has previously registered in MEC platform and is configured for heartbeat shall send
heartbeat message to the MEC platform periodically in order to show that the MEC service instance is still operational.
When the MEC platform has not received the heartbeat for a certain amount of time, the MEC platform considers
that the service instance can no longer be discovered.

[Architecture design](https://gitee.com/edgegallery/community/blob/master/Architecture%20WG/Requirements/v1.0/service_heartbeat.md)

 **API introduction**:
 
|  Method | URL  | Description|
|---|---|---|
| GET  | /applications/\{appInstanceId\}/service/\{serviceId\}/liveness | Get individual liveness information for a service |
| PUT  | /applications/\{appInstanceId\}/service/\{serviceId\}/liveness | Send heartbeat message to MEP |



 **Interface API reference document**:
[Mep API doc](https://gitee.com/edgegallery/docs/blob/master/Projects/MEP/MEP_Interfaces.md)

 **System limitations** 
NA