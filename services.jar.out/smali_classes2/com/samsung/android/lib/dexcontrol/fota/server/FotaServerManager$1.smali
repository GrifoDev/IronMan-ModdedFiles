.class Lcom/samsung/android/lib/dexcontrol/fota/server/FotaServerManager$1;
.super Ljava/lang/Object;
.source "FotaServerManager.java"

# interfaces
.implements Lcom/samsung/android/sdk/applicativeapp/fotalib/FirmwareInfoListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/lib/dexcontrol/fota/server/FotaServerManager;->create(Landroid/content/Context;)V
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

    iput-object p1, p0, Lcom/samsung/android/lib/dexcontrol/fota/server/FotaServerManager$1;->this$0:Lcom/samsung/android/lib/dexcontrol/fota/server/FotaServerManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Lcom/samsung/android/sdk/applicativeapp/fotalib/ApplicativeAppFota$ErrorType;Ljava/lang/String;)V
    .locals 5

    const/4 v4, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onError : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " , "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "FotaServerManager"

    invoke-static {v3, v2}, Lcom/samsung/android/lib/dexcontrol/fota/debug/SLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/android/lib/dexcontrol/fota/server/FotaServerManager$1;->this$0:Lcom/samsung/android/lib/dexcontrol/fota/server/FotaServerManager;

    invoke-static {v2}, Lcom/samsung/android/lib/dexcontrol/fota/server/FotaServerManager;->access$300(Lcom/samsung/android/lib/dexcontrol/fota/server/FotaServerManager;)Lcom/samsung/android/lib/dexcontrol/fota/server/FotaServerManager$FotaServerManagerListener;

    move-result-object v2

    if-nez v2, :cond_0

    :goto_0
    return-void

    :cond_0
    if-nez p2, :cond_1

    iget-object v2, p0, Lcom/samsung/android/lib/dexcontrol/fota/server/FotaServerManager$1;->this$0:Lcom/samsung/android/lib/dexcontrol/fota/server/FotaServerManager;

    invoke-static {v2}, Lcom/samsung/android/lib/dexcontrol/fota/server/FotaServerManager;->access$300(Lcom/samsung/android/lib/dexcontrol/fota/server/FotaServerManager;)Lcom/samsung/android/lib/dexcontrol/fota/server/FotaServerManager$FotaServerManagerListener;

    move-result-object v2

    invoke-interface {v2, v4}, Lcom/samsung/android/lib/dexcontrol/fota/server/FotaServerManager$FotaServerManagerListener;->onError(I)V

    goto :goto_0

    :cond_1
    move-object v0, p2

    const/4 v1, -0x1

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    :cond_2
    :goto_1
    packed-switch v1, :pswitch_data_1

    iget-object v2, p0, Lcom/samsung/android/lib/dexcontrol/fota/server/FotaServerManager$1;->this$0:Lcom/samsung/android/lib/dexcontrol/fota/server/FotaServerManager;

    invoke-static {v2}, Lcom/samsung/android/lib/dexcontrol/fota/server/FotaServerManager;->access$300(Lcom/samsung/android/lib/dexcontrol/fota/server/FotaServerManager;)Lcom/samsung/android/lib/dexcontrol/fota/server/FotaServerManager$FotaServerManagerListener;

    move-result-object v2

    invoke-interface {v2, v4}, Lcom/samsung/android/lib/dexcontrol/fota/server/FotaServerManager$FotaServerManagerListener;->onError(I)V

    goto :goto_0

    :pswitch_0
    const-string/jumbo v2, "java.lang.SecurityException: Permission denied (missing INTERNET permission?)"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v1, 0x1

    goto :goto_1

    :pswitch_1
    iget-object v2, p0, Lcom/samsung/android/lib/dexcontrol/fota/server/FotaServerManager$1;->this$0:Lcom/samsung/android/lib/dexcontrol/fota/server/FotaServerManager;

    invoke-static {v2}, Lcom/samsung/android/lib/dexcontrol/fota/server/FotaServerManager;->access$300(Lcom/samsung/android/lib/dexcontrol/fota/server/FotaServerManager;)Lcom/samsung/android/lib/dexcontrol/fota/server/FotaServerManager$FotaServerManagerListener;

    move-result-object v2

    const/4 v3, 0x1

    invoke-interface {v2, v3}, Lcom/samsung/android/lib/dexcontrol/fota/server/FotaServerManager$FotaServerManagerListener;->onError(I)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x52d02e2b
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1
    .end packed-switch
.end method

