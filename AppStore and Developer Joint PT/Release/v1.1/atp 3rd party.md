# Tripartite vulnerability investigation

## 1. ATP tripartite dependencies check results(Critical:3,High:7)

The confirmed vulnerabilities are as follows：

| Module      |  Dependent components  |Version| vulnerability|  vulnerability level            |   vulnerability description |  resolved or not |    Description    |
| ---------| --------------------|----------------------|----------------|----------------- |----------------|-----------------|---------------------------------|
|ATP| netty-transport  | 4.1.36.Final | CVE-2019-20444  |  Critical        |HttpObjectDecoder.java in Netty before 4.1.44 allows an HTTP header that lacks a colon, which might be interpreted as a separate header with an incorrect syntax, or might be interpreted as an "invalid fold." | no        | servicecomb 1.3.2 Passively dependent tripartite     |
|ATP| netty-transport  | 4.1.36.Final | CVE-2019-20445  |  Critical        |HttpObjectDecoder.java in Netty before 4.1.44 allows a Content-Length header to be accompanied by a second Content-Length header, or by a Transfer-Encoding header.| no| servicecomb 1.3.2 Passively dependent tripartite     |
|ATP| vertx-core  | 3.9.4 | CVE-2019-17640  |  Critical        |TIn Eclipse Vert.x 3.4.x up to 3.9.4, 4.0.0.milestone1, 4.0.0.milestone2, 4.0.0.milestone3, 4.0.0.milestone4, 4.0.0.milestone5, 4.0.0.Beta1, 4.0.0.Beta2, and 4.0.0.Beta3, StaticHandler doesn't correctly processes back slashes on Windows Operating systems, allowing, escape the webroot folder to the current working directory | no| servicecomb 1.3.2 Passively dependent tripartite     |
|ATP|foundation-ssl  | 1.3.2 | CVE-2004-0009 |  High|	Apache-SSL 1.3.28+1.52 and earlier, with SSLVerifyClient set to 1 or 3 and SSLFakeBasicAuth enabled, allows remote attackers to forge a client certificate by using basic authentication with the "one-line DN" of the target user. | no| servicecomb 1.3.2 Passively dependent tripartite     |
|ATP|mybatis-spring  | 2.0.6 | CVE-2020-26945 |  High|	MyBatis before 3.5.6 mishandles deserialization of object streams. | no| mybatis-spring-boot-starter 2.1.4 Passively dependent tripartite     |
|ATP|mybatis-spring-boot-starter  | 2.1.4 | CVE-2020-26945 |  High|	MyBatis before 3.5.6 mishandles deserialization of object streams. | no| Already the latest version     |
|ATP|netty-transport  | 4.1.36.Final | CVE-2019-16869 |  High|	Netty before 4.1.42.Final mishandles whitespace before the colon in HTTP headers (such as a "Transfer-Encoding : chunked" line), which leads to HTTP request smuggling. | no| servicecomb 1.3.2 Passively dependent tripartite     |
|ATP|netty-transport  | 4.1.36.Final | CVE-2020-11612 |  High|	The ZlibDecoders in Netty 4.1.x before 4.1.46 allow for unbounded memory allocation while decoding a ZlibEncoded byte stream. An attacker could send a large ZlibEncoded byte stream to the Netty server, forcing the server to allocate all of its free memory to a single decoder. | no| servicecomb 1.3.2 Passively dependent tripartite     |
|ATP| spring-security-core  | 5.1.5.RELEASE | CVE-2018-1258 |  High|	Spring Framework version 5.0.5 when used in combination with any versions of Spring Security contains an authorization bypass when using method security. An unauthorized malicious user can gain unauthorized access to methods that should be restricted. | no| spring-security-oauth2-autoconfigure.version 2.2.2.RELEASE Passively dependent tripartite  |
|ATP| spring-core   | 5.1.8.RELEASE | CVE-2020-5398 |  High|  In Spring Framework, versions 5.2.x prior to 5.2.3, versions 5.1.x prior to 5.1.13, and versions 5.0.x prior to 5.0.16, an application is vulnerable to a reflected file download (RFD) attack when it sets a "Content-Disposition" header in the response where the filename attribute is derived from user supplied input. | no| servicecomb 1.3.2 Passively dependent tripartite     |

# Screenshots

