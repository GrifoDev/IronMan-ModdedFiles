.class Lcom/samsung/android/lib/dexcontrol/fota/manager/SDCFotaManager$1;
.super Ljava/lang/Object;
.source "SDCFotaManager.java"

# interfaces
.implements Lcom/samsung/android/lib/dexcontrol/fota/usb/IUsbDeviceChecker$UsbDeviceListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/lib/dexcontrol/fota/manager/SDCFotaManager;->initUsbDeviceChecker()V
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

    iput-object p1, p0, Lcom/samsung/android/lib/dexcontrol/fota/manager/SDCFotaManager$1;->this$0:Lcom/samsung/android/lib/dexcontrol/fota/manager/SDCFotaManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDeviceAttached(ILandroid/hardware/usb/UsbDevice;)V
    .locals 5

    const/4 v4, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onDeviceAttached : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "SDCFotaManager"

    invoke-static {v3, v2}, Lcom/samsung/android/lib/dexcontrol/fota/debug/SLog;->m(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/android/lib/dexcontrol/fota/manager/SDCFotaManager$1;->this$0:Lcom/samsung/android/lib/dexcontrol/fota/manager/SDCFotaManager;

    invoke-static {v2}, Lcom/samsung/android/lib/dexcontrol/fota/manager/SDCFotaManager;->access$200(Lcom/samsung/android/lib/dexcontrol/fota/manager/SDCFotaManager;)Ljava/util/concurrent/locks/Lock;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->lock()V

    iget-object v2, p0, Lcom/samsung/android/lib/dexcontrol/fota/manager/SDCFotaManager$1;->this$0:Lcom/samsung/android/lib/dexcontrol/fota/manager/SDCFotaManager;

    invoke-static {v2, v4}, Lcom/samsung/android/lib/dexcontrol/fota/manager/SDCFotaManager;->access$302(Lcom/samsung/android/lib/dexcontrol/fota/manager/SDCFotaManager;Z)Z

    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/lib/dexcontrol/fota/manager/SDCFotaManager$1;->this$0:Lcom/samsung/android/lib/dexcontrol/fota/manager/SDCFotaManager;

    invoke-static {v2}, Lcom/samsung/android/lib/dexcontrol/fota/manager/SDCFotaManager;->access$400(Lcom/samsung/android/lib/dexcontrol/fota/manager/SDCFotaManager;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/samsung/android/lib/dexcontrol/fota/manager/SDCFotaManager$1;->this$0:Lcom/samsung/android/lib/dexcontrol/fota/manager/SDCFotaManager;

    invoke-static {v2}, Lcom/samsung/android/lib/dexcontrol/fota/manager/SDCFotaManager;->access$600(Lcom/samsung/android/lib/dexcontrol/fota/manager/SDCFotaManager;)Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperManager;->getCurrentUpdateCondition()I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_1

    iget-object v2, p0, Lcom/samsung/android/lib/dexcontrol/fota/manager/SDCFotaManager$1;->this$0:Lcom/samsung/android/lib/dexcontrol/fota/manager/SDCFotaManager;

    invoke-static {v2}, Lcom/samsung/android/lib/dexcontrol/fota/manager/SDCFotaManager;->access$800(Lcom/samsung/android/lib/dexcontrol/fota/manager/SDCFotaManager;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    iget-object v2, p0, Lcom/samsung/android/lib/dexcontrol/fota/manager/SDCFotaManager$1;->this$0:Lcom/samsung/android/lib/dexcontrol/fota/manager/SDCFotaManager;

    invoke-static {v2}, Lcom/samsung/android/lib/dexcontrol/fota/manager/SDCFotaManager;->access$200(Lcom/samsung/android/lib/dexcontrol/fota/manager/SDCFotaManager;)Ljava/util/concurrent/locks/Lock;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    :goto_1
    return-void

    :cond_0
    :try_start_1
    const-string/jumbo v2, "SDCFotaManager"

    const-string/jumbo v3, "onDeviceAttached init fota lib"

    invoke-static {v2, v3}, Lcom/samsung/android/lib/dexcontrol/fota/debug/SLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/android/lib/dexcontrol/fota/manager/SDCFotaManager$1;->this$0:Lcom/samsung/android/lib/dexcontrol/fota/manager/SDCFotaManager;

    invoke-static {v2, p1, p2}, Lcom/samsung/android/lib/dexcontrol/fota/manager/SDCFotaManager;->access$500(Lcom/samsung/android/lib/dexcontrol/fota/manager/SDCFotaManager;ILandroid/hardware/usb/UsbDevice;)V

    iget-object v2, p0, Lcom/samsung/android/lib/dexcontrol/fota/manager/SDCFotaManager$1;->this$0:Lcom/samsung/android/lib/dexcontrol/fota/manager/SDCFotaManager;

    invoke-static {v2}, Lcom/samsung/android/lib/dexcontrol/fota/manager/SDCFotaManager;->access$600(Lcom/samsung/android/lib/dexcontrol/fota/manager/SDCFotaManager;)Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperManager;

    move-result-object v2

    invoke-virtual {v2, p2}, Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperManager;->attachDevice(Landroid/hardware/usb/UsbDevice;)V

    iget-object v2, p0, Lcom/samsung/android/lib/dexcontrol/fota/manager/SDCFotaManager$1;->this$0:Lcom/samsung/android/lib/dexcontrol/fota/manager/SDCFotaManager;

    invoke-static {v2}, Lcom/samsung/android/lib/dexcontrol/fota/manager/SDCFotaManager;->access$600(Lcom/samsung/android/lib/dexcontrol/fota/manager/SDCFotaManager;)Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperManager;->requestDeviceChipInfoList()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v1

    :try_start_2
    invoke-virtual {v1}, Ljava/lang/Exception;->getStackTrace()[Ljava/lang/StackTraceElement;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    iget-object v2, p0, Lcom/samsung/android/lib/dexcontrol/fota/manager/SDCFotaManager$1;->this$0:Lcom/samsung/android/lib/dexcontrol/fota/manager/SDCFotaManager;

    invoke-static {v2}, Lcom/samsung/android/lib/dexcontrol/fota/manager/SDCFotaManager;->access$200(Lcom/samsung/android/lib/dexcontrol/fota/manager/SDCFotaManager;)Ljava/util/concurrent/locks/Lock;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_1

    :cond_1
    :try_start_3
    const-string/jumbo v2, "SDCFotaManager"

    const-string/jumbo v3, "onDeviceAttached now updating.. request HDMI check"

    invoke-static {v2, v3}, Lcom/samsung/android/lib/dexcontrol/fota/debug/SLog;->m(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/android/lib/dexcontrol/fota/manager/SDCFotaManager$1;->this$0:Lcom/samsung/android/lib/dexcontrol/fota/manager/SDCFotaManager;

    invoke-static {v2}, Lcom/samsung/android/lib/dexcontrol/fota/manager/SDCFotaManager;->access$700(Lcom/samsung/android/lib/dexcontrol/fota/manager/SDCFotaManager;)Lcom/samsung/android/lib/dexcontrol/fota/usb/UsbDeviceChecker;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/lib/dexcontrol/fota/usb/UsbDeviceChecker;->requestCheckHdmiConnected()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v2, p0, Lcom/samsung/android/lib/dexcontrol/fota/manager/SDCFotaManager$1;->this$0:Lcom/samsung/android/lib/dexcontrol/fota/manager/SDCFotaManager;

    invoke-static {v2}, Lcom/samsung/android/lib/dexcontrol/fota/manager/SDCFotaManager;->access$200(Lcom/samsung/android/lib/dexcontrol/fota/manager/SDCFotaManager;)Ljava/util/concurrent/locks/Lock;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public onDeviceDetached()V
    .locals 4

    const-string/jumbo v2, "SDCFotaManager"

    const-string/jumbo v3, "onDeviceDetached()"

    invoke-static {v2, v3}, Lcom/samsung/android/lib/dexcontrol/fota/debug/SLog;->m(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/android/lib/dexcontrol/fota/manager/SDCFotaManager$1;->this$0:Lcom/samsung/android/lib/dexcontrol/fota/manager/SDCFotaManager;

    invoke-static {v2}, Lcom/samsung/android/lib/dexcontrol/fota/manager/SDCFotaManager;->access$200(Lcom/samsung/android/lib/dexcontrol/fota/manager/SDCFotaManager;)Ljava/util/concurrent/locks/Lock;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/lib/dexcontrol/fota/manager/SDCFotaManager$1;->this$0:Lcom/samsung/android/lib/dexcontrol/fota/manager/SDCFotaManager;

    invoke-static {v2}, Lcom/samsung/android/lib/dexcontrol/fota/manager/SDCFotaManager;->access$400(Lcom/samsung/android/lib/dexcontrol/fota/manager/SDCFotaManager;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/samsung/android/lib/dexcontrol/fota/manager/SDCFotaManager$1;->this$0:Lcom/samsung/android/lib/dexcontrol/fota/manager/SDCFotaManager;

    invoke-static {v2}, Lcom/samsung/android/lib/dexcontrol/fota/manager/SDCFotaManager;->access$700(Lcom/samsung/android/lib/dexcontrol/fota/manager/SDCFotaManager;)Lcom/samsung/android/lib/dexcontrol/fota/usb/UsbDeviceChecker;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/lib/dexcontrol/fota/usb/UsbDeviceChecker;->requestWaitReAttach()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    iget-object v2, p0, Lcom/samsung/android/lib/dexcontrol/fota/manager/SDCFotaManager$1;->this$0:Lcom/samsung/android/lib/dexcontrol/fota/manager/SDCFotaManager;

    invoke-static {v2}, Lcom/samsung/android/lib/dexcontrol/fota/manager/SDCFotaManager;->access$200(Lcom/samsung/android/lib/dexcontrol/fota/manager/SDCFotaManager;)Ljava/util/concurrent/locks/Lock;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    :goto_1
    return-void

    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/samsung/android/lib/dexcontrol/fota/manager/SDCFotaManager$1;->this$0:Lcom/samsung/android/lib/dexcontrol/fota/manager/SDCFotaManager;

    invoke-static {v2}, Lcom/samsung/android/lib/dexcontrol/fota/manager/SDCFotaManager;->access$100(Lcom/samsung/android/lib/dexcontrol/fota/manager/SDCFotaManager;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v1

    :try_start_2
    invoke-virtual {v1}, Ljava/lang/Exception;->getStackTrace()[Ljava/lang/StackTraceElement;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    iget-object v2, p0, Lcom/samsung/android/lib/dexcontrol/fota/manager/SDCFotaManager$1;->this$0:Lcom/samsung/android/lib/dexcontrol/fota/manager/SDCFotaManager;

    invoke-static {v2}, Lcom/samsung/android/lib/dexcontrol/fota/manager/SDCFotaManager;->access$200(Lcom/samsung/android/lib/dexcontrol/fota/manager/SDCFotaManager;)Ljava/util/concurrent/locks/Lock;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_1

    :catchall_0
    move-exception v0

    iget-object v2, p0, Lcom/samsung/android/lib/dexcontrol/fota/manager/SDCFotaManager$1;->this$0:Lcom/samsung/android/lib/dexcontrol/fota/manager/SDCFotaManager;

    invoke-static {v2}, Lcom/samsung/android/lib/dexcontrol/fota/manager/SDCFotaManager;->access$200(Lcom/samsung/android/lib/dexcontrol/fota/manager/SDCFotaManager;)Ljava/util/concurrent/locks/Lock;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public onError(I)V
    .locals 3

    const/4 v2, 0x5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "UsbDeviceChecker Error erroCode : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "SDCFotaManager"

    invoke-static {v1, v0}, Lcom/samsung/android/lib/dexcontrol/fota/debug/SLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    packed-switch p1, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/samsung/android/lib/dexcontrol/fota/manager/SDCFotaManager$1;->this$0:Lcom/samsung/android/lib/dexcontrol/fota/manager/SDCFotaManager;

    invoke-static {v0}, Lcom/samsung/android/lib/dexcontrol/fota/manager/SDCFotaManager;->access$000(Lcom/samsung/android/lib/dexcontrol/fota/manager/SDCFotaManager;)Lcom/samsung/android/lib/dexcontrol/fota/manager/EventHandlerManager;

    move-result-object v0

    invoke-virtual {v0, v2, v2}, Lcom/samsung/android/lib/dexcontrol/fota/manager/EventHandlerManager;->invokeSelfListener(II)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/samsung/android/lib/dexcontrol/fota/manager/SDCFotaManager$1;->this$0:Lcom/samsung/android/lib/dexcontrol/fota/manager/SDCFotaManager;

    invoke-static {v0}, Lcom/samsung/android/lib/dexcontrol/fota/manager/SDCFotaManager;->access$100(Lcom/samsung/android/lib/dexcontrol/fota/manager/SDCFotaManager;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onHdmiConnected(Z)V
    .locals 5

    const/4 v4, 0x3

    const/4 v3, 0x0

    const/4 v2, 0x1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onHdmiConnected isConnected="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " isNotifiedDetachForUpdate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/lib/dexcontrol/fota/manager/SDCFotaManager$1;->this$0:Lcom/samsung/android/lib/dexcontrol/fota/manager/SDCFotaManager;

    invoke-static {v1}, Lcom/samsung/android/lib/dexcontrol/fota/manager/SDCFotaManager;->access$400(Lcom/samsung/android/lib/dexcontrol/fota/manager/SDCFotaManager;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "SDCFotaManager"

    invoke-static {v1, v0}, Lcom/samsung/android/lib/dexcontrol/fota/debug/SLog;->m(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/lib/dexcontrol/fota/manager/SDCFotaManager$1;->this$0:Lcom/samsung/android/lib/dexcontrol/fota/manager/SDCFotaManager;

    invoke-static {v0}, Lcom/samsung/android/lib/dexcontrol/fota/manager/SDCFotaManager;->access$900(Lcom/samsung/android/lib/dexcontrol/fota/manager/SDCFotaManager;)I

    move-result v0

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/lib/dexcontrol/fota/manager/SDCFotaManager$1;->this$0:Lcom/samsung/android/lib/dexcontrol/fota/manager/SDCFotaManager;

    invoke-static {v0}, Lcom/samsung/android/lib/dexcontrol/fota/manager/SDCFotaManager;->access$400(Lcom/samsung/android/lib/dexcontrol/fota/manager/SDCFotaManager;)Z

    move-result v0

    if-eq v0, v2, :cond_2

    iget-object v0, p0, Lcom/samsung/android/lib/dexcontrol/fota/manager/SDCFotaManager$1;->this$0:Lcom/samsung/android/lib/dexcontrol/fota/manager/SDCFotaManager;

    invoke-static {v0}, Lcom/samsung/android/lib/dexcontrol/fota/manager/SDCFotaManager;->access$300(Lcom/samsung/android/lib/dexcontrol/fota/manager/SDCFotaManager;)Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/lib/dexcontrol/fota/manager/SDCFotaManager$1;->this$0:Lcom/samsung/android/lib/dexcontrol/fota/manager/SDCFotaManager;

    invoke-static {v0, v4}, Lcom/samsung/android/lib/dexcontrol/fota/manager/SDCFotaManager;->access$1000(Lcom/samsung/android/lib/dexcontrol/fota/manager/SDCFotaManager;I)V

    iget-object v0, p0, Lcom/samsung/android/lib/dexcontrol/fota/manager/SDCFotaManager$1;->this$0:Lcom/samsung/android/lib/dexcontrol/fota/manager/SDCFotaManager;

    invoke-static {v0}, Lcom/samsung/android/lib/dexcontrol/fota/manager/SDCFotaManager;->access$000(Lcom/samsung/android/lib/dexcontrol/fota/manager/SDCFotaManager;)Lcom/samsung/android/lib/dexcontrol/fota/manager/EventHandlerManager;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/lib/dexcontrol/fota/manager/SDCFotaManager$1;->this$0:Lcom/samsung/android/lib/dexcontrol/fota/manager/SDCFotaManager;

    invoke-static {v1}, Lcom/samsung/android/lib/dexcontrol/fota/manager/SDCFotaManager;->access$1100(Lcom/samsung/android/lib/dexcontrol/fota/manager/SDCFotaManager;)I

    move-result v1

    invoke-virtual {v0, v2, v1, v3}, Lcom/samsung/android/lib/dexcontrol/fota/manager/EventHandlerManager;->invokeSelfListener(III)V

    goto :goto_0

    :cond_2
    if-eq p1, v2, :cond_3

    iget-object v0, p0, Lcom/samsung/android/lib/dexcontrol/fota/manager/SDCFotaManager$1;->this$0:Lcom/samsung/android/lib/dexcontrol/fota/manager/SDCFotaManager;

    invoke-static {v0}, Lcom/samsung/android/lib/dexcontrol/fota/manager/SDCFotaManager;->access$600(Lcom/samsung/android/lib/dexcontrol/fota/manager/SDCFotaManager;)Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperManager;->cancelUpdate()V

    iget-object v0, p0, Lcom/samsung/android/lib/dexcontrol/fota/manager/SDCFotaManager$1;->this$0:Lcom/samsung/android/lib/dexcontrol/fota/manager/SDCFotaManager;

    invoke-static {v0, v4}, Lcom/samsung/android/lib/dexcontrol/fota/manager/SDCFotaManager;->access$1000(Lcom/samsung/android/lib/dexcontrol/fota/manager/SDCFotaManager;I)V

    invoke-static {}, Lcom/samsung/android/lib/dexcontrol/fota/debug/DexFotaLibDataObserver;->getInstance()Lcom/samsung/android/lib/dexcontrol/fota/debug/DexFotaLibDataObserver;

    move-result-object v0

    const-string/jumbo v1, "HDMI is not connected,, Update is Fail"

    invoke-virtual {v0, v1}, Lcom/samsung/android/lib/dexcontrol/fota/debug/DexFotaLibDataObserver;->setUpdateMessage(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/lib/dexcontrol/fota/manager/SDCFotaManager$1;->this$0:Lcom/samsung/android/lib/dexcontrol/fota/manager/SDCFotaManager;

    invoke-static {v0}, Lcom/samsung/android/lib/dexcontrol/fota/manager/SDCFotaManager;->access$000(Lcom/samsung/android/lib/dexcontrol/fota/manager/SDCFotaManager;)Lcom/samsung/android/lib/dexcontrol/fota/manager/EventHandlerManager;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1, v3}, Lcom/samsung/android/lib/dexcontrol/fota/manager/EventHandlerManager;->invokeSelfListener(IZ)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/samsung/android/lib/dexcontrol/fota/manager/SDCFotaManager$1;->this$0:Lcom/samsung/android/lib/dexcontrol/fota/manager/SDCFotaManager;

    invoke-static {v0}, Lcom/samsung/android/lib/dexcontrol/fota/manager/SDCFotaManager;->access$800(Lcom/samsung/android/lib/dexcontrol/fota/manager/SDCFotaManager;)V

    goto :goto_0

    :cond_4
    if-ne p1, v2, :cond_1

    iget-object v0, p0, Lcom/samsung/android/lib/dexcontrol/fota/manager/SDCFotaManager$1;->this$0:Lcom/samsung/android/lib/dexcontrol/fota/manager/SDCFotaManager;

    invoke-static {v0, v2}, Lcom/samsung/android/lib/dexcontrol/fota/manager/SDCFotaManager;->access$302(Lcom/samsung/android/lib/dexcontrol/fota/manager/SDCFotaManager;Z)Z

    iget-object v0, p0, Lcom/samsung/android/lib/dexcontrol/fota/manager/SDCFotaManager$1;->this$0:Lcom/samsung/android/lib/dexcontrol/fota/manager/SDCFotaManager;

    invoke-static {v0}, Lcom/samsung/android/lib/dexcontrol/fota/manager/SDCFotaManager;->access$600(Lcom/samsung/android/lib/dexcontrol/fota/manager/SDCFotaManager;)Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperManager;->requestDeviceChipInfoList()V

    goto :goto_0
.end method
