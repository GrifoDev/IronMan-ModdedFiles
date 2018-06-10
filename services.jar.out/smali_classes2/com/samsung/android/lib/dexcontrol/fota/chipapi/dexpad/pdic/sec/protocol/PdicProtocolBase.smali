.class public abstract Lcom/samsung/android/lib/dexcontrol/fota/chipapi/dexpad/pdic/sec/protocol/PdicProtocolBase;
.super Ljava/lang/Object;
.source "PdicProtocolBase.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/lib/dexcontrol/fota/chipapi/dexpad/pdic/sec/protocol/PdicProtocolBase$PdicProtocolBaseListener;
    }
.end annotation


# instance fields
.field private final TAG:Ljava/lang/String;

.field mPdicProtocolBaseListener:Lcom/samsung/android/lib/dexcontrol/fota/chipapi/dexpad/pdic/sec/protocol/PdicProtocolBase$PdicProtocolBaseListener;

.field mUsbDeviceConnection:Landroid/hardware/usb/UsbDeviceConnection;

.field mUsbInterface:Landroid/hardware/usb/UsbInterface;


# direct methods
.method constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string/jumbo v0, "PdicProtocolBase"

    iput-object v0, p0, Lcom/samsung/android/lib/dexcontrol/fota/chipapi/dexpad/pdic/sec/protocol/PdicProtocolBase;->TAG:Ljava/lang/String;

    iput-object v1, p0, Lcom/samsung/android/lib/dexcontrol/fota/chipapi/dexpad/pdic/sec/protocol/PdicProtocolBase;->mUsbDeviceConnection:Landroid/hardware/usb/UsbDeviceConnection;

    iput-object v1, p0, Lcom/samsung/android/lib/dexcontrol/fota/chipapi/dexpad/pdic/sec/protocol/PdicProtocolBase;->mUsbInterface:Landroid/hardware/usb/UsbInterface;

    iput-object v1, p0, Lcom/samsung/android/lib/dexcontrol/fota/chipapi/dexpad/pdic/sec/protocol/PdicProtocolBase;->mPdicProtocolBaseListener:Lcom/samsung/android/lib/dexcontrol/fota/chipapi/dexpad/pdic/sec/protocol/PdicProtocolBase$PdicProtocolBaseListener;

    return-void
.end method


# virtual methods
.method public attachDevice(Landroid/hardware/usb/UsbDeviceConnection;Landroid/hardware/usb/UsbDevice;)V
    .locals 1

    iput-object p1, p0, Lcom/samsung/android/lib/dexcontrol/fota/chipapi/dexpad/pdic/sec/protocol/PdicProtocolBase;->mUsbDeviceConnection:Landroid/hardware/usb/UsbDeviceConnection;

    invoke-virtual {p0, p2}, Lcom/samsung/android/lib/dexcontrol/fota/chipapi/dexpad/pdic/sec/protocol/PdicProtocolBase;->setUsbInterface(Landroid/hardware/usb/UsbDevice;)Landroid/hardware/usb/UsbInterface;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/lib/dexcontrol/fota/chipapi/dexpad/pdic/sec/protocol/PdicProtocolBase;->mUsbInterface:Landroid/hardware/usb/UsbInterface;

    return-void
.end method

