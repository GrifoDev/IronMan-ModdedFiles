.class public Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperFactory;
.super Ljava/lang/Object;
.source "ChipUpdateHelperFactory.java"


# static fields
.field private static CHIP_EMUL_MODE:Z = false

.field private static final PRODUCT_DEXPAD:I = 0x1

.field private static final PRODUCT_NONE:I = 0x0

.field private static final TAG:Ljava/lang/String; = "ChipUpdateHelperFactory"


# instance fields
.field private mProductDexPadChipSet:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperFactory;->CHIP_EMUL_MODE:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/samsung/android/lib/dexcontrol/fota/data/ChipIdTable;->DEX2_ZIP_CHIP_ID_SET:[Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperFactory;->mProductDexPadChipSet:[Ljava/lang/String;

    return-void
.end method

.method private generateChipUpdateHelperBaseList([Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperBase;",
            ">;"
        }
    .end annotation

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "generateChipUpdateHelperBaseList : "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-static/range {p1 .. p1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    const-string/jumbo v15, "ChipUpdateHelperFactory"

    invoke-static {v15, v14}, Lcom/samsung/android/lib/dexcontrol/fota/debug/SLog;->m(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v1, p1

    move-object/from16 v0, p1

    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-lt v3, v2, :cond_0

    return-object v7

    :cond_0
    aget-object v6, p1, v3

    if-nez v6, :cond_1

    const-string/jumbo v14, "ChipUpdateHelperFactory"

    const-string/jumbo v15, "generateChipUpdateHelperBaseList chipName is null!"

    invoke-static {v14, v15}, Lcom/samsung/android/lib/dexcontrol/fota/debug/SLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    move-object v4, v6

    const/4 v5, -0x1

    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    move-result v14

    sparse-switch v14, :sswitch_data_0

    :cond_2
    :goto_2
    packed-switch v5, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    sget-boolean v14, Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperFactory;->CHIP_EMUL_MODE:Z

    const/4 v15, 0x1

    if-eq v14, v15, :cond_3

    new-instance v13, Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperPs176;

    invoke-direct {v13}, Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperPs176;-><init>()V

    const-string/jumbo v14, "DEX2_DP"

    invoke-virtual {v13, v14}, Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperPs176;->create(Ljava/lang/String;)V

    invoke-virtual {v7, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :sswitch_0
    const-string/jumbo v14, "DEX2_DP"

    invoke-virtual {v6, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_2

    const/4 v5, 0x0

    goto :goto_2

    :sswitch_1
    const-string/jumbo v14, "DEX2_PD_DS"

    invoke-virtual {v6, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_2

    const/4 v5, 0x1

    goto :goto_2

    :sswitch_2
    const-string/jumbo v14, "DEX2_PD_US"

    invoke-virtual {v6, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_2

    const/4 v5, 0x2

    goto :goto_2

    :cond_3
    new-instance v12, Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperEmulator;

    invoke-direct {v12}, Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperEmulator;-><init>()V

    const-string/jumbo v14, "DEX2_DP"

    invoke-virtual {v12, v14}, Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperEmulator;->create(Ljava/lang/String;)V

    invoke-virtual {v7, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :pswitch_1
    sget-boolean v14, Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperFactory;->CHIP_EMUL_MODE:Z

    const/4 v15, 0x1

    if-eq v14, v15, :cond_4

    new-instance v9, Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperPdicDs;

    invoke-direct {v9}, Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperPdicDs;-><init>()V

    const-string/jumbo v14, "DEX2_PD_DS"

    invoke-virtual {v9, v14}, Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperPdicDs;->create(Ljava/lang/String;)V

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_4
    new-instance v8, Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperEmulator;

    invoke-direct {v8}, Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperEmulator;-><init>()V

    const-string/jumbo v14, "DEX2_PD_DS"

    invoke-virtual {v8, v14}, Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperEmulator;->create(Ljava/lang/String;)V

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :pswitch_2
    sget-boolean v14, Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperFactory;->CHIP_EMUL_MODE:Z

    const/4 v15, 0x1

    if-eq v14, v15, :cond_5

    new-instance v11, Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperPdicUs;

    invoke-direct {v11}, Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperPdicUs;-><init>()V

    const-string/jumbo v14, "DEX2_PD_US"

    invoke-virtual {v11, v14}, Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperPdicUs;->create(Ljava/lang/String;)V

    invoke-virtual {v7, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :cond_5
    new-instance v10, Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperEmulator;

    invoke-direct {v10}, Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperEmulator;-><init>()V

    const-string/jumbo v14, "DEX2_PD_US"

    invoke-virtual {v10, v14}, Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperEmulator;->create(Ljava/lang/String;)V

    invoke-virtual {v7, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    nop

    :sswitch_data_0
    .sparse-switch
        -0x7829a3d0 -> :sswitch_0
        -0x7508f76a -> :sswitch_1
        -0x7508f55b -> :sswitch_2
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private getProductSet(Ljava/lang/String;)[Ljava/lang/String;
    .locals 6

    const/4 v5, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getProductSet : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "ChipUpdateHelperFactory"

    invoke-static {v4, v3}, Lcom/samsung/android/lib/dexcontrol/fota/debug/SLog;->m(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p1, :cond_0

    new-array v2, v5, [Ljava/lang/String;

    :goto_0
    return-object v2

    :cond_0
    move-object v0, p1

    const/4 v1, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    :cond_1
    :goto_1
    packed-switch v1, :pswitch_data_1

    new-array v2, v5, [Ljava/lang/String;

    goto :goto_0

    :pswitch_0
    const-string/jumbo v3, "DEX_FOTA-"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v1, 0x0

    goto :goto_1

    :pswitch_1
    iget-object v2, p0, Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperFactory;->mProductDexPadChipSet:[Ljava/lang/String;

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x371eefaf
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
    .end packed-switch
.end method

.method public static setChipEmulMode(Z)V
    .locals 0

    sput-boolean p0, Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperFactory;->CHIP_EMUL_MODE:Z

    return-void
.end method


# virtual methods
.method generateChipUpdateHelperBaseList(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperBase;",
            ">;"
        }
    .end annotation

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "generateChipUpdateHelperBaseList : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "ChipUpdateHelperFactory"

    invoke-static {v2, v1}, Lcom/samsung/android/lib/dexcontrol/fota/debug/SLog;->m(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperFactory;->getProductSet(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperFactory;->generateChipUpdateHelperBaseList([Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    return-object v1
.end method

.method reorderProductDexPadChipSet(Ljava/util/ArrayList;)[Ljava/lang/String;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/lib/dexcontrol/fota/data/SDCBinaryInfo;",
            ">;)[",
            "Ljava/lang/String;"
        }
    .end annotation

    const-string/jumbo v14, "ChipUpdateHelperFactory"

    const-string/jumbo v15, "reorderProductDexPadChipSet()"

    invoke-static {v14, v15}, Lcom/samsung/android/lib/dexcontrol/fota/debug/SLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v12, Ljava/lang/StringBuilder;

    const-string/jumbo v14, "Before reorder : "

    invoke-direct {v12, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v13

    const/4 v10, 0x0

    const/4 v9, 0x0

    const/4 v11, 0x0

    const/4 v7, 0x0

    :goto_0
    if-lt v7, v13, :cond_1

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    const-string/jumbo v15, "ChipUpdateHelperFactory"

    invoke-static {v15, v14}, Lcom/samsung/android/lib/dexcontrol/fota/debug/SLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v4, 0x0

    const/4 v3, 0x1

    const/4 v5, 0x2

    const/4 v6, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/samsung/android/lib/dexcontrol/fota/data/SDCBinaryInfo;

    iget-boolean v14, v14, Lcom/samsung/android/lib/dexcontrol/fota/data/SDCBinaryInfo;->isBootMode:Z

    if-nez v14, :cond_4

    move-object/from16 v0, p1

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/samsung/android/lib/dexcontrol/fota/data/SDCBinaryInfo;

    iget-boolean v14, v14, Lcom/samsung/android/lib/dexcontrol/fota/data/SDCBinaryInfo;->isBootMode:Z

    if-eqz v14, :cond_5

    :cond_0
    :goto_1
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "current case = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    const-string/jumbo v15, "ChipUpdateHelperFactory"

    invoke-static {v15, v14}, Lcom/samsung/android/lib/dexcontrol/fota/debug/SLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v14, 0x3

    new-array v8, v14, [Ljava/lang/String;

    packed-switch v6, :pswitch_data_0

    :goto_2
    const-string/jumbo v14, "ChipUpdateHelperFactory"

    const-string/jumbo v15, "reordered result :"

    invoke-static {v14, v15}, Lcom/samsung/android/lib/dexcontrol/fota/debug/SLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    array-length v14, v8

    new-array v14, v14, [Ljava/lang/String;

    sput-object v14, Lcom/samsung/android/lib/dexcontrol/fota/debug/FotaTestConfig;->UPDATE_ORDERED_CHIP_NAME:[Ljava/lang/String;

    const/4 v7, 0x0

    :goto_3
    array-length v14, v8

    if-lt v7, v14, :cond_6

    return-object v8

    :cond_1
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "sdcBinaryInfo : "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, " = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p1

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/samsung/android/lib/dexcontrol/fota/data/SDCBinaryInfo;

    invoke-virtual {v14}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    const-string/jumbo v15, "ChipUpdateHelperFactory"

    invoke-static {v15, v14}, Lcom/samsung/android/lib/dexcontrol/fota/debug/SLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p1

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/samsung/android/lib/dexcontrol/fota/data/SDCBinaryInfo;

    iget-object v14, v14, Lcom/samsung/android/lib/dexcontrol/fota/data/SDCBinaryInfo;->chipName:Ljava/lang/String;

    if-nez v14, :cond_2

    :goto_4
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_0

    :cond_2
    move-object/from16 v0, p1

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/samsung/android/lib/dexcontrol/fota/data/SDCBinaryInfo;

    iget-object v1, v14, Lcom/samsung/android/lib/dexcontrol/fota/data/SDCBinaryInfo;->chipName:Ljava/lang/String;

    const/4 v2, -0x1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v14

    sparse-switch v14, :sswitch_data_0

    :cond_3
    :goto_5
    packed-switch v2, :pswitch_data_1

    goto :goto_4

    :pswitch_0
    const-string/jumbo v14, "[US] "

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v10, v7

    goto :goto_4

    :sswitch_0
    const-string/jumbo v14, "DEX2_PD_US"

    invoke-virtual {v1, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_3

    const/4 v2, 0x0

    goto :goto_5

    :sswitch_1
    const-string/jumbo v14, "DEX2_PD_DS"

    invoke-virtual {v1, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_3

    const/4 v2, 0x1

    goto :goto_5

    :sswitch_2
    const-string/jumbo v14, "DEX2_DP"

    invoke-virtual {v1, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_3

    const/4 v2, 0x2

    goto :goto_5

    :pswitch_1
    const-string/jumbo v14, "[DS] "

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v9, v7

    goto :goto_4

    :pswitch_2
    const-string/jumbo v14, "[DP] "

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v11, v7

    goto :goto_4

    :cond_4
    const/4 v6, 0x2

    goto/16 :goto_1

    :cond_5
    move-object/from16 v0, p1

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/samsung/android/lib/dexcontrol/fota/data/SDCBinaryInfo;

    iget-boolean v14, v14, Lcom/samsung/android/lib/dexcontrol/fota/data/SDCBinaryInfo;->isBootMode:Z

    if-eqz v14, :cond_0

    const/4 v6, 0x1

    goto/16 :goto_1

    :pswitch_3
    const-string/jumbo v14, "DEX2_DP"

    const/4 v15, 0x0

    aput-object v14, v8, v15

    const-string/jumbo v14, "DEX2_PD_DS"

    const/4 v15, 0x1

    aput-object v14, v8, v15

    const-string/jumbo v14, "DEX2_PD_US"

    const/4 v15, 0x2

    aput-object v14, v8, v15

    goto/16 :goto_2

    :pswitch_4
    const-string/jumbo v14, "DEX2_PD_DS"

    const/4 v15, 0x0

    aput-object v14, v8, v15

    const-string/jumbo v14, "DEX2_PD_US"

    const/4 v15, 0x1

    aput-object v14, v8, v15

    const-string/jumbo v14, "DEX2_DP"

    const/4 v15, 0x2

    aput-object v14, v8, v15

    goto/16 :goto_2

    :pswitch_5
    const-string/jumbo v14, "DEX2_PD_US"

    const/4 v15, 0x0

    aput-object v14, v8, v15

    const-string/jumbo v14, "DEX2_PD_DS"

    const/4 v15, 0x1

    aput-object v14, v8, v15

    const-string/jumbo v14, "DEX2_DP"

    const/4 v15, 0x2

    aput-object v14, v8, v15

    goto/16 :goto_2

    :cond_6
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "chipName = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    aget-object v15, v8, v7

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    const-string/jumbo v15, "ChipUpdateHelperFactory"

    invoke-static {v15, v14}, Lcom/samsung/android/lib/dexcontrol/fota/debug/SLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v14, Lcom/samsung/android/lib/dexcontrol/fota/debug/FotaTestConfig;->UPDATE_ORDERED_CHIP_NAME:[Ljava/lang/String;

    aget-object v15, v8, v7

    aput-object v15, v14, v7

    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_3

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch

    :sswitch_data_0
    .sparse-switch
        -0x7829a3d0 -> :sswitch_2
        -0x7508f76a -> :sswitch_1
        -0x7508f55b -> :sswitch_0
    .end sparse-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
