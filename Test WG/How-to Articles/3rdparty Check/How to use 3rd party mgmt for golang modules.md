# 3rd Party Management for Golang Modules

All Golang modules imported by the Golang projects in EdgeGallery can be separated into 2 parts,
direct modules and indirect modules. What EdgeGallery community concerned is all direct modules
including the module name, its version and its hash value. That means, all direct modules and
their versions used by one project should be approved by the community before.
Currently for one direct module, there is only one version accepted by the community.

# Golang Projects Developer

For Golang projects (e.g. mep and mep-agent) developers, please try your best to use the modules
and the versions which have been accepted by the community. You can go to the file
[global modules file](https://gitee.com/edgegallery/ci-management/blob/master/3rdparty-check/go/conf/global_requirements.yaml),
which lists the whole scope of Golang modules including both the direct and indirect modules.

If it's necessary to use another module that haven't accepted by the community, please following
the guide below to add it and its related indirect modules into the [community's global module scope](https://gitee.com/edgegallery/ci-management/blob/master/3rdparty-check/go/conf/global_requirements.yaml).

## Add New Golang Projects

There is a [project file](https://gitee.com/edgegallery/ci-management/blob/master/3rdparty-check/go/conf/projects.yaml)
list all these projects. If your project is not included in this file, please add it here.

There is a section  **main** in this file, and it should be the directory used to run the `go build` command.
For example, for project  _mep-agent_ , it's `./src/main/main.go`. And for project  _mep_ ,
there are 2 independent parts,  _mepauth_  and  _mepserver_ . The `main.go` file is under the same directory
as `go.mod`, so the value of section main is `./`.

After adding the project into [project file](https://gitee.com/edgegallery/ci-management/blob/master/3rdparty-check/go/conf/projects.yaml),
please use  **generate**  command to automatically
add all modules that new in this new project but haven't been added into [global modules file](https://gitee.com/edgegallery/ci-management/blob/master/3rdparty-check/go/conf/global_requirements.yaml).

```
root@ubuntu:~/requirements/go# go run requirements -m generate -f ./conf/global_requirements.yaml
```

## Check All Direct and Indirect Modules

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

- License of this module, shoule be approved by community and list in the [License Compliance Document](https://gitee.com/edgegallery/community/blob/master/License%20Compliance.md)
- CVE Score (NA if couldn't find this module)

After getting all supporting materials, please add the new module and all its related indirect modules
to [global modules file](https://gitee.com/edgegallery/ci-management/blob/master/3rdparty-check/go/conf/global_requirements.yaml).
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