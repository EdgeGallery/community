## Optimization issues of SecDesignGuide

#### Suggest to Delete:

3.8与1.2重复，建议删除3.8



#### Suggest to Add:

1.识别，认证和授权

1.x 在口令框中输入的口令不能明文显示和拷贝/剪切。

测试步骤：查看输入框类型是否为password： < input type="password">



1.x URL参数中没有携带会话标识。如果URL中携带了会话标识，那么会增加会话标识被盗用的风险。另外URL中携带会话标识也会被记入日志，带来安全风险。

测试步骤：登录成功后，检查URL参数，是否包含会话标识；如果包含，则存在安全漏洞



1.x 如果是通过邮箱重置密码，则只应发送临时链接或验证码，发送内容中不应包含明文密码。

测试步骤：通过邮箱重置密码，查看验证链接或验证码是否具有有效期，并查看发送内容中是否存在明文密码。



1.x 如果允许使用长时间的会话，应当周期性验证用户的权限。

测试步骤：通过白盒审计，查看是否存在周期性验证用户权限的机制。



1.x 用户权限变更/失效时，应立即终止当前会话并重新认证。

测试步骤：登录用户，然后改变该用户权限，查看用户会话是否终止。



1.x 对于受保护资源的访问，如果没有访问权限应拒绝访问并记录日志。

测试步骤：使用低权用户访问一个高权用户的资源，查看是否访问失败，并查看日志中是否进行了记录。



1.x 采用基于角色的访问控制机制时，授权和用户角色数据必须存放在服务器端，鉴权处理也必须在服务器端完成。

测试步骤：查看cookie或隐藏域，是否存在授权和角色数据。



1.x 高特权用户不应永久有效，应当在一定周期后强制更改密码。

测试步骤：通过白盒审计，查看是否存在高特权用户定期强制更改密码的机制。
