.class public Lcom/samsung/android/lib/dexcontrol/fota/chipapi/dexpad/pdic/sec/structure/I2CEventData;
.super Ljava/lang/Object;
.source "I2CEventData.java"


# instance fields
.field private final TAG:Ljava/lang/String;

.field private code:I

.field private data:[B

.field private size:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string/jumbo v0, "I2CEventData"

    iput-object v0, p0, Lcom/samsung/android/lib/dexcontrol/fota/chipapi/dexpad/pdic/sec/structure/I2CEventData;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(II[B)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string/jumbo v0, "I2CEventData"

    iput-object v0, p0, Lcom/samsung/android/lib/dexcontrol/fota/chipapi/dexpad/pdic/sec/structure/I2CEventData;->TAG:Ljava/lang/String;

    iput p1, p0, Lcom/samsung/android/lib/dexcontrol/fota/chipapi/dexpad/pdic/sec/structure/I2CEventData;->code:I

    iput p2, p0, Lcom/samsung/android/lib/dexcontrol/fota/chipapi/dexpad/pdic/sec/structure/I2CEventData;->size:I

    iput-object p3, p0, Lcom/samsung/android/lib/dexcontrol/fota/chipapi/dexpad/pdic/sec/structure/I2CEventData;->data:[B

    invoke-virtual {p0}, Lcom/samsung/android/lib/dexcontrol/fota/chipapi/dexpad/pdic/sec/structure/I2CEventData;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "I2CEventData"

    invoke-static {v1, v0}, Lcom/samsung/android/lib/dexcontrol/fota/debug/SLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getCode()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/lib/dexcontrol/fota/chipapi/dexpad/pdic/sec/structure/I2CEventData;->code:I

    return v0
.end method

.method public getData()[B
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/lib/dexcontrol/fota/chipapi/dexpad/pdic/sec/structure/I2CEventData;->data:[B

    return-object v0
.end method

.method public getSize()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/lib/dexcontrol/fota/chipapi/dexpad/pdic/sec/structure/I2CEventData;->size:I

    return v0
.end method

.method public initialize()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/lib/dexcontrol/fota/chipapi/dexpad/pdic/sec/structure/I2CEventData;->code:I

    iput v0, p0, Lcom/samsung/android/lib/dexcontrol/fota/chipapi/dexpad/pdic/sec/structure/I2CEventData;->size:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/lib/dexcontrol/fota/chipapi/dexpad/pdic/sec/structure/I2CEventData;->data:[B

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "I2CEventData [size ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/lib/dexcontrol/fota/chipapi/dexpad/pdic/sec/structure/I2CEventData;->size:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", code ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/lib/dexcontrol/fota/chipapi/dexpad/pdic/sec/structure/I2CEventData;->code:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " ,data ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/lib/dexcontrol/fota/chipapi/dexpad/pdic/sec/structure/I2CEventData;->data:[B

    invoke-static {v1}, Lcom/samsung/android/lib/dexcontrol/fota/chipapi/dexpad/pdic/sec/util/Utils;->byteArrayToHexString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public updateI2CEventData([B)V
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x2

    const/4 v2, 0x0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "updateI2CEventData : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Lcom/samsung/android/lib/dexcontrol/fota/chipapi/dexpad/pdic/sec/util/Utils;->byteArrayToHexString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "I2CEventData"

    invoke-static {v1, v0}, Lcom/samsung/android/lib/dexcontrol/fota/debug/SLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p1, :cond_1

    :cond_0
    iput v2, p0, Lcom/samsung/android/lib/dexcontrol/fota/chipapi/dexpad/pdic/sec/structure/I2CEventData;->code:I

    iput v2, p0, Lcom/samsung/android/lib/dexcontrol/fota/chipapi/dexpad/pdic/sec/structure/I2CEventData;->size:I

    return-void

    :cond_1
    array-length v0, p1

    if-lt v0, v3, :cond_0

    iput-object v4, p0, Lcom/samsung/android/lib/dexcontrol/fota/chipapi/dexpad/pdic/sec/structure/I2CEventData;->data:[B

    aget-byte v0, p1, v2

    and-int/lit16 v0, v0, 0xff

    iput v0, p0, Lcom/samsung/android/lib/dexcontrol/fota/chipapi/dexpad/pdic/sec/structure/I2CEventData;->code:I

    const/4 v0, 0x1

    aget-byte v0, p1, v0

    and-int/lit16 v0, v0, 0xff

    array-length v1, p1

    add-int/lit8 v1, v1, -0x2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/lib/dexcontrol/fota/chipapi/dexpad/pdic/sec/structure/I2CEventData;->size:I

    array-length v0, p1

    if-gt v0, v3, :cond_2

    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/lib/dexcontrol/fota/chipapi/dexpad/pdic/sec/structure/I2CEventData;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "I2CEventData"

    invoke-static {v1, v0}, Lcom/samsung/android/lib/dexcontrol/fota/debug/SLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_2
    array-length v0, p1

    add-int/lit8 v0, v0, -0x2

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/samsung/android/lib/dexcontrol/fota/chipapi/dexpad/pdic/sec/structure/I2CEventData;->data:[B

    iget-object v0, p0, Lcom/samsung/android/lib/dexcontrol/fota/chipapi/dexpad/pdic/sec/structure/I2CEventData;->data:[B

    array-length v1, p1

    add-int/lit8 v1, v1, -0x2

    invoke-static {p1, v3, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0
.end method
