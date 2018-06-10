.class Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperPdicDs$3;
.super Ljava/lang/Object;
.source "ChipUpdateHelperPdicDs.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperPdicDs;->download()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperPdicDs;


# direct methods
.method constructor <init>(Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperPdicDs;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperPdicDs$3;->this$0:Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperPdicDs;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    :try_start_0
    iget-object v7, p0, Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperPdicDs$3;->this$0:Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperPdicDs;

    invoke-static {v7}, Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperPdicDs;->access$300(Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperPdicDs;)Landroid/hardware/usb/UsbDevice;

    move-result-object v7

    invoke-virtual {v7}, Landroid/hardware/usb/UsbDevice;->getProductId()I

    move-result v7

    const v8, 0xf650

    if-ne v7, v8, :cond_1

    new-instance v4, Lcom/samsung/android/lib/dexcontrol/fota/chipapi/dexpad/pdic/sec/structure/PDStatus;

    invoke-direct {v4}, Lcom/samsung/android/lib/dexcontrol/fota/chipapi/dexpad/pdic/sec/structure/PDStatus;-><init>()V

    iget-object v7, p0, Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperPdicDs$3;->this$0:Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperPdicDs;

    invoke-static {v7}, Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperPdicDs;->access$100(Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperPdicDs;)Lcom/samsung/android/lib/dexcontrol/fota/chipapi/dexpad/pdic/sec/protocol/HIDProtocol;

    move-result-object v7

    invoke-virtual {v7, v4}, Lcom/samsung/android/lib/dexcontrol/fota/chipapi/dexpad/pdic/sec/protocol/HIDProtocol;->checkPdStatus(Lcom/samsung/android/lib/dexcontrol/fota/chipapi/dexpad/pdic/sec/structure/PDStatus;)I

    move-result v7

    if-ltz v7, :cond_2

    const-string/jumbo v7, "ChipUpdateHelperPdicDs"

    const-string/jumbo v8, "[Step][2] : Check PD Status successed"

    invoke-static {v7, v8}, Lcom/samsung/android/lib/dexcontrol/fota/debug/SLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v8, 0x3e8

    invoke-static {v8, v9}, Ljava/lang/Thread;->sleep(J)V

    invoke-virtual {v4}, Lcom/samsung/android/lib/dexcontrol/fota/chipapi/dexpad/pdic/sec/structure/PDStatus;->isSourceConnected()Z

    move-result v7

    if-nez v7, :cond_3

    const-string/jumbo v7, "ChipUpdateHelperPdicDs"

    const-string/jumbo v8, "[Step][3] : Connected sink mode"

    invoke-static {v7, v8}, Lcom/samsung/android/lib/dexcontrol/fota/debug/SLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    iget-object v7, p0, Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperPdicDs$3;->this$0:Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperPdicDs;

    invoke-static {v7}, Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperPdicDs;->access$500(Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperPdicDs;)Lcom/samsung/android/lib/dexcontrol/fota/chipapi/dexpad/pdic/sec/protocol/I2CProtocol;

    move-result-object v7

    invoke-virtual {v7}, Lcom/samsung/android/lib/dexcontrol/fota/chipapi/dexpad/pdic/sec/protocol/I2CProtocol;->i2cStatusReset()I

    move-result v7

    if-ltz v7, :cond_9

    const-string/jumbo v7, "ChipUpdateHelperPdicDs"

    const-string/jumbo v8, "[Step][4] : I2C reset successed"

    invoke-static {v7, v8}, Lcom/samsung/android/lib/dexcontrol/fota/debug/SLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v7, p0, Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperPdicDs$3;->this$0:Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperPdicDs;

    invoke-static {v7}, Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperPdicDs;->access$500(Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperPdicDs;)Lcom/samsung/android/lib/dexcontrol/fota/chipapi/dexpad/pdic/sec/protocol/I2CProtocol;

    move-result-object v7

    invoke-virtual {v7}, Lcom/samsung/android/lib/dexcontrol/fota/chipapi/dexpad/pdic/sec/protocol/I2CProtocol;->clearAllPendingEvents()I

    move-result v7

    if-ltz v7, :cond_a

    const-string/jumbo v7, "ChipUpdateHelperPdicDs"

    const-string/jumbo v8, "[Step][5] : Clear all pending events successed"

    invoke-static {v7, v8}, Lcom/samsung/android/lib/dexcontrol/fota/debug/SLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v7, p0, Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperPdicDs$3;->this$0:Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperPdicDs;

    invoke-static {v7}, Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperPdicDs;->access$500(Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperPdicDs;)Lcom/samsung/android/lib/dexcontrol/fota/chipapi/dexpad/pdic/sec/protocol/I2CProtocol;

    move-result-object v7

    invoke-virtual {v7}, Lcom/samsung/android/lib/dexcontrol/fota/chipapi/dexpad/pdic/sec/protocol/I2CProtocol;->disableAllPorts()I

    move-result v7

    if-ltz v7, :cond_b

    :goto_1
    const-string/jumbo v7, "ChipUpdateHelperPdicDs"

    const-string/jumbo v8, "[Step][6] : Disable all ports finished"

    invoke-static {v7, v8}, Lcom/samsung/android/lib/dexcontrol/fota/debug/SLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v3, Lcom/samsung/android/lib/dexcontrol/fota/chipapi/dexpad/pdic/sec/I2CDeviceInfo;

    invoke-direct {v3}, Lcom/samsung/android/lib/dexcontrol/fota/chipapi/dexpad/pdic/sec/I2CDeviceInfo;-><init>()V

    iget-object v7, p0, Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperPdicDs$3;->this$0:Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperPdicDs;

    invoke-static {v7}, Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperPdicDs;->access$500(Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperPdicDs;)Lcom/samsung/android/lib/dexcontrol/fota/chipapi/dexpad/pdic/sec/protocol/I2CProtocol;

    move-result-object v7

    invoke-virtual {v7, v3}, Lcom/samsung/android/lib/dexcontrol/fota/chipapi/dexpad/pdic/sec/protocol/I2CProtocol;->readDeviceMode(Lcom/samsung/android/lib/dexcontrol/fota/chipapi/dexpad/pdic/sec/I2CDeviceInfo;)I

    move-result v7

    if-ltz v7, :cond_c

    const-string/jumbo v7, "ChipUpdateHelperPdicDs"

    const-string/jumbo v8, "[Step][7] : Read device mode successed"

    invoke-static {v7, v8}, Lcom/samsung/android/lib/dexcontrol/fota/debug/SLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/samsung/android/lib/dexcontrol/fota/chipapi/dexpad/pdic/sec/I2CDeviceInfo;->isBootMode()Z

    move-result v7

    if-nez v7, :cond_d

    iget-object v7, p0, Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperPdicDs$3;->this$0:Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperPdicDs;

    invoke-static {v7}, Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperPdicDs;->access$500(Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperPdicDs;)Lcom/samsung/android/lib/dexcontrol/fota/chipapi/dexpad/pdic/sec/protocol/I2CProtocol;

    move-result-object v7

    invoke-virtual {v7, v3}, Lcom/samsung/android/lib/dexcontrol/fota/chipapi/dexpad/pdic/sec/protocol/I2CProtocol;->jumpToBootloader(Lcom/samsung/android/lib/dexcontrol/fota/chipapi/dexpad/pdic/sec/I2CDeviceInfo;)I

    move-result v7

    if-ltz v7, :cond_e

    const-string/jumbo v7, "ChipUpdateHelperPdicDs"

    const-string/jumbo v8, "[Step][8] : Jump to bootloader successed"

    invoke-static {v7, v8}, Lcom/samsung/android/lib/dexcontrol/fota/debug/SLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    iget-object v7, p0, Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperPdicDs$3;->this$0:Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperPdicDs;

    invoke-static {v7}, Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperPdicDs;->access$500(Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperPdicDs;)Lcom/samsung/android/lib/dexcontrol/fota/chipapi/dexpad/pdic/sec/protocol/I2CProtocol;

    move-result-object v7

    invoke-virtual {v7}, Lcom/samsung/android/lib/dexcontrol/fota/chipapi/dexpad/pdic/sec/protocol/I2CProtocol;->clearAllPendingEvents()I

    move-result v7

    if-ltz v7, :cond_f

    const-string/jumbo v7, "ChipUpdateHelperPdicDs"

    const-string/jumbo v8, "[Step][9] : Clear all pending events succssed"

    invoke-static {v7, v8}, Lcom/samsung/android/lib/dexcontrol/fota/debug/SLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v7, p0, Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperPdicDs$3;->this$0:Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperPdicDs;

    invoke-static {v7}, Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperPdicDs;->access$500(Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperPdicDs;)Lcom/samsung/android/lib/dexcontrol/fota/chipapi/dexpad/pdic/sec/protocol/I2CProtocol;

    move-result-object v7

    invoke-virtual {v7}, Lcom/samsung/android/lib/dexcontrol/fota/chipapi/dexpad/pdic/sec/protocol/I2CProtocol;->enterFlashingMode()I

    move-result v7

    if-ltz v7, :cond_10

    const-string/jumbo v7, "ChipUpdateHelperPdicDs"

    const-string/jumbo v8, "[Step][10] : Enter flashing mode succssed"

    invoke-static {v7, v8}, Lcom/samsung/android/lib/dexcontrol/fota/debug/SLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/samsung/android/lib/dexcontrol/fota/chipapi/dexpad/pdic/sec/CyacdImage;

    iget-object v7, p0, Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperPdicDs$3;->this$0:Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperPdicDs;

    invoke-virtual {v7}, Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperPdicDs;->getUpdateFilePath()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v0, v7}, Lcom/samsung/android/lib/dexcontrol/fota/chipapi/dexpad/pdic/sec/CyacdImage;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v7, p0, Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperPdicDs$3;->this$0:Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperPdicDs;

    invoke-static {v7}, Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperPdicDs;->access$500(Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperPdicDs;)Lcom/samsung/android/lib/dexcontrol/fota/chipapi/dexpad/pdic/sec/protocol/I2CProtocol;

    move-result-object v7

    invoke-virtual {v3}, Lcom/samsung/android/lib/dexcontrol/fota/chipapi/dexpad/pdic/sec/I2CDeviceInfo;->getFlashRowSize()I

    move-result v8

    invoke-virtual {v7, v0, v8}, Lcom/samsung/android/lib/dexcontrol/fota/chipapi/dexpad/pdic/sec/protocol/I2CProtocol;->clearMetaData(Lcom/samsung/android/lib/dexcontrol/fota/chipapi/dexpad/pdic/sec/CyacdImage;I)I
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v7

    if-ltz v7, :cond_11

    :try_start_2
    const-string/jumbo v7, "ChipUpdateHelperPdicDs"

    const-string/jumbo v8, "[Step][11] : Clear metadata successed"

    invoke-static {v7, v8}, Lcom/samsung/android/lib/dexcontrol/fota/debug/SLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v7, p0, Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperPdicDs$3;->this$0:Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperPdicDs;

    invoke-static {v7}, Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperPdicDs;->access$500(Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperPdicDs;)Lcom/samsung/android/lib/dexcontrol/fota/chipapi/dexpad/pdic/sec/protocol/I2CProtocol;

    move-result-object v7

    invoke-virtual {v7, v0}, Lcom/samsung/android/lib/dexcontrol/fota/chipapi/dexpad/pdic/sec/protocol/I2CProtocol;->writeFlashImage(Lcom/samsung/android/lib/dexcontrol/fota/chipapi/dexpad/pdic/sec/CyacdImage;)I

    move-result v7

    if-ltz v7, :cond_12

    const-string/jumbo v7, "ChipUpdateHelperPdicDs"

    const-string/jumbo v8, "[Step][12] : Write flash image successed"

    invoke-static {v7, v8}, Lcom/samsung/android/lib/dexcontrol/fota/debug/SLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v7, p0, Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperPdicDs$3;->this$0:Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperPdicDs;

    invoke-static {v7}, Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperPdicDs;->access$500(Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperPdicDs;)Lcom/samsung/android/lib/dexcontrol/fota/chipapi/dexpad/pdic/sec/protocol/I2CProtocol;

    move-result-object v7

    invoke-virtual {v7, v0}, Lcom/samsung/android/lib/dexcontrol/fota/chipapi/dexpad/pdic/sec/protocol/I2CProtocol;->validateFirmware(Lcom/samsung/android/lib/dexcontrol/fota/chipapi/dexpad/pdic/sec/CyacdImage;)I

    move-result v7

    if-ltz v7, :cond_13

    const-string/jumbo v7, "ChipUpdateHelperPdicDs"

    const-string/jumbo v8, "[Step][13] : Validate firmware successed"

    invoke-static {v7, v8}, Lcom/samsung/android/lib/dexcontrol/fota/debug/SLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v7, p0, Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperPdicDs$3;->this$0:Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperPdicDs;

    const/4 v8, 0x2

    invoke-static {v7, v8}, Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperPdicDs;->access$200(Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperPdicDs;I)V

    iget-object v7, p0, Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperPdicDs$3;->this$0:Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperPdicDs;

    invoke-static {v7}, Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperPdicDs;->access$600(Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperPdicDs;)V

    :goto_3
    return-void

    :cond_1
    iget-object v7, p0, Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperPdicDs$3;->this$0:Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperPdicDs;

    const/4 v8, 0x0

    invoke-static {v7, v8}, Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperPdicDs;->access$400(Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperPdicDs;I)V

    return-void

    :cond_2
    iget-object v7, p0, Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperPdicDs$3;->this$0:Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperPdicDs;

    const/16 v8, 0xb

    invoke-static {v7, v8}, Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperPdicDs;->access$400(Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperPdicDs;I)V

    return-void

    :cond_3
    const/4 v5, 0x3

    :goto_4
    if-gtz v5, :cond_5

    :cond_4
    const-wide/16 v8, 0x1f4

    invoke-static {v8, v9}, Ljava/lang/Thread;->sleep(J)V

    const/4 v6, 0x0

    :goto_5
    const-string/jumbo v7, "ChipUpdateHelperPdicDs"

    const-string/jumbo v8, "[Step][3] : Check pdStatus to swap finished"

    invoke-static {v7, v8}, Lcom/samsung/android/lib/dexcontrol/fota/debug/SLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v7, p0, Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperPdicDs$3;->this$0:Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperPdicDs;

    invoke-static {v7}, Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperPdicDs;->access$100(Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperPdicDs;)Lcom/samsung/android/lib/dexcontrol/fota/chipapi/dexpad/pdic/sec/protocol/HIDProtocol;

    move-result-object v7

    invoke-virtual {v7, v4}, Lcom/samsung/android/lib/dexcontrol/fota/chipapi/dexpad/pdic/sec/protocol/HIDProtocol;->checkPdStatus(Lcom/samsung/android/lib/dexcontrol/fota/chipapi/dexpad/pdic/sec/structure/PDStatus;)I

    move-result v7

    if-ltz v7, :cond_7

    invoke-virtual {v4}, Lcom/samsung/android/lib/dexcontrol/fota/chipapi/dexpad/pdic/sec/structure/PDStatus;->isSinkConnected()Z

    move-result v7

    if-nez v7, :cond_8

    const-wide/16 v8, 0x64

    invoke-static {v8, v9}, Ljava/lang/Thread;->sleep(J)V

    add-int/lit8 v6, v6, 0x64

    const/16 v7, 0x3e8

    if-ge v6, v7, :cond_0

    goto :goto_5

    :cond_5
    iget-object v7, p0, Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperPdicDs$3;->this$0:Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperPdicDs;

    invoke-static {v7}, Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperPdicDs;->access$100(Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperPdicDs;)Lcom/samsung/android/lib/dexcontrol/fota/chipapi/dexpad/pdic/sec/protocol/HIDProtocol;

    move-result-object v7

    invoke-virtual {v7}, Lcom/samsung/android/lib/dexcontrol/fota/chipapi/dexpad/pdic/sec/protocol/HIDProtocol;->prSwap()I

    move-result v7

    if-gez v7, :cond_4

    add-int/lit8 v5, v5, -0x1

    if-ltz v5, :cond_6

    const-wide/16 v8, 0x3e8

    invoke-static {v8, v9}, Ljava/lang/Thread;->sleep(J)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_4

    :catch_0
    move-exception v1

    const-string/jumbo v7, "ChipUpdateHelperPdicDs"

    const-string/jumbo v8, "Thread interrupted"

    invoke-static {v7, v8}, Lcom/samsung/android/lib/dexcontrol/fota/debug/SLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :cond_6
    :try_start_3
    iget-object v7, p0, Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperPdicDs$3;->this$0:Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperPdicDs;

    const/16 v8, 0xc

    invoke-static {v7, v8}, Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperPdicDs;->access$400(Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperPdicDs;I)V

    return-void

    :cond_7
    iget-object v7, p0, Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperPdicDs$3;->this$0:Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperPdicDs;

    const/16 v8, 0xb

    invoke-static {v7, v8}, Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperPdicDs;->access$400(Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperPdicDs;I)V

    return-void

    :cond_8
    const-string/jumbo v7, "ChipUpdateHelperPdicDs"

    const-string/jumbo v8, "[Step][3] : Swap PR succeessed "

    invoke-static {v7, v8}, Lcom/samsung/android/lib/dexcontrol/fota/debug/SLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_9
    iget-object v7, p0, Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperPdicDs$3;->this$0:Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperPdicDs;

    const/16 v8, 0xa

    invoke-static {v7, v8}, Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperPdicDs;->access$400(Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperPdicDs;I)V

    return-void

    :cond_a
    iget-object v7, p0, Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperPdicDs$3;->this$0:Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperPdicDs;

    const/4 v8, 0x1

    invoke-static {v7, v8}, Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperPdicDs;->access$400(Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperPdicDs;I)V

    return-void

    :cond_b
    const-string/jumbo v7, "ChipUpdateHelperPdicDs"

    const-string/jumbo v8, "Disable All Ports : -1"

    invoke-static {v7, v8}, Lcom/samsung/android/lib/dexcontrol/fota/debug/SLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_c
    iget-object v7, p0, Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperPdicDs$3;->this$0:Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperPdicDs;

    const/4 v8, 0x3

    invoke-static {v7, v8}, Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperPdicDs;->access$400(Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperPdicDs;I)V

    return-void

    :cond_d
    const-string/jumbo v7, "ChipUpdateHelperPdicDs"

    const-string/jumbo v8, "[Step][8] : Arleady connected to bootloader mode"

    invoke-static {v7, v8}, Lcom/samsung/android/lib/dexcontrol/fota/debug/SLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_e
    iget-object v7, p0, Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperPdicDs$3;->this$0:Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperPdicDs;

    const/4 v8, 0x4

    invoke-static {v7, v8}, Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperPdicDs;->access$400(Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperPdicDs;I)V

    return-void

    :cond_f
    iget-object v7, p0, Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperPdicDs$3;->this$0:Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperPdicDs;

    const/4 v8, 0x1

    invoke-static {v7, v8}, Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperPdicDs;->access$400(Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperPdicDs;I)V

    return-void

    :cond_10
    iget-object v7, p0, Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperPdicDs$3;->this$0:Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperPdicDs;

    const/4 v8, 0x6

    invoke-static {v7, v8}, Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperPdicDs;->access$400(Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperPdicDs;I)V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0

    return-void

    :cond_11
    :try_start_4
    iget-object v7, p0, Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperPdicDs$3;->this$0:Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperPdicDs;

    const/4 v8, 0x7

    invoke-static {v7, v8}, Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperPdicDs;->access$400(Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperPdicDs;I)V
    :try_end_4
    .catch Ljava/lang/NullPointerException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_0

    return-void

    :catch_1
    move-exception v2

    :try_start_5
    iget-object v7, p0, Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperPdicDs$3;->this$0:Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperPdicDs;

    const/16 v8, 0xd

    invoke-static {v7, v8}, Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperPdicDs;->access$400(Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperPdicDs;I)V

    return-void

    :cond_12
    iget-object v7, p0, Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperPdicDs$3;->this$0:Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperPdicDs;

    const/16 v8, 0x8

    invoke-static {v7, v8}, Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperPdicDs;->access$400(Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperPdicDs;I)V

    return-void

    :cond_13
    iget-object v7, p0, Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperPdicDs$3;->this$0:Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperPdicDs;

    const/16 v8, 0x9

    invoke-static {v7, v8}, Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperPdicDs;->access$400(Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperPdicDs;I)V
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_0

    return-void
.end method
