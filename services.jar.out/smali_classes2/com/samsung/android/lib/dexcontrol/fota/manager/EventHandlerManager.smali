.class public Lcom/samsung/android/lib/dexcontrol/fota/manager/EventHandlerManager;
.super Ljava/lang/Object;
.source "EventHandlerManager.java"


# static fields
.field private static TAG:Ljava/lang/String;


# instance fields
.field private mHandler:Lcom/samsung/android/lib/dexcontrol/fota/manager/SDCFotaManagerEventHandler;

.field private final mLock:Ljava/util/concurrent/locks/Lock;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string/jumbo v0, "EventHandlerManager"

    sput-object v0, Lcom/samsung/android/lib/dexcontrol/fota/manager/EventHandlerManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/lib/dexcontrol/fota/manager/EventHandlerManager;->mHandler:Lcom/samsung/android/lib/dexcontrol/fota/manager/SDCFotaManagerEventHandler;

    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/lib/dexcontrol/fota/manager/EventHandlerManager;->mLock:Ljava/util/concurrent/locks/Lock;

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/lib/dexcontrol/fota/manager/EventHandlerManager;->mHandler:Lcom/samsung/android/lib/dexcontrol/fota/manager/SDCFotaManagerEventHandler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/lib/dexcontrol/fota/manager/SDCFotaManagerEventHandler;->setListener(Lcom/samsung/android/lib/dexcontrol/fota/manager/ISDCFotaManagerListener;)V

    return-void
.end method

.method public invokeSelfListener(I)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, v0}, Lcom/samsung/android/lib/dexcontrol/fota/manager/EventHandlerManager;->invokeSelfListener(III)V

    return-void
.end method

.method public invokeSelfListener(II)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/samsung/android/lib/dexcontrol/fota/manager/EventHandlerManager;->invokeSelfListener(III)V

    return-void
.end method

