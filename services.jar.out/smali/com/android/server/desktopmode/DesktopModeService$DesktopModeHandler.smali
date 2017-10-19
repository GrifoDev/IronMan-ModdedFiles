.class final Lcom/android/server/desktopmode/DesktopModeService$DesktopModeHandler;
.super Landroid/os/Handler;
.source "DesktopModeService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/desktopmode/DesktopModeService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "DesktopModeHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/desktopmode/DesktopModeService;


# direct methods
.method private constructor <init>(Lcom/android/server/desktopmode/DesktopModeService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/desktopmode/DesktopModeService$DesktopModeHandler;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/desktopmode/DesktopModeService;Lcom/android/server/desktopmode/DesktopModeService$DesktopModeHandler;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/desktopmode/DesktopModeService$DesktopModeHandler;-><init>(Lcom/android/server/desktopmode/DesktopModeService;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 10

    const/4 v8, -0x1

    const/4 v5, 0x4

    const/4 v6, 0x2

    const/4 v4, 0x1

    const/4 v7, 0x0

    iget v3, p1, Landroid/os/Message;->what:I

    packed-switch v3, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v3, p0, Lcom/android/server/desktopmode/DesktopModeService$DesktopModeHandler;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {v3}, Lcom/android/server/desktopmode/DesktopModeService;->-get8(Lcom/android/server/desktopmode/DesktopModeService;)Z

    move-result v7

    :cond_1
    if-nez v7, :cond_2

    iget-object v3, p0, Lcom/android/server/desktopmode/DesktopModeService$DesktopModeHandler;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    const/4 v4, 0x3

    invoke-static {v3, v4}, Lcom/android/server/desktopmode/DesktopModeService;->-wrap20(Lcom/android/server/desktopmode/DesktopModeService;I)V

    :cond_2
    iget-object v3, p0, Lcom/android/server/desktopmode/DesktopModeService$DesktopModeHandler;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {v3, v2}, Lcom/android/server/desktopmode/DesktopModeService;->-wrap21(Lcom/android/server/desktopmode/DesktopModeService;Z)V

    goto :goto_0

    :pswitch_1
    iget v1, p1, Landroid/os/Message;->arg1:I

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/desktopmode/DesktopModeUiManager$InternalDialogCallback;

    iget-object v3, p0, Lcom/android/server/desktopmode/DesktopModeService$DesktopModeHandler;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {v3, v1, v0}, Lcom/android/server/desktopmode/DesktopModeService;->-wrap28(Lcom/android/server/desktopmode/DesktopModeService;ILcom/android/server/desktopmode/DesktopModeUiManager$InternalDialogCallback;)V

    goto :goto_0

    :pswitch_2
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-static {}, Lcom/android/server/desktopmode/DesktopModeService;->-get0()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-static {}, Lcom/android/server/desktopmode/DesktopModeService;->-get1()Ljava/lang/String;

    move-result-object v3

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Starting loading screen... enter="

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    iget-object v3, p0, Lcom/android/server/desktopmode/DesktopModeService$DesktopModeHandler;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {v3}, Lcom/android/server/desktopmode/DesktopModeService;->-get30(Lcom/android/server/desktopmode/DesktopModeService;)Lcom/android/server/desktopmode/DesktopModeUiManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/desktopmode/DesktopModeUiManager;->isBoundWithService()Z

    move-result v3

    if-nez v3, :cond_4

    invoke-static {}, Lcom/android/server/desktopmode/DesktopModeService;->-get1()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "[DesktopModeUiService] MSG_START_LOADING_SCREEN. but service is not bounded...try again! enter="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/server/desktopmode/DesktopModeService$DesktopModeHandler;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {v3}, Lcom/android/server/desktopmode/DesktopModeService;->-get30(Lcom/android/server/desktopmode/DesktopModeService;)Lcom/android/server/desktopmode/DesktopModeUiManager;

    move-result-object v3

    new-instance v4, Lcom/android/server/desktopmode/DesktopModeService$DesktopModeHandler$1;

    invoke-direct {v4, p0, v2}, Lcom/android/server/desktopmode/DesktopModeService$DesktopModeHandler$1;-><init>(Lcom/android/server/desktopmode/DesktopModeService$DesktopModeHandler;Z)V

    invoke-virtual {v3, v4}, Lcom/android/server/desktopmode/DesktopModeUiManager;->bindUiServiceWithCallback(Lcom/android/server/desktopmode/DesktopModeUiManager$InternalServiceCallback;)V

    goto/16 :goto_0

    :cond_4
    iget-object v6, p0, Lcom/android/server/desktopmode/DesktopModeService$DesktopModeHandler;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    if-eqz v2, :cond_5

    const/4 v3, 0x3

    :goto_1
    const/16 v8, 0x14

    invoke-static {v6, v3, v8}, Lcom/android/server/desktopmode/DesktopModeService;->-wrap22(Lcom/android/server/desktopmode/DesktopModeService;II)V

    iget-object v3, p0, Lcom/android/server/desktopmode/DesktopModeService$DesktopModeHandler;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {v3}, Lcom/android/server/desktopmode/DesktopModeService;->-get17(Lcom/android/server/desktopmode/DesktopModeService;)Landroid/os/PowerManagerInternal;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/os/PowerManagerInternal;->setGoToSleepPrevention(Z)V

    iget-object v3, p0, Lcom/android/server/desktopmode/DesktopModeService$DesktopModeHandler;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    const/16 v6, 0x12c

    invoke-static {v3, v7, v6}, Lcom/android/server/desktopmode/DesktopModeService;->-wrap27(Lcom/android/server/desktopmode/DesktopModeService;ZI)V

    if-eqz v2, :cond_6

    iget-object v3, p0, Lcom/android/server/desktopmode/DesktopModeService$DesktopModeHandler;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {v3}, Lcom/android/server/desktopmode/DesktopModeService;->-get8(Lcom/android/server/desktopmode/DesktopModeService;)Z

    move-result v3

    if-eqz v3, :cond_6

    iget-object v3, p0, Lcom/android/server/desktopmode/DesktopModeService$DesktopModeHandler;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {v3, v4}, Lcom/android/server/desktopmode/DesktopModeService;->-wrap6(Lcom/android/server/desktopmode/DesktopModeService;Z)V

    iget-object v3, p0, Lcom/android/server/desktopmode/DesktopModeService$DesktopModeHandler;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {v3}, Lcom/android/server/desktopmode/DesktopModeService;->-get30(Lcom/android/server/desktopmode/DesktopModeService;)Lcom/android/server/desktopmode/DesktopModeUiManager;

    move-result-object v3

    const/16 v5, 0x67

    const/16 v6, 0x70

    invoke-virtual {v3, v5, v6}, Lcom/android/server/desktopmode/DesktopModeUiManager;->showPresentation(II)V

    iget-object v3, p0, Lcom/android/server/desktopmode/DesktopModeService$DesktopModeHandler;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {v3}, Lcom/android/server/desktopmode/DesktopModeService;->-get30(Lcom/android/server/desktopmode/DesktopModeService;)Lcom/android/server/desktopmode/DesktopModeUiManager;

    move-result-object v3

    const/16 v5, 0x66

    const/16 v6, 0x72

    invoke-virtual {v3, v5, v6}, Lcom/android/server/desktopmode/DesktopModeUiManager;->showPresentation(II)V

    :goto_2
    iget-object v3, p0, Lcom/android/server/desktopmode/DesktopModeService$DesktopModeHandler;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {v3}, Lcom/android/server/desktopmode/DesktopModeService;->-get21(Lcom/android/server/desktopmode/DesktopModeService;)Lcom/android/server/wm/IWindowManagerServiceBridge;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/server/wm/IWindowManagerServiceBridge;->launchHomeForDesktopMode()V

    iget-object v3, p0, Lcom/android/server/desktopmode/DesktopModeService$DesktopModeHandler;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {v3}, Lcom/android/server/desktopmode/DesktopModeService;->-get9(Lcom/android/server/desktopmode/DesktopModeService;)Lcom/android/server/desktopmode/DesktopModeService$DesktopModeHandler;

    move-result-object v3

    invoke-virtual {v3, v4}, Lcom/android/server/desktopmode/DesktopModeService$DesktopModeHandler;->removeMessages(I)V

    iget-object v3, p0, Lcom/android/server/desktopmode/DesktopModeService$DesktopModeHandler;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {v3}, Lcom/android/server/desktopmode/DesktopModeService;->-get9(Lcom/android/server/desktopmode/DesktopModeService;)Lcom/android/server/desktopmode/DesktopModeService$DesktopModeHandler;

    move-result-object v3

    iget-object v5, p0, Lcom/android/server/desktopmode/DesktopModeService$DesktopModeHandler;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {v5}, Lcom/android/server/desktopmode/DesktopModeService;->-get9(Lcom/android/server/desktopmode/DesktopModeService;)Lcom/android/server/desktopmode/DesktopModeService$DesktopModeHandler;

    move-result-object v5

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v5, v4, v6}, Lcom/android/server/desktopmode/DesktopModeService$DesktopModeHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    const-wide/16 v6, 0x3e8

    invoke-virtual {v3, v4, v6, v7}, Lcom/android/server/desktopmode/DesktopModeService$DesktopModeHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    :cond_5
    move v3, v4

    goto :goto_1

    :cond_6
    iget-object v3, p0, Lcom/android/server/desktopmode/DesktopModeService$DesktopModeHandler;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {v3, v5}, Lcom/android/server/desktopmode/DesktopModeService;->-wrap19(Lcom/android/server/desktopmode/DesktopModeService;I)V

    iget-object v3, p0, Lcom/android/server/desktopmode/DesktopModeService$DesktopModeHandler;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {v3, v4}, Lcom/android/server/desktopmode/DesktopModeService;->-wrap20(Lcom/android/server/desktopmode/DesktopModeService;I)V

    iget-object v3, p0, Lcom/android/server/desktopmode/DesktopModeService$DesktopModeHandler;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {v3}, Lcom/android/server/desktopmode/DesktopModeService;->-get30(Lcom/android/server/desktopmode/DesktopModeService;)Lcom/android/server/desktopmode/DesktopModeUiManager;

    move-result-object v5

    if-eqz v2, :cond_7

    const/16 v3, 0x70

    :goto_3
    const/16 v6, 0x64

    invoke-virtual {v5, v6, v3}, Lcom/android/server/desktopmode/DesktopModeUiManager;->showPresentation(II)V

    goto :goto_2

    :cond_7
    const/16 v3, 0x71

    goto :goto_3

    :pswitch_3
    iget v3, p1, Landroid/os/Message;->arg1:I

    if-ne v3, v8, :cond_e

    invoke-static {}, Lcom/android/server/desktopmode/DesktopModeService;->-get0()Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-static {}, Lcom/android/server/desktopmode/DesktopModeService;->-get1()Ljava/lang/String;

    move-result-object v3

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Loading screen dismissed by timeout mIsDesktopMode="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/server/desktopmode/DesktopModeService$DesktopModeHandler;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {v9}, Lcom/android/server/desktopmode/DesktopModeService;->-get11(Lcom/android/server/desktopmode/DesktopModeService;)Z

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v3, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    :goto_4
    iget-object v3, p0, Lcom/android/server/desktopmode/DesktopModeService$DesktopModeHandler;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {v3, v7}, Lcom/android/server/desktopmode/DesktopModeService;->-set4(Lcom/android/server/desktopmode/DesktopModeService;Z)Z

    iget-object v3, p0, Lcom/android/server/desktopmode/DesktopModeService$DesktopModeHandler;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {v3}, Lcom/android/server/desktopmode/DesktopModeService;->-wrap36(Lcom/android/server/desktopmode/DesktopModeService;)V

    iget-object v8, p0, Lcom/android/server/desktopmode/DesktopModeService$DesktopModeHandler;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    iget-object v3, p0, Lcom/android/server/desktopmode/DesktopModeService$DesktopModeHandler;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {v3}, Lcom/android/server/desktopmode/DesktopModeService;->-get11(Lcom/android/server/desktopmode/DesktopModeService;)Z

    move-result v3

    if-eqz v3, :cond_f

    move v3, v5

    :goto_5
    invoke-static {v8, v3, v7}, Lcom/android/server/desktopmode/DesktopModeService;->-wrap22(Lcom/android/server/desktopmode/DesktopModeService;II)V

    iget-object v3, p0, Lcom/android/server/desktopmode/DesktopModeService$DesktopModeHandler;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    iget-object v5, p0, Lcom/android/server/desktopmode/DesktopModeService$DesktopModeHandler;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {v5}, Lcom/android/server/desktopmode/DesktopModeService;->-get11(Lcom/android/server/desktopmode/DesktopModeService;)Z

    move-result v5

    invoke-static {v3, v5}, Lcom/android/server/desktopmode/DesktopModeService;->-wrap24(Lcom/android/server/desktopmode/DesktopModeService;Z)V

    const-string/jumbo v3, "dex_enabled_font"

    iget-object v5, p0, Lcom/android/server/desktopmode/DesktopModeService$DesktopModeHandler;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {v5}, Lcom/android/server/desktopmode/DesktopModeService;->-get11(Lcom/android/server/desktopmode/DesktopModeService;)Z

    move-result v5

    invoke-static {v3, v5}, Lcom/android/server/desktopmode/DesktopModeSettingsManager;->setServiceSettings(Ljava/lang/String;Z)V

    iget-object v3, p0, Lcom/android/server/desktopmode/DesktopModeService$DesktopModeHandler;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {v3}, Lcom/android/server/desktopmode/DesktopModeService;->-get11(Lcom/android/server/desktopmode/DesktopModeService;)Z

    move-result v3

    if-nez v3, :cond_10

    iget-object v3, p0, Lcom/android/server/desktopmode/DesktopModeService$DesktopModeHandler;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {v3}, Lcom/android/server/desktopmode/DesktopModeService;->-get24(Lcom/android/server/desktopmode/DesktopModeService;)Landroid/telecom/TelecomManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telecom/TelecomManager;->isInCall()Z

    move-result v3

    if-eqz v3, :cond_10

    :goto_6
    iget-object v3, p0, Lcom/android/server/desktopmode/DesktopModeService$DesktopModeHandler;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {v3}, Lcom/android/server/desktopmode/DesktopModeService;->-get17(Lcom/android/server/desktopmode/DesktopModeService;)Landroid/os/PowerManagerInternal;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroid/os/PowerManagerInternal;->setGoToSleepPrevention(Z)V

    iget-object v3, p0, Lcom/android/server/desktopmode/DesktopModeService$DesktopModeHandler;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {v3}, Lcom/android/server/desktopmode/DesktopModeService;->-get8(Lcom/android/server/desktopmode/DesktopModeService;)Z

    move-result v3

    if-eqz v3, :cond_11

    iget-object v3, p0, Lcom/android/server/desktopmode/DesktopModeService$DesktopModeHandler;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {v3}, Lcom/android/server/desktopmode/DesktopModeService;->-get11(Lcom/android/server/desktopmode/DesktopModeService;)Z

    move-result v3

    if-eqz v3, :cond_11

    iget-object v3, p0, Lcom/android/server/desktopmode/DesktopModeService$DesktopModeHandler;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {v3}, Lcom/android/server/desktopmode/DesktopModeService;->-get30(Lcom/android/server/desktopmode/DesktopModeService;)Lcom/android/server/desktopmode/DesktopModeUiManager;

    move-result-object v3

    const/16 v5, 0x67

    const/16 v8, 0x6e

    invoke-virtual {v3, v5, v8}, Lcom/android/server/desktopmode/DesktopModeUiManager;->dismissPresentation(II)V

    iget-object v3, p0, Lcom/android/server/desktopmode/DesktopModeService$DesktopModeHandler;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {v3}, Lcom/android/server/desktopmode/DesktopModeService;->-get30(Lcom/android/server/desktopmode/DesktopModeService;)Lcom/android/server/desktopmode/DesktopModeUiManager;

    move-result-object v3

    const/16 v5, 0x66

    const/16 v8, 0x72

    invoke-virtual {v3, v5, v8}, Lcom/android/server/desktopmode/DesktopModeUiManager;->showPresentation(II)V

    iget-object v3, p0, Lcom/android/server/desktopmode/DesktopModeService$DesktopModeHandler;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {v3}, Lcom/android/server/desktopmode/DesktopModeService;->-get13(Lcom/android/server/desktopmode/DesktopModeService;)Z

    move-result v3

    if-nez v3, :cond_b

    iget-object v3, p0, Lcom/android/server/desktopmode/DesktopModeService$DesktopModeHandler;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {v3}, Lcom/android/server/desktopmode/DesktopModeService;->-get29(Lcom/android/server/desktopmode/DesktopModeService;)Z

    move-result v3

    if-eqz v3, :cond_9

    iget-object v3, p0, Lcom/android/server/desktopmode/DesktopModeService$DesktopModeHandler;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {v3}, Lcom/android/server/desktopmode/DesktopModeService;->-get9(Lcom/android/server/desktopmode/DesktopModeService;)Lcom/android/server/desktopmode/DesktopModeService$DesktopModeHandler;

    move-result-object v3

    const/4 v5, 0x5

    invoke-virtual {v3, v5}, Lcom/android/server/desktopmode/DesktopModeService$DesktopModeHandler;->sendEmptyMessage(I)Z

    :cond_9
    iget-object v3, p0, Lcom/android/server/desktopmode/DesktopModeService$DesktopModeHandler;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {v3}, Lcom/android/server/desktopmode/DesktopModeService;->-get29(Lcom/android/server/desktopmode/DesktopModeService;)Z

    move-result v3

    if-eqz v3, :cond_a

    iget-object v3, p0, Lcom/android/server/desktopmode/DesktopModeService$DesktopModeHandler;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {v3}, Lcom/android/server/desktopmode/DesktopModeService;->-get10(Lcom/android/server/desktopmode/DesktopModeService;)Z

    move-result v3

    if-eqz v3, :cond_b

    iget-object v3, p0, Lcom/android/server/desktopmode/DesktopModeService$DesktopModeHandler;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {v3}, Lcom/android/server/desktopmode/DesktopModeService;->-get3(Lcom/android/server/desktopmode/DesktopModeService;)Lcom/android/server/desktopmode/CoverSupportStateController;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/desktopmode/CoverSupportStateController;->getCoverSupportState()I

    move-result v3

    if-ne v3, v6, :cond_b

    :cond_a
    iget-object v3, p0, Lcom/android/server/desktopmode/DesktopModeService$DesktopModeHandler;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {v3}, Lcom/android/server/desktopmode/DesktopModeService;->-get25(Lcom/android/server/desktopmode/DesktopModeService;)Lcom/android/server/desktopmode/ToastManager;

    move-result-object v3

    sget v5, Lcom/samsung/android/framework/res/R$string;->dex_touchpad_notice_popup:I

    invoke-virtual {v3, v5}, Lcom/android/server/desktopmode/ToastManager;->showToast(I)V

    :cond_b
    iget-object v3, p0, Lcom/android/server/desktopmode/DesktopModeService$DesktopModeHandler;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {v3}, Lcom/android/server/desktopmode/DesktopModeService;->-wrap29(Lcom/android/server/desktopmode/DesktopModeService;)V

    :goto_7
    iget-object v3, p0, Lcom/android/server/desktopmode/DesktopModeService$DesktopModeHandler;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    iget-object v5, p0, Lcom/android/server/desktopmode/DesktopModeService$DesktopModeHandler;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {v5}, Lcom/android/server/desktopmode/DesktopModeService;->-get11(Lcom/android/server/desktopmode/DesktopModeService;)Z

    move-result v5

    if-eqz v5, :cond_c

    move v4, v7

    :cond_c
    invoke-virtual {v3, v4}, Lcom/android/server/desktopmode/DesktopModeService;->scheduleUpdateDesktopMode(Z)V

    iget-object v3, p0, Lcom/android/server/desktopmode/DesktopModeService$DesktopModeHandler;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {v3}, Lcom/android/server/desktopmode/DesktopModeService;->-get7(Lcom/android/server/desktopmode/DesktopModeService;)Lcom/samsung/android/os/SemDvfsManager;

    move-result-object v3

    if-eqz v3, :cond_d

    iget-object v3, p0, Lcom/android/server/desktopmode/DesktopModeService$DesktopModeHandler;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {v3}, Lcom/android/server/desktopmode/DesktopModeService;->-get7(Lcom/android/server/desktopmode/DesktopModeService;)Lcom/samsung/android/os/SemDvfsManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/os/SemDvfsManager;->release()V

    :cond_d
    iget-object v3, p0, Lcom/android/server/desktopmode/DesktopModeService$DesktopModeHandler;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {v3}, Lcom/android/server/desktopmode/DesktopModeService;->-get11(Lcom/android/server/desktopmode/DesktopModeService;)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/android/server/desktopmode/DesktopModeService$DesktopModeHandler;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {v3}, Lcom/android/server/desktopmode/DesktopModeService;->-get30(Lcom/android/server/desktopmode/DesktopModeService;)Lcom/android/server/desktopmode/DesktopModeUiManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/desktopmode/DesktopModeUiManager;->unbindUiService()V

    goto/16 :goto_0

    :cond_e
    invoke-static {}, Lcom/android/server/desktopmode/DesktopModeService;->-get0()Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-static {}, Lcom/android/server/desktopmode/DesktopModeService;->-get1()Ljava/lang/String;

    move-result-object v3

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Stopping loading screen... mIsDesktopMode="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/server/desktopmode/DesktopModeService$DesktopModeHandler;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {v9}, Lcom/android/server/desktopmode/DesktopModeService;->-get11(Lcom/android/server/desktopmode/DesktopModeService;)Z

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v3, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    :cond_f
    move v3, v6

    goto/16 :goto_5

    :cond_10
    iget-object v3, p0, Lcom/android/server/desktopmode/DesktopModeService$DesktopModeHandler;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {v3}, Lcom/android/server/desktopmode/DesktopModeService;->-get25(Lcom/android/server/desktopmode/DesktopModeService;)Lcom/android/server/desktopmode/ToastManager;

    move-result-object v3

    sget v5, Lcom/samsung/android/framework/res/R$string;->dex_dialog_launch_toast:I

    invoke-virtual {v3, v5}, Lcom/android/server/desktopmode/ToastManager;->showToast(I)V

    goto/16 :goto_6

    :cond_11
    iget-object v3, p0, Lcom/android/server/desktopmode/DesktopModeService$DesktopModeHandler;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {v3}, Lcom/android/server/desktopmode/DesktopModeService;->-get30(Lcom/android/server/desktopmode/DesktopModeService;)Lcom/android/server/desktopmode/DesktopModeUiManager;

    move-result-object v3

    const/16 v5, 0x64

    const/16 v6, 0x6e

    invoke-virtual {v3, v5, v6}, Lcom/android/server/desktopmode/DesktopModeUiManager;->dismissPresentation(II)V

    iget-object v3, p0, Lcom/android/server/desktopmode/DesktopModeService$DesktopModeHandler;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {v3, v7}, Lcom/android/server/desktopmode/DesktopModeService;->-wrap6(Lcom/android/server/desktopmode/DesktopModeService;Z)V

    iget-object v3, p0, Lcom/android/server/desktopmode/DesktopModeService$DesktopModeHandler;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {v3}, Lcom/android/server/desktopmode/DesktopModeService;->-get19(Lcom/android/server/desktopmode/DesktopModeService;)Z

    move-result v3

    if-eqz v3, :cond_12

    const-string/jumbo v3, "/sys/class/sec/sec_epen/dex_enable"

    invoke-static {v3, v7}, Lcom/android/server/desktopmode/DesktopModeUtils;->writeFile(Ljava/lang/String;I)V

    :cond_12
    iget-object v3, p0, Lcom/android/server/desktopmode/DesktopModeService$DesktopModeHandler;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {v3}, Lcom/android/server/desktopmode/DesktopModeService;->-get3(Lcom/android/server/desktopmode/DesktopModeService;)Lcom/android/server/desktopmode/CoverSupportStateController;

    move-result-object v3

    invoke-virtual {v3, v7}, Lcom/android/server/desktopmode/CoverSupportStateController;->disableCoverManager(Z)V

    goto/16 :goto_7

    :pswitch_4
    iget-object v3, p0, Lcom/android/server/desktopmode/DesktopModeService$DesktopModeHandler;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {v3}, Lcom/android/server/desktopmode/DesktopModeService;->-wrap35(Lcom/android/server/desktopmode/DesktopModeService;)V

    goto/16 :goto_0

    :pswitch_5
    iget-object v4, p0, Lcom/android/server/desktopmode/DesktopModeService$DesktopModeHandler;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-static {v4, v3}, Lcom/android/server/desktopmode/DesktopModeService;->-wrap32(Lcom/android/server/desktopmode/DesktopModeService;Z)V

    goto/16 :goto_0

    :pswitch_6
    iget-object v3, p0, Lcom/android/server/desktopmode/DesktopModeService$DesktopModeHandler;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {v3}, Lcom/android/server/desktopmode/DesktopModeService;->-get30(Lcom/android/server/desktopmode/DesktopModeService;)Lcom/android/server/desktopmode/DesktopModeUiManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/desktopmode/DesktopModeUiManager;->getCurrentDialogType()I

    move-result v3

    if-ne v3, v8, :cond_0

    iget-object v3, p0, Lcom/android/server/desktopmode/DesktopModeService$DesktopModeHandler;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {v3}, Lcom/android/server/desktopmode/DesktopModeService;->-get13(Lcom/android/server/desktopmode/DesktopModeService;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/server/desktopmode/DesktopModeService$DesktopModeHandler;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {v3}, Lcom/android/server/desktopmode/DesktopModeService;->-get10(Lcom/android/server/desktopmode/DesktopModeService;)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/android/server/desktopmode/DesktopModeService$DesktopModeHandler;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {v3}, Lcom/android/server/desktopmode/DesktopModeService;->-get18(Lcom/android/server/desktopmode/DesktopModeService;)Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v8, "1st_mouse"

    invoke-static {v3, v8, v4}, Lcom/android/server/desktopmode/DesktopModeSettingsManager;->getSettings(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/server/desktopmode/DesktopModeService$DesktopModeHandler;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {v3}, Lcom/android/server/desktopmode/DesktopModeService;->-get9(Lcom/android/server/desktopmode/DesktopModeService;)Lcom/android/server/desktopmode/DesktopModeService$DesktopModeHandler;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/desktopmode/DesktopModeService$DesktopModeHandler;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {v4}, Lcom/android/server/desktopmode/DesktopModeService;->-get9(Lcom/android/server/desktopmode/DesktopModeService;)Lcom/android/server/desktopmode/DesktopModeService$DesktopModeHandler;

    move-result-object v4

    invoke-virtual {v4, v6, v5, v7}, Lcom/android/server/desktopmode/DesktopModeService$DesktopModeHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/server/desktopmode/DesktopModeService$DesktopModeHandler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method
