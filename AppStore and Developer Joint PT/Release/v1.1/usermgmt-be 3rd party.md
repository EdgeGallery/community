# Tripartite vulnerability investigation

## UserMgmt-Be tripartite dependencies check results(Critical:1, High:4)

The confirmed vulnerabilities are as follows（Note: the dependent tripartite is already the latest version。）：

| Module      |  Dependent components  |Version| vulnerability|  vulnerability level            |   vulnerability description |  resolved or not |    Description    |
| ---------| --------------------|----------------------|----------------|----------------- |----------------|-----------------|---------------------------------|
|usermgmt| vertx-core  | 3.9.4 | CVE-2019-17640  |  Critical        |TIn Eclipse Vert.x 3.4.x up to 3.9.4, 4.0.0.milestone1, 4.0.0.milestone2, 4.0.0.milestone3, 4.0.0.milestone4, 4.0.0.milestone5, 4.0.0.Beta1, 4.0.0.Beta2, and 4.0.0.Beta3, StaticHandler doesn't correctly processes back slashes on Windows Operating systems, allowing, escape the webroot folder to the current working directory | no| servicecomb 1.3.2 Passively dependent tripartite     |
|usermgmt|foundation-ssl  | 1.3.2 | CVE-2004-0009 |  High|	Apache-SSL 1.3.28+1.52 and earlier, with SSLVerifyClient set to 1 or 3 and SSLFakeBasicAuth enabled, allows remote attackers to forge a client certificate by using basic authentication with the "one-line DN" of the target user. | no| servicecomb 1.3.2 Passively dependent tripartite     |
|usermgmt|mybatis-spring  | 2.0.6 | CVE-2020-26945 |  High|	MyBatis before 3.5.6 mishandles deserialization of object streams. | no| mybatis-spring-boot-starter 2.1.4 Passively dependent tripartite     |
|usermgmt|mybatis-spring-boot-starter  | 2.1.4 | CVE-2020-26945 |  High|	MyBatis before 3.5.6 mishandles deserialization of object streams. | no| Already the latest version     |
|usermgmt| spring-security-core  | 5.3.8.RELEASE | CVE-2018-1258 |  High|	Spring Framework version 5.0.5 when used in combination with any versions of Spring Security contains an authorization bypass when using method security. An unauthorized malicious user can gain unauthorized access to methods that should be restricted. | no| Can only update to the highest version of 5.3, if update to version 5.4.x, you will get an error when you perform the test hard.     |


# Screenshots
## Critical
![输入图片说明](https://images.gitee.com/uploads/images/2021/0327/143459_d7744752_8279549.png "UserMgmt-Be-3rd.png")

## High
![输入图片说明](https://images.gitee.com/uploads/images/2021/0327/143558_55fd6c30_8279549.png "UserMgmt-Be-3rd-High.png")