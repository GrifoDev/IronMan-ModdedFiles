.class Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperManager$2;
.super Ljava/lang/Object;
.source "ChipUpdateHelperManager.java"

# interfaces
.implements Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperBase$ChipUpdateHelperListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperManager;->initHelperListener(Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperBase;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperManager;


# direct methods
.method constructor <init>(Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperManager;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperManager$2;->this$0:Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onUpdateNotify(Ljava/lang/String;I)V
    .locals 7

    const/4 v6, 0x1

    const/4 v5, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "helper onUpdateEnd chipId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " notifyOption="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "ChipUpdateHelperManager"

    invoke-static {v4, v3}, Lcom/samsung/android/lib/dexcontrol/fota/debug/SLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperManager$2;->this$0:Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperManager;

    invoke-static {v3}, Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperManager;->access$300(Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperManager;)Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperManager$ChipUpdateHelperManagerListener;

    move-result-object v3

    if-nez v3, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v3, p0, Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperManager$2;->this$0:Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperManager;

    invoke-static {v3}, Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperManager;->access$200(Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperManager;)Ljava/util/HashMap;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, -0x1

    packed-switch p2, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v3, p0, Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperManager$2;->this$0:Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperManager;

    invoke-static {v3}, Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperManager;->access$300(Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperManager;)Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperManager$ChipUpdateHelperManagerListener;

    move-result-object v3

    const/4 v4, 0x4

    invoke-interface {v3, v4}, Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperManager$ChipUpdateHelperManagerListener;->onError(I)V

    iget-object v3, p0, Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperManager$2;->this$0:Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperManager;

    invoke-static {v3}, Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperManager;->access$300(Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperManager;)Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperManager$ChipUpdateHelperManagerListener;

    move-result-object v3

    invoke-interface {v3, v5}, Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperManager$ChipUpdateHelperManagerListener;->onUpdateEnd(Z)V

    goto :goto_0

    :pswitch_1
    iget-object v3, p0, Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperManager$2;->this$0:Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperManager;

    invoke-static {v3, v1}, Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperManager;->access$602(Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperManager;I)I

    iget-object v3, p0, Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperManager$2;->this$0:Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperManager;

    invoke-static {v3}, Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperManager;->access$300(Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperManager;)Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperManager$ChipUpdateHelperManagerListener;

    move-result-object v3

    invoke-interface {v3}, Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperManager$ChipUpdateHelperManagerListener;->onNotifyDetachForUpdate()V

    goto :goto_0

    :pswitch_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "NOTIFY_OPTION_RESET_AFTER_FOTA nextIndex="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, -0x1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "ChipUpdateHelperManager"

    invoke-static {v4, v3}, Lcom/samsung/android/lib/dexcontrol/fota/debug/SLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperManager$2;->this$0:Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperManager;

    invoke-static {v3}, Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperManager;->access$000(Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperManager;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperBase;

    invoke-virtual {v0}, Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperBase;->open()Z

    move-result v3

    if-eq v3, v6, :cond_4

    :cond_2
    :goto_1
    iget-object v3, p0, Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperManager$2;->this$0:Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperManager;

    invoke-static {v3, v1}, Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperManager;->access$700(Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperManager;I)I

    move-result v2

    if-gez v2, :cond_5

    :cond_3
    iget-object v3, p0, Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperManager$2;->this$0:Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperManager;

    invoke-static {v3}, Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperManager;->access$300(Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperManager;)Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperManager$ChipUpdateHelperManagerListener;

    move-result-object v3

    invoke-interface {v3, v6}, Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperManager$ChipUpdateHelperManagerListener;->onUpdateEnd(Z)V

    :goto_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "nextIndex = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "ChipUpdateHelperManager"

    invoke-static {v4, v3}, Lcom/samsung/android/lib/dexcontrol/fota/debug/SLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_4
    invoke-virtual {v0}, Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperBase;->isConnected()Z

    move-result v3

    if-ne v3, v6, :cond_2

    invoke-virtual {v0}, Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperBase;->close()V

    goto :goto_1

    :cond_5
    iget-object v3, p0, Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperManager$2;->this$0:Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperManager;

    invoke-static {v3}, Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperManager;->access$000(Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperManager;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_3

    iget-object v3, p0, Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperManager$2;->this$0:Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperManager;

    invoke-static {v3}, Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperManager;->access$400(Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperManager;)I

    move-result v3

    iget-object v4, p0, Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperManager$2;->this$0:Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperManager;

    invoke-static {v4}, Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperManager;->access$500(Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperManager;)I

    move-result v4

    if-ge v3, v4, :cond_3

    iget-object v3, p0, Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperManager$2;->this$0:Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperManager;

    invoke-static {v3, v2}, Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperManager;->access$602(Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperManager;I)I

    iget-object v3, p0, Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperManager$2;->this$0:Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperManager;

    invoke-static {v3}, Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperManager;->access$300(Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperManager;)Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperManager$ChipUpdateHelperManagerListener;

    move-result-object v3

    invoke-interface {v3}, Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperManager$ChipUpdateHelperManagerListener;->onNotifyDetachForUpdate()V

    goto :goto_2

    :pswitch_3
    iget-object v3, p0, Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperManager$2;->this$0:Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperManager;

    invoke-static {v3, v1}, Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperManager;->access$700(Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperManager;I)I

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "NOTIFY_OPTION_RESET_NONE_AFTER_FOTA nextIndex="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "ChipUpdateHelperManager"

    invoke-static {v4, v3}, Lcom/samsung/android/lib/dexcontrol/fota/debug/SLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-ltz v2, :cond_0

    iget-object v3, p0, Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperManager$2;->this$0:Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperManager;

    invoke-static {v3}, Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperManager;->access$000(Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperManager;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    iget-object v3, p0, Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperManager$2;->this$0:Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperManager;

    invoke-static {v3}, Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperManager;->access$400(Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperManager;)I

    move-result v3

    iget-object v4, p0, Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperManager$2;->this$0:Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperManager;

    invoke-static {v4}, Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperManager;->access$500(Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperManager;)I

    move-result v4

    if-ge v3, v4, :cond_0

    iget-object v3, p0, Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperManager$2;->this$0:Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperManager;

    invoke-static {v3, v2}, Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperManager;->access$800(Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperManager;I)V

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public onUpdateProgress(Ljava/lang/String;F)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "helper onUpdateProgress chipId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " ratio="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "ChipUpdateHelperManager"

    invoke-static {v1, v0}, Lcom/samsung/android/lib/dexcontrol/fota/debug/SLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperManager$2;->this$0:Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperManager;

    invoke-static {v0}, Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperManager;->access$300(Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperManager;)Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperManager$ChipUpdateHelperManagerListener;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    cmpl-float v0, p2, v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperManager$2;->this$0:Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperManager;

    invoke-static {v0}, Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperManager;->access$408(Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperManager;)I

    iget-object v0, p0, Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperManager$2;->this$0:Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperManager;

    invoke-static {v0}, Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperManager;->access$300(Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperManager;)Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperManager$ChipUpdateHelperManagerListener;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperManager$2;->this$0:Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperManager;

    invoke-static {v1}, Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperManager;->access$500(Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperManager;)I

    move-result v1

    iget-object v2, p0, Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperManager$2;->this$0:Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperManager;

    invoke-static {v2}, Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperManager;->access$400(Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperManager;)I

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperManager$ChipUpdateHelperManagerListener;->onUpdateProgress(II)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperManager$2;->this$0:Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperManager;

    invoke-static {v0}, Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperManager;->access$300(Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperManager;)Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperManager$ChipUpdateHelperManagerListener;

    move-result-object v0

    invoke-interface {v0, p2}, Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperManager$ChipUpdateHelperManagerListener;->onUpdateProgressOneChip(F)V

    goto :goto_0
.end method
