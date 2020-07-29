EdgeGallery uses Coverity to find security and quality defects in its code.

[Coverity](https://www.synopsys.com/software-integrity/security-testing/static-analysis-sast.html) is a free cloud-based service for the open source community. It was originally derived from the Stanford Checker, a research tool for finding bugs through static analysis. In 2006 under a DHS contract, the tool was used to harden the open source software.During the first year of operation, over 6,000 software defects were fixed across 50 open source projects.After the Contract with DHS complete, Coverity got funding by Synopsys. And it has been used by organizations like CERN (European Organization for NuclearResearch), NASA and over 600 open source projects.

![](https://edgegallery.atlassian.net/wiki/download/attachments/364041/Snipaste_2020-03-03_13-05-38.png?api=v2)

### Coverity scan workflow in EdgeGallery Jenkins CI

![](https://edgegallery.atlassian.net/wiki/download/attachments/364041/%E5%9B%BE%E7%89%871.jpg?api=v2)

All EdgeGallery code will be compiled first. In EdgeGallery CI pipeline, Coverity will intercept all calls to the compiler during MAVEN compilation. After intercepting the call, a tool called cov-build will extract the compile cmd and related information (such as: the relative relation of function calls in the code). And then calls cov-translate to translate the original (compile) command into command that Coverity can recognize. Finally, cov-emit is called to parse the corresponding code based on the translated command. All emitted files are packed into a zip file, which will be analyzed to produce the defect reports on the analysis server.Custom defect checkers for detecting various defect types are supported.

Currently Coverity support critical checkers for :

*   API usage errors

*   Best practice coding errors

*   Buffer overflows

*   Build system issues

*   Class hierarchy inconsistencies

*   Code maintainability issues

*   Concurrent data access violations

*   Control flow issues

*   Cross-site request forgery (CSRF)

*   Cross-site scripting (XSS)

*   Deadlocks

*   Error handling issues

*   Hard-coded credentials

*   Incorrect expression

*   Insecure data handling

*   Integer handling issues

*   Integer overflows

*   Memory corruptions

*   Illegal memory accesses

*   Null pointer dereferences

*   Path manipulation

*   Performance inefficiencies

*   Program hangs

*   Race conditions

*   Resource leaks

*   Rule violations

*   Security best practices violations

*   Security misconfigurations

*   SQL injection

*   Uninitialized members

### EdgeGallery project Coverity scan badge

You can find EdgeGallery project's Coverity scan badge on the project’s github repository. For example, in appstore-be repository you will find it like below.

![](https://edgegallery.atlassian.net/wiki/download/attachments/364041/Snipaste_2020-03-03_15-49-32.png?api=v2)

### Access EdgeGallery Coverity defect report

Here we use developer-be project as an example.

1. Click developer-be project’s Coverity scan badge to open Coverity scan page.  

2. If you have not been added to the project on Coverity scan service yet:

   a. Click on _"Add me to project"_ and fill the form:

      ![](https://edgegallery.atlassian.net/wiki/download/attachments/364041/Snipaste_2020-03-03_16-14-51.png?api=v2)

   b. Wait till the project administrators grant you appropriate permissions.

      ![](https://edgegallery.atlassian.net/wiki/download/attachments/364041/Snipaste_2020-03-03_16-15-38.png?api=v2)

3. Click on _"View Defects"_ to view detailed report:

![](https://edgegallery.atlassian.net/wiki/download/attachments/364041/Snipaste_2020-03-03_16-16-17.png?api=v2)