.class public Lcom/android/volley/toolbox/ImageRequest;
.super Lcom/android/volley/Request;
.source "ImageRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/volley/Request",
        "<",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# static fields
.field private static final IMAGE_BACKOFF_MULT:F = 2.0f

.field private static final IMAGE_MAX_RETRIES:I = 0x2

.field private static final IMAGE_TIMEOUT_MS:I = 0x3e8

.field private static final sDecodeLock:Ljava/lang/Object;


# instance fields
.field private final mDecodeConfig:Landroid/graphics/Bitmap$Config;

.field private final mListener:Lcom/android/volley/Response$Listener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/volley/Response$Listener",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private final mMaxHeight:I

.field private final mMaxWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/volley/toolbox/ImageRequest;->sDecodeLock:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/android/volley/Response$Listener;IILandroid/graphics/Bitmap$Config;Lcom/android/volley/Response$ErrorListener;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/android/volley/Response$Listener",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;II",
            "Landroid/graphics/Bitmap$Config;",
            "Lcom/android/volley/Response$ErrorListener;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p6}, Lcom/android/volley/Request;-><init>(ILjava/lang/String;Lcom/android/volley/Response$ErrorListener;)V

    new-instance v0, Lcom/android/volley/DefaultRetryPolicy;

    const/16 v1, 0x3e8

    const/4 v2, 0x2

    const/high16 v3, 0x40000000    # 2.0f

    invoke-direct {v0, v1, v2, v3}, Lcom/android/volley/DefaultRetryPolicy;-><init>(IIF)V

    invoke-virtual {p0, v0}, Lcom/android/volley/toolbox/ImageRequest;->setRetryPolicy(Lcom/android/volley/RetryPolicy;)V

    iput-object p2, p0, Lcom/android/volley/toolbox/ImageRequest;->mListener:Lcom/android/volley/Response$Listener;

    iput-object p5, p0, Lcom/android/volley/toolbox/ImageRequest;->mDecodeConfig:Landroid/graphics/Bitmap$Config;

    iput p3, p0, Lcom/android/volley/toolbox/ImageRequest;->mMaxWidth:I

    iput p4, p0, Lcom/android/volley/toolbox/ImageRequest;->mMaxHeight:I

    return-void
.end method

.method private doParse(Lcom/android/volley/NetworkResponse;)Lcom/android/volley/Response;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/volley/NetworkResponse;",
            ")",
            "Lcom/android/volley/Response",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    const/4 v11, 0x1

    const/4 v10, 0x0

    iget-object v3, p1, Lcom/android/volley/NetworkResponse;->data:[B

    new-instance v4, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v4}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v2, 0x0

    iget v8, p0, Lcom/android/volley/toolbox/ImageRequest;->mMaxWidth:I

    if-eqz v8, :cond_1

    :cond_0
    iput-boolean v11, v4, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    array-length v8, v3

    invoke-static {v3, v10, v8, v4}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    iget v1, v4, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v0, v4, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    iget v8, p0, Lcom/android/volley/toolbox/ImageRequest;->mMaxWidth:I

    iget v9, p0, Lcom/android/volley/toolbox/ImageRequest;->mMaxHeight:I

    invoke-static {v8, v9, v1, v0}, Lcom/android/volley/toolbox/ImageRequest;->getResizedDimension(IIII)I

    move-result v6

    iget v8, p0, Lcom/android/volley/toolbox/ImageRequest;->mMaxHeight:I

    iget v9, p0, Lcom/android/volley/toolbox/ImageRequest;->mMaxWidth:I

    invoke-static {v8, v9, v0, v1}, Lcom/android/volley/toolbox/ImageRequest;->getResizedDimension(IIII)I

    move-result v5

    iput-boolean v10, v4, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    invoke-static {v1, v0, v6, v5}, Lcom/android/volley/toolbox/ImageRequest;->findBestSampleSize(IIII)I

    move-result v8

    iput v8, v4, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    array-length v8, v3

    invoke-static {v3, v10, v8, v4}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v7

    if-nez v7, :cond_2

    :goto_0
    move-object v2, v7

    :goto_1
    if-eqz v2, :cond_5

    invoke-static {p1}, Lcom/android/volley/toolbox/HttpHeaderParser;->parseCacheHeaders(Lcom/android/volley/NetworkResponse;)Lcom/android/volley/Cache$Entry;

    move-result-object v8

    invoke-static {v2, v8}, Lcom/android/volley/Response;->success(Ljava/lang/Object;Lcom/android/volley/Cache$Entry;)Lcom/android/volley/Response;

    move-result-object v8

    return-object v8

    :cond_1
    iget v8, p0, Lcom/android/volley/toolbox/ImageRequest;->mMaxHeight:I

    if-nez v8, :cond_0

    iget-object v8, p0, Lcom/android/volley/toolbox/ImageRequest;->mDecodeConfig:Landroid/graphics/Bitmap$Config;

    iput-object v8, v4, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    array-length v8, v3

    invoke-static {v3, v10, v8, v4}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v2

    goto :goto_1

    :cond_2
    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    if-le v8, v6, :cond_4

    :cond_3
    invoke-static {v7, v6, v5, v11}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_1

    :cond_4
    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    if-gt v8, v5, :cond_3

    goto :goto_0

    :cond_5
    new-instance v8, Lcom/android/volley/ParseError;

    invoke-direct {v8, p1}, Lcom/android/volley/ParseError;-><init>(Lcom/android/volley/NetworkResponse;)V

    invoke-static {v8}, Lcom/android/volley/Response;->error(Lcom/android/volley/VolleyError;)Lcom/android/volley/Response;

    move-result-object v8

    return-object v8
