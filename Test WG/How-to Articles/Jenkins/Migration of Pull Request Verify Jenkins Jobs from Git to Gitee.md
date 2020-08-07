### Who Can use this Document?

This Document can be used by the people who wants to  **migrate their existing Jenkins Jobs from GitHub to Gitee** 

### Follow below steps to Migrate Jenkins Job from GitHub to Gitee

 **1.**  Go to   **Job -> Configure -> General** 

1.1 **GitHub project**

**Project url** :
Replace GitHub URL with Gitee URL

E.g.: [https://gitee.com/EdgeGallery_group/CICD_test.git/](http://)
![输入图片说明](https://images.gitee.com/uploads/images/2020/0720/154743_d7ba4760_7642053.png "屏幕截图.png")

1.2 Verify all the parameters and if parameter points to github,  **update parameter value to gitee** .

**This project is parameterized**

**String Parameter** :

Update **GIT_BASE**  Default value if exists from **GitHub URL to Gitee URL**
![输入图片说明](https://images.gitee.com/uploads/images/2020/0720/154755_aa74fecc_7642053.png "屏幕截图.png")

1.3 If a parameter  **doesn't specify anything about github** , then  **carry on with next parameter**  or next Jenkins configuration leaving the current paramter  **as it is** .

 **For example**  consider the below picture, GIT_Project/GIT_BRANCH has nothing to do with github/gitee, so leave GIT_Project/GIT_BRANCH configuration as it is
![输入图片说明](https://images.gitee.com/uploads/images/2020/0721/183423_94fd3e96_7642053.png "屏幕截图.png")

1.4  **Restrict where this project can be run**

**Label Expression** :

Update **Label Expression** value to  `openmec-jenkins-slave01`
![输入图片说明](https://images.gitee.com/uploads/images/2020/0720/154809_269bd30f_7642053.png "屏幕截图.png")

 **2.**  Go to   **Job->Configure->Source Code Management->Git** 

2.1 Confirm Repository URL is pointing to  **Gitee**  not  **GitHub** 

2.2 Select  **credentials**  [Sharath-boyapally/****]  from drop down list

2.3 Click  **Advanced** 

2.4 Update  **Name**  field with value `origin`

2.5 Update  **Refspec**  value with `+refs/heads/*:refs/remotes/origin/*`

2.6 Add another instance of repository by Clicking  **Add Repository**  and configure same  **Repository URL, Credentials, Name**  as previous instance by following  **2.1, 2.2, 2.3**  and  **2.4**  respectively

2.7 Update  **Refspec**  value in new Repository instance with `+refs/pull/*/MERGE:refs/pull/*/MERGE`

![输入图片说明](https://images.gitee.com/uploads/images/2020/0720/154824_5b93ca87_7642053.png "屏幕截图.png")

 **3.**  Remove existing values of  **Branch Specifier (blank for 'any')** 

3.1 Update  **Branch Specifier (blank for 'any')**  value with `origin/${giteeSourceBranch}`

3.2 Click  **Add Branch**  and update  **Branch Specifier (blank for 'any')**  value with

`merge-requests/${giteePullRequestIid}`

3.3 At the end we have  **two Branch Specifier**  values
![输入图片说明](https://images.gitee.com/uploads/images/2020/0720/154851_57b1db6d_7642053.png "屏幕截图.png")

 **4.** In  **Additional Behaviors**  click  **Add**  and select  **Merge Before Build from drop down** 

4.1 Update  **Name of repository**  value as `origin`

4.2 Update  **Branch to merge to**  value as `${giteeTargetBranch}`
![输入图片说明](https://images.gitee.com/uploads/images/2020/0720/154907_fdf582f7_7642053.png "屏幕截图.png")

 **5.**  Go to  **Job -> Configure -> Build Triggers** 

5.1 Unselect  **GitHub Pull Request Builder** 

5.2 Select  **Build when a change is pushed to Gitee**  checkbox

5.3 Select all checkboxes
```
Push Events, Opened Pull Requests Events, Accepted Pull Requests Events, 
Closed Pull Requests Events, Approved Pull Requests, Tested Pull Requests, 
Comment Pull Requests
```
5.4 Find  **Updated Pull Requests Events**  and Select  **Both Source and Target Branch updated**  from drop down

5.5 Unselect 
```
1. Enable [ci-skip]
2. Skip ci when test not required
3. Ignore last commit has been build
```
5.6 Select  **Allow all branches to trigger this job** 

5.7 Click  **Generate**  button under  **Secret Token for Gitee WebHook** 

5.8 Take a note of  **Gitee webhook URL**  and  **Secret Token for Gitee WebHook**

We use these values while configuring WebHook in Gitee
![输入图片说明](https://images.gitee.com/uploads/images/2020/0730/215626_09d0728a_7642053.png "屏幕截图.png")

 **6.**  Go to  **Job -> Configure -> Build Environment** 

Unselect **Set GitHub commit status with custom context and message**

 **7.**  Go to  **Job -> Configure -> Post-build Actions** 

7.1 Click on  **Add post-build action** 

7.2 Select  **Add note with build status on Gitee pull requests** 
![输入图片说明](https://images.gitee.com/uploads/images/2020/0720/155008_53c1e94d_7642053.png "屏幕截图.png")

 **8.**   **Do not modify or delete**  the configurations that are  **not related to Github** 

 **For example:**  in the below picture  **ESlint** is the tool, that doesn't mind whether the source code is from Gitee or Github,
so  **Don't modify or delete this Tool configuration** .

![输入图片说明](https://images.gitee.com/uploads/images/2020/0721/204524_d0c18e93_7642053.png "屏幕截图.png")

 **9.**  And Fianlly Save the JOB
![输入图片说明](https://images.gitee.com/uploads/images/2020/0721/205557_6b6be951_7642053.png "屏幕截图.png")

### Following steps are to configure Gitee WebHook for triggering Jenkins PR verify job:

 **10.**   **Access the Gitee repo**  in browser

10.1 Click on  **Settings** 
![输入图片说明](https://images.gitee.com/uploads/images/2020/0720/155019_035fd192_7642053.png "屏幕截图.png")

10.2 Click on  **WebHooks** 
![输入图片说明](https://images.gitee.com/uploads/images/2020/0720/155028_e9effca6_7642053.png "屏幕截图.png")

10.3 Click  **Add**  or  **+Add WebHook**  beside  **WebHooks setting**  or  **WebHooks management** 

10.4 Paste  **WebHook URL**  that we got from  **5.7**  [ Refer 5.7 ] in  **URL**  field
```
Refer following configuration
Job -> Configure -> Build Triggers 
Build when a change is pushed to Gitee
```
10.5 Paste  **Secret Token**  that we got from  **5.6**  [refer 5.6] as  **Webhook Password**  Value

10.6 Select  **Push, Pull Request, Active**  and click  **Add** 
![输入图片说明](https://images.gitee.com/uploads/images/2020/0730/215710_934c8d19_7642053.png "屏幕截图.png")

10.7 Create a pull request and  **verify**

i. Pull Request Verify  **Job gets triggered and passed as soon as PR is raised** 

ii. Pull Request Verify  **Jobs gets triggered and passed as soon as PR is merged** 

iii. Confirm Jenkins  **Jobs build status and links are updated in PR flow** 

**NOTE:** Jenkins configurations would vary from one job to another, so this document can be updated with any missed configuration required for Git to Gitee Migration.