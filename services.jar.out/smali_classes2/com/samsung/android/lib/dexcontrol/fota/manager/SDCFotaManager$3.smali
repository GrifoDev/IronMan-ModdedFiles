.class Lcom/samsung/android/lib/dexcontrol/fota/manager/SDCFotaManager$3;
.super Ljava/lang/Object;
.source "SDCFotaManager.java"

# interfaces
.implements Lcom/samsung/android/lib/dexcontrol/fota/server/FotaServerManager$FotaServerManagerListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/lib/dexcontrol/fota/manager/SDCFotaManager;->initFotaServerManager()V
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

    iput-object p1, p0, Lcom/samsung/android/lib/dexcontrol/fota/manager/SDCFotaManager$3;->this$0:Lcom/samsung/android/lib/dexcontrol/fota/manager/SDCFotaManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckToUpdateResult(Z)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onCheckToUpdateResult : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "SDCFotaManager"

    invoke-static {v1, v0}, Lcom/samsung/android/lib/dexcontrol/fota/debug/SLog;->m(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/lib/dexcontrol/fota/manager/SDCFotaManager$3;->this$0:Lcom/samsung/android/lib/dexcontrol/fota/manager/SDCFotaManager;

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    const/4 v0, 0x3

    :goto_0
    invoke-static {v1, v0}, Lcom/samsung/android/lib/dexcontrol/fota/manager/SDCFotaManager;->access$1000(Lcom/samsung/android/lib/dexcontrol/fota/manager/SDCFotaManager;I)V

    iget-object v0, p0, Lcom/samsung/android/lib/dexcontrol/fota/manager/SDCFotaManager$3;->this$0:Lcom/samsung/android/lib/dexcontrol/fota/manager/SDCFotaManager;

    invoke-static {v0}, Lcom/samsung/android/lib/dexcontrol/fota/manager/SDCFotaManager;->access$000(Lcom/samsung/android/lib/dexcontrol/fota/manager/SDCFotaManager;)Lcom/samsung/android/lib/dexcontrol/fota/manager/EventHandlerManager;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p1}, Lcom/samsung/android/lib/dexcontrol/fota/manager/EventHandlerManager;->invokeSelfListener(IZ)V

    return-void

    :cond_0
    const/4 v0, 0x4

    goto :goto_0
.end method

