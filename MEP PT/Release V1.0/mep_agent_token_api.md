### mep-agent获取token接口

URL：
```
GET /mep-agent/v1/token
```

请求参数：
 |名称  |          类型 |    描述       |                                      IN     |  必选|
 |---|---|---|---|---|
 | Content-Type |   String  | MIME类型，  填"application/json"                        |               header  | 是|

Body参数：

无

请求示例：

```
GET /mep-agent/v1/token

{
  "header": [
    {
      "key": "Content-Type",
      "value": "application/json"
    }
  ]
}
```

返回参数：

返回码：200

OK

|名称     |       类型  |   描述   |               必选|
  |---|---|---|---|
  |access\_token |  String  | Token|                 是|
  |token\_type     |String   |Token类型（Bearer）|   是|
  |expires\_in    | int     | 失效时间             | 是|

返回示例：

```
HTTP/1.1 200 OK
{
	"access_token":"xxxx",
	"token_type":"Bearer",
	"expires_in":"3600"
}

```
