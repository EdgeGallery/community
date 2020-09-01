## EdgeGallery安全设计（release-v0.9）

规则1 识别，认证和授权
-------------------------

### 1.1 所有用于跨网络传输的机器对机器和人对机器接口都必须具有访问认证机制，并且认证过程必须在服务器上执行。

| 内容                | 相关信息                                      |
| ----------------------- | ------------------------------------------------------------ |
| 安全设计规则编号 | 1.1  所有用于跨网络传输的机器对机器和人对机器接口都必须具有访问认证机制，并且认证过程必须在服务器上执行。<br>注意：跨网络接口必须支持身份验证，以防止欺骗访问。              |
| 实施细节   | **User-mgmt为其他平台提供认证鉴权，用户名和密码校验生成jwt token,https单向认证，用户角色权限管理，认证过程在服务器端，Appstore/Developer/MECM所有人机接口提供token认证，https访问**  |
| 相关API          | 1.user-mgmt生成token(此api是后台之间互相调用，后续改进之后前台页面不会看到token)<br>2.从dev上传csar包到app（post: /mec/developer/v1/apps/{appId}/action/upload）<br>3.mecm从app拉取csar包(目前mecm暂未实现，调用的是appstore的获取列表接口，get: /mec/appstore/v1/apps/)|
| API有效负载示例     | 不涉及|
| 相关文件           | 不涉及 |
| 相关GUI URL        |     https://daily.developer.edgegallery.org/                      |
| GUI测试步骤      | 1.F12<br> 2.在浏览器输入GUI URL<br>3.输入正确的用户名、密码，拖动验证条，完成验证,点击登录<br>4.进入developer首页，查看访问方式为https单向访问，经服务器端已生成token <br>5.选择导航栏测试-测试应用，按照要求成功上传一个csar格式的app<br> 6.上传完成，自动调整至测试-测试任务管理页面，等待测试状态为COMPLETED，点击上传<br>7.显示上传成功，则成功上传到appstore|
| GUI输入示例       | 不涉及             |
| 附加信息         | 不涉及 |
### 1.2 对于每个需要授权的访问请求，服务器必须验证用户是否被授权执行此操作。

| 内容                | 相关信息                                      |
| ----------------------- | ------------------------------------------------------------ |
| 安全设计规则编号 | 1.2  对于每个需要授权的访问请求，服务器必须验证用户是否被授权执行此操作             |
| 实施细节   | **user-mgmt平台修改密码、用户信息等接口需要排查是否横向越权，appstore利用 @PreAuthorize("hasRole('APPSTORE_TENANT')")注解做了提权访问，developer利用@PreAuthorize("hasRole('DEVELOPER_TENANT')")注解做了提权访问，需要排查app/dev中是否存在横向越权的接口，mecm接口暂未做鉴权**  |
| 相关API          | user-mgmt修改密码、用户信息等接口、appstore的所有接口、developer所有接口|
| API有效负载示例     | 不涉及|
| 相关文件           | 不涉及 |
| 相关GUI URL        |   https://daily.developer.edgegallery.org/<br>https://daily.appstore.edgegallery.org/                        |
| GUI测试步骤      | 1.利用上述的GUI URL分别登录developer/appstore的日构建环境（用户分别具有dev、appstore平台的操作权限）<br>2.登录成功，可操作不同接口，测试提权访问（如果登录用户具有dev权限，可尝试去访问app平台接口，观察是否执行成功。如果登录用户具有app权限，可尝试去访问dev平台接口，观察是否执行成功）<br>3.关于dev/app平台的横向越权测试，可通过切换具有相同角色（dev/app）的用户,安全退出，再用相同角色的不同用户去登录相同的平台，观察是否可以看到或者执行前一用户特有的功能|
| GUI输入示例       | 不涉及            |
| 附加信息         | 不涉及 |
### 1.3 服务器必须验证所有不受信任的数据源的大小，类型，长度和特殊字符，并拒绝所有未通过验证的数据。

| 内容                | 相关信息                                      |
| ----------------------- | ------------------------------------------------------------ |
| 安全设计规则编号 | 1.3 服务器必须验证所有不受信任的数据源的大小，类型，长度和特殊字符，并拒绝所有未通过验证的数据              |
| 实施细节   | **user/app/dev已增加参数长度、zip炸弹、参数格式校验，mecm待分析**  |
| 相关API          | 示例api: app平台上传csar包（app压缩包）<br>post：/mec/appstore/v1/apps|
| API有效负载示例     | 不涉及|
| 相关文件           | 不涉及 |
| 相关GUI URL        |  https://daily.appstore.edgegallery.org/                         |
| GUI测试步骤      | 1.在浏览器页面输入GUI URL<br>2.利用具有appstore平台角色的用户成功登录日构建平台<br>3.进入到导航栏为商店的页面，点击右上角的上传按钮，进入上传csar包的页面<br>4.按照页面要求上传app包，观察是否上传成功<br>5.可以上传app包超过200M或者描述超过1024字节或者不上传app icon等，观察是否有对应的失败提示，从而上传失败|
| GUI输入示例       |   不涉及          |
| 附加信息         | 不涉及 |
### 1.4 禁止在绕过系统安全机制的同时允许访问系统或数据的功能（例如身份验证、权限控制和日志记录）。

