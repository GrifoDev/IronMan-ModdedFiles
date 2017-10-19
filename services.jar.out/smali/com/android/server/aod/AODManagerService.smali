.class public final Lcom/android/server/aod/AODManagerService;
.super Lcom/android/server/SystemService;
.source "AODManagerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/aod/AODManagerService$1;,
        Lcom/android/server/aod/AODManagerService$2;,
        Lcom/android/server/aod/AODManagerService$3;,
        Lcom/android/server/aod/AODManagerService$4;,
        Lcom/android/server/aod/AODManagerService$AODConnection;,
        Lcom/android/server/aod/AODManagerService$AODConnectionCause;,
        Lcom/android/server/aod/AODManagerService$AODHandler;,
        Lcom/android/server/aod/AODManagerService$AODListenerRecord;,
        Lcom/android/server/aod/AODManagerService$BinderService;,
        Lcom/android/server/aod/AODManagerService$LocalService;,
        Lcom/android/server/aod/AODManagerService$SettingsObserver;
    }
.end annotation


# static fields
.field private static final AOD_CONNECTION_TIMEOUT:I = 0x1388

.field private static final AOD_DEBUG:Z = false

.field private static final AOD_SCREEN_TURNING_ON_TIMEOUT:I = 0x64

.field private static AOD_SHOW_STATE:Ljava/lang/String; = null

.field private static final CONFIG_DISABLE_TOUCH:Ljava/lang/String; = "-touch"

.field private static final CONFIG_SMARTALERT:Ljava/lang/String; = "smartalert"

.field public static GREAT_SPEN_USP_LEVEL:I = 0x0

.field private static final SEC_FLOATING_FEATURE_FRAMEWORK_CONFIG_AOD_ITEM:Ljava/lang/String; = "SEC_FLOATING_FEATURE_FRAMEWORK_CONFIG_AOD_ITEM"

.field private static final TAG:Ljava/lang/String;

.field private static final TSP_AOD_SETTING_ENABLED:Ljava/lang/String; = "/sys/class/sec/tsp/cmd"

.field private static final TSP_INPUT_ENABLED:Ljava/lang/String; = "/sys/class/sec/tsp/input/enabled"

.field private static final WACOM_AOD_SETTING_ENABLED:Ljava/lang/String; = "/sys/class/sec/sec_epen/aod_enable"

.field private static final WACOM_SPEN_INPUT_ENABLED:Ljava/lang/String; = "/sys/class/sec/sec_epen/input/enabled"


# instance fields
.field private mAODChangeListener:Lcom/samsung/android/aod/AODManager$AODChangeListener;

.field private mAODConnection:Lcom/android/server/aod/AODManagerService$AODConnection;

.field private final mAODHandler:Lcom/android/server/aod/AODManagerService$AODHandler;

.field private mAODNotificationData:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/service/notification/StatusBarNotification;",
            ">;"
        }
    .end annotation
.end field

.field private final mAODNotificationListener:Landroid/service/notification/NotificationListenerService;

.field private mAODSettings:Lcom/android/server/aod/settings/AODSettings;

.field private final mBatteryStats:Lcom/android/internal/app/IBatteryStats;

.field private mCalendarDataDescription:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mCalendarDataTimeInfo:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private mCurrentUser:I

.field private mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

.field private final mDisplayManager:Landroid/hardware/display/DisplayManager;

.field private mEffectiveUserId:I

.field private mIsAODModeEnabled:Z

.field private mIsAODStartStop:Z

.field private mIsAODTouchDisabled:Z

.field private mIsSingleTouchMode:Z

.field private mIsSmartAlertEnabled:Z

.field private final mListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/aod/AODManagerService$AODListenerRecord;",
            ">;"
        }
    .end annotation
.end field

.field private final mLock:Ljava/lang/Object;

.field private mLooper:Landroid/os/Looper;

.field private mNewUserId:I

.field private mNotiCount:I

.field private mNotificationKeys:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mScreenTurningOnLock:Ljava/lang/Object;

.field private final mScreenTurningOnRunnable:Ljava/lang/Runnable;

.field private mSettingsObserver:Lcom/android/server/aod/AODManagerService$SettingsObserver;

.field private mSmartAlertNotiKeyList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mSpenUspLevel:I

.field private final mStopCurrentConnectionRunnable:Ljava/lang/Runnable;

.field private final mStopUnconnectedAODRunnable:Ljava/lang/Runnable;

.field private mSupportAODFeatureVersion:I

.field private mTspH:I

.field private final mTspRects:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation
.end field

.field private mTspW:I

.field private mTspX:I

.field private mTspY:I

.field private mUserSwitched:Z


