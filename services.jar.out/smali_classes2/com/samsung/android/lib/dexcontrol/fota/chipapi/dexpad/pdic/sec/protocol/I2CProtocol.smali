.class public final Lcom/samsung/android/lib/dexcontrol/fota/chipapi/dexpad/pdic/sec/protocol/I2CProtocol;
.super Lcom/samsung/android/lib/dexcontrol/fota/chipapi/dexpad/pdic/sec/protocol/PdicProtocolBase;
.source "I2CProtocol.java"


# instance fields
.field private final CY_SCB_INDEX_POSITION:I

.field private final TAG:Ljava/lang/String;

.field private final USB_I2C_CONTROL_OUT:I

.field private final USB_I2C_MODE_RX:I

.field private final USB_I2C_MODE_TX:I

.field private final USB_I2C_VENDOR_CMD_RESET:I

.field private final USB_SETUP_RECIPIENT_DEVICE:I

.field private mEpBulkIn:Landroid/hardware/usb/UsbEndpoint;

.field private mEpBulkOut:Landroid/hardware/usb/UsbEndpoint;

.field private mEpInterruptIn:Landroid/hardware/usb/UsbEndpoint;

.field private mI2cAddressLocationSize:I

.field private final mI2cSlaveAddress:I

.field private mScbIndex:I


# direct methods
.method public constructor <init>()V
    .locals 5

    const/16 v4, 0x8

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/samsung/android/lib/dexcontrol/fota/chipapi/dexpad/pdic/sec/protocol/PdicProtocolBase;-><init>()V

    const-string/jumbo v0, "I2CProtocol"

    iput-object v0, p0, Lcom/samsung/android/lib/dexcontrol/fota/chipapi/dexpad/pdic/sec/protocol/I2CProtocol;->TAG:Ljava/lang/String;

    iput v4, p0, Lcom/samsung/android/lib/dexcontrol/fota/chipapi/dexpad/pdic/sec/protocol/I2CProtocol;->mI2cSlaveAddress:I

    iput-object v1, p0, Lcom/samsung/android/lib/dexcontrol/fota/chipapi/dexpad/pdic/sec/protocol/I2CProtocol;->mEpBulkIn:Landroid/hardware/usb/UsbEndpoint;

    iput-object v1, p0, Lcom/samsung/android/lib/dexcontrol/fota/chipapi/dexpad/pdic/sec/protocol/I2CProtocol;->mEpBulkOut:Landroid/hardware/usb/UsbEndpoint;

    iput-object v1, p0, Lcom/samsung/android/lib/dexcontrol/fota/chipapi/dexpad/pdic/sec/protocol/I2CProtocol;->mEpInterruptIn:Landroid/hardware/usb/UsbEndpoint;

    iput v2, p0, Lcom/samsung/android/lib/dexcontrol/fota/chipapi/dexpad/pdic/sec/protocol/I2CProtocol;->USB_I2C_MODE_TX:I

    iput v3, p0, Lcom/samsung/android/lib/dexcontrol/fota/chipapi/dexpad/pdic/sec/protocol/I2CProtocol;->USB_I2C_MODE_RX:I

    iput v2, p0, Lcom/samsung/android/lib/dexcontrol/fota/chipapi/dexpad/pdic/sec/protocol/I2CProtocol;->USB_SETUP_RECIPIENT_DEVICE:I

    const/16 v0, 0x40

    iput v0, p0, Lcom/samsung/android/lib/dexcontrol/fota/chipapi/dexpad/pdic/sec/protocol/I2CProtocol;->USB_I2C_CONTROL_OUT:I

    const/16 v0, 0xc9

    iput v0, p0, Lcom/samsung/android/lib/dexcontrol/fota/chipapi/dexpad/pdic/sec/protocol/I2CProtocol;->USB_I2C_VENDOR_CMD_RESET:I

    const/16 v0, 0xf

    iput v0, p0, Lcom/samsung/android/lib/dexcontrol/fota/chipapi/dexpad/pdic/sec/protocol/I2CProtocol;->CY_SCB_INDEX_POSITION:I

    invoke-direct {p0, v4, v3}, Lcom/samsung/android/lib/dexcontrol/fota/chipapi/dexpad/pdic/sec/protocol/I2CProtocol;->setI2cSlaveAddress(II)I

    return-void
.end method

