.class Lcom/android/server/connectivity/NetworkMonitor$DefaultState;
.super Lcom/android/internal/util/State;
.source "NetworkMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/connectivity/NetworkMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DefaultState"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/connectivity/NetworkMonitor;


# direct methods
.method private constructor <init>(Lcom/android/server/connectivity/NetworkMonitor;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/connectivity/NetworkMonitor$DefaultState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/connectivity/NetworkMonitor;Lcom/android/server/connectivity/NetworkMonitor$DefaultState;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/connectivity/NetworkMonitor$DefaultState;-><init>(Lcom/android/server/connectivity/NetworkMonitor;)V

    return-void
.end method


# virtual methods
.method public processMessage(Landroid/os/Message;)Z
    .locals 13

    iget-object v7, p0, Lcom/android/server/connectivity/NetworkMonitor$DefaultState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/server/connectivity/NetworkMonitor$DefaultState;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p1}, Landroid/os/Message;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/android/server/connectivity/NetworkMonitor;->log(Ljava/lang/String;)V

    iget v7, p1, Landroid/os/Message;->what:I

    sparse-switch v7, :sswitch_data_0

    const/4 v7, 0x1

    return v7

    :sswitch_0
    iget-object v7, p0, Lcom/android/server/connectivity/NetworkMonitor$DefaultState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    const/4 v8, 0x1

    invoke-static {v7, v8}, Lcom/android/server/connectivity/NetworkMonitor;->-wrap3(Lcom/android/server/connectivity/NetworkMonitor;I)V

    iget-object v7, p0, Lcom/android/server/connectivity/NetworkMonitor$DefaultState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    const-string/jumbo v8, "Connected"

    invoke-virtual {v7, v8}, Lcom/android/server/connectivity/NetworkMonitor;->log(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/android/server/connectivity/NetworkMonitor$DefaultState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    invoke-static {v7}, Lcom/android/server/connectivity/NetworkMonitor;->-get24(Lcom/android/server/connectivity/NetworkMonitor;)Z

    move-result v7

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/android/server/connectivity/NetworkMonitor$DefaultState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    const-string/jumbo v8, "register CaptivePortalReceiver"

    invoke-virtual {v7, v8}, Lcom/android/server/connectivity/NetworkMonitor;->log(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/android/server/connectivity/NetworkMonitor$DefaultState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    invoke-static {v7}, Lcom/android/server/connectivity/NetworkMonitor;->-get8(Lcom/android/server/connectivity/NetworkMonitor;)Landroid/content/Context;

    move-result-object v7

    iget-object v8, p0, Lcom/android/server/connectivity/NetworkMonitor$DefaultState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    invoke-static {v8}, Lcom/android/server/connectivity/NetworkMonitor;->-get2(Lcom/android/server/connectivity/NetworkMonitor;)Landroid/content/BroadcastReceiver;

    move-result-object v8

    new-instance v9, Landroid/content/IntentFilter;

    const-string/jumbo v10, "com.samsung.android.net.wifi.CAPTIVE_PORTAL_AUTHENTICATED"

    invoke-direct {v9, v10}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v8, v9}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iget-object v7, p0, Lcom/android/server/connectivity/NetworkMonitor$DefaultState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    iget-object v7, v7, Lcom/android/server/connectivity/NetworkMonitor;->mWatchdogChannel:Lcom/android/internal/util/AsyncChannel;

    const v8, 0x25064

    invoke-virtual {v7, v8}, Lcom/android/internal/util/AsyncChannel;->sendMessage(I)V

    iget-object v7, p0, Lcom/android/server/connectivity/NetworkMonitor$DefaultState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    const/4 v8, 0x0

    invoke-static {v7, v8}, Lcom/android/server/connectivity/NetworkMonitor;->-set14(Lcom/android/server/connectivity/NetworkMonitor;Z)Z

    :cond_0
    iget-object v7, p0, Lcom/android/server/connectivity/NetworkMonitor$DefaultState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    iget-object v8, p0, Lcom/android/server/connectivity/NetworkMonitor$DefaultState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    invoke-static {v8}, Lcom/android/server/connectivity/NetworkMonitor;->-get15(Lcom/android/server/connectivity/NetworkMonitor;)Lcom/android/internal/util/State;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/server/connectivity/NetworkMonitor;->-wrap9(Lcom/android/server/connectivity/NetworkMonitor;Lcom/android/internal/util/IState;)V

    const/4 v7, 0x1

    return v7

    :sswitch_1
    iget-object v7, p0, Lcom/android/server/connectivity/NetworkMonitor$DefaultState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    const/4 v8, 0x7

    invoke-static {v7, v8}, Lcom/android/server/connectivity/NetworkMonitor;->-wrap3(Lcom/android/server/connectivity/NetworkMonitor;I)V

    iget-object v7, p0, Lcom/android/server/connectivity/NetworkMonitor$DefaultState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    const-string/jumbo v8, "Disconnected"

    invoke-virtual {v7, v8}, Lcom/android/server/connectivity/NetworkMonitor;->log(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/android/server/connectivity/NetworkMonitor$DefaultState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    invoke-static {v7}, Lcom/android/server/connectivity/NetworkMonitor;->-get24(Lcom/android/server/connectivity/NetworkMonitor;)Z

    move-result v7

    if-eqz v7, :cond_1

    iget-object v7, p0, Lcom/android/server/connectivity/NetworkMonitor$DefaultState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    const-string/jumbo v8, "unregister CaptivePortalReceiver"

    invoke-virtual {v7, v8}, Lcom/android/server/connectivity/NetworkMonitor;->log(Ljava/lang/String;)V

    :try_start_0
    iget-object v7, p0, Lcom/android/server/connectivity/NetworkMonitor$DefaultState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    invoke-static {v7}, Lcom/android/server/connectivity/NetworkMonitor;->-get8(Lcom/android/server/connectivity/NetworkMonitor;)Landroid/content/Context;

    move-result-object v7

    iget-object v8, p0, Lcom/android/server/connectivity/NetworkMonitor$DefaultState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    invoke-static {v8}, Lcom/android/server/connectivity/NetworkMonitor;->-get2(Lcom/android/server/connectivity/NetworkMonitor;)Landroid/content/BroadcastReceiver;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v7, p0, Lcom/android/server/connectivity/NetworkMonitor$DefaultState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    const/4 v8, 0x0

    invoke-static {v7, v8}, Lcom/android/server/connectivity/NetworkMonitor;->-set11(Lcom/android/server/connectivity/NetworkMonitor;Z)Z

    iget-object v7, p0, Lcom/android/server/connectivity/NetworkMonitor$DefaultState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    const/4 v8, 0x0

    invoke-static {v7, v8}, Lcom/android/server/connectivity/NetworkMonitor;->-set15(Lcom/android/server/connectivity/NetworkMonitor;Z)Z

    iget-object v7, p0, Lcom/android/server/connectivity/NetworkMonitor$DefaultState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    const/4 v8, 0x0

    invoke-static {v7, v8}, Lcom/android/server/connectivity/NetworkMonitor;->-set14(Lcom/android/server/connectivity/NetworkMonitor;Z)Z

    :goto_1
    iget-object v7, p0, Lcom/android/server/connectivity/NetworkMonitor$DefaultState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    invoke-static {v7}, Lcom/android/server/connectivity/NetworkMonitor;->-wrap6(Lcom/android/server/connectivity/NetworkMonitor;)V

    const/4 v7, 0x1

    return v7

    :catch_0
    move-exception v1

    invoke-static {}, Lcom/android/server/connectivity/NetworkMonitor;->-get0()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "IllegalArgumentException: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0

    :cond_1
    iget-object v7, p0, Lcom/android/server/connectivity/NetworkMonitor$DefaultState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    invoke-static {v7}, Lcom/android/server/connectivity/NetworkMonitor;->-get27(Lcom/android/server/connectivity/NetworkMonitor;)Lcom/android/server/connectivity/NetworkMonitor$CustomIntentReceiver;

    move-result-object v7

    if-eqz v7, :cond_2

    iget-object v7, p0, Lcom/android/server/connectivity/NetworkMonitor$DefaultState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    invoke-static {v7}, Lcom/android/server/connectivity/NetworkMonitor;->-get8(Lcom/android/server/connectivity/NetworkMonitor;)Landroid/content/Context;

    move-result-object v7

    iget-object v8, p0, Lcom/android/server/connectivity/NetworkMonitor$DefaultState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    invoke-static {v8}, Lcom/android/server/connectivity/NetworkMonitor;->-get27(Lcom/android/server/connectivity/NetworkMonitor;)Lcom/android/server/connectivity/NetworkMonitor$CustomIntentReceiver;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iget-object v7, p0, Lcom/android/server/connectivity/NetworkMonitor$DefaultState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    const/4 v8, 0x0

    invoke-static {v7, v8}, Lcom/android/server/connectivity/NetworkMonitor;->-set19(Lcom/android/server/connectivity/NetworkMonitor;Lcom/android/server/connectivity/NetworkMonitor$CustomIntentReceiver;)Lcom/android/server/connectivity/NetworkMonitor$CustomIntentReceiver;

    :cond_2
    iget-object v7, p0, Lcom/android/server/connectivity/NetworkMonitor$DefaultState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    const/4 v8, 0x0

    invoke-static {v7, v8}, Lcom/android/server/connectivity/NetworkMonitor;->-set20(Lcom/android/server/connectivity/NetworkMonitor;Z)Z

    goto :goto_1

    :sswitch_2
    iget-object v7, p0, Lcom/android/server/connectivity/NetworkMonitor$DefaultState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    const-string/jumbo v8, "Forcing reevaluation - captive portal"

    invoke-virtual {v7, v8}, Lcom/android/server/connectivity/NetworkMonitor;->log(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/android/server/connectivity/NetworkMonitor$DefaultState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    invoke-static {v7}, Lcom/android/server/connectivity/NetworkMonitor;->-get24(Lcom/android/server/connectivity/NetworkMonitor;)Z

    move-result v7

    if-eqz v7, :cond_3

    iget-object v7, p0, Lcom/android/server/connectivity/NetworkMonitor$DefaultState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    const/4 v8, 0x0

    invoke-static {v7, v8}, Lcom/android/server/connectivity/NetworkMonitor;->-set1(Lcom/android/server/connectivity/NetworkMonitor;Z)Z

    :cond_3
    :sswitch_3
    iget-object v7, p0, Lcom/android/server/connectivity/NetworkMonitor$DefaultState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Forcing reevaluation for UID "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/android/server/connectivity/NetworkMonitor;->log(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/android/server/connectivity/NetworkMonitor$DefaultState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    iget v8, p1, Landroid/os/Message;->arg1:I

    invoke-static {v7, v8}, Lcom/android/server/connectivity/NetworkMonitor;->-set25(Lcom/android/server/connectivity/NetworkMonitor;I)I

    iget-object v7, p0, Lcom/android/server/connectivity/NetworkMonitor$DefaultState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    iget-object v8, p0, Lcom/android/server/connectivity/NetworkMonitor$DefaultState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    invoke-static {v8}, Lcom/android/server/connectivity/NetworkMonitor;->-get15(Lcom/android/server/connectivity/NetworkMonitor;)Lcom/android/internal/util/State;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/server/connectivity/NetworkMonitor;->-wrap9(Lcom/android/server/connectivity/NetworkMonitor;Lcom/android/internal/util/IState;)V

    const/4 v7, 0x1

    return v7

    :sswitch_4
    iget-object v7, p0, Lcom/android/server/connectivity/NetworkMonitor$DefaultState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "CaptivePortal App responded with "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/android/server/connectivity/NetworkMonitor;->log(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/android/server/connectivity/NetworkMonitor$DefaultState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    const/4 v8, 0x0

    invoke-static {v7, v8}, Lcom/android/server/connectivity/NetworkMonitor;->-set26(Lcom/android/server/connectivity/NetworkMonitor;Z)Z

    iget v7, p1, Landroid/os/Message;->arg1:I

    packed-switch v7, :pswitch_data_0

    :cond_4
    :goto_2
    iget-object v7, p0, Lcom/android/server/connectivity/NetworkMonitor$DefaultState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    const/4 v8, 0x0

    invoke-static {v7, v8}, Lcom/android/server/connectivity/NetworkMonitor;->-set2(Lcom/android/server/connectivity/NetworkMonitor;Z)Z

    const/4 v7, 0x1

    return v7

    :pswitch_0
    iget-object v7, p0, Lcom/android/server/connectivity/NetworkMonitor$DefaultState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    invoke-static {v7}, Lcom/android/server/connectivity/NetworkMonitor;->-get24(Lcom/android/server/connectivity/NetworkMonitor;)Z

    move-result v7

    if-eqz v7, :cond_5

    iget-object v7, p0, Lcom/android/server/connectivity/NetworkMonitor$DefaultState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    const/4 v8, 0x1

    invoke-static {v7, v8}, Lcom/android/server/connectivity/NetworkMonitor;->-set0(Lcom/android/server/connectivity/NetworkMonitor;Z)Z

    iget-object v7, p0, Lcom/android/server/connectivity/NetworkMonitor$DefaultState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    iget-object v8, p0, Lcom/android/server/connectivity/NetworkMonitor$DefaultState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    invoke-static {v8}, Lcom/android/server/connectivity/NetworkMonitor;->-get38(Lcom/android/server/connectivity/NetworkMonitor;)Lcom/android/internal/util/State;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/server/connectivity/NetworkMonitor;->-wrap9(Lcom/android/server/connectivity/NetworkMonitor;Lcom/android/internal/util/IState;)V

    iget-object v7, p0, Lcom/android/server/connectivity/NetworkMonitor$DefaultState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    iget-object v7, v7, Lcom/android/server/connectivity/NetworkMonitor;->mWatchdogChannel:Lcom/android/internal/util/AsyncChannel;

    const v8, 0x25068

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Lcom/android/internal/util/AsyncChannel;->sendMessage(II)V

    goto :goto_2

    :cond_5
    iget-object v7, p0, Lcom/android/server/connectivity/NetworkMonitor$DefaultState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    const v8, 0x82008

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {v7, v8, v9, v10}, Lcom/android/server/connectivity/NetworkMonitor;->sendMessage(III)V

    goto :goto_2

    :pswitch_1
    iget-object v7, p0, Lcom/android/server/connectivity/NetworkMonitor$DefaultState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    const/4 v8, 0x1

    invoke-static {v7, v8}, Lcom/android/server/connectivity/NetworkMonitor;->-set8(Lcom/android/server/connectivity/NetworkMonitor;Z)Z

    iget-object v7, p0, Lcom/android/server/connectivity/NetworkMonitor$DefaultState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    const/4 v8, 0x1

    invoke-static {v7, v8}, Lcom/android/server/connectivity/NetworkMonitor;->-set0(Lcom/android/server/connectivity/NetworkMonitor;Z)Z

    iget-object v7, p0, Lcom/android/server/connectivity/NetworkMonitor$DefaultState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    iget-object v8, p0, Lcom/android/server/connectivity/NetworkMonitor$DefaultState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    invoke-static {v8}, Lcom/android/server/connectivity/NetworkMonitor;->-get38(Lcom/android/server/connectivity/NetworkMonitor;)Lcom/android/internal/util/State;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/server/connectivity/NetworkMonitor;->-wrap9(Lcom/android/server/connectivity/NetworkMonitor;Lcom/android/internal/util/IState;)V

    iget-object v7, p0, Lcom/android/server/connectivity/NetworkMonitor$DefaultState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    invoke-static {v7}, Lcom/android/server/connectivity/NetworkMonitor;->-get24(Lcom/android/server/connectivity/NetworkMonitor;)Z

    move-result v7

    if-eqz v7, :cond_4

    iget-object v7, p0, Lcom/android/server/connectivity/NetworkMonitor$DefaultState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    iget-object v7, v7, Lcom/android/server/connectivity/NetworkMonitor;->mWatchdogChannel:Lcom/android/internal/util/AsyncChannel;

    const v8, 0x25068

    const/4 v9, 0x2

    invoke-virtual {v7, v8, v9}, Lcom/android/internal/util/AsyncChannel;->sendMessage(II)V

    goto :goto_2

    :pswitch_2
    iget-object v7, p0, Lcom/android/server/connectivity/NetworkMonitor$DefaultState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    const/4 v8, 0x1

    invoke-static {v7, v8}, Lcom/android/server/connectivity/NetworkMonitor;->-set8(Lcom/android/server/connectivity/NetworkMonitor;Z)Z

    iget-object v7, p0, Lcom/android/server/connectivity/NetworkMonitor$DefaultState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    invoke-static {v7}, Lcom/android/server/connectivity/NetworkMonitor;->-get24(Lcom/android/server/connectivity/NetworkMonitor;)Z

    move-result v7

    if-eqz v7, :cond_6

    iget-object v7, p0, Lcom/android/server/connectivity/NetworkMonitor$DefaultState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    const/4 v8, 0x0

    invoke-static {v7, v8}, Lcom/android/server/connectivity/NetworkMonitor;->-set2(Lcom/android/server/connectivity/NetworkMonitor;Z)Z

    iget-object v7, p0, Lcom/android/server/connectivity/NetworkMonitor$DefaultState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    const/4 v8, 0x0

    invoke-static {v7, v8}, Lcom/android/server/connectivity/NetworkMonitor;->-set1(Lcom/android/server/connectivity/NetworkMonitor;Z)Z

    iget-object v7, p0, Lcom/android/server/connectivity/NetworkMonitor$DefaultState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    invoke-static {v7}, Lcom/android/server/connectivity/NetworkMonitor;->-get7(Lcom/android/server/connectivity/NetworkMonitor;)Landroid/os/Handler;

    move-result-object v7

    iget-object v8, p0, Lcom/android/server/connectivity/NetworkMonitor$DefaultState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    iget-object v9, p0, Lcom/android/server/connectivity/NetworkMonitor$DefaultState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    invoke-static {v9}, Lcom/android/server/connectivity/NetworkMonitor;->-get29(Lcom/android/server/connectivity/NetworkMonitor;)I

    move-result v9

    const v10, 0x82002

    const/4 v11, 0x1

    const/4 v12, 0x0

    invoke-virtual {v8, v10, v11, v9, v12}, Lcom/android/server/connectivity/NetworkMonitor;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    iget-object v7, p0, Lcom/android/server/connectivity/NetworkMonitor$DefaultState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    const/4 v8, 0x0

    invoke-static {v7, v8}, Lcom/android/server/connectivity/NetworkMonitor;->-set27(Lcom/android/server/connectivity/NetworkMonitor;Z)Z

    iget-object v7, p0, Lcom/android/server/connectivity/NetworkMonitor$DefaultState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    iget-object v7, v7, Lcom/android/server/connectivity/NetworkMonitor;->mWatchdogChannel:Lcom/android/internal/util/AsyncChannel;

    const v8, 0x25068

    const/4 v9, 0x1

    invoke-virtual {v7, v8, v9}, Lcom/android/internal/util/AsyncChannel;->sendMessage(II)V

    goto/16 :goto_2

    :cond_6
    iget-object v7, p0, Lcom/android/server/connectivity/NetworkMonitor$DefaultState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    const/4 v8, 0x1

    invoke-static {v7, v8}, Lcom/android/server/connectivity/NetworkMonitor;->-set27(Lcom/android/server/connectivity/NetworkMonitor;Z)Z

    iget-object v7, p0, Lcom/android/server/connectivity/NetworkMonitor$DefaultState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    invoke-static {v7}, Lcom/android/server/connectivity/NetworkMonitor;->-get7(Lcom/android/server/connectivity/NetworkMonitor;)Landroid/os/Handler;

    move-result-object v7

    iget-object v8, p0, Lcom/android/server/connectivity/NetworkMonitor$DefaultState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    iget-object v9, p0, Lcom/android/server/connectivity/NetworkMonitor$DefaultState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    invoke-static {v9}, Lcom/android/server/connectivity/NetworkMonitor;->-get29(Lcom/android/server/connectivity/NetworkMonitor;)I

    move-result v9

    const v10, 0x82002

    const/4 v11, 0x1

    const/4 v12, 0x0

    invoke-virtual {v8, v10, v11, v9, v12}, Lcom/android/server/connectivity/NetworkMonitor;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    iget-object v7, p0, Lcom/android/server/connectivity/NetworkMonitor$DefaultState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    const/4 v8, 0x0

    invoke-static {v7, v8}, Lcom/android/server/connectivity/NetworkMonitor;->-set25(Lcom/android/server/connectivity/NetworkMonitor;I)I

    iget-object v7, p0, Lcom/android/server/connectivity/NetworkMonitor$DefaultState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    iget-object v8, p0, Lcom/android/server/connectivity/NetworkMonitor$DefaultState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    invoke-static {v8}, Lcom/android/server/connectivity/NetworkMonitor;->-get15(Lcom/android/server/connectivity/NetworkMonitor;)Lcom/android/internal/util/State;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/server/connectivity/NetworkMonitor;->-wrap9(Lcom/android/server/connectivity/NetworkMonitor;Lcom/android/internal/util/IState;)V

    goto/16 :goto_2

    :sswitch_5
    iget-object v7, p0, Lcom/android/server/connectivity/NetworkMonitor$DefaultState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    invoke-static {v7}, Lcom/android/server/connectivity/NetworkMonitor;->-get24(Lcom/android/server/connectivity/NetworkMonitor;)Z

    move-result v7

    if-eqz v7, :cond_7

    iget-object v7, p0, Lcom/android/server/connectivity/NetworkMonitor$DefaultState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    iget-object v8, p0, Lcom/android/server/connectivity/NetworkMonitor$DefaultState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    invoke-static {v8}, Lcom/android/server/connectivity/NetworkMonitor;->-get30(Lcom/android/server/connectivity/NetworkMonitor;)Lcom/android/server/connectivity/NetworkAgentInfo;

    move-result-object v8

    iget-object v8, v8, Lcom/android/server/connectivity/NetworkAgentInfo;->network:Landroid/net/Network;

    iget v8, v8, Landroid/net/Network;->netId:I

    add-int/lit8 v8, v8, 0x64

    const v9, 0x8200a

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual {v7, v9, v10, v8, v11}, Lcom/android/server/connectivity/NetworkMonitor;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    iget-object v7, p0, Lcom/android/server/connectivity/NetworkMonitor$DefaultState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    invoke-static {v7}, Lcom/android/server/connectivity/NetworkMonitor;->-get7(Lcom/android/server/connectivity/NetworkMonitor;)Landroid/os/Handler;

    move-result-object v7

    invoke-virtual {v7, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    iget-object v7, p0, Lcom/android/server/connectivity/NetworkMonitor$DefaultState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    invoke-static {v7}, Lcom/android/server/connectivity/NetworkMonitor;->-wrap2(Lcom/android/server/connectivity/NetworkMonitor;)Lcom/android/internal/util/IState;

    move-result-object v7

    iget-object v8, p0, Lcom/android/server/connectivity/NetworkMonitor$DefaultState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    invoke-static {v8}, Lcom/android/server/connectivity/NetworkMonitor;->-get4(Lcom/android/server/connectivity/NetworkMonitor;)Lcom/android/internal/util/State;

    move-result-object v8

    if-ne v7, v8, :cond_7

    iget-object v7, p0, Lcom/android/server/connectivity/NetworkMonitor$DefaultState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    const-string/jumbo v8, "SHOW normal notification"

    invoke-virtual {v7, v8}, Lcom/android/server/connectivity/NetworkMonitor;->log(Ljava/lang/String;)V

    new-instance v5, Landroid/content/Intent;

    const-string/jumbo v7, "android.net.netmon.launchCaptivePortalApp"

    invoke-direct {v5, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/android/server/connectivity/NetworkMonitor$DefaultState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    invoke-static {v7}, Lcom/android/server/connectivity/NetworkMonitor;->-get8(Lcom/android/server/connectivity/NetworkMonitor;)Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v7, "reason"

    const/4 v8, 0x2

    invoke-virtual {v5, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v7, p0, Lcom/android/server/connectivity/NetworkMonitor$DefaultState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    iget-object v8, p0, Lcom/android/server/connectivity/NetworkMonitor$DefaultState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    invoke-static {v8}, Lcom/android/server/connectivity/NetworkMonitor;->-get30(Lcom/android/server/connectivity/NetworkMonitor;)Lcom/android/server/connectivity/NetworkAgentInfo;

    move-result-object v8

    iget-object v8, v8, Lcom/android/server/connectivity/NetworkAgentInfo;->network:Landroid/net/Network;

    iget v8, v8, Landroid/net/Network;->netId:I

    iget-object v9, p0, Lcom/android/server/connectivity/NetworkMonitor$DefaultState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    invoke-static {v9}, Lcom/android/server/connectivity/NetworkMonitor;->-get8(Lcom/android/server/connectivity/NetworkMonitor;)Landroid/content/Context;

    move-result-object v9

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-static {v9, v10, v5, v11}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v9

    const v10, 0x8200a

    const/4 v11, 0x1

    invoke-virtual {v7, v10, v11, v8, v9}, Lcom/android/server/connectivity/NetworkMonitor;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    iget-object v7, p0, Lcom/android/server/connectivity/NetworkMonitor$DefaultState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    invoke-static {v7}, Lcom/android/server/connectivity/NetworkMonitor;->-get7(Lcom/android/server/connectivity/NetworkMonitor;)Landroid/os/Handler;

    move-result-object v7

    invoke-virtual {v7, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_7
    const/4 v7, 0x1

    return v7

    :sswitch_6
    iget-object v7, p0, Lcom/android/server/connectivity/NetworkMonitor$DefaultState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    invoke-static {v7}, Lcom/android/server/connectivity/NetworkMonitor;->-get24(Lcom/android/server/connectivity/NetworkMonitor;)Z

    move-result v7

    if-eqz v7, :cond_8

    iget-object v7, p0, Lcom/android/server/connectivity/NetworkMonitor$DefaultState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    const/4 v8, 0x1

    invoke-static {v7, v8}, Lcom/android/server/connectivity/NetworkMonitor;->-set14(Lcom/android/server/connectivity/NetworkMonitor;Z)Z

    iget-object v7, p0, Lcom/android/server/connectivity/NetworkMonitor$DefaultState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    const/4 v8, 0x0

    invoke-static {v7, v8}, Lcom/android/server/connectivity/NetworkMonitor;->-set15(Lcom/android/server/connectivity/NetworkMonitor;Z)Z

    iget v6, p1, Landroid/os/Message;->arg1:I

    packed-switch v6, :pswitch_data_1

    :cond_8
    :goto_3
    const/4 v7, 0x1

    return v7

    :pswitch_3
    iget-object v7, p0, Lcom/android/server/connectivity/NetworkMonitor$DefaultState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    const-string/jumbo v8, "RESULT_VALID"

    invoke-virtual {v7, v8}, Lcom/android/server/connectivity/NetworkMonitor;->log(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/android/server/connectivity/NetworkMonitor$DefaultState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    invoke-static {v7}, Lcom/android/server/connectivity/NetworkMonitor;->-get7(Lcom/android/server/connectivity/NetworkMonitor;)Landroid/os/Handler;

    move-result-object v7

    iget-object v8, p0, Lcom/android/server/connectivity/NetworkMonitor$DefaultState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    iget-object v9, p0, Lcom/android/server/connectivity/NetworkMonitor$DefaultState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    invoke-static {v9}, Lcom/android/server/connectivity/NetworkMonitor;->-get29(Lcom/android/server/connectivity/NetworkMonitor;)I

    move-result v9

    const v10, 0x82002

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual {v8, v10, v11, v9, v12}, Lcom/android/server/connectivity/NetworkMonitor;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    iget-object v7, p0, Lcom/android/server/connectivity/NetworkMonitor$DefaultState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    invoke-static {v7}, Lcom/android/server/connectivity/NetworkMonitor;->-wrap2(Lcom/android/server/connectivity/NetworkMonitor;)Lcom/android/internal/util/IState;

    move-result-object v7

    iget-object v8, p0, Lcom/android/server/connectivity/NetworkMonitor$DefaultState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    invoke-static {v8}, Lcom/android/server/connectivity/NetworkMonitor;->-get38(Lcom/android/server/connectivity/NetworkMonitor;)Lcom/android/internal/util/State;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_8

    iget-object v7, p0, Lcom/android/server/connectivity/NetworkMonitor$DefaultState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    iget-object v8, p0, Lcom/android/server/connectivity/NetworkMonitor$DefaultState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    invoke-static {v8}, Lcom/android/server/connectivity/NetworkMonitor;->-get38(Lcom/android/server/connectivity/NetworkMonitor;)Lcom/android/internal/util/State;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/server/connectivity/NetworkMonitor;->-wrap9(Lcom/android/server/connectivity/NetworkMonitor;Lcom/android/internal/util/IState;)V

    goto :goto_3

    :pswitch_4
    iget-object v7, p0, Lcom/android/server/connectivity/NetworkMonitor$DefaultState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    const-string/jumbo v8, "RESULT_INVALID"

    invoke-virtual {v7, v8}, Lcom/android/server/connectivity/NetworkMonitor;->log(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/android/server/connectivity/NetworkMonitor$DefaultState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    const/4 v8, 0x1

    invoke-static {v7, v8}, Lcom/android/server/connectivity/NetworkMonitor;->-set15(Lcom/android/server/connectivity/NetworkMonitor;Z)Z

    iget-object v7, p0, Lcom/android/server/connectivity/NetworkMonitor$DefaultState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    invoke-static {v7}, Lcom/android/server/connectivity/NetworkMonitor;->-get7(Lcom/android/server/connectivity/NetworkMonitor;)Landroid/os/Handler;

    move-result-object v7

    iget-object v8, p0, Lcom/android/server/connectivity/NetworkMonitor$DefaultState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    iget-object v9, p0, Lcom/android/server/connectivity/NetworkMonitor$DefaultState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    invoke-static {v9}, Lcom/android/server/connectivity/NetworkMonitor;->-get29(Lcom/android/server/connectivity/NetworkMonitor;)I

    move-result v9

    const v10, 0x82002

    const/4 v11, 0x1

    const/4 v12, 0x0

    invoke-virtual {v8, v10, v11, v9, v12}, Lcom/android/server/connectivity/NetworkMonitor;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    iget-object v7, p0, Lcom/android/server/connectivity/NetworkMonitor$DefaultState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    invoke-static {v7}, Lcom/android/server/connectivity/NetworkMonitor;->-wrap2(Lcom/android/server/connectivity/NetworkMonitor;)Lcom/android/internal/util/IState;

    move-result-object v7

    iget-object v8, p0, Lcom/android/server/connectivity/NetworkMonitor$DefaultState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    invoke-static {v8}, Lcom/android/server/connectivity/NetworkMonitor;->-get15(Lcom/android/server/connectivity/NetworkMonitor;)Lcom/android/internal/util/State;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_8

    iget-object v7, p0, Lcom/android/server/connectivity/NetworkMonitor$DefaultState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    iget-object v8, p0, Lcom/android/server/connectivity/NetworkMonitor$DefaultState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    invoke-static {v8}, Lcom/android/server/connectivity/NetworkMonitor;->-get15(Lcom/android/server/connectivity/NetworkMonitor;)Lcom/android/internal/util/State;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/server/connectivity/NetworkMonitor;->-wrap9(Lcom/android/server/connectivity/NetworkMonitor;Lcom/android/internal/util/IState;)V

    goto/16 :goto_3

    :pswitch_5
    iget-object v7, p0, Lcom/android/server/connectivity/NetworkMonitor$DefaultState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    const-string/jumbo v8, "RESULT_CAPTIVE_PORTAL"

    invoke-virtual {v7, v8}, Lcom/android/server/connectivity/NetworkMonitor;->log(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/android/server/connectivity/NetworkMonitor$DefaultState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    invoke-static {v7}, Lcom/android/server/connectivity/NetworkMonitor;->-wrap2(Lcom/android/server/connectivity/NetworkMonitor;)Lcom/android/internal/util/IState;

    move-result-object v7

    iget-object v8, p0, Lcom/android/server/connectivity/NetworkMonitor$DefaultState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    invoke-static {v8}, Lcom/android/server/connectivity/NetworkMonitor;->-get4(Lcom/android/server/connectivity/NetworkMonitor;)Lcom/android/internal/util/State;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_8

    iget-object v7, p0, Lcom/android/server/connectivity/NetworkMonitor$DefaultState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    invoke-static {v7}, Lcom/android/server/connectivity/NetworkMonitor;->-wrap2(Lcom/android/server/connectivity/NetworkMonitor;)Lcom/android/internal/util/IState;

    move-result-object v7

    iget-object v8, p0, Lcom/android/server/connectivity/NetworkMonitor$DefaultState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    invoke-static {v8}, Lcom/android/server/connectivity/NetworkMonitor;->-get15(Lcom/android/server/connectivity/NetworkMonitor;)Lcom/android/internal/util/State;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_8

    iget-object v7, p0, Lcom/android/server/connectivity/NetworkMonitor$DefaultState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    iget-object v8, p0, Lcom/android/server/connectivity/NetworkMonitor$DefaultState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    invoke-static {v8}, Lcom/android/server/connectivity/NetworkMonitor;->-get15(Lcom/android/server/connectivity/NetworkMonitor;)Lcom/android/internal/util/State;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/server/connectivity/NetworkMonitor;->-wrap9(Lcom/android/server/connectivity/NetworkMonitor;Lcom/android/internal/util/IState;)V

    goto/16 :goto_3

    :sswitch_7
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/util/AsyncChannel;

    iget-object v7, p0, Lcom/android/server/connectivity/NetworkMonitor$DefaultState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    iget-object v7, v7, Lcom/android/server/connectivity/NetworkMonitor;->mWatchdogChannel:Lcom/android/internal/util/AsyncChannel;

    if-ne v0, v7, :cond_a

    iget v7, p1, Landroid/os/Message;->arg1:I

    if-nez v7, :cond_9

    invoke-static {}, Lcom/android/server/connectivity/NetworkMonitor;->-get0()Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, "Async - Half connection with WWSM established"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v7, p0, Lcom/android/server/connectivity/NetworkMonitor$DefaultState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    iget-object v7, v7, Lcom/android/server/connectivity/NetworkMonitor;->mWatchdogChannel:Lcom/android/internal/util/AsyncChannel;

    const v8, 0x11001

    invoke-virtual {v7, v8}, Lcom/android/internal/util/AsyncChannel;->sendMessage(I)V

    :goto_4
    const/4 v7, 0x1

    return v7

    :cond_9
    invoke-static {}, Lcom/android/server/connectivity/NetworkMonitor;->-get0()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Async - Connection failure, error="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    :cond_a
    invoke-static {}, Lcom/android/server/connectivity/NetworkMonitor;->-get0()Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, "Async - Half connection to unknown channel"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    :sswitch_8
    iget v7, p1, Landroid/os/Message;->arg1:I

    const/4 v8, 0x2

    if-ne v7, v8, :cond_b

    invoke-static {}, Lcom/android/server/connectivity/NetworkMonitor;->-get0()Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, "Async - Send failed, client connection lost"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_5
    iget-object v7, p0, Lcom/android/server/connectivity/NetworkMonitor$DefaultState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    const/4 v8, 0x0

    iput-object v8, v7, Lcom/android/server/connectivity/NetworkMonitor;->mWatchdogChannel:Lcom/android/internal/util/AsyncChannel;

    const/4 v7, 0x1

    return v7

    :cond_b
    invoke-static {}, Lcom/android/server/connectivity/NetworkMonitor;->-get0()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Async - Client connection lost reason: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    :sswitch_9
    iget-object v7, p0, Lcom/android/server/connectivity/NetworkMonitor$DefaultState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    const-string/jumbo v8, "CMD_ACCEPT_UNVALIDATED_WIFI"

    invoke-virtual {v7, v8}, Lcom/android/server/connectivity/NetworkMonitor;->log(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/android/server/connectivity/NetworkMonitor$DefaultState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    invoke-static {v7}, Lcom/android/server/connectivity/NetworkMonitor;->-get7(Lcom/android/server/connectivity/NetworkMonitor;)Landroid/os/Handler;

    move-result-object v7

    iget-object v8, p0, Lcom/android/server/connectivity/NetworkMonitor$DefaultState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    iget v9, p1, Landroid/os/Message;->arg1:I

    iget-object v10, p0, Lcom/android/server/connectivity/NetworkMonitor$DefaultState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    invoke-static {v10}, Lcom/android/server/connectivity/NetworkMonitor;->-get30(Lcom/android/server/connectivity/NetworkMonitor;)Lcom/android/server/connectivity/NetworkAgentInfo;

    move-result-object v10

    iget-object v10, v10, Lcom/android/server/connectivity/NetworkAgentInfo;->network:Landroid/net/Network;

    iget v10, v10, Landroid/net/Network;->netId:I

    const v11, 0x82012

    invoke-virtual {v8, v11, v9, v10}, Lcom/android/server/connectivity/NetworkMonitor;->obtainMessage(III)Landroid/os/Message;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    iget-object v7, p0, Lcom/android/server/connectivity/NetworkMonitor$DefaultState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    invoke-static {v7}, Lcom/android/server/connectivity/NetworkMonitor;->-wrap2(Lcom/android/server/connectivity/NetworkMonitor;)Lcom/android/internal/util/IState;

    move-result-object v7

    iget-object v8, p0, Lcom/android/server/connectivity/NetworkMonitor$DefaultState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    invoke-static {v8}, Lcom/android/server/connectivity/NetworkMonitor;->-get15(Lcom/android/server/connectivity/NetworkMonitor;)Lcom/android/internal/util/State;

    move-result-object v8

    if-eq v7, v8, :cond_c

    iget-object v7, p0, Lcom/android/server/connectivity/NetworkMonitor$DefaultState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    invoke-static {v7}, Lcom/android/server/connectivity/NetworkMonitor;->-get30(Lcom/android/server/connectivity/NetworkMonitor;)Lcom/android/server/connectivity/NetworkAgentInfo;

    move-result-object v7

    iget-object v7, v7, Lcom/android/server/connectivity/NetworkAgentInfo;->networkCapabilities:Landroid/net/NetworkCapabilities;

    const/16 v8, 0x10

    invoke-virtual {v7, v8}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v7

    if-eqz v7, :cond_d

    :cond_c
    :goto_6
    const/4 v7, 0x1

    return v7

    :cond_d
    iget-object v7, p0, Lcom/android/server/connectivity/NetworkMonitor$DefaultState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    iget-object v8, p0, Lcom/android/server/connectivity/NetworkMonitor$DefaultState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    invoke-static {v8}, Lcom/android/server/connectivity/NetworkMonitor;->-get15(Lcom/android/server/connectivity/NetworkMonitor;)Lcom/android/internal/util/State;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/server/connectivity/NetworkMonitor;->-wrap9(Lcom/android/server/connectivity/NetworkMonitor;Lcom/android/internal/util/IState;)V

    goto :goto_6

    :sswitch_a
    iget-object v7, p0, Lcom/android/server/connectivity/NetworkMonitor$DefaultState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    iget-object v7, v7, Lcom/android/server/connectivity/NetworkMonitor;->mWatchdogChannel:Lcom/android/internal/util/AsyncChannel;

    if-eqz v7, :cond_e

    invoke-static {p1}, Landroid/os/Message;->obtain(Landroid/os/Message;)Landroid/os/Message;

    move-result-object v4

    iget-object v7, p0, Lcom/android/server/connectivity/NetworkMonitor$DefaultState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    iget-object v7, v7, Lcom/android/server/connectivity/NetworkMonitor;->mWatchdogChannel:Lcom/android/internal/util/AsyncChannel;

    invoke-virtual {v7, v4}, Lcom/android/internal/util/AsyncChannel;->sendMessage(Landroid/os/Message;)V

    :cond_e
    const/4 v7, 0x1

    return v7

    nop

    :sswitch_data_0
    .sparse-switch
        0x11000 -> :sswitch_7
        0x11004 -> :sswitch_8
        0x25067 -> :sswitch_6
        0x2506b -> :sswitch_a
        0x2506c -> :sswitch_a
        0x82001 -> :sswitch_0
        0x82007 -> :sswitch_1
        0x82008 -> :sswitch_3
        0x82009 -> :sswitch_4
        0x8200c -> :sswitch_3
        0x8200f -> :sswitch_2
        0x82011 -> :sswitch_5
        0x82012 -> :sswitch_9
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method
