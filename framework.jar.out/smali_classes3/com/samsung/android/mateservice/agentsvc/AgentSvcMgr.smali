.class public Lcom/samsung/android/mateservice/agentsvc/AgentSvcMgr;
.super Ljava/lang/Object;
.source "AgentSvcMgr.java"

# interfaces
.implements Lcom/samsung/android/mateservice/agentsvc/AgentSvc$SvcOperation;
.implements Lcom/samsung/android/mateservice/agentsvc/AgentSvc$SvcCloseable;
.implements Lcom/samsung/android/mateservice/action/ActionExecutable;


# static fields
.field private static final TAG:Ljava/lang/String; = "AgentSvcMgr"


# instance fields
.field private final RETRY_COUNT:I

.field private final mAgentSvc:Lcom/samsung/android/mateservice/agentsvc/AgentSvcClient;

.field private final mCompName:Landroid/content/ComponentName;

.field private mContPreserved:Z

.field private final mContext:Landroid/content/Context;

.field private final mLogger:Lcom/samsung/android/mateservice/common/Logger;

.field private mRefCount:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/mateservice/common/Logger;)V
    .locals 3

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    iput v0, p0, Lcom/samsung/android/mateservice/agentsvc/AgentSvcMgr;->RETRY_COUNT:I

    iput-boolean v1, p0, Lcom/samsung/android/mateservice/agentsvc/AgentSvcMgr;->mContPreserved:Z

    iput v1, p0, Lcom/samsung/android/mateservice/agentsvc/AgentSvcMgr;->mRefCount:I

    iput-object p2, p0, Lcom/samsung/android/mateservice/agentsvc/AgentSvcMgr;->mLogger:Lcom/samsung/android/mateservice/common/Logger;

    new-instance v0, Lcom/samsung/android/mateservice/agentsvc/AgentSvcClient;

    invoke-direct {v0, p1, p0}, Lcom/samsung/android/mateservice/agentsvc/AgentSvcClient;-><init>(Landroid/content/Context;Lcom/samsung/android/mateservice/agentsvc/AgentSvc$SvcCloseable;)V

    iput-object v0, p0, Lcom/samsung/android/mateservice/agentsvc/AgentSvcMgr;->mAgentSvc:Lcom/samsung/android/mateservice/agentsvc/AgentSvcClient;

    iput-object p1, p0, Lcom/samsung/android/mateservice/agentsvc/AgentSvcMgr;->mContext:Landroid/content/Context;

    new-instance v0, Landroid/content/ComponentName;

    const-string/jumbo v1, "com.samsung.android.mateagent"

    const-string/jumbo v2, "com.samsung.android.mateagent.interact.AgentService"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/samsung/android/mateservice/agentsvc/AgentSvcMgr;->mCompName:Landroid/content/ComponentName;

    return-void
.end method