| 内容                | 相关信息                                      |
| ----------------------- | ------------------------------------------------------------ |
| 安全设计规则编号 | 1.4  禁止在绕过系统安全机制的同时允许访问系统或数据的功能（例如身份验证、权限控制和日志记录）            |
| 实施细节   | **app/dev平台的页面操作均需通过登录才可以操作，直接操作接口，需要添加token，接口的访问权限有@PreAuthorize把控，mecm待分析**  |
| 相关API          | 不涉及|
| API有效负载示例     | 不涉及|
| 相关文件           | 不涉及 |
| 相关GUI URL        |    同1.2                       |
| GUI测试步骤      |同1.2  |
| GUI输入示例       |   不涉及          |
| 附加信息         | 不涉及 |
### 1.5 根据最小特权原则，用于运行软件程序的帐户是低特权OS帐户。

| 内容                | 相关信息                                      |
| ----------------------- | ------------------------------------------------------------ |
| 安全设计规则编号 | 1.5 根据最小特权原则，用于运行软件程序的帐户是低特权OS帐户             |
| 实施细节   |   **部署user/app/dev平台项目时，需要新建非root用户去启动镜像（当前未实现），mecm待分析**|
| 相关API          |不涉及 |
| API有效负载示例     | 不涉及|
| 相关文件           | 不涉及 |
| 相关GUI URL        |        不涉及                   |
| GUI测试步骤      | 不涉及|
| GUI输入示例       |     不涉及        |
| 附加信息         | 不涉及 |
### 1.6 可能重新获得对帐户的访问权限的帐户身份验证功能（例如更新配置文件，忘记密码，禁用/丢失的令牌，帮助台或IVR）,至少具有与主要身份验证机制相同的抵抗能力。

| 内容                | 相关信息                                      |
| ----------------------- | ------------------------------------------------------------ |
| 安全设计规则编号 | 1.6 可能重新获得对帐户的访问权限的帐户身份验证功能（例如更新配置文件，忘记密码，禁用/丢失的令牌，帮助台或IVR）,至少具有与主要身份验证机制相同的抵抗能力。             |
| 实施细节   | **user平台忘记密码需要手机认证，无更新配置文件，无禁用token机制，app/dev/mecm不涉及**  |
| 相关API          |user平台忘记密码（PUT）：/v1/users/password |
| API有效负载示例     | 不涉及|
| 相关文件           | 不涉及 |
| 相关GUI URL        |        https://daily.appstore.edgegallery.org                  |
| GUI测试步骤      | 1.浏览器输入GUI URL<br>2.点击登录页右下角的忘记密码链接，进入重置密码页<br>3.输入已注册账号的电话号码，获取验证码，填写新密码以及密码确认，点击提交按钮，观察是否可以修改成功<br>4.如果修改成功，利用新密码登录，观察是否可以成功登入|
| GUI输入示例       |     不涉及        |
| 附加信息         | 不涉及 |
### 1.7 所有身份验证控件必须安全失败。

| 内容                | 相关信息                                      |
| ----------------------- | ------------------------------------------------------------ |
| 安全设计规则编号 | 1.7 所有身份验证控件必须安全失败。<br>注意:开发人员必须正确处理错误消息的显示             |
| 实施细节   | **user平台日志记录中不能有敏感信息，登录失败需要模糊提示，app/dev模块校验token失败需要增加日志记录，mecm待分析**  |
| 相关API          |不涉及 |
| API有效负载示例     | 不涉及|
| 相关文件           | 基于日构建环境，日志文件位置<br>user: /var/log/user-mgmt/user-mgmt-be.log <br>app: /var/log/appstore/appstore-be.log <br>dev: /var/log/developer/developer-be.log|
| 相关GUI URL        |        不涉及                   |
| GUI测试步骤      | 不涉及|
| GUI输入示例       |     不涉及        |
| 附加信息         | 不涉及 |
### 1.8 忘记的密码功能和其他恢复路径不应泄露当前密码，新密码也不应以明文形式发送给用户。

| 内容                | 相关信息                                      |
| ----------------------- | ------------------------------------------------------------ |
| 安全设计规则编号 | 1.8 忘记的密码功能和其他恢复路径不应泄露当前密码，新密码也不应以明文形式发送给用户。             |
| 实施细节   | **user平台当前通过手机验证码重置密码，app/dev/mecm不涉及**  |
| 相关API          |不涉及 |
| API有效负载示例     | 不涉及|
| 相关文件           | 不涉及 |
| 相关GUI URL        |        不涉及                   |
| GUI测试步骤      | 同1.6|
| GUI输入示例       |      同1.6       |
| 附加信息         | 不涉及 |
### 1.9 更改密码功能必须包括旧密码、新密码和密码确认。

| 内容                | 相关信息                                      |
| ----------------------- | ------------------------------------------------------------ |
| 安全设计规则编号 | 1.9 更改密码功能必须包括旧密码、新密码和密码确认。             |
| 实施细节   | **当前版本user平台不涉及，app/dev/mecm不涉及**  |
| 相关API          | 不涉及|
| API有效负载示例     | 不涉及|
| 相关文件           | 不涉及 |
| 相关GUI URL        |        不涉及                  |
| GUI测试步骤      | 不涉及|
| GUI输入示例       |     不涉及        |
| 附加信息         | 不涉及 |
### 1.10 确认已采取措施阻止使用的常用的密码和弱密码短语。

