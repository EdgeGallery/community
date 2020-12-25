# Tripartite vulnerability investigation

## 1. Developer tripartite dependencies check results

The confirmed vulnerabilities are as follows（Note: the dependent tripartite is already the latest version。）：

| Module      |  Dependent components  |Version| vulnerability|  vulnerability level            |   vulnerability description |  resolved or not |    Description    |
| ---------| --------------------|----------------------|----------------|----------------- |----------------|-----------------|---------------------------------|
|developer| netty-transport  | 4.1.36.Final | CVE-2019-20444  |  Critical        |HttpObjectDecoder.java in Netty before 4.1.44 allows an HTTP header that lacks a colon, which might be interpreted as a separate header with an incorrect syntax, or might be interpreted as an "invalid fold." | no        | servicecomb 1.3.0 Passively dependent tripartite     |
|developer| netty-transport  | 4.1.36.Final | CVE-2019-20445  |  Critical        |HttpObjectDecoder.java in Netty before 4.1.44 allows a Content-Length header to be accompanied by a second Content-Length header, or by a Transfer-Encoding header.| no| servicecomb 1.3.0 Passively dependent tripartite     |
|developer| netty-transport  | 4.1.36.Final | CVE-2020-11612  |  Critical        |The ZlibDecoders in Netty 4.1.x before 4.1.46 allow for unbounded memory allocation while decoding a ZlibEncoded byte stream. An attacker could send a large ZlibEncoded byte stream to the Netty server, forcing the server to allocate all of its free memory to a single decoder. | nno| servicecomb 1.3.0 Passively dependent tripartite     |
|developer| netty-transport  | 4.1.36.Final | CVE-2019-16869  |  High       |org.slf4j.ext.EventData in the slf4j-ext module in QOS.CH SLF4J before 1.8.0-beta2 allows remote attackers to bypass intended access restrictions via crafted data.| no| servicecomb 1.3.0 Passively dependent tripartite     |
|developer|swagger-codegen-cli  | 3.0.21 | CVE-2018-8088 |  Critical        |Netty before 4.1.42.Final mishandles whitespace before the colon in HTTP headers (such as a "Transfer-Encoding : chunked" line), which leads to HTTP request smuggling. | no| Its dependencies are not found in the project dependency tree     |
|developer|swagger-codegen-cli  | 3.0.21 | CVE-2016-6199 |  Critical        |ObjectSocketWrapper.java in Gradle 2.12 allows remote attackers to execute arbitrary code via a crafted serialized object.| no| Its dependencies are not found in the project dependency tree     |
|developer|swagger-codegen-cli  | 3.0.21 | CVE-2019-15052 |  Critical        |he HTTP client in Gradle before 5.6 sends authentication credentials originally destined for the configured host. If that host returns a 30x redirect, Gradle also sends those credentials to all subsequent hosts that the request redirects to. This is similar to CVE-2018-1000007. | no| Its dependencies are not found in the project dependency tree     |

# Screenshots

![输入图片说明](https://images.gitee.com/uploads/images/2020/1225/120117_5892d180_5504908.png "3rd.PNG")