.class public Lcom/android/volley/toolbox/HttpHeaderParser;
.super Ljava/lang/Object;
.source "HttpHeaderParser.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static parseCacheHeaders(Lcom/android/volley/NetworkResponse;)Lcom/android/volley/Cache$Entry;
    .locals 24

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/volley/NetworkResponse;->headers:Ljava/util/Map;

    const-wide/16 v12, 0x0

    const-wide/16 v16, 0x0

    const-wide/16 v18, 0x0

    const-wide/16 v8, 0x0

    const/4 v4, 0x0

    const/4 v14, 0x0

    const-string/jumbo v21, "Date"

    move-object/from16 v0, v21

    invoke-interface {v6, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    if-nez v5, :cond_2

    :goto_0
    const-string/jumbo v21, "Cache-Control"

    move-object/from16 v0, v21

    invoke-interface {v6, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    if-nez v5, :cond_3

    :cond_0
    const-string/jumbo v21, "Expires"

    move-object/from16 v0, v21

    invoke-interface {v6, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    if-nez v5, :cond_9

    :goto_1
    const-string/jumbo v21, "ETag"

    move-object/from16 v0, v21

    invoke-interface {v6, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    if-nez v4, :cond_a

    const-wide/16 v22, 0x0

    cmp-long v21, v12, v22

    if-gtz v21, :cond_b

    const/16 v21, 0x1

    :goto_2
    if-nez v21, :cond_1

    cmp-long v21, v16, v12

    if-gez v21, :cond_c

    const/16 v21, 0x1

    :goto_3
    if-nez v21, :cond_1

    sub-long v22, v16, v12

    add-long v18, v10, v22

    :cond_1
    :goto_4
    new-instance v3, Lcom/android/volley/Cache$Entry;

    invoke-direct {v3}, Lcom/android/volley/Cache$Entry;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/volley/NetworkResponse;->data:[B

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iput-object v0, v3, Lcom/android/volley/Cache$Entry;->data:[B

    iput-object v14, v3, Lcom/android/volley/Cache$Entry;->etag:Ljava/lang/String;

    move-wide/from16 v0, v18

    iput-wide v0, v3, Lcom/android/volley/Cache$Entry;->softTtl:J

    iget-wide v0, v3, Lcom/android/volley/Cache$Entry;->softTtl:J

    move-wide/from16 v22, v0

    move-wide/from16 v0, v22

    iput-wide v0, v3, Lcom/android/volley/Cache$Entry;->ttl:J

    iput-wide v12, v3, Lcom/android/volley/Cache$Entry;->serverDate:J

    iput-object v6, v3, Lcom/android/volley/Cache$Entry;->responseHeaders:Ljava/util/Map;

    return-object v3

    :cond_2
    invoke-static {v5}, Lcom/android/volley/toolbox/HttpHeaderParser;->parseDateAsEpoch(Ljava/lang/String;)J

    move-result-wide v12

    goto :goto_0

    :cond_3
    const/4 v4, 0x1

    const-string/jumbo v21, ","

    move-object/from16 v0, v21

    invoke-virtual {v5, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v20

    const/4 v7, 0x0

    :goto_5
    move-object/from16 v0, v20

    array-length v0, v0

    move/from16 v21, v0

    move/from16 v0, v21

    if-ge v7, v0, :cond_0

    aget-object v21, v20, v7

    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v15

    const-string/jumbo v21, "no-cache"

    move-object/from16 v0, v21

    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_5

    :cond_4
    const/16 v21, 0x0

    return-object v21

    :cond_5
    const-string/jumbo v21, "no-store"

    move-object/from16 v0, v21

    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-nez v21, :cond_4

    const-string/jumbo v21, "max-age="

    move-object/from16 v0, v21

    invoke-virtual {v15, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v21

    if-nez v21, :cond_7

    const-string/jumbo v21, "must-revalidate"

    move-object/from16 v0, v21

    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_8

    :cond_6
    const-wide/16 v8, 0x0

    :goto_6
    add-int/lit8 v7, v7, 0x1

    goto :goto_5

    :cond_7
    const/16 v21, 0x8

    :try_start_0
    move/from16 v0, v21

    invoke-virtual {v15, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v8

    goto :goto_6

    :catch_0
    move-exception v2

    goto :goto_6

    :cond_8
    const-string/jumbo v21, "proxy-revalidate"

    move-object/from16 v0, v21

    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-nez v21, :cond_6

    goto :goto_6

    :cond_9
    invoke-static {v5}, Lcom/android/volley/toolbox/HttpHeaderParser;->parseDateAsEpoch(Ljava/lang/String;)J

    move-result-wide v16

    goto/16 :goto_1

    :cond_a
    const-wide/16 v22, 0x3e8

    mul-long v22, v22, v8

    add-long v18, v10, v22

    goto/16 :goto_4

    :cond_b
    const/16 v21, 0x0

    goto/16 :goto_2

    :cond_c
    const/16 v21, 0x0

    goto/16 :goto_3
.end method

.method public static parseCharset(Ljava/util/Map;)Ljava/lang/String;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    const/4 v6, 0x0

    const-string/jumbo v4, "Content-Type"

    invoke-interface {p0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_1

    :cond_0
    const-string/jumbo v4, "ISO-8859-1"

    return-object v4

    :cond_1
    const-string/jumbo v4, ";"

    invoke-virtual {v0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    const/4 v1, 0x1

    :goto_0
    array-length v4, v3

    if-ge v1, v4, :cond_0

    aget-object v4, v3, v1

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "="

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    array-length v4, v2

    const/4 v5, 0x2

    if-eq v4, v5, :cond_3

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    aget-object v4, v2, v6

    const-string/jumbo v5, "charset"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    const/4 v4, 0x1

    aget-object v4, v2, v4

    return-object v4
.end method

.method public static parseDateAsEpoch(Ljava/lang/String;)J
    .locals 4

    :try_start_0
    invoke-static {p0}, Lorg/apache/http/impl/cookie/DateUtils;->parseDate(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J
    :try_end_0
    .catch Lorg/apache/http/impl/cookie/DateParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    return-wide v2

    :catch_0
    move-exception v0

    const-wide/16 v2, 0x0

    return-wide v2
.end method
