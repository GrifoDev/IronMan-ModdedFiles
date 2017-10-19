.class Lcom/android/server/pm/BackgroundDexOptService$2;
.super Ljava/lang/Thread;
.source "BackgroundDexOptService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/pm/BackgroundDexOptService;->runIdleOptimization(Landroid/app/job/JobParameters;Lcom/android/server/pm/PackageManagerService;Landroid/util/ArraySet;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/pm/BackgroundDexOptService;

.field final synthetic val$jobParams:Landroid/app/job/JobParameters;

.field final synthetic val$lowThreshold:J

.field final synthetic val$pkgs:Landroid/util/ArraySet;

.field final synthetic val$pm:Lcom/android/server/pm/PackageManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/pm/BackgroundDexOptService;Ljava/lang/String;Landroid/util/ArraySet;JLcom/android/server/pm/PackageManagerService;Landroid/app/job/JobParameters;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/pm/BackgroundDexOptService$2;->this$0:Lcom/android/server/pm/BackgroundDexOptService;

    iput-object p3, p0, Lcom/android/server/pm/BackgroundDexOptService$2;->val$pkgs:Landroid/util/ArraySet;

    iput-wide p4, p0, Lcom/android/server/pm/BackgroundDexOptService$2;->val$lowThreshold:J

    iput-object p6, p0, Lcom/android/server/pm/BackgroundDexOptService$2;->val$pm:Lcom/android/server/pm/PackageManagerService;

    iput-object p7, p0, Lcom/android/server/pm/BackgroundDexOptService$2;->val$jobParams:Landroid/app/job/JobParameters;

    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    const/4 v7, 0x0

    iget-object v4, p0, Lcom/android/server/pm/BackgroundDexOptService$2;->val$pkgs:Landroid/util/ArraySet;

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v4, p0, Lcom/android/server/pm/BackgroundDexOptService$2;->this$0:Lcom/android/server/pm/BackgroundDexOptService;

    iget-object v4, v4, Lcom/android/server/pm/BackgroundDexOptService;->mAbortIdleOptimization:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v4

    if-eqz v4, :cond_1

    return-void

    :cond_1
    sget-object v4, Lcom/android/server/pm/BackgroundDexOptService;->sFailedPackageNames:Landroid/util/ArraySet;

    invoke-virtual {v4, v0}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/android/server/pm/BackgroundDexOptService$2;->this$0:Lcom/android/server/pm/BackgroundDexOptService;

    invoke-static {v4}, Lcom/android/server/pm/BackgroundDexOptService;->-get0(Lcom/android/server/pm/BackgroundDexOptService;)Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getUsableSpace()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/android/server/pm/BackgroundDexOptService$2;->val$lowThreshold:J

    cmp-long v4, v2, v4

    if-gez v4, :cond_3

    const-string/jumbo v4, "BackgroundDexOptService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Aborting background dex opt job due to low storage: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    iget-object v4, p0, Lcom/android/server/pm/BackgroundDexOptService$2;->this$0:Lcom/android/server/pm/BackgroundDexOptService;

    iget-object v5, p0, Lcom/android/server/pm/BackgroundDexOptService$2;->val$jobParams:Landroid/app/job/JobParameters;

    invoke-virtual {v4, v5, v7}, Lcom/android/server/pm/BackgroundDexOptService;->jobFinished(Landroid/app/job/JobParameters;Z)V

    return-void

    :cond_3
    sget-object v5, Lcom/android/server/pm/BackgroundDexOptService;->sFailedPackageNames:Landroid/util/ArraySet;

    monitor-enter v5

    :try_start_0
    sget-object v4, Lcom/android/server/pm/BackgroundDexOptService;->sFailedPackageNames:Landroid/util/ArraySet;

    invoke-virtual {v4, v0}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v5

    iget-object v4, p0, Lcom/android/server/pm/BackgroundDexOptService$2;->val$pm:Lcom/android/server/pm/PackageManagerService;

    const/4 v5, 0x1

    const/4 v6, 0x3

    invoke-virtual {v4, v0, v5, v6, v7}, Lcom/android/server/pm/PackageManagerService;->performDexOpt(Ljava/lang/String;ZIZ)Z

    move-result v4

    if-eqz v4, :cond_0

    sget-object v5, Lcom/android/server/pm/BackgroundDexOptService;->sFailedPackageNames:Landroid/util/ArraySet;

    monitor-enter v5

    :try_start_1
    sget-object v4, Lcom/android/server/pm/BackgroundDexOptService;->sFailedPackageNames:Landroid/util/ArraySet;

    invoke-virtual {v4, v0}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    monitor-exit v5

    goto :goto_0

    :catchall_0
    move-exception v4

    monitor-exit v5

    throw v4

    :catchall_1
    move-exception v4

    monitor-exit v5

    throw v4
.end method
