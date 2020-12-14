# 3rd Party Management for Java Dependency

All Java dependencies imported by the JAVA projects in EdgeGallery can be separated into 2 parts,
direct dependencies and indirect ones. What EdgeGallery community concerned is all direct dependencies
including the Dependency name and its version. That means, all direct dependencies and
their versions used by one project should be approved by the community before.
Currently for one direct dependency, there is only one version accepted by the community.

# JAVA Projects Developer

For Java projects (e.g. developer-be and mecm-app) developers, please try your best to use the dependencies
and the versions which have been accepted by the community. You can go to the file
[global dependencies file](https://gitee.com/edgegallery/ci-management/blob/master/3rdparty-check/java/conf/global_direct_dependencies.yaml),
which lists the whole scope of Java direct dependencies.

If it's necessary to use another dependency that haven't been accepted by the community, please following
the guide below to add it into the [community's global dependencies scope](https://gitee.com/edgegallery/ci-management/blob/master/3rdparty-check/java/conf/global_direct_dependencies.yaml).

## Add New Java Projects

There is a [project file](https://gitee.com/edgegallery/ci-management/blob/master/3rdparty-check/java/conf/projects.yaml)
list all these Java projects. If your project is not included in this file, please add it here.

After adding the project into [project file](https://gitee.com/edgegallery/ci-management/blob/master/3rdparty-check/java/conf/projects.yaml),
please use  **generate**  command to automatically add all dependencies that new in this new project
but haven't been added into [global dependencies file](https://gitee.com/edgegallery/ci-management/blob/master/3rdparty-check/java/conf/global_direct_dependencies.yaml).

```
root@ubuntu:~# git clone https://gitee.com/edgegallery/ci-management.git
root@ubuntu:~# cd ci-management/3rdparty-check/java
root@ubuntu:~/ci-management/3rdparty-check/java# mvn assembly:assembly
root@ubuntu:root@ubuntu:~/ci-management/3rdparty-check/java# java -jar -Dmethod=generate -Dfile=../conf/global_requirements.yaml target/java-dependency-check-1.0-SNAPSHOT-jar-with-dependencies.jar
```

## Check All Direct Dependencies

In this part, we will take the project  _mep_  as the example. When you are adding a new direct module
(for example  **github.com/stretchr/testify** ) to its  _mepserver/go.mod_  file, and then create a PR
to  _mep_  project, there is a Jenkins Job named "3rdParty-mep-pr-modules-check" triggered as the gating
job. Only when this job build successfully, this PR can be merged. This job checks all direct modules list
in all go.mod files (_mepserver/go.mod_ and _mepauth/go.mod_) of project _mep_ and all other indirect
modules list in all go.sum files (_mepserver/go.sum_ and _mepauth/go.sum_) of project _mep_.

In this case, this Job will be failed because you are adding a new direct modules **github.com/stretchr/testify**.
Also you can find the error message in the job's console output.

```
+ go run requirements -m check -f /home/jenkins/workspace/3rdParty-mep-pr-modules-check/mepserver/go.mod
time="2020-09-11T14:09:52+08:00" level=error msg="Illegal module github.com/stretchr/testify"
time="2020-09-11T14:09:52+08:00" level=error msg="All require modules in /home/jenkins/workspace/3rdParty-mep-pr-modules-check/mepserver/go.mod should be approved by community."
time="2020-09-11T14:09:52+08:00" level=error msg="Mod file /home/jenkins/workspace/3rdParty-mep-pr-modules-check/mepserver/go.mod are illegal, please update"
exit status 1
```

What the console output mean is that, module **github.com/stretchr/testify** hasn't been accepted
by EdgeGallery community as direct modules. With this reason, this PR can't be merged until solving
this issue. There could be 2 ways to do this:

1. Replace this module with another module which has been accepted by the community
2. Raise a request to add this module in

## Add a New Module into the Whole Scope

Before adding the new module, you need to make sure that this module meets the requirements of
what EdgeGallery require. Please following the checklist below and provide the supporting materials
when submitting the request.

- License of this module
- CVE Score (NA if couldn't find this module)

After getting all supporting materials, please add the new module and all its related indirect modules
to [global modules file](https://gitee.com/edgegallery/ci-management/blob/master/jjb/scripts/requirements/go/conf/global_requirements.yaml).
After that you can create a PR to project  _ci-management_  and attach your supporting materials for reviewing.

Also project _ci-management_ has a gating job named "3rdParty-JJB-PR-modules-verify-and-affect". Please make sure this job successful which means:

- The file is still in good status after you have changed it
    - Each module is with the required format "module + version + hash1"
    - There are no duplicate lines
    - There are only one specify version of one direct module
    - There could be several versions of one indirect module
    - There could be a module that is both direct and indirect modules, because it's direct for one project but indirect for another project
- The new modules you are adding won't break all other Golang projects
    - This is test by trying to build the projects with the updated global modules scope

After the community (Test WG) reviewing the PR creating in project _ci-management_ and then merging it,
the new modules have been approved by the community. Then please re-trigger the gating job of your own
project and it should be successful, which means your PR to add the new modules is ready to be merged now.