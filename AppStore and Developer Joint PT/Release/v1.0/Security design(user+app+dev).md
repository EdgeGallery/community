| 目录 | 安全检查项 | update version | User | App | Dev | MEP | 备注 |
|---|---|---|---|---|---|---|---|
| 识别，认证和授权 | 1\.1所有用于跨网络传输的机器对机器和人对机器接口都必须具有访问认证机制，并且认证过程必须在服务器上执行。注意：跨网络接口必须支持身份验证，以防止欺骗访问。 | v0\.9 | 满足 | 满足 | 满足 | 满足 | 机机接口：dev\-app上传csar包到app认证https、有token、校验用户权限：dev登录者是否有app平台的权限验证人机接口：所有接口提供token认证，https访问 |
|  | 1\.2对于每个需要授权的访问请求，服务器必须验证用户是否被授权执行此操作。 | v0\.9 | 满足 | 满足 | 满足 | 满足 |  |
|  | 1\.3服务器必须验证所有不受信任的数据源的大小，类型，长度和特殊字符，并拒绝所有未通过验证的数据。 | v0\.9 | 不涉及 | 满足 | 满足 | 满足 |  |
|  | 1\.4禁止在绕过系统安全性机制的同时允许访问系统或数据的功能（例如身份验证，权限控制和日志记录）。 | v0\.9 | 满足 | 满足 | 满足 | 满足 |  |
|  | 1\.5根据最小特权原则，用于运行软件程序的帐户是低特权OS帐户。 | v0\.9 | 满足 | 满足 | 满足 | 满足 | 部署启动时需要创建非root用户，计划v1\.0版本完成 |
|  | 1\.6可能重新获得对帐户的访问权限的帐户身份验证功能（例如更新配置文件，忘记密码，禁用/丢失的令牌，帮助台或IVR）至少具有与主要身份验证机制相同的抵抗能力。 | v0\.9 | 满足 | 不涉及 | 不涉及 | 不涉及 | 忘记密码需要手机认证；无token禁用机制无更新配置文件 |
|  | 1\.7所有身份验证控件必须安全失败。 注意：开发人员必须正确处理错误消息的显示。 | v0\.9 | 满足 | 满足 | 满足 | 满足 | 排查日志：日志记录中不能有敏感信息；提示信息排查：登录失败需要模糊提示 |
|  | 1\.8忘记的密码功能和其他恢复路径不应泄露当前密码，新密码也不应以明文形式发送给用户。 | v0\.9 | 满足 | 满足 | 满足 | 满足 | 当前通过手机验证重置密码 |
|  | 1\.9更改密码功能必须包括旧密码，新密码和密码确认。 | v0\.9 | 不涉及 | 不涉及 | 不涉及 | 不涉及 | 目前没有更改密码的功能 |
|  | 1\.10确认已采取措施阻止使用常用的密码和弱密码短语。 | v0\.9 | 满足 | 不涉及 | 不涉及 | 不涉及 | 密码需要满足字母 数字 特殊字符的组合，并且大于6个字符 |
|  | 1\.11确保没有捕获\-重放攻击的可能性。tag：version：v1\.0 渗透测试 | v1\.0 | 待确认 | 待确认 | 待确认 | 待确认 |  |
|  | 1\.12基于角色的访问控制。version：v1\.0 注意：必须定义并遵循基于角色的访问控制，才能访问系统中的资源。适用于用户以及应用程序。（此规则将在R1\.0 \*中生效） | v1\.0 | 满足 | 满足 | 满足 | 满足 |  |
| 2\.安全传输 | 2\.1敏感数据（包括密码）或关键服务数据（网络结构，模型参数）必须使用安全传输协议在网络上传输，或者在传输之前进行加密。注意：数据跨网络传输时，很容易受到攻击者的窃取或篡改。因此，必须保护重要数据。 | v0\.9 | 满足 | 满足 | 满足 | 满足 | 采用https单向认证的方式 |
|  | 2\.2请勿使用SSL2\.0，SSL3\.0，TLS1\.0或TLS1\.1进行安全传输。建议使用TLS1\.2和TLS1\.3。 | v0\.9 | 满足 | 满足 | 满足 | 满足 |  |
|  | 2\.3必须启用并配置适当的证书吊销，例如在线证书状态协议（OCSP）装订。 | v0\.9 | 不满足 | 不满足 | 不满足 | 不满足 | 社区版本的证书是自生成的，不做证书管理功能 |
| 3\.敏感和私有数据保护 | 3\.1身份验证凭据（例如密码和密钥）不能以纯文本格式存储在系统中，必须进行加密。如果不需要恢复纯文本，请使用不可逆的PBKDF2算法进行加密。如果需要恢复纯文本，则可以使用AES\-256 GCM算法进行加密。 | v0\.9 | 满足 | 不涉及 | 不涉及 | 满足 | user\-mgmt启动时，jwt公钥、私钥和私钥密码通过环境变量传入用户秘密使用不可逆加密存储，满足要求数据库密码和redis密码：环境变量明文传入 |
|  | 3\.2避免将密码存储在易于访问的位置。考虑存储密码的加密哈希，以替代以纯文本格式存储。 | v0\.9 | 满足 | 满足 | 满足 | 满足 | 用户登录密码通过不可逆加密后存储在数据库明文传入的密码存在于环境变量，使用完成后需要做清空处理启动时，https证书密码明文传入 |
|  | 3\.3所有敏感数据都通过HTTP消息正文发送到服务器（即，URL参数从不用于发送敏感数据）。 | v0\.9 | 满足 | 满足 | 满足 | 满足 |  |
|  | 3\.4默认情况下，不能直接读取数据主体的个人数据。如有必要，提供一个接口以获取数据主体的授权。注意：个人数据属于数据主体。如果需要访问和收集个人数据，则需要数据主体的同意和授权。 | v0\.9 | 满足 | 不涉及 | 不涉及 | 不涉及 | 增加了隐私声明功能 |
|  | 3\.5默认情况下，在应用程序处理期间生成的数据无法传输给第三方。如有必要，提供一个接口以获取数据主体的授权。注意：在将数据主体的个人数据传输给第三方之前，请提供一种合理的方法，以通知数据主体有关要传输的个人数据的类型，传输目的和有关数据接收者的信息，并征得数据同意科目。 | v0\.9 | 不涉及 | 不涉及 | 不涉及 | 不涉及 | 不存在将用户数据传递给第三方的场景 |
|  | 3\.6如果需要将个人数据用于市场营销，用户配置文件和市场调查，则提供一个接口以获取数据主体的授权，并提供一个接口以供数据主体随时撤消其授权。 | v0\.9 | 满足 | 满足 | 满足 | 满足 |  |
|  | 3\.7 测试浏览器历史记录和缓存是否缓存敏感信息 version：v1\.0 | v1\.0 | 满足 | 满足 | 满足 | 不涉及 | 退出登录后，通过浏览器‘回退’按钮不能查看历史访问记录 |
|  | 3\.8 越权测试 version：v1\.0 渗透测试 测试步骤： 1\.进行横向越权测试。 ，用户访问另一个同级别权限用户，获取信息 2\.进行纵向越权测试，用户访问另一个更高级别权限用户，获取信息 | v1\.0 | 满足 | 满足 | 满足 | 满足 |  |
| 4\.加密算法和密钥管理 | 4\.1请勿使用专有和非标准的加密算法。 | v0\.9 | 满足 | 满足 | 满足 | 满足 |  |
|  | 4\.2不要使用不安全的密码算法。建议使用强密码算法。 | v0\.9 | 满足 | 满足 | 满足 | 满足 | 未使用不安全的加密算法 |
|  | 4\.3用于加密数据的密钥不能进行硬编码。 | v0\.9 | 满足 | 满足 | 满足 | 满足 | 数据库、jwt、证书等的秘钥是通过环境变量传入，系统内没有使用加密算法加密数据 |
|  | 4\.4为了安全起见，请使用加密安全的随机数。 | v0\.9 | 满足 | 满足 | 满足 | 满足 | 系统中未使用非安全随机数 |
|  | 4\.5使用安全的随机数生成器生成密钥。 | v0\.9 | 满足 | 满足 | 满足 | 满足 |  |
|  | 4\.6重用随机数，禁止加密中的密钥对。version：v1\.0 注意：现时只能使用Nonce，并且只能使用一次。使用诸如要求递增，基于时间和/或质询响应的技术以确保随机数的唯一性。（此规则将在R1\.0 \*中生效） | v1\.0 | 满足 | 满足 | 满足 | 满足 |  |
| 5\. DOS攻击 | 5\.1必须具备反自动化功能，以防止违反凭据测试，暴力破解和帐户锁定攻击。 | v0\.9 | 满足 | 不涉及 | 不涉及 | 不涉及 | 通过滑块校验\+账号锁定功能，限制暴力破解 |
|  | 5\.2应用程序必须限制活动的并发会话数。 | v0\.9 | 满足 | 满足 | 满足 | 满足 | springboot默认限制200个连接 |
|  | 5\.3所有输入必须限制在适当的大小限制内。 | v0\.9 | 满足 | 满足 | 满足 | 满足 | 接口入参有长度校验，未做body体的长度限制；上传文件：防zip炸弹已经满足，文件大小限制最大xMB，按照业务对文件类型已经校验，文件名格式已校验 |
| 6\.会话管理 | 6\.1验证用户身份，否则，用于建立新的用户会话。在不使任何现有会话标识符无效的情况下，攻击者就有机会窃取经过身份验证的会话。注意：在授权新的用户会话之前，请使所有现有的会话标识符无效。 | v0\.9 | 不满足 | 不涉及 | 不涉及 | 不涉及 | v1\.0版本：需要在社区讨论，是否限制用户多点登录 |
|  | 6\.2将会话/凭证设置为有效的到期日期。 | v0\.9 | 满足 | 满足 | 满足 | 满足 | jwt的token中设置了有效时间，最长1天；前台session也设置了优先时间，最长 |
|  | 6\.3保护应用程序的会话免受信息泄漏。确保会话的数据未被其他会话使用或不可见。 | v0\.9 | 满足 | 满足 | 满足 | 满足 | 不存在跨session访问场景 |
|  | 6\.4用户注销时，会话必须无效。 | v0\.9 | 满足 | 不涉及 | 不涉及 | 不涉及 | 用户注销后，session被清空，结束会话；用户可以获取到jwt token，但是后台接口未直接暴露给client，所以也不能通过接口访问数据； |
|  | 6\.5成功的身份验证和重新身份验证必须生成新的会话和会话ID。 | v0\.9 | 满足 | 不涉及 | 不涉及 | 不涉及 |  |
| 7\. Web服务安全性 | 7\.1客户端和服务器之间必须具有相同的编码样式。注意：客户端和服务器之间的不同编码可能会带来安全隐患，并且过去已用于绕过验证和WAF来执行XSS攻击。 | v0\.9 | 满足 | 满足 | 满足 | 满足 | 前后台都使用utf\-8编码格式 |
|  | 7\.2必须接受XML或JSON模式，并在接受输入之前对其进行验证。 | v0\.9 | 满足 | 满足 | 满足 | 满足 | 只支持json格式，确认框架是否已经做了格式的校验 |
|  | 7\.3 Web应用程序的会话ID必须是随机的，并且在身份验证之后必须生成新的会话ID。（此规则将在R1\.0中生效\*） | v1\.0 | 满足 | 满足 | 满足 | 不涉及 |  |
|  | 7\.4服务器必须具有在将文件上传到包含网页文件的目录期间限制文件类型的机制。（此规则将在R1\.0中生效） | v1\.0 | 满足 | 满足 | 满足 | 不涉及 |  |
|  | 7\.5避免将Cookie数据用于与安全相关的决策。version：v1\.0 （此规则将在R1\.0中生效） 注意：攻击者可以在浏览器内或通过在浏览器外部实施客户端代码来轻松修改cookie。攻击者可以通过将cookie修改为包含期望值来绕过授权和身份验证之类的保护机制。 | v1\.0 | 满足 | 满足 | 满足 | 满足 |  |
|  | 7\.6 测试跨站请求伪造：version：v1\.0 渗透测试 攻击者可能会迫使Web应用程序的用户执行攻击者选择的操作，确定是否有可能代表用户发起不是由用户发起的请求， 1\.在服务端验证HTTP Referer字段比如request\.getHeader\(""Referer""\)\. 2\.在请求地址中添加token验证，比如session\.getAttribue\(""token""\)，然后将token放在seesion里面，获取攻击者发送过来的请求里面的token进行 比较\. | v1\.0 |  |  |  | 满足 |因为部署环境经常变动，不建议对referer进行校验。  |
|  | 7\.7 测试会话不能被预测 version：v1\.0 渗透测试 注意 ：测试人员希望检查是否以安全且不可预测的方式创建了cookie和其他会话令牌。能够预测和伪造弱Cookie的攻击者可以轻松劫持合法用户的会话。 | v1\.0 | 满足 | 满足 | 满足 | 不涉及 |  |
|  | 7\.8 测试会话属性是否正常设置。version：v1\.0 | v1\.0 | 满足 | 满足 | 满足 | 满足 |  |
| 8\.安全文件 | 8\.1所有公共功能接口，RESTful接口，本地功能接口，命令行接口以及用于身份验证的默认用户名和密码都必须在产品或应用程序文档中进行描述。注意：必须在应用文档中描述所有前面的新接口，以帮助用户更好地理解相应的模块。 | v0\.9 | 满足 | 满足 | 满足 | 满足 | 待输出 |
|  | 8\.2外部通讯连接对于系统运行和维护是必需的。必须在端口矩阵文档中描述所有使用的通信端口。动态监听端口必须限制在适当的范围内。注意：如果端口矩阵文档中未描述外部通信端口，则可能会影响用户安全配置。 | v0\.9 | 满足 | 满足 | 满足 | 满足 | 待输出 |
| 9。日志安全 | 9\.1请勿记录未经消毒的用户输入。注意：未经消毒的日志记录可以使攻击者伪造日志条目或将恶意内容注入日志。 | v0\.9 | 满足 | 满足 | 满足 | 满足 | 日志信息来自系统查询，不存在用户输入 |
|  | 9\.2足够的日志记录。注意：确保记录所有与安全性相关的成功和失败。如果没有正确记录关键安全事件，例如登录尝试失败，这将使恶意行为更难以检测，并且可能会阻止攻击成功后的取证分析。 | v0\.9 | 满足 | 满足 | 满足 | 满足 | 已经记录所有的接口访问日志。接口日志中需要增加客户端IP |
|  | 9\.3请勿在日志或日志文件中添加敏感信息。注意：认真考虑写入日志文件的信息的敏感性。不要将机密信息写入日志文件。在将应用程序部署到生产环境之前，请删除调试日志文件。保护日志文件免遭未经授权的读取/写入。 | v0\.9 | 满足 | 满足 | 满足 | 满足 | 日志中没有密码、秘钥、sesseion、token等敏感信息 |
|  | 9\.4避免记录过多的数据。注意：禁止大量重复的日志消息，并用定期摘要替换它们。例如，syslog可能包含一个条目，该条目在记录重复事件时声明“最后消息重复X次”。支持可以由管理员控制的日志文件的最大大小。 | v0\.9 | 满足 | 满足 | 满足 | 满足 | 单个日志文件20MB，最多50个，文件权限600 |
| 10\.数据库安全 | 10\.1不得使用数据库供应商提供的默认密码，密码必须复杂且未使用的默认数据库帐户必须被禁用/删除。（此规则将在R1\.0中生效） | v1\.0 | 满足 | 满足 | 满足 | 满足 |  |
