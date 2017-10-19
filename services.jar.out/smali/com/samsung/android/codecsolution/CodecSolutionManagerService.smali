.class public Lcom/samsung/android/codecsolution/CodecSolutionManagerService;
.super Lcom/samsung/android/codecsolution/ICodecSolutionManagerService$Stub;
.source "CodecSolutionManagerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/codecsolution/CodecSolutionManagerService$1;,
        Lcom/samsung/android/codecsolution/CodecSolutionManagerService$CSProcessObserver;,
        Lcom/samsung/android/codecsolution/CodecSolutionManagerService$CodecSolutionReceiver;,
        Lcom/samsung/android/codecsolution/CodecSolutionManagerService$MultiWindowEventListener;,
        Lcom/samsung/android/codecsolution/CodecSolutionManagerService$PidInfo;
    }
.end annotation


# static fields
.field private static final CLASS_MHDR_META_SERVICE:Ljava/lang/String; = "com.samsung.android.mhdrservice.MhdrMetaService"

.field private static final CLASS_MHDR_MIXING_SERVICE:Ljava/lang/String; = "com.samsung.android.mhdrservice.MixingService"

.field private static final CLASS_MHDR_PARAM_SERVICE:Ljava/lang/String; = "com.samsung.android.mhdrservice.MhdrParamService"

.field private static final CLASS_MHDR_SERVICE:Ljava/lang/String; = "com.samsung.android.mhdrservice.MhdrService"

.field private static final CLASS_SMARTFIT_SERVICE:Ljava/lang/String; = "com.samsung.android.smartfitting.SmartFittingService"

.field private static final HANDLER_MSG_LOGGING_EVENT:I = 0x384

.field private static final HANDLER_MSG_SEND_BROADCAST:I = 0x320

.field private static final HANDLER_MSG_SET_META_MHDR_SERVICE:I = 0x67

.field private static final HANDLER_MSG_SET_PARAM_MHDR_SERVICE:I = 0x66

.field private static final HANDLER_MSG_SET_SMARTFITTING_PID:I = 0xca

.field private static final HANDLER_MSG_START_MHDR_SERVICE:I = 0x64

.field private static final HANDLER_MSG_START_MHDR_UI_MIXING:I = 0x68

.field private static final HANDLER_MSG_START_SMART_FITTING_SERVICE:I = 0xc8

.field private static final HANDLER_MSG_STOP_MHDR_SERVICE:I = 0x65

.field private static final HANDLER_MSG_STOP_MHDR_UI_MIXING:I = 0x69

.field private static final HANDLER_MSG_STOP_SMART_FITTING_SERVICE:I = 0xc9

.field private static final INTENT_SMARTFIT_FOUND_BLACK_BAR:Ljava/lang/String; = "com.samsung.intent.action.FOUND_BLACK_BAR"

.field private static final INTENT_SMARTFIT_HIDE_BUTTON:Ljava/lang/String; = "com.samsung.intent.action.HIDE_BUTTON"

.field private static final INTENT_SMARTFIT_SHOW_BUTTON:Ljava/lang/String; = "com.samsung.intent.action.SHOW_BUTTON"

.field private static final MAX_PID_DUMP_COUNT:I = 0x100

.field private static final PACKAGE_MHDR_SERVICE:Ljava/lang/String; = "com.samsung.android.mhdrservice"

.field private static final PACKAGE_NAME_YOUTUBE:Ljava/lang/String; = "com.google.android.youtube"

.field private static final PACKAGE_SMARTFIT_SERVICE:Ljava/lang/String; = "com.samsung.android.smartfitting"

.field private static final TAG:Ljava/lang/String; = "CodecSolution"

.field private static final TOP_IS_IN_WHITELIST:I = 0x1

.field private static final TOP_IS_IN_WHITELIST_UNSUPPORTED_RATIO:I = 0x3

.field private static final TOP_IS_IN_WHITELIST_WITHOUT_AUTOFIT:I = 0x4

.field private static final TOP_IS_NOT_IN_WHITELIST:I = 0x0

.field private static final TOP_IS_SAMSUNG_VIDEO_APP:I = 0x2

.field public static final VERSION:Ljava/lang/String; = "1.1"


# instance fields
.field private mActivityManager:Landroid/app/ActivityManager;

.field private mActivityManagerService:Landroid/app/IActivityManager;

.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mHandlerThread:Landroid/os/HandlerThread;

.field private mIsBlackbar:I

.field private mIsBootCompleted:Z

.field private mIsMhdrStarted:Z

.field private mMultiWindowEventListener:Lcom/samsung/android/multiwindow/IMultiWindowEventListener;

.field private mMultiWindowManager:Lcom/samsung/android/multiwindow/MultiWindowManager;

.field private mPidDumpIndex:I

.field private mPidDumpList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/codecsolution/CodecSolutionManagerService$PidInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mPidPackageName:Ljava/lang/String;

