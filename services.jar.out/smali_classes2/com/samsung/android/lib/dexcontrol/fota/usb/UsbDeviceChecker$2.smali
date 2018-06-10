.class Lcom/samsung/android/lib/dexcontrol/fota/usb/UsbDeviceChecker$2;
.super Landroid/content/BroadcastReceiver;
.source "UsbDeviceChecker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/lib/dexcontrol/fota/usb/UsbDeviceChecker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/lib/dexcontrol/fota/usb/UsbDeviceChecker;


# direct methods
.method constructor <init>(Lcom/samsung/android/lib/dexcontrol/fota/usb/UsbDeviceChecker;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/lib/dexcontrol/fota/usb/UsbDeviceChecker$2;->this$0:Lcom/samsung/android/lib/dexcontrol/fota/usb/UsbDeviceChecker;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 12

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "onReceive - action : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const-string/jumbo v11, "UsbDeviceChecker"

    invoke-static {v11, v10}, Lcom/samsung/android/lib/dexcontrol/fota/debug/SLog;->m(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v2

    const/4 v1, -0x1

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v10

    sparse-switch v10, :sswitch_data_0

    :cond_0
    :goto_0
    packed-switch v1, :pswitch_data_0

    :cond_1
    :goto_1
    :pswitch_0
    return-void

    :sswitch_0
    const-string/jumbo v10, "com.samsung.android.lib.dexcontrol.usb.permission"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :sswitch_1
    const-string/jumbo v10, "android.hardware.usb.action.USB_DEVICE_ATTACHED"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :sswitch_2
    const-string/jumbo v10, "android.hardware.usb.action.USB_DEVICE_DETACHED"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    const/4 v1, 0x2

    goto :goto_0

    :sswitch_3
    const-string/jumbo v10, "android.hardware.usb.action.USB_ACCESSORY_ATTACHED"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    const/4 v1, 0x3

    goto :goto_0

    :sswitch_4
    const-string/jumbo v10, "android.hardware.usb.action.USB_ACCESSORY_DETACHED"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    const/4 v1, 0x4

    goto :goto_0

    :sswitch_5
    const-string/jumbo v10, "android.intent.action.HDMI_PLUGGED"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    const/4 v1, 0x5

    goto :goto_0

    :pswitch_1
    const-string/jumbo v10, "device"

    invoke-virtual {p2, v10}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/hardware/usb/UsbDevice;

    invoke-virtual {v3}, Landroid/hardware/usb/UsbDevice;->getProductId()I

    move-result v7

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "device pId = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const-string/jumbo v11, "UsbDeviceChecker"

    invoke-static {v11, v10}, Lcom/samsung/android/lib/dexcontrol/fota/debug/SLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v10, p0, Lcom/samsung/android/lib/dexcontrol/fota/usb/UsbDeviceChecker$2;->this$0:Lcom/samsung/android/lib/dexcontrol/fota/usb/UsbDeviceChecker;

    invoke-static {v10, v7}, Lcom/samsung/android/lib/dexcontrol/fota/usb/UsbDeviceChecker;->access$100(Lcom/samsung/android/lib/dexcontrol/fota/usb/UsbDeviceChecker;I)Z

    move-result v10

    if-nez v10, :cond_2

    const-string/jumbo v10, "UsbDeviceChecker"

    const-string/jumbo v11, "Not dex series"

    invoke-static {v10, v11}, Lcom/samsung/android/lib/dexcontrol/fota/debug/SLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    const-string/jumbo v10, "permission"

    const/4 v11, 0x0

    invoke-virtual {p2, v10, v11}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v10

    if-nez v10, :cond_3

    const-string/jumbo v10, "UsbDeviceChecker"

    const-string/jumbo v11, "Permission is denied"

    invoke-static {v10, v11}, Lcom/samsung/android/lib/dexcontrol/fota/debug/SLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v10, p0, Lcom/samsung/android/lib/dexcontrol/fota/usb/UsbDeviceChecker$2;->this$0:Lcom/samsung/android/lib/dexcontrol/fota/usb/UsbDeviceChecker;

    invoke-static {v10}, Lcom/samsung/android/lib/dexcontrol/fota/usb/UsbDeviceChecker;->access$000(Lcom/samsung/android/lib/dexcontrol/fota/usb/UsbDeviceChecker;)Lcom/samsung/android/lib/dexcontrol/fota/usb/IUsbDeviceChecker$UsbDeviceListener;

    move-result-object v10

    if-eqz v10, :cond_1

    iget-object v10, p0, Lcom/samsung/android/lib/dexcontrol/fota/usb/UsbDeviceChecker$2;->this$0:Lcom/samsung/android/lib/dexcontrol/fota/usb/UsbDeviceChecker;

    invoke-static {v10}, Lcom/samsung/android/lib/dexcontrol/fota/usb/UsbDeviceChecker;->access$000(Lcom/samsung/android/lib/dexcontrol/fota/usb/UsbDeviceChecker;)Lcom/samsung/android/lib/dexcontrol/fota/usb/IUsbDeviceChecker$UsbDeviceListener;

    move-result-object v10

    const/4 v11, 0x1

    invoke-interface {v10, v11}, Lcom/samsung/android/lib/dexcontrol/fota/usb/IUsbDeviceChecker$UsbDeviceListener;->onError(I)V

    goto/16 :goto_1

    :cond_3
    const-string/jumbo v10, "UsbDeviceChecker"

    const-string/jumbo v11, "Permission is granted"

    invoke-static {v10, v11}, Lcom/samsung/android/lib/dexcontrol/fota/debug/SLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v10, p0, Lcom/samsung/android/lib/dexcontrol/fota/usb/UsbDeviceChecker$2;->this$0:Lcom/samsung/android/lib/dexcontrol/fota/usb/UsbDeviceChecker;

    invoke-static {v10, v3}, Lcom/samsung/android/lib/dexcontrol/fota/usb/UsbDeviceChecker;->access$200(Lcom/samsung/android/lib/dexcontrol/fota/usb/UsbDeviceChecker;Landroid/hardware/usb/UsbDevice;)V

    iget-object v10, p0, Lcom/samsung/android/lib/dexcontrol/fota/usb/UsbDeviceChecker$2;->this$0:Lcom/samsung/android/lib/dexcontrol/fota/usb/UsbDeviceChecker;

    invoke-static {v10}, Lcom/samsung/android/lib/dexcontrol/fota/usb/UsbDeviceChecker;->access$300(Lcom/samsung/android/lib/dexcontrol/fota/usb/UsbDeviceChecker;)V

    goto/16 :goto_1

    :pswitch_2
    const-string/jumbo v10, "device"

    invoke-virtual {p2, v10}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Landroid/hardware/usb/UsbDevice;

    invoke-virtual {v4}, Landroid/hardware/usb/UsbDevice;->getProductId()I

    move-result v8

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "device pId = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const-string/jumbo v11, "UsbDeviceChecker"

    invoke-static {v11, v10}, Lcom/samsung/android/lib/dexcontrol/fota/debug/SLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v10, p0, Lcom/samsung/android/lib/dexcontrol/fota/usb/UsbDeviceChecker$2;->this$0:Lcom/samsung/android/lib/dexcontrol/fota/usb/UsbDeviceChecker;

    invoke-static {v10, v8}, Lcom/samsung/android/lib/dexcontrol/fota/usb/UsbDeviceChecker;->access$100(Lcom/samsung/android/lib/dexcontrol/fota/usb/UsbDeviceChecker;I)Z

    move-result v10

    if-nez v10, :cond_4

    const-string/jumbo v10, "UsbDeviceChecker"

    const-string/jumbo v11, "Not dex series"

    invoke-static {v10, v11}, Lcom/samsung/android/lib/dexcontrol/fota/debug/SLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_4
    iget-object v10, p0, Lcom/samsung/android/lib/dexcontrol/fota/usb/UsbDeviceChecker$2;->this$0:Lcom/samsung/android/lib/dexcontrol/fota/usb/UsbDeviceChecker;

    invoke-static {v10, v4}, Lcom/samsung/android/lib/dexcontrol/fota/usb/UsbDeviceChecker;->access$200(Lcom/samsung/android/lib/dexcontrol/fota/usb/UsbDeviceChecker;Landroid/hardware/usb/UsbDevice;)V

    iget-object v10, p0, Lcom/samsung/android/lib/dexcontrol/fota/usb/UsbDeviceChecker$2;->this$0:Lcom/samsung/android/lib/dexcontrol/fota/usb/UsbDeviceChecker;

    invoke-static {v10}, Lcom/samsung/android/lib/dexcontrol/fota/usb/UsbDeviceChecker;->access$300(Lcom/samsung/android/lib/dexcontrol/fota/usb/UsbDeviceChecker;)V

    goto/16 :goto_1

    :pswitch_3
    const-string/jumbo v10, "device"

    invoke-virtual {p2, v10}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v10

    check-cast v10, Landroid/hardware/usb/UsbDevice;

    invoke-virtual {v10}, Landroid/hardware/usb/UsbDevice;->getProductId()I

    move-result v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "device pId = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const-string/jumbo v11, "UsbDeviceChecker"

    invoke-static {v11, v10}, Lcom/samsung/android/lib/dexcontrol/fota/debug/SLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v10, p0, Lcom/samsung/android/lib/dexcontrol/fota/usb/UsbDeviceChecker$2;->this$0:Lcom/samsung/android/lib/dexcontrol/fota/usb/UsbDeviceChecker;

    invoke-static {v10, v9}, Lcom/samsung/android/lib/dexcontrol/fota/usb/UsbDeviceChecker;->access$100(Lcom/samsung/android/lib/dexcontrol/fota/usb/UsbDeviceChecker;I)Z

    move-result v10

    if-nez v10, :cond_6

    const-string/jumbo v10, "UsbDeviceChecker"

    const-string/jumbo v11, "Not dex series"

    invoke-static {v10, v11}, Lcom/samsung/android/lib/dexcontrol/fota/debug/SLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    :goto_2
    iget-object v10, p0, Lcom/samsung/android/lib/dexcontrol/fota/usb/UsbDeviceChecker$2;->this$0:Lcom/samsung/android/lib/dexcontrol/fota/usb/UsbDeviceChecker;

    const/4 v11, 0x0

    invoke-static {v10, v11}, Lcom/samsung/android/lib/dexcontrol/fota/usb/UsbDeviceChecker;->access$402(Lcom/samsung/android/lib/dexcontrol/fota/usb/UsbDeviceChecker;Landroid/hardware/usb/UsbDevice;)Landroid/hardware/usb/UsbDevice;

    goto/16 :goto_1

    :cond_6
    iget-object v10, p0, Lcom/samsung/android/lib/dexcontrol/fota/usb/UsbDeviceChecker$2;->this$0:Lcom/samsung/android/lib/dexcontrol/fota/usb/UsbDeviceChecker;

    invoke-static {v10}, Lcom/samsung/android/lib/dexcontrol/fota/usb/UsbDeviceChecker;->access$000(Lcom/samsung/android/lib/dexcontrol/fota/usb/UsbDeviceChecker;)Lcom/samsung/android/lib/dexcontrol/fota/usb/IUsbDeviceChecker$UsbDeviceListener;

    move-result-object v10

    if-eqz v10, :cond_5

    iget-object v10, p0, Lcom/samsung/android/lib/dexcontrol/fota/usb/UsbDeviceChecker$2;->this$0:Lcom/samsung/android/lib/dexcontrol/fota/usb/UsbDeviceChecker;

    invoke-static {v10}, Lcom/samsung/android/lib/dexcontrol/fota/usb/UsbDeviceChecker;->access$000(Lcom/samsung/android/lib/dexcontrol/fota/usb/UsbDeviceChecker;)Lcom/samsung/android/lib/dexcontrol/fota/usb/IUsbDeviceChecker$UsbDeviceListener;

    move-result-object v10

    invoke-interface {v10}, Lcom/samsung/android/lib/dexcontrol/fota/usb/IUsbDeviceChecker$UsbDeviceListener;->onDeviceDetached()V

    goto :goto_2

    :pswitch_4
    const-string/jumbo v10, "state"

    const/4 v11, 0x0

    invoke-virtual {p2, v10, v11}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v6

    if-nez v6, :cond_7

    iget-object v10, p0, Lcom/samsung/android/lib/dexcontrol/fota/usb/UsbDeviceChecker$2;->this$0:Lcom/samsung/android/lib/dexcontrol/fota/usb/UsbDeviceChecker;

    const/4 v11, 0x0

    invoke-static {v10, v11}, Lcom/samsung/android/lib/dexcontrol/fota/usb/UsbDeviceChecker;->access$502(Lcom/samsung/android/lib/dexcontrol/fota/usb/UsbDeviceChecker;Z)Z

    const-string/jumbo v10, "UsbDeviceChecker"

    const-string/jumbo v11, "HDMI Disonnected"

    invoke-static {v10, v11}, Lcom/samsung/android/lib/dexcontrol/fota/debug/SLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_7
    iget-object v10, p0, Lcom/samsung/android/lib/dexcontrol/fota/usb/UsbDeviceChecker$2;->this$0:Lcom/samsung/android/lib/dexcontrol/fota/usb/UsbDeviceChecker;

    invoke-static {v10}, Lcom/samsung/android/lib/dexcontrol/fota/usb/UsbDeviceChecker;->access$500(Lcom/samsung/android/lib/dexcontrol/fota/usb/UsbDeviceChecker;)Z

    move-result v10

    if-nez v10, :cond_1

    iget-object v10, p0, Lcom/samsung/android/lib/dexcontrol/fota/usb/UsbDeviceChecker$2;->this$0:Lcom/samsung/android/lib/dexcontrol/fota/usb/UsbDeviceChecker;

    const/4 v11, 0x1

    invoke-static {v10, v11}, Lcom/samsung/android/lib/dexcontrol/fota/usb/UsbDeviceChecker;->access$502(Lcom/samsung/android/lib/dexcontrol/fota/usb/UsbDeviceChecker;Z)Z

    const-string/jumbo v10, "UsbDeviceChecker"

    const-string/jumbo v11, "HDMI Connected"

    invoke-static {v10, v11}, Lcom/samsung/android/lib/dexcontrol/fota/debug/SLog;->m(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v10, p0, Lcom/samsung/android/lib/dexcontrol/fota/usb/UsbDeviceChecker$2;->this$0:Lcom/samsung/android/lib/dexcontrol/fota/usb/UsbDeviceChecker;

    invoke-static {v10}, Lcom/samsung/android/lib/dexcontrol/fota/usb/UsbDeviceChecker;->access$000(Lcom/samsung/android/lib/dexcontrol/fota/usb/UsbDeviceChecker;)Lcom/samsung/android/lib/dexcontrol/fota/usb/IUsbDeviceChecker$UsbDeviceListener;

    move-result-object v10

    if-eqz v10, :cond_1

    iget-object v10, p0, Lcom/samsung/android/lib/dexcontrol/fota/usb/UsbDeviceChecker$2;->this$0:Lcom/samsung/android/lib/dexcontrol/fota/usb/UsbDeviceChecker;

    invoke-static {v10}, Lcom/samsung/android/lib/dexcontrol/fota/usb/UsbDeviceChecker;->access$600(Lcom/samsung/android/lib/dexcontrol/fota/usb/UsbDeviceChecker;)Lcom/samsung/android/lib/dexcontrol/fota/usb/UsbDeviceChecker$WaitHandler;

    move-result-object v10

    invoke-virtual {v10}, Lcom/samsung/android/lib/dexcontrol/fota/usb/UsbDeviceChecker$WaitHandler;->isWaiting()Z

    move-result v10

    const/4 v11, 0x1

    if-eq v10, v11, :cond_8

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "HDMI connected! current usbDevice="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v10, p0, Lcom/samsung/android/lib/dexcontrol/fota/usb/UsbDeviceChecker$2;->this$0:Lcom/samsung/android/lib/dexcontrol/fota/usb/UsbDeviceChecker;

    invoke-static {v10}, Lcom/samsung/android/lib/dexcontrol/fota/usb/UsbDeviceChecker;->access$400(Lcom/samsung/android/lib/dexcontrol/fota/usb/UsbDeviceChecker;)Landroid/hardware/usb/UsbDevice;

    move-result-object v10

    if-eqz v10, :cond_9

    const-string/jumbo v10, "exist"

    :goto_3
    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v10, "UsbDeviceChecker"

    invoke-static {v10, v5}, Lcom/samsung/android/lib/dexcontrol/fota/debug/SLog;->m(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/lib/dexcontrol/fota/debug/DexFotaLibDataObserver;->getInstance()Lcom/samsung/android/lib/dexcontrol/fota/debug/DexFotaLibDataObserver;

    move-result-object v10

    invoke-virtual {v10, v5}, Lcom/samsung/android/lib/dexcontrol/fota/debug/DexFotaLibDataObserver;->setUpdateMessage(Ljava/lang/String;)V

    iget-object v10, p0, Lcom/samsung/android/lib/dexcontrol/fota/usb/UsbDeviceChecker$2;->this$0:Lcom/samsung/android/lib/dexcontrol/fota/usb/UsbDeviceChecker;

    invoke-static {v10}, Lcom/samsung/android/lib/dexcontrol/fota/usb/UsbDeviceChecker;->access$400(Lcom/samsung/android/lib/dexcontrol/fota/usb/UsbDeviceChecker;)Landroid/hardware/usb/UsbDevice;

    move-result-object v10

    if-eqz v10, :cond_1

    iget-object v10, p0, Lcom/samsung/android/lib/dexcontrol/fota/usb/UsbDeviceChecker$2;->this$0:Lcom/samsung/android/lib/dexcontrol/fota/usb/UsbDeviceChecker;

    invoke-static {v10}, Lcom/samsung/android/lib/dexcontrol/fota/usb/UsbDeviceChecker;->access$300(Lcom/samsung/android/lib/dexcontrol/fota/usb/UsbDeviceChecker;)V

    goto/16 :goto_1

    :cond_8
    const-string/jumbo v10, "UsbDeviceChecker"

    const-string/jumbo v11, "HDMI connected while waiting.."

    invoke-static {v10, v11}, Lcom/samsung/android/lib/dexcontrol/fota/debug/SLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v10, p0, Lcom/samsung/android/lib/dexcontrol/fota/usb/UsbDeviceChecker$2;->this$0:Lcom/samsung/android/lib/dexcontrol/fota/usb/UsbDeviceChecker;

    invoke-static {v10}, Lcom/samsung/android/lib/dexcontrol/fota/usb/UsbDeviceChecker;->access$600(Lcom/samsung/android/lib/dexcontrol/fota/usb/UsbDeviceChecker;)Lcom/samsung/android/lib/dexcontrol/fota/usb/UsbDeviceChecker$WaitHandler;

    move-result-object v10

    invoke-virtual {v10}, Lcom/samsung/android/lib/dexcontrol/fota/usb/UsbDeviceChecker$WaitHandler;->end()V

    iget-object v10, p0, Lcom/samsung/android/lib/dexcontrol/fota/usb/UsbDeviceChecker$2;->this$0:Lcom/samsung/android/lib/dexcontrol/fota/usb/UsbDeviceChecker;

    invoke-static {v10}, Lcom/samsung/android/lib/dexcontrol/fota/usb/UsbDeviceChecker;->access$000(Lcom/samsung/android/lib/dexcontrol/fota/usb/UsbDeviceChecker;)Lcom/samsung/android/lib/dexcontrol/fota/usb/IUsbDeviceChecker$UsbDeviceListener;

    move-result-object v10

    const/4 v11, 0x1

    invoke-interface {v10, v11}, Lcom/samsung/android/lib/dexcontrol/fota/usb/IUsbDeviceChecker$UsbDeviceListener;->onHdmiConnected(Z)V

    goto/16 :goto_1

    :cond_9
    const-string/jumbo v10, "null"

    goto :goto_3

    :sswitch_data_0
    .sparse-switch
        -0x7e02a835 -> :sswitch_1
        -0x5fdc9a67 -> :sswitch_2
        0x4189e133 -> :sswitch_3
        0x55ecf3f8 -> :sswitch_0
        0x5fafef01 -> :sswitch_4
        0x7630d676 -> :sswitch_5
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method
