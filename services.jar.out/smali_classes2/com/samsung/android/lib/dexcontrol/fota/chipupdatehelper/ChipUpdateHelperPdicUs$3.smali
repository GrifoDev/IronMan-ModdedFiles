.class Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperPdicUs$3;
.super Ljava/lang/Object;
.source "ChipUpdateHelperPdicUs.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperPdicUs;->checkPrStatus()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperPdicUs;


# direct methods
.method constructor <init>(Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperPdicUs;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperPdicUs$3;->this$0:Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperPdicUs;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    :try_start_0
    iget-object v4, p0, Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperPdicUs$3;->this$0:Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperPdicUs;

    invoke-static {v4}, Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperPdicUs;->access$600(Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperPdicUs;)Landroid/hardware/usb/UsbDevice;

    move-result-object v4

    invoke-virtual {v4}, Landroid/hardware/usb/UsbDevice;->getProductId()I

    move-result v4

    const v5, 0xf650

    if-ne v4, v5, :cond_1

    new-instance v1, Lcom/samsung/android/lib/dexcontrol/fota/chipapi/dexpad/pdic/sec/structure/PDStatus;

    invoke-direct {v1}, Lcom/samsung/android/lib/dexcontrol/fota/chipapi/dexpad/pdic/sec/structure/PDStatus;-><init>()V

    iget-object v4, p0, Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperPdicUs$3;->this$0:Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperPdicUs;

    invoke-static {v4}, Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperPdicUs;->access$100(Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperPdicUs;)Lcom/samsung/android/lib/dexcontrol/fota/chipapi/dexpad/pdic/sec/protocol/HIDProtocol;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/samsung/android/lib/dexcontrol/fota/chipapi/dexpad/pdic/sec/protocol/HIDProtocol;->checkPdStatus(Lcom/samsung/android/lib/dexcontrol/fota/chipapi/dexpad/pdic/sec/structure/PDStatus;)I

    move-result v4

    if-ltz v4, :cond_2

    iget-object v4, p0, Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperPdicUs$3;->this$0:Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperPdicUs;

    invoke-static {v4}, Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperPdicUs;->access$300(Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperPdicUs;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "[Step][3] : Check PD Status successed"

    invoke-static {v4, v5}, Lcom/samsung/android/lib/dexcontrol/fota/debug/SLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/samsung/android/lib/dexcontrol/fota/chipapi/dexpad/pdic/sec/structure/PDStatus;->isSourceConnected()Z

    move-result v4

    if-nez v4, :cond_3

    iget-object v4, p0, Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperPdicUs$3;->this$0:Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperPdicUs;

    invoke-static {v4}, Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperPdicUs;->access$300(Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperPdicUs;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "[Step][4] : Connected sink mode"

    invoke-static {v4, v5}, Lcom/samsung/android/lib/dexcontrol/fota/debug/SLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    invoke-virtual {v1}, Lcom/samsung/android/lib/dexcontrol/fota/chipapi/dexpad/pdic/sec/structure/PDStatus;->isSourceConnected()Z

    move-result v4

    if-nez v4, :cond_9

    iget-object v4, p0, Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperPdicUs$3;->this$0:Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperPdicUs;

    invoke-static {v4}, Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperPdicUs;->access$100(Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperPdicUs;)Lcom/samsung/android/lib/dexcontrol/fota/chipapi/dexpad/pdic/sec/protocol/HIDProtocol;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/android/lib/dexcontrol/fota/chipapi/dexpad/pdic/sec/protocol/HIDProtocol;->jumpToBootloader()I

    move-result v4

    if-ltz v4, :cond_a

    iget-object v4, p0, Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperPdicUs$3;->this$0:Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperPdicUs;

    invoke-static {v4}, Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperPdicUs;->access$300(Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperPdicUs;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "[Step][5] : Jump to bootloader successed"

    invoke-static {v4, v5}, Lcom/samsung/android/lib/dexcontrol/fota/debug/SLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperPdicUs$3;->this$0:Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperPdicUs;

    invoke-static {v4}, Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperPdicUs;->access$000(Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperPdicUs;)Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperBase$ChipUpdateHelperListener;

    move-result-object v4

    if-nez v4, :cond_b

    :goto_1
    iget-object v4, p0, Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperPdicUs$3;->this$0:Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperPdicUs;

    const/4 v5, 0x2

    invoke-static {v4, v5}, Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperPdicUs;->access$500(Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperPdicUs;I)V

    :goto_2
    return-void

    :cond_1
    iget-object v4, p0, Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperPdicUs$3;->this$0:Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperPdicUs;

    const/16 v5, 0xa

    invoke-static {v4, v5}, Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperPdicUs;->access$200(Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperPdicUs;I)V

    return-void

    :cond_2
    iget-object v4, p0, Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperPdicUs$3;->this$0:Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperPdicUs;

    const/16 v5, 0x8

    invoke-static {v4, v5}, Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperPdicUs;->access$200(Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperPdicUs;I)V

    return-void

    :cond_3
    const/4 v2, 0x3

    :goto_3
    if-gtz v2, :cond_5

    :cond_4
    const-wide/16 v4, 0x1f4

    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V

    const/4 v3, 0x0

    :goto_4
    iget-object v4, p0, Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperPdicUs$3;->this$0:Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperPdicUs;

    invoke-static {v4}, Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperPdicUs;->access$300(Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperPdicUs;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "[Step][4] : Check pdStatus()"

    invoke-static {v4, v5}, Lcom/samsung/android/lib/dexcontrol/fota/debug/SLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperPdicUs$3;->this$0:Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperPdicUs;

    invoke-static {v4}, Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperPdicUs;->access$100(Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperPdicUs;)Lcom/samsung/android/lib/dexcontrol/fota/chipapi/dexpad/pdic/sec/protocol/HIDProtocol;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/samsung/android/lib/dexcontrol/fota/chipapi/dexpad/pdic/sec/protocol/HIDProtocol;->checkPdStatus(Lcom/samsung/android/lib/dexcontrol/fota/chipapi/dexpad/pdic/sec/structure/PDStatus;)I

    move-result v4

    if-ltz v4, :cond_7

    invoke-virtual {v1}, Lcom/samsung/android/lib/dexcontrol/fota/chipapi/dexpad/pdic/sec/structure/PDStatus;->isSinkConnected()Z

    move-result v4

    if-nez v4, :cond_8

    const-wide/16 v4, 0x64

    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V

    add-int/lit8 v3, v3, 0x64

    const/16 v4, 0x3e8

    if-ge v3, v4, :cond_0

    goto :goto_4

    :cond_5
    iget-object v4, p0, Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperPdicUs$3;->this$0:Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperPdicUs;

    invoke-static {v4}, Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperPdicUs;->access$100(Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperPdicUs;)Lcom/samsung/android/lib/dexcontrol/fota/chipapi/dexpad/pdic/sec/protocol/HIDProtocol;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/android/lib/dexcontrol/fota/chipapi/dexpad/pdic/sec/protocol/HIDProtocol;->prSwap()I

    move-result v4

    if-gez v4, :cond_4

    add-int/lit8 v2, v2, -0x1

    if-ltz v2, :cond_6

    const-wide/16 v4, 0x3e8

    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception v0

    iget-object v4, p0, Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperPdicUs$3;->this$0:Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperPdicUs;

    invoke-static {v4}, Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperPdicUs;->access$300(Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperPdicUs;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "Thread interrupted"

    invoke-static {v4, v5}, Lcom/samsung/android/lib/dexcontrol/fota/debug/SLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_6
    :try_start_1
    iget-object v4, p0, Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperPdicUs$3;->this$0:Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperPdicUs;

    const/16 v5, 0x9

    invoke-static {v4, v5}, Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperPdicUs;->access$200(Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperPdicUs;I)V

    return-void

    :cond_7
    iget-object v4, p0, Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperPdicUs$3;->this$0:Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperPdicUs;

    const/16 v5, 0x8

    invoke-static {v4, v5}, Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperPdicUs;->access$200(Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperPdicUs;I)V

    return-void

    :cond_8
    iget-object v4, p0, Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperPdicUs$3;->this$0:Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperPdicUs;

    invoke-static {v4}, Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperPdicUs;->access$300(Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperPdicUs;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "[Step][4] : Swap PR succeessed "

    invoke-static {v4, v5}, Lcom/samsung/android/lib/dexcontrol/fota/debug/SLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_9
    iget-object v4, p0, Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperPdicUs$3;->this$0:Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperPdicUs;

    const/16 v5, 0x9

    invoke-static {v4, v5}, Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperPdicUs;->access$200(Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperPdicUs;I)V

    return-void

    :cond_a
    iget-object v4, p0, Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperPdicUs$3;->this$0:Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperPdicUs;

    const/4 v5, 0x1

    invoke-static {v4, v5}, Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperPdicUs;->access$200(Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperPdicUs;I)V

    return-void

    :cond_b
    iget-object v4, p0, Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperPdicUs$3;->this$0:Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperPdicUs;

    invoke-static {v4}, Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperPdicUs;->access$000(Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperPdicUs;)Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperBase$ChipUpdateHelperListener;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperPdicUs$3;->this$0:Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperPdicUs;

    invoke-virtual {v5}, Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperPdicUs;->getChipId()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x2

    invoke-interface {v4, v5, v6}, Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperBase$ChipUpdateHelperListener;->onUpdateNotify(Ljava/lang/String;I)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1
.end method
