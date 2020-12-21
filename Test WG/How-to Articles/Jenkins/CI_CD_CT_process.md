# EdgeGallery Jenkins Introduction

## JJB to Manage all Jenkins Jobs

All EdgeGallery Jenkins jobs have been managed by [Jenkin Job Builder](https://docs.openstack.org/infra/jenkins-job-builder/)
now instead of manually configured. That means all jobs you see in [EdgeGallery Jenkins Portal](http://http://jenkins.edgegallery.org)
can not been configured by manually click on the portal anymore. All your manually configurations are temporarily and will be
reset after updating the jobs with the [JJB Scripts](https://gitee.com/edgegallery/ci-management/tree/master/jjb)
which mantained by project ci-management. Here is the [document about how to use the JJB to update](https://gitee.com/edgegallery/ci-management/blob/master/docs/jenkins_jobs_description.md) the existing jobs or add some new jobs.

## Current Jenkins Jobs Scopes

EdgeGallery use this [CI/CD/CT Jenkins portal](http://jenkins.edgegallery.org) to do the following things:
- PR submit check for all Gitee projects
- 3rdparty dependency check for all Golang and JAVA projects
- Daily code check for all Gitee projects
- Daily Docker image build and push to SWR
- Daily build offline packages
- Daily deploy and integration testing
- Weekly/Biweekly security check
- Pipeline jobs to trigger the jobs sequentially

## Setting for each Project

Currently EdgeGallery CI/CD/CT has covered almost all projects and each project (or projects group) has a view
for itself to list all jobs belonging to this project (or projects group). Take the website-gateway project as
the example. The following figure shows the view of project website-gateway.
![website-gateway-view-page](https://images.gitee.com/uploads/images/2020/1203/104137_b2a9ae00_7634758.png "project-view-overview.png")

In order to make sure the CI team can get the right people as well as letting Jenkins to send the jobs failure
email to him/her, following is a table to list all contact people for each project. Please feel free to add your name in.

| Project Name        | Contacts             | Email                    |
|---------------------|----------------------|--------------------------|
| api-emulator        | zhanghailong         | zhanghailong22@huawei.com|
| appstore-be         | sunjinghan           | sunjinghan1@huawei.com    |
| appstore-fe         | sunjinghan           | sunjinghan1@huawei.com    |
| atp                 | liuhuiling           | liuhuiling4@huawei.com   |
| atp-fe              | liuhuiling           | liuhuiling4@huawei.com   |
| ci-management       | xudan                | xudan16@huawei.com       |
| developer-be        | zhanghailong         | zhanghailong22@huawei.com|
| developer-fe        | zhanghailong         | zhanghailong22@huawei.com|
| docs                |                      |                          |
| edgeT               | Kanag                | kanagaraj.manickam@huawei.com|
| example             |                      |                          |
| helm-chart          | lizhiqian            | lizhiqian1@huawei.com|
| integration-testing | zhangali, liyuanyuan | zhangali@huawei.com,  liyuanyuan57@huawei.com|
| mecm-apm            | Vidyashree Rama      | Vidyashree.Rama@huawei.com|
| mecm-applcm         | Rama Subba Reddy S   | Rama.Subba.Reddy.S@huawei.com|
| mecm-appo           | Shashikanth V H      | shashikanth.vh@huawei.com|
| mecm-apprulemgr     | Gaurav               | gaurav.agrawal@huawei.com|
| mecm-fe             | yangyang             | yangyang263@huawei.com   |
| mecm-inventory      | Vidyashree Rama      | Vidyashree.Rama@huawei.com|
| mep                 | luxin                | luxin7@huawei.com        |
| mep-agent           | luxin                | luxin7@huawei.com        |
| installer           | Kanag, B Sharath Kumar Reddy| kanagaraj.manickam@huawei.com, bs.reddy@huawei.com|
| plugins             | swarup               | swarup.nayak1@huawei.com |
| toolchain           | helongfei            | helongfei6@huawei.com    |
| user-mgmt           | zhangbeiyuan         | zhangbeiyuan@huawei.com  |
| user-mgmt-fe        | zhangbeiyuan         | zhangbeiyuan@huawei.com  |
| website-gateway     | zhangbeiyuan         | zhangbeiyuan@huawei.com |

# EdgeGallery CI/CD/CT Process

All developers should follow this guide for your daily development. These could make sure to get a relatively
stable version everyday and help the developers to find out the issues in time. The following are some brief
introduction about the existing jobs. All owner of each project should go to the project view to check the
status of each jobs related to his/her projects. Please try your best to make sure all jobs are PASS and fix
the known issue as soon as possible.

## PR Submit Jobs

Every projects should define their own PR submit jobs to check the new codes submitted to review before merged.
Each project are free to define what its PR submit job should do (e.g. do unit test, static code check...) and
in which case it can say the new code submitted are fully test and can be merged. The results of this kind of
job will be comment back to the PR page after several seconds (could be minutes if the pr check take a long time).
Before you merge the PR, please make sure it get a PASS for the PR submit check job.

![pr-submit-check-pass](https://images.gitee.com/uploads/images/2020/1203/104226_c0bc5b74_7634758.png "pr-results-comment-back.png")

## 3rdparty Dependency Check Jobs

All Golang and JAVA projects are doing 3rdparty dependency check for every PR now. It's the same as PR submit job.
You can get the detailed description about the 3rdparty dependency check with the following link:
- [JAVA project 3rdparty dependency check tool](https://gitee.com/edgegallery/ci-management/blob/master/3rdparty-check/java/README.md)
- [Golang project 3rdparty module check tool](https://gitee.com/edgegallery/ci-management/blob/master/3rdparty-check/go/README.md)

## Daily code check jobs

The daily code check jobs are doing static code check and report for JAVA, Golang and JavaScript projects as well
as the SonarQube scan. The code check job are triggered as the first step pf the whole CI/CD/CT pipeline. The pipeline
will continue to do the docker image build, offline package, deploy and integration testing even though the code
check failed.

## Daily Docker Image Build and Push

The daily Docker image build jobs are building images (both x86 and arm64) for every projects daily and push them to
SWR as well as create and push the manifest. The website-gateway docker build job is the first one to build because many
other images are rely on this image. Also the pipeline will continue with the offline package, deploy and integration
testing steps even though some images are failed to build. In this case, the existing images which may be built some days
ago will be used.

## Offline Packages Build

The daily offline package build will be triggered after all docker images have been built and pushed. It will build
the packages for all, controller and edge for both x86 and arm64. Then the packages will be pushed to the FTP server
for user downloading.

## Daily Deploy and Integration Testing

The last step of the whole CI/CD/CT process is deploy and testing. There are 2 kings of deploy, one is daily deploy
on Jenkins env and the other is deploy on test env for people who need to do the test manually or with the test case.
Currently, it will deploy on Zijinshan Lab and Node45 test node.

After deployment, it will do the integration testing automatically and report the results of it.

The whole CI/CD/CT pipeline is triggered in the midnight everyday because there are two benefits of this time setting.
- Everyone could get the results of every projects the first time they go to office
- Avoid to occupy the Jenkins resources in the work time and leave it useful for other jobs

# Support Team

If you have any question or suggestion about this, please contact one of the following people
- xudan
- prakash
- kanag