.end method

.method static findBestSampleSize(IIII)I
    .locals 12

    int-to-double v8, p0

    int-to-double v10, p2

    div-double v6, v8, v10

    int-to-double v8, p1

    int-to-double v10, p3

    div-double v0, v8, v10

    invoke-static {v6, v7, v0, v1}, Ljava/lang/Math;->min(DD)D

    move-result-wide v4

    const/high16 v2, 0x3f800000    # 1.0f

    :goto_0
    const/high16 v3, 0x40000000    # 2.0f

    mul-float/2addr v3, v2

    float-to-double v8, v3

    cmpg-double v3, v8, v4

    if-gtz v3, :cond_0

    const/high16 v3, 0x40000000    # 2.0f

    mul-float/2addr v2, v3

    goto :goto_0

    :cond_0
    float-to-int v3, v2

    return v3
.end method

.method private static getResizedDimension(IIII)I
    .locals 8

    if-eqz p0, :cond_2

    :cond_0
    if-eqz p0, :cond_3

    if-eqz p1, :cond_4

    int-to-double v4, p3

    int-to-double v6, p2

    div-double v0, v4, v6

    move v2, p0

    int-to-double v4, p0

    mul-double/2addr v4, v0

    int-to-double v6, p1

    cmpl-double v3, v4, v6

    if-lez v3, :cond_1

    int-to-double v4, p1

    div-double/2addr v4, v0

    double-to-int v2, v4

    :cond_1
    return v2

    :cond_2
    if-nez p1, :cond_0

    return p2

    :cond_3
    int-to-double v4, p1

    int-to-double v6, p3

    div-double v0, v4, v6

    int-to-double v4, p2

    mul-double/2addr v4, v0

    double-to-int v3, v4

    return v3

    :cond_4
    return p0
.end method


# virtual methods
.method protected deliverResponse(Landroid/graphics/Bitmap;)V
    .locals 1

    iget-object v0, p0, Lcom/android/volley/toolbox/ImageRequest;->mListener:Lcom/android/volley/Response$Listener;

    invoke-interface {v0, p1}, Lcom/android/volley/Response$Listener;->onResponse(Ljava/lang/Object;)V

    return-void
.end method

.method protected bridge synthetic deliverResponse(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1}, Lcom/android/volley/toolbox/ImageRequest;->deliverResponse(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public getPriority()Lcom/android/volley/Request$Priority;
    .locals 1

    sget-object v0, Lcom/android/volley/Request$Priority;->LOW:Lcom/android/volley/Request$Priority;

    return-object v0
.end method

.method protected parseNetworkResponse(Lcom/android/volley/NetworkResponse;)Lcom/android/volley/Response;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/volley/NetworkResponse;",
            ")",
            "Lcom/android/volley/Response",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/android/volley/toolbox/ImageRequest;->sDecodeLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/volley/toolbox/ImageRequest;->doParse(Lcom/android/volley/NetworkResponse;)Lcom/android/volley/Response;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v3

    :try_start_1
    monitor-exit v0

    return-object v3

    :catch_0
    move-exception v2

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p1, Lcom/android/volley/NetworkResponse;->data:[B

    array-length v4, v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {p0}, Lcom/android/volley/toolbox/ImageRequest;->getUrl()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    aput-object v4, v3, v5

    const-string/jumbo v4, "Caught OOM for %d byte image, url=%s"

    invoke-static {v4, v3}, Lcom/android/volley/VolleyLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v3, Lcom/android/volley/ParseError;

    invoke-direct {v3, v2}, Lcom/android/volley/ParseError;-><init>(Ljava/lang/Throwable;)V

    invoke-static {v3}, Lcom/android/volley/Response;->error(Lcom/android/volley/VolleyError;)Lcom/android/volley/Response;

    move-result-object v3

    monitor-exit v0

    return-object v3

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
