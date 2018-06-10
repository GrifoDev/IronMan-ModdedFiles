.class public Lcom/android/volley/toolbox/Volley;
.super Ljava/lang/Object;
.source "Volley.java"


# static fields
.field private static final DEFAULT_CACHE_DIR:Ljava/lang/String; = "volley"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static newRequestQueue(Landroid/content/Context;)Lcom/android/volley/RequestQueue;
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/android/volley/toolbox/Volley;->newRequestQueue(Landroid/content/Context;Lcom/android/volley/toolbox/HttpStack;)Lcom/android/volley/RequestQueue;

    move-result-object v0

    return-object v0
.end method

.method public static newRequestQueue(Landroid/content/Context;Lcom/android/volley/toolbox/HttpStack;)Lcom/android/volley/RequestQueue;
    .locals 9

    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v7

    const-string/jumbo v8, "volley"

    invoke-direct {v0, v7, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const-string/jumbo v6, "volley/0"

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v7, v4, v8}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, v2, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    :goto_0
    if-eqz p1, :cond_0

    :goto_1
    new-instance v3, Lcom/android/volley/toolbox/BasicNetwork;

    invoke-direct {v3, p1}, Lcom/android/volley/toolbox/BasicNetwork;-><init>(Lcom/android/volley/toolbox/HttpStack;)V

    new-instance v5, Lcom/android/volley/RequestQueue;

    new-instance v7, Lcom/android/volley/toolbox/DiskBasedCache;

    invoke-direct {v7, v0}, Lcom/android/volley/toolbox/DiskBasedCache;-><init>(Ljava/io/File;)V

    invoke-direct {v5, v7, v3}, Lcom/android/volley/RequestQueue;-><init>(Lcom/android/volley/Cache;Lcom/android/volley/Network;)V

    invoke-virtual {v5}, Lcom/android/volley/RequestQueue;->start()V

    return-object v5

    :catch_0
    move-exception v1

    goto :goto_0

    :cond_0
    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v8, 0x9

    if-ge v7, v8, :cond_1

    new-instance p1, Lcom/android/volley/toolbox/HttpClientStack;

    invoke-static {v6}, Landroid/net/http/AndroidHttpClient;->newInstance(Ljava/lang/String;)Landroid/net/http/AndroidHttpClient;

    move-result-object v7

    invoke-direct {p1, v7}, Lcom/android/volley/toolbox/HttpClientStack;-><init>(Lorg/apache/http/client/HttpClient;)V

    goto :goto_1

    :cond_1
    new-instance p1, Lcom/android/volley/toolbox/HurlStack;

    invoke-direct {p1}, Lcom/android/volley/toolbox/HurlStack;-><init>()V

    goto :goto_1
.end method
