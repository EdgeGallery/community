### Edgegallery使用Harbor作为helm chart 仓库指导
### 1. 简介

由于Edgegallery平台使用不能Github的helm repo，当前采用自建helm chart repo方案。
helm version：
`version.BuildInfo{Version:"v3.0.2", GitCommit:"19e47ee3283ae98139d98460de796c1be1e3975f", GitTreeState:"clean", GoVersion:"go1.13.5"}`
 kubectl version:

```
Client Version: version.Info{Major:"1", Minor:"19", GitVersion:"v1.19.0", GitCommit:"e19964183377d0ec2052d1f1fa930c4d7575bd50", GitTreeState:"clean", BuildDate:"2020-08-26T14:30:33Z", GoVersion:"go1.15", Compiler:"gc", Platform:"linux/amd64"}
Server Version: version.Info{Major:"1", Minor:"19", GitVersion:"v1.19.0", GitCommit:"e19964183377d0ec2052d1f1fa930c4d7575bd50", GitTreeState:"clean", BuildDate:"2020-08-26T14:23:04Z", GoVersion:"go1.15", Compiler:"gc", Platform:"linux/amd64"}

```

### 2. Helm 3 新特性


- 移除了 Tiller
- 不同的 namespace 可以使用相同的 Release Name
- 简化模板对象 .Capabilities
- 使用JSONSchema验证 charts 的 Values
- 将requirements.yaml合并到Chart.yaml中
- helm install 时需要指定 Release Name，开启自动生成需要 --generate-name 参数
- 支持 push 到远端 registry （如：harbor）
- 移除 helm serve
- 命令行变化（将原先的命令保留为别名Aliases）

-     helm delete --> helm uninstall
-     helm inspect -> helm show
-     helm fetch -> helm pull
go 导入路径改变 k8s.io/helm --> helm.sh/helm

[ the new feature in helm3](https://github.com/helm/helm/releases/tag/v3.0.0-alpha.1) :[the helm docs](https://v3.helm.sh/docs/)
1. Harbor v1.6.0 新特性
支持存储 helm charts
...

### 3. 安装部署预置条件

- 确保kubernetes环境可用
1. 下载并初始化 helm 3  （本文以v3.0.2为例）
[在helm官方地址下载需要的版本](https://github.com/helm/helm/releases)


```
tar zxvf helm-v3.0.2-linux-amd64.tar.gz
cd linux-amd64
cp helm /usr/local/bin
```

初始化helm
`helm init`
默认添加官方 `repo stable https://kubernetes-charts.storage.googleapis.com`

### 4. 安装 harbor 1.6+

添加harbor repo
`helm repo add goharbor https://helm.goharbor.io`
在安装之前我们需要配置一下 kube config context
`kubectl config current-context`
设置 context 指定对应的 namespace ，不指定使用的是 default
创建新namespace 

```
kubectl create namespace helm-repo
kubectl config set-context --current --namespace=helm-repo
```

安装harbor
helm -n helm-repo install harbor goharbor/harbor --set persistence.enabled=false --set expose.type=nodePort --set expose.tls.enabled=false --set externalURL=http://192.168.100.143:30002

参数说明：


- persistence.enabled=false 关闭存储，为了方便操作，真实使用时需要挂在存储
- expose.type=nodePort 使用 NodePort 访问
- expose.tls.enabled=false 关闭tls
- externalURL=http://192.168.100.143:30002 设置登录 harbor 的外部链接




### 5. 添加 harbor 中的 chartrepo 到 helm 3 中

harbor 装好之后，我们访问 http://192.168.100.143:30002 进行登录 harbor, harbor 的默认账号密码是 admin/Harbor12345 





