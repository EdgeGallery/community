*   [开发前的准备](#开发前的准备)
*   [参与EdgeGallery平台代码开发](#参与EdgeGallery平台代码开发)
    *   [Fork EdgeGallery仓库](#Fork-EdgeGallery仓库)
    *   [Clone你fork出来的代码副本到本地](#Clone你fork出来的代码副本到本地)
    *   [切换到你想修改的分支](#切换到你想修改的分支)
    *   [在Gitee上提Issue，描述你认为存在的问题](#在Gitee上提Issue，描述你认为存在的问题)
    *   [修改代码](#修改代码)
    *   [检查你的修改](#检查你的修改)
    *   [提交你的修改到你的本地分支上](#提交你的修改到你的本地分支上)
    *   [EdgeGallery要求你的commit message包含如下信息](#EdgeGallery要求你的commitmessage包含如下信息)
    *   [将新分支推送到你的Gitee副本中](#将新分支推送到你的Gitee副本中)
    *   [创建一个Pull Request](#创建一个Pull-Request)
    *   [Review Pull Request](#Review-Pull-Request)
    *   [Merge PR](#Merge-PR)

开发前的准备
------

获取仓库权限与配置本地开发环境

[WIP: 配置你的开发环境(Setting Up Your Development Environment)](https://gitee.com/edgegallery/community/wikis/Tutorial_%20%E9%85%8D%E7%BD%AE%E4%BD%A0%E7%9A%84%E5%BC%80%E5%8F%91%E7%8E%AF%E5%A2%83(Setting%20Up%20Your%20Development%20Environment)?sort_id=2658828)

参与EdgeGallery平台代码开发
---------------------

### Fork EdgeGallery仓库

点击项目右上角的“Fork”按钮，Fork这个仓库/Repo到你本地分支

### Clone你fork出来的代码副本到本地

```
git clone https://gitee.com/[用户名]/[仓库名].git
```

### 切换到你想修改的分支

```
git checkout -b branch_name
```

### 在Gitee上提Issue，描述你认为存在的问题

Instruction：[Tutorial: EdgeGallery BUG提单指导](https://gitee.com/edgegallery/community/wikis/Tutorial_%20EdgeGallery%20BUG%E6%8F%90%E5%8D%95%E6%8C%87%E5%AF%BC?sort_id=2658827)

### 修改代码

```
Add the change what you want
```

### 检查你的修改

```
git diff --word-diff //或者 git status查看修改状态
```

### 提交你的修改到你的本地分支上

```
git add <file modified> //也可以直接使用 git add -A
git commit -s
```

### EdgeGallery要求你的commit message包含如下信息

```
COMMIT_TITLE
Issue-ID:<TICKET_ID>

brief description about your changes
```

使用vim命令修改commit message，如
```
i //插入
:wq //写入并关闭文件
```

如果你要修改已经写入的commit message，使用如下命令
```
git commit --amend
```

### 将新分支推送到你的Gitee副本中

```
git push origin branch_name
```

### 创建一个Pull Request

登录Gitee页面并创建Pull Request 。

![](https://images.gitee.com/uploads/images/2020/0722/110045_9fdbf039_7625288.png)

描述你修改的内容或解决的问题。

如果你的PR与特定的Gitee Issue关联，请在Pull Request 描述中添加Issue编号

![](https://images.gitee.com/uploads/images/2020/0722/110928_e33450ef_7625288.png)

### Review Pull Request

仓库的Commiter 会定时review 你的修改。仓库的commiter会提出修改意见，请及时查看。

![](https://images.gitee.com/uploads/images/2020/0722/111623_449c7f3a_7625288.png)


### Merge PR

Committer 如果认为这个修改没有问题，可以Merge次PR。