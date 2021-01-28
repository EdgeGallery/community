#### 1. Get producer endpoint by service name
Applicaiontion can call this API to get producer endpoint from mepserver.
URL
```
GET /mep-agent/v1/endpoint/:serName
```
Request parameters:

 | **Name** | **Type** | **Description** | **IN** | **Required** |
 | --- | --- | --- | --- | --- |
 | Content-Type |  String  | MIME type, fill in "application/json"   | header  | Yes|
 | serName |  String  | service name   | path | Yes |

Body parameters:

None

Example request:

```
GET /mep-agent/v1/endpoint/serviceName

{
  "header": [
    {
      "key": "Content-Type",
      "value": "application/json"
    }
  ]
}
```

Return parameters:

Return code: 200 OK

|Name     |       Type  |   Description   |  Required|
|---|---|---|---|
| endpoint |  Object  | endpoint | Yes|
|&gt;uris  | Array\[String\]|   URI格式的服务入口信息列表|  Yes|
|&gt;addresses | Array\[Object\] |  服务入口信息地址列表（IP地址+端口号）  | No|
|&gt;&gt;host   |         String      |      IP地址     |  No|
|&gt;&gt;port   |         String     |       端口号            |  No|
|&gt;alternative|        String     |       已实现格式或者外部规范定义的服务入口信息        | No|

Return example:

```
HTTP/1.1 200 OK
{
    "endpoint": {
        "uris": [
            "https://mep-api-gw.mep:8443/VideoService145da803354a611ebb15e"
        ],
        "addresses": null,
        "alternative": null
    }
}
```
