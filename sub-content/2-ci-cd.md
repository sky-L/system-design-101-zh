
## CI/CD

### 简单介绍CI CD流程

<p>
  <img src="images/ci-cd-pipeline.jpg" style="width: 680px" />
</p>

第一部分 - 带有CI / CD的SDLC

软件开发生命周期（SDLC）包括几个关键阶段：开发，测试，部署和维护。 CI / CD自动化并集成了这些阶段，以实现更快速和可靠的发布。

当代码被推送到git存储库时，它会触发自动构建和测试过程。运行端到端（e2e）测试用例以验证代码。如果测试通过，则代码可以自动部署到staging / production。如果发现问题，则将代码发送回开发以修复错误。此自动化为开发人员提供了快速反馈，并减少了生产中错误的风险。

第二部分 - CI和CD之间的区别

持续集成（CI - Continuous Integration）自动化构建，测试和合并过程。每当提交代码以尽早检测集成问题时，它都会运行测试。这鼓励频繁的代码提交和快速反馈。

持续交付（CD- Continuous Delivery）自动化发布流程，如基础架构更改和部署。它确保软件可以通过自动化工作流程可靠地随时发布。 CD还可以自动化生产部署之前需要的手动测试和批准步骤。

第三部分 - CI / CD管道

典型的CI / CD管道具有几个连接的阶段：
- 开发人员提交代码更改以进行源控制
- CI服务器检测更改并触发构建
- 编译代码并进行测试（单元测试，集成测试）
- 测试结果报告给开发人员
- 成功后，工件将部署到staging环境
- 在发布之前可能会在staging上进行进一步测试
- CD系统将批准的更改部署到生产中


### Netflix技术栈

<p>
  <img src="images/netflix-ci-cd.jpg" style="width: 720px" />
</p>

计划：Netflix工程团队使用JIRA进行计划，使用Confluence进行文档编写。

编码：Java是后端服务的主要编程语言，而其他语言则用于不同的用例。

构建：Gradle主要用于构建，而Gradle插件则用于支持各种用例。

打包：将包和依赖项打包成Amazon Machine Image（AMI）进行发布。

测试：测试强调生产文化对构建混沌工具的关注。

部署：Netflix使用其自行构建的Spinnaker进行金丝雀发布部署。

监控：监控指标集中在Atlas中，使用Kayenta检测异常。

事件报告：事件按优先级分派，使用PagerDuty进行事件处理。