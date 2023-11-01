 [Cache](#cache)
 
- [Data is cached everywhere](#data-is-cached-everywhere)
- [Why is Redis so fast?](#why-is-redis-so-fast)
- [How can Redis be used?](#how-can-redis-be-used)
- [Top caching strategies](#top-caching-strategies)


## Cache

### Data is cached everywhere

This diagram illustrates where we cache data in a typical architecture.

<p>
  <img src="images/where do we cache data.jpeg" style="width: 720px" />
</p>


There are **multiple layers** along the flow.

1. Client apps: HTTP responses can be cached by the browser. We request data over HTTP for the first time, and it is returned with an expiry policy in the HTTP header; we request data again, and the client app tries to retrieve the data from the browser cache first.
2. CDN: CDN caches static web resources. The clients can retrieve data from a CDN node nearby.
3. Load Balancer: The load Balancer can cache resources as well.
4. Messaging infra: Message brokers store messages on disk first, and then consumers retrieve them at their own pace. Depending on the retention policy, the data is cached in Kafka clusters for a period of time.
5. Services: There are multiple layers of cache in a service. If the data is not cached in the CPU cache, the service will try to retrieve the data from memory. Sometimes the service has a second-level cache to store data on disk.
6. Distributed Cache: Distributed cache like Redis holds key-value pairs for multiple services in memory. It provides much better read/write performance than the database.
7. Full-text Search: we sometimes need to use full-text searches like Elastic Search for document search or log search. A copy of data is indexed in the search engine as well.
8. Database: Even in the database, we have different levels of caches:
- WAL(Write-ahead Log): data is written to WAL first before building the B tree index
- Bufferpool: A memory area allocated to cache query results
- Materialized View: Pre-compute query results and store them in the database tables for better query performance
- Transaction log: record all the transactions and database updates
- Replication Log: used to record the replication state in a database cluster

### Why is Redis so fast?

There are 3 main reasons as shown in the diagram below.

<p>
  <img src="images/why_redis_fast.jpeg" />
</p>


1. Redis is a RAM-based data store. RAM access is at least 1000 times faster than random disk access.
2. Redis leverages IO multiplexing and single-threaded execution loop for execution efficiency.
3. Redis leverages several efficient lower-level data structures.

Question: Another popular in-memory store is Memcached. Do you know the differences between Redis and Memcached?

You might have noticed the style of this diagram is different from my previous posts. Please let me know which one you prefer.

### How can Redis be used?

<p>
  <img src="images/top-redis-use-cases.jpg" style="width: 520px" />
</p>


There is more to Redis than just caching.

Redis can be used in a variety of scenarios as shown in the diagram.

- Session

  We can use Redis to share user session data among different services.

- Cache

  We can use Redis to cache objects or pages, especially for hotspot data.

- Distributed lock

  We can use a Redis string to acquire locks among distributed services.

- Counter

  We can count how many likes or how many reads for articles.

- Rate limiter

  We can apply a rate limiter for certain user IPs.

- Global ID generator

  We can use Redis Int for global ID.

- Shopping cart

  We can use Redis Hash to represent key-value pairs in a shopping cart.

- Calculate user retention

  We can use Bitmap to represent the user login daily and calculate user retention.

- Message queue

  We can use List for a message queue.

- Ranking

  We can use ZSet to sort the articles.

### Top caching strategies

Designing large-scale systems usually requires careful consideration of caching.
Below are five caching strategies that are frequently utilized.

<p>
  <img src="images/top_caching_strategy.jpeg" style="width: 680px" />
</p>

