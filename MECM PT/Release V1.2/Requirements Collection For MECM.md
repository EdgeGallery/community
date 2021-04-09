# Requirements Collection:

## 虚机APP支持需求
* Developer支持input参数补齐
* Developer支持设置app_configuration,支持定义AK/SK，app分流规则，DNS规则等。
* Developer支持APP远程调测
* Developer支持APP发布前测试用例，在部署调测阶段更新测试结果
* MECM支持虚机APP部署到OpenStack以及FusionSphere上。
* 支持实例化时参数输入：
    Develper生成app包，AK/SK，AZ，主机组，IP地址，vlanID，物理网络名等为输入参数，需要支持界面生成参数，部分参数由MECM分配，并下发applcm进行实例化。
* MECM部署APP时，支持通过cloud-init向APP注入MEP地址，端口，以及appinstanceId等信息。
* MECM部署APP时，支持通过userdata配置APP虚机的端口IP地址等

## 边缘自治需求增强
* MEPM-FE 和MEP-FE界面整合

## 安全需求
* 未认证接口的认证补齐
* 应用隔离等？

## 样例APP
* 样例APP效果提升

## MECM后台统一servicecomb

## 镜像管理需求增强
   目前做到了镜像管理统一到EdgeGallery系统仓库统一管理，但是对于外部仓库的支持，无镜像&有镜像两种包格式的支持需要进一步梳理补齐