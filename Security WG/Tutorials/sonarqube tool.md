 **How to use sonarqube to scan project** 
The SonarQube Platform is made of 4 components:
![输入图片说明](https://images.gitee.com/uploads/images/2020/0811/120744_5c9392ed_7785218.png "屏幕截图.png")

One SonarQube Server starting 3 main processes:

Web Server for developers, managers to browse quality snapshots and configure the SonarQube instance
Search Server based on Elasticsearch to back searches from the UI
Compute Engine Server in charge of processing code analysis reports and saving them in the SonarQube Database
One SonarQube Database to store:

the configuration of the SonarQube instance (security, plugins settings, etc.)
the quality snapshots of projects, views, etc.
Multiple SonarQube Plugins installed on the server, possibly including language, SCM, integration, authentication, and governance plugins
One or more SonarScanners running on your Build / Continuous Integration Servers to analyze projects

 **SonarQube Integration** 

The following schema shows how SonarQube integrates with other ALM tools and where the various components of SonarQube are used.
![输入图片说明](https://images.gitee.com/uploads/images/2020/0811/120903_98167d65_7785218.png "屏幕截图.png")

1.Developers code in their IDEs and use [SonarLint](https://www.sonarlint.org/) to run local analysis.

2.Developers push their code into their favourite SCM : git, SVN, TFVC, ...

3.The Continuous Integration Server triggers an automatic build, and the execution of the SonarScanner required to run the 
  SonarQube analysis.

4.The analysis report is sent to the SonarQube Server for processing.

5.SonarQube Server processes and stores the analysis report results in the SonarQube Database, and displays the results in the 
  UI.

6.Developers review, comment, challenge their Issues to manage and reduce their Technical Debt through the SonarQube UI.

7.Managers receive Reports from the analysis. Ops use APIs to automate configuration and extract data from SonarQube. Ops use             
  JMX to monitor SonarQube Server.


 ** SoanrQube install and use ** 
  **Prerequisite:** 
   1.ubuntu 16.04

   2.huaweiJDK 11.0.8

   3.postgresql 12.3

   4.Sonarqube community8.4 

   5.sonar-scanner 

   get address: https://www.sonarqube.org/downloads/

   **step by step**  
    **1. config linux** 

      `sysctl -w vm.max_map_count=262144`
      `ulimit -n 65536`
      `ulimit -u 5096`

      `apt-get update`
    **2.install postgreSQL and create database**
        
        reference:https://computingforgeeks.com/install-postgresql-12-on-ubuntu/


        `sudo apt update` 
        `sudo apt -y install vim bash-completion wget`
        `sudo apt -y install vim bash-completion wget
         sudo apt -y upgrade`

Guide:
  [Code Style Configuration for Intellij](https://github.com/SonarSource/sonar-developer-toolset)