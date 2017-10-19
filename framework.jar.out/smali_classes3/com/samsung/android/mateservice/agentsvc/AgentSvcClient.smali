.class Lcom/samsung/android/mateservice/agentsvc/AgentSvcClient;
.super Ljava/lang/Object;
.source "AgentSvcClient.java"

# interfaces
.implements Lcom/samsung/android/mateservice/agentsvc/AgentSvc$SvcExecutable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/mateservice/agentsvc/AgentSvcClient$1;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "AgentSvcClient"

.field private static final WAIT_TIME:J = 0x5dcL


# instance fields
.field private final mBlockingQueue:Ljava/util/concurrent/BlockingDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingDeque",
            "<",
            "Lcom/samsung/android/mateservice/IAgentService;",
            ">;"
        }
    .end annotation
.end field

.field private volatile mConnectedAtLeastOnce:Z

.field private final mConnection:Landroid/content/ServiceConnection;

.field private final mContext:Landroid/content/Context;

.field private volatile mService:Lcom/samsung/android/mateservice/IAgentService;

.field private final mSvcCloseable:Lcom/samsung/android/mateservice/agentsvc/AgentSvc$SvcCloseable;


# direct methods
.method static synthetic -get0(Lcom/samsung/android/mateservice/agentsvc/AgentSvcClient;)Ljava/util/concurrent/BlockingDeque;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/mateservice/agentsvc/AgentSvcClient;->mBlockingQueue:Ljava/util/concurrent/BlockingDeque;

    return-object v0
.end method

