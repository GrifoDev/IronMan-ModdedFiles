.class Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperPdicDs$2;
.super Ljava/lang/Object;
.source "ChipUpdateHelperPdicDs.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperPdicDs;->prepareDownload()V
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

    iput-object p1, p0, Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperPdicDs$2;->this$0:Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperPdicDs;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperPdicDs$2;->this$0:Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperPdicDs;

    invoke-static {v0}, Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperPdicDs;->access$100(Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperPdicDs;)Lcom/samsung/android/lib/dexcontrol/fota/chipapi/dexpad/pdic/sec/protocol/HIDProtocol;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/samsung/android/lib/dexcontrol/fota/chipapi/dexpad/pdic/sec/protocol/HIDProtocol;->enableI2cBridgeOn(Z)I

    move-result v0

    if-ltz v0, :cond_0

    :goto_0
    const-string/jumbo v0, "ChipUpdateHelperPdicDs"

    const-string/jumbo v1, "[Step][1] : Enable I2C Bridge mode successed"

    invoke-static {v0, v1}, Lcom/samsung/android/lib/dexcontrol/fota/debug/SLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperPdicDs$2;->this$0:Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperPdicDs;

    invoke-static {v0, v2}, Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperPdicDs;->access$200(Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperPdicDs;I)V

    iget-object v0, p0, Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperPdicDs$2;->this$0:Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperPdicDs;

    invoke-static {v0}, Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperPdicDs;->access$000(Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperPdicDs;)Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperBase$ChipUpdateHelperListener;

    move-result-object v0

    if-nez v0, :cond_1

    :goto_1
    return-void

    :cond_0
    const-string/jumbo v0, "ChipUpdateHelperPdicDs"

    const-string/jumbo v1, "Enable I2C bridge : -1"

    invoke-static {v0, v1}, Lcom/samsung/android/lib/dexcontrol/fota/debug/SLog;->m(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperPdicDs$2;->this$0:Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperPdicDs;

    invoke-static {v0}, Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperPdicDs;->access$000(Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperPdicDs;)Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperBase$ChipUpdateHelperListener;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperPdicDs$2;->this$0:Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperPdicDs;

    invoke-virtual {v1}, Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperPdicDs;->getChipId()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    invoke-interface {v0, v1, v2}, Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperBase$ChipUpdateHelperListener;->onUpdateNotify(Ljava/lang/String;I)V

    goto :goto_1
.end method
