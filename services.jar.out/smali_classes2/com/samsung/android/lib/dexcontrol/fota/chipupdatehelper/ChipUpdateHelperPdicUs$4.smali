.class Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperPdicUs$4;
.super Ljava/lang/Object;
.source "ChipUpdateHelperPdicUs.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperPdicUs;->download()V
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

    iput-object p1, p0, Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperPdicUs$4;->this$0:Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperPdicUs;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    const/4 v5, 0x0

    new-instance v2, Lcom/samsung/android/lib/dexcontrol/fota/chipapi/dexpad/pdic/sec/structure/FirmwareInfo;

    invoke-direct {v2}, Lcom/samsung/android/lib/dexcontrol/fota/chipapi/dexpad/pdic/sec/structure/FirmwareInfo;-><init>()V

    iget-object v4, p0, Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperPdicUs$4;->this$0:Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperPdicUs;

    invoke-static {v4}, Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperPdicUs;->access$100(Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperPdicUs;)Lcom/samsung/android/lib/dexcontrol/fota/chipapi/dexpad/pdic/sec/protocol/HIDProtocol;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/samsung/android/lib/dexcontrol/fota/chipapi/dexpad/pdic/sec/protocol/HIDProtocol;->getFwInfo(Lcom/samsung/android/lib/dexcontrol/fota/chipapi/dexpad/pdic/sec/structure/FirmwareInfo;)I

    move-result v4

    if-ltz v4, :cond_0

    invoke-virtual {v2}, Lcom/samsung/android/lib/dexcontrol/fota/chipapi/dexpad/pdic/sec/structure/FirmwareInfo;->isUsBootMode()Z

    move-result v3

    iget-object v4, p0, Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperPdicUs$4;->this$0:Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperPdicUs;

    invoke-static {v4}, Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperPdicUs;->access$300(Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperPdicUs;)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "[Step][6] : Get fw Info successed >> bootMode = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/samsung/android/lib/dexcontrol/fota/debug/SLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v3, :cond_1

    iget-object v4, p0, Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperPdicUs$4;->this$0:Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperPdicUs;

    invoke-static {v4}, Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperPdicUs;->access$100(Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperPdicUs;)Lcom/samsung/android/lib/dexcontrol/fota/chipapi/dexpad/pdic/sec/protocol/HIDProtocol;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/android/lib/dexcontrol/fota/chipapi/dexpad/pdic/sec/protocol/HIDProtocol;->enterFlashingMode()I

    move-result v4

    if-ltz v4, :cond_2

    iget-object v4, p0, Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperPdicUs$4;->this$0:Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperPdicUs;

    invoke-static {v4}, Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperPdicUs;->access$300(Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperPdicUs;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "[Step][7] : Enter flashing mode successed"

    invoke-static {v4, v5}, Lcom/samsung/android/lib/dexcontrol/fota/debug/SLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/samsung/android/lib/dexcontrol/fota/chipapi/dexpad/pdic/sec/CyacdImage;

    iget-object v4, p0, Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperPdicUs$4;->this$0:Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperPdicUs;

    invoke-virtual {v4}, Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperPdicUs;->getUpdateFilePath()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Lcom/samsung/android/lib/dexcontrol/fota/chipapi/dexpad/pdic/sec/CyacdImage;-><init>(Ljava/lang/String;)V

    :try_start_0
    iget-object v4, p0, Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperPdicUs$4;->this$0:Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperPdicUs;

    invoke-static {v4}, Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperPdicUs;->access$100(Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperPdicUs;)Lcom/samsung/android/lib/dexcontrol/fota/chipapi/dexpad/pdic/sec/protocol/HIDProtocol;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/samsung/android/lib/dexcontrol/fota/chipapi/dexpad/pdic/sec/protocol/HIDProtocol;->clearMetaData(Lcom/samsung/android/lib/dexcontrol/fota/chipapi/dexpad/pdic/sec/CyacdImage;)I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    if-ltz v4, :cond_3

    iget-object v4, p0, Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperPdicUs$4;->this$0:Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperPdicUs;

    invoke-static {v4}, Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperPdicUs;->access$300(Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperPdicUs;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "[Step][8] : Clear meta data successed"

    invoke-static {v4, v5}, Lcom/samsung/android/lib/dexcontrol/fota/debug/SLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperPdicUs$4;->this$0:Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperPdicUs;

    invoke-static {v4}, Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperPdicUs;->access$100(Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperPdicUs;)Lcom/samsung/android/lib/dexcontrol/fota/chipapi/dexpad/pdic/sec/protocol/HIDProtocol;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/samsung/android/lib/dexcontrol/fota/chipapi/dexpad/pdic/sec/protocol/HIDProtocol;->writeFlashImage(Lcom/samsung/android/lib/dexcontrol/fota/chipapi/dexpad/pdic/sec/CyacdImage;)I

    move-result v4

    if-ltz v4, :cond_4

    iget-object v4, p0, Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperPdicUs$4;->this$0:Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperPdicUs;

    invoke-static {v4}, Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperPdicUs;->access$300(Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperPdicUs;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "[Step][9] : Write flash image successed"

    invoke-static {v4, v5}, Lcom/samsung/android/lib/dexcontrol/fota/debug/SLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperPdicUs$4;->this$0:Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperPdicUs;

    invoke-static {v4}, Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperPdicUs;->access$100(Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperPdicUs;)Lcom/samsung/android/lib/dexcontrol/fota/chipapi/dexpad/pdic/sec/protocol/HIDProtocol;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/samsung/android/lib/dexcontrol/fota/chipapi/dexpad/pdic/sec/protocol/HIDProtocol;->validateFirmware(Lcom/samsung/android/lib/dexcontrol/fota/chipapi/dexpad/pdic/sec/CyacdImage;)I

    move-result v4

    if-ltz v4, :cond_5

    iget-object v4, p0, Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperPdicUs$4;->this$0:Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperPdicUs;

    invoke-static {v4}, Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperPdicUs;->access$300(Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperPdicUs;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "[Step][10] : Validate f/w successed"

    invoke-static {v4, v5}, Lcom/samsung/android/lib/dexcontrol/fota/debug/SLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperPdicUs$4;->this$0:Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperPdicUs;

    invoke-static {v4}, Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperPdicUs;->access$700(Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperPdicUs;)V

    return-void

    :cond_0
    iget-object v4, p0, Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperPdicUs$4;->this$0:Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperPdicUs;

    invoke-static {v4, v5}, Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperPdicUs;->access$200(Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperPdicUs;I)V

    return-void

    :cond_1
    iget-object v4, p0, Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperPdicUs$4;->this$0:Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperPdicUs;

    const/16 v5, 0xb

    invoke-static {v4, v5}, Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperPdicUs;->access$200(Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperPdicUs;I)V

    return-void

    :cond_2
    iget-object v4, p0, Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperPdicUs$4;->this$0:Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperPdicUs;

    const/4 v5, 0x2

    invoke-static {v4, v5}, Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperPdicUs;->access$200(Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperPdicUs;I)V

    return-void

    :cond_3
    :try_start_1
    iget-object v4, p0, Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperPdicUs$4;->this$0:Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperPdicUs;

    const/4 v5, 0x3

    invoke-static {v4, v5}, Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperPdicUs;->access$200(Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperPdicUs;I)V
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0

    return-void

    :catch_0
    move-exception v1

    iget-object v4, p0, Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperPdicUs$4;->this$0:Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperPdicUs;

    const/16 v5, 0xc

    invoke-static {v4, v5}, Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperPdicUs;->access$200(Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperPdicUs;I)V

    return-void

    :cond_4
    iget-object v4, p0, Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperPdicUs$4;->this$0:Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperPdicUs;

    const/4 v5, 0x4

    invoke-static {v4, v5}, Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperPdicUs;->access$200(Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperPdicUs;I)V

    return-void

    :cond_5
    iget-object v4, p0, Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperPdicUs$4;->this$0:Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperPdicUs;

    const/4 v5, 0x5

    invoke-static {v4, v5}, Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperPdicUs;->access$200(Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperPdicUs;I)V

    return-void
.end method
