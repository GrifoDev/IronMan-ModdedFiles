.class Lcom/samsung/android/lib/dexcontrol/fota/server/FotaServerManager$2$1;
.super Ljava/lang/Object;
.source "FotaServerManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/lib/dexcontrol/fota/server/FotaServerManager$2;->onFinishedFirmwareDownload(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/android/lib/dexcontrol/fota/server/FotaServerManager$2;


# direct methods
.method constructor <init>(Lcom/samsung/android/lib/dexcontrol/fota/server/FotaServerManager$2;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/lib/dexcontrol/fota/server/FotaServerManager$2$1;->this$1:Lcom/samsung/android/lib/dexcontrol/fota/server/FotaServerManager$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/lib/dexcontrol/fota/server/FotaServerManager$2$1;->this$1:Lcom/samsung/android/lib/dexcontrol/fota/server/FotaServerManager$2;

    iget-object v0, v0, Lcom/samsung/android/lib/dexcontrol/fota/server/FotaServerManager$2;->this$0:Lcom/samsung/android/lib/dexcontrol/fota/server/FotaServerManager;

    invoke-static {v0}, Lcom/samsung/android/lib/dexcontrol/fota/server/FotaServerManager;->access$300(Lcom/samsung/android/lib/dexcontrol/fota/server/FotaServerManager;)Lcom/samsung/android/lib/dexcontrol/fota/server/FotaServerManager$FotaServerManagerListener;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/lib/dexcontrol/fota/server/FotaServerManager$2$1;->this$1:Lcom/samsung/android/lib/dexcontrol/fota/server/FotaServerManager$2;

    iget-object v1, v1, Lcom/samsung/android/lib/dexcontrol/fota/server/FotaServerManager$2;->this$0:Lcom/samsung/android/lib/dexcontrol/fota/server/FotaServerManager;

    invoke-static {v1}, Lcom/samsung/android/lib/dexcontrol/fota/server/FotaServerManager;->access$000(Lcom/samsung/android/lib/dexcontrol/fota/server/FotaServerManager;)Lcom/samsung/android/lib/dexcontrol/fota/server/FotaUpdateAvailableChecker;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/lib/dexcontrol/fota/server/FotaUpdateAvailableChecker;->getFirmwareInfoToWrite()Ljava/util/HashMap;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/samsung/android/lib/dexcontrol/fota/server/FotaServerManager$FotaServerManagerListener;->onDownloadToUpdateResult(Ljava/util/HashMap;)V

    return-void
.end method
