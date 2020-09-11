[TOC]
## 简介
MEC-ECO（MEC Ecosystem）是MEC生态能力App的简称，开发者在完成一个MEC APP开发的时候，如果需要将这个APP的能力开放给其他用户使用，可以通过注册成为MEC-ECO实现。

EdgeGallery会将该APP的对外接口提供给其他开发人员使用，并且将该服务通过MECM部署在需要的边缘侧，供其他APP能够使用。

## 应用场景
- 可以作为偏向于平台能力的应用，如API Gateway, 人脸识别等
- 可以独立部署的应用
- 资源消耗相对轻量，如轻量化数据库等
- 能够提供开发者友好的接口API或者SDK

## 流程介绍
- 应用上车EdgeGallery平台，此流程可参考Developer应用上车流程
- 应用上车完成后，可以选择是否成为平台能力
    - 选择成为MEC-ECO应用后，Developer将会在APP认证的过程添加MEC-ECO相关的认证测试用例
    - 成为MEC-ECO应用后，后续应用上车EdgeGallery平台时，Developer平台再能力选择的页面将会展示相关能力
    - 三方应用选择使用MEC-ECO应用能力依赖后，在三方应用部署的过程中，MEC-ECO应用会作为依赖条件部署

## 应用需求

-  需要MEC-ECO应用提供相关开发者的API与SDK
-  需要MEC-ECO应用提供相关文档说明
-  需要MEC-ECO应用提供相关API模拟器（Option）


## 注意事项

## 如何成为贡献者