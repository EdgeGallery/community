## 代码冻结CheckList

|user|appstore|developer|检查项|
|---|---|---|---|
|OK,无新特性，随文档一起输出 | OK | OK  |  完成详细设计/架构更新Complete detail design/architecture updating  |
|OK,文档store下周关闭 | OK  |   |  PTL确认所有task关闭（PTL confirm ）all tasks are closed  |
| OK  | OK  | OK |  PTL确认gitee门户外部bug类问题关闭（PTL confirm） bugs（vital/blocked） out of gitee are all closed |
|OK   | OK  | OK  |  PTL确认所有新开发代码都有自动化测试用例（PTL）confirm all recently developed code has autotest cases  |
|OK   | OK  | OK  |  PTL确认满足单元测试覆盖率要求（PTL confirm） satisfy code coverage rate for unit test   |
|   |   |   |  PTL确认项目完成开发者自验证（PTL confirm）complete self-verification of project   |
|暂不要求   | 暂不要求  | 暂不要求  |  PTL确认三方件归一化扫描结果（PTL confirm） 3rd-party components  are all scanned and have consistent versions   |
| OK  | OK  | OK  |  PTL确认代码许可证合规扫结果（PTL confirm）licenses for 3rd-party components are all scanned and their compliance is ensured  |
|   |   |   |  近3天每日构建成功率100% daily build for last 3 days is all succeeded   |

## 安全设计Checklist

|user|appstore|developer|检查项|
|---|---|---|---|
|OK | OK  | OK  |repo license更新为Apache 2.0  |
| OK  | OK  |   |所有repo中的文件需要有Copyright声明保护  |
| OK  | OK  | OK  |SonarQube 静态检查问题清零  |
| OK  | OK  | OK  |三方件使用清单，确定没有GPL或LGPL等商业不友好的三方件  |
| OK  | OK  | OK  |三方件高危漏洞清理，已经升级到最新版本还不能解决的需要输出清单  |

