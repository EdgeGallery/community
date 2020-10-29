 ![输入图片说明](https://images.gitee.com/uploads/images/2020/1029/200226_a6e808dc_7786397.png "1.png")
规划应用名称和端口号
请在如下范围选择您部署应用所用端口：
32590~32660
请规划您的应用名称
建议用cuber+规划端口号的形式，例如cuber32600


1.	编写Helm-Chart
编辑用于k8s方式拉起的Helm-Chart文件：cuber.yaml 修改nodePort的值为自选规划的端口号。
```
---
apiVersion: apps/v1
kind: Deployment
metadata:
name: cuber
namespace: default
labels:
app: cuber
spec:
selector:
matchLabels:
app: cuber
replicas: 1
template:
metadata:
labels:
app: cuber
spec:
containers:
- name: cuber
image: swr.cn-north-1.myhuaweicloud.com/edgegallery/cuber:latest
imagePullPolicy: IfNotPresent
ports:
- containerPort: 80
---
apiVersion: v1
kind: Service
metadata:
name: cuber-svc
namespace: default
labels:
svc: cuber-svc
spec:
type: NodePort
ports:
- port: 80
name: function1
targetPort: 80
protocol: TCP
nodePort: 32580 
selector:
app: cuber
```

2.	通过Developer平台进行集成测试
操作步骤：
1)	注册EdgeGallery帐户：访问EdgeGallery Developer网站<https://daily.developer.edgegallery.org>，系统将跳转至登录界面，点击“免费注册”，填写合规的用户名、密码和手机验证码等信息，点击“提交”，相同用户名或者电话号码无法重复注册；

 ![注册](https://images.gitee.com/uploads/images/2020/1029/201918_774c362a_7786397.png "3.png")

2)	登录EdgeGallery平台，可以使用用户名或手机号登录；
![登录](https://images.gitee.com/uploads/images/2020/1029/201947_bca4cec3_7786397.png "4.png")

3)	点击“创建项目”，并选择“新建项目”；

 ![创建项目](https://images.gitee.com/uploads/images/2020/1029/200316_5314a118_7786397.png "5.png")!
[新建项目](https://images.gitee.com/uploads/images/2020/1029/200326_cf840783_7786397.png "6.png")

4)	填写基本信息，应用名称填写规划的应用名称，上传或选择图标，填写描述（不超过500个字符），填写完成后点击“下一步”；
 ![填写基本信息](https://images.gitee.com/uploads/images/2020/1029/200335_e0d2a880_7786397.png "7.png")
5)	选择能力，默认勾选“Service Discovery”，本应用无需其他能力，点击“下一步”；
 ![选择能力](https://images.gitee.com/uploads/images/2020/1029/200353_64a0a50d_7786397.png "8.png")
6)	在如下界面，点击“下一步”；
 ![输入图片说明](https://images.gitee.com/uploads/images/2020/1029/200407_411cf723_7786397.png "9.png")
7)	点击“确认”，创建项目成功，自动进入项目详情页面；
 ![输入图片说明](https://images.gitee.com/uploads/images/2020/1029/200418_4400cf2e_7786397.png "10.png")
8)	点击“构建&测试”，在方式2添加一个镜像，名称、版本号及内部端口号如图所填，外部端口号填写之前规划的端口号，输入完成后点击“添加”按钮；
 ![输入图片说明](https://images.gitee.com/uploads/images/2020/1029/200430_6787a9b5_7786397.png "11.png")
9)	点击上传Yaml，上传编辑好的cuber.yaml文件
 ![输入图片说明](https://images.gitee.com/uploads/images/2020/1029/200450_4fd0ce01_7786397.png "12.png")
10)	上传API，此处可将cuber.yaml再次上传；
 ![输入图片说明](https://images.gitee.com/uploads/images/2020/1029/200459_fcbaed38_7786397.png "13.png")
11)	此处添加镜像可以不用选择。服务框是对外显示的服务名、链接和端口号，可以根据图示中内容填写，完成点击“下一步”；
 ![输入图片说明](https://images.gitee.com/uploads/images/2020/1029/200508_f4061052_7786397.png "14.png")
12)	选择部署的服务器，默认选择119.8.125.174，点击“下一步”；
 ![输入图片说明](https://images.gitee.com/uploads/images/2020/1029/200530_8f1e1da5_7786397.png "15.png")
13)	等待测试部署完成，出现如下画面，代表部署成功，此时可以使用浏览器访问测试魔方主页面，如图中所示即为<http://119.8.125.174:32580>；
 ![输入图片说明](https://images.gitee.com/uploads/images/2020/1029/200542_d63ab0b3_7786397.png "16.png")
14)	点击完成测试，勾选发布APP到EdgeGallery应用商店，点击确认；

3.	完成集成
地址：<https://daily.appstore.edgegallery.org>
 ![输入图片说明](https://images.gitee.com/uploads/images/2020/1029/200609_c5ecfcb8_7786397.png "17.png")
