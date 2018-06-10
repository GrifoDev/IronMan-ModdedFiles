.class Lcom/samsung/android/lib/dexcontrol/fota/manager/SDCFotaManager$2;
.super Ljava/lang/Object;
.source "SDCFotaManager.java"

# interfaces
.implements Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperManager$ChipUpdateHelperManagerListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/lib/dexcontrol/fota/manager/SDCFotaManager;->initChipUpdateHelperManager(Landroid/hardware/usb/UsbDevice;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/lib/dexcontrol/fota/manager/SDCFotaManager;


# direct methods
.method constructor <init>(Lcom/samsung/android/lib/dexcontrol/fota/manager/SDCFotaManager;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/lib/dexcontrol/fota/manager/SDCFotaManager$2;->this$0:Lcom/samsung/android/lib/dexcontrol/fota/manager/SDCFotaManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(I)V
    .locals 3

    const/4 v0, -0x1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "ChipUpdateHelperManager Error errorCode : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "SDCFotaManager"

    invoke-static {v2, v1}, Lcom/samsung/android/lib/dexcontrol/fota/debug/SLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    packed-switch p1, :pswitch_data_0

    :goto_0
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    :goto_1
    return-void

    :pswitch_0
    const/4 v0, 0x0

    goto :goto_0

    :pswitch_1
    const/4 v0, 0x2

    goto :goto_0

    :pswitch_2
    const/4 v0, 0x4

    goto :goto_0

    :pswitch_3
    const/4 v0, 0x6

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/lib/dexcontrol/fota/manager/SDCFotaManager$2;->this$0:Lcom/samsung/android/lib/dexcontrol/fota/manager/SDCFotaManager;

    invoke-static {v1}, Lcom/samsung/android/lib/dexcontrol/fota/manager/SDCFotaManager;->access$200(Lcom/samsung/android/lib/dexcontrol/fota/manager/SDCFotaManager;)Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->lock()V

    iget-object v1, p0, Lcom/samsung/android/lib/dexcontrol/fota/manager/SDCFotaManager$2;->this$0:Lcom/samsung/android/lib/dexcontrol/fota/manager/SDCFotaManager;

    invoke-static {v1}, Lcom/samsung/android/lib/dexcontrol/fota/manager/SDCFotaManager;->access$900(Lcom/samsung/android/lib/dexcontrol/fota/manager/SDCFotaManager;)I

    move-result v1

    packed-switch v1, :pswitch_data_1

    iget-object v1, p0, Lcom/samsung/android/lib/dexcontrol/fota/manager/SDCFotaManager$2;->this$0:Lcom/samsung/android/lib/dexcontrol/fota/manager/SDCFotaManager;

    const/4 v2, 0x3

    invoke-static {v1, v2}, Lcom/samsung/android/lib/dexcontrol/fota/manager/SDCFotaManager;->access$902(Lcom/samsung/android/lib/dexcontrol/fota/manager/SDCFotaManager;I)I

    :goto_2
    iget-object v1, p0, Lcom/samsung/android/lib/dexcontrol/fota/manager/SDCFotaManager$2;->this$0:Lcom/samsung/android/lib/dexcontrol/fota/manager/SDCFotaManager;

    invoke-static {v1}, Lcom/samsung/android/lib/dexcontrol/fota/manager/SDCFotaManager;->access$000(Lcom/samsung/android/lib/dexcontrol/fota/manager/SDCFotaManager;)Lcom/samsung/android/lib/dexcontrol/fota/manager/EventHandlerManager;

    move-result-object v1

    const/4 v2, 0x5

    invoke-virtual {v1, v2, v0}, Lcom/samsung/android/lib/dexcontrol/fota/manager/EventHandlerManager;->invokeSelfListener(II)V

    iget-object v1, p0, Lcom/samsung/android/lib/dexcontrol/fota/manager/SDCFotaManager$2;->this$0:Lcom/samsung/android/lib/dexcontrol/fota/manager/SDCFotaManager;

    invoke-static {v1}, Lcom/samsung/android/lib/dexcontrol/fota/manager/SDCFotaManager;->access$200(Lcom/samsung/android/lib/dexcontrol/fota/manager/SDCFotaManager;)Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_1

    :pswitch_4
    iget-object v1, p0, Lcom/samsung/android/lib/dexcontrol/fota/manager/SDCFotaManager$2;->this$0:Lcom/samsung/android/lib/dexcontrol/fota/manager/SDCFotaManager;

    const/4 v2, 0x2

    invoke-static {v1, v2}, Lcom/samsung/android/lib/dexcontrol/fota/manager/SDCFotaManager;->access$902(Lcom/samsung/android/lib/dexcontrol/fota/manager/SDCFotaManager;I)I

    goto :goto_2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_3
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_4
    .end packed-switch
.end method

.method public onNotifyDetachForUpdate()V
    .locals 2

    const-string/jumbo v0, "SDCFotaManager"

    const-string/jumbo v1, "onNotifyDetachForUpdate"

    invoke-static {v0, v1}, Lcom/samsung/android/lib/dexcontrol/fota/debug/SLog;->m(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/lib/dexcontrol/fota/manager/SDCFotaManager$2;->this$0:Lcom/samsung/android/lib/dexcontrol/fota/manager/SDCFotaManager;

    invoke-static {v0}, Lcom/samsung/android/lib/dexcontrol/fota/manager/SDCFotaManager;->access$200(Lcom/samsung/android/lib/dexcontrol/fota/manager/SDCFotaManager;)Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    iget-object v0, p0, Lcom/samsung/android/lib/dexcontrol/fota/manager/SDCFotaManager$2;->this$0:Lcom/samsung/android/lib/dexcontrol/fota/manager/SDCFotaManager;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/samsung/android/lib/dexcontrol/fota/manager/SDCFotaManager;->access$402(Lcom/samsung/android/lib/dexcontrol/fota/manager/SDCFotaManager;Z)Z

    iget-object v0, p0, Lcom/samsung/android/lib/dexcontrol/fota/manager/SDCFotaManager$2;->this$0:Lcom/samsung/android/lib/dexcontrol/fota/manager/SDCFotaManager;

    invoke-static {v0}, Lcom/samsung/android/lib/dexcontrol/fota/manager/SDCFotaManager;->access$200(Lcom/samsung/android/lib/dexcontrol/fota/manager/SDCFotaManager;)Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void
.end method

.method public onRequestDeviceChipInfoList(Ljava/util/ArrayList;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/lib/dexcontrol/fota/data/SDCBinaryInfo;",
            ">;)V"
        }
    .end annotation

    const/4 v7, 0x0

    const/4 v6, 0x2

    const/4 v5, 0x1

    if-nez p1, :cond_0

    const-string/jumbo v3, "SDCFotaManager"

    const-string/jumbo v4, "onRequestDeviceChipInfoList() there is no chip info"

    invoke-static {v3, v4}, Lcom/samsung/android/lib/dexcontrol/fota/debug/SLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    iget-object v3, p0, Lcom/samsung/android/lib/dexcontrol/fota/manager/SDCFotaManager$2;->this$0:Lcom/samsung/android/lib/dexcontrol/fota/manager/SDCFotaManager;

    invoke-static {v3, p1}, Lcom/samsung/android/lib/dexcontrol/fota/manager/SDCFotaManager;->access$1302(Lcom/samsung/android/lib/dexcontrol/fota/manager/SDCFotaManager;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    const/4 v0, 0x1

    const/4 v1, 0x0

    :goto_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lt v1, v3, :cond_1

    :goto_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onRequestDeviceChipInfoList bootMode="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "SDCFotaManager"

    invoke-static {v4, v3}, Lcom/samsung/android/lib/dexcontrol/fota/debug/SLog;->m(Ljava/lang/String;Ljava/lang/String;)V

    if-eq v0, v6, :cond_4

    iget-object v3, p0, Lcom/samsung/android/lib/dexcontrol/fota/manager/SDCFotaManager$2;->this$0:Lcom/samsung/android/lib/dexcontrol/fota/manager/SDCFotaManager;

    invoke-static {v3, p1}, Lcom/samsung/android/lib/dexcontrol/fota/manager/SDCFotaManager;->access$1400(Lcom/samsung/android/lib/dexcontrol/fota/manager/SDCFotaManager;Ljava/util/ArrayList;)Z

    move-result v3

    if-eq v3, v5, :cond_5

    iget-object v3, p0, Lcom/samsung/android/lib/dexcontrol/fota/manager/SDCFotaManager$2;->this$0:Lcom/samsung/android/lib/dexcontrol/fota/manager/SDCFotaManager;

    invoke-static {v3}, Lcom/samsung/android/lib/dexcontrol/fota/manager/SDCFotaManager;->access$300(Lcom/samsung/android/lib/dexcontrol/fota/manager/SDCFotaManager;)Z

    move-result v3

    if-eqz v3, :cond_6

    iget-object v3, p0, Lcom/samsung/android/lib/dexcontrol/fota/manager/SDCFotaManager$2;->this$0:Lcom/samsung/android/lib/dexcontrol/fota/manager/SDCFotaManager;

    invoke-static {v3, v6}, Lcom/samsung/android/lib/dexcontrol/fota/manager/SDCFotaManager;->access$1000(Lcom/samsung/android/lib/dexcontrol/fota/manager/SDCFotaManager;I)V

    iget-object v3, p0, Lcom/samsung/android/lib/dexcontrol/fota/manager/SDCFotaManager$2;->this$0:Lcom/samsung/android/lib/dexcontrol/fota/manager/SDCFotaManager;

    invoke-static {v3}, Lcom/samsung/android/lib/dexcontrol/fota/manager/SDCFotaManager;->access$000(Lcom/samsung/android/lib/dexcontrol/fota/manager/SDCFotaManager;)Lcom/samsung/android/lib/dexcontrol/fota/manager/EventHandlerManager;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/lib/dexcontrol/fota/manager/SDCFotaManager$2;->this$0:Lcom/samsung/android/lib/dexcontrol/fota/manager/SDCFotaManager;

    invoke-static {v4}, Lcom/samsung/android/lib/dexcontrol/fota/manager/SDCFotaManager;->access$1100(Lcom/samsung/android/lib/dexcontrol/fota/manager/SDCFotaManager;)I

    move-result v4

    invoke-virtual {v3, v5, v4, v7}, Lcom/samsung/android/lib/dexcontrol/fota/manager/EventHandlerManager;->invokeSelfListener(III)V

    :goto_3
    return-void

    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onRequestDeviceChipInfoList() size = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "SDCFotaManager"

    invoke-static {v4, v3}, Lcom/samsung/android/lib/dexcontrol/fota/debug/SLog;->m(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_3

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/lib/dexcontrol/fota/data/SDCBinaryInfo;

    iget-boolean v3, v3, Lcom/samsung/android/lib/dexcontrol/fota/data/SDCBinaryInfo;->isBootMode:Z

    if-ne v3, v5, :cond_2

    const/4 v0, 0x2

    goto :goto_2

    :cond_4
    iget-object v3, p0, Lcom/samsung/android/lib/dexcontrol/fota/manager/SDCFotaManager$2;->this$0:Lcom/samsung/android/lib/dexcontrol/fota/manager/SDCFotaManager;

    const/4 v4, 0x4

    invoke-static {v3, v4}, Lcom/samsung/android/lib/dexcontrol/fota/manager/SDCFotaManager;->access$1000(Lcom/samsung/android/lib/dexcontrol/fota/manager/SDCFotaManager;I)V

    iget-object v3, p0, Lcom/samsung/android/lib/dexcontrol/fota/manager/SDCFotaManager$2;->this$0:Lcom/samsung/android/lib/dexcontrol/fota/manager/SDCFotaManager;

    invoke-static {v3}, Lcom/samsung/android/lib/dexcontrol/fota/manager/SDCFotaManager;->access$000(Lcom/samsung/android/lib/dexcontrol/fota/manager/SDCFotaManager;)Lcom/samsung/android/lib/dexcontrol/fota/manager/EventHandlerManager;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/lib/dexcontrol/fota/manager/SDCFotaManager$2;->this$0:Lcom/samsung/android/lib/dexcontrol/fota/manager/SDCFotaManager;

    invoke-static {v4}, Lcom/samsung/android/lib/dexcontrol/fota/manager/SDCFotaManager;->access$1100(Lcom/samsung/android/lib/dexcontrol/fota/manager/SDCFotaManager;)I

    move-result v4

    invoke-virtual {v3, v5, v4, v6}, Lcom/samsung/android/lib/dexcontrol/fota/manager/EventHandlerManager;->invokeSelfListener(III)V

    goto :goto_3

    :cond_5
    iget-object v3, p0, Lcom/samsung/android/lib/dexcontrol/fota/manager/SDCFotaManager$2;->this$0:Lcom/samsung/android/lib/dexcontrol/fota/manager/SDCFotaManager;

    const/4 v4, 0x3

    invoke-static {v3, v4}, Lcom/samsung/android/lib/dexcontrol/fota/manager/SDCFotaManager;->access$1000(Lcom/samsung/android/lib/dexcontrol/fota/manager/SDCFotaManager;I)V

    iget-object v3, p0, Lcom/samsung/android/lib/dexcontrol/fota/manager/SDCFotaManager$2;->this$0:Lcom/samsung/android/lib/dexcontrol/fota/manager/SDCFotaManager;

    invoke-static {v3}, Lcom/samsung/android/lib/dexcontrol/fota/manager/SDCFotaManager;->access$1300(Lcom/samsung/android/lib/dexcontrol/fota/manager/SDCFotaManager;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/android/lib/dexcontrol/fota/manager/VersionMaker;->getVersionMap(Ljava/util/ArrayList;)Ljava/util/HashMap;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/lib/dexcontrol/fota/manager/SDCFotaManager$2;->this$0:Lcom/samsung/android/lib/dexcontrol/fota/manager/SDCFotaManager;

    invoke-static {v3}, Lcom/samsung/android/lib/dexcontrol/fota/manager/SDCFotaManager;->access$000(Lcom/samsung/android/lib/dexcontrol/fota/manager/SDCFotaManager;)Lcom/samsung/android/lib/dexcontrol/fota/manager/EventHandlerManager;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/lib/dexcontrol/fota/manager/SDCFotaManager$2;->this$0:Lcom/samsung/android/lib/dexcontrol/fota/manager/SDCFotaManager;

    invoke-static {v4}, Lcom/samsung/android/lib/dexcontrol/fota/manager/SDCFotaManager;->access$1100(Lcom/samsung/android/lib/dexcontrol/fota/manager/SDCFotaManager;)I

    move-result v4

    invoke-virtual {v3, v5, v4, v0, v2}, Lcom/samsung/android/lib/dexcontrol/fota/manager/EventHandlerManager;->invokeSelfListener(IIILjava/lang/Object;)V

    goto :goto_3

    :cond_6
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onRequestDeviceChipInfoList bootMode="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "not checked HDMI state"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "SDCFotaManager"

    invoke-static {v4, v3}, Lcom/samsung/android/lib/dexcontrol/fota/debug/SLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/samsung/android/lib/dexcontrol/fota/manager/SDCFotaManager$2;->this$0:Lcom/samsung/android/lib/dexcontrol/fota/manager/SDCFotaManager;

    invoke-static {v3}, Lcom/samsung/android/lib/dexcontrol/fota/manager/SDCFotaManager;->access$700(Lcom/samsung/android/lib/dexcontrol/fota/manager/SDCFotaManager;)Lcom/samsung/android/lib/dexcontrol/fota/usb/UsbDeviceChecker;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/lib/dexcontrol/fota/usb/UsbDeviceChecker;->requestCheckHdmiConnected()V

    goto/16 :goto_3
.end method

.method public onUpdateEnd(Z)V
    .locals 4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "ChipUpdateHelperManagerListener onUpdateEnd isSuccess="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "SDCFotaManager"

    invoke-static {v2, v1}, Lcom/samsung/android/lib/dexcontrol/fota/debug/SLog;->m(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/lib/dexcontrol/fota/manager/SDCFotaManager$2;->this$0:Lcom/samsung/android/lib/dexcontrol/fota/manager/SDCFotaManager;

    const/4 v2, 0x3

    invoke-static {v1, v2}, Lcom/samsung/android/lib/dexcontrol/fota/manager/SDCFotaManager;->access$1000(Lcom/samsung/android/lib/dexcontrol/fota/manager/SDCFotaManager;I)V

    iget-object v1, p0, Lcom/samsung/android/lib/dexcontrol/fota/manager/SDCFotaManager$2;->this$0:Lcom/samsung/android/lib/dexcontrol/fota/manager/SDCFotaManager;

    invoke-static {v1}, Lcom/samsung/android/lib/dexcontrol/fota/manager/SDCFotaManager;->access$1200(Lcom/samsung/android/lib/dexcontrol/fota/manager/SDCFotaManager;)Lcom/samsung/android/lib/dexcontrol/fota/server/FotaServerManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/lib/dexcontrol/fota/server/FotaServerManager;->clearDataFiles()V

    if-nez p1, :cond_0

    const-string/jumbo v0, "Fail.."

    :goto_0
    invoke-static {}, Lcom/samsung/android/lib/dexcontrol/fota/debug/DexFotaLibDataObserver;->getInstance()Lcom/samsung/android/lib/dexcontrol/fota/debug/DexFotaLibDataObserver;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Update is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/lib/dexcontrol/fota/debug/DexFotaLibDataObserver;->setUpdateMessage(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/lib/dexcontrol/fota/manager/SDCFotaManager$2;->this$0:Lcom/samsung/android/lib/dexcontrol/fota/manager/SDCFotaManager;

    invoke-static {v1}, Lcom/samsung/android/lib/dexcontrol/fota/manager/SDCFotaManager;->access$000(Lcom/samsung/android/lib/dexcontrol/fota/manager/SDCFotaManager;)Lcom/samsung/android/lib/dexcontrol/fota/manager/EventHandlerManager;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v1, v2, p1}, Lcom/samsung/android/lib/dexcontrol/fota/manager/EventHandlerManager;->invokeSelfListener(IZ)V

    return-void

    :cond_0
    const-string/jumbo v0, "Success!"

    goto :goto_0
.end method

.method public onUpdateProgress(II)V
    .locals 3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onUpdateProgress ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "SDCFotaManager"

    invoke-static {v2, v1}, Lcom/samsung/android/lib/dexcontrol/fota/debug/SLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/samsung/android/lib/dexcontrol/fota/manager/SDCFotaManagerEventHandler$ProgressData;

    const/4 v1, 0x2

    invoke-direct {v0, v1, p1, p2}, Lcom/samsung/android/lib/dexcontrol/fota/manager/SDCFotaManagerEventHandler$ProgressData;-><init>(III)V

    iget-object v1, p0, Lcom/samsung/android/lib/dexcontrol/fota/manager/SDCFotaManager$2;->this$0:Lcom/samsung/android/lib/dexcontrol/fota/manager/SDCFotaManager;

    invoke-static {v1}, Lcom/samsung/android/lib/dexcontrol/fota/manager/SDCFotaManager;->access$000(Lcom/samsung/android/lib/dexcontrol/fota/manager/SDCFotaManager;)Lcom/samsung/android/lib/dexcontrol/fota/manager/EventHandlerManager;

    move-result-object v1

    const/4 v2, 0x6

    invoke-virtual {v1, v2, v0}, Lcom/samsung/android/lib/dexcontrol/fota/manager/EventHandlerManager;->invokeSelfListener(ILjava/lang/Object;)V

    return-void
.end method

.method public onUpdateProgressOneChip(F)V
    .locals 4

    new-instance v0, Lcom/samsung/android/lib/dexcontrol/fota/manager/SDCFotaManagerEventHandler$ProgressData;

    float-to-int v1, p1

    const/4 v2, 0x3

    const/16 v3, 0x64

    invoke-direct {v0, v2, v3, v1}, Lcom/samsung/android/lib/dexcontrol/fota/manager/SDCFotaManagerEventHandler$ProgressData;-><init>(III)V

    iget-object v1, p0, Lcom/samsung/android/lib/dexcontrol/fota/manager/SDCFotaManager$2;->this$0:Lcom/samsung/android/lib/dexcontrol/fota/manager/SDCFotaManager;

    invoke-static {v1}, Lcom/samsung/android/lib/dexcontrol/fota/manager/SDCFotaManager;->access$000(Lcom/samsung/android/lib/dexcontrol/fota/manager/SDCFotaManager;)Lcom/samsung/android/lib/dexcontrol/fota/manager/EventHandlerManager;

    move-result-object v1

    const/4 v2, 0x6

    invoke-virtual {v1, v2, v0}, Lcom/samsung/android/lib/dexcontrol/fota/manager/EventHandlerManager;->invokeSelfListener(ILjava/lang/Object;)V

    return-void
.end method

.method public onUpdateStart()V
    .locals 2

    const-string/jumbo v0, "SDCFotaManager"

    const-string/jumbo v1, "ChipUpdateHelperManagerListener onUpdateStart"

    invoke-static {v0, v1}, Lcom/samsung/android/lib/dexcontrol/fota/debug/SLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
