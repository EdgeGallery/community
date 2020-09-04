# 三方件漏洞排查情况

## 1. website-gateway三方件依赖排查结果

已经确认的漏洞如下（说明：依赖的三方件已经是最新版本。若其包含的漏洞无法解决。）：

| 模块      |  依赖组件  |版本| 漏洞         |  漏洞级别             |   漏洞描述 |  是否解决 |    说明    |
| ---------| --------------------|----------------------|----------------|----------------- |----------------|-----------------|---------------------------------|
|websitite-gateway|log4j-core-2.12.1   | 2.12.1 | CVE-2020-9488      | Low        |mproper validation of certificate with host mismatch in Apache Log4j SMTP appender. This could allow an SMTPS connection to be intercepted by a man-in-the-middle attack which could leak any log messages sent through that appender. | 否        |已升级到2.12.1版本  |
|websitite-gateway|spring-cloud-starter-zuul-1.4.4.RELEASE.jar | 1.4.4.RELEASE | CVE-2020-5412      | MEDIUM        |Spring Cloud Netflix, versions 2.2.x prior to 2.2.4, versions 2.1.x prior to 2.1.6, and older unsupported versions allow applications to use the Hystrix Dashboard proxy.stream endpoint to make requests to any server reachable by the server hosting the dashboard. A malicious user, or attacker, can send a request to other servers that should not be exposed publicly. | 否        | 已经升级到社区最新版本     |