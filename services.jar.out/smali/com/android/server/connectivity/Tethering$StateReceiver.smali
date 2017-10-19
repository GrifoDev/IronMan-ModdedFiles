.class Lcom/android/server/connectivity/Tethering$StateReceiver;
.super Landroid/content/BroadcastReceiver;
.source "Tethering.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/connectivity/Tethering;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StateReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/connectivity/Tethering;


# direct methods
.method private constructor <init>(Lcom/android/server/connectivity/Tethering;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/connectivity/Tethering;Lcom/android/server/connectivity/Tethering$StateReceiver;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/connectivity/Tethering$StateReceiver;-><init>(Lcom/android/server/connectivity/Tethering;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 46

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_0

    return-void

    :cond_0
    const-string/jumbo v40, "android.hardware.usb.action.USB_STATE"

    move-object/from16 v0, v40

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v40

    if-eqz v40, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v40, v0

    invoke-static/range {v40 .. v40}, Lcom/android/server/connectivity/Tethering;->-get21(Lcom/android/server/connectivity/Tethering;)Ljava/lang/Object;

    move-result-object v41

    monitor-enter v41

    :try_start_0
    const-string/jumbo v40, "connected"

    const/16 v42, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v40

    move/from16 v2, v42

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v37

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v40, v0

    const-string/jumbo v42, "rndis"

    const/16 v43, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v42

    move/from16 v2, v43

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v42

    move-object/from16 v0, v40

    move/from16 v1, v42

    invoke-static {v0, v1}, Lcom/android/server/connectivity/Tethering;->-set14(Lcom/android/server/connectivity/Tethering;Z)Z

    if-eqz v37, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v40, v0

    invoke-static/range {v40 .. v40}, Lcom/android/server/connectivity/Tethering;->-get24(Lcom/android/server/connectivity/Tethering;)Z

    move-result v40

    if-eqz v40, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v40, v0

    invoke-static/range {v40 .. v40}, Lcom/android/server/connectivity/Tethering;->-get29(Lcom/android/server/connectivity/Tethering;)Z

    move-result v40

    if-eqz v40, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v40, v0

    const/16 v42, 0x1

    const/16 v43, 0x1

    move-object/from16 v0, v40

    move/from16 v1, v42

    move/from16 v2, v43

    invoke-static {v0, v1, v2}, Lcom/android/server/connectivity/Tethering;->-wrap20(Lcom/android/server/connectivity/Tethering;ZI)V

    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v40, v0

    const/16 v42, 0x0

    move-object/from16 v0, v40

    move/from16 v1, v42

    invoke-static {v0, v1}, Lcom/android/server/connectivity/Tethering;->-set15(Lcom/android/server/connectivity/Tethering;Z)Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v40, v0

    const-string/jumbo v42, "ncm"

    const/16 v43, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v42

    move/from16 v2, v43

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v42

    move-object/from16 v0, v40

    move/from16 v1, v42

    invoke-static {v0, v1}, Lcom/android/server/connectivity/Tethering;->-set12(Lcom/android/server/connectivity/Tethering;Z)Z

    if-eqz v37, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v40, v0

    invoke-static/range {v40 .. v40}, Lcom/android/server/connectivity/Tethering;->-get18(Lcom/android/server/connectivity/Tethering;)Z

    move-result v40

    if-eqz v40, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v40, v0

    invoke-static/range {v40 .. v40}, Lcom/android/server/connectivity/Tethering;->-get19(Lcom/android/server/connectivity/Tethering;)Z

    move-result v40

    if-eqz v40, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v40, v0

    const/16 v42, 0x1

    move-object/from16 v0, v40

    move/from16 v1, v42

    invoke-static {v0, v1}, Lcom/android/server/connectivity/Tethering;->-wrap21(Lcom/android/server/connectivity/Tethering;Z)V

    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v40, v0

    const/16 v42, 0x0

    move-object/from16 v0, v40

    move/from16 v1, v42

    invoke-static {v0, v1}, Lcom/android/server/connectivity/Tethering;->-set13(Lcom/android/server/connectivity/Tethering;Z)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    :pswitch_0
    monitor-exit v41

    :cond_3
    :goto_1
    return-void

    :catchall_0
    move-exception v40

    monitor-exit v41

    throw v40

    :cond_4
    const-string/jumbo v40, "android.net.conn.CONNECTIVITY_CHANGE"

    move-object/from16 v0, v40

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v40

    if-eqz v40, :cond_5

    const-string/jumbo v40, "networkInfo"

    move-object/from16 v0, p2

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v24

    check-cast v24, Landroid/net/NetworkInfo;

    if-eqz v24, :cond_3

    invoke-virtual/range {v24 .. v24}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v40

    sget-object v41, Landroid/net/NetworkInfo$DetailedState;->FAILED:Landroid/net/NetworkInfo$DetailedState;

    move-object/from16 v0, v40

    move-object/from16 v1, v41

    if-eq v0, v1, :cond_3

    const-string/jumbo v40, "Tethering"

    const-string/jumbo v41, "Tethering got CONNECTIVITY_ACTION"

    invoke-static/range {v40 .. v41}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v40, v0

    invoke-static/range {v40 .. v40}, Lcom/android/server/connectivity/Tethering;->-get25(Lcom/android/server/connectivity/Tethering;)Lcom/android/internal/util/StateMachine;

    move-result-object v40

    const v41, 0x50003

    move-object/from16 v0, v40

    move/from16 v1, v41

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/util/StateMachine;->sendMessage(ILjava/lang/Object;)V

    goto :goto_1

    :cond_5
    const-string/jumbo v40, "android.net.wifi.WIFI_AP_STATE_CHANGED"

    move-object/from16 v0, v40

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v40

    if-eqz v40, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v40, v0

    invoke-static/range {v40 .. v40}, Lcom/android/server/connectivity/Tethering;->-get21(Lcom/android/server/connectivity/Tethering;)Ljava/lang/Object;

    move-result-object v41

    monitor-enter v41

    :try_start_1
    const-string/jumbo v40, "wifi_state"

    const/16 v42, 0xb

    move-object/from16 v0, p2

    move-object/from16 v1, v40

    move/from16 v2, v42

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v10

    packed-switch v10, :pswitch_data_0

    :cond_6
    :goto_2
    const-string/jumbo v40, "Tethering"

    new-instance v42, Ljava/lang/StringBuilder;

    invoke-direct/range {v42 .. v42}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v43, "Canceling WiFi tethering request - AP_STATE="

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    move-object/from16 v0, v42

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v42

    invoke-virtual/range {v42 .. v42}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v42

    move-object/from16 v0, v40

    move-object/from16 v1, v42

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v16, 0x0

    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v40, v0

    invoke-static/range {v40 .. v40}, Lcom/android/server/connectivity/Tethering;->-get26(Lcom/android/server/connectivity/Tethering;)Landroid/util/ArrayMap;

    move-result-object v40

    invoke-virtual/range {v40 .. v40}, Landroid/util/ArrayMap;->size()I

    move-result v40

    move/from16 v0, v16

    move/from16 v1, v40

    if-ge v0, v1, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v40, v0

    invoke-static/range {v40 .. v40}, Lcom/android/server/connectivity/Tethering;->-get26(Lcom/android/server/connectivity/Tethering;)Landroid/util/ArrayMap;

    move-result-object v40

    move-object/from16 v0, v40

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v40

    check-cast v40, Lcom/android/server/connectivity/Tethering$TetherState;

    move-object/from16 v0, v40

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$TetherState;->mStateMachine:Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;

    move-object/from16 v35, v0

    invoke-virtual/range {v35 .. v35}, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->interfaceType()I

    move-result v40

    if-nez v40, :cond_8

    const v40, 0x50067

    move-object/from16 v0, v35

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->sendMessage(I)V

    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v40, v0

    const/16 v42, 0x0

    move-object/from16 v0, v40

    move/from16 v1, v42

    invoke-static {v0, v1}, Lcom/android/server/connectivity/Tethering;->-set16(Lcom/android/server/connectivity/Tethering;Z)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto/16 :goto_0

    :catchall_1
    move-exception v40

    monitor-exit v41

    throw v40

    :pswitch_1
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v40, v0

    const/16 v42, 0x1

    const/16 v43, 0x0

    move-object/from16 v0, v40

    move/from16 v1, v42

    move/from16 v2, v43

    invoke-static {v0, v1, v2}, Lcom/android/server/connectivity/Tethering;->-wrap20(Lcom/android/server/connectivity/Tethering;ZI)V

    goto/16 :goto_0

    :pswitch_2
    const-string/jumbo v40, "ATT"

    sget-object v42, Lcom/android/server/connectivity/Tethering;->CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

    move-object/from16 v0, v40

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v40

    if-eqz v40, :cond_6

    invoke-static {}, Landroid/util/GeneralUtil;->isTablet()Z

    move-result v40

    if-nez v40, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v40, v0

    invoke-virtual/range {v40 .. v40}, Lcom/android/server/connectivity/Tethering;->clearMaxApNotification()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto/16 :goto_2

    :cond_8
    add-int/lit8 v16, v16, 0x1

    goto/16 :goto_3

    :cond_9
    const-string/jumbo v40, "android.intent.action.CONFIGURATION_CHANGED"

    move-object/from16 v0, v40

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v40

    if-eqz v40, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v40, v0

    invoke-virtual/range {v40 .. v40}, Lcom/android/server/connectivity/Tethering;->updateConfiguration()V

    goto/16 :goto_1

    :cond_a
    const-string/jumbo v40, "android.intent.action.LOCALE_CHANGED"

    move-object/from16 v0, v40

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v40

    if-eqz v40, :cond_d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v40, v0

    invoke-static/range {v40 .. v40}, Lcom/android/server/connectivity/Tethering;->-get30(Lcom/android/server/connectivity/Tethering;)Z

    move-result v40

    if-eqz v40, :cond_b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v40, v0

    const/16 v41, 0x1

    invoke-static/range {v40 .. v41}, Lcom/android/server/connectivity/Tethering;->-set5(Lcom/android/server/connectivity/Tethering;Z)Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v40, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v41, v0

    invoke-static/range {v41 .. v41}, Lcom/android/server/connectivity/Tethering;->-get15(Lcom/android/server/connectivity/Tethering;)I

    move-result v41

    invoke-static/range {v40 .. v41}, Lcom/android/server/connectivity/Tethering;->-wrap17(Lcom/android/server/connectivity/Tethering;I)V

    goto/16 :goto_1

    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v40, v0

    invoke-static/range {v40 .. v40}, Lcom/android/server/connectivity/Tethering;->-get31(Lcom/android/server/connectivity/Tethering;)Z

    move-result v40

    if-eqz v40, :cond_c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v40, v0

    const/16 v41, 0x1

    invoke-static/range {v40 .. v41}, Lcom/android/server/connectivity/Tethering;->-set5(Lcom/android/server/connectivity/Tethering;Z)Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v40, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v41, v0

    invoke-static/range {v41 .. v41}, Lcom/android/server/connectivity/Tethering;->-get15(Lcom/android/server/connectivity/Tethering;)I

    move-result v41

    invoke-static/range {v40 .. v41}, Lcom/android/server/connectivity/Tethering;->-wrap18(Lcom/android/server/connectivity/Tethering;I)V

    goto/16 :goto_1

    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v40, v0

    invoke-static/range {v40 .. v40}, Lcom/android/server/connectivity/Tethering;->-get3(Lcom/android/server/connectivity/Tethering;)Z

    move-result v40

    if-eqz v40, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v40, v0

    const/16 v41, 0x1

    invoke-static/range {v40 .. v41}, Lcom/android/server/connectivity/Tethering;->-set5(Lcom/android/server/connectivity/Tethering;Z)Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v40, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v41, v0

    invoke-static/range {v41 .. v41}, Lcom/android/server/connectivity/Tethering;->-get15(Lcom/android/server/connectivity/Tethering;)I

    move-result v41

    invoke-static/range {v40 .. v41}, Lcom/android/server/connectivity/Tethering;->-wrap17(Lcom/android/server/connectivity/Tethering;I)V

    goto/16 :goto_1

    :cond_d
    const-string/jumbo v40, "com.samsung.android.net.wifi.WIFI_AP_STA_STATUS_CHANGED"

    move-object/from16 v0, v40

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v40

    if-eqz v40, :cond_1a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v40, v0

    invoke-static/range {v40 .. v40}, Lcom/android/server/connectivity/Tethering;->-get31(Lcom/android/server/connectivity/Tethering;)Z

    move-result v40

    if-nez v40, :cond_e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v40, v0

    invoke-static/range {v40 .. v40}, Lcom/android/server/connectivity/Tethering;->-get30(Lcom/android/server/connectivity/Tethering;)Z

    move-result v40

    if-eqz v40, :cond_1a

    :cond_e
    invoke-static {}, Lcom/android/server/connectivity/Tethering;->-get22()I

    move-result v40

    if-nez v40, :cond_1a

    const-string/jumbo v40, "EVENT"

    move-object/from16 v0, p2

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v36

    const-string/jumbo v40, "Tethering"

    new-instance v41, Ljava/lang/StringBuilder;

    invoke-direct/range {v41 .. v41}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v42, "[WIFI] onReceive() WIFI_AP_STA_STATUS_CHANGED_ACTION intent, type of EVENT: "

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    move-object/from16 v0, v41

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v41

    invoke-static/range {v40 .. v41}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v36, :cond_3

    const-string/jumbo v40, "NUM"

    const/16 v41, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v40

    move/from16 v2, v41

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v25

    if-gez v25, :cond_f

    const/16 v25, 0x0

    :cond_f
    invoke-static {}, Lcom/android/server/connectivity/Tethering;->-get4()I

    move-result v40

    move/from16 v0, v40

    move/from16 v1, v25

    if-ne v0, v1, :cond_10

    return-void

    :cond_10
    invoke-static {}, Lcom/android/server/connectivity/Tethering;->-get4()I

    move-result v40

    invoke-static/range {v40 .. v40}, Lcom/android/server/connectivity/Tethering;->-set11(I)I

    invoke-static/range {v25 .. v25}, Lcom/android/server/connectivity/Tethering;->-set3(I)I

    const-string/jumbo v40, "Tethering"

    new-instance v41, Ljava/lang/StringBuilder;

    invoke-direct/range {v41 .. v41}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v42, "**number of client: "

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    invoke-static {}, Lcom/android/server/connectivity/Tethering;->-get4()I

    move-result v42

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v41

    invoke-static/range {v40 .. v41}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v40, v0

    const/16 v41, 0x1

    invoke-static/range {v40 .. v41}, Lcom/android/server/connectivity/Tethering;->-set0(Lcom/android/server/connectivity/Tethering;Z)Z

    const-string/jumbo v40, "VZW"

    sget-object v41, Lcom/android/server/connectivity/Tethering;->CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

    invoke-virtual/range {v40 .. v41}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v40

    if-eqz v40, :cond_13

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v40, v0

    invoke-static/range {v40 .. v40}, Lcom/android/server/connectivity/Tethering;->-get7(Lcom/android/server/connectivity/Tethering;)Landroid/content/Context;

    move-result-object v40

    const-string/jumbo v41, "statusbar"

    invoke-virtual/range {v40 .. v41}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v33

    check-cast v33, Landroid/app/StatusBarManager;

    const/16 v18, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v40, v0

    invoke-static/range {v40 .. v40}, Lcom/android/server/connectivity/Tethering;->-get7(Lcom/android/server/connectivity/Tethering;)Landroid/content/Context;

    move-result-object v40

    const-string/jumbo v41, "wifi"

    invoke-virtual/range {v40 .. v41}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v39

    check-cast v39, Landroid/net/wifi/WifiManager;

    invoke-virtual/range {v39 .. v39}, Landroid/net/wifi/WifiManager;->isWifiApEnabled()Z

    move-result v40

    if-eqz v40, :cond_12

    invoke-static {}, Lcom/android/server/connectivity/Tethering;->-get4()I

    move-result v40

    sget-object v41, Lcom/android/server/connectivity/Tethering;->WIFI_AP_ON_ICON:[I

    move-object/from16 v0, v41

    array-length v0, v0

    move/from16 v41, v0

    move/from16 v0, v40

    move/from16 v1, v41

    if-le v0, v1, :cond_11

    sget-object v40, Lcom/android/server/connectivity/Tethering;->WIFI_AP_ON_ICON:[I

    sget-object v41, Lcom/android/server/connectivity/Tethering;->WIFI_AP_ON_ICON:[I

    move-object/from16 v0, v41

    array-length v0, v0

    move/from16 v41, v0

    add-int/lit8 v41, v41, -0x1

    aget v18, v40, v41

    :goto_4
    const-string/jumbo v40, "wifi_ap"

    const/16 v41, 0x0

    const/16 v42, 0x0

    move-object/from16 v0, v33

    move-object/from16 v1, v40

    move/from16 v2, v18

    move/from16 v3, v41

    move-object/from16 v4, v42

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/StatusBarManager;->setIcon(Ljava/lang/String;IILjava/lang/String;)V

    const-string/jumbo v40, "wifi_ap"

    const/16 v41, 0x1

    move-object/from16 v0, v33

    move-object/from16 v1, v40

    move/from16 v2, v41

    invoke-virtual {v0, v1, v2}, Landroid/app/StatusBarManager;->setIconVisibility(Ljava/lang/String;Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v40, v0

    const v41, 0x1080906

    invoke-static/range {v40 .. v41}, Lcom/android/server/connectivity/Tethering;->-wrap18(Lcom/android/server/connectivity/Tethering;I)V

    goto/16 :goto_1

    :cond_11
    sget-object v40, Lcom/android/server/connectivity/Tethering;->WIFI_AP_ON_ICON:[I

    invoke-static {}, Lcom/android/server/connectivity/Tethering;->-get4()I

    move-result v41

    aget v18, v40, v41

    goto :goto_4

    :cond_12
    const-string/jumbo v40, "Tethering"

    const-string/jumbo v41, "Wifi Ap is not enabled."

    invoke-static/range {v40 .. v41}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v40, "wifi_ap"

    const/16 v41, 0x0

    move-object/from16 v0, v33

    move-object/from16 v1, v40

    move/from16 v2, v41

    invoke-virtual {v0, v1, v2}, Landroid/app/StatusBarManager;->setIconVisibility(Ljava/lang/String;Z)V

    const-string/jumbo v40, "wifi_ap"

    move-object/from16 v0, v33

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Landroid/app/StatusBarManager;->removeIcon(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_13
    const-string/jumbo v40, "SPRINT"

    sget-object v41, Lcom/android/server/connectivity/Tethering;->CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

    invoke-virtual/range {v40 .. v41}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v40

    if-eqz v40, :cond_14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v40, v0

    const v41, 0x1080905

    invoke-static/range {v40 .. v41}, Lcom/android/server/connectivity/Tethering;->-wrap18(Lcom/android/server/connectivity/Tethering;I)V

    goto/16 :goto_1

    :cond_14
    const-string/jumbo v40, "TMO"

    sget-object v41, Lcom/android/server/connectivity/Tethering;->CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

    invoke-virtual/range {v40 .. v41}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v40

    if-nez v40, :cond_15

    const-string/jumbo v40, "NEWCO"

    sget-object v41, Lcom/android/server/connectivity/Tethering;->CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

    invoke-virtual/range {v40 .. v41}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v40

    if-eqz v40, :cond_16

    :cond_15
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v40, v0

    const v41, 0x1080902

    invoke-static/range {v40 .. v41}, Lcom/android/server/connectivity/Tethering;->-wrap17(Lcom/android/server/connectivity/Tethering;I)V

    goto/16 :goto_1

    :cond_16
    const-string/jumbo v40, "DCM"

    invoke-static {}, Lcom/android/internal/telephony/TelephonyFeatures;->getMainOperatorName()Ljava/lang/String;

    move-result-object v41

    invoke-virtual/range {v40 .. v41}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v40

    if-nez v40, :cond_17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v40, v0

    const v41, 0x1080904

    invoke-static/range {v40 .. v41}, Lcom/android/server/connectivity/Tethering;->-wrap17(Lcom/android/server/connectivity/Tethering;I)V

    :cond_17
    const-string/jumbo v40, "ATT"

    sget-object v41, Lcom/android/server/connectivity/Tethering;->CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

    invoke-virtual/range {v40 .. v41}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v40

    if-nez v40, :cond_18

    const-string/jumbo v40, "AIO"

    invoke-static {}, Lcom/android/server/connectivity/Tethering;->readSalesCode()Ljava/lang/String;

    move-result-object v41

    invoke-virtual/range {v40 .. v41}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v40

    if-eqz v40, :cond_3

    :cond_18
    invoke-static {}, Landroid/util/GeneralUtil;->isTablet()Z

    move-result v40

    if-nez v40, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v40, v0

    invoke-static/range {v40 .. v40}, Lcom/android/server/connectivity/Tethering;->-get7(Lcom/android/server/connectivity/Tethering;)Landroid/content/Context;

    move-result-object v40

    const-string/jumbo v41, "wifi"

    invoke-virtual/range {v40 .. v41}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v39

    check-cast v39, Landroid/net/wifi/WifiManager;

    const-string/jumbo v40, "Tethering"

    new-instance v41, Ljava/lang/StringBuilder;

    invoke-direct/range {v41 .. v41}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v42, "createMaxApNotification(), clients = "

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    invoke-static {}, Lcom/android/server/connectivity/Tethering;->-get4()I

    move-result v42

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v41

    invoke-static/range {v40 .. v41}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/server/connectivity/Tethering;->-get4()I

    move-result v40

    invoke-virtual/range {v39 .. v39}, Landroid/net/wifi/WifiManager;->semGetWifiApMaxClient()I

    move-result v41

    move/from16 v0, v40

    move/from16 v1, v41

    if-lt v0, v1, :cond_19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v40, v0

    invoke-virtual/range {v40 .. v40}, Lcom/android/server/connectivity/Tethering;->createMaxApNotification()V

    goto/16 :goto_1

    :cond_19
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v40, v0

    invoke-virtual/range {v40 .. v40}, Lcom/android/server/connectivity/Tethering;->clearMaxApNotification()V

    goto/16 :goto_1

    :cond_1a
    const-string/jumbo v40, "ATT"

    sget-object v41, Lcom/android/server/connectivity/Tethering;->CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

    invoke-virtual/range {v40 .. v41}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v40

    if-eqz v40, :cond_1b

    const-string/jumbo v40, "com.samsung.android.net.wifi.MAXAP_NOTI"

    move-object/from16 v0, v40

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v40

    if-eqz v40, :cond_1b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v40, v0

    invoke-virtual/range {v40 .. v40}, Lcom/android/server/connectivity/Tethering;->clearMaxApNotification()V

    goto/16 :goto_1

    :cond_1b
    const-string/jumbo v40, "android.net.wifi.wifiap_power_mode_alarm"

    move-object/from16 v0, v40

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v40

    if-eqz v40, :cond_23

    const-string/jumbo v40, "wifiap_power_mode_alarm_option"

    const/16 v41, 0x3

    move-object/from16 v0, p2

    move-object/from16 v1, v40

    move/from16 v2, v41

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v26

    if-nez v26, :cond_1f

    :try_start_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v40, v0

    invoke-static/range {v40 .. v40}, Lcom/android/server/connectivity/Tethering;->-get7(Lcom/android/server/connectivity/Tethering;)Landroid/content/Context;

    move-result-object v40

    invoke-virtual/range {v40 .. v40}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v40

    const-string/jumbo v41, "wifi_ap_plugged_type"

    invoke-static/range {v40 .. v41}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_3
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_3 .. :try_end_3} :catch_0

    move-result v28

    :goto_5
    const-string/jumbo v40, "TMO"

    sget-object v41, Lcom/android/server/connectivity/Tethering;->CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

    invoke-virtual/range {v40 .. v41}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v40

    if-eqz v40, :cond_1c

    if-nez v28, :cond_3

    :cond_1c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v40, v0

    invoke-static/range {v40 .. v40}, Lcom/android/server/connectivity/Tethering;->-get7(Lcom/android/server/connectivity/Tethering;)Landroid/content/Context;

    move-result-object v40

    invoke-virtual/range {v40 .. v40}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v40

    const-string/jumbo v41, "wifi_ap_time_out_value"

    invoke-static {}, Lcom/android/server/connectivity/Tethering;->-get5()I

    move-result v42

    invoke-static/range {v40 .. v42}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v30

    const-string/jumbo v40, "Tethering"

    new-instance v41, Ljava/lang/StringBuilder;

    invoke-direct/range {v41 .. v41}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v42, "ALARM_START : set "

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    move-object/from16 v0, v41

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v41

    const-string/jumbo v42, " sec"

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v41

    invoke-static/range {v40 .. v41}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v30, :cond_1d

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v40

    move/from16 v0, v30

    int-to-long v0, v0

    move-wide/from16 v42, v0

    const-wide/16 v44, 0x3e8

    mul-long v42, v42, v44

    add-long v14, v40, v42

    new-instance v7, Landroid/content/Intent;

    const-string/jumbo v40, "android.net.wifi.wifiap_power_mode_alarm"

    move-object/from16 v0, v40

    invoke-direct {v7, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v40, "wifiap_power_mode_alarm_option"

    const/16 v41, 0x1

    move-object/from16 v0, v40

    move/from16 v1, v41

    invoke-virtual {v7, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v40, v0

    invoke-static/range {v40 .. v40}, Lcom/android/server/connectivity/Tethering;->-get7(Lcom/android/server/connectivity/Tethering;)Landroid/content/Context;

    move-result-object v40

    const/16 v41, 0x0

    const/high16 v42, 0x10000000

    move-object/from16 v0, v40

    move/from16 v1, v41

    move/from16 v2, v42

    invoke-static {v0, v1, v7, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v27

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v40, v0

    invoke-static/range {v40 .. v40}, Lcom/android/server/connectivity/Tethering;->-get7(Lcom/android/server/connectivity/Tethering;)Landroid/content/Context;

    move-result-object v40

    const-string/jumbo v41, "alarm"

    invoke-virtual/range {v40 .. v41}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/app/AlarmManager;

    const/16 v40, 0x0

    move/from16 v0, v40

    move-object/from16 v1, v27

    invoke-virtual {v8, v0, v14, v15, v1}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    const/16 v40, 0x0

    invoke-static/range {v40 .. v40}, Lcom/android/server/connectivity/Tethering;->-set1(Z)Z

    const/16 v40, 0x1

    invoke-static/range {v40 .. v40}, Lcom/android/server/connectivity/Tethering;->-set2(Z)Z

    goto/16 :goto_1

    :catch_0
    move-exception v11

    const/16 v28, 0x0

    goto/16 :goto_5

    :cond_1d
    invoke-static {}, Lcom/android/server/connectivity/Tethering;->-get2()Z

    move-result v40

    if-eqz v40, :cond_1e

    new-instance v7, Landroid/content/Intent;

    const-string/jumbo v40, "android.net.wifi.wifiap_power_mode_alarm"

    move-object/from16 v0, v40

    invoke-direct {v7, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v40, "wifiap_power_mode_alarm_option"

    const/16 v41, 0x1

    move-object/from16 v0, v40

    move/from16 v1, v41

    invoke-virtual {v7, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v40, v0

    invoke-static/range {v40 .. v40}, Lcom/android/server/connectivity/Tethering;->-get7(Lcom/android/server/connectivity/Tethering;)Landroid/content/Context;

    move-result-object v40

    const/16 v41, 0x0

    const/high16 v42, 0x10000000

    move-object/from16 v0, v40

    move/from16 v1, v41

    move/from16 v2, v42

    invoke-static {v0, v1, v7, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v27

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v40, v0

    invoke-static/range {v40 .. v40}, Lcom/android/server/connectivity/Tethering;->-get7(Lcom/android/server/connectivity/Tethering;)Landroid/content/Context;

    move-result-object v40

    const-string/jumbo v41, "alarm"

    invoke-virtual/range {v40 .. v41}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/app/AlarmManager;

    move-object/from16 v0, v27

    invoke-virtual {v8, v0}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    :cond_1e
    const/16 v40, 0x0

    invoke-static/range {v40 .. v40}, Lcom/android/server/connectivity/Tethering;->-set2(Z)Z

    goto/16 :goto_1

    :cond_1f
    const/16 v40, 0x4

    move/from16 v0, v26

    move/from16 v1, v40

    if-ne v0, v1, :cond_20

    const-string/jumbo v40, "Tethering"

    new-instance v41, Ljava/lang/StringBuilder;

    invoke-direct/range {v41 .. v41}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v42, "WIFIAP_POWER_MODE_VALUE_CHANGED, clients = "

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    invoke-static {}, Lcom/android/server/connectivity/Tethering;->-get4()I

    move-result v42

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v41

    invoke-static/range {v40 .. v41}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/server/connectivity/Tethering;->-get4()I

    move-result v40

    if-nez v40, :cond_3

    const-string/jumbo v40, "Tethering"

    const-string/jumbo v41, "ALARM_START because of WIFIAP_POWER_MODE_VALUE_CHANGED"

    invoke-static/range {v40 .. v41}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v40, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v41, v0

    invoke-static/range {v41 .. v41}, Lcom/android/server/connectivity/Tethering;->-get7(Lcom/android/server/connectivity/Tethering;)Landroid/content/Context;

    move-result-object v41

    const/16 v42, 0x0

    invoke-static/range {v40 .. v42}, Lcom/android/server/connectivity/Tethering;->-wrap14(Lcom/android/server/connectivity/Tethering;Landroid/content/Context;I)V

    goto/16 :goto_1

    :cond_20
    const/16 v40, 0x1

    move/from16 v0, v26

    move/from16 v1, v40

    if-ne v0, v1, :cond_22

    const-string/jumbo v40, "Tethering"

    const-string/jumbo v41, "ALARM_EXPIRE"

    invoke-static/range {v40 .. v41}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v40, 0x1

    invoke-static/range {v40 .. v40}, Lcom/android/server/connectivity/Tethering;->-set1(Z)Z

    const/16 v40, 0x0

    invoke-static/range {v40 .. v40}, Lcom/android/server/connectivity/Tethering;->-set2(Z)Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v40, v0

    invoke-static/range {v40 .. v40}, Lcom/android/server/connectivity/Tethering;->-get7(Lcom/android/server/connectivity/Tethering;)Landroid/content/Context;

    move-result-object v40

    const-string/jumbo v41, "power"

    invoke-virtual/range {v40 .. v41}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Landroid/os/PowerManager;

    const-string/jumbo v40, "MobileAPCloseService"

    const/16 v41, 0x1

    move-object/from16 v0, v29

    move/from16 v1, v41

    move-object/from16 v2, v40

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v23

    :try_start_4
    invoke-virtual/range {v23 .. v23}, Landroid/os/PowerManager$WakeLock;->acquire()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1

    :goto_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v40, v0

    invoke-static/range {v40 .. v40}, Lcom/android/server/connectivity/Tethering;->-get7(Lcom/android/server/connectivity/Tethering;)Landroid/content/Context;

    move-result-object v40

    const-string/jumbo v41, "wifi"

    invoke-virtual/range {v40 .. v41}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v39

    check-cast v39, Landroid/net/wifi/WifiManager;

    invoke-virtual/range {v39 .. v39}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result v38

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v40, v0

    invoke-static/range {v40 .. v40}, Lcom/android/server/connectivity/Tethering;->-get7(Lcom/android/server/connectivity/Tethering;)Landroid/content/Context;

    move-result-object v40

    invoke-virtual/range {v40 .. v40}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v40

    const-string/jumbo v41, "wifi_ap_time_out_value"

    invoke-static {}, Lcom/android/server/connectivity/Tethering;->-get5()I

    move-result v42

    invoke-static/range {v40 .. v42}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v30

    const-string/jumbo v40, "Tethering"

    new-instance v41, Ljava/lang/StringBuilder;

    invoke-direct/range {v41 .. v41}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v42, "powermode_value = "

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    move-object/from16 v0, v41

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v41

    invoke-static/range {v40 .. v41}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/server/connectivity/Tethering;->-get4()I

    move-result v40

    if-nez v40, :cond_21

    const/16 v40, 0xd

    move/from16 v0, v38

    move/from16 v1, v40

    if-ne v0, v1, :cond_21

    if-eqz v30, :cond_21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v40, v0

    invoke-static/range {v40 .. v40}, Lcom/android/server/connectivity/Tethering;->-get7(Lcom/android/server/connectivity/Tethering;)Landroid/content/Context;

    move-result-object v40

    const-string/jumbo v41, "connectivity"

    invoke-virtual/range {v40 .. v41}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Landroid/net/ConnectivityManager;

    const-string/jumbo v40, "Tethering"

    const-string/jumbo v41, "--> data disable"

    invoke-static/range {v40 .. v41}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v40, "Tethering"

    const-string/jumbo v41, "--> ap disable"

    invoke-static/range {v40 .. v41}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v40, 0x0

    const/16 v41, 0x0

    invoke-virtual/range {v39 .. v41}, Landroid/net/wifi/WifiManager;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)Z

    :cond_21
    if-eqz v23, :cond_3

    :try_start_5
    invoke-virtual/range {v23 .. v23}, Landroid/os/PowerManager$WakeLock;->release()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_2

    const/16 v23, 0x0

    goto/16 :goto_1

    :catch_1
    move-exception v13

    const-string/jumbo v40, "Tethering"

    new-instance v41, Ljava/lang/StringBuilder;

    invoke-direct/range {v41 .. v41}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v42, "Cannot acquire wake lock ~~"

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    move-object/from16 v0, v41

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v41

    invoke-static/range {v40 .. v41}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6

    :catch_2
    move-exception v13

    const-string/jumbo v40, "Tethering"

    new-instance v41, Ljava/lang/StringBuilder;

    invoke-direct/range {v41 .. v41}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v42, "Cannot release wake lock ~~"

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    move-object/from16 v0, v41

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v41

    invoke-static/range {v40 .. v41}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :cond_22
    const/16 v40, 0x2

    move/from16 v0, v26

    move/from16 v1, v40

    if-ne v0, v1, :cond_3

    const-string/jumbo v40, "Tethering"

    const-string/jumbo v41, "ALARM_STOP"

    invoke-static/range {v40 .. v41}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/server/connectivity/Tethering;->-get1()Z

    move-result v40

    if-nez v40, :cond_3

    invoke-static {}, Lcom/android/server/connectivity/Tethering;->-get2()Z

    move-result v40

    if-eqz v40, :cond_3

    new-instance v7, Landroid/content/Intent;

    const-string/jumbo v40, "android.net.wifi.wifiap_power_mode_alarm"

    move-object/from16 v0, v40

    invoke-direct {v7, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v40, "wifiap_power_mode_alarm_option"

    const/16 v41, 0x1

    move-object/from16 v0, v40

    move/from16 v1, v41

    invoke-virtual {v7, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v40, v0

    invoke-static/range {v40 .. v40}, Lcom/android/server/connectivity/Tethering;->-get7(Lcom/android/server/connectivity/Tethering;)Landroid/content/Context;

    move-result-object v40

    const/16 v41, 0x0

    const/high16 v42, 0x10000000

    move-object/from16 v0, v40

    move/from16 v1, v41

    move/from16 v2, v42

    invoke-static {v0, v1, v7, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v27

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v40, v0

    invoke-static/range {v40 .. v40}, Lcom/android/server/connectivity/Tethering;->-get7(Lcom/android/server/connectivity/Tethering;)Landroid/content/Context;

    move-result-object v40

    const-string/jumbo v41, "alarm"

    invoke-virtual/range {v40 .. v41}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/app/AlarmManager;

    move-object/from16 v0, v27

    invoke-virtual {v8, v0}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    const/16 v40, 0x0

    invoke-static/range {v40 .. v40}, Lcom/android/server/connectivity/Tethering;->-set2(Z)Z

    goto/16 :goto_1

    :cond_23
    const-string/jumbo v40, "android.net.wifi.wifiap_stand_by_mode_start"

    move-object/from16 v0, v40

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v40

    if-eqz v40, :cond_24

    const-string/jumbo v40, "EVENT"

    move-object/from16 v0, p2

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v36

    if-eqz v36, :cond_3

    const-string/jumbo v40, "Tethering"

    new-instance v41, Ljava/lang/StringBuilder;

    invoke-direct/range {v41 .. v41}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v42, "[WIFI] onReceive() WIFIAP_STAND_BY_MODE_START intent, type of EVENT: "

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    move-object/from16 v0, v41

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v41

    invoke-static/range {v40 .. v41}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v40, "no_data"

    move-object/from16 v0, v36

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v40

    if-eqz v40, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v40, v0

    invoke-static/range {v40 .. v40}, Lcom/android/server/connectivity/Tethering;->-get7(Lcom/android/server/connectivity/Tethering;)Landroid/content/Context;

    move-result-object v40

    const-string/jumbo v41, "wifi"

    invoke-virtual/range {v40 .. v41}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v39

    check-cast v39, Landroid/net/wifi/WifiManager;

    const-string/jumbo v40, "Tethering"

    const-string/jumbo v41, "--> ap disable"

    invoke-static/range {v40 .. v41}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v40, 0x0

    const/16 v41, 0x0

    invoke-virtual/range {v39 .. v41}, Landroid/net/wifi/WifiManager;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)Z

    goto/16 :goto_1

    :cond_24
    const-string/jumbo v40, "android.intent.action.BATTERY_CHANGED"

    move-object/from16 v0, v40

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v40

    if-eqz v40, :cond_2d

    const-string/jumbo v40, "TMO"

    sget-object v41, Lcom/android/server/connectivity/Tethering;->CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

    invoke-virtual/range {v40 .. v41}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v40

    if-nez v40, :cond_25

    const-string/jumbo v40, "NEWCO"

    sget-object v41, Lcom/android/server/connectivity/Tethering;->CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

    invoke-virtual/range {v40 .. v41}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v40

    if-eqz v40, :cond_3

    :cond_25
    const-string/jumbo v40, "level"

    const/16 v41, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v40

    move/from16 v2, v41

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v22

    const-string/jumbo v40, "plugged"

    const/16 v41, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v40

    move/from16 v2, v41

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v28

    const-string/jumbo v40, "Tethering"

    new-instance v41, Ljava/lang/StringBuilder;

    invoke-direct/range {v41 .. v41}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v42, "BATTERY_CHANGED, level = "

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    move-object/from16 v0, v41

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v41

    const-string/jumbo v42, "lowBatteryThreshold = "

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    const/16 v42, 0xf

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v41

    invoke-static/range {v40 .. v41}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v40, v0

    invoke-static/range {v40 .. v40}, Lcom/android/server/connectivity/Tethering;->-get30(Lcom/android/server/connectivity/Tethering;)Z

    move-result v40

    if-nez v40, :cond_26

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v40, v0

    invoke-static/range {v40 .. v40}, Lcom/android/server/connectivity/Tethering;->-get31(Lcom/android/server/connectivity/Tethering;)Z

    move-result v40

    if-eqz v40, :cond_2b

    :cond_26
    const/16 v40, 0xf

    move/from16 v0, v22

    move/from16 v1, v40

    if-gt v0, v1, :cond_2b

    if-nez v28, :cond_2b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v40, v0

    invoke-static/range {v40 .. v40}, Lcom/android/server/connectivity/Tethering;->-get16(Lcom/android/server/connectivity/Tethering;)Landroid/app/Notification;

    move-result-object v40

    if-nez v40, :cond_2b

    const-string/jumbo v40, "Tethering"

    const-string/jumbo v41, "showLowBatteryNotification"

    invoke-static/range {v40 .. v41}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v40, v0

    invoke-static/range {v40 .. v40}, Lcom/android/server/connectivity/Tethering;->-wrap16(Lcom/android/server/connectivity/Tethering;)V

    :cond_27
    :goto_7
    if-nez v28, :cond_28

    invoke-static {}, Lcom/android/server/connectivity/Tethering;->-get13()Z

    move-result v40

    if-nez v40, :cond_29

    :cond_28
    if-eqz v28, :cond_3

    invoke-static {}, Lcom/android/server/connectivity/Tethering;->-get13()Z

    move-result v40

    if-nez v40, :cond_3

    :cond_29
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v40, v0

    invoke-static/range {v40 .. v40}, Lcom/android/server/connectivity/Tethering;->-get7(Lcom/android/server/connectivity/Tethering;)Landroid/content/Context;

    move-result-object v40

    invoke-virtual/range {v40 .. v40}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v40

    const-string/jumbo v41, "wifi_ap_plugged_type"

    move-object/from16 v0, v40

    move-object/from16 v1, v41

    move/from16 v2, v28

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    new-instance v17, Landroid/content/Intent;

    const-string/jumbo v40, "com.samsung.settings.wifi.PLUG_STATE_CHANGED"

    move-object/from16 v0, v17

    move-object/from16 v1, v40

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v40, "wifiap_plug_state_changed_option"

    move-object/from16 v0, v17

    move-object/from16 v1, v40

    move/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v40, v0

    invoke-static/range {v40 .. v40}, Lcom/android/server/connectivity/Tethering;->-get12(Lcom/android/server/connectivity/Tethering;)Z

    move-result v40

    if-eqz v40, :cond_2a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v40, v0

    invoke-static/range {v40 .. v40}, Lcom/android/server/connectivity/Tethering;->-get7(Lcom/android/server/connectivity/Tethering;)Landroid/content/Context;

    move-result-object v40

    move-object/from16 v0, v40

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    :cond_2a
    if-nez v28, :cond_2c

    const-string/jumbo v40, "Tethering"

    const-string/jumbo v41, "Unplugged"

    invoke-static/range {v40 .. v41}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v40, 0x0

    invoke-static/range {v40 .. v40}, Lcom/android/server/connectivity/Tethering;->-set9(Z)Z

    goto/16 :goto_1

    :cond_2b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v40, v0

    invoke-static/range {v40 .. v40}, Lcom/android/server/connectivity/Tethering;->-get16(Lcom/android/server/connectivity/Tethering;)Landroid/app/Notification;

    move-result-object v40

    if-eqz v40, :cond_27

    const-string/jumbo v40, "Tethering"

    const-string/jumbo v41, "clearLowBatteryNotification"

    invoke-static/range {v40 .. v41}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v40, v0

    invoke-static/range {v40 .. v40}, Lcom/android/server/connectivity/Tethering;->-wrap8(Lcom/android/server/connectivity/Tethering;)V

    goto/16 :goto_7

    :cond_2c
    const-string/jumbo v40, "Tethering"

    const-string/jumbo v41, "Plugged"

    invoke-static/range {v40 .. v41}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v40, 0x1

    invoke-static/range {v40 .. v40}, Lcom/android/server/connectivity/Tethering;->-set9(Z)Z

    goto/16 :goto_1

    :cond_2d
    const-string/jumbo v40, "android.intent.action.BOOT_COMPLETED"

    move-object/from16 v0, v40

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v40

    if-eqz v40, :cond_30

    const-string/jumbo v40, "Tethering"

    const-string/jumbo v41, "Boot complete."

    invoke-static/range {v40 .. v41}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v40, v0

    const/16 v41, 0x1

    invoke-static/range {v40 .. v41}, Lcom/android/server/connectivity/Tethering;->-set8(Lcom/android/server/connectivity/Tethering;Z)Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v40, v0

    invoke-static/range {v40 .. v40}, Lcom/android/server/connectivity/Tethering;->-get14(Lcom/android/server/connectivity/Tethering;)Lcom/samsung/android/knox/custom/SystemManager;

    move-result-object v40

    if-nez v40, :cond_2e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v40, v0

    invoke-static {}, Lcom/samsung/android/knox/custom/SystemManager;->getInstance()Lcom/samsung/android/knox/custom/SystemManager;

    move-result-object v41

    invoke-static/range {v40 .. v41}, Lcom/android/server/connectivity/Tethering;->-set10(Lcom/android/server/connectivity/Tethering;Lcom/samsung/android/knox/custom/SystemManager;)Lcom/samsung/android/knox/custom/SystemManager;

    :cond_2e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v40, v0

    invoke-static/range {v40 .. v40}, Lcom/android/server/connectivity/Tethering;->-get14(Lcom/android/server/connectivity/Tethering;)Lcom/samsung/android/knox/custom/SystemManager;

    move-result-object v40

    if-eqz v40, :cond_2f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v40, v0

    invoke-static/range {v40 .. v40}, Lcom/android/server/connectivity/Tethering;->-get14(Lcom/android/server/connectivity/Tethering;)Lcom/samsung/android/knox/custom/SystemManager;

    move-result-object v40

    invoke-virtual/range {v40 .. v40}, Lcom/samsung/android/knox/custom/SystemManager;->getUsbNetState()Z

    move-result v40

    if-eqz v40, :cond_2f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v40, v0

    invoke-static/range {v40 .. v40}, Lcom/android/server/connectivity/Tethering;->-get7(Lcom/android/server/connectivity/Tethering;)Landroid/content/Context;

    move-result-object v40

    invoke-virtual/range {v40 .. v40}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v40

    const-string/jumbo v41, "adb_enabled"

    const/16 v42, 0x0

    invoke-static/range {v40 .. v42}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v40

    if-nez v40, :cond_2f

    const-string/jumbo v40, "Tethering"

    const-string/jumbo v41, "Activate USB Net on boot up"

    invoke-static/range {v40 .. v41}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v40, v0

    const/16 v41, 0x1

    invoke-virtual/range {v40 .. v41}, Lcom/android/server/connectivity/Tethering;->setUsbTethering(Z)I

    goto/16 :goto_1

    :cond_2f
    const-string/jumbo v40, "enabled"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v41, v0

    invoke-static/range {v41 .. v41}, Lcom/android/server/connectivity/Tethering;->-get7(Lcom/android/server/connectivity/Tethering;)Landroid/content/Context;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v41

    const-string/jumbo v42, "TETHER_ALWAYS_ON_MODE"

    invoke-static/range {v41 .. v42}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v41

    invoke-virtual/range {v40 .. v41}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v40

    if-eqz v40, :cond_3

    const-string/jumbo v40, "Tethering"

    const-string/jumbo v41, "[Tethering always mode] call setUsbTethering()"

    invoke-static/range {v40 .. v41}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v40, "net.tether.always"

    const-string/jumbo v41, "1"

    invoke-static/range {v40 .. v41}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v40, v0

    const/16 v41, 0x1

    invoke-virtual/range {v40 .. v41}, Lcom/android/server/connectivity/Tethering;->setUsbTethering(Z)I

    goto/16 :goto_1

    :cond_30
    const-string/jumbo v40, "android.app.action.DEVICE_POLICY_MANAGER_STATE_CHANGED"

    move-object/from16 v0, v40

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v40

    if-eqz v40, :cond_34

    const-string/jumbo v40, "Tethering"

    const-string/jumbo v41, "[ActiveSync] onReceive() ACTION_DEVICE_POLICY_MANAGER_STATE_CHANGED intent"

    invoke-static/range {v40 .. v41}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v40, v0

    invoke-static/range {v40 .. v40}, Lcom/android/server/connectivity/Tethering;->-wrap2(Lcom/android/server/connectivity/Tethering;)Z

    move-result v40

    if-eqz v40, :cond_33

    const-string/jumbo v40, "Tethering"

    const-string/jumbo v41, "[ActiveSync] onReceive() Internet sharing has banned due to security policy."

    invoke-static/range {v40 .. v41}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v40, "network_management"

    invoke-static/range {v40 .. v40}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v9

    invoke-static {v9}, Landroid/os/INetworkManagementService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/INetworkManagementService;

    move-result-object v32

    const/16 v40, 0x0

    move/from16 v0, v40

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v20, v0

    :try_start_6
    invoke-interface/range {v32 .. v32}, Landroid/os/INetworkManagementService;->listInterfaces()[Ljava/lang/String;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    move-result-object v20

    const/16 v40, 0x0

    move-object/from16 v0, v20

    array-length v0, v0

    move/from16 v41, v0

    :goto_8
    move/from16 v0, v40

    move/from16 v1, v41

    if-ge v0, v1, :cond_3

    aget-object v19, v20, v40

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v42, v0

    move-object/from16 v0, v42

    move-object/from16 v1, v19

    invoke-static {v0, v1}, Lcom/android/server/connectivity/Tethering;->-wrap4(Lcom/android/server/connectivity/Tethering;Ljava/lang/String;)Z

    move-result v42

    if-eqz v42, :cond_32

    const-string/jumbo v42, "Tethering"

    new-instance v43, Ljava/lang/StringBuilder;

    invoke-direct/range {v43 .. v43}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v44, "[ActiveSync] onReceive() Internet sharing is banned on "

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    move-object/from16 v0, v43

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    invoke-virtual/range {v43 .. v43}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v43

    invoke-static/range {v42 .. v43}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v42, v0

    invoke-static/range {v42 .. v42}, Lcom/android/server/connectivity/Tethering;->-get21(Lcom/android/server/connectivity/Tethering;)Ljava/lang/Object;

    move-result-object v42

    monitor-enter v42

    :try_start_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v43, v0

    invoke-static/range {v43 .. v43}, Lcom/android/server/connectivity/Tethering;->-get26(Lcom/android/server/connectivity/Tethering;)Landroid/util/ArrayMap;

    move-result-object v43

    move-object/from16 v0, v43

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v34

    check-cast v34, Lcom/android/server/connectivity/Tethering$TetherState;

    if-eqz v34, :cond_31

    move-object/from16 v0, v34

    iget v0, v0, Lcom/android/server/connectivity/Tethering$TetherState;->mLastState:I

    move/from16 v43, v0

    const/16 v44, 0x2

    move/from16 v0, v43

    move/from16 v1, v44

    if-ne v0, v1, :cond_31

    const-string/jumbo v43, "Tethering"

    new-instance v44, Ljava/lang/StringBuilder;

    invoke-direct/range {v44 .. v44}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v45, "[ActiveSync] onReceive() Untether on "

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    move-object/from16 v0, v44

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    invoke-virtual/range {v44 .. v44}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v44

    invoke-static/range {v43 .. v44}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v43, v0

    move-object/from16 v0, v43

    move-object/from16 v1, v19

    invoke-static {v0, v1}, Lcom/android/server/connectivity/Tethering;->-wrap7(Lcom/android/server/connectivity/Tethering;Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    :cond_31
    monitor-exit v42

    :cond_32
    add-int/lit8 v40, v40, 0x1

    goto/16 :goto_8

    :catch_3
    move-exception v12

    const-string/jumbo v40, "Tethering"

    new-instance v41, Ljava/lang/StringBuilder;

    invoke-direct/range {v41 .. v41}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v42, "[ActiveSync] onReceive() Error listing Interfaces :"

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    move-object/from16 v0, v41

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v41

    invoke-static/range {v40 .. v41}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catchall_2
    move-exception v40

    monitor-exit v42

    throw v40

    :cond_33
    const-string/jumbo v40, "Tethering"

    const-string/jumbo v41, "[ActiveSync] onReceive() Internet sharing is NOT banned any more."

    invoke-static/range {v40 .. v41}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :cond_34
    const-string/jumbo v40, "com.samsung.android.intent.action.TETHERING_DENIED"

    move-object/from16 v0, v40

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v40

    if-eqz v40, :cond_3

    const-string/jumbo v40, "KDI"

    invoke-static {}, Lcom/android/internal/telephony/TelephonyFeatures;->getMainOperatorName()Ljava/lang/String;

    move-result-object v41

    invoke-virtual/range {v40 .. v41}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v40

    if-eqz v40, :cond_3

    const-string/jumbo v40, "Tethering"

    const-string/jumbo v41, "Tethering Denied"

    invoke-static/range {v40 .. v41}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v40, v0

    invoke-virtual/range {v40 .. v40}, Lcom/android/server/connectivity/Tethering;->getTetheredIfaces()[Ljava/lang/String;

    move-result-object v20

    const/16 v40, 0x0

    move-object/from16 v0, v20

    array-length v0, v0

    move/from16 v41, v0

    :goto_9
    move/from16 v0, v40

    move/from16 v1, v41

    if-ge v0, v1, :cond_3

    aget-object v19, v20, v40

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v42, v0

    move-object/from16 v0, v42

    move-object/from16 v1, v19

    invoke-static {v0, v1}, Lcom/android/server/connectivity/Tethering;->-wrap5(Lcom/android/server/connectivity/Tethering;Ljava/lang/String;)Z

    move-result v42

    if-eqz v42, :cond_36

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v42, v0

    invoke-static/range {v42 .. v42}, Lcom/android/server/connectivity/Tethering;->-get7(Lcom/android/server/connectivity/Tethering;)Landroid/content/Context;

    move-result-object v42

    const-string/jumbo v43, "wifi"

    invoke-virtual/range {v42 .. v43}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v39

    check-cast v39, Landroid/net/wifi/WifiManager;

    const/16 v42, 0x0

    const/16 v43, 0x0

    move-object/from16 v0, v39

    move-object/from16 v1, v42

    move/from16 v2, v43

    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/WifiManager;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)Z

    :cond_35
    :goto_a
    add-int/lit8 v40, v40, 0x1

    goto :goto_9

    :cond_36
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v42, v0

    move-object/from16 v0, v42

    move-object/from16 v1, v19

    invoke-static {v0, v1}, Lcom/android/server/connectivity/Tethering;->-wrap1(Lcom/android/server/connectivity/Tethering;Ljava/lang/String;)Z

    move-result v42

    if-eqz v42, :cond_37

    const-string/jumbo v42, "Tethering"

    const-string/jumbo v43, "setBluetoothTethering"

    invoke-static/range {v42 .. v43}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v42, v0

    const/16 v43, 0x0

    const/16 v44, 0x0

    invoke-static/range {v42 .. v44}, Lcom/android/server/connectivity/Tethering;->-wrap15(Lcom/android/server/connectivity/Tethering;ZLandroid/os/ResultReceiver;)V

    goto :goto_a

    :cond_37
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v42, v0

    move-object/from16 v0, v42

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/server/connectivity/Tethering;->untether(Ljava/lang/String;)I

    move-result v31

    if-eqz v31, :cond_35

    const-string/jumbo v42, "Tethering"

    const-string/jumbo v43, "Tether off error"

    invoke-static/range {v42 .. v43}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a

    :pswitch_data_0
    .packed-switch 0xb
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
