.class public Lcom/samsung/android/sdk/applicativeapp/fotalib/CustomVolley;
.super Ljava/lang/Object;
.source "CustomVolley.java"


# static fields
.field public static final CUSTOM_CACHE_DIR:Ljava/lang/String; = "/data/dexupdate/"

.field private static final TAG:Ljava/lang/String; = "CustomVolley"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static newRequestQueue(Landroid/content/Context;Lcom/android/volley/toolbox/HttpStack;)Lcom/android/volley/RequestQueue;
    .locals 11

    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Ljava/io/File;

    const-string/jumbo v9, "/data/dexupdate/"

    const-string/jumbo v10, "volley"

    invoke-direct {v1, v9, v10}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    :goto_0
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "newRequestQueue cache path = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const-string/jumbo v10, "CustomVolley"

    invoke-static {v10, v9}, Lcom/samsung/android/lib/dexcontrol/fota/debug/SLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v7, "volley/0"

    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v9, v3, v10}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v5

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "/"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, v5, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v7

    :goto_1
    if-eqz p1, :cond_1

    :cond_0
    :goto_2
    new-instance v4, Lcom/android/volley/toolbox/BasicNetwork;

    invoke-direct {v4, p1}, Lcom/android/volley/toolbox/BasicNetwork;-><init>(Lcom/android/volley/toolbox/HttpStack;)V

    new-instance v6, Lcom/android/volley/RequestQueue;

    new-instance v9, Lcom/android/volley/toolbox/DiskBasedCache;

    invoke-direct {v9, v0}, Lcom/android/volley/toolbox/DiskBasedCache;-><init>(Ljava/io/File;)V

    invoke-direct {v6, v9, v4}, Lcom/android/volley/RequestQueue;-><init>(Lcom/android/volley/Cache;Lcom/android/volley/Network;)V

    invoke-virtual {v6}, Lcom/android/volley/RequestQueue;->start()V

    return-object v6

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Exception;->getStackTrace()[Ljava/lang/StackTraceElement;

    const-string/jumbo v9, "CustomVolley"

    const-string/jumbo v10, "newRequestQueue fail!"

    invoke-static {v9, v10}, Lcom/samsung/android/lib/dexcontrol/fota/debug/SLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catch_1
    move-exception v8

    goto :goto_1

    :cond_1
    sget v9, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v10, 0x9

    if-lt v9, v10, :cond_0

    new-instance p1, Lcom/android/volley/toolbox/HurlStack;

    invoke-direct {p1}, Lcom/android/volley/toolbox/HurlStack;-><init>()V

    goto :goto_2
.end method
