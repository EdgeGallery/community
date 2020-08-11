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
 
    

      sysctl -w vm.max_map_count=262144
      ulimit -n 65536
      ulimit -u 5096

      apt-get update

    

**2.install postgreSQL and create database**

  reference:https://computingforgeeks.com/install-postgresql-12-on-ubuntu/
    Step 1: Update system
        
        
        sudo apt update 
        sudo apt -y install vim bash-completion wget
        sudo apt -y upgrade
        sudo reboot

  Step 2: Add PostgreSQL 12 repository

  Step 3: Install PostgreSQL 12 on Ubuntu 20.04/18.04/16.04 LTS

  Step 4: Test PostgreSQL Connection

**3.Setting the Access to the Database** 
 Edit $SONARQUBE-HOME/conf/sonar.properties to configure the database settings. Templates are available for every supported 
    database. Just uncomment and configure the template you need

    

    `Example for PostgreSQL
     sonar.jdbc.username=sonarqube
     sonar.jdbc.password=mypassword
     sonar.jdbc.url=jdbc:postgresql://localhost/sonarqube`

 **4.Configuring the Elasticsearch storage path** 

By default, Elasticsearch data is stored in $SONARQUBE-HOME/data, but this is not recommended for production instances. Instead, you should store this data elsewhere, ideally in a dedicated volume with fast I/O. Beyond maintaining acceptable performance, doing so will also ease the upgrade of SonarQube.

Edit $SONARQUBE-HOME/conf/sonar.properties to configure the following settings:

     `sonar.path.data=/var/sonarqube/data

      sonar.path.temp=/var/sonarqube/temp`

The user used to launch SonarQube must have read and write access to those directories.

5.Starting the Web Server

The default port is "9000" and the context path is "/". These values can be changed in $SONARQUBE-HOME/conf/sonar.properties:


     `sonar.web.host=192.0.0.1
      sonar.web.port=80
      sonar.web.context=/sonarqube`

Execute the following script to start the server:

On Linux/Mac OS: bin//sonar.sh start
On Windows: bin/windows-x86-64/StartSonar.bat
You can now browse SonarQube at http://localhost:9000 (http://159.x.x.x:9000) (the default System administrator credentials are admin/admin).
![输入图片说明](https://images.gitee.com/uploads/images/2020/0811/163231_90282e6c_7785218.png "屏幕截图.png")

 **5.config Scanner** 


   **SonarScanner for Jenkins** 

   **1. Install the SonarScanner for Jenkins via the Jenkins Update Center.** 

    ![输入图片说明](https://images.gitee.com/uploads/images/2020/0811/164236_807c3260_7785218.png "屏幕截图.png")
  
   **2.config sonarqube in jenkins** 
   
    First, generate a token in SonarQube (PS: replace the username and password with the token)
![输入图片说明](https://images.gitee.com/uploads/images/2020/0811/164649_0f48b5f8_7785218.png "屏幕截图.png")
![输入图片说明](https://images.gitee.com/uploads/images/2020/0811/164803_8fc52b0c_7785218.png "屏幕截图.png")


Then, configure the address to connect to the sonarqube server in Jenkins, the token used here is the token created in sonarqube just now

![输入图片说明](https://images.gitee.com/uploads/images/2020/0811/164953_39c33714_7785218.png "屏幕截图.png")
![输入图片说明](https://images.gitee.com/uploads/images/2020/0811/165101_88535eb4_7785218.png "屏幕截图.png")
![输入图片说明](https://images.gitee.com/uploads/images/2020/0811/165238_4a687d2f_7785218.png "屏幕截图.png")
    
Finally, configure the global tool configuration

![输入图片说明](https://images.gitee.com/uploads/images/2020/0811/170115_58db14f2_7785218.png "屏幕截图.png")
![输入图片说明](https://images.gitee.com/uploads/images/2020/0811/170242_0ebeafb8_7785218.png "屏幕截图.png")

  **3. config job task** 

click “Add build step” and select "Execute sonarqube scanner"

![输入图片说明](https://images.gitee.com/uploads/images/2020/0811/171633_ab83c068_7785218.png "屏幕截图.png")
![输入图片说明](https://images.gitee.com/uploads/images/2020/0811/172010_9dda6489_7785218.png "屏幕截图.png")

example:
for java

    `sonar.projectKey= user-mgmt-be
     sonar.projectName= user-mgmt-be
     sonar.projectVersion=1.0

     sonar.language=java
     sonar.sourceEncoding=UTF-8

     sonar.sources=$WORKSPACE/user-mgmt/src
     sonar.java.binaries=$WORKSPACE/user-mgmt/target/classes`

for javascript

     `sonar.projectKey= user-mgmt-fe
      sonar.projectName= user-mgmt-fe
      sonar.projectVersion=1.0

      sonar.language=JavaScipt
      sonar.sourceEncoding=UTF-8

      sonar.sources=$WORKSPACE`

for go

      `sonar.projectKey= mep-agent
       sonar.projectName= mep-agent
       sonar.projectVersion=1.0

       sonar.language=go

       sonar.sources=$WORKSPACE`

 **4. build job and check result by click sonarqube tag** 

![输入图片说明](https://images.gitee.com/uploads/images/2020/0811/172943_91f9c868_7785218.png "屏幕截图.png")
![输入图片说明](https://images.gitee.com/uploads/images/2020/0811/173249_ae303c7c_7785218.png "屏幕截图.png")

Guide:
  [Code Style Configuration for Intellij](https://github.com/SonarSource/sonar-developer-toolset)