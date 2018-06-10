.class public Lcom/android/volley/RequestQueue;
.super Ljava/lang/Object;
.source "RequestQueue.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/volley/RequestQueue$RequestFilter;
    }
.end annotation


# static fields
.field private static final DEFAULT_NETWORK_THREAD_POOL_SIZE:I = 0x4


# instance fields
.field private final mCache:Lcom/android/volley/Cache;

.field private mCacheDispatcher:Lcom/android/volley/CacheDispatcher;

.field private final mCacheQueue:Ljava/util/concurrent/PriorityBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/PriorityBlockingQueue",
            "<",
            "Lcom/android/volley/Request;",
            ">;"
        }
    .end annotation
.end field

.field private final mCurrentRequests:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/android/volley/Request;",
            ">;"
        }
    .end annotation
.end field

.field private final mDelivery:Lcom/android/volley/ResponseDelivery;

.field private mDispatchers:[Lcom/android/volley/NetworkDispatcher;

.field private final mNetwork:Lcom/android/volley/Network;

.field private final mNetworkQueue:Ljava/util/concurrent/PriorityBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/PriorityBlockingQueue",
            "<",
            "Lcom/android/volley/Request;",
            ">;"
        }
    .end annotation
.end field

.field private mSequenceGenerator:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final mWaitingRequests:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Queue",
            "<",
            "Lcom/android/volley/Request;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/volley/Cache;Lcom/android/volley/Network;)V
    .locals 1

    const/4 v0, 0x4

    invoke-direct {p0, p1, p2, v0}, Lcom/android/volley/RequestQueue;-><init>(Lcom/android/volley/Cache;Lcom/android/volley/Network;I)V

    return-void
.end method

