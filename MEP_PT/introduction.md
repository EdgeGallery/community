# EdgeGallery MEP Project

## Introduction 介绍
MEP（MEC Platform, MEC平台）是ETSI MEC标准定义的MEC平台网元，部署位置在边缘侧，主要涵盖如下功能：

- 为ME APP提供服务治理能力（注册、发现、订阅、通知）。
- 接收MEPM下发的流规则（Traffice Rules）配置。
- 接收MEPM下发的DNS规则（DNS Rules）配置。
- 为MEC APP提供DNS等MEC公共服务。

## Target & Scope 目标与范围

EdgeGallery MEP项目旨在打造一个开源、开放的参考MEP平台：
- 提供Mp1接口，支持服务治理、流规则和DNS规则配置；
- 提供MEC公共服务，如DNS服务。
- 提供Mm5接口，支持MEPM下发规则配置，APP生命周期管理相关处理。

 _其中Mp1接口遵从ETSI GS MEC 011 [1] 规范。_ 

## Contributors 参与者

|**Name**|**Email**|**Affiliation**|
|:------:|:-------:|:-------------:|
| 黎明江 | limingjiang@huawei.com | Huawei |
| 彭康桓 | kris.peng@xeniro.io    | 讯琥   |
| 范振伟 | charles.fan@xeniro.io  | 讯琥   |
| 刘小飞 | xiaofei.liu@xeniro.io  | 讯琥   |
| Libu Jacob Varghese | libu.jacob@huawei.com | Huawei |
| 陈炜  | allenwchen@tencent.com |   腾讯 |
| 彭育  |  perry.peng@huawei.com | Huawei  |
|   |   |   |

## Useful Info 有用信息

- 邮件列表：MEP项目使用Edge Gallery主邮件列表 main@edgegallery.groups.io，MEP相关技术讨论请在邮件主题中添加 **【MEP】** 或 **[MEP]** 标签。
- MEP项目组例会：协商后再定

## Reference 参考链接

[1] [ETSI GS MEC 011 V2.1.1](https://www.etsi.org/deliver/etsi_gs/MEC/001_099/011/02.01.01_60/gs_MEC011v020101p.pdf) 

[2] [Edgegallery MEP repo](https://gitee.com/EdgeGallery_group/mep)
