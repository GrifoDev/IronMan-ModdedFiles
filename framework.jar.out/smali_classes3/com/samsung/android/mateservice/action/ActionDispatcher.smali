.class public Lcom/samsung/android/mateservice/action/ActionDispatcher;
.super Ljava/lang/Object;
.source "ActionDispatcher.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/mateservice/action/ActionDispatcher$ActionAttr;,
        Lcom/samsung/android/mateservice/action/ActionDispatcher$Task;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "Dispatcher"


# instance fields
.field private final mAccessMgr:Lcom/samsung/android/mateservice/executable/ExecAccessMgr;

.field private mDefault:Lcom/samsung/android/mateservice/action/ActionDispatcher$ActionAttr;

.field private mExecService:Ljava/util/concurrent/ExecutorService;

.field private final mExecutes:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/samsung/android/mateservice/action/ActionDispatcher$ActionAttr;",
            ">;"
        }
    .end annotation
.end field

.field private final mLogger:Lcom/samsung/android/mateservice/common/Logger;

.field private final mTaskId:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method public constructor <init>(Lcom/samsung/android/mateservice/executable/ExecAccessMgr;Lcom/samsung/android/mateservice/common/Logger;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/mateservice/action/ActionDispatcher;->mTaskId:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/mateservice/action/ActionDispatcher;->mExecutes:Landroid/util/SparseArray;

    iput-object p2, p0, Lcom/samsung/android/mateservice/action/ActionDispatcher;->mLogger:Lcom/samsung/android/mateservice/common/Logger;

    iput-object p1, p0, Lcom/samsung/android/mateservice/action/ActionDispatcher;->mAccessMgr:Lcom/samsung/android/mateservice/executable/ExecAccessMgr;

    return-void
.end method

.method private getExecutor()Ljava/util/concurrent/ExecutorService;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/mateservice/action/ActionDispatcher;->mExecService:Ljava/util/concurrent/ExecutorService;

    if-nez v0, :cond_1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/mateservice/action/ActionDispatcher;->mExecService:Ljava/util/concurrent/ExecutorService;

    if-nez v0, :cond_0

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/mateservice/action/ActionDispatcher;->mExecService:Ljava/util/concurrent/ExecutorService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/mateservice/action/ActionDispatcher;->mExecService:Ljava/util/concurrent/ExecutorService;

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public add(ILcom/samsung/android/mateservice/action/ActionExecutable;)Lcom/samsung/android/mateservice/action/ActionDispatcher;
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/mateservice/action/ActionDispatcher;->mExecutes:Landroid/util/SparseArray;

    new-instance v1, Lcom/samsung/android/mateservice/action/ActionDispatcher$ActionAttr;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {v1, p2, v2, v3}, Lcom/samsung/android/mateservice/action/ActionDispatcher$ActionAttr;-><init>(Lcom/samsung/android/mateservice/action/ActionExecutable;ZLcom/samsung/android/mateservice/action/ActionDispatcher$ActionAttr;)V

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    return-object p0
.end method

.method public add(IZLcom/samsung/android/mateservice/action/ActionExecutable;)Lcom/samsung/android/mateservice/action/ActionDispatcher;
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/mateservice/action/ActionDispatcher;->mExecutes:Landroid/util/SparseArray;

    new-instance v1, Lcom/samsung/android/mateservice/action/ActionDispatcher$ActionAttr;

    const/4 v2, 0x0

    invoke-direct {v1, p3, p2, v2}, Lcom/samsung/android/mateservice/action/ActionDispatcher$ActionAttr;-><init>(Lcom/samsung/android/mateservice/action/ActionExecutable;ZLcom/samsung/android/mateservice/action/ActionDispatcher$ActionAttr;)V

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    return-object p0
.end method

.method public execute(ILandroid/os/Bundle;)Landroid/os/Bundle;
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v3, 0x1

    const/4 v6, 0x0

    const/4 v10, 0x0

    const-string/jumbo v0, "Dispatcher"

    const-string/jumbo v2, "execute 0x%x"

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v6

    invoke-static {v0, v2, v3}, Lcom/samsung/android/mateservice/util/UtilLog;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/mateservice/action/ActionDispatcher;->mAccessMgr:Lcom/samsung/android/mateservice/executable/ExecAccessMgr;

    invoke-virtual {v0, p1}, Lcom/samsung/android/mateservice/executable/ExecAccessMgr;->isAccessible(I)Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/SecurityException;

    const-string/jumbo v2, "Not accessible"

    invoke-direct {v0, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v7

    instance-of v0, v7, Landroid/os/RemoteException;

    if-nez v0, :cond_0

    instance-of v0, v7, Ljava/lang/SecurityException;

    if-eqz v0, :cond_4

    :cond_0
    throw v7

    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/samsung/android/mateservice/action/ActionDispatcher;->mExecutes:Landroid/util/SparseArray;

    iget-object v2, p0, Lcom/samsung/android/mateservice/action/ActionDispatcher;->mDefault:Lcom/samsung/android/mateservice/action/ActionDispatcher$ActionAttr;

    invoke-virtual {v0, p1, v2}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/samsung/android/mateservice/action/ActionDispatcher$ActionAttr;

    if-eqz v9, :cond_2

    const/4 v4, 0x0

    move v8, p1

    invoke-static {v9}, Lcom/samsung/android/mateservice/action/ActionDispatcher$ActionAttr;->-get1(Lcom/samsung/android/mateservice/action/ActionDispatcher$ActionAttr;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {v9}, Lcom/samsung/android/mateservice/action/ActionDispatcher$ActionAttr;->-get0(Lcom/samsung/android/mateservice/action/ActionDispatcher$ActionAttr;)Lcom/samsung/android/mateservice/action/ActionExecutable;

    move-result-object v0

    invoke-interface {v0, p2, v4, p1}, Lcom/samsung/android/mateservice/action/ActionExecutable;->execute(Landroid/os/Bundle;II)Landroid/os/Bundle;

    move-result-object v10

    :cond_2
    :goto_0
    return-object v10

    :cond_3
    iget-object v0, p0, Lcom/samsung/android/mateservice/action/ActionDispatcher;->mTaskId:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v1

    invoke-direct {p0}, Lcom/samsung/android/mateservice/action/ActionDispatcher;->getExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v11

    new-instance v0, Lcom/samsung/android/mateservice/action/ActionDispatcher$Task;

    invoke-static {v9}, Lcom/samsung/android/mateservice/action/ActionDispatcher$ActionAttr;->-get0(Lcom/samsung/android/mateservice/action/ActionDispatcher$ActionAttr;)Lcom/samsung/android/mateservice/action/ActionExecutable;

    move-result-object v2

    const/4 v6, 0x0

    move-object v3, p2

    move v5, p1

    invoke-direct/range {v0 .. v6}, Lcom/samsung/android/mateservice/action/ActionDispatcher$Task;-><init>(ILcom/samsung/android/mateservice/action/ActionExecutable;Landroid/os/Bundle;IILcom/samsung/android/mateservice/action/ActionDispatcher$Task;)V

    invoke-interface {v11, v0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    const-string/jumbo v0, "Dispatcher"

    const-string/jumbo v2, "submit task[%d]"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v3, v6

    invoke-static {v0, v2, v3}, Lcom/samsung/android/mateservice/util/UtilLog;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :cond_4
    invoke-static {v7}, Lcom/samsung/android/mateservice/util/UtilLog;->printThrowableStackTrace(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public setDefault(ZLcom/samsung/android/mateservice/action/ActionExecutable;)Lcom/samsung/android/mateservice/action/ActionDispatcher;
    .locals 2

    new-instance v0, Lcom/samsung/android/mateservice/action/ActionDispatcher$ActionAttr;

    const/4 v1, 0x0

    invoke-direct {v0, p2, p1, v1}, Lcom/samsung/android/mateservice/action/ActionDispatcher$ActionAttr;-><init>(Lcom/samsung/android/mateservice/action/ActionExecutable;ZLcom/samsung/android/mateservice/action/ActionDispatcher$ActionAttr;)V

    iput-object v0, p0, Lcom/samsung/android/mateservice/action/ActionDispatcher;->mDefault:Lcom/samsung/android/mateservice/action/ActionDispatcher$ActionAttr;

    return-object p0
.end method
