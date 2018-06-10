.class public Lcom/samsung/android/lib/dexcontrol/fota/manager/SDCFotaManagerEmul;
.super Ljava/lang/Object;
.source "SDCFotaManagerEmul.java"

# interfaces
.implements Lcom/samsung/android/lib/dexcontrol/fota/manager/ISDCFotaManager;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/lib/dexcontrol/fota/manager/SDCFotaManagerEmul$EmulHandler;
    }
.end annotation


# static fields
.field private static final CHIP_COUNT:I = 0x3

.field private static final MESSAGE_BOOT_MODE_NORMAL:I = 0x2

.field private static final MESSAGE_BOOT_MODE_UNKNOWN:I = 0x1

.field private static final MESSAGE_FOTA_UPDATE_AVAILABLE:I = 0x3

.field private static final MESSAGE_FOTA_UPDATE_END:I = 0x8

.field private static final MESSAGE_FOTA_UPDATE_NOT_AVAILABLE:I = 0x4

.field private static final MESSAGE_FOTA_UPDATE_PROGRESS_SERVER:I = 0x6

.field private static final MESSAGE_FOTA_UPDATE_PROGRESS_WRITE:I = 0x7

.field private static final MESSAGE_FOTA_UPDATE_START:I = 0x5

.field private static final STATE_CHECKING_VERSION:I = 0x5

.field private static final STATE_CREATING:I = 0x1

.field private static final STATE_DISCONNECTED_CHIP:I = 0x2

.field private static final STATE_NOT_CREATED:I = 0x0

.field private static final STATE_UPDATE_AVAILABLE:I = 0x4

.field private static final STATE_UPDATE_NOT_AVAILABLE:I = 0x3

.field private static final STATE_UPDATING:I = 0x6


# instance fields
.field private mContext:Landroid/content/Context;

.field private mEmulHanlder:Lcom/samsung/android/lib/dexcontrol/fota/manager/SDCFotaManagerEmul$EmulHandler;

.field private mEventHandlerManager:Lcom/samsung/android/lib/dexcontrol/fota/manager/EventHandlerManager;

.field private mLock:Ljava/util/concurrent/locks/Lock;

.field private mSchenarioCheckFotaUpdateAvilable:I

.field private mSchenarioCreate:I

.field private mSchenarioUpdate:I

.field private mState:I

.field private mUpdateProgressServerIndex:I

.field private mUpdateProgressWriteIndex:I


# direct methods
.method public constructor <init>()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/samsung/android/lib/dexcontrol/fota/manager/SDCFotaManagerEmul;->mContext:Landroid/content/Context;

    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/lib/dexcontrol/fota/manager/SDCFotaManagerEmul;->mLock:Ljava/util/concurrent/locks/Lock;

    iput v1, p0, Lcom/samsung/android/lib/dexcontrol/fota/manager/SDCFotaManagerEmul;->mSchenarioCreate:I

    iput v1, p0, Lcom/samsung/android/lib/dexcontrol/fota/manager/SDCFotaManagerEmul;->mSchenarioCheckFotaUpdateAvilable:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/lib/dexcontrol/fota/manager/SDCFotaManagerEmul;->mSchenarioUpdate:I

    iput-object v2, p0, Lcom/samsung/android/lib/dexcontrol/fota/manager/SDCFotaManagerEmul;->mEmulHanlder:Lcom/samsung/android/lib/dexcontrol/fota/manager/SDCFotaManagerEmul$EmulHandler;

    iput-object v2, p0, Lcom/samsung/android/lib/dexcontrol/fota/manager/SDCFotaManagerEmul;->mEventHandlerManager:Lcom/samsung/android/lib/dexcontrol/fota/manager/EventHandlerManager;

    iput v3, p0, Lcom/samsung/android/lib/dexcontrol/fota/manager/SDCFotaManagerEmul;->mUpdateProgressServerIndex:I

    iput v3, p0, Lcom/samsung/android/lib/dexcontrol/fota/manager/SDCFotaManagerEmul;->mUpdateProgressWriteIndex:I

    iput v1, p0, Lcom/samsung/android/lib/dexcontrol/fota/manager/SDCFotaManagerEmul;->mState:I

    invoke-direct {p0}, Lcom/samsung/android/lib/dexcontrol/fota/manager/SDCFotaManagerEmul;->initEmulator()V

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/lib/dexcontrol/fota/manager/SDCFotaManagerEmul;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/lib/dexcontrol/fota/manager/SDCFotaManagerEmul;->changeState(I)V

    return-void
.end method

.method static synthetic access$100(Lcom/samsung/android/lib/dexcontrol/fota/manager/SDCFotaManagerEmul;)Lcom/samsung/android/lib/dexcontrol/fota/manager/EventHandlerManager;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/lib/dexcontrol/fota/manager/SDCFotaManagerEmul;->mEventHandlerManager:Lcom/samsung/android/lib/dexcontrol/fota/manager/EventHandlerManager;

    return-object v0