.field private mProcessObserver:Lcom/samsung/android/codecsolution/CodecSolutionManagerService$CSProcessObserver;

.field private mSecVideoUseSmartFitting:I

.field private mSmartFittingConnection:Landroid/content/ServiceConnection;

.field private mSmartFittingMode:I

.field private mSmartFittingServiceBinder:Lcom/samsung/android/smartfitting/ISmartFittingService;

.field private mTopIsFreeform:Z

.field private mTopPackageName:Ljava/lang/String;

.field private mWindowManager:Landroid/view/WindowManager;


# direct methods
.method static synthetic -get0(Lcom/samsung/android/codecsolution/CodecSolutionManagerService;)Landroid/app/ActivityManager;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/codecsolution/CodecSolutionManagerService;->mActivityManager:Landroid/app/ActivityManager;

    return-object v0
.end method

.method static synthetic -get1(Lcom/samsung/android/codecsolution/CodecSolutionManagerService;)Landroid/app/IActivityManager;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/codecsolution/CodecSolutionManagerService;->mActivityManagerService:Landroid/app/IActivityManager;

    return-object v0
.end method

.method static synthetic -get2(Lcom/samsung/android/codecsolution/CodecSolutionManagerService;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/codecsolution/CodecSolutionManagerService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get3(Lcom/samsung/android/codecsolution/CodecSolutionManagerService;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/codecsolution/CodecSolutionManagerService;->mIsBootCompleted:Z

    return v0
.end method

.method static synthetic -get4(Lcom/samsung/android/codecsolution/CodecSolutionManagerService;)Lcom/samsung/android/multiwindow/IMultiWindowEventListener;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/codecsolution/CodecSolutionManagerService;->mMultiWindowEventListener:Lcom/samsung/android/multiwindow/IMultiWindowEventListener;

    return-object v0
.end method

.method static synthetic -get5(Lcom/samsung/android/codecsolution/CodecSolutionManagerService;)Lcom/samsung/android/multiwindow/MultiWindowManager;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/codecsolution/CodecSolutionManagerService;->mMultiWindowManager:Lcom/samsung/android/multiwindow/MultiWindowManager;

    return-object v0
.end method

.method static synthetic -get6(Lcom/samsung/android/codecsolution/CodecSolutionManagerService;)I
    .locals 1

    iget v0, p0, Lcom/samsung/android/codecsolution/CodecSolutionManagerService;->mPidDumpIndex:I

    return v0
.end method

.method static synthetic -get7(Lcom/samsung/android/codecsolution/CodecSolutionManagerService;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/codecsolution/CodecSolutionManagerService;->mPidDumpList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic -get8(Lcom/samsung/android/codecsolution/CodecSolutionManagerService;)Lcom/samsung/android/codecsolution/CodecSolutionManagerService$CSProcessObserver;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/codecsolution/CodecSolutionManagerService;->mProcessObserver:Lcom/samsung/android/codecsolution/CodecSolutionManagerService$CSProcessObserver;

    return-object v0
.end method

.method static synthetic -set0(Lcom/samsung/android/codecsolution/CodecSolutionManagerService;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/codecsolution/CodecSolutionManagerService;->mIsBootCompleted:Z

    return p1
.end method

.method static synthetic -set1(Lcom/samsung/android/codecsolution/CodecSolutionManagerService;I)I
    .locals 0

    iput p1, p0, Lcom/samsung/android/codecsolution/CodecSolutionManagerService;->mPidDumpIndex:I

    return p1
.end method

.method static synthetic -set2(Lcom/samsung/android/codecsolution/CodecSolutionManagerService;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/codecsolution/CodecSolutionManagerService;->mPidPackageName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic -set3(Lcom/samsung/android/codecsolution/CodecSolutionManagerService;I)I
    .locals 0

    iput p1, p0, Lcom/samsung/android/codecsolution/CodecSolutionManagerService;->mSmartFittingMode:I

    return p1
.end method

.method static synthetic -set4(Lcom/samsung/android/codecsolution/CodecSolutionManagerService;Lcom/samsung/android/smartfitting/ISmartFittingService;)Lcom/samsung/android/smartfitting/ISmartFittingService;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/codecsolution/CodecSolutionManagerService;->mSmartFittingServiceBinder:Lcom/samsung/android/smartfitting/ISmartFittingService;

    return-object p1
.end method

.method static synthetic -set5(Lcom/samsung/android/codecsolution/CodecSolutionManagerService;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/codecsolution/CodecSolutionManagerService;->mTopIsFreeform:Z

    return p1
.end method

.method static synthetic -set6(Lcom/samsung/android/codecsolution/CodecSolutionManagerService;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/codecsolution/CodecSolutionManagerService;->mTopPackageName:Ljava/lang/String;

    return-object p1
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/app/IActivityManager;)V
    .locals 7

    const/16 v6, 0x100

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    invoke-direct {p0}, Lcom/samsung/android/codecsolution/ICodecSolutionManagerService$Stub;-><init>()V

    iput v3, p0, Lcom/samsung/android/codecsolution/CodecSolutionManagerService;->mPidDumpIndex:I

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v6}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Lcom/samsung/android/codecsolution/CodecSolutionManagerService;->mPidDumpList:Ljava/util/ArrayList;

    iput-boolean v3, p0, Lcom/samsung/android/codecsolution/CodecSolutionManagerService;->mTopIsFreeform:Z

    new-instance v1, Lcom/samsung/android/codecsolution/CodecSolutionManagerService$CSProcessObserver;

    invoke-direct {v1, p0, v4}, Lcom/samsung/android/codecsolution/CodecSolutionManagerService$CSProcessObserver;-><init>(Lcom/samsung/android/codecsolution/CodecSolutionManagerService;Lcom/samsung/android/codecsolution/CodecSolutionManagerService$CSProcessObserver;)V

    iput-object v1, p0, Lcom/samsung/android/codecsolution/CodecSolutionManagerService;->mProcessObserver:Lcom/samsung/android/codecsolution/CodecSolutionManagerService$CSProcessObserver;

    new-instance v1, Lcom/samsung/android/codecsolution/CodecSolutionManagerService$MultiWindowEventListener;

    invoke-direct {v1, p0, v4}, Lcom/samsung/android/codecsolution/CodecSolutionManagerService$MultiWindowEventListener;-><init>(Lcom/samsung/android/codecsolution/CodecSolutionManagerService;Lcom/samsung/android/codecsolution/CodecSolutionManagerService$MultiWindowEventListener;)V

    iput-object v1, p0, Lcom/samsung/android/codecsolution/CodecSolutionManagerService;->mMultiWindowEventListener:Lcom/samsung/android/multiwindow/IMultiWindowEventListener;

    new-instance v1, Lcom/samsung/android/multiwindow/MultiWindowManager;

    invoke-direct {v1}, Lcom/samsung/android/multiwindow/MultiWindowManager;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/codecsolution/CodecSolutionManagerService;->mMultiWindowManager:Lcom/samsung/android/multiwindow/MultiWindowManager;

    iput-object v4, p0, Lcom/samsung/android/codecsolution/CodecSolutionManagerService;->mSmartFittingServiceBinder:Lcom/samsung/android/smartfitting/ISmartFittingService;

    new-instance v1, Lcom/samsung/android/codecsolution/CodecSolutionManagerService$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/codecsolution/CodecSolutionManagerService$1;-><init>(Lcom/samsung/android/codecsolution/CodecSolutionManagerService;)V

    iput-object v1, p0, Lcom/samsung/android/codecsolution/CodecSolutionManagerService;->mSmartFittingConnection:Landroid/content/ServiceConnection;

    const-string/jumbo v1, "CodecSolution"

    const-string/jumbo v2, "create"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/samsung/android/codecsolution/CodecSolutionManagerService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/codecsolution/CodecSolutionManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "activity"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager;

    iput-object v1, p0, Lcom/samsung/android/codecsolution/CodecSolutionManagerService;->mActivityManager:Landroid/app/ActivityManager;

    iput-object p2, p0, Lcom/samsung/android/codecsolution/CodecSolutionManagerService;->mActivityManagerService:Landroid/app/IActivityManager;

    iget-object v1, p0, Lcom/samsung/android/codecsolution/CodecSolutionManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "window"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    iput-object v1, p0, Lcom/samsung/android/codecsolution/CodecSolutionManagerService;->mWindowManager:Landroid/view/WindowManager;

    iput v5, p0, Lcom/samsung/android/codecsolution/CodecSolutionManagerService;->mSmartFittingMode:I

    iput v3, p0, Lcom/samsung/android/codecsolution/CodecSolutionManagerService;->mIsBlackbar:I

    iput v3, p0, Lcom/samsung/android/codecsolution/CodecSolutionManagerService;->mSecVideoUseSmartFitting:I

    iput-object v4, p0, Lcom/samsung/android/codecsolution/CodecSolutionManagerService;->mTopPackageName:Ljava/lang/String;

    iput-object v4, p0, Lcom/samsung/android/codecsolution/CodecSolutionManagerService;->mPidPackageName:Ljava/lang/String;

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v6, :cond_0

    iget-object v1, p0, Lcom/samsung/android/codecsolution/CodecSolutionManagerService;->mPidDumpList:Ljava/util/ArrayList;

    new-instance v2, Lcom/samsung/android/codecsolution/CodecSolutionManagerService$PidInfo;

    invoke-direct {v2}, Lcom/samsung/android/codecsolution/CodecSolutionManagerService$PidInfo;-><init>()V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iput-boolean v3, p0, Lcom/samsung/android/codecsolution/CodecSolutionManagerService;->mIsBootCompleted:Z

    new-instance v1, Lcom/samsung/android/codecsolution/CodecSolutionManagerService$CodecSolutionReceiver;

    invoke-direct {v1, p0}, Lcom/samsung/android/codecsolution/CodecSolutionManagerService$CodecSolutionReceiver;-><init>(Lcom/samsung/android/codecsolution/CodecSolutionManagerService;)V

    new-instance v2, Landroid/content/IntentFilter;

    const-string/jumbo v3, "android.intent.action.BOOT_COMPLETED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    new-instance v1, Landroid/os/HandlerThread;

    const-string/jumbo v2, "CodecSolutionHandler"

    invoke-direct {v1, v2, v5}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object v1, p0, Lcom/samsung/android/codecsolution/CodecSolutionManagerService;->mHandlerThread:Landroid/os/HandlerThread;

    iget-object v1, p0, Lcom/samsung/android/codecsolution/CodecSolutionManagerService;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    new-instance v1, Lcom/samsung/android/codecsolution/CodecSolutionManagerService$2;

    iget-object v2, p0, Lcom/samsung/android/codecsolution/CodecSolutionManagerService;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/samsung/android/codecsolution/CodecSolutionManagerService$2;-><init>(Lcom/samsung/android/codecsolution/CodecSolutionManagerService;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/samsung/android/codecsolution/CodecSolutionManagerService;->mHandler:Landroid/os/Handler;

    const-string/jumbo v1, "secmm.codecsolution.ready"

    const-string/jumbo v2, "1"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public checkblackbarstatus()I
    .locals 2

    const-string/jumbo v0, "CodecSolution"

    const-string/jumbo v1, "checkblackbarstatus"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/samsung/android/codecsolution/CodecSolutionManagerService;->mIsBlackbar:I

    return v0
.end method

.method public debug()V
    .locals 2

    const-string/jumbo v0, "CodecSolution"

    const-string/jumbo v1, "debug!!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 4

    iget-object v2, p0, Lcom/samsung/android/codecsolution/CodecSolutionManagerService;->mPidDumpList:Ljava/util/ArrayList;

    if-nez v2, :cond_0

    const-string/jumbo v2, "List is null."

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v2, p0, Lcom/samsung/android/codecsolution/CodecSolutionManagerService;->mPidDumpList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_1

    const-string/jumbo v2, "List size is 0."

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void

    :cond_1
    :try_start_0
    iget v1, p0, Lcom/samsung/android/codecsolution/CodecSolutionManagerService;->mPidDumpIndex:I

    :goto_0
    const/16 v2, 0x100

    if-ge v1, v2, :cond_3

    iget-object v2, p0, Lcom/samsung/android/codecsolution/CodecSolutionManagerService;->mPidDumpList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/codecsolution/CodecSolutionManagerService$PidInfo;

    iget v2, v2, Lcom/samsung/android/codecsolution/CodecSolutionManagerService$PidInfo;->pid:I

    if-eqz v2, :cond_2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/samsung/android/codecsolution/CodecSolutionManagerService;->mPidDumpList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/codecsolution/CodecSolutionManagerService$PidInfo;

    iget-object v2, v2, Lcom/samsung/android/codecsolution/CodecSolutionManagerService$PidInfo;->date:Ljava/util/Date;

    invoke-virtual {v2}, Ljava/util/Date;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v2, p0, Lcom/samsung/android/codecsolution/CodecSolutionManagerService;->mPidDumpList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/codecsolution/CodecSolutionManagerService$PidInfo;

    iget v2, v2, Lcom/samsung/android/codecsolution/CodecSolutionManagerService$PidInfo;->pid:I

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v2, p0, Lcom/samsung/android/codecsolution/CodecSolutionManagerService;->mPidDumpList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/codecsolution/CodecSolutionManagerService$PidInfo;

    iget-object v2, v2, Lcom/samsung/android/codecsolution/CodecSolutionManagerService$PidInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    :goto_1
    iget v2, p0, Lcom/samsung/android/codecsolution/CodecSolutionManagerService;->mPidDumpIndex:I

    if-ge v1, v2, :cond_5

    iget-object v2, p0, Lcom/samsung/android/codecsolution/CodecSolutionManagerService;->mPidDumpList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/codecsolution/CodecSolutionManagerService$PidInfo;

    iget v2, v2, Lcom/samsung/android/codecsolution/CodecSolutionManagerService$PidInfo;->pid:I

    if-eqz v2, :cond_4

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/samsung/android/codecsolution/CodecSolutionManagerService;->mPidDumpList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/codecsolution/CodecSolutionManagerService$PidInfo;

    iget-object v2, v2, Lcom/samsung/android/codecsolution/CodecSolutionManagerService$PidInfo;->date:Ljava/util/Date;

    invoke-virtual {v2}, Ljava/util/Date;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v2, p0, Lcom/samsung/android/codecsolution/CodecSolutionManagerService;->mPidDumpList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/codecsolution/CodecSolutionManagerService$PidInfo;

    iget v2, v2, Lcom/samsung/android/codecsolution/CodecSolutionManagerService$PidInfo;->pid:I

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v2, p0, Lcom/samsung/android/codecsolution/CodecSolutionManagerService;->mPidDumpList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/codecsolution/CodecSolutionManagerService$PidInfo;

    iget-object v2, v2, Lcom/samsung/android/codecsolution/CodecSolutionManagerService$PidInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :catch_0
    move-exception v0

    const-string/jumbo v2, "Unexpected exception."

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_5
    return-void
.end method

.method public getSmartFittingMode()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/codecsolution/CodecSolutionManagerService;->mSmartFittingMode:I

    return v0
.end method

.method public getWhiteListStatus()I
    .locals 17

    const-string/jumbo v14, "CodecSolution"

    const-string/jumbo v15, "getWhiteListStatus"

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/codecsolution/CodecSolutionManagerService;->isDesktopMode()Z

    move-result v14

    if-eqz v14, :cond_0

    const-string/jumbo v14, "CodecSolution"

    const-string/jumbo v15, "In Knox Desktop mode."

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v14, 0x0

    return v14

    :cond_0
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/android/codecsolution/CodecSolutionManagerService;->mPidPackageName:Ljava/lang/String;

    if-nez v12, :cond_1

    const-string/jumbo v14, "CodecSolution"

    const-string/jumbo v15, "PidPackageName is null."

    invoke-static {v14, v15}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/android/codecsolution/CodecSolutionManagerService;->mTopPackageName:Ljava/lang/String;

    if-nez v12, :cond_3

    const-string/jumbo v14, "CodecSolution"

    const-string/jumbo v15, "TopPackageName is null."

    invoke-static {v14, v15}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v14, 0x0

    return v14

    :cond_1
    const-string/jumbo v14, "com.google.android.youtube"

    invoke-virtual {v12, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_3

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/android/codecsolution/CodecSolutionManagerService;->mTopPackageName:Ljava/lang/String;

    const-string/jumbo v14, "CodecSolution"

    const-string/jumbo v15, "PidPackageName is Youtube."

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v12, :cond_2

    const-string/jumbo v14, "CodecSolution"

    const-string/jumbo v15, "TopPackageName is null."

    invoke-static {v14, v15}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v14, 0x0

    return v14

    :cond_2
    const-string/jumbo v14, "CodecSolution"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "Change the top : "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/samsung/android/codecsolution/CodecSolutionManagerService;->mTopIsFreeform:Z

    if-eqz v4, :cond_4

    const-string/jumbo v14, "CodecSolution"

    const-string/jumbo v15, "Top is freeform."

    invoke-static {v14, v15}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v14, 0x0

    return v14

    :cond_4
    const-string/jumbo v14, "CodecSolution"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "Top : "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v14, "com.samsung.android.video"

    invoke-virtual {v12, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_5

    const-string/jumbo v14, "com.samsung.android.onlinevideo"

    invoke-virtual {v12, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_5

    const-string/jumbo v14, "com.samsung.android.videolist"

    invoke-virtual {v12, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_7

    :cond_5
    move-object/from16 v0, p0

    iget v14, v0, Lcom/samsung/android/codecsolution/CodecSolutionManagerService;->mSecVideoUseSmartFitting:I

    if-nez v14, :cond_6

    const-string/jumbo v14, "CodecSolution"

    const-string/jumbo v15, "SEC Video don\'t use SmartFitting."

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v14, 0x0

    return v14

    :cond_6
    const/4 v14, 0x2

    return v14

    :cond_7
    new-instance v8, Lcom/samsung/android/codecsolution/SCPMHelper;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/codecsolution/CodecSolutionManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v8, v14}, Lcom/samsung/android/codecsolution/SCPMHelper;-><init>(Landroid/content/Context;)V

    invoke-virtual {v8, v12}, Lcom/samsung/android/codecsolution/SCPMHelper;->getPackageInfo(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v5

    if-nez v5, :cond_8

    const-string/jumbo v14, "CodecSolution"

    const-string/jumbo v15, "PackageInfo is null."

    invoke-static {v14, v15}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v14, 0x0

    return v14

    :cond_8
    const/4 v14, 0x0

    invoke-virtual {v5, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Integer;

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v9

    const/4 v14, 0x1

    invoke-virtual {v5, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const/4 v14, 0x2

    invoke-virtual {v5, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    const/4 v14, 0x3

    invoke-virtual {v5, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Integer;

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v11

    const/4 v14, 0x4

    invoke-virtual {v5, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string/jumbo v14, "CodecSolution"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "sdk:"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, " c:"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, " u:"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, " t:"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, " app:"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget v14, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v14, v9, :cond_9

    const-string/jumbo v14, "CodecSolution"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "Not supported SDK version.("

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    sget v16, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, " vs "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, ")"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v14, 0x0

    return v14

    :cond_9
    const-string/jumbo v14, "yes"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_a

    const/4 v14, 0x0

    return v14

    :cond_a
    :try_start_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/codecsolution/CodecSolutionManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v14

    const/4 v15, 0x0

    invoke-virtual {v14, v12, v15}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    new-instance v6, Ljava/util/Scanner;

    iget-object v14, v7, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-direct {v6, v14}, Ljava/util/Scanner;-><init>(Ljava/lang/String;)V

    new-instance v10, Ljava/util/Scanner;

    invoke-direct {v10, v1}, Ljava/util/Scanner;-><init>(Ljava/lang/String;)V

    const-string/jumbo v14, "[^0-9]"

    invoke-virtual {v6, v14}, Ljava/util/Scanner;->useDelimiter(Ljava/lang/String;)Ljava/util/Scanner;

    const-string/jumbo v14, "[^0-9]"

    invoke-virtual {v10, v14}, Ljava/util/Scanner;->useDelimiter(Ljava/lang/String;)Ljava/util/Scanner;

    :cond_b
    invoke-virtual {v6}, Ljava/util/Scanner;->hasNextInt()Z

    move-result v14

    if-eqz v14, :cond_c

    invoke-virtual {v10}, Ljava/util/Scanner;->hasNextInt()Z

    move-result v14

    if-eqz v14, :cond_c

    invoke-virtual {v6}, Ljava/util/Scanner;->nextInt()I

    move-result v14

    invoke-virtual {v10}, Ljava/util/Scanner;->nextInt()I

    move-result v15

    if-ge v14, v15, :cond_b

    const-string/jumbo v14, "CodecSolution"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "Not supported App version. ("

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    iget-object v0, v7, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, " vs "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, ")"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v14, 0x0

    return v14

    :catch_0
    move-exception v3

    const-string/jumbo v14, "CodecSolution"

    const-string/jumbo v15, "Can\'t get the package info."

    invoke-static {v14, v15}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v14, 0x0

    return v14

    :cond_c
    const-string/jumbo v14, "sec"

    invoke-virtual {v2, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_f

    move-object/from16 v0, p0

    iget v14, v0, Lcom/samsung/android/codecsolution/CodecSolutionManagerService;->mSecVideoUseSmartFitting:I

    if-nez v14, :cond_d

    const-string/jumbo v14, "CodecSolution"

    const-string/jumbo v15, "SEC Video don\'t use SmartFitting."

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v14, 0x0

    return v14

    :cond_d
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/codecsolution/CodecSolutionManagerService;->isSupportedRatio()Z

    move-result v14

    if-nez v14, :cond_e

    const-string/jumbo v14, "CodecSolution"

    const-string/jumbo v15, "Not supported ratio.1"

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v14, 0x0

    return v14

    :cond_e
    const/4 v14, 0x2

    return v14

    :cond_f
    const-string/jumbo v14, "no-autofit"

    invoke-virtual {v2, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_11

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/codecsolution/CodecSolutionManagerService;->isSupportedRatio()Z

    move-result v14

    if-nez v14, :cond_10

    const-string/jumbo v14, "CodecSolution"

    const-string/jumbo v15, "Not supported ratio.2"

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v14, 0x0

    return v14

    :cond_10
    const/4 v14, 0x4

    return v14

    :cond_11
    const-string/jumbo v14, "3rd"

    invoke-virtual {v2, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_13

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/codecsolution/CodecSolutionManagerService;->isSupportedRatio()Z

    move-result v14

    if-nez v14, :cond_12

    const-string/jumbo v14, "CodecSolution"

    const-string/jumbo v15, "Not supported ratio.3"

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v14, v11, 0x3

    return v14

    :cond_12
    add-int/lit8 v14, v11, 0x1

    return v14

    :cond_13
    const/4 v14, 0x0

    return v14
.end method

.method public hideSmartFittingButton()V
    .locals 4

    const-string/jumbo v2, "CodecSolution"

    const-string/jumbo v3, "hideSmartFittingButton : sendBroadcast com.samsung.intent.action.HIDE_BUTTON"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/samsung/android/codecsolution/CodecSolutionManagerService;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x320

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v2, "intent"

    const-string/jumbo v3, "com.samsung.intent.action.HIDE_BUTTON"

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    iget-object v2, p0, Lcom/samsung/android/codecsolution/CodecSolutionManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public isDesktopMode()Z
    .locals 4

    const/4 v3, 0x0

    const-string/jumbo v1, "CodecSolution"

    const-string/jumbo v2, "isDesktopMode()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/samsung/android/codecsolution/CodecSolutionManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "desktopmode"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/desktopmode/SemDesktopModeManager;

    if-nez v0, :cond_0

    const-string/jumbo v1, "CodecSolution"

    const-string/jumbo v2, " : Can\'t get the DesktopModeManager."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_0
    invoke-static {}, Lcom/samsung/android/desktopmode/SemDesktopModeManager;->isDesktopMode()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string/jumbo v1, "CodecSolution"

    const-string/jumbo v2, " : In Knox Desktop mode."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x1

    return v1

    :cond_1
    return v3
.end method

.method public isMhdrStarted()I
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/codecsolution/CodecSolutionManagerService;->mIsMhdrStarted:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSupportedRatio()Z
    .locals 9

    const/4 v8, 0x0

    const-string/jumbo v4, "CodecSolution"

    const-string/jumbo v5, "isSupportedRatio()"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2}, Landroid/graphics/Point;-><init>()V

    iget-object v4, p0, Lcom/samsung/android/codecsolution/CodecSolutionManagerService;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v4}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    if-nez v2, :cond_0

    const-string/jumbo v4, "CodecSolution"

    const-string/jumbo v5, "point is null."

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v8

    :cond_0
    iget v4, v2, Landroid/graphics/Point;->x:I

    iget v5, v2, Landroid/graphics/Point;->y:I

    if-le v4, v5, :cond_1

    iget v0, v2, Landroid/graphics/Point;->x:I

    iget v1, v2, Landroid/graphics/Point;->y:I

    :goto_0
    int-to-double v4, v0

    int-to-double v6, v1

    div-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    const-string/jumbo v4, "CodecSolution"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "a:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " b:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " r:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    const-wide v6, 0x3ffdc28f5c28f5c3L    # 1.86

    cmpl-double v4, v4, v6

    if-lez v4, :cond_2

    const/4 v4, 0x1

    return v4

    :cond_1
    iget v0, v2, Landroid/graphics/Point;->y:I

    iget v1, v2, Landroid/graphics/Point;->x:I

    goto :goto_0

    :cond_2
    return v8
.end method

.method public reportMediaStatisticsEvent(Ljava/lang/String;)V
    .locals 5

    const-string/jumbo v2, "CodecSolution"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "reportMediaStatisticsEvent: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/samsung/android/codecsolution/MediaStatisticsEvent;

    invoke-direct {v0, p1}, Lcom/samsung/android/codecsolution/MediaStatisticsEvent;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/android/codecsolution/CodecSolutionManagerService;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x384

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v2, p0, Lcom/samsung/android/codecsolution/CodecSolutionManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public setMhdrEnable(I)V
    .locals 6

    const/4 v2, 0x0

    const-string/jumbo v3, "CodecSolution"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setMhdrEnable : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/samsung/android/codecsolution/CodecSolutionManagerService;->mHandler:Landroid/os/Handler;

    const/16 v4, 0x66

    invoke-virtual {v3, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v3, "HDR-ENABLE"

    if-eqz p1, :cond_0

    const/4 v2, 0x1

    :cond_0
    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    iget-object v2, p0, Lcom/samsung/android/codecsolution/CodecSolutionManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public setMhdrMetaData(IIII)V
    .locals 5

    const-string/jumbo v2, "CodecSolution"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "maxAvgLight : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v2, "CodecSolution"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "maxContentLight : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v2, "CodecSolution"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "maxDispL : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v2, "CodecSolution"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "minDispL : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/samsung/android/codecsolution/CodecSolutionManagerService;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x67

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v2, "MaxAvgLight"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v2, "MaxContentLight"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v2, "MaxDispL"

    invoke-virtual {v0, v2, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v2, "MinDispL"

    invoke-virtual {v0, v2, p4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    iget-object v2, p0, Lcom/samsung/android/codecsolution/CodecSolutionManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public setSecVideoUseSmartFitting(I)V
    .locals 3

    const-string/jumbo v0, "CodecSolution"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setSecVideoUseSmartFitting("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput p1, p0, Lcom/samsung/android/codecsolution/CodecSolutionManagerService;->mSecVideoUseSmartFitting:I

    return-void
.end method

.method public setSmartFittingMode(I)V
    .locals 3

    const-string/jumbo v0, "CodecSolution"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setSmartFittingMode : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput p1, p0, Lcom/samsung/android/codecsolution/CodecSolutionManagerService;->mSmartFittingMode:I

    return-void
.end method

.method public setSmartFittingPid(I)V
    .locals 4

    const-string/jumbo v1, "CodecSolution"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setSmartFittingPid : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/samsung/android/codecsolution/CodecSolutionManagerService;->mHandler:Landroid/os/Handler;

    const/16 v2, 0xca

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iput p1, v0, Landroid/os/Message;->arg1:I

    iget-object v1, p0, Lcom/samsung/android/codecsolution/CodecSolutionManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public setWhiteListStatus(I)V
    .locals 3

    const-string/jumbo v0, "CodecSolution"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setWhiteListStatus : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public showSmartFittingButton()V
    .locals 4

    const-string/jumbo v2, "CodecSolution"

    const-string/jumbo v3, "showSmartFittingButton : sendBroadcast com.samsung.intent.action.SHOW_BUTTON"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/samsung/android/codecsolution/CodecSolutionManagerService;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x320

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v2, "intent"

    const-string/jumbo v3, "com.samsung.intent.action.SHOW_BUTTON"

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    iget-object v2, p0, Lcom/samsung/android/codecsolution/CodecSolutionManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public startMhdrService(ILjava/lang/String;I)V
    .locals 8

    const/4 v4, 0x1

    const/4 v3, 0x0

    const-string/jumbo v5, "CodecSolution"

    const-string/jumbo v6, "startMhdrService"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v5, "CodecSolution"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "pid = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ", uid = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Lcom/samsung/android/codecsolution/CodecSolutionManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v6, "com.samsung.permission.USE_MHDR_SERVICE"

    invoke-virtual {v5, v6}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v5

    if-nez v5, :cond_1

    const/4 v2, 0x1

    :goto_0
    const-string/jumbo v5, "CodecSolution"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "permission : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v5, "CodecSolution"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "calling uid : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v7

    invoke-static {v7}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v5, "CodecSolution"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "my uid : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Landroid/os/UserHandle;->semGetMyUserId()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Lcom/samsung/android/codecsolution/CodecSolutionManagerService;->mHandler:Landroid/os/Handler;

    const/16 v6, 0x64

    invoke-virtual {v5, v6}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v5, "pid"

    invoke-virtual {v0, v5, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v5, "vendor"

    invoke-virtual {v0, v5, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v5, "initialOff"

    if-eqz p3, :cond_0

    move v3, v4

    :cond_0
    invoke-virtual {v0, v5, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    iget-object v3, p0, Lcom/samsung/android/codecsolution/CodecSolutionManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    iput-boolean v4, p0, Lcom/samsung/android/codecsolution/CodecSolutionManagerService;->mIsMhdrStarted:Z

    return-void

    :cond_1
    const/4 v2, 0x0

    goto/16 :goto_0
.end method

.method public startMhdrUiMixing()V
    .locals 3

    const-string/jumbo v1, "CodecSolution"

    const-string/jumbo v2, "startMhdrUiMixing"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/samsung/android/codecsolution/CodecSolutionManagerService;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x68

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/codecsolution/CodecSolutionManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/samsung/android/codecsolution/CodecSolutionManagerService;->mIsMhdrStarted:Z

    return-void
.end method

.method public declared-synchronized startSmartFittingService()V
    .locals 3

    monitor-enter p0

    :try_start_0
    const-string/jumbo v1, "CodecSolution"

    const-string/jumbo v2, "startSmartFittingService"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/samsung/android/codecsolution/CodecSolutionManagerService;->mHandler:Landroid/os/Handler;

    const/16 v2, 0xc8

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/codecsolution/CodecSolutionManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public stopMhdrService()V
    .locals 3

    const-string/jumbo v1, "CodecSolution"

    const-string/jumbo v2, "stopMhdrService"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/samsung/android/codecsolution/CodecSolutionManagerService;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x65

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/codecsolution/CodecSolutionManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/samsung/android/codecsolution/CodecSolutionManagerService;->mIsMhdrStarted:Z

    return-void
.end method

.method public stopMhdrUiMixing()V
    .locals 3

    const-string/jumbo v1, "CodecSolution"

    const-string/jumbo v2, "stopMhdrUiMixing"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/samsung/android/codecsolution/CodecSolutionManagerService;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x69

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/codecsolution/CodecSolutionManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/samsung/android/codecsolution/CodecSolutionManagerService;->mIsMhdrStarted:Z

    return-void
.end method

.method public declared-synchronized stopSmartFittingService()V
    .locals 3

    monitor-enter p0

    :try_start_0
    const-string/jumbo v1, "CodecSolution"

    const-string/jumbo v2, "stopSmartFittingService"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/samsung/android/codecsolution/CodecSolutionManagerService;->mHandler:Landroid/os/Handler;

    const/16 v2, 0xc9

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/codecsolution/CodecSolutionManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public updateblackbarstatus(I)V
    .locals 4

    const-string/jumbo v2, "CodecSolution"

    const-string/jumbo v3, "updateblackbarstatus"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput p1, p0, Lcom/samsung/android/codecsolution/CodecSolutionManagerService;->mIsBlackbar:I

    if-lez p1, :cond_0

    iget-object v2, p0, Lcom/samsung/android/codecsolution/CodecSolutionManagerService;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x320

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v2, "intent"

    const-string/jumbo v3, "com.samsung.intent.action.FOUND_BLACK_BAR"

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    iget-object v2, p0, Lcom/samsung/android/codecsolution/CodecSolutionManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    return-void
.end method