.method static synthetic -get1(Lcom/samsung/android/mateservice/agentsvc/AgentSvcClient;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/mateservice/agentsvc/AgentSvcClient;->mConnectedAtLeastOnce:Z

    return v0
.end method

.method static synthetic -set0(Lcom/samsung/android/mateservice/agentsvc/AgentSvcClient;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/mateservice/agentsvc/AgentSvcClient;->mConnectedAtLeastOnce:Z

    return p1
.end method

.method static synthetic -set1(Lcom/samsung/android/mateservice/agentsvc/AgentSvcClient;Lcom/samsung/android/mateservice/IAgentService;)Lcom/samsung/android/mateservice/IAgentService;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/mateservice/agentsvc/AgentSvcClient;->mService:Lcom/samsung/android/mateservice/IAgentService;

    return-object p1
.end method

.method constructor <init>(Landroid/content/Context;Lcom/samsung/android/mateservice/agentsvc/AgentSvc$SvcCloseable;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/LinkedBlockingDeque;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/LinkedBlockingDeque;-><init>(I)V

    iput-object v0, p0, Lcom/samsung/android/mateservice/agentsvc/AgentSvcClient;->mBlockingQueue:Ljava/util/concurrent/BlockingDeque;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/mateservice/agentsvc/AgentSvcClient;->mConnectedAtLeastOnce:Z

    new-instance v0, Lcom/samsung/android/mateservice/agentsvc/AgentSvcClient$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/mateservice/agentsvc/AgentSvcClient$1;-><init>(Lcom/samsung/android/mateservice/agentsvc/AgentSvcClient;)V

    iput-object v0, p0, Lcom/samsung/android/mateservice/agentsvc/AgentSvcClient;->mConnection:Landroid/content/ServiceConnection;

    iput-object p1, p0, Lcom/samsung/android/mateservice/agentsvc/AgentSvcClient;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/samsung/android/mateservice/agentsvc/AgentSvcClient;->mSvcCloseable:Lcom/samsung/android/mateservice/agentsvc/AgentSvc$SvcCloseable;

    return-void
.end method

.method private isConnected()Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/mateservice/agentsvc/AgentSvcClient;->mService:Lcom/samsung/android/mateservice/IAgentService;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public close()V
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/samsung/android/mateservice/agentsvc/AgentSvcClient;->mSvcCloseable:Lcom/samsung/android/mateservice/agentsvc/AgentSvc$SvcCloseable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/mateservice/agentsvc/AgentSvcClient;->mSvcCloseable:Lcom/samsung/android/mateservice/agentsvc/AgentSvc$SvcCloseable;

    invoke-interface {v0}, Lcom/samsung/android/mateservice/agentsvc/AgentSvc$SvcCloseable;->close()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const-string/jumbo v0, "AgentSvcClient"

    const-string/jumbo v1, "close"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/samsung/android/mateservice/util/UtilLog;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    iget-object v0, p0, Lcom/samsung/android/mateservice/agentsvc/AgentSvcClient;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/mateservice/agentsvc/AgentSvcClient;->mConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    iput-object v4, p0, Lcom/samsung/android/mateservice/agentsvc/AgentSvcClient;->mService:Lcom/samsung/android/mateservice/IAgentService;

    iput-boolean v3, p0, Lcom/samsung/android/mateservice/agentsvc/AgentSvcClient;->mConnectedAtLeastOnce:Z

    :goto_0
    return-void

    :cond_1
    const-string/jumbo v0, "AgentSvcClient"

    const-string/jumbo v1, "close - connection is remained"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/samsung/android/mateservice/util/UtilLog;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    goto :goto_0
.end method

.method connect()Z
    .locals 7

    const/4 v6, 0x1

    const/4 v5, 0x0

    invoke-direct {p0}, Lcom/samsung/android/mateservice/agentsvc/AgentSvcClient;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string/jumbo v2, "AgentSvcClient"

    const-string/jumbo v3, "FSvc is already connected"

    new-array v4, v5, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/samsung/android/mateservice/util/UtilLog;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    return v6

    :cond_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v2, "com.samsung.android.mateagent"

    const-string/jumbo v3, "com.samsung.android.mateagent.interact.AgentService"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v2, p0, Lcom/samsung/android/mateservice/agentsvc/AgentSvcClient;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/samsung/android/mateservice/agentsvc/AgentSvcClient;->mConnection:Landroid/content/ServiceConnection;

    const-string/jumbo v4, "SYSTEM"

    invoke-static {v4}, Lcom/samsung/android/mateservice/common/FwDependency;->getUserHandle(Ljava/lang/String;)Landroid/os/UserHandle;

    move-result-object v4

    invoke-static {v2, v1, v3, v6, v4}, Lcom/samsung/android/mateservice/common/FwDependency;->bindServiceAsUser(Landroid/content/Context;Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    move-result v2

    if-eqz v2, :cond_1

    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/mateservice/agentsvc/AgentSvcClient;->mBlockingQueue:Ljava/util/concurrent/BlockingDeque;

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v4, 0x5dc

    invoke-interface {v2, v4, v5, v3}, Ljava/util/concurrent/BlockingDeque;->poll(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/mateservice/IAgentService;

    iput-object v2, p0, Lcom/samsung/android/mateservice/agentsvc/AgentSvcClient;->mService:Lcom/samsung/android/mateservice/IAgentService;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-direct {p0}, Lcom/samsung/android/mateservice/agentsvc/AgentSvcClient;->isConnected()Z

    move-result v2

    return v2

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/samsung/android/mateservice/util/UtilLog;->printThrowableStackTrace(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_1
    const-string/jumbo v2, "AgentSvcClient"

    const-string/jumbo v3, "failed to bind FSvc"

    new-array v4, v5, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/samsung/android/mateservice/util/UtilLog;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    return v5
.end method

.method public execute(ILandroid/os/Bundle;)Landroid/os/Bundle;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/samsung/android/mateservice/agentsvc/AgentSvcClient;->mService:Lcom/samsung/android/mateservice/IAgentService;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/mateservice/agentsvc/AgentSvcClient;->mService:Lcom/samsung/android/mateservice/IAgentService;

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/mateservice/IAgentService;->executeAction(ILandroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0

    :cond_0
    return-object v1
.end method
