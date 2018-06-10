.class public Lcom/samsung/android/lib/dexcontrol/fota/chipapi/dexpad/pdic/sec/I2CDeviceInfo;
.super Ljava/lang/Object;
.source "I2CDeviceInfo.java"


# instance fields
.field private flashRowSize:I

.field private fwMode:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getFlashRowSize()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/lib/dexcontrol/fota/chipapi/dexpad/pdic/sec/I2CDeviceInfo;->flashRowSize:I

    return v0
.end method

.method public getI2cDeviceMode()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/lib/dexcontrol/fota/chipapi/dexpad/pdic/sec/I2CDeviceInfo;->fwMode:I

    return v0
.end method

.method public isBootMode()Z
    .locals 2

    const/4 v0, 0x0

    iget v1, p0, Lcom/samsung/android/lib/dexcontrol/fota/chipapi/dexpad/pdic/sec/I2CDeviceInfo;->fwMode:I

    if-eqz v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public updateI2CDeviceInfo(B)V
    .locals 2

    and-int/lit8 v0, p1, 0x30

    if-eqz v0, :cond_0

    const/16 v0, 0x100

    :goto_0
    iput v0, p0, Lcom/samsung/android/lib/dexcontrol/fota/chipapi/dexpad/pdic/sec/I2CDeviceInfo;->flashRowSize:I

    and-int/lit8 v0, p1, 0x3

    iput v0, p0, Lcom/samsung/android/lib/dexcontrol/fota/chipapi/dexpad/pdic/sec/I2CDeviceInfo;->fwMode:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "update : fwMode = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/lib/dexcontrol/fota/chipapi/dexpad/pdic/sec/I2CDeviceInfo;->fwMode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "I2CDeviceInfo"

    invoke-static {v1, v0}, Lcom/samsung/android/lib/dexcontrol/fota/debug/SLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const/16 v0, 0x80

    goto :goto_0
.end method
