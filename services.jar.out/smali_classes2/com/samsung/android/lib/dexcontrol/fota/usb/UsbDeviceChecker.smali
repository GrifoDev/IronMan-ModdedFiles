.class public Lcom/samsung/android/lib/dexcontrol/fota/usb/UsbDeviceChecker;
.super Ljava/lang/Object;
.source "UsbDeviceChecker.java"

# interfaces
.implements Lcom/samsung/android/lib/dexcontrol/fota/usb/IUsbDeviceChecker;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/lib/dexcontrol/fota/usb/UsbDeviceChecker$WaitHandler;
    }
.end annotation


# static fields
.field private static final ACTION_HDMI_PLUGGED:Ljava/lang/String; = "android.intent.action.HDMI_PLUGGED"

.field private static final ACTION_USB_PERMISSION:Ljava/lang/String; = "com.samsung.android.lib.dexcontrol.usb.permission"

.field private static final DELAY_HDMI_WAIT_TIME:I = 0x1388

.field private static final DELAY_REATTACH_WAIT_TIME:I = 0xfa0

.field private static final TAG:Ljava/lang/String; = "UsbDeviceChecker"


# instance fields
.field private final PRODUCT_ID_DEX1:I

.field private final PRODUCT_ID_DEX2:I

.field private final PRODUCT_ID_DEX2_BOOTLOADER:I

.field private final PRODUCT_ID_DEX2_I2C:I

.field private mContext:Landroid/content/Context;

.field private mHdmiWaitHandler:Lcom/samsung/android/lib/dexcontrol/fota/usb/UsbDeviceChecker$WaitHandler;

.field private mIsHdmiConnected:Z

.field private mProductId:I

.field private mReAttachWaitHandler:Lcom/samsung/android/lib/dexcontrol/fota/usb/UsbDeviceChecker$WaitHandler;

.field private mUsbDevice:Landroid/hardware/usb/UsbDevice;

.field private mUsbDeviceListener:Lcom/samsung/android/lib/dexcontrol/fota/usb/IUsbDeviceChecker$UsbDeviceListener;

.field private mUsbDeviceReceiver:Landroid/content/BroadcastReceiver;

.field private mUsbManager:Landroid/hardware/usb/UsbManager;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/lib/dexcontrol/fota/usb/UsbDeviceChecker;->mContext:Landroid/content/Context;

    iput-object v1, p0, Lcom/samsung/android/lib/dexcontrol/fota/usb/UsbDeviceChecker;->mUsbDeviceListener:Lcom/samsung/android/lib/dexcontrol/fota/usb/IUsbDeviceChecker$UsbDeviceListener;

    iput-object v1, p0, Lcom/samsung/android/lib/dexcontrol/fota/usb/UsbDeviceChecker;->mUsbManager:Landroid/hardware/usb/UsbManager;

    iput-object v1, p0, Lcom/samsung/android/lib/dexcontrol/fota/usb/UsbDeviceChecker;->mUsbDevice:Landroid/hardware/usb/UsbDevice;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/lib/dexcontrol/fota/usb/UsbDeviceChecker;->mIsHdmiConnected:Z

    iput-object v1, p0, Lcom/samsung/android/lib/dexcontrol/fota/usb/UsbDeviceChecker;->mHdmiWaitHandler:Lcom/samsung/android/lib/dexcontrol/fota/usb/UsbDeviceChecker$WaitHandler;

    iput-object v1, p0, Lcom/samsung/android/lib/dexcontrol/fota/usb/UsbDeviceChecker;->mReAttachWaitHandler:Lcom/samsung/android/lib/dexcontrol/fota/usb/UsbDeviceChecker$WaitHandler;

    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/lib/dexcontrol/fota/usb/UsbDeviceChecker;->mProductId:I

    const v0, 0xa020

    iput v0, p0, Lcom/samsung/android/lib/dexcontrol/fota/usb/UsbDeviceChecker;->PRODUCT_ID_DEX1:I

    const v0, 0xa029

    iput v0, p0, Lcom/samsung/android/lib/dexcontrol/fota/usb/UsbDeviceChecker;->PRODUCT_ID_DEX2:I

    const v0, 0xf645

    iput v0, p0, Lcom/samsung/android/lib/dexcontrol/fota/usb/UsbDeviceChecker;->PRODUCT_ID_DEX2_BOOTLOADER:I

    const v0, 0xf650

    iput v0, p0, Lcom/samsung/android/lib/dexcontrol/fota/usb/UsbDeviceChecker;->PRODUCT_ID_DEX2_I2C:I

    new-instance v0, Lcom/samsung/android/lib/dexcontrol/fota/usb/UsbDeviceChecker$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/lib/dexcontrol/fota/usb/UsbDeviceChecker$2;-><init>(Lcom/samsung/android/lib/dexcontrol/fota/usb/UsbDeviceChecker;)V

    iput-object v0, p0, Lcom/samsung/android/lib/dexcontrol/fota/usb/UsbDeviceChecker;->mUsbDeviceReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/lib/dexcontrol/fota/usb/UsbDeviceChecker;)Lcom/samsung/android/lib/dexcontrol/fota/usb/IUsbDeviceChecker$UsbDeviceListener;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/lib/dexcontrol/fota/usb/UsbDeviceChecker;->mUsbDeviceListener:Lcom/samsung/android/lib/dexcontrol/fota/usb/IUsbDeviceChecker$UsbDeviceListener;

    return-object v0
