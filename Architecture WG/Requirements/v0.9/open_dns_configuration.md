### 需求来源


- EdgeGallery 版本规划
- ETSI MEC 010.1
- ETSI MEC 010.2


### 需求描述 （Requirement Description）
- Support DNS rules activation
- Support DNS rules deactivation
- Support DNS rules configuration
- AppD support a description of DNS Rules which provide specific FQDNs to be registered into the MEC system


### Usecase
![Configuration of DNS rules](https://images.gitee.com/uploads/images/2020/0810/110313_dd5b9558_7624977.png "Configuration of DNS rules.png")
![activation](https://images.gitee.com/uploads/images/2020/0810/110346_359bafc3_7624977.png "activation.png")
![deactivation](https://images.gitee.com/uploads/images/2020/0810/110408_d6fb1d4d_7624977.png "deactivation.png")
#### 如图所示，典型Usecase
- DNS Configuration
    - The DNS rules can be configured by the NM.
- DNS 
    - The DNS rules serving a particular application instance can be activated by the NM.
- DNS
    - The DNS rules serving a particular application instance can be deactivated by the NM

### 涉及模块 && EPIC && Story
- MECM 
    - implement Mm5, Mm2, and Mm3 interfaces for DNS.
    - MECM portal should have the option to configure the exposed application IP(Ingress/LB IP).
    - configure the DNS via MEP server after every application deployment and termination
- MEP 
    - implement Mm5 and Mp1 interface for DNS.


### 业务流程
![Configuration Flow](https://images.gitee.com/uploads/images/2020/0810/111242_57abb6a4_7624977.png "Configuration.png")
### 接口定义
Reference: https://forge.etsi.org/rep/mec/gs011-app-enablement-api/blob/master/MecAppSupportApi.json
|  Method | URL  | Body|
|---|---|---|
| GET  | /applications/{appInstanceId}/dns_rules  | [<br>  {<br>    "dnsRuleId": "dnsRule1",<br>    "domainName": "www.example.com",<br>    "ipAddressType": "IP_V6",<br>    "ipAddress": "192.0.2.0",<br>    "ttl": "?",<br>    "state": "ACTIVE"<br>  }<br>]|
| GET  | /applications/{appInstanceId}/dns_rules/{dnsRuleId} | {<br> "dnsRuleId": "dnsRule1",<br>"domainName": "www.example.com",<br>  "ipAddressType": "IP_V6",<br>  "ipAddress": "192.0.2.0",<br>  "ttl": "?",<br>  "state": "ACTIVE"<br>} |
| PUT  | /applications/{appInstanceId}/dns_rules/{dnsRuleId} |{<br> "dnsRuleId": "dnsRule1",<br>"domainName": "www.example.com",<br>  "ipAddressType": "IP_V6",<br>  "ipAddress": "192.0.2.0",<br>  "ttl": "?",<br>  "state": "ACTIVE"<br>}  |



```
   "/applications/{appInstanceId}/dns_rules": {
      "parameters": [
        {
          "$ref": "#/components/parameters/Path.AppInstanceId"
        }
      ],
      "get": {
        "description": "This method retrieves information about all the DNS rules associated with a MEC application instance.",
        "operationId": "ApplicationsDnsRules_GET",
        "tags": [
          "appDnsRules"
        ],
        "responses": {
          "200": {
            "$ref": "#/components/responses/ApplicationsDnsRules.200"
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
        }
      }
    },
    "/applications/{appInstanceId}/dns_rules/{dnsRuleId}": {
      "parameters": [
        {
          "$ref": "#/components/parameters/Path.AppInstanceId"
        },
        {
          "$ref": "#/components/parameters/Path.DnsRuleId"
        }
      ],
      "get": {
        "description": "This method retrieves information about a DNS rule associated with a MEC application instance.",
        "operationId": "ApplicationsDnsRule_GET",
        "tags": [
          "appDnsRules"
        ],
        "responses": {
          "200": {
            "$ref": "#/components/responses/ApplicationsDnsRule.200"
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
        }
      },
      "put": {
        "description": "This method activates, de-activates or updates a traffic rule.",
        "operationId": "ApplicationsDnsRule_PUT",
        "tags": [
          "appDnsRules"
        ],
        "responses": {
          "200": {
            "$ref": "#/components/responses/ApplicationsDnsRule.200"
          },
          "400": {
            "$ref": "#/components/responses/Error.400"
          },
          "403": {
            "$ref": "#/components/responses/Error.403"
          },
          "404": {
            "$ref": "#/components/responses/Error.404"
          },
          "412": {
            "$ref": "#/components/responses/Error.412"
          }
        },
        "requestBody": {
          "$ref": "#/components/requestBodies/ApplicationsDnsRule"
        }
      }
    },
    "/applications/{appInstanceId}/subscriptions": {
      "parameters": [
        {
          "$ref": "#/components/parameters/Path.AppInstanceId"
        }
      ],
      "get": {
        "description": "The GET method may be used to request information about all subscriptions for this requestor. Upon success, the response contains entity body with all the subscriptions for the requestor.",
        "operationId": "ApplicationsSubscriptions_GET",
        "tags": [
          "appSubscriptions"
        ],
        "responses": {
          "200": {
            "$ref": "#/components/responses/ApplicationsSubscriptions.200"
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
        }
      },
      "post": {
        "description": "The POST method may be used to create a new subscription. One example use case is to create a new subscription to the MEC service availability notifications. Upon success, the response contains entity body describing the created subscription.",
        "operationId": "ApplicationsSubscriptions_POST",
        "tags": [
          "appSubscriptions"
        ],
        "responses": {
          "201": {
            "$ref": "#/components/responses/ApplicationsSubscriptions.201"
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
        },
        "requestBody": {
          "$ref": "#/components/requestBodies/ApplicationsSubscriptions"
        },
        "callbacks": {
          "appTerminationNotification": {
            "$ref": "#/components/callbacks/AppTerminationNotification"
          }
        }
      }
    }

```

### 工作量评估 Estimate effort
1 person*month

### 技术选型 Selection
- Introduce new DNS Server (miekg/dns)
![miekg/dns](https://images.gitee.com/uploads/images/2020/0810/113504_952b9f2f_7624977.png "dns.png")