# direct methods
.method static synthetic -get0()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/server/aod/AODManagerService;->AOD_SHOW_STATE:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get1()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/server/aod/AODManagerService;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get10(Lcom/android/server/aod/AODManagerService;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/aod/AODManagerService;->mIsSmartAlertEnabled:Z

    return v0
.end method

.method static synthetic -get11(Lcom/android/server/aod/AODManagerService;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/android/server/aod/AODManagerService;->mListeners:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic -get12(Lcom/android/server/aod/AODManagerService;)Landroid/os/Looper;
    .locals 1

    iget-object v0, p0, Lcom/android/server/aod/AODManagerService;->mLooper:Landroid/os/Looper;

    return-object v0
.end method

.method static synthetic -get13(Lcom/android/server/aod/AODManagerService;)I
    .locals 1

    iget v0, p0, Lcom/android/server/aod/AODManagerService;->mNewUserId:I

    return v0
.end method

.method static synthetic -get14(Lcom/android/server/aod/AODManagerService;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/android/server/aod/AODManagerService;->mScreenTurningOnLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic -get15(Lcom/android/server/aod/AODManagerService;)Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lcom/android/server/aod/AODManagerService;->mScreenTurningOnRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic -get16(Lcom/android/server/aod/AODManagerService;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/android/server/aod/AODManagerService;->mSmartAlertNotiKeyList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/server/aod/AODManagerService;)Lcom/samsung/android/aod/AODManager$AODChangeListener;
    .locals 1

    iget-object v0, p0, Lcom/android/server/aod/AODManagerService;->mAODChangeListener:Lcom/samsung/android/aod/AODManager$AODChangeListener;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/server/aod/AODManagerService;)Lcom/android/server/aod/AODManagerService$AODConnection;
    .locals 1

    iget-object v0, p0, Lcom/android/server/aod/AODManagerService;->mAODConnection:Lcom/android/server/aod/AODManagerService$AODConnection;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/server/aod/AODManagerService;)Lcom/android/server/aod/AODManagerService$AODHandler;
    .locals 1

    iget-object v0, p0, Lcom/android/server/aod/AODManagerService;->mAODHandler:Lcom/android/server/aod/AODManagerService$AODHandler;

    return-object v0
.end method

.method static synthetic -get5(Lcom/android/server/aod/AODManagerService;)Ljava/util/HashMap;
    .locals 1

    iget-object v0, p0, Lcom/android/server/aod/AODManagerService;->mAODNotificationData:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic -get6(Lcom/android/server/aod/AODManagerService;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/server/aod/AODManagerService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get7(Lcom/android/server/aod/AODManagerService;)I
    .locals 1

    iget v0, p0, Lcom/android/server/aod/AODManagerService;->mCurrentUser:I

    return v0
.end method

.method static synthetic -get8(Lcom/android/server/aod/AODManagerService;)Landroid/hardware/display/DisplayManager;
    .locals 1

    iget-object v0, p0, Lcom/android/server/aod/AODManagerService;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    return-object v0
.end method

.method static synthetic -get9(Lcom/android/server/aod/AODManagerService;)I
    .locals 1

    iget v0, p0, Lcom/android/server/aod/AODManagerService;->mEffectiveUserId:I

    return v0
.end method

.method static synthetic -set0(Lcom/android/server/aod/AODManagerService;Lcom/samsung/android/aod/AODManager$AODChangeListener;)Lcom/samsung/android/aod/AODManager$AODChangeListener;
    .locals 0

    iput-object p1, p0, Lcom/android/server/aod/AODManagerService;->mAODChangeListener:Lcom/samsung/android/aod/AODManager$AODChangeListener;

    return-object p1
.end method

.method static synthetic -set1(Lcom/android/server/aod/AODManagerService;I)I
    .locals 0

    iput p1, p0, Lcom/android/server/aod/AODManagerService;->mCurrentUser:I

    return p1
.end method

.method static synthetic -set2(Lcom/android/server/aod/AODManagerService;I)I
    .locals 0

    iput p1, p0, Lcom/android/server/aod/AODManagerService;->mEffectiveUserId:I

    return p1
.end method

.method static synthetic -set3(Lcom/android/server/aod/AODManagerService;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/aod/AODManagerService;->mIsSingleTouchMode:Z

    return p1
.end method

.method static synthetic -set4(Lcom/android/server/aod/AODManagerService;I)I
    .locals 0

    iput p1, p0, Lcom/android/server/aod/AODManagerService;->mNewUserId:I

    return p1
.end method

.method static synthetic -set5(Lcom/android/server/aod/AODManagerService;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/aod/AODManagerService;->mUserSwitched:Z

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/server/aod/AODManagerService;IJJJJJJJJ)I
    .locals 2

    invoke-direct/range {p0 .. p17}, Lcom/android/server/aod/AODManagerService;->setLiveClockInfoInternal(IJJJJJJJJ)I

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/android/server/aod/AODManagerService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/aod/AODManagerService;->checkCallerIsSystemOrSystemUI()V

    return-void
.end method

.method static synthetic -wrap10(Lcom/android/server/aod/AODManagerService;IIIII)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/android/server/aod/AODManagerService;->updateAODTspRectInternal(IIIII)V

    return-void
.end method

.method static synthetic -wrap11(Lcom/android/server/aod/AODManagerService;Ljava/util/List;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/server/aod/AODManagerService;->updateCalendarDataInternal(Ljava/util/List;Ljava/util/List;)V

    return-void
.end method

.method static synthetic -wrap12(Lcom/android/server/aod/AODManagerService;ILjava/util/List;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/server/aod/AODManagerService;->updateNotificationKeysInternal(ILjava/util/List;)V

    return-void
.end method

.method static synthetic -wrap13(Lcom/android/server/aod/AODManagerService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/aod/AODManagerService;->updateSettings()V

    return-void
.end method

.method static synthetic -wrap14(Lcom/android/server/aod/AODManagerService;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/android/server/aod/AODManagerService;->writeAODCommandInternal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/server/aod/AODManagerService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/aod/AODManagerService;->checkCallerIsSystemOrSystemUid()V

    return-void
.end method

.method static synthetic -wrap3(Lcom/android/server/aod/AODManagerService;Ljava/io/PrintWriter;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/aod/AODManagerService;->dumpInternal(Ljava/io/PrintWriter;)V

    return-void
.end method

.method static synthetic -wrap4(Lcom/android/server/aod/AODManagerService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/aod/AODManagerService;->readyToScreenTurningOnInternal()V

    return-void
.end method

.method static synthetic -wrap5(Lcom/android/server/aod/AODManagerService;Landroid/os/IBinder;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/aod/AODManagerService;->registerAODListenerInternal(Landroid/os/IBinder;)V

    return-void
.end method

.method static synthetic -wrap6(Lcom/android/server/aod/AODManagerService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/aod/AODManagerService;->requestCalendarDataInternal()V

    return-void
.end method

.method static synthetic -wrap7(Lcom/android/server/aod/AODManagerService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/aod/AODManagerService;->requestNotificationKeysInternal()V

    return-void
.end method

.method static synthetic -wrap8(Lcom/android/server/aod/AODManagerService;[B)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/aod/AODManagerService;->setLiveClockNeedleInternal([B)V

    return-void
.end method

.method static synthetic -wrap9(Lcom/android/server/aod/AODManagerService;Landroid/os/IBinder;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/aod/AODManagerService;->unregisterAODListenerInternal(Landroid/os/IBinder;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/android/server/aod/AODManagerService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/aod/AODManagerService;->TAG:Ljava/lang/String;

    const-string/jumbo v0, "aod_show_state"

    sput-object v0, Lcom/android/server/aod/AODManagerService;->AOD_SHOW_STATE:Ljava/lang/String;

    const/16 v0, 0x1e

    sput v0, Lcom/android/server/aod/AODManagerService;->GREAT_SPEN_USP_LEVEL:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 5

    const/4 v4, 0x0

    const/4 v3, -0x1

    const/4 v2, 0x0

    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/aod/AODManagerService;->mListeners:Ljava/util/ArrayList;

    const-string/jumbo v1, "4"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p0, Lcom/android/server/aod/AODManagerService;->mSupportAODFeatureVersion:I

    iput-boolean v2, p0, Lcom/android/server/aod/AODManagerService;->mIsAODTouchDisabled:Z

    iput-boolean v2, p0, Lcom/android/server/aod/AODManagerService;->mIsSmartAlertEnabled:Z

    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/server/aod/AODManagerService;->mLock:Ljava/lang/Object;

    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/server/aod/AODManagerService;->mScreenTurningOnLock:Ljava/lang/Object;

    iput-boolean v2, p0, Lcom/android/server/aod/AODManagerService;->mIsAODModeEnabled:Z

    iput-boolean v2, p0, Lcom/android/server/aod/AODManagerService;->mIsAODStartStop:Z

    iput-object v4, p0, Lcom/android/server/aod/AODManagerService;->mAODConnection:Lcom/android/server/aod/AODManagerService$AODConnection;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/aod/AODManagerService;->mNotificationKeys:Ljava/util/List;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/aod/AODManagerService;->mCalendarDataTimeInfo:Ljava/util/List;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/aod/AODManagerService;->mCalendarDataDescription:Ljava/util/List;

    iput v2, p0, Lcom/android/server/aod/AODManagerService;->mNotiCount:I

    iput v2, p0, Lcom/android/server/aod/AODManagerService;->mCurrentUser:I

    iput-boolean v2, p0, Lcom/android/server/aod/AODManagerService;->mUserSwitched:Z

    iput v3, p0, Lcom/android/server/aod/AODManagerService;->mEffectiveUserId:I

    iput v3, p0, Lcom/android/server/aod/AODManagerService;->mNewUserId:I

    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lcom/android/server/aod/AODManagerService;->mTspRects:Landroid/util/SparseArray;

    iput-boolean v2, p0, Lcom/android/server/aod/AODManagerService;->mIsSingleTouchMode:Z

    iput v3, p0, Lcom/android/server/aod/AODManagerService;->mSpenUspLevel:I

    new-instance v1, Lcom/android/server/aod/AODManagerService$1;

    invoke-direct {v1, p0}, Lcom/android/server/aod/AODManagerService$1;-><init>(Lcom/android/server/aod/AODManagerService;)V

    iput-object v1, p0, Lcom/android/server/aod/AODManagerService;->mStopUnconnectedAODRunnable:Ljava/lang/Runnable;

    new-instance v1, Lcom/android/server/aod/AODManagerService$2;

    invoke-direct {v1, p0}, Lcom/android/server/aod/AODManagerService$2;-><init>(Lcom/android/server/aod/AODManagerService;)V

    iput-object v1, p0, Lcom/android/server/aod/AODManagerService;->mStopCurrentConnectionRunnable:Ljava/lang/Runnable;

    new-instance v1, Lcom/android/server/aod/AODManagerService$3;

    invoke-direct {v1, p0}, Lcom/android/server/aod/AODManagerService$3;-><init>(Lcom/android/server/aod/AODManagerService;)V

    iput-object v1, p0, Lcom/android/server/aod/AODManagerService;->mScreenTurningOnRunnable:Ljava/lang/Runnable;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/aod/AODManagerService;->mAODNotificationData:Ljava/util/HashMap;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/aod/AODManagerService;->mSmartAlertNotiKeyList:Ljava/util/List;

    new-instance v1, Lcom/android/server/aod/AODManagerService$4;

    invoke-direct {v1, p0}, Lcom/android/server/aod/AODManagerService$4;-><init>(Lcom/android/server/aod/AODManagerService;)V

    iput-object v1, p0, Lcom/android/server/aod/AODManagerService;->mAODNotificationListener:Landroid/service/notification/NotificationListenerService;

    iput-object p1, p0, Lcom/android/server/aod/AODManagerService;->mContext:Landroid/content/Context;

    new-instance v1, Lcom/android/server/aod/AODManagerService$AODHandler;

    invoke-static {}, Lcom/android/server/FgThread;->get()Lcom/android/server/FgThread;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/FgThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/server/aod/AODManagerService$AODHandler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/server/aod/AODManagerService;->mAODHandler:Lcom/android/server/aod/AODManagerService$AODHandler;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/aod/AODManagerService;->mLooper:Landroid/os/Looper;

    new-instance v1, Lcom/android/server/aod/settings/AODSettings;

    iget-object v2, p0, Lcom/android/server/aod/AODManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/android/server/aod/settings/AODSettings;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/server/aod/AODManagerService;->mAODSettings:Lcom/android/server/aod/settings/AODSettings;

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v1

    iput v1, p0, Lcom/android/server/aod/AODManagerService;->mCurrentUser:I

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v1

    const-string/jumbo v2, "SEC_FLOATING_FEATURE_FRAMEWORK_CONFIG_AOD_ITEM"

    invoke-virtual {v1, v2}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "-touch"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/aod/AODManagerService;->mIsAODTouchDisabled:Z

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v1

    const-string/jumbo v2, "SEC_FLOATING_FEATURE_FRAMEWORK_CONFIG_AOD_ITEM"

    invoke-virtual {v1, v2}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "smartalert"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/aod/AODManagerService;->mIsSmartAlertEnabled:Z

    new-instance v1, Lcom/android/server/aod/AODManagerService$SettingsObserver;

    iget-object v2, p0, Lcom/android/server/aod/AODManagerService;->mAODHandler:Lcom/android/server/aod/AODManagerService$AODHandler;

    invoke-direct {v1, p0, v2}, Lcom/android/server/aod/AODManagerService$SettingsObserver;-><init>(Lcom/android/server/aod/AODManagerService;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/android/server/aod/AODManagerService;->mSettingsObserver:Lcom/android/server/aod/AODManagerService$SettingsObserver;

    invoke-static {}, Lcom/android/server/am/BatteryStatsService;->getService()Lcom/android/internal/app/IBatteryStats;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/aod/AODManagerService;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    iget-object v1, p0, Lcom/android/server/aod/AODManagerService;->mSettingsObserver:Lcom/android/server/aod/AODManagerService$SettingsObserver;

    invoke-virtual {v1}, Lcom/android/server/aod/AODManagerService$SettingsObserver;->observe()V

    const-string/jumbo v1, "display"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/display/DisplayManager;

    iput-object v1, p0, Lcom/android/server/aod/AODManagerService;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    new-instance v1, Lcom/android/server/aod/AODManagerService$5;

    invoke-direct {v1, p0}, Lcom/android/server/aod/AODManagerService$5;-><init>(Lcom/android/server/aod/AODManagerService;)V

    iput-object v1, p0, Lcom/android/server/aod/AODManagerService;->mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

    iget-object v1, p0, Lcom/android/server/aod/AODManagerService;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/aod/AODManagerService;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    iget-object v2, p0, Lcom/android/server/aod/AODManagerService;->mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

    invoke-virtual {v1, v2, v4}, Landroid/hardware/display/DisplayManager;->registerDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;Landroid/os/Handler;)V

    :cond_0
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    new-instance v2, Lcom/android/server/aod/AODManagerService$6;

    invoke-direct {v2, p0}, Lcom/android/server/aod/AODManagerService$6;-><init>(Lcom/android/server/aod/AODManagerService;)V

    sget-object v3, Lcom/android/server/aod/AODManagerService;->TAG:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Landroid/app/IActivityManager;->registerUserSwitchObserver(Landroid/app/IUserSwitchObserver;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method private checkCallerIsSystem()V
    .locals 3

    invoke-direct {p0}, Lcom/android/server/aod/AODManagerService;->isCallerSystem()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Disallowed call for uid "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private checkCallerIsSystemOrSystemUI()V
    .locals 3

    invoke-direct {p0}, Lcom/android/server/aod/AODManagerService;->isCallerSystemUI()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/server/aod/AODManagerService;->isCallerSystem()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    return-void

    :cond_1
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Disallowed call for uid "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private checkCallerIsSystemOrSystemUid()V
    .locals 3

    invoke-direct {p0}, Lcom/android/server/aod/AODManagerService;->isCallerSystemApp()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/server/aod/AODManagerService;->isCallerSystem()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    return-void

    :cond_1
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Disallowed call for uid "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private createAODConnection(Lcom/android/server/aod/AODManagerService$AODConnectionCause;)V
    .locals 8

    iget-object v3, p0, Lcom/android/server/aod/AODManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    invoke-direct {p0}, Lcom/android/server/aod/AODManagerService;->checkCallerIsSystem()V

    new-instance v2, Lcom/android/server/aod/AODManagerService$AODConnection;

    invoke-direct {v2, p0, p1}, Lcom/android/server/aod/AODManagerService$AODConnection;-><init>(Lcom/android/server/aod/AODManagerService;Lcom/android/server/aod/AODManagerService$AODConnectionCause;)V

    iput-object v2, p0, Lcom/android/server/aod/AODManagerService;->mAODConnection:Lcom/android/server/aod/AODManagerService$AODConnection;

    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "com.samsung.android.aod.AlwaysOnDisplayService"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v2, Landroid/content/ComponentName;

    const-string/jumbo v4, "com.samsung.android.app.aodservice"

    const-string/jumbo v5, "com.samsung.android.app.aodservice.AODService"

    invoke-direct {v2, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v2, p0, Lcom/android/server/aod/AODManagerService;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/server/aod/AODManagerService;->mAODConnection:Lcom/android/server/aod/AODManagerService$AODConnection;

    sget-object v5, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    const v6, 0x4000001

    invoke-virtual {v2, v1, v4, v6, v5}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    move-result v2

    if-nez v2, :cond_0

    sget-object v2, Lcom/android/server/aod/AODManagerService;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "createAODConnection : bindServiceAsUser fail"

    invoke-static {v2, v4}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/server/aod/AODManagerService;->mAODConnection:Lcom/android/server/aod/AODManagerService$AODConnection;
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    monitor-exit v3

    return-void

    :cond_0
    :try_start_2
    sget-object v2, Lcom/android/server/aod/AODManagerService;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "createAODConnection : bindServiceAsUser success"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/server/aod/AODManagerService;->mAODConnection:Lcom/android/server/aod/AODManagerService$AODConnection;

    const/4 v4, 0x1

    iput-boolean v4, v2, Lcom/android/server/aod/AODManagerService$AODConnection;->mBound:Z

    iget-object v2, p0, Lcom/android/server/aod/AODManagerService;->mAODHandler:Lcom/android/server/aod/AODManagerService$AODHandler;

    iget-object v4, p0, Lcom/android/server/aod/AODManagerService;->mStopUnconnectedAODRunnable:Ljava/lang/Runnable;

    const-wide/16 v6, 0x1388

    invoke-virtual {v2, v4, v6, v7}, Lcom/android/server/aod/AODManagerService$AODHandler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_2
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_3
    sget-object v2, Lcom/android/server/aod/AODManagerService;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Unable to bind AODService: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/server/aod/AODManagerService;->mAODConnection:Lcom/android/server/aod/AODManagerService$AODConnection;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit v3

    return-void

    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method private dumpInternal(Ljava/io/PrintWriter;)V
    .locals 7

    const-string/jumbo v4, "AODMANAGER (dumpsys AODManagerService)"

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "ActivityManager.getCurrentUser()="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "mCurrentUser="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/server/aod/AODManagerService;->mCurrentUser:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "mIsAODTouchDisabled="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/android/server/aod/AODManagerService;->mIsAODTouchDisabled:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-boolean v4, p0, Lcom/android/server/aod/AODManagerService;->mUserSwitched:Z

    if-eqz v4, :cond_0

    const-string/jumbo v4, "   . . . Last UserSwitched : "

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "              mNewUserId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/server/aod/AODManagerService;->mNewUserId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "              mEffectiveUserId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/server/aod/AODManagerService;->mEffectiveUserId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "mAODConnection="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/aod/AODManagerService;->mAODConnection:Lcom/android/server/aod/AODManagerService$AODConnection;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/server/aod/AODManagerService;->mAODConnection:Lcom/android/server/aod/AODManagerService$AODConnection;

    if-eqz v4, :cond_1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "mAODConnection mService="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/aod/AODManagerService;->mAODConnection:Lcom/android/server/aod/AODManagerService$AODConnection;

    iget-object v5, v5, Lcom/android/server/aod/AODManagerService$AODConnection;->mService:Lcom/samsung/android/aod/IAlwaysOnDisplayService;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "mAODConnection mBound="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/aod/AODManagerService;->mAODConnection:Lcom/android/server/aod/AODManagerService$AODConnection;

    iget-boolean v5, v5, Lcom/android/server/aod/AODManagerService$AODConnection;->mBound:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "mAODConnection mConnecteded="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/aod/AODManagerService;->mAODConnection:Lcom/android/server/aod/AODManagerService$AODConnection;

    iget-boolean v5, v5, Lcom/android/server/aod/AODManagerService$AODConnection;->mConnected:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "mAODConnection mConnectedUser="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/aod/AODManagerService;->mAODConnection:Lcom/android/server/aod/AODManagerService$AODConnection;

    iget v5, v5, Lcom/android/server/aod/AODManagerService$AODConnection;->mConnectedUser:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "mAODConnection mConnectionCauseList="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/aod/AODManagerService;->mAODConnection:Lcom/android/server/aod/AODManagerService$AODConnection;

    iget-object v5, v5, Lcom/android/server/aod/AODManagerService$AODConnection;->mConnectionCauseList:Ljava/util/List;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_1
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    const-string/jumbo v4, "----- Regarding AOD TSP -----"

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "mIsAODModeEnabled(tsp.cmd aod_enable)="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/android/server/aod/AODManagerService;->mIsAODModeEnabled:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "mIsSingleTouchMode(tsp.input.enabled)="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/android/server/aod/AODManagerService;->mIsSingleTouchMode:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/android/server/aod/AODManagerService;->mTspRects:Landroid/util/SparseArray;

    monitor-enter v5

    :try_start_0
    iget-object v4, p0, Lcom/android/server/aod/AODManagerService;->mTspRects:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    iget-object v4, p0, Lcom/android/server/aod/AODManagerService;->mTspRects:Landroid/util/SparseArray;

    invoke-virtual {v4, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    iget-object v4, p0, Lcom/android/server/aod/AODManagerService;->mTspRects:Landroid/util/SparseArray;

    invoke-virtual {v4, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Rect;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "tsp touch rect(uid :"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v6, "), "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    monitor-exit v5

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "tsp touch : x="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/server/aod/AODManagerService;->mTspX:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", y="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/server/aod/AODManagerService;->mTspY:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", w="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/server/aod/AODManagerService;->mTspW:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", h="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/server/aod/AODManagerService;->mTspH:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void

    :catchall_0
    move-exception v4

    monitor-exit v5

    throw v4
.end method

.method private isCallerSystem()Z
    .locals 1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/server/aod/AODManagerService;->isUidSystem(I)Z

    move-result v0

    return v0
.end method

.method private isCallerSystemApp()Z
    .locals 15

    const/4 v14, 0x1

    const/4 v9, 0x0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/4 v6, 0x0

    iget-object v8, p0, Lcom/android/server/aod/AODManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    :try_start_0
    invoke-virtual {v7, v0}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v6

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    if-eqz v6, :cond_1

    array-length v10, v6

    move v8, v9

    :goto_0
    if-ge v8, v10, :cond_2

    aget-object v4, v6, v8

    const/4 v11, 0x0

    :try_start_1
    invoke-virtual {v7, v4, v11}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v5

    if-eqz v5, :cond_0

    iget-object v11, v5, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v11, v11, Landroid/content/pm/ApplicationInfo;->flags:I
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    and-int/lit16 v11, v11, 0x81

    if-eqz v11, :cond_0

    return v14

    :catchall_0
    move-exception v8

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v8

    :catch_0
    move-exception v1

    sget-object v11, Lcom/android/server/aod/AODManagerService;->TAG:Ljava/lang/String;

    const-string/jumbo v12, "Could not find package [%s]"

    new-array v13, v14, [Ljava/lang/Object;

    aput-object v4, v13, v9

    invoke-static {v12, v13}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :cond_1
    sget-object v8, Lcom/android/server/aod/AODManagerService;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "No known packages with uid "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return v9
.end method

.method private isCallerSystemUI()Z
    .locals 10

    const/4 v6, 0x0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    const/4 v5, -0x1

    const/4 v1, 0x0

    const/4 v4, 0x0

    const/4 v0, -0x1

    :try_start_0
    iget-object v7, p0, Lcom/android/server/aod/AODManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    const-string/jumbo v8, "com.android.systemui"

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/content/pm/PackageManager;->getPackageUid(Ljava/lang/String;I)I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    invoke-static {v2}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    iget-object v7, p0, Lcom/android/server/aod/AODManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    invoke-virtual {v7, v2}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    const/4 v7, -0x1

    if-eq v5, v7, :cond_1

    const-string/jumbo v7, "android.uid.systemui"

    invoke-virtual {v1, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    if-ne v0, v5, :cond_0

    const/4 v6, 0x1

    :cond_0
    return v6

    :catch_0
    move-exception v3

    sget-object v7, Lcom/android/server/aod/AODManagerService;->TAG:Ljava/lang/String;

    const-string/jumbo v8, "Unable to resolve SystemUI\'s UID."

    invoke-static {v7, v8, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v6

    :cond_1
    return v6
.end method

.method private isSupportRegisterAODListener()Z
    .locals 2

    iget v0, p0, Lcom/android/server/aod/AODManagerService;->mSupportAODFeatureVersion:I

    const/4 v1, 0x3

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isUidSystem(I)Z
    .locals 4

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {p1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    const/16 v3, 0x3e8

    if-eq v0, v3, :cond_0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    move v1, v2

    goto :goto_0
.end method

.method private readyToScreenTurningOnInternal()V
    .locals 3

    invoke-direct {p0}, Lcom/android/server/aod/AODManagerService;->checkCallerIsSystem()V

    iget-object v1, p0, Lcom/android/server/aod/AODManagerService;->mScreenTurningOnLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/android/server/aod/AODManagerService;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "readyToScreenTurningOn"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/aod/AODManagerService;->mAODChangeListener:Lcom/samsung/android/aod/AODManager$AODChangeListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/aod/AODManagerService;->mAODChangeListener:Lcom/samsung/android/aod/AODManager$AODChangeListener;

    invoke-interface {v0}, Lcom/samsung/android/aod/AODManager$AODChangeListener;->readyToScreenTurningOn()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/aod/AODManagerService;->mAODChangeListener:Lcom/samsung/android/aod/AODManager$AODChangeListener;

    iget-object v0, p0, Lcom/android/server/aod/AODManagerService;->mAODHandler:Lcom/android/server/aod/AODManagerService$AODHandler;

    iget-object v2, p0, Lcom/android/server/aod/AODManagerService;->mScreenTurningOnRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v2}, Lcom/android/server/aod/AODManagerService$AODHandler;->removeCallbacks(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit v1

    return-void

    :cond_0
    :try_start_1
    sget-object v0, Lcom/android/server/aod/AODManagerService;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "readyToScreenTurningOn : Do nothing, There is no Listener"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private registerAODListenerInternal(Landroid/os/IBinder;)V
    .locals 5

    iget-object v3, p0, Lcom/android/server/aod/AODManagerService;->mListeners:Ljava/util/ArrayList;

    monitor-enter v3

    :try_start_0
    iget-object v2, p0, Lcom/android/server/aod/AODManagerService;->mListeners:Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/aod/AODManagerService$AODListenerRecord;

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/android/server/aod/AODManagerService$AODListenerRecord;->-get0(Lcom/android/server/aod/AODManagerService$AODListenerRecord;)Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v2, Lcom/android/server/aod/AODManagerService;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "registerAODListenerInternal : already registered"

    invoke-static {v2, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v3

    return-void

    :cond_1
    :try_start_1
    new-instance v0, Lcom/android/server/aod/AODManagerService$AODListenerRecord;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    invoke-direct {v0, p0, p1, v2, v4}, Lcom/android/server/aod/AODManagerService$AODListenerRecord;-><init>(Lcom/android/server/aod/AODManagerService;Landroid/os/IBinder;II)V

    iget-object v2, p0, Lcom/android/server/aod/AODManagerService;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v3

    return-void

    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method private registerNotificationListener()V
    .locals 6

    :try_start_0
    sget-object v1, Lcom/android/server/aod/AODManagerService;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "registerNotificationListener"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/server/aod/AODManagerService;->mAODNotificationListener:Landroid/service/notification/NotificationListenerService;

    iget-object v2, p0, Lcom/android/server/aod/AODManagerService;->mContext:Landroid/content/Context;

    new-instance v3, Landroid/content/ComponentName;

    iget-object v4, p0, Lcom/android/server/aod/AODManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/server/aod/AODManagerService;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/server/aod/AODManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getUserId()I

    move-result v4

    invoke-virtual {v1, v2, v3, v4}, Landroid/service/notification/NotificationListenerService;->registerAsSystemService(Landroid/content/Context;Landroid/content/ComponentName;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    sget-object v1, Lcom/android/server/aod/AODManagerService;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Unable to register notification listener"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private requestCalendarDataInternal()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/android/server/aod/AODManagerService;->checkCallerIsSystem()V

    invoke-direct {p0, v0, v0}, Lcom/android/server/aod/AODManagerService;->updateCalendarDataInternal(Ljava/util/List;Ljava/util/List;)V

    return-void
.end method

.method private requestNotificationKeysInternal()V
    .locals 2

    invoke-direct {p0}, Lcom/android/server/aod/AODManagerService;->checkCallerIsSystem()V

    const/4 v0, -0x1

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/server/aod/AODManagerService;->updateNotificationKeysInternal(ILjava/util/List;)V

    return-void
.end method

.method static native setLiveClockInfo(IJJJJJJJJ)I
.end method

.method private setLiveClockInfoInternal(IJJJJJJJJ)I
    .locals 2

    invoke-direct {p0}, Lcom/android/server/aod/AODManagerService;->checkCallerIsSystem()V

    invoke-static/range {p1 .. p17}, Lcom/android/server/aod/AODManagerService;->setLiveClockInfo(IJJJJJJJJ)I

    move-result v0

    return v0
.end method

.method static native setLiveClockNeedle([B)V
.end method

.method private setLiveClockNeedleInternal([B)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/aod/AODManagerService;->checkCallerIsSystem()V

    invoke-static {p1}, Lcom/android/server/aod/AODManagerService;->setLiveClockNeedle([B)V

    return-void
.end method

.method private unregisterAODListenerInternal(Landroid/os/IBinder;)V
    .locals 6

    iget-object v4, p0, Lcom/android/server/aod/AODManagerService;->mListeners:Ljava/util/ArrayList;

    monitor-enter v4

    const/4 v0, 0x0

    :try_start_0
    iget-object v3, p0, Lcom/android/server/aod/AODManagerService;->mListeners:Ljava/util/ArrayList;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/aod/AODManagerService$AODListenerRecord;

    if-eqz v1, :cond_0

    invoke-static {v1}, Lcom/android/server/aod/AODManagerService$AODListenerRecord;->-get0(Lcom/android/server/aod/AODManagerService$AODListenerRecord;)Landroid/os/IBinder;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    move-object v0, v1

    goto :goto_0

    :cond_1
    if-nez v0, :cond_2

    sget-object v3, Lcom/android/server/aod/AODManagerService;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "unregisterAODListenerInternal : cannot find the matched host"

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v4

    return-void

    :cond_2
    :try_start_1
    iget-object v3, p0, Lcom/android/server/aod/AODManagerService;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_3

    iget-object v3, p0, Lcom/android/server/aod/AODManagerService;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_3
    const/4 v3, 0x0

    invoke-interface {p1, v0, v3}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v4

    return-void

    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method private updateAODTspRectInternal(IIIII)V
    .locals 15

    invoke-direct {p0}, Lcom/android/server/aod/AODManagerService;->checkCallerIsSystem()V

    iget-object v13, p0, Lcom/android/server/aod/AODManagerService;->mTspRects:Landroid/util/SparseArray;

    monitor-enter v13

    if-gez p3, :cond_0

    if-gez p4, :cond_0

    if-gez p1, :cond_0

    if-gez p2, :cond_0

    :try_start_0
    iget-object v12, p0, Lcom/android/server/aod/AODManagerService;->mTspRects:Landroid/util/SparseArray;

    move/from16 v0, p5

    invoke-virtual {v12, v0}, Landroid/util/SparseArray;->remove(I)V

    :goto_0
    iget-object v12, p0, Lcom/android/server/aod/AODManagerService;->mTspRects:Landroid/util/SparseArray;

    invoke-virtual {v12}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-lez v2, :cond_3

    new-instance v10, Landroid/graphics/Rect;

    invoke-direct {v10}, Landroid/graphics/Rect;-><init>()V

    const/4 v9, 0x0

    :goto_1
    if-ge v9, v2, :cond_2

    iget-object v12, p0, Lcom/android/server/aod/AODManagerService;->mTspRects:Landroid/util/SparseArray;

    invoke-virtual {v12, v9}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/graphics/Rect;

    invoke-virtual {v10, v12}, Landroid/graphics/Rect;->union(Landroid/graphics/Rect;)V

    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    :cond_0
    iget-object v12, p0, Lcom/android/server/aod/AODManagerService;->mTspRects:Landroid/util/SparseArray;

    move/from16 v0, p5

    invoke-virtual {v12, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/graphics/Rect;

    if-nez v10, :cond_1

    new-instance v10, Landroid/graphics/Rect;

    add-int v12, p3, p1

    add-int v14, p4, p2

    move/from16 v0, p3

    move/from16 v1, p4

    invoke-direct {v10, v0, v1, v12, v14}, Landroid/graphics/Rect;-><init>(IIII)V

    iget-object v12, p0, Lcom/android/server/aod/AODManagerService;->mTspRects:Landroid/util/SparseArray;

    move/from16 v0, p5

    invoke-virtual {v12, v0, v10}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v12

    monitor-exit v13

    throw v12

    :cond_1
    :try_start_1
    move/from16 v0, p3

    iput v0, v10, Landroid/graphics/Rect;->left:I

    move/from16 v0, p4

    iput v0, v10, Landroid/graphics/Rect;->top:I

    add-int v12, p3, p1

    iput v12, v10, Landroid/graphics/Rect;->right:I

    add-int v12, p4, p2

    iput v12, v10, Landroid/graphics/Rect;->bottom:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :cond_2
    const/4 v7, 0x0

    :try_start_2
    new-instance v6, Ljava/io/File;

    const-string/jumbo v12, "/sys/class/sec/tsp/cmd"

    invoke-direct {v6, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v12

    if-eqz v12, :cond_4

    invoke-virtual {v6}, Ljava/io/File;->canWrite()Z

    move-result v12

    if-eqz v12, :cond_4

    new-instance v8, Ljava/io/FileOutputStream;

    invoke-direct {v8, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    iget v12, v10, Landroid/graphics/Rect;->left:I

    iput v12, p0, Lcom/android/server/aod/AODManagerService;->mTspX:I

    iget v12, v10, Landroid/graphics/Rect;->top:I

    iput v12, p0, Lcom/android/server/aod/AODManagerService;->mTspY:I

    iget v12, v10, Landroid/graphics/Rect;->right:I

    iget v14, v10, Landroid/graphics/Rect;->left:I

    sub-int/2addr v12, v14

    iput v12, p0, Lcom/android/server/aod/AODManagerService;->mTspW:I

    iget v12, v10, Landroid/graphics/Rect;->bottom:I

    iget v14, v10, Landroid/graphics/Rect;->top:I

    sub-int/2addr v12, v14

    iput v12, p0, Lcom/android/server/aod/AODManagerService;->mTspH:I

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "set_aod_rect,"

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget v14, p0, Lcom/android/server/aod/AODManagerService;->mTspW:I

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v14, ","

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget v14, p0, Lcom/android/server/aod/AODManagerService;->mTspH:I

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v14, ","

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget v14, p0, Lcom/android/server/aod/AODManagerService;->mTspX:I

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v14, ","

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget v14, p0, Lcom/android/server/aod/AODManagerService;->mTspY:I

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const-string/jumbo v12, "UTF-8"

    invoke-virtual {v11, v12}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v12

    invoke-virtual {v8, v12}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {v8}, Ljava/io/OutputStream;->flush()V
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_6
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_7
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    if-eqz v8, :cond_3

    :try_start_4
    invoke-virtual {v8}, Ljava/io/OutputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :cond_3
    :goto_2
    monitor-exit v13

    return-void

    :cond_4
    monitor-exit v13

    return-void

    :catch_0
    move-exception v5

    goto :goto_2

    :catch_1
    move-exception v4

    :goto_3
    :try_start_5
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    if-eqz v7, :cond_3

    :try_start_6
    invoke-virtual {v7}, Ljava/io/OutputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_2

    :catch_2
    move-exception v5

    goto :goto_2

    :catch_3
    move-exception v3

    :goto_4
    :try_start_7
    invoke-virtual {v3}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    if-eqz v7, :cond_3

    :try_start_8
    invoke-virtual {v7}, Ljava/io/OutputStream;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_4
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto :goto_2

    :catch_4
    move-exception v5

    goto :goto_2

    :catchall_1
    move-exception v12

    :goto_5
    if-eqz v7, :cond_5

    :try_start_9
    invoke-virtual {v7}, Ljava/io/OutputStream;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_5
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    :cond_5
    :goto_6
    :try_start_a
    throw v12
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    :catch_5
    move-exception v5

    goto :goto_6

    :catchall_2
    move-exception v12

    move-object v7, v8

    goto :goto_5

    :catch_6
    move-exception v3

    move-object v7, v8

    goto :goto_4

    :catch_7
    move-exception v4

    move-object v7, v8

    goto :goto_3
.end method

.method private updateAODTspState()V
    .locals 7

    iget-object v3, p0, Lcom/android/server/aod/AODManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget-object v4, p0, Lcom/android/server/aod/AODManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v4

    :try_start_0
    const-string/jumbo v3, "aod_mode"

    const/4 v5, 0x0

    const/4 v6, -0x2

    invoke-static {v2, v3, v5, v6}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    if-eqz v3, :cond_2

    const/4 v0, 0x1

    :goto_0
    iget-boolean v3, p0, Lcom/android/server/aod/AODManagerService;->mIsAODModeEnabled:Z

    if-eq v3, v0, :cond_1

    iput-boolean v0, p0, Lcom/android/server/aod/AODManagerService;->mIsAODModeEnabled:Z

    sget-object v3, Lcom/android/server/aod/AODManagerService;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "updateAODTspState: mIsAODModeEnabled = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, p0, Lcom/android/server/aod/AODManagerService;->mIsAODModeEnabled:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v3, "/sys/class/sec/tsp/cmd"

    iget-boolean v5, p0, Lcom/android/server/aod/AODManagerService;->mIsAODModeEnabled:Z

    invoke-direct {p0, v3, v5}, Lcom/android/server/aod/AODManagerService;->updateAODTspState(Ljava/lang/String;Z)V

    iget v3, p0, Lcom/android/server/aod/AODManagerService;->mSpenUspLevel:I

    const/4 v5, -0x1

    if-ne v3, v5, :cond_0

    iget-object v3, p0, Lcom/android/server/aod/AODManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string/jumbo v3, "com.sec.feature.spen_usp"

    invoke-virtual {v1, v3}, Landroid/content/pm/PackageManager;->semGetSystemFeatureLevel(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/android/server/aod/AODManagerService;->mSpenUspLevel:I

    sget-object v3, Lcom/android/server/aod/AODManagerService;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "updateAODTspState: mSpenUspLevel = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/server/aod/AODManagerService;->mSpenUspLevel:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget v3, p0, Lcom/android/server/aod/AODManagerService;->mSpenUspLevel:I

    sget v5, Lcom/android/server/aod/AODManagerService;->GREAT_SPEN_USP_LEVEL:I

    if-lt v3, v5, :cond_1

    sget-object v3, Lcom/android/server/aod/AODManagerService;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "updateAODWacomState "

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v3, "/sys/class/sec/sec_epen/aod_enable"

    iget-boolean v5, p0, Lcom/android/server/aod/AODManagerService;->mIsAODModeEnabled:Z

    invoke-direct {p0, v3, v5}, Lcom/android/server/aod/AODManagerService;->updateAODWacomState(Ljava/lang/String;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit v4

    return-void

    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method private updateAODTspState(Ljava/lang/String;Z)V
    .locals 9

    invoke-direct {p0}, Lcom/android/server/aod/AODManagerService;->checkCallerIsSystem()V

    iget-boolean v7, p0, Lcom/android/server/aod/AODManagerService;->mIsAODTouchDisabled:Z

    if-eqz v7, :cond_0

    sget-object v7, Lcom/android/server/aod/AODManagerService;->TAG:Ljava/lang/String;

    const-string/jumbo v8, "skip -- AOD TSP"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const/4 v4, 0x0

    :try_start_0
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-virtual {v3}, Ljava/io/File;->canWrite()Z

    move-result v7

    if-eqz v7, :cond_3

    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "aod_enable,"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    if-eqz p2, :cond_4

    const-string/jumbo v7, "1"

    :goto_0
    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "UTF-8"

    invoke-virtual {v6, v7}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {v5}, Ljava/io/OutputStream;->flush()V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_6
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_7
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v5, :cond_1

    :try_start_2
    invoke-virtual {v5}, Ljava/io/OutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :cond_1
    :goto_1
    move-object v4, v5

    :cond_2
    :goto_2
    return-void

    :cond_3
    return-void

    :cond_4
    :try_start_3
    const-string/jumbo v7, "0"
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_6
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_7
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catch_0
    move-exception v2

    goto :goto_1

    :catch_1
    move-exception v1

    :goto_3
    :try_start_4
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz v4, :cond_2

    :try_start_5
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_2

    :catch_2
    move-exception v2

    goto :goto_2

    :catch_3
    move-exception v0

    :goto_4
    :try_start_6
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    if-eqz v4, :cond_2

    :try_start_7
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_4

    goto :goto_2

    :catch_4
    move-exception v2

    goto :goto_2

    :catchall_0
    move-exception v7

    :goto_5
    if-eqz v4, :cond_5

    :try_start_8
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_5

    :cond_5
    :goto_6
    throw v7

    :catch_5
    move-exception v2

    goto :goto_6

    :catchall_1
    move-exception v7

    move-object v4, v5

    goto :goto_5

    :catch_6
    move-exception v0

    move-object v4, v5

    goto :goto_4

    :catch_7
    move-exception v1

    move-object v4, v5

    goto :goto_3
.end method

.method private updateAODWacomState(Ljava/lang/String;Z)V
    .locals 9

    invoke-direct {p0}, Lcom/android/server/aod/AODManagerService;->checkCallerIsSystem()V

    iget-boolean v7, p0, Lcom/android/server/aod/AODManagerService;->mIsAODTouchDisabled:Z

    if-eqz v7, :cond_0

    sget-object v7, Lcom/android/server/aod/AODManagerService;->TAG:Ljava/lang/String;

    const-string/jumbo v8, "skip -- AOD Wacom"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const/4 v4, 0x0

    :try_start_0
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-virtual {v3}, Ljava/io/File;->canWrite()Z

    move-result v7

    if-eqz v7, :cond_3

    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p2, :cond_4

    :try_start_1
    const-string/jumbo v6, "1"

    :goto_0
    const-string/jumbo v7, "UTF-8"

    invoke-virtual {v6, v7}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {v5}, Ljava/io/OutputStream;->flush()V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_6
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_7
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v5, :cond_1

    :try_start_2
    invoke-virtual {v5}, Ljava/io/OutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :cond_1
    :goto_1
    move-object v4, v5

    :cond_2
    :goto_2
    return-void

    :cond_3
    return-void

    :cond_4
    :try_start_3
    const-string/jumbo v6, "0"
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_6
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_7
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catch_0
    move-exception v2

    goto :goto_1

    :catch_1
    move-exception v1

    :goto_3
    :try_start_4
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz v4, :cond_2

    :try_start_5
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_2

    :catch_2
    move-exception v2

    goto :goto_2

    :catch_3
    move-exception v0

    :goto_4
    :try_start_6
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    if-eqz v4, :cond_2

    :try_start_7
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_4

    goto :goto_2

    :catch_4
    move-exception v2

    goto :goto_2

    :catchall_0
    move-exception v7

    :goto_5
    if-eqz v4, :cond_5

    :try_start_8
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_5

    :cond_5
    :goto_6
    throw v7

    :catch_5
    move-exception v2

    goto :goto_6

    :catchall_1
    move-exception v7

    move-object v4, v5

    goto :goto_5

    :catch_6
    move-exception v0

    move-object v4, v5

    goto :goto_4

    :catch_7
    move-exception v1

    move-object v4, v5

    goto :goto_3
.end method

.method private updateCalendarDataInternal(Ljava/util/List;Ljava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/android/server/aod/AODManagerService;->checkCallerIsSystem()V

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/android/server/aod/AODManagerService;->mCalendarDataTimeInfo:Ljava/util/List;

    :cond_0
    if-eqz p2, :cond_1

    iput-object p2, p0, Lcom/android/server/aod/AODManagerService;->mCalendarDataDescription:Ljava/util/List;

    :cond_1
    invoke-virtual {p0}, Lcom/android/server/aod/AODManagerService;->isAODStateInternal()Z

    move-result v4

    if-eqz v4, :cond_6

    iget-object v4, p0, Lcom/android/server/aod/AODManagerService;->mAODSettings:Lcom/android/server/aod/settings/AODSettings;

    invoke-virtual {v4}, Lcom/android/server/aod/settings/AODSettings;->isAODServiceEnable()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-direct {p0}, Lcom/android/server/aod/AODManagerService;->isSupportRegisterAODListener()Z

    move-result v4

    if-eqz v4, :cond_5

    iget-object v5, p0, Lcom/android/server/aod/AODManagerService;->mListeners:Ljava/util/ArrayList;

    monitor-enter v5

    :try_start_0
    iget-object v4, p0, Lcom/android/server/aod/AODManagerService;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    const/4 v6, 0x1

    if-ge v4, v6, :cond_2

    monitor-exit v5

    return-void

    :cond_2
    :try_start_1
    iget-object v4, p0, Lcom/android/server/aod/AODManagerService;->mListeners:Ljava/util/ArrayList;

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_3
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/aod/AODManagerService$AODListenerRecord;

    if-eqz v2, :cond_3

    iget-object v4, p0, Lcom/android/server/aod/AODManagerService;->mCalendarDataTimeInfo:Ljava/util/List;

    iget-object v6, p0, Lcom/android/server/aod/AODManagerService;->mCalendarDataDescription:Ljava/util/List;

    invoke-virtual {v2, v4, v6}, Lcom/android/server/aod/AODManagerService$AODListenerRecord;->onUpdateCalendarData(Ljava/util/List;Ljava/util/List;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v4

    monitor-exit v5

    throw v4

    :cond_4
    monitor-exit v5

    return-void

    :cond_5
    iget-object v4, p0, Lcom/android/server/aod/AODManagerService;->mAODConnection:Lcom/android/server/aod/AODManagerService$AODConnection;

    if-nez v4, :cond_7

    sget-object v4, Lcom/android/server/aod/AODManagerService$AODConnectionCause;->AODCONNECTION_UPDATE_CALENDAR_DATA:Lcom/android/server/aod/AODManagerService$AODConnectionCause;

    invoke-direct {p0, v4}, Lcom/android/server/aod/AODManagerService;->createAODConnection(Lcom/android/server/aod/AODManagerService$AODConnectionCause;)V

    :cond_6
    :goto_1
    return-void

    :cond_7
    iget-object v4, p0, Lcom/android/server/aod/AODManagerService;->mAODConnection:Lcom/android/server/aod/AODManagerService$AODConnection;

    iget-object v4, v4, Lcom/android/server/aod/AODManagerService$AODConnection;->mService:Lcom/samsung/android/aod/IAlwaysOnDisplayService;

    if-eqz v4, :cond_8

    :try_start_2
    iget-object v4, p0, Lcom/android/server/aod/AODManagerService;->mAODConnection:Lcom/android/server/aod/AODManagerService$AODConnection;

    iget-object v4, v4, Lcom/android/server/aod/AODManagerService$AODConnection;->mService:Lcom/samsung/android/aod/IAlwaysOnDisplayService;

    iget-object v5, p0, Lcom/android/server/aod/AODManagerService;->mCalendarDataTimeInfo:Ljava/util/List;

    iget-object v6, p0, Lcom/android/server/aod/AODManagerService;->mCalendarDataDescription:Ljava/util/List;

    invoke-interface {v4, v5, v6}, Lcom/samsung/android/aod/IAlwaysOnDisplayService;->updateCalendarData(Ljava/util/List;Ljava/util/List;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    sget-object v4, Lcom/android/server/aod/AODManagerService;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "mAODConnection.mService.updateNotificationKeys"

    invoke-static {v4, v5, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    :cond_8
    sget-object v4, Lcom/android/server/aod/AODManagerService;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "AODConnection is disconnected..."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/android/server/aod/AODManagerService;->mAODConnection:Lcom/android/server/aod/AODManagerService$AODConnection;

    sget-object v5, Lcom/android/server/aod/AODManagerService$AODConnectionCause;->AODCONNECTION_UPDATE_CALENDAR_DATA:Lcom/android/server/aod/AODManagerService$AODConnectionCause;

    invoke-virtual {v4, v5}, Lcom/android/server/aod/AODManagerService$AODConnection;->addConnectionCause(Lcom/android/server/aod/AODManagerService$AODConnectionCause;)V

    iget-object v4, p0, Lcom/android/server/aod/AODManagerService;->mAODHandler:Lcom/android/server/aod/AODManagerService$AODHandler;

    iget-object v5, p0, Lcom/android/server/aod/AODManagerService;->mStopCurrentConnectionRunnable:Ljava/lang/Runnable;

    invoke-virtual {v4, v5}, Lcom/android/server/aod/AODManagerService$AODHandler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result v4

    if-nez v4, :cond_6

    iget-object v4, p0, Lcom/android/server/aod/AODManagerService;->mAODHandler:Lcom/android/server/aod/AODManagerService$AODHandler;

    iget-object v5, p0, Lcom/android/server/aod/AODManagerService;->mStopCurrentConnectionRunnable:Ljava/lang/Runnable;

    const-wide/16 v6, 0x1388

    invoke-virtual {v4, v5, v6, v7}, Lcom/android/server/aod/AODManagerService$AODHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1
.end method

.method private updateNotificationKeysInternal(ILjava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/android/server/aod/AODManagerService;->checkCallerIsSystem()V

    if-eqz p2, :cond_0

    iput-object p2, p0, Lcom/android/server/aod/AODManagerService;->mNotificationKeys:Ljava/util/List;

    :cond_0
    const/4 v2, -0x1

    if-eq p1, v2, :cond_1

    iput p1, p0, Lcom/android/server/aod/AODManagerService;->mNotiCount:I

    :cond_1
    invoke-virtual {p0}, Lcom/android/server/aod/AODManagerService;->isAODStateInternal()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/server/aod/AODManagerService;->mAODSettings:Lcom/android/server/aod/settings/AODSettings;

    invoke-virtual {v2}, Lcom/android/server/aod/settings/AODSettings;->isAODServiceEnable()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-direct {p0}, Lcom/android/server/aod/AODManagerService;->isSupportRegisterAODListener()Z

    move-result v2

    if-eqz v2, :cond_2

    iget v2, p0, Lcom/android/server/aod/AODManagerService;->mNotiCount:I

    iget-object v3, p0, Lcom/android/server/aod/AODManagerService;->mNotificationKeys:Ljava/util/List;

    invoke-direct {p0, v2, v3}, Lcom/android/server/aod/AODManagerService;->updateNotificationKeysLocked(ILjava/util/List;)V

    return-void

    :cond_2
    iget-object v2, p0, Lcom/android/server/aod/AODManagerService;->mAODConnection:Lcom/android/server/aod/AODManagerService$AODConnection;

    if-nez v2, :cond_4

    sget-object v2, Lcom/android/server/aod/AODManagerService$AODConnectionCause;->AODCONNECTION_UPDATE_NOTIFICATION_KEYS:Lcom/android/server/aod/AODManagerService$AODConnectionCause;

    invoke-direct {p0, v2}, Lcom/android/server/aod/AODManagerService;->createAODConnection(Lcom/android/server/aod/AODManagerService$AODConnectionCause;)V

    :cond_3
    :goto_0
    return-void

    :cond_4
    iget-object v2, p0, Lcom/android/server/aod/AODManagerService;->mAODConnection:Lcom/android/server/aod/AODManagerService$AODConnection;

    iget-object v2, v2, Lcom/android/server/aod/AODManagerService$AODConnection;->mService:Lcom/samsung/android/aod/IAlwaysOnDisplayService;

    if-eqz v2, :cond_5

    :try_start_0
    iget-object v2, p0, Lcom/android/server/aod/AODManagerService;->mAODConnection:Lcom/android/server/aod/AODManagerService$AODConnection;

    iget-object v2, v2, Lcom/android/server/aod/AODManagerService$AODConnection;->mService:Lcom/samsung/android/aod/IAlwaysOnDisplayService;

    iget v3, p0, Lcom/android/server/aod/AODManagerService;->mNotiCount:I

    iget-object v4, p0, Lcom/android/server/aod/AODManagerService;->mNotificationKeys:Ljava/util/List;

    invoke-interface {v2, v3, v4}, Lcom/samsung/android/aod/IAlwaysOnDisplayService;->updateNotificationKeys(ILjava/util/List;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    sget-object v2, Lcom/android/server/aod/AODManagerService;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "mAODConnection.mService.updateNotificationKeys"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :cond_5
    sget-object v2, Lcom/android/server/aod/AODManagerService;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "AODConnection is disconnected..."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/server/aod/AODManagerService;->mAODConnection:Lcom/android/server/aod/AODManagerService$AODConnection;

    sget-object v3, Lcom/android/server/aod/AODManagerService$AODConnectionCause;->AODCONNECTION_UPDATE_NOTIFICATION_KEYS:Lcom/android/server/aod/AODManagerService$AODConnectionCause;

    invoke-virtual {v2, v3}, Lcom/android/server/aod/AODManagerService$AODConnection;->addConnectionCause(Lcom/android/server/aod/AODManagerService$AODConnectionCause;)V

    iget-object v2, p0, Lcom/android/server/aod/AODManagerService;->mAODHandler:Lcom/android/server/aod/AODManagerService$AODHandler;

    iget-object v3, p0, Lcom/android/server/aod/AODManagerService;->mStopCurrentConnectionRunnable:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Lcom/android/server/aod/AODManagerService$AODHandler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/android/server/aod/AODManagerService;->mAODHandler:Lcom/android/server/aod/AODManagerService$AODHandler;

    iget-object v3, p0, Lcom/android/server/aod/AODManagerService;->mStopCurrentConnectionRunnable:Ljava/lang/Runnable;

    const-wide/16 v4, 0x1388

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/server/aod/AODManagerService$AODHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method private updateNotificationKeysLocked(ILjava/util/List;)V
    .locals 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/aod/AODManagerService;->mListeners:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    monitor-enter v19

    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/aod/AODManagerService;->mListeners:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v18

    const/16 v20, 0x1

    move/from16 v0, v18

    move/from16 v1, v20

    if-ge v0, v1, :cond_0

    monitor-exit v19

    return-void

    :cond_0
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/aod/AODManagerService;->mListeners:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_1
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_9

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/aod/AODManagerService$AODListenerRecord;

    if-eqz v5, :cond_1

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v2, Ljava/util/HashMap;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/aod/AODManagerService;->mAODNotificationData:Ljava/util/HashMap;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-direct {v2, v0}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    new-instance v16, Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/aod/AODManagerService;->mSmartAlertNotiKeyList:Ljava/util/List;

    move-object/from16 v18, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    invoke-interface/range {p2 .. p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_2
    :goto_1
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_4

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-virtual {v2, v10}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_2

    invoke-virtual {v2, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/service/notification/StatusBarNotification;

    if-eqz v12, :cond_3

    invoke-interface {v15, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v12}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-interface {v14, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/16 v18, 0x5b

    move/from16 v0, v18

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Landroid/service/notification/StatusBarNotification;->getUser()Landroid/os/UserHandle;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v18, 0x7c

    move/from16 v0, v18

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v18, 0x7c

    move/from16 v0, v18

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Landroid/service/notification/StatusBarNotification;->getTag()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v18, 0x5d

    move/from16 v0, v18

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v18

    monitor-exit v19

    throw v18

    :cond_3
    :try_start_2
    sget-object v18, Lcom/android/server/aod/AODManagerService;->TAG:Ljava/lang/String;

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, "["

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string/jumbo v21, "] : key not found"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :cond_4
    const-string/jumbo v18, "[onUpdateStatusBarNotifications] "

    move-object/from16 v0, v18

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v18, 0x28

    move/from16 v0, v18

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v18, 0x2f

    move/from16 v0, v18

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v18, 0x2f

    move/from16 v0, v18

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/aod/AODManagerService;->mIsSmartAlertEnabled:Z

    move/from16 v18, v0

    if-eqz v18, :cond_7

    const/16 v18, 0x4

    move/from16 v0, p1

    move/from16 v1, v18

    if-le v0, v1, :cond_6

    const/4 v3, 0x0

    :goto_2
    invoke-interface/range {v16 .. v16}, Ljava/util/List;->size()I

    move-result v18

    move/from16 v0, v18

    if-ge v3, v0, :cond_6

    move-object/from16 v0, v16

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v14, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_5

    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_5
    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/service/notification/StatusBarNotification;

    move-object/from16 v0, v17

    invoke-interface {v15, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_6
    const/16 v18, 0x2f

    move/from16 v0, v18

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v18, 0x3c

    move/from16 v0, v18

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-interface/range {v16 .. v16}, Ljava/util/List;->size()I

    move-result v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v18, 0x3e

    move/from16 v0, v18

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_7
    const/16 v18, 0x29

    move/from16 v0, v18

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string/jumbo v18, " showingKeys "

    move-object/from16 v0, v18

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_8

    const-string/jumbo v18, "UserHandle"

    const-string/jumbo v20, ""

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v7, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    :cond_8
    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v18, Lcom/android/server/aod/AODManagerService;->TAG:Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v18

    move/from16 v0, v18

    new-array v0, v0, [Landroid/service/notification/StatusBarNotification;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-interface {v15, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v13

    check-cast v13, [Landroid/service/notification/StatusBarNotification;

    move/from16 v0, p1

    invoke-virtual {v5, v0, v13}, Lcom/android/server/aod/AODManagerService$AODListenerRecord;->onUpdateStatusBarNotifications(I[Landroid/service/notification/StatusBarNotification;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0

    :cond_9
    monitor-exit v19

    return-void
.end method

.method private updateSettings()V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/aod/AODManagerService;->updateAODTspState()V

    return-void
.end method

.method private writeAODCommandInternal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    invoke-direct {p0}, Lcom/android/server/aod/AODManagerService;->checkCallerIsSystem()V

    const/4 v4, 0x0

    :try_start_0
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-virtual {v3}, Ljava/io/File;->canWrite()Z

    move-result v6

    if-eqz v6, :cond_2

    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    const-string/jumbo v6, "UTF-8"

    invoke-virtual {p2, v6}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {v5}, Ljava/io/OutputStream;->flush()V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_6
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_7
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v5, :cond_0

    :try_start_2
    invoke-virtual {v5}, Ljava/io/OutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :cond_0
    :goto_0
    move-object v4, v5

    :cond_1
    :goto_1
    return-void

    :cond_2
    return-void

    :catch_0
    move-exception v2

    goto :goto_0

    :catch_1
    move-exception v1

    :goto_2
    :try_start_3
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v4, :cond_1

    :try_start_4
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_1

    :catch_2
    move-exception v2

    goto :goto_1

    :catch_3
    move-exception v0

    :goto_3
    :try_start_5
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    if-eqz v4, :cond_1

    :try_start_6
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4

    goto :goto_1

    :catch_4
    move-exception v2

    goto :goto_1

    :catchall_0
    move-exception v6

    :goto_4
    if-eqz v4, :cond_3

    :try_start_7
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_5

    :cond_3
    :goto_5
    throw v6

    :catch_5
    move-exception v2

    goto :goto_5

    :catchall_1
    move-exception v6

    move-object v4, v5

    goto :goto_4

    :catch_6
    move-exception v0

    move-object v4, v5

    goto :goto_3

    :catch_7
    move-exception v1

    move-object v4, v5

    goto :goto_2
.end method


# virtual methods
.method getEffectiveUserId(I)I
    .locals 5

    iget-object v3, p0, Lcom/android/server/aod/AODManagerService;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    invoke-virtual {v2, p1}, Landroid/os/UserManager;->getCredentialOwnerProfile(I)I

    move-result p1

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    :goto_0
    return p1

    :cond_0
    sget-object v3, Lcom/android/server/aod/AODManagerService;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "Unable to acquire UserManager"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public isAODStateInternal()Z
    .locals 6

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/android/server/aod/AODManagerService;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Lcom/android/server/aod/AODManagerService;->AOD_SHOW_STATE:Ljava/lang/String;

    iget v5, p0, Lcom/android/server/aod/AODManagerService;->mCurrentUser:I

    invoke-static {v3, v4, v2, v5}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-ne v0, v1, :cond_0

    :goto_0
    return v1

    :cond_0
    move v1, v2

    goto :goto_0
.end method

.method public onBootPhase(I)V
    .locals 6

    invoke-super {p0, p1}, Lcom/android/server/SystemService;->onBootPhase(I)V

    const/16 v3, 0x258

    if-ne p1, v3, :cond_0

    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v3, "com.samsung.android.app.aodservice.intent.action.AOD_APP_START"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    sget-object v3, Lcom/android/server/aod/AODManagerService;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "startAodService : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v3, Landroid/content/ComponentName;

    const-string/jumbo v4, "com.samsung.android.app.aodservice"

    const-string/jumbo v5, "com.samsung.android.app.aodservice.AODService"

    invoke-direct {v3, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    iget-object v3, p0, Lcom/android/server/aod/AODManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    invoke-direct {p0}, Lcom/android/server/aod/AODManagerService;->registerNotificationListener()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v2

    :goto_1
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v2

    move-object v0, v1

    goto :goto_1
.end method

.method public onStart()V
    .locals 3

    const/4 v2, 0x0

    const-string/jumbo v0, "AODManagerService"

    new-instance v1, Lcom/android/server/aod/AODManagerService$BinderService;

    invoke-direct {v1, p0, v2}, Lcom/android/server/aod/AODManagerService$BinderService;-><init>(Lcom/android/server/aod/AODManagerService;Lcom/android/server/aod/AODManagerService$BinderService;)V

    invoke-virtual {p0, v0, v1}, Lcom/android/server/aod/AODManagerService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    const-class v0, Lcom/samsung/android/aod/AODManagerInternal;

    new-instance v1, Lcom/android/server/aod/AODManagerService$LocalService;

    invoke-direct {v1, p0, v2}, Lcom/android/server/aod/AODManagerService$LocalService;-><init>(Lcom/android/server/aod/AODManagerService;Lcom/android/server/aod/AODManagerService$LocalService;)V

    invoke-virtual {p0, v0, v1}, Lcom/android/server/aod/AODManagerService;->publishLocalService(Ljava/lang/Class;Ljava/lang/Object;)V

    return-void
.end method

.method public startAODInternal()Z
    .locals 6

    const/4 v3, 0x0

    invoke-direct {p0}, Lcom/android/server/aod/AODManagerService;->checkCallerIsSystem()V

    invoke-direct {p0}, Lcom/android/server/aod/AODManagerService;->isSupportRegisterAODListener()Z

    move-result v2

    if-eqz v2, :cond_0

    return v3

    :cond_0
    iget-object v2, p0, Lcom/android/server/aod/AODManagerService;->mAODSettings:Lcom/android/server/aod/settings/AODSettings;

    invoke-virtual {v2}, Lcom/android/server/aod/settings/AODSettings;->isAODServiceEnable()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v2, p0, Lcom/android/server/aod/AODManagerService;->mAODConnection:Lcom/android/server/aod/AODManagerService$AODConnection;

    if-nez v2, :cond_2

    sget-object v2, Lcom/android/server/aod/AODManagerService$AODConnectionCause;->AODCONNECTION_STARTAOD:Lcom/android/server/aod/AODManagerService$AODConnectionCause;

    invoke-direct {p0, v2}, Lcom/android/server/aod/AODManagerService;->createAODConnection(Lcom/android/server/aod/AODManagerService$AODConnectionCause;)V

    :cond_1
    :goto_0
    const/4 v2, 0x1

    return v2

    :cond_2
    iget-object v2, p0, Lcom/android/server/aod/AODManagerService;->mAODConnection:Lcom/android/server/aod/AODManagerService$AODConnection;

    iget-object v2, v2, Lcom/android/server/aod/AODManagerService$AODConnection;->mService:Lcom/samsung/android/aod/IAlwaysOnDisplayService;

    if-eqz v2, :cond_3

    :try_start_0
    iget-object v2, p0, Lcom/android/server/aod/AODManagerService;->mAODConnection:Lcom/android/server/aod/AODManagerService$AODConnection;

    iget-object v2, v2, Lcom/android/server/aod/AODManagerService$AODConnection;->mService:Lcom/samsung/android/aod/IAlwaysOnDisplayService;

    invoke-interface {v2}, Lcom/samsung/android/aod/IAlwaysOnDisplayService;->startAOD()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    sget-object v2, Lcom/android/server/aod/AODManagerService;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "startAODInternal - mAODConnection.mService.startAOD()"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :cond_3
    sget-object v2, Lcom/android/server/aod/AODManagerService;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "AODConnection is disconnected..."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/server/aod/AODManagerService;->mAODHandler:Lcom/android/server/aod/AODManagerService$AODHandler;

    iget-object v3, p0, Lcom/android/server/aod/AODManagerService;->mStopCurrentConnectionRunnable:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Lcom/android/server/aod/AODManagerService$AODHandler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/android/server/aod/AODManagerService;->mAODHandler:Lcom/android/server/aod/AODManagerService$AODHandler;

    iget-object v3, p0, Lcom/android/server/aod/AODManagerService;->mStopCurrentConnectionRunnable:Ljava/lang/Runnable;

    const-wide/16 v4, 0x1388

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/server/aod/AODManagerService$AODHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_4
    return v3
.end method

.method public stopAODInternal()Z
    .locals 6

    const/4 v3, 0x0

    invoke-direct {p0}, Lcom/android/server/aod/AODManagerService;->checkCallerIsSystem()V

    invoke-direct {p0}, Lcom/android/server/aod/AODManagerService;->isSupportRegisterAODListener()Z

    move-result v2

    if-eqz v2, :cond_0

    return v3

    :cond_0
    iget-object v2, p0, Lcom/android/server/aod/AODManagerService;->mAODSettings:Lcom/android/server/aod/settings/AODSettings;

    invoke-virtual {v2}, Lcom/android/server/aod/settings/AODSettings;->isAODServiceEnable()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v2, p0, Lcom/android/server/aod/AODManagerService;->mAODConnection:Lcom/android/server/aod/AODManagerService$AODConnection;

    if-nez v2, :cond_2

    sget-object v2, Lcom/android/server/aod/AODManagerService$AODConnectionCause;->AODCONNECTION_STOPAOD:Lcom/android/server/aod/AODManagerService$AODConnectionCause;

    invoke-direct {p0, v2}, Lcom/android/server/aod/AODManagerService;->createAODConnection(Lcom/android/server/aod/AODManagerService$AODConnectionCause;)V

    :cond_1
    :goto_0
    const/4 v2, 0x1

    return v2

    :cond_2
    iget-object v2, p0, Lcom/android/server/aod/AODManagerService;->mAODConnection:Lcom/android/server/aod/AODManagerService$AODConnection;

    iget-object v2, v2, Lcom/android/server/aod/AODManagerService$AODConnection;->mService:Lcom/samsung/android/aod/IAlwaysOnDisplayService;

    if-eqz v2, :cond_3

    :try_start_0
    iget-object v2, p0, Lcom/android/server/aod/AODManagerService;->mAODConnection:Lcom/android/server/aod/AODManagerService$AODConnection;

    iget-object v2, v2, Lcom/android/server/aod/AODManagerService$AODConnection;->mService:Lcom/samsung/android/aod/IAlwaysOnDisplayService;

    invoke-interface {v2}, Lcom/samsung/android/aod/IAlwaysOnDisplayService;->stopAOD()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    sget-object v2, Lcom/android/server/aod/AODManagerService;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "stopAODInternal - mAODConnection.mService.stopAOD()"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :cond_3
    sget-object v2, Lcom/android/server/aod/AODManagerService;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "AODConnection is disconnected..."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/server/aod/AODManagerService;->mAODHandler:Lcom/android/server/aod/AODManagerService$AODHandler;

    iget-object v3, p0, Lcom/android/server/aod/AODManagerService;->mStopCurrentConnectionRunnable:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Lcom/android/server/aod/AODManagerService$AODHandler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/android/server/aod/AODManagerService;->mAODHandler:Lcom/android/server/aod/AODManagerService$AODHandler;

    iget-object v3, p0, Lcom/android/server/aod/AODManagerService;->mStopCurrentConnectionRunnable:Ljava/lang/Runnable;

    const-wide/16 v4, 0x1388

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/server/aod/AODManagerService$AODHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_4
    return v3
.end method

.method public stopConnection()V
    .locals 6

    iget-object v4, p0, Lcom/android/server/aod/AODManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v4

    :try_start_0
    iget-object v3, p0, Lcom/android/server/aod/AODManagerService;->mAODConnection:Lcom/android/server/aod/AODManagerService$AODConnection;

    if-nez v3, :cond_0

    sget-object v3, Lcom/android/server/aod/AODManagerService;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "already stopped connection"

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v4

    return-void

    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/android/server/aod/AODManagerService;->mAODConnection:Lcom/android/server/aod/AODManagerService$AODConnection;

    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/server/aod/AODManagerService;->mAODConnection:Lcom/android/server/aod/AODManagerService$AODConnection;

    iget-object v3, p0, Lcom/android/server/aod/AODManagerService;->mAODHandler:Lcom/android/server/aod/AODManagerService$AODHandler;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/server/aod/AODManagerService;->mAODHandler:Lcom/android/server/aod/AODManagerService$AODHandler;

    iget-object v5, p0, Lcom/android/server/aod/AODManagerService;->mStopUnconnectedAODRunnable:Ljava/lang/Runnable;

    invoke-virtual {v3, v5}, Lcom/android/server/aod/AODManagerService$AODHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_1
    iget-object v3, v2, Lcom/android/server/aod/AODManagerService$AODConnection;->mService:Lcom/samsung/android/aod/IAlwaysOnDisplayService;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v3, :cond_2

    :try_start_2
    iget-object v3, v2, Lcom/android/server/aod/AODManagerService$AODConnection;->mService:Lcom/samsung/android/aod/IAlwaysOnDisplayService;

    invoke-interface {v3}, Lcom/samsung/android/aod/IAlwaysOnDisplayService;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    const/4 v5, 0x0

    invoke-interface {v3, v2, v5}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z
    :try_end_2
    .catch Ljava/util/NoSuchElementException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_0
    const/4 v3, 0x0

    :try_start_3
    iput-object v3, v2, Lcom/android/server/aod/AODManagerService$AODConnection;->mService:Lcom/samsung/android/aod/IAlwaysOnDisplayService;

    :cond_2
    iget-boolean v3, v2, Lcom/android/server/aod/AODManagerService$AODConnection;->mBound:Z

    if-eqz v3, :cond_3

    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/android/server/aod/AODManagerService$AODConnection;->mBound:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    iget-object v3, p0, Lcom/android/server/aod/AODManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :cond_3
    :goto_1
    monitor-exit v4

    return-void

    :catch_0
    move-exception v0

    :try_start_5
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3

    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method public updateBatteryStats()V
    .locals 6

    const/4 v5, 0x0

    iget-object v3, p0, Lcom/android/server/aod/AODManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "aod_show_state"

    const/4 v4, -0x2

    invoke-static {v2, v3, v5, v4}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    if-eqz v3, :cond_1

    const/4 v1, 0x1

    :goto_0
    iget-boolean v3, p0, Lcom/android/server/aod/AODManagerService;->mIsAODStartStop:Z

    if-eq v3, v1, :cond_0

    iput-boolean v1, p0, Lcom/android/server/aod/AODManagerService;->mIsAODStartStop:Z

    :try_start_0
    iget-object v3, p0, Lcom/android/server/aod/AODManagerService;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/server/aod/AODManagerService;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    iget-boolean v4, p0, Lcom/android/server/aod/AODManagerService;->mIsAODStartStop:Z

    invoke-interface {v3, v4}, Lcom/android/internal/app/IBatteryStats;->noteAodService(Z)V

    :cond_0
    :goto_1
    return-void

    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    :cond_2
    sget-object v3, Lcom/android/server/aod/AODManagerService;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "mBatteryStats is null"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    sget-object v3, Lcom/android/server/aod/AODManagerService;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "exception mIsAODStartStop : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/android/server/aod/AODManagerService;->mIsAODStartStop:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public wakeUpInternal()Z
    .locals 9

    const/4 v6, 0x0

    const/4 v8, 0x1

    invoke-direct {p0}, Lcom/android/server/aod/AODManagerService;->checkCallerIsSystem()V

    iget-object v4, p0, Lcom/android/server/aod/AODManagerService;->mAODSettings:Lcom/android/server/aod/settings/AODSettings;

    invoke-virtual {v4}, Lcom/android/server/aod/settings/AODSettings;->isAODServiceEnable()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-direct {p0}, Lcom/android/server/aod/AODManagerService;->isSupportRegisterAODListener()Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object v5, p0, Lcom/android/server/aod/AODManagerService;->mListeners:Ljava/util/ArrayList;

    monitor-enter v5

    :try_start_0
    iget-object v4, p0, Lcom/android/server/aod/AODManagerService;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    if-ge v4, v8, :cond_0

    monitor-exit v5

    return v6

    :cond_0
    :try_start_1
    iget-object v4, p0, Lcom/android/server/aod/AODManagerService;->mListeners:Ljava/util/ArrayList;

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/aod/AODManagerService$AODListenerRecord;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/android/server/aod/AODManagerService$AODListenerRecord;->onScreenTurningOn()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v4

    monitor-exit v5

    throw v4

    :cond_2
    monitor-exit v5

    return v8

    :cond_3
    iget-object v4, p0, Lcom/android/server/aod/AODManagerService;->mAODConnection:Lcom/android/server/aod/AODManagerService$AODConnection;

    if-nez v4, :cond_5

    sget-object v4, Lcom/android/server/aod/AODManagerService$AODConnectionCause;->AODCONNECTION_STOPAOD:Lcom/android/server/aod/AODManagerService$AODConnectionCause;

    invoke-direct {p0, v4}, Lcom/android/server/aod/AODManagerService;->createAODConnection(Lcom/android/server/aod/AODManagerService$AODConnectionCause;)V

    :cond_4
    :goto_1
    return v8

    :cond_5
    iget-object v4, p0, Lcom/android/server/aod/AODManagerService;->mAODConnection:Lcom/android/server/aod/AODManagerService$AODConnection;

    iget-object v4, v4, Lcom/android/server/aod/AODManagerService$AODConnection;->mService:Lcom/samsung/android/aod/IAlwaysOnDisplayService;

    if-eqz v4, :cond_6

    :try_start_2
    iget-object v4, p0, Lcom/android/server/aod/AODManagerService;->mAODConnection:Lcom/android/server/aod/AODManagerService$AODConnection;

    iget-object v4, v4, Lcom/android/server/aod/AODManagerService$AODConnection;->mService:Lcom/samsung/android/aod/IAlwaysOnDisplayService;

    invoke-interface {v4}, Lcom/samsung/android/aod/IAlwaysOnDisplayService;->requestHide()V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    sget-object v4, Lcom/android/server/aod/AODManagerService;->TAG:Ljava/lang/String;

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_6
    sget-object v4, Lcom/android/server/aod/AODManagerService;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "AODConnection is disconnected..."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/android/server/aod/AODManagerService;->mAODHandler:Lcom/android/server/aod/AODManagerService$AODHandler;

    iget-object v5, p0, Lcom/android/server/aod/AODManagerService;->mStopCurrentConnectionRunnable:Ljava/lang/Runnable;

    invoke-virtual {v4, v5}, Lcom/android/server/aod/AODManagerService$AODHandler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result v4

    if-nez v4, :cond_4

    iget-object v4, p0, Lcom/android/server/aod/AODManagerService;->mAODHandler:Lcom/android/server/aod/AODManagerService$AODHandler;

    iget-object v5, p0, Lcom/android/server/aod/AODManagerService;->mStopCurrentConnectionRunnable:Ljava/lang/Runnable;

    const-wide/16 v6, 0x1388

    invoke-virtual {v4, v5, v6, v7}, Lcom/android/server/aod/AODManagerService$AODHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1

    :cond_7
    return v6
.end method
