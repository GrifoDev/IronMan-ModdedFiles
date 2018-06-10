.class public Lcom/android/volley/toolbox/BasicNetwork;
.super Ljava/lang/Object;
.source "BasicNetwork.java"

# interfaces
.implements Lcom/android/volley/Network;


# static fields
.field protected static final DEBUG:Z

.field private static DEFAULT_POOL_SIZE:I

.field private static SLOW_REQUEST_THRESHOLD_MS:I


# instance fields
.field protected final mHttpStack:Lcom/android/volley/toolbox/HttpStack;

.field protected final mPool:Lcom/android/volley/toolbox/ByteArrayPool;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-boolean v0, Lcom/android/volley/VolleyLog;->DEBUG:Z

    sput-boolean v0, Lcom/android/volley/toolbox/BasicNetwork;->DEBUG:Z

    const/16 v0, 0xbb8

    sput v0, Lcom/android/volley/toolbox/BasicNetwork;->SLOW_REQUEST_THRESHOLD_MS:I

    const/16 v0, 0x1000

    sput v0, Lcom/android/volley/toolbox/BasicNetwork;->DEFAULT_POOL_SIZE:I

    return-void
.end method

.method public constructor <init>(Lcom/android/volley/toolbox/HttpStack;)V
    .locals 2

    new-instance v0, Lcom/android/volley/toolbox/ByteArrayPool;

    sget v1, Lcom/android/volley/toolbox/BasicNetwork;->DEFAULT_POOL_SIZE:I

    invoke-direct {v0, v1}, Lcom/android/volley/toolbox/ByteArrayPool;-><init>(I)V

    invoke-direct {p0, p1, v0}, Lcom/android/volley/toolbox/BasicNetwork;-><init>(Lcom/android/volley/toolbox/HttpStack;Lcom/android/volley/toolbox/ByteArrayPool;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/volley/toolbox/HttpStack;Lcom/android/volley/toolbox/ByteArrayPool;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/volley/toolbox/BasicNetwork;->mHttpStack:Lcom/android/volley/toolbox/HttpStack;

    iput-object p2, p0, Lcom/android/volley/toolbox/BasicNetwork;->mPool:Lcom/android/volley/toolbox/ByteArrayPool;

    return-void
.end method

.method private addCacheHeaders(Ljava/util/Map;Lcom/android/volley/Cache$Entry;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/android/volley/Cache$Entry;",
            ")V"
        }
    .end annotation

    if-eqz p2, :cond_1

    iget-object v1, p2, Lcom/android/volley/Cache$Entry;->etag:Ljava/lang/String;

    if-nez v1, :cond_2

    :goto_0
    iget-wide v2, p2, Lcom/android/volley/Cache$Entry;->serverDate:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-gtz v1, :cond_3

    const/4 v1, 0x1

    :goto_1
    if-nez v1, :cond_0

    new-instance v0, Ljava/util/Date;

    iget-wide v2, p2, Lcom/android/volley/Cache$Entry;->serverDate:J

    invoke-direct {v0, v2, v3}, Ljava/util/Date;-><init>(J)V

    invoke-static {v0}, Lorg/apache/http/impl/cookie/DateUtils;->formatDate(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "If-Modified-Since"

    invoke-interface {p1, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void

    :cond_1
    return-void

    :cond_2
    iget-object v1, p2, Lcom/android/volley/Cache$Entry;->etag:Ljava/lang/String;

    const-string/jumbo v2, "If-None-Match"

    invoke-interface {p1, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private static attemptRetryOnException(Ljava/lang/String;Lcom/android/volley/Request;Lcom/android/volley/VolleyError;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/android/volley/Request",
            "<*>;",
            "Lcom/android/volley/VolleyError;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/volley/VolleyError;
        }
    .end annotation

    const/4 v3, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    invoke-virtual {p1}, Lcom/android/volley/Request;->getRetryPolicy()Lcom/android/volley/RetryPolicy;

    move-result-object v2

    invoke-virtual {p1}, Lcom/android/volley/Request;->getTimeoutMs()I

    move-result v1

    :try_start_0
    invoke-interface {v2, p2}, Lcom/android/volley/RetryPolicy;->retry(Lcom/android/volley/VolleyError;)V
    :try_end_0
    .catch Lcom/android/volley/VolleyError; {:try_start_0 .. :try_end_0} :catch_0

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p0, v3, v4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    const-string/jumbo v4, "%s-retry [timeout=%s]"

    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/android/volley/Request;->addMarker(Ljava/lang/String;)V

    return-void

    :catch_0
    move-exception v0

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p0, v3, v4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    const-string/jumbo v4, "%s-timeout-giveup [timeout=%s]"

    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/android/volley/Request;->addMarker(Ljava/lang/String;)V

    throw v0
.end method

.method private static convertHeaders([Lorg/apache/http/Header;)Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lorg/apache/http/Header;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const/4 v0, 0x0

    :goto_0
    array-length v2, p0

    if-lt v0, v2, :cond_0

    return-object v1

    :cond_0
    aget-object v2, p0, v0

    invoke-interface {v2}, Lorg/apache/http/Header;->getName()Ljava/lang/String;

    move-result-object v2

    aget-object v3, p0, v0

    invoke-interface {v3}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private entityToBytes(Lorg/apache/http/HttpEntity;)[B
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/android/volley/ServerError;
        }
    .end annotation

    const/4 v10, 0x0

    new-instance v3, Lcom/android/volley/toolbox/PoolingByteArrayOutputStream;

    iget-object v7, p0, Lcom/android/volley/toolbox/BasicNetwork;->mPool:Lcom/android/volley/toolbox/ByteArrayPool;

    invoke-interface {p1}, Lorg/apache/http/HttpEntity;->getContentLength()J

    move-result-wide v8

    long-to-int v8, v8

    invoke-direct {v3, v7, v8}, Lcom/android/volley/toolbox/PoolingByteArrayOutputStream;-><init>(Lcom/android/volley/toolbox/ByteArrayPool;I)V

    const/4 v2, 0x0

    :try_start_0
    invoke-interface {p1}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v6

    if-eqz v6, :cond_0

    iget-object v7, p0, Lcom/android/volley/toolbox/BasicNetwork;->mPool:Lcom/android/volley/toolbox/ByteArrayPool;

    const/16 v8, 0x400

    invoke-virtual {v7, v8}, Lcom/android/volley/toolbox/ByteArrayPool;->getBuf(I)[B

    move-result-object v2

    :goto_0
    invoke-virtual {v6, v2}, Ljava/io/InputStream;->read([B)I

    move-result v4

    const/4 v7, -0x1

    if-ne v4, v7, :cond_1

    invoke-virtual {v3}, Lcom/android/volley/toolbox/PoolingByteArrayOutputStream;->toByteArray()[B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    :try_start_1
    invoke-interface {p1}, Lorg/apache/http/HttpEntity;->consumeContent()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    :goto_1
    iget-object v7, p0, Lcom/android/volley/toolbox/BasicNetwork;->mPool:Lcom/android/volley/toolbox/ByteArrayPool;

    invoke-virtual {v7, v2}, Lcom/android/volley/toolbox/ByteArrayPool;->returnBuf([B)V

    invoke-virtual {v3}, Lcom/android/volley/toolbox/PoolingByteArrayOutputStream;->close()V

    return-object v0

    :cond_0
    :try_start_2
    new-instance v7, Lcom/android/volley/ServerError;

    invoke-direct {v7}, Lcom/android/volley/ServerError;-><init>()V

    throw v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception v1

    :try_start_3
    invoke-interface {p1}, Lorg/apache/http/HttpEntity;->consumeContent()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    :goto_2
    iget-object v7, p0, Lcom/android/volley/toolbox/BasicNetwork;->mPool:Lcom/android/volley/toolbox/ByteArrayPool;

    invoke-virtual {v7, v2}, Lcom/android/volley/toolbox/ByteArrayPool;->returnBuf([B)V

    invoke-virtual {v3}, Lcom/android/volley/toolbox/PoolingByteArrayOutputStream;->close()V

    throw v1

    :cond_1
    const/4 v7, 0x0

    :try_start_4
    invoke-virtual {v3, v2, v7, v4}, Lcom/android/volley/toolbox/PoolingByteArrayOutputStream;->write([BII)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v5

    new-array v7, v10, [Ljava/lang/Object;

    const-string/jumbo v8, "Error occured when calling consumingContent"

    invoke-static {v8, v7}, Lcom/android/volley/VolleyLog;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    :catch_1
    move-exception v5

    new-array v7, v10, [Ljava/lang/Object;

    const-string/jumbo v8, "Error occured when calling consumingContent"

    invoke-static {v8, v7}, Lcom/android/volley/VolleyLog;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2
.end method

.method private logSlowRequests(JLcom/android/volley/Request;[BLorg/apache/http/StatusLine;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lcom/android/volley/Request",
            "<*>;[B",
            "Lorg/apache/http/StatusLine;",
            ")V"
        }
    .end annotation

    const/4 v1, 0x1

    const/4 v2, 0x0

    sget-boolean v0, Lcom/android/volley/toolbox/BasicNetwork;->DEBUG:Z

    if-eqz v0, :cond_1

    :goto_0
    const/4 v0, 0x5

    new-array v3, v0, [Ljava/lang/Object;

    aput-object p3, v3, v2

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v3, v1

    const-string/jumbo v1, "HTTP response for request=<%s> [lifetime=%d], [size=%s], [rc=%d], [retryCount=%s]"

    const/4 v2, 0x2

    if-nez p4, :cond_3

    const-string/jumbo v0, "null"

    :goto_1
    aput-object v0, v3, v2

    invoke-interface {p5}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v2, 0x3

    aput-object v0, v3, v2

    invoke-virtual {p3}, Lcom/android/volley/Request;->getRetryPolicy()Lcom/android/volley/RetryPolicy;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/volley/RetryPolicy;->getCurrentRetryCount()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v2, 0x4

    aput-object v0, v3, v2

    invoke-static {v1, v3}, Lcom/android/volley/VolleyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-void

    :cond_1
    sget v0, Lcom/android/volley/toolbox/BasicNetwork;->SLOW_REQUEST_THRESHOLD_MS:I

    int-to-long v4, v0

    cmp-long v0, p1, v4

    if-gtz v0, :cond_2

    move v0, v1

    :goto_2
    if-nez v0, :cond_0

    goto :goto_0

    :cond_2
    move v0, v2

    goto :goto_2

    :cond_3
    array-length v0, p4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_1
.end method


# virtual methods
.method protected logError(Ljava/lang/String;Ljava/lang/String;J)V
    .locals 7

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    sub-long v4, v0, p3

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v2, v4

    const/4 v3, 0x2

    aput-object p2, v2, v3

    const-string/jumbo v3, "HTTP ERROR(%s) %d ms to fetch %s"

    invoke-static {v3, v2}, Lcom/android/volley/VolleyLog;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public performRequest(Lcom/android/volley/Request;)Lcom/android/volley/NetworkResponse;
    .locals 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/volley/Request",
            "<*>;)",
            "Lcom/android/volley/NetworkResponse;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/volley/VolleyError;
        }
    .end annotation

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v16

    :goto_0
    const/4 v13, 0x0

    const/4 v7, 0x0

    new-instance v15, Ljava/util/HashMap;

    invoke-direct {v15}, Ljava/util/HashMap;-><init>()V

    :try_start_0
    new-instance v12, Ljava/util/HashMap;

    invoke-direct {v12}, Ljava/util/HashMap;-><init>()V

    invoke-virtual/range {p1 .. p1}, Lcom/android/volley/Request;->getCacheEntry()Lcom/android/volley/Cache$Entry;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-direct {v0, v12, v3}, Lcom/android/volley/toolbox/BasicNetwork;->addCacheHeaders(Ljava/util/Map;Lcom/android/volley/Cache$Entry;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/volley/toolbox/BasicNetwork;->mHttpStack:Lcom/android/volley/toolbox/HttpStack;

    move-object/from16 v0, p1

    invoke-interface {v3, v0, v12}, Lcom/android/volley/toolbox/HttpStack;->performRequest(Lcom/android/volley/Request;Ljava/util/Map;)Lorg/apache/http/HttpResponse;

    move-result-object v13

    invoke-interface {v13}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v8

    invoke-interface {v8}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v18

    invoke-interface {v13}, Lorg/apache/http/HttpResponse;->getAllHeaders()[Lorg/apache/http/Header;

    move-result-object v3

    invoke-static {v3}, Lcom/android/volley/toolbox/BasicNetwork;->convertHeaders([Lorg/apache/http/Header;)Ljava/util/Map;

    move-result-object v15

    const/16 v3, 0x130

    move/from16 v0, v18

    if-eq v0, v3, :cond_1

    invoke-interface {v13}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v3

    if-nez v3, :cond_2

    const/4 v3, 0x0

    new-array v7, v3, [B

    :goto_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v20

    sub-long v4, v20, v16

    move-object/from16 v3, p0

    move-object/from16 v6, p1

    invoke-direct/range {v3 .. v8}, Lcom/android/volley/toolbox/BasicNetwork;->logSlowRequests(JLcom/android/volley/Request;[BLorg/apache/http/StatusLine;)V

    const/16 v3, 0xc8

    move/from16 v0, v18

    if-ge v0, v3, :cond_3

    :cond_0
    new-instance v3, Ljava/io/IOException;

    invoke-direct {v3}, Ljava/io/IOException;-><init>()V

    throw v3
    :try_end_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3

    :catch_0
    move-exception v10

    new-instance v3, Lcom/android/volley/TimeoutError;

    invoke-direct {v3}, Lcom/android/volley/TimeoutError;-><init>()V

    const-string/jumbo v6, "socket"

    move-object/from16 v0, p1

    invoke-static {v6, v0, v3}, Lcom/android/volley/toolbox/BasicNetwork;->attemptRetryOnException(Ljava/lang/String;Lcom/android/volley/Request;Lcom/android/volley/VolleyError;)V

    goto :goto_0

    :cond_1
    :try_start_1
    new-instance v3, Lcom/android/volley/NetworkResponse;

    invoke-virtual/range {p1 .. p1}, Lcom/android/volley/Request;->getCacheEntry()Lcom/android/volley/Cache$Entry;

    move-result-object v6

    iget-object v6, v6, Lcom/android/volley/Cache$Entry;->data:[B

    const/16 v19, 0x1

    const/16 v20, 0x130

    move/from16 v0, v20

    move/from16 v1, v19

    invoke-direct {v3, v0, v6, v15, v1}, Lcom/android/volley/NetworkResponse;-><init>(I[BLjava/util/Map;Z)V

    return-object v3

    :cond_2
    invoke-interface {v13}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/volley/toolbox/BasicNetwork;->entityToBytes(Lorg/apache/http/HttpEntity;)[B

    move-result-object v7

    goto :goto_1

    :cond_3
    const/16 v3, 0x12b

    move/from16 v0, v18

    if-gt v0, v3, :cond_0

    new-instance v3, Lcom/android/volley/NetworkResponse;

    const/4 v6, 0x0

    move/from16 v0, v18

    invoke-direct {v3, v0, v7, v15, v6}, Lcom/android/volley/NetworkResponse;-><init>(I[BLjava/util/Map;Z)V
    :try_end_1
    .catch Ljava/net/SocketTimeoutException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    return-object v3

    :catch_1
    move-exception v11

    new-instance v3, Lcom/android/volley/TimeoutError;

    invoke-direct {v3}, Lcom/android/volley/TimeoutError;-><init>()V

    const-string/jumbo v6, "connection"

    move-object/from16 v0, p1

    invoke-static {v6, v0, v3}, Lcom/android/volley/toolbox/BasicNetwork;->attemptRetryOnException(Ljava/lang/String;Lcom/android/volley/Request;Lcom/android/volley/VolleyError;)V

    goto/16 :goto_0

    :catch_2
    move-exception v9

    new-instance v3, Ljava/lang/RuntimeException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "Bad URL "

    move-object/from16 v0, v19

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual/range {p1 .. p1}, Lcom/android/volley/Request;->getUrl()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v6, v9}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    :catch_3
    move-exception v2

    const/16 v18, 0x0

    const/4 v14, 0x0

    if-nez v13, :cond_4

    new-instance v3, Lcom/android/volley/NoConnectionError;

    invoke-direct {v3, v2}, Lcom/android/volley/NoConnectionError;-><init>(Ljava/lang/Throwable;)V

    throw v3

    :cond_4
    invoke-interface {v13}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v3

    invoke-interface {v3}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v18

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/16 v19, 0x0

    aput-object v6, v3, v19

    invoke-virtual/range {p1 .. p1}, Lcom/android/volley/Request;->getUrl()Ljava/lang/String;

    move-result-object v6

    const/16 v19, 0x1

    aput-object v6, v3, v19

    const-string/jumbo v6, "Unexpected response code %d for %s"

    invoke-static {v6, v3}, Lcom/android/volley/VolleyLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    if-nez v7, :cond_5

    new-instance v3, Lcom/android/volley/NetworkError;

    invoke-direct {v3, v14}, Lcom/android/volley/NetworkError;-><init>(Lcom/android/volley/NetworkResponse;)V

    throw v3

    :cond_5
    new-instance v14, Lcom/android/volley/NetworkResponse;

    const/4 v3, 0x0

    move/from16 v0, v18

    invoke-direct {v14, v0, v7, v15, v3}, Lcom/android/volley/NetworkResponse;-><init>(I[BLjava/util/Map;Z)V

    const/16 v3, 0x191

    move/from16 v0, v18

    if-ne v0, v3, :cond_7

    :cond_6
    new-instance v3, Lcom/android/volley/AuthFailureError;

    invoke-direct {v3, v14}, Lcom/android/volley/AuthFailureError;-><init>(Lcom/android/volley/NetworkResponse;)V

    const-string/jumbo v6, "auth"

    move-object/from16 v0, p1

    invoke-static {v6, v0, v3}, Lcom/android/volley/toolbox/BasicNetwork;->attemptRetryOnException(Ljava/lang/String;Lcom/android/volley/Request;Lcom/android/volley/VolleyError;)V

    goto/16 :goto_0

    :cond_7
    const/16 v3, 0x193

    move/from16 v0, v18

    if-eq v0, v3, :cond_6

    new-instance v3, Lcom/android/volley/ServerError;

    invoke-direct {v3, v14}, Lcom/android/volley/ServerError;-><init>(Lcom/android/volley/NetworkResponse;)V

    throw v3
.end method
