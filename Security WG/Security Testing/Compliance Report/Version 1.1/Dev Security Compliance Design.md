# MEP V1.1 version Security Design rule involvement

|Requirements |Rules involved|
|----|----|
|[【developer】提供应用远程登录如VNC运维能力](https://gitee.com/OSDT/dashboard/issues?id=I2E0HE) | 2.1  |
|[【developer】支持和维护developer可用体验环境](https://gitee.com/OSDT/dashboard?issue_id=I2E0LR) | Function optimization, no security design required  |
|[【developer】提升SDK/API可获性与可用性](https://gitee.com/OSDT/dashboard?issue_id=I2E0LJ)| Function optimization, no security design required |
|[【UserMgmt/Developer/MECM/ATP/Lab/AppStore】EdgeGallery平台支持用户分权控制](https://gitee.com/OSDT/dashboard/issues?id=I1QGSH)| R1.2 |
|[【UserMgmt】EdgeGallery平台用户管理特性优化](https://gitee.com/OSDT/dashboard?issue_id=I2E6AI) | R1.6  R1.15 | 

## 【developer】提供应用远程登录如VNC运维能力.

### Rule 2.1

| Content                 | Related Information                                          |
| ----------------------- | ------------------------------------------------------------ |
| Security design rule ID | 2.1敏感数据（包括密码）或关键服务数据（网络结构，模型参数）必须使用安全传输协议在网络上传输，或者在传输之前进行加密。 注意：跨网络传输数据时，容易受到攻击者的窃取或篡改。因此，必须保护重要数据。 |
| Implementation details  | 1.根据端口通信文档，使用openssl扫描每个端口并确认默认情况下启用了HTTPS。 |
| Related APIs            |    |
| Example API payload     | NA |
| Related files           | NA |
| Related GUI URLs        | NA |
| GUI testing steps | NA |
| GUI input example       | NA |
| Additional Info         | NA |

## 【UserMgmt/Developer/MECM/ATP/Lab/AppStore】EdgeGallery平台支持用户分权控制

### Rule 1.2
| Content                 | Related Information                                          |
| ----------------------- | ------------------------------------------------------------ |
| Security design rule ID | 1.2对于每个需要授权的访问请求，服务器必须验证用户是否有权执行此操作。 注意：未经授权的URL访问是一个典型的Web安全漏洞。攻击者可以轻松绕过系统权限控制来访问系统资源并未经授权使用系统功能。为了防止用户直接输入URL来未经授权就请求和执行某些页面，后台需要验证请求URL的用户的权限。 测试绕过身份验证架构 |
| Implementation details  | 测试步骤： 1.设计水平特权升级测试用例，以验证授权机制的存在。例如用户A尝试访问用户B的资源。 2.设计垂直特权升级测试用例，以验证授权机制的存在。例如用户尝试执行超出其许可范围的操作或使用功能。 3.参数修改 例如修改请求中的参数，尝试 |
| Related APIs            |    |
| Example API payload     | NA |
| Related files           | NA |
| Related GUI URLs        | NA |
| GUI testing steps | NA |
| GUI input example       | NA |
| Additional Info         | NA |

## 【UserMgmt】EdgeGallery平台用户管理特性优化

### Rule 1.6
| Content                 | Related Information                                          |
| ----------------------- | ------------------------------------------------------------ |
| Security design rule ID | 可能重新获得对帐户访问权限的帐户身份验证功能（例如更新配置文件，忘记密码，禁用/丢失的令牌，帮助台或IVR）至少具有与主要身份验证机制相同的抵抗攻击能力 |
| Implementation details  | NA |
| Related APIs            |    |
| Example API payload     | NA |
| Related files           | NA |
| Related GUI URLs        | NA |
| GUI testing steps | NA |
| GUI input example       | NA |
| Additional Info         | NA |

### Rule 1.15
| Content                 | Related Information                                          |
| ----------------------- | ------------------------------------------------------------ |
| Security design rule ID | 不再使用的账号必须删除或停用。删除账号时，必须同时删除相应的凭据（如密码、秘钥等），以防止这些被认为是后门 |
| Implementation details  | 1.检查系统中是否存在未使用的账号或默认账号。2.如果存在此类账号，尝试使用此类账号登录，确保登录失败。 |
| Related APIs            |    |
| Example API payload     | NA |
| Related files           | NA |
| Related GUI URLs        | NA |
| GUI testing steps | NA |
| GUI input example       | NA |
| Additional Info         | NA |