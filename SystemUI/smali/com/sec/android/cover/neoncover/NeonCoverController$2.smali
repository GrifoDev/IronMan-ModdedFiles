.class Lcom/sec/android/cover/neoncover/NeonCoverController$2;
.super Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
.source "NeonCoverController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/cover/neoncover/NeonCoverController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final TAG:Ljava/lang/String;

.field final synthetic this$0:Lcom/sec/android/cover/neoncover/NeonCoverController;


# direct methods
.method constructor <init>(Lcom/sec/android/cover/neoncover/NeonCoverController;)V
    .locals 2

    iput-object p1, p0, Lcom/sec/android/cover/neoncover/NeonCoverController$2;->this$0:Lcom/sec/android/cover/neoncover/NeonCoverController;

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;-><init>()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/sec/android/cover/neoncover/NeonCoverController;->-get0()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/cover/neoncover/NeonCoverController$2;->TAG:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public onFinishedGoingToSleep(I)V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/cover/neoncover/NeonCoverController$2;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onFinishedGoingToSleep why="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/cover/neoncover/NeonCoverController$2;->this$0:Lcom/sec/android/cover/neoncover/NeonCoverController;

    invoke-static {v0}, Lcom/sec/android/cover/neoncover/NeonCoverController;->-get4(Lcom/sec/android/cover/neoncover/NeonCoverController;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public onStartedWakingUp(I)V
    .locals 5

    const/16 v4, 0x8

    iget-object v0, p0, Lcom/sec/android/cover/neoncover/NeonCoverController$2;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onStartedWakingUp why="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sparse-switch p1, :sswitch_data_0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-object v2, p0, Lcom/sec/android/cover/neoncover/NeonCoverController$2;->this$0:Lcom/sec/android/cover/neoncover/NeonCoverController;

    invoke-static {v2}, Lcom/sec/android/cover/neoncover/NeonCoverController;->-get5(Lcom/sec/android/cover/neoncover/NeonCoverController;)J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x3e8

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/cover/neoncover/NeonCoverController$2;->this$0:Lcom/sec/android/cover/neoncover/NeonCoverController;

    invoke-static {v0}, Lcom/sec/android/cover/neoncover/NeonCoverController;->-get4(Lcom/sec/android/cover/neoncover/NeonCoverController;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_0
    :goto_0
    return-void

    :sswitch_0
    iget-object v0, p0, Lcom/sec/android/cover/neoncover/NeonCoverController$2;->this$0:Lcom/sec/android/cover/neoncover/NeonCoverController;

    invoke-static {v0}, Lcom/sec/android/cover/neoncover/NeonCoverController;->-get4(Lcom/sec/android/cover/neoncover/NeonCoverController;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    :sswitch_1
    iget-object v0, p0, Lcom/sec/android/cover/neoncover/NeonCoverController$2;->this$0:Lcom/sec/android/cover/neoncover/NeonCoverController;

    invoke-static {v0}, Lcom/sec/android/cover/neoncover/NeonCoverController;->-wrap4(Lcom/sec/android/cover/neoncover/NeonCoverController;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/cover/neoncover/NeonCoverController$2;->this$0:Lcom/sec/android/cover/neoncover/NeonCoverController;

    invoke-static {v0}, Lcom/sec/android/cover/neoncover/NeonCoverController;->-get3(Lcom/sec/android/cover/neoncover/NeonCoverController;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/cover/manager/CoverPowerManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/manager/CoverPowerManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/cover/manager/CoverPowerManager;->goToSleep()V

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0xb -> :sswitch_1
    .end sparse-switch
.end method