.method close()Z
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/samsung/android/lib/dexcontrol/fota/chipapi/dexpad/pdic/sec/protocol/PdicProtocolBase;->mUsbDeviceConnection:Landroid/hardware/usb/UsbDeviceConnection;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/samsung/android/lib/dexcontrol/fota/chipapi/dexpad/pdic/sec/protocol/PdicProtocolBase;->mUsbInterface:Landroid/hardware/usb/UsbInterface;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/lib/dexcontrol/fota/chipapi/dexpad/pdic/sec/protocol/PdicProtocolBase;->mUsbDeviceConnection:Landroid/hardware/usb/UsbDeviceConnection;

    iget-object v2, p0, Lcom/samsung/android/lib/dexcontrol/fota/chipapi/dexpad/pdic/sec/protocol/PdicProtocolBase;->mUsbInterface:Landroid/hardware/usb/UsbInterface;

    invoke-virtual {v1, v2}, Landroid/hardware/usb/UsbDeviceConnection;->releaseInterface(Landroid/hardware/usb/UsbInterface;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method abstract enterFlashingMode()I
.end method

.method abstract getFwInfo(Lcom/samsung/android/lib/dexcontrol/fota/chipapi/dexpad/pdic/sec/structure/FirmwareInfo;)I
.end method

.method open()Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/samsung/android/lib/dexcontrol/fota/chipapi/dexpad/pdic/sec/protocol/PdicProtocolBase;->mUsbDeviceConnection:Landroid/hardware/usb/UsbDeviceConnection;

    if-nez v2, :cond_2

    :cond_0
    :goto_0
    move v0, v1

    :cond_1
    return v0

    :cond_2
    iget-object v2, p0, Lcom/samsung/android/lib/dexcontrol/fota/chipapi/dexpad/pdic/sec/protocol/PdicProtocolBase;->mUsbInterface:Landroid/hardware/usb/UsbInterface;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/samsung/android/lib/dexcontrol/fota/chipapi/dexpad/pdic/sec/protocol/PdicProtocolBase;->mUsbDeviceConnection:Landroid/hardware/usb/UsbDeviceConnection;

    iget-object v3, p0, Lcom/samsung/android/lib/dexcontrol/fota/chipapi/dexpad/pdic/sec/protocol/PdicProtocolBase;->mUsbInterface:Landroid/hardware/usb/UsbInterface;

    invoke-virtual {v2, v3, v0}, Landroid/hardware/usb/UsbDeviceConnection;->claimInterface(Landroid/hardware/usb/UsbInterface;Z)Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_0
.end method

.method abstract reset()I
.end method

.method sendData(Lcom/samsung/android/lib/dexcontrol/fota/chipapi/dexpad/pdic/sec/structure/UsbControlTransferParameters;)I
    .locals 10

    invoke-virtual {p0}, Lcom/samsung/android/lib/dexcontrol/fota/chipapi/dexpad/pdic/sec/protocol/PdicProtocolBase;->open()Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "PdicProtocolBase"

    const-string/jumbo v1, "sendData openfailed"

    invoke-static {v0, v1}, Lcom/samsung/android/lib/dexcontrol/fota/debug/SLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, -0x1

    return v0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/lib/dexcontrol/fota/chipapi/dexpad/pdic/sec/protocol/PdicProtocolBase;->mUsbDeviceConnection:Landroid/hardware/usb/UsbDeviceConnection;

    invoke-virtual {p1}, Lcom/samsung/android/lib/dexcontrol/fota/chipapi/dexpad/pdic/sec/structure/UsbControlTransferParameters;->getRequestType()I

    move-result v1

    invoke-virtual {p1}, Lcom/samsung/android/lib/dexcontrol/fota/chipapi/dexpad/pdic/sec/structure/UsbControlTransferParameters;->getRequest()I

    move-result v2

    invoke-virtual {p1}, Lcom/samsung/android/lib/dexcontrol/fota/chipapi/dexpad/pdic/sec/structure/UsbControlTransferParameters;->getValue()I

    move-result v3

    invoke-virtual {p1}, Lcom/samsung/android/lib/dexcontrol/fota/chipapi/dexpad/pdic/sec/structure/UsbControlTransferParameters;->getIndex()I

    move-result v4

    invoke-virtual {p1}, Lcom/samsung/android/lib/dexcontrol/fota/chipapi/dexpad/pdic/sec/structure/UsbControlTransferParameters;->getBuffer()[B

    move-result-object v5

    invoke-virtual {p1}, Lcom/samsung/android/lib/dexcontrol/fota/chipapi/dexpad/pdic/sec/structure/UsbControlTransferParameters;->getLength()I

    move-result v6

    invoke-virtual {p1}, Lcom/samsung/android/lib/dexcontrol/fota/chipapi/dexpad/pdic/sec/structure/UsbControlTransferParameters;->getTimeout()I

    move-result v7

    invoke-virtual/range {v0 .. v7}, Landroid/hardware/usb/UsbDeviceConnection;->controlTransfer(IIII[BII)I

    move-result v9

    invoke-virtual {p0}, Lcom/samsung/android/lib/dexcontrol/fota/chipapi/dexpad/pdic/sec/protocol/PdicProtocolBase;->close()Z

    move-result v8

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "sendData result = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", length = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/samsung/android/lib/dexcontrol/fota/chipapi/dexpad/pdic/sec/structure/UsbControlTransferParameters;->getLength()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "PdicProtocolBase"

    invoke-static {v1, v0}, Lcom/samsung/android/lib/dexcontrol/fota/debug/SLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v9
.end method

.method public setListener(Lcom/samsung/android/lib/dexcontrol/fota/chipapi/dexpad/pdic/sec/protocol/PdicProtocolBase$PdicProtocolBaseListener;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/lib/dexcontrol/fota/chipapi/dexpad/pdic/sec/protocol/PdicProtocolBase;->mPdicProtocolBaseListener:Lcom/samsung/android/lib/dexcontrol/fota/chipapi/dexpad/pdic/sec/protocol/PdicProtocolBase$PdicProtocolBaseListener;

    return-void
.end method

.method abstract setUsbInterface(Landroid/hardware/usb/UsbDevice;)Landroid/hardware/usb/UsbInterface;
.end method

.method abstract validateFirmware(Lcom/samsung/android/lib/dexcontrol/fota/chipapi/dexpad/pdic/sec/CyacdImage;)I
.end method

.method public writeFlashImage(Lcom/samsung/android/lib/dexcontrol/fota/chipapi/dexpad/pdic/sec/CyacdImage;)I
    .locals 12

    const-string/jumbo v8, "PdicProtocolBase"

    const-string/jumbo v9, "writeFlashImage()"

    invoke-static {v8, v9}, Lcom/samsung/android/lib/dexcontrol/fota/debug/SLog;->m(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v7, 0x0

    invoke-virtual {p1}, Lcom/samsung/android/lib/dexcontrol/fota/chipapi/dexpad/pdic/sec/CyacdImage;->recordCount()I

    move-result v6

    const/4 v0, 0x0

    const/4 v4, 0x0

    const/4 v1, 0x0

    :goto_0
    if-lt v1, v6, :cond_0

    return v7

    :cond_0
    invoke-virtual {p1, v1}, Lcom/samsung/android/lib/dexcontrol/fota/chipapi/dexpad/pdic/sec/CyacdImage;->getImageRecord(I)Lcom/samsung/android/lib/dexcontrol/fota/chipapi/dexpad/pdic/sec/CyacdImage$CyacdRecord;

    move-result-object v0

    iget v8, v0, Lcom/samsung/android/lib/dexcontrol/fota/chipapi/dexpad/pdic/sec/CyacdImage$CyacdRecord;->rowNum:I

    iget-object v9, v0, Lcom/samsung/android/lib/dexcontrol/fota/chipapi/dexpad/pdic/sec/CyacdImage$CyacdRecord;->data:[B

    invoke-virtual {p0, v8, v9}, Lcom/samsung/android/lib/dexcontrol/fota/chipapi/dexpad/pdic/sec/protocol/PdicProtocolBase;->writeFlashRowData(I[B)I

    move-result v7

    if-ltz v7, :cond_2

    iget-object v8, p0, Lcom/samsung/android/lib/dexcontrol/fota/chipapi/dexpad/pdic/sec/protocol/PdicProtocolBase;->mPdicProtocolBaseListener:Lcom/samsung/android/lib/dexcontrol/fota/chipapi/dexpad/pdic/sec/protocol/PdicProtocolBase$PdicProtocolBaseListener;

    if-nez v8, :cond_3

    :cond_1
    :goto_1
    const/4 v0, 0x0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Write flash error ["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "]"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v9, "PdicProtocolBase"

    invoke-static {v9, v8}, Lcom/samsung/android/lib/dexcontrol/fota/debug/SLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    return v7

    :cond_3
    add-int/lit8 v8, v1, 0x1

    mul-int/lit8 v8, v8, 0x64

    int-to-double v8, v8

    int-to-double v10, v6

    div-double v2, v8, v10

    const-wide v8, 0x4048800000000000L    # 49.0

    cmpg-double v8, v2, v8

    if-gez v8, :cond_4

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v8

    double-to-int v5, v8

    :goto_2
    if-le v5, v4, :cond_1

    iget-object v8, p0, Lcom/samsung/android/lib/dexcontrol/fota/chipapi/dexpad/pdic/sec/protocol/PdicProtocolBase;->mPdicProtocolBaseListener:Lcom/samsung/android/lib/dexcontrol/fota/chipapi/dexpad/pdic/sec/protocol/PdicProtocolBase$PdicProtocolBaseListener;

    invoke-interface {v8, v5}, Lcom/samsung/android/lib/dexcontrol/fota/chipapi/dexpad/pdic/sec/protocol/PdicProtocolBase$PdicProtocolBaseListener;->onDownloadProgrssed(I)V

    move v4, v5

    goto :goto_1

    :cond_4
    invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D

    move-result-wide v8

    double-to-int v5, v8

    goto :goto_2
.end method

.method abstract writeFlashRowData(I[B)I
.end method
