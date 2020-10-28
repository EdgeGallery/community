# Tripartite vulnerability investigation

## 1. Toolchain tripartite dependencies check results

The confirmed vulnerabilities are as follows（Note: the dependent tripartite is already the latest version。）：

| Module      |  Dependent components  |Version| vulnerability|  vulnerability level            |   vulnerability description |  resolved or not |    Description    |
| ---------| --------------------|----------------------|----------------|----------------- |----------------|-----------------|---------------------------------|
|toolchain| netty-transport  | 4.1.36.Final | CVE-2019-20444  |  Critical        |HttpObjectDecoder.java in Netty before 4.1.44 allows an HTTP header that lacks a colon, which might be interpreted as a separate header with an incorrect syntax, or might be interpreted as an "invalid fold." | no        | servicecomb 1.3.0 Passively dependent tripartite     |
|toolchain| netty-transport  | 4.1.36.Final | CVE-2019-20445  |  Critical        |HttpObjectDecoder.java in Netty before 4.1.44 allows a Content-Length header to be accompanied by a second Content-Length header, or by a Transfer-Encoding header.| no| servicecomb 1.3.0 Passively dependent tripartite     |
|toolchain| netty-transport  | 4.1.36.Final | CVE-2020-11612  |  Critical        |The ZlibDecoders in Netty 4.1.x before 4.1.46 allow for unbounded memory allocation while decoding a ZlibEncoded byte stream. An attacker could send a large ZlibEncoded byte stream to the Netty server, forcing the server to allocate all of its free memory to a single decoder. | nno| servicecomb 1.3.0 Passively dependent tripartite     |
|toolchain| netty-transport  | 4.1.36.Final | CVE-2019-16869  |  High       |Netty before 4.1.42.Final mishandles whitespace before the colon in HTTP headers (such as a "Transfer-Encoding : chunked" line), which leads to HTTP request smuggling. | no| servicecomb 1.3.0 Passively dependent tripartite     |

# Screenshots

![输入图片说明](https://images.gitee.com/uploads/images/2020/1028/174219_45403d7c_5504908.png "toolchain.PNG")