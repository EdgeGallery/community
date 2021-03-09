## Meeting Logistics

| Meeting Day  |  Meeting Time  | Conference Bridge  |
|---|---|---|
| Tuesdays  | 7:00 PM to 8:00 PM (UTC+8:00)   |  https://welink-meeting.zoom.us/j/907131793  |


## Meeting Attendees
- [高维涛](https://gitee.com/Gao_Victor)
- 刘辉（紫金山)
- 陈共龙（腾讯）
- 游永明（广州申迪）
- 余宇清（移动）
- 张海龙
- 鹿鑫
- 李开（九州云）
- 李剑锋（安恒)
- 范桂飓（九州云）
- 刘慧玲
- 陈传雨

## Meeting Agenda & Minutes
|  Agenda Items  |  Notes & Materials   |  Proposer |
|---|---|---|
|  1.1 架构图完善 |  | 1. 针对1.1 版本的实现，架构图进行了完善，将镜像管理与Inventory管理抽象剥离为单独的微服务。 <br> 2. 架构是否可以优化描述，目前的展示看起来比较偏PaaS展示，需要能显性展示出来针对电信网络的优化。 |
|  架构优化演进 |  | 见下面描述。 |
|  1.2 版本需求收集 |  | 1.2版本需求已经开始收集，大家可以在[gitee](https://gitee.com/edgegallery/community/tree/master/Architecture%20WG/Requirements/v1.2)上增加新的需求。 |

### Topic Inputs
- 架构图：
   - 复杂架构吸引更多生态
   - 可以有一部分远期规划的架构能力
   - 是否需要更加代码话/程序员友好的部署代码视图
   - 落地具体的开发者：我们需要更加展示的模块展示，后期还是需要将模块落扎实

- 发布模式
   - 优势：大家耦合较低，单独开发
   - 劣势：容易导致拿来即用
   - 需要后续讨论

- 公有云：
   - 基础在网络/基础设施打通 ，需要公有云配合

- 明确核心竞争力/5G MEC边缘计算平台
   - 管理面的竞争力
   - 生态的竞争力
   - 是否优化架构图的表达方式，优化非PaaS的描述
   - MEP是否可以根据不同行业场景对于硬件的适配，如何释放5G的网络能力
   - 功能的打通
      - 网络延时
      - 计算延时（普适性的计算问题，需要特定硬件厂商进行配合）
   - 可靠性
- 边边协同讨论：
   - 边缘容灾，如何解决边和边的打通，省级可以通过骨干网打通，需要运营商花费一些代价
- 少量数据面的优化：
   - GW的优化，kong的部署场景是否可优化
   - 是否能够发挥如ARM这种优势


## Meeting Records
- Video Recording
- Slides


## Action Items
|  Items | Assignee   |
|---|---|
| TBA  | TBA|TBA



