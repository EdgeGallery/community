# EdgeGallery 社区项目生命周期
EdgeGallery社区对项目的定义：有明确的范围和任务的相对长期的任务
具备的特点：
* 相对长期的可以横跨多个版本提供功能
* 单独负责一个或者多个Repoes的实体
* 有明确的项目范围和项目任务
* 项目的功能相对比较集中
* 由PTL和在相关领域具有专业知识的Committer共同领导
## 项目的生命周期状态定义
| 项目状态 | 描述                                |
|------|-----------------------------------|
| 拟申请  | 希望在社区新创建的项目，已提交项目申请               |
| 孵化   | 项目已被社区接纳，处于开发的早期阶段                |
| 成熟   | 项目功能全面文档，已成功发布                    |
| 归档   | 项目完成预期目标，或者不可预见的原因被取消，不再更新，进入归档阶段 |

项目在每个状态之间转移均需要在社区TSC评审通过，具体的评审标准TSC负责制定和维护

## 项目申请流程

项目申请一般涉及两类情况：1）新建项目；2）已有代码仓库升级与项目。两种情况均需要遵循以下流程：

1.	完成[项目申请模板](https://gitee.com/edgegallery/community/tree/master/TSC/Templates)并提交项目申请
2.	进入项目申请评议阶段，跟相关的项目组的PTL完成关联沟通
3.	在架构组完成项目跟整个社区的技术架构匹配度的评估
4.	架构组评估通过后申请TSC议题，汇报立项
5.	TSC决策通过后，项目正式进入孵化阶段，并进行PTL以及Committer选举

## 代码仓新建流程

新建代码仓一般是项目或工作组内部由于技术方案开发需要，新增仓库，同时提升代码的可维护性。新建代码仓的流程如下：

1.	在项目组或工作组内部讨论技术方案以及涉及的新建仓库
2.	架构组评审技术方案
3.	完成[新建仓库申请模板](https://gitee.com/edgegallery/community/tree/master/TSC/Templates)
4.	申请TSC议题，汇报评审
5.	TSC决策通过后，正式新建仓库
6.	如果模板中仓库type选择的是internal open，意味新建立的仓库只在团队内公开；如果后续对外开放，需要在安全工作组评估遵从度后，TSC申报决策。


## 闭门项目转正流程（临时-09-30 已失效）
说明：该流程仅在EdgeGallery社区成立初期使用，当前社区的正式项目1个 MEP，闭门项目有4个：Dev、APP、User、MECM，其他的项目均按照新申请项目，遵守社区的项目申请流程。
1.	闭门项目的PTL到架构组申请项目转正申请
2.	架构组对闭门项目是否能够转正进行评估（评估方法由架构组制定）
3.	转正评估需要在2周内完成
4.	如果架构组对闭门项目的评估结果是不通过，需要给出不通过的原因
5.	如果首次不通过，项目组需要进行整改，至少间隔1个月才能再次提出转正申请