.method private existAgentSvc()Z
    .locals 6

    const/4 v2, 0x0

    :try_start_0
    iget-object v3, p0, Lcom/samsung/android/mateservice/agentsvc/AgentSvcMgr;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iget-object v3, p0, Lcom/samsung/android/mateservice/agentsvc/AgentSvcMgr;->mCompName:Landroid/content/ComponentName;

    const/high16 v4, 0x10000

    invoke-virtual {v1, v3, v4}, Landroid/content/pm/PackageManager;->getServiceInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ServiceInfo;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    :cond_0
    return v2

    :catch_0
    move-exception v0

    invoke-static {}, Lcom/samsung/android/mateservice/util/UtilLog;->isDebugLogLevel()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-static {}, Lcom/samsung/android/mateservice/util/UtilLog;->isRoDebugLevelMid()Z

    move-result v3

    if-eqz v3, :cond_2

    :cond_1
    const-string/jumbo v3, "AgentSvcMgr"

    invoke-virtual {v0}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v4

    new-array v5, v2, [Ljava/lang/Object;

    invoke-static {v3, v4, v5}, Lcom/samsung/android/mateservice/util/UtilLog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    :cond_2
    return v2
.end method

.method private getConnectedSvc()Lcom/samsung/android/mateservice/agentsvc/AgentSvc$SvcExecutable;
    .locals 3

    invoke-direct {p0}, Lcom/samsung/android/mateservice/agentsvc/AgentSvcMgr;->existAgentSvc()Z

    move-result v0

    if-eqz v0, :cond_1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/mateservice/agentsvc/AgentSvcMgr;->mAgentSvc:Lcom/samsung/android/mateservice/agentsvc/AgentSvcClient;

    invoke-virtual {v0}, Lcom/samsung/android/mateservice/agentsvc/AgentSvcClient;->connect()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/samsung/android/mateservice/agentsvc/AgentSvcMgr;->mRefCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/samsung/android/mateservice/agentsvc/AgentSvcMgr;->mRefCount:I

    iget-object v0, p0, Lcom/samsung/android/mateservice/agentsvc/AgentSvcMgr;->mAgentSvc:Lcom/samsung/android/mateservice/agentsvc/AgentSvcClient;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :cond_0
    monitor-exit p0

    :goto_0
    const/4 v0, 0x0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_1
    const-string/jumbo v0, "AgentSvcMgr"

    const-string/jumbo v1, "no FSvc"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/samsung/android/mateservice/util/UtilLog;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    goto :goto_0
.end method

.method private setConnectionPreserved(Z)V
    .locals 5

    const/4 v4, 0x0

    const-string/jumbo v0, "AgentSvcMgr"

    const-string/jumbo v1, "setConnectionPreserved %s => %s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    iget-boolean v3, p0, Lcom/samsung/android/mateservice/agentsvc/AgentSvcMgr;->mContPreserved:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Lcom/samsung/android/mateservice/util/UtilLog;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    iput-boolean p1, p0, Lcom/samsung/android/mateservice/agentsvc/AgentSvcMgr;->mContPreserved:Z

    if-nez p1, :cond_1

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/samsung/android/mateservice/agentsvc/AgentSvcMgr;->mRefCount:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/mateservice/agentsvc/AgentSvcMgr;->mAgentSvc:Lcom/samsung/android/mateservice/agentsvc/AgentSvcClient;

    invoke-virtual {v0}, Lcom/samsung/android/mateservice/agentsvc/AgentSvcClient;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    :cond_1
    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public close()Z
    .locals 3

    const/4 v1, 0x0

    monitor-enter p0

    :try_start_0
    iget v2, p0, Lcom/samsung/android/mateservice/agentsvc/AgentSvcMgr;->mRefCount:I

    if-lez v2, :cond_0

    iget v2, p0, Lcom/samsung/android/mateservice/agentsvc/AgentSvcMgr;->mRefCount:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/samsung/android/mateservice/agentsvc/AgentSvcMgr;->mRefCount:I

    :cond_0
    iget v0, p0, Lcom/samsung/android/mateservice/agentsvc/AgentSvcMgr;->mRefCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    if-nez v0, :cond_1

    iget-boolean v2, p0, Lcom/samsung/android/mateservice/agentsvc/AgentSvcMgr;->mContPreserved:Z

    if-eqz v2, :cond_2

    :cond_1
    :goto_0
    return v1

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    :cond_2
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public execute(Landroid/os/Bundle;II)Landroid/os/Bundle;
    .locals 3

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    const-string/jumbo v0, "keepConnectionState"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/samsung/android/mateservice/agentsvc/AgentSvcMgr;->setConnectionPreserved(Z)V

    :cond_0
    return-object v2
.end method

.method public perform(ILandroid/os/Bundle;)Landroid/os/Bundle;
    .locals 10

    const/4 v6, 0x0

    const/4 v3, 0x2

    const/4 v2, 0x0

    :cond_0
    const/4 v0, 0x0

    :try_start_0
    invoke-direct {p0}, Lcom/samsung/android/mateservice/agentsvc/AgentSvcMgr;->getConnectedSvc()Lcom/samsung/android/mateservice/agentsvc/AgentSvc$SvcExecutable;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/mateservice/agentsvc/AgentSvc$SvcExecutable;->execute(ILandroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v2

    :cond_1
    :goto_0
    const/4 v3, 0x0

    if-eqz v0, :cond_2

    :try_start_1
    invoke-interface {v0}, Lcom/samsung/android/mateservice/agentsvc/AgentSvc$SvcExecutable;->close()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_2
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    :cond_2
    move-object v4, v6

    :goto_1
    if-eqz v4, :cond_3

    :try_start_2
    throw v4
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v1

    invoke-static {v1}, Lcom/samsung/android/mateservice/util/UtilLog;->printThrowableStackTrace(Ljava/lang/Throwable;)V

    add-int/lit8 v3, v3, -0x1

    :cond_3
    if-gtz v3, :cond_0

    return-object v2

    :cond_4
    :try_start_3
    iget-object v4, p0, Lcom/samsung/android/mateservice/agentsvc/AgentSvcMgr;->mLogger:Lcom/samsung/android/mateservice/common/Logger;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/samsung/android/mateservice/agentsvc/AgentSvcMgr;->mLogger:Lcom/samsung/android/mateservice/common/Logger;

    const-string/jumbo v5, "AgentSvcMgr"

    const-string/jumbo v7, "failed to connect FSvc"

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Object;

    invoke-static {v5, v7, v8}, Lcom/samsung/android/mateservice/util/UtilLog;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-interface {v4, v5, v7}, Lcom/samsung/android/mateservice/common/Logger;->append(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catch_1
    move-exception v4

    :try_start_4
    throw v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :catchall_0
    move-exception v5

    move-object v9, v5

    move-object v5, v4

    move-object v4, v9

    :goto_2
    if-eqz v0, :cond_5

    :try_start_5
    invoke-interface {v0}, Lcom/samsung/android/mateservice/agentsvc/AgentSvc$SvcExecutable;->close()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_3
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    :cond_5
    :goto_3
    if-eqz v5, :cond_7

    :try_start_6
    throw v5

    :catch_2
    move-exception v4

    goto :goto_1

    :catch_3
    move-exception v7

    if-nez v5, :cond_6

    move-object v5, v7

    goto :goto_3

    :cond_6
    if-eq v5, v7, :cond_5

    invoke-virtual {v5, v7}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_3

    :cond_7
    throw v4
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0

    :catchall_1
    move-exception v4

    move-object v5, v6

    goto :goto_2
.end method

.method public releasableClient()Z
    .locals 3

    const/4 v1, 0x0

    monitor-enter p0

    :try_start_0
    iget v2, p0, Lcom/samsung/android/mateservice/agentsvc/AgentSvcMgr;->mRefCount:I

    if-lez v2, :cond_0

    iget v2, p0, Lcom/samsung/android/mateservice/agentsvc/AgentSvcMgr;->mRefCount:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/samsung/android/mateservice/agentsvc/AgentSvcMgr;->mRefCount:I

    :cond_0
    iget v0, p0, Lcom/samsung/android/mateservice/agentsvc/AgentSvcMgr;->mRefCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    if-nez v0, :cond_1

    iget-boolean v2, p0, Lcom/samsung/android/mateservice/agentsvc/AgentSvcMgr;->mContPreserved:Z

    if-eqz v2, :cond_2

    :cond_1
    :goto_0
    return v1

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    :cond_2
    const/4 v1, 0x1

    goto :goto_0
.end method
