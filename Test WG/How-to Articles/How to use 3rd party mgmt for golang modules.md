### 3rd Party Management for Golang Modules

All Golang modules imported by the Golang projects in EdgeGallery are separated into 2 parts, direct modules and indirect modules. What EdgeGallery community concerned is all direct modules including the module name, its version and its hash value.

### Golang Projects Developer

For Golang projects (e.g. mep and mep-agent) developers, please try your best to use the modules and the versions which have been accepted by the community and list in the [global modules file](https://gitee.com/edgegallery/ci-management/blob/master/jjb/scripts/requirements/go/conf/global_requirements.yaml).

If it necessarily to use another module that haven't accept by the community, please following the guide below to add them into the community's global module scope.

#### Check All Direct and Indirect Modules

In this part, we will take the project MEP as the example. When 

