Enable Edge Repository
-------------------
![输入图片说明](https://images.gitee.com/uploads/images/2020/1112/125331_35ea97cd_7639205.png "apm_edge_repo.png")

APM Flow diagram 
-------------------  
![输入图片说明](https://images.gitee.com/uploads/images/2020/1112/125440_188d65c7_7639205.png "apm_flow_diagram.png")

Steps to enable the edge repository
------------------- 
1. Create private repository. Please refer the steps to create docker proxy repository in nexus
2. Deploy the mecm-apm with push_image flag as true

Steps to create docker proxy repository in nexus
------------------- 
#### 1. create dir
mkdir -p /nexus/nexus3/data

#### 2. chown -R 200 /nexus/nexus3/data

#### 3. Go to nexus3
   cd /nexus/nexus3/

#### 4. create docker-compose.yml file
![输入图片说明](https://images.gitee.com/uploads/images/2020/1112/125514_61fb25eb_7639205.png "nexus_docker_compose.png")

#### 5. Launch nexus:
docker-compose up -d

#### 6. Open the URL [Docker host IP address]:8081 in a web browser

#### 7. Sign in to nexus3
Click the Sign In button in the upper right corner and use the username <admin> and the password.
Initial password can be found in data directory

#### 8.  Click proxy repository

##### a.  Click on cogwheel
![输入图片说明](https://images.gitee.com/uploads/images/2020/1112/125539_34c46314_7639205.png "edge_repo_home_page.png")

##### b. Click on repository
![输入图片说明](https://images.gitee.com/uploads/images/2020/1112/125603_b6b47bc9_7639205.png "nexus_repo_repositories.png")

##### c. Click on create repository
![输入图片说明](https://images.gitee.com/uploads/images/2020/1112/125628_2f372cba_7639205.png "nexus_create_Repository.png")

##### d. click on docker proxy
![输入图片说明](https://images.gitee.com/uploads/images/2020/1112/125654_e78d0037_7639205.png "nexus_docker_proxy.png")

##### e.  Configure proxy repo
![输入图片说明](https://images.gitee.com/uploads/images/2020/1112/125715_d9aa856e_7639205.png "nexus_configure_docker_proxy.png")

![输入图片说明](https://images.gitee.com/uploads/images/2020/1112/125736_75b5ef48_7639205.png "nexus_configure_docker_proxy2.png")

configure docker hub/swr repo username and password
![输入图片说明](https://images.gitee.com/uploads/images/2020/1112/125810_0f4940d0_7639205.png "nexus_configure_docker_proxy4.png")

#### 9. Configure insecure registry in /etc/docker/daemon.json and restart docker service

{
  "insecure-registries":["<ip>:<port>"]
}

ip where nexus repo is installed and port configured in the proxy repo

Commands to restart docker service:

sudo systemctl daemon-reload

sudo systemctl restart docker

#### 10.  login to docker registry

docker login -u <username> -p <password> <ip:port>
docker pull/push <ip:port>/<imagename:version>