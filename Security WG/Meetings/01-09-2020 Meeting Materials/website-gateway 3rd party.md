# 三方件漏洞排查情况

## 1. user-mgmt三方件依赖排查结果

已经确认的漏洞如下（说明：依赖的三方件已经是最新版本。若其包含的漏洞无法解决。）：

| 模块      |  依赖组件  |版本| 漏洞         |  漏洞级别             |   漏洞描述 |  是否解决 |    说明    |
| ---------| --------------------|----------------------|----------------|----------------- |----------------|-----------------|---------------------------------|
|user-mgmt|spring-security-core   | 5.2.6.RELEASE | CVE-2018-1258       | High        |Spring Framework version 5.0.5 when used in combination with any versions of Spring Security contains an authorization bypass when using method security. An unauthorized malicious user can gain unauthorized access to methods that should be restricted. | 否        |已经升级到5.2.x的最新版本，5.3.x版本升级后会和servicecomb不兼容  |
|user-mgmt|spring-security-jwt   | 1.1.11.RELEASE | CVE-2018-1258       | High        |Spring Framework version 5.0.5 when used in combination with any versions of Spring Security contains an authorization bypass when using method security. An unauthorized malicious user can gain unauthorized access to methods that should be restricted. | 否        | 已经升级到社区最新版本     |