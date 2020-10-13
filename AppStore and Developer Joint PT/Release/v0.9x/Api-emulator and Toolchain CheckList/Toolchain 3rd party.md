# 三方件漏洞排查情况

## 1. toolchain三方件依赖排查结果

已经确认的漏洞如下（说明：依赖的三方件已经是最新版本。若其包含的漏洞无法解决。）：

| 模块      |  依赖组件  |版本| 漏洞         |  漏洞级别             |   漏洞描述 |  是否解决 |    说明    |
| ---------| --------------------|----------------------|----------------|----------------- |----------------|-----------------|---------------------------------|
|toolchain| netty-transport  | 4.1.36.Final | CVE-2019-20444  |  Critical        |HttpObjectDecoder.java in Netty before 4.1.44 allows an HTTP header that lacks a colon, which might be interpreted as a separate header with an incorrect syntax, or might be interpreted as an "invalid fold." | 否        | servicecomb 1.3.0 被动依赖的三方件     |
|toolchain| netty-transport  | 4.1.36.Final | CVE-2019-20445  |  Critical        |HttpObjectDecoder.java in Netty before 4.1.44 allows a Content-Length header to be accompanied by a second Content-Length header, or by a Transfer-Encoding header.| 否        | servicecomb 1.3.0 被动依赖的三方件     |
|toolchain| netty-transport  | 4.1.36.Final | CVE-2020-11612  |  Critical        |The ZlibDecoders in Netty 4.1.x before 4.1.46 allow for unbounded memory allocation while decoding a ZlibEncoded byte stream. An attacker could send a large ZlibEncoded byte stream to the Netty server, forcing the server to allocate all of its free memory to a single decoder. | 否        | servicecomb 1.3.0 被动依赖的三方件     |
|toolchain| netty-transport  | 4.1.36.Final | CVE-2019-16869  |  High       |Netty before 4.1.42.Final mishandles whitespace before the colon in HTTP headers (such as a "Transfer-Encoding : chunked" line), which leads to HTTP request smuggling. | 否    | servicecomb 1.3.0 被动依赖的三方件     |

