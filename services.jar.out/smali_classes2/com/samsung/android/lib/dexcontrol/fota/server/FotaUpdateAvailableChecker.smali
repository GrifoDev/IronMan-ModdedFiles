.class Lcom/samsung/android/lib/dexcontrol/fota/server/FotaUpdateAvailableChecker;
.super Ljava/lang/Object;
.source "FotaUpdateAvailableChecker.java"


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mChipNameListForRequestServer:[Ljava/lang/String;

.field private mChipNameListForRequestServerIndex:I

.field private mProductName:Ljava/lang/String;

.field private mServerChipInfoList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/lib/dexcontrol/fota/server/data/ServerChipInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mServerChipInfoListIndex:I

.field private mUpdateFileInfoMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 3

    const/4 v2, -0x1

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string/jumbo v0, "FotaUpdateAvailableChecker"

    iput-object v0, p0, Lcom/samsung/android/lib/dexcontrol/fota/server/FotaUpdateAvailableChecker;->TAG:Ljava/lang/String;

    iput-object v1, p0, Lcom/samsung/android/lib/dexcontrol/fota/server/FotaUpdateAvailableChecker;->mProductName:Ljava/lang/String;

    iput-object v1, p0, Lcom/samsung/android/lib/dexcontrol/fota/server/FotaUpdateAvailableChecker;->mChipNameListForRequestServer:[Ljava/lang/String;

    iput-object v1, p0, Lcom/samsung/android/lib/dexcontrol/fota/server/FotaUpdateAvailableChecker;->mServerChipInfoList:Ljava/util/ArrayList;

    iput v2, p0, Lcom/samsung/android/lib/dexcontrol/fota/server/FotaUpdateAvailableChecker;->mChipNameListForRequestServerIndex:I

    iput v2, p0, Lcom/samsung/android/lib/dexcontrol/fota/server/FotaUpdateAvailableChecker;->mServerChipInfoListIndex:I

    iput-object v1, p0, Lcom/samsung/android/lib/dexcontrol/fota/server/FotaUpdateAvailableChecker;->mUpdateFileInfoMap:Ljava/util/HashMap;

    return-void
.end method

.method private getLocalFilePath(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    const-string/jumbo v2, ""

    move-object v0, p1

    const/4 v1, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    :cond_0
    :goto_0
    packed-switch v1, :pswitch_data_0

    :goto_1
    return-object v2

    :sswitch_0
    const-string/jumbo v3, "DEX2_DP"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :sswitch_1
    const-string/jumbo v3, "DEX2_PD_US"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :sswitch_2
    const-string/jumbo v3, "DEX2_PD_DS"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v1, 0x2

    goto :goto_0

    :pswitch_0
    const-string/jumbo v2, "/storage/emulated/0/Download/DEX2_DP_AA01.hex"

    goto :goto_1

    :pswitch_1
    const-string/jumbo v2, "/storage/emulated/0/Download/DEX2_PD_US_001.cyacd"

    goto :goto_1

    :pswitch_2
    const-string/jumbo v2, "/storage/emulated/0/Download/DEX2_PD_DS_001.cyacd"

    goto :goto_1

    nop

    :sswitch_data_0
    .sparse-switch
        -0x7829a3d0 -> :sswitch_0
        -0x7508f76a -> :sswitch_2
        -0x7508f55b -> :sswitch_1
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private isSkipOptionEnabled(Ljava/lang/String;)Z
    .locals 5

    const/4 v4, 0x1

    const/4 v2, 0x0

    move-object v0, p1

    const/4 v1, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    :cond_0
    :goto_0
    packed-switch v1, :pswitch_data_0

    :cond_1
    :goto_1
    return v2

    :sswitch_0
    const-string/jumbo v3, "DEX2_DP"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :sswitch_1
    const-string/jumbo v3, "DEX2_PD_US"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :sswitch_2
    const-string/jumbo v3, "DEX2_PD_DS"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v1, 0x2

    goto :goto_0

    :pswitch_0
    sget-boolean v3, Lcom/samsung/android/lib/dexcontrol/fota/debug/FotaTestConfig;->SKIP_FOTA_PS176:Z

    if-ne v3, v4, :cond_1

    const/4 v2, 0x1

    goto :goto_1

    :pswitch_1
    sget-boolean v3, Lcom/samsung/android/lib/dexcontrol/fota/debug/FotaTestConfig;->SKIP_FOTA_PDIC_US:Z

    if-ne v3, v4, :cond_1

    const/4 v2, 0x1

    goto :goto_1

    :pswitch_2
    sget-boolean v3, Lcom/samsung/android/lib/dexcontrol/fota/debug/FotaTestConfig;->SKIP_FOTA_PDIC_DS:Z

    if-ne v3, v4, :cond_1

    const/4 v2, 0x1

    goto :goto_1

    :sswitch_data_0
    .sparse-switch
        -0x7829a3d0 -> :sswitch_0
        -0x7508f76a -> :sswitch_2
        -0x7508f55b -> :sswitch_1
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private printServerInfoArrayList(Ljava/util/ArrayList;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/lib/dexcontrol/fota/server/data/ServerChipInfo;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v0, 0x0

    :goto_0
    if-lt v0, v2, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/lib/dexcontrol/fota/server/data/ServerChipInfo;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ") ServerInfo name = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v1, Lcom/samsung/android/lib/dexcontrol/fota/server/data/ServerChipInfo;->chipName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " chipVersion = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v1, Lcom/samsung/android/lib/dexcontrol/fota/server/data/ServerChipInfo;->chipVersion:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " serverVersion = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v1, Lcom/samsung/android/lib/dexcontrol/fota/server/data/ServerChipInfo;->serverVersion:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "FotaUpdateAvailableChecker"

    invoke-static {v4, v3}, Lcom/samsung/android/lib/dexcontrol/fota/debug/SLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private realignChipInfoOrder([Ljava/lang/String;Ljava/util/HashMap;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "realignChipInfoOrder : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {p1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p2}, Ljava/util/HashMap;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "FotaUpdateAvailableChecker"

    invoke-static {v6, v5}, Lcom/samsung/android/lib/dexcontrol/fota/debug/SLog;->m(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/samsung/android/lib/dexcontrol/fota/server/FotaUpdateAvailableChecker;->mServerChipInfoList:Ljava/util/ArrayList;

    move-object v0, p1

    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-lt v2, v1, :cond_0

    iget-object v5, p0, Lcom/samsung/android/lib/dexcontrol/fota/server/FotaUpdateAvailableChecker;->mServerChipInfoList:Ljava/util/ArrayList;

    invoke-direct {p0, v5}, Lcom/samsung/android/lib/dexcontrol/fota/server/FotaUpdateAvailableChecker;->printServerInfoArrayList(Ljava/util/ArrayList;)V

    return-void

    :cond_0
    aget-object v3, p1, v2

    new-instance v4, Lcom/samsung/android/lib/dexcontrol/fota/server/data/ServerChipInfo;

    invoke-direct {v4}, Lcom/samsung/android/lib/dexcontrol/fota/server/data/ServerChipInfo;-><init>()V

    iput-object v3, v4, Lcom/samsung/android/lib/dexcontrol/fota/server/data/ServerChipInfo;->chipName:Ljava/lang/String;

    invoke-virtual {p2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    iput-object v5, v4, Lcom/samsung/android/lib/dexcontrol/fota/server/data/ServerChipInfo;->chipVersion:Ljava/lang/String;

    iget-object v5, p0, Lcom/samsung/android/lib/dexcontrol/fota/server/FotaUpdateAvailableChecker;->mServerChipInfoList:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method


# virtual methods
.method getChipNameForRequestServer()Ljava/lang/String;
    .locals 3

    const-string/jumbo v1, "FotaUpdateAvailableChecker"

    const-string/jumbo v2, "getChipNameForRequestServer()"

    invoke-static {v1, v2}, Lcom/samsung/android/lib/dexcontrol/fota/debug/SLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/samsung/android/lib/dexcontrol/fota/server/FotaUpdateAvailableChecker;->mChipNameListForRequestServer:[Ljava/lang/String;

    array-length v1, v1

    iget v2, p0, Lcom/samsung/android/lib/dexcontrol/fota/server/FotaUpdateAvailableChecker;->mChipNameListForRequestServerIndex:I

    if-gt v1, v2, :cond_0

    :goto_0
    return-object v0

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/lib/dexcontrol/fota/server/FotaUpdateAvailableChecker;->mChipNameListForRequestServer:[Ljava/lang/String;

    iget v2, p0, Lcom/samsung/android/lib/dexcontrol/fota/server/FotaUpdateAvailableChecker;->mChipNameListForRequestServerIndex:I

    aget-object v0, v1, v2

    goto :goto_0
.end method

.method getFirmwareInfoToWrite()Ljava/util/HashMap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string/jumbo v0, "FotaUpdateAvailableChecker"

    const-string/jumbo v1, "getFirmwareInfoToWrite()"

    invoke-static {v0, v1}, Lcom/samsung/android/lib/dexcontrol/fota/debug/SLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/lib/dexcontrol/fota/server/FotaUpdateAvailableChecker;->mUpdateFileInfoMap:Ljava/util/HashMap;

    return-object v0
.end method

.method isNext()Z
    .locals 3

    const-string/jumbo v1, "FotaUpdateAvailableChecker"

    const-string/jumbo v2, "isNext()"

    invoke-static {v1, v2}, Lcom/samsung/android/lib/dexcontrol/fota/debug/SLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/samsung/android/lib/dexcontrol/fota/server/FotaUpdateAvailableChecker;->mChipNameListForRequestServer:[Ljava/lang/String;

    array-length v1, v1

    iget v2, p0, Lcom/samsung/android/lib/dexcontrol/fota/server/FotaUpdateAvailableChecker;->mChipNameListForRequestServerIndex:I

    add-int/lit8 v2, v2, 0x1

    if-gt v1, v2, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method isUpdateAvailable()Z
    .locals 5

    const-string/jumbo v3, "FotaUpdateAvailableChecker"

    const-string/jumbo v4, "isUpdateAvailable()"

    invoke-static {v3, v4}, Lcom/samsung/android/lib/dexcontrol/fota/debug/SLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    iget-object v3, p0, Lcom/samsung/android/lib/dexcontrol/fota/server/FotaUpdateAvailableChecker;->mServerChipInfoList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_1

    :goto_0
    return v1

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/lib/dexcontrol/fota/server/data/ServerChipInfo;

    if-eqz v2, :cond_0

    iget-object v3, v2, Lcom/samsung/android/lib/dexcontrol/fota/server/data/ServerChipInfo;->serverVersion:Ljava/lang/String;

    if-eqz v3, :cond_0

    iget-object v3, v2, Lcom/samsung/android/lib/dexcontrol/fota/server/data/ServerChipInfo;->chipVersion:Ljava/lang/String;

    if-eqz v3, :cond_0

    iget-object v3, v2, Lcom/samsung/android/lib/dexcontrol/fota/server/data/ServerChipInfo;->serverVersion:Ljava/lang/String;

    iget-object v4, v2, Lcom/samsung/android/lib/dexcontrol/fota/server/data/ServerChipInfo;->chipVersion:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    if-lez v3, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method moveFirst()V
    .locals 3

    const/4 v2, 0x0

    const-string/jumbo v0, "FotaUpdateAvailableChecker"

    const-string/jumbo v1, "moveFirst()"

    invoke-static {v0, v1}, Lcom/samsung/android/lib/dexcontrol/fota/debug/SLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iput v2, p0, Lcom/samsung/android/lib/dexcontrol/fota/server/FotaUpdateAvailableChecker;->mChipNameListForRequestServerIndex:I

    iput v2, p0, Lcom/samsung/android/lib/dexcontrol/fota/server/FotaUpdateAvailableChecker;->mServerChipInfoListIndex:I

    return-void
.end method

.method next()V
    .locals 2

    const-string/jumbo v0, "FotaUpdateAvailableChecker"

    const-string/jumbo v1, "next()"

    invoke-static {v0, v1}, Lcom/samsung/android/lib/dexcontrol/fota/debug/SLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget v0, p0, Lcom/samsung/android/lib/dexcontrol/fota/server/FotaUpdateAvailableChecker;->mChipNameListForRequestServerIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/samsung/android/lib/dexcontrol/fota/server/FotaUpdateAvailableChecker;->mChipNameListForRequestServerIndex:I

    return-void
.end method

.method setDownloadFirmwareInfo(Ljava/util/List;Ljava/lang/String;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const/4 v7, 0x1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setDownloadFirmwareInfo "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "FotaUpdateAvailableChecker"

    invoke-static {v5, v4}, Lcom/samsung/android/lib/dexcontrol/fota/debug/SLog;->m(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/samsung/android/lib/dexcontrol/fota/server/FotaUpdateAvailableChecker;->mUpdateFileInfoMap:Ljava/util/HashMap;

    if-eqz v4, :cond_1

    :goto_0
    iget-object v4, p0, Lcom/samsung/android/lib/dexcontrol/fota/server/FotaUpdateAvailableChecker;->mServerChipInfoList:Ljava/util/ArrayList;

    invoke-direct {p0, v4}, Lcom/samsung/android/lib/dexcontrol/fota/server/FotaUpdateAvailableChecker;->printServerInfoArrayList(Ljava/util/ArrayList;)V

    iget-object v4, p0, Lcom/samsung/android/lib/dexcontrol/fota/server/FotaUpdateAvailableChecker;->mServerChipInfoList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_2

    return-void

    :cond_1
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    iput-object v4, p0, Lcom/samsung/android/lib/dexcontrol/fota/server/FotaUpdateAvailableChecker;->mUpdateFileInfoMap:Ljava/util/HashMap;

    goto :goto_0

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/lib/dexcontrol/fota/server/data/ServerChipInfo;

    sget-boolean v4, Lcom/samsung/android/lib/dexcontrol/fota/debug/FotaTestConfig;->NO_CHECK_VERSION:Z

    if-ne v4, v7, :cond_5

    :cond_3
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iget-object v4, v3, Lcom/samsung/android/lib/dexcontrol/fota/server/data/ServerChipInfo;->chipName:Ljava/lang/String;

    invoke-direct {p0, v4}, Lcom/samsung/android/lib/dexcontrol/fota/server/FotaUpdateAvailableChecker;->isSkipOptionEnabled(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_4

    iget-object v4, v3, Lcom/samsung/android/lib/dexcontrol/fota/server/data/ServerChipInfo;->chipName:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "fileName = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v3, Lcom/samsung/android/lib/dexcontrol/fota/server/data/ServerChipInfo;->chipName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "FotaUpdateAvailableChecker"

    invoke-static {v5, v4}, Lcom/samsung/android/lib/dexcontrol/fota/debug/SLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-boolean v4, Lcom/samsung/android/lib/dexcontrol/fota/debug/FotaTestConfig;->LOCAL_DOWN:Z

    if-eq v4, v7, :cond_6

    iget-object v4, p0, Lcom/samsung/android/lib/dexcontrol/fota/server/FotaUpdateAvailableChecker;->mUpdateFileInfoMap:Ljava/util/HashMap;

    iget-object v5, v3, Lcom/samsung/android/lib/dexcontrol/fota/server/data/ServerChipInfo;->chipName:Ljava/lang/String;

    invoke-virtual {v4, v5, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_5
    iget-object v4, v3, Lcom/samsung/android/lib/dexcontrol/fota/server/data/ServerChipInfo;->chipVersion:Ljava/lang/String;

    if-eqz v4, :cond_3

    iget-object v4, v3, Lcom/samsung/android/lib/dexcontrol/fota/server/data/ServerChipInfo;->chipVersion:Ljava/lang/String;

    if-eqz v4, :cond_0

    iget-object v4, v3, Lcom/samsung/android/lib/dexcontrol/fota/server/data/ServerChipInfo;->serverVersion:Ljava/lang/String;

    iget-object v5, v3, Lcom/samsung/android/lib/dexcontrol/fota/server/data/ServerChipInfo;->chipVersion:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v4

    if-gtz v4, :cond_3

    goto :goto_1

    :cond_6
    iget-object v4, p0, Lcom/samsung/android/lib/dexcontrol/fota/server/FotaUpdateAvailableChecker;->mUpdateFileInfoMap:Ljava/util/HashMap;

    iget-object v5, v3, Lcom/samsung/android/lib/dexcontrol/fota/server/data/ServerChipInfo;->chipName:Ljava/lang/String;

    iget-object v6, v3, Lcom/samsung/android/lib/dexcontrol/fota/server/data/ServerChipInfo;->chipName:Ljava/lang/String;

    invoke-direct {p0, v6}, Lcom/samsung/android/lib/dexcontrol/fota/server/FotaUpdateAvailableChecker;->getLocalFilePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1
.end method

.method setProductName(Ljava/lang/String;)V
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setProductName : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "FotaUpdateAvailableChecker"

    invoke-static {v3, v2}, Lcom/samsung/android/lib/dexcontrol/fota/debug/SLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/samsung/android/lib/dexcontrol/fota/server/FotaUpdateAvailableChecker;->mProductName:Ljava/lang/String;

    iget-object v0, p0, Lcom/samsung/android/lib/dexcontrol/fota/server/FotaUpdateAvailableChecker;->mProductName:Ljava/lang/String;

    const/4 v1, -0x1

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    :cond_0
    :goto_0
    packed-switch v1, :pswitch_data_0

    :goto_1
    return-void

    :sswitch_0
    const-string/jumbo v2, "DEX_FOTA_TEST-"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :sswitch_1
    const-string/jumbo v2, "DEX_FOTA-"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x2

    goto :goto_0

    :pswitch_0
    new-array v2, v5, [Ljava/lang/String;

    iput-object v2, p0, Lcom/samsung/android/lib/dexcontrol/fota/server/FotaUpdateAvailableChecker;->mChipNameListForRequestServer:[Ljava/lang/String;

    iget-object v2, p0, Lcom/samsung/android/lib/dexcontrol/fota/server/FotaUpdateAvailableChecker;->mChipNameListForRequestServer:[Ljava/lang/String;

    const-string/jumbo v3, "DEX_FOTA_TEST-"

    aput-object v3, v2, v4

    goto :goto_1

    :pswitch_1
    new-array v2, v5, [Ljava/lang/String;

    iput-object v2, p0, Lcom/samsung/android/lib/dexcontrol/fota/server/FotaUpdateAvailableChecker;->mChipNameListForRequestServer:[Ljava/lang/String;

    iget-object v2, p0, Lcom/samsung/android/lib/dexcontrol/fota/server/FotaUpdateAvailableChecker;->mChipNameListForRequestServer:[Ljava/lang/String;

    const-string/jumbo v3, "DEX_FOTA-"

    aput-object v3, v2, v4

    goto :goto_1

    :sswitch_data_0
    .sparse-switch
        -0x196ed566 -> :sswitch_0
        0x371eefaf -> :sswitch_1
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method setServerChipInfoList(Ljava/util/HashMap;)V
    .locals 4
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

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getServerChipInfoList : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Ljava/util/HashMap;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "FotaUpdateAvailableChecker"

    invoke-static {v3, v2}, Lcom/samsung/android/lib/dexcontrol/fota/debug/SLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/lib/dexcontrol/fota/server/FotaUpdateAvailableChecker;->mProductName:Ljava/lang/String;

    const/4 v1, -0x1

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    :cond_0
    :goto_0
    packed-switch v1, :pswitch_data_0

    const-string/jumbo v2, "FotaUpdateAvailableChecker"

    const-string/jumbo v3, "Undefined dex id!!"

    invoke-static {v2, v3}, Lcom/samsung/android/lib/dexcontrol/fota/debug/SLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-void

    :sswitch_0
    const-string/jumbo v2, "DEX_FOTA_TEST-"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :sswitch_1
    const-string/jumbo v2, "DEX_FOTA-"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :pswitch_0
    sget-object v2, Lcom/samsung/android/lib/dexcontrol/fota/data/ChipIdTable;->DEX2_ZIP_CHIP_ID_SET:[Ljava/lang/String;

    invoke-direct {p0, v2, p1}, Lcom/samsung/android/lib/dexcontrol/fota/server/FotaUpdateAvailableChecker;->realignChipInfoOrder([Ljava/lang/String;Ljava/util/HashMap;)V

    goto :goto_1

    nop

    :sswitch_data_0
    .sparse-switch
        -0x196ed566 -> :sswitch_0
        0x371eefaf -> :sswitch_1
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method setServerFirmwareVersionInfo(Lcom/samsung/android/sdk/applicativeapp/fotalib/FirmwareInfo;)V
    .locals 5

    const-string/jumbo v3, "FotaUpdateAvailableChecker"

    const-string/jumbo v4, "setServerFirmwareVersionInfo()"

    invoke-static {v3, v4}, Lcom/samsung/android/lib/dexcontrol/fota/debug/SLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/lib/dexcontrol/fota/server/FotaUpdateAvailableChecker;->mProductName:Ljava/lang/String;

    const/4 v1, -0x1

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    :cond_0
    :goto_0
    packed-switch v1, :pswitch_data_0

    iget-object v3, p0, Lcom/samsung/android/lib/dexcontrol/fota/server/FotaUpdateAvailableChecker;->mServerChipInfoList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    iget v4, p0, Lcom/samsung/android/lib/dexcontrol/fota/server/FotaUpdateAvailableChecker;->mServerChipInfoListIndex:I

    if-gt v3, v4, :cond_2

    :cond_1
    :goto_1
    return-void

    :sswitch_0
    const-string/jumbo v3, "DEX_FOTA_TEST-"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :sswitch_1
    const-string/jumbo v3, "DEX_FOTA-"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v1, 0x2

    goto :goto_0

    :cond_2
    iget-object v3, p0, Lcom/samsung/android/lib/dexcontrol/fota/server/FotaUpdateAvailableChecker;->mServerChipInfoList:Ljava/util/ArrayList;

    iget v4, p0, Lcom/samsung/android/lib/dexcontrol/fota/server/FotaUpdateAvailableChecker;->mServerChipInfoListIndex:I

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/lib/dexcontrol/fota/server/data/ServerChipInfo;

    invoke-virtual {p1}, Lcom/samsung/android/sdk/applicativeapp/fotalib/FirmwareInfo;->getFWVersion()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/samsung/android/lib/dexcontrol/fota/server/data/ServerChipInfo;->serverVersion:Ljava/lang/String;

    iget v3, p0, Lcom/samsung/android/lib/dexcontrol/fota/server/FotaUpdateAvailableChecker;->mServerChipInfoListIndex:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/samsung/android/lib/dexcontrol/fota/server/FotaUpdateAvailableChecker;->mServerChipInfoListIndex:I

    goto :goto_1

    :pswitch_0
    new-instance v2, Ljava/util/StringTokenizer;

    invoke-virtual {p1}, Lcom/samsung/android/sdk/applicativeapp/fotalib/FirmwareInfo;->getFWVersion()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "/"

    invoke-direct {v2, v3, v4}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/samsung/android/lib/dexcontrol/fota/server/FotaUpdateAvailableChecker;->mServerChipInfoList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    iget v4, p0, Lcom/samsung/android/lib/dexcontrol/fota/server/FotaUpdateAvailableChecker;->mServerChipInfoListIndex:I

    if-le v3, v4, :cond_1

    iget-object v3, p0, Lcom/samsung/android/lib/dexcontrol/fota/server/FotaUpdateAvailableChecker;->mServerChipInfoList:Ljava/util/ArrayList;

    iget v4, p0, Lcom/samsung/android/lib/dexcontrol/fota/server/FotaUpdateAvailableChecker;->mServerChipInfoListIndex:I

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/lib/dexcontrol/fota/server/data/ServerChipInfo;

    invoke-virtual {v2}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/samsung/android/lib/dexcontrol/fota/server/data/ServerChipInfo;->serverVersion:Ljava/lang/String;

    iget v3, p0, Lcom/samsung/android/lib/dexcontrol/fota/server/FotaUpdateAvailableChecker;->mServerChipInfoListIndex:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/samsung/android/lib/dexcontrol/fota/server/FotaUpdateAvailableChecker;->mServerChipInfoListIndex:I

    goto :goto_2

    nop

    :sswitch_data_0
    .sparse-switch
        -0x196ed566 -> :sswitch_0
        0x371eefaf -> :sswitch_1
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