.method public onReceiveFirmwareInfo(Lcom/samsung/android/sdk/applicativeapp/fotalib/FirmwareInfo;)V
    .locals 5

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onReceiveFirmwareInfo : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/samsung/android/sdk/applicativeapp/fotalib/FirmwareInfo;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "FotaServerManager"

    invoke-static {v2, v1}, Lcom/samsung/android/lib/dexcontrol/fota/debug/SLog;->m(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/lib/dexcontrol/fota/server/FotaServerManager$1;->this$0:Lcom/samsung/android/lib/dexcontrol/fota/server/FotaServerManager;

    invoke-static {v1}, Lcom/samsung/android/lib/dexcontrol/fota/server/FotaServerManager;->access$000(Lcom/samsung/android/lib/dexcontrol/fota/server/FotaServerManager;)Lcom/samsung/android/lib/dexcontrol/fota/server/FotaUpdateAvailableChecker;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/samsung/android/lib/dexcontrol/fota/server/FotaUpdateAvailableChecker;->setServerFirmwareVersionInfo(Lcom/samsung/android/sdk/applicativeapp/fotalib/FirmwareInfo;)V

    iget-object v1, p0, Lcom/samsung/android/lib/dexcontrol/fota/server/FotaServerManager$1;->this$0:Lcom/samsung/android/lib/dexcontrol/fota/server/FotaServerManager;

    invoke-static {v1}, Lcom/samsung/android/lib/dexcontrol/fota/server/FotaServerManager;->access$000(Lcom/samsung/android/lib/dexcontrol/fota/server/FotaServerManager;)Lcom/samsung/android/lib/dexcontrol/fota/server/FotaUpdateAvailableChecker;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/lib/dexcontrol/fota/server/FotaUpdateAvailableChecker;->isNext()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/lib/dexcontrol/fota/server/FotaServerManager$1;->this$0:Lcom/samsung/android/lib/dexcontrol/fota/server/FotaServerManager;

    invoke-static {v1}, Lcom/samsung/android/lib/dexcontrol/fota/server/FotaServerManager;->access$000(Lcom/samsung/android/lib/dexcontrol/fota/server/FotaServerManager;)Lcom/samsung/android/lib/dexcontrol/fota/server/FotaUpdateAvailableChecker;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/lib/dexcontrol/fota/server/FotaUpdateAvailableChecker;->isUpdateAvailable()Z

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/lib/dexcontrol/fota/server/FotaServerManager$1;->this$0:Lcom/samsung/android/lib/dexcontrol/fota/server/FotaServerManager;

    invoke-static {v1}, Lcom/samsung/android/lib/dexcontrol/fota/server/FotaServerManager;->access$300(Lcom/samsung/android/lib/dexcontrol/fota/server/FotaServerManager;)Lcom/samsung/android/lib/dexcontrol/fota/server/FotaServerManager$FotaServerManagerListener;

    move-result-object v1

    if-nez v1, :cond_1

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/lib/dexcontrol/fota/server/FotaServerManager$1;->this$0:Lcom/samsung/android/lib/dexcontrol/fota/server/FotaServerManager;

    invoke-static {v1}, Lcom/samsung/android/lib/dexcontrol/fota/server/FotaServerManager;->access$000(Lcom/samsung/android/lib/dexcontrol/fota/server/FotaServerManager;)Lcom/samsung/android/lib/dexcontrol/fota/server/FotaUpdateAvailableChecker;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/lib/dexcontrol/fota/server/FotaUpdateAvailableChecker;->next()V

    iget-object v1, p0, Lcom/samsung/android/lib/dexcontrol/fota/server/FotaServerManager$1;->this$0:Lcom/samsung/android/lib/dexcontrol/fota/server/FotaServerManager;

    invoke-static {v1}, Lcom/samsung/android/lib/dexcontrol/fota/server/FotaServerManager;->access$200(Lcom/samsung/android/lib/dexcontrol/fota/server/FotaServerManager;)Lcom/samsung/android/sdk/applicativeapp/fotalib/ApplicativeAppFota;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/lib/dexcontrol/fota/server/FotaServerManager$1;->this$0:Lcom/samsung/android/lib/dexcontrol/fota/server/FotaServerManager;

    invoke-static {v2}, Lcom/samsung/android/lib/dexcontrol/fota/server/FotaServerManager;->access$000(Lcom/samsung/android/lib/dexcontrol/fota/server/FotaServerManager;)Lcom/samsung/android/lib/dexcontrol/fota/server/FotaUpdateAvailableChecker;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/lib/dexcontrol/fota/server/FotaUpdateAvailableChecker;->getChipNameForRequestServer()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/lib/dexcontrol/fota/server/FotaServerManager$1;->this$0:Lcom/samsung/android/lib/dexcontrol/fota/server/FotaServerManager;

    invoke-static {v3}, Lcom/samsung/android/lib/dexcontrol/fota/server/FotaServerManager;->access$100(Lcom/samsung/android/lib/dexcontrol/fota/server/FotaServerManager;)Lcom/samsung/android/sdk/applicativeapp/fotalib/FirmwareInfoListener;

    move-result-object v3

    const-string/jumbo v4, "global"

    invoke-virtual {v1, v2, v4, v3}, Lcom/samsung/android/sdk/applicativeapp/fotalib/ApplicativeAppFota;->requestFirmwareInfo(Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/sdk/applicativeapp/fotalib/FirmwareInfoListener;)V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/samsung/android/lib/dexcontrol/fota/server/FotaServerManager$1;->this$0:Lcom/samsung/android/lib/dexcontrol/fota/server/FotaServerManager;

    invoke-static {v1}, Lcom/samsung/android/lib/dexcontrol/fota/server/FotaServerManager;->access$300(Lcom/samsung/android/lib/dexcontrol/fota/server/FotaServerManager;)Lcom/samsung/android/lib/dexcontrol/fota/server/FotaServerManager$FotaServerManagerListener;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/samsung/android/lib/dexcontrol/fota/server/FotaServerManager$FotaServerManagerListener;->onCheckToUpdateResult(Z)V

    goto :goto_0
.end method
