
# 本仓库是  [system-design-101](https://github.com/ByteByteGoHq/system-design-101#communication-protocols)  的中文翻译

# 系统设计基础

用图像和简单语言解释复杂系统。

无论您是在准备系统设计面试，还是只是想了解系统在表面下是如何运作的，我们希望这个资料库能帮助您达到这个目标。
# 目录

<!-- TOC toc.levels=2 -->
- [通信协议](#communication-protocols)
    - [REST API vs. GraphQL](#rest-api-vs-graphql)
    - [gRPC 是如何工作的？](#how-does-grpc-work)
    - [什么是 Webhook？](#what-is-a-webhook)
    - [如何提高 API 性能？](#how-to-improve-api-performance)
    - [HTTP 1.0 -> HTTP 1.1 -> HTTP 2.0 -> HTTP 3.0 (QUIC)](#http-10---http-11---http-20---http-30-quic)
    - [SOAP vs REST vs GraphQL vs RPC](#soap-vs-rest-vs-graphql-vs-rpc)
    - [代码优先 vs. API 优先](#code-first-vs-api-first)
    - [HTTP 状态码](#http-status-codes)
    - [API 网关是什么？](#API-网关是什么)
    - [如何设计有效和安全的 API？](#how-do-we-design-effective-and-safe-apis)
    - [TCP/IP 封装](#tcpip-encapsulation)
    - [为什么 Nginx 被称为“反向”代理？](#why-is-nginx-called-a-reverse-proxy)
    - [常见的负载均衡算法有哪些？](#what-are-the-common-load-balancing-algorithms)
    - [URL、URI、URN - 你知道它们的区别吗？](#url-uri-urn---do-you-know-the-differences)
- [CI/CD](#CI/CD)
    - [简单介绍CI/CD流程](#简单介绍CI-CD流程)
    - [Netflix技术栈（CI/CD流程）](#Netflix技术栈)
- [架构模式](#架构模式)
    - [MVC、MVP、MVVM、MVVM-C 和 VIPER](#mvc-mvp-mvvm-mvvm-c-和-viper)
    - [每位开发者都应该了解的18个关键设计模式](#每位开发者都应该了解的18个关键设计模式)
- [数据库](#数据库)
    - [云服务中不同数据库的便捷速查表](#云服务中不同数据库的便捷速查表)
    - [支撑数据库的8种数据结构](#支撑数据库的8种数据结构)
    - [SQL语句在数据库中是如何执行的？](#SQL语句在数据库中是如何执行的？)
    - [CAP定理](#CAP定理)
    - [内存和存储的类型](#内存和存储的类型)
    - [可视化SQL查询](#可视化SQL查询)
    - [SQL语言](#SQL语言)
- [缓存](#缓存)
  - [数据无处不缓存](#数据无处不缓存)
  - [Redis 为何如此快速？](#redis-为何如此快速)
  - [Redis 可以如何使用？](#redis-可以如何使用)
  - [顶级缓存策略](#顶级缓存策略)
- [微服务架构](#微服务架构)
  - [典型的微服务架构是什么样子的？](#典型的微服务架构是什么样子的)
  - [微服务最佳实践](#微服务最佳实践)
  - [常用于微服务的技术栈是什么？](#常用于微服务的技术栈是什么)
  - [Kafka 为什么快](#kafka-为什么快)
- [支付系统](#支付系统)
  - [如何学习支付系统？](#如何学习支付系统)
  - [为什么信用卡被称为“银行最赚钱的产品”？VISA/Mastercard是如何赚钱的？](#为什么信用卡被称为'银行最赚钱的产品'?-VISA/Mastercard是如何赚钱的?)
  - [当我们在商家店里刷信用卡时，VISA是如何工作的？](#当我们在商家店里刷信用卡时,VISA是如何工作的？)
  - [世界范围内的支付系统系列（第1部分）：印度的统一支付接口（UPI）](#世界范围内的支付系统系列-第1部分:印度的统一支付接口-UPI)
- [DevOps](#DevOps)
  - [DevOps与SRE与平台工程的区别是什么？](#DevOps与SRE与平台工程的区别是什么？)
  - [什么是k8s（Kubernetes）？](#什么是k8s)
  - [Docker与Kubernetes。我们应该使用哪个？](#Docker与Kubernetes。我们应该使用哪个？)
  - [Docker是如何工作的？](#Docker是如何工作的)
- [GIT](#GIT)
  - [Git命令的工作原理](#git命令的工作原理)
  - [Git是如何工作的？](#git是如何工作的)
  - [Git合并与Git变基](#git合并与git变基)
- [云服务](#云服务)
  - [各种云服务的好用备忘单（2023版）](#各种云服务的好用备忘单（2023版）)
  - [什么是云原生？](#什么是云原生)
- [开发者生产力工具](#开发者生产力工具)
  - [可视化JSON文件](#可视化JSON文件)
  - [自动将代码转换为架构图](#自动将代码转换为架构图)
- [Linux](#Linux)
  - [解释Linux文件系统](#解释Linux文件系统)
  - [你应该知道的18个最常用的Linux命令](#你应该知道的18个最常用的Linux命令)
- [安全性](#安全性)
  - [HTTPS是如何工作的？](#https是如何工作的)
  - [用简单的术语解释Oauth 2.0。](#用简单的术语解释oauth2)
  - [认证机制的四种主要形式](#认证机制的四种主要形式)
  - [Session、cookie、JWT、token、SSO和OAuth 2.0 - 它们是什么？](#session-cookie-jwt-token-sso-and-oauth-20---它们是什么？)
  - [如何安全地在数据库中存储密码以及如何验证密码？](#如何安全地在数据库中存储密码以及如何验证密码？)
  - [用通俗易懂的语言解释JSON Web Token（JWT）](#用通俗易懂的语言解释json-web-token-jwt)
  - [Google Authenticator（或其他类型的两步验证器）是如何工作的？](#google-authenticator或其他类型的两步验证器是如何工作的？)
- [真实案例研究](真实案例研究)
  - [Netflix的技术栈](#netflix的技术栈)
  - [Twitter 2022年的架构](#twitter-2022年的架构)
  - [Airbnb过去15年中微服务架构的演变](#airbnb过去15年中微服务架构的演变)
  - [Monorepo vs. Microrepo](#monorepo-vs-microrepo)
  - [你会如何设计Stack Overflow网站？](#你会如何设计stack-overflow网站)
  - [为什么Amazon Prime Video的监控从无服务器转向单体应用？如何节省90%的成本？](#为什么amazon-prime-video的监控从无服务器转向单体?应用如何节省90的成本)
  - [Disney Hotstar如何在锦标赛期间捕捉50亿个表情符号？](#disney-hotstar如何在锦标赛期间捕捉50亿个表情符号)
  - [Discord如何存储数万亿条消息](#discord如何存储数万亿条消息)
  - [YouTube、TikTok Live或Twitch上的视频直播是如何工作的？](#youtube-tiktok-live或twitch上的视频直播是如何工作的)

<!-- /TOC -->

## Communication protocols

架构风格定义了应用程序编程接口（API）的不同组件之间的相互交互方式。因此，它们通过提供一种标准的设计和构建API的方法，确保了效率、可靠性和与其他系统的轻松集成。以下是最常用的几种风格：
<p>
  <img src="images/api-architecture-styles.png" style="width: 640px">
</p>

- SOAP（简单对象访问协议）：成熟、全面、基于XML的协议。适用于企业应用程序。

- RESTful（表现层状态转移）：流行、易于实现、基于HTTP方法的协议。适用于Web服务。

- GraphQL：一种查询语言，用于请求特定的数据。减少网络开销，提供更快的响应。

- gRPC：现代化、高性能、使用Protocol Buffers（协议缓冲区）的协议。适用于微服务架构。

- WebSocket：实时、双向、持久连接的协议。非常适合低延迟的数据交换。

- Webhook：事件驱动、使用HTTP回调、异步的协议。在事件发生时通知系统。


### REST API vs. GraphQL

在API设计方面，REST和GraphQL各有其优势和劣势。

下面的图表展示了REST和GraphQL之间的快速比较

<p>
  <img src="images/graphQL.jpg">
</p>

REST：

- 使用标准的HTTP方法（如GET、POST、PUT、DELETE）进行CRUD操作。
- 在需要在独立服务/应用之间使用简单、统一的接口时表现良好。
- 缓存策略易于实现。
- 不足之处在于可能需要多次往返请求来组装来自不同端点的相关数据。

GraphQL：

- 为客户端提供单一的端点，以准确获取所需的数据。
- 客户端可以指定嵌套查询中需要的确切字段，服务器返回仅包含这些字段的优化负载。
- 支持用于修改数据的Mutations和用于实时通知的Subscriptions。
- 适用于从多个来源聚合数据，并且与快速变化的前端需求配合良好。
- 然而，它将复杂性转移到客户端，如果没有适当的保护措施，可能会允许滥用查询。
- 缓存策略可能比REST更复杂。

在REST和GraphQL之间选择最佳方案取决于应用程序和开发团队的具体要求。对于复杂或经常变化的前端需求，GraphQL是一个很好的选择，而对于偏好简单和一致性契约的应用程序，REST更合适。

两种API方法都没有银弹。仔细评估需求和权衡是选择正确风格的重要因素。REST和GraphQL都是公认的在暴露数据和支持现代应用程序方面的有效选择。

### How does gRPC work?

RPC（Remote Procedure Call）之所以被称为“远程”，是因为它在微服务架构下，当服务部署在不同的服务器上时，可以实现远程服务之间的通信。从用户的角度来看，它就像是本地函数调用一样。

下面的图表说明了gRPC的总体数据流程。

<p>
  <img src="images/grpc.jpg">
</p>

步骤1：客户端发起REST调用，请求体通常采用JSON格式。

步骤2-4：订单服务（gRPC客户端）接收到REST调用后，将其转换并发起RPC调用到支付服务。gRPC将客户端存根编码成二进制格式并发送给底层传输层。

步骤5：gRPC通过HTTP2将数据包发送到网络上。由于二进制编码和网络优化，gRPC被称为比JSON快5倍。

步骤6-8：支付服务（gRPC服务器）接收到网络上的数据包，解码并调用服务器应用程序。

步骤9-11：服务器应用程序返回结果，对其进行编码并发送到传输层。

步骤12-14：订单服务接收到数据包，进行解码并将结果发送给客户端应用程序。
### What is a webhook?

下面的图表展示了轮询和Webhook的比较。

<p>
  <img src="images/webhook.jpeg" style="width: 680px" />
</p>


假设我们运营一家电商网站。客户通过API网关将订单发送到订单服务，该服务将订单传递给支付服务进行支付交易。然后，支付服务与外部支付服务提供商（PSP）进行通信，以完成交易。

处理与外部PSP的通信有两种方法。


**1. 短轮询**

在向PSP发送支付请求后，支付服务会不断向PSP询问支付状态，经过多轮后，PSP最终返回状态。

短轮询有两个缺点：

- 不断轮询状态会占用支付服务的资源。
- 外部服务直接与支付服务通信，存在安全漏洞。

**2. Webhook**

我们可以在外部服务中注册Webhook。这意味着：当您有关于该请求的更新时，请在某个URL上回调我。当PSP完成处理后，它将调用HTTP请求以更新支付状态。

通过这种方式，编程范式发生了改变，支付服务不再需要浪费资源来轮询支付状态。

如果PSP从未回调怎么办？我们可以设置一个定期作业，每小时检查一次支付状态。

Webhook通常被称为反向API或推送API，因为服务器向客户端发送HTTP请求。在使用Webhook时，我们需要注意以下三点：

1. 我们需要为外部服务设计适当的API来调用。
2. 我们需要为安全原因在API网关中设置适当的规则。
3. 我们需要在外部服务中注册正确的URL。

### How to improve API performance?

下面的图表展示了提高API性能的5个常见技巧。

<p>
  <img src="images/api-performance.jpg">
</p>

分页

当结果集较大时，分页是一种常见的优化方式。将结果流式返回给客户端，以提高服务的响应性。

异步日志记录

同步日志记录每次调用都要处理磁盘，可能会减慢系统速度。异步日志记录会先将日志发送到无锁缓冲区，然后立即返回。日志将定期刷新到磁盘上。这可以显著减少I/O开销。

缓存

我们可以将经常访问的数据缓存起来。客户端可以首先查询缓存，而不是直接访问数据库。如果缓存未命中，客户端可以从数据库中查询。像Redis这样的缓存将数据存储在内存中，因此数据访问速度比数据库快得多。

负载压缩

可以使用gzip等方式压缩请求和响应，以使传输的数据大小更小。这可以加快上传和下载速度。

连接池

在访问资源时，我们通常需要从数据库中加载数据。打开和关闭数据库连接会增加很大的开销。因此，我们应该通过一组打开的连接连接到数据库。连接池负责管理连接的生命周期。

### HTTP 1.0 -> HTTP 1.1 -> HTTP 2.0 -> HTTP 3.0 (QUIC)

每一代HTTP解决了哪些问题？

下面的图表说明了关键特性。

<p>
  <img src="images/http3.jpg" />
</p>

- HTTP 1.0在1996年完成并完整记录。每个针对同一服务器的请求都需要单独的TCP连接。

- HTTP 1.1于1997年发布。TCP连接可以保持打开以供重用（持久连接），但它不能解决HOL（head-of-line）阻塞问题。

  HOL阻塞-当浏览器中允许的并行请求数量用完时，后续请求需要等待前面的请求完成。

- HTTP 2.0于2015年发布。它通过请求多路复用解决了HOL问题，该技术在应用层消除了HOL阻塞，但在传输（TCP）层仍存在HOL问题。

  如您在图表中所看到的，HTTP 2.0引入了HTTP“流”的概念：一种抽象，允许在同一TCP连接上多路复用不同的HTTP交换。每个流不需要按顺序发送。

- HTTP 3.0的第一版草案于2020年发布。它是HTTP 2.0的拟议后继者。它使用QUIC而不是TCP作为底层传输协议，从而消除了传输层中的HOL阻塞。

QUIC基于UDP。它在传输层引入了流作为一等公民。QUIC流共享相同的QUIC连接，因此不需要创建新连接时进行额外的握手和慢启动，但是QUIC流是独立交付的，因此在大多数情况下影响一个流的数据包丢失不会影响其他流。

### SOAP vs REST vs GraphQL vs RPC

下面的图表说明了API时间线和API风格的比较。

随着时间的推移，不同的API架构风格被发布。每种风格都有其自己的标准化数据交换的模式。

您可以在图表中查看每种风格的用例。

<p>
  <img src="images/SOAP vs REST vs GraphQL vs RPC.jpeg" />
</p>


### Code First vs. API First

下面的图表展示了代码优先开发和API优先开发之间的区别。为什么我们要考虑API优先设计呢？

<p>
  <img src="images/api_first.jpg" style="width: 680px" />
</p>

- 微服务增加了系统的复杂性，我们需要将不同的服务分离出来，以便服务于系统的不同功能。虽然这种架构有利于解耦和职责分离，但我们需要处理服务之间的各种通信。

在编写代码之前，最好先仔细思考系统的复杂性，并精心定义服务的边界。
- 不同的功能团队需要使用相同的语言，专门的功能团队只负责自己的组件和服务。建议通过API设计使组织使用相同的语言。

我们可以模拟请求和响应来验证API设计，然后再编写代码。
- 提高软件质量和开发者生产力。由于我们在项目开始时已经解决了大部分不确定性，因此整个开发过程更加顺畅，软件质量也得到了极大的提高。

开发人员也对这个过程感到满意，因为他们可以专注于功能开发，而不必应对突然的变化。

在项目生命周期的后期出现意外的可能性降低了。

由于我们首先设计了API，因此可以在代码开发时设计测试。在某种程度上，当使用API优先开发时，我们也具有TDD（测试驱动设计）。


### HTTP status codes

<p>
  <img src="images/http-status-code.jpg" style="width: 540px" />
</p>


HTTP的响应代码分为五个类别：

- 信息性响应（100-199）
- 成功响应（200-299）
- 重定向响应（300-399）
- 客户端错误  (400-499)
- 服务的错误 (500-599)

### API 网关是什么

The diagram below shows the details.

<p>
  <img src="images/api_gateway.jpg" style="width: 520px" />
</p>

步骤1 - 客户端向API网关发送HTTP请求。

步骤2 - API网关解析和验证HTTP请求中的属性。

步骤3 - API网关执行允许列表/拒绝列表检查。

步骤4 - API网关与身份提供者进行身份验证和授权。

步骤5 - 请求被应用速率限制规则。如果超过限制，请求将被拒绝。

步骤6和7 - 现在，请求已经通过基本检查，API网关通过路径匹配找到相关的服务进行路由。

步骤8 - API网关将请求转换为适当的协议并将其发送到后端微服务。

步骤9-12：API网关可以适当地处理错误，并在错误需要更长时间恢复时处理故障（断路器）。它还可以利用ELK（弹性-Logstash-Kibana）堆栈进行日志记录和监控。我们有时会在API网关中缓存数据。
### How do we design effective and safe APIs?

The diagram below shows typical API designs with a shopping cart example.

<p>
  <img src="images/safe-apis.jpg" />
</p>


请注意，API设计不仅仅是URL路径设计。大多数情况下，我们需要选择适当的资源名称、标识符和路径模式。同样重要的是，在API网关中设计适当的HTTP标头字段或设计有效的速率限制规则。

### TCP/IP encapsulation

数据是如何通过网络传输的？为什么OSI模型需要这么多层？

下面的图表展示了数据在网络传输过程中的封装和解封装过程。


<p>
  <img src="images/osi model.jpeg" />
</p>


第一步：当设备A通过HTTP协议向设备B发送数据时，首先在应用层添加HTTP头部。

第二步：然后在传输层将TCP或UDP头部添加到数据中，并封装为TCP段。头部包含源端口、目标端口和序列号。

第三步：接着在网络层将段封装为IP头部。IP头部包含源/目标IP地址。

第四步：在数据链路层为IP数据报添加MAC头部，包含源/目标MAC地址。

第五步：封装好的帧被发送到物理层，并以二进制位的形式在网络中传输。

第六至十步：当设备B从网络中接收到位流时，它执行解封装过程，这是封装过程的逆向处理。头部被逐层移除，最终设备B可以读取数据。

我们需要网络模型中的各层，因为每个层都专注于自己的职责。每个层都可以依赖头部进行处理指令，而不需要了解上一层数据的含义。


### Why is Nginx called a “reverse” proxy?  为什么Nginx被称为“反向代理”？

The diagram below shows the differences between a 𝐟𝐨𝐫𝐰𝐚𝐫𝐝 𝐩𝐫𝐨𝐱𝐲 and a 𝐫𝐞𝐯𝐞𝐫𝐬𝐞 𝐩𝐫𝐨𝐱𝐲.
下面的图表展示了正向代理和反向代理之间的区别。

<p>
  <img src="images/Forward Proxy v.s. Reverse Proxy2x.jpg" style="width: 720px" />
</p>

正向代理是位于用户设备和互联网之间的服务器。

正向代理通常用于：

1. 保护客户端
2. 绕过浏览限制
3. 阻止访问某些内容

反向代理是一种服务器，它接收客户端的请求，将请求转发给Web服务器，并将结果返回给客户端，就好像代理服务器已经处理了请求一样。

反向代理适用于以下情况：

1. 保护服务器
2. 负载均衡
3. 缓存静态内容
4. 加密和解密SSL通信

### What are the common load-balancing algorithms? 常见的负载均衡算法有哪些？

The diagram below shows 6 common algorithms.

<p>
  <img src="images/lb-algorithms.jpg" />
</p>

- 静态算法

1. 轮询（Round Robin）

   将客户端请求按顺序发送到不同的服务实例。这些服务通常需要是无状态的。

2. 粘性轮询（Sticky Round Robin）

   这是轮询算法的一种改进。如果Alice的第一个请求发送到服务A，则后续请求也会发送到服务A。

3. 加权轮询（Weighted Round Robin）

   管理员可以为每个服务指定权重。权重高的服务处理的请求比其他服务多。

4. 哈希（Hash）

   此算法对传入请求的IP或URL应用哈希函数。请求基于哈希函数的结果路由到相关实例。

- 动态算法

1. 最少连接数（Least Connections）

   将新请求发送到并发连接最少的服务实例。

2. 最短响应时间（Least Response Time）

   将新请求发送到响应时间最快的服务实例。

### URL, URI, URN - Do you know the differences?

The diagram below shows a comparison of URL, URI, and URN.
下面的图表展示了URL、URI和URN之间的比较。

<p>
  <img src="images/url-uri-urn.jpg" />
</p>

- URI

URI代表统一资源标识符。它标识Web上的逻辑或物理资源。URL和URN是URI的子类型。URL定位资源，而URN命名资源。

URI由以下部分组成：
scheme:[//authority]path[?query][#fragment]

- URL

URL代表统一资源定位符，是HTTP的关键概念。它是Web上唯一资源的地址。它可以与其他协议一起使用，如FTP和JDBC。

- URN

URN代表统一资源名称。它使用urn方案。URN不能用于定位资源。图表中给出的简单示例由命名空间和命名空间特定字符串组成。

如果您想了解更多细节，请参阅 [W3C’s clarification](https://www.w3.org/TR/uri-clarification/)

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

## 架构模式

### MVC, MVP, MVVM, MVVM-C, and VIPER
这些架构模式是在应用开发中最常用的，无论是在iOS还是Android平台上。开发者们引入了这些模式以克服早期模式的局限性。那么，它们有何不同之处呢？
<p>
  <img src="images/client arch patterns.png" style="width: 720px" />
</p>

- MVC，作为最古老的模式，可以追溯到近50年前。
- 每种模式都有一个“视图”（V），负责显示内容并接收用户输入。
- 大多数模式包括一个“模型”（M），用于管理业务数据。
- “控制器”、“展示者”和“视图模型”是在视图和模型（在VIPER模式中称为“实体”）之间进行调解的翻译器。

### 每位开发者都应该了解的18个关键设计模式

设计模式是对常见设计问题的可重用解决方案，它们使开发过程更加顺畅、高效。它们充当着构建更好软件结构的蓝图。以下是一些最受欢迎的设计模式：
<p>
  <img src="images/18-oo-patterns.png" />
</p>

- 抽象工厂模式：家族创造者 - 创建相关物品的组合。
- 建造者模式：乐高大师 - 逐步构建对象，保持创建和外观的分离。
- 原型模式：克隆制造者 - 创建完全准备好的示例的副本。
- 单例模式：唯一实例 - 一个只有一个实例的特殊类。
- 适配器模式：通用插头 - 连接具有不同接口的对象。
- 桥接模式：功能连接器 - 将对象的工作方式与其所做的事情链接起来。
- 组合模式：树构建者 - 形成简单和复杂部分的树状结构。
- 装饰器模式：定制者 - 在不改变核心的情况下为对象添加功能。
- 外观模式：一站式购物 - 用单一、简化的接口代表整个系统。
- 享元模式：节省空间 - 高效共享小的可重复使用的物品。
- 代理模式：替身演员 - 代表另一个对象，控制访问或行为。
- 职责链模式：请求中继 - 将请求通过一系列对象传递，直到被处理。
- 命令模式：任务包装 - 将请求转化为一个可执行操作的对象。
- 迭代器模式：集合探险家 - 逐个访问集合中的元素。
- 中介者模式：通信中心 - 简化不同类之间的交互。
- 备忘录模式：时光胶囊 - 捕捉和恢复对象的状态。
- 观察者模式：新闻广播 - 通知类关于其他对象的变化。
- 访问者模式：技艺嘉宾 - 为类添加新操作而不改变它。

## 数据库

### 一个关于云服务中不同数据库的便捷速查表。

<p>
  <img src="images/cloud-dbs2.png" />
</p>

为项目选择合适的数据库是一项复杂的任务。众多的数据库选项，每种都适用于不同的用例，很容易让人产生选择疲劳。

我们希望这份速查表能够为您提供高层次的指引，帮助您找到与项目需求相符的合适服务，避免潜在的问题。

注意：Google 对于他们的数据库用例的文档有限。尽管我们尽力查看了所有可用的信息，并选择了最佳选项，但其中的一些条目可能需要更准确的信息。
###  支撑数据库的8种数据结构

The answer will vary depending on your use case. Data can be indexed in memory or on disk. Similarly, data formats vary, such as numbers, strings, geographic coordinates, etc. The system might be write-heavy or read-heavy. All of these factors affect your choice of database index format.

答案会根据您的用例而有所不同。数据可以在内存或磁盘上建立索引。同样，数据的格式也各不相同，包括数字、字符串、地理坐标等。系统可能是写入密集型或读取密集型的。所有这些因素都会影响您选择数据库索引格式的决策。
<p>
  <img src="images/8-ds-db.jpg" />
</p>

The following are some of the most popular data structures used for indexing data:

以下是一些用于数据索引的最流行的数据结构：

- **Skiplist（跳表）：** 常见的内存索引类型，在Redis中使用。
- **哈希索引（Hash Index）：** “映射”数据结构（或“集合”）的常见实现方式。
- **SSTable（Sorted String Table）：** 不可变的磁盘上“映射”实现方式。
- **LSM树（Log-Structured Merge Tree）：** Skiplist + SSTable。具有高写入吞吐量。
- **B树（B-Tree）：** 基于磁盘的解决方案。具有一致的读/写性能。
- **倒排索引（Inverted Index）：** 用于文档索引。在Lucene中使用。
- **后缀树（Suffix Tree）：** 用于字符串模式搜索。
- **R树（R-Tree）：** 多维度搜索，例如寻找最近邻居。

### SQL语句在数据库中是如何执行的？

The diagram below shows the process. Note that the architectures for different databases are different, the diagram demonstrates some common designs.

下面的图表展示了这个过程。请注意，不同数据库的架构是不同的，这个图表演示了一些常见的设计。
<p>
  <img src="images/sql execution order in db.jpeg" style="width: 580px" />
</p>


第一步 - 通过传输层协议（例如TCP）将SQL语句发送到数据库。

第二步 - SQL语句被发送到命令解析器，在那里经过语法和语义分析，然后生成一个查询树。

第三步 - 查询树被发送到优化器。优化器创建一个执行计划。

第四步 - 执行计划被发送到执行器。执行器从执行中检索数据。

第五步 - 访问方法提供了执行所需的数据提取逻辑，从存储引擎中检索数据。

第六步 - 访问方法决定SQL语句是否是只读的。如果查询是只读的（SELECT语句），则传递到缓冲管理器进行进一步处理。缓冲管理器在缓存或数据文件中查找数据。

第七步 - 如果语句是UPDATE或INSERT，则传递到事务管理器进行进一步处理。

第八步 - 在事务期间，数据处于锁定状态。这由锁管理器保证。它还确保了事务的ACID属性。

###  CAP定理

The CAP theorem is one of the most famous terms in computer science, but I bet different developers have different understandings. Let’s examine what it is and why it can be confusing.

CAP定理是计算机科学中最著名的术语之一，但我相信不同的开发者对它有不同的理解。让我们来看看它是什么，以及为什么它可能令人困惑。
<p>
  <img src="images/cap theorem.jpeg" />
</p>

CAP定理指出，一个分布式系统不能同时提供以下三个特性：

**一致性（Consistency）：** 所有客户端无论连接到哪个节点，都能够看到相同的数据。

**可用性（Availability）：** 任何请求数据的客户端都能够在某些节点不可用的情况下获得响应。

**分区容错性（Partition Tolerance）：** 分区指的是两个节点之间的通信中断。分区容错性意味着系统在网络分区的情况下仍然能够继续运行。

“三选二”这种简化形式确实有其用处，**但这种简化也可能引起误解**。

1. 选择一个数据库并不容易。仅仅基于CAP定理来为选择提供理由是不够的。例如，公司之所以选择Cassandra作为聊天应用的存储系统，并不仅仅是因为它是一个AP系统。Cassandra之所以成为存储聊天消息的理想选择，是因为它具备一系列良好的特性。我们需要进行更深入的研究。

2. “CAP只限制了设计空间中的一个小部分：在分区存在的情况下实现完美的可用性和一致性，而这种情况非常罕见。”这是来自于论文《CAP Twelve Years Later: How the “Rules” Have Changed》的引述。

3. 该定理是关于100%的可用性和一致性。在没有网络分区的情况下，更现实的讨论应该是在延迟和一致性之间进行权衡。详细内容可以参考PACELC定理。

**CAP定理是否真的有用？**

我认为它仍然有用，因为它启发我们进行一系列权衡的讨论，但它只是故事的一部分。在选择合适的数据库时，我们需要更深入地挖掘。

### 内存和存储的类型

<p>
  <img src="images/Types_of_Memory_and_Storage.jpeg" style="width: 420px" />
</p>


### 可视化SQL查询

<p>
  <img src="images/sql-execution-order.jpg" style="width: 580px" />
</p>

执行SQL语句涉及多个步骤，包括：

- 解析SQL语句并检查其有效性
- 将SQL转换为内部表示，例如关系代数
- 优化内部表示并创建利用索引信息的执行计划
- 执行计划并返回结果

SQL的执行非常复杂，涉及许多考虑因素，例如：

- 索引和缓存的使用
- 表连接的顺序
- 并发控制
- 事务管理

### SQL语言

In 1986, SQL (Structured Query Language) became a standard. Over the next 40 years, it became the dominant language for relational database management systems. Reading the latest standard (ANSI SQL 2016) can be time-consuming. How can I learn it?

1986年，SQL（Structured Query Language，结构化查询语言）成为了一个标准。在接下来的40年里，它成为了关系数据库管理系统中的主导语言。阅读最新的标准（ANSI SQL 2016）可能会耗费很多时间。我该如何学习它呢？
<p>
  <img src="images/how-to-learn-sql.jpg" />
</p>

SQL语言有5个主要组成部分：

- DDL（数据定义语言）：用于定义数据库结构的语言，如CREATE（创建）、ALTER（修改）、DROP（删除）等。
- DQL（数据查询语言）：用于查询数据库中的数据，主要命令是SELECT（选择）。
- DML（数据操作语言）：用于操作数据库中的数据，包括INSERT（插入）、UPDATE（更新）、DELETE（删除）等命令。
- DCL（数据控制语言）：用于控制数据库访问权限的语言，包括GRANT（授权）、REVOKE（撤销）等命令。
- TCL（事务控制语言）：用于管理数据库的事务，包括COMMIT（提交）、ROLLBACK（回滚）等命令。

作为后端工程师，你可能需要了解其中大部分内容。作为数据分析师，你可能需要深入了解DQL。请选择与你最相关的主题进行学习。

## 缓存

### 数据无处不缓存

这张图说明了在典型架构中我们会在哪些地方缓存数据。

<p>
  <img src="images/where do we cache data.jpeg" style="width: 720px" />
</p>



在数据流中有**多个层次**。

1. 客户端应用程序：浏览器可以缓存 HTTP 响应。我们第一次通过 HTTP 请求数据时，会在 HTTP 头中返回一个过期策略；我们再次请求数据时，客户端应用程序会首先尝试从浏览器缓存中检索数据。
2. CDN：CDN 缓存静态网络资源。客户端可以从附近的 CDN 节点检索数据。
3. 负载均衡器：负载均衡器也可以缓存资源。
4. 消息基础设施：消息代理首先将消息存储在磁盘上，然后消费者按自己的节奏检索消息。根据保留策略，数据在 Kafka 集群中缓存一段时间。
5. 服务：服务中有多个层次的缓存。如果数据未缓存在 CPU 缓存中，服务将尝试从内存中检索数据。有时服务还有第二级缓存，用于将数据存储在磁盘上。
6. 分布式缓存：像 Redis 这样的分布式缓存在内存中保存多个服务的键值对。它比数据库提供更好的读写性能。
7. 全文搜索：我们有时需要使用全文搜索，如 Elastic Search 用于文档搜索或日志搜索。数据的副本也被索引在搜索引擎中。
8. 数据库：即使在数据库中，我们也有不同级别的缓存：

- WAL（预写式日志）：在构建 B 树索引之前，数据首先写入 WAL。
- 缓冲池：分配给缓存查询结果的内存区域。
- 材料化视图：预先计算查询结果并将其存储在数据库表中，以获得更好的查询性能。
- 事务日志：记录所有事务和数据库更新。
- 复制日志：用于记录数据库集群中的复制状态。

### redis 为何如此快速

如下图所示，有三个主要原因。

<p>
  <img src="images/why_redis_fast.jpeg" />
</p>


1. Redis 是基于 RAM 的数据存储。与随机磁盘访问相比，RAM 访问速度至少快 1000 倍。
2. Redis 利用 IO 多路复用和单线程执行循环以提高执行效率。
3. Redis 利用了几种高效的低级数据结构。

问题：另一个流行的内存存储是 Memcached。您知道 Redis 和 Memcached 之间的区别吗？

您可能已经注意到这张图表的风格与我之前的帖子不同。请告诉我您更喜欢哪一个。

### redis 可以如何使用

<p>
  <img src="images/top-redis-use-cases.jpg" style="width: 520px" />
</p>


Redis 不仅仅是缓存。

Redis 可以在各种场景中使用，如下图所示。

- 会话

  我们可以使用 Redis 在不同的服务之间共享用户会话数据。

- 缓存

  我们可以使用 Redis 缓存对象或页面，特别是热点数据。

- 分布式锁

  我们可以使用 Redis 字符串在分布式服务之间获取锁。

- 计数器

  我们可以计算文章的点赞数或阅读量。

- 速率限制器

  我们可以为特定用户 IP 应用速率限制器。

- 全局 ID 生成器

  我们可以使用 Redis Int 作为全局 ID。

- 购物车

  我们可以使用 Redis Hash 表示购物车中的键值对。

- 计算用户留存

  我们可以使用 Bitmap 表示用户每天的登录情况，并计算用户留存。

- 消息队列

  我们可以使用 List 作为消息队列。

- 排名

  我们可以使用 ZSet 对文章进行排序。

### 顶级缓存策略

设计大规模系统通常需要仔细考虑缓存。以下是经常使用的五种缓存策略

<p>
  <img src="images/top_caching_strategy.jpeg" style="width: 680px" />
</p>

## 微服务架构

### 典型的微服务架构是什么样子的


下图显示了典型的微服务架构。

<p>
  <img src="images/typical-microservice-arch.jpg" style="width: 520px" />
</p>

- 负载均衡器：将传入的流量分发到多个后端服务。
- CDN（内容分发网络）：CDN 是一组地理分布的服务器，保存静态内容以便更快地传递。客户端首先在 CDN 中查找内容，然后转到后端服务。
- API 网关：处理传入的请求并将它们路由到相关服务。它与身份提供者和服务发现进行通信。
- 身份提供者：处理用户的身份验证和授权。
- 服务注册表和发现：微服务的注册和发现发生在此组件中，API 网关在此组件中查找相关服务以进行通信。
- 管理：此组件负责监视服务。
- 微服务：微服务在不同的域中设计和部署。每个域都有自己的数据库。API 网关通过 REST API 或其他协议与微服务进行通信，同一域内的微服务使用 RPC（远程过程调用）相互通信。


微服务的好处：

- 可以快速设计、部署和水平扩展。
- 每个域可以由专门的团队独立维护。
- 由于每个域都可以定制业务需求并得到更好的支持，因此业务需求可以在每个域中得到更好的支持。

### 微服务最佳实践

一图胜千言：开发微服务的 9 个最佳实践。
<p>
  <img src="images/microservice-best-practices.jpeg" />
</p>


当我们开发微服务时，需要遵循以下最佳实践：

1. 为每个微服务使用单独的数据存储
2. 保持代码处于相似的成熟度水平
3. 为每个微服务分别构建
4. 为每个微服务分配单一职责
5. 部署到容器中
6. 设计无状态服务
7. 采用领域驱动设计
8. 设计微前端
9. 编排微服务

### 常用于微服务的技术栈是什么

以下是显示微服务技术栈的图表，包括开发阶段和生产阶段。


<p>
  <img src="images/microservice-tech.jpeg" />
</p>


▶️ 𝐏𝐫𝐞-𝐏𝐫𝐨𝐝𝐮𝐜𝐭𝐢𝐨𝐧

- 定义 API - 这建立了前端和后端之间的契约。我们可以使用 Postman 或 OpenAPI 来实现。
- 开发 - Node.js 或 React 用于前端开发，Java/Python/Go 用于后端开发。此外，我们需要根据 API 定义更改 API 网关的配置。
- 持续集成 - JUnit 和 Jenkins 用于自动化测试。代码被打包成 Docker 镜像并部署为微服务。

▶️ 𝐏𝐫𝐨𝐝𝐮𝐜𝐭𝐢𝐨𝐧
 
- NGinx 是负载均衡器的常见选择。Cloudflare 提供 CDN（Content Delivery Network 内容分发网络）。
- API 网关 - 我们可以使用 Spring Boot 作为网关，并使用 Eureka/Zookeeper 进行服务发现。
- 微服务部署在云上。我们可以选择 AWS、Microsoft Azure 或 Google GCP。
  缓存和全文搜索 - Redis 是缓存键值对的常见选择。Elasticsearch 用于全文搜索。
- 通信 - 为了让服务彼此通信，我们可以使用消息基础设施 Kafka 或 RPC。
- 持久化 - 我们可以使用 MySQL 或 PostgreSQL 作为关系型数据库，Amazon S3 作为对象存储。如果需要，我们也可以使用 Cassandra 作为宽列存储。
- 管理和监控 - 为了管理这么多微服务，常用的运维工具包括Prometheus、Elastic Stack和Kubernetes。


### kafka-为什么快

有许多设计决策为Kafka的性能做出了贡献。在本文中，我们将专注于其中的两个。我们认为这两个决策起到了最大的作用。
<p>
  <img src="images/why_is_kafka_fast.jpeg" />
</p>

1. 第一个决策是Kafka对顺序I/O的依赖。
2. 第二个决策让Kafka拥有性能优势的是其专注于效率：零拷贝原则。

下图说明了生产者和消费者之间的数据传输方式以及零拷贝的含义。

- 步骤1.1-1.3：生产者将数据写入磁盘
- 步骤2：消费者在没有零拷贝的情况下读取数据

2.1 数据从磁盘加载到操作系统缓存中

2.2 数据从操作系统缓存中复制到Kafka应用程序中

2.3 Kafka应用程序将数据复制到套接字缓冲区中

2.4 数据从套接字缓冲区中复制到网络卡中

2.5 网络卡将数据发送给消费者

- 步骤3：消费者使用零拷贝读取数据

3.1：数据从磁盘加载到操作系统缓存中
3.2 操作系统缓存通过sendfile()命令直接将数据复制到网络卡中
3.3 网络卡将数据发送给消费者

零拷贝是一种节省应用程序上下文和内核上下文之间多次数据复制的快捷方式。

## 支付系统

### 如何学习支付系统

<p>
  <img src="images/learn-payments.jpg" />
</p>

###  为什么信用卡被称为'银行最赚钱的产品'? VISA/Mastercard是如何赚钱的?

下面的图表显示了信用卡支付流程的经济学。

<p>
  <img src="images/how does visa makes money.jpg" style="width: 640px" />
</p>

1. 持卡人支付100美元给商家购买商品。
2. 商家通过使用信用卡获得更高的销售额，并需要向发卡行和卡网络提供支付服务进行补偿。收单行与商家签订一个名为“商家贴现费”的收费协议。

3-4. 收单行保留0.25美元作为收单成本费，1.75美元作为交换费支付给发卡行。商家贴现费应该覆盖交换费。

由于每个发卡行与每个商家协商费用效率低下，因此卡网络设置了交换费。

1. 卡网络与每家银行设置网络评估和费用，每月银行向卡网络支付其服务费。例如，VISA每次刷卡收取0.11%的评估费和0.0195美元的使用费。
2. 持卡人向发卡行支付其服务费用。

为什么发卡行需要获得补偿？

- 即使持卡人未向发卡行支付费用，发卡行仍需向商家支付费用。
- 持卡人向发卡行支付费用之前，发卡行已向商家支付费用。
- 发卡行还有其他运营成本，包括管理客户账户、提供对账单、欺诈检测、风险管理、清算和结算等。


### 当我们在商家店里刷信用卡时,VISA是如何工作的？

<p>
  <img src="images/visa_payment.jpeg" />
</p>


VISA、Mastercard和美国运通是信用卡结算和清算的卡网络。收单行和发卡行可以是不同的银行。如果银行之间逐笔结算而没有中介，每家银行都必须与其他所有银行结算交易，这是非常低效的。

下图显示了VISA在信用卡支付流程中的角色。有两个涉及的流程：授权流程发生在客户刷卡时，捕获和结算流程发生在商家想要在一天结束时收到钱时。

- 授权流程

步骤0：发卡行向其客户发放信用卡。

步骤1：持卡人想要购买商品，在商家店内的POS终端刷信用卡。

步骤2：POS终端将交易发送至提供POS终端的收单行。

步骤3和4：收单行将交易发送至卡网络，也称为卡方案。卡网络将交易发送至发卡行进行批准。

步骤4.1、4.2和4.3：如果交易被批准，发卡行会冻结资金。批准或拒绝的结果将返回给收单行和POS终端。

- 捕获和结算流程

步骤1和2：商家想要在一天结束时收到钱，因此他们在POS终端上点击“捕获”。交易以批处理方式发送到收单行。收单行将带有交易的批处理文件发送到卡网络。

步骤3：卡网络对来自不同收单行的交易进行清算，并将清算文件发送给不同的发卡行。

步骤4：发卡行确认清算文件的正确性，并向相关的收单行转移资金。

步骤5：收单行然后将资金转移至商家的银行。

步骤4：卡网络清理来自不同收单行的交易。清算是一种互相抵消交易的净额过程，因此总交易次数减少。

在此过程中，卡网络承担与每家银行交流的负担，并获得服务费。

### 世界范围内的支付系统系列 第1部分:印度的统一支付接口 UPI


什么是UPI？UPI是由印度国家支付公司开发的即时实时支付系统。

它占印度数字零售交易的60%。

UPI = 支付标记语言 + 可互操作支付标准。


<p>
  <img src="images/how-does-upi-work.png"  style="width: 600px" />
</p>

## DevOps

###  DevOps与SRE与平台工程的区别是什么？

DevOps、SRE和平台工程的概念是在不同的时间出现的，并由各个个人和组织进行了发展。

<p>
  <img src="images/devops-sre-platform.jpg" />
</p>

DevOps作为一个概念于2009年由Patrick Debois和Andrew Shafer在敏捷大会上提出。他们试图通过促进协作文化和共同负责整个软件开发生命周期来弥合软件开发和运营之间的差距。

SRE或站点可靠性工程是由Google在2000年代初引入的，旨在解决管理大规模复杂系统的运营挑战。Google开发了SRE实践和工具，例如Borg集群管理系统和Monarch监控系统，以提高其服务的可靠性和效率。

平台工程是一个更为新近的概念，建立在SRE工程的基础之上。平台工程的确切起源不太清楚，但它通常被理解为DevOps和SRE实践的扩展，重点是提供一个全面支持整个业务视角的产品开发平台。

值得注意的是，尽管这些概念在不同的时间出现，但它们都与改进软件开发和运营中的协作、自动化和效率的广泛趋势相关。

### 什么是k8s

K8s是一个容器编排系统，用于容器的部署和管理。它的设计受到了Google内部系统Borg的影响。

<p>
  <img src="images/k8s.jpeg" style="width: 680px" />
</p>

一个k8s集群由一组运行容器化应用程序的工作节点（称为节点）组成。每个集群至少有一个工作节点。

工作节点托管Pod，这些Pod是应用程序工作负载的组成部分。控制平面管理集群中的工作节点和Pod。在生产环境中，控制平面通常跨多台计算机运行，集群通常运行多个节点，提供容错和高可用性。

控制平面组件
API服务器

API服务器与k8s集群中的所有组件进行通信。所有pod的操作都通过与API服务器通信执行。

调度器

调度器观察Pod的工作负载，并将负载分配给新创建的Pod。

控制器管理器

控制器管理器运行控制器，包括Node Controller，Job Controller，EndpointSlice Controller和ServiceAccount Controller等。

Etcd

etcd是一个键值存储，用作Kubernetes的后备存储器，用于存储所有集群数据。

节点
Pod

Pod是一组容器，是k8s管理的最小单位。Pod具有应用于Pod中每个容器的单个IP地址。

Kubelet

在集群中的每个节点上运行的代理。它确保容器在Pod中运行。

Kube Proxy

Kube-proxy是一个网络代理，运行在集群中的每个节点上。它将从服务进入节点的流量路由到正确的容器。它将请求转发到正确的容器，以便执行工作。



### Docker与Kubernetes。我们应该使用哪个？

<p>
  <img src="images/docker-vs-k8s.jpg" style="width: 680px" />
</p>


什么是Docker？

Docker是一个开源平台，允许您在隔离的容器中打包、分发和运行应用程序。它专注于容器化，提供轻量级环境，封装应用程序及其依赖项。

什么是Kubernetes？

Kubernetes，通常称为K8s，是一个开源容器编排平台。它提供了一个框架，用于自动化部署、扩展和管理容器化应用程序跨节点的集群。

它们之间有什么不同？

Docker：Docker在单个操作系统主机上的单个容器级别操作。

您必须手动管理每个主机，为多个相关容器设置网络、安全策略和存储可能会很复杂。

Kubernetes：Kubernetes在集群级别上运行。它管理多个容器化应用程序跨多个主机，提供自动化的任务，如负载平衡、扩展和确保应用程序的期望状态。

简而言之，Docker专注于容器化和在单个主机上运行容器，而Kubernetes专门管理和编排容器在跨多个主机的集群中运行。

### Docker是如何工作的


下面的图表显示了Docker的架构以及当我们运行 “docker build”、“docker pull” 和 “docker run” 时它是如何工作的。

<p>
  <img src="images/docker.jpg" style="width: 680px" />
</p>


Docker架构有三个组件：

- Docker客户端

  Docker客户端与Docker守护进程通信。

- Docker宿主机

  Docker守护进程监听Docker API请求，并管理Docker对象，如镜像、容器、网络和卷。

- Docker注册表

  Docker注册表存储Docker镜像。Docker Hub是一个公共注册表，任何人都可以使用。

让我们以“docker run”命令为例。

1. Docker从注册表中拉取镜像。
2. Docker创建一个新的容器。
3. Docker为容器分配一个读写文件系统。
4. Docker创建一个网络接口，将容器连接到默认网络。
5. Docker启动容器。

## GIT

### git命令的工作原理

首先，必须确定我们的代码存储在哪里。通常认为只有两个位置 - 一个是在像Github这样的远程服务器上，另一个是在我们的本地计算机上。然而，这并不完全准确。Git在我们的计算机上维护了三个本地存储，这意味着我们的代码可以在四个位置找到：
<p>
  <img src="images/git-commands.png" style="width: 600px" />
</p>


* 工作目录：我们编辑文件的地方。
* 暂存区：一个临时位置，文件被保存在这里以供下一次提交使用。
* 本地仓库：包含已提交的代码。
* 远程仓库：存储代码的远程服务器。

大多数Git命令主要在这四个位置之间移动文件。

### git是如何工作的

The diagram below shows the Git workflow.

<p>
  <img src="images/git-workflow.jpeg" style="width: 520px" />
</p>


Git是一种分布式版本控制系统。

每个开发者都维护着主仓库的本地副本，并对其进行编辑和提交。

由于操作不涉及远程仓库，因此提交非常快速。

如果远程仓库崩溃，可以从本地仓库恢复文件。

### git合并与git变基

What are the differences?

当我们将一个Git分支的更改合并到另一个分支时，可以使用“git merge”或“git rebase”。下面的图表展示了这两个命令的工作方式。


<p>
  <img src="images/git-merge-git-rebase.jpeg" style="width: 680px" />
</p>


**Git合并**

这将在主分支中创建一个新的提交G'。G'将主分支和功能分支的历史记录联系起来。

Git合并是**非破坏性的**。主分支和功能分支都不会被更改。

**Git变基**

Git变基将功能分支的历史记录移动到主分支的头部。它为功能分支中的每个提交创建新的提交E'、F'和G'。

使用变基的好处是它具有线性的**提交历史记录**。

如果不遵循“Git变基的黄金法则”，它可能会带来风险。

**Git变基的黄金法则**

永远不要在公共分支上使用它！

## 云服务

### 各种云服务的好用备忘单（2023版）

<p>
  <img src="images/cloud-compare.jpg" />
</p>


### 什么是云原生

下面是一张图表，展示了自1980年代以来体系结构和流程的演变。

<p>
  <img src="images/cloud-native.jpeg" style="width: 640px" />
</p>


组织可以使用云原生技术在公共、私有和混合云上构建和运行可扩展的应用程序。

这意味着应用程序被设计为利用云特性，因此它们对负载具有弹性并且易于扩展。

云原生包括四个方面：

1. 开发流程

   这已经从瀑布流发展到敏捷开发到DevOps。

2. 应用程序架构

   架构已经从单片式发展到微服务。每个服务都被设计为小巧，适应云容器中有限的资源。

3. 部署和打包

   应用程序曾经部署在物理服务器上。然后在2000年左右，那些不敏感于延迟的应用程序通常部署在虚拟服务器上。使用云原生应用程序，它们被打包成Docker镜像并部署在容器中。

4. 应用程序基础设施

   应用程序大规模部署在云基础设施上，而不是自托管服务器上。

## 开发者生产力工具

### 可视化JSON文件

嵌套的JSON文件很难阅读。

**JsonCrack**从JSON文件生成图形图表，使其易于阅读。

此外，生成的图表可以下载为图像。

<p>
  <img src="images/json-cracker.jpeg" />
</p>


### 自动将代码转换为架构图

<p>
  <img src="images/diagrams_as_code.jpeg" style="width: 640px" />
</p>


它能做什么？

- 用Python代码绘制云系统架构。
- 图表也可以在Jupyter笔记本中直接呈现。
- 不需要设计工具。
- 支持以下提供商：AWS、Azure、GCP、Kubernetes、阿里云、Oracle Cloud等。

[Github repo](https://github.com/mingrammer/diagrams)

## Linux

### 解释Linux文件系统

<p>
  <img src="images/linux-file-systems.jpg" style="width: 680px" />
</p>


Linux文件系统曾经类似于一个无组织的城镇，个人可以在任何地方建造自己的房屋。然而，1994年引入了文件系统层次结构标准（FHS），以规范Linux文件系统。

通过实施像FHS这样的标准，软件可以确保在各种Linux发行版中具有一致的布局。然而，并不是所有的Linux发行版都严格遵循这个标准。它们经常包含自己独特的元素或迎合特定的需求。

要熟练掌握这个标准，你可以从探索开始。利用“cd”命令进行导航和“ls”命令列出目录内容。想象文件系统就像一棵树，从根目录（/）开始。随着时间的推移，它将变得自然而然，使你成为一名熟练的Linux管理员。
### 你应该知道的18个最常用的Linux命令

Linux命令是与操作系统交互的指令。它们有助于管理文件、目录、系统进程和系统的许多其他方面。为了有效地导航和维护基于Linux的系统，你需要熟悉这些命令。

以下图表显示了常用的Linux命令：

<p>
  <img src="images/18 Most-Used Linux Commands You Should Know-01.jpeg" style="width: 680px" />
</p>


- ls - 列出文件和目录
- cd - 更改当前目录
- mkdir - 创建新目录
- rm - 删除文件或目录
- cp - 复制文件或目录
- mv - 移动或重命名文件或目录
- chmod - 更改文件或目录权限
- grep - 在文件中搜索模式
- find - 搜索文件和目录
- tar - 操作tarball归档文件
- vi - 使用文本编辑器编辑文件
- cat - 显示文件内容
- top - 显示进程和资源使用情况
- ps - 显示进程信息
- kill - 通过发送信号终止进程
- du - 估算文件空间使用量
- ifconfig - 配置网络接口
- ping - 在主机之间测试网络连接

## 安全性

### https是如何工作的

超文本传输安全协议（HTTPS）是超文本传输协议（HTTP）的扩展。HTTPS使用传输层安全协议（TLS）传输加密数据。如果数据在在线上被劫持，劫持者只能获得二进制代码。
<p>
  <img src="images/https.jpg" />
</p>



数据是如何加密和解密的？

步骤1 - 客户端（浏览器）和服务器建立TCP连接。

步骤2 - 客户端向服务器发送“客户端hello”消息。该消息包含一组必要的加密算法（密码套件）和它支持的最新TLS版本。服务器响应一个“服务器hello”，以使浏览器知道它是否支持这些算法和TLS版本。

然后，服务器向客户端发送SSL证书。该证书包含公钥、主机名、过期日期等。客户端验证证书。

步骤3 - 在验证SSL证书后，客户端生成一个会话密钥，并使用公钥对其进行加密。服务器接收加密的会话密钥，并使用私钥对其进行解密。

步骤4 - 现在，客户端和服务器都持有相同的会话密钥（对称加密），加密数据在一个安全的双向通道中传输。

为什么HTTPS在数据传输期间要切换到对称加密？有两个主要原因：

1. 安全性：非对称加密只能单向进行。这意味着如果服务器试图将加密数据发送回客户端，任何人都可以使用公钥解密数据。
2. 服务器资源：非对称加密增加了相当多的数学开销。它不适用于长时间会话中的数据传输。

### 用简单的术语解释oauth2

OAuth 2.0 是一个强大且安全的框架，可以让不同的应用程序代表用户在不共享敏感凭证的情况下安全地互相交互。

<p>
  <img src="images/oAuth2.jpg" />
</p>

OAuth 涉及的实体有用户、服务器和身份提供者（IDP）。

OAuth Token 可以做什么？

当您使用 OAuth 时，您会获得一个代表您身份和权限的 OAuth Token。该 Token 可以做一些重要的事情：

单点登录（SSO）：使用 OAuth Token，您可以只使用一个登录即可登录多个服务或应用程序，让您的生活更加轻松和安全。

系统间授权：OAuth Token 允许您在各个系统之间共享您的授权或访问权限，因此您不必在各处单独登录。

访问用户资料：具有 OAuth Token 的应用程序可以访问您允许的某些用户资料的部分内容，但不会查看全部。

请记住，OAuth 2.0 的目的是在不同的应用程序和服务之间使您的在线体验无缝、无忧，并保护您和您的数据的安全。

### 认证机制的四种主要形式

<p>
  <img src="images/top4-most-used-auth.jpg" />
</p>

* SSH Keys:

SSH 密钥：用于安全地访问远程系统和服务器的加密密钥

* OAuth Tokens:

OAuth Token：提供对第三方应用程序上用户数据的有限访问权限的令牌

* SSL Certificates:

SSL 证书：数字证书确保服务器和客户端之间的通信安全和加密

* Credentials:

凭证：用户身份验证信息用于验证并授予对各种系统和服务的访问权限

### session-cookie-jwt-token-sso-and-oauth-20---它们是什么？

这些术语都与用户身份管理相关。当您登录网站时，您声明了自己的身份（识别）。您的身份将得到验证（认证），并被授予必要的权限（授权）。过去提出了许多解决方案，这个列表还在不断增长
<p>
  <img src="images/session.jpeg" />
</p>

从简单到复杂，这是我对用户身份管理的理解：

- WWW-Authenticate是最基本的方法。浏览器会要求您输入用户名和密码。由于无法控制登录生命周期，它现在很少使用。
- Session-Cookie可以更细致地控制登录生命周期。服务器维护会话存储，浏览器保留会话ID。Cookie通常只适用于浏览器，不适用于移动应用程序。
- 为了解决兼容性问题，可以使用Token。客户端将Token发送到服务器，服务器验证Token。缺点是Token需要加密和解密，可能会耗费时间。
- JWT是表示Token的标准方式。这些信息可以得到验证和信任，因为它们是数字签名的。由于JWT包含签名，因此不需要在服务器端保存会话信息。
- 通过使用SSO（单点登录），您只需登录一次即可登录多个网站。它使用CAS（中央认证服务）来维护跨站点信息。
- 通过使用OAuth 2.0，您可以授权一个网站访问另一个网站上的您的信息。

### 如何安全地在数据库中存储密码以及如何验证密码？

<p>
  <img src="images/salt.jpg" style="width: 720px" />
</p>


**不应该做的事情**

- 存储明文密码不是一个好主意，因为任何有内部访问权限的人都可以看到它们。
- 直接存储密码哈希不足够安全，因为它容易受到预计算攻击，如彩虹表攻击。
- 为了减轻预计算攻击，我们对密码进行加盐处理。

**什么是盐？**

根据OWASP指南，“盐是在哈希过程中作为唯一随机生成的字符串添加到每个密码中的一部分”。

**如何存储密码和盐？**

1. 哈希结果对于每个密码都是唯一的。
2. 可以使用以下格式将密码存储在数据库中：hash(password + salt)。

**如何验证密码？**

要验证密码，可以进行以下过程：

1. 客户端输入密码。
2. 系统从数据库中获取相应的盐。
3. 系统将盐附加到密码上并进行哈希处理。我们称哈希值为H1。
4. 系统比较H1和H2，其中H2是存储在数据库中的哈希值。如果它们相同，则密码有效。

### 用通俗易懂的语言解释json-web-token-jwt

<p>
  <img src="images/jwt.jpg" />
</p>

想象一下，你有一个特殊的盒子，叫做JWT。在这个盒子里，有三个部分：头部、载荷和签名。

头部就像盒子外面的标签。它告诉我们盒子的类型和如何保证安全。它通常采用JSON格式编写，JSON是一种使用花括号{ }和冒号:来组织信息的方式。

载荷就像你想要发送的实际信息或数据。它可以是你的姓名、年龄或任何你想要分享的数据。它也以JSON格式编写，因此易于理解和处理。

现在，签名是使JWT安全的关键。它就像一个特殊的印章，只有发送者知道如何创建。签名是使用秘密代码创建的，有点像密码。这个签名确保没有人可以在发送者不知道的情况下篡改JWT的内容。

当你想要将JWT发送到服务器时，你将头部、载荷和签名放在盒子里。然后你将它发送到服务器。服务器可以轻松地读取头部和载荷，以了解你是谁以及你想要做什么。en you want to send the JWT to a server, you put the header, payload, and signature inside the box. Then you send it over to the server. The server can easily read the header and payload to understand who you are and what you want to do.

### google-authenticator或其他类型的两步验证器是如何工作的？

Google Authenticator通常用于启用2因素身份验证时登录我们的帐户。它如何保证安全？

Google Authenticator是一种基于软件的验证器，实现了两步验证服务。以下图表提供了详细信息。

<p>
  <img src="images/google_authenticate.jpeg" />
</p>


这里涉及到两个阶段：

- 阶段1 - 用户启用谷歌两步验证。
- 阶段2 - 用户使用验证器进行登录等操作。

让我们来看看这些阶段。

**阶段1**

步骤1和2：Bob打开网页启用两步验证。前端请求一个秘密密钥。认证服务为Bob生成秘密密钥并将其存储在数据库中。

步骤3：认证服务向前端返回一个URI。URI由密钥发行者、用户名和秘密密钥组成。URI以QR码的形式显示在网页上。

步骤4：然后Bob使用Google Authenticator扫描生成的QR码。秘密密钥存储在验证器中。

**阶段2**
步骤1和2：Bob想要使用谷歌两步验证登录网站。为此，他需要密码。每30秒，Google Authenticator使用TOTP（基于时间的一次性密码）算法生成一个6位数字密码。Bob使用密码进入网站。

步骤3和4：前端将Bob输入的密码发送到后端进行身份验证。认证服务从数据库中读取秘密密钥，并使用与客户端相同的TOTP算法生成一个6位数字密码。

步骤5：认证服务比较客户端和服务器生成的两个密码，并将比较结果返回给前端。只有两个密码匹配时，Bob才能继续登录过程。

这种身份验证机制安全吗？

- 其他人能否获取秘密密钥？

  我们需要确保使用HTTPS传输秘密密钥。验证器客户端和数据库存储秘密密钥，我们需要确保秘密密钥已加密。

- 黑客能否猜测6位数字密码？

  不行。密码有6位数字，因此生成的密码有100万个潜在组合。此外，密码每30秒变一次。如果黑客想在30秒内猜测密码，他们需要每秒输入30,000个组合。

##  真实案例研究

### netflix的技术栈

本篇文章基于Netflix工程博客和开源项目的研究。如果您发现任何不准确的地方，请随时告诉我们。
<p>
  <img src="images/netflix tech stack.png" style="width: 680px" />
</p>

**移动端和Web端**：Netflix采用Swift和Kotlin构建本地移动应用程序。对于Web应用程序，它使用React。

**前端/服务器通信**：Netflix使用GraphQL。

**后端服务**：Netflix依赖于ZUUL、Eureka、Spring Boot框架和其他技术。

**数据库**：Netflix利用EV Cache、Cassandra、CockroachDB和其他数据库。

**消息/流处理**：Netflix使用Apache Kafka和Fink进行消息和流处理。

**视频存储**：Netflix使用S3和Open Connect进行视频存储。

**数据处理**：Netflix利用Flink和Spark进行数据处理，然后使用Tableau进行可视化。Redshift用于处理结构化数据仓库信息。

**CI/CD**：Netflix采用各种工具，如JIRA、Confluence、PagerDuty、Jenkins、Gradle、Chaos Monkey、Spinnaker、Atlas等进行CI/CD流程。

### twitter 2022年的架构

Yes, this is the real Twitter architecture. It is posted by Elon Musk and redrawn by us for better readability.

<p>
  <img src="images/twitter-arch.jpeg" />
</p>


### airbnb过去15年中微服务架构的演变

Airbnb’s microservice architecture went through 3 main stages.

Airbnb的微服务架构经历了三个主要阶段。



<p>
  <img src="images/airbnb_arch.jpeg" />
</p>


单体架构（2008-2017）

Airbnb最初只是一个简单的房东和客人市场。这是在Ruby on Rails应用程序中构建的 - 单体架构。

面临的挑战是什么？

- 团队所有权混淆+未拥有的代码
- 部署缓慢

微服务（2017-2020）

微服务旨在解决这些挑战。在微服务架构中，关键服务包括：

- 数据获取服务
- 业务逻辑数据服务
- 写工作流服务
- UI聚合服务
- 每个服务都有一个拥有团队

面临的挑战是什么？

数百个服务和依赖项对人类来说很难管理。

微服务+宏服务（2020-现在）

这是Airbnb目前正在研究的。微服务和宏服务混合模型的重点是API的统一。

### Monorepo vs. Microrepo.

> Monorepo和Microrepo是两种不同的代码库管理方法。

哪个是最好的？为什么不同的公司选择不同的选项？


<p>
  <img src="images/monorepo-microrepo.jpg" />
</p>

Monorepo并不是新的概念，Linux和Windows都是使用Monorepo创建的。为了提高可扩展性和构建速度，谷歌开发了内部专用工具链以更快地扩展，同时采用了严格的编码质量标准来保持一致性。

亚马逊和Netflix是微服务哲学的主要代表。这种方法自然地将服务代码分成不同的存储库。它可以更快地扩展，但后期可能会出现治理痛点。

在Monorepo中，每个服务都是一个文件夹，每个文件夹都有BUILD配置和OWNERS权限控制。每个服务成员都负责自己的文件夹。

另一方面，在Microrepo中，每个服务都负责自己的存储库，构建配置和权限通常设置为整个存储库。

在Monorepo中，无论您的业务如何，依赖关系都是在整个代码库中共享的，因此，当有版本升级时，每个代码库都会升级其版本。

在Microrepo中，依赖关系是在每个存储库中控制的。业务可以根据自己的时间表选择何时升级版本。

Monorepo有一个标准的签入流程。谷歌的代码审查流程因设定了高标准而闻名，确保了Monorepo的一致质量标准，无论业务如何。

Microrepo可以自己设置标准，也可以采用最佳实践并采用共享标准。它可以更快地为业务扩展，但代码质量可能会有所不同。

谷歌工程师构建了Bazel，Meta构建了Buck。还有其他开源工具可用，包括Nix、Lerna和其他工具。

多年来，Microrepo支持的工具越来越多，包括Java的Maven和Gradle、NodeJS的NPM以及C/C++的CMake等。

### 你会如何设计stack overflow网站

如果你的答案是基于现场服务器和单体架构（在下面的图像中），你可能会在面试中失败，但这就是实际构建的方式！

<p>
  <img src="images/stackoverflow.jpg" />
</p>


**人们认为它应该是什么样子**

面试官可能期望的是上图的顶部部分。

- 微服务用于将系统分解为小组件。
- 每个服务都有自己的数据库。大量使用缓存。
- 服务被分片。
- 服务通过消息队列异步交互。
- 服务使用事件溯源和CQRS实现。
- 展示分布式系统方面的知识，例如最终一致性、CAP定理等。

**实际情况**

Stack Overflow仅使用9个现场Web服务器处理所有流量，而且它是一个单体架构！它有自己的服务器，不运行在云上。

这与我们当今的所有流行信仰相反。

### 为什么Amazon Prime Video的监控从无服务器转向单体应用? 如何节省90的成本?

下面的图表显示了迁移前后的架构比较。

<p>
  <img src="images/serverless-to-monolithic.jpeg" />
</p>

亚马逊Prime Video监控服务是什么？

Prime Video服务需要监控数千个实时流的质量。监控工具自动分析实时流并识别质量问题，如块损坏、视频冻结和同步问题。这是客户满意度的重要流程。

有三个步骤：媒体转换器、缺陷检测器和实时通知。

- 旧架构存在什么问题？

旧架构基于Amazon Lambda构建，用于快速构建服务。然而，在高规模运行架构时，它并不具备成本效益。最昂贵的两个操作是：

1. 编排工作流程 - AWS步骤函数按状态转换收费，编排每秒执行多个状态转换。
2. 分布式组件之间的数据传递 - 中间数据存储在Amazon S3中，以便下一个阶段可以下载。当数据量很大时，下载可能很昂贵。

- 单体架构节省90%的成本

单体架构旨在解决成本问题。仍然有三个组件，但媒体转换器和缺陷检测器部署在同一进程中，节省了通过网络传递数据的成本。令人惊讶的是，这种部署架构变更方法导致了90%的成本节约！

这是一个有趣且独特的案例研究，因为微服务已成为技术行业的首选和时尚选择。很高兴看到我们正在更多地讨论如何发展架构，并更加诚实地讨论其优缺点。将组件分解为分布式微服务会带来成本。

- 亚马逊领袖对此有何看法？

亚马逊首席技术官Werner Vogels： "构建**可发展的软件系统**是一种策略，而不是一种宗教。以开放的心态重新审视您的架构是必须的。"

前亚马逊可持续性副总裁Adrian Cockcroft： "Prime Video团队已经遵循了我称之为**Serverless First**的路径...我不赞成**Serverless Only**。"

### disney hotstar如何在锦标赛期间捕捉50亿个表情符号

<p>
  <img src="images/hotstar_emojis.jpeg" style="width: 720px" />
</p>


1. 客户端通过标准HTTP请求发送表情符号。您可以将Golang服务视为典型的Web服务器。选择Golang是因为它很好地支持并发。Golang中的线程是轻量级的。
2. 由于写入量非常高，使用Kafka（消息队列）作为缓冲区。
3. 表情符号数据由名为Spark的流处理服务聚合。它每2秒聚合一次数据，这是可配置的。根据间隔需要进行权衡。较短的间隔意味着表情符号将更快地传递给其他客户端，但这也意味着需要更多的计算资源。
4. 聚合数据被写入另一个Kafka。
5. PubSub消费者从Kafka中拉取聚合的表情符号数据。
6. 表情符号通过PubSub基础架构实时传递给其他客户端。PubSub基础架构很有趣。Hotstar考虑了以下协议：Socketio、NATS、MQTT和gRPC，并选择了MQTT。

LinkedIn采用了类似的设计，可以每秒流式传输一百万个赞。

### discord如何存储数万亿条消息

The diagram below shows the evolution of message storage at Discord:

下面的图表显示了Discord消息存储的演变过程：


<p>
  <img src="images/discord-store-messages.jpg" />
</p>


MongoDB ➡️ Cassandra ➡️ ScyllaDB

2015年，Discord的第一个版本建立在单个MongoDB副本之上。到了2015年11月，MongoDB存储了1亿条消息，内存无法再容纳数据和索引。延迟变得不可预测，消息存储需要迁移到另一个数据库。他们选择了Cassandra。

到了2017年，Discord有12个Cassandra节点，存储着数十亿条消息。

在2022年初，它拥有了177个节点，存储着数万亿条消息。此时，延迟变得不可预测，维护操作的成本也变得太高。

这个问题有几个原因：

Cassandra使用LSM树作为内部数据结构。读取比写入更昂贵。在有数百个用户的服务器上可能会有许多并发读取，导致热点问题。
维护群集，如压缩SSTables，会影响性能。
垃圾回收暂停会导致显著的延迟峰值。
ScyllaDB是一个用C++编写的与Cassandra兼容的数据库。Discord重新设计了其架构，拥有一个单体式API，一个用Rust编写的数据服务和基于ScyllaDB的存储。

在ScyllaDB中，p99读取延迟为15毫秒，而在Cassandra中为40-125毫秒。p99写入延迟为5毫秒，而在Cassandra中为5-70毫秒。.

### youtube tiktok live或twitch上的视频直播是如何工作的

直播流与常规流媒体不同，因为视频内容是通过互联网实时发送的，通常延迟只有几秒钟。

下面的图示解释了实现这一点的背后发生的事情。

<p>
  <img src="images/live_streaming_updated.jpg" style="width: 640px" />
</p>



第一步：原始视频数据由麦克风和摄像头捕捉。数据被发送到服务器端。

第二步：视频数据被压缩和编码。例如，压缩算法将背景和其他视频元素分离。压缩后，视频被编码为标准格式，例如H.264。经过这一步骤后，视频数据的大小大大缩小。

第三步：编码数据被分成更小的片段，通常是几秒钟的长度，以便下载或流媒体所需的时间更短。

第四步：分段数据被发送到流媒体服务器。流媒体服务器需要支持不同的设备和网络条件。这被称为“自适应比特率流媒体”。这意味着我们需要在步骤2和3中生成多个不同比特率的文件。

第五步：直播流数据被推送到由CDN（内容分发网络）支持的边缘服务器。数百万观众可以从附近的边缘服务器观看视频。CDN显着降低了数据传输延迟。

第六步：观众设备解码和解压缩视频数据，并在视频播放器中播放视频。

第七步和第八步：如果需要将视频存储以供重播，编码数据将被发送到存储服务器，观众稍后可以从中请求重播。

直播流的标准协议包括：

- RTMP（实时消息传输协议）：最初由Macromedia开发，用于在Flash播放器和服务器之间传输数据。现在它用于在互联网上流传视频数据。请注意，像Skype这样的视频会议应用程序使用RTC（实时通信）协议以实现更低的延迟。
- HLS（HTTP Live Streaming）：需要H.264或H.265编码。Apple设备只支持HLS格式。
- DASH（动态自适应流媒体）：DASH不支持Apple设备。
- HLS和DASH都支持自适应比特率流媒体。

## License

<p xmlns:cc="http://creativecommons.org/ns#" >This work is licensed under <a href="http://creativecommons.org/licenses/by-nc-nd/4.0/?ref=chooser-v1" target="_blank" rel="license noopener noreferrer" style="display:inline-block;">CC BY-NC-ND 4.0<img style="height:22px!important;margin-left:3px;vertical-align:text-bottom;" src="https://mirrors.creativecommons.org/presskit/icons/cc.svg?ref=chooser-v1"><img style="height:22px!important;margin-left:3px;vertical-align:text-bottom;" src="https://mirrors.creativecommons.org/presskit/icons/by.svg?ref=chooser-v1"><img style="height:22px!important;margin-left:3px;vertical-align:text-bottom;" src="https://mirrors.creativecommons.org/presskit/icons/nc.svg?ref=chooser-v1"><img style="height:22px!important;margin-left:3px;vertical-align:text-bottom;" src="https://mirrors.creativecommons.org/presskit/icons/nd.svg?ref=chooser-v1"></a></p>