.method public invokeSelfListener(III)V
    .locals 6

    sget-object v3, Lcom/samsung/android/lib/dexcontrol/fota/manager/EventHandlerManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "invokeSelfListener : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " , "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " , "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/lib/dexcontrol/fota/debug/SLog;->m(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/samsung/android/lib/dexcontrol/fota/manager/EventHandlerManager;->mLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iget-object v3, p0, Lcom/samsung/android/lib/dexcontrol/fota/manager/EventHandlerManager;->mHandler:Lcom/samsung/android/lib/dexcontrol/fota/manager/SDCFotaManagerEventHandler;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v3, :cond_0

    :goto_0
    iget-object v3, p0, Lcom/samsung/android/lib/dexcontrol/fota/manager/EventHandlerManager;->mLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->unlock()V

    :goto_1
    return-void

    :cond_0
    :try_start_1
    new-instance v2, Landroid/os/Message;

    invoke-direct {v2}, Landroid/os/Message;-><init>()V

    iput p1, v2, Landroid/os/Message;->what:I

    iput p2, v2, Landroid/os/Message;->arg1:I

    iput p3, v2, Landroid/os/Message;->arg2:I

    iget-object v3, p0, Lcom/samsung/android/lib/dexcontrol/fota/manager/EventHandlerManager;->mHandler:Lcom/samsung/android/lib/dexcontrol/fota/manager/SDCFotaManagerEventHandler;

    invoke-virtual {v3, v2}, Lcom/samsung/android/lib/dexcontrol/fota/manager/SDCFotaManagerEventHandler;->sendMessage(Landroid/os/Message;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v1

    iget-object v3, p0, Lcom/samsung/android/lib/dexcontrol/fota/manager/EventHandlerManager;->mLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_1

    :catchall_0
    move-exception v0

    iget-object v3, p0, Lcom/samsung/android/lib/dexcontrol/fota/manager/EventHandlerManager;->mLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public invokeSelfListener(IIILjava/lang/Object;)V
    .locals 6

    sget-object v3, Lcom/samsung/android/lib/dexcontrol/fota/manager/EventHandlerManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "invokeSelfListener : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " , "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " , "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/lib/dexcontrol/fota/debug/SLog;->m(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/samsung/android/lib/dexcontrol/fota/manager/EventHandlerManager;->mLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iget-object v3, p0, Lcom/samsung/android/lib/dexcontrol/fota/manager/EventHandlerManager;->mHandler:Lcom/samsung/android/lib/dexcontrol/fota/manager/SDCFotaManagerEventHandler;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v3, :cond_0

    :goto_0
    iget-object v3, p0, Lcom/samsung/android/lib/dexcontrol/fota/manager/EventHandlerManager;->mLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->unlock()V

    :goto_1
    return-void

    :cond_0
    :try_start_1
    new-instance v2, Landroid/os/Message;

    invoke-direct {v2}, Landroid/os/Message;-><init>()V

    iput p1, v2, Landroid/os/Message;->what:I

    iput p2, v2, Landroid/os/Message;->arg1:I

    iput p3, v2, Landroid/os/Message;->arg2:I

    iput-object p4, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v3, p0, Lcom/samsung/android/lib/dexcontrol/fota/manager/EventHandlerManager;->mHandler:Lcom/samsung/android/lib/dexcontrol/fota/manager/SDCFotaManagerEventHandler;

    invoke-virtual {v3, v2}, Lcom/samsung/android/lib/dexcontrol/fota/manager/SDCFotaManagerEventHandler;->sendMessage(Landroid/os/Message;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v1

    iget-object v3, p0, Lcom/samsung/android/lib/dexcontrol/fota/manager/EventHandlerManager;->mLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_1

    :catchall_0
    move-exception v0

    iget-object v3, p0, Lcom/samsung/android/lib/dexcontrol/fota/manager/EventHandlerManager;->mLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public invokeSelfListener(ILjava/lang/Object;)V
    .locals 6

    sget-object v3, Lcom/samsung/android/lib/dexcontrol/fota/manager/EventHandlerManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "invokeSelfListener : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/lib/dexcontrol/fota/debug/SLog;->m(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/samsung/android/lib/dexcontrol/fota/manager/EventHandlerManager;->mLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iget-object v3, p0, Lcom/samsung/android/lib/dexcontrol/fota/manager/EventHandlerManager;->mHandler:Lcom/samsung/android/lib/dexcontrol/fota/manager/SDCFotaManagerEventHandler;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v3, :cond_0

    :goto_0
    iget-object v3, p0, Lcom/samsung/android/lib/dexcontrol/fota/manager/EventHandlerManager;->mLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->unlock()V

    :goto_1
    return-void

    :cond_0
    :try_start_1
    new-instance v2, Landroid/os/Message;

    invoke-direct {v2}, Landroid/os/Message;-><init>()V

    iput p1, v2, Landroid/os/Message;->what:I

    iput-object p2, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v3, p0, Lcom/samsung/android/lib/dexcontrol/fota/manager/EventHandlerManager;->mHandler:Lcom/samsung/android/lib/dexcontrol/fota/manager/SDCFotaManagerEventHandler;

    invoke-virtual {v3, v2}, Lcom/samsung/android/lib/dexcontrol/fota/manager/SDCFotaManagerEventHandler;->sendMessage(Landroid/os/Message;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v1

    iget-object v3, p0, Lcom/samsung/android/lib/dexcontrol/fota/manager/EventHandlerManager;->mLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_1

    :catchall_0
    move-exception v0

    iget-object v3, p0, Lcom/samsung/android/lib/dexcontrol/fota/manager/EventHandlerManager;->mLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public invokeSelfListener(IZ)V
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eq p2, v0, :cond_0

    move v0, v1

    :cond_0
    invoke-virtual {p0, p1, v0, v1}, Lcom/samsung/android/lib/dexcontrol/fota/manager/EventHandlerManager;->invokeSelfListener(III)V

    return-void
.end method

.method public set(Lcom/samsung/android/lib/dexcontrol/fota/manager/SDCFotaManagerEventHandler;Lcom/samsung/android/lib/dexcontrol/fota/manager/ISDCFotaManagerListener;)V
    .locals 3

    iget-object v2, p0, Lcom/samsung/android/lib/dexcontrol/fota/manager/EventHandlerManager;->mLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    invoke-virtual {p1, p2}, Lcom/samsung/android/lib/dexcontrol/fota/manager/SDCFotaManagerEventHandler;->setListener(Lcom/samsung/android/lib/dexcontrol/fota/manager/ISDCFotaManagerListener;)V

    iput-object p1, p0, Lcom/samsung/android/lib/dexcontrol/fota/manager/EventHandlerManager;->mHandler:Lcom/samsung/android/lib/dexcontrol/fota/manager/SDCFotaManagerEventHandler;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v2, p0, Lcom/samsung/android/lib/dexcontrol/fota/manager/EventHandlerManager;->mLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    :goto_0
    return-void

    :catch_0
    move-exception v1

    iget-object v2, p0, Lcom/samsung/android/lib/dexcontrol/fota/manager/EventHandlerManager;->mLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v2, p0, Lcom/samsung/android/lib/dexcontrol/fota/manager/EventHandlerManager;->mLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method