| 内容                | 相关信息                                      |
| ----------------------- | ------------------------------------------------------------ |
| 安全设计规则编号 | 1.10  确认已采取措施阻止使用的常用的密码和弱密码短语。             |
| 实施细节   | **user平台通过密码复杂度校验来阻止使用的常用的密码和弱密码短语，app/dev/mecm不涉及**  |
| 相关API          |user平台忘记密码（PUT）：/v1/users/password<br> user平台注册用户（POST）：/v1/users<br> |
| API有效负载示例     | 不涉及|
| 相关文件           | 不涉及 |
| 相关GUI URL        |         https://daily.appstore.edgegallery.org                   |
| GUI测试步骤      |一、忘记密码测试<br> 1.浏览器输入GUI URL<br>2.点击登录页右下角的忘记密码链接，进入重置密码页<br>3.输入已注册账号的电话号码，获取验证码，填写新密码（填写简单密码123456、huawei#123等）以及密码确认，点击提交按钮，观察是否可以修改成功<br>4.如果修改成功，利用新密码登录，观察是否可以成功登入<br>二、注册用户测试<br> 1.浏览器输入GUI URL<br>2.点击登录页右上角的注册链接，进入注册用户页<br>3.填写用户名、密码（填写简单密码例如123456、huawei123等）、密码确认、手机号等信息，点击提交按钮，观察是否可以注册成功<br>4.如果注册成功，利用新用户登录，观察是否可以成功登入|
| GUI输入示例       |     不涉及        |
| 附加信息         | 不涉及 |

规则2 安全传输
-----------

### 2.1 敏感数据（包括密码）或关键服务数据（网络结构，模型参数）必须使用安全传输协议在网络上传输，或者在传输之前进行加密。

| 内容                | 相关信息                                      |
| ----------------------- | ------------------------------------------------------------ |
| 安全设计规则编号 | 2.1  敏感数据（包括密码）或关键服务数据（网络结构，模型参数）必须使用安全传输协议在网络上传输，或者在传输之前进行加密。注意：数据跨网络传输时，很容易受到攻击者的窃取和篡改，因此必须保护重要数据。            |
| 实施细节   | **user/app/dev所有接口采用https单向认证,mecm采用http协议**  |
| 相关API          |不涉及 |
| API有效负载示例     | 不涉及|
| 相关文件           | 不涉及 |
| 相关GUI URL        |        不涉及                   |
| GUI测试步骤      | 不涉及|
| GUI输入示例       |     不涉及        |
| 附加信息         | 不涉及 |
### 2.2 请勿使用SSL2.0，SSL3.0，TLS1.0或者TLS1.1进行安全传输。建议使用TLS1.2和TLS1.3。

| 内容                | 相关信息                                      |
| ----------------------- | ------------------------------------------------------------ |
| 安全设计规则编号 | 2.2  请勿使用SSL2.0，SSL3.0，TLS1.0或者TLS1.1进行安全传输。建议使用TLS1.2和TLS1.3。            |
| 实施细节   | **user/app/dev/mecm当前版本开启了SSL协议，但是未做版本限制**  |
| 相关API          |不涉及 |
| API有效负载示例     | 不涉及|
| 相关文件           |**目前日构建环境为159.138.49.97，经执行kubectl get svc发现，user/app/dev /mecm均无对外提供nodeport**|
| 相关GUI URL        |        不涉及                   |
| GUI测试步骤      | 不涉及|
| GUI输入示例       |     不涉及        |
| 附加信息         | 不涉及 |
### 2.3 必须启用并配置适当的证书吊销，例如在线证书状态协议（OCSP）装订。

| 内容                | 相关信息                                      |
| ----------------------- | ------------------------------------------------------------ |
| 安全设计规则编号 | 2.3 必须启用并配置适当的证书吊销，例如在线证书状态协议（OCSP）装订。            |
| 实施细节   | **user/app/dev目前版本未做证书管理功能，不涉及吊销功能，mecm待分析**  |
| 相关API          |不涉及 |
| API有效负载示例     | 不涉及|
| 相关文件           | 不涉及 |
| 相关GUI URL        |        不涉及                   |
| GUI测试步骤      | 不涉及|
| GUI输入示例       |     不涉及        |
| 附加信息         | 不涉及 |

规则3 敏感和私有数据保护
-----------------------------
### 3.1 身份验证凭据（例如密码和密钥）不能以纯文本格式存储在系统中，必须进行加密。如果不需要恢复纯文本，请使用不可逆的PBKDF2算法进行加密。如果需要恢复纯文本，则可以使用AES-256 GCM算法进行加密。

