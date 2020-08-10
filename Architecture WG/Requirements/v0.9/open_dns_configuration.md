### 需求来源


- EdgeGallery 版本规划
- ETSI MEC 010.1
- ETSI MEC 010.2
- ETSI MEC 011


### 需求描述 （Requirement Description）
- Support DNS rules activation from OSS
- Support DNS rules deactivation from OSS
- Support DNS rules configuration from OSS
- AppD support a description of DNS Rules which provide specific FQDNs to be registered into the MEC system
- DNS rule activation/deactivation from MECAPP


### Usecase
![Configuration of DNS rules](https://images.gitee.com/uploads/images/2020/0810/110313_dd5b9558_7624977.png "Configuration of DNS rules.png")
![Activation](https://images.gitee.com/uploads/images/2020/0810/110346_359bafc3_7624977.png "activation.png")
![Deactivation](https://images.gitee.com/uploads/images/2020/0810/110408_d6fb1d4d_7624977.png "deactivation.png")
![AppD query](https://images.gitee.com/uploads/images/2020/0810/145618_51d6b1de_7625394.png "mm3.png")
![Configuration from MECAPP](https://images.gitee.com/uploads/images/2020/0810/145147_0490cbda_7625394.png "mp1.png")


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
- MECM 
    - Implement Mm2, and Mm3 interfaces for DNS support.
    - Use Mm5 interface to configure the DNS rules in MEP.
    - MECM portal should have the option to configure the exposed application IP(Ingress/LB IP).
    - Configure the DNS via MEP server after every application deployment and termination over Mm5 interface.
- MEP 
    - Add Mp1 interface support for MECAPP to activate, deactivate and query the DNS rules.
    - Add Mm5 interface support to create, modify and delete the DNS rules.
    - Implement a programmable DNS server and deploy it in the MEC host. Add support in MEP to configure the DNS server.


### 业务流程
![Configuration Flow](https://images.gitee.com/uploads/images/2020/0810/111242_57abb6a4_7624977.png "Configuration.png")


### 接口定义
#### 1. Mp1 (MECAPP -> MEP)
Reference: https://forge.etsi.org/rep/mec/gs011-app-enablement-api/blob/master/MecAppSupportApi.json
|  Method | URL  | Body|
|---|---|---|
| GET  | /applications/{appInstanceId}/dns_rules  | [<br>  {<br>    "dnsRuleId": "dnsRule1",<br>    "domainName": "www.example.com",<br>    "ipAddressType": "IP_V6",<br>    "ipAddress": "192.0.2.0",<br>    "ttl": "?",<br>    "state": "ACTIVE"<br>  }<br>]|
| GET  | /applications/{appInstanceId}/dns_rules/{dnsRuleId} | {<br> "dnsRuleId": "dnsRule1",<br>"domainName": "www.example.com",<br>  "ipAddressType": "IP_V6",<br>  "ipAddress": "192.0.2.0",<br>  "ttl": "?",<br>  "state": "ACTIVE"<br>} |
| PUT  | /applications/{appInstanceId}/dns_rules/{dnsRuleId} |{<br> "dnsRuleId": "dnsRule1",<br>"domainName": "www.example.com",<br>  "ipAddressType": "IP_V6",<br>  "ipAddress": "192.0.2.0",<br>  "ttl": "?",<br>  "state": "ACTIVE"<br>}  |



```
{
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
  }
}

```

#### 2. Mm5 (MECM -> MEP)

|  Method | URL  | Request | Response |
|---|---|---|---|
| GET  | /config/{appInstanceId}/dns_rules  | None | <pre>[<br>  {<br>    "dnsRuleId": "dnsRule1",<br>    "domainName": "www.example.com",<br>    "ipAddressType": "IP_V6",<br>    "ipAddress": "192.0.2.0",<br>    "ttl": "0",<br>    "state": "ACTIVE"<br>  }<br>]</pre> |
| GET  | /config/{appInstanceId}/dns_rules/{dnsRuleId} | None | <pre>{<br>  "dnsRuleId": "dnsRule1",<br>  "domainName": "www.example.com",<br>  "ipAddressType": "IP_V6",<br>  "ipAddress": "192.0.2.0",<br>  "ttl": "30",<br>  "state": "ACTIVE"<br>}</pre> |
| POST | /config/{appInstanceId}/dns_rules | <pre>{<br>  "dnsRuleId": "dnsRule1",<br>  "domainName": "www.example.com",<br>  "ipAddressType": "IP_V6",<br>  "ipAddress": "192.0.2.0",<br>  "ttl": "30" //Optional<br>}</pre> | <pre>{}</pre> |
| PUT  | /config/{appInstanceId}/dns_rules/{dnsRuleId} |<pre>{<br>  "state": "ACTIVE"<br>}</pre> | <pre>{}</pre> |
| DELETE | /config/{appInstanceId}/dns_rules/{dnsRuleId} | <pre>{}</pre> | <pre>{}</pre> |


#### 3. Iterface (MEP -> DNS Server)

|  Method | URL  | Request | Response |
|---|---|---|---|
| PUT | dns/management/v1/rrecord | <pre>[<br>  {<br>    "zone": ".",<br>    "rr": [<br>      {<br>        "name": "www.example.com.",<br>        "type": "A",<br>        "class": "IN",<br>        "ttl": 30,<br>        "rData": [ "172.16.104.22"]<br>      },<br>      {<br>        "name": "www.example1.com.",<br>        "type": "A",<br>        "class": "IN",<br>        "ttl": 30,<br>        "rData": ["172.16.104.40",<br>                  "172.16.104.38",<br>                  "172.16.104.27"]<br>      }<br>    ]<br>  }<br>]</pre> | <pre>{}</pre> |
| DELETE | dns/management/v1/rrecord/{fqdn}/{rrType} | <pre>{}</pre> | <pre>{}</pre> |


### 工作量评估 Estimate effort
1 person*month

### 技术选型 Selection
- Introduce new DNS Server (miekg/dns)
![miekg/dns](https://images.gitee.com/uploads/images/2020/0810/113504_952b9f2f_7624977.png "dns.png")