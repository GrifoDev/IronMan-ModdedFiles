.class public Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperEmulator;
.super Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperBase;
.source "ChipUpdateHelperEmulator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperEmulator$EmulHandler;
    }
.end annotation


# static fields
.field private static final MESSAGE_UPDATE_END:I = 0x2

.field private static final MESSAGE_UPDATE_PROGRESS:I = 0x1

.field private static final TAG:Ljava/lang/String; = "ChipUpdateHelperEmulator"


# instance fields
.field private mEmulHandler:Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperEmulator$EmulHandler;

.field private mIsOpen:Z

.field private mIsUpdating:Z

.field private mListener:Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperBase$ChipUpdateHelperListener;

.field private mLock:Ljava/util/concurrent/locks/Lock;

.field private mRandom:Ljava/util/Random;

.field private mSchenario:I

.field private mUpdateProgress:F


# direct methods
.method public constructor <init>()V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperBase;-><init>()V

    iput-boolean v1, p0, Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperEmulator;->mIsOpen:Z

    iput-object v2, p0, Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperEmulator;->mListener:Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperBase$ChipUpdateHelperListener;

    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperEmulator;->mLock:Ljava/util/concurrent/locks/Lock;

    iput-object v2, p0, Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperEmulator;->mEmulHandler:Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperEmulator$EmulHandler;

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperEmulator;->mUpdateProgress:F

    iput-boolean v1, p0, Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperEmulator;->mIsUpdating:Z

    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperEmulator;->mRandom:Ljava/util/Random;

    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperEmulator;->mSchenario:I

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperEmulator;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperEmulator;->handleEmulEvent(I)V

    return-void
.end method

.method private handleEmulEvent(I)V
    .locals 5

    const/16 v4, 0x64

    const/high16 v3, 0x42c80000    # 100.0f

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "handleEmulEvent message="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "ChipUpdateHelperEmulator"

    invoke-static {v1, v0}, Lcom/samsung/android/lib/dexcontrol/fota/debug/SLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperEmulator;->mListener:Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperBase$ChipUpdateHelperListener;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget v0, p0, Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperEmulator;->mUpdateProgress:F

    const v1, 0x40e9999a    # 7.3f

    add-float/2addr v0, v1

    iput v0, p0, Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperEmulator;->mUpdateProgress:F

    iget v0, p0, Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperEmulator;->mUpdateProgress:F

    cmpl-float v0, v0, v3

    if-lez v0, :cond_1

    iput v3, p0, Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperEmulator;->mUpdateProgress:F

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperEmulator;->mListener:Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperBase$ChipUpdateHelperListener;

    invoke-virtual {p0}, Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperEmulator;->getChipId()Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperEmulator;->mUpdateProgress:F

    invoke-interface {v0, v1, v2}, Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperBase$ChipUpdateHelperListener;->onUpdateProgress(Ljava/lang/String;F)V

    iget v0, p0, Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperEmulator;->mUpdateProgress:F

    cmpl-float v0, v0, v3

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperEmulator;->mEmulHandler:Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperEmulator$EmulHandler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, v4}, Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperEmulator$EmulHandler;->start(II)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperEmulator;->mEmulHandler:Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperEmulator$EmulHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, v4}, Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperEmulator$EmulHandler;->start(II)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperEmulator;->mLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperEmulator;->mIsUpdating:Z

    iget-object v0, p0, Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperEmulator;->mLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    iget-object v0, p0, Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperEmulator;->mListener:Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperBase$ChipUpdateHelperListener;

    invoke-virtual {p0}, Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperEmulator;->getChipId()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x4

    invoke-interface {v0, v1, v2}, Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperBase$ChipUpdateHelperListener;->onUpdateNotify(Ljava/lang/String;I)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method close()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperEmulator;->mIsOpen:Z

    return-void
.end method

.method destroy()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperEmulator;->mEmulHandler:Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperEmulator$EmulHandler;

    if-nez v0, :cond_0

    :goto_0
    iput-object v1, p0, Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperEmulator;->mListener:Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperBase$ChipUpdateHelperListener;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperEmulator;->mIsOpen:Z

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperEmulator;->mEmulHandler:Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperEmulator$EmulHandler;

    invoke-virtual {v0}, Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperEmulator$EmulHandler;->end()V

    iget-object v0, p0, Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperEmulator;->mEmulHandler:Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperEmulator$EmulHandler;

    invoke-virtual {v0, v1}, Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperEmulator$EmulHandler;->setListener(Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperEmulator$EmulHandler$EmulHandlerListener;)V

    iput-object v1, p0, Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperEmulator;->mEmulHandler:Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperEmulator$EmulHandler;

    goto :goto_0
