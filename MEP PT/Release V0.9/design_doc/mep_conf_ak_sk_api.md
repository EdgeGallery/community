### 接口定义
#### 1. (MECM -> MEP)
|  Method | URL  | Body|
|---|---|---|
| PUT  | /mepauth/v1/applications/:applicationId/confs | {<br>"authInfo":{<br>"credentials":{<br>"accessKeyId":"HCY8BGCN3",<br>"secretKey":"9zYwf1uabSQY0JTn"<br>}<br>}<br>} |

```
      "responses": {
        "200": {
          "$ref": "#/components/responses/authInfo.200"
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