# SonarLint 
SonarLint是一个IDE的插件或者扩展，可帮助您在编写代码时检测和修复质量问题。
SonarLint默认可以对缺陷提出修改建议，以便可以在提交代码之前对其进行修复。
# IDEA中使用SonarLint
## 安装
File->Settings->Plugins，搜索Sonar，选择安装SonarLint,然后重启IDE即可

## 使用
选中项目，右键选择：SonarLint->Analyze with Sonarlint，会在IDE底部的SonarLint视图中显示具体的错误

如下：
![输入图片说明](https://images.gitee.com/uploads/images/2020/0811/173930_602ea7c2_5504908.png "idea.png")

# Eclipse中使用SonarLint
## 说明
此项测试基于eclipse 2020-06(4.16)版本

## 先决条件
根据此链接[https://marketplace.eclipse.org/content/sonarlint](ttps://marketplace.eclipse.org/content/sonarlint)判断你的eclipse版本是否判断此插件

判断方法：点击连链接打开页面的下载按钮，会出现eclispe版本列表，如果你的版本在其中，则说明可用
![输入图片说明](https://images.gitee.com/uploads/images/2020/0811/174038_f958a5b1_5504908.png "eclipse.png")
 
## 安装
版本支持的情况下Help->Install New Sofeware->Add，Name和Location填写如下
![输入图片说明](https://images.gitee.com/uploads/images/2020/0811/174136_77571796_5504908.png "eclipse-install.png")
 
点击Add，选择你想要安装的扩展，建议全选，一直next，直至出现Finish按钮，点击Finish按钮，重启eclipse，完成安装
![输入图片说明](https://images.gitee.com/uploads/images/2020/0811/174246_6c7cf9ed_5504908.png "eclipse-install-2.png")
 
## 配置
Window->Preferences->SonarLint
在SonarLint视图配置的右侧可以选择要配置的规则以及语言、检查规则等
![输入图片说明](https://images.gitee.com/uploads/images/2020/0811/174338_2fa4f2c4_5504908.png "eclipse-config.png")
 
## 使用
选中要检查的项目，右键SonarLint->Analyze
点击Eclipse底部SonarLint Report视图中的具体错误，会跳转至错误处，并且在具体错误处会给出修改建议
![输入图片说明](https://images.gitee.com/uploads/images/2020/0811/174515_7b37b0e8_5504908.png "e-use.png")


# VS Code中使用SonarLint
## 先决条件
Vs code中的sonarlint依赖于jdk,所以安装此插件之前，先在本地安装jdk
经测试，jdk8是可以用的，其他版本的jdk未测试，根据自己系统的配置，安装正确的jdk版本（32bit or 64bit）
建议：安装huawei jdk 或者openjdk，oracle jdk需要注册账号才能获取
安装jdk的过程可百度或者google

## 安装
选择Vs code左边的扩展菜单，搜索sonarlint，直接安装，直到Sonar安装完成
![输入图片说明](https://images.gitee.com/uploads/images/2020/0811/174618_77851925_5504908.png "v-install.png") 

## 配置
打开VScode，File->Prefrences->Settings，搜索框输入sonarlint，找到![输入图片说明](https://images.gitee.com/uploads/images/2020/0811/174715_b1fa9807_5504908.png "find.png") 配置项鼠标光标放到此配置项，配置项会出现齿轮形状的图标，点击齿轮，选择Reset Setting
![输入图片说明](https://images.gitee.com/uploads/images/2020/0811/174944_10fdebaf_5504908.png "v-c-1.png")

输入框，输入jdk的安装路径，点击右下角弹出的重启框中的Restart Now按钮，重启Vs code，完成配置
![输入图片说明](https://images.gitee.com/uploads/images/2020/0811/175018_e92f08a6_5504908.png "v-c-2.png")
 

## 使用
任意新建一个前端格式的文件，以我新建的html举例：
如果有不符合Sonarlint插件的要求，会在Vs code底部的PROBLEMS中报错，双击报错，会跳转至具体的错误处
![输入图片说明](https://images.gitee.com/uploads/images/2020/0811/175045_c63565b5_5504908.png "v-u-1.png") 
点击具体错误处的小黄灯，选择Open description of SonarLint rule ‘xxxx’，关于此错误的具体描述，解决办法等

选择Deactivate rule ‘xxxx’，会排除此规则（意思就是你认为这个报错或者建议可以忽略）
![输入图片说明](https://images.gitee.com/uploads/images/2020/0811/175103_69c64e82_5504908.png "v-u-2.png")
![输入图片说明](https://images.gitee.com/uploads/images/2020/0811/175113_b9b2d1a2_5504908.png "v-u-3.png")
 
 