| 内容                | 相关信息                                      |
| ----------------------- | ------------------------------------------------------------ |
| 安全设计规则编号 | 3.1 身份验证凭据（例如密码和密钥）不能以纯文本格式存储在系统中，必须进行加密。如果不需要恢复纯文本，请使用不可逆的PBKDF2算法进行加密。如果需要恢复纯文本，则可以使用AES-256 GCM算法进行加密。            |
| 实施细节   | **user-mgmt启动时，jwt公钥、私钥和私钥密码通过环境变量传入，用户密码使用不可逆加密存储，数据库密码和redis密码是通过环境变量的明文传入的，不存在用户通过配置文件导入密码的场景，app/dev/mecm不涉及**  |
| 相关API          |不涉及 |
| API有效负载示例     | 不涉及|
| 相关文件           | 不涉及 |
| 相关GUI URL        |        不涉及                   |
| GUI测试步骤      | 不涉及|
| GUI输入示例       |     不涉及        |
| 附加信息         | **不涉及界面测试，用户密码测试要去数据库查询，其他要在环境变量中查看配置（使用完密钥或者密码，环境变量未清空）** |
### 3.2 避免将密码存储在易于访问的位置。考虑存储密码的加密哈希，以替代纯文本格式存储。

| 内容                | 相关信息                                      |
| ----------------------- | ------------------------------------------------------------ |
| 安全设计规则编号 | 3.2 避免将密码存储在易于访问的位置。考虑存储密码的加密哈希，以替代纯文本格式存储。            |
| 实施细节   | **user-mgmt存储的用户密码是使用不可逆加密算法PBKDF2加密完成后的哈希值，app/dev启动时的https证书是通过环境变量传入的，mecm待分析**  |
| 相关API          |不涉及 |
| API有效负载示例     | 不涉及|
| 相关文件           | 不涉及 |
| 相关GUI URL        |        不涉及                   |
| GUI测试步骤      | 不涉及|
| GUI输入示例       |     不涉及        |
| 附加信息         |  **不涉及界面测试，用户密码测试要去数据库查询，其他要在环境变量中查看配置（使用完密钥或者密码，环境变量未清空）** |
### 3.3 所有敏感数据都通过HTTP消息正文发送到服务器（即，URL参数从不用于发送敏感数据）。

| 内容                | 相关信息                                      |
| ----------------------- | ------------------------------------------------------------ |
| 安全设计规则编号 | 3.3 所有敏感数据都通过HTTP消息正文发送到服务器（即，URL参数从不用于发送敏感数据）。            |
| 实施细节   | **user平台敏感数据(用户名、密码等)/app、dev平台的敏感数据通过请求体body传输，mecm待分析**  |
| 相关API          |不涉及 |
| API有效负载示例     | 不涉及|
| 相关文件           | 不涉及 |
| 相关GUI URL        |        https://daily.developer.edgegallery.org/<br>https://daily.appstore.edgegallery.org/                   |
| GUI测试步骤      | 1.F12<br>2.利用上述的GUI URL分别登录developer/appstore的日构建环境（用户分别具有dev、appstore平台的操作权限）<br>2.点击登录按钮，可观察url中是否有携带用户名、密码等敏感数据<br>3.登录成功，可操作不同接口（dev或者appstore平台），观察url中是否有携带敏感数据  |
| GUI输入示例       |       不涉及   |
| 附加信息         | 不涉及 |
### 3.4 默认情况下，不能直接读取数据主体的个人数据。如有必要，提供一个接口以获取数据主体的授权。

| 内容                | 相关信息                                      |
| ----------------------- | ------------------------------------------------------------ |
| 安全设计规则编号 | 3.4 默认情况下，不能直接读取数据主体的个人数据，如有必要，提供一个接口以获取数据主体的授权。<br>注意：个人数据属于数据主体。如果需要访问和收集个人数据，则需要数据主体的同意和授权          |
| 实施细节   | **user平台注册信息有手机号、公司、邮箱、性别，需要提供免责声明，用户勾选后才能继续注册<br>app、dev平台不涉及，mecm待分析**  |
| 相关API          |user平台注册用户（POST）：/v1/users<br> |
| API有效负载示例     | 不涉及|
| 相关文件           | 不涉及 |
| 相关GUI URL        |        https://daily.appstore.edgegallery.org/                 |
| GUI测试步骤      |  1.浏览器输入GUI URL<br>2.点击登录页右上角的注册链接，进入注册用户页<br>3.填写用户名、密码、密码确认、手机号等信息，点击提交按钮，观察是否弹出免责声明，待用户阅读勾选之后才可以继续注册|
| GUI输入示例       |     不涉及        |
| 附加信息         | 不涉及 |
### 3.5 默认情况下，在应用程序处理期间生成的数据无法传输给第三方。如有必要，提供一个接口以获取数据主体的授权。

| 内容                | 相关信息                                      |
| ----------------------- | ------------------------------------------------------------ |
| 安全设计规则编号 | 3.5 默认情况下，在应用程序处理期间生成的数据无法传输给第三方。如有必要，提供一个接口以获取数据主体的授权。<br>注意：在将数据主体的个人数据传输给第三方之前，请提供一个合理的方法，以通知数据主体有关要传输的个人数据的类型，传输目的和有关数据接受者的信息，并征得数据主体同意          |
| 实施细节   | **user/app/dev平台当前版本不涉及，mecm待分析，<br>(1.0版本app认证测试过程中的病毒扫描需要给第三方提供接口，存在将csar包发给第三方的风险，需要考虑授权)**  |
| 相关API          |不涉及 |
| API有效负载示例     | 不涉及|
| 相关文件           | 不涉及 |
| 相关GUI URL        |        不涉及                   |
| GUI测试步骤      | 不涉及|
| GUI输入示例       |     不涉及        |
| 附加信息         | 不涉及 |
### 3.6 如果需要将个人数据用于市场营销，用户配置文件和市场调查，则提供一个接口以获取数据主体的授权，并提供一个接口以供数据主体随时撤消其授权。

