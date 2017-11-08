.class public Lcom/android/incallui/agif/StickerCenterManager;
.super Ljava/lang/Object;


# static fields
.field static final LOG_TAG:Ljava/lang/String; = "StickerCenterManager"

.field private static sInstance:Lcom/android/incallui/agif/StickerCenterManager;


# instance fields
.field mBound:Z

.field private mCallback:Lcom/samsung/android/b/b$a;

.field private mConnection:Landroid/content/ServiceConnection;

.field private mContext:Landroid/content/Context;

.field private mIRemoteService:Lcom/samsung/android/b/a;

.field private ref:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/android/incallui/agif/StickerCenterManager;->sInstance:Lcom/android/incallui/agif/StickerCenterManager;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/incallui/agif/StickerCenterManager;->ref:I

    new-instance v0, Lcom/android/incallui/agif/StickerCenterManager$1;

    invoke-direct {v0, p0}, Lcom/android/incallui/agif/StickerCenterManager$1;-><init>(Lcom/android/incallui/agif/StickerCenterManager;)V

    iput-object v0, p0, Lcom/android/incallui/agif/StickerCenterManager;->mConnection:Landroid/content/ServiceConnection;

    new-instance v0, Lcom/android/incallui/agif/StickerCenterManager$2;

    invoke-direct {v0, p0}, Lcom/android/incallui/agif/StickerCenterManager$2;-><init>(Lcom/android/incallui/agif/StickerCenterManager;)V

    iput-object v0, p0, Lcom/android/incallui/agif/StickerCenterManager;->mCallback:Lcom/samsung/android/b/b$a;

    return-void
.end method

.method static synthetic access$002(Lcom/android/incallui/agif/StickerCenterManager;Lcom/samsung/android/b/a;)Lcom/samsung/android/b/a;
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/agif/StickerCenterManager;->mIRemoteService:Lcom/samsung/android/b/a;

    return-object p1
.end method

.method public static getInstance()Lcom/android/incallui/agif/StickerCenterManager;
    .locals 2

    const-class v1, Lcom/android/incallui/agif/StickerCenterManager;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/android/incallui/agif/StickerCenterManager;->sInstance:Lcom/android/incallui/agif/StickerCenterManager;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/incallui/agif/StickerCenterManager;

    invoke-direct {v0}, Lcom/android/incallui/agif/StickerCenterManager;-><init>()V

    sput-object v0, Lcom/android/incallui/agif/StickerCenterManager;->sInstance:Lcom/android/incallui/agif/StickerCenterManager;

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-object v0, Lcom/android/incallui/agif/StickerCenterManager;->sInstance:Lcom/android/incallui/agif/StickerCenterManager;

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public bindStickerService()V
    .locals 4

    const-string v0, "StickerCenterManager"

    const-string v1, "bindStickerService()"

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.samsung.android.stickercenter"

    const-string v3, "com.samsung.android.stickercenter.StickerCenterService"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/incallui/agif/StickerCenterManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/incallui/agif/StickerCenterManager;->mConnection:Landroid/content/ServiceConnection;

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    return-void
.end method

.method public init(Landroid/content/Context;)V
    .locals 2

    const-string v0, "StickerCenterManager"

    const-string v1, "init() = "

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/incallui/agif/StickerCenterManager;->mContext:Landroid/content/Context;

    iget v0, p0, Lcom/android/incallui/agif/StickerCenterManager;->ref:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/incallui/agif/StickerCenterManager;->ref:I

    iget v0, p0, Lcom/android/incallui/agif/StickerCenterManager;->ref:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/agif/StickerCenterManager;->bindStickerService()V

    :cond_0
    return-void
.end method

.method public installStickerPackage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    :try_start_0
    iget-object v0, p0, Lcom/android/incallui/agif/StickerCenterManager;->mIRemoteService:Lcom/samsung/android/b/a;

    const-string v1, "XpaidX"

    const-string v2, "TypeA"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "/data/overlays/sticker/TypeA/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    iget-object v6, p0, Lcom/android/incallui/agif/StickerCenterManager;->mCallback:Lcom/samsung/android/b/b$a;

    move-object v3, p2

    move-object v4, p3

    invoke-interface/range {v0 .. v6}, Lcom/samsung/android/b/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Lcom/samsung/android/b/b;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public tearDown()V
    .locals 2

    const-string v0, "StickerCenterManager"

    const-string v1, "tearDown() = "

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget v0, p0, Lcom/android/incallui/agif/StickerCenterManager;->ref:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/incallui/agif/StickerCenterManager;->ref:I

    iget v0, p0, Lcom/android/incallui/agif/StickerCenterManager;->ref:I

    if-gez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/agif/StickerCenterManager;->unBindStickerService()V

    const/4 v0, 0x0

    sput-object v0, Lcom/android/incallui/agif/StickerCenterManager;->sInstance:Lcom/android/incallui/agif/StickerCenterManager;

    :cond_0
    return-void
.end method

.method public unBindStickerService()V
    .locals 2

    const-string v0, "StickerCenterManager"

    const-string v1, "unBindStickerService()"

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/incallui/agif/StickerCenterManager;->mBound:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/agif/StickerCenterManager;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/incallui/agif/StickerCenterManager;->mConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    :cond_0
    return-void
.end method

.method public uninstallAPK(Ljava/lang/String;)V
    .locals 3

    const-string v0, "StickerCenterManager"

    const-string v1, "unBindStickerService()"

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/incallui/agif/StickerCenterManager;->mIRemoteService:Lcom/samsung/android/b/a;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/android/incallui/agif/StickerCenterManager;->mIRemoteService:Lcom/samsung/android/b/a;

    const-string v1, "TypeA"

    iget-object v2, p0, Lcom/android/incallui/agif/StickerCenterManager;->mCallback:Lcom/samsung/android/b/b$a;

    invoke-interface {v0, v1, p1, v2}, Lcom/samsung/android/b/a;->a(Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/b/b;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
