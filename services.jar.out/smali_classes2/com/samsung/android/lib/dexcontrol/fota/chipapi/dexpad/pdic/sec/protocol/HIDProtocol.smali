.class public final Lcom/samsung/android/lib/dexcontrol/fota/chipapi/dexpad/pdic/sec/protocol/HIDProtocol;
.super Lcom/samsung/android/lib/dexcontrol/fota/chipapi/dexpad/pdic/sec/protocol/PdicProtocolBase;
.source "HIDProtocol.java"


# instance fields
.field private final HID_REQUEST_REPORT_TYPE_INPUT:I

.field private final HID_REQUEST_REPORT_TYPE_OUTPUT:I

.field private final REPORT_CODE_ID_CUSTOMER_INFO:I

.field private final REPORT_CODE_ID_CY_FW_INFO:I

.field private final REPORT_CODE_ID_FLASH_READ:I

.field private final REPORT_CODE_ID_FLASH_WRITE:I

.field private final REPORT_CODE_ID_GET_TYPEC_PD_STATUS:I

.field private final REPORT_CODE_ID_REQUEST:I

.field private final REQUEST_CMD_ENTER_FLASHING:I

.field private final REQUEST_CMD_I2C_BRIDGE_CTRL:I

.field private final REQUEST_CMD_JUMP:I

.field private final REQUEST_CMD_NODITY_UPDATE_START:I

.field private final REQUEST_CMD_PD_SWAP_CTRL:I

.field private final REQUEST_CMD_SET_APP_PRIORITY:I

.field private final REQUEST_CMD_SET_READ_ROW:I

.field private final REQUEST_CMD_VALIDATE_FW:I

.field private final TAG:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 3

    const/4 v2, 0x2

    const/4 v1, 0x1

    invoke-direct {p0}, Lcom/samsung/android/lib/dexcontrol/fota/chipapi/dexpad/pdic/sec/protocol/PdicProtocolBase;-><init>()V

    const-string/jumbo v0, "HIDProtocol"

    iput-object v0, p0, Lcom/samsung/android/lib/dexcontrol/fota/chipapi/dexpad/pdic/sec/protocol/HIDProtocol;->TAG:Ljava/lang/String;

    const/16 v0, 0xe0

    iput v0, p0, Lcom/samsung/android/lib/dexcontrol/fota/chipapi/dexpad/pdic/sec/protocol/HIDProtocol;->REPORT_CODE_ID_CY_FW_INFO:I

    const/16 v0, 0xe1

    iput v0, p0, Lcom/samsung/android/lib/dexcontrol/fota/chipapi/dexpad/pdic/sec/protocol/HIDProtocol;->REPORT_CODE_ID_REQUEST:I

    const/16 v0, 0xe2

    iput v0, p0, Lcom/samsung/android/lib/dexcontrol/fota/chipapi/dexpad/pdic/sec/protocol/HIDProtocol;->REPORT_CODE_ID_FLASH_WRITE:I

    const/16 v0, 0xe3

    iput v0, p0, Lcom/samsung/android/lib/dexcontrol/fota/chipapi/dexpad/pdic/sec/protocol/HIDProtocol;->REPORT_CODE_ID_FLASH_READ:I

    const/16 v0, 0xe4

    iput v0, p0, Lcom/samsung/android/lib/dexcontrol/fota/chipapi/dexpad/pdic/sec/protocol/HIDProtocol;->REPORT_CODE_ID_CUSTOMER_INFO:I

    const/16 v0, 0xe5

    iput v0, p0, Lcom/samsung/android/lib/dexcontrol/fota/chipapi/dexpad/pdic/sec/protocol/HIDProtocol;->REPORT_CODE_ID_GET_TYPEC_PD_STATUS:I

    iput v1, p0, Lcom/samsung/android/lib/dexcontrol/fota/chipapi/dexpad/pdic/sec/protocol/HIDProtocol;->REQUEST_CMD_JUMP:I

    iput v2, p0, Lcom/samsung/android/lib/dexcontrol/fota/chipapi/dexpad/pdic/sec/protocol/HIDProtocol;->REQUEST_CMD_ENTER_FLASHING:I

    const/4 v0, 0x3

    iput v0, p0, Lcom/samsung/android/lib/dexcontrol/fota/chipapi/dexpad/pdic/sec/protocol/HIDProtocol;->REQUEST_CMD_SET_READ_ROW:I

    const/4 v0, 0x4

    iput v0, p0, Lcom/samsung/android/lib/dexcontrol/fota/chipapi/dexpad/pdic/sec/protocol/HIDProtocol;->REQUEST_CMD_VALIDATE_FW:I

    const/4 v0, 0x5

    iput v0, p0, Lcom/samsung/android/lib/dexcontrol/fota/chipapi/dexpad/pdic/sec/protocol/HIDProtocol;->REQUEST_CMD_SET_APP_PRIORITY:I

    const/4 v0, 0x6

    iput v0, p0, Lcom/samsung/android/lib/dexcontrol/fota/chipapi/dexpad/pdic/sec/protocol/HIDProtocol;->REQUEST_CMD_I2C_BRIDGE_CTRL:I

    const/4 v0, 0x7

    iput v0, p0, Lcom/samsung/android/lib/dexcontrol/fota/chipapi/dexpad/pdic/sec/protocol/HIDProtocol;->REQUEST_CMD_PD_SWAP_CTRL:I

    const/16 v0, 0x9

    iput v0, p0, Lcom/samsung/android/lib/dexcontrol/fota/chipapi/dexpad/pdic/sec/protocol/HIDProtocol;->REQUEST_CMD_NODITY_UPDATE_START:I

    iput v1, p0, Lcom/samsung/android/lib/dexcontrol/fota/chipapi/dexpad/pdic/sec/protocol/HIDProtocol;->HID_REQUEST_REPORT_TYPE_INPUT:I

    iput v2, p0, Lcom/samsung/android/lib/dexcontrol/fota/chipapi/dexpad/pdic/sec/protocol/HIDProtocol;->HID_REQUEST_REPORT_TYPE_OUTPUT:I

    return-void