| 内容                | 相关信息                                      |
| ----------------------- | ------------------------------------------------------------ |
| 安全设计规则编号 | 3.6 如果需要将个人数据用于市场营销，用户配置文件和市场调查，则提供一个接口以获取数据主体的授权，并提供一个接口以供数据主体随时撤消其授权          |
| 实施细节   | **user/app/dev平台当前版本不涉及，mecm待分析**  |
| 相关API          |不涉及 |
| API有效负载示例     | 不涉及|
| 相关文件           | 不涉及 |
| 相关GUI URL        |        不涉及                   |
| GUI测试步骤      | 不涉及|
| GUI输入示例       |     不涉及        |
| 附加信息         | 不涉及 |

规则4 加密算法和密钥管理
-------------------------
### 4.1 请勿使用专有和非标准的加密算法。

| 内容                | 相关信息                                      |
| ----------------------- | ------------------------------------------------------------ |
| 安全设计规则编号 | 4.1 请勿使用专有和非标准的加密算法          |
| 实施细节   | **user/app/dev未使用专有和非标准的加密算法，涉及的加密算法PBKDF2、Java KeyStore，mecm待分析**  |
| 相关API          |不涉及 |
| API有效负载示例     | 不涉及|
| 相关文件           | 不涉及 |
| 相关GUI URL        |        不涉及                   |
| GUI测试步骤      | 不涉及|
| GUI输入示例       |     不涉及        |
| 附加信息         | 不涉及 |
### 4.2 不要使用不安全的密码算法。建议使用强密码算法。

| 内容                | 相关信息                                      |
| ----------------------- | ------------------------------------------------------------ |
| 安全设计规则编号 | 4.2 不要使用不安全的密码算法。建议使用强密码算法          |
| 实施细节   | **user使用了PBKDF2，满足安全要求，app/dev不涉及，mecm待分析（v1.0：csar包签名算法，需要使用安全的加密算法）**  |
| 相关API          |不涉及 |
| API有效负载示例     | 不涉及|
| 相关文件           | 不涉及 |
| 相关GUI URL        |        不涉及                   |
| GUI测试步骤      | 不涉及|
| GUI输入示例       |     不涉及        |
| 附加信息         | 不涉及 |
### 4.3 用于加密数据的密钥不能进行硬编码。

| 内容                | 相关信息                                      |
| ----------------------- | ------------------------------------------------------------ |
| 安全设计规则编号 | 4.3 用于加密数据的密钥不能进行硬编码          |
| 实施细节   | **user/app/dev数据库、jwt、证书等的秘钥是通过环境变量传入，系统内没有使用加密算法加密数据，mecm待分析**  |
| 相关API          |不涉及 |
| API有效负载示例     | 不涉及|
| 相关文件           | 不涉及 |
| 相关GUI URL        |        不涉及                   |
| GUI测试步骤      | 不涉及|
| GUI输入示例       |     不涉及        |
| 附加信息         | 不涉及 |
### 4.4 为了安全起见，请使用加密安全的随机数。

| 内容                | 相关信息                                      |
| ----------------------- | ------------------------------------------------------------ |
| 安全设计规则编号 | 4.4 为了安全起见，请使用加密安全的随机数          |
| 实施细节   | **user使用SecureRandom类生成随机数，app/dev需要排查非安全的随机数，mecm待分析**  |
| 相关API          |不涉及 |
| API有效负载示例     | 不涉及|
| 相关文件           | 不涉及 |
| 相关GUI URL        |        不涉及                   |
| GUI测试步骤      | 不涉及|
| GUI输入示例       |     不涉及        |
| 附加信息         | 不涉及 |
### 4.5 使用安全的随机数生成器生成密钥。

| 内容                | 相关信息                                      |
| ----------------------- | ------------------------------------------------------------ |
| 安全设计规则编号 | 4.5 使用安全的随机数生成器生成密钥          |
| 实施细节   | **user/app/dev使用java keystore加密算法，安全生成密钥文件，mecm待分析**  |
| 相关API          |不涉及 |
| API有效负载示例     | 不涉及|
| 相关文件           | 不涉及 |
| 相关GUI URL        |        不涉及                   |
| GUI测试步骤      | 不涉及|
| GUI输入示例       |     不涉及        |
| 附加信息         | 不涉及 |

规则5 DOS攻击
--------------------
### 5.1 必须具备反自动化功能，以防止违反凭据测试，暴力破解和帐户锁定攻击。

