.class public Lcom/samsung/android/lib/dexcontrol/fota/manager/SDCFotaManager;
.super Ljava/lang/Object;
.source "SDCFotaManager.java"

# interfaces
.implements Lcom/samsung/android/lib/dexcontrol/fota/manager/ISDCFotaManager;


# static fields
.field private static final STATE_CHECKING_VERSION:I = 0x5

.field private static final STATE_CREATING:I = 0x1

.field private static final STATE_DISCONNECTED_CHIP:I = 0x2

.field private static final STATE_NOT_CREATED:I = 0x0

.field private static final STATE_UPDATE_AVAILABLE:I = 0x4

.field private static final STATE_UPDATE_NOT_AVAILABLE:I = 0x3

.field private static final STATE_UPDATING:I = 0x6

.field private static final TAG:Ljava/lang/String; = "SDCFotaManager"


# instance fields
.field private mBinaryInfoList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/lib/dexcontrol/fota/data/SDCBinaryInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mChipUpdateHelperManager:Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperManager;

.field private mContext:Landroid/content/Context;

.field private mEventHandlerManager:Lcom/samsung/android/lib/dexcontrol/fota/manager/EventHandlerManager;

.field private mFotaServerManager:Lcom/samsung/android/lib/dexcontrol/fota/server/FotaServerManager;

.field private mIsCheckedHdmiConnection:Z

.field private mIsNotifiedDetachForUpdate:Z

.field private mLock:Ljava/util/concurrent/locks/Lock;

.field private mProductId:Ljava/lang/String;

.field private mState:I

.field private mUsbDeviceChecker:Lcom/samsung/android/lib/dexcontrol/fota/usb/UsbDeviceChecker;


# direct methods
.method public constructor <init>()V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/lib/dexcontrol/fota/manager/SDCFotaManager;->mContext:Landroid/content/Context;

    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/lib/dexcontrol/fota/manager/SDCFotaManager;->mLock:Ljava/util/concurrent/locks/Lock;

    iput-object v1, p0, Lcom/samsung/android/lib/dexcontrol/fota/manager/SDCFotaManager;->mEventHandlerManager:Lcom/samsung/android/lib/dexcontrol/fota/manager/EventHandlerManager;

    iput-object v1, p0, Lcom/samsung/android/lib/dexcontrol/fota/manager/SDCFotaManager;->mUsbDeviceChecker:Lcom/samsung/android/lib/dexcontrol/fota/usb/UsbDeviceChecker;

    iput-object v1, p0, Lcom/samsung/android/lib/dexcontrol/fota/manager/SDCFotaManager;->mFotaServerManager:Lcom/samsung/android/lib/dexcontrol/fota/server/FotaServerManager;

    iput-object v1, p0, Lcom/samsung/android/lib/dexcontrol/fota/manager/SDCFotaManager;->mChipUpdateHelperManager:Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperManager;

    iput v2, p0, Lcom/samsung/android/lib/dexcontrol/fota/manager/SDCFotaManager;->mState:I

    iput-object v1, p0, Lcom/samsung/android/lib/dexcontrol/fota/manager/SDCFotaManager;->mBinaryInfoList:Ljava/util/ArrayList;

    iput-boolean v2, p0, Lcom/samsung/android/lib/dexcontrol/fota/manager/SDCFotaManager;->mIsNotifiedDetachForUpdate:Z

    iput-boolean v2, p0, Lcom/samsung/android/lib/dexcontrol/fota/manager/SDCFotaManager;->mIsCheckedHdmiConnection:Z

    iput-object v1, p0, Lcom/samsung/android/lib/dexcontrol/fota/manager/SDCFotaManager;->mProductId:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/lib/dexcontrol/fota/manager/SDCFotaManager;)Lcom/samsung/android/lib/dexcontrol/fota/manager/EventHandlerManager;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/lib/dexcontrol/fota/manager/SDCFotaManager;->mEventHandlerManager:Lcom/samsung/android/lib/dexcontrol/fota/manager/EventHandlerManager;

    return-object v0
.end method

