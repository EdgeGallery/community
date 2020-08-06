Architecture system
-------------------

![输入图片说明](https://images.gitee.com/uploads/images/2020/0709/172431_2b928212_5504908.png "hb1.png")

Overview
--------

EdegeGallery CSIT (Continuous System and Integration Testing) tests are defined as what we call "test plans".  A test plan is meant to test a specific feature or functionality comprehensively, and each test plan runs one or more test suites that are written using the Robot Framework.  A particular test suite (e.g. to test a core module) can be included by multiple test plans.

est plans and test suites are source controlled in the integration repo, under its own GIT repository located in integration/csit.git.  To get started and follow along, please clone the integration repo to your local environment.  If you want to run the CSIT test suites locally, you will also need to have have docker and python installed.

The key contents of integration/test/csit/ are:

*   run-csit.sh: the shell script that executes a particular CSIT test suite
    
*   plans/: contains the definitions of what is invoked by each test plan
    
*   tests/: contains the test suites written using the Robot Framework 
    
*   scripts/: contains various shared shell scripts that support the test plans
    

System Prerequisites
--------------------

Make sure that your environment has the following packages installed:

```
sudo apt install python-pip virtualenv unzip sshuttle netcat libffi-dev libssl-dev docker-compose
sudo pip install robotframework
sudo pip install -U requests
sudo pip install -U robotframework-requests
sudo pip install -U robotframework-httplibrary
# API tests required packages
sudo pip install -U robotframework-jsonschemalibrary
sudo pip install -U RESTinstance
```

github
------

```
git clone https://gitee.com/EdgeGallery/integration-testing.git
```

the api csit workdir is api-csit-master/ and the web csit workdir is edgegallery-csit-master/

![输入图片说明](https://images.gitee.com/uploads/images/2020/0728/094511_d2ca4769_7785293.png "hb2.png")
![输入图片说明](https://images.gitee.com/uploads/images/2020/0709/172517_7e1678d9_5504908.png "hb3.png")

Setting Up the Test
-------------------

Test plans are defined under the plans/ directory.

![输入图片说明](https://images.gitee.com/uploads/images/2020/0728/095325_3d984765_7785293.png "hb4.png")

![输入图片说明](https://images.gitee.com/uploads/images/2020/0709/172532_eb02a3e1_5504908.png "hb5.png")

The directory of api layout under the plans/ directory is <module>/.  The Complete API CSIT test plan is provided in plans/all-cases/.  To execute it, run the command: 

```
#Do not run cases with the wrong label. Test cases with the wrong tag, including account add to the blocklist and not verifying parameters. 
bash -x ./run-csit.sh plans/all-cases -e wrong
```

The directory of web layout under the plans/ directory is <project>/<functionality>/.  The E2E CSIT test plan is provided in plans/integration/functionalityCI/.  To execute it, run the command: 

```
bash -x ./run-csit.sh plans/integration/functionalityCI x86
```

The run-csit.sh will automatically set up a Robot environment for you, and execute the test plan defined in plans/all-cases/ directory or plans/integration/functionalityCI/ directory.

If you look at the contents of the plans/integration/functionalityCI/ you will see the following:

*   setup.sh: the shell script that starts all the necessary docker containers required by this test plan, as well as passing the necessary environment variables to Robot.
    
*   testplan.txt: the text file listing, in order, the test suites that should be executed by Robot for this particular test plan.  This allows you to refactor test suites to be reused by multiple test plans as necessary.
    
*   teardown.sh: the shell script that kills all the docker containers that were started by this test plan.
    
Example 01, the plans/integration/all-cases/testplan.txt contains the following:

```
# Test suites are relative paths under [integration/csit.git]/tests/.
# Place the suites in run order.
# Temporary change to trigger verify job.
integration/Token
integration/Register
integration/Modify
integration/EndSubscribe
integration/Avail_Subscribe
integration/Delete
```

Example 02, the plans/integration/functionalityCI/testplan.txt contains the following:

```
# Test suites are relative paths under [integration/csit.git]/tests/.
# Place the suites in run order.
# Temporary change to trigger verify job.
integration/DevTestSuite
integration/AppTestSuite
integration/MecmTestSuite
integration/DeleteAll
```

This means that this test plan will run those four Robot test suites in the sequence specified above.

When run-csit.sh runs a test plan, it will first execute setup.sh to start any docker containers and set up environment variables.  Then, it will run the test suites listed in the testplan.txt in sequence.  Finally, it will run teardown.sh to terminate all the docker containers.

Defining Test Suites
--------------------

The Robot test suites are placed under the tests/ directory.

The directory layout under the tests/ directory is <project>/<suite>/.  So, the sample test suites can be found in tests/integration/suite1/ and tests/integration/suite2/, respectively.  The test suites are written using the Robot Framework.

We won't go into details here about how to write Robot test suites.  You can take a look at the sample test suites in tests/integration/suite1/ and tests/integration/suite2/ to see some sample test cases implemented; for example, it demonstrates the retrieval of a URL to test for its return code.

Refactor Shared Shell Scripts
-----------------------------

The scripts/ directory is where you place any shell scripts that may be useful for multiple test plans.  For example, the run-instance.sh and get-instance-ip.sh shell scripts are placed here so that they can be used by all test plans.  Feel free to place any commonly useful shell scripts that you need across multiple test plans here.  

Building a Docker Image
-----------------------

When building an image, you need to read the configuration in the dockerfile file. In this case, you need to modify the dockerfile file in the integration-testing/edgegallery-csit-master/docker/ directory. Details about the dockerfile are not described. Related configuration and startup commands have been compiled in the existing dockerfile.

At the end of the dockerfile file, you can see that the command for starting the test case is as follows:

```
CMD run-csit.sh plans/integration/$PLANPATH x86
```

$PLANPATH is the last-layer path of the test suite,which is similar to functionalityCI. This variable needs to be transferred to the dockerfile when the docker container is started.

The following is a brief introduction to the entire process of building code into an image：

1.Build a Docker image.

```
docker build --no-cache -t mec-edgegallery:v1.0 -f docker/dockerfile .
```

2.Start the Docker container.

```
docker run -dit -e PLANPATH="functionality1" -p 8081:9986 mec-edgegallery:v1.0
```

3.View the startup log.

```
docker logs -f 容器ID
```

4.Copy the test case report in the container to the host.

```
docker cp 容器ID:/home/edgegallery/archives /usr/csit/integration-testing/edgegallery-csit-master/
```

Now you can view your test case report.