.end method

.method static synthetic access$200(Lcom/samsung/android/lib/dexcontrol/fota/manager/SDCFotaManagerEmul;)Lcom/samsung/android/lib/dexcontrol/fota/manager/SDCFotaManagerEmul$EmulHandler;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/lib/dexcontrol/fota/manager/SDCFotaManagerEmul;->mEmulHanlder:Lcom/samsung/android/lib/dexcontrol/fota/manager/SDCFotaManagerEmul$EmulHandler;

    return-object v0
.end method

.method static synthetic access$300(Lcom/samsung/android/lib/dexcontrol/fota/manager/SDCFotaManagerEmul;)I
    .locals 1

    iget v0, p0, Lcom/samsung/android/lib/dexcontrol/fota/manager/SDCFotaManagerEmul;->mSchenarioUpdate:I

    return v0
.end method

.method static synthetic access$400(Lcom/samsung/android/lib/dexcontrol/fota/manager/SDCFotaManagerEmul;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/lib/dexcontrol/fota/manager/SDCFotaManagerEmul;->handleError(I)V

    return-void
.end method

.method static synthetic access$500(Lcom/samsung/android/lib/dexcontrol/fota/manager/SDCFotaManagerEmul;)I
    .locals 1

    iget v0, p0, Lcom/samsung/android/lib/dexcontrol/fota/manager/SDCFotaManagerEmul;->mUpdateProgressServerIndex:I

    return v0
.end method

.method static synthetic access$508(Lcom/samsung/android/lib/dexcontrol/fota/manager/SDCFotaManagerEmul;)I
    .locals 2

    iget v0, p0, Lcom/samsung/android/lib/dexcontrol/fota/manager/SDCFotaManagerEmul;->mUpdateProgressServerIndex:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/samsung/android/lib/dexcontrol/fota/manager/SDCFotaManagerEmul;->mUpdateProgressServerIndex:I

    return v0
.end method

.method static synthetic access$600(Lcom/samsung/android/lib/dexcontrol/fota/manager/SDCFotaManagerEmul;)I
    .locals 1

    iget v0, p0, Lcom/samsung/android/lib/dexcontrol/fota/manager/SDCFotaManagerEmul;->mUpdateProgressWriteIndex:I

    return v0
.end method

.method static synthetic access$608(Lcom/samsung/android/lib/dexcontrol/fota/manager/SDCFotaManagerEmul;)I
    .locals 2

    iget v0, p0, Lcom/samsung/android/lib/dexcontrol/fota/manager/SDCFotaManagerEmul;->mUpdateProgressWriteIndex:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/samsung/android/lib/dexcontrol/fota/manager/SDCFotaManagerEmul;->mUpdateProgressWriteIndex:I

    return v0
.end method

.method private changeState(I)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/lib/dexcontrol/fota/manager/SDCFotaManagerEmul;->mLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    iput p1, p0, Lcom/samsung/android/lib/dexcontrol/fota/manager/SDCFotaManagerEmul;->mState:I

    iget-object v0, p0, Lcom/samsung/android/lib/dexcontrol/fota/manager/SDCFotaManagerEmul;->mLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void
.end method

.method private handleError(I)V
    .locals 2

    invoke-direct {p0}, Lcom/samsung/android/lib/dexcontrol/fota/manager/SDCFotaManagerEmul;->init()V

    iget-object v0, p0, Lcom/samsung/android/lib/dexcontrol/fota/manager/SDCFotaManagerEmul;->mEventHandlerManager:Lcom/samsung/android/lib/dexcontrol/fota/manager/EventHandlerManager;

    const/4 v1, 0x5

    invoke-virtual {v0, v1, p1}, Lcom/samsung/android/lib/dexcontrol/fota/manager/EventHandlerManager;->invokeSelfListener(II)V

    return-void
.end method

.method private init()V
    .locals 2

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/samsung/android/lib/dexcontrol/fota/manager/SDCFotaManagerEmul;->mLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/samsung/android/lib/dexcontrol/fota/manager/SDCFotaManagerEmul;->changeState(I)V

    iget-object v0, p0, Lcom/samsung/android/lib/dexcontrol/fota/manager/SDCFotaManagerEmul;->mLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    iput v1, p0, Lcom/samsung/android/lib/dexcontrol/fota/manager/SDCFotaManagerEmul;->mUpdateProgressServerIndex:I

    iput v1, p0, Lcom/samsung/android/lib/dexcontrol/fota/manager/SDCFotaManagerEmul;->mUpdateProgressWriteIndex:I

    return-void
.end method

.method private initEmulator()V
    .locals 2

    new-instance v0, Lcom/samsung/android/lib/dexcontrol/fota/manager/SDCFotaManagerEmul$EmulHandler;

    invoke-direct {v0}, Lcom/samsung/android/lib/dexcontrol/fota/manager/SDCFotaManagerEmul$EmulHandler;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/lib/dexcontrol/fota/manager/SDCFotaManagerEmul;->mEmulHanlder:Lcom/samsung/android/lib/dexcontrol/fota/manager/SDCFotaManagerEmul$EmulHandler;

    iget-object v0, p0, Lcom/samsung/android/lib/dexcontrol/fota/manager/SDCFotaManagerEmul;->mEmulHanlder:Lcom/samsung/android/lib/dexcontrol/fota/manager/SDCFotaManagerEmul$EmulHandler;

    new-instance v1, Lcom/samsung/android/lib/dexcontrol/fota/manager/SDCFotaManagerEmul$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/lib/dexcontrol/fota/manager/SDCFotaManagerEmul$1;-><init>(Lcom/samsung/android/lib/dexcontrol/fota/manager/SDCFotaManagerEmul;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/lib/dexcontrol/fota/manager/SDCFotaManagerEmul$EmulHandler;->setListener(Lcom/samsung/android/lib/dexcontrol/fota/manager/SDCFotaManagerEmul$EmulHandler$EmulHandlerListener;)V

    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/lib/dexcontrol/fota/manager/SDCFotaManagerEmul;->mEventHandlerManager:Lcom/samsung/android/lib/dexcontrol/fota/manager/EventHandlerManager;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/lib/dexcontrol/fota/manager/SDCFotaManagerEmul;->mEventHandlerManager:Lcom/samsung/android/lib/dexcontrol/fota/manager/EventHandlerManager;

    invoke-virtual {v0}, Lcom/samsung/android/lib/dexcontrol/fota/manager/EventHandlerManager;->clear()V

    goto :goto_0
.end method

.method public requestCheckFotaUpdateAvailable()V
    .locals 6

    const-wide/16 v4, 0x7d0

    const/4 v2, 0x5

    iget v0, p0, Lcom/samsung/android/lib/dexcontrol/fota/manager/SDCFotaManagerEmul;->mState:I

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    invoke-direct {p0, v2}, Lcom/samsung/android/lib/dexcontrol/fota/manager/SDCFotaManagerEmul;->changeState(I)V

    iget v0, p0, Lcom/samsung/android/lib/dexcontrol/fota/manager/SDCFotaManagerEmul;->mSchenarioCheckFotaUpdateAvilable:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/lib/dexcontrol/fota/manager/SDCFotaManagerEmul;->mEmulHanlder:Lcom/samsung/android/lib/dexcontrol/fota/manager/SDCFotaManagerEmul$EmulHandler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1, v4, v5}, Lcom/samsung/android/lib/dexcontrol/fota/manager/SDCFotaManagerEmul$EmulHandler;->sendEmptyMessageDelayed(IJ)Z

    :goto_0
    iget v0, p0, Lcom/samsung/android/lib/dexcontrol/fota/manager/SDCFotaManagerEmul;->mSchenarioCheckFotaUpdateAvilable:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/samsung/android/lib/dexcontrol/fota/manager/SDCFotaManagerEmul;->mSchenarioCheckFotaUpdateAvilable:I

    return-void

    :pswitch_1
    const-string/jumbo v0, "Now updating!! Do not call startFotaUpdate() while updating."

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
    iget-object v0, p0, Lcom/samsung/android/lib/dexcontrol/fota/manager/SDCFotaManagerEmul;->mEventHandlerManager:Lcom/samsung/android/lib/dexcontrol/fota/manager/EventHandlerManager;

    const/4 v1, 0x2

    invoke-virtual {v0, v2, v1}, Lcom/samsung/android/lib/dexcontrol/fota/manager/EventHandlerManager;->invokeSelfListener(II)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/lib/dexcontrol/fota/manager/SDCFotaManagerEmul;->mEmulHanlder:Lcom/samsung/android/lib/dexcontrol/fota/manager/SDCFotaManagerEmul$EmulHandler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1, v4, v5}, Lcom/samsung/android/lib/dexcontrol/fota/manager/SDCFotaManagerEmul$EmulHandler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    nop

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

    const/4 v1, 0x1

    iput-object p1, p0, Lcom/samsung/android/lib/dexcontrol/fota/manager/SDCFotaManagerEmul;->mContext:Landroid/content/Context;

    iget v0, p0, Lcom/samsung/android/lib/dexcontrol/fota/manager/SDCFotaManagerEmul;->mState:I

    if-nez v0, :cond_0

    invoke-direct {p0, v1}, Lcom/samsung/android/lib/dexcontrol/fota/manager/SDCFotaManagerEmul;->changeState(I)V

    new-instance v0, Lcom/samsung/android/lib/dexcontrol/fota/manager/EventHandlerManager;

    invoke-direct {v0}, Lcom/samsung/android/lib/dexcontrol/fota/manager/EventHandlerManager;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/lib/dexcontrol/fota/manager/SDCFotaManagerEmul;->mEventHandlerManager:Lcom/samsung/android/lib/dexcontrol/fota/manager/EventHandlerManager;

    iget-object v0, p0, Lcom/samsung/android/lib/dexcontrol/fota/manager/SDCFotaManagerEmul;->mEventHandlerManager:Lcom/samsung/android/lib/dexcontrol/fota/manager/EventHandlerManager;

    invoke-virtual {v0, p2, p3}, Lcom/samsung/android/lib/dexcontrol/fota/manager/EventHandlerManager;->set(Lcom/samsung/android/lib/dexcontrol/fota/manager/SDCFotaManagerEventHandler;Lcom/samsung/android/lib/dexcontrol/fota/manager/ISDCFotaManagerListener;)V

    iget-object v0, p0, Lcom/samsung/android/lib/dexcontrol/fota/manager/SDCFotaManagerEmul;->mEmulHanlder:Lcom/samsung/android/lib/dexcontrol/fota/manager/SDCFotaManagerEmul$EmulHandler;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/lib/dexcontrol/fota/manager/SDCFotaManagerEmul$EmulHandler;->sendEmptyMessageDelayed(IJ)Z

    return-void

    :cond_0
    const-string/jumbo v0, "SDCFotaManager is aleady created!"

    invoke-static {v0}, Lcom/samsung/android/lib/dexcontrol/fota/debug/DexFotaLibException;->exception(Ljava/lang/String;)V

    return-void
