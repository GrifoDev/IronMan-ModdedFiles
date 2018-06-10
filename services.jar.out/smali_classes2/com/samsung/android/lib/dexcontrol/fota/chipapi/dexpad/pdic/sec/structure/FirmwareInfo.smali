.class public Lcom/samsung/android/lib/dexcontrol/fota/chipapi/dexpad/pdic/sec/structure/FirmwareInfo;
.super Ljava/lang/Object;
.source "FirmwareInfo.java"


# instance fields
.field private final TAG:Ljava/lang/String;

.field private dsAppMajorVersion:I

.field private dsAppMinorVersion:I

.field private dsBootMode:Z

.field private dsExternalVersion:I

.field private pId:I

.field private requestedBootMode:Z

.field private usAppMajorVersion:I

.field private usAppMinorVersion:I

.field private usBootMode:Z

.field private usExternalVersion:I

.field private vId:I


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string/jumbo v0, "FirmwareInfo"

    iput-object v0, p0, Lcom/samsung/android/lib/dexcontrol/fota/chipapi/dexpad/pdic/sec/structure/FirmwareInfo;->TAG:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/samsung/android/lib/dexcontrol/fota/chipapi/dexpad/pdic/sec/structure/FirmwareInfo;->usBootMode:Z

    iput-boolean v1, p0, Lcom/samsung/android/lib/dexcontrol/fota/chipapi/dexpad/pdic/sec/structure/FirmwareInfo;->dsBootMode:Z

    iput-boolean v1, p0, Lcom/samsung/android/lib/dexcontrol/fota/chipapi/dexpad/pdic/sec/structure/FirmwareInfo;->requestedBootMode:Z

    return-void
.end method


# virtual methods
.method public getDsVersion()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/lib/dexcontrol/fota/chipapi/dexpad/pdic/sec/structure/FirmwareInfo;->dsExternalVersion:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/lib/dexcontrol/fota/chipapi/dexpad/pdic/sec/structure/FirmwareInfo;->dsAppMajorVersion:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/lib/dexcontrol/fota/chipapi/dexpad/pdic/sec/structure/FirmwareInfo;->dsAppMinorVersion:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getProductId()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/lib/dexcontrol/fota/chipapi/dexpad/pdic/sec/structure/FirmwareInfo;->pId:I

    return v0
.end method

.method public getUsVersion()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/lib/dexcontrol/fota/chipapi/dexpad/pdic/sec/structure/FirmwareInfo;->usExternalVersion:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/lib/dexcontrol/fota/chipapi/dexpad/pdic/sec/structure/FirmwareInfo;->usAppMajorVersion:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/lib/dexcontrol/fota/chipapi/dexpad/pdic/sec/structure/FirmwareInfo;->usAppMinorVersion:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getVendorId()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/lib/dexcontrol/fota/chipapi/dexpad/pdic/sec/structure/FirmwareInfo;->vId:I

    return v0
.end method

.method public isDsBootMode()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/lib/dexcontrol/fota/chipapi/dexpad/pdic/sec/structure/FirmwareInfo;->dsBootMode:Z

    return v0
.end method

.method public isRequestedBootmode()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/lib/dexcontrol/fota/chipapi/dexpad/pdic/sec/structure/FirmwareInfo;->requestedBootMode:Z

    return v0
.end method

.method public isUsBootMode()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/lib/dexcontrol/fota/chipapi/dexpad/pdic/sec/structure/FirmwareInfo;->usBootMode:Z

    return v0
.end method

