.class public Lcom/android/volley/NetworkResponse;
.super Ljava/lang/Object;
.source "NetworkResponse.java"


# instance fields
.field public final data:[B

.field public final headers:Ljava/util/Map;
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

.field public final notModified:Z

.field public final statusCode:I


# direct methods
.method public constructor <init>(I[BLjava/util/Map;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I[B",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/volley/NetworkResponse;->statusCode:I

    iput-object p2, p0, Lcom/android/volley/NetworkResponse;->data:[B

    iput-object p3, p0, Lcom/android/volley/NetworkResponse;->headers:Ljava/util/Map;

    iput-boolean p4, p0, Lcom/android/volley/NetworkResponse;->notModified:Z

    return-void
.end method

.method public constructor <init>([B)V
    .locals 3

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    const/4 v1, 0x0

    const/16 v2, 0xc8

    invoke-direct {p0, v2, p1, v0, v1}, Lcom/android/volley/NetworkResponse;-><init>(I[BLjava/util/Map;Z)V

    return-void
.end method

.method public constructor <init>([BLjava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    const/16 v1, 0xc8

    invoke-direct {p0, v1, p1, p2, v0}, Lcom/android/volley/NetworkResponse;-><init>(I[BLjava/util/Map;Z)V

    return-void
.end method