| 内容                | 相关信息                                      |
| ----------------------- | ------------------------------------------------------------ |
| 安全设计规则编号 | 5.1 必须具备反自动化功能，以防止违反凭据测试，暴力破解和帐户锁定攻击         |
| 实施细节   | **app/dev/mecm已具备反自动化登录验证（登录的滑块验证），未做防暴力破解和多次登录失败锁定功能，0.9版本增加账号锁定功能**  |
| 相关API          |引用的是框架中的api,代码中未直接编写登入接口 |
| API有效负载示例     | 不涉及|
| 相关文件           | 不涉及 |
| 相关GUI URL        |        https://daily.appstore.edgegallery.org                  |
| GUI测试步骤      | 1.在浏览器输入GUI URL，进入到appstore日构建环境的登录页面<br>2.输入正确的用户名、密码，点击登录，观察是否为登录失败<br>3.输入正确的用户名、密码,拉动滑块完成验证，点击登录，观察是否为登录成功|
| GUI输入示例       |     不涉及        |
| 附加信息         | 不涉及 |
### 5.2 应用程序必须限制活动的并发会话数。

| 内容                | 相关信息                                      |
| ----------------------- | ------------------------------------------------------------ |
| 安全设计规则编号 | 5.2 应用程序必须限制活动的并发会话数。          |
| 实施细节   | **user/app/dev未做并发会话数的限定，考虑user框架是否可以限制并发会话数,mecm待分析**  |
| 相关API          |不涉及 |
| API有效负载示例     | 不涉及|
| 相关文件           | 不涉及 |
| 相关GUI URL        |        不涉及                   |
| GUI测试步骤      | 不涉及|
| GUI输入示例       |     不涉及        |
| 附加信息         | 不涉及 |
### 5.3 所有输入必须限制在适当的大小限制内。。

| 内容                | 相关信息                                      |
| ----------------------- | ------------------------------------------------------------ |
| 安全设计规则编号 | 5.3 所有输入必须限制在适当的大小限制内。          |
| 实施细节   | **接口入参有长度校验，未做body体的长度限制；上传文件：防zip炸弹已经满足，文件大小限制最大xMB，按照业务对文件类型已经校验，文件名格式已校验，mecm模块待分析**  |
| 相关API          |示例api: app平台上传csar包（app压缩包）<br>post：/mec/appstore/v1/apps |
| API有效负载示例     | 不涉及|
| 相关文件           | 不涉及 |
| 相关GUI URL        |        https://daily.appstore.edgegallery.org/                   |
| GUI测试步骤      | 1.在浏览器页面输入GUI URL<br>2.利用具有appstore平台角色的用户成功登录日构建平台<br>3.进入到导航栏为商店的页面，点击右上角的上传按钮，进入上传csar包的页面<br>4.按照页面要求上传app包，观察是否上传成功<br>5.可以上传app包超过200M或者描述超过1024字节或者不上传app icon等，观察是否有对应的失败提示，从而上传失败|
| GUI输入示例       |     不涉及        |
| 附加信息         | 不涉及 |

规则6 会话管理
--------------
### 6.1 验证用户身份，否则，用于建立新的用户会话。在不使任何现有会话标识符无效的情况下，攻击者就有机会窃取经过身份验证的会话。

| 内容                | 相关信息                                      |
| ----------------------- | ------------------------------------------------------------ |
| 安全设计规则编号 | 6.1 验证用户身份，否则，用于建立新的用户会话。在不使任何现有会话标识符无效的情况下，攻击者就有机会窃取经过身份验证的会话<br>注意：在授权新的用户会话之前，请使所有现有的会话标识符无效        |
| 实施细节   | **user平台当前版本模块暂不支持，需要确认是否支持，以及限制用户多点登录，app/dev/mecm模块不涉及**  |
| 相关API          |不涉及 |
| API有效负载示例     | 不涉及|
| 相关文件           | 不涉及 |
| 相关GUI URL        |        不涉及                   |
| GUI测试步骤      | 不涉及|
| GUI输入示例       |     不涉及        |
| 附加信息         | 不涉及 |
### 6.2 将会话/凭证设置为有效的到期日期。

| 内容                | 相关信息                                      |
| ----------------------- | ------------------------------------------------------------ |
| 安全设计规则编号 | 6.2 将会话/凭证设置为有效的到期日期        |
| 实施细节   | **user模块的jwt为其他平台（app/dev/mecm）的token中设置了有效时间，但是缺少会话续命机制**  |
| 相关API          |不涉及 |
| API有效负载示例     | 不涉及|
| 相关文件           | 不涉及 |
| 相关GUI URL        |        不涉及                   |
| GUI测试步骤      | 不涉及|
| GUI输入示例       |     不涉及        |
| 附加信息         | 不涉及 |
### 6.3 保护应用程序的会话免受信息泄漏。确保会话的数据未被其他会话使用或不可见。

| 内容                | 相关信息                                      |
| ----------------------- | ------------------------------------------------------------ |
| 安全设计规则编号 | 6.3 保护应用程序的会话免受信息泄漏。确保会话的数据未被其他会话使用或不可见        |
| 实施细节   | **user/app/dev/mecm各模块均不涉及**  |
| 相关API          |不涉及 |
| API有效负载示例     | 不涉及|
| 相关文件           | 不涉及 |
| 相关GUI URL        |        不涉及                   |
| GUI测试步骤      | 不涉及|
| GUI输入示例       |     不涉及        |
| 附加信息         | 不涉及 |
### 6.4 保护应用程序的会话免受信息泄漏。确保会话的数据未被其他会话使用或不可见。

