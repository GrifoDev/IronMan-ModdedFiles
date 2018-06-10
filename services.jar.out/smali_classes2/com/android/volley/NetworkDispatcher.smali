.class public Lcom/android/volley/NetworkDispatcher;
.super Ljava/lang/Thread;
.source "NetworkDispatcher.java"


# instance fields
.field private final mCache:Lcom/android/volley/Cache;

.field private final mDelivery:Lcom/android/volley/ResponseDelivery;

.field private final mNetwork:Lcom/android/volley/Network;

.field private final mQueue:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Lcom/android/volley/Request;",
            ">;"
        }
    .end annotation
.end field

.field private volatile mQuit:Z


# direct methods
.method public constructor <init>(Ljava/util/concurrent/BlockingQueue;Lcom/android/volley/Network;Lcom/android/volley/Cache;Lcom/android/volley/ResponseDelivery;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Lcom/android/volley/Request;",
            ">;",
            "Lcom/android/volley/Network;",
            "Lcom/android/volley/Cache;",
            "Lcom/android/volley/ResponseDelivery;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/volley/NetworkDispatcher;->mQuit:Z

    iput-object p1, p0, Lcom/android/volley/NetworkDispatcher;->mQueue:Ljava/util/concurrent/BlockingQueue;

    iput-object p2, p0, Lcom/android/volley/NetworkDispatcher;->mNetwork:Lcom/android/volley/Network;

    iput-object p3, p0, Lcom/android/volley/NetworkDispatcher;->mCache:Lcom/android/volley/Cache;

    iput-object p4, p0, Lcom/android/volley/NetworkDispatcher;->mDelivery:Lcom/android/volley/ResponseDelivery;

    return-void
.end method

.method private parseAndDeliverNetworkError(Lcom/android/volley/Request;Lcom/android/volley/VolleyError;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/volley/Request",
            "<*>;",
            "Lcom/android/volley/VolleyError;",
            ")V"
        }
    .end annotation

    invoke-virtual {p1, p2}, Lcom/android/volley/Request;->parseNetworkError(Lcom/android/volley/VolleyError;)Lcom/android/volley/VolleyError;

    move-result-object p2

    iget-object v0, p0, Lcom/android/volley/NetworkDispatcher;->mDelivery:Lcom/android/volley/ResponseDelivery;

    invoke-interface {v0, p1, p2}, Lcom/android/volley/ResponseDelivery;->postError(Lcom/android/volley/Request;Lcom/android/volley/VolleyError;)V

    return-void
.end method


# virtual methods
.method public quit()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/volley/NetworkDispatcher;->mQuit:Z

    invoke-virtual {p0}, Lcom/android/volley/NetworkDispatcher;->interrupt()V

    return-void
.end method

.method public run()V
    .locals 10

    const/4 v9, 0x0

    const/16 v6, 0xa

    invoke-static {v6}, Landroid/os/Process;->setThreadPriority(I)V

    :cond_0
    :goto_0
    :try_start_0
    iget-object v6, p0, Lcom/android/volley/NetworkDispatcher;->mQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v6}, Ljava/util/concurrent/BlockingQueue;->take()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/volley/Request;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    const-string/jumbo v6, "network-queue-take"

    invoke-virtual {v3, v6}, Lcom/android/volley/Request;->addMarker(Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/android/volley/Request;->isCanceled()Z

    move-result v6

    if-nez v6, :cond_3

    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0xe

    if-ge v6, v7, :cond_4

    :goto_1
    iget-object v6, p0, Lcom/android/volley/NetworkDispatcher;->mNetwork:Lcom/android/volley/Network;

    invoke-interface {v6, v3}, Lcom/android/volley/Network;->performRequest(Lcom/android/volley/Request;)Lcom/android/volley/NetworkResponse;

    move-result-object v2

    const-string/jumbo v6, "network-http-complete"

    invoke-virtual {v3, v6}, Lcom/android/volley/Request;->addMarker(Ljava/lang/String;)V

    iget-boolean v6, v2, Lcom/android/volley/NetworkResponse;->notModified:Z

    if-nez v6, :cond_5

    :cond_1
    invoke-virtual {v3, v2}, Lcom/android/volley/Request;->parseNetworkResponse(Lcom/android/volley/NetworkResponse;)Lcom/android/volley/Response;

    move-result-object v4

    const-string/jumbo v6, "network-parse-complete"

    invoke-virtual {v3, v6}, Lcom/android/volley/Request;->addMarker(Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/android/volley/Request;->shouldCache()Z

    move-result v6

    if-nez v6, :cond_6

    :cond_2
    :goto_2
    invoke-virtual {v3}, Lcom/android/volley/Request;->markDelivered()V

    iget-object v6, p0, Lcom/android/volley/NetworkDispatcher;->mDelivery:Lcom/android/volley/ResponseDelivery;

    invoke-interface {v6, v3, v4}, Lcom/android/volley/ResponseDelivery;->postResponse(Lcom/android/volley/Request;Lcom/android/volley/Response;)V
    :try_end_1
    .catch Lcom/android/volley/VolleyError; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_0

    :catch_0
    move-exception v5

    invoke-direct {p0, v3, v5}, Lcom/android/volley/NetworkDispatcher;->parseAndDeliverNetworkError(Lcom/android/volley/Request;Lcom/android/volley/VolleyError;)V

    goto :goto_0

    :catch_1
    move-exception v1

    iget-boolean v6, p0, Lcom/android/volley/NetworkDispatcher;->mQuit:Z

    if-eqz v6, :cond_0

    return-void

    :cond_3
    :try_start_2
    const-string/jumbo v6, "network-discard-cancelled"

    invoke-virtual {v3, v6}, Lcom/android/volley/Request;->finish(Ljava/lang/String;)V
    :try_end_2
    .catch Lcom/android/volley/VolleyError; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_0

    :catch_2
    move-exception v0

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v9

    const-string/jumbo v7, "Unhandled exception %s"

    invoke-static {v0, v7, v6}, Lcom/android/volley/VolleyLog;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v6, p0, Lcom/android/volley/NetworkDispatcher;->mDelivery:Lcom/android/volley/ResponseDelivery;

    new-instance v7, Lcom/android/volley/VolleyError;

    invoke-direct {v7, v0}, Lcom/android/volley/VolleyError;-><init>(Ljava/lang/Throwable;)V

    invoke-interface {v6, v3, v7}, Lcom/android/volley/ResponseDelivery;->postError(Lcom/android/volley/Request;Lcom/android/volley/VolleyError;)V

    goto :goto_0

    :cond_4
    :try_start_3
    invoke-virtual {v3}, Lcom/android/volley/Request;->getTrafficStatsTag()I

    move-result v6

    invoke-static {v6}, Landroid/net/TrafficStats;->setThreadStatsTag(I)V

    goto :goto_1

    :cond_5
    invoke-virtual {v3}, Lcom/android/volley/Request;->hasHadResponseDelivered()Z

    move-result v6

    if-eqz v6, :cond_1

    const-string/jumbo v6, "not-modified"

    invoke-virtual {v3, v6}, Lcom/android/volley/Request;->finish(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_6
    iget-object v6, v4, Lcom/android/volley/Response;->cacheEntry:Lcom/android/volley/Cache$Entry;

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/android/volley/NetworkDispatcher;->mCache:Lcom/android/volley/Cache;

    invoke-virtual {v3}, Lcom/android/volley/Request;->getCacheKey()Ljava/lang/String;

    move-result-object v7

    iget-object v8, v4, Lcom/android/volley/Response;->cacheEntry:Lcom/android/volley/Cache$Entry;

    invoke-interface {v6, v7, v8}, Lcom/android/volley/Cache;->put(Ljava/lang/String;Lcom/android/volley/Cache$Entry;)V

    const-string/jumbo v6, "network-cache-written"

    invoke-virtual {v3, v6}, Lcom/android/volley/Request;->addMarker(Ljava/lang/String;)V
    :try_end_3
    .catch Lcom/android/volley/VolleyError; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_2
.end method
