.class public Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/util/BixbyScriptPlayer;
.super Ljava/lang/Object;
.source "BixbyScriptPlayer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/util/BixbyScriptPlayer$1;,
        Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/util/BixbyScriptPlayer$2;
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field public mCurrentScriptName:Ljava/lang/String;

.field private mIBixbyScriptPlayerStates:Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/IBixbyScriptPlayerStates;

.field private final mScriptServiceConnection:Landroid/content/ServiceConnection;

.field mSuwScriptPlayerCallback:Lcom/sec/android/app/suwscriptplayer/ISuwScriptPlayerCallback;

.field private mSuwScriptPlayerService:Lcom/sec/android/app/suwscriptplayer/ISuwScriptPlayer;


# direct methods
.method static synthetic -get0(Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/util/BixbyScriptPlayer;)Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/IBixbyScriptPlayerStates;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/util/BixbyScriptPlayer;->mIBixbyScriptPlayerStates:Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/IBixbyScriptPlayerStates;

    return-object v0
.end method

.method static synthetic -set0(Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/util/BixbyScriptPlayer;Lcom/sec/android/app/suwscriptplayer/ISuwScriptPlayer;)Lcom/sec/android/app/suwscriptplayer/ISuwScriptPlayer;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/util/BixbyScriptPlayer;->mSuwScriptPlayerService:Lcom/sec/android/app/suwscriptplayer/ISuwScriptPlayer;

    return-object p1
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string/jumbo v0, "NO_SERVICE"

    iput-object v0, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/util/BixbyScriptPlayer;->mCurrentScriptName:Ljava/lang/String;

    new-instance v0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/util/BixbyScriptPlayer$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/util/BixbyScriptPlayer$1;-><init>(Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/util/BixbyScriptPlayer;)V

    iput-object v0, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/util/BixbyScriptPlayer;->mScriptServiceConnection:Landroid/content/ServiceConnection;

    new-instance v0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/util/BixbyScriptPlayer$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/util/BixbyScriptPlayer$2;-><init>(Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/util/BixbyScriptPlayer;)V

    iput-object v0, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/util/BixbyScriptPlayer;->mSuwScriptPlayerCallback:Lcom/sec/android/app/suwscriptplayer/ISuwScriptPlayerCallback;

    iput-object p1, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/util/BixbyScriptPlayer;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public buildBixbyScriptPlayer()V
    .locals 7

    const/4 v6, 0x0

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v3, "com.sec.android.app.suwscriptplayer.intent.action.SCRIPT_PLAYER_SERVICE"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v3, "com.sec.android.app.suwscriptplayer"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v3, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/util/BixbyScriptPlayer;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/util/BixbyScriptPlayer;->mScriptServiceConnection:Landroid/content/ServiceConnection;

    const/4 v5, 0x1

    invoke-virtual {v3, v0, v4, v5}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v2

    if-nez v2, :cond_0

    :try_start_0
    iget-object v3, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/util/BixbyScriptPlayer;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const-string/jumbo v4, "com.sec.android.app.suwscriptplayer"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v1

    iget-object v3, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/util/BixbyScriptPlayer;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "SuwScriptPlayer is not installed"

    invoke-static {v3, v4, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    iget-object v3, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/util/BixbyScriptPlayer;->mIBixbyScriptPlayerStates:Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/IBixbyScriptPlayerStates;

    invoke-interface {v3}, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/IBixbyScriptPlayerStates;->onScriptPlayError()V

    goto :goto_0
.end method

.method public declared-synchronized clean()V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/util/BixbyScriptPlayer;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/util/BixbyScriptPlayer;->mScriptServiceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/util/BixbyScriptPlayer;->mSuwScriptPlayerService:Lcom/sec/android/app/suwscriptplayer/ISuwScriptPlayer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public isPlaying()Z
    .locals 2

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/util/BixbyScriptPlayer;->mSuwScriptPlayerService:Lcom/sec/android/app/suwscriptplayer/ISuwScriptPlayer;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/util/BixbyScriptPlayer;->mSuwScriptPlayerService:Lcom/sec/android/app/suwscriptplayer/ISuwScriptPlayer;

    invoke-interface {v1}, Lcom/sec/android/app/suwscriptplayer/ISuwScriptPlayer;->isPlaying()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    :catch_0
    move-exception v0

    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method public setBixbyScriptPlayerListener(Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/IBixbyScriptPlayerStates;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/util/BixbyScriptPlayer;->mIBixbyScriptPlayerStates:Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/IBixbyScriptPlayerStates;

    return-void
.end method

.method public declared-synchronized startScriptPlay(Ljava/lang/String;)V
    .locals 3

    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/util/BixbyScriptPlayer;->mCurrentScriptName:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v1, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/util/BixbyScriptPlayer;->mSuwScriptPlayerService:Lcom/sec/android/app/suwscriptplayer/ISuwScriptPlayer;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/util/BixbyScriptPlayer;->mSuwScriptPlayerService:Lcom/sec/android/app/suwscriptplayer/ISuwScriptPlayer;

    iget-object v2, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/util/BixbyScriptPlayer;->mSuwScriptPlayerCallback:Lcom/sec/android/app/suwscriptplayer/ISuwScriptPlayerCallback;

    invoke-interface {v1, p1, v2}, Lcom/sec/android/app/suwscriptplayer/ISuwScriptPlayer;->PlayScript(Ljava/lang/String;Lcom/sec/android/app/suwscriptplayer/ISuwScriptPlayerCallback;)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/util/IllegalFormatException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :catch_0
    move-exception v0

    :try_start_2
    iget-object v1, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/util/BixbyScriptPlayer;->mIBixbyScriptPlayerStates:Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/IBixbyScriptPlayerStates;

    invoke-interface {v1}, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/IBixbyScriptPlayerStates;->onScriptPlayError()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized stopScriptPlay()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/util/BixbyScriptPlayer;->mSuwScriptPlayerService:Lcom/sec/android/app/suwscriptplayer/ISuwScriptPlayer;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/util/BixbyScriptPlayer;->mSuwScriptPlayerService:Lcom/sec/android/app/suwscriptplayer/ISuwScriptPlayer;

    invoke-interface {v1}, Lcom/sec/android/app/suwscriptplayer/ISuwScriptPlayer;->StopScript()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :catch_0
    move-exception v0

    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method
