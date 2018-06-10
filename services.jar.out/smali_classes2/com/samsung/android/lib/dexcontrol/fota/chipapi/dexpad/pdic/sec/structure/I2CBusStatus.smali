.class public Lcom/samsung/android/lib/dexcontrol/fota/chipapi/dexpad/pdic/sec/structure/I2CBusStatus;
.super Ljava/lang/Object;
.source "I2CBusStatus.java"


# instance fields
.field private mI2cBusStatus:[B


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x3

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/samsung/android/lib/dexcontrol/fota/chipapi/dexpad/pdic/sec/structure/I2CBusStatus;->mI2cBusStatus:[B

    iget-object v0, p0, Lcom/samsung/android/lib/dexcontrol/fota/chipapi/dexpad/pdic/sec/structure/I2CBusStatus;->mI2cBusStatus:[B

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([BB)V

    return-void
.end method


# virtual methods
.method public hasError()Z
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/samsung/android/lib/dexcontrol/fota/chipapi/dexpad/pdic/sec/structure/I2CBusStatus;->mI2cBusStatus:[B

    aget-byte v1, v1, v0

    and-int/lit8 v1, v1, 0x7b

    if-nez v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isBusBusing()Z
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/samsung/android/lib/dexcontrol/fota/chipapi/dexpad/pdic/sec/structure/I2CBusStatus;->mI2cBusStatus:[B

    aget-byte v1, v1, v0

    and-int/lit8 v1, v1, 0x2

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public remainingDataCount()I
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/lib/dexcontrol/fota/chipapi/dexpad/pdic/sec/structure/I2CBusStatus;->mI2cBusStatus:[B

    const/4 v1, 0x2

    aget-byte v0, v0, v1

    shl-int/lit8 v0, v0, 0x8

    iget-object v1, p0, Lcom/samsung/android/lib/dexcontrol/fota/chipapi/dexpad/pdic/sec/structure/I2CBusStatus;->mI2cBusStatus:[B

    const/4 v2, 0x1

    aget-byte v1, v1, v2

    or-int/2addr v0, v1

    return v0
.end method

.method public setI2cBusStatus([B)V
    .locals 3

    const/4 v2, 0x3

    const/4 v1, 0x0

    if-nez p1, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/lib/dexcontrol/fota/chipapi/dexpad/pdic/sec/structure/I2CBusStatus;->mI2cBusStatus:[B

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([BB)V

    :goto_0
    return-void

    :cond_1
    array-length v0, p1

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lcom/samsung/android/lib/dexcontrol/fota/chipapi/dexpad/pdic/sec/structure/I2CBusStatus;->mI2cBusStatus:[B

    invoke-static {p1, v1, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0
.end method
