.class abstract Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperBase;
.super Ljava/lang/Object;
.source "ChipUpdateHelperBase.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperBase$ChipUpdateHelperListener;
    }
.end annotation


# static fields
.field public static final NOTIFY_OPTION_FOTA_FAIL:I = 0x1

.field public static final NOTIFY_OPTION_RESET_AFTER_FOTA:I = 0x3

.field public static final NOTIFY_OPTION_RESET_NONE_AFTER_FOTA:I = 0x4

.field public static final NOTIFY_OPTION_RESET_PREPARE_FOTA:I = 0x2

.field public static final RESET_OPTION_CHANGE_PROTOCOL:I = 0x2

.field public static final RESET_OPTION_NONE:I = 0x0

.field public static final RESET_OPTION_NORMAL:I = 0x1

.field public static final START_OPTION_HDMI_USE:I = 0x1

.field public static final START_OPTION_NONE:I


# instance fields
.field private mChipId:Ljava/lang/String;

.field private mFilePath:Ljava/lang/String;

.field private mUsbDevice:Landroid/hardware/usb/UsbDevice;


# direct methods
.method constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperBase;->mChipId:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperBase;->mFilePath:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperBase;->mUsbDevice:Landroid/hardware/usb/UsbDevice;

    return-void
.end method


# virtual methods
.method abstract close()V
.end method

.method create(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperBase;->mChipId:Ljava/lang/String;

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iput-object p1, p0, Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperBase;->mChipId:Ljava/lang/String;

    goto :goto_0
.end method

.method create(Ljava/lang/String;Landroid/hardware/usb/UsbDevice;)V
    .locals 1

    invoke-virtual {p0, p1}, Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperBase;->create(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperBase;->mUsbDevice:Landroid/hardware/usb/UsbDevice;

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iput-object p2, p0, Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperBase;->mUsbDevice:Landroid/hardware/usb/UsbDevice;

    goto :goto_0
.end method

.method abstract destroy()V
.end method

.method getChipId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperBase;->mChipId:Ljava/lang/String;

    return-object v0
.end method

.method abstract getChipInfo()Lcom/samsung/android/lib/dexcontrol/fota/data/SDCBinaryInfo;
.end method

.method abstract getResetOption()I
.end method

.method abstract getStartOption()I
.end method

.method getUpdateFilePath()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperBase;->mFilePath:Ljava/lang/String;

    return-object v0
.end method

.method abstract isConnected()Z
.end method

.method abstract notifyAttach(Landroid/hardware/usb/UsbDeviceConnection;Landroid/hardware/usb/UsbDevice;Z)V
.end method

.method abstract open()Z
.end method

.method abstract requestUpdate()V
.end method

.method abstract setListener(Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperBase$ChipUpdateHelperListener;)V
.end method

.method abstract setResetOption(I)V
.end method

.method setUpdateFilePath(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperBase;->mFilePath:Ljava/lang/String;

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iput-object p1, p0, Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperBase;->mFilePath:Ljava/lang/String;

    goto :goto_0
.end method
