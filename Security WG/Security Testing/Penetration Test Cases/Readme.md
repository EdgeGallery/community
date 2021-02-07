## 渗透测试 - Penetration Test

#### 1、渗透测试用例简介 - Introduction of penetration test cases

##### EG-TST-SEC-001    - OS Security Base-line Scanning（操作系统安全基线扫描）

##### EG-TST-SEC-002    - Comprehensive Web Vulnerability Scanning（综合Web漏洞扫描）

##### EG-TST-SEC-003    - Port Fuzz（端口Fuzz）

##### EG-TST-SEC-004    - File Upload（文件上传）

##### EG-TST-SEC-005    - SQL Injection（SQL注入）

##### EG-TST-SEC-006    - Replay Attack（重放攻击）

##### EG-TST-SEC-007    - Privilege Escalation（越权）

##### EG-TST-SEC-008    - Session Prediction（会话预测）

##### EG-TST-SEC-009    - Stored-XSS（存储型XSS）

##### EG-TST-SEC-010    - CSRF（跨站请求伪造）

##### EG-TST-SEC-011    - URL Redirect（URL重定向）

##### EG-TST-SEC-012    - Port Scanning（端口扫描）

##### EG-TST-SEC-013    - Brute Force of Login Interface（暴力破解-登录接口）

##### EG-TST-SEC-014    - Authentication Bypass（认证绕过）

##### EG-TST-SEC-015    - Arbitrary File Download（任意文件下载）



#### 2、渗透测试概要 - Summary of penetration testing

渗透测试，目前行业并没有标准定义，一些安全组织达成共识的通用说法是：渗透测试是通过模拟恶意黑客的攻击方法，来评估计算机网络系统安全的一种评估方法。这个过程包括对系统的任何弱点、技术缺陷或漏洞的主动分析，这个分析是从一个攻击者可能存在的位置来进行的，并且从这个位置有条件主动利用安全漏洞。

Penetration test, there is no standard definition in the industry at present. Some security organizations have reached a consensus as a general statement: penetration testing is an evaluation method to evaluate the security of computer network systems by simulating the attack methods of malicious hackers. This process includes active analysis of any weaknesses, technical flaws or vulnerabilities in the system. This analysis is carried out from a location where an attacker may exist, and from this location conditionally actively exploits security vulnerabilities.



#### 3、常用渗透测试工具 - Common penetration testing tools

##### OWASP ZAP：

ZAP是一个免费、开源的渗透测试工具，由OWASP维护。ZAP专为测试Web应用而设计，它灵活并且可扩展。ZAP的核心是“中间人代理”，它位于测试人员的浏览器和Web应用之间，以便它可以拦截和检查浏览器和Web应用之间发送的消息，根据需要修改数据包内容，并转发到目标位置。

ZAP is a free, open source penetration testing tool, maintained by OWASP. ZAP is designed for testing web applications, it is flexible and extensible. The core of ZAP is the "man-in-the-middle agent", which is located between the tester's browser and the web application so that it can intercept and inspect the messages sent between the browser and the web application, modify the content of the data packet as needed, and forward it to the target position.

##### BurpSuite（Community Edition）：

BurpSuite社区版是一款功能强大的手动工具，它可以代理Http流量、抓取请求进行编辑和重放、暴力破解、编码解码等。

BurpSuite Community Edition is a powerful manual tool that can proxy Http traffic, grab requests for editing and replay, brute force cracking, encoding and decoding, etc.

##### Nmap：

Nmap是一个网络连接端扫描软件，用来扫描网上电脑开放的网络连接端。确定哪些服务运行在哪些连接端，并且推断计算机运行哪个操作系统。它是网络管理员必用的软件之一，以及用以评估网络系统安全。

Nmap is a network connection end scanning software, used to scan the open network connection end of the computer on the Internet. Determine which services are running on which connections, and infer which operating system the computer is running. It is one of the necessary software for network administrators and is used to evaluate network system security.

##### SQLmap：

SQLMap 是一个开源渗透测试工具，它可以自动检测和利用 SQL 注入漏洞并接管数据库服务器。它具有强大的检测引擎，同时有众多功能，包括数据库指纹识别、从数据库中获取数据、访问底层文件系统以及在操作系统上带内连接执行命令。

SQLMap is an open source penetration testing tool that can automatically detect and exploit SQL injection vulnerabilities and take over the database server. It has a powerful detection engine and many functions, including database fingerprinting, obtaining data from the database, accessing the underlying file system, and executing commands in-band on the operating system.

##### Metasploit：

Metasploit是一款开源的安全漏洞检测工具，可以帮助安全和IT专业人士识别安全性问题，验证漏洞的缓解措施，并管理专家驱动的安全性进行评估，提供真正的安全风险情报。这些功能包括智能开发，代码审计，Web应用程序扫描，社会工程等。它本身附带数百个已知软件漏洞的专业级漏洞攻击工具。

Metasploit is an open source security vulnerability detection tool that can help security and IT professionals identify security issues, verify vulnerability mitigation measures, and manage expert-driven security assessments to provide real security risk intelligence. These functions include smart development, code auditing, web application scanning, social engineering, etc. It comes with hundreds of professional vulnerability attack tools with known software vulnerabilities.



#### 4.常见渗透测试流程 - Common penetration testing process

PTES（Penetration Testing Execution Standard）渗透测试执行标准，旨在为企业和安全服务提供商提供通用的语言和范围，以进行渗透测试，它涵盖了渗透测试的全部流程，从最初的沟通和渗透测试到推理，直到信息收集和威胁建模阶段，最后生成报告。