.method public constructor <init>(Lcom/android/volley/Cache;Lcom/android/volley/Network;I)V
    .locals 3

    new-instance v0, Lcom/android/volley/ExecutorDelivery;

    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {v0, v1}, Lcom/android/volley/ExecutorDelivery;-><init>(Landroid/os/Handler;)V

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/volley/RequestQueue;-><init>(Lcom/android/volley/Cache;Lcom/android/volley/Network;ILcom/android/volley/ResponseDelivery;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/volley/Cache;Lcom/android/volley/Network;ILcom/android/volley/ResponseDelivery;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lcom/android/volley/RequestQueue;->mSequenceGenerator:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/volley/RequestQueue;->mWaitingRequests:Ljava/util/Map;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/volley/RequestQueue;->mCurrentRequests:Ljava/util/Set;

    new-instance v0, Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/PriorityBlockingQueue;-><init>()V

    iput-object v0, p0, Lcom/android/volley/RequestQueue;->mCacheQueue:Ljava/util/concurrent/PriorityBlockingQueue;

    new-instance v0, Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/PriorityBlockingQueue;-><init>()V

    iput-object v0, p0, Lcom/android/volley/RequestQueue;->mNetworkQueue:Ljava/util/concurrent/PriorityBlockingQueue;

    iput-object p1, p0, Lcom/android/volley/RequestQueue;->mCache:Lcom/android/volley/Cache;

    iput-object p2, p0, Lcom/android/volley/RequestQueue;->mNetwork:Lcom/android/volley/Network;

    new-array v0, p3, [Lcom/android/volley/NetworkDispatcher;

    iput-object v0, p0, Lcom/android/volley/RequestQueue;->mDispatchers:[Lcom/android/volley/NetworkDispatcher;

    iput-object p4, p0, Lcom/android/volley/RequestQueue;->mDelivery:Lcom/android/volley/ResponseDelivery;

    return-void
.end method


# virtual methods
.method public add(Lcom/android/volley/Request;)Lcom/android/volley/Request;
    .locals 7

    invoke-virtual {p1, p0}, Lcom/android/volley/Request;->setRequestQueue(Lcom/android/volley/RequestQueue;)V

    iget-object v0, p0, Lcom/android/volley/RequestQueue;->mCurrentRequests:Ljava/util/Set;

    monitor-enter v0

    :try_start_0
    iget-object v5, p0, Lcom/android/volley/RequestQueue;->mCurrentRequests:Ljava/util/Set;

    invoke-interface {v5, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0}, Lcom/android/volley/RequestQueue;->getSequenceNumber()I

    move-result v5

    invoke-virtual {p1, v5}, Lcom/android/volley/Request;->setSequence(I)V

    const-string/jumbo v5, "add-to-queue"

    invoke-virtual {p1, v5}, Lcom/android/volley/Request;->addMarker(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/android/volley/Request;->shouldCache()Z

    move-result v5

    if-eqz v5, :cond_1

    iget-object v0, p0, Lcom/android/volley/RequestQueue;->mWaitingRequests:Ljava/util/Map;

    monitor-enter v0

    :try_start_1
    invoke-virtual {p1}, Lcom/android/volley/Request;->getCacheKey()Ljava/lang/String;

    move-result-object v3

    iget-object v5, p0, Lcom/android/volley/RequestQueue;->mWaitingRequests:Ljava/util/Map;

    invoke-interface {v5, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    iget-object v5, p0, Lcom/android/volley/RequestQueue;->mWaitingRequests:Ljava/util/Map;

    const/4 v6, 0x0

    invoke-interface {v5, v3, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v5, p0, Lcom/android/volley/RequestQueue;->mCacheQueue:Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-virtual {v5, p1}, Ljava/util/concurrent/PriorityBlockingQueue;->add(Ljava/lang/Object;)Z

    :cond_0
    :goto_0
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    return-object p1

    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    :cond_1
    iget-object v5, p0, Lcom/android/volley/RequestQueue;->mNetworkQueue:Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-virtual {v5, p1}, Ljava/util/concurrent/PriorityBlockingQueue;->add(Ljava/lang/Object;)Z

    return-object p1

    :cond_2
    :try_start_3
    iget-object v5, p0, Lcom/android/volley/RequestQueue;->mWaitingRequests:Ljava/util/Map;

    invoke-interface {v5, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Queue;

    if-eqz v4, :cond_3

    :goto_1
    invoke-interface {v4, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    iget-object v5, p0, Lcom/android/volley/RequestQueue;->mWaitingRequests:Ljava/util/Map;

    invoke-interface {v5, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-boolean v5, Lcom/android/volley/VolleyLog;->DEBUG:Z

    if-eqz v5, :cond_0

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v3, v5, v6

    const-string/jumbo v6, "Request for cacheKey=%s is in flight, putting on hold."

    invoke-static {v6, v5}, Lcom/android/volley/VolleyLog;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :catchall_1
    move-exception v2

    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v2

    :cond_3
    :try_start_4
    new-instance v4, Ljava/util/LinkedList;

    invoke-direct {v4}, Ljava/util/LinkedList;-><init>()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_1
.end method

.method public cancelAll(Lcom/android/volley/RequestQueue$RequestFilter;)V
    .locals 5

    iget-object v0, p0, Lcom/android/volley/RequestQueue;->mCurrentRequests:Ljava/util/Set;

    monitor-enter v0

    :try_start_0
    iget-object v4, p0, Lcom/android/volley/RequestQueue;->mCurrentRequests:Ljava/util/Set;

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_1

    monitor-exit v0

    return-void

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/volley/Request;

    invoke-interface {p1, v3}, Lcom/android/volley/RequestQueue$RequestFilter;->apply(Lcom/android/volley/Request;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v3}, Lcom/android/volley/Request;->cancel()V

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public cancelAll(Ljava/lang/Object;)V
    .locals 2

    if-eqz p1, :cond_0

    new-instance v0, Lcom/android/volley/RequestQueue$1;

    invoke-direct {v0, p0, p1}, Lcom/android/volley/RequestQueue$1;-><init>(Lcom/android/volley/RequestQueue;Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lcom/android/volley/RequestQueue;->cancelAll(Lcom/android/volley/RequestQueue$RequestFilter;)V

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Cannot cancelAll with a null tag"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method finish(Lcom/android/volley/Request;)V
    .locals 8

    iget-object v0, p0, Lcom/android/volley/RequestQueue;->mCurrentRequests:Ljava/util/Set;

    monitor-enter v0

    :try_start_0
    iget-object v5, p0, Lcom/android/volley/RequestQueue;->mCurrentRequests:Ljava/util/Set;

    invoke-interface {v5, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p1}, Lcom/android/volley/Request;->shouldCache()Z

    move-result v5

    if-nez v5, :cond_0

    :goto_0
    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    :cond_0
    iget-object v0, p0, Lcom/android/volley/RequestQueue;->mWaitingRequests:Ljava/util/Map;

    monitor-enter v0

    :try_start_2
    invoke-virtual {p1}, Lcom/android/volley/Request;->getCacheKey()Ljava/lang/String;

    move-result-object v3

    iget-object v5, p0, Lcom/android/volley/RequestQueue;->mWaitingRequests:Ljava/util/Map;

    invoke-interface {v5, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Queue;

    if-nez v4, :cond_1

    :goto_1
    monitor-exit v0

    goto :goto_0

    :catchall_1
    move-exception v2

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v2

    :cond_1
    :try_start_3
    sget-boolean v5, Lcom/android/volley/VolleyLog;->DEBUG:Z

    if-nez v5, :cond_2

    :goto_2
    iget-object v5, p0, Lcom/android/volley/RequestQueue;->mCacheQueue:Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-virtual {v5, v4}, Ljava/util/concurrent/PriorityBlockingQueue;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    :cond_2
    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    invoke-interface {v4}, Ljava/util/Queue;->size()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v5, v7

    const/4 v6, 0x1

    aput-object v3, v5, v6

    const-string/jumbo v6, "Releasing %d waiting requests for cacheKey=%s."

    invoke-static {v6, v5}, Lcom/android/volley/VolleyLog;->v(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_2
.end method

.method public getCache()Lcom/android/volley/Cache;
    .locals 1

    iget-object v0, p0, Lcom/android/volley/RequestQueue;->mCache:Lcom/android/volley/Cache;

    return-object v0
.end method

.method public getSequenceNumber()I
    .locals 1

    iget-object v0, p0, Lcom/android/volley/RequestQueue;->mSequenceGenerator:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v0

    return v0
.end method

.method public start()V
    .locals 7

    invoke-virtual {p0}, Lcom/android/volley/RequestQueue;->stop()V

    new-instance v2, Lcom/android/volley/CacheDispatcher;

    iget-object v3, p0, Lcom/android/volley/RequestQueue;->mCacheQueue:Ljava/util/concurrent/PriorityBlockingQueue;

    iget-object v4, p0, Lcom/android/volley/RequestQueue;->mNetworkQueue:Ljava/util/concurrent/PriorityBlockingQueue;

    iget-object v5, p0, Lcom/android/volley/RequestQueue;->mCache:Lcom/android/volley/Cache;

    iget-object v6, p0, Lcom/android/volley/RequestQueue;->mDelivery:Lcom/android/volley/ResponseDelivery;

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/android/volley/CacheDispatcher;-><init>(Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/BlockingQueue;Lcom/android/volley/Cache;Lcom/android/volley/ResponseDelivery;)V

    iput-object v2, p0, Lcom/android/volley/RequestQueue;->mCacheDispatcher:Lcom/android/volley/CacheDispatcher;

    iget-object v2, p0, Lcom/android/volley/RequestQueue;->mCacheDispatcher:Lcom/android/volley/CacheDispatcher;

    invoke-virtual {v2}, Lcom/android/volley/CacheDispatcher;->start()V

    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lcom/android/volley/RequestQueue;->mDispatchers:[Lcom/android/volley/NetworkDispatcher;

    array-length v2, v2

    if-lt v0, v2, :cond_0

    return-void

    :cond_0
    new-instance v1, Lcom/android/volley/NetworkDispatcher;

    iget-object v2, p0, Lcom/android/volley/RequestQueue;->mNetworkQueue:Ljava/util/concurrent/PriorityBlockingQueue;

    iget-object v3, p0, Lcom/android/volley/RequestQueue;->mNetwork:Lcom/android/volley/Network;

    iget-object v4, p0, Lcom/android/volley/RequestQueue;->mCache:Lcom/android/volley/Cache;

    iget-object v5, p0, Lcom/android/volley/RequestQueue;->mDelivery:Lcom/android/volley/ResponseDelivery;

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/android/volley/NetworkDispatcher;-><init>(Ljava/util/concurrent/BlockingQueue;Lcom/android/volley/Network;Lcom/android/volley/Cache;Lcom/android/volley/ResponseDelivery;)V

    iget-object v2, p0, Lcom/android/volley/RequestQueue;->mDispatchers:[Lcom/android/volley/NetworkDispatcher;

    aput-object v1, v2, v0

    invoke-virtual {v1}, Lcom/android/volley/NetworkDispatcher;->start()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public stop()V
    .locals 2

    iget-object v1, p0, Lcom/android/volley/RequestQueue;->mCacheDispatcher:Lcom/android/volley/CacheDispatcher;

    if-nez v1, :cond_0

    :goto_0
    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Lcom/android/volley/RequestQueue;->mDispatchers:[Lcom/android/volley/NetworkDispatcher;

    array-length v1, v1

    if-lt v0, v1, :cond_1

    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/volley/RequestQueue;->mCacheDispatcher:Lcom/android/volley/CacheDispatcher;

    invoke-virtual {v1}, Lcom/android/volley/CacheDispatcher;->quit()V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/android/volley/RequestQueue;->mDispatchers:[Lcom/android/volley/NetworkDispatcher;

    aget-object v1, v1, v0

    if-nez v1, :cond_2

    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    iget-object v1, p0, Lcom/android/volley/RequestQueue;->mDispatchers:[Lcom/android/volley/NetworkDispatcher;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/android/volley/NetworkDispatcher;->quit()V

    goto :goto_2
.end method
