.class Lcom/samsung/android/lib/dexcontrol/fota/server/FotaServerManager$2;
.super Ljava/lang/Object;
.source "FotaServerManager.java"

# interfaces
.implements Lcom/samsung/android/sdk/applicativeapp/fotalib/FirmwareDownloadListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/lib/dexcontrol/fota/server/FotaServerManager;->downloadToUpdate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/lib/dexcontrol/fota/server/FotaServerManager;


# direct methods
.method constructor <init>(Lcom/samsung/android/lib/dexcontrol/fota/server/FotaServerManager;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/lib/dexcontrol/fota/server/FotaServerManager$2;->this$0:Lcom/samsung/android/lib/dexcontrol/fota/server/FotaServerManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChangedProgress(II)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onChangedProgress : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " , "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "FotaServerManager"

    invoke-static {v1, v0}, Lcom/samsung/android/lib/dexcontrol/fota/debug/SLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onError(Lcom/samsung/android/sdk/applicativeapp/fotalib/ApplicativeAppFota$ErrorType;Ljava/lang/String;)V
    .locals 5

    const/4 v4, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "startDownloadFirmware onError : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "FotaServerManager"

    invoke-static {v3, v2}, Lcom/samsung/android/lib/dexcontrol/fota/debug/SLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/android/lib/dexcontrol/fota/server/FotaServerManager$2;->this$0:Lcom/samsung/android/lib/dexcontrol/fota/server/FotaServerManager;

    invoke-static {v2}, Lcom/samsung/android/lib/dexcontrol/fota/server/FotaServerManager;->access$300(Lcom/samsung/android/lib/dexcontrol/fota/server/FotaServerManager;)Lcom/samsung/android/lib/dexcontrol/fota/server/FotaServerManager$FotaServerManagerListener;

    move-result-object v2

    if-nez v2, :cond_0

    :goto_0
    return-void

    :cond_0
    if-nez p1, :cond_2

    :cond_1
    iget-object v2, p0, Lcom/samsung/android/lib/dexcontrol/fota/server/FotaServerManager$2;->this$0:Lcom/samsung/android/lib/dexcontrol/fota/server/FotaServerManager;

    invoke-static {v2}, Lcom/samsung/android/lib/dexcontrol/fota/server/FotaServerManager;->access$300(Lcom/samsung/android/lib/dexcontrol/fota/server/FotaServerManager;)Lcom/samsung/android/lib/dexcontrol/fota/server/FotaServerManager$FotaServerManagerListener;

    move-result-object v2

    invoke-interface {v2, v4}, Lcom/samsung/android/lib/dexcontrol/fota/server/FotaServerManager$FotaServerManagerListener;->onError(I)V

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Lcom/samsung/android/sdk/applicativeapp/fotalib/ApplicativeAppFota$ErrorType;->toString()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {p1}, Lcom/samsung/android/sdk/applicativeapp/fotalib/ApplicativeAppFota$ErrorType;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    :cond_3
    :goto_1
    packed-switch v1, :pswitch_data_1

    iget-object v2, p0, Lcom/samsung/android/lib/dexcontrol/fota/server/FotaServerManager$2;->this$0:Lcom/samsung/android/lib/dexcontrol/fota/server/FotaServerManager;

    invoke-static {v2}, Lcom/samsung/android/lib/dexcontrol/fota/server/FotaServerManager;->access$300(Lcom/samsung/android/lib/dexcontrol/fota/server/FotaServerManager;)Lcom/samsung/android/lib/dexcontrol/fota/server/FotaServerManager$FotaServerManagerListener;

    move-result-object v2

    invoke-interface {v2, v4}, Lcom/samsung/android/lib/dexcontrol/fota/server/FotaServerManager$FotaServerManagerListener;->onError(I)V

    goto :goto_0

    :pswitch_0
    const-string/jumbo v2, "Verification"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    const/4 v1, 0x1

    goto :goto_1

    :pswitch_1
    iget-object v2, p0, Lcom/samsung/android/lib/dexcontrol/fota/server/FotaServerManager$2;->this$0:Lcom/samsung/android/lib/dexcontrol/fota/server/FotaServerManager;

    invoke-static {v2}, Lcom/samsung/android/lib/dexcontrol/fota/server/FotaServerManager;->access$300(Lcom/samsung/android/lib/dexcontrol/fota/server/FotaServerManager;)Lcom/samsung/android/lib/dexcontrol/fota/server/FotaServerManager$FotaServerManagerListener;

    move-result-object v2

    const/4 v3, 0x2

    invoke-interface {v2, v3}, Lcom/samsung/android/lib/dexcontrol/fota/server/FotaServerManager$FotaServerManagerListener;->onError(I)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch -0x4eaed5c5
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1
    .end packed-switch
.end method

.method public onFinishedFirmwareDownload(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/samsung/android/lib/dexcontrol/fota/server/FotaServerManager$2;->this$0:Lcom/samsung/android/lib/dexcontrol/fota/server/FotaServerManager;

    invoke-static {v2}, Lcom/samsung/android/lib/dexcontrol/fota/server/FotaServerManager;->access$000(Lcom/samsung/android/lib/dexcontrol/fota/server/FotaServerManager;)Lcom/samsung/android/lib/dexcontrol/fota/server/FotaUpdateAvailableChecker;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/lib/dexcontrol/fota/server/FotaServerManager$2;->this$0:Lcom/samsung/android/lib/dexcontrol/fota/server/FotaServerManager;

    invoke-static {v3}, Lcom/samsung/android/lib/dexcontrol/fota/server/FotaServerManager;->access$400(Lcom/samsung/android/lib/dexcontrol/fota/server/FotaServerManager;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, p1, v3}, Lcom/samsung/android/lib/dexcontrol/fota/server/FotaUpdateAvailableChecker;->setDownloadFirmwareInfo(Ljava/util/List;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/android/lib/dexcontrol/fota/server/FotaServerManager$2;->this$0:Lcom/samsung/android/lib/dexcontrol/fota/server/FotaServerManager;

    invoke-static {v2}, Lcom/samsung/android/lib/dexcontrol/fota/server/FotaServerManager;->access$300(Lcom/samsung/android/lib/dexcontrol/fota/server/FotaServerManager;)Lcom/samsung/android/lib/dexcontrol/fota/server/FotaServerManager$FotaServerManagerListener;

    move-result-object v2

    if-nez v2, :cond_1

    :goto_1
    return-void

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onFinishedFirmwareDownload : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "FotaServerManager"

    invoke-static {v3, v2}, Lcom/samsung/android/lib/dexcontrol/fota/debug/SLog;->m(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    new-instance v2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v3, Lcom/samsung/android/lib/dexcontrol/fota/server/FotaServerManager$2$1;

    invoke-direct {v3, p0}, Lcom/samsung/android/lib/dexcontrol/fota/server/FotaServerManager$2$1;-><init>(Lcom/samsung/android/lib/dexcontrol/fota/server/FotaServerManager$2;)V

    const-wide/16 v4, 0x0

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1
.end method

.method public onStartDownload()V
    .locals 2

    const-string/jumbo v0, "FotaServerManager"

    const-string/jumbo v1, "onStartDownload()"

    invoke-static {v0, v1}, Lcom/samsung/android/lib/dexcontrol/fota/debug/SLog;->m(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/lib/dexcontrol/fota/server/FotaServerManager$2;->this$0:Lcom/samsung/android/lib/dexcontrol/fota/server/FotaServerManager;

    invoke-static {v0}, Lcom/samsung/android/lib/dexcontrol/fota/server/FotaServerManager;->access$300(Lcom/samsung/android/lib/dexcontrol/fota/server/FotaServerManager;)Lcom/samsung/android/lib/dexcontrol/fota/server/FotaServerManager$FotaServerManagerListener;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/lib/dexcontrol/fota/server/FotaServerManager$2;->this$0:Lcom/samsung/android/lib/dexcontrol/fota/server/FotaServerManager;

    invoke-static {v0}, Lcom/samsung/android/lib/dexcontrol/fota/server/FotaServerManager;->access$300(Lcom/samsung/android/lib/dexcontrol/fota/server/FotaServerManager;)Lcom/samsung/android/lib/dexcontrol/fota/server/FotaServerManager$FotaServerManagerListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/lib/dexcontrol/fota/server/FotaServerManager$FotaServerManagerListener;->onStartDownload()V

    goto :goto_0
.end method
