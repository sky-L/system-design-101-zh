[数据库](#数据库)

- [云服务中不同数据库的便捷速查表](#云服务中不同数据库的便捷速查表)
- [支撑数据库的8种数据结构](#支撑数据库的8种数据结构)
- [SQL语句在数据库中是如何执行的？](#SQL语句在数据库中是如何执行的？)
- [CAP定理](#CAP定理)
- [内存和存储的类型](#内存和存储的类型)
- [可视化SQL查询](#可视化SQL查询)
- [SQL语言](#SQL语言)


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
