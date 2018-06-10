.class public Lcom/samsung/android/sdk/applicativeapp/fotalib/httpdownload/InputStreamRequest;
.super Lcom/android/volley/Request;
.source "InputStreamRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/volley/Request",
        "<[B>;"
    }
.end annotation


# instance fields
.field private final listener:Lcom/android/volley/Response$Listener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/volley/Response$Listener",
            "<[B>;"
        }
    .end annotation
.end field

.field private params:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public responseHeaders:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(ILjava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;Ljava/util/HashMap;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Lcom/android/volley/Response$Listener",
            "<[B>;",
            "Lcom/android/volley/Response$ErrorListener;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2, p4}, Lcom/android/volley/Request;-><init>(ILjava/lang/String;Lcom/android/volley/Response$ErrorListener;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/android/sdk/applicativeapp/fotalib/httpdownload/InputStreamRequest;->setShouldCache(Z)V

    iput-object p3, p0, Lcom/samsung/android/sdk/applicativeapp/fotalib/httpdownload/InputStreamRequest;->listener:Lcom/android/volley/Response$Listener;

    iput-object p5, p0, Lcom/samsung/android/sdk/applicativeapp/fotalib/httpdownload/InputStreamRequest;->params:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method protected bridge synthetic deliverResponse(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, [B

    invoke-virtual {p0, p1}, Lcom/samsung/android/sdk/applicativeapp/fotalib/httpdownload/InputStreamRequest;->deliverResponse([B)V

    return-void
.end method

.method protected deliverResponse([B)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/applicativeapp/fotalib/httpdownload/InputStreamRequest;->listener:Lcom/android/volley/Response$Listener;

    invoke-interface {v0, p1}, Lcom/android/volley/Response$Listener;->onResponse(Ljava/lang/Object;)V

    return-void
.end method

.method protected getParams()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/volley/AuthFailureError;
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/sdk/applicativeapp/fotalib/httpdownload/InputStreamRequest;->params:Ljava/util/Map;

    return-object v0
.end method

.method protected parseNetworkResponse(Lcom/android/volley/NetworkResponse;)Lcom/android/volley/Response;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/volley/NetworkResponse;",
            ")",
            "Lcom/android/volley/Response",
            "<[B>;"
        }
    .end annotation

    iget-object v0, p1, Lcom/android/volley/NetworkResponse;->headers:Ljava/util/Map;

    iput-object v0, p0, Lcom/samsung/android/sdk/applicativeapp/fotalib/httpdownload/InputStreamRequest;->responseHeaders:Ljava/util/Map;

    iget-object v0, p1, Lcom/android/volley/NetworkResponse;->data:[B

    invoke-static {p1}, Lcom/android/volley/toolbox/HttpHeaderParser;->parseCacheHeaders(Lcom/android/volley/NetworkResponse;)Lcom/android/volley/Cache$Entry;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/volley/Response;->success(Ljava/lang/Object;Lcom/android/volley/Cache$Entry;)Lcom/android/volley/Response;

    move-result-object v0

    return-object v0
.end method