.end method

.method public startFotaUpdate()V
    .locals 5

    const/4 v4, 0x5

    const/4 v1, 0x1

    iget v0, p0, Lcom/samsung/android/lib/dexcontrol/fota/manager/SDCFotaManagerEmul;->mState:I

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    const/4 v0, 0x6

    invoke-direct {p0, v0}, Lcom/samsung/android/lib/dexcontrol/fota/manager/SDCFotaManagerEmul;->changeState(I)V

    iget v0, p0, Lcom/samsung/android/lib/dexcontrol/fota/manager/SDCFotaManagerEmul;->mSchenarioUpdate:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/samsung/android/lib/dexcontrol/fota/manager/SDCFotaManagerEmul;->mSchenarioUpdate:I

    iput v1, p0, Lcom/samsung/android/lib/dexcontrol/fota/manager/SDCFotaManagerEmul;->mUpdateProgressWriteIndex:I

    iput v1, p0, Lcom/samsung/android/lib/dexcontrol/fota/manager/SDCFotaManagerEmul;->mUpdateProgressServerIndex:I

    iget-object v0, p0, Lcom/samsung/android/lib/dexcontrol/fota/manager/SDCFotaManagerEmul;->mEmulHanlder:Lcom/samsung/android/lib/dexcontrol/fota/manager/SDCFotaManagerEmul$EmulHandler;

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v4, v2, v3}, Lcom/samsung/android/lib/dexcontrol/fota/manager/SDCFotaManagerEmul$EmulHandler;->sendEmptyMessageDelayed(IJ)Z

    return-void

    :pswitch_1
    const-string/jumbo v0, "Now updating!! Do not call startFotaUpdate() while updating."

    invoke-static {v0}, Lcom/samsung/android/lib/dexcontrol/fota/debug/DexFotaLibException;->exception(Ljava/lang/String;)V

    return-void

    :pswitch_2
    const-string/jumbo v0, "FotaManager is not created!"

    invoke-static {v0}, Lcom/samsung/android/lib/dexcontrol/fota/debug/DexFotaLibException;->exception(Ljava/lang/String;)V

    return-void

    :pswitch_3
    const-string/jumbo v0, "Fota update is not available!"

    invoke-static {v0}, Lcom/samsung/android/lib/dexcontrol/fota/debug/DexFotaLibException;->exception(Ljava/lang/String;)V

    return-void

    :pswitch_4
    const-string/jumbo v0, "Impossible duplicated update check!!"

    invoke-static {v0}, Lcom/samsung/android/lib/dexcontrol/fota/debug/DexFotaLibException;->exception(Ljava/lang/String;)V

    return-void

    :pswitch_5
    iget-object v0, p0, Lcom/samsung/android/lib/dexcontrol/fota/manager/SDCFotaManagerEmul;->mEventHandlerManager:Lcom/samsung/android/lib/dexcontrol/fota/manager/EventHandlerManager;

    const/4 v1, 0x2

    invoke-virtual {v0, v4, v1}, Lcom/samsung/android/lib/dexcontrol/fota/manager/EventHandlerManager;->invokeSelfListener(II)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_2
        :pswitch_5
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_1
    .end packed-switch
.end method