.method private clearInteruptRegister()I
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    const-string/jumbo v2, "I2CProtocol"

    const-string/jumbo v3, "clearInteruptRegister()"

    invoke-static {v2, v3}, Lcom/samsung/android/lib/dexcontrol/fota/debug/SLog;->m(Ljava/lang/String;Ljava/lang/String;)V

    new-array v0, v5, [B

    aput-byte v5, v0, v4

    const/4 v2, 0x6

    invoke-direct {p0, v2, v0}, Lcom/samsung/android/lib/dexcontrol/fota/chipapi/dexpad/pdic/sec/protocol/I2CProtocol;->i2cWrite(I[B)I

    move-result v1

    if-ltz v1, :cond_0

    :goto_0
    return v1

    :cond_0
    const-string/jumbo v2, "I2CProtocol"

    const-string/jumbo v3, "Failed to write data to interrupt register"

    invoke-static {v2, v3}, Lcom/samsung/android/lib/dexcontrol/fota/debug/SLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private getScbIndex(Landroid/hardware/usb/UsbDevice;Landroid/hardware/usb/UsbInterface;)I
    .locals 5

    const/4 v3, 0x0

    const/4 v2, 0x0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1}, Landroid/hardware/usb/UsbDevice;->getInterfaceCount()I

    move-result v4

    if-lt v0, v4, :cond_0

    :goto_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "ScbIndex = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "I2CProtocol"

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_0
    invoke-virtual {p1, v0}, Landroid/hardware/usb/UsbDevice;->getInterface(I)Landroid/hardware/usb/UsbInterface;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    if-gtz v0, :cond_2

    move v2, v3

    :goto_2
    goto :goto_1

    :cond_2
    const/4 v2, 0x1

    goto :goto_2
.end method

.method private i2cRead(I[B)I
    .locals 9

    const/4 v8, 0x2

    const/4 v7, -0x1

    const/4 v6, 0x1

    const/4 v5, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "i2cRead : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " , "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "I2CProtocol"

    invoke-static {v4, v3}, Lcom/samsung/android/lib/dexcontrol/fota/debug/SLog;->m(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p2, :cond_1

    :cond_0
    return v5

    :cond_1
    array-length v3, p2

    if-eqz v3, :cond_0

    iget v3, p0, Lcom/samsung/android/lib/dexcontrol/fota/chipapi/dexpad/pdic/sec/protocol/I2CProtocol;->mI2cAddressLocationSize:I

    if-ne v3, v6, :cond_4

    :goto_0
    new-instance v0, Lcom/samsung/android/lib/dexcontrol/fota/chipapi/dexpad/pdic/sec/structure/I2CBusStatus;

    invoke-direct {v0}, Lcom/samsung/android/lib/dexcontrol/fota/chipapi/dexpad/pdic/sec/structure/I2CBusStatus;-><init>()V

    iget v3, p0, Lcom/samsung/android/lib/dexcontrol/fota/chipapi/dexpad/pdic/sec/protocol/I2CProtocol;->mI2cAddressLocationSize:I

    new-array v2, v3, [B

    invoke-static {p2, v5}, Ljava/util/Arrays;->fill([BB)V

    and-int/lit16 v3, p1, 0xff

    int-to-byte v3, v3

    int-to-byte v3, v3

    aput-byte v3, v2, v5

    iget v3, p0, Lcom/samsung/android/lib/dexcontrol/fota/chipapi/dexpad/pdic/sec/protocol/I2CProtocol;->mI2cAddressLocationSize:I

    if-eq v3, v8, :cond_5

    :goto_1
    invoke-direct {p0, v5, v6, v2}, Lcom/samsung/android/lib/dexcontrol/fota/chipapi/dexpad/pdic/sec/protocol/I2CProtocol;->i2cWrite(ZZ[B)I

    move-result v1

    if-ltz v1, :cond_6

    invoke-direct {p0, v6, v0}, Lcom/samsung/android/lib/dexcontrol/fota/chipapi/dexpad/pdic/sec/protocol/I2CProtocol;->vendorRequestI2cGetStatus(ILcom/samsung/android/lib/dexcontrol/fota/chipapi/dexpad/pdic/sec/structure/I2CBusStatus;)I

    move-result v1

    if-ltz v1, :cond_7

    invoke-virtual {v0}, Lcom/samsung/android/lib/dexcontrol/fota/chipapi/dexpad/pdic/sec/structure/I2CBusStatus;->isBusBusing()Z

    move-result v3

    if-nez v3, :cond_8

    array-length v3, p2

    invoke-direct {p0, v6, v6, v3}, Lcom/samsung/android/lib/dexcontrol/fota/chipapi/dexpad/pdic/sec/protocol/I2CProtocol;->vendorRequestI2cRead(ZZI)I

    move-result v1

    if-ltz v1, :cond_9

    invoke-direct {p0, v6, v0}, Lcom/samsung/android/lib/dexcontrol/fota/chipapi/dexpad/pdic/sec/protocol/I2CProtocol;->vendorRequestI2cGetStatus(ILcom/samsung/android/lib/dexcontrol/fota/chipapi/dexpad/pdic/sec/structure/I2CBusStatus;)I

    move-result v1

    if-gez v1, :cond_a

    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "[Debug] Read I2C RX status failed result = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", bus state = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/samsung/android/lib/dexcontrol/fota/chipapi/dexpad/pdic/sec/structure/I2CBusStatus;->isBusBusing()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "I2CProtocol"

    invoke-static {v4, v3}, Lcom/samsung/android/lib/dexcontrol/fota/debug/SLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    invoke-direct {p0, p2}, Lcom/samsung/android/lib/dexcontrol/fota/chipapi/dexpad/pdic/sec/protocol/I2CProtocol;->vendorRequestReadData([B)I

    move-result v1

    if-ltz v1, :cond_b

    invoke-direct {p0, v6, v0}, Lcom/samsung/android/lib/dexcontrol/fota/chipapi/dexpad/pdic/sec/protocol/I2CProtocol;->interruptInRead(ILcom/samsung/android/lib/dexcontrol/fota/chipapi/dexpad/pdic/sec/structure/I2CBusStatus;)I

    move-result v1

    if-ltz v1, :cond_c

    invoke-virtual {v0}, Lcom/samsung/android/lib/dexcontrol/fota/chipapi/dexpad/pdic/sec/structure/I2CBusStatus;->hasError()Z

    move-result v3

    if-eqz v3, :cond_d

    :cond_3
    return v7

    :cond_4
    iget v3, p0, Lcom/samsung/android/lib/dexcontrol/fota/chipapi/dexpad/pdic/sec/protocol/I2CProtocol;->mI2cAddressLocationSize:I

    if-ne v3, v8, :cond_0

    goto :goto_0

    :cond_5
    shr-int/lit8 v3, p1, 0x8

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    int-to-byte v3, v3

    aput-byte v3, v2, v6

    goto :goto_1

    :cond_6
    const-string/jumbo v3, "I2CProtocol"

    const-string/jumbo v4, "Set I2C read offset failed"

    invoke-static {v3, v4}, Lcom/samsung/android/lib/dexcontrol/fota/debug/SLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_7
    const-string/jumbo v3, "I2CProtocol"

    const-string/jumbo v4, "Read I2C RX status failed"

    invoke-static {v3, v4}, Lcom/samsung/android/lib/dexcontrol/fota/debug/SLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_8
    const-string/jumbo v3, "I2CProtocol"

    const-string/jumbo v4, "I2C Bus is busying"

    invoke-static {v3, v4}, Lcom/samsung/android/lib/dexcontrol/fota/debug/SLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v7

    :cond_9
    const-string/jumbo v3, "I2CProtocol"

    const-string/jumbo v4, "Set I2C read request failed"

    invoke-static {v3, v4}, Lcom/samsung/android/lib/dexcontrol/fota/debug/SLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_a
    invoke-virtual {v0}, Lcom/samsung/android/lib/dexcontrol/fota/chipapi/dexpad/pdic/sec/structure/I2CBusStatus;->isBusBusing()Z

    move-result v3

    if-nez v3, :cond_2

    goto :goto_2

    :cond_b
    const-string/jumbo v3, "I2CProtocol"

    const-string/jumbo v4, "Get I2C read data failed"

    invoke-static {v3, v4}, Lcom/samsung/android/lib/dexcontrol/fota/debug/SLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_c
    const-string/jumbo v3, "I2CProtocol"

    const-string/jumbo v4, "Get I2C data read result status failed"

    invoke-static {v3, v4}, Lcom/samsung/android/lib/dexcontrol/fota/debug/SLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_d
    invoke-virtual {v0}, Lcom/samsung/android/lib/dexcontrol/fota/chipapi/dexpad/pdic/sec/structure/I2CBusStatus;->remainingDataCount()I

    move-result v3

    if-gtz v3, :cond_3

    return v5
.end method

.method private i2cWrite(I[B)I
    .locals 7

    const/4 v6, 0x1

    const/4 v5, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "i2cWrite : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " , "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "I2CProtocol"

    invoke-static {v4, v3}, Lcom/samsung/android/lib/dexcontrol/fota/debug/SLog;->m(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p2, :cond_1

    :cond_0
    return v5

    :cond_1
    array-length v3, p2

    if-eqz v3, :cond_0

    iget v3, p0, Lcom/samsung/android/lib/dexcontrol/fota/chipapi/dexpad/pdic/sec/protocol/I2CProtocol;->mI2cAddressLocationSize:I

    if-ne v3, v6, :cond_2

    :goto_0
    array-length v3, p2

    iget v4, p0, Lcom/samsung/android/lib/dexcontrol/fota/chipapi/dexpad/pdic/sec/protocol/I2CProtocol;->mI2cAddressLocationSize:I

    add-int v2, v3, v4

    new-array v1, v2, [B

    and-int/lit16 v3, p1, 0xff

    int-to-byte v3, v3

    int-to-byte v3, v3

    aput-byte v3, v1, v5

    iget v3, p0, Lcom/samsung/android/lib/dexcontrol/fota/chipapi/dexpad/pdic/sec/protocol/I2CProtocol;->mI2cAddressLocationSize:I

    if-ne v3, v6, :cond_3

    :goto_1
    iget v3, p0, Lcom/samsung/android/lib/dexcontrol/fota/chipapi/dexpad/pdic/sec/protocol/I2CProtocol;->mI2cAddressLocationSize:I

    array-length v4, p2

    invoke-static {p2, v5, v1, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-direct {p0, v6, v6, v1}, Lcom/samsung/android/lib/dexcontrol/fota/chipapi/dexpad/pdic/sec/protocol/I2CProtocol;->i2cWrite(ZZ[B)I

    move-result v0

    if-ltz v0, :cond_4

    return v5

    :cond_2
    iget v3, p0, Lcom/samsung/android/lib/dexcontrol/fota/chipapi/dexpad/pdic/sec/protocol/I2CProtocol;->mI2cAddressLocationSize:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    goto :goto_0

    :cond_3
    shr-int/lit8 v3, p1, 0x8

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    int-to-byte v3, v3

    aput-byte v3, p2, v6

    goto :goto_1

    :cond_4
    const-string/jumbo v3, "I2CProtocol"

    const-string/jumbo v4, "I2C write failed"

    invoke-static {v3, v4}, Lcom/samsung/android/lib/dexcontrol/fota/debug/SLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method private i2cWrite(ZZ[B)I
    .locals 6

    const/4 v5, -0x1

    const/4 v4, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "i2cWrite : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " , "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " , "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "I2CProtocol"

    invoke-static {v3, v2}, Lcom/samsung/android/lib/dexcontrol/fota/debug/SLog;->m(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/samsung/android/lib/dexcontrol/fota/chipapi/dexpad/pdic/sec/structure/I2CBusStatus;

    invoke-direct {v0}, Lcom/samsung/android/lib/dexcontrol/fota/chipapi/dexpad/pdic/sec/structure/I2CBusStatus;-><init>()V

    invoke-direct {p0, v4, v0}, Lcom/samsung/android/lib/dexcontrol/fota/chipapi/dexpad/pdic/sec/protocol/I2CProtocol;->vendorRequestI2cGetStatus(ILcom/samsung/android/lib/dexcontrol/fota/chipapi/dexpad/pdic/sec/structure/I2CBusStatus;)I

    move-result v1

    if-ltz v1, :cond_1

    invoke-virtual {v0}, Lcom/samsung/android/lib/dexcontrol/fota/chipapi/dexpad/pdic/sec/structure/I2CBusStatus;->isBusBusing()Z

    move-result v2

    if-nez v2, :cond_2

    array-length v2, p3

    invoke-direct {p0, p1, p2, v2}, Lcom/samsung/android/lib/dexcontrol/fota/chipapi/dexpad/pdic/sec/protocol/I2CProtocol;->vendorRequestI2cWrite(ZZI)I

    move-result v1

    if-ltz v1, :cond_3

    invoke-direct {p0, p3}, Lcom/samsung/android/lib/dexcontrol/fota/chipapi/dexpad/pdic/sec/protocol/I2CProtocol;->vendorRequestWriteData([B)I

    move-result v1

    if-ltz v1, :cond_4

    invoke-direct {p0, v4, v0}, Lcom/samsung/android/lib/dexcontrol/fota/chipapi/dexpad/pdic/sec/protocol/I2CProtocol;->interruptInRead(ILcom/samsung/android/lib/dexcontrol/fota/chipapi/dexpad/pdic/sec/structure/I2CBusStatus;)I

    move-result v1

    if-ltz v1, :cond_5

    invoke-virtual {v0}, Lcom/samsung/android/lib/dexcontrol/fota/chipapi/dexpad/pdic/sec/structure/I2CBusStatus;->hasError()Z

    move-result v2

    if-eqz v2, :cond_6

    :cond_0
    invoke-direct {p0, v4}, Lcom/samsung/android/lib/dexcontrol/fota/chipapi/dexpad/pdic/sec/protocol/I2CProtocol;->vendorRequestI2cReset(I)I

    return v5

    :cond_1
    const-string/jumbo v2, "I2CProtocol"

    const-string/jumbo v3, "Read I2C TX status failed"

    invoke-static {v2, v3}, Lcom/samsung/android/lib/dexcontrol/fota/debug/SLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_2
    const-string/jumbo v2, "I2CProtocol"

    const-string/jumbo v3, "error, i2c bus is busying"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v5

    :cond_3
    const-string/jumbo v2, "I2CProtocol"

    const-string/jumbo v3, "Set I2C write request failed"

    invoke-static {v2, v3}, Lcom/samsung/android/lib/dexcontrol/fota/debug/SLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_4
    const-string/jumbo v2, "I2CProtocol"

    const-string/jumbo v3, "Set I2C write data failed"

    invoke-static {v2, v3}, Lcom/samsung/android/lib/dexcontrol/fota/debug/SLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_5
    const-string/jumbo v2, "I2CProtocol"

    const-string/jumbo v3, "Get I2C data written result status failed"

    invoke-static {v2, v3}, Lcom/samsung/android/lib/dexcontrol/fota/debug/SLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_6
    invoke-virtual {v0}, Lcom/samsung/android/lib/dexcontrol/fota/chipapi/dexpad/pdic/sec/structure/I2CBusStatus;->remainingDataCount()I

    move-result v2

    if-gtz v2, :cond_0

    return v4
.end method

.method private interruptInRead(ILcom/samsung/android/lib/dexcontrol/fota/chipapi/dexpad/pdic/sec/structure/I2CBusStatus;)I
    .locals 8

    const/4 v7, -0x1

    const/4 v6, 0x0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "interruptInRead : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "I2CProtocol"

    invoke-static {v5, v4}, Lcom/samsung/android/lib/dexcontrol/fota/debug/SLog;->m(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    const/16 v3, 0x1f4

    const/4 v4, 0x3

    new-array v2, v4, [B

    :cond_0
    const-wide/16 v4, 0x1

    :try_start_0
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v2, p0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/lib/dexcontrol/fota/chipapi/dexpad/pdic/sec/protocol/I2CProtocol;->vendorRequestI2cGetStatus(ILcom/samsung/android/lib/dexcontrol/fota/chipapi/dexpad/pdic/sec/structure/I2CBusStatus;)I

    move-result v1

    if-ltz v1, :cond_1

    move-object v2, p2

    invoke-virtual {p2}, Lcom/samsung/android/lib/dexcontrol/fota/chipapi/dexpad/pdic/sec/structure/I2CBusStatus;->remainingDataCount()I

    move-result v4

    if-eqz v4, :cond_3

    :goto_0
    add-int/lit8 v3, v3, -0x1

    if-gtz v3, :cond_0

    return v7

    :catch_0
    move-exception v2

    move-object v0, v2

    invoke-virtual {v2}, Ljava/lang/InterruptedException;->printStackTrace()V

    return v7

    :cond_1
    if-eqz p1, :cond_2

    const-string/jumbo v4, "I2CProtocol"

    const-string/jumbo v5, "Read I2C RX status failed"

    invoke-static {v4, v5}, Lcom/samsung/android/lib/dexcontrol/fota/debug/SLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const-string/jumbo v4, "I2CProtocol"

    const-string/jumbo v5, "Read I2C TX status failed"

    invoke-static {v4, v5}, Lcom/samsung/android/lib/dexcontrol/fota/debug/SLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    return v6
.end method

.method private pollingEventData(IILcom/samsung/android/lib/dexcontrol/fota/chipapi/dexpad/pdic/sec/structure/I2CEventData;)I
    .locals 10

    const/4 v6, 0x1

    const/4 v5, 0x0

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "pollingEventData : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " , "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, "I2CProtocol"

    invoke-static {v8, v7}, Lcom/samsung/android/lib/dexcontrol/fota/debug/SLog;->m(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x1

    const/4 v1, 0x1

    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/lib/dexcontrol/fota/chipapi/dexpad/pdic/sec/protocol/I2CProtocol;->readInteruptRegister()I

    move-result v4

    if-ltz v4, :cond_2

    const-string/jumbo v7, "I2CProtocol"

    const-string/jumbo v8, "Read interrupt register successed"

    invoke-static {v7, v8}, Lcom/samsung/android/lib/dexcontrol/fota/debug/SLog;->msg(Ljava/lang/String;Ljava/lang/String;)V

    and-int/lit8 v7, v4, 0x1

    if-eq v7, v6, :cond_4

    move v3, v5

    :goto_0
    if-nez v3, :cond_5

    :cond_1
    if-eqz v2, :cond_9

    const/4 v2, 0x0

    :goto_1
    if-lt v1, p2, :cond_0

    :goto_2
    return v4

    :cond_2
    sub-int/2addr v4, v1

    const-string/jumbo v7, "I2CProtocol"

    const-string/jumbo v8, "Read interrupt register failed"

    invoke-static {v7, v8}, Lcom/samsung/android/lib/dexcontrol/fota/debug/SLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v2, :cond_3

    return v4

    :cond_3
    const/4 v2, 0x0

    goto :goto_1

    :cond_4
    move v3, v6

    goto :goto_0

    :cond_5
    invoke-direct {p0, p3}, Lcom/samsung/android/lib/dexcontrol/fota/chipapi/dexpad/pdic/sec/protocol/I2CProtocol;->readDeviceInfoEventData(Lcom/samsung/android/lib/dexcontrol/fota/chipapi/dexpad/pdic/sec/structure/I2CEventData;)I

    move-result v4

    invoke-direct {p0}, Lcom/samsung/android/lib/dexcontrol/fota/chipapi/dexpad/pdic/sec/protocol/I2CProtocol;->clearInteruptRegister()I

    if-ltz v4, :cond_6

    invoke-virtual {p3}, Lcom/samsung/android/lib/dexcontrol/fota/chipapi/dexpad/pdic/sec/structure/I2CEventData;->getCode()I

    move-result v7

    if-eqz v7, :cond_1

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Read event code = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p3}, Lcom/samsung/android/lib/dexcontrol/fota/chipapi/dexpad/pdic/sec/structure/I2CEventData;->getCode()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "I2CProtocol"

    invoke-static {v7, v6}, Lcom/samsung/android/lib/dexcontrol/fota/debug/SLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    if-gt p2, v1, :cond_8

    move v4, v5

    :goto_3
    goto :goto_2

    :cond_6
    sub-int/2addr v4, v1

    const-string/jumbo v7, "I2CProtocol"

    const-string/jumbo v8, "Read event data failed"

    invoke-static {v7, v8}, Lcom/samsung/android/lib/dexcontrol/fota/debug/SLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v2, :cond_7

    return v4

    :cond_7
    const/4 v2, 0x0

    goto :goto_1

    :cond_8
    sub-int v4, p2, v1

    goto :goto_3

    :cond_9
    int-to-long v8, p1

    :try_start_0
    invoke-static {v8, v9}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/2addr v1, p1

    neg-int v4, v1

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v5, -0x1

    return v5
.end method

.method private readDeviceInfoEventData(Lcom/samsung/android/lib/dexcontrol/fota/chipapi/dexpad/pdic/sec/structure/I2CEventData;)I
    .locals 7

    const/16 v6, 0x7e

    const/4 v5, 0x0

    const-string/jumbo v3, "I2CProtocol"

    const-string/jumbo v4, "readDeviceInfoEventData()"

    invoke-static {v3, v4}, Lcom/samsung/android/lib/dexcontrol/fota/debug/SLog;->m(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/samsung/android/lib/dexcontrol/fota/chipapi/dexpad/pdic/sec/structure/I2CEventData;->initialize()V

    const/4 v3, 0x2

    new-array v0, v3, [B

    invoke-direct {p0, v6, v0}, Lcom/samsung/android/lib/dexcontrol/fota/chipapi/dexpad/pdic/sec/protocol/I2CProtocol;->i2cRead(I[B)I

    move-result v2

    if-ltz v2, :cond_0

    invoke-virtual {p1, v0}, Lcom/samsung/android/lib/dexcontrol/fota/chipapi/dexpad/pdic/sec/structure/I2CEventData;->updateI2CEventData([B)V

    invoke-virtual {p1}, Lcom/samsung/android/lib/dexcontrol/fota/chipapi/dexpad/pdic/sec/structure/I2CEventData;->getSize()I

    move-result v1

    if-gtz v1, :cond_1

    :goto_0
    return v5

    :cond_0
    const-string/jumbo v3, "I2CProtocol"

    const-string/jumbo v4, "Read event data head failed"

    invoke-static {v3, v4}, Lcom/samsung/android/lib/dexcontrol/fota/debug/SLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    :cond_1
    add-int/lit8 v3, v1, 0x2

    new-array v0, v3, [B

    invoke-direct {p0, v6, v0}, Lcom/samsung/android/lib/dexcontrol/fota/chipapi/dexpad/pdic/sec/protocol/I2CProtocol;->i2cRead(I[B)I

    move-result v2

    if-ltz v2, :cond_2

    invoke-virtual {p1, v0}, Lcom/samsung/android/lib/dexcontrol/fota/chipapi/dexpad/pdic/sec/structure/I2CEventData;->updateI2CEventData([B)V

    goto :goto_0

    :cond_2
    const-string/jumbo v3, "I2CProtocol"

    const-string/jumbo v4, "Read whole event data failed"

    invoke-static {v3, v4}, Lcom/samsung/android/lib/dexcontrol/fota/debug/SLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v2
.end method

.method private readInteruptRegister()I
    .locals 5

    const/4 v4, 0x0

    const-string/jumbo v2, "I2CProtocol"

    const-string/jumbo v3, "readInteruptRegister()"

    invoke-static {v2, v3}, Lcom/samsung/android/lib/dexcontrol/fota/debug/SLog;->m(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x1

    new-array v0, v2, [B

    const/4 v2, 0x6

    invoke-direct {p0, v2, v0}, Lcom/samsung/android/lib/dexcontrol/fota/chipapi/dexpad/pdic/sec/protocol/I2CProtocol;->i2cRead(I[B)I

    move-result v1

    if-ltz v1, :cond_0

    aget-byte v2, v0, v4

    and-int/lit16 v2, v2, 0xff

    return v2

    :cond_0
    const-string/jumbo v2, "I2CProtocol"

    const-string/jumbo v3, "Failed to read interrupt register data"

    invoke-static {v2, v3}, Lcom/samsung/android/lib/dexcontrol/fota/debug/SLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v1
.end method

.method private sendMsg(Lcom/samsung/android/lib/dexcontrol/fota/chipapi/dexpad/pdic/sec/structure/UsbBulkTransferParameter;)I
    .locals 6

    const-string/jumbo v1, "I2CProtocol"

    const-string/jumbo v2, "sendMsg()"

    invoke-static {v1, v2}, Lcom/samsung/android/lib/dexcontrol/fota/debug/SLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/lib/dexcontrol/fota/chipapi/dexpad/pdic/sec/protocol/I2CProtocol;->open()Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "I2CProtocol"

    const-string/jumbo v2, "sendData openfailed"

    invoke-static {v1, v2}, Lcom/samsung/android/lib/dexcontrol/fota/debug/SLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, -0x1

    return v1

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "bulkTransfer"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/samsung/android/lib/dexcontrol/fota/chipapi/dexpad/pdic/sec/structure/UsbBulkTransferParameter;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "I2CProtocol"

    invoke-static {v2, v1}, Lcom/samsung/android/lib/dexcontrol/fota/debug/SLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/lib/dexcontrol/fota/chipapi/dexpad/pdic/sec/protocol/I2CProtocol;->mUsbDeviceConnection:Landroid/hardware/usb/UsbDeviceConnection;

    invoke-virtual {p1}, Lcom/samsung/android/lib/dexcontrol/fota/chipapi/dexpad/pdic/sec/structure/UsbBulkTransferParameter;->getUsbEndpoint()Landroid/hardware/usb/UsbEndpoint;

    move-result-object v2

    invoke-virtual {p1}, Lcom/samsung/android/lib/dexcontrol/fota/chipapi/dexpad/pdic/sec/structure/UsbBulkTransferParameter;->getBuffer()[B

    move-result-object v3

    invoke-virtual {p1}, Lcom/samsung/android/lib/dexcontrol/fota/chipapi/dexpad/pdic/sec/structure/UsbBulkTransferParameter;->getLength()I

    move-result v4

    invoke-virtual {p1}, Lcom/samsung/android/lib/dexcontrol/fota/chipapi/dexpad/pdic/sec/structure/UsbBulkTransferParameter;->getTimeout()I

    move-result v5

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/hardware/usb/UsbDeviceConnection;->bulkTransfer(Landroid/hardware/usb/UsbEndpoint;[BII)I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "sendMsg result = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", length = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/samsung/android/lib/dexcontrol/fota/chipapi/dexpad/pdic/sec/structure/UsbBulkTransferParameter;->getLength()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "I2CProtocol"

    invoke-static {v2, v1}, Lcom/samsung/android/lib/dexcontrol/fota/debug/SLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/lib/dexcontrol/fota/chipapi/dexpad/pdic/sec/protocol/I2CProtocol;->close()Z

    return v0
.end method

.method private setI2cSlaveAddress(II)I
    .locals 4

    const/4 v3, 0x2

    const/4 v2, -0x1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setI2cSlaveAddress : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " , "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "I2CProtocol"

    invoke-static {v1, v0}, Lcom/samsung/android/lib/dexcontrol/fota/debug/SLog;->m(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0x8

    if-ge p1, v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Invalid I2C slave address = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "I2CProtocol"

    invoke-static {v1, v0}, Lcom/samsung/android/lib/dexcontrol/fota/debug/SLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    :cond_1
    if-gt p2, v3, :cond_0

    const/4 v0, 0x1

    if-ge p2, v0, :cond_3

    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Invalid I2C slave address lacation size = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "I2CProtocol"

    invoke-static {v1, v0}, Lcom/samsung/android/lib/dexcontrol/fota/debug/SLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    :cond_3
    if-gt p2, v3, :cond_2

    iput p2, p0, Lcom/samsung/android/lib/dexcontrol/fota/chipapi/dexpad/pdic/sec/protocol/I2CProtocol;->mI2cAddressLocationSize:I

    const/4 v0, 0x0

    return v0
.end method

.method private vendorRequestI2cGetStatus(ILcom/samsung/android/lib/dexcontrol/fota/chipapi/dexpad/pdic/sec/structure/I2CBusStatus;)I
    .locals 8

    const/4 v7, 0x3

    const/4 v6, 0x0

    const-string/jumbo v4, "I2CProtocol"

    const-string/jumbo v5, "vendorRequestI2cGetStatus() "

    invoke-static {v4, v5}, Lcom/samsung/android/lib/dexcontrol/fota/debug/SLog;->m(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x3

    new-array v0, v7, [B

    invoke-static {v0, v6}, Ljava/util/Arrays;->fill([BB)V

    new-instance v3, Lcom/samsung/android/lib/dexcontrol/fota/chipapi/dexpad/pdic/sec/structure/UsbControlTransferParameters;

    invoke-direct {v3}, Lcom/samsung/android/lib/dexcontrol/fota/chipapi/dexpad/pdic/sec/structure/UsbControlTransferParameters;-><init>()V

    const/16 v4, 0xc0

    invoke-virtual {v3, v4}, Lcom/samsung/android/lib/dexcontrol/fota/chipapi/dexpad/pdic/sec/structure/UsbControlTransferParameters;->setRequestType(I)V

    const/16 v4, 0xc8

    invoke-virtual {v3, v4}, Lcom/samsung/android/lib/dexcontrol/fota/chipapi/dexpad/pdic/sec/structure/UsbControlTransferParameters;->setRequest(I)V

    iget v4, p0, Lcom/samsung/android/lib/dexcontrol/fota/chipapi/dexpad/pdic/sec/protocol/I2CProtocol;->mScbIndex:I

    shl-int/lit8 v4, v4, 0xf

    and-int/lit8 v5, p1, 0x1

    or-int/2addr v4, v5

    invoke-virtual {v3, v4}, Lcom/samsung/android/lib/dexcontrol/fota/chipapi/dexpad/pdic/sec/structure/UsbControlTransferParameters;->setValue(I)V

    invoke-virtual {v3, v6}, Lcom/samsung/android/lib/dexcontrol/fota/chipapi/dexpad/pdic/sec/structure/UsbControlTransferParameters;->setIndex(I)V

    invoke-virtual {v3, v0}, Lcom/samsung/android/lib/dexcontrol/fota/chipapi/dexpad/pdic/sec/structure/UsbControlTransferParameters;->setBuffer([B)V

    invoke-virtual {v3, v7}, Lcom/samsung/android/lib/dexcontrol/fota/chipapi/dexpad/pdic/sec/structure/UsbControlTransferParameters;->setLength(I)V

    invoke-virtual {v3}, Lcom/samsung/android/lib/dexcontrol/fota/chipapi/dexpad/pdic/sec/structure/UsbControlTransferParameters;->setTimeout()V

    invoke-virtual {p0, v3}, Lcom/samsung/android/lib/dexcontrol/fota/chipapi/dexpad/pdic/sec/protocol/I2CProtocol;->sendData(Lcom/samsung/android/lib/dexcontrol/fota/chipapi/dexpad/pdic/sec/structure/UsbControlTransferParameters;)I

    move-result v1

    const/4 v4, -0x1

    if-gt v1, v4, :cond_0

    :goto_0
    return v1

    :cond_0
    invoke-virtual {p2, v0}, Lcom/samsung/android/lib/dexcontrol/fota/chipapi/dexpad/pdic/sec/structure/I2CBusStatus;->setI2cBusStatus([B)V

    goto :goto_0
.end method

.method private vendorRequestI2cRead(ZZI)I
    .locals 7

    const/4 v5, 0x0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "vendorRequestI2cRead : "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v6, " , "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v6, " , "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v6, "I2CProtocol"

    invoke-static {v6, v4}, Lcom/samsung/android/lib/dexcontrol/fota/debug/SLog;->m(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p1, :cond_0

    move v6, v5

    :goto_0
    if-nez p2, :cond_1

    move v4, v5

    :goto_1
    or-int v0, v6, v4

    iget v4, p0, Lcom/samsung/android/lib/dexcontrol/fota/chipapi/dexpad/pdic/sec/protocol/I2CProtocol;->mScbIndex:I

    shl-int/lit8 v4, v4, 0xf

    or-int/lit16 v4, v4, 0x800

    or-int v3, v4, v0

    const v4, 0xffff

    and-int v1, p3, v4

    new-instance v2, Lcom/samsung/android/lib/dexcontrol/fota/chipapi/dexpad/pdic/sec/structure/UsbControlTransferParameters;

    invoke-direct {v2}, Lcom/samsung/android/lib/dexcontrol/fota/chipapi/dexpad/pdic/sec/structure/UsbControlTransferParameters;-><init>()V

    const/16 v4, 0x40

    invoke-virtual {v2, v4}, Lcom/samsung/android/lib/dexcontrol/fota/chipapi/dexpad/pdic/sec/structure/UsbControlTransferParameters;->setRequestType(I)V

    const/16 v4, 0xc7

    invoke-virtual {v2, v4}, Lcom/samsung/android/lib/dexcontrol/fota/chipapi/dexpad/pdic/sec/structure/UsbControlTransferParameters;->setRequest(I)V

    invoke-virtual {v2, v3}, Lcom/samsung/android/lib/dexcontrol/fota/chipapi/dexpad/pdic/sec/structure/UsbControlTransferParameters;->setValue(I)V

    invoke-virtual {v2, v1}, Lcom/samsung/android/lib/dexcontrol/fota/chipapi/dexpad/pdic/sec/structure/UsbControlTransferParameters;->setIndex(I)V

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Lcom/samsung/android/lib/dexcontrol/fota/chipapi/dexpad/pdic/sec/structure/UsbControlTransferParameters;->setBuffer([B)V

    invoke-virtual {v2, v5}, Lcom/samsung/android/lib/dexcontrol/fota/chipapi/dexpad/pdic/sec/structure/UsbControlTransferParameters;->setLength(I)V

    invoke-virtual {v2}, Lcom/samsung/android/lib/dexcontrol/fota/chipapi/dexpad/pdic/sec/structure/UsbControlTransferParameters;->setTimeout()V

    invoke-virtual {p0, v2}, Lcom/samsung/android/lib/dexcontrol/fota/chipapi/dexpad/pdic/sec/protocol/I2CProtocol;->sendData(Lcom/samsung/android/lib/dexcontrol/fota/chipapi/dexpad/pdic/sec/structure/UsbControlTransferParameters;)I

    move-result v4

    return v4

    :cond_0
    const/4 v4, 0x1

    move v6, v4

    goto :goto_0

    :cond_1
    const/4 v4, 0x2

    goto :goto_1
.end method

.method private vendorRequestI2cReset(I)I
    .locals 6

    const/4 v5, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "vendorRequestI2cReset : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "I2CProtocol"

    invoke-static {v4, v3}, Lcom/samsung/android/lib/dexcontrol/fota/debug/SLog;->m(Ljava/lang/String;Ljava/lang/String;)V

    iget v3, p0, Lcom/samsung/android/lib/dexcontrol/fota/chipapi/dexpad/pdic/sec/protocol/I2CProtocol;->mScbIndex:I

    shl-int/lit8 v3, v3, 0xf

    and-int/lit8 v4, p1, 0x1

    or-int v2, v3, v4

    const/4 v0, 0x0

    new-instance v1, Lcom/samsung/android/lib/dexcontrol/fota/chipapi/dexpad/pdic/sec/structure/UsbControlTransferParameters;

    invoke-direct {v1}, Lcom/samsung/android/lib/dexcontrol/fota/chipapi/dexpad/pdic/sec/structure/UsbControlTransferParameters;-><init>()V

    const/16 v3, 0x40

    invoke-virtual {v1, v3}, Lcom/samsung/android/lib/dexcontrol/fota/chipapi/dexpad/pdic/sec/structure/UsbControlTransferParameters;->setRequestType(I)V

    const/16 v3, 0xc9

    invoke-virtual {v1, v3}, Lcom/samsung/android/lib/dexcontrol/fota/chipapi/dexpad/pdic/sec/structure/UsbControlTransferParameters;->setRequest(I)V

    invoke-virtual {v1, v2}, Lcom/samsung/android/lib/dexcontrol/fota/chipapi/dexpad/pdic/sec/structure/UsbControlTransferParameters;->setValue(I)V

    invoke-virtual {v1, v5}, Lcom/samsung/android/lib/dexcontrol/fota/chipapi/dexpad/pdic/sec/structure/UsbControlTransferParameters;->setIndex(I)V

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lcom/samsung/android/lib/dexcontrol/fota/chipapi/dexpad/pdic/sec/structure/UsbControlTransferParameters;->setBuffer([B)V

    invoke-virtual {v1, v5}, Lcom/samsung/android/lib/dexcontrol/fota/chipapi/dexpad/pdic/sec/structure/UsbControlTransferParameters;->setLength(I)V

    invoke-virtual {v1}, Lcom/samsung/android/lib/dexcontrol/fota/chipapi/dexpad/pdic/sec/structure/UsbControlTransferParameters;->setTimeout()V

    invoke-virtual {p0, v1}, Lcom/samsung/android/lib/dexcontrol/fota/chipapi/dexpad/pdic/sec/protocol/I2CProtocol;->sendData(Lcom/samsung/android/lib/dexcontrol/fota/chipapi/dexpad/pdic/sec/structure/UsbControlTransferParameters;)I

    move-result v3

    return v3
.end method

.method private vendorRequestI2cWrite(ZZI)I
    .locals 7

    const/4 v5, 0x0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "vendorRequestI2cWrite : "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v6, " , "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v6, " , "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v6, "I2CProtocol"

    invoke-static {v6, v4}, Lcom/samsung/android/lib/dexcontrol/fota/debug/SLog;->m(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p1, :cond_0

    move v6, v5

    :goto_0
    if-nez p2, :cond_1

    move v4, v5

    :goto_1
    or-int v0, v6, v4

    iget v4, p0, Lcom/samsung/android/lib/dexcontrol/fota/chipapi/dexpad/pdic/sec/protocol/I2CProtocol;->mScbIndex:I

    shl-int/lit8 v4, v4, 0xf

    or-int/lit16 v4, v4, 0x800

    or-int v3, v4, v0

    const v4, 0xffff

    and-int v1, p3, v4

    new-instance v2, Lcom/samsung/android/lib/dexcontrol/fota/chipapi/dexpad/pdic/sec/structure/UsbControlTransferParameters;

    invoke-direct {v2}, Lcom/samsung/android/lib/dexcontrol/fota/chipapi/dexpad/pdic/sec/structure/UsbControlTransferParameters;-><init>()V

    const/16 v4, 0x40

    invoke-virtual {v2, v4}, Lcom/samsung/android/lib/dexcontrol/fota/chipapi/dexpad/pdic/sec/structure/UsbControlTransferParameters;->setRequestType(I)V

    const/16 v4, 0xc6

    invoke-virtual {v2, v4}, Lcom/samsung/android/lib/dexcontrol/fota/chipapi/dexpad/pdic/sec/structure/UsbControlTransferParameters;->setRequest(I)V

    invoke-virtual {v2, v3}, Lcom/samsung/android/lib/dexcontrol/fota/chipapi/dexpad/pdic/sec/structure/UsbControlTransferParameters;->setValue(I)V

    invoke-virtual {v2, v1}, Lcom/samsung/android/lib/dexcontrol/fota/chipapi/dexpad/pdic/sec/structure/UsbControlTransferParameters;->setIndex(I)V

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Lcom/samsung/android/lib/dexcontrol/fota/chipapi/dexpad/pdic/sec/structure/UsbControlTransferParameters;->setBuffer([B)V

    invoke-virtual {v2, v5}, Lcom/samsung/android/lib/dexcontrol/fota/chipapi/dexpad/pdic/sec/structure/UsbControlTransferParameters;->setLength(I)V

    invoke-virtual {v2}, Lcom/samsung/android/lib/dexcontrol/fota/chipapi/dexpad/pdic/sec/structure/UsbControlTransferParameters;->setTimeout()V

    invoke-virtual {p0, v2}, Lcom/samsung/android/lib/dexcontrol/fota/chipapi/dexpad/pdic/sec/protocol/I2CProtocol;->sendData(Lcom/samsung/android/lib/dexcontrol/fota/chipapi/dexpad/pdic/sec/structure/UsbControlTransferParameters;)I

    move-result v4

    return v4

    :cond_0
    const/4 v4, 0x1

    move v6, v4

    goto :goto_0

    :cond_1
    const/4 v4, 0x2

    goto :goto_1
.end method

.method private vendorRequestReadData([B)I
    .locals 4

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "vendorRequestReadData : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1}, Lcom/samsung/android/lib/dexcontrol/fota/chipapi/dexpad/pdic/sec/util/Utils;->byteArrayToHexString([B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "I2CProtocol"

    invoke-static {v3, v2}, Lcom/samsung/android/lib/dexcontrol/fota/debug/SLog;->m(Ljava/lang/String;Ljava/lang/String;)V

    array-length v0, p1

    new-instance v1, Lcom/samsung/android/lib/dexcontrol/fota/chipapi/dexpad/pdic/sec/structure/UsbBulkTransferParameter;

    invoke-direct {v1}, Lcom/samsung/android/lib/dexcontrol/fota/chipapi/dexpad/pdic/sec/structure/UsbBulkTransferParameter;-><init>()V

    iget-object v2, p0, Lcom/samsung/android/lib/dexcontrol/fota/chipapi/dexpad/pdic/sec/protocol/I2CProtocol;->mEpBulkIn:Landroid/hardware/usb/UsbEndpoint;

    invoke-virtual {v1, v2}, Lcom/samsung/android/lib/dexcontrol/fota/chipapi/dexpad/pdic/sec/structure/UsbBulkTransferParameter;->setUsbEndpoint(Landroid/hardware/usb/UsbEndpoint;)V

    invoke-virtual {v1, p1}, Lcom/samsung/android/lib/dexcontrol/fota/chipapi/dexpad/pdic/sec/structure/UsbBulkTransferParameter;->setBuffer([B)V

    invoke-virtual {v1, v0}, Lcom/samsung/android/lib/dexcontrol/fota/chipapi/dexpad/pdic/sec/structure/UsbBulkTransferParameter;->setLength(I)V

    invoke-virtual {v1}, Lcom/samsung/android/lib/dexcontrol/fota/chipapi/dexpad/pdic/sec/structure/UsbBulkTransferParameter;->setTimeout()V

    invoke-direct {p0, v1}, Lcom/samsung/android/lib/dexcontrol/fota/chipapi/dexpad/pdic/sec/protocol/I2CProtocol;->sendMsg(Lcom/samsung/android/lib/dexcontrol/fota/chipapi/dexpad/pdic/sec/structure/UsbBulkTransferParameter;)I

    move-result v2

    return v2
.end method

.method private vendorRequestWriteData([B)I
    .locals 8

    const/4 v7, 0x0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "vendorRequestWriteData : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {p1}, Lcom/samsung/android/lib/dexcontrol/fota/chipapi/dexpad/pdic/sec/util/Utils;->byteArrayToHexString([B)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "I2CProtocol"

    invoke-static {v5, v4}, Lcom/samsung/android/lib/dexcontrol/fota/debug/SLog;->m(Ljava/lang/String;Ljava/lang/String;)V

    array-length v0, p1

    new-instance v3, Lcom/samsung/android/lib/dexcontrol/fota/chipapi/dexpad/pdic/sec/structure/UsbBulkTransferParameter;

    invoke-direct {v3}, Lcom/samsung/android/lib/dexcontrol/fota/chipapi/dexpad/pdic/sec/structure/UsbBulkTransferParameter;-><init>()V

    iget-object v4, p0, Lcom/samsung/android/lib/dexcontrol/fota/chipapi/dexpad/pdic/sec/protocol/I2CProtocol;->mEpBulkOut:Landroid/hardware/usb/UsbEndpoint;

    invoke-virtual {v3, v4}, Lcom/samsung/android/lib/dexcontrol/fota/chipapi/dexpad/pdic/sec/structure/UsbBulkTransferParameter;->setUsbEndpoint(Landroid/hardware/usb/UsbEndpoint;)V

    invoke-virtual {v3, p1}, Lcom/samsung/android/lib/dexcontrol/fota/chipapi/dexpad/pdic/sec/structure/UsbBulkTransferParameter;->setBuffer([B)V

    invoke-virtual {v3, v0}, Lcom/samsung/android/lib/dexcontrol/fota/chipapi/dexpad/pdic/sec/structure/UsbBulkTransferParameter;->setLength(I)V

    invoke-virtual {v3}, Lcom/samsung/android/lib/dexcontrol/fota/chipapi/dexpad/pdic/sec/structure/UsbBulkTransferParameter;->setTimeout()V

    invoke-direct {p0, v3}, Lcom/samsung/android/lib/dexcontrol/fota/chipapi/dexpad/pdic/sec/protocol/I2CProtocol;->sendMsg(Lcom/samsung/android/lib/dexcontrol/fota/chipapi/dexpad/pdic/sec/structure/UsbBulkTransferParameter;)I

    move-result v2

    if-ne v2, v0, :cond_1

    :cond_0
    return v2

    :cond_1
    if-ltz v2, :cond_0

    invoke-static {}, Lcom/samsung/android/lib/dexcontrol/fota/debug/DexFotaLibDataObserver;->getInstance()Lcom/samsung/android/lib/dexcontrol/fota/debug/DexFotaLibDataObserver;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "vendorRequestWriteData data size = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", result = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/samsung/android/lib/dexcontrol/fota/debug/DexFotaLibDataObserver;->setUpdateMessage(Ljava/lang/String;)V

    sub-int v4, v0, v2

    new-array v1, v4, [B

    invoke-static {v1, v7}, Ljava/util/Arrays;->fill([BB)V

    sub-int v4, v0, v2

    invoke-static {p1, v2, v1, v7, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-virtual {v3, v1}, Lcom/samsung/android/lib/dexcontrol/fota/chipapi/dexpad/pdic/sec/structure/UsbBulkTransferParameter;->setBuffer([B)V

    array-length v4, v1

    invoke-virtual {v3, v4}, Lcom/samsung/android/lib/dexcontrol/fota/chipapi/dexpad/pdic/sec/structure/UsbBulkTransferParameter;->setLength(I)V

    invoke-direct {p0, v3}, Lcom/samsung/android/lib/dexcontrol/fota/chipapi/dexpad/pdic/sec/protocol/I2CProtocol;->sendMsg(Lcom/samsung/android/lib/dexcontrol/fota/chipapi/dexpad/pdic/sec/structure/UsbBulkTransferParameter;)I

    move-result v4

    return v4
.end method


# virtual methods
.method public attachDevice(Landroid/hardware/usb/UsbDeviceConnection;Landroid/hardware/usb/UsbDevice;)V
    .locals 6

    const/16 v5, 0x80

    const/4 v4, 0x2

    invoke-super {p0, p1, p2}, Lcom/samsung/android/lib/dexcontrol/fota/chipapi/dexpad/pdic/sec/protocol/PdicProtocolBase;->attachDevice(Landroid/hardware/usb/UsbDeviceConnection;Landroid/hardware/usb/UsbDevice;)V

    iget-object v2, p0, Lcom/samsung/android/lib/dexcontrol/fota/chipapi/dexpad/pdic/sec/protocol/I2CProtocol;->mUsbInterface:Landroid/hardware/usb/UsbInterface;

    invoke-direct {p0, p2, v2}, Lcom/samsung/android/lib/dexcontrol/fota/chipapi/dexpad/pdic/sec/protocol/I2CProtocol;->getScbIndex(Landroid/hardware/usb/UsbDevice;Landroid/hardware/usb/UsbInterface;)I

    move-result v2

    iput v2, p0, Lcom/samsung/android/lib/dexcontrol/fota/chipapi/dexpad/pdic/sec/protocol/I2CProtocol;->mScbIndex:I

    const/4 v1, 0x0

    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/lib/dexcontrol/fota/chipapi/dexpad/pdic/sec/protocol/I2CProtocol;->mUsbInterface:Landroid/hardware/usb/UsbInterface;

    invoke-virtual {v2}, Landroid/hardware/usb/UsbInterface;->getEndpointCount()I

    move-result v2

    if-lt v1, v2, :cond_0

    :goto_1
    return-void

    :cond_0
    iget-object v2, p0, Lcom/samsung/android/lib/dexcontrol/fota/chipapi/dexpad/pdic/sec/protocol/I2CProtocol;->mUsbInterface:Landroid/hardware/usb/UsbInterface;

    invoke-virtual {v2, v1}, Landroid/hardware/usb/UsbInterface;->getEndpoint(I)Landroid/hardware/usb/UsbEndpoint;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/usb/UsbEndpoint;->getType()I

    move-result v2

    if-eq v2, v4, :cond_4

    :cond_1
    invoke-virtual {v0}, Landroid/hardware/usb/UsbEndpoint;->getType()I

    move-result v2

    if-eq v2, v4, :cond_5

    :cond_2
    invoke-virtual {v0}, Landroid/hardware/usb/UsbEndpoint;->getType()I

    move-result v2

    const/4 v3, 0x3

    if-eq v2, v3, :cond_6

    :cond_3
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    invoke-virtual {v0}, Landroid/hardware/usb/UsbEndpoint;->getDirection()I

    move-result v2

    if-ne v2, v5, :cond_1

    iput-object v0, p0, Lcom/samsung/android/lib/dexcontrol/fota/chipapi/dexpad/pdic/sec/protocol/I2CProtocol;->mEpBulkIn:Landroid/hardware/usb/UsbEndpoint;

    goto :goto_2

    :catch_0
    move-exception v2

    goto :goto_1

    :cond_5
    invoke-virtual {v0}, Landroid/hardware/usb/UsbEndpoint;->getDirection()I

    move-result v2

    if-nez v2, :cond_2

    iput-object v0, p0, Lcom/samsung/android/lib/dexcontrol/fota/chipapi/dexpad/pdic/sec/protocol/I2CProtocol;->mEpBulkOut:Landroid/hardware/usb/UsbEndpoint;

    goto :goto_2

    :cond_6
    invoke-virtual {v0}, Landroid/hardware/usb/UsbEndpoint;->getDirection()I

    move-result v2

    if-ne v2, v5, :cond_3

    iput-object v0, p0, Lcom/samsung/android/lib/dexcontrol/fota/chipapi/dexpad/pdic/sec/protocol/I2CProtocol;->mEpInterruptIn:Landroid/hardware/usb/UsbEndpoint;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2
.end method

.method public clearAllPendingEvents()I
    .locals 3

    const-string/jumbo v1, "I2CProtocol"

    const-string/jumbo v2, "clearAllPendingEvents()"

    invoke-static {v1, v2}, Lcom/samsung/android/lib/dexcontrol/fota/debug/SLog;->m(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/lib/dexcontrol/fota/chipapi/dexpad/pdic/sec/protocol/I2CProtocol;->readInteruptRegister()I

    move-result v0

    if-ltz v0, :cond_1

    and-int/lit8 v1, v0, 0x1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_2

    return v0

    :cond_1
    return v0

    :cond_2
    invoke-direct {p0}, Lcom/samsung/android/lib/dexcontrol/fota/chipapi/dexpad/pdic/sec/protocol/I2CProtocol;->clearInteruptRegister()I

    move-result v0

    if-gez v0, :cond_0

    return v0
.end method

.method public clearMetaData(Lcom/samsung/android/lib/dexcontrol/fota/chipapi/dexpad/pdic/sec/CyacdImage;I)I
    .locals 7

    const/4 v6, 0x0

    const-string/jumbo v4, "I2CProtocol"

    const-string/jumbo v5, "clearMetadata()"

    invoke-static {v4, v5}, Lcom/samsung/android/lib/dexcontrol/fota/debug/SLog;->m(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/samsung/android/lib/dexcontrol/fota/chipapi/dexpad/pdic/sec/CyacdImage;->recordCount()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {p1, v4}, Lcom/samsung/android/lib/dexcontrol/fota/chipapi/dexpad/pdic/sec/CyacdImage;->getImageRecord(I)Lcom/samsung/android/lib/dexcontrol/fota/chipapi/dexpad/pdic/sec/CyacdImage$CyacdRecord;

    move-result-object v2

    iget v3, v2, Lcom/samsung/android/lib/dexcontrol/fota/chipapi/dexpad/pdic/sec/CyacdImage$CyacdRecord;->rowNum:I

    new-array v0, p2, [B

    iget-object v4, v2, Lcom/samsung/android/lib/dexcontrol/fota/chipapi/dexpad/pdic/sec/CyacdImage$CyacdRecord;->data:[B

    invoke-static {v4, v6, v0, v6, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/16 v1, 0x49

    :goto_0
    const/16 v4, 0x4d

    if-lt v1, v4, :cond_0

    invoke-virtual {p0, v3, v0}, Lcom/samsung/android/lib/dexcontrol/fota/chipapi/dexpad/pdic/sec/protocol/I2CProtocol;->writeFlashRowData(I[B)I

    move-result v4

    return v4

    :cond_0
    aput-byte v6, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public disableAllPorts()I
    .locals 10

    const/4 v9, 0x0

    const-string/jumbo v7, "I2CProtocol"

    const-string/jumbo v8, "disableAllPorts()"

    invoke-static {v7, v8}, Lcom/samsung/android/lib/dexcontrol/fota/debug/SLog;->m(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v7, 0x1

    new-array v0, v7, [B

    new-instance v2, Lcom/samsung/android/lib/dexcontrol/fota/chipapi/dexpad/pdic/sec/I2CDeviceInfo;

    invoke-direct {v2}, Lcom/samsung/android/lib/dexcontrol/fota/chipapi/dexpad/pdic/sec/I2CDeviceInfo;-><init>()V

    invoke-virtual {p0, v2}, Lcom/samsung/android/lib/dexcontrol/fota/chipapi/dexpad/pdic/sec/protocol/I2CProtocol;->readDeviceMode(Lcom/samsung/android/lib/dexcontrol/fota/chipapi/dexpad/pdic/sec/I2CDeviceInfo;)I

    move-result v5

    if-ltz v5, :cond_1

    const/16 v4, 0x28

    const/16 v7, 0x11

    aput-byte v7, v0, v9

    const/16 v7, 0x28

    invoke-direct {p0, v7, v0}, Lcom/samsung/android/lib/dexcontrol/fota/chipapi/dexpad/pdic/sec/protocol/I2CProtocol;->i2cWrite(I[B)I

    move-result v5

    if-ltz v5, :cond_2

    :goto_0
    const/16 v6, 0x3e8

    const/16 v3, 0xa

    new-instance v1, Lcom/samsung/android/lib/dexcontrol/fota/chipapi/dexpad/pdic/sec/structure/I2CEventData;

    invoke-direct {v1}, Lcom/samsung/android/lib/dexcontrol/fota/chipapi/dexpad/pdic/sec/structure/I2CEventData;-><init>()V

    :cond_0
    const/16 v7, 0xa

    invoke-direct {p0, v7, v6, v1}, Lcom/samsung/android/lib/dexcontrol/fota/chipapi/dexpad/pdic/sec/protocol/I2CProtocol;->pollingEventData(IILcom/samsung/android/lib/dexcontrol/fota/chipapi/dexpad/pdic/sec/structure/I2CEventData;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v7

    sub-int/2addr v6, v7

    if-ltz v5, :cond_3

    invoke-virtual {v1}, Lcom/samsung/android/lib/dexcontrol/fota/chipapi/dexpad/pdic/sec/structure/I2CEventData;->getCode()I

    move-result v7

    packed-switch v7, :pswitch_data_0

    :pswitch_0
    if-gtz v6, :cond_0

    return v5

    :cond_1
    const-string/jumbo v7, "I2CProtocol"

    const-string/jumbo v8, "Read device mode failed()"

    invoke-static {v7, v8}, Lcom/samsung/android/lib/dexcontrol/fota/debug/SLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v5

    :cond_2
    const-string/jumbo v7, "I2CProtocol"

    const-string/jumbo v8, "Write to diable all prot cmd failed"

    invoke-static {v7, v8}, Lcom/samsung/android/lib/dexcontrol/fota/debug/SLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    const-string/jumbo v7, "I2CProtocol"

    const-string/jumbo v8, "Failed to polling event data"

    invoke-static {v7, v8}, Lcom/samsung/android/lib/dexcontrol/fota/debug/SLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v5

    :pswitch_1
    return v9

    :pswitch_2
    const/4 v7, -0x1

    return v7

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method public enterFlashingMode()I
    .locals 9

    const/4 v8, 0x1

    const/4 v7, 0x0

    const-string/jumbo v5, "I2CProtocol"

    const-string/jumbo v6, "enterFlashingMode()"

    invoke-static {v5, v6}, Lcom/samsung/android/lib/dexcontrol/fota/debug/SLog;->m(Ljava/lang/String;Ljava/lang/String;)V

    new-array v0, v8, [B

    const/16 v5, 0x50

    aput-byte v5, v0, v7

    const/16 v5, 0xa

    invoke-direct {p0, v5, v0}, Lcom/samsung/android/lib/dexcontrol/fota/chipapi/dexpad/pdic/sec/protocol/I2CProtocol;->i2cWrite(I[B)I

    move-result v3

    if-ltz v3, :cond_1

    const/16 v4, 0x3e8

    const/4 v2, 0x5

    new-instance v1, Lcom/samsung/android/lib/dexcontrol/fota/chipapi/dexpad/pdic/sec/structure/I2CEventData;

    invoke-direct {v1}, Lcom/samsung/android/lib/dexcontrol/fota/chipapi/dexpad/pdic/sec/structure/I2CEventData;-><init>()V

    :cond_0
    const/4 v5, 0x5

    invoke-direct {p0, v5, v4, v1}, Lcom/samsung/android/lib/dexcontrol/fota/chipapi/dexpad/pdic/sec/protocol/I2CProtocol;->pollingEventData(IILcom/samsung/android/lib/dexcontrol/fota/chipapi/dexpad/pdic/sec/structure/I2CEventData;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v5

    sub-int/2addr v4, v5

    if-ltz v3, :cond_2

    invoke-virtual {v1}, Lcom/samsung/android/lib/dexcontrol/fota/chipapi/dexpad/pdic/sec/structure/I2CEventData;->getCode()I

    move-result v5

    packed-switch v5, :pswitch_data_0

    :pswitch_0
    new-array v5, v8, [Ljava/lang/Object;

    invoke-virtual {v1}, Lcom/samsung/android/lib/dexcontrol/fota/chipapi/dexpad/pdic/sec/structure/I2CEventData;->getCode()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    const-string/jumbo v6, "Unwanted event code = 0x&02x"

    invoke-static {v6, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "I2CProtocol"

    invoke-static {v6, v5}, Lcom/samsung/android/lib/dexcontrol/fota/debug/SLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    if-gtz v4, :cond_0

    return v3

    :cond_1
    const-string/jumbo v5, "I2CProtocol"

    const-string/jumbo v6, "Enter flashing mode failed"

    invoke-static {v5, v6}, Lcom/samsung/android/lib/dexcontrol/fota/debug/SLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v3

    :cond_2
    const-string/jumbo v5, "I2CProtocol"

    const-string/jumbo v6, "Polling Event data failed"

    invoke-static {v5, v6}, Lcom/samsung/android/lib/dexcontrol/fota/debug/SLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v3

    :pswitch_1
    const-string/jumbo v5, "I2CProtocol"

    const-string/jumbo v6, "Enter flashing mode success"

    invoke-static {v5, v6}, Lcom/samsung/android/lib/dexcontrol/fota/debug/SLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v7

    :pswitch_2
    const-string/jumbo v5, "I2CProtocol"

    const-string/jumbo v6, "Enter flashing mode failed"

    invoke-static {v5, v6}, Lcom/samsung/android/lib/dexcontrol/fota/debug/SLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v5, -0x2

    return v5

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method public getFwInfo(Lcom/samsung/android/lib/dexcontrol/fota/chipapi/dexpad/pdic/sec/structure/FirmwareInfo;)I
    .locals 2

    const-string/jumbo v0, "I2CProtocol"

    const-string/jumbo v1, "readFirmwareInfo()"

    invoke-static {v0, v1}, Lcom/samsung/android/lib/dexcontrol/fota/debug/SLog;->m(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    return v0
.end method

.method public i2cStatusReset()I
    .locals 4

    const/4 v3, 0x0

    const-string/jumbo v1, "I2CProtocol"

    const-string/jumbo v2, "i2cStatusReset()"

    invoke-static {v1, v2}, Lcom/samsung/android/lib/dexcontrol/fota/debug/SLog;->m(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v3}, Lcom/samsung/android/lib/dexcontrol/fota/chipapi/dexpad/pdic/sec/protocol/I2CProtocol;->vendorRequestI2cReset(I)I

    move-result v0

    if-ltz v0, :cond_0

    :goto_0
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/samsung/android/lib/dexcontrol/fota/chipapi/dexpad/pdic/sec/protocol/I2CProtocol;->vendorRequestI2cReset(I)I

    move-result v0

    if-ltz v0, :cond_1

    :goto_1
    return v0

    :cond_0
    const-string/jumbo v1, "I2CProtocol"

    const-string/jumbo v2, "Reset I2C TX status failed"

    invoke-static {v1, v2}, Lcom/samsung/android/lib/dexcontrol/fota/debug/SLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string/jumbo v1, "I2CProtocol"

    const-string/jumbo v2, "Reset I2C RX status failed"

    invoke-static {v1, v2}, Lcom/samsung/android/lib/dexcontrol/fota/debug/SLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public jumpToBootloader(Lcom/samsung/android/lib/dexcontrol/fota/chipapi/dexpad/pdic/sec/I2CDeviceInfo;)I
    .locals 11

    const/4 v10, 0x1

    const/4 v9, -0x1

    const/4 v8, 0x0

    const-string/jumbo v6, "I2CProtocol"

    const-string/jumbo v7, "jumpToBootloader()"

    invoke-static {v6, v7}, Lcom/samsung/android/lib/dexcontrol/fota/debug/SLog;->m(Ljava/lang/String;Ljava/lang/String;)V

    new-array v0, v10, [B

    const/16 v6, 0x4a

    aput-byte v6, v0, v8

    const/4 v6, 0x7

    invoke-direct {p0, v6, v0}, Lcom/samsung/android/lib/dexcontrol/fota/chipapi/dexpad/pdic/sec/protocol/I2CProtocol;->i2cWrite(I[B)I

    move-result v4

    if-ltz v4, :cond_4

    const-string/jumbo v6, "I2CProtocol"

    const-string/jumbo v7, "Jump to bootloader cmd success"

    invoke-static {v6, v7}, Lcom/samsung/android/lib/dexcontrol/fota/debug/SLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v5, 0x7d0

    const/16 v3, 0xc8

    const-wide/16 v6, 0xc8

    :try_start_0
    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/lib/dexcontrol/fota/chipapi/dexpad/pdic/sec/protocol/I2CProtocol;->i2cStatusReset()I

    new-instance v2, Lcom/samsung/android/lib/dexcontrol/fota/chipapi/dexpad/pdic/sec/structure/I2CEventData;

    invoke-direct {v2}, Lcom/samsung/android/lib/dexcontrol/fota/chipapi/dexpad/pdic/sec/structure/I2CEventData;-><init>()V

    const/16 v6, 0xc8

    invoke-direct {p0, v6, v5, v2}, Lcom/samsung/android/lib/dexcontrol/fota/chipapi/dexpad/pdic/sec/protocol/I2CProtocol;->pollingEventData(IILcom/samsung/android/lib/dexcontrol/fota/chipapi/dexpad/pdic/sec/structure/I2CEventData;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v6

    sub-int/2addr v5, v6

    if-ltz v4, :cond_5

    invoke-virtual {v2}, Lcom/samsung/android/lib/dexcontrol/fota/chipapi/dexpad/pdic/sec/structure/I2CEventData;->getCode()I

    move-result v6

    packed-switch v6, :pswitch_data_0

    new-array v6, v10, [Ljava/lang/Object;

    invoke-virtual {v2}, Lcom/samsung/android/lib/dexcontrol/fota/chipapi/dexpad/pdic/sec/structure/I2CEventData;->getCode()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    const-string/jumbo v7, "Unwanted event code = 0x%02x"

    invoke-static {v7, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "I2CProtocol"

    invoke-static {v7, v6}, Lcom/samsung/android/lib/dexcontrol/fota/debug/SLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    if-gtz v5, :cond_0

    if-ltz v4, :cond_6

    const/16 v5, 0x7d0

    :cond_1
    const-wide/16 v6, 0xc8

    :try_start_1
    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    add-int/lit16 v5, v5, -0xc8

    invoke-virtual {p0, p1}, Lcom/samsung/android/lib/dexcontrol/fota/chipapi/dexpad/pdic/sec/protocol/I2CProtocol;->readDeviceMode(Lcom/samsung/android/lib/dexcontrol/fota/chipapi/dexpad/pdic/sec/I2CDeviceInfo;)I

    move-result v4

    if-ltz v4, :cond_2

    invoke-virtual {p1}, Lcom/samsung/android/lib/dexcontrol/fota/chipapi/dexpad/pdic/sec/I2CDeviceInfo;->getI2cDeviceMode()I

    move-result v6

    if-eqz v6, :cond_3

    const/4 v4, -0x1

    :cond_2
    if-gtz v5, :cond_1

    :cond_3
    return v4

    :cond_4
    const-string/jumbo v6, "I2CProtocol"

    const-string/jumbo v7, "Jump to bootloader failed"

    invoke-static {v6, v7}, Lcom/samsung/android/lib/dexcontrol/fota/debug/SLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v4

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    return v9

    :cond_5
    const-string/jumbo v6, "I2CProtocol"

    const-string/jumbo v7, "Polling event data fail"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :pswitch_0
    const-string/jumbo v6, "I2CProtocol"

    const-string/jumbo v7, "I2C Reset successed"

    invoke-static {v6, v7}, Lcom/samsung/android/lib/dexcontrol/fota/debug/SLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/lib/dexcontrol/fota/chipapi/dexpad/pdic/sec/protocol/I2CProtocol;->clearAllPendingEvents()I

    return v8

    :cond_6
    const-string/jumbo v6, "I2CProtocol"

    const-string/jumbo v7, "Jump to boot event failed"

    invoke-static {v6, v7}, Lcom/samsung/android/lib/dexcontrol/fota/debug/SLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v4

    :catch_1
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    return v9

    :pswitch_data_0
    .packed-switch 0x80
        :pswitch_0
    .end packed-switch
.end method

.method public readDeviceMode(Lcom/samsung/android/lib/dexcontrol/fota/chipapi/dexpad/pdic/sec/I2CDeviceInfo;)I
    .locals 5

    const/4 v4, 0x0

    const-string/jumbo v2, "I2CProtocol"

    const-string/jumbo v3, "readDeviceMode()"

    invoke-static {v2, v3}, Lcom/samsung/android/lib/dexcontrol/fota/debug/SLog;->m(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x1

    new-array v0, v2, [B

    invoke-direct {p0, v4, v0}, Lcom/samsung/android/lib/dexcontrol/fota/chipapi/dexpad/pdic/sec/protocol/I2CProtocol;->i2cRead(I[B)I

    move-result v1

    if-ltz v1, :cond_0

    const/4 v2, -0x1

    if-gt v1, v2, :cond_1

    :goto_0
    return v1

    :cond_0
    const-string/jumbo v2, "I2CProtocol"

    const-string/jumbo v3, "Read device mode failed"

    invoke-static {v2, v3}, Lcom/samsung/android/lib/dexcontrol/fota/debug/SLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_1
    aget-byte v2, v0, v4

    invoke-virtual {p1, v2}, Lcom/samsung/android/lib/dexcontrol/fota/chipapi/dexpad/pdic/sec/I2CDeviceInfo;->updateI2CDeviceInfo(B)V

    goto :goto_0
.end method

.method public reset()I
    .locals 10

    const/4 v9, 0x1

    const/4 v8, 0x0

    const-string/jumbo v6, "I2CProtocol"

    const-string/jumbo v7, "reset()"

    invoke-static {v6, v7}, Lcom/samsung/android/lib/dexcontrol/fota/debug/SLog;->m(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v6, 0x2

    new-array v0, v6, [B

    const/16 v6, 0x52

    aput-byte v6, v0, v8

    aput-byte v9, v0, v9

    const/16 v6, 0x8

    invoke-direct {p0, v6, v0}, Lcom/samsung/android/lib/dexcontrol/fota/chipapi/dexpad/pdic/sec/protocol/I2CProtocol;->i2cWrite(I[B)I

    move-result v4

    if-ltz v4, :cond_1

    const-wide/16 v6, 0xc8

    :try_start_0
    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    const/16 v5, 0x7d0

    const/16 v3, 0xc8

    new-instance v2, Lcom/samsung/android/lib/dexcontrol/fota/chipapi/dexpad/pdic/sec/structure/I2CEventData;

    invoke-direct {v2}, Lcom/samsung/android/lib/dexcontrol/fota/chipapi/dexpad/pdic/sec/structure/I2CEventData;-><init>()V

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/lib/dexcontrol/fota/chipapi/dexpad/pdic/sec/protocol/I2CProtocol;->i2cStatusReset()I

    const/16 v6, 0xc8

    invoke-direct {p0, v6, v5, v2}, Lcom/samsung/android/lib/dexcontrol/fota/chipapi/dexpad/pdic/sec/protocol/I2CProtocol;->pollingEventData(IILcom/samsung/android/lib/dexcontrol/fota/chipapi/dexpad/pdic/sec/structure/I2CEventData;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v6

    sub-int/2addr v5, v6

    if-ltz v4, :cond_2

    invoke-virtual {v2}, Lcom/samsung/android/lib/dexcontrol/fota/chipapi/dexpad/pdic/sec/structure/I2CEventData;->getCode()I

    move-result v6

    packed-switch v6, :pswitch_data_0

    new-array v6, v9, [Ljava/lang/Object;

    invoke-virtual {v2}, Lcom/samsung/android/lib/dexcontrol/fota/chipapi/dexpad/pdic/sec/structure/I2CEventData;->getCode()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    const-string/jumbo v7, "Unwanted event code = 0x%02x"

    invoke-static {v7, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "I2CProtocol"

    invoke-static {v7, v6}, Lcom/samsung/android/lib/dexcontrol/fota/debug/SLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    if-gtz v5, :cond_0

    return v4

    :cond_1
    const-string/jumbo v6, "I2CProtocol"

    const-string/jumbo v7, "Reset failed"

    invoke-static {v6, v7}, Lcom/samsung/android/lib/dexcontrol/fota/debug/SLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v4

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    const/4 v6, -0x1

    return v6

    :cond_2
    const-string/jumbo v6, "I2CProtocol"

    const-string/jumbo v7, "Polling event data fail"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :pswitch_0
    const-string/jumbo v6, "I2CProtocol"

    const-string/jumbo v7, "Reset successed"

    invoke-static {v6, v7}, Lcom/samsung/android/lib/dexcontrol/fota/debug/SLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/lib/dexcontrol/fota/chipapi/dexpad/pdic/sec/protocol/I2CProtocol;->clearAllPendingEvents()I

    return v8

    :pswitch_data_0
    .packed-switch 0x80
        :pswitch_0
    .end packed-switch
.end method

.method setUsbInterface(Landroid/hardware/usb/UsbDevice;)Landroid/hardware/usb/UsbInterface;
    .locals 13

    const/16 v12, 0x80

    const/4 v11, 0x2

    const/4 v10, 0x3

    const-string/jumbo v8, "I2CProtocol"

    const-string/jumbo v9, "setUsbInterface()"

    invoke-static {v8, v9}, Lcom/samsung/android/lib/dexcontrol/fota/debug/SLog;->m(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v5, 0x0

    :goto_0
    invoke-virtual {p1}, Landroid/hardware/usb/UsbDevice;->getInterfaceCount()I

    move-result v8

    if-lt v5, v8, :cond_0

    const-string/jumbo v8, "I2CProtocol"

    const-string/jumbo v9, "no USB-I2C bridge interface found"

    invoke-static {v8, v9}, Lcom/samsung/android/lib/dexcontrol/fota/debug/SLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v8, 0x0

    return-object v8

    :cond_0
    invoke-virtual {p1, v5}, Landroid/hardware/usb/UsbDevice;->getInterface(I)Landroid/hardware/usb/UsbInterface;

    move-result-object v6

    const/16 v0, 0xff

    const/4 v2, 0x3

    const/4 v1, 0x0

    invoke-virtual {v6}, Landroid/hardware/usb/UsbInterface;->getEndpointCount()I

    move-result v8

    if-ge v8, v10, :cond_2

    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {v6}, Landroid/hardware/usb/UsbInterface;->getInterfaceClass()I

    move-result v8

    const/16 v9, 0xff

    if-ne v8, v9, :cond_1

    invoke-virtual {v6}, Landroid/hardware/usb/UsbInterface;->getInterfaceSubclass()I

    move-result v8

    if-ne v8, v10, :cond_1

    invoke-virtual {v6}, Landroid/hardware/usb/UsbInterface;->getInterfaceProtocol()I

    move-result v8

    if-nez v8, :cond_1

    const/4 v4, 0x0

    const/4 v7, 0x0

    :goto_1
    invoke-virtual {v6}, Landroid/hardware/usb/UsbInterface;->getEndpointCount()I

    move-result v8

    if-lt v7, v8, :cond_3

    if-ne v4, v10, :cond_1

    const-string/jumbo v8, "I2CProtocol"

    const-string/jumbo v9, "USB-I2C bridge interface found"

    invoke-static {v8, v9}, Lcom/samsung/android/lib/dexcontrol/fota/debug/SLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object v6

    :cond_3
    invoke-virtual {v6, v7}, Landroid/hardware/usb/UsbInterface;->getEndpoint(I)Landroid/hardware/usb/UsbEndpoint;

    move-result-object v3

    invoke-virtual {v3}, Landroid/hardware/usb/UsbEndpoint;->getType()I

    move-result v8

    if-eq v8, v11, :cond_7

    :cond_4
    invoke-virtual {v3}, Landroid/hardware/usb/UsbEndpoint;->getType()I

    move-result v8

    if-eq v8, v11, :cond_8

    :cond_5
    invoke-virtual {v3}, Landroid/hardware/usb/UsbEndpoint;->getType()I

    move-result v8

    if-eq v8, v10, :cond_9

    :cond_6
    :goto_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_7
    invoke-virtual {v3}, Landroid/hardware/usb/UsbEndpoint;->getDirection()I

    move-result v8

    if-ne v8, v12, :cond_4

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_8
    invoke-virtual {v3}, Landroid/hardware/usb/UsbEndpoint;->getDirection()I

    move-result v8

    if-nez v8, :cond_5

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_9
    invoke-virtual {v3}, Landroid/hardware/usb/UsbEndpoint;->getDirection()I

    move-result v8

    if-ne v8, v12, :cond_6

    add-int/lit8 v4, v4, 0x1

    goto :goto_2
.end method

.method public validateFirmware(Lcom/samsung/android/lib/dexcontrol/fota/chipapi/dexpad/pdic/sec/CyacdImage;)I
    .locals 11

    const/4 v10, -0x1

    const/4 v9, 0x0

    const-string/jumbo v7, "I2CProtocol"

    const-string/jumbo v8, "validateFirmware()"

    invoke-static {v7, v8}, Lcom/samsung/android/lib/dexcontrol/fota/debug/SLog;->m(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/samsung/android/lib/dexcontrol/fota/chipapi/dexpad/pdic/sec/CyacdImage;->metaDataRowNum()I

    move-result v7

    and-int/lit16 v4, v7, 0xff

    packed-switch v4, :pswitch_data_0

    return v10

    :pswitch_0
    const/4 v1, 0x1

    :goto_0
    const/4 v7, 0x1

    new-array v0, v7, [B

    int-to-byte v7, v1

    int-to-byte v7, v7

    aput-byte v7, v0, v9

    const/16 v7, 0xb

    invoke-direct {p0, v7, v0}, Lcom/samsung/android/lib/dexcontrol/fota/chipapi/dexpad/pdic/sec/protocol/I2CProtocol;->i2cWrite(I[B)I

    move-result v5

    if-ltz v5, :cond_1

    const/16 v6, 0x3e8

    const/4 v3, 0x5

    new-instance v2, Lcom/samsung/android/lib/dexcontrol/fota/chipapi/dexpad/pdic/sec/structure/I2CEventData;

    invoke-direct {v2}, Lcom/samsung/android/lib/dexcontrol/fota/chipapi/dexpad/pdic/sec/structure/I2CEventData;-><init>()V

    :cond_0
    const/4 v7, 0x5

    invoke-direct {p0, v7, v6, v2}, Lcom/samsung/android/lib/dexcontrol/fota/chipapi/dexpad/pdic/sec/protocol/I2CProtocol;->pollingEventData(IILcom/samsung/android/lib/dexcontrol/fota/chipapi/dexpad/pdic/sec/structure/I2CEventData;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v7

    sub-int/2addr v6, v7

    if-ltz v5, :cond_2

    invoke-virtual {v2}, Lcom/samsung/android/lib/dexcontrol/fota/chipapi/dexpad/pdic/sec/structure/I2CEventData;->getCode()I

    move-result v7

    packed-switch v7, :pswitch_data_1

    :pswitch_1
    if-gtz v6, :cond_0

    return v5

    :pswitch_2
    const/4 v1, 0x2

    goto :goto_0

    :cond_1
    const-string/jumbo v7, "I2CProtocol"

    const-string/jumbo v8, "Write to validate firmware cmd failed"

    invoke-static {v7, v8}, Lcom/samsung/android/lib/dexcontrol/fota/debug/SLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v10

    :cond_2
    const-string/jumbo v7, "I2CProtocol"

    const-string/jumbo v8, "Failed to polling event data"

    invoke-static {v7, v8}, Lcom/samsung/android/lib/dexcontrol/fota/debug/SLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v5

    :pswitch_3
    return v9

    :pswitch_4
    return v10

    nop

    :pswitch_data_0
    .packed-switch 0xfe
        :pswitch_2
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x2
        :pswitch_3
        :pswitch_1
        :pswitch_1
        :pswitch_4
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_4
        :pswitch_4
    .end packed-switch
.end method

.method public writeFlashRowData(I[B)I
    .locals 11

    const/4 v10, 0x1

    const/4 v9, 0x0

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "writeFlashRowData : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, "I2CProtocol"

    invoke-static {v8, v7}, Lcom/samsung/android/lib/dexcontrol/fota/debug/SLog;->m(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v7, 0x4

    new-array v0, v7, [B

    const/16 v7, 0x46

    aput-byte v7, v0, v9

    aput-byte v10, v0, v10

    and-int/lit16 v7, p1, 0xff

    int-to-byte v7, v7

    int-to-byte v7, v7

    const/4 v8, 0x2

    aput-byte v7, v0, v8

    shr-int/lit8 v7, p1, 0x8

    and-int/lit16 v7, v7, 0xff

    int-to-byte v7, v7

    int-to-byte v7, v7

    const/4 v8, 0x3

    aput-byte v7, v0, v8

    new-instance v3, Lcom/samsung/android/lib/dexcontrol/fota/chipapi/dexpad/pdic/sec/structure/I2CEventData;

    invoke-direct {v3}, Lcom/samsung/android/lib/dexcontrol/fota/chipapi/dexpad/pdic/sec/structure/I2CEventData;-><init>()V

    const/16 v1, 0x80

    const/16 v2, 0x80

    const/16 v7, 0x80

    invoke-direct {p0, v7, p2}, Lcom/samsung/android/lib/dexcontrol/fota/chipapi/dexpad/pdic/sec/protocol/I2CProtocol;->i2cWrite(I[B)I

    move-result v5

    if-ltz v5, :cond_1

    const/16 v7, 0xc

    invoke-direct {p0, v7, v0}, Lcom/samsung/android/lib/dexcontrol/fota/chipapi/dexpad/pdic/sec/protocol/I2CProtocol;->i2cWrite(I[B)I

    move-result v5

    if-ltz v5, :cond_2

    const/16 v6, 0x3e8

    const/16 v4, 0x14

    :cond_0
    const/16 v7, 0x14

    invoke-direct {p0, v7, v6, v3}, Lcom/samsung/android/lib/dexcontrol/fota/chipapi/dexpad/pdic/sec/protocol/I2CProtocol;->pollingEventData(IILcom/samsung/android/lib/dexcontrol/fota/chipapi/dexpad/pdic/sec/structure/I2CEventData;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v7

    sub-int/2addr v6, v7

    if-ltz v5, :cond_3

    invoke-virtual {v3}, Lcom/samsung/android/lib/dexcontrol/fota/chipapi/dexpad/pdic/sec/structure/I2CEventData;->getCode()I

    move-result v7

    packed-switch v7, :pswitch_data_0

    :pswitch_0
    new-array v7, v10, [Ljava/lang/Object;

    invoke-virtual {v3}, Lcom/samsung/android/lib/dexcontrol/fota/chipapi/dexpad/pdic/sec/structure/I2CEventData;->getCode()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v9

    const-string/jumbo v8, "Unwanted event code = 0x%02x"

    invoke-static {v8, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, "I2CProtocol"

    invoke-static {v8, v7}, Lcom/samsung/android/lib/dexcontrol/fota/debug/SLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    if-gtz v6, :cond_0

    return v5

    :cond_1
    const-string/jumbo v7, "I2CProtocol"

    const-string/jumbo v8, "Set flash data failed"

    invoke-static {v7, v8}, Lcom/samsung/android/lib/dexcontrol/fota/debug/SLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v5

    :cond_2
    const-string/jumbo v7, "I2CProtocol"

    const-string/jumbo v8, "Send write flash row data cmd failed"

    invoke-static {v7, v8}, Lcom/samsung/android/lib/dexcontrol/fota/debug/SLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v5

    :cond_3
    const-string/jumbo v7, "I2CProtocol"

    const-string/jumbo v8, "Polling event data failed"

    invoke-static {v7, v8}, Lcom/samsung/android/lib/dexcontrol/fota/debug/SLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v5

    :pswitch_1
    return v9

    :pswitch_2
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Flash row write failed, event code = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v3}, Lcom/samsung/android/lib/dexcontrol/fota/chipapi/dexpad/pdic/sec/structure/I2CEventData;->getCode()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, "I2CProtocol"

    invoke-static {v8, v7}, Lcom/samsung/android/lib/dexcontrol/fota/debug/SLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v7, -0x1

    return v7

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method