.method static synthetic access$100(Lcom/samsung/android/lib/dexcontrol/fota/manager/SDCFotaManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/lib/dexcontrol/fota/manager/SDCFotaManager;->handleDetach()V

    return-void
.end method

.method static synthetic access$1000(Lcom/samsung/android/lib/dexcontrol/fota/manager/SDCFotaManager;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/lib/dexcontrol/fota/manager/SDCFotaManager;->changeState(I)V

    return-void
.end method

.method static synthetic access$1100(Lcom/samsung/android/lib/dexcontrol/fota/manager/SDCFotaManager;)I
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/lib/dexcontrol/fota/manager/SDCFotaManager;->getDeviceCategory()I

    move-result v0

    return v0
.end method

.method static synthetic access$1200(Lcom/samsung/android/lib/dexcontrol/fota/manager/SDCFotaManager;)Lcom/samsung/android/lib/dexcontrol/fota/server/FotaServerManager;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/lib/dexcontrol/fota/manager/SDCFotaManager;->mFotaServerManager:Lcom/samsung/android/lib/dexcontrol/fota/server/FotaServerManager;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/samsung/android/lib/dexcontrol/fota/manager/SDCFotaManager;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/lib/dexcontrol/fota/manager/SDCFotaManager;->mBinaryInfoList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1302(Lcom/samsung/android/lib/dexcontrol/fota/manager/SDCFotaManager;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/lib/dexcontrol/fota/manager/SDCFotaManager;->mBinaryInfoList:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic access$1400(Lcom/samsung/android/lib/dexcontrol/fota/manager/SDCFotaManager;Ljava/util/ArrayList;)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/samsung/android/lib/dexcontrol/fota/manager/SDCFotaManager;->isValidBinaryInfoList(Ljava/util/ArrayList;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1500(Lcom/samsung/android/lib/dexcontrol/fota/manager/SDCFotaManager;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/lib/dexcontrol/fota/manager/SDCFotaManager;->mProductId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/samsung/android/lib/dexcontrol/fota/manager/SDCFotaManager;)Ljava/util/concurrent/locks/Lock;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/lib/dexcontrol/fota/manager/SDCFotaManager;->mLock:Ljava/util/concurrent/locks/Lock;

    return-object v0
.end method

.method static synthetic access$300(Lcom/samsung/android/lib/dexcontrol/fota/manager/SDCFotaManager;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/lib/dexcontrol/fota/manager/SDCFotaManager;->mIsCheckedHdmiConnection:Z

    return v0
.end method

.method static synthetic access$302(Lcom/samsung/android/lib/dexcontrol/fota/manager/SDCFotaManager;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/lib/dexcontrol/fota/manager/SDCFotaManager;->mIsCheckedHdmiConnection:Z

    return p1
.end method

.method static synthetic access$400(Lcom/samsung/android/lib/dexcontrol/fota/manager/SDCFotaManager;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/lib/dexcontrol/fota/manager/SDCFotaManager;->mIsNotifiedDetachForUpdate:Z

    return v0
.end method

.method static synthetic access$402(Lcom/samsung/android/lib/dexcontrol/fota/manager/SDCFotaManager;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/lib/dexcontrol/fota/manager/SDCFotaManager;->mIsNotifiedDetachForUpdate:Z

    return p1
.end method

.method static synthetic access$500(Lcom/samsung/android/lib/dexcontrol/fota/manager/SDCFotaManager;ILandroid/hardware/usb/UsbDevice;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/lib/dexcontrol/fota/manager/SDCFotaManager;->init(ILandroid/hardware/usb/UsbDevice;)V

    return-void
.end method

.method static synthetic access$600(Lcom/samsung/android/lib/dexcontrol/fota/manager/SDCFotaManager;)Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperManager;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/lib/dexcontrol/fota/manager/SDCFotaManager;->mChipUpdateHelperManager:Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperManager;

    return-object v0
.end method

.method static synthetic access$700(Lcom/samsung/android/lib/dexcontrol/fota/manager/SDCFotaManager;)Lcom/samsung/android/lib/dexcontrol/fota/usb/UsbDeviceChecker;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/lib/dexcontrol/fota/manager/SDCFotaManager;->mUsbDeviceChecker:Lcom/samsung/android/lib/dexcontrol/fota/usb/UsbDeviceChecker;

    return-object v0
.end method

.method static synthetic access$800(Lcom/samsung/android/lib/dexcontrol/fota/manager/SDCFotaManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/lib/dexcontrol/fota/manager/SDCFotaManager;->handleAfterNotifyForUpdate()V

    return-void
.end method

.method static synthetic access$900(Lcom/samsung/android/lib/dexcontrol/fota/manager/SDCFotaManager;)I
    .locals 1

    iget v0, p0, Lcom/samsung/android/lib/dexcontrol/fota/manager/SDCFotaManager;->mState:I

    return v0
.end method

.method static synthetic access$902(Lcom/samsung/android/lib/dexcontrol/fota/manager/SDCFotaManager;I)I
    .locals 0

    iput p1, p0, Lcom/samsung/android/lib/dexcontrol/fota/manager/SDCFotaManager;->mState:I

    return p1
.end method

.method private changeState(I)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/lib/dexcontrol/fota/manager/SDCFotaManager;->mLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    iput p1, p0, Lcom/samsung/android/lib/dexcontrol/fota/manager/SDCFotaManager;->mState:I

    iget-object v0, p0, Lcom/samsung/android/lib/dexcontrol/fota/manager/SDCFotaManager;->mLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void
.end method

.method private checkFotaUpdateAvailable()V
    .locals 5

    const-string/jumbo v3, "SDCFotaManager"

    const-string/jumbo v4, "checkFotaUpdateAvailable()"

    invoke-static {v3, v4}, Lcom/samsung/android/lib/dexcontrol/fota/debug/SLog;->m(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iget-object v3, p0, Lcom/samsung/android/lib/dexcontrol/fota/manager/SDCFotaManager;->mBinaryInfoList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-direct {p0}, Lcom/samsung/android/lib/dexcontrol/fota/manager/SDCFotaManager;->checkSkipFolder()V

    invoke-direct {p0}, Lcom/samsung/android/lib/dexcontrol/fota/manager/SDCFotaManager;->isExistServerTestFolder()Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/samsung/android/lib/dexcontrol/fota/manager/SDCFotaManager;->mFotaServerManager:Lcom/samsung/android/lib/dexcontrol/fota/server/FotaServerManager;

    iget-object v4, p0, Lcom/samsung/android/lib/dexcontrol/fota/manager/SDCFotaManager;->mProductId:Ljava/lang/String;

    invoke-virtual {v3, v4, v1}, Lcom/samsung/android/lib/dexcontrol/fota/server/FotaServerManager;->checkToUpdate(Ljava/lang/String;Ljava/util/HashMap;)V

    :goto_1
    return-void

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/lib/dexcontrol/fota/data/SDCBinaryInfo;

    if-eqz v2, :cond_0

    iget-object v3, v2, Lcom/samsung/android/lib/dexcontrol/fota/data/SDCBinaryInfo;->chipName:Ljava/lang/String;

    if-eqz v3, :cond_0

    iget-object v3, v2, Lcom/samsung/android/lib/dexcontrol/fota/data/SDCBinaryInfo;->chipName:Ljava/lang/String;

    iget-object v4, v2, Lcom/samsung/android/lib/dexcontrol/fota/data/SDCBinaryInfo;->chipVersion:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    iget-object v3, p0, Lcom/samsung/android/lib/dexcontrol/fota/manager/SDCFotaManager;->mFotaServerManager:Lcom/samsung/android/lib/dexcontrol/fota/server/FotaServerManager;

    const-string/jumbo v4, "DEX_FOTA_TEST-"

    invoke-virtual {v3, v4, v1}, Lcom/samsung/android/lib/dexcontrol/fota/server/FotaServerManager;->checkToUpdate(Ljava/lang/String;Ljava/util/HashMap;)V

    goto :goto_1
.end method

.method private checkSkipFolder()V
    .locals 4

    const/4 v2, 0x1

    const/4 v1, 0x0

    const-string/jumbo v0, "SDCFotaManager"

    const-string/jumbo v3, "checkSkipFolder()"

    invoke-static {v0, v3}, Lcom/samsung/android/lib/dexcontrol/fota/debug/SLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "/storage/emulated/0/test_dex_skip_dp/"

    invoke-direct {p0, v0}, Lcom/samsung/android/lib/dexcontrol/fota/manager/SDCFotaManager;->checkSkipFolder(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_0
    move v0, v2

    :goto_0
    sput-boolean v0, Lcom/samsung/android/lib/dexcontrol/fota/debug/FotaTestConfig;->SKIP_FOTA_PS176:Z

    const-string/jumbo v0, "/storage/emulated/0/test_dex_skip_ds/"

    invoke-direct {p0, v0}, Lcom/samsung/android/lib/dexcontrol/fota/manager/SDCFotaManager;->checkSkipFolder(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_1
    move v0, v2

    :goto_1
    sput-boolean v0, Lcom/samsung/android/lib/dexcontrol/fota/debug/FotaTestConfig;->SKIP_FOTA_PDIC_DS:Z

    const-string/jumbo v0, "/storage/emulated/0/test_dex_skip_us/"

    invoke-direct {p0, v0}, Lcom/samsung/android/lib/dexcontrol/fota/manager/SDCFotaManager;->checkSkipFolder(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    :cond_2
    move v1, v2

    :goto_2
    sput-boolean v1, Lcom/samsung/android/lib/dexcontrol/fota/debug/FotaTestConfig;->SKIP_FOTA_PDIC_US:Z

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "result = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-boolean v1, Lcom/samsung/android/lib/dexcontrol/fota/debug/FotaTestConfig;->SKIP_FOTA_PS176:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " , "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-boolean v1, Lcom/samsung/android/lib/dexcontrol/fota/debug/FotaTestConfig;->SKIP_FOTA_PDIC_DS:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " , "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-boolean v1, Lcom/samsung/android/lib/dexcontrol/fota/debug/FotaTestConfig;->SKIP_FOTA_PDIC_US:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "SDCFotaManager"

    invoke-static {v1, v0}, Lcom/samsung/android/lib/dexcontrol/fota/debug/SLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_3
    const-string/jumbo v0, "/data/test_dex_skip_dp/"

    invoke-direct {p0, v0}, Lcom/samsung/android/lib/dexcontrol/fota/manager/SDCFotaManager;->checkSkipFolder(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_4
    const-string/jumbo v0, "/data/test_dex_skip_ds/"

    invoke-direct {p0, v0}, Lcom/samsung/android/lib/dexcontrol/fota/manager/SDCFotaManager;->checkSkipFolder(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    goto :goto_1

    :cond_5
    const-string/jumbo v0, "/data/test_dex_skip_us/"

    invoke-direct {p0, v0}, Lcom/samsung/android/lib/dexcontrol/fota/manager/SDCFotaManager;->checkSkipFolder(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_2
.end method

.method private checkSkipFolder(Ljava/lang/String;)Z
    .locals 5

    const/4 v2, 0x0

    :try_start_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "checkSkipFolder : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " >> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "SDCFotaManager"

    invoke-static {v4, v3}, Lcom/samsung/android/lib/dexcontrol/fota/debug/SLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private deinitChipUpdateHelperManager()V
    .locals 2

    const-string/jumbo v0, "SDCFotaManager"

    const-string/jumbo v1, "deinitChipUpdateHelperManager()"

    invoke-static {v0, v1}, Lcom/samsung/android/lib/dexcontrol/fota/debug/SLog;->m(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/lib/dexcontrol/fota/manager/SDCFotaManager;->mChipUpdateHelperManager:Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperManager;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/lib/dexcontrol/fota/manager/SDCFotaManager;->mChipUpdateHelperManager:Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperManager;

    invoke-virtual {v0}, Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperManager;->destroy()V

    goto :goto_0
.end method

.method private deinitFotaServerManager()V
    .locals 2

    const-string/jumbo v0, "SDCFotaManager"

    const-string/jumbo v1, "deinitFotaServerManager()"

    invoke-static {v0, v1}, Lcom/samsung/android/lib/dexcontrol/fota/debug/SLog;->m(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/lib/dexcontrol/fota/manager/SDCFotaManager;->mFotaServerManager:Lcom/samsung/android/lib/dexcontrol/fota/server/FotaServerManager;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/lib/dexcontrol/fota/manager/SDCFotaManager;->mFotaServerManager:Lcom/samsung/android/lib/dexcontrol/fota/server/FotaServerManager;

    invoke-virtual {v0}, Lcom/samsung/android/lib/dexcontrol/fota/server/FotaServerManager;->destroy()V

    goto :goto_0
.end method

.method private deinitUsbDeviceCheckerManager()V
    .locals 2

    const-string/jumbo v0, "SDCFotaManager"

    const-string/jumbo v1, "deinitUsbDeviceCheckerManager()"

    invoke-static {v0, v1}, Lcom/samsung/android/lib/dexcontrol/fota/debug/SLog;->m(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/lib/dexcontrol/fota/manager/SDCFotaManager;->mUsbDeviceChecker:Lcom/samsung/android/lib/dexcontrol/fota/usb/UsbDeviceChecker;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/lib/dexcontrol/fota/manager/SDCFotaManager;->mUsbDeviceChecker:Lcom/samsung/android/lib/dexcontrol/fota/usb/UsbDeviceChecker;

    invoke-virtual {v0}, Lcom/samsung/android/lib/dexcontrol/fota/usb/UsbDeviceChecker;->destroy()V

    goto :goto_0
.end method

.method private getDeviceCategory()I
    .locals 5

    const/4 v4, 0x0

    const-string/jumbo v2, "SDCFotaManager"

    const-string/jumbo v3, "getDeviceCategory()"

    invoke-static {v2, v3}, Lcom/samsung/android/lib/dexcontrol/fota/debug/SLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/android/lib/dexcontrol/fota/manager/SDCFotaManager;->mProductId:Ljava/lang/String;

    if-eqz v2, :cond_1

    iget-object v0, p0, Lcom/samsung/android/lib/dexcontrol/fota/manager/SDCFotaManager;->mProductId:Ljava/lang/String;

    const/4 v1, -0x1

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    :cond_0
    :goto_0
    packed-switch v1, :pswitch_data_1

    return v4

    :cond_1
    return v4

    :pswitch_0
    const-string/jumbo v2, "DEX_FOTA-"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :pswitch_1
    const/4 v2, 0x1

    return v2

    :pswitch_data_0
    .packed-switch 0x371eefaf
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
    .end packed-switch
.end method

.method private handleAfterNotifyForUpdate()V
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/lib/dexcontrol/fota/manager/SDCFotaManager;->mIsNotifiedDetachForUpdate:Z

    iget-object v0, p0, Lcom/samsung/android/lib/dexcontrol/fota/manager/SDCFotaManager;->mChipUpdateHelperManager:Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperManager;

    iget-object v1, p0, Lcom/samsung/android/lib/dexcontrol/fota/manager/SDCFotaManager;->mUsbDeviceChecker:Lcom/samsung/android/lib/dexcontrol/fota/usb/UsbDeviceChecker;

    invoke-virtual {v1}, Lcom/samsung/android/lib/dexcontrol/fota/usb/UsbDeviceChecker;->getUsbDevice()Landroid/hardware/usb/UsbDevice;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperManager;->attachDevice(Landroid/hardware/usb/UsbDevice;)V

    return-void
.end method

.method private handleDetach()V
    .locals 3

    iget v0, p0, Lcom/samsung/android/lib/dexcontrol/fota/manager/SDCFotaManager;->mState:I

    const/4 v1, 0x6

    if-eq v0, v1, :cond_0

    :goto_0
    invoke-direct {p0}, Lcom/samsung/android/lib/dexcontrol/fota/manager/SDCFotaManager;->deinitChipUpdateHelperManager()V

    invoke-direct {p0}, Lcom/samsung/android/lib/dexcontrol/fota/manager/SDCFotaManager;->deinitFotaServerManager()V

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/samsung/android/lib/dexcontrol/fota/manager/SDCFotaManager;->changeState(I)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/lib/dexcontrol/fota/manager/SDCFotaManager;->mEventHandlerManager:Lcom/samsung/android/lib/dexcontrol/fota/manager/EventHandlerManager;

    const/4 v1, 0x0

    const/4 v2, 0x4

    invoke-virtual {v0, v2, v1}, Lcom/samsung/android/lib/dexcontrol/fota/manager/EventHandlerManager;->invokeSelfListener(IZ)V

    goto :goto_0
.end method

.method private init(ILandroid/hardware/usb/UsbDevice;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "init : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "SDCFotaManager"

    invoke-static {v1, v0}, Lcom/samsung/android/lib/dexcontrol/fota/debug/SLog;->m(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/samsung/android/lib/dexcontrol/fota/manager/SDCFotaManager;->setProductId(I)V

    invoke-direct {p0, p2}, Lcom/samsung/android/lib/dexcontrol/fota/manager/SDCFotaManager;->initChipUpdateHelperManager(Landroid/hardware/usb/UsbDevice;)V

    return-void
.end method

.method private initChipUpdateHelperManager(Landroid/hardware/usb/UsbDevice;)V
    .locals 3

    const-string/jumbo v0, "SDCFotaManager"

    const-string/jumbo v1, "initChipUpdateHelperManager()"

    invoke-static {v0, v1}, Lcom/samsung/android/lib/dexcontrol/fota/debug/SLog;->m(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperManager;

    invoke-direct {v0}, Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperManager;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/lib/dexcontrol/fota/manager/SDCFotaManager;->mChipUpdateHelperManager:Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperManager;

    iget-object v0, p0, Lcom/samsung/android/lib/dexcontrol/fota/manager/SDCFotaManager;->mChipUpdateHelperManager:Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperManager;

    iget-object v1, p0, Lcom/samsung/android/lib/dexcontrol/fota/manager/SDCFotaManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/android/lib/dexcontrol/fota/manager/SDCFotaManager;->mProductId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, p1}, Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperManager;->create(Landroid/content/Context;Ljava/lang/String;Landroid/hardware/usb/UsbDevice;)V

    iget-object v0, p0, Lcom/samsung/android/lib/dexcontrol/fota/manager/SDCFotaManager;->mChipUpdateHelperManager:Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperManager;

    new-instance v1, Lcom/samsung/android/lib/dexcontrol/fota/manager/SDCFotaManager$2;

    invoke-direct {v1, p0}, Lcom/samsung/android/lib/dexcontrol/fota/manager/SDCFotaManager$2;-><init>(Lcom/samsung/android/lib/dexcontrol/fota/manager/SDCFotaManager;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperManager;->setListener(Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperManager$ChipUpdateHelperManagerListener;)V

    return-void
.end method

.method private initFotaServerManager()V
    .locals 2

    const-string/jumbo v0, "SDCFotaManager"

    const-string/jumbo v1, "initFotaServerManager()"

    invoke-static {v0, v1}, Lcom/samsung/android/lib/dexcontrol/fota/debug/SLog;->m(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/lib/dexcontrol/fota/manager/SDCFotaManager;->mFotaServerManager:Lcom/samsung/android/lib/dexcontrol/fota/server/FotaServerManager;

    if-eqz v0, :cond_0

    :goto_0
    iget-object v0, p0, Lcom/samsung/android/lib/dexcontrol/fota/manager/SDCFotaManager;->mFotaServerManager:Lcom/samsung/android/lib/dexcontrol/fota/server/FotaServerManager;

    iget-object v1, p0, Lcom/samsung/android/lib/dexcontrol/fota/manager/SDCFotaManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/samsung/android/lib/dexcontrol/fota/server/FotaServerManager;->create(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/samsung/android/lib/dexcontrol/fota/manager/SDCFotaManager;->mFotaServerManager:Lcom/samsung/android/lib/dexcontrol/fota/server/FotaServerManager;

    new-instance v1, Lcom/samsung/android/lib/dexcontrol/fota/manager/SDCFotaManager$3;

    invoke-direct {v1, p0}, Lcom/samsung/android/lib/dexcontrol/fota/manager/SDCFotaManager$3;-><init>(Lcom/samsung/android/lib/dexcontrol/fota/manager/SDCFotaManager;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/lib/dexcontrol/fota/server/FotaServerManager;->setListener(Lcom/samsung/android/lib/dexcontrol/fota/server/FotaServerManager$FotaServerManagerListener;)V

    return-void

    :cond_0
    new-instance v0, Lcom/samsung/android/lib/dexcontrol/fota/server/FotaServerManager;

    invoke-direct {v0}, Lcom/samsung/android/lib/dexcontrol/fota/server/FotaServerManager;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/lib/dexcontrol/fota/manager/SDCFotaManager;->mFotaServerManager:Lcom/samsung/android/lib/dexcontrol/fota/server/FotaServerManager;

    goto :goto_0
.end method

.method private initUsbDeviceChecker()V
    .locals 2

    const-string/jumbo v0, "SDCFotaManager"

    const-string/jumbo v1, "initUsbDeviceChecker()"

    invoke-static {v0, v1}, Lcom/samsung/android/lib/dexcontrol/fota/debug/SLog;->m(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/samsung/android/lib/dexcontrol/fota/usb/UsbDeviceChecker;

    invoke-direct {v0}, Lcom/samsung/android/lib/dexcontrol/fota/usb/UsbDeviceChecker;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/lib/dexcontrol/fota/manager/SDCFotaManager;->mUsbDeviceChecker:Lcom/samsung/android/lib/dexcontrol/fota/usb/UsbDeviceChecker;

    iget-object v0, p0, Lcom/samsung/android/lib/dexcontrol/fota/manager/SDCFotaManager;->mUsbDeviceChecker:Lcom/samsung/android/lib/dexcontrol/fota/usb/UsbDeviceChecker;

    iget-object v1, p0, Lcom/samsung/android/lib/dexcontrol/fota/manager/SDCFotaManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/samsung/android/lib/dexcontrol/fota/usb/UsbDeviceChecker;->create(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/samsung/android/lib/dexcontrol/fota/manager/SDCFotaManager;->mUsbDeviceChecker:Lcom/samsung/android/lib/dexcontrol/fota/usb/UsbDeviceChecker;

    new-instance v1, Lcom/samsung/android/lib/dexcontrol/fota/manager/SDCFotaManager$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/lib/dexcontrol/fota/manager/SDCFotaManager$1;-><init>(Lcom/samsung/android/lib/dexcontrol/fota/manager/SDCFotaManager;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/lib/dexcontrol/fota/usb/UsbDeviceChecker;->setListener(Lcom/samsung/android/lib/dexcontrol/fota/usb/IUsbDeviceChecker$UsbDeviceListener;)V

    return-void
.end method

.method private isExistServerTestFolder()Z
    .locals 8

    const/4 v5, 0x0

    const/4 v4, 0x0

    const/4 v0, 0x0

    :try_start_0
    const-string/jumbo v3, "/storage/emulated/0/test_dex/"

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v4

    const-string/jumbo v3, "/data/test_dex/"

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "serverTestFolder = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " isExistServerTestFolder (storageRet) : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "(dataRet): "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "SDCFotaManager"

    invoke-static {v7, v6}, Lcom/samsung/android/lib/dexcontrol/fota/debug/SLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    if-eqz v4, :cond_1

    :cond_0
    const/4 v5, 0x1

    :goto_1
    return v5

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->getStackTrace()[Ljava/lang/StackTraceElement;

    goto :goto_0

    :cond_1
    if-nez v0, :cond_0

    goto :goto_1
.end method

.method private isValidBinaryInfoList(Ljava/util/ArrayList;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/lib/dexcontrol/fota/data/SDCBinaryInfo;",
            ">;)Z"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v1, 0x1

    const/4 v0, 0x0

    :goto_0
    if-lt v0, v2, :cond_0

    :goto_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "isValidBinaryInfoList ret= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "SDCFotaManager"

    invoke-static {v4, v3}, Lcom/samsung/android/lib/dexcontrol/fota/debug/SLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_0
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/lib/dexcontrol/fota/data/SDCBinaryInfo;

    iget-object v3, v3, Lcom/samsung/android/lib/dexcontrol/fota/data/SDCBinaryInfo;->chipVersion:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private setProductId(I)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setProductId : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "SDCFotaManager"

    invoke-static {v1, v0}, Lcom/samsung/android/lib/dexcontrol/fota/debug/SLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/samsung/android/lib/dexcontrol/fota/manager/SDCFotaManager;->mProductId:Ljava/lang/String;

    :goto_0
    return-void

    :pswitch_1
    const-string/jumbo v0, "DEX_FOTA-"

    iput-object v0, p0, Lcom/samsung/android/lib/dexcontrol/fota/manager/SDCFotaManager;->mProductId:Ljava/lang/String;

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private startFota()V
    .locals 2

    const-string/jumbo v0, "SDCFotaManager"

    const-string/jumbo v1, "startFota"

    invoke-static {v0, v1}, Lcom/samsung/android/lib/dexcontrol/fota/debug/SLog;->m(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x6

    invoke-direct {p0, v0}, Lcom/samsung/android/lib/dexcontrol/fota/manager/SDCFotaManager;->changeState(I)V

    iget-object v0, p0, Lcom/samsung/android/lib/dexcontrol/fota/manager/SDCFotaManager;->mFotaServerManager:Lcom/samsung/android/lib/dexcontrol/fota/server/FotaServerManager;

    invoke-virtual {v0}, Lcom/samsung/android/lib/dexcontrol/fota/server/FotaServerManager;->downloadToUpdate()V

    iget-object v0, p0, Lcom/samsung/android/lib/dexcontrol/fota/manager/SDCFotaManager;->mEventHandlerManager:Lcom/samsung/android/lib/dexcontrol/fota/manager/EventHandlerManager;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/samsung/android/lib/dexcontrol/fota/manager/EventHandlerManager;->invokeSelfListener(I)V

    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 2

    const-string/jumbo v0, "SDCFotaManager"

    const-string/jumbo v1, "destroy()"

    invoke-static {v0, v1}, Lcom/samsung/android/lib/dexcontrol/fota/debug/SLog;->m(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/lib/dexcontrol/fota/manager/SDCFotaManager;->mChipUpdateHelperManager:Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperManager;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/samsung/android/lib/dexcontrol/fota/manager/SDCFotaManager;->deinitFotaServerManager()V

    invoke-direct {p0}, Lcom/samsung/android/lib/dexcontrol/fota/manager/SDCFotaManager;->deinitUsbDeviceCheckerManager()V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/lib/dexcontrol/fota/manager/SDCFotaManager;->mChipUpdateHelperManager:Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperManager;

    invoke-virtual {v0}, Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperManager;->isCreated()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/lib/dexcontrol/fota/manager/SDCFotaManager;->mChipUpdateHelperManager:Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperManager;

    invoke-virtual {v0}, Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperManager;->destroy()V

    goto :goto_0
.end method

.method public requestCheckFotaUpdateAvailable()V
    .locals 3

    const/4 v2, 0x5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "requestCheckFotaUpdateAvailable state="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/lib/dexcontrol/fota/manager/SDCFotaManager;->mState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "SDCFotaManager"

    invoke-static {v1, v0}, Lcom/samsung/android/lib/dexcontrol/fota/debug/SLog;->m(Ljava/lang/String;Ljava/lang/String;)V

    iget v0, p0, Lcom/samsung/android/lib/dexcontrol/fota/manager/SDCFotaManager;->mState:I

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    invoke-direct {p0, v2}, Lcom/samsung/android/lib/dexcontrol/fota/manager/SDCFotaManager;->changeState(I)V

    invoke-direct {p0}, Lcom/samsung/android/lib/dexcontrol/fota/manager/SDCFotaManager;->initFotaServerManager()V

    invoke-direct {p0}, Lcom/samsung/android/lib/dexcontrol/fota/manager/SDCFotaManager;->checkFotaUpdateAvailable()V

    return-void

    :pswitch_1
    const-string/jumbo v0, "Now updating!! Do not call requestCheckFotaUpdateAvailable() while updating."

    invoke-static {v0}, Lcom/samsung/android/lib/dexcontrol/fota/debug/DexFotaLibException;->exception(Ljava/lang/String;)V

    return-void

    :pswitch_2
    const-string/jumbo v0, "FotaManager is not created!"

    invoke-static {v0}, Lcom/samsung/android/lib/dexcontrol/fota/debug/DexFotaLibException;->exception(Ljava/lang/String;)V

    return-void

    :pswitch_3
    const-string/jumbo v0, "Impossible duplicated update check!!"

    invoke-static {v0}, Lcom/samsung/android/lib/dexcontrol/fota/debug/DexFotaLibException;->exception(Ljava/lang/String;)V

    return-void

    :pswitch_4
    iget-object v0, p0, Lcom/samsung/android/lib/dexcontrol/fota/manager/SDCFotaManager;->mEventHandlerManager:Lcom/samsung/android/lib/dexcontrol/fota/manager/EventHandlerManager;

    const/4 v1, 0x2

    invoke-virtual {v0, v2, v1}, Lcom/samsung/android/lib/dexcontrol/fota/manager/EventHandlerManager;->invokeSelfListener(II)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_2
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_1
    .end packed-switch
.end method

.method public requestCreate(Landroid/content/Context;Lcom/samsung/android/lib/dexcontrol/fota/manager/SDCFotaManagerEventHandler;Lcom/samsung/android/lib/dexcontrol/fota/manager/ISDCFotaManagerListener;)V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    const-string/jumbo v0, "SDCFotaManager"

    const-string/jumbo v1, "requestCreate() versionCode : 2180125 versionName : 2.18.0125"

    invoke-static {v0, v1}, Lcom/samsung/android/lib/dexcontrol/fota/debug/SLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/samsung/android/lib/dexcontrol/fota/manager/SDCFotaManager;->mContext:Landroid/content/Context;

    new-instance v0, Lcom/samsung/android/lib/dexcontrol/fota/manager/EventHandlerManager;

    invoke-direct {v0}, Lcom/samsung/android/lib/dexcontrol/fota/manager/EventHandlerManager;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/lib/dexcontrol/fota/manager/SDCFotaManager;->mEventHandlerManager:Lcom/samsung/android/lib/dexcontrol/fota/manager/EventHandlerManager;

    iget-object v0, p0, Lcom/samsung/android/lib/dexcontrol/fota/manager/SDCFotaManager;->mEventHandlerManager:Lcom/samsung/android/lib/dexcontrol/fota/manager/EventHandlerManager;

    invoke-virtual {v0, p2, p3}, Lcom/samsung/android/lib/dexcontrol/fota/manager/EventHandlerManager;->set(Lcom/samsung/android/lib/dexcontrol/fota/manager/SDCFotaManagerEventHandler;Lcom/samsung/android/lib/dexcontrol/fota/manager/ISDCFotaManagerListener;)V

    iget v0, p0, Lcom/samsung/android/lib/dexcontrol/fota/manager/SDCFotaManager;->mState:I

    if-nez v0, :cond_0

    invoke-direct {p0, v3}, Lcom/samsung/android/lib/dexcontrol/fota/manager/SDCFotaManager;->changeState(I)V

    invoke-direct {p0}, Lcom/samsung/android/lib/dexcontrol/fota/manager/SDCFotaManager;->initUsbDeviceChecker()V

    iget-object v0, p0, Lcom/samsung/android/lib/dexcontrol/fota/manager/SDCFotaManager;->mUsbDeviceChecker:Lcom/samsung/android/lib/dexcontrol/fota/usb/UsbDeviceChecker;

    invoke-virtual {v0}, Lcom/samsung/android/lib/dexcontrol/fota/usb/UsbDeviceChecker;->isDexDeviceConnected()Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "SDCFotaManager"

    const-string/jumbo v1, "Dex device isn\'t connected"

    invoke-static {v0, v1}, Lcom/samsung/android/lib/dexcontrol/fota/debug/SLog;->m(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/samsung/android/lib/dexcontrol/fota/manager/SDCFotaManager;->changeState(I)V

    iget-object v0, p0, Lcom/samsung/android/lib/dexcontrol/fota/manager/SDCFotaManager;->mEventHandlerManager:Lcom/samsung/android/lib/dexcontrol/fota/manager/EventHandlerManager;

    invoke-virtual {v0, v3, v2}, Lcom/samsung/android/lib/dexcontrol/fota/manager/EventHandlerManager;->invokeSelfListener(II)V

    :goto_0
    return-void

    :cond_0
    const-string/jumbo v0, "SDCFotaManager is aleady created!"

    invoke-static {v0}, Lcom/samsung/android/lib/dexcontrol/fota/debug/DexFotaLibException;->exception(Ljava/lang/String;)V

    return-void

    :cond_1
    const-string/jumbo v0, "SDCFotaManager"

    const-string/jumbo v1, "Dex device is connected"

    invoke-static {v0, v1}, Lcom/samsung/android/lib/dexcontrol/fota/debug/SLog;->m(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/lib/dexcontrol/fota/manager/SDCFotaManager;->mUsbDeviceChecker:Lcom/samsung/android/lib/dexcontrol/fota/usb/UsbDeviceChecker;

    invoke-virtual {v0}, Lcom/samsung/android/lib/dexcontrol/fota/usb/UsbDeviceChecker;->getConnectedDexProductId()I

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/lib/dexcontrol/fota/manager/SDCFotaManager;->mUsbDeviceChecker:Lcom/samsung/android/lib/dexcontrol/fota/usb/UsbDeviceChecker;

    invoke-virtual {v1}, Lcom/samsung/android/lib/dexcontrol/fota/usb/UsbDeviceChecker;->getUsbDevice()Landroid/hardware/usb/UsbDevice;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/lib/dexcontrol/fota/manager/SDCFotaManager;->init(ILandroid/hardware/usb/UsbDevice;)V

    iget-object v0, p0, Lcom/samsung/android/lib/dexcontrol/fota/manager/SDCFotaManager;->mChipUpdateHelperManager:Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperManager;

    iget-object v1, p0, Lcom/samsung/android/lib/dexcontrol/fota/manager/SDCFotaManager;->mUsbDeviceChecker:Lcom/samsung/android/lib/dexcontrol/fota/usb/UsbDeviceChecker;

    invoke-virtual {v1}, Lcom/samsung/android/lib/dexcontrol/fota/usb/UsbDeviceChecker;->getUsbDevice()Landroid/hardware/usb/UsbDevice;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperManager;->attachDevice(Landroid/hardware/usb/UsbDevice;)V

    iget-object v0, p0, Lcom/samsung/android/lib/dexcontrol/fota/manager/SDCFotaManager;->mChipUpdateHelperManager:Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperManager;

    invoke-virtual {v0}, Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperManager;->requestDeviceChipInfoList()V

    goto :goto_0
.end method

.method public startFotaUpdate()V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "startFotaUpdate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/lib/dexcontrol/fota/manager/SDCFotaManager;->mState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "SDCFotaManager"

    invoke-static {v1, v0}, Lcom/samsung/android/lib/dexcontrol/fota/debug/SLog;->m(Ljava/lang/String;Ljava/lang/String;)V

    iget v0, p0, Lcom/samsung/android/lib/dexcontrol/fota/manager/SDCFotaManager;->mState:I

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    const-string/jumbo v0, "Now updating!! Do not call startFotaUpdate() while updating."

    invoke-static {v0}, Lcom/samsung/android/lib/dexcontrol/fota/debug/DexFotaLibException;->exception(Ljava/lang/String;)V

    return-void

    :pswitch_1
    const-string/jumbo v0, "FotaManager is not created!"

    invoke-static {v0}, Lcom/samsung/android/lib/dexcontrol/fota/debug/DexFotaLibException;->exception(Ljava/lang/String;)V

    return-void

    :pswitch_2
    const-string/jumbo v0, "Impossible duplicated update check!!"

    invoke-static {v0}, Lcom/samsung/android/lib/dexcontrol/fota/debug/DexFotaLibException;->exception(Ljava/lang/String;)V

    return-void

    :pswitch_3
    iget-object v0, p0, Lcom/samsung/android/lib/dexcontrol/fota/manager/SDCFotaManager;->mEventHandlerManager:Lcom/samsung/android/lib/dexcontrol/fota/manager/EventHandlerManager;

    const/4 v1, 0x5

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/lib/dexcontrol/fota/manager/EventHandlerManager;->invokeSelfListener(II)V

    return-void

    :pswitch_4
    invoke-direct {p0}, Lcom/samsung/android/lib/dexcontrol/fota/manager/SDCFotaManager;->startFota()V

    goto :goto_0

    :pswitch_5
    sget-boolean v0, Lcom/samsung/android/lib/dexcontrol/fota/debug/FotaTestConfig;->NO_CHECK_VERSION:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/lib/dexcontrol/fota/manager/SDCFotaManager;->startFota()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_3
        :pswitch_5
        :pswitch_4
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method
