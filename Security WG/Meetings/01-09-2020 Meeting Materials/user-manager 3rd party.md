# 三方件漏洞排查情况

## 1. user-mgmt三方件依赖排查结果

已经确认的漏洞如下（说明：依赖的三方件已经是最新版本。若其包含的漏洞无法解决。）：

| 模块      |  依赖组件  |版本| 漏洞         |  漏洞级别             |   漏洞描述 |  是否解决 |    说明    |
| ---------| --------------------|----------------------|----------------|----------------- |----------------|-----------------|---------------------------------|
|user-mgmt| rxnetty  | 0.4.9 | CVE-2015-2156       | high        |Netty before 3.9.8.Final, 3.10.x before 3.10.3.Final, 4.0.x before 4.0.28.Final, and 4.1.x before 4.1.0.Beta5 and Play Framework 2.x before 2.3.9 might allow remote attackers to bypass the httpOnly flag on cookies and obtain sensitive information by leveraging improper validation of cookie name and value characters. | 否        | servicecomb 1.3.0 被动依赖的三方件     |
|user-mgmt| netty-tcnative-boringssl-static  | 2.0.31.Final | CVE-2015-2156       | high        |Netty before 3.9.8.Final, 3.10.x before 3.10.3.Final, 4.0.x before 4.0.28.Final, and 4.1.x before 4.1.0.Beta5 and Play Framework 2.x before 2.3.9 might allow remote attackers to bypass the httpOnly flag on cookies and obtain sensitive information by leveraging improper validation of cookie name and value characters.| 否        | servicecomb 1.3.0 被动依赖的三方件     |
|user-mgmt| spring-security-core  | 5.2.6.RELEASE | CVE-2018-1258       | high        |Spring Framework version 5.0.5 when used in combination with any versions of Spring Security contains an authorization bypass when using method security. An unauthorized malicious user can gain unauthorized access to methods that should be restricted.| 否        | 已经升级到5.2.x的最新版本，由于servicecomb的限制不能升级到5.3.x    |