.end method

.method getChipInfo()Lcom/samsung/android/lib/dexcontrol/fota/data/SDCBinaryInfo;
    .locals 3

    const-string/jumbo v1, "ChipUpdateHelperEmulator"

    const-string/jumbo v2, "getChipInfo()"

    invoke-static {v1, v2}, Lcom/samsung/android/lib/dexcontrol/fota/debug/SLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/samsung/android/lib/dexcontrol/fota/data/SDCBinaryInfo;

    invoke-direct {v0}, Lcom/samsung/android/lib/dexcontrol/fota/data/SDCBinaryInfo;-><init>()V

    invoke-virtual {p0}, Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperEmulator;->getChipId()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/samsung/android/lib/dexcontrol/fota/data/SDCBinaryInfo;->chipName:Ljava/lang/String;

    const-string/jumbo v1, "0000"

    iput-object v1, v0, Lcom/samsung/android/lib/dexcontrol/fota/data/SDCBinaryInfo;->chipVersion:Ljava/lang/String;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/samsung/android/lib/dexcontrol/fota/data/SDCBinaryInfo;->isBootMode:Z

    return-object v0
.end method

.method getResetOption()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method getStartOption()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method isConnected()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperEmulator;->mIsOpen:Z

    if-eqz v0, :cond_0

    :goto_0
    const/4 v0, 0x1

    return v0

    :cond_0
    const-string/jumbo v0, "ChipUpdateHelperEmulator.isConnected not  opened!"

    invoke-static {v0}, Lcom/samsung/android/lib/dexcontrol/fota/debug/DexFotaLibException;->exception(Ljava/lang/String;)V

    goto :goto_0
.end method

.method notifyAttach(Landroid/hardware/usb/UsbDeviceConnection;Landroid/hardware/usb/UsbDevice;Z)V
    .locals 0

    return-void
.end method

.method open()Z
    .locals 2

    const/4 v1, 0x1

    iget-boolean v0, p0, Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperEmulator;->mIsOpen:Z

    if-eq v0, v1, :cond_0

    iput-boolean v1, p0, Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperEmulator;->mIsOpen:Z

    iget-boolean v0, p0, Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperEmulator;->mIsOpen:Z

    return v0

    :cond_0
    const-string/jumbo v0, "ChipUpdateHelperEmulator.open aleady opened!"

    invoke-static {v0}, Lcom/samsung/android/lib/dexcontrol/fota/debug/DexFotaLibException;->exception(Ljava/lang/String;)V

    return v1
.end method

.method requestUpdate()V
    .locals 3

    const/4 v2, 0x1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "requestUpdate() chipId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperEmulator;->getChipId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "ChipUpdateHelperEmulator"

    invoke-static {v1, v0}, Lcom/samsung/android/lib/dexcontrol/fota/debug/SLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperEmulator;->mIsUpdating:Z

    if-eq v0, v2, :cond_0

    iget-object v0, p0, Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperEmulator;->mLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    iput-boolean v2, p0, Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperEmulator;->mIsUpdating:Z

    iget-object v0, p0, Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperEmulator;->mLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    iget v0, p0, Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperEmulator;->mSchenario:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperEmulator;->mSchenario:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperEmulator;->mUpdateProgress:F

    iget-object v0, p0, Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperEmulator;->mEmulHandler:Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperEmulator$EmulHandler;

    const/16 v1, 0x64

    invoke-virtual {v0, v2, v1}, Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperEmulator$EmulHandler;->start(II)V

    return-void

    :cond_0
    const-string/jumbo v0, "ChipUpdateHelperEmulator.requestUpdate aleady going update!"

    invoke-static {v0}, Lcom/samsung/android/lib/dexcontrol/fota/debug/DexFotaLibException;->exception(Ljava/lang/String;)V

    return-void
.end method

.method setListener(Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperBase$ChipUpdateHelperListener;)V
    .locals 2

    iput-object p1, p0, Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperEmulator;->mListener:Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperBase$ChipUpdateHelperListener;

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperEmulator$EmulHandler;

    invoke-direct {v0}, Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperEmulator$EmulHandler;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperEmulator;->mEmulHandler:Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperEmulator$EmulHandler;

    iget-object v0, p0, Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperEmulator;->mEmulHandler:Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperEmulator$EmulHandler;

    new-instance v1, Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperEmulator$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperEmulator$1;-><init>(Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperEmulator;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperEmulator$EmulHandler;->setListener(Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperEmulator$EmulHandler$EmulHandlerListener;)V

    goto :goto_0
.end method

.method setResetOption(I)V
    .locals 0

    return-void
.end method