.method public update([B)V
    .locals 9

    const/16 v4, 0x1b

    const/4 v8, 0x4

    const/4 v7, 0x6

    const/4 v3, 0x1

    const/4 v2, 0x0

    aget-byte v1, p1, v8

    and-int/lit8 v1, v1, 0x3

    if-eqz v1, :cond_0

    move v1, v2

    :goto_0
    iput-boolean v1, p0, Lcom/samsung/android/lib/dexcontrol/fota/chipapi/dexpad/pdic/sec/structure/FirmwareInfo;->usBootMode:Z

    aget-byte v1, p1, v4

    shr-int/lit8 v1, v1, 0x4

    and-int/lit8 v1, v1, 0xf

    iput v1, p0, Lcom/samsung/android/lib/dexcontrol/fota/chipapi/dexpad/pdic/sec/structure/FirmwareInfo;->usAppMajorVersion:I

    aget-byte v1, p1, v4

    and-int/lit8 v1, v1, 0xf

    iput v1, p0, Lcom/samsung/android/lib/dexcontrol/fota/chipapi/dexpad/pdic/sec/structure/FirmwareInfo;->usAppMinorVersion:I

    const/16 v1, 0x1a

    aget-byte v1, p1, v1

    invoke-static {v1}, Lcom/samsung/android/lib/dexcontrol/fota/chipapi/dexpad/pdic/sec/util/Utils;->byte2Int(B)I

    move-result v1

    iput v1, p0, Lcom/samsung/android/lib/dexcontrol/fota/chipapi/dexpad/pdic/sec/structure/FirmwareInfo;->usExternalVersion:I

    const/16 v1, 0x39

    aget-byte v1, p1, v1

    and-int/lit8 v1, v1, 0x3

    if-eqz v1, :cond_1

    move v1, v2

    :goto_1
    iput-boolean v1, p0, Lcom/samsung/android/lib/dexcontrol/fota/chipapi/dexpad/pdic/sec/structure/FirmwareInfo;->dsBootMode:Z

    const/16 v1, 0x3f

    aget-byte v1, p1, v1

    shr-int/lit8 v1, v1, 0x4

    and-int/lit8 v1, v1, 0xf

    iput v1, p0, Lcom/samsung/android/lib/dexcontrol/fota/chipapi/dexpad/pdic/sec/structure/FirmwareInfo;->dsAppMajorVersion:I

    const/16 v1, 0x3f

    aget-byte v1, p1, v1

    and-int/lit8 v1, v1, 0xf

    iput v1, p0, Lcom/samsung/android/lib/dexcontrol/fota/chipapi/dexpad/pdic/sec/structure/FirmwareInfo;->dsAppMinorVersion:I

    const/16 v1, 0x3e

    aget-byte v1, p1, v1

    invoke-static {v1}, Lcom/samsung/android/lib/dexcontrol/fota/chipapi/dexpad/pdic/sec/util/Utils;->byte2Int(B)I

    move-result v1

    iput v1, p0, Lcom/samsung/android/lib/dexcontrol/fota/chipapi/dexpad/pdic/sec/structure/FirmwareInfo;->dsExternalVersion:I

    const/16 v1, 0x34

    aget-byte v1, p1, v1

    const/16 v4, 0x35

    aget-byte v4, p1, v4

    invoke-static {v1, v4}, Lcom/samsung/android/lib/dexcontrol/fota/chipapi/dexpad/pdic/sec/util/Utils;->combineWord(BB)I

    move-result v1

    iput v1, p0, Lcom/samsung/android/lib/dexcontrol/fota/chipapi/dexpad/pdic/sec/structure/FirmwareInfo;->vId:I

    const/16 v1, 0x36

    aget-byte v1, p1, v1

    const/16 v4, 0x37

    aget-byte v4, p1, v4

    invoke-static {v1, v4}, Lcom/samsung/android/lib/dexcontrol/fota/chipapi/dexpad/pdic/sec/util/Utils;->combineWord(BB)I

    move-result v1

    iput v1, p0, Lcom/samsung/android/lib/dexcontrol/fota/chipapi/dexpad/pdic/sec/structure/FirmwareInfo;->pId:I

    aget-byte v1, p1, v7

    and-int/lit8 v1, v1, 0x1

    if-eq v1, v3, :cond_2

    move v1, v2

    :goto_2
    iput-boolean v1, p0, Lcom/samsung/android/lib/dexcontrol/fota/chipapi/dexpad/pdic/sec/structure/FirmwareInfo;->requestedBootMode:Z

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    const/16 v4, 0x8

    new-array v4, v4, [Ljava/lang/Object;

    iget v5, p0, Lcom/samsung/android/lib/dexcontrol/fota/chipapi/dexpad/pdic/sec/structure/FirmwareInfo;->pId:I

    const-string/jumbo v6, "update firmware ifno : pId = 0x%04x, vId = 0x%04x, US : [%s,%b], DS : [%s,%b], requestedBoot = 0x%02x > %b"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v2

    iget v2, p0, Lcom/samsung/android/lib/dexcontrol/fota/chipapi/dexpad/pdic/sec/structure/FirmwareInfo;->vId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v4, v3

    invoke-virtual {p0}, Lcom/samsung/android/lib/dexcontrol/fota/chipapi/dexpad/pdic/sec/structure/FirmwareInfo;->getUsVersion()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    aput-object v2, v4, v3

    iget-boolean v2, p0, Lcom/samsung/android/lib/dexcontrol/fota/chipapi/dexpad/pdic/sec/structure/FirmwareInfo;->usBootMode:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/4 v3, 0x3

    aput-object v2, v4, v3

    invoke-virtual {p0}, Lcom/samsung/android/lib/dexcontrol/fota/chipapi/dexpad/pdic/sec/structure/FirmwareInfo;->getDsVersion()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v4, v8

    iget-boolean v2, p0, Lcom/samsung/android/lib/dexcontrol/fota/chipapi/dexpad/pdic/sec/structure/FirmwareInfo;->dsBootMode:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/4 v3, 0x5

    aput-object v2, v4, v3

    aget-byte v2, p1, v7

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    aput-object v2, v4, v7

    iget-boolean v2, p0, Lcom/samsung/android/lib/dexcontrol/fota/chipapi/dexpad/pdic/sec/structure/FirmwareInfo;->requestedBootMode:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/4 v3, 0x7

    aput-object v2, v4, v3

    invoke-static {v1, v6, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "FirmwareInfo"

    invoke-static {v1, v0}, Lcom/samsung/android/lib/dexcontrol/fota/debug/SLog;->m(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/lib/dexcontrol/fota/debug/DexFotaLibDataObserver;->getInstance()Lcom/samsung/android/lib/dexcontrol/fota/debug/DexFotaLibDataObserver;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/lib/dexcontrol/fota/debug/DexFotaLibDataObserver;->setUpdateMessage(Ljava/lang/String;)V

    return-void

    :cond_0
    move v1, v3

    goto/16 :goto_0

    :cond_1
    move v1, v3

    goto/16 :goto_1

    :cond_2
    move v1, v3

    goto :goto_2
.end method