.end method

.method private sendHidReportIdCyFwInfo(Lcom/samsung/android/lib/dexcontrol/fota/chipapi/dexpad/pdic/sec/structure/FirmwareInfo;)I
    .locals 7

    const/16 v6, 0x40

    const-string/jumbo v4, "HIDProtocol"

    const-string/jumbo v5, "sendHidReportIdCyFwInfo()"

    invoke-static {v4, v5}, Lcom/samsung/android/lib/dexcontrol/fota/debug/SLog;->m(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v1, 0x40

    new-array v0, v6, [B

    new-instance v3, Lcom/samsung/android/lib/dexcontrol/fota/chipapi/dexpad/pdic/sec/structure/UsbControlTransferParameters;

    invoke-direct {v3}, Lcom/samsung/android/lib/dexcontrol/fota/chipapi/dexpad/pdic/sec/structure/UsbControlTransferParameters;-><init>()V

    const/16 v4, 0xa0

    invoke-virtual {v3, v4}, Lcom/samsung/android/lib/dexcontrol/fota/chipapi/dexpad/pdic/sec/structure/UsbControlTransferParameters;->setRequestType(I)V

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/samsung/android/lib/dexcontrol/fota/chipapi/dexpad/pdic/sec/structure/UsbControlTransferParameters;->setRequest(I)V

    const/16 v4, 0xe0

    invoke-virtual {v3, v4}, Lcom/samsung/android/lib/dexcontrol/fota/chipapi/dexpad/pdic/sec/structure/UsbControlTransferParameters;->setValue(I)V

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/samsung/android/lib/dexcontrol/fota/chipapi/dexpad/pdic/sec/structure/UsbControlTransferParameters;->setIndex(I)V

    invoke-virtual {v3, v0}, Lcom/samsung/android/lib/dexcontrol/fota/chipapi/dexpad/pdic/sec/structure/UsbControlTransferParameters;->setBuffer([B)V

    invoke-virtual {v3, v6}, Lcom/samsung/android/lib/dexcontrol/fota/chipapi/dexpad/pdic/sec/structure/UsbControlTransferParameters;->setLength(I)V

    invoke-virtual {v3}, Lcom/samsung/android/lib/dexcontrol/fota/chipapi/dexpad/pdic/sec/structure/UsbControlTransferParameters;->setTimeout()V

    invoke-virtual {p0, v3}, Lcom/samsung/android/lib/dexcontrol/fota/chipapi/dexpad/pdic/sec/protocol/HIDProtocol;->sendData(Lcom/samsung/android/lib/dexcontrol/fota/chipapi/dexpad/pdic/sec/structure/UsbControlTransferParameters;)I

    move-result v2

    const/4 v4, -0x1

    if-gt v2, v4, :cond_0

    :goto_0
    return v2

    :cond_0
    invoke-virtual {v3}, Lcom/samsung/android/lib/dexcontrol/fota/chipapi/dexpad/pdic/sec/structure/UsbControlTransferParameters;->getBuffer()[B

    move-result-object v4

    invoke-virtual {p1, v4}, Lcom/samsung/android/lib/dexcontrol/fota/chipapi/dexpad/pdic/sec/structure/FirmwareInfo;->update([B)V

    goto :goto_0
.end method

.method private sendHidReportIdGetTypecPdStatus(Lcom/samsung/android/lib/dexcontrol/fota/chipapi/dexpad/pdic/sec/structure/PDStatus;)I
    .locals 12

    const/16 v11, 0x8

    const/4 v10, 0x1

    const/16 v9, -0x1b

    const/4 v8, 0x0

    const-string/jumbo v6, "HIDProtocol"

    const-string/jumbo v7, "sendHidReportIdGetTypecPdStatus()"

    invoke-static {v6, v7}, Lcom/samsung/android/lib/dexcontrol/fota/debug/SLog;->m(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v1, 0x8

    new-array v0, v11, [B

    invoke-static {v0, v8}, Ljava/util/Arrays;->fill([BB)V

    aput-byte v9, v0, v8

    invoke-static {v9, v10}, Lcom/samsung/android/lib/dexcontrol/fota/chipapi/dexpad/pdic/sec/util/Utils;->combineWord(BB)I

    move-result v5

    const/4 v2, 0x0

    new-instance v4, Lcom/samsung/android/lib/dexcontrol/fota/chipapi/dexpad/pdic/sec/structure/UsbControlTransferParameters;

    invoke-direct {v4}, Lcom/samsung/android/lib/dexcontrol/fota/chipapi/dexpad/pdic/sec/structure/UsbControlTransferParameters;-><init>()V

    const/16 v6, 0xa0

    invoke-virtual {v4, v6}, Lcom/samsung/android/lib/dexcontrol/fota/chipapi/dexpad/pdic/sec/structure/UsbControlTransferParameters;->setRequestType(I)V

    invoke-virtual {v4, v10}, Lcom/samsung/android/lib/dexcontrol/fota/chipapi/dexpad/pdic/sec/structure/UsbControlTransferParameters;->setRequest(I)V

    invoke-virtual {v4, v5}, Lcom/samsung/android/lib/dexcontrol/fota/chipapi/dexpad/pdic/sec/structure/UsbControlTransferParameters;->setValue(I)V

    invoke-virtual {v4, v8}, Lcom/samsung/android/lib/dexcontrol/fota/chipapi/dexpad/pdic/sec/structure/UsbControlTransferParameters;->setIndex(I)V

    invoke-virtual {v4, v0}, Lcom/samsung/android/lib/dexcontrol/fota/chipapi/dexpad/pdic/sec/structure/UsbControlTransferParameters;->setBuffer([B)V

    invoke-virtual {v4, v11}, Lcom/samsung/android/lib/dexcontrol/fota/chipapi/dexpad/pdic/sec/structure/UsbControlTransferParameters;->setLength(I)V

    invoke-virtual {v4}, Lcom/samsung/android/lib/dexcontrol/fota/chipapi/dexpad/pdic/sec/structure/UsbControlTransferParameters;->setTimeout()V

    invoke-virtual {p0, v4}, Lcom/samsung/android/lib/dexcontrol/fota/chipapi/dexpad/pdic/sec/protocol/HIDProtocol;->sendData(Lcom/samsung/android/lib/dexcontrol/fota/chipapi/dexpad/pdic/sec/structure/UsbControlTransferParameters;)I

    move-result v3

    const/4 v6, -0x1

    if-gt v3, v6, :cond_0

    :goto_0
    return v3

    :cond_0
    invoke-virtual {v4}, Lcom/samsung/android/lib/dexcontrol/fota/chipapi/dexpad/pdic/sec/structure/UsbControlTransferParameters;->getBuffer()[B

    move-result-object v6

    invoke-virtual {p1, v6, v8}, Lcom/samsung/android/lib/dexcontrol/fota/chipapi/dexpad/pdic/sec/structure/PDStatus;->update([BI)V

    goto :goto_0
.end method

.method private sendHidRqtCmdEnterFlashing(I)I
    .locals 11

    const/16 v10, 0x8

    const/4 v9, 0x1

    const/16 v8, -0x1f

    const/4 v7, 0x2

    const/4 v6, 0x0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "sendHidRequestCmdEnterFlashing : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "HIDProtocol"

    invoke-static {v5, v4}, Lcom/samsung/android/lib/dexcontrol/fota/debug/SLog;->m(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v1, 0x8

    new-array v2, v9, [B

    int-to-byte v4, p1

    int-to-byte v4, v4

    aput-byte v4, v2, v6

    new-array v0, v10, [B

    invoke-static {v0, v6}, Ljava/util/Arrays;->fill([BB)V

    aput-byte v8, v0, v6

    aput-byte v7, v0, v9

    array-length v4, v2

    array-length v5, v0

    add-int/lit8 v5, v5, -0x2

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    invoke-static {v2, v6, v0, v7, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-instance v3, Lcom/samsung/android/lib/dexcontrol/fota/chipapi/dexpad/pdic/sec/structure/UsbControlTransferParameters;

    invoke-direct {v3}, Lcom/samsung/android/lib/dexcontrol/fota/chipapi/dexpad/pdic/sec/structure/UsbControlTransferParameters;-><init>()V

    const/16 v4, 0x21

    invoke-virtual {v3, v4}, Lcom/samsung/android/lib/dexcontrol/fota/chipapi/dexpad/pdic/sec/structure/UsbControlTransferParameters;->setRequestType(I)V

    const/16 v4, 0x9

    invoke-virtual {v3, v4}, Lcom/samsung/android/lib/dexcontrol/fota/chipapi/dexpad/pdic/sec/structure/UsbControlTransferParameters;->setRequest(I)V

    invoke-static {v8, v7}, Lcom/samsung/android/lib/dexcontrol/fota/chipapi/dexpad/pdic/sec/util/Utils;->combineWord(BB)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/samsung/android/lib/dexcontrol/fota/chipapi/dexpad/pdic/sec/structure/UsbControlTransferParameters;->setValue(I)V

    invoke-virtual {v3, v6}, Lcom/samsung/android/lib/dexcontrol/fota/chipapi/dexpad/pdic/sec/structure/UsbControlTransferParameters;->setIndex(I)V

    invoke-virtual {v3, v0}, Lcom/samsung/android/lib/dexcontrol/fota/chipapi/dexpad/pdic/sec/structure/UsbControlTransferParameters;->setBuffer([B)V

    invoke-virtual {v3, v10}, Lcom/samsung/android/lib/dexcontrol/fota/chipapi/dexpad/pdic/sec/structure/UsbControlTransferParameters;->setLength(I)V

    invoke-virtual {v3}, Lcom/samsung/android/lib/dexcontrol/fota/chipapi/dexpad/pdic/sec/structure/UsbControlTransferParameters;->setTimeout()V

    invoke-virtual {p0, v3}, Lcom/samsung/android/lib/dexcontrol/fota/chipapi/dexpad/pdic/sec/protocol/HIDProtocol;->sendData(Lcom/samsung/android/lib/dexcontrol/fota/chipapi/dexpad/pdic/sec/structure/UsbControlTransferParameters;)I

    move-result v4

    return v4
.end method

.method private sendHidRqtCmdI2cBridgeCtrl(I)I
    .locals 9

    const/16 v8, 0x8

    const/4 v7, 0x1

    const/4 v6, 0x0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "sendHidRequestCmdI2cBridgeCtrl : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "HIDProtocol"

    invoke-static {v5, v4}, Lcom/samsung/android/lib/dexcontrol/fota/debug/SLog;->m(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v1, 0x8

    new-array v2, v7, [B

    int-to-byte v4, p1

    int-to-byte v4, v4

    aput-byte v4, v2, v6

    new-array v0, v8, [B

    invoke-static {v0, v6}, Ljava/util/Arrays;->fill([BB)V

    const/16 v4, -0x1f

    aput-byte v4, v0, v6

    const/4 v4, 0x6

    aput-byte v4, v0, v7

    array-length v4, v2

    array-length v5, v0

    add-int/lit8 v5, v5, -0x2

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    const/4 v5, 0x2

    invoke-static {v2, v6, v0, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-instance v3, Lcom/samsung/android/lib/dexcontrol/fota/chipapi/dexpad/pdic/sec/structure/UsbControlTransferParameters;

    invoke-direct {v3}, Lcom/samsung/android/lib/dexcontrol/fota/chipapi/dexpad/pdic/sec/structure/UsbControlTransferParameters;-><init>()V

    const/16 v4, 0x21

    invoke-virtual {v3, v4}, Lcom/samsung/android/lib/dexcontrol/fota/chipapi/dexpad/pdic/sec/structure/UsbControlTransferParameters;->setRequestType(I)V

    const/16 v4, 0x9

    invoke-virtual {v3, v4}, Lcom/samsung/android/lib/dexcontrol/fota/chipapi/dexpad/pdic/sec/structure/UsbControlTransferParameters;->setRequest(I)V

    const/16 v4, 0xe1

    invoke-virtual {v3, v4}, Lcom/samsung/android/lib/dexcontrol/fota/chipapi/dexpad/pdic/sec/structure/UsbControlTransferParameters;->setValue(I)V

    invoke-virtual {v3, v6}, Lcom/samsung/android/lib/dexcontrol/fota/chipapi/dexpad/pdic/sec/structure/UsbControlTransferParameters;->setIndex(I)V

    invoke-virtual {v3, v0}, Lcom/samsung/android/lib/dexcontrol/fota/chipapi/dexpad/pdic/sec/structure/UsbControlTransferParameters;->setBuffer([B)V

    invoke-virtual {v3, v8}, Lcom/samsung/android/lib/dexcontrol/fota/chipapi/dexpad/pdic/sec/structure/UsbControlTransferParameters;->setLength(I)V

    invoke-virtual {v3}, Lcom/samsung/android/lib/dexcontrol/fota/chipapi/dexpad/pdic/sec/structure/UsbControlTransferParameters;->setTimeout()V

    invoke-virtual {p0, v3}, Lcom/samsung/android/lib/dexcontrol/fota/chipapi/dexpad/pdic/sec/protocol/HIDProtocol;->sendData(Lcom/samsung/android/lib/dexcontrol/fota/chipapi/dexpad/pdic/sec/structure/UsbControlTransferParameters;)I

    move-result v4

    return v4
.end method

.method private sendHidRqtCmdJump(I)I
    .locals 11

    const/16 v10, 0x8

    const/4 v9, 0x2

    const/16 v8, -0x1f

    const/4 v7, 0x1

    const/4 v6, 0x0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "sendHidRequestCmdJump : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "HIDProtocol"

    invoke-static {v5, v4}, Lcom/samsung/android/lib/dexcontrol/fota/debug/SLog;->m(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v1, 0x8

    new-array v2, v7, [B

    int-to-byte v4, p1

    int-to-byte v4, v4

    aput-byte v4, v2, v6

    new-array v0, v10, [B

    invoke-static {v0, v6}, Ljava/util/Arrays;->fill([BB)V

    aput-byte v8, v0, v6

    aput-byte v7, v0, v7

    array-length v4, v2

    array-length v5, v0

    add-int/lit8 v5, v5, -0x2

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    invoke-static {v2, v6, v0, v9, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-instance v3, Lcom/samsung/android/lib/dexcontrol/fota/chipapi/dexpad/pdic/sec/structure/UsbControlTransferParameters;

    invoke-direct {v3}, Lcom/samsung/android/lib/dexcontrol/fota/chipapi/dexpad/pdic/sec/structure/UsbControlTransferParameters;-><init>()V

    const/16 v4, 0x21

    invoke-virtual {v3, v4}, Lcom/samsung/android/lib/dexcontrol/fota/chipapi/dexpad/pdic/sec/structure/UsbControlTransferParameters;->setRequestType(I)V

    const/16 v4, 0x9

    invoke-virtual {v3, v4}, Lcom/samsung/android/lib/dexcontrol/fota/chipapi/dexpad/pdic/sec/structure/UsbControlTransferParameters;->setRequest(I)V

    invoke-static {v8, v9}, Lcom/samsung/android/lib/dexcontrol/fota/chipapi/dexpad/pdic/sec/util/Utils;->combineWord(BB)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/samsung/android/lib/dexcontrol/fota/chipapi/dexpad/pdic/sec/structure/UsbControlTransferParameters;->setValue(I)V

    invoke-virtual {v3, v6}, Lcom/samsung/android/lib/dexcontrol/fota/chipapi/dexpad/pdic/sec/structure/UsbControlTransferParameters;->setIndex(I)V

    invoke-virtual {v3, v0}, Lcom/samsung/android/lib/dexcontrol/fota/chipapi/dexpad/pdic/sec/structure/UsbControlTransferParameters;->setBuffer([B)V

    invoke-virtual {v3, v10}, Lcom/samsung/android/lib/dexcontrol/fota/chipapi/dexpad/pdic/sec/structure/UsbControlTransferParameters;->setLength(I)V

    invoke-virtual {v3}, Lcom/samsung/android/lib/dexcontrol/fota/chipapi/dexpad/pdic/sec/structure/UsbControlTransferParameters;->setTimeout()V

    invoke-virtual {p0, v3}, Lcom/samsung/android/lib/dexcontrol/fota/chipapi/dexpad/pdic/sec/protocol/HIDProtocol;->sendData(Lcom/samsung/android/lib/dexcontrol/fota/chipapi/dexpad/pdic/sec/structure/UsbControlTransferParameters;)I

    move-result v4

    return v4
.end method

.method private sendHidRqtCmdNotifyUpdateStart()I
    .locals 9

    const/16 v8, 0x9

    const/16 v7, 0x8

    const/16 v6, -0x1f

    const/4 v5, 0x0

    const-string/jumbo v3, "HIDProtocol"

    const-string/jumbo v4, "sendHidRqtCmdNotifyUpdateStart()"

    invoke-static {v3, v4}, Lcom/samsung/android/lib/dexcontrol/fota/debug/SLog;->m(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v1, 0x8

    new-array v0, v7, [B

    invoke-static {v0, v5}, Ljava/util/Arrays;->fill([BB)V

    aput-byte v6, v0, v5

    const/4 v3, 0x1

    aput-byte v8, v0, v3

    new-instance v2, Lcom/samsung/android/lib/dexcontrol/fota/chipapi/dexpad/pdic/sec/structure/UsbControlTransferParameters;

    invoke-direct {v2}, Lcom/samsung/android/lib/dexcontrol/fota/chipapi/dexpad/pdic/sec/structure/UsbControlTransferParameters;-><init>()V

    const/16 v3, 0x21

    invoke-virtual {v2, v3}, Lcom/samsung/android/lib/dexcontrol/fota/chipapi/dexpad/pdic/sec/structure/UsbControlTransferParameters;->setRequestType(I)V

    invoke-virtual {v2, v8}, Lcom/samsung/android/lib/dexcontrol/fota/chipapi/dexpad/pdic/sec/structure/UsbControlTransferParameters;->setRequest(I)V

    const/4 v3, 0x2

    invoke-static {v6, v3}, Lcom/samsung/android/lib/dexcontrol/fota/chipapi/dexpad/pdic/sec/util/Utils;->combineWord(BB)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/lib/dexcontrol/fota/chipapi/dexpad/pdic/sec/structure/UsbControlTransferParameters;->setValue(I)V

    invoke-virtual {v2, v5}, Lcom/samsung/android/lib/dexcontrol/fota/chipapi/dexpad/pdic/sec/structure/UsbControlTransferParameters;->setIndex(I)V

    invoke-virtual {v2, v0}, Lcom/samsung/android/lib/dexcontrol/fota/chipapi/dexpad/pdic/sec/structure/UsbControlTransferParameters;->setBuffer([B)V

    invoke-virtual {v2, v7}, Lcom/samsung/android/lib/dexcontrol/fota/chipapi/dexpad/pdic/sec/structure/UsbControlTransferParameters;->setLength(I)V

    invoke-virtual {v2}, Lcom/samsung/android/lib/dexcontrol/fota/chipapi/dexpad/pdic/sec/structure/UsbControlTransferParameters;->setTimeout()V

    invoke-virtual {p0, v2}, Lcom/samsung/android/lib/dexcontrol/fota/chipapi/dexpad/pdic/sec/protocol/HIDProtocol;->sendData(Lcom/samsung/android/lib/dexcontrol/fota/chipapi/dexpad/pdic/sec/structure/UsbControlTransferParameters;)I

    move-result v3

    return v3
.end method

.method private sendHidRqtCmdValidateFw(I)I
    .locals 9

    const/16 v8, 0x8

    const/4 v7, 0x1

    const/4 v6, 0x0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "sendHidRequestCmdValidateFw : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "HIDProtocol"

    invoke-static {v5, v4}, Lcom/samsung/android/lib/dexcontrol/fota/debug/SLog;->m(Ljava/lang/String;Ljava/lang/String;)V

    new-array v2, v7, [B

    int-to-byte v4, p1

    int-to-byte v4, v4

    aput-byte v4, v2, v6

    const/16 v1, 0x8

    new-array v0, v8, [B

    invoke-static {v0, v6}, Ljava/util/Arrays;->fill([BB)V

    const/16 v4, -0x1f

    aput-byte v4, v0, v6

    const/4 v4, 0x4

    aput-byte v4, v0, v7

    array-length v4, v2

    array-length v5, v0

    add-int/lit8 v5, v5, -0x2

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    const/4 v5, 0x2

    invoke-static {v2, v6, v0, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-instance v3, Lcom/samsung/android/lib/dexcontrol/fota/chipapi/dexpad/pdic/sec/structure/UsbControlTransferParameters;

    invoke-direct {v3}, Lcom/samsung/android/lib/dexcontrol/fota/chipapi/dexpad/pdic/sec/structure/UsbControlTransferParameters;-><init>()V

    const/16 v4, 0x21

    invoke-virtual {v3, v4}, Lcom/samsung/android/lib/dexcontrol/fota/chipapi/dexpad/pdic/sec/structure/UsbControlTransferParameters;->setRequestType(I)V

    const/16 v4, 0x9

    invoke-virtual {v3, v4}, Lcom/samsung/android/lib/dexcontrol/fota/chipapi/dexpad/pdic/sec/structure/UsbControlTransferParameters;->setRequest(I)V

    const/16 v4, 0xe1

    invoke-virtual {v3, v4}, Lcom/samsung/android/lib/dexcontrol/fota/chipapi/dexpad/pdic/sec/structure/UsbControlTransferParameters;->setValue(I)V

    invoke-virtual {v3, v6}, Lcom/samsung/android/lib/dexcontrol/fota/chipapi/dexpad/pdic/sec/structure/UsbControlTransferParameters;->setIndex(I)V

    invoke-virtual {v3, v0}, Lcom/samsung/android/lib/dexcontrol/fota/chipapi/dexpad/pdic/sec/structure/UsbControlTransferParameters;->setBuffer([B)V

    invoke-virtual {v3, v8}, Lcom/samsung/android/lib/dexcontrol/fota/chipapi/dexpad/pdic/sec/structure/UsbControlTransferParameters;->setLength(I)V

    invoke-virtual {v3}, Lcom/samsung/android/lib/dexcontrol/fota/chipapi/dexpad/pdic/sec/structure/UsbControlTransferParameters;->setTimeout()V

    invoke-virtual {p0, v3}, Lcom/samsung/android/lib/dexcontrol/fota/chipapi/dexpad/pdic/sec/protocol/HIDProtocol;->sendData(Lcom/samsung/android/lib/dexcontrol/fota/chipapi/dexpad/pdic/sec/structure/UsbControlTransferParameters;)I

    move-result v4

    return v4
.end method

.method private sendRqtCmdPdSwapCtrl(I)I
    .locals 13

    const/16 v12, 0x8

    const/4 v11, 0x2

    const/4 v10, 0x1

    const/16 v9, -0x1f

    const/4 v8, 0x0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "sendRqtCmdPdSwapCtrl : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "HIDProtocol"

    invoke-static {v7, v6}, Lcom/samsung/android/lib/dexcontrol/fota/debug/SLog;->m(Ljava/lang/String;Ljava/lang/String;)V

    new-array v3, v10, [B

    int-to-byte v6, p1

    int-to-byte v6, v6

    aput-byte v6, v3, v8

    const/16 v1, 0x8

    new-array v0, v12, [B

    invoke-static {v0, v8}, Ljava/util/Arrays;->fill([BB)V

    aput-byte v9, v0, v8

    const/4 v6, 0x7

    aput-byte v6, v0, v10

    array-length v6, v3

    array-length v7, v0

    add-int/lit8 v7, v7, -0x2

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v6

    invoke-static {v3, v8, v0, v11, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {v9, v11}, Lcom/samsung/android/lib/dexcontrol/fota/chipapi/dexpad/pdic/sec/util/Utils;->combineWord(BB)I

    move-result v5

    const/4 v2, 0x0

    new-instance v4, Lcom/samsung/android/lib/dexcontrol/fota/chipapi/dexpad/pdic/sec/structure/UsbControlTransferParameters;

    invoke-direct {v4}, Lcom/samsung/android/lib/dexcontrol/fota/chipapi/dexpad/pdic/sec/structure/UsbControlTransferParameters;-><init>()V

    const/16 v6, 0x21

    invoke-virtual {v4, v6}, Lcom/samsung/android/lib/dexcontrol/fota/chipapi/dexpad/pdic/sec/structure/UsbControlTransferParameters;->setRequestType(I)V

    const/16 v6, 0x9

    invoke-virtual {v4, v6}, Lcom/samsung/android/lib/dexcontrol/fota/chipapi/dexpad/pdic/sec/structure/UsbControlTransferParameters;->setRequest(I)V

    invoke-virtual {v4, v5}, Lcom/samsung/android/lib/dexcontrol/fota/chipapi/dexpad/pdic/sec/structure/UsbControlTransferParameters;->setValue(I)V

    invoke-virtual {v4, v8}, Lcom/samsung/android/lib/dexcontrol/fota/chipapi/dexpad/pdic/sec/structure/UsbControlTransferParameters;->setIndex(I)V

    invoke-virtual {v4, v0}, Lcom/samsung/android/lib/dexcontrol/fota/chipapi/dexpad/pdic/sec/structure/UsbControlTransferParameters;->setBuffer([B)V

    invoke-virtual {v4, v12}, Lcom/samsung/android/lib/dexcontrol/fota/chipapi/dexpad/pdic/sec/structure/UsbControlTransferParameters;->setLength(I)V

    invoke-virtual {v4}, Lcom/samsung/android/lib/dexcontrol/fota/chipapi/dexpad/pdic/sec/structure/UsbControlTransferParameters;->setTimeout()V

    invoke-virtual {p0, v4}, Lcom/samsung/android/lib/dexcontrol/fota/chipapi/dexpad/pdic/sec/protocol/HIDProtocol;->sendData(Lcom/samsung/android/lib/dexcontrol/fota/chipapi/dexpad/pdic/sec/structure/UsbControlTransferParameters;)I

    move-result v6

    return v6
.end method


# virtual methods
.method public checkPdStatus(Lcom/samsung/android/lib/dexcontrol/fota/chipapi/dexpad/pdic/sec/structure/PDStatus;)I
    .locals 2

    const-string/jumbo v0, "HIDProtocol"

    const-string/jumbo v1, "checkPdStatus()"

    invoke-static {v0, v1}, Lcom/samsung/android/lib/dexcontrol/fota/debug/SLog;->m(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/samsung/android/lib/dexcontrol/fota/chipapi/dexpad/pdic/sec/protocol/HIDProtocol;->sendHidReportIdGetTypecPdStatus(Lcom/samsung/android/lib/dexcontrol/fota/chipapi/dexpad/pdic/sec/structure/PDStatus;)I

    move-result v0

    return v0
.end method

.method public clearMetaData(Lcom/samsung/android/lib/dexcontrol/fota/chipapi/dexpad/pdic/sec/CyacdImage;)I
    .locals 8

    const/4 v7, 0x0

    const-string/jumbo v5, "HIDProtocol"

    const-string/jumbo v6, "clearMetadata()"

    invoke-static {v5, v6}, Lcom/samsung/android/lib/dexcontrol/fota/debug/SLog;->m(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/samsung/android/lib/dexcontrol/fota/chipapi/dexpad/pdic/sec/CyacdImage;->recordCount()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {p1, v5}, Lcom/samsung/android/lib/dexcontrol/fota/chipapi/dexpad/pdic/sec/CyacdImage;->getImageRecord(I)Lcom/samsung/android/lib/dexcontrol/fota/chipapi/dexpad/pdic/sec/CyacdImage$CyacdRecord;

    move-result-object v2

    iget v3, v2, Lcom/samsung/android/lib/dexcontrol/fota/chipapi/dexpad/pdic/sec/CyacdImage$CyacdRecord;->rowNum:I

    invoke-virtual {p1}, Lcom/samsung/android/lib/dexcontrol/fota/chipapi/dexpad/pdic/sec/CyacdImage;->recordDataSize()I

    move-result v4

    new-array v0, v4, [B

    iget-object v5, v2, Lcom/samsung/android/lib/dexcontrol/fota/chipapi/dexpad/pdic/sec/CyacdImage$CyacdRecord;->data:[B

    invoke-static {v5, v7, v0, v7, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/16 v1, 0x49

    :goto_0
    const/16 v5, 0x4d

    if-lt v1, v5, :cond_0

    invoke-virtual {p0, v3, v0}, Lcom/samsung/android/lib/dexcontrol/fota/chipapi/dexpad/pdic/sec/protocol/HIDProtocol;->writeFlashRowData(I[B)I

    move-result v5

    return v5

    :cond_0
    aput-byte v7, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public enableI2cBridgeOn(Z)I
    .locals 4

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "enableI2cBridgeOn : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "HIDProtocol"

    invoke-static {v3, v2}, Lcom/samsung/android/lib/dexcontrol/fota/debug/SLog;->m(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0x42

    const/16 v1, 0x30

    if-nez p1, :cond_0

    const/16 v2, 0x30

    invoke-direct {p0, v2}, Lcom/samsung/android/lib/dexcontrol/fota/chipapi/dexpad/pdic/sec/protocol/HIDProtocol;->sendHidRqtCmdI2cBridgeCtrl(I)I

    move-result v2

    return v2

    :cond_0
    const/16 v2, 0x42

    invoke-direct {p0, v2}, Lcom/samsung/android/lib/dexcontrol/fota/chipapi/dexpad/pdic/sec/protocol/HIDProtocol;->sendHidRqtCmdI2cBridgeCtrl(I)I

    move-result v2

    return v2
.end method

.method public enterFlashingMode()I
    .locals 3

    const-string/jumbo v1, "HIDProtocol"

    const-string/jumbo v2, "enterFlashingMode()"

    invoke-static {v1, v2}, Lcom/samsung/android/lib/dexcontrol/fota/debug/SLog;->m(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0x50

    const/16 v1, 0x50

    invoke-direct {p0, v1}, Lcom/samsung/android/lib/dexcontrol/fota/chipapi/dexpad/pdic/sec/protocol/HIDProtocol;->sendHidRqtCmdEnterFlashing(I)I

    move-result v1

    return v1
.end method

.method public getFwInfo(Lcom/samsung/android/lib/dexcontrol/fota/chipapi/dexpad/pdic/sec/structure/FirmwareInfo;)I
    .locals 2

    const-string/jumbo v0, "HIDProtocol"

    const-string/jumbo v1, "getFwInfo()"

    invoke-static {v0, v1}, Lcom/samsung/android/lib/dexcontrol/fota/debug/SLog;->m(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/samsung/android/lib/dexcontrol/fota/chipapi/dexpad/pdic/sec/protocol/HIDProtocol;->sendHidReportIdCyFwInfo(Lcom/samsung/android/lib/dexcontrol/fota/chipapi/dexpad/pdic/sec/structure/FirmwareInfo;)I

    move-result v0

    return v0
.end method

.method public jumpToBootloader()I
    .locals 3

    const-string/jumbo v1, "HIDProtocol"

    const-string/jumbo v2, "jumpToBootloader()"

    invoke-static {v1, v2}, Lcom/samsung/android/lib/dexcontrol/fota/debug/SLog;->m(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0x4a

    const/16 v1, 0x4a

    invoke-direct {p0, v1}, Lcom/samsung/android/lib/dexcontrol/fota/chipapi/dexpad/pdic/sec/protocol/HIDProtocol;->sendHidRqtCmdJump(I)I

    move-result v1

    return v1
.end method

.method public notifyUpdateStart()I
    .locals 2

    const-string/jumbo v0, "HIDProtocol"

    const-string/jumbo v1, "notifyUpdateStart()"

    invoke-static {v0, v1}, Lcom/samsung/android/lib/dexcontrol/fota/debug/SLog;->m(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/lib/dexcontrol/fota/chipapi/dexpad/pdic/sec/protocol/HIDProtocol;->sendHidRqtCmdNotifyUpdateStart()I

    move-result v0

    return v0
.end method

.method public prSwap()I
    .locals 3

    const-string/jumbo v1, "HIDProtocol"

    const-string/jumbo v2, "prSwap()"

    invoke-static {v1, v2}, Lcom/samsung/android/lib/dexcontrol/fota/debug/SLog;->m(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/samsung/android/lib/dexcontrol/fota/chipapi/dexpad/pdic/sec/protocol/HIDProtocol;->sendRqtCmdPdSwapCtrl(I)I

    move-result v1

    return v1
.end method

.method public reset()I
    .locals 3

    const-string/jumbo v1, "HIDProtocol"

    const-string/jumbo v2, "reset()"

    invoke-static {v1, v2}, Lcom/samsung/android/lib/dexcontrol/fota/debug/SLog;->m(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0x52

    const/16 v1, 0x52

    invoke-direct {p0, v1}, Lcom/samsung/android/lib/dexcontrol/fota/chipapi/dexpad/pdic/sec/protocol/HIDProtocol;->sendHidRqtCmdJump(I)I

    move-result v1

    return v1
.end method

.method setUsbInterface(Landroid/hardware/usb/UsbDevice;)Landroid/hardware/usb/UsbInterface;
    .locals 8

    const/4 v7, 0x3

    const/4 v6, 0x0

    const-string/jumbo v4, "HIDProtocol"

    const-string/jumbo v5, "setUsbInterface()"

    invoke-static {v4, v5}, Lcom/samsung/android/lib/dexcontrol/fota/debug/SLog;->m(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p1}, Landroid/hardware/usb/UsbDevice;->getInterfaceCount()I

    move-result v4

    if-lt v1, v4, :cond_0

    const/4 v4, 0x0

    return-object v4

    :cond_0
    invoke-virtual {p1, v1}, Landroid/hardware/usb/UsbDevice;->getInterface(I)Landroid/hardware/usb/UsbInterface;

    move-result-object v2

    invoke-virtual {v2}, Landroid/hardware/usb/UsbInterface;->getEndpointCount()I

    move-result v4

    const/4 v5, 0x1

    if-ge v4, v5, :cond_2

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {v2}, Landroid/hardware/usb/UsbInterface;->getInterfaceClass()I

    move-result v4

    if-ne v4, v7, :cond_1

    invoke-virtual {v2}, Landroid/hardware/usb/UsbInterface;->getInterfaceSubclass()I

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {v2}, Landroid/hardware/usb/UsbInterface;->getInterfaceProtocol()I

    move-result v4

    if-nez v4, :cond_1

    const/4 v3, 0x0

    :goto_1
    invoke-virtual {v2}, Landroid/hardware/usb/UsbInterface;->getEndpointCount()I

    move-result v4

    if-ge v3, v4, :cond_1

    invoke-virtual {v2, v6}, Landroid/hardware/usb/UsbInterface;->getEndpoint(I)Landroid/hardware/usb/UsbEndpoint;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/usb/UsbEndpoint;->getType()I

    move-result v4

    if-eq v4, v7, :cond_4

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_4
    invoke-virtual {v0}, Landroid/hardware/usb/UsbEndpoint;->getDirection()I

    move-result v4

    const/16 v5, 0x80

    if-ne v4, v5, :cond_3

    return-object v2
.end method

.method public validateFirmware(Lcom/samsung/android/lib/dexcontrol/fota/chipapi/dexpad/pdic/sec/CyacdImage;)I
    .locals 3

    invoke-virtual {p1}, Lcom/samsung/android/lib/dexcontrol/fota/chipapi/dexpad/pdic/sec/CyacdImage;->getImageType()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "validateFirmware : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "HIDProtocol"

    invoke-static {v2, v1}, Lcom/samsung/android/lib/dexcontrol/fota/debug/SLog;->m(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/samsung/android/lib/dexcontrol/fota/chipapi/dexpad/pdic/sec/protocol/HIDProtocol;->sendHidRqtCmdValidateFw(I)I

    move-result v1

    return v1
.end method

.method writeFlashRowData(I[B)I
    .locals 9

    const/4 v8, 0x2

    const/4 v7, 0x0

    const/16 v6, -0x1e

    const/4 v5, 0x1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "writeFlashRowData : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "HIDProtocol"

    invoke-static {v4, v3}, Lcom/samsung/android/lib/dexcontrol/fota/debug/SLog;->m(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p2, :cond_1

    :cond_0
    const/4 v3, -0x1

    return v3

    :cond_1
    array-length v3, p2

    if-lt v3, v5, :cond_0

    array-length v3, p2

    add-int/lit8 v1, v3, 0x4

    array-length v3, p2

    add-int/lit8 v3, v3, 0x4

    new-array v0, v3, [B

    aput-byte v6, v0, v7

    const/16 v3, 0x46

    aput-byte v3, v0, v5

    and-int/lit16 v3, p1, 0xff

    int-to-byte v3, v3

    int-to-byte v3, v3

    aput-byte v3, v0, v8

    shr-int/lit8 v3, p1, 0x8

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    int-to-byte v3, v3

    const/4 v4, 0x3

    aput-byte v3, v0, v4

    array-length v3, p2

    const/4 v4, 0x4

    invoke-static {p2, v7, v0, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-instance v2, Lcom/samsung/android/lib/dexcontrol/fota/chipapi/dexpad/pdic/sec/structure/UsbControlTransferParameters;

    invoke-direct {v2}, Lcom/samsung/android/lib/dexcontrol/fota/chipapi/dexpad/pdic/sec/structure/UsbControlTransferParameters;-><init>()V

    const/16 v3, 0x20

    invoke-virtual {v2, v3}, Lcom/samsung/android/lib/dexcontrol/fota/chipapi/dexpad/pdic/sec/structure/UsbControlTransferParameters;->setRequestType(I)V

    const/16 v3, 0x9

    invoke-virtual {v2, v3}, Lcom/samsung/android/lib/dexcontrol/fota/chipapi/dexpad/pdic/sec/structure/UsbControlTransferParameters;->setRequest(I)V

    invoke-static {v6, v8}, Lcom/samsung/android/lib/dexcontrol/fota/chipapi/dexpad/pdic/sec/util/Utils;->combineWord(BB)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/lib/dexcontrol/fota/chipapi/dexpad/pdic/sec/structure/UsbControlTransferParameters;->setValue(I)V

    invoke-virtual {v2, v5}, Lcom/samsung/android/lib/dexcontrol/fota/chipapi/dexpad/pdic/sec/structure/UsbControlTransferParameters;->setIndex(I)V

    invoke-virtual {v2, v0}, Lcom/samsung/android/lib/dexcontrol/fota/chipapi/dexpad/pdic/sec/structure/UsbControlTransferParameters;->setBuffer([B)V

    invoke-virtual {v2, v1}, Lcom/samsung/android/lib/dexcontrol/fota/chipapi/dexpad/pdic/sec/structure/UsbControlTransferParameters;->setLength(I)V

    invoke-virtual {v2}, Lcom/samsung/android/lib/dexcontrol/fota/chipapi/dexpad/pdic/sec/structure/UsbControlTransferParameters;->setTimeout()V

    invoke-virtual {p0, v2}, Lcom/samsung/android/lib/dexcontrol/fota/chipapi/dexpad/pdic/sec/protocol/HIDProtocol;->sendData(Lcom/samsung/android/lib/dexcontrol/fota/chipapi/dexpad/pdic/sec/structure/UsbControlTransferParameters;)I

    move-result v3

    return v3
.end method
