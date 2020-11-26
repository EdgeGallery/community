# Jenkins JJB Jobs Description

All Jenkins jobs in [EdgeGallery Jenkins portal](http://jenkins.edgegallery.org/) are managed by the
[Jenkins Job Builder (JJB)](https://docs.openstack.org/infra/jenkins-job-builder/) now. The JJB could keep
all job descriptions in human readable and text format in Gitee project [ci-management](https://gitee.com/edgegallery/ci-management)
to make the changes and auditing easier and tracked. You could find all JJB job descriptions under
 _ci-management/newjjb_.

## Global Macro Definition

All global macro definitions are in  _ci-management/newjjb/global/macros.yaml_  and also there are some
common shell scripts under  _ci-management/newjjb/global/scripts_ . The global macro definitions are used
by each job to combine the whole job description and the common shell scripts are used by some jobs as the build scripts.

It should avoid to change the existing global macros because it may break some existing jobs in Jenkins.
It's ok to add some new global macros if needed.

Followings are introductions about all existing global macros one by one to let you know what are they
and how to use them in the job definition.

### Global Macros

-  **parameters:** 
    -  **GIT_PROJECT:**  project name get from the job definition yaml file of each project
    -  **GIT_BASE:**  combine EdgeGallery gitee url and project name together to get the project gitee url
    -  **GIT_BRANCH:**  target branch of each project like master or Release-v0.9
-  **property:** 
    -  **gitee-connection:**  connecting EdgeGallery Jenkins to Gitee which enable the Jenkins results back to Gitee
    -  **github-url:**  each project's gitee url
-  **scm:** 
    -  **gitee-scm:**  gitee source code management information about each project which is used to pull source code
                 automatically to jenkins workspace. The gitee credential used is jenkinsedgegallery.
-  **trigger:** 
    -  **no-auto-trigger:**  won't be triggerd. Almost all jobs should be set like this except the PR related jobs,
                       because they should be called by the upstream pipeline jobs instead of themselves while
                       the PR related jobs should be triggered automatically when a PR submitted.
    -  **pipeline-daily-master:**  the trigger time of pipeline jobs on master. Current time is 16:00 which is midnight in Beijing time.
    -  **pipeline-daily-Release-v0.9:**  the trigger time of pipeline jobs on stable release v0.9. Currently it is been disabled.
    -  **coverity-scan-biweekly-scan:**  the trigger of security jobs which is biweekly running
    -  **gitee-pr-submit-master:**  trigger the job when a PR has been submitted to gitee on master branch
    -  **gitee-pr-submit-Release-v0.9:**  trigger the job when a PR has been submitted to gitee on Release-v0.9 branch
    -  **gitee-push-master:**  trigger the job when code has been pushed to the project including merge PR on master branch
    -  **gitee-push-Release-v0.9:**  trigger the job when code has been pushed to the project including merge PR on Release-v0.9 branch
-  **builder:** 
    -  **dependency-check:**  the dependency check definition which choose the 6.0.2 version
    -  **anchore-builder:**  anchore container image scanner
-  **publisher:** 
    -  **result-comment-back:**  comment the jenkins job results back to the PR submit page as comments, should work
                           together with properties gitee-connection and github-url
    -  **warnings-ng-golint:**  static analysis results of tool  _Go Lint_ , the report file pattern is  _**/golangci.xml_
    -  **warnings-ng-acucobol:**  static analysis results of tool  _AcuCobol Compiler_
    -  **warnings-ng-pmd:**  static analysis results of tool  _PMD_ , the report file pattern is  _**/target/pmd.xml_
    -  **warnings-ng-findbugs:**  static analysis results of tool  _FindBugs_ , the report file pattern is  _**/target/findbugsXml.xml_
    -  **warnings-ng-checkstyle:**  static analysis results of tool  _CheckStyle_ , the report file pattern is  _**/target/checkstyle-result.xml_
    -  **warnings-ng-eslint:**  static analysis results of tool ESlint, the report file pattern is  _**/eslint_result.xml_
    -  **dependency-check-results:**  report the dependency check results
    -  **jacoco-coverage-report:**  record JaCoCo coverage report

### Common Shell Script

Currently, there is only one common shell script under _ci-management/newjjb/global/scripts_,  _3rdparty-java-check.sh_ .
This script is used by all Java jobs to do the 3rdparty check.

## Jobs For All Projects

There are many directories under  _ci-management/newjjb_  and each project in EdgeGallery has one directory here
to store all job description yaml files and shell scripts. Currently, there are 5 types of jobs:
-  **pr-submit:**  this is the gating job which will be triggered automatically after PR submitted and the Jenkins results
                   will be comment back to the PR submit page
-  **3rdparty-check:**  this is the 3rdparty dependency check job will be triggered automatically after PR submitted and
                        the Jenkins results will be comment back to the PR submit page
-  **code-check:**  this is the daily static code check job
-  **docker-build:**  this is the daily docker image build job and the images will then be pushed to SWR
-  **coverity-scan:**  this is the security coverity scan job which is triggered biweekly

### Project Settings

Before defining the jobs, there should be some project settings for all jobs of this project.
Take project api-emulator as the example.

```
- project:
    name: api-emulator
    project: '{name}'
    master: &master
      docker-tag: 'latest'
    blue: &blue
      docker-tag: 'v0.9.1-staging'
    branch:
      - master:
          branch: master
          <<: *master
      - Release-v0.9:
          branch: Release-v0.9
          <<: *blue
    jobs:
      - 'api-emulator-3rdparty-check-{branch}'
      - 'api-emulator-pr-submit-{branch}'
      - 'api-emulator-docker-build-{branch}'
      - 'api-emulator-docker-build-arm64-{branch}'
      - 'api-emulator-code-check-{branch}'
```

Following are the explanation about some key sections in it.
-  **name/project:**  this should be exact the same as the gitee project name which will be used to combine the gitee url and clone the source code
-  **master/blue:**  this is the branch definition which could used to define different docker-tag, helm-tag for different branch
-  **branch:**  this should be the existing branches and could add more branches or remove the old released ones
-  **jobs:**  this should list all job template defined in this file and could use the parameters define before

With these project settings, it will create 10 jobs for project api-emulator, 5 of them are with branch master
and the other 5 of them are with branch Release-v0.9.

Following take the PR submit job template as the example to introduce how to use the global macros and Jenkins Job Builder to define jobs.

### PR Submit Job

Take the api-emulator project as the example. Following is the job template definition.

```
- job-template:
    name: 'api-emulator-pr-submit-{branch}'
    properties:
      - github-url
      - gitee-connection
    parameters:
      - project-parameter:
          project: '{project}'
          branch: '{branch}'
    scm:
      - gitee-scm

    node: PR

    triggers:
      - 'gitee-pr-submit-{branch}'

    wrappers:
      - workspace-cleanup
      - timeout:
          timeout: 60
          abort: true

    builders:
      - shell:
          !include-raw: api-emulator-pr-submit.sh

    publishers:
      - warnings-ng-acucobol
      - warnings-ng-pmd
      - warnings-ng-findbugs
      - warnings-ng-checkstyle
      - result-comment-back
```

Following are the explanation about some key sections in it.
-  **name:**  this is the name of this job template which should be unique and it will instance 2 job with different branches defined in the project setting
-  **properties:**  this is used to connect gitee projects and to comment Jenkins results back to PR page
-  **parameters:**  this is the definition of dynamic parameters used to run the job and could be changed when manually triggered
-  **scm:**  use the global scm defined in _ci-management/newjjb/global/macros.yaml_ which is the gitee repo
-  **node:**  this is the label of the node which this job will build on
-  **triggers:**  this is the trigger condition of this job, except the PR related and pipeline jobs, other jobs are suggested to be 'no-auto-trigegr'
-  **wrappers:**  this is used to alter the way the build is run as well as the build output
    -  **workspace-cleanup:**  cleanup the workspace before the build
    -  **timeout:**  abort the build if it runs too long, and it could be used to avoid stuck for a long time
-  **builders:**  this is the actions this job should execute
    -  **shell:**  execute a shell command or include a shell script
-  **publishers:**  this is the actions this job should perform after the build is complete

## Pipeline Jobs Definition

There are several pipeline jobs defined under _ci-management/newjjb/pipelines_, such as static code check job,
docker image build and push job, EdgeGallery package build job, EdgeGallery deploy job and the whole CI/CD/CT job.

Following take the docker image build job as the example.


```
- job-template:
    name: 'docker-build-pipeline-{branch}'
    project-type: multijob

    parameters:
      - string:
          name: IMAGE_TAG
          default: '{docker-tag}'
      - string:
          name: GIT_TAG
          default: 'NONE'

    triggers:
      - 'no-auto-trigger'

    builders:
      - multijob:
          name: website-gateway
          condition: SUCCESSFUL
          execution-type: PARALLEL
          projects:
            - name: 'website-gateway-docker-build-{branch}'
              current-parameters: true
              abort-all-job: true
              retry:
                max-retry: 1
                strategy-path: "/home/jenkins/rules/failures.txt"
            - name: 'website-gateway-docker-build-arm64-{branch}'
              current-parameters: true
              abort-all-job: true
              retry:
                max-retry: 1
                strategy-path: "/home/jenkins/rules/failures.txt"
      - multijob:
          name: appstore
          condition: ALWAYS
          execution-type: PARALLEL
          projects:
            - name: 'appstore-be-docker-build-{branch}'
              current-parameters: true
              retry:
                max-retry: 1
                strategy-path: "/home/jenkins/rules/failures.txt"
            - name: 'appstore-be-docker-build-arm64-{branch}'
              current-parameters: true
              retry:
                max-retry: 1
                strategy-path: "/home/jenkins/rules/failures.txt"
```

-  **project-type:**  default to freestyle, also could be multijob or pipeline
-  **builders:**  there could be several multi jobs running sequentially
    -  **condition:**  SUCCESSFUL means running the next phase jobs only when this phase job successfully, and ALWAYS means always running them
    -  **execution-type:**  PARALLEL means running the sub jobs defined in this phase job parallelly
    -  **current-parameters:**  pass current build parameters to the sub jobs
    -  **abort-all-job:**  kill all sub jobs and phase jobs if this sub job is killed
    -  **retry:**  retry this sub job with the policy defined in file /home/jenkins/rules/failures.txt which located in Jenkins master machine

## Add/Update Jobs for Projects

For each project, you could update the existing jobs in this project and it would only influence these projects not other projects.
If you want to add some new jobs, you could refer to the existing jobs. After complete the changes, please submit PR to project
 _ci_management_  for review. And your project's jobs could be updated to Jenkins portal after this PR has been merged.