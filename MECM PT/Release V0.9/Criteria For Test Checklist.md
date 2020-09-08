# Criterial for Test Execution
## Starting Criteria for test Execution
| Check Item | Check Result | Remark |
|-----------|-------------|----------|
|完成详细设计/架构更新 Complete Detail Design/architecture updating |  OK  |       |
|所有task关闭                                                      |  OK  |       |
|所有Gitee门户外部bug类问题关闭 bugs（vital/blocked） out of gitee are all closed |  OK  |     |
|所有新开发代码都有自动化测试用例 All recently developed code has autotest cases |   OK |       |
|满足单元测试覆盖率要求 staisfy code coverage rate for unit test |     OK         |          |
|项目完成开发者自验证 Complete self-verification of project      |     OK         |          |
|确认三方件归一化扫描结果 3rd party components are all scanned and have consistent versions  |     OK          |         |
|确认代码许可证合规扫描结果   licenses for 3rd party components are all scanned and their compliance is ensured|         |        
|近3天日构建成功率100%  daily build for last 3 days are all succeeded.   |      OK                  |


### License for thirdparty
mecm-inventory:

|  Check Result    | License of third party components  |
|------------------| ----------------------------------------------------------------|
|  OK  |     (The BSD License) antlr (antlr:antlr:2.7.7 - no url defined)  |
|  OK  |     (Apache License, Version 2.0) ClassMate (com.fasterxml:classmate:1.5.1 - https://github.com/FasterXML/java-classmate)  |
|  OK  |     (The Apache Software License, Version 2.0) Jackson-annotations (com.fasterxml.jackson.core:jackson-annotations:2.11.2 - http://github.com/FasterXML/jackson)  |
|  OK  |     (The Apache Software License, Version 2.0) Jackson-core (com.fasterxml.jackson.core:jackson-core:2.11.2 - https://github.com/FasterXML/jackson-core)  |
|  OK  |     (The Apache Software License, Version 2.0) jackson-databind (com.fasterxml.jackson.core:jackson-databind:2.11.2 - http://github.com/FasterXML/jackson)  |
|  OK  |     (The Apache Software License, Version 2.0) Jackson-dataformat-YAML (com.fasterxml.jackson.dataformat:jackson-dataformat-yaml:2.11.2 - https://github.com/FasterXML/jackson-dataformats-text)  |
|  OK  |     (The Apache Software License, Version 2.0) Jackson datatype: jdk8 (com.fasterxml.jackson.datatype:jackson-datatype-jdk8:2.11.2 - https://github.com/FasterXML/jackson-modules-java8/jackson-datatype-jdk8)  |
|  OK  |     (The Apache Software License, Version 2.0) Jackson datatype: JSR310 (com.fasterxml.jackson.datatype:jackson-datatype-jsr310:2.11.2 - https://github.com/FasterXML/jackson-modules-java8/jackson-datatype-jsr310)  |
|  OK  |     (The Apache Software License, Version 2.0) Jackson-module-parameter-names (com.fasterxml.jackson.module:jackson-module-parameter-names:2.11.2 - https://github.com/FasterXML/jackson-modules-java8/jackson-module-parameter-names)  |
|  OK  |     (Apache 2.0) Gson (com.google.code.gson:gson:2.8.2 - https://github.com/google/gson/gson)  |
|  OK  |     (The Apache Software License, Version 2.0) Guava: Google Core Libraries for Java (com.google.guava:guava:20.0 - https://github.com/google/guava/guava)  |
|  TBD  |     (MPL 2.0, and EPL 1.0) H2 Database Engine (com.h2database:h2:1.4.190 - http://www.h2database.com)  |
|  OK  |     (The Apache Software License, Version 2.0) project ':json-path' (com.jayway.jsonpath:json-path:2.4.0 - https://github.com/jayway/JsonPath)  |
|  TBD  |     (EDL 1.0) Jakarta Activation (com.sun.activation:jakarta.activation:1.2.2 - https://github.com/eclipse-ee4j/jaf/jakarta.activation)  |
|  TBD  |     (Eclipse Distribution License - v 1.0) istack common utility code runtime (com.sun.istack:istack-commons-runtime:3.0.11 - https://projects.eclipse.org/projects/ee4j/istack-commons/istack-commons-runtime)  |
|  OK  |     (Apache License 2.0) JSON library from Android SDK (com.vaadin.external.google:android-json:0.0.20131108.vaadin1 - http://developer.android.com/sdk)  |
|  OK  |     (The Apache Software License, Version 2.0) HikariCP (com.zaxxer:HikariCP:3.4.5 - https://github.com/brettwooldridge/HikariCP)  |
|  OK  |     (Apache License, Version 2.0) Apache Commons Codec (commons-codec:commons-codec:1.14 - https://commons.apache.org/proper/commons-codec/)  |
|  OK  |     (Apache License, Version 2.0) Apache Commons IO (commons-io:commons-io:2.6 - http://commons.apache.org/proper/commons-io/)  |
|  OK  |     (The Apache Software License, Version 2.0) Commons Lang (commons-lang:commons-lang:2.6 - http://commons.apache.org/lang/)  |
|  OK  |     (The Apache Software License, Version 2.0) Apache Commons Logging (commons-logging:commons-logging:1.2 - http://commons.apache.org/proper/commons-logging/)  |
|  OK  |     (The Apache Software License, Version 2.0) springfox-core (io.springfox:springfox-core:2.9.2 - https://github.com/springfox/springfox)  |
|  OK  |     (The Apache Software License, Version 2.0) springfox-schema (io.springfox:springfox-schema:2.9.2 - https://github.com/springfox/springfox)  |
|  OK  |     (The Apache Software License, Version 2.0) springfox-spi (io.springfox:springfox-spi:2.9.2 - https://github.com/springfox/springfox)  |
|  OK  |     (The Apache Software License, Version 2.0) springfox-spring-web (io.springfox:springfox-spring-web:2.9.2 - https://github.com/springfox/springfox)  |
|  OK  |     (The Apache Software License, Version 2.0) springfox-swagger-common (io.springfox:springfox-swagger-common:2.9.2 - https://github.com/springfox/springfox)  |
|  OK  |     (The Apache Software License, Version 2.0) springfox-swagger-ui (io.springfox:springfox-swagger-ui:2.9.2 - https://github.com/springfox/springfox)  |
|  OK  |     (The Apache Software License, Version 2.0) springfox-swagger2 (io.springfox:springfox-swagger2:2.9.2 - https://github.com/springfox/springfox)  |
|  OK  |     (Apache License 2.0) swagger-annotations (io.swagger:swagger-annotations:1.5.20 - https://github.com/swagger-api/swagger-core/modules/swagger-annotations)  |
|  OK  |     (Apache License 2.0) swagger-models (io.swagger:swagger-models:1.5.20 - https://github.com/swagger-api/swagger-core/modules/swagger-models)  |
|  TBD  |     (EDL 1.0) Jakarta Activation API jar (jakarta.activation:jakarta.activation-api:1.2.2 - https://github.com/eclipse-ee4j/jaf/jakarta.activation-api)  |
|  TBD  |     (EPL 2.0) (GPL2 w/ CPE) Jakarta Annotations API (jakarta.annotation:jakarta.annotation-api:1.3.5 - https://projects.eclipse.org/projects/ee4j.ca)  |
|  TBD  |     (Eclipse Distribution License v. 1.0) (Eclipse Public License v. 2.0) Jakarta Persistence API (jakarta.persistence:jakarta.persistence-api:2.2.3 - https://github.com/eclipse-ee4j/jpa-api)  |
|  TBD  |     (EPL 2.0) (GPL2 w/ CPE) javax.transaction API (jakarta.transaction:jakarta.transaction-api:1.3.3 - https://projects.eclipse.org/projects/ee4j.jta)  |
|  OK  |     (Apache License 2.0) Jakarta Bean Validation API (jakarta.validation:jakarta.validation-api:2.0.2 - https://beanvalidation.org)  |
|  TBD  |     (Eclipse Distribution License - v 1.0) Jakarta XML Binding API (jakarta.xml.bind:jakarta.xml.bind-api:2.3.3 - https://github.com/eclipse-ee4j/jaxb-api/jakarta.xml.bind-api)  |
|  TBD  |     (CDDL/GPLv2+CE) JavaBeans Activation Framework API jar (javax.activation:javax.activation-api:1.2.0 - http://java.net/all/javax.activation-api/)  |
|  TBD  |     (CDDL 1.1) (GPL2 w/ CPE) jaxb-api (javax.xml.bind:jaxb-api:2.3.1 - https://github.com/javaee/jaxb-spec/jaxb-api)  |
|  TBD  |     (Eclipse Public License 1.0) JUnit (junit:junit:4.13 - http://junit.org)  |
|  OK  |     (Apache License, Version 2.0) Byte Buddy (without dependencies) (net.bytebuddy:byte-buddy:1.10.14 - https://bytebuddy.net/byte-buddy)  |
|  OK  |     (Apache License, Version 2.0) Byte Buddy agent (net.bytebuddy:byte-buddy-agent:1.10.14 - https://bytebuddy.net/byte-buddy-agent)  |
|  OK  |     (The Apache Software License, Version 2.0) ASM based accessors helper used by json-smart (net.minidev:accessors-smart:1.2 - http://www.minidev.net/)  |
|  OK  |     (The Apache Software License, Version 2.0) JSON Small and Fast Parser (net.minidev:json-smart:2.3 - http://www.minidev.net/)  |
|  OK  |     (Apache License, Version 2.0) Apache HttpClient (org.apache.httpcomponents:httpclient:4.5 - http://hc.apache.org/httpcomponents-client)  |
|  OK  |     (Apache License, Version 2.0) Apache HttpCore (org.apache.httpcomponents:httpcore:4.4.13 - http://hc.apache.org/httpcomponents-core-ga)  |
|  OK  |     (Apache License, Version 2.0) Apache Log4j API (org.apache.logging.log4j:log4j-api:2.13.2 - https://logging.apache.org/log4j/2.x/log4j-api/)  |
|  OK  |     (Apache License, Version 2.0) Apache Log4j Core (org.apache.logging.log4j:log4j-core:2.13.2 - https://logging.apache.org/log4j/2.x/log4j-core/)  |
|  OK  |     (Apache License, Version 2.0) Apache Log4j Commons Logging Bridge (org.apache.logging.log4j:log4j-jcl:2.13.2 - https://logging.apache.org/log4j/2.x/log4j-jcl/)  |
|  OK  |     (Apache License, Version 2.0) Apache Log4j SLF4J Binding (org.apache.logging.log4j:log4j-slf4j-impl:2.13.2 - https://logging.apache.org/log4j/2.x/log4j-slf4j-impl/)  |
|  OK  |     (Apache License, Version 2.0) tomcat-embed-core (org.apache.tomcat.embed:tomcat-embed-core:9.0.37 - https://tomcat.apache.org/)  |
|  OK  |     (Apache License, Version 2.0) tomcat-embed-websocket (org.apache.tomcat.embed:tomcat-embed-websocket:9.0.37 - https://tomcat.apache.org/)  |
|  OK  |     (The Apache License, Version 2.0) org.apiguardian:apiguardian-api (org.apiguardian:apiguardian-api:1.1.0 - https://github.com/apiguardian-team/apiguardian)  |
|  TBD  |     (Eclipse Public License - v 1.0) AspectJ weaver (org.aspectj:aspectjweaver:1.9.6 - https://www.eclipse.org/aspectj/)  |
|  OK  |     (Apache License, Version 2.0) AssertJ fluent assertions (org.assertj:assertj-core:3.16.1 - http://assertj.org/assertj-core)  |
|  TBD  |     (Bouncy Castle Licence) Bouncy Castle PKIX, CMS, EAC, TSP, PKCS, OCSP, CMP, and CRMF APIs (org.bouncycastle:bcpkix-jdk15on:1.64 - https://www.bouncycastle.org/java.html)  |
|  TBD  |     (Bouncy Castle Licence) Bouncy Castle Provider (org.bouncycastle:bcprov-jdk15on:1.64 - https://www.bouncycastle.org/java.html)  |
|  OK  |     (BSD 3-clause New License) dom4j (org.dom4j:dom4j:2.1.3 - http://dom4j.github.io/)  |
|  OK  |     (Apache License, Version 2.0) flyway-core (org.flywaydb:flyway-core:6.4.4 - https://flywaydb.org/flyway-core)  |
|  TBD  |     (EPL 2.0) (GPL2 w/ CPE) Jakarta Expression Language 3.0 (org.glassfish:jakarta.el:3.0.3 - https://projects.eclipse.org/projects/ee4j.el)  |
|  TBD  |     (Eclipse Distribution License - v 1.0) JAXB Runtime (org.glassfish.jaxb:jaxb-runtime:2.3.3 - https://eclipse-ee4j.github.io/jaxb-ri/jaxb-runtime-parent/jaxb-runtime)  |
|  TBD  |     (Eclipse Distribution License - v 1.0) TXW2 Runtime (org.glassfish.jaxb:txw2:2.3.3 - https://eclipse-ee4j.github.io/jaxb-ri/jaxb-txw-parent/txw2)  |
|  OK  |     (BSD License 3) Hamcrest (org.hamcrest:hamcrest:2.2 - http://hamcrest.org/JavaHamcrest/)  |
|  TBD  |     (GNU Library General Public License v2.1 or later) Hibernate ORM - hibernate-core (org.hibernate:hibernate-core:5.4.20.Final - http://hibernate.org/orm)  |
|  TBD  |     (GNU Library General Public License v2.1 or later) Hibernate Commons Annotations (org.hibernate.common:hibernate-commons-annotations:5.1.0.Final - http://hibernate.org)  |
|  OK  |     (Apache License 2.0) Hibernate Validator Engine (org.hibernate.validator:hibernate-validator:6.1.5.Final - http://hibernate.org/validator/hibernate-validator)  |
|  OK  |     (Apache License 2.0) (LGPL 2.1) (MPL 1.1) Javassist (org.javassist:javassist:3.24.0-GA - http://www.javassist.org/)  |
|  OK  |     (Apache License, Version 2.0) Java Annotation Indexer (org.jboss:jandex:2.1.3.Final - http://www.jboss.org/jandex)  |
|  OK  |     (Apache License, version 2.0) JBoss Logging 3 (org.jboss.logging:jboss-logging:3.4.1.Final - http://www.jboss.org)  |
|  TBD  |     (Eclipse Public License v2.0) JUnit Jupiter (Aggregator) (org.junit.jupiter:junit-jupiter:5.6.2 - https://junit.org/junit5/)  |
|  TBD  |     (Eclipse Public License v2.0) JUnit Jupiter API (org.junit.jupiter:junit-jupiter-api:5.6.2 - https://junit.org/junit5/)  |
|  TBD  |     (Eclipse Public License v2.0) JUnit Jupiter Engine (org.junit.jupiter:junit-jupiter-engine:5.6.2 - https://junit.org/junit5/)  |
|  TBD  |     (Eclipse Public License v2.0) JUnit Jupiter Params (org.junit.jupiter:junit-jupiter-params:5.6.2 - https://junit.org/junit5/)  |
|  TBD  |     (Eclipse Public License v2.0) JUnit Platform Commons (org.junit.platform:junit-platform-commons:1.6.2 - https://junit.org/junit5/)  |
|  TBD  |     (Eclipse Public License v2.0) JUnit Platform Engine API (org.junit.platform:junit-platform-engine:1.6.2 - https://junit.org/junit5/)  |
|  TBD  |     (Eclipse Public License v2.0) JUnit Vintage Engine (org.junit.vintage:junit-vintage-engine:5.6.2 - https://junit.org/junit5/)  |
|  OK  |     (The Apache Software License, Version 2.0) MapStruct Core (org.mapstruct:mapstruct:1.2.0.Final - http://mapstruct.org/mapstruct/)  |
|  OK  |     (The MIT License) mockito-core (org.mockito:mockito-core:3.3.3 - https://github.com/mockito/mockito)  |
|  OK  |     (The MIT License) mockito-junit-jupiter (org.mockito:mockito-junit-jupiter:3.3.3 - https://github.com/mockito/mockito)  |
|  OK  |     (Apache License, Version 2.0) ModelMapper (org.modelmapper:modelmapper:1.1.0 - http://modelmapper.org/modelmapper)  |
|  OK  |     (Apache 2) Objenesis (org.objenesis:objenesis:2.6 - http://objenesis.org)  |
|  OK  |     (The Apache License, Version 2.0) org.opentest4j:opentest4j (org.opentest4j:opentest4j:1.2.0 - https://github.com/ota4j-team/opentest4j)  |
|  OK  |     (BSD) ASM Core (org.ow2.asm:asm:5.0.4 - http://asm.objectweb.org/asm/)  |
|  OK  |     (BSD-2-Clause) PostgreSQL JDBC Driver (org.postgresql:postgresql:42.2.14 - https://jdbc.postgresql.org)  |
|  OK  |     (The MIT License) Project Lombok (org.projectlombok:lombok:1.18.10 - https://projectlombok.org)  |
|  OK  |     (The Apache Software License, Version 2.0) JSONassert (org.skyscreamer:jsonassert:1.5.0 - https://github.com/skyscreamer/JSONassert)  |
|  OK  |     (MIT License) SLF4J API Module (org.slf4j:slf4j-api:1.7.30 - http://www.slf4j.org)  |
|  OK  |     (Apache License, Version 2.0) Spring AOP (org.springframework:spring-aop:5.2.8.RELEASE - https://github.com/spring-projects/spring-framework)  |
|  OK  |     (Apache License, Version 2.0) Spring Aspects (org.springframework:spring-aspects:5.2.8.RELEASE - https://github.com/spring-projects/spring-framework)  |
|  OK  |     (Apache License, Version 2.0) Spring Beans (org.springframework:spring-beans:5.2.8.RELEASE - https://github.com/spring-projects/spring-framework)  |
|  OK  |     (Apache License, Version 2.0) Spring Context (org.springframework:spring-context:5.2.8.RELEASE - https://github.com/spring-projects/spring-framework)  |
|  OK  |     (Apache License, Version 2.0) Spring Core (org.springframework:spring-core:5.2.8.RELEASE - https://github.com/spring-projects/spring-framework)  |
|  OK  |     (Apache License, Version 2.0) Spring Expression Language (SpEL) (org.springframework:spring-expression:5.2.8.RELEASE - https://github.com/spring-projects/spring-framework)  |
|  OK  |     (Apache License, Version 2.0) Spring Commons Logging Bridge (org.springframework:spring-jcl:5.2.8.RELEASE - https://github.com/spring-projects/spring-framework)  |
|  OK  |     (Apache License, Version 2.0) Spring JDBC (org.springframework:spring-jdbc:5.2.8.RELEASE - https://github.com/spring-projects/spring-framework)  |
|  OK  |     (Apache License, Version 2.0) Spring Object/Relational Mapping (org.springframework:spring-orm:5.2.8.RELEASE - https://github.com/spring-projects/spring-framework)  |
|  OK  |     (Apache License, Version 2.0) Spring TestContext Framework (org.springframework:spring-test:5.2.8.RELEASE - https://github.com/spring-projects/spring-framework)  |
|  OK  |     (Apache License, Version 2.0) Spring Transaction (org.springframework:spring-tx:5.2.8.RELEASE - https://github.com/spring-projects/spring-framework)  |
|  OK  |     (Apache License, Version 2.0) Spring Web (org.springframework:spring-web:5.2.8.RELEASE - https://github.com/spring-projects/spring-framework)  |
|  OK  |     (Apache License, Version 2.0) Spring Web MVC (org.springframework:spring-webmvc:5.2.8.RELEASE - https://github.com/spring-projects/spring-framework)  |
|  OK  |     (Apache License, Version 2.0) spring-boot (org.springframework.boot:spring-boot:2.3.3.RELEASE - https://spring.io/projects/spring-boot)  |
|  OK  |     (Apache License, Version 2.0) spring-boot-autoconfigure (org.springframework.boot:spring-boot-autoconfigure:2.3.3.RELEASE - https://spring.io/projects/spring-boot)  |
|  OK  |     (Apache License, Version 2.0) spring-boot-starter (org.springframework.boot:spring-boot-starter:2.3.3.RELEASE - https://spring.io/projects/spring-boot)  |
|  OK  |     (Apache License, Version 2.0) spring-boot-starter-aop (org.springframework.boot:spring-boot-starter-aop:2.3.3.RELEASE - https://spring.io/projects/spring-boot)  |
|  OK  |     (Apache License, Version 2.0) spring-boot-starter-data-jpa (org.springframework.boot:spring-boot-starter-data-jpa:2.3.3.RELEASE - https://spring.io/projects/spring-boot)  |
|  OK  |     (Apache License, Version 2.0) spring-boot-starter-jdbc (org.springframework.boot:spring-boot-starter-jdbc:2.3.3.RELEASE - https://spring.io/projects/spring-boot)  |
|  OK  |     (Apache License, Version 2.0) spring-boot-starter-json (org.springframework.boot:spring-boot-starter-json:2.3.3.RELEASE - https://spring.io/projects/spring-boot)  |
|  OK  |     (Apache License, Version 2.0) spring-boot-starter-test (org.springframework.boot:spring-boot-starter-test:2.3.3.RELEASE - https://spring.io/projects/spring-boot)  |
|  OK  |     (Apache License, Version 2.0) spring-boot-starter-tomcat (org.springframework.boot:spring-boot-starter-tomcat:2.3.3.RELEASE - https://spring.io/projects/spring-boot)  |
|  OK  |     (Apache License, Version 2.0) spring-boot-starter-validation (org.springframework.boot:spring-boot-starter-validation:2.3.3.RELEASE - https://spring.io/projects/spring-boot)  |
|  OK  |     (Apache License, Version 2.0) spring-boot-starter-web (org.springframework.boot:spring-boot-starter-web:2.3.3.RELEASE - https://spring.io/projects/spring-boot)  |
|  OK  |     (Apache License, Version 2.0) spring-boot-test (org.springframework.boot:spring-boot-test:2.3.3.RELEASE - https://spring.io/projects/spring-boot)  |
|  OK  |     (Apache License, Version 2.0) spring-boot-test-autoconfigure (org.springframework.boot:spring-boot-test-autoconfigure:2.3.3.RELEASE - https://spring.io/projects/spring-boot)  |
|  OK  |     (Apache License, Version 2.0) Spring Data Core (org.springframework.data:spring-data-commons:2.3.3.RELEASE - https://www.spring.io/spring-data/spring-data-commons)  |
|  OK  |     (Apache License, Version 2.0) Spring Data JPA (org.springframework.data:spring-data-jpa:2.3.3.RELEASE - https://projects.spring.io/spring-data-jpa)  |
|  OK  |     (Apache License, Version 2.0) Spring Plugin - Core (org.springframework.plugin:spring-plugin-core:1.2.0.RELEASE - https://github.com/spring-projects/spring-plugin/spring-plugin-core)  |
|  OK  |     (Apache License, Version 2.0) Spring Plugin - Metadata Extension (org.springframework.plugin:spring-plugin-metadata:1.2.0.RELEASE - https://github.com/spring-projects/spring-plugin/spring-plugin-metadata)  |
|  OK  |     (The Apache Software License, Version 2.0) spring-security-config (org.springframework.security:spring-security-config:5.3.4.RELEASE - https://spring.io/spring-security)  |
|  OK  |     (The Apache Software License, Version 2.0) spring-security-core (org.springframework.security:spring-security-core:5.3.4.RELEASE - https://spring.io/spring-security)  |
|  OK  |     (Apache 2.0) Spring Security JWT Library (org.springframework.security:spring-security-jwt:1.0.11.RELEASE - https://github.com/spring-projects/spring-security-oauth)  |
|  OK  |     (The Apache Software License, Version 2.0) spring-security-test (org.springframework.security:spring-security-test:4.2.2.RELEASE - http://spring.io/spring-security)  |
|  OK  |     (The Apache Software License, Version 2.0) spring-security-web (org.springframework.security:spring-security-web:5.3.4.RELEASE - https://spring.io/spring-security)  |
|  OK  |     (Apache 2.0) OAuth2 for Spring Security (org.springframework.security.oauth:spring-security-oauth2:2.3.8.RELEASE - https://docs.spring.io/spring-security/oauth/spring-security-oauth2)  |
|  OK  |     (The Apache Software License, Version 2.0) spring-security-oauth2-autoconfigure (org.springframework.security.oauth.boot:spring-security-oauth2-autoconfigure:2.2.2.RELEASE - https://spring.io/spring-security)  |
|  OK  |     (The Apache Software License, Version 2.0) org.xmlunit:xmlunit-core (org.xmlunit:xmlunit-core:2.7.0 - https://www.xmlunit.org/)  |
|  OK  |     (Apache License, Version 2.0) SnakeYAML (org.yaml:snakeyaml:1.26 - http://www.snakeyaml.org)