.method public onDownloadToUpdateResult(Ljava/util/HashMap;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onDownloadToUpdateResult : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/util/HashMap;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "SDCFotaManager"

    invoke-static {v1, v0}, Lcom/samsung/android/lib/dexcontrol/fota/debug/SLog;->m(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/lib/dexcontrol/fota/manager/SDCFotaManager$3;->this$0:Lcom/samsung/android/lib/dexcontrol/fota/manager/SDCFotaManager;

    invoke-static {v0}, Lcom/samsung/android/lib/dexcontrol/fota/manager/SDCFotaManager;->access$600(Lcom/samsung/android/lib/dexcontrol/fota/manager/SDCFotaManager;)Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperManager;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/lib/dexcontrol/fota/manager/SDCFotaManager$3;->this$0:Lcom/samsung/android/lib/dexcontrol/fota/manager/SDCFotaManager;

    invoke-static {v1}, Lcom/samsung/android/lib/dexcontrol/fota/manager/SDCFotaManager;->access$1500(Lcom/samsung/android/lib/dexcontrol/fota/manager/SDCFotaManager;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperManager;->setFirmwareFilePaths(Ljava/lang/String;Ljava/util/HashMap;)V

    iget-object v0, p0, Lcom/samsung/android/lib/dexcontrol/fota/manager/SDCFotaManager$3;->this$0:Lcom/samsung/android/lib/dexcontrol/fota/manager/SDCFotaManager;

    invoke-static {v0}, Lcom/samsung/android/lib/dexcontrol/fota/manager/SDCFotaManager;->access$600(Lcom/samsung/android/lib/dexcontrol/fota/manager/SDCFotaManager;)Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperManager;->startUpdate()V

    return-void
.end method

.method public onError(I)V
    .locals 4

    const/4 v0, 0x0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "FotaServerManager Error errorCode : "

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
    iget-object v1, p0, Lcom/samsung/android/lib/dexcontrol/fota/manager/SDCFotaManager$3;->this$0:Lcom/samsung/android/lib/dexcontrol/fota/manager/SDCFotaManager;

    invoke-static {v1}, Lcom/samsung/android/lib/dexcontrol/fota/manager/SDCFotaManager;->access$000(Lcom/samsung/android/lib/dexcontrol/fota/manager/SDCFotaManager;)Lcom/samsung/android/lib/dexcontrol/fota/manager/EventHandlerManager;

    move-result-object v1

    const/4 v2, 0x5

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/lib/dexcontrol/fota/manager/EventHandlerManager;->invokeSelfListener(II)V

    iget-object v1, p0, Lcom/samsung/android/lib/dexcontrol/fota/manager/SDCFotaManager$3;->this$0:Lcom/samsung/android/lib/dexcontrol/fota/manager/SDCFotaManager;

    invoke-static {v1}, Lcom/samsung/android/lib/dexcontrol/fota/manager/SDCFotaManager;->access$900(Lcom/samsung/android/lib/dexcontrol/fota/manager/SDCFotaManager;)I

    move-result v1

    const/4 v2, 0x6

    if-eq v1, v2, :cond_0

    :goto_1
    iget-object v1, p0, Lcom/samsung/android/lib/dexcontrol/fota/manager/SDCFotaManager$3;->this$0:Lcom/samsung/android/lib/dexcontrol/fota/manager/SDCFotaManager;

    const/4 v2, 0x3

    invoke-static {v1, v2}, Lcom/samsung/android/lib/dexcontrol/fota/manager/SDCFotaManager;->access$1000(Lcom/samsung/android/lib/dexcontrol/fota/manager/SDCFotaManager;I)V

    return-void

    :pswitch_0
    const/4 v0, 0x3

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/lib/dexcontrol/fota/manager/SDCFotaManager$3;->this$0:Lcom/samsung/android/lib/dexcontrol/fota/manager/SDCFotaManager;

    invoke-static {v1}, Lcom/samsung/android/lib/dexcontrol/fota/manager/SDCFotaManager;->access$000(Lcom/samsung/android/lib/dexcontrol/fota/manager/SDCFotaManager;)Lcom/samsung/android/lib/dexcontrol/fota/manager/EventHandlerManager;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x4

    invoke-virtual {v1, v3, v2}, Lcom/samsung/android/lib/dexcontrol/fota/manager/EventHandlerManager;->invokeSelfListener(IZ)V

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onStartDownload()V
    .locals 4

    const/4 v3, 0x1

    const-string/jumbo v1, "SDCFotaManager"

    const-string/jumbo v2, "onStartDownload"

    invoke-static {v1, v2}, Lcom/samsung/android/lib/dexcontrol/fota/debug/SLog;->m(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/samsung/android/lib/dexcontrol/fota/manager/SDCFotaManagerEventHandler$ProgressData;

    invoke-direct {v0, v3, v3, v3}, Lcom/samsung/android/lib/dexcontrol/fota/manager/SDCFotaManagerEventHandler$ProgressData;-><init>(III)V

    iget-object v1, p0, Lcom/samsung/android/lib/dexcontrol/fota/manager/SDCFotaManager$3;->this$0:Lcom/samsung/android/lib/dexcontrol/fota/manager/SDCFotaManager;

    invoke-static {v1}, Lcom/samsung/android/lib/dexcontrol/fota/manager/SDCFotaManager;->access$000(Lcom/samsung/android/lib/dexcontrol/fota/manager/SDCFotaManager;)Lcom/samsung/android/lib/dexcontrol/fota/manager/EventHandlerManager;

    move-result-object v1

    const/4 v2, 0x6

    invoke-virtual {v1, v2, v0}, Lcom/samsung/android/lib/dexcontrol/fota/manager/EventHandlerManager;->invokeSelfListener(ILjava/lang/Object;)V

    return-void
.end method
