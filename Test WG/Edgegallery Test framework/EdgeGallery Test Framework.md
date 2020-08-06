1.  EdgeGallery Project Test Framework：
    

![输入图片说明](https://images.gitee.com/uploads/images/2020/0709/171508_0b3adc63_5504908.png "etf1.png")

2、EdgeGallery test Item:

It provides all the cross-project infrastructure framework and DevOps toolchain (Continuous Integration, etc.), code and scripts, best practice guidance, benchmark and testing reports and white papers related to:

*   Cross-project Continuous System Integration Testing (CSIT)
    
*   End-to-End (ETE) release use cases testing with VNFs with repeatability
    
*   Service design for end-to-end release use cases
    
*   (obsolete)Open Lab: building and maintenance of community integration labs 
    
*   Continuous Distribution (CD) to EdgeGallery community integration labs
    

*   Providing testing environment and support for the release use cases
    
*   Executing Cross-project Continuous System Integration Testing (CSIT)
    
    Developing and perform tests within full EdgeGallery context (healthcheck, End-to-End, performance, robustness...)
    
*   Validating the EdgeGallery release
    

3、Testing Roles and Responsibilities  


| **Types of Testing** | **Dev. Team** | [**CSIT**](https://wiki.onap.org/display/DW/Creating+a+CSIT+Test) **Team** | **E2E Team** | **S3P Team** |
| --- | --- | --- | --- | --- |
| Unit Testing | x   |     |     |     |
| Feature/Functional Testing | x   |     |     |     |
| Integration/Pair-Wise Testing |     | x   |     |     |
| End-to-End Testing |     |     | x   |     |
| Regression Testing | x   | x   | x   | x   |
| Performance Testing |     |     |     | x   |
| Acceptance Testing |     | x   | x   |     |
| Usability Testing | x   |     |     |     |
| Install/Uninstall Testing | x   |     |     |     |
| Recovering Testing |     |     | x   | x   |
| Security Testing |     |     |     | x   |
| Stability Testing |     |     |     | x   |
| Scalability Testing |     |     |     | x   |
| Application Testing | x   |     |     |     |

4、Repo

[https://gitee.com/EdgeGallery/integration-testing](https://gitee.com/EdgeGallery/integration-testing)

5、Other usefull link

[How to build a CSIT in project](https://gitee.com/edgegallery/community/blob/master/Test%20WG/Edgegallery%20Test%20framework/%20How%20to%20build%20a%20CSIT%20in%20project.md)

[Tutorial: How to setup CSIT development environment and run CSIT on local windows](https://gitee.com/edgegallery/community/blob/master/Test%20WG/Edgegallery%20Test%20framework/Tutorial_%20How%20to%20setup%20CSIT%20development%20environment%20and%20run%20CSIT%20on%20local%20windows.md)