| 内容                | 相关信息                                      |
| ----------------------- | ------------------------------------------------------------ |
| 安全设计规则编号 | 6.4 用户注销时，会话必须无效        |
| 实施细节   | **user模块的注销机制是session被清空，结束会话。<br>用户可以获取到jwt token，但是后台接口未直接暴露给client，所以也不能通过接口访问数据；**  |
| 相关API          |user平台登出接口（get）： /auth/logout |
| API有效负载示例     | 不涉及|
| 相关文件           | 不涉及 |
| 相关GUI URL        |       https://daily.auth.edgegallery.org/                   |
| GUI测试步骤      | 1.在浏览器输入GUI URL,进入到appstore的登录页面<br>2.输入正确的用户名、密码、拉动滑块完成验证，点击登录按钮，进入appstore首页<br>3.点击首页右上角的注销按钮，点击弹出框的确认按钮，安全退出，跳转到登录页面<br>4.如果未作session清空,点击浏览器左上角后退按钮，可直接进入上次进入的首页页面，已做session清空，点击后退按钮，依然是登录页面|
| GUI输入示例       |     不涉及        |
| 附加信息         | 不涉及 |
### 6.5 成功的身份验证和重新身份验证必须生成新的会话和会话ID。

| 内容                | 相关信息                                      |
| ----------------------- | ------------------------------------------------------------ |
| 安全设计规则编号 | 6.5 成功的身份验证和重新身份验证必须生成新的会话和会话ID        |
| 实施细节   | **app/dev/mecm各模块在首次登录和重新登录均会生成新的会话和会话ID**  |
| 相关API          |不涉及 |
| API有效负载示例     | 不涉及|
| 相关文件           | 不涉及 |
| 相关GUI URL        |         https://daily.auth.edgegallery.org/                  |
| GUI测试步骤      |  1.在浏览器输入GUI URL,进入到appstore的登录页面<br>2.输入正确的用户名、密码、拉动滑块完成验证，点击登录按钮，进入appstore首页<br>3.F12，查看Application中的Cookie下的APPSTORESESSIONID，记住它<br>4.点击首页右上角的注销按钮，安全退出，重新登录，重复步骤3，如果两次APPSTORESESSIONID的值不一样，则说明生成了新的会话和会话ID|
| GUI输入示例       |     不涉及        |
| 附加信息         | 不涉及 |

规则7 Web服务安全性
-------------------
### 7.1 客户端和服务器之间必须具有相同的编码样式。

| 内容                | 相关信息                                      |
| ----------------------- | ------------------------------------------------------------ |
| 安全设计规则编号 | 7.1 客户端和服务器之间必须具有相同的编码样式。<br>注意：客户端和服务器之间的不同编码可能会带来安全隐患，并且过去已用于绕过验证和WAF来执行XSS攻击        |
| 实施细节   | **需要和user/dev/user/mecm各模块负责人确认**  |
| 相关API          |不涉及 |
| API有效负载示例     | 不涉及|
| 相关文件           | 不涉及 |
| 相关GUI URL        |        不涉及                   |
| GUI测试步骤      | 不涉及|
| GUI输入示例       |     不涉及        |
| 附加信息         | 不涉及 |
### 7.2 必须接受XML或JSON模式，并在接受输入之前对其进行验证。

| 内容                | 相关信息                                      |
| ----------------------- | ------------------------------------------------------------ |
| 安全设计规则编号 | 7.2 必须接受XML或JSON模式，并在接受输入之前对其进行验证。       |
| 实施细节   | **目前user/app/dev各模块接口只支持JSON模块，需要确认是否对其输入格式做了校验，mecm模块待分析**  |
| 相关API          |不涉及 |
| API有效负载示例     | 不涉及|
| 相关文件           | 不涉及 |
| 相关GUI URL        |        不涉及                   |
| GUI测试步骤      | 不涉及|
| GUI输入示例       |     不涉及        |
| 附加信息         | 不涉及 |

规则8 安全文件
----------------
### 8.1 所有公共功能接口，RESTful接口，本地功能接口，命令行接口以及用于身份验证的默认用户名和密码都必须在产品或应用程序文档中进行描述。

| 内容                | 相关信息                                      |
| ----------------------- | ------------------------------------------------------------ |
| 安全设计规则编号 | 8.1 所有公共功能接口，RESTful接口，本地功能接口，命令行接口以及用于身份验证的默认用户名和密码都必须在产品或应用程序文档中进行描述。<br>注意：必须在应用文档中描述所有前面的新接口，以帮助用户更好地理解相应的模块。        |
| 实施细节   | **user/app/dev/mecm各模块需提供api接口文档**  |
| 相关API          |不涉及 |
| API有效负载示例     | 不涉及|
| 相关文件           | 不涉及 |
| 相关GUI URL        |        不涉及                   |
| GUI测试步骤      | 不涉及|
| GUI输入示例       |     不涉及        |
| 附加信息         | 不涉及 |
### 8.2 外部通讯连接对于系统运行和维护是必需的。必须在端口矩阵文档中描述所有使用的通信端口。动态监听端口必须限制在适当的范围内。

