.class Lcom/android/server/desktopmode/DesktopModeService$DesktopModeReceiver;
.super Landroid/content/BroadcastReceiver;
.source "DesktopModeService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/desktopmode/DesktopModeService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DesktopModeReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/desktopmode/DesktopModeService;


# direct methods
.method private constructor <init>(Lcom/android/server/desktopmode/DesktopModeService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/desktopmode/DesktopModeService$DesktopModeReceiver;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/desktopmode/DesktopModeService;Lcom/android/server/desktopmode/DesktopModeService$DesktopModeReceiver;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/desktopmode/DesktopModeService$DesktopModeReceiver;-><init>(Lcom/android/server/desktopmode/DesktopModeService;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 17

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/android/server/desktopmode/DesktopModeService;->-get0()Z

    move-result v12

    if-eqz v12, :cond_0

    invoke-static {}, Lcom/android/server/desktopmode/DesktopModeService;->-get1()Ljava/lang/String;

    move-result-object v12

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "onReceive(), action="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const-string/jumbo v12, "com.android.server.desktopmode.action.DESKTOP_MODE_UPDATE_REQUEST"

    invoke-virtual {v12, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_4

    const-string/jumbo v12, "com.android.server.desktopmode.extra.DESKTOP_MODE_STATE"

    const/4 v13, -0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v12, v13}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v12

    packed-switch v12, :pswitch_data_0

    :cond_1
    :goto_0
    return-void

    :pswitch_0
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/desktopmode/DesktopModeService$DesktopModeReceiver;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {v12}, Lcom/android/server/desktopmode/DesktopModeService;->-get23(Lcom/android/server/desktopmode/DesktopModeService;)Landroid/app/StatusBarManager;

    move-result-object v12

    invoke-virtual {v12}, Landroid/app/StatusBarManager;->collapsePanels()V

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/desktopmode/DesktopModeService$DesktopModeReceiver;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {v12}, Lcom/android/server/desktopmode/DesktopModeService;->-wrap3(Lcom/android/server/desktopmode/DesktopModeService;)I

    move-result v12

    if-nez v12, :cond_2

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/desktopmode/DesktopModeService$DesktopModeReceiver;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    const/4 v13, 0x1

    invoke-virtual {v12, v13}, Lcom/android/server/desktopmode/DesktopModeService;->scheduleUpdateDesktopMode(Z)V

    goto :goto_0

    :cond_2
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/desktopmode/DesktopModeService$DesktopModeReceiver;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    const/4 v13, 0x1

    invoke-virtual {v12, v13}, Lcom/android/server/desktopmode/DesktopModeService;->setHdmiSettings(Z)V

    goto :goto_0

    :pswitch_1
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/desktopmode/DesktopModeService$DesktopModeReceiver;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {v12}, Lcom/android/server/desktopmode/DesktopModeService;->-get23(Lcom/android/server/desktopmode/DesktopModeService;)Landroid/app/StatusBarManager;

    move-result-object v12

    invoke-virtual {v12}, Landroid/app/StatusBarManager;->collapsePanels()V

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/desktopmode/DesktopModeService$DesktopModeReceiver;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {v12}, Lcom/android/server/desktopmode/DesktopModeService;->-wrap3(Lcom/android/server/desktopmode/DesktopModeService;)I

    move-result v12

    const/4 v13, 0x1

    if-ne v12, v13, :cond_3

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/desktopmode/DesktopModeService$DesktopModeReceiver;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Lcom/android/server/desktopmode/DesktopModeService;->scheduleUpdateDesktopMode(Z)V

    goto :goto_0

    :cond_3
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/desktopmode/DesktopModeService$DesktopModeReceiver;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Lcom/android/server/desktopmode/DesktopModeService;->setHdmiSettings(Z)V

    goto :goto_0

    :pswitch_2
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/desktopmode/DesktopModeService$DesktopModeReceiver;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {v12}, Lcom/android/server/desktopmode/DesktopModeService;->-get23(Lcom/android/server/desktopmode/DesktopModeService;)Landroid/app/StatusBarManager;

    move-result-object v12

    invoke-virtual {v12}, Landroid/app/StatusBarManager;->collapsePanels()V

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/desktopmode/DesktopModeService$DesktopModeReceiver;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    const/4 v13, 0x1

    invoke-virtual {v12, v13}, Lcom/android/server/desktopmode/DesktopModeService;->scheduleUpdateDesktopMode(Z)V

    goto :goto_0

    :cond_4
    const-string/jumbo v12, "android.intent.action.TIME_TICK"

    invoke-virtual {v12, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_6

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/desktopmode/DesktopModeService$DesktopModeReceiver;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {v12}, Lcom/android/server/desktopmode/DesktopModeService;->-get11(Lcom/android/server/desktopmode/DesktopModeService;)Z

    move-result v12

    if-eqz v12, :cond_1

    invoke-static {}, Landroid/os/Process;->getFreeMemory()J

    move-result-wide v6

    const-wide/32 v12, 0x19000000

    cmp-long v12, v6, v12

    if-gez v12, :cond_1

    invoke-static {}, Lcom/android/server/desktopmode/DesktopModeService;->-get0()Z

    move-result v12

    if-eqz v12, :cond_5

    invoke-static {}, Lcom/android/server/desktopmode/DesktopModeService;->-get1()Ljava/lang/String;

    move-result-object v12

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "Low memory warning: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-wide/32 v14, 0x100000

    div-long v14, v6, v14

    invoke-virtual {v13, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, "MB"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/desktopmode/DesktopModeService$DesktopModeReceiver;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {v12}, Lcom/android/server/desktopmode/DesktopModeService;->-get25(Lcom/android/server/desktopmode/DesktopModeService;)Lcom/android/server/desktopmode/ToastManager;

    move-result-object v12

    sget v13, Lcom/samsung/android/framework/res/R$string;->dex_toast_low_memory_warning:I

    invoke-virtual {v12, v13}, Lcom/android/server/desktopmode/ToastManager;->showToast(I)V

    goto/16 :goto_0

    :cond_6
    const-string/jumbo v12, "com.android.server.desktopmode.action.TOUCHPAD_NOTIFICATION_PRESSED"

    invoke-virtual {v12, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_7

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/desktopmode/DesktopModeService$DesktopModeReceiver;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {v12}, Lcom/android/server/desktopmode/DesktopModeService;->-get23(Lcom/android/server/desktopmode/DesktopModeService;)Landroid/app/StatusBarManager;

    move-result-object v12

    invoke-virtual {v12}, Landroid/app/StatusBarManager;->collapsePanels()V

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/desktopmode/DesktopModeService$DesktopModeReceiver;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {v12}, Lcom/android/server/desktopmode/DesktopModeService;->-get9(Lcom/android/server/desktopmode/DesktopModeService;)Lcom/android/server/desktopmode/DesktopModeService$DesktopModeHandler;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/desktopmode/DesktopModeService$DesktopModeReceiver;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {v13}, Lcom/android/server/desktopmode/DesktopModeService;->-get9(Lcom/android/server/desktopmode/DesktopModeService;)Lcom/android/server/desktopmode/DesktopModeService$DesktopModeHandler;

    move-result-object v13

    const/4 v14, 0x2

    const/4 v15, 0x6

    const/16 v16, 0x0

    invoke-virtual/range {v13 .. v16}, Lcom/android/server/desktopmode/DesktopModeService$DesktopModeHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/android/server/desktopmode/DesktopModeService$DesktopModeHandler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    :cond_7
    const-string/jumbo v12, "android.intent.action.PHONE_STATE"

    invoke-virtual {v12, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_9

    sget-object v12, Landroid/telephony/TelephonyManager;->EXTRA_STATE_RINGING:Ljava/lang/String;

    const-string/jumbo v13, "state"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1

    invoke-static {}, Lcom/android/server/desktopmode/DesktopModeService;->-get0()Z

    move-result v12

    if-eqz v12, :cond_8

    invoke-static {}, Lcom/android/server/desktopmode/DesktopModeService;->-get1()Ljava/lang/String;

    move-result-object v12

    const-string/jumbo v13, "event incoming call!"

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/desktopmode/DesktopModeService$DesktopModeReceiver;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {v12}, Lcom/android/server/desktopmode/DesktopModeService;->-wrap9(Lcom/android/server/desktopmode/DesktopModeService;)V

    goto/16 :goto_0

    :cond_9
    const-string/jumbo v12, "android.bluetooth.device.action.ACL_DISCONNECTED"

    invoke-virtual {v12, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_c

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/desktopmode/DesktopModeService$DesktopModeReceiver;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {v12}, Lcom/android/server/desktopmode/DesktopModeService;->-get29(Lcom/android/server/desktopmode/DesktopModeService;)Z

    move-result v12

    if-nez v12, :cond_a

    return-void

    :cond_a
    const-string/jumbo v12, "com.samsung.bluetooth.device.extra.DISCONNECTION_REASON"

    const/4 v13, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v12, v13}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v11

    const-string/jumbo v12, "android.bluetooth.device.extra.DEVICE"

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Landroid/bluetooth/BluetoothDevice;

    if-eqz v4, :cond_1

    invoke-virtual {v4}, Landroid/bluetooth/BluetoothDevice;->getBluetoothClass()Landroid/bluetooth/BluetoothClass;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothClass;->semGetPeripheralMinorClass()I

    move-result v8

    invoke-static {}, Lcom/android/server/desktopmode/DesktopModeService;->-get0()Z

    move-result v12

    if-eqz v12, :cond_b

    invoke-static {}, Lcom/android/server/desktopmode/DesktopModeService;->-get1()Ljava/lang/String;

    move-result-object v12

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "minorClass="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-static {v8}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, ", reason="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b
    const/16 v12, 0x13

    if-ne v11, v12, :cond_1

    const/16 v12, 0x580

    if-ne v8, v12, :cond_1

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/desktopmode/DesktopModeService$DesktopModeReceiver;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    const/4 v13, 0x1

    invoke-static {v12, v13}, Lcom/android/server/desktopmode/DesktopModeService;->-set1(Lcom/android/server/desktopmode/DesktopModeService;Z)Z

    invoke-static {}, Lcom/android/server/desktopmode/DesktopModeService;->-get0()Z

    move-result v12

    if-eqz v12, :cond_1

    invoke-static {}, Lcom/android/server/desktopmode/DesktopModeService;->-get1()Ljava/lang/String;

    move-result-object v12

    const-string/jumbo v13, "mIsBtMouseDeepSleep=true"

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_c
    const-string/jumbo v12, "com.samsung.android.intent.action.WALLPAPER_ENGINE_SHOWN"

    invoke-virtual {v12, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_d

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/desktopmode/DesktopModeService$DesktopModeReceiver;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    const/4 v13, 0x1

    invoke-static {v12, v13}, Lcom/android/server/desktopmode/DesktopModeService;->-set8(Lcom/android/server/desktopmode/DesktopModeService;Z)Z

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/desktopmode/DesktopModeService$DesktopModeReceiver;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {v12}, Lcom/android/server/desktopmode/DesktopModeService;->-wrap18(Lcom/android/server/desktopmode/DesktopModeService;)V

    goto/16 :goto_0

    :cond_d
    const-string/jumbo v12, "com.samsung.pen.INSERT"

    invoke-virtual {v12, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_11

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/desktopmode/DesktopModeService$DesktopModeReceiver;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {v12}, Lcom/android/server/desktopmode/DesktopModeService;->-get19(Lcom/android/server/desktopmode/DesktopModeService;)Z

    move-result v12

    if-eqz v12, :cond_f

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/desktopmode/DesktopModeService$DesktopModeReceiver;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {v12}, Lcom/android/server/desktopmode/DesktopModeService;->-get11(Lcom/android/server/desktopmode/DesktopModeService;)Z

    move-result v12

    if-eqz v12, :cond_f

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/desktopmode/DesktopModeService$DesktopModeReceiver;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    const-string/jumbo v12, "penInsert"

    const/4 v14, 0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v12, v14}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v12

    if-eqz v12, :cond_10

    const/4 v12, 0x0

    :goto_1
    invoke-static {v13, v12}, Lcom/android/server/desktopmode/DesktopModeService;->-set3(Lcom/android/server/desktopmode/DesktopModeService;Z)Z

    invoke-static {}, Lcom/android/server/desktopmode/DesktopModeService;->-get0()Z

    move-result v12

    if-eqz v12, :cond_e

    invoke-static {}, Lcom/android/server/desktopmode/DesktopModeService;->-get1()Ljava/lang/String;

    move-result-object v12

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "mIsSPenDetached="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/desktopmode/DesktopModeService$DesktopModeReceiver;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {v14}, Lcom/android/server/desktopmode/DesktopModeService;->-get14(Lcom/android/server/desktopmode/DesktopModeService;)Z

    move-result v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_e
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/desktopmode/DesktopModeService$DesktopModeReceiver;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {v12}, Lcom/android/server/desktopmode/DesktopModeService;->-wrap35(Lcom/android/server/desktopmode/DesktopModeService;)V

    goto/16 :goto_0

    :cond_f
    return-void

    :cond_10
    const/4 v12, 0x1

    goto :goto_1

    :cond_11
    const-string/jumbo v12, "com.samsung.android.knox.intent.action.ADD_PACKAGE_PREVENT_START_BLACKLIST_CHANGED_INTERNAL"

    invoke-virtual {v12, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/desktopmode/DesktopModeService$DesktopModeReceiver;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {v12}, Lcom/android/server/desktopmode/DesktopModeService;->-wrap4(Lcom/android/server/desktopmode/DesktopModeService;)Ljava/util/List;

    move-result-object v5

    if-eqz v5, :cond_1

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_2
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_1

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/desktopmode/DesktopModeService$DesktopModeReceiver;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/desktopmode/DesktopModeService$DesktopModeReceiver;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {v12}, Lcom/android/server/desktopmode/DesktopModeService;->-get15(Lcom/android/server/desktopmode/DesktopModeService;)Ljava/util/Map;

    move-result-object v12

    invoke-interface {v12, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Boolean;

    invoke-virtual {v12}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v12

    const-string/jumbo v14, "com.sec.knox.kccagent"

    invoke-virtual {v14, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    xor-int/2addr v12, v14

    invoke-virtual {v13, v12}, Lcom/android/server/desktopmode/DesktopModeService;->scheduleUpdateDesktopMode(Z)V

    goto :goto_2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
