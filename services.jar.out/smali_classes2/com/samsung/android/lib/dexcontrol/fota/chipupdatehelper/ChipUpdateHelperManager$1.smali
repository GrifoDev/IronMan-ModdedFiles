.class Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperManager$1;
.super Ljava/lang/Object;
.source "ChipUpdateHelperManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperManager;->requestDeviceChipInfoList()V
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

    iput-object p1, p0, Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperManager$1;->this$0:Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 17

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperManager$1;->this$0:Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperManager;

    invoke-static {v14}, Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperManager;->access$000(Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperManager;)Ljava/util/ArrayList;

    move-result-object v14

    invoke-virtual {v14}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-nez v14, :cond_1

    if-nez v3, :cond_4

    :cond_0
    :goto_1
    return-void

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperBase;

    invoke-virtual {v5}, Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperBase;->open()Z

    move-result v14

    const/4 v15, 0x1

    if-eq v14, v15, :cond_3

    :cond_2
    const-string/jumbo v14, "ChipUpdateHelperManager"

    const-string/jumbo v15, "requestDeviceChipInfoList there is not opened chip"

    invoke-static {v14, v15}, Lcom/samsung/android/lib/dexcontrol/fota/debug/SLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v5}, Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperBase;->getChipInfo()Lcom/samsung/android/lib/dexcontrol/fota/data/SDCBinaryInfo;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    invoke-virtual {v5}, Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperBase;->isConnected()Z

    move-result v14

    const/4 v15, 0x1

    if-ne v14, v15, :cond_2

    invoke-virtual {v5}, Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperBase;->getChipInfo()Lcom/samsung/android/lib/dexcontrol/fota/data/SDCBinaryInfo;

    move-result-object v3

    invoke-virtual {v5}, Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperBase;->close()V

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "ADD : "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    const-string/jumbo v15, "ChipUpdateHelperManager"

    invoke-static {v15, v14}, Lcom/samsung/android/lib/dexcontrol/fota/debug/SLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "Chip Name = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    iget-object v15, v3, Lcom/samsung/android/lib/dexcontrol/fota/data/SDCBinaryInfo;->chipName:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, " version = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    iget-object v15, v3, Lcom/samsung/android/lib/dexcontrol/fota/data/SDCBinaryInfo;->chipVersion:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, " isBootMode = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    iget-boolean v15, v3, Lcom/samsung/android/lib/dexcontrol/fota/data/SDCBinaryInfo;->isBootMode:Z

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    const-string/jumbo v15, "ChipUpdateHelperManager"

    invoke-static {v15, v14}, Lcom/samsung/android/lib/dexcontrol/fota/debug/SLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_4
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperManager$1;->this$0:Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperManager;

    invoke-static {v14}, Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperManager;->access$100(Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperManager;)Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperFactory;

    move-result-object v14

    invoke-virtual {v14, v4}, Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperFactory;->reorderProductDexPadChipSet(Ljava/util/ArrayList;)[Ljava/lang/String;

    move-result-object v10

    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperManager$1;->this$0:Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperManager;

    invoke-static {v14}, Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperManager;->access$000(Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperManager;)Ljava/util/ArrayList;

    move-result-object v14

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v12

    const/4 v7, 0x0

    :goto_2
    if-lt v7, v12, :cond_5

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperManager$1;->this$0:Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperManager;

    invoke-static {v14}, Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperManager;->access$000(Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperManager;)Ljava/util/ArrayList;

    move-result-object v14

    invoke-virtual {v14}, Ljava/util/ArrayList;->clear()V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperManager$1;->this$0:Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperManager;

    invoke-static {v14}, Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperManager;->access$000(Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperManager;)Ljava/util/ArrayList;

    move-result-object v14

    invoke-virtual {v14, v13}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperManager$1;->this$0:Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperManager;

    invoke-static {v14}, Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperManager;->access$000(Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperManager;)Ljava/util/ArrayList;

    move-result-object v14

    invoke-virtual {v14}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-nez v14, :cond_8

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperManager$1;->this$0:Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperManager;

    invoke-static {v14}, Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperManager;->access$000(Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperManager;)Ljava/util/ArrayList;

    move-result-object v14

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v9

    const/4 v7, 0x0

    :goto_4
    if-lt v7, v9, :cond_9

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperManager$1;->this$0:Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperManager;

    invoke-static {v14}, Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperManager;->access$300(Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperManager;)Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperManager$ChipUpdateHelperManagerListener;

    move-result-object v14

    if-eqz v14, :cond_0

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperManager$1;->this$0:Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperManager;

    invoke-static {v14}, Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperManager;->access$300(Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperManager;)Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperManager$ChipUpdateHelperManagerListener;

    move-result-object v14

    invoke-interface {v14, v4}, Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperManager$ChipUpdateHelperManagerListener;->onRequestDeviceChipInfoList(Ljava/util/ArrayList;)V

    goto/16 :goto_1

    :cond_5
    aget-object v11, v10, v7

    const/4 v8, 0x0

    :goto_5
    if-lt v8, v12, :cond_6

    :goto_6
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_6
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperManager$1;->this$0:Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperManager;

    invoke-static {v14}, Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperManager;->access$000(Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperManager;)Ljava/util/ArrayList;

    move-result-object v14

    invoke-virtual {v14, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperBase;

    invoke-virtual {v14}, Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperBase;->getChipId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v11, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_7

    add-int/lit8 v8, v8, 0x1

    goto :goto_5

    :cond_7
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperManager$1;->this$0:Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperManager;

    invoke-static {v14}, Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperManager;->access$000(Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperManager;)Ljava/util/ArrayList;

    move-result-object v14

    invoke-virtual {v14, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_6

    :cond_8
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperBase;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "ordered list : "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v5}, Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperBase;->getChipId()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    const-string/jumbo v15, "ChipUpdateHelperManager"

    invoke-static {v15, v14}, Lcom/samsung/android/lib/dexcontrol/fota/debug/SLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    :cond_9
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperManager$1;->this$0:Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperManager;

    invoke-static {v14}, Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperManager;->access$200(Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperManager;)Ljava/util/HashMap;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperManager$1;->this$0:Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperManager;

    invoke-static {v14}, Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperManager;->access$000(Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperManager;)Ljava/util/ArrayList;

    move-result-object v14

    invoke-virtual {v14, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperBase;

    invoke-virtual {v14}, Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperBase;->getChipId()Ljava/lang/String;

    move-result-object v14

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v15, v14, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_4
.end method