| 内容                | 相关信息                                      |
| ----------------------- | ------------------------------------------------------------ |
| 安全设计规则编号 | 8.2 外部通讯连接对于系统运行和维护是必需的。必须在端口矩阵文档中描述所有使用的通信端口。动态监听端口必须限制在适当的范围内。<br>注意：如果端口矩阵文档中未描述外部通信端口，则可能会影响用户安全配置。       |
| 实施细节   | **user/app/dev/mecm各模块需提供通讯矩阵**  |
| 相关API          |不涉及 |
| API有效负载示例     | 不涉及|
| 相关文件           | 不涉及 |
| 相关GUI URL        |        不涉及                   |
| GUI测试步骤      | 不涉及|
| GUI输入示例       |     不涉及        |
| 附加信息         | 不涉及 |

规则9 日志安全
-------------------
### 9.1 请勿记录未经消毒的用户输入。

| 内容                | 相关信息                                      |
| ----------------------- | ------------------------------------------------------------ |
| 安全设计规则编号 | 9.1 请勿记录未经消毒的用户输入。<br>注意：未经消毒的日志记录可以使攻击者伪造日志条目或将恶意内容注入日志。        |
| 实施细节   | **待排查user/app/dev的日志记录中是否有未经消毒的用户输入**  |
| 相关API          |不涉及 |
| API有效负载示例     | 不涉及|
| 相关文件           | 基于日构建环境，日志文件位置<br>user: /var/log/user-mgmt/user-mgmt-be.log <br>app: /var/log/appstore/appstore-be.log <br>dev: /var/log/developer/developer-be.log |
| 相关GUI URL        |        不涉及                   |
| GUI测试步骤      | 不涉及|
| GUI输入示例       |     不涉及        |
| 附加信息         | 不涉及 |
### 9.2 足够的日志记录。

| 内容                | 相关信息                                      |
| ----------------------- | ------------------------------------------------------------ |
| 安全设计规则编号 | 9.2 足够的日志记录。<br>注意：确保记录所有与安全性相关的成功和失败。如果没有正确记录关键安全事件，例如登录尝试失败，这将使恶意行为更难以检测，并且可能会阻止攻击成功后的取证分析。      |
| 实施细节   | **user/app/dev中所有接口，均有日志记录，需要在日志记录中增加访问的客户端IP，mecm模块待分析**  |
| 相关API          |不涉及 |
| API有效负载示例     | 不涉及|
| 相关文件           | 基于日构建环境，日志文件位置<br>user: /var/log/user-mgmt/user-mgmt-be.log <br>app: /var/log/appstore/appstore-be.log <br>dev: /var/log/developer/developer-be.log |
| 相关GUI URL        |        不涉及                   |
| GUI测试步骤      | 不涉及|
| GUI输入示例       |     不涉及        |
| 附加信息         | 不涉及 |
### 9.3 请勿在日志或日志文件中添加敏感信息。

| 内容                | 相关信息                                      |
| ----------------------- | ------------------------------------------------------------ |
| 安全设计规则编号 | 9.3 请勿在日志或日志文件中添加敏感信息。<br>注意：认真考虑写入日志文件的信息的敏感性。不要将机密信息写入日志文件。在将应用程序部署到生产环境之前，请删除调试日志文件。保护日志文件免遭未经授权的读取/写入。      |
| 实施细节   | **待排查user/app/dev/mecm各模块的日志记录中是否含有密码、密钥、session、token等敏感信息**  |
| 相关API          |不涉及 |
| API有效负载示例     | 不涉及|
| 相关文件           | 基于日构建环境，日志文件位置<br>user: /var/log/user-mgmt/user-mgmt-be.log <br>app: /var/log/appstore/appstore-be.log <br>dev: /var/log/developer/developer-be.log |
| 相关GUI URL        |        不涉及                   |
| GUI测试步骤      | 不涉及|
| GUI输入示例       |     不涉及        |
| 附加信息         | 不涉及 |
### 9.4 避免记录过多的数据。

| 内容                | 相关信息                                      |
| ----------------------- | ------------------------------------------------------------ |
| 安全设计规则编号 | 9.4 避免记录过多的数据。<br>注意：禁止大量重复的日志消息，并用定期摘要替换它们。例如，syslog可能包含一个条目，该条目在记录重复事件时声明“最后消息重复X次”。支持可以由管理员控制的日志文件的最大大小。      |
| 实施细节   | **user/app/dev均已实现配置单个日志文件20MB，最多50个，文件权限600，mecm模块待分析**  |
| 相关API          |不涉及 |
| API有效负载示例     | 不涉及|
| 相关文件           | 基于日构建环境，日志文件位置<br>user: /var/log/user-mgmt/user-mgmt-be.log <br>app: /var/log/appstore/appstore-be.log <br>dev: /var/log/developer/developer-be.log |
| 相关GUI URL        |        不涉及                   |
| GUI测试步骤      | 不涉及|
| GUI输入示例       |     不涉及        |
| 附加信息         | 不涉及 |