PTES (Penetration Testing Execution Standard) is a penetration test execution standard designed to provide enterprises and security service providers with a common language and scope for penetration testing. It covers the entire process of penetration testing, from initial communication and penetration testing to Reasoning, until the information gathering and threat modeling stage, and finally generate a report.

##### 一、前期交互（Pre-engagement Interactions）

在前期交互阶段，渗透测试团队与客户组织进行交互讨论，最重要的是确定渗透测试的范围、目标、限制条件以及服务合同细节。

In the pre-interactive stage, the penetration testing team conducts interactive discussions with the client organization. The most important thing is to determine the scope, objectives, restrictions, and service contract details of the penetration test.

##### 二、信息收集（Intelligence Gathering）

在目标范围确定之后，将进入信息收集阶段，渗透测试团队可以利用各种信息来源与搜集技术方法，尝试获取更多关于目标组织网络拓扑、系统配置与安全防御措施的信息。渗透测试者可以使用的情报搜集方法包括公开来源信息查询、Google  Hacking、社会工程学、网络踩点、扫描探测、被动监听、服务查点等。情报搜集是否充分在很大程度上决定了渗透测试的成败，因为如果你遗漏关键的情报信息，你将可能在后面的阶段里一无所获。

After the target scope is determined, it will enter the information collection stage. The penetration testing team can use various information sources and collection techniques to try to obtain more information about the target organization's network topology, system configuration, and security defense measures. The intelligence collection methods that can be used by penetration testers include open source information query, Google Hacking, social engineering, network stomping, scanning detection, passive monitoring, service check, etc. Adequacy of intelligence gathering determines the success or failure of penetration testing to a large extent, because if you omit critical intelligence information, you may get nothing in the later stages.

##### 三、威胁建模（Threat Modeling）

在搜集到充分的情报信息之后，渗透测试人员对获取的信息进行威胁建模与攻击规划，从大量的信息情报中理清头绪，确定出最可行的攻击通道。

After collecting sufficient intelligence information, penetration testers conduct threat modeling and attack planning on the acquired information, clarify the clues from a large amount of information and intelligence, and determine the most feasible attack channel.

##### 四、漏洞分析（Vulnerability Analysis）

在确定出最可行的攻击通道之后，接下来需要考虑该如何取得目标系统的访问控制权，即漏洞分析阶段。在该阶段，渗透测试者需要综合分析前几个阶段获取并汇总的情报信息，特别是安全漏洞扫描结果、服务查点信息等，通过搜索可获取的渗透代码资源，找出可以实施渗透攻击的攻击点，并在实验环境中进行验证。

After determining the most feasible attack channel, the next step is to consider how to obtain access control of the target system, which is the vulnerability analysis stage. At this stage, the penetration tester needs to comprehensively analyze the intelligence information obtained and summarized in the previous stages, especially the security vulnerability scan results, service check information, etc., and search for available penetration code resources to find out which penetration attacks can be implemented. Attack points, and verify in the experimental environment.

##### 五、漏洞利用（Exploitation）

在漏洞利用环节中，渗透测试团队需要利用他们所找出的目标系统安全漏洞，来真正入侵系统当中，获得访问控制权。一般在实际应用场景中，渗透测试者还需要挫败目标网络与系统中实施的安全防御措施，才能成功达成渗透目的。在黑盒测试中，渗透测试者还需要考虑对目标系统检测机制的逃逸，从而避免造成目标组织安全响应团队的警觉和发现。

In the vulnerability exploitation link, the penetration testing team needs to use the security vulnerabilities of the target system they have found to actually invade the system and gain access control rights. Generally, in actual application scenarios, penetration testers also need to defeat the security defense measures implemented in the target network and system in order to successfully achieve the penetration goal. In black box testing, penetration testers also need to consider the escape of the detection mechanism of the target system, so as to avoid the alertness and discovery of the security response team of the target organization.

##### 六、后渗透攻击（Post Exploitation）

在这个环节中，需要渗透测试团队根据目标组织的业务经营模式、保护资产形式与安全防御计划的不同特点，自主设计出攻击目标，识别关键基础设施，并寻找客户组织最具价值和尝试安全保护的信息和资产，最终达成能够对客户组织造成最重要业务影响的攻击途径。

In this link, the penetration testing team is required to independently design the attack target, identify the key infrastructure, and find the most valuable client organization and try security protection according to the different characteristics of the target organization’s business operation model, asset protection form, and security defense plan The information and assets of the company will eventually reach the attack path that can have the most important business impact on the client organization.

##### 七、渗透测试报告（Reporting）

渗透测试报告凝聚了之前所有阶段之中渗透测试团队所获取的关键情报信息、探测和发掘出的系统安全漏洞、成功渗透攻击的过程，以及造成业务影响后果的攻击途径，同时还要站在防御者的角度上，帮助他们分析安全防御体系中的薄弱环节、存在的问题，以及修补与升级技术方案。

The penetration test report condenses the key intelligence information obtained by the penetration test team in all previous stages, the system security vulnerabilities detected and unearthed, the process of successful penetration attacks, and the attack paths that cause business consequences. At the same time, it must stand on defense From the perspective of the author, help them analyze the weak links and existing problems in the security defense system, as well as repair and upgrade technical solutions.



#### 5.参考资料 - Reference

1.PTES： http://www.pentest-standard.org/

2.OWASP ZAP：https://owasp.org/www-project-zap/

3.BurpSuite： https://portswigger.net/burp

4.SQLMap： http://sqlmap.org/

5.Nmap： https://nmap.org/

6.Metasploit： https://www.rapid7.com/products/metasploit/