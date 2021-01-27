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
| endpoint |  String  | endpoint |   Yes|

Return example:

```
HTTP/1.1 200 OK
{

}

```
