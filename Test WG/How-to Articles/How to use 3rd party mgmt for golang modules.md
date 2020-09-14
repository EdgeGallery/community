### 3rd Party Management for Golang Modules

All Golang modules imported by the Golang projects in EdgeGallery are separated into 2 parts, direct modules and indirect
modules. What EdgeGallery community concerned is all direct modules including the module name, its version and its hash value.
Currently for one direct module, there is only one version accepted by the community.

### Golang Projects Developer

For Golang projects (e.g. mep and mep-agent) developers, please try your best to use the modules and the versions
which have been accepted by the community. You can go to the file [global modules file](https://gitee.com/edgegallery/ci-management/blob/master/jjb/scripts/requirements/go/conf/global_requirements.yaml).
which list the whole scope of Golang modules including both the direct and indirect modules.

If it necessarily to use another module that haven't accept by the community, please following the guide below to add them
and their related indirect modules into the [community's global module scope](https://gitee.com/edgegallery/ci-management/blob/master/jjb/scripts/requirements/go/conf/global_requirements.yaml).

#### Check All Direct and Indirect Modules

In this part, we will take the project MEP as the example. When you add a new direct module
(for example  **github.com/stretchr/testify** ) to its  _mepserver/go.mod_  file, and then create a PR to MEP project,
there is a Jenkins Job named "3rdParty-mep-pr-modules-check" triggered as the gating job. Only if this job build
successfully, this PR can be merged. This job checks all direct modules list in all go.mod files
(_mepserver/go.mod_ and _mepauth/go.mod_) of project MEP and all other indirect modules list in all go.sum files
(_mepserver/go.sum_ and _mepauth/go.sum_) of project MEP.

In this case, this Job will be failed because you are adding a new direct modules **github.com/stretchr/testify**. Also you can find the error message in the job's console output.


```
+ go run requirements -m check -f /home/jenkins/workspace/3rdParty-mep-pr-modules-check/mepserver/go.mod
time="2020-09-11T14:09:52+08:00" level=error msg="Illegal module github.com/stretchr/testify"
time="2020-09-11T14:09:52+08:00" level=error msg="All require modules in /home/jenkins/workspace/3rdParty-mep-pr-modules-check/mepserver/go.mod should be approved by community."
time="2020-09-11T14:09:52+08:00" level=error msg="Mod file /home/jenkins/workspace/3rdParty-mep-pr-modules-check/mepserver/go.mod are illegal, please update"
exit status 1
```

What the console output means is that, module **github.com/stretchr/testify** hasn't been accepted by EdgeGallery community
as direct modules. With this reason, this PR can't be merged until solving this issue. There could be 2 ways to do this,
1) replace this module with another module which has been accepted by the community, second, 2) raise a request to add this module in.

#### Add a New Module into the Whole Scope

Before adding the new module, you need to make sure that this module meets the requirements of what EdgeGallery require.
Please following the checklist below and provide the supporting materials when submit the request.
