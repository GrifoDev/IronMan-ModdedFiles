.class Lcom/sec/android/cover/neoncover/NeonCoverController$NeonHandler;
.super Landroid/os/Handler;
.source "NeonCoverController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/cover/neoncover/NeonCoverController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "NeonHandler"
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mControllerRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/sec/android/cover/neoncover/NeonCoverController;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/sec/android/cover/neoncover/NeonCoverController;->-get0()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lcom/sec/android/cover/neoncover/NeonCoverController$NeonHandler;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/android/cover/neoncover/NeonCoverController$NeonHandler;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/os/Looper;Lcom/sec/android/cover/neoncover/NeonCoverController;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/sec/android/cover/neoncover/NeonCoverController$NeonHandler;->mControllerRef:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 14

    const/4 v13, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x0

    sget-object v10, Lcom/sec/android/cover/neoncover/NeonCoverController$NeonHandler;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "handleMessage: msg="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v10, p0, Lcom/sec/android/cover/neoncover/NeonCoverController$NeonHandler;->mControllerRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v10}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/cover/neoncover/NeonCoverController;

    if-nez v1, :cond_0

    sget-object v8, Lcom/sec/android/cover/neoncover/NeonCoverController$NeonHandler;->TAG:Ljava/lang/String;

    const-string/jumbo v9, "handleMessage: controller is null"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget v10, p1, Landroid/os/Message;->what:I

    packed-switch v10, :pswitch_data_0

    sget-object v8, Lcom/sec/android/cover/neoncover/NeonCoverController$NeonHandler;->TAG:Ljava/lang/String;

    const-string/jumbo v9, "Message not supported"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void

    :pswitch_0
    sget-object v8, Lcom/sec/android/cover/neoncover/NeonCoverController$NeonHandler;->TAG:Ljava/lang/String;

    const-string/jumbo v9, "New Message"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v4, p1, Landroid/os/Message;->arg1:I

    iget v5, p1, Landroid/os/Message;->arg2:I

    invoke-static {v1}, Lcom/sec/android/cover/neoncover/NeonCoverController;->-wrap5(Lcom/sec/android/cover/neoncover/NeonCoverController;)Lcom/sec/android/cover/neoncover/NeonFSM;

    move-result-object v8

    invoke-virtual {v8, v5, v4}, Lcom/sec/android/cover/neoncover/NeonFSM;->processMessage(II)V

    goto :goto_0

    :pswitch_1
    sget-object v8, Lcom/sec/android/cover/neoncover/NeonCoverController$NeonHandler;->TAG:Ljava/lang/String;

    const-string/jumbo v9, "Alarm Start"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v1}, Lcom/sec/android/cover/neoncover/NeonCoverController;->-wrap5(Lcom/sec/android/cover/neoncover/NeonCoverController;)Lcom/sec/android/cover/neoncover/NeonFSM;

    move-result-object v8

    invoke-virtual {v8}, Lcom/sec/android/cover/neoncover/NeonFSM;->processAlarmStart()V

    goto :goto_0

    :pswitch_2
    sget-object v8, Lcom/sec/android/cover/neoncover/NeonCoverController$NeonHandler;->TAG:Ljava/lang/String;

    const-string/jumbo v9, "Alarm Stop"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v1}, Lcom/sec/android/cover/neoncover/NeonCoverController;->-wrap5(Lcom/sec/android/cover/neoncover/NeonCoverController;)Lcom/sec/android/cover/neoncover/NeonFSM;

    move-result-object v8

    invoke-virtual {v8}, Lcom/sec/android/cover/neoncover/NeonFSM;->processAlarmStop()V

    goto :goto_0

    :pswitch_3
    sget-object v8, Lcom/sec/android/cover/neoncover/NeonCoverController$NeonHandler;->TAG:Ljava/lang/String;

    const-string/jumbo v9, "Timer Start"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v1}, Lcom/sec/android/cover/neoncover/NeonCoverController;->-wrap5(Lcom/sec/android/cover/neoncover/NeonCoverController;)Lcom/sec/android/cover/neoncover/NeonFSM;

    move-result-object v8

    invoke-virtual {v8}, Lcom/sec/android/cover/neoncover/NeonFSM;->processTimerStart()V

    goto :goto_0

    :pswitch_4
    sget-object v8, Lcom/sec/android/cover/neoncover/NeonCoverController$NeonHandler;->TAG:Ljava/lang/String;

    const-string/jumbo v9, "Timer Stop"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v1}, Lcom/sec/android/cover/neoncover/NeonCoverController;->-wrap5(Lcom/sec/android/cover/neoncover/NeonCoverController;)Lcom/sec/android/cover/neoncover/NeonFSM;

    move-result-object v8

    invoke-virtual {v8}, Lcom/sec/android/cover/neoncover/NeonFSM;->processTimerStop()V

    goto :goto_0

    :pswitch_5
    sget-object v8, Lcom/sec/android/cover/neoncover/NeonCoverController$NeonHandler;->TAG:Ljava/lang/String;

    const-string/jumbo v9, "Calendar Start"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v1}, Lcom/sec/android/cover/neoncover/NeonCoverController;->-wrap5(Lcom/sec/android/cover/neoncover/NeonCoverController;)Lcom/sec/android/cover/neoncover/NeonFSM;

    move-result-object v8

    invoke-virtual {v8}, Lcom/sec/android/cover/neoncover/NeonFSM;->processCalendarStart()V

    goto :goto_0

    :pswitch_6
    sget-object v8, Lcom/sec/android/cover/neoncover/NeonCoverController$NeonHandler;->TAG:Ljava/lang/String;

    const-string/jumbo v9, "Calendar Stop"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v1}, Lcom/sec/android/cover/neoncover/NeonCoverController;->-wrap5(Lcom/sec/android/cover/neoncover/NeonCoverController;)Lcom/sec/android/cover/neoncover/NeonFSM;

    move-result-object v8

    invoke-virtual {v8}, Lcom/sec/android/cover/neoncover/NeonFSM;->processCalendarStop()V

    goto :goto_0

    :pswitch_7
    sget-object v9, Lcom/sec/android/cover/neoncover/NeonCoverController$NeonHandler;->TAG:Ljava/lang/String;

    const-string/jumbo v10, "Call state changed"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p1, Landroid/os/Message;->arg1:I

    if-eqz v0, :cond_2

    const/4 v9, 0x2

    if-eq v0, v9, :cond_2

    if-eq v0, v8, :cond_2

    sget-object v8, Lcom/sec/android/cover/neoncover/NeonCoverController$NeonHandler;->TAG:Ljava/lang/String;

    const-string/jumbo v9, "Invalid call state"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    invoke-static {v1}, Lcom/sec/android/cover/neoncover/NeonCoverController;->-wrap5(Lcom/sec/android/cover/neoncover/NeonCoverController;)Lcom/sec/android/cover/neoncover/NeonFSM;

    move-result-object v8

    invoke-virtual {v8, v0}, Lcom/sec/android/cover/neoncover/NeonFSM;->processCallStateChange(I)V

    goto/16 :goto_0

    :pswitch_8
    iget v10, p1, Landroid/os/Message;->arg1:I

    if-ne v10, v8, :cond_3

    :goto_1
    invoke-static {v1, v8}, Lcom/sec/android/cover/neoncover/NeonCoverController;->-set0(Lcom/sec/android/cover/neoncover/NeonCoverController;Z)Z

    invoke-virtual {v1}, Lcom/sec/android/cover/neoncover/NeonCoverController;->getCoverState()Lcom/samsung/android/cover/CoverState;

    move-result-object v8

    invoke-virtual {v1, v8}, Lcom/sec/android/cover/neoncover/NeonCoverController;->onCoverEvent(Lcom/samsung/android/cover/CoverState;)V

    goto/16 :goto_0

    :cond_3
    move v8, v9

    goto :goto_1

    :pswitch_9
    invoke-static {v1}, Lcom/sec/android/cover/neoncover/NeonCoverController;->-wrap0(Lcom/sec/android/cover/neoncover/NeonCoverController;)Landroid/content/Context;

    move-result-object v8

    invoke-static {v8}, Lcom/sec/android/cover/manager/CoverPowerManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/manager/CoverPowerManager;

    move-result-object v8

    invoke-virtual {v8}, Lcom/sec/android/cover/manager/CoverPowerManager;->isScreenOn()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-static {v1}, Lcom/sec/android/cover/neoncover/NeonCoverController;->-wrap4(Lcom/sec/android/cover/neoncover/NeonCoverController;)Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-static {v1}, Lcom/sec/android/cover/neoncover/NeonCoverController;->-wrap5(Lcom/sec/android/cover/neoncover/NeonCoverController;)Lcom/sec/android/cover/neoncover/NeonFSM;

    move-result-object v8

    invoke-virtual {v8}, Lcom/sec/android/cover/neoncover/NeonFSM;->processCoverClose()V

    goto/16 :goto_0

    :pswitch_a
    invoke-static {v1}, Lcom/sec/android/cover/neoncover/NeonCoverController;->-wrap0(Lcom/sec/android/cover/neoncover/NeonCoverController;)Landroid/content/Context;

    move-result-object v8

    invoke-static {v8}, Lcom/sec/android/cover/manager/CoverPowerManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/manager/CoverPowerManager;

    move-result-object v8

    invoke-virtual {v8}, Lcom/sec/android/cover/manager/CoverPowerManager;->isScreenOn()Z

    move-result v8

    if-nez v8, :cond_1

    invoke-static {v1}, Lcom/sec/android/cover/neoncover/NeonCoverController;->-wrap5(Lcom/sec/android/cover/neoncover/NeonCoverController;)Lcom/sec/android/cover/neoncover/NeonFSM;

    move-result-object v8

    invoke-virtual {v8}, Lcom/sec/android/cover/neoncover/NeonFSM;->setPreviousStateToIdle()V

    invoke-static {v1}, Lcom/sec/android/cover/neoncover/NeonCoverController;->-wrap4(Lcom/sec/android/cover/neoncover/NeonCoverController;)Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-static {v1}, Lcom/sec/android/cover/neoncover/NeonCoverController;->-wrap8(Lcom/sec/android/cover/neoncover/NeonCoverController;)V

    goto/16 :goto_0

    :pswitch_b
    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-static {v1}, Lcom/sec/android/cover/neoncover/NeonCoverController;->-wrap4(Lcom/sec/android/cover/neoncover/NeonCoverController;)Z

    move-result v9

    if-eqz v9, :cond_1

    if-ne v2, v8, :cond_4

    invoke-static {v1}, Lcom/sec/android/cover/neoncover/NeonCoverController;->-wrap8(Lcom/sec/android/cover/neoncover/NeonCoverController;)V

    invoke-static {v1}, Lcom/sec/android/cover/neoncover/NeonCoverController;->-get2(Lcom/sec/android/cover/neoncover/NeonCoverController;)Lcom/sec/android/cover/neoncover/NeonBrightnessController;

    move-result-object v8

    sget-object v9, Lcom/sec/android/cover/neoncover/NeonBrightnessController$BrightnessSate;->NONE:Lcom/sec/android/cover/neoncover/NeonBrightnessController$BrightnessSate;

    invoke-virtual {v8, v9}, Lcom/sec/android/cover/neoncover/NeonBrightnessController;->setBrightnessState(Lcom/sec/android/cover/neoncover/NeonBrightnessController$BrightnessSate;)V

    goto/16 :goto_0

    :cond_4
    invoke-static {v1}, Lcom/sec/android/cover/neoncover/NeonCoverController;->-wrap5(Lcom/sec/android/cover/neoncover/NeonCoverController;)Lcom/sec/android/cover/neoncover/NeonFSM;

    move-result-object v8

    invoke-virtual {v8}, Lcom/sec/android/cover/neoncover/NeonFSM;->getCurrentState()Lcom/sec/android/cover/neoncover/NeonFSM$NeonState;

    move-result-object v8

    invoke-virtual {v1, v8}, Lcom/sec/android/cover/neoncover/NeonCoverController;->onStateChange(Lcom/sec/android/cover/neoncover/NeonFSM$NeonState;)V

    goto/16 :goto_0

    :pswitch_c
    invoke-static {v1}, Lcom/sec/android/cover/neoncover/NeonCoverController;->-wrap2(Lcom/sec/android/cover/neoncover/NeonCoverController;)Z

    move-result v8

    if-nez v8, :cond_5

    invoke-static {v1}, Lcom/sec/android/cover/neoncover/NeonCoverController;->-wrap3(Lcom/sec/android/cover/neoncover/NeonCoverController;)Z

    move-result v8

    if-eqz v8, :cond_6

    :cond_5
    :goto_2
    :pswitch_d
    iget-object v7, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v7, Lcom/sec/android/cover/neoncover/animation/NeonAnimation$AnimationType;

    sget-object v8, Lcom/sec/android/cover/neoncover/animation/NeonAnimation$AnimationType;->NEW_MESSAGE:Lcom/sec/android/cover/neoncover/animation/NeonAnimation$AnimationType;

    if-ne v8, v7, :cond_1

    invoke-static {v1}, Lcom/sec/android/cover/neoncover/NeonCoverController;->-wrap5(Lcom/sec/android/cover/neoncover/NeonCoverController;)Lcom/sec/android/cover/neoncover/NeonFSM;

    move-result-object v8

    invoke-virtual {v8}, Lcom/sec/android/cover/neoncover/NeonFSM;->processMessageRemoval()V

    goto/16 :goto_0

    :cond_6
    invoke-static {v1}, Lcom/sec/android/cover/neoncover/NeonCoverController;->-wrap8(Lcom/sec/android/cover/neoncover/NeonCoverController;)V

    goto :goto_2

    :pswitch_e
    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Lcom/samsung/android/cover/CoverState;

    if-eqz v6, :cond_1

    invoke-static {v1}, Lcom/sec/android/cover/neoncover/NeonCoverController;->-wrap5(Lcom/sec/android/cover/neoncover/NeonCoverController;)Lcom/sec/android/cover/neoncover/NeonFSM;

    move-result-object v10

    invoke-virtual {v10}, Lcom/sec/android/cover/neoncover/NeonFSM;->setPreviousStateToIdle()V

    invoke-static {v1}, Lcom/sec/android/cover/neoncover/NeonCoverController;->-wrap5(Lcom/sec/android/cover/neoncover/NeonCoverController;)Lcom/sec/android/cover/neoncover/NeonFSM;

    move-result-object v10

    invoke-virtual {v1}, Lcom/sec/android/cover/neoncover/NeonCoverController;->isCoverOpen()Z

    move-result v11

    if-eqz v11, :cond_7

    move v8, v9

    :cond_7
    invoke-virtual {v10, v8}, Lcom/sec/android/cover/neoncover/NeonFSM;->setCoverClosed(Z)V

    invoke-static {v1}, Lcom/sec/android/cover/neoncover/NeonCoverController;->-get2(Lcom/sec/android/cover/neoncover/NeonCoverController;)Lcom/sec/android/cover/neoncover/NeonBrightnessController;

    move-result-object v8

    invoke-virtual {v1}, Lcom/sec/android/cover/neoncover/NeonCoverController;->isCoverOpen()Z

    move-result v10

    if-eqz v10, :cond_8

    iget-boolean v9, v6, Lcom/samsung/android/cover/CoverState;->attached:Z

    :cond_8
    invoke-virtual {v8, v9}, Lcom/sec/android/cover/neoncover/NeonBrightnessController;->updateCoverState(Z)V

    invoke-virtual {v1}, Lcom/sec/android/cover/neoncover/NeonCoverController;->isCoverOpen()Z

    move-result v8

    if-eqz v8, :cond_a

    invoke-static {v1}, Lcom/sec/android/cover/neoncover/NeonCoverController;->-get1(Lcom/sec/android/cover/neoncover/NeonCoverController;)Landroid/os/PowerManager$WakeLock;

    move-result-object v8

    invoke-virtual {v8}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v8

    if-eqz v8, :cond_9

    invoke-static {v1}, Lcom/sec/android/cover/neoncover/NeonCoverController;->-get1(Lcom/sec/android/cover/neoncover/NeonCoverController;)Landroid/os/PowerManager$WakeLock;

    move-result-object v8

    invoke-virtual {v8}, Landroid/os/PowerManager$WakeLock;->release()V

    :cond_9
    invoke-static {v1, v13}, Lcom/sec/android/cover/neoncover/NeonCoverController;->-wrap6(Lcom/sec/android/cover/neoncover/NeonCoverController;Lcom/sec/android/cover/neoncover/animation/NeonAnimation$AnimationType;)V

    invoke-static {v1}, Lcom/sec/android/cover/neoncover/NeonCoverController;->-get2(Lcom/sec/android/cover/neoncover/NeonCoverController;)Lcom/sec/android/cover/neoncover/NeonBrightnessController;

    move-result-object v8

    sget-object v9, Lcom/sec/android/cover/neoncover/NeonBrightnessController$BrightnessSate;->NONE:Lcom/sec/android/cover/neoncover/NeonBrightnessController$BrightnessSate;

    invoke-virtual {v8, v9}, Lcom/sec/android/cover/neoncover/NeonBrightnessController;->setBrightnessState(Lcom/sec/android/cover/neoncover/NeonBrightnessController$BrightnessSate;)V

    invoke-static {v1}, Lcom/sec/android/cover/neoncover/NeonCoverController;->-wrap0(Lcom/sec/android/cover/neoncover/NeonCoverController;)Landroid/content/Context;

    move-result-object v8

    invoke-static {v8}, Lcom/sec/android/cover/manager/CoverPowerManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/manager/CoverPowerManager;

    move-result-object v8

    invoke-virtual {v8}, Lcom/sec/android/cover/manager/CoverPowerManager;->isScreenOn()Z

    move-result v8

    if-nez v8, :cond_1

    sget-object v8, Lcom/sec/android/cover/neoncover/NeonCoverController$NeonHandler;->TAG:Ljava/lang/String;

    const-string/jumbo v9, "waking up screen"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v1}, Lcom/sec/android/cover/neoncover/NeonCoverController;->-wrap0(Lcom/sec/android/cover/neoncover/NeonCoverController;)Landroid/content/Context;

    move-result-object v8

    invoke-static {v8}, Lcom/sec/android/cover/manager/CoverPowerManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/manager/CoverPowerManager;

    move-result-object v8

    invoke-virtual {v8}, Lcom/sec/android/cover/manager/CoverPowerManager;->wakeUp()V

    goto/16 :goto_0

    :cond_a
    invoke-static {v1}, Lcom/sec/android/cover/neoncover/NeonCoverController;->-wrap0(Lcom/sec/android/cover/neoncover/NeonCoverController;)Landroid/content/Context;

    move-result-object v8

    invoke-static {v8}, Lcom/sec/android/cover/manager/CoverPowerManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/manager/CoverPowerManager;

    move-result-object v8

    invoke-virtual {v8}, Lcom/sec/android/cover/manager/CoverPowerManager;->isScreenOn()Z

    move-result v8

    if-nez v8, :cond_b

    invoke-static {v1}, Lcom/sec/android/cover/neoncover/NeonCoverController;->-wrap9(Lcom/sec/android/cover/neoncover/NeonCoverController;)V

    goto/16 :goto_0

    :cond_b
    invoke-static {v1}, Lcom/sec/android/cover/neoncover/NeonCoverController;->-wrap5(Lcom/sec/android/cover/neoncover/NeonCoverController;)Lcom/sec/android/cover/neoncover/NeonFSM;

    move-result-object v8

    invoke-virtual {v8}, Lcom/sec/android/cover/neoncover/NeonFSM;->processCoverClose()V

    goto/16 :goto_0

    :pswitch_f
    invoke-static {v1}, Lcom/sec/android/cover/neoncover/NeonCoverController;->-wrap7(Lcom/sec/android/cover/neoncover/NeonCoverController;)V

    invoke-static {v1}, Lcom/sec/android/cover/neoncover/NeonCoverController;->-wrap4(Lcom/sec/android/cover/neoncover/NeonCoverController;)Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-static {v1}, Lcom/sec/android/cover/neoncover/NeonCoverController;->-wrap5(Lcom/sec/android/cover/neoncover/NeonCoverController;)Lcom/sec/android/cover/neoncover/NeonFSM;

    move-result-object v8

    invoke-virtual {v8}, Lcom/sec/android/cover/neoncover/NeonFSM;->getCurrentState()Lcom/sec/android/cover/neoncover/NeonFSM$NeonState;

    move-result-object v8

    invoke-virtual {v1, v8}, Lcom/sec/android/cover/neoncover/NeonCoverController;->onStateChange(Lcom/sec/android/cover/neoncover/NeonFSM$NeonState;)V

    goto/16 :goto_0

    :pswitch_10
    invoke-static {v1}, Lcom/sec/android/cover/neoncover/NeonCoverController;->-wrap0(Lcom/sec/android/cover/neoncover/NeonCoverController;)Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string/jumbo v11, "neon_cover_test_mode"

    invoke-static {v10, v11, v9}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v10

    const/16 v11, 0x309

    if-ne v10, v11, :cond_c

    move v3, v8

    :goto_3
    if-eqz v3, :cond_d

    invoke-static {v1}, Lcom/sec/android/cover/neoncover/NeonCoverController;->-wrap5(Lcom/sec/android/cover/neoncover/NeonCoverController;)Lcom/sec/android/cover/neoncover/NeonFSM;

    move-result-object v8

    invoke-virtual {v8}, Lcom/sec/android/cover/neoncover/NeonFSM;->processTestModeStart()V

    goto/16 :goto_0

    :cond_c
    move v3, v9

    goto :goto_3

    :cond_d
    invoke-static {v1}, Lcom/sec/android/cover/neoncover/NeonCoverController;->-wrap5(Lcom/sec/android/cover/neoncover/NeonCoverController;)Lcom/sec/android/cover/neoncover/NeonFSM;

    move-result-object v8

    invoke-virtual {v8}, Lcom/sec/android/cover/neoncover/NeonFSM;->processTestModeStop()V

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_5
        :pswitch_6
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
    .end packed-switch
.end method
