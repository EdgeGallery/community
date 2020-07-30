EdgeGallery uses OWASP [Zed Attack Proxy (ZAP)](https://www.zaproxy.org/) for web application security assessments. (To be implemented in Release 1)

The OWASP ZAP is a Java-based free open-source penetration testing tool which lets user automatically find security vulnerabilities in web applications during web application development or penetration tests.

At its core, ZAP is what is known as a “man-in-the-middle proxy.”

![输入图片说明](https://images.gitee.com/uploads/images/2020/0730/090645_95811f3b_5645267.png "browser-no-proxy.png")

It stands between the tester’s browser and the web application so that it can intercept and inspect messages sent between browser and web application, modify the contents if needed, and then forward those packets on to the destination.

It allows web application security testers to perform fuzzing, scripting, _spidering,_ and _proxying_ in order to attack web apps. The following are some of the features provided by ZAP:

*   Intercepting Proxy

*   Active and Passive Scanners

*   Traditional and Ajax Spiders

*   Brute Force Scanner

*   Port Scanner

*   Web Sockets

OWASP ZAP in EdgeGallery CI System
----------------------------------

![输入图片说明](https://images.gitee.com/uploads/images/2020/0730/090706_54d3c588_5645267.png "ZAP_CI _SMALLER.png")

1.  A Jenkins CI Build step initializes ZAP

2.  Traffic flows (Regression Pack) through ZAP (Web Proxy)

3.  ZAP modifies requests to include Vulnerability Tests

4.  Target Application/Server sends Response back through ZAP

5.  ZAP sends reporting data back to Jenkins

6.  Jenkins publishes and archives the report(s)

7.  Developer examines the report and creates JIRA tickets for the alerts

Zap Automated Scan
------------------

Currently, We use Zap automated scan, it is the easiest way to start using ZAP.

In automated scan, ZAP will proceed to crawl the web application with its spider and passively scan each page it finds. Then ZAP will use the active scanner to attack all of the discovered pages, functionality, and parameters.

ZAP provides 2 spiders for crawling web applications, you can use either or both of them from this screen.

*   The traditional ZAP spider which discovers links by examining the HTML in responses from the web application. This spider is fast, but it is not always effective when exploring an AJAX web application that generates links using JavaScript.

*   For AJAX applications, ZAP’s AJAX spider is likely to be more effective. This spider explores the web application by invoking browsers which then follow the links that have been generated. The AJAX spider is slower than the traditional spider and requires additional configuration for use in a “headless” environment.

ZAP will passively scan all of the requests and responses proxied through it. So far ZAP has only carried out passive scans of your web application. Passive scanning does not change responses in any way and is considered safe. Scanning is also performed in a background thread to not slow down exploration. Passive scanning is good at finding some vulnerabilities and as a way to get a feel for the basic security state of a web application and locate where more investigation may be warranted.

Active scanning, however, attempts to find other vulnerabilities by using known attacks against the selected targets. Active scanning is a real attack on those targets and can put the targets at risk, so do not use active scanning against targets you do not have permission to test .Implementing active scanning is planned in future.