.end method

.method static synthetic access$100(Lcom/samsung/android/lib/dexcontrol/fota/usb/UsbDeviceChecker;I)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/samsung/android/lib/dexcontrol/fota/usb/UsbDeviceChecker;->isDexSeries(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/samsung/android/lib/dexcontrol/fota/usb/UsbDeviceChecker;Landroid/hardware/usb/UsbDevice;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/lib/dexcontrol/fota/usb/UsbDeviceChecker;->setProductId(Landroid/hardware/usb/UsbDevice;)V

    return-void
.end method

.method static synthetic access$300(Lcom/samsung/android/lib/dexcontrol/fota/usb/UsbDeviceChecker;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/lib/dexcontrol/fota/usb/UsbDeviceChecker;->handleDexAttach()V

    return-void
.end method

.method static synthetic access$400(Lcom/samsung/android/lib/dexcontrol/fota/usb/UsbDeviceChecker;)Landroid/hardware/usb/UsbDevice;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/lib/dexcontrol/fota/usb/UsbDeviceChecker;->mUsbDevice:Landroid/hardware/usb/UsbDevice;

    return-object v0
.end method

.method static synthetic access$402(Lcom/samsung/android/lib/dexcontrol/fota/usb/UsbDeviceChecker;Landroid/hardware/usb/UsbDevice;)Landroid/hardware/usb/UsbDevice;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/lib/dexcontrol/fota/usb/UsbDeviceChecker;->mUsbDevice:Landroid/hardware/usb/UsbDevice;

    return-object p1
.end method

.method static synthetic access$500(Lcom/samsung/android/lib/dexcontrol/fota/usb/UsbDeviceChecker;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/lib/dexcontrol/fota/usb/UsbDeviceChecker;->mIsHdmiConnected:Z

    return v0
.end method

.method static synthetic access$502(Lcom/samsung/android/lib/dexcontrol/fota/usb/UsbDeviceChecker;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/lib/dexcontrol/fota/usb/UsbDeviceChecker;->mIsHdmiConnected:Z

    return p1
.end method

.method static synthetic access$600(Lcom/samsung/android/lib/dexcontrol/fota/usb/UsbDeviceChecker;)Lcom/samsung/android/lib/dexcontrol/fota/usb/UsbDeviceChecker$WaitHandler;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/lib/dexcontrol/fota/usb/UsbDeviceChecker;->mHdmiWaitHandler:Lcom/samsung/android/lib/dexcontrol/fota/usb/UsbDeviceChecker$WaitHandler;

    return-object v0
.end method

.method private checkHdmiConnected()Z
    .locals 6

    const/4 v4, 0x0

    new-instance v1, Ljava/io/File;

    const-string/jumbo v5, "/sys/devices/virtual/switch/hdmi/state"

    invoke-direct {v1, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_0

    :goto_0
    :try_start_0
    new-instance v2, Ljava/util/Scanner;

    invoke-direct {v2, v1}, Ljava/util/Scanner;-><init>(Ljava/io/File;)V

    invoke-virtual {v2}, Ljava/util/Scanner;->nextInt()I

    move-result v3

    invoke-virtual {v2}, Ljava/util/Scanner;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-gtz v3, :cond_1

    :goto_1
    return v4

    :cond_0
    new-instance v1, Ljava/io/File;

    const-string/jumbo v5, "/sys/class/switch/hdmi/state"

    invoke-direct {v1, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const/4 v4, 0x1

    goto :goto_1

    :catch_0
    move-exception v0

    return v4
.end method

.method private handleDexAttach()V
    .locals 3

    const/4 v2, 0x0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "handleDexAttach HDMI connect state = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/samsung/android/lib/dexcontrol/fota/usb/UsbDeviceChecker;->mIsHdmiConnected:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "UsbDeviceChecker"

    invoke-static {v1, v0}, Lcom/samsung/android/lib/dexcontrol/fota/debug/SLog;->m(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/lib/dexcontrol/fota/usb/UsbDeviceChecker;->mUsbDevice:Landroid/hardware/usb/UsbDevice;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/lib/dexcontrol/fota/usb/UsbDeviceChecker;->mReAttachWaitHandler:Lcom/samsung/android/lib/dexcontrol/fota/usb/UsbDeviceChecker$WaitHandler;

    if-nez v0, :cond_3

    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/samsung/android/lib/dexcontrol/fota/usb/UsbDeviceChecker;->mUsbDeviceListener:Lcom/samsung/android/lib/dexcontrol/fota/usb/IUsbDeviceChecker$UsbDeviceListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/lib/dexcontrol/fota/usb/UsbDeviceChecker;->mUsbDeviceListener:Lcom/samsung/android/lib/dexcontrol/fota/usb/IUsbDeviceChecker$UsbDeviceListener;

    iget v1, p0, Lcom/samsung/android/lib/dexcontrol/fota/usb/UsbDeviceChecker;->mProductId:I

    iget-object v2, p0, Lcom/samsung/android/lib/dexcontrol/fota/usb/UsbDeviceChecker;->mUsbDevice:Landroid/hardware/usb/UsbDevice;

    invoke-interface {v0, v1, v2}, Lcom/samsung/android/lib/dexcontrol/fota/usb/IUsbDeviceChecker$UsbDeviceListener;->onDeviceAttached(ILandroid/hardware/usb/UsbDevice;)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/samsung/android/lib/dexcontrol/fota/usb/UsbDeviceChecker;->mReAttachWaitHandler:Lcom/samsung/android/lib/dexcontrol/fota/usb/UsbDeviceChecker$WaitHandler;

    invoke-virtual {v0}, Lcom/samsung/android/lib/dexcontrol/fota/usb/UsbDeviceChecker$WaitHandler;->isWaiting()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/samsung/android/lib/dexcontrol/fota/usb/UsbDeviceChecker;->mReAttachWaitHandler:Lcom/samsung/android/lib/dexcontrol/fota/usb/UsbDeviceChecker$WaitHandler;

    invoke-virtual {v0}, Lcom/samsung/android/lib/dexcontrol/fota/usb/UsbDeviceChecker$WaitHandler;->end()V

    iput-object v2, p0, Lcom/samsung/android/lib/dexcontrol/fota/usb/UsbDeviceChecker;->mReAttachWaitHandler:Lcom/samsung/android/lib/dexcontrol/fota/usb/UsbDeviceChecker$WaitHandler;

    goto :goto_1
.end method

.method private initHdmiWaitHandler()V
    .locals 2

    new-instance v0, Lcom/samsung/android/lib/dexcontrol/fota/usb/UsbDeviceChecker$WaitHandler;

    invoke-direct {v0}, Lcom/samsung/android/lib/dexcontrol/fota/usb/UsbDeviceChecker$WaitHandler;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/lib/dexcontrol/fota/usb/UsbDeviceChecker;->mHdmiWaitHandler:Lcom/samsung/android/lib/dexcontrol/fota/usb/UsbDeviceChecker$WaitHandler;

    iget-object v0, p0, Lcom/samsung/android/lib/dexcontrol/fota/usb/UsbDeviceChecker;->mHdmiWaitHandler:Lcom/samsung/android/lib/dexcontrol/fota/usb/UsbDeviceChecker$WaitHandler;

    new-instance v1, Lcom/samsung/android/lib/dexcontrol/fota/usb/UsbDeviceChecker$3;

    invoke-direct {v1, p0}, Lcom/samsung/android/lib/dexcontrol/fota/usb/UsbDeviceChecker$3;-><init>(Lcom/samsung/android/lib/dexcontrol/fota/usb/UsbDeviceChecker;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/lib/dexcontrol/fota/usb/UsbDeviceChecker$WaitHandler;->setListener(Lcom/samsung/android/lib/dexcontrol/fota/usb/UsbDeviceChecker$WaitHandler$WaitHandlerListener;)V

    return-void
.end method

.method private isDexSeries(I)Z
    .locals 2

    const-string/jumbo v0, "UsbDeviceChecker"

    const-string/jumbo v1, "isDexSeries()"

    invoke-static {v0, v1}, Lcom/samsung/android/lib/dexcontrol/fota/debug/SLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    sparse-switch p1, :sswitch_data_0

    const/4 v0, 0x0

    return v0

    :sswitch_0
    const/4 v0, 0x1

    return v0

    :sswitch_data_0
    .sparse-switch
        0xa020 -> :sswitch_0
        0xa029 -> :sswitch_0
        0xf645 -> :sswitch_0
        0xf650 -> :sswitch_0
    .end sparse-switch
.end method

.method private setProductId(Landroid/hardware/usb/UsbDevice;)V
    .locals 2

    iput-object p1, p0, Lcom/samsung/android/lib/dexcontrol/fota/usb/UsbDeviceChecker;->mUsbDevice:Landroid/hardware/usb/UsbDevice;

    invoke-static {}, Lcom/samsung/android/lib/dexcontrol/fota/debug/DexFotaLibDataObserver;->getInstance()Lcom/samsung/android/lib/dexcontrol/fota/debug/DexFotaLibDataObserver;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/lib/dexcontrol/fota/debug/DexFotaLibDataObserver;->setUsbDevice(Landroid/hardware/usb/UsbDevice;)V

    invoke-virtual {p1}, Landroid/hardware/usb/UsbDevice;->getProductId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/lib/dexcontrol/fota/usb/UsbDeviceChecker;->mProductId:I

    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setProductId : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/hardware/usb/UsbDevice;->getProductId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " >> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/lib/dexcontrol/fota/usb/UsbDeviceChecker;->mProductId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "UsbDeviceChecker"

    invoke-static {v1, v0}, Lcom/samsung/android/lib/dexcontrol/fota/debug/SLog;->m(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :sswitch_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/lib/dexcontrol/fota/usb/UsbDeviceChecker;->mProductId:I

    goto :goto_0

    :sswitch_1
    const/4 v0, 0x1

    iput v0, p0, Lcom/samsung/android/lib/dexcontrol/fota/usb/UsbDeviceChecker;->mProductId:I

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0xa020 -> :sswitch_0
        0xa029 -> :sswitch_1
        0xf645 -> :sswitch_1
        0xf650 -> :sswitch_1
    .end sparse-switch
.end method


# virtual methods
.method public create(Landroid/content/Context;)V
    .locals 9

    const-string/jumbo v5, "UsbDeviceChecker"

    const-string/jumbo v6, "create()"

    invoke-static {v5, v6}, Lcom/samsung/android/lib/dexcontrol/fota/debug/SLog;->m(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/samsung/android/lib/dexcontrol/fota/usb/UsbDeviceChecker;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/samsung/android/lib/dexcontrol/fota/usb/UsbDeviceChecker;->mContext:Landroid/content/Context;

    const-string/jumbo v6, "usb"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/hardware/usb/UsbManager;

    iput-object v5, p0, Lcom/samsung/android/lib/dexcontrol/fota/usb/UsbDeviceChecker;->mUsbManager:Landroid/hardware/usb/UsbManager;

    iget-object v5, p0, Lcom/samsung/android/lib/dexcontrol/fota/usb/UsbDeviceChecker;->mUsbManager:Landroid/hardware/usb/UsbManager;

    invoke-virtual {v5}, Landroid/hardware/usb/UsbManager;->getDeviceList()Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_1

    invoke-direct {p0}, Lcom/samsung/android/lib/dexcontrol/fota/usb/UsbDeviceChecker;->checkHdmiConnected()Z

    move-result v5

    iput-boolean v5, p0, Lcom/samsung/android/lib/dexcontrol/fota/usb/UsbDeviceChecker;->mIsHdmiConnected:Z

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "create() mIsHdmiConnected="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, p0, Lcom/samsung/android/lib/dexcontrol/fota/usb/UsbDeviceChecker;->mIsHdmiConnected:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "UsbDeviceChecker"

    invoke-static {v6, v5}, Lcom/samsung/android/lib/dexcontrol/fota/debug/SLog;->m(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/lib/dexcontrol/fota/debug/DexFotaLibDataObserver;->getInstance()Lcom/samsung/android/lib/dexcontrol/fota/debug/DexFotaLibDataObserver;

    move-result-object v6

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "HDMI is "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-boolean v5, p0, Lcom/samsung/android/lib/dexcontrol/fota/usb/UsbDeviceChecker;->mIsHdmiConnected:Z

    const/4 v8, 0x1

    if-eq v5, v8, :cond_2

    const-string/jumbo v5, "Not connected"

    :goto_1
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Lcom/samsung/android/lib/dexcontrol/fota/debug/DexFotaLibDataObserver;->setUpdateMessage(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/lib/dexcontrol/fota/usb/UsbDeviceChecker;->initHdmiWaitHandler()V

    new-instance v2, Landroid/content/IntentFilter;

    const-string/jumbo v5, "com.samsung.android.lib.dexcontrol.usb.permission"

    invoke-direct {v2, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string/jumbo v5, "android.hardware.usb.action.USB_DEVICE_ATTACHED"

    invoke-virtual {v2, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v5, "android.hardware.usb.action.USB_DEVICE_DETACHED"

    invoke-virtual {v2, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v5, "android.intent.action.HDMI_PLUGGED"

    invoke-virtual {v2, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/samsung/android/lib/dexcontrol/fota/usb/UsbDeviceChecker;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/samsung/android/lib/dexcontrol/fota/usb/UsbDeviceChecker;->mUsbDeviceReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v5, v6, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/usb/UsbDevice;

    invoke-virtual {v4}, Landroid/hardware/usb/UsbDevice;->getProductId()I

    move-result v3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "pId = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "UsbDeviceChecker"

    invoke-static {v6, v5}, Lcom/samsung/android/lib/dexcontrol/fota/debug/SLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v3}, Lcom/samsung/android/lib/dexcontrol/fota/usb/UsbDeviceChecker;->isDexSeries(I)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-direct {p0, v4}, Lcom/samsung/android/lib/dexcontrol/fota/usb/UsbDeviceChecker;->setProductId(Landroid/hardware/usb/UsbDevice;)V

    goto/16 :goto_0

    :cond_2
    const-string/jumbo v5, "Connected"

    goto :goto_1
.end method

.method public destroy()V
    .locals 2

    const-string/jumbo v0, "UsbDeviceChecker"

    const-string/jumbo v1, "destroy()"

    invoke-static {v0, v1}, Lcom/samsung/android/lib/dexcontrol/fota/debug/SLog;->m(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/lib/dexcontrol/fota/usb/UsbDeviceChecker;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/lib/dexcontrol/fota/usb/UsbDeviceChecker;->mUsbDeviceReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method public getConnectedDexProductId()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/lib/dexcontrol/fota/usb/UsbDeviceChecker;->mProductId:I

    return v0
.end method

.method public getUsbDevice()Landroid/hardware/usb/UsbDevice;
    .locals 2

    const-string/jumbo v0, "UsbDeviceChecker"

    const-string/jumbo v1, "getUsbDevice()"

    invoke-static {v0, v1}, Lcom/samsung/android/lib/dexcontrol/fota/debug/SLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/lib/dexcontrol/fota/usb/UsbDeviceChecker;->mUsbDevice:Landroid/hardware/usb/UsbDevice;

    return-object v0
.end method

.method public isDexDeviceConnected()Z
    .locals 2

    const-string/jumbo v0, "UsbDeviceChecker"

    const-string/jumbo v1, "isDexDeviceConnected()"

    invoke-static {v0, v1}, Lcom/samsung/android/lib/dexcontrol/fota/debug/SLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget v0, p0, Lcom/samsung/android/lib/dexcontrol/fota/usb/UsbDeviceChecker;->mProductId:I

    packed-switch v0, :pswitch_data_0

    const/4 v0, 0x0

    return v0

    :pswitch_0
    iget-object v0, p0, Lcom/samsung/android/lib/dexcontrol/fota/usb/UsbDeviceChecker;->mUsbManager:Landroid/hardware/usb/UsbManager;

    iget-object v1, p0, Lcom/samsung/android/lib/dexcontrol/fota/usb/UsbDeviceChecker;->mUsbDevice:Landroid/hardware/usb/UsbDevice;

    invoke-virtual {v0, v1}, Landroid/hardware/usb/UsbManager;->hasPermission(Landroid/hardware/usb/UsbDevice;)Z

    move-result v0

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public requestCheckHdmiConnected()V
    .locals 3

    const/4 v2, 0x1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "requestCheckHdmiConnected() mIsHdmiConnected="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/samsung/android/lib/dexcontrol/fota/usb/UsbDeviceChecker;->mIsHdmiConnected:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "UsbDeviceChecker"

    invoke-static {v1, v0}, Lcom/samsung/android/lib/dexcontrol/fota/debug/SLog;->m(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/samsung/android/lib/dexcontrol/fota/usb/UsbDeviceChecker;->mIsHdmiConnected:Z

    if-eq v0, v2, :cond_1

    invoke-static {}, Lcom/samsung/android/lib/dexcontrol/fota/debug/DexFotaLibDataObserver;->getInstance()Lcom/samsung/android/lib/dexcontrol/fota/debug/DexFotaLibDataObserver;

    move-result-object v0

    const-string/jumbo v1, "Waitting HDMI Connection..."

    invoke-virtual {v0, v1}, Lcom/samsung/android/lib/dexcontrol/fota/debug/DexFotaLibDataObserver;->setUpdateMessage(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/lib/dexcontrol/fota/usb/UsbDeviceChecker;->mHdmiWaitHandler:Lcom/samsung/android/lib/dexcontrol/fota/usb/UsbDeviceChecker$WaitHandler;

    const/16 v1, 0x1388

    invoke-virtual {v0, v1}, Lcom/samsung/android/lib/dexcontrol/fota/usb/UsbDeviceChecker$WaitHandler;->start(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/lib/dexcontrol/fota/usb/UsbDeviceChecker;->mUsbDeviceListener:Lcom/samsung/android/lib/dexcontrol/fota/usb/IUsbDeviceChecker$UsbDeviceListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/lib/dexcontrol/fota/usb/UsbDeviceChecker;->mUsbDeviceListener:Lcom/samsung/android/lib/dexcontrol/fota/usb/IUsbDeviceChecker$UsbDeviceListener;

    invoke-interface {v0, v2}, Lcom/samsung/android/lib/dexcontrol/fota/usb/IUsbDeviceChecker$UsbDeviceListener;->onHdmiConnected(Z)V

    goto :goto_0
.end method

.method public requestWaitReAttach()V
    .locals 2

    const-string/jumbo v0, "UsbDeviceChecker"

    const-string/jumbo v1, "requestWaitReAttach"

    invoke-static {v0, v1}, Lcom/samsung/android/lib/dexcontrol/fota/debug/SLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/samsung/android/lib/dexcontrol/fota/usb/UsbDeviceChecker$WaitHandler;

    invoke-direct {v0}, Lcom/samsung/android/lib/dexcontrol/fota/usb/UsbDeviceChecker$WaitHandler;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/lib/dexcontrol/fota/usb/UsbDeviceChecker;->mReAttachWaitHandler:Lcom/samsung/android/lib/dexcontrol/fota/usb/UsbDeviceChecker$WaitHandler;

    iget-object v0, p0, Lcom/samsung/android/lib/dexcontrol/fota/usb/UsbDeviceChecker;->mReAttachWaitHandler:Lcom/samsung/android/lib/dexcontrol/fota/usb/UsbDeviceChecker$WaitHandler;

    new-instance v1, Lcom/samsung/android/lib/dexcontrol/fota/usb/UsbDeviceChecker$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/lib/dexcontrol/fota/usb/UsbDeviceChecker$1;-><init>(Lcom/samsung/android/lib/dexcontrol/fota/usb/UsbDeviceChecker;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/lib/dexcontrol/fota/usb/UsbDeviceChecker$WaitHandler;->setListener(Lcom/samsung/android/lib/dexcontrol/fota/usb/UsbDeviceChecker$WaitHandler$WaitHandlerListener;)V

    iget-object v0, p0, Lcom/samsung/android/lib/dexcontrol/fota/usb/UsbDeviceChecker;->mReAttachWaitHandler:Lcom/samsung/android/lib/dexcontrol/fota/usb/UsbDeviceChecker$WaitHandler;

    const/16 v1, 0xfa0

    invoke-virtual {v0, v1}, Lcom/samsung/android/lib/dexcontrol/fota/usb/UsbDeviceChecker$WaitHandler;->start(I)V

    return-void
.end method

.method public setListener(Lcom/samsung/android/lib/dexcontrol/fota/usb/IUsbDeviceChecker$UsbDeviceListener;)V
    .locals 2

    const-string/jumbo v0, "UsbDeviceChecker"

    const-string/jumbo v1, "setListener()"

    invoke-static {v0, v1}, Lcom/samsung/android/lib/dexcontrol/fota/debug/SLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/samsung/android/lib/dexcontrol/fota/usb/UsbDeviceChecker;->mUsbDeviceListener:Lcom/samsung/android/lib/dexcontrol/fota/usb/IUsbDeviceChecker$UsbDeviceListener;

    return-void
.end method
