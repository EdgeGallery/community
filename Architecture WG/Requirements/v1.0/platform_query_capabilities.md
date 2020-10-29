### 需求来源 （Requirement Source）

- EdgeGallery version plan


### 需求描述 （Requirement Description）
- List the edge node capabilities on portal.
- Support listing of capabilities per edge node.
- Support listing of consumers of each capability per edge node.


### Usecase
There are two major catagories of the capabilities in edge node, 
- Platform capabilities like service provided by MEC applications, locations, network etc.
- Infrastructure capabilities like GPU, compute, memory etc.

#### Platform Capabilities
MEP handles complete platform capabilities, which includes
- **Application services** - These are capabilities, which are provided by MEC applications running in MEP platform. Registered to the MEP over Mp1 interfaces as services.
- **5G-Core** - 5G core capabilities provided by the data-plane registered over Mp1 interfaces.
- **aPaaS** - Application PaaS capabilities provided by the EdgeGallery platform registered over Mp1 interface.
The capabilities registered to MEP can be queried over the Mm5 interface by MECM, which then can be listed on the portal.

#### Infrastructure Capabilities
MECM handles the infrastructure capabilities query

### Modules && EPIC && Story
- MECM 
    - Handles the Infrastructure Capabilities.
    - Query the Platform Capabilities from MEP.
    - List the capabilities on portal per edge node with the consumer list for each capability.
- MEP 
    - Support Platform Capabilities query over Mm5 interface.
    - Provide list of capabilities registered to MEP along with it's consumers list at that moment.

### MECM Solution for Hardware & Software Capability
https://gitee.com/edgegallery/community/blob/master/MECM%20PT/Release%20V1.0/Capabilities%20Exposure%20Solution.pptx


### 业务流程
![Query flow](https://images.gitee.com/uploads/images/2020/1029/152205_3918141b_7625394.png "quwery_flow1.png")

### 接口定义 (Interface Definition)
#### 1. Mp1 (MECAPP/5G/aPaaS -> MEP)
Reference: 
- https://forge.etsi.org/rep/mec/gs011-app-enablement-api/blob/master/MecAppSupportApi.json
- https://forge.etsi.org/rep/mec/gs011-app-enablement-api/blob/master/MecServiceMgmtApi.json
  
|  Method | URL  | Body|
|---|---|---|
| POST  | /mec_service_mgmt/v1/applications/{appInstanceId}/services  | <pre>{<br>  "serName": "ExampleService",<br>  "serCategory": {<br>    "href": "/example/catalogue1",<br>    "id": "id12345",<br>    "name": "RNI",<br>    "version": "version1"<br>  },<br>  "version": "ServiceVersion1",<br>  "state": "ACTIVE",<br>  "transportId": "Rest1",<br>  "transportInfo": {<br>    "id": "TransId12345",<br>    "name": "REST",<br>    "description": "REST API",<br>    "type": "REST_HTTP",<br>    "protocol": "HTTP",<br>    "version": "2.0",<br>    "endpoint": {},<br>    "security": {<br>      "oAuth2Info": {<br>        "grantTypes": [<br>          "OAUTH2_CLIENT_CREDENTIALS"<br>        ],<br>        "tokenEndpoint": "/mecSerMgmtApi/security/TokenEndPoint"<br>      }<br>    },<br>    "implSpecificInfo": {}<br>  },<br>  "serializer": "JSON",<br>  "scopeOfLocality": "MEC_SYSTEM",<br>  "consumedLocalOnly": false,<br>  "isLocal": true<br>}</pre>|
| POST  | /mec_service_mgmt/v1/applications/{appInstanceId}/subscriptions | <pre>{<br>  "subscriptionType": "SerAvailabilityNotificationSubscription",<br>  "callbackReference": "string",<br>  "filteringCriteria": {<br>    "serInstanceIds": [<br>      "ServiceInstance123"<br>    ],<br>    "serNames": [<br>      "ExampleService"<br>    ],<br>    "serCategories": [<br>      {<br>        "href": "/example/catalogue1",<br>        "id": "id12345",<br>        "name": "RNI",<br>        "version": "version1"<br>      }<br>    ],<br>    "states": [<br>      "ACTIVE"<br>    ],<br>    "isLocal": true<br>  }<br>}</pre> |

#### 2. Mm5 (MECM -> MEP)

|  Method | URL  | Request | Response |
|---|---|---|---|
| GET  | /mepcfg/mec_platform_config/v1/capabilities  | None | <pre>[{<br>	"capabilityId": "ServiceInstance123",<br>	"capabilityName": "ExampleService",<br>	"status": "ACTIVE",<br>	"version": "1.0",<br>	"consumers": [<br>		{<br>			"applicationInstanceId": "5abe4782-2c70-4e47-9a4e-0ee3a1a0fd1f"<br>		}<br>	]<br>}]</pre> |
| GET  | /mepcfg/mec_platform_config/v1/capabilities/{capabilityId}  | None | <pre>{<br>	"capabilityId": "ServiceInstance123",<br>	"capabilityName": "ExampleService",<br>	"status": "ACTIVE",<br>	"version": "1.0",<br>	"consumers": [<br>		{<br>			"applicationInstanceId": "5abe4782-2c70-4e47-9a4e-0ee3a1a0fd1f"<br>		}<br>	]<br>}</pre> |


### 工作量评估 Estimate effort
0.5K Loc

### 技术选型 Selection
None