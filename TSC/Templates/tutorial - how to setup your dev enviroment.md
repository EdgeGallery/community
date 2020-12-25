*   [Windows下Goland开发环境配置](#Windows下Goland开发环境配置)
    *   [Git安装](#Git安装)
    *   [Git配置](#Git配置)
    *   [Golang安装和配置](#Golang安装和配置)
    *   [IDE: IntelliJ Goland安装和配置](#IDE-IntelliJ-Goland安装和配置)
    *   [编译&运行](#编译运行)

请按照以下步骤在客户端上设置开发环境。

Windows下Goland开发环境配置
=============

Git安装
------

关于安装git客户端, 访问git官网: [https://git-scm.com/download/win](https://git-scm.com/download/win), 下载合适的git版本.

在安装过程中，你会遇见一下对话框.  选择默认的"Git Bash" and "Git GUI" )：

![](https://images.gitee.com/uploads/images/2020/0709/171639_1902299a_7634758.png)

如果要从Windows命令提示符键入Git命令，保留默认设置以添加git到PATH环境变量：

![](https://images.gitee.com/uploads/images/2020/0709/171711_d3e999f4_7634758.png)

使用Unix-style的换行符来终止行，因此在Windows Git客户端上，选择转换选项：

![](https://images.gitee.com/uploads/images/2020/0709/171738_87e4742f_7634758.png)

根据自己的喜好选择以下选项

![](https://images.gitee.com/uploads/images/2020/0709/171808_25a30fcc_7634758.png)

以下选择默认选项：

![](https://images.gitee.com/uploads/images/2020/0709/171836_28614b49_7634758.png)

Git配置
-----

配置用户名和密码

Git与其他配置管理工具不同，需要设置用户名和邮箱，提交代码时将附在提交信息中，方便他人查询。这一步不能省略，否则后续无法提交或合并代码。打开git Bash，在命令行输入下面两条命令即可：

`git config --global user.email <your_email>`

`git config --global user.name <your_name>`

ssh key 配置

步骤1：检查已有ssh key

打开“Git Bash” 命令行界面，输入：cd ~/.ssh 如果提示“No such file or directory”，跳到步骤3继续操作。

步骤2：备份ssh key

列出ssh key ：ls ；创建备份文件夹：mkdir key\_backup ；移动原key：mv id\_rsa\* key\_backup/

步骤3：生成ssh key

`ssh-keygen -t rsa -C "your_email"` 看到提示后直接回车（不需要设置密码，直接两次回车）

步骤4：将公开的key添加到Gitee的SSH账号中

用文本编辑器打开id\_rsa.pub 复制到Gitee->个人主页->个人设置->SSH公钥->添加公钥。

步骤5：下载代码

进入代码仓库，复制ssh链接

![输入图片说明](https://images.gitee.com/uploads/images/2020/0805/152008_9caf38ce_5659718.png "屏幕截图.png")

打开git bash，通过git clone命令下载代码 

`git clone git@gitee.com:edgegallery/mep.git`

![输入图片说明](https://images.gitee.com/uploads/images/2020/0805/152408_199b1961_5659718.png "屏幕截图.png")

Golang安装和配置
-------------
推荐下载Golang 1.14版本

安装指导：https://golang.org/doc/install

IDE: IntelliJ Goland安装和配置
-------------
安装指导：https://www.jetbrains.com/help/go/quick-start-guide-goland.html

编译&运行
---------
MEP编译部署指导：https://gitee.com/edgegallery/mep/blob/master/README.md

MEP-agent编译部署指导：https://gitee.com/edgegallery/mep-agent/blob/master/README.md