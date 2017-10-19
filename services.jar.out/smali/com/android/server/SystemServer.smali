.class public final Lcom/android/server/SystemServer;
.super Ljava/lang/Object;
.source "SystemServer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/SystemServer$-void_startBootstrapServices__LambdaImpl0;,
        Lcom/android/server/SystemServer$-void_startOtherServices__LambdaImpl0;
    }
.end annotation


# static fields
.field private static final ACCOUNT_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.accounts.AccountManagerService$Lifecycle"

.field private static final AOD_MANAGER_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.aod.AODManagerService"

.field private static final APPWIDGET_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.appwidget.AppWidgetService"

.field private static final BACKUP_MANAGER_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.backup.BackupManagerService$Lifecycle"

.field private static final BLOCK_MAP_FILE:Ljava/lang/String; = "/cache/recovery/block.map"

.field private static final COCKTAIL_BAR_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.cocktailbar.CocktailBarManagerService"

.field private static final CONTENT_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.content.ContentService$Lifecycle"

.field private static final COVER_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.cover.CoverManagerService"

.field private static final DEFAULT_SYSTEM_THEME:I = 0x103049e

.field private static final EARLIEST_SUPPORTED_TIME:J = 0x5265c00L

.field private static final ENCRYPTED_STATE:Ljava/lang/String; = "1"

.field private static final ENCRYPTING_STATE:Ljava/lang/String; = "trigger_restart_min_framework"

.field private static final ETHERNET_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.ethernet.EthernetService"

.field private static final JOB_SCHEDULER_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.job.JobSchedulerService"

.field private static final LOCK_SETTINGS_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.LockSettingsService$Lifecycle"

.field private static final MIDI_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.midi.MidiService$Lifecycle"

.field private static final MOUNT_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.MountService$Lifecycle"

.field private static final PERSISTENT_DATA_BLOCK_PROP:Ljava/lang/String; = "ro.frp.pst"

.field private static final PRINT_MANAGER_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.print.PrintManagerService"

.field private static final SEARCH_MANAGER_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.search.SearchManagerService$Lifecycle"

.field private static final SNAPSHOT_INTERVAL:J = 0x36ee80L

.field private static final START_SENSOR_SERVICE:Ljava/lang/String; = "StartSensorService"

.field private static final TAG:Ljava/lang/String; = "SystemServer"

.field private static final THERMAL_OBSERVER_CLASS:Ljava/lang/String; = "com.google.android.clockwork.ThermalObserver"

.field private static final TIMA_KEYSTORE_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.enterprise.keystore.TimaKeystoreService$Lifecycle"

.field private static final UNCRYPT_PACKAGE_FILE:Ljava/lang/String; = "/cache/recovery/uncrypt_file"

.field private static final USB_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.usb.UsbService$Lifecycle"

.field private static final VOICE_RECOGNITION_MANAGER_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.voiceinteraction.VoiceInteractionManagerService"

.field private static final WALLPAPER_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.wallpaper.WallpaperManagerService$Lifecycle"

.field private static final WEAR_BLUETOOTH_SERVICE_CLASS:Ljava/lang/String; = "com.google.android.clockwork.bluetooth.WearBluetoothService"

.field private static final WEAR_TIME_SERVICE_CLASS:Ljava/lang/String; = "com.google.android.clockwork.time.WearTimeService"

.field private static final WEAR_WIFI_MEDIATOR_SERVICE_CLASS:Ljava/lang/String; = "com.google.android.clockwork.wifi.WearWifiMediatorService"

.field private static final WIFI_HS20_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.wifi.hs20.WifiHs20Service"

.field private static final WIFI_NAN_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.wifi.nan.WifiNanService"

.field private static final WIFI_P2P_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.wifi.p2p.WifiP2pService"

.field private static final WIFI_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.wifi.WifiService"

.field private static final isMobilePaymentAllowed:Z = true

.field private static final isRLLAllowed:Z = false

.field private static final sMaxBinderThreads:I = 0x1f


# instance fields
.field private final IS_ELASTIC_ENABLED:Z

.field private final IS_OVERLAY_THEMES_ENABLED:Z

.field SCEPolicy:Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy;

.field ccmService:Lcom/android/server/enterprise/ccm/ClientCertificateManager;

.field credentialManagerService:Lcom/samsung/ucm/ucmservice/CredentialManagerService;

.field private mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

.field private mContentResolver:Landroid/content/ContentResolver;

.field private mDisplayManagerService:Lcom/android/server/display/DisplayManagerService;

.field private mEntropyMixer:Lcom/android/server/EntropyMixer;

.field private final mFactoryTestMode:I

.field private mFirstBoot:Z

.field private mIsAlarmBoot:Z

.field private mOnlyCore:Z

.field private mPackageManager:Landroid/content/pm/PackageManager;

.field private mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

.field private mPowerManagerService:Lcom/android/server/power/PowerManagerService;

.field private mProfilerSnapshotTimer:Ljava/util/Timer;

.field private mSystemContext:Landroid/content/Context;

.field private mSystemServiceManager:Lcom/android/server/SystemServiceManager;

.field private mWebViewUpdateService:Lcom/android/server/webkit/WebViewUpdateService;

.field multiScreenManagerService:Lcom/android/server/am/IMultiScreenManagerServiceBridge;

.field pkmService:Lcom/android/server/PKMService;

.field safeModeValueForTheme:Z

.field timaService:Lcom/android/server/TimaService;

.field ucmManagerPolicy:Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;


# direct methods
.method static synthetic -com_android_server_SystemServer_lambda$1()V
    .locals 2

    const-string/jumbo v0, "SystemServer"

    const-string/jumbo v1, "Sensorservice start thread"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/server/SystemServer;->startSensorService()V

    return-void
.end method

.method static synthetic -get0(Lcom/android/server/SystemServer;)Lcom/android/server/am/ActivityManagerService;
    .locals 1

    iget-object v0, p0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/server/SystemServer;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/SystemServer;->mOnlyCore:Z

    return v0
.end method

.method static synthetic -get2(Lcom/android/server/SystemServer;)Lcom/android/server/SystemServiceManager;
    .locals 1

    iget-object v0, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/server/SystemServer;)Lcom/android/server/webkit/WebViewUpdateService;
    .locals 1

    iget-object v0, p0, Lcom/android/server/SystemServer;->mWebViewUpdateService:Lcom/android/server/webkit/WebViewUpdateService;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/server/SystemServer;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/server/SystemServer;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/SystemServer;->startThemeService()V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/SystemServer;->timaService:Lcom/android/server/TimaService;

    iput-object v0, p0, Lcom/android/server/SystemServer;->pkmService:Lcom/android/server/PKMService;

    iput-object v0, p0, Lcom/android/server/SystemServer;->ccmService:Lcom/android/server/enterprise/ccm/ClientCertificateManager;

    iput-object v0, p0, Lcom/android/server/SystemServer;->ucmManagerPolicy:Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;

    iput-object v0, p0, Lcom/android/server/SystemServer;->credentialManagerService:Lcom/samsung/ucm/ucmservice/CredentialManagerService;

    iput-object v0, p0, Lcom/android/server/SystemServer;->SCEPolicy:Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/SystemServer;->IS_ELASTIC_ENABLED:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/SystemServer;->IS_OVERLAY_THEMES_ENABLED:Z

    invoke-static {}, Landroid/os/FactoryTest;->getMode()I

    move-result v0

    iput v0, p0, Lcom/android/server/SystemServer;->mFactoryTestMode:I

    return-void
.end method

.method private createSystemContext()V
    .locals 3

    invoke-static {}, Landroid/app/ActivityThread;->systemMain()Landroid/app/ActivityThread;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActivityThread;->getSystemContext()Landroid/app/ContextImpl;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    const v2, 0x103049e

    invoke-virtual {v1, v2}, Landroid/content/Context;->setTheme(I)V

    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .locals 1

    new-instance v0, Lcom/android/server/SystemServer;

    invoke-direct {v0}, Lcom/android/server/SystemServer;-><init>()V

    invoke-direct {v0}, Lcom/android/server/SystemServer;->run()V

    return-void
.end method

.method private performPendingShutdown()V
    .locals 11

    const/4 v10, 0x1

    const/4 v9, 0x0

    const/4 v8, 0x0

    const-string/jumbo v6, "sys.shutdown.requested"

    const-string/jumbo v7, ""

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_3

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_3

    invoke-virtual {v5, v9}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v7, 0x31

    if-ne v6, v7, :cond_0

    const/4 v4, 0x1

    :goto_0
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    if-le v6, v10, :cond_1

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v5, v10, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    :goto_1
    const-string/jumbo v6, "recovery-update"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    new-instance v2, Ljava/io/File;

    const-string/jumbo v6, "/cache/recovery/uncrypt_file"

    invoke-direct {v2, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_2

    const/4 v1, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    :try_start_0
    invoke-static {v2, v6, v7}, Landroid/os/FileUtils;->readTextFile(Ljava/io/File;ILjava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_2
    if-eqz v1, :cond_2

    const-string/jumbo v6, "/data"

    invoke-virtual {v1, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    new-instance v6, Ljava/io/File;

    const-string/jumbo v7, "/cache/recovery/block.map"

    invoke-direct {v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_2

    const-string/jumbo v6, "SystemServer"

    const-string/jumbo v7, "Can\'t find block map file, uncrypt failed or unexpected runtime restart?"

    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const/4 v4, 0x0

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    goto :goto_1

    :catch_0
    move-exception v0

    const-string/jumbo v6, "SystemServer"

    const-string/jumbo v7, "Error reading uncrypt package file"

    invoke-static {v6, v7, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    :cond_2
    invoke-static {v8, v4, v3}, Lcom/android/server/power/ShutdownThread;->rebootOrShutdown(Landroid/content/Context;ZLjava/lang/String;)V

    :cond_3
    return-void
.end method

.method private reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 3

    const-string/jumbo v0, "SystemServer"

    const-string/jumbo v1, "***********************************************"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "SystemServer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "BOOT FAILURE "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method private run()V
    .locals 12

    const-wide/32 v4, 0x5265c00

    const-wide/32 v10, 0x80000

    :try_start_0
    const-string/jumbo v0, "InitBeforeStartServices"

    const-wide/32 v2, 0x80000

    invoke-static {v2, v3, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    cmp-long v0, v0, v4

    if-gez v0, :cond_0

    const-string/jumbo v0, "SystemServer"

    const-string/jumbo v1, "System clock is before 1970; setting to 1970."

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/32 v0, 0x5265c00

    invoke-static {v0, v1}, Landroid/os/SystemClock;->setCurrentTimeMillis(J)Z

    :cond_0
    const-string/jumbo v0, "persist.sys.language"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v0, "persist.sys.locale"

    invoke-static {v0, v8}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "persist.sys.language"

    const-string/jumbo v1, ""

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "persist.sys.country"

    const-string/jumbo v1, ""

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "persist.sys.localevar"

    const-string/jumbo v1, ""

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    const-string/jumbo v0, "SystemServer"

    const-string/jumbo v1, "!@Boot: Entered the Android system server!"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, -0x13

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    const/16 v2, 0xbc2

    invoke-static {v2, v0, v1}, Landroid/util/EventLog;->writeEvent(IJ)I

    const-string/jumbo v0, "persist.sys.dalvik.vm.lib.2"

    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v1

    invoke-virtual {v1}, Ldalvik/system/VMRuntime;->vmLibrary()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/internal/os/SamplingProfilerIntegration;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/android/internal/os/SamplingProfilerIntegration;->start()V

    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/android/server/SystemServer;->mProfilerSnapshotTimer:Ljava/util/Timer;

    iget-object v0, p0, Lcom/android/server/SystemServer;->mProfilerSnapshotTimer:Ljava/util/Timer;

    new-instance v1, Lcom/android/server/SystemServer$1;

    invoke-direct {v1, p0}, Lcom/android/server/SystemServer$1;-><init>(Lcom/android/server/SystemServer;)V

    const-wide/32 v2, 0x36ee80

    const-wide/32 v4, 0x36ee80

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    :cond_2
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v0

    invoke-virtual {v0}, Ldalvik/system/VMRuntime;->clearGrowthLimit()V

    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v0

    const v1, 0x3f4ccccd    # 0.8f

    invoke-virtual {v0, v1}, Ldalvik/system/VMRuntime;->setTargetHeapUtilization(F)F

    invoke-static {}, Landroid/os/Build;->ensureFingerprintProperty()V

    const/4 v0, 0x1

    invoke-static {v0}, Landroid/os/Environment;->setUserRequired(Z)V

    const/4 v0, 0x1

    invoke-static {v0}, Landroid/os/BaseBundle;->setShouldDefuse(Z)V

    const/4 v0, 0x1

    invoke-static {v0}, Lcom/android/internal/os/BinderInternal;->disableBackgroundScheduling(Z)V

    const/16 v0, 0x1f

    invoke-static {v0}, Lcom/android/internal/os/BinderInternal;->setMaxThreads(I)V

    const/4 v0, 0x0

    invoke-static {v0}, Landroid/os/Process;->setCanSelfBackground(Z)V

    invoke-static {}, Landroid/os/Looper;->prepareMainLooper()V

    const-string/jumbo v0, "android_servers"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/server/SystemServer;->performPendingShutdown()V

    invoke-direct {p0}, Lcom/android/server/SystemServer;->createSystemContext()V

    new-instance v0, Lcom/android/server/SystemServiceManager;

    iget-object v1, p0, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/server/SystemServiceManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v0, Lcom/android/server/SystemServiceManager;

    iget-object v1, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    invoke-static {v0, v1}, Lcom/android/server/LocalServices;->addService(Ljava/lang/Class;Ljava/lang/Object;)V

    invoke-static {}, Lcom/android/server/SystemServerInitThreadPool;->get()Lcom/android/server/SystemServerInitThreadPool;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v10, v11}, Landroid/os/Trace;->traceEnd(J)V

    :try_start_1
    const-string/jumbo v0, "StartServices"

    const-wide/32 v2, 0x80000

    invoke-static {v2, v3, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    invoke-direct {p0}, Lcom/android/server/SystemServer;->startBootstrapServices()V

    invoke-direct {p0}, Lcom/android/server/SystemServer;->startCoreServices()V

    invoke-direct {p0}, Lcom/android/server/SystemServer;->startOtherServices()V

    invoke-static {}, Lcom/android/server/SystemServerInitThreadPool;->shutdown()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    invoke-static {v10, v11}, Landroid/os/Trace;->traceEnd(J)V

    invoke-static {}, Landroid/os/StrictMode;->conditionallyEnableDebugLogging()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string/jumbo v0, "SystemServer"

    const-string/jumbo v1, "Enabled StrictMode for system server main thread."

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    :try_start_2
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    const-string/jumbo v1, "com.samsung.galaxybetaservice"

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v2

    const/16 v3, 0x80

    invoke-interface {v0, v1, v3, v2}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v9

    if-eqz v9, :cond_4

    iget v0, v9, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_4

    const-string/jumbo v0, "sys.mobilecare.preload"

    const-string/jumbo v1, "true"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    :cond_4
    :goto_0
    invoke-static {}, Landroid/os/Process;->setSystemServerPid()V

    const-string/jumbo v0, "SystemServer"

    const-string/jumbo v1, "!@Boot: Loop forever"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "sys.boot.loop_forever"

    const-string/jumbo v1, "1"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Looper;->loop()V

    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "Main thread loop unexpectedly exited"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_0
    move-exception v0

    invoke-static {v10, v11}, Landroid/os/Trace;->traceEnd(J)V

    throw v0

    :catch_0
    move-exception v7

    :try_start_3
    const-string/jumbo v0, "System"

    const-string/jumbo v1, "******************************************"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "System"

    const-string/jumbo v1, "************ Failure starting system services"

    invoke-static {v0, v1, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    throw v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v0

    invoke-static {v10, v11}, Landroid/os/Trace;->traceEnd(J)V

    throw v0

    :catch_1
    move-exception v6

    goto :goto_0
.end method

.method private startBootstrapServices()V
    .locals 12

    const/4 v7, 0x0

    const/4 v6, 0x1

    const-wide/32 v10, 0x80000

    iget-object v5, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v8, Lcom/android/server/pm/Installer;

    invoke-virtual {v5, v8}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    move-result-object v4

    check-cast v4, Lcom/android/server/pm/Installer;

    iget-object v5, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v8, Lcom/android/server/am/ActivityManagerService$Lifecycle;

    invoke-virtual {v5, v8}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/ActivityManagerService$Lifecycle;

    invoke-virtual {v5}, Lcom/android/server/am/ActivityManagerService$Lifecycle;->getService()Lcom/android/server/am/ActivityManagerService;

    move-result-object v5

    iput-object v5, p0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, p0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iget-object v8, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    invoke-virtual {v5, v8}, Lcom/android/server/am/ActivityManagerService;->setSystemServiceManager(Lcom/android/server/SystemServiceManager;)V

    iget-object v5, p0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v5, v4}, Lcom/android/server/am/ActivityManagerService;->setInstaller(Lcom/android/server/pm/Installer;)V

    :try_start_0
    sget-object v5, Lcom/android/server/SamsungCoreServices$ServiceTag;->TAG_MULTISCREEN_MANAGER_SERVICE:Lcom/android/server/SamsungCoreServices$ServiceTag;

    const/4 v8, 0x1

    invoke-static {v5, v8}, Lcom/android/server/SamsungCoreServices;->createService(Lcom/android/server/SamsungCoreServices$ServiceTag;Z)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/IMultiScreenManagerServiceBridge;

    iput-object v5, p0, Lcom/android/server/SystemServer;->multiScreenManagerService:Lcom/android/server/am/IMultiScreenManagerServiceBridge;

    iget-object v5, p0, Lcom/android/server/SystemServer;->multiScreenManagerService:Lcom/android/server/am/IMultiScreenManagerServiceBridge;

    iget-object v8, p0, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    iget-object v9, p0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-interface {v5, v8, v9}, Lcom/android/server/am/IMultiScreenManagerServiceBridge;->main(Landroid/content/Context;Lcom/android/server/am/ActivityManagerService;)V

    iget-object v5, p0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iget-object v8, p0, Lcom/android/server/SystemServer;->multiScreenManagerService:Lcom/android/server/am/IMultiScreenManagerServiceBridge;

    invoke-virtual {v5, v8}, Lcom/android/server/am/ActivityManagerService;->setMultiScreenManager(Lcom/android/server/am/IMultiScreenManagerServiceBridge;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v5, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v8, Lcom/android/server/power/PowerManagerService;

    invoke-virtual {v5, v8}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    move-result-object v5

    check-cast v5, Lcom/android/server/power/PowerManagerService;

    iput-object v5, p0, Lcom/android/server/SystemServer;->mPowerManagerService:Lcom/android/server/power/PowerManagerService;

    const-string/jumbo v5, "InitPowerManagement"

    invoke-static {v10, v11, v5}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    iget-object v5, p0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v5}, Lcom/android/server/am/ActivityManagerService;->initPowerManagement()V

    invoke-static {v10, v11}, Landroid/os/Trace;->traceEnd(J)V

    iget-object v5, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v8, Lcom/android/server/lights/LightsService;

    invoke-virtual {v5, v8}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    iget-object v5, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v8, Lcom/android/server/display/DisplayManagerService;

    invoke-virtual {v5, v8}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    move-result-object v5

    check-cast v5, Lcom/android/server/display/DisplayManagerService;

    iput-object v5, p0, Lcom/android/server/SystemServer;->mDisplayManagerService:Lcom/android/server/display/DisplayManagerService;

    iget-object v5, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const/16 v8, 0x64

    invoke-virtual {v5, v8}, Lcom/android/server/SystemServiceManager;->startBootPhase(I)V

    const-string/jumbo v5, "vold.decrypt"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v5, "ro.alarm_boot"

    invoke-static {v5, v7}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    iput-boolean v5, p0, Lcom/android/server/SystemServer;->mIsAlarmBoot:Z

    const-string/jumbo v5, "trigger_restart_min_framework"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    const-string/jumbo v5, "SystemServer"

    const-string/jumbo v8, "Detected encryption in progress - only parsing core apps"

    invoke-static {v5, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v6, p0, Lcom/android/server/SystemServer;->mOnlyCore:Z

    :cond_0
    :goto_1
    const-string/jumbo v5, "StartPackageManagerService"

    invoke-static {v5}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    const-string/jumbo v5, "SystemServer"

    const-string/jumbo v8, "!@Boot: Start PackageManagerService"

    invoke-static {v5, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v5, "sys.boot.start_package"

    const-string/jumbo v8, "1"

    invoke-static {v5, v8}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v8, p0, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    iget v5, p0, Lcom/android/server/SystemServer;->mFactoryTestMode:I

    if-eqz v5, :cond_5

    move v5, v6

    :goto_2
    iget-boolean v6, p0, Lcom/android/server/SystemServer;->mOnlyCore:Z

    invoke-static {v8, v4, v5, v6}, Lcom/android/server/pm/PackageManagerService;->main(Landroid/content/Context;Lcom/android/server/pm/Installer;ZZ)Lcom/android/server/pm/PackageManagerService;

    move-result-object v5

    iput-object v5, p0, Lcom/android/server/SystemServer;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    const-string/jumbo v5, "SystemServer"

    const-string/jumbo v6, "!@Boot: End PackageManagerService"

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v5, "sys.boot.end_package"

    const-string/jumbo v6, "1"

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v5, p0, Lcom/android/server/SystemServer;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v5}, Lcom/android/server/pm/PackageManagerService;->isFirstBoot()Z

    move-result v5

    iput-boolean v5, p0, Lcom/android/server/SystemServer;->mFirstBoot:Z

    iget-object v5, p0, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    iput-object v5, p0, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-static {v10, v11}, Landroid/os/Trace;->traceEnd(J)V

    iget-boolean v5, p0, Lcom/android/server/SystemServer;->mOnlyCore:Z

    if-nez v5, :cond_1

    const-string/jumbo v5, "config.disable_otadexopt"

    invoke-static {v5, v7}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_1

    const-string/jumbo v5, "StartOtaDexOptService"

    invoke-static {v5}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    :try_start_1
    iget-object v5, p0, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/android/server/SystemServer;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    invoke-static {v5, v6}, Lcom/android/server/pm/OtaDexoptService;->main(Landroid/content/Context;Lcom/android/server/pm/PackageManagerService;)Lcom/android/server/pm/OtaDexoptService;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {v10, v11}, Landroid/os/Trace;->traceEnd(J)V

    :cond_1
    :goto_3
    sget-boolean v5, Lcom/android/internal/os/Zygote;->isEnhancedZygoteASLREnabled:Z

    if-eqz v5, :cond_2

    const-string/jumbo v5, "SystemServer"

    const-string/jumbo v6, "Enhanced Zygote ASLR setprop zygote.aslr.agent64 starting"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v5, "zygote.aslr.agent64"

    const-string/jumbo v6, "1"

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    const-string/jumbo v5, "StartUserManagerService"

    invoke-static {v5}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v6, Lcom/android/server/pm/UserManagerService$LifeCycle;

    invoke-virtual {v5, v6}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    invoke-static {v10, v11}, Landroid/os/Trace;->traceEnd(J)V

    iget-object v5, p0, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/android/server/AttributeCache;->init(Landroid/content/Context;)V

    iget-object v5, p0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v5}, Lcom/android/server/am/ActivityManagerService;->setSystemProcess()V

    :try_start_2
    const-string/jumbo v5, "SystemServer"

    const-string/jumbo v6, "FDCloseObserver"

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v3, Lcom/android/server/FDCloseObserver;

    iget-object v5, p0, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    invoke-direct {v3, v5}, Lcom/android/server/FDCloseObserver;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3}, Lcom/android/server/FDCloseObserver;->prepare()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2

    :goto_4
    const-string/jumbo v5, "SystemServer"

    const-string/jumbo v6, "bootperf : startSensorService "

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v5, "SystemServer"

    const-string/jumbo v6, "Sensorservice start"

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/server/SystemServerInitThreadPool;->get()Lcom/android/server/SystemServerInitThreadPool;

    move-result-object v5

    new-instance v6, Lcom/android/server/SystemServer$-void_startBootstrapServices__LambdaImpl0;

    invoke-direct {v6}, Lcom/android/server/SystemServer$-void_startBootstrapServices__LambdaImpl0;-><init>()V

    const-string/jumbo v7, "StartSensorService"

    invoke-virtual {v5, v6, v7}, Lcom/android/server/SystemServerInitThreadPool;->submit(Ljava/lang/Runnable;Ljava/lang/String;)Ljava/util/concurrent/Future;

    const-string/jumbo v5, "SystemServer"

    const-string/jumbo v6, "Sensorservice end"

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catch_0
    move-exception v2

    const-string/jumbo v5, "SystemServer"

    const-string/jumbo v8, "Failure starting MultiScreen Manager Service"

    invoke-static {v5, v8, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    :cond_3
    const-string/jumbo v5, "1"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    const-string/jumbo v5, "SystemServer"

    const-string/jumbo v8, "Device encrypted - only parsing core apps"

    invoke-static {v5, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v6, p0, Lcom/android/server/SystemServer;->mOnlyCore:Z

    goto/16 :goto_1

    :cond_4
    iget-boolean v5, p0, Lcom/android/server/SystemServer;->mIsAlarmBoot:Z

    if-eqz v5, :cond_0

    iput-boolean v6, p0, Lcom/android/server/SystemServer;->mOnlyCore:Z

    goto/16 :goto_1

    :cond_5
    move v5, v7

    goto/16 :goto_2

    :catch_1
    move-exception v2

    :try_start_3
    const-string/jumbo v5, "starting OtaDexOptService"

    invoke-direct {p0, v5, v2}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    invoke-static {v10, v11}, Landroid/os/Trace;->traceEnd(J)V

    goto/16 :goto_3

    :catchall_0
    move-exception v5

    invoke-static {v10, v11}, Landroid/os/Trace;->traceEnd(J)V

    throw v5

    :catch_2
    move-exception v2

    const-string/jumbo v5, "starting FDCloseObserver"

    invoke-direct {p0, v5, v2}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_4
.end method

.method private startCoreServices()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v1, Lcom/android/server/BatteryService;

    invoke-virtual {v0, v1}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    iget-object v0, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v1, Lcom/android/server/usage/UsageStatsService;

    invoke-virtual {v0, v1}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    iget-object v1, p0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    const-class v0, Landroid/app/usage/UsageStatsManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/usage/UsageStatsManagerInternal;

    invoke-virtual {v1, v0}, Lcom/android/server/am/ActivityManagerService;->setUsageStatsManager(Landroid/app/usage/UsageStatsManagerInternal;)V

    iget-object v0, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v1, Lcom/android/server/webkit/WebViewUpdateService;

    invoke-virtual {v0, v1}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    move-result-object v0

    check-cast v0, Lcom/android/server/webkit/WebViewUpdateService;

    iput-object v0, p0, Lcom/android/server/SystemServer;->mWebViewUpdateService:Lcom/android/server/webkit/WebViewUpdateService;

    return-void
.end method

.method static final startEmergencyModeService(Landroid/content/Context;)V
    .locals 5

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v2

    const-string/jumbo v3, "SEC_FLOATING_FEATURE_COMMON_SUPPORT_SAFETYCARE"

    invoke-virtual {v2, v3}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v2

    const-string/jumbo v3, "SEC_FLOATING_FEATURE_COMMON_SUPPORT_ULTRA_POWER_SAVING"

    invoke-virtual {v2, v3}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v2

    const-string/jumbo v3, "SEC_FLOATING_FEATURE_COMMON_SUPPORT_BATTERY_CONVERSING"

    invoke-virtual {v2, v3}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    :try_start_0
    invoke-static {p0}, Lcom/samsung/android/emergencymode/SemEmergencyManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/emergencymode/SemEmergencyManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/emergencymode/SemEmergencyManager;->readyEmergencyMode()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v2, "SystemServer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Starting emergency service failed: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private startOtherServices()V
    .locals 224

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    const/16 v209, 0x0

    const/16 v152, 0x0

    const/16 v158, 0x0

    const/16 v163, 0x0

    const/16 v159, 0x0

    const/16 v50, 0x0

    const/16 v161, 0x0

    const/16 v186, 0x0

    const/16 v220, 0x0

    const/16 v184, 0x0

    const/16 v164, 0x0

    const/16 v47, 0x0

    const/16 v109, 0x0

    const/16 v204, 0x0

    const/16 v57, 0x0

    const/16 v63, 0x0

    const/16 v130, 0x0

    const/16 v94, 0x0

    const/16 v21, 0x0

    const/16 v103, 0x0

    const/16 v218, 0x0

    const/16 v219, 0x0

    const/16 v85, 0x0

    const/16 v79, 0x0

    const/16 v81, 0x0

    const/16 v142, 0x0

    const/16 v143, 0x0

    const/16 v132, 0x0

    const/16 v134, 0x0

    const/16 v182, 0x0

    const/16 v180, 0x0

    const/16 v128, 0x0

    const/16 v126, 0x0

    const/16 v122, 0x0

    const/16 v124, 0x0

    const/16 v191, 0x0

    const/16 v187, 0x0

    const/16 v195, 0x0

    const/16 v189, 0x0

    const/16 v193, 0x0

    const/16 v140, 0x0

    const/16 v213, 0x0

    const/16 v169, 0x0

    const-string/jumbo v4, "config.disable_storage"

    const/4 v5, 0x0

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v75

    const-string/jumbo v4, "config.disable_bluetooth"

    const/4 v5, 0x0

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v65

    const-string/jumbo v4, "config.disable_location"

    const/4 v5, 0x0

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v66

    const-string/jumbo v4, "config.disable_systemui"

    const/4 v5, 0x0

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v76

    const-string/jumbo v4, "config.disable_noncore"

    const/4 v5, 0x0

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v70

    const-string/jumbo v4, "config.disable_network"

    const/4 v5, 0x0

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v68

    const-string/jumbo v4, "config.disable_networktime"

    const/4 v5, 0x0

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v69

    const-string/jumbo v4, "config.disable_rtt"

    const/4 v5, 0x0

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v71

    const-string/jumbo v4, "config.disable_mediaproj"

    const/4 v5, 0x0

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v67

    const-string/jumbo v4, "config.disable_serial"

    const/4 v5, 0x0

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v74

    const-string/jumbo v4, "config.disable_searchmanager"

    const/4 v5, 0x0

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v73

    const-string/jumbo v4, "config.disable_trustmanager"

    const/4 v5, 0x0

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v78

    const-string/jumbo v4, "config.disable_textservices"

    const/4 v5, 0x0

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v77

    const-string/jumbo v4, "config.disable_samplingprof"

    const/4 v5, 0x0

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v72

    const-string/jumbo v4, "ro.kernel.qemu"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "1"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v111

    const-string/jumbo v4, "persist.wigig.enable"

    const/4 v5, 0x0

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v90

    :try_start_0
    const-string/jumbo v4, "SystemServer"

    const-string/jumbo v5, "Reading configuration..."

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/server/SystemConfig;->getInstance()Lcom/android/server/SystemConfig;

    const-string/jumbo v4, "StartSchedulingPolicyService"

    invoke-static {v4}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    const-string/jumbo v4, "scheduling_policy"

    new-instance v5, Lcom/android/server/os/SchedulingPolicyService;

    invoke-direct {v5}, Lcom/android/server/os/SchedulingPolicyService;-><init>()V

    invoke-static {v4, v5}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    const-wide/32 v4, 0x80000

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/telecom/TelecomLoaderService;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    const-string/jumbo v4, "StartTelephonyRegistry"

    invoke-static {v4}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    new-instance v205, Lcom/android/server/TelephonyRegistry;

    move-object/from16 v0, v205

    invoke-direct {v0, v6}, Lcom/android/server/TelephonyRegistry;-><init>(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_97

    :try_start_1
    const-string/jumbo v4, "telephony.registry"

    move-object/from16 v0, v205

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    const-wide/32 v4, 0x80000

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    const-string/jumbo v4, "StartEntropyMixer"

    invoke-static {v4}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    new-instance v4, Lcom/android/server/EntropyMixer;

    invoke-direct {v4, v6}, Lcom/android/server/EntropyMixer;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/server/SystemServer;->mEntropyMixer:Lcom/android/server/EntropyMixer;

    const-wide/32 v4, 0x80000

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    invoke-static {}, Lcom/samsung/android/knox/SemPersonaManager;->getKnoxInfo()Landroid/os/Bundle;

    move-result-object v208

    const-string/jumbo v4, "2.0"

    const-string/jumbo v5, "version"

    move-object/from16 v0, v208

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v4

    if-eqz v4, :cond_0

    :try_start_2
    const-string/jumbo v4, "SystemServer"

    const-string/jumbo v5, "Persona Service"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/server/pm/PersonaManagerService;->getInstance()Lcom/android/server/pm/PersonaManagerService;

    move-result-object v142

    const-string/jumbo v4, "persona"

    move-object/from16 v0, v142

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_1

    :goto_0
    :try_start_3
    const-string/jumbo v4, "SystemServer"

    const-string/jumbo v5, "KnoxMUMContainerPolicy Service"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v133, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;

    move-object/from16 v0, v133

    invoke-direct {v0, v6}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;-><init>(Landroid/content/Context;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_1

    :try_start_4
    const-string/jumbo v4, "mum_container_policy"

    move-object/from16 v0, v133

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_9f
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_98

    move-object/from16 v132, v133

    :goto_1
    :try_start_5
    const-string/jumbo v4, "SystemServer"

    const-string/jumbo v5, "KnoxMUMRCPPolicyService"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v135, Lcom/android/server/enterprise/container/KnoxMUMRCPPolicyService;

    move-object/from16 v0, v135

    invoke-direct {v0, v6}, Lcom/android/server/enterprise/container/KnoxMUMRCPPolicyService;-><init>(Landroid/content/Context;)V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_3
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_1

    :try_start_6
    const-string/jumbo v4, "mum_container_rcp_policy"

    move-object/from16 v0, v135

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_9e
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_99

    move-object/from16 v134, v135

    :cond_0
    :goto_2
    :try_start_7
    const-string/jumbo v4, "SystemServer"

    const-string/jumbo v5, "Reactive Service"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catch Ljava/lang/RuntimeException; {:try_start_7 .. :try_end_7} :catch_1

    :try_start_8
    const-string/jumbo v4, "ReactiveService"

    new-instance v5, Lcom/android/server/ReactiveService;

    invoke-direct {v5, v6}, Lcom/android/server/ReactiveService;-><init>(Landroid/content/Context;)V

    invoke-static {v4, v5}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_4
    .catch Ljava/lang/RuntimeException; {:try_start_8 .. :try_end_8} :catch_1

    :goto_3
    :try_start_9
    const-string/jumbo v4, "0"

    const-string/jumbo v5, "ro.security.vaultkeeper.feature"

    const-string/jumbo v222, "0"

    move-object/from16 v0, v222

    invoke-static {v5, v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5c

    const-string/jumbo v4, "SystemServer"

    const-string/jumbo v5, "VaultKeeper Service Enabled"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9
    .catch Ljava/lang/RuntimeException; {:try_start_9 .. :try_end_9} :catch_1

    :try_start_a
    const-string/jumbo v4, "VaultKeeperService"

    new-instance v5, Lcom/android/server/VaultKeeperService;

    invoke-direct {v5, v6}, Lcom/android/server/VaultKeeperService;-><init>(Landroid/content/Context;)V

    invoke-static {v4, v5}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_5
    .catch Ljava/lang/RuntimeException; {:try_start_a .. :try_end_a} :catch_1

    :goto_4
    :try_start_b
    const-string/jumbo v4, "SystemServer"

    const-string/jumbo v5, "Remote Mobile Service"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b
    .catch Ljava/lang/RuntimeException; {:try_start_b .. :try_end_b} :catch_1

    :try_start_c
    new-instance v172, Lcom/android/server/rmm/RmmService;

    move-object/from16 v0, v172

    invoke-direct {v0, v6}, Lcom/android/server/rmm/RmmService;-><init>(Landroid/content/Context;)V

    invoke-virtual/range {v172 .. v172}, Lcom/android/server/rmm/RmmService;->startRmm()V
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_c} :catch_6
    .catch Ljava/lang/RuntimeException; {:try_start_c .. :try_end_c} :catch_1

    :goto_5
    :try_start_d
    const-string/jumbo v4, "SystemServer"

    const-string/jumbo v5, "DeviceRootKeyService"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_d
    .catch Ljava/lang/RuntimeException; {:try_start_d .. :try_end_d} :catch_1

    :try_start_e
    const-string/jumbo v4, "DeviceRootKeyService"

    new-instance v5, Lcom/android/server/DeviceRootKeyService;

    invoke-direct {v5, v6}, Lcom/android/server/DeviceRootKeyService;-><init>(Landroid/content/Context;)V

    invoke-static {v4, v5}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_e
    .catch Ljava/lang/Throwable; {:try_start_e .. :try_end_e} :catch_7
    .catch Ljava/lang/RuntimeException; {:try_start_e .. :try_end_e} :catch_1

    :goto_6
    :try_start_f
    const-string/jumbo v4, "SystemServer"

    const-string/jumbo v5, "EngineeringModeService"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_f
    .catch Ljava/lang/RuntimeException; {:try_start_f .. :try_end_f} :catch_1

    :try_start_10
    const-string/jumbo v4, "EngineeringModeService"

    new-instance v5, Lcom/android/server/EngineeringModeService;

    invoke-direct {v5, v6}, Lcom/android/server/EngineeringModeService;-><init>(Landroid/content/Context;)V

    invoke-static {v4, v5}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_10
    .catch Ljava/lang/Throwable; {:try_start_10 .. :try_end_10} :catch_8
    .catch Ljava/lang/RuntimeException; {:try_start_10 .. :try_end_10} :catch_1

    :goto_7
    :try_start_11
    const-string/jumbo v4, "SystemServer"

    const-string/jumbo v5, "SATS: Secure AT Service"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_11
    .catch Ljava/lang/RuntimeException; {:try_start_11 .. :try_end_11} :catch_1

    :try_start_12
    const-string/jumbo v4, "SatsService"

    new-instance v5, Lcom/android/server/SatsService;

    invoke-direct {v5, v6}, Lcom/android/server/SatsService;-><init>(Landroid/content/Context;)V

    invoke-static {v4, v5}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_12
    .catch Ljava/lang/Throwable; {:try_start_12 .. :try_end_12} :catch_9
    .catch Ljava/lang/RuntimeException; {:try_start_12 .. :try_end_12} :catch_1

    :goto_8
    :try_start_13
    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/server/SystemServer;->mContentResolver:Landroid/content/ContentResolver;

    const-string/jumbo v4, "SystemServer"

    const-string/jumbo v5, "Camera Service"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/camera/CameraService;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    new-instance v64, Lcom/android/server/DirEncryptService;

    move-object/from16 v0, v64

    invoke-direct {v0, v6}, Lcom/android/server/DirEncryptService;-><init>(Landroid/content/Context;)V
    :try_end_13
    .catch Ljava/lang/RuntimeException; {:try_start_13 .. :try_end_13} :catch_1

    :try_start_14
    invoke-static {}, Lcom/samsung/android/security/SemSdCardEncryption;->isEncryptionFeatureEnabled()Z

    move-result v4

    if-eqz v4, :cond_1

    const-string/jumbo v4, "DirEncryptService"

    move-object/from16 v0, v64

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_14
    .catch Ljava/lang/Throwable; {:try_start_14 .. :try_end_14} :catch_a
    .catch Ljava/lang/RuntimeException; {:try_start_14 .. :try_end_14} :catch_9a

    :cond_1
    move-object/from16 v63, v64

    :goto_9
    :try_start_15
    const-string/jumbo v4, "StartAccountManagerService"

    invoke-static {v4}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string/jumbo v5, "com.android.server.accounts.AccountManagerService$Lifecycle"

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    const-wide/32 v4, 0x80000

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    const-string/jumbo v4, "StartContentService"

    invoke-static {v4}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string/jumbo v5, "com.android.server.content.ContentService$Lifecycle"

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    const-wide/32 v4, 0x80000

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    const-string/jumbo v4, "InstallSystemProviders"

    invoke-static {v4}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v4}, Lcom/android/server/am/ActivityManagerService;->installSystemProviders()V

    const-wide/32 v4, 0x80000

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    const-string/jumbo v4, "StartVibratorService"

    invoke-static {v4}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    new-instance v210, Lcom/android/server/VibratorService;

    move-object/from16 v0, v210

    invoke-direct {v0, v6}, Lcom/android/server/VibratorService;-><init>(Landroid/content/Context;)V
    :try_end_15
    .catch Ljava/lang/RuntimeException; {:try_start_15 .. :try_end_15} :catch_1

    :try_start_16
    const-string/jumbo v4, "vibrator"

    move-object/from16 v0, v210

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    const-wide/32 v4, 0x80000

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    const-string/jumbo v4, "StartConsumerIrService"

    invoke-static {v4}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    new-instance v58, Lcom/android/server/ConsumerIrService;

    move-object/from16 v0, v58

    invoke-direct {v0, v6}, Lcom/android/server/ConsumerIrService;-><init>(Landroid/content/Context;)V
    :try_end_16
    .catch Ljava/lang/RuntimeException; {:try_start_16 .. :try_end_16} :catch_9b

    :try_start_17
    const-string/jumbo v4, "consumer_ir"

    move-object/from16 v0, v58

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    const-wide/32 v4, 0x80000

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    const-string/jumbo v4, "StartAlarmManagerService"

    invoke-static {v4}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/AlarmManagerService;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    const-wide/32 v4, 0x80000

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    const-string/jumbo v4, "SystemServer"

    const-string/jumbo v5, "SSRM Service"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_17
    .catch Ljava/lang/RuntimeException; {:try_start_17 .. :try_end_17} :catch_c

    :try_start_18
    new-instance v37, Ldalvik/system/PathClassLoader;

    const-string/jumbo v4, "/system/framework/ssrm.jar"

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/SystemServer;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v5

    move-object/from16 v0, v37

    invoke-direct {v0, v4, v5}, Ldalvik/system/PathClassLoader;-><init>(Ljava/lang/String;Ljava/lang/ClassLoader;)V

    const-string/jumbo v4, "com.android.server.ssrm.CustomFrequencyManagerService"

    move-object/from16 v0, v37

    invoke-virtual {v0, v4}, Ldalvik/system/PathClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v36

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Class;

    const-class v5, Landroid/content/Context;

    const/16 v222, 0x0

    aput-object v5, v4, v222

    const-class v5, Landroid/app/IActivityManager;

    const/16 v222, 0x1

    aput-object v5, v4, v222

    move-object/from16 v0, v36

    invoke-virtual {v0, v4}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v38

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v6, v4, v5

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    const/16 v222, 0x1

    aput-object v5, v4, v222

    move-object/from16 v0, v38

    invoke-virtual {v0, v4}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v199

    check-cast v199, Landroid/os/IBinder;

    const-string/jumbo v4, "CustomFrequencyManagerService"

    move-object/from16 v0, v199

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_18} :catch_b
    .catch Ljava/lang/RuntimeException; {:try_start_18 .. :try_end_18} :catch_c

    :goto_a
    :try_start_19
    const-string/jumbo v4, "SystemServer"

    const-string/jumbo v5, "Hqm Service"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_19
    .catch Ljava/lang/RuntimeException; {:try_start_19 .. :try_end_19} :catch_c

    :try_start_1a
    new-instance v27, Ldalvik/system/PathClassLoader;

    const-string/jumbo v4, "/system/framework/hqm.jar"

    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v5

    move-object/from16 v0, v27

    invoke-direct {v0, v4, v5}, Ldalvik/system/PathClassLoader;-><init>(Ljava/lang/String;Ljava/lang/ClassLoader;)V

    const-string/jumbo v4, "com.samsung.android.hqm.HqmManagerService"

    move-object/from16 v0, v27

    invoke-virtual {v0, v4}, Ldalvik/system/PathClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v26

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const-class v5, Landroid/content/Context;

    const/16 v222, 0x0

    aput-object v5, v4, v222

    move-object/from16 v0, v26

    invoke-virtual {v0, v4}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v28

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v6, v4, v5

    move-object/from16 v0, v28

    invoke-virtual {v0, v4}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Landroid/os/IBinder;

    const-string/jumbo v4, "HqmManagerService"

    move-object/from16 v0, v25

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_1a} :catch_d
    .catch Ljava/lang/RuntimeException; {:try_start_1a .. :try_end_1a} :catch_c

    :goto_b
    :try_start_1b
    const-string/jumbo v4, "InitWatchdog"

    invoke-static {v4}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    move-result-object v212

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, v212

    invoke-virtual {v0, v6, v4}, Lcom/android/server/Watchdog;->init(Landroid/content/Context;Lcom/android/server/am/ActivityManagerService;)V

    const-wide/32 v4, 0x80000

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    const-string/jumbo v4, "StartInputManagerService"

    invoke-static {v4}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    new-instance v110, Lcom/android/server/input/InputManagerService;

    move-object/from16 v0, v110

    invoke-direct {v0, v6}, Lcom/android/server/input/InputManagerService;-><init>(Landroid/content/Context;)V
    :try_end_1b
    .catch Ljava/lang/RuntimeException; {:try_start_1b .. :try_end_1b} :catch_c

    const-wide/32 v4, 0x80000

    :try_start_1c
    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    const-string/jumbo v5, "com.sec.feature.sensorhub"

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    const-string/jumbo v4, "SystemServer"

    const-string/jumbo v5, "Context Aware Service"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v4, "context_aware"

    new-instance v5, Lcom/samsung/android/contextaware/manager/ContextAwareService;

    invoke-direct {v5, v6}, Lcom/samsung/android/contextaware/manager/ContextAwareService;-><init>(Landroid/content/Context;)V

    invoke-static {v4, v5}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_1c
    .catch Ljava/lang/RuntimeException; {:try_start_1c .. :try_end_1c} :catch_f

    :cond_2
    :try_start_1d
    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    const-string/jumbo v5, "com.sec.feature.sensorhub"

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_3

    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    const-string/jumbo v5, "com.sec.feature.scontext_lite"

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    :cond_3
    const-string/jumbo v4, "SystemServer"

    const-string/jumbo v5, "SemContextService Service"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v179, Ldalvik/system/PathClassLoader;

    const-string/jumbo v4, "/system/framework/motionrecognitionservice.jar"

    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v5

    move-object/from16 v0, v179

    invoke-direct {v0, v4, v5}, Ldalvik/system/PathClassLoader;-><init>(Ljava/lang/String;Ljava/lang/ClassLoader;)V

    const-string/jumbo v4, "com.samsung.android.hardware.context.SemContextService"

    move-object/from16 v0, v179

    invoke-virtual {v0, v4}, Ldalvik/system/PathClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v42

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const-class v5, Landroid/content/Context;

    const/16 v222, 0x0

    aput-object v5, v4, v222

    move-object/from16 v0, v42

    invoke-virtual {v0, v4}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v55

    const-string/jumbo v5, "scontext"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/16 v222, 0x0

    aput-object v6, v4, v222

    move-object/from16 v0, v55

    invoke-virtual {v0, v4}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/IBinder;

    invoke-static {v5, v4}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_1d} :catch_e
    .catch Ljava/lang/RuntimeException; {:try_start_1d .. :try_end_1d} :catch_f

    :cond_4
    :goto_c
    :try_start_1e
    const-string/jumbo v4, "StartWindowManagerService"

    invoke-static {v4}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/desktopmode/DesktopModeService$Lifecycle;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    invoke-static {}, Lcom/android/server/desktopmode/DesktopModeService$Lifecycle;->getService()Lcom/android/server/desktopmode/DesktopModeService;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v4, v5}, Lcom/android/server/desktopmode/DesktopModeService;->setSystemService(Ljava/lang/Object;)V

    invoke-static {}, Lcom/android/server/desktopmode/DesktopModeService$Lifecycle;->getService()Lcom/android/server/desktopmode/DesktopModeService;

    move-result-object v4

    move-object/from16 v0, v110

    invoke-virtual {v4, v0}, Lcom/android/server/desktopmode/DesktopModeService;->setSystemService(Ljava/lang/Object;)V

    const-string/jumbo v4, "1"

    const-string/jumbo v5, "ro.config.tima"

    const-string/jumbo v222, "0"

    move-object/from16 v0, v222

    invoke-static {v5, v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_1e
    .catch Ljava/lang/RuntimeException; {:try_start_1e .. :try_end_1e} :catch_f

    move-result v206

    :try_start_1f
    const-string/jumbo v4, "SystemServer"

    const-string/jumbo v5, "TIMA Service"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, -0x2

    invoke-static {v4}, Landroid/os/Process;->setThreadPriority(I)V

    new-instance v4, Lcom/android/server/TimaService;

    invoke-direct {v4, v6}, Lcom/android/server/TimaService;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/server/SystemServer;->timaService:Lcom/android/server/TimaService;

    const-string/jumbo v4, "tima"

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/SystemServer;->timaService:Lcom/android/server/TimaService;

    invoke-static {v4, v5}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string/jumbo v5, "com.android.server.enterprise.keystore.TimaKeystoreService$Lifecycle"

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;
    :try_end_1f
    .catch Ljava/lang/Throwable; {:try_start_1f .. :try_end_1f} :catch_10
    .catch Ljava/lang/RuntimeException; {:try_start_1f .. :try_end_1f} :catch_f

    :goto_d
    const/16 v4, -0x13

    :try_start_20
    invoke-static {v4}, Landroid/os/Process;->setThreadPriority(I)V
    :try_end_20
    .catch Ljava/lang/RuntimeException; {:try_start_20 .. :try_end_20} :catch_f

    :try_start_21
    const-string/jumbo v4, "com.sec.tima.TimaKeyStoreProvider"

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v113

    invoke-virtual/range {v113 .. v113}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/security/Provider;

    invoke-static {v4}, Ljava/security/Security;->addProvider(Ljava/security/Provider;)I

    const-string/jumbo v4, "SystemServer"

    const-string/jumbo v5, "Added TimaKesytore provider"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/sec/tima/keystore/util/Utility;->isFipsTimaEnabled()Z

    move-result v4

    if-eqz v4, :cond_5

    const-string/jumbo v4, "com.sec.tima.FipsTimaKeyStoreProvider"

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/security/Provider;

    invoke-static {v4}, Ljava/security/Security;->addProvider(Ljava/security/Provider;)I

    const-string/jumbo v4, "SystemServer"

    const-string/jumbo v5, "Added FipsTimaKesytore provider"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_21} :catch_11
    .catch Ljava/lang/RuntimeException; {:try_start_21 .. :try_end_21} :catch_f

    :cond_5
    :goto_e
    if-eqz v206, :cond_6

    :try_start_22
    const-string/jumbo v4, "SystemServer"

    const-string/jumbo v5, "PKM Service"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v4, Lcom/android/server/PKMService;

    invoke-direct {v4, v6}, Lcom/android/server/PKMService;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/server/SystemServer;->pkmService:Lcom/android/server/PKMService;

    const-string/jumbo v4, "pkm"

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/SystemServer;->pkmService:Lcom/android/server/PKMService;

    invoke-static {v4, v5}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_22
    .catch Ljava/lang/Throwable; {:try_start_22 .. :try_end_22} :catch_12
    .catch Ljava/lang/RuntimeException; {:try_start_22 .. :try_end_22} :catch_f

    :goto_f
    const/16 v4, -0x13

    :try_start_23
    invoke-static {v4}, Landroid/os/Process;->setThreadPriority(I)V
    :try_end_23
    .catch Ljava/lang/RuntimeException; {:try_start_23 .. :try_end_23} :catch_f

    :try_start_24
    const-string/jumbo v4, "3.0"

    const-string/jumbo v5, "ro.config.timaversion"

    const-string/jumbo v222, "0"

    move-object/from16 v0, v222

    invoke-static {v5, v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v207

    if-eqz v207, :cond_6

    const/16 v106, 0x0

    new-instance v106, Lcom/android/server/IcccManagerService;

    move-object/from16 v0, v106

    invoke-direct {v0, v6}, Lcom/android/server/IcccManagerService;-><init>(Landroid/content/Context;)V

    const-string/jumbo v4, "iccc"

    move-object/from16 v0, v106

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    const-string/jumbo v4, "SystemServer"

    const-string/jumbo v5, "initialization"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_24 .. :try_end_24} :catch_14
    .catch Ljava/lang/RuntimeException; {:try_start_24 .. :try_end_24} :catch_f

    :try_start_25
    const-string/jumbo v4, "SystemServer"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v222, "TIMA Version write result: "

    move-object/from16 v0, v222

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const v222, -0xdffffe

    const/16 v223, 0x3

    move-object/from16 v0, v106

    move/from16 v1, v222

    move/from16 v2, v223

    invoke-virtual {v0, v1, v2}, Lcom/android/server/IcccManagerService;->setSecureData(II)I

    move-result v222

    move/from16 v0, v222

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {v106 .. v106}, Lcom/android/server/IcccManagerService;->getTrustedBootData()I

    move-result v107

    const-string/jumbo v4, "SystemServer"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v222, "getTrustedBootData result : "

    move-object/from16 v0, v222

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v107

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_25 .. :try_end_25} :catch_13
    .catch Ljava/lang/RuntimeException; {:try_start_25 .. :try_end_25} :catch_f

    :cond_6
    :goto_10
    :try_start_26
    new-instance v4, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;

    invoke-direct {v4, v6}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/server/SystemServer;->ucmManagerPolicy:Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;

    const-string/jumbo v4, "knox_ucsm_policy"

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/SystemServer;->ucmManagerPolicy:Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;

    invoke-static {v4, v5}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    const-string/jumbo v4, "knox_ucsm_policy"

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/SystemServer;->ucmManagerPolicy:Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;

    const/16 v222, 0x0

    move/from16 v0, v222

    invoke-static {v4, v5, v0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->addPolicyService(Ljava/lang/String;Ljava/lang/Object;Z)V
    :try_end_26
    .catch Ljava/lang/Throwable; {:try_start_26 .. :try_end_26} :catch_15
    .catch Ljava/lang/RuntimeException; {:try_start_26 .. :try_end_26} :catch_f

    :goto_11
    :try_start_27
    new-instance v4, Lcom/samsung/ucm/ucmservice/CredentialManagerService;

    invoke-direct {v4, v6}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/server/SystemServer;->credentialManagerService:Lcom/samsung/ucm/ucmservice/CredentialManagerService;

    const-string/jumbo v4, "com.samsung.ucs.ucsservice"

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/SystemServer;->credentialManagerService:Lcom/samsung/ucm/ucmservice/CredentialManagerService;

    invoke-static {v4, v5}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_27
    .catch Ljava/lang/Throwable; {:try_start_27 .. :try_end_27} :catch_16
    .catch Ljava/lang/RuntimeException; {:try_start_27 .. :try_end_27} :catch_f

    :goto_12
    :try_start_28
    new-instance v4, Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy;

    invoke-direct {v4, v6}, Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/server/SystemServer;->SCEPolicy:Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy;

    const-string/jumbo v4, "knox_scep_policy"

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/SystemServer;->SCEPolicy:Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy;

    const/16 v222, 0x1

    move/from16 v0, v222

    invoke-static {v4, v5, v0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->addPolicyService(Ljava/lang/String;Ljava/lang/Object;Z)V

    const-string/jumbo v4, "SystemServer"

    const-string/jumbo v5, "CEP is enabled"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_28
    .catch Ljava/lang/Throwable; {:try_start_28 .. :try_end_28} :catch_17
    .catch Ljava/lang/RuntimeException; {:try_start_28 .. :try_end_28} :catch_f

    :goto_13
    :try_start_29
    const-string/jumbo v4, "SystemServer"

    const-string/jumbo v5, "CEP Proxy KS Service"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v4, "cepproxyks"

    new-instance v5, Lcom/android/server/enterprise/scep/ScepKeystoreProxyService;

    invoke-direct {v5, v6}, Lcom/android/server/enterprise/scep/ScepKeystoreProxyService;-><init>(Landroid/content/Context;)V

    invoke-static {v4, v5}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_29
    .catch Ljava/lang/Throwable; {:try_start_29 .. :try_end_29} :catch_18
    .catch Ljava/lang/RuntimeException; {:try_start_29 .. :try_end_29} :catch_f

    :goto_14
    :try_start_2a
    const-string/jumbo v4, "SystemServer"

    const-string/jumbo v5, "Email Keystore Service"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v4, "emailksproxy"

    new-instance v5, Lcom/android/server/emailksproxy/EmailKeystoreService;

    invoke-direct {v5, v6}, Lcom/android/server/emailksproxy/EmailKeystoreService;-><init>(Landroid/content/Context;)V

    invoke-static {v4, v5}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_2a
    .catch Ljava/lang/Throwable; {:try_start_2a .. :try_end_2a} :catch_19
    .catch Ljava/lang/RuntimeException; {:try_start_2a .. :try_end_2a} :catch_f

    :goto_15
    :try_start_2b
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/SystemServer;->mFactoryTestMode:I

    const/4 v5, 0x1

    if-eq v4, v5, :cond_5d

    const/4 v4, 0x1

    move v5, v4

    :goto_16
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/server/SystemServer;->mFirstBoot:Z

    if-eqz v4, :cond_5e

    const/4 v4, 0x0

    :goto_17
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/SystemServer;->mOnlyCore:Z

    move/from16 v222, v0

    move-object/from16 v0, v110

    move/from16 v1, v222

    invoke-static {v6, v0, v5, v4, v1}, Lcom/android/server/wm/WindowManagerService;->main(Landroid/content/Context;Lcom/android/server/input/InputManagerService;ZZZ)Lcom/android/server/wm/WindowManagerService;

    move-result-object v220

    const-string/jumbo v4, "window"

    move-object/from16 v0, v220

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    const-string/jumbo v4, "input"

    move-object/from16 v0, v110

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    const-wide/32 v4, 0x80000

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    const-string/jumbo v4, "StartVrManagerService"

    invoke-static {v4}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/vr/VrManagerService;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    const-wide/32 v4, 0x80000

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    const-string/jumbo v4, "StartGearVrManagerService"

    invoke-static {v4}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/vr/GearVrManagerService;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    const-wide/32 v4, 0x80000

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string/jumbo v5, "com.sec.feature.barcode_emulator"

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z
    :try_end_2b
    .catch Ljava/lang/RuntimeException; {:try_start_2b .. :try_end_2b} :catch_f

    move-result v4

    if-eqz v4, :cond_7

    :try_start_2c
    const-string/jumbo v4, "SystemServer"

    const-string/jumbo v5, "BarBeamService"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v34, Landroid/app/BarBeamService;

    move-object/from16 v0, v34

    invoke-direct {v0, v6}, Landroid/app/BarBeamService;-><init>(Landroid/content/Context;)V

    const-string/jumbo v4, "barbeam"

    move-object/from16 v0, v34

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_2c
    .catch Ljava/lang/Throwable; {:try_start_2c .. :try_end_2c} :catch_1a
    .catch Ljava/lang/RuntimeException; {:try_start_2c .. :try_end_2c} :catch_f

    :cond_7
    :goto_18
    :try_start_2d
    sget-object v4, Lcom/android/server/SamsungCoreServices$ServiceTag;->TAG_MULTIWINDOW_MANAGER_SERVICE:Lcom/android/server/SamsungCoreServices$ServiceTag;

    const/4 v5, 0x1

    invoke-static {v4, v5}, Lcom/android/server/SamsungCoreServices;->createService(Lcom/android/server/SamsungCoreServices$ServiceTag;Z)Ljava/lang/Object;

    move-result-object v157

    check-cast v157, Lcom/android/server/am/IMultiWindowManagerServiceBridge;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, v157

    move-object/from16 v1, v220

    invoke-interface {v0, v4, v1}, Lcom/android/server/am/IMultiWindowManagerServiceBridge;->setSystemService(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/wm/WindowManagerService;)V
    :try_end_2d
    .catch Ljava/lang/Throwable; {:try_start_2d .. :try_end_2d} :catch_1b
    .catch Ljava/lang/RuntimeException; {:try_start_2d .. :try_end_2d} :catch_f

    :goto_19
    :try_start_2e
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, v220

    invoke-virtual {v4, v0}, Lcom/android/server/am/ActivityManagerService;->setWindowManager(Lcom/android/server/wm/WindowManagerService;)V

    invoke-virtual/range {v220 .. v220}, Lcom/android/server/wm/WindowManagerService;->getInputMonitor()Lcom/android/server/wm/InputMonitor;

    move-result-object v4

    move-object/from16 v0, v110

    invoke-virtual {v0, v4}, Lcom/android/server/input/InputManagerService;->setWindowManagerCallbacks(Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;)V

    invoke-virtual/range {v110 .. v110}, Lcom/android/server/input/InputManagerService;->start()V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mDisplayManagerService:Lcom/android/server/display/DisplayManagerService;

    invoke-virtual {v4}, Lcom/android/server/display/DisplayManagerService;->windowManagerAndInputReady()V

    const-string/jumbo v23, "turningBLUEtoothrelatedServices"

    const-string/jumbo v4, "SystemServer"

    const-string/jumbo v5, "turningBLUEtoothrelatedServices start"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/server/SystemServerInitThreadPool;->get()Lcom/android/server/SystemServerInitThreadPool;

    move-result-object v4

    new-instance v5, Lcom/android/server/SystemServer$-void_startOtherServices__LambdaImpl0;

    move-object/from16 v0, p0

    move/from16 v1, v111

    move/from16 v2, v65

    invoke-direct {v5, v0, v1, v6, v2}, Lcom/android/server/SystemServer$-void_startOtherServices__LambdaImpl0;-><init>(Lcom/android/server/SystemServer;ZLandroid/content/Context;Z)V

    const-string/jumbo v222, "turningBLUEtoothrelatedServices"

    move-object/from16 v0, v222

    invoke-virtual {v4, v5, v0}, Lcom/android/server/SystemServerInitThreadPool;->submit(Ljava/lang/Runnable;Ljava/lang/String;)Ljava/util/concurrent/Future;

    sget-boolean v4, Lcom/android/internal/os/Zygote;->isEnhancedZygoteASLREnabled:Z

    if-eqz v4, :cond_8

    const-string/jumbo v4, "SystemServer"

    const-string/jumbo v5, "Enhanced Zygote ASLR setprop zygote.aslr.agent32 starting"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v4, "zygote.aslr.agent32"

    const-string/jumbo v5, "1"

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    :cond_8
    const-string/jumbo v4, "ConnectivityMetricsLoggerService"

    invoke-static {v4}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/connectivity/MetricsLoggerService;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    const-wide/32 v4, 0x80000

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    const-string/jumbo v4, "IpConnectivityMetrics"

    invoke-static {v4}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/connectivity/IpConnectivityMetrics;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    const-wide/32 v4, 0x80000

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    const-string/jumbo v4, "PinnerService"

    invoke-static {v4}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/PinnerService;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    const-wide/32 v4, 0x80000

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    const-string/jumbo v4, "SystemServer"

    const-string/jumbo v5, "RCP Manager Service"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2e
    .catch Ljava/lang/RuntimeException; {:try_start_2e .. :try_end_2e} :catch_f

    :try_start_2f
    new-instance v144, Lcom/android/server/RCPManagerService;

    move-object/from16 v0, v144

    invoke-direct {v0, v6}, Lcom/android/server/RCPManagerService;-><init>(Landroid/content/Context;)V
    :try_end_2f
    .catch Ljava/lang/Throwable; {:try_start_2f .. :try_end_2f} :catch_1c
    .catch Ljava/lang/RuntimeException; {:try_start_2f .. :try_end_2f} :catch_f

    :try_start_30
    const-string/jumbo v4, "rcp"

    move-object/from16 v0, v144

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_30
    .catch Ljava/lang/Throwable; {:try_start_30 .. :try_end_30} :catch_9d
    .catch Ljava/lang/RuntimeException; {:try_start_30 .. :try_end_30} :catch_9c

    move-object/from16 v143, v144

    :goto_1a
    :try_start_31
    new-instance v4, Landroid/security/keystore/AndroidKeyStoreProvider;

    invoke-direct {v4}, Landroid/security/keystore/AndroidKeyStoreProvider;-><init>()V

    invoke-static {v4}, Ljava/security/Security;->addProvider(Ljava/security/Provider;)I
    :try_end_31
    .catch Ljava/lang/RuntimeException; {:try_start_31 .. :try_end_31} :catch_f

    move-object/from16 v57, v58

    move-object/from16 v204, v205

    move-object/from16 v109, v110

    move-object/from16 v209, v210

    :goto_1b
    const/16 v200, 0x0

    const/16 v166, 0x0

    const/16 v116, 0x0

    const/16 v175, 0x0

    const/16 v59, 0x0

    const/16 v118, 0x0

    const/16 v147, 0x0

    const/16 v92, 0x0

    const/16 v114, 0x0

    const/16 v197, 0x0

    const/16 v120, 0x0

    const/16 v136, 0x0

    const/16 v138, 0x0

    const/16 v173, 0x0

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/SystemServer;->mFactoryTestMode:I

    const/4 v5, 0x1

    if-eq v4, v5, :cond_9

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/InputMethodManagerService$Lifecycle;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    const-string/jumbo v4, "StartAccessibilityManagerService"

    invoke-static {v4}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    :try_start_32
    const-string/jumbo v4, "accessibility"

    new-instance v5, Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-direct {v5, v6}, Lcom/android/server/accessibility/AccessibilityManagerService;-><init>(Landroid/content/Context;)V

    invoke-static {v4, v5}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_32
    .catch Ljava/lang/Throwable; {:try_start_32 .. :try_end_32} :catch_1d

    :goto_1c
    const-wide/32 v4, 0x80000

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    :cond_9
    :try_start_33
    invoke-virtual/range {v220 .. v220}, Lcom/android/server/wm/WindowManagerService;->displayReady()V
    :try_end_33
    .catch Ljava/lang/Throwable; {:try_start_33 .. :try_end_33} :catch_1e

    :goto_1d
    :try_start_34
    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v171

    if-eqz v171, :cond_a

    const-string/jumbo v4, "com.sec.feature.cover.nfc_authentication"

    move-object/from16 v0, v171

    invoke-virtual {v0, v4}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_a

    const-string/jumbo v4, "SystemServer"

    const-string/jumbo v5, "Samsung Accessory Manager"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v174, Lcom/samsung/accessory/manager/SAccessoryManager;

    move-object/from16 v0, v174

    move-object/from16 v1, v109

    invoke-direct {v0, v6, v1}, Lcom/samsung/accessory/manager/SAccessoryManager;-><init>(Landroid/content/Context;Lcom/android/server/input/InputManagerService;)V
    :try_end_34
    .catch Ljava/lang/Throwable; {:try_start_34 .. :try_end_34} :catch_1f

    :try_start_35
    const-string/jumbo v4, "saccessory_manager"

    move-object/from16 v0, v174

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    move-object/from16 v0, v109

    move-object/from16 v1, v174

    invoke-virtual {v0, v1}, Lcom/android/server/input/InputManagerService;->setSecAccessoryManagerCallbacks(Lcom/android/server/input/InputManagerService$SecAccessoryManagerCallbacks;)V
    :try_end_35
    .catch Ljava/lang/Throwable; {:try_start_35 .. :try_end_35} :catch_96

    move-object/from16 v173, v174

    :cond_a
    :goto_1e
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v4

    const-string/jumbo v5, "SEC_FLOATING_FEATURE_FMRADIO_CONFIG_CHIP_VENDOR"

    invoke-virtual {v4, v5}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    if-lez v4, :cond_b

    :try_start_36
    const-string/jumbo v4, "SystemServer"

    const-string/jumbo v5, "Add SEM_FM_RADIO_SERVICE"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v4, "FMPlayer"

    new-instance v5, Lcom/android/server/FMRadioService;

    invoke-direct {v5, v6}, Lcom/android/server/FMRadioService;-><init>(Landroid/content/Context;)V

    invoke-static {v4, v5}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    const-string/jumbo v4, "SystemServer"

    const-string/jumbo v5, "FMRadio service added.."

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_36
    .catch Ljava/lang/Throwable; {:try_start_36 .. :try_end_36} :catch_20

    :cond_b
    :goto_1f
    :try_start_37
    const-string/jumbo v4, "SystemServer"

    const-string/jumbo v5, "mDNIe Service"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v145, 0x0

    const-string/jumbo v4, "com.samsung.android.hardware.display.SemMdnieManagerService"

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v145

    if-nez v145, :cond_5f

    const-string/jumbo v4, "SystemServer"

    const-string/jumbo v5, "Mdnie Service does not exist"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_37
    .catch Ljava/lang/Throwable; {:try_start_37 .. :try_end_37} :catch_21

    :goto_20
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/SystemServer;->mFactoryTestMode:I

    const/4 v5, 0x1

    if-eq v4, v5, :cond_d

    const-string/jumbo v4, "vold.decrypt"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v61

    const-string/jumbo v4, "trigger_restart_min_framework"

    move-object/from16 v0, v61

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_c

    const-string/jumbo v4, "1"

    move-object/from16 v0, v61

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_60

    :cond_c
    const-string/jumbo v4, "SystemServer"

    const-string/jumbo v5, "Detected encryption in progress - unable CoverManagerService"

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_d
    :goto_21
    :try_start_38
    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v171

    if-eqz v171, :cond_e

    const-string/jumbo v4, "com.sec.feature.cover.nfc_authentication"

    move-object/from16 v0, v171

    invoke-virtual {v0, v4}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_e

    const-string/jumbo v4, "SystemServer"

    const-string/jumbo v5, "Mate Service"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/mate/MateService;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;
    :try_end_38
    .catch Ljava/lang/Throwable; {:try_start_38 .. :try_end_38} :catch_22

    :cond_e
    :goto_22
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/SystemServer;->mFactoryTestMode:I

    const/4 v5, 0x1

    if-eq v4, v5, :cond_10

    if-nez v75, :cond_f

    const-string/jumbo v4, "0"

    const-string/jumbo v5, "system_init.startmountservice"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_61

    :cond_f
    :goto_23
    :try_start_39
    const-string/jumbo v4, "SystemServer"

    const-string/jumbo v5, "DirEncryptSerrvice"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v63, :cond_10

    const-string/jumbo v4, "SystemServer"

    const-string/jumbo v5, "DirEncryptService.SystemReady"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {v63 .. v63}, Lcom/android/server/DirEncryptService;->systemReady()V
    :try_end_39
    .catch Ljava/lang/Throwable; {:try_start_39 .. :try_end_39} :catch_24

    :cond_10
    :goto_24
    :try_start_3a
    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v167

    if-eqz v167, :cond_11

    const-string/jumbo v4, "SystemServer"

    const-string/jumbo v5, "PackageManager is not null!!"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v4, "com.sec.feature.motionrecognition_service"

    move-object/from16 v0, v167

    invoke-virtual {v0, v4}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_11

    const-string/jumbo v4, "com.sec.feature.sensorhub"

    move-object/from16 v0, v167

    invoke-virtual {v0, v4}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_11

    const-string/jumbo v4, "com.sec.feature.scontext_lite"

    move-object/from16 v0, v167

    invoke-virtual {v0, v4}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_11

    new-instance v151, Ldalvik/system/PathClassLoader;

    const-string/jumbo v4, "/system/framework/motionrecognitionservice.jar"

    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v5

    move-object/from16 v0, v151

    invoke-direct {v0, v4, v5}, Ldalvik/system/PathClassLoader;-><init>(Ljava/lang/String;Ljava/lang/ClassLoader;)V

    const-string/jumbo v4, "com.samsung.android.gesture.MotionRecognitionService"

    move-object/from16 v0, v151

    invoke-virtual {v0, v4}, Ldalvik/system/PathClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v41

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const-class v5, Landroid/content/Context;

    const/16 v222, 0x0

    aput-object v5, v4, v222

    move-object/from16 v0, v41

    invoke-virtual {v0, v4}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v54

    const-string/jumbo v5, "motion_recognition"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/16 v222, 0x0

    aput-object v6, v4, v222

    move-object/from16 v0, v54

    invoke-virtual {v0, v4}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/IBinder;

    invoke-static {v5, v4}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    const-string/jumbo v4, "SystemServer"

    const-string/jumbo v5, "MotionRecognitionService Service!"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3a
    .catch Ljava/lang/Exception; {:try_start_3a .. :try_end_3a} :catch_25

    :cond_11
    :goto_25
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/UiModeManagerService;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/server/SystemServer;->mOnlyCore:Z

    if-nez v4, :cond_12

    const-string/jumbo v4, "UpdatePackagesIfNeeded"

    const-wide/32 v222, 0x80000

    move-wide/from16 v0, v222

    invoke-static {v0, v1, v4}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    :try_start_3b
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v4}, Lcom/android/server/pm/PackageManagerService;->updatePackagesIfNeeded()V
    :try_end_3b
    .catch Ljava/lang/Throwable; {:try_start_3b .. :try_end_3b} :catch_26

    :goto_26
    const-wide/32 v4, 0x80000

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    :cond_12
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/SystemServer;->mFactoryTestMode:I

    const/4 v5, 0x1

    if-eq v4, v5, :cond_4c

    if-nez v70, :cond_14

    const-string/jumbo v4, "StartLockSettingsService"

    invoke-static {v4}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    :try_start_3c
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string/jumbo v5, "com.android.server.LockSettingsService$Lifecycle"

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    const-string/jumbo v4, "lock_settings"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/widget/ILockSettings$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/widget/ILockSettings;
    :try_end_3c
    .catch Ljava/lang/Throwable; {:try_start_3c .. :try_end_3c} :catch_27

    move-result-object v118

    :goto_27
    const-wide/32 v4, 0x80000

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    const-string/jumbo v4, "ro.frp.pst"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_13

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/PersistentDataBlockService;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    :cond_13
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/DeviceIdleController;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/devicepolicy/DevicePolicyManagerService$Lifecycle;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    :cond_14
    :try_start_3d
    const-string/jumbo v4, "SystemServer"

    const-string/jumbo v5, "HarmonyEAS service"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v131, Lcom/android/server/HarmonyEASService;

    move-object/from16 v0, v131

    invoke-direct {v0, v6}, Lcom/android/server/HarmonyEASService;-><init>(Landroid/content/Context;)V
    :try_end_3d
    .catch Ljava/lang/Throwable; {:try_start_3d .. :try_end_3d} :catch_28

    :try_start_3e
    const-string/jumbo v4, "harmony_eas_service"

    move-object/from16 v0, v131

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    const-string/jumbo v4, "SystemServer"

    const-string/jumbo v5, "Harmony EAS service created..."

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3e
    .catch Ljava/lang/Throwable; {:try_start_3e .. :try_end_3e} :catch_95

    move-object/from16 v130, v131

    :goto_28
    :try_start_3f
    const-string/jumbo v4, "SystemServer"

    const-string/jumbo v5, "SdpManagerService"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v183, Lcom/android/server/SdpManagerService;

    move-object/from16 v0, v183

    invoke-direct {v0, v6}, Lcom/android/server/SdpManagerService;-><init>(Landroid/content/Context;)V
    :try_end_3f
    .catch Ljava/lang/Throwable; {:try_start_3f .. :try_end_3f} :catch_29

    :try_start_40
    const-string/jumbo v4, "sdp"

    move-object/from16 v0, v183

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_40
    .catch Ljava/lang/Throwable; {:try_start_40 .. :try_end_40} :catch_94

    move-object/from16 v182, v183

    :goto_29
    :try_start_41
    const-string/jumbo v4, "SystemServer"

    const-string/jumbo v5, "SdpLogService"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v181, Lcom/android/server/SdpLogService;

    move-object/from16 v0, v181

    invoke-direct {v0, v6}, Lcom/android/server/SdpLogService;-><init>(Landroid/content/Context;)V
    :try_end_41
    .catch Ljava/lang/Throwable; {:try_start_41 .. :try_end_41} :catch_2a

    :try_start_42
    const-string/jumbo v4, "sdp_log"

    move-object/from16 v0, v181

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_42
    .catch Ljava/lang/Throwable; {:try_start_42 .. :try_end_42} :catch_93

    move-object/from16 v180, v181

    :goto_2a
    :try_start_43
    const-string/jumbo v4, "SystemServer"

    const-string/jumbo v5, "DualAppManagerService"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v6}, Lcom/android/server/DualAppManagerService;->getInstance(Landroid/content/Context;)Lcom/android/server/DualAppManagerService;

    move-result-object v85

    const-string/jumbo v4, "dual_app"

    move-object/from16 v0, v85

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_43
    .catch Ljava/lang/Throwable; {:try_start_43 .. :try_end_43} :catch_2b

    :goto_2b
    :try_start_44
    const-string/jumbo v4, "SystemServer"

    const-string/jumbo v5, "Instantiating and register DLPManagerPolicyService to EnterpriseDeviceManagerService"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v80, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;

    move-object/from16 v0, v80

    invoke-direct {v0, v6}, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;-><init>(Landroid/content/Context;)V
    :try_end_44
    .catch Ljava/lang/Throwable; {:try_start_44 .. :try_end_44} :catch_2c

    :try_start_45
    const-string/jumbo v4, "enterprise_dlp_service"

    const/4 v5, 0x1

    move-object/from16 v0, v80

    invoke-static {v4, v0, v5}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->addPolicyService(Ljava/lang/String;Ljava/lang/Object;Z)V

    const-string/jumbo v4, "SystemServer"

    const-string/jumbo v5, "Instantiating and register DLPManagerService  to EnterpriseDeviceManagerService"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v82, Lcom/android/server/DLPManagerService;

    move-object/from16 v0, v82

    invoke-direct {v0, v6}, Lcom/android/server/DLPManagerService;-><init>(Landroid/content/Context;)V
    :try_end_45
    .catch Ljava/lang/Throwable; {:try_start_45 .. :try_end_45} :catch_91

    :try_start_46
    const-string/jumbo v4, "dlp"

    const/4 v5, 0x1

    move-object/from16 v0, v82

    invoke-static {v4, v0, v5}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->addPolicyService(Ljava/lang/String;Ljava/lang/Object;Z)V
    :try_end_46
    .catch Ljava/lang/Throwable; {:try_start_46 .. :try_end_46} :catch_92

    move-object/from16 v81, v82

    move-object/from16 v79, v80

    :goto_2c
    if-nez v70, :cond_15

    :try_start_47
    const-string/jumbo v4, "SystemServer"

    const-string/jumbo v5, "Enterprise Policy"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/enterprise/EnterpriseDeviceManagerService$Lifecycle;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    invoke-static {}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getInstance()Lcom/android/server/enterprise/EnterpriseDeviceManagerService;

    move-result-object v92

    const-string/jumbo v4, "SystemServer"

    const-string/jumbo v5, "Enterprise Policymanager service created..."

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_47
    .catch Ljava/lang/Throwable; {:try_start_47 .. :try_end_47} :catch_2d

    :cond_15
    :goto_2d
    if-nez v70, :cond_16

    :try_start_48
    const-string/jumbo v4, "SystemServer"

    const-string/jumbo v5, "KnoxCustom Policy"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v115, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;

    move-object/from16 v0, v115

    invoke-direct {v0, v6}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;-><init>(Landroid/content/Context;)V
    :try_end_48
    .catch Ljava/lang/Throwable; {:try_start_48 .. :try_end_48} :catch_2e

    :try_start_49
    const-string/jumbo v4, "knoxcustom"

    move-object/from16 v0, v115

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    const-string/jumbo v4, "knoxcustom"

    const/4 v5, 0x0

    move-object/from16 v0, v115

    invoke-static {v4, v0, v5}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->addPolicyService(Ljava/lang/String;Ljava/lang/Object;Z)V

    const-string/jumbo v4, "SystemServer"

    const-string/jumbo v5, "KnoxCustom Policy added."

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_49
    .catch Ljava/lang/Throwable; {:try_start_49 .. :try_end_49} :catch_90

    move-object/from16 v114, v115

    :cond_16
    :goto_2e
    if-nez v70, :cond_17

    if-eqz v92, :cond_17

    :try_start_4a
    new-instance v123, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;

    move-object/from16 v0, v123

    invoke-direct {v0, v6}, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;-><init>(Landroid/content/Context;)V
    :try_end_4a
    .catch Ljava/lang/Throwable; {:try_start_4a .. :try_end_4a} :catch_2f

    :try_start_4b
    const-string/jumbo v4, "enterprise_sso_policy"

    const/4 v5, 0x1

    move-object/from16 v0, v123

    invoke-static {v4, v0, v5}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->addPolicyService(Ljava/lang/String;Ljava/lang/Object;Z)V

    new-instance v127, Lcom/android/server/enterprise/sso/EnterpriseUserSpaceSSOPolicy;

    move-object/from16 v0, v127

    invoke-direct {v0, v6}, Lcom/android/server/enterprise/sso/EnterpriseUserSpaceSSOPolicy;-><init>(Landroid/content/Context;)V
    :try_end_4b
    .catch Ljava/lang/Throwable; {:try_start_4b .. :try_end_4b} :catch_8d

    :try_start_4c
    const-string/jumbo v4, "enterprise_user_space_sso_policy"

    const/4 v5, 0x1

    move-object/from16 v0, v127

    invoke-static {v4, v0, v5}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->addPolicyService(Ljava/lang/String;Ljava/lang/Object;Z)V

    new-instance v129, Lcom/android/server/enterprise/sso/GenericSSOService;

    move-object/from16 v0, v129

    invoke-direct {v0, v6}, Lcom/android/server/enterprise/sso/GenericSSOService;-><init>(Landroid/content/Context;)V
    :try_end_4c
    .catch Ljava/lang/Throwable; {:try_start_4c .. :try_end_4c} :catch_8e

    :try_start_4d
    const-string/jumbo v4, "genericssoservice"

    const/4 v5, 0x1

    move-object/from16 v0, v129

    invoke-static {v4, v0, v5}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->addPolicyService(Ljava/lang/String;Ljava/lang/Object;Z)V
    :try_end_4d
    .catch Ljava/lang/Throwable; {:try_start_4d .. :try_end_4d} :catch_8f

    move-object/from16 v122, v123

    move-object/from16 v126, v127

    move-object/from16 v128, v129

    :cond_17
    :goto_2f
    if-nez v70, :cond_18

    if-eqz v92, :cond_18

    :try_start_4e
    new-instance v125, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;

    move-object/from16 v0, v125

    invoke-direct {v0, v6}, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;-><init>(Landroid/content/Context;)V
    :try_end_4e
    .catch Ljava/lang/Throwable; {:try_start_4e .. :try_end_4e} :catch_30

    :try_start_4f
    const-string/jumbo v4, "enterprise_shared_device_policy"

    const/4 v5, 0x1

    move-object/from16 v0, v125

    invoke-static {v4, v0, v5}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->addPolicyService(Ljava/lang/String;Ljava/lang/Object;Z)V
    :try_end_4f
    .catch Ljava/lang/Throwable; {:try_start_4f .. :try_end_4f} :catch_8c

    move-object/from16 v124, v125

    :cond_18
    :goto_30
    if-nez v70, :cond_19

    if-eqz v92, :cond_19

    :try_start_50
    const-string/jumbo v4, "SystemServer"

    const-string/jumbo v5, "KNOX OTP service is added"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v141, Lcom/android/server/enterprise/otp/OTPService;

    move-object/from16 v0, v141

    invoke-direct {v0, v6}, Lcom/android/server/enterprise/otp/OTPService;-><init>(Landroid/content/Context;)V
    :try_end_50
    .catch Ljava/lang/Throwable; {:try_start_50 .. :try_end_50} :catch_31

    :try_start_51
    const-string/jumbo v4, "otp_service"

    move-object/from16 v0, v141

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    const-string/jumbo v4, "otp_service"

    const/4 v5, 0x0

    move-object/from16 v0, v141

    invoke-static {v4, v0, v5}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->addPolicyService(Ljava/lang/String;Ljava/lang/Object;Z)V
    :try_end_51
    .catch Ljava/lang/Throwable; {:try_start_51 .. :try_end_51} :catch_8b

    move-object/from16 v140, v141

    :cond_19
    :goto_31
    invoke-static {}, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyFeatureMonitor;->isEnterpriseBillingFeatureSupported()Z

    move-result v4

    if-eqz v4, :cond_1a

    :try_start_52
    new-instance v91, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicy;

    move-object/from16 v0, v91

    invoke-direct {v0, v6}, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicy;-><init>(Landroid/content/Context;)V

    const-string/jumbo v4, "enterprise_billing_policy"

    const/4 v5, 0x1

    move-object/from16 v0, v91

    invoke-static {v4, v0, v5}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->addPolicyService(Ljava/lang/String;Ljava/lang/Object;Z)V
    :try_end_52
    .catch Ljava/lang/Throwable; {:try_start_52 .. :try_end_52} :catch_32

    :cond_1a
    :goto_32
    :try_start_53
    new-instance v198, Lcom/android/server/enterprise/spd/SPDControlPolicy;

    move-object/from16 v0, v198

    invoke-direct {v0, v6}, Lcom/android/server/enterprise/spd/SPDControlPolicy;-><init>(Landroid/content/Context;)V
    :try_end_53
    .catch Ljava/lang/Exception; {:try_start_53 .. :try_end_53} :catch_33

    :try_start_54
    const-string/jumbo v4, "spd_control_policy"

    const/4 v5, 0x1

    move-object/from16 v0, v198

    invoke-static {v4, v0, v5}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->addPolicyService(Ljava/lang/String;Ljava/lang/Object;Z)V
    :try_end_54
    .catch Ljava/lang/Exception; {:try_start_54 .. :try_end_54} :catch_8a

    move-object/from16 v197, v198

    :goto_33
    :try_start_55
    const-string/jumbo v4, "SystemServer"

    const-string/jumbo v5, "SEAMS"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v4, "SEAMService"

    new-instance v5, Lcom/android/server/SEAMService;

    invoke-direct {v5, v6}, Lcom/android/server/SEAMService;-><init>(Landroid/content/Context;)V

    invoke-static {v4, v5}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_55
    .catch Ljava/lang/Throwable; {:try_start_55 .. :try_end_55} :catch_34

    :goto_34
    :try_start_56
    const-string/jumbo v4, "sedenial"

    new-instance v5, Lcom/android/server/SEDenialService;

    invoke-direct {v5, v6}, Lcom/android/server/SEDenialService;-><init>(Landroid/content/Context;)V

    invoke-static {v4, v5}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    const-string/jumbo v4, "SystemServer"

    const-string/jumbo v5, "SEDenial service added"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_56
    .catch Ljava/lang/Throwable; {:try_start_56 .. :try_end_56} :catch_35

    :goto_35
    if-nez v76, :cond_1b

    const-string/jumbo v4, "StartStatusBarManagerService"

    invoke-static {v4}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    :try_start_57
    new-instance v201, Lcom/android/server/statusbar/StatusBarManagerService;

    move-object/from16 v0, v201

    move-object/from16 v1, v220

    invoke-direct {v0, v6, v1}, Lcom/android/server/statusbar/StatusBarManagerService;-><init>(Landroid/content/Context;Lcom/android/server/wm/WindowManagerService;)V
    :try_end_57
    .catch Ljava/lang/Throwable; {:try_start_57 .. :try_end_57} :catch_36

    :try_start_58
    const-string/jumbo v4, "statusbar"

    move-object/from16 v0, v201

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_58
    .catch Ljava/lang/Throwable; {:try_start_58 .. :try_end_58} :catch_89

    move-object/from16 v200, v201

    :goto_36
    const-wide/32 v4, 0x80000

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    :cond_1b
    if-nez v70, :cond_1c

    const-string/jumbo v4, "StartClipboardService"

    invoke-static {v4}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    :try_start_59
    const-string/jumbo v4, "clipboard"

    new-instance v5, Lcom/android/server/clipboard/ClipboardService;

    invoke-direct {v5, v6}, Lcom/android/server/clipboard/ClipboardService;-><init>(Landroid/content/Context;)V

    invoke-static {v4, v5}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_59
    .catch Ljava/lang/Throwable; {:try_start_59 .. :try_end_59} :catch_37

    :goto_37
    const-wide/32 v4, 0x80000

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    :cond_1c
    if-eqz v70, :cond_62

    :goto_38
    if-nez v68, :cond_1d

    const-string/jumbo v4, "StartNetworkManagementService"

    invoke-static {v4}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    :try_start_5a
    invoke-static {v6}, Lcom/android/server/NetworkManagementService;->create(Landroid/content/Context;)Lcom/android/server/NetworkManagementService;

    move-result-object v158

    const-string/jumbo v4, "network_management"

    move-object/from16 v0, v158

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_5a
    .catch Ljava/lang/Throwable; {:try_start_5a .. :try_end_5a} :catch_39

    :goto_39
    const-wide/32 v4, 0x80000

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    :cond_1d
    if-nez v70, :cond_1e

    if-eqz v92, :cond_1e

    :try_start_5b
    const-string/jumbo v4, "SystemServer"

    const-string/jumbo v5, "Adding EnterprisePremiumVpnService"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v121, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;

    move-object/from16 v0, v121

    invoke-direct {v0, v6}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;-><init>(Landroid/content/Context;)V
    :try_end_5b
    .catch Ljava/lang/Throwable; {:try_start_5b .. :try_end_5b} :catch_3a

    :try_start_5c
    const-string/jumbo v4, "enterprise_premium_vpn_policy"

    const/4 v5, 0x1

    move-object/from16 v0, v121

    invoke-static {v4, v0, v5}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->addPolicyService(Ljava/lang/String;Ljava/lang/Object;Z)V

    const-string/jumbo v4, "SystemServer"

    const-string/jumbo v5, "Adding KnoxVpnEngineService"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v137, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;

    move-object/from16 v0, v137

    invoke-direct {v0, v6}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;-><init>(Landroid/content/Context;)V
    :try_end_5c
    .catch Ljava/lang/Throwable; {:try_start_5c .. :try_end_5c} :catch_87

    :try_start_5d
    const-string/jumbo v4, "knox_vpn_policy"

    const/4 v5, 0x1

    move-object/from16 v0, v137

    invoke-static {v4, v0, v5}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->addPolicyService(Ljava/lang/String;Ljava/lang/Object;Z)V
    :try_end_5d
    .catch Ljava/lang/Throwable; {:try_start_5d .. :try_end_5d} :catch_88

    move-object/from16 v136, v137

    move-object/from16 v120, v121

    :cond_1e
    :goto_3a
    if-nez v70, :cond_1f

    if-eqz v92, :cond_1f

    :try_start_5e
    const-string/jumbo v4, "SystemServer"

    const-string/jumbo v5, "Adding NetworkAnalyticsService"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v139, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;

    move-object/from16 v0, v139

    invoke-direct {v0, v6}, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;-><init>(Landroid/content/Context;)V
    :try_end_5e
    .catch Ljava/lang/Throwable; {:try_start_5e .. :try_end_5e} :catch_3b

    :try_start_5f
    const-string/jumbo v4, "knoxnap"

    const/4 v5, 0x1

    move-object/from16 v0, v139

    invoke-static {v4, v0, v5}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->addPolicyService(Ljava/lang/String;Ljava/lang/Object;Z)V
    :try_end_5f
    .catch Ljava/lang/Throwable; {:try_start_5f .. :try_end_5f} :catch_86

    move-object/from16 v138, v139

    :cond_1f
    :goto_3b
    if-nez v70, :cond_20

    if-eqz v77, :cond_63

    :cond_20
    :goto_3c
    if-nez v68, :cond_25

    const-string/jumbo v4, "StartNetworkScoreService"

    invoke-static {v4}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    :try_start_60
    new-instance v162, Lcom/android/server/NetworkScoreService;

    move-object/from16 v0, v162

    invoke-direct {v0, v6}, Lcom/android/server/NetworkScoreService;-><init>(Landroid/content/Context;)V
    :try_end_60
    .catch Ljava/lang/Throwable; {:try_start_60 .. :try_end_60} :catch_3c

    :try_start_61
    const-string/jumbo v4, "network_score"

    move-object/from16 v0, v162

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_61
    .catch Ljava/lang/Throwable; {:try_start_61 .. :try_end_61} :catch_85

    move-object/from16 v161, v162

    :goto_3d
    const-wide/32 v4, 0x80000

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    const-string/jumbo v4, "StartNetworkStatsService"

    invoke-static {v4}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    :try_start_62
    move-object/from16 v0, v158

    invoke-static {v6, v0}, Lcom/android/server/net/NetworkStatsService;->create(Landroid/content/Context;Landroid/os/INetworkManagementService;)Lcom/android/server/net/NetworkStatsService;

    move-result-object v163

    const-string/jumbo v4, "netstats"

    move-object/from16 v0, v163

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_62
    .catch Ljava/lang/Throwable; {:try_start_62 .. :try_end_62} :catch_3d

    :goto_3e
    const-wide/32 v4, 0x80000

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    const-string/jumbo v4, "StartNetworkPolicyManagerService"

    invoke-static {v4}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    :try_start_63
    new-instance v160, Lcom/android/server/net/NetworkPolicyManagerService;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, v160

    move-object/from16 v1, v163

    move-object/from16 v2, v158

    invoke-direct {v0, v6, v4, v1, v2}, Lcom/android/server/net/NetworkPolicyManagerService;-><init>(Landroid/content/Context;Landroid/app/IActivityManager;Landroid/net/INetworkStatsService;Landroid/os/INetworkManagementService;)V
    :try_end_63
    .catch Ljava/lang/Throwable; {:try_start_63 .. :try_end_63} :catch_3e

    :try_start_64
    const-string/jumbo v4, "netpolicy"

    move-object/from16 v0, v160

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_64
    .catch Ljava/lang/Throwable; {:try_start_64 .. :try_end_64} :catch_84

    move-object/from16 v159, v160

    :goto_3f
    const-wide/32 v4, 0x80000

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    const-string/jumbo v5, "android.hardware.wifi.nan"

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_64

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string/jumbo v5, "com.android.server.wifi.nan.WifiNanService"

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    :goto_40
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string/jumbo v5, "com.android.server.wifi.p2p.WifiP2pService"

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string/jumbo v5, "com.android.server.wifi.WifiService"

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string/jumbo v5, "com.android.server.wifi.hs20.WifiHs20Service"

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string/jumbo v5, "com.android.server.wifi.scanner.WifiScanningService"

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    if-nez v71, :cond_21

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string/jumbo v5, "com.android.server.wifi.RttService"

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    :cond_21
    if-eqz v90, :cond_22

    :try_start_65
    const-string/jumbo v4, "SystemServer"

    const-string/jumbo v5, "Wigig Service"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v216, Ldalvik/system/PathClassLoader;

    const-string/jumbo v4, "/system/framework/wigig-service.jar"

    const-string/jumbo v5, "/system/lib64:/system/vendor/lib64"

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/SystemServer;->getClass()Ljava/lang/Class;

    move-result-object v222

    invoke-virtual/range {v222 .. v222}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v222

    move-object/from16 v0, v216

    move-object/from16 v1, v222

    invoke-direct {v0, v4, v5, v1}, Ldalvik/system/PathClassLoader;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)V

    const-string/jumbo v4, "com.qualcomm.qti.server.wigig.p2p.WigigP2pServiceImpl"

    move-object/from16 v0, v216

    invoke-virtual {v0, v4}, Ldalvik/system/PathClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v217

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const-class v5, Landroid/content/Context;

    const/16 v222, 0x0

    aput-object v5, v4, v222

    move-object/from16 v0, v217

    invoke-virtual {v0, v4}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v62

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v6, v4, v5

    move-object/from16 v0, v62

    invoke-virtual {v0, v4}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v218

    const-string/jumbo v4, "SystemServer"

    const-string/jumbo v5, "Successfully loaded WigigP2pServiceImpl class"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v5, "wigigp2p"

    move-object/from16 v0, v218

    check-cast v0, Landroid/os/IBinder;

    move-object v4, v0

    invoke-static {v5, v4}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    const-string/jumbo v4, "com.qualcomm.qti.server.wigig.WigigService"

    move-object/from16 v0, v216

    invoke-virtual {v0, v4}, Ldalvik/system/PathClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v215

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const-class v5, Landroid/content/Context;

    const/16 v222, 0x0

    aput-object v5, v4, v222

    move-object/from16 v0, v215

    invoke-virtual {v0, v4}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v62

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v6, v4, v5

    move-object/from16 v0, v62

    invoke-virtual {v0, v4}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v219

    const-string/jumbo v4, "SystemServer"

    const-string/jumbo v5, "Successfully loaded WigigService class"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v5, "wigig"

    move-object/from16 v0, v219

    check-cast v0, Landroid/os/IBinder;

    move-object v4, v0

    invoke-static {v5, v4}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_65
    .catch Ljava/lang/Throwable; {:try_start_65 .. :try_end_65} :catch_3f

    :cond_22
    :goto_41
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string/jumbo v5, "android.hardware.ethernet"

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_23

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string/jumbo v5, "android.hardware.usb.host"

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_24

    :cond_23
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string/jumbo v5, "com.android.server.ethernet.EthernetService"

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    :cond_24
    const-string/jumbo v4, "StartConnectivityService"

    invoke-static {v4}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    :try_start_66
    new-instance v51, Lcom/android/server/ConnectivityService;

    move-object/from16 v0, v51

    move-object/from16 v1, v158

    move-object/from16 v2, v163

    move-object/from16 v3, v159

    invoke-direct {v0, v6, v1, v2, v3}, Lcom/android/server/ConnectivityService;-><init>(Landroid/content/Context;Landroid/os/INetworkManagementService;Landroid/net/INetworkStatsService;Landroid/net/INetworkPolicyManager;)V
    :try_end_66
    .catch Ljava/lang/Throwable; {:try_start_66 .. :try_end_66} :catch_40

    :try_start_67
    const-string/jumbo v4, "connectivity"

    move-object/from16 v0, v51

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    move-object/from16 v0, v163

    move-object/from16 v1, v51

    invoke-virtual {v0, v1}, Lcom/android/server/net/NetworkStatsService;->bindConnectivityManager(Landroid/net/IConnectivityManager;)V

    move-object/from16 v0, v159

    move-object/from16 v1, v51

    invoke-virtual {v0, v1}, Lcom/android/server/net/NetworkPolicyManagerService;->bindConnectivityManager(Landroid/net/IConnectivityManager;)V
    :try_end_67
    .catch Ljava/lang/Throwable; {:try_start_67 .. :try_end_67} :catch_83

    move-object/from16 v50, v51

    :goto_42
    const-wide/32 v4, 0x80000

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    const-string/jumbo v4, "StartNsdService"

    invoke-static {v4}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    :try_start_68
    invoke-static {v6}, Lcom/android/server/NsdService;->create(Landroid/content/Context;)Lcom/android/server/NsdService;

    move-result-object v186

    const-string/jumbo v4, "servicediscovery"

    move-object/from16 v0, v186

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_68
    .catch Ljava/lang/Throwable; {:try_start_68 .. :try_end_68} :catch_41

    :goto_43
    const-wide/32 v4, 0x80000

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    :cond_25
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v4

    const-string/jumbo v5, "CscFeature_Common_SupportHuxWiFiPromptDataOveruse"

    invoke-virtual {v4, v5}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_26

    :try_start_69
    const-string/jumbo v4, "SystemServer"

    const-string/jumbo v5, "Wi-Fi  Offload Service"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v214, Lcom/android/server/wifioffload/WifiOffloadService;

    move-object/from16 v0, v214

    invoke-direct {v0, v6}, Lcom/android/server/wifioffload/WifiOffloadService;-><init>(Landroid/content/Context;)V
    :try_end_69
    .catch Ljava/lang/Throwable; {:try_start_69 .. :try_end_69} :catch_42

    :try_start_6a
    const-string/jumbo v4, "wifioffload"

    move-object/from16 v0, v214

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_6a
    .catch Ljava/lang/Throwable; {:try_start_6a .. :try_end_6a} :catch_82

    move-object/from16 v213, v214

    :cond_26
    :goto_44
    if-nez v70, :cond_27

    const-string/jumbo v4, "StartUpdateLockService"

    invoke-static {v4}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    :try_start_6b
    const-string/jumbo v4, "updatelock"

    new-instance v5, Lcom/android/server/UpdateLockService;

    invoke-direct {v5, v6}, Lcom/android/server/UpdateLockService;-><init>(Landroid/content/Context;)V

    invoke-static {v4, v5}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_6b
    .catch Ljava/lang/Throwable; {:try_start_6b .. :try_end_6b} :catch_43

    :goto_45
    const-wide/32 v4, 0x80000

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    :cond_27
    if-nez v70, :cond_28

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/RecoverySystemService;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    :cond_28
    if-nez v70, :cond_29

    :try_start_6c
    const-string/jumbo v4, "SystemServer"

    const-string/jumbo v5, "SemExecute Service"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v4, "execute"

    new-instance v5, Lcom/android/server/execute/SemExecuteManagerService;

    invoke-direct {v5, v6}, Lcom/android/server/execute/SemExecuteManagerService;-><init>(Landroid/content/Context;)V

    invoke-static {v4, v5}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_6c
    .catch Ljava/lang/Throwable; {:try_start_6c .. :try_end_6c} :catch_44

    :cond_29
    :goto_46
    if-eqz v152, :cond_2a

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/server/SystemServer;->mOnlyCore:Z

    if-eqz v4, :cond_65

    :cond_2a
    :goto_47
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    const-string/jumbo v4, "notification"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/app/INotificationManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/INotificationManager;

    move-result-object v166

    move-object/from16 v0, v159

    move-object/from16 v1, v166

    invoke-virtual {v0, v1}, Lcom/android/server/net/NetworkPolicyManagerService;->bindNotificationManager(Landroid/app/INotificationManager;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/storage/DeviceStorageMonitorService;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    if-nez v66, :cond_2b

    const-string/jumbo v4, "StartLocationManagerService"

    invoke-static {v4}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    :try_start_6d
    new-instance v117, Lcom/android/server/LocationManagerService;

    move-object/from16 v0, v117

    invoke-direct {v0, v6}, Lcom/android/server/LocationManagerService;-><init>(Landroid/content/Context;)V
    :try_end_6d
    .catch Ljava/lang/Throwable; {:try_start_6d .. :try_end_6d} :catch_46

    :try_start_6e
    const-string/jumbo v4, "location"

    move-object/from16 v0, v117

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_6e
    .catch Ljava/lang/Throwable; {:try_start_6e .. :try_end_6e} :catch_81

    move-object/from16 v116, v117

    :goto_48
    const-wide/32 v4, 0x80000

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    const-string/jumbo v4, "StartCountryDetectorService"

    invoke-static {v4}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    :try_start_6f
    new-instance v60, Lcom/android/server/CountryDetectorService;

    move-object/from16 v0, v60

    invoke-direct {v0, v6}, Lcom/android/server/CountryDetectorService;-><init>(Landroid/content/Context;)V
    :try_end_6f
    .catch Ljava/lang/Throwable; {:try_start_6f .. :try_end_6f} :catch_47

    :try_start_70
    const-string/jumbo v4, "country_detector"

    move-object/from16 v0, v60

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_70
    .catch Ljava/lang/Throwable; {:try_start_70 .. :try_end_70} :catch_80

    move-object/from16 v59, v60

    :goto_49
    const-wide/32 v4, 0x80000

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    :cond_2b
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v4

    const-string/jumbo v5, "CscFeature_Common_SupportHuxGpsEnableVzwLbsStack"

    invoke-virtual {v4, v5}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2c

    const/16 v44, 0x0

    :try_start_71
    const-string/jumbo v4, "vzwlbs"

    const-string/jumbo v5, "Starting VZW Location Manager "

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v4, "com.samsung.vzwlbs"

    const/4 v5, 0x3

    invoke-virtual {v6, v4, v5}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v32

    const-string/jumbo v4, "vzwlbs"

    const-string/jumbo v5, "Loading VzwLocationManagerService from the APK"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_71
    .catch Ljava/lang/Throwable; {:try_start_71 .. :try_end_71} :catch_49

    :try_start_72
    invoke-virtual/range {v32 .. v32}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v4

    const-string/jumbo v5, "com.vzw.location.service.VzwLocationManagerService"

    invoke-virtual {v4, v5}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v44

    const-string/jumbo v4, "vzwlbs"

    const-string/jumbo v5, "Loaded VzwLocationManagerService"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_72
    .catch Ljava/lang/Exception; {:try_start_72 .. :try_end_72} :catch_48
    .catch Ljava/lang/Throwable; {:try_start_72 .. :try_end_72} :catch_49

    :goto_4a
    if-eqz v44, :cond_66

    const/4 v4, 0x1

    :try_start_73
    new-array v4, v4, [Ljava/lang/Class;

    const-class v5, Landroid/content/Context;

    const/16 v222, 0x0

    aput-object v5, v4, v222

    move-object/from16 v0, v44

    invoke-virtual {v0, v4}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v52

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v6, v4, v5

    move-object/from16 v0, v52

    invoke-virtual {v0, v4}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v105

    check-cast v105, Landroid/os/IBinder;

    const-string/jumbo v4, "vzwlbs"

    const-string/jumbo v5, "Adding VzwLocationManagerService"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v4, "vzwlbs"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v222, "IBinder : "

    move-object/from16 v0, v222

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v105

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v4, "VZW_LOCATION_SERVICE"

    move-object/from16 v0, v105

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    const-string/jumbo v4, "vzwlbs"

    const-string/jumbo v5, "Added VzwLocationManagerService to Service Manager"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_73
    .catch Ljava/lang/Throwable; {:try_start_73 .. :try_end_73} :catch_49

    :cond_2c
    :goto_4b
    :try_start_74
    const-string/jumbo v4, "SystemServer"

    const-string/jumbo v5, "SLocation Manager"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v4, "com.samsung.android.location.SLocationLoader"

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v176

    const-string/jumbo v4, "getSLocationService"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Class;

    const-class v222, Landroid/content/Context;

    const/16 v223, 0x0

    aput-object v222, v5, v223

    move-object/from16 v0, v176

    invoke-virtual {v0, v4, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v102

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v6, v4, v5

    const/4 v5, 0x0

    move-object/from16 v0, v102

    invoke-virtual {v0, v5, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Landroid/os/IBinder;

    move-object/from16 v175, v0

    const-string/jumbo v4, "sec_location"

    move-object/from16 v0, v175

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_74
    .catch Ljava/lang/Throwable; {:try_start_74 .. :try_end_74} :catch_4a

    :goto_4c
    if-nez v70, :cond_2d

    if-eqz v73, :cond_67

    :cond_2d
    :goto_4d
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/DropBoxManagerService;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    if-nez v70, :cond_2e

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x1120050

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v4

    if-eqz v4, :cond_2e

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/server/SystemServer;->mIsAlarmBoot:Z

    if-eqz v4, :cond_68

    :cond_2e
    :goto_4e
    const-string/jumbo v4, "StartAudioService"

    invoke-static {v4}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/audio/AudioService$Lifecycle;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    const-wide/32 v4, 0x80000

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    if-nez v70, :cond_2f

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/DockObserver;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    const-string/jumbo v5, "android.hardware.type.watch"

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2f

    :cond_2f
    const-string/jumbo v4, "StartWiredAccessoryManager"

    invoke-static {v4}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    :try_start_75
    new-instance v4, Lcom/android/server/WiredAccessoryManager;

    move-object/from16 v0, v109

    invoke-direct {v4, v6, v0}, Lcom/android/server/WiredAccessoryManager;-><init>(Landroid/content/Context;Lcom/android/server/input/InputManagerService;)V

    move-object/from16 v0, v109

    invoke-virtual {v0, v4}, Lcom/android/server/input/InputManagerService;->setWiredAccessoryCallbacks(Lcom/android/server/input/InputManagerService$WiredAccessoryCallbacks;)V
    :try_end_75
    .catch Ljava/lang/Throwable; {:try_start_75 .. :try_end_75} :catch_4c

    :goto_4f
    const-wide/32 v4, 0x80000

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    if-nez v70, :cond_34

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string/jumbo v5, "android.software.midi"

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_30

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string/jumbo v5, "com.android.server.midi.MidiService$Lifecycle"

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    :cond_30
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string/jumbo v5, "android.hardware.usb.host"

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_31

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string/jumbo v5, "android.hardware.usb.accessory"

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_32

    :cond_31
    const-string/jumbo v4, "StartUsbService"

    const-wide/32 v222, 0x80000

    move-wide/from16 v0, v222

    invoke-static {v0, v1, v4}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string/jumbo v5, "com.android.server.usb.UsbService$Lifecycle"

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    const-wide/32 v4, 0x80000

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    :cond_32
    if-nez v74, :cond_33

    const-string/jumbo v4, "StartSerialService"

    invoke-static {v4}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    :try_start_76
    new-instance v185, Lcom/android/server/SerialService;

    move-object/from16 v0, v185

    invoke-direct {v0, v6}, Lcom/android/server/SerialService;-><init>(Landroid/content/Context;)V
    :try_end_76
    .catch Ljava/lang/Throwable; {:try_start_76 .. :try_end_76} :catch_4d

    :try_start_77
    const-string/jumbo v4, "serial"

    move-object/from16 v0, v185

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_77
    .catch Ljava/lang/Throwable; {:try_start_77 .. :try_end_77} :catch_7f

    move-object/from16 v184, v185

    :goto_50
    const-wide/32 v4, 0x80000

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    :cond_33
    const-string/jumbo v4, "StartHardwarePropertiesManagerService"

    const-wide/32 v222, 0x80000

    move-wide/from16 v0, v222

    invoke-static {v0, v1, v4}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    :try_start_78
    new-instance v104, Lcom/android/server/HardwarePropertiesManagerService;

    move-object/from16 v0, v104

    invoke-direct {v0, v6}, Lcom/android/server/HardwarePropertiesManagerService;-><init>(Landroid/content/Context;)V
    :try_end_78
    .catch Ljava/lang/Throwable; {:try_start_78 .. :try_end_78} :catch_4e

    :try_start_79
    const-string/jumbo v4, "hardware_properties"

    move-object/from16 v0, v104

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_79
    .catch Ljava/lang/Throwable; {:try_start_79 .. :try_end_79} :catch_7e

    move-object/from16 v103, v104

    :goto_51
    const-wide/32 v4, 0x80000

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    :cond_34
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/twilight/TwilightService;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    invoke-static {v6}, Lcom/android/internal/app/NightDisplayController;->isAvailable(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_35

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/display/NightDisplayService;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    :cond_35
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/job/JobSchedulerService;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/soundtrigger/SoundTriggerService;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    if-nez v70, :cond_3b

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string/jumbo v5, "android.software.backup"

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_36

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string/jumbo v5, "com.android.server.backup.BackupManagerService$Lifecycle"

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    :cond_36
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string/jumbo v5, "android.software.app_widgets"

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_37

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x11200b4

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v4

    if-eqz v4, :cond_38

    :cond_37
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string/jumbo v5, "com.android.server.appwidget.AppWidgetService"

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    :cond_38
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string/jumbo v5, "android.software.voice_recognizers"

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_39

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string/jumbo v5, "com.android.server.voiceinteraction.VoiceInteractionManagerService"

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    :cond_39
    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-static {v4}, Lcom/android/server/GestureLauncherService;->isGestureLauncherEnabled(Landroid/content/res/Resources;)Z

    move-result v4

    if-eqz v4, :cond_3a

    const-string/jumbo v4, "SystemServer"

    const-string/jumbo v5, "Gesture Launcher Service"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/GestureLauncherService;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    :cond_3a
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/SensorNotificationService;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/ContextHubSystemService;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    :cond_3b
    const-string/jumbo v4, "ro.SecEDS.enable"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v29

    const-string/jumbo v4, "SystemServer"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v222, "SecEDS Service ro.tvout.enable = "

    move-object/from16 v0, v222

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v29

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v4, "false"

    move-object/from16 v0, v29

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3c

    :try_start_7a
    const-string/jumbo v4, "SystemServer"

    const-string/jumbo v5, "Starting SecEDSEnable Service"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v89, 0x0

    const-string/jumbo v4, "com.android.server.SecExternalDisplayService"

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v89

    if-nez v89, :cond_69

    const-string/jumbo v4, "SystemServer"

    const-string/jumbo v5, "eds Service not exist"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7a
    .catch Ljava/lang/Throwable; {:try_start_7a .. :try_end_7a} :catch_4f

    :cond_3c
    :goto_52
    const-string/jumbo v4, "StartDiskStatsService"

    invoke-static {v4}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    :try_start_7b
    const-string/jumbo v4, "diskstats"

    new-instance v5, Lcom/android/server/DiskStatsService;

    invoke-direct {v5, v6}, Lcom/android/server/DiskStatsService;-><init>(Landroid/content/Context;)V

    invoke-static {v4, v5}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_7b
    .catch Ljava/lang/Throwable; {:try_start_7b .. :try_end_7b} :catch_50

    :goto_53
    const-wide/32 v4, 0x80000

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    :try_start_7c
    const-string/jumbo v4, "SystemServer"

    const-string/jumbo v5, "SemDisplaySolution Service"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v83, 0x0

    const-string/jumbo v4, "com.samsung.android.displaysolution.SemDisplaySolutionManagerService"

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v83

    if-nez v83, :cond_6a

    const-string/jumbo v4, "SystemServer"

    const-string/jumbo v5, "SemDisplaySolution Service does not exist"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7c
    .catch Ljava/lang/Throwable; {:try_start_7c .. :try_end_7c} :catch_51

    :goto_54
    :try_start_7d
    const-string/jumbo v4, "SystemServer"

    const-string/jumbo v5, "SemAllAroundSensing Service"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v30, 0x0

    const-string/jumbo v4, "com.samsung.android.allaroundsensing.SemAllAroundSensingManagerService"

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v30

    if-nez v30, :cond_6b

    const-string/jumbo v4, "SystemServer"

    const-string/jumbo v5, "SemAllAroundSensing Service does not exist"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7d
    .catch Ljava/lang/Throwable; {:try_start_7d .. :try_end_7d} :catch_52

    :goto_55
    const-string/jumbo v4, "StartSpenGestureManagerService"

    invoke-static {v4}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    :try_start_7e
    const-string/jumbo v4, "spengestureservice"

    new-instance v5, Lcom/android/server/smartclip/SpenGestureManagerService;

    move-object/from16 v0, v220

    invoke-direct {v5, v6, v0}, Lcom/android/server/smartclip/SpenGestureManagerService;-><init>(Landroid/content/Context;Lcom/android/server/wm/WindowManagerService;)V

    invoke-static {v4, v5}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_7e
    .catch Ljava/lang/Throwable; {:try_start_7e .. :try_end_7e} :catch_53

    :goto_56
    const-wide/32 v4, 0x80000

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string/jumbo v5, "com.android.server.cocktailbar.CocktailBarManagerService"

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string/jumbo v5, "com.android.server.aod.AODManagerService"

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    :try_start_7f
    const-string/jumbo v4, "SystemServer"

    const-string/jumbo v5, "VoIPInterfaceManager Service"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v4, "voip"

    new-instance v5, Lcom/android/server/VoIPInterfaceManager;

    invoke-direct {v5, v6}, Lcom/android/server/VoIPInterfaceManager;-><init>(Landroid/content/Context;)V

    invoke-static {v4, v5}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_7f
    .catch Ljava/lang/Throwable; {:try_start_7f .. :try_end_7f} :catch_54

    :goto_57
    if-nez v72, :cond_3d

    const-string/jumbo v4, "StartSamplingProfilerService"

    invoke-static {v4}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    :try_start_80
    const-string/jumbo v4, "samplingprofiler"

    new-instance v5, Lcom/android/server/SamplingProfilerService;

    invoke-direct {v5, v6}, Lcom/android/server/SamplingProfilerService;-><init>(Landroid/content/Context;)V

    invoke-static {v4, v5}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_80
    .catch Ljava/lang/Throwable; {:try_start_80 .. :try_end_80} :catch_55

    :goto_58
    const-wide/32 v4, 0x80000

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    :cond_3d
    if-nez v68, :cond_3e

    if-eqz v69, :cond_6c

    :cond_3e
    :goto_59
    const-string/jumbo v4, "StartCommonTimeManagementService"

    invoke-static {v4}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    :try_start_81
    new-instance v48, Lcom/android/server/CommonTimeManagementService;

    move-object/from16 v0, v48

    invoke-direct {v0, v6}, Lcom/android/server/CommonTimeManagementService;-><init>(Landroid/content/Context;)V
    :try_end_81
    .catch Ljava/lang/Throwable; {:try_start_81 .. :try_end_81} :catch_57

    :try_start_82
    const-string/jumbo v4, "commontime_management"

    move-object/from16 v0, v48

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_82
    .catch Ljava/lang/Throwable; {:try_start_82 .. :try_end_82} :catch_7c

    move-object/from16 v47, v48

    :goto_5a
    const-wide/32 v4, 0x80000

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    if-nez v68, :cond_3f

    const-string/jumbo v4, "CertBlacklister"

    invoke-static {v4}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    :try_start_83
    new-instance v35, Lcom/android/server/CertBlacklister;

    move-object/from16 v0, v35

    invoke-direct {v0, v6}, Lcom/android/server/CertBlacklister;-><init>(Landroid/content/Context;)V
    :try_end_83
    .catch Ljava/lang/Throwable; {:try_start_83 .. :try_end_83} :catch_58

    :goto_5b
    const-wide/32 v4, 0x80000

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    :cond_3f
    if-nez v68, :cond_40

    if-eqz v70, :cond_6d

    :cond_40
    :goto_5c
    if-nez v70, :cond_41

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/dreams/DreamManagerService;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    :cond_41
    if-nez v70, :cond_42

    :cond_42
    if-nez v70, :cond_43

    const-string/jumbo v4, "graphicsstats"

    new-instance v5, Lcom/android/server/GraphicsStatsService;

    invoke-direct {v5, v6}, Lcom/android/server/GraphicsStatsService;-><init>(Landroid/content/Context;)V

    invoke-static {v4, v5}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    :cond_43
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string/jumbo v5, "android.software.print"

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_44

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string/jumbo v5, "com.android.server.print.PrintManagerService"

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    :cond_44
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/restrictions/RestrictionsManagerService;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/media/MediaSessionService;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string/jumbo v5, "android.hardware.hdmi.cec"

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_45

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    :cond_45
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string/jumbo v5, "android.software.live_tv"

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_46

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/tv/TvInputManagerService;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    :cond_46
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/media/MediaResourceMonitorService;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string/jumbo v5, "android.software.leanback"

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_47

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/tv/TvRemoteService;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    :cond_47
    if-nez v70, :cond_4a

    const-string/jumbo v4, "StartMediaRouterService"

    invoke-static {v4}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    :try_start_84
    new-instance v148, Lcom/android/server/media/MediaRouterService;

    move-object/from16 v0, v148

    invoke-direct {v0, v6}, Lcom/android/server/media/MediaRouterService;-><init>(Landroid/content/Context;)V
    :try_end_84
    .catch Ljava/lang/Throwable; {:try_start_84 .. :try_end_84} :catch_59

    :try_start_85
    const-string/jumbo v4, "media_router"

    move-object/from16 v0, v148

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_85
    .catch Ljava/lang/Throwable; {:try_start_85 .. :try_end_85} :catch_7b

    move-object/from16 v147, v148

    :goto_5d
    const-wide/32 v4, 0x80000

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    if-nez v78, :cond_48

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/trust/TrustManagerService;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    :cond_48
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string/jumbo v5, "android.hardware.fingerprint"

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_49

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/fingerprint/FingerprintService;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    :cond_49
    const-string/jumbo v4, "StartBackgroundDexOptService"

    invoke-static {v4}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    :try_start_86
    invoke-static {v6}, Lcom/android/server/pm/BackgroundDexOptService;->schedule(Landroid/content/Context;)V
    :try_end_86
    .catch Ljava/lang/Throwable; {:try_start_86 .. :try_end_86} :catch_5a

    :goto_5e
    const-wide/32 v4, 0x80000

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    :cond_4a
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/pm/ShortcutService$Lifecycle;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/pm/LauncherAppsService;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v4

    const-string/jumbo v5, "SEC_FLOATING_FEATURE_FRAMEWORK_SUPPORT_APP_PERMISSION_MONITOR"

    invoke-virtual {v4, v5}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4b

    const-string/jumbo v4, "SystemServer"

    const-string/jumbo v5, "PermissionMonitorService"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_87
    new-instance v170, Lcom/android/server/PermissionMonitor;

    move-object/from16 v0, v170

    invoke-direct {v0, v6}, Lcom/android/server/PermissionMonitor;-><init>(Landroid/content/Context;)V
    :try_end_87
    .catch Ljava/lang/Throwable; {:try_start_87 .. :try_end_87} :catch_5b

    :try_start_88
    const-string/jumbo v4, "permission.monitor"

    move-object/from16 v0, v170

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_88
    .catch Ljava/lang/Throwable; {:try_start_88 .. :try_end_88} :catch_7a

    move-object/from16 v169, v170

    :cond_4b
    :goto_5f
    :try_start_89
    const-string/jumbo v4, "SystemServer"

    const-string/jumbo v5, "BackgroundCompactionService"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v6}, Lcom/android/server/os/BackgroundCompactionService;->initBGC(Landroid/content/Context;)V
    :try_end_89
    .catch Ljava/lang/Throwable; {:try_start_89 .. :try_end_89} :catch_5c

    :cond_4c
    :goto_60
    if-nez v70, :cond_4d

    if-eqz v67, :cond_6e

    :cond_4d
    :goto_61
    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    const-string/jumbo v5, "android.hardware.type.watch"

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4e

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string/jumbo v5, "com.google.android.clockwork.bluetooth.WearBluetoothService"

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string/jumbo v5, "com.google.android.clockwork.wifi.WearWifiMediatorService"

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    if-nez v70, :cond_4e

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string/jumbo v5, "com.google.android.clockwork.time.WearTimeService"

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    :cond_4e
    invoke-virtual/range {v220 .. v220}, Lcom/android/server/wm/WindowManagerService;->detectSafeMode()Z

    move-result v177

    move/from16 v0, v177

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/SystemServer;->safeModeValueForTheme:Z

    if-eqz v177, :cond_6f

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v4}, Lcom/android/server/am/ActivityManagerService;->enterSafeMode()V

    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v4

    invoke-virtual {v4}, Ldalvik/system/VMRuntime;->disableJitCompilation()V

    :goto_62
    const-string/jumbo v4, "ro.csc.sales_code"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v178

    const-string/jumbo v4, "KTC"

    move-object/from16 v0, v178

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4f

    invoke-static {}, Landroid/os/FactoryTest;->isFactoryBinary()Z

    move-result v4

    if-nez v4, :cond_4f

    :try_start_8a
    const-string/jumbo v4, "SystemServer"

    const-string/jumbo v5, "KT UCA Service"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v4, "ktuca"

    new-instance v5, Landroid/ktuca/KtUcaService;

    invoke-direct {v5, v6}, Landroid/ktuca/KtUcaService;-><init>(Landroid/content/Context;)V

    invoke-static {v4, v5}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_8a
    .catch Ljava/lang/Throwable; {:try_start_8a .. :try_end_8a} :catch_5d

    :cond_4f
    :goto_63
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/MmsServiceBroker;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    move-result-object v21

    check-cast v21, Lcom/android/server/MmsServiceBroker;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mContentResolver:Landroid/content/ContentResolver;

    const-string/jumbo v5, "device_provisioned"

    const/16 v222, 0x0

    move/from16 v0, v222

    invoke-static {v4, v5, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-eqz v4, :cond_50

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    invoke-static {v4}, Landroid/os/UserManager;->isDeviceInDemoMode(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_51

    :cond_50
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/retaildemo/RetailDemoModeService;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    :cond_51
    :try_start_8b
    const-string/jumbo v4, "SystemServer"

    const-string/jumbo v5, "Mobile Payment Service"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v4, "mobile_payment"

    new-instance v5, Lcom/android/server/spay/PaymentManagerService;

    invoke-direct {v5, v6}, Lcom/android/server/spay/PaymentManagerService;-><init>(Landroid/content/Context;)V

    invoke-static {v4, v5}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_8b
    .catch Ljava/lang/Throwable; {:try_start_8b .. :try_end_8b} :catch_5e

    :goto_64
    :try_start_8c
    const-string/jumbo v4, "SystemServer"

    const-string/jumbo v5, "GameManagerService"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v99, Ldalvik/system/PathClassLoader;

    const-string/jumbo v4, "/system/framework/gamemanager.jar"

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/SystemServer;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v5

    move-object/from16 v0, v99

    invoke-direct {v0, v4, v5}, Ldalvik/system/PathClassLoader;-><init>(Ljava/lang/String;Ljava/lang/ClassLoader;)V

    const-string/jumbo v4, "com.samsung.android.game.GameManagerService"

    move-object/from16 v0, v99

    invoke-virtual {v0, v4}, Ldalvik/system/PathClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v98

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const-class v5, Landroid/content/Context;

    const/16 v222, 0x0

    aput-object v5, v4, v222

    move-object/from16 v0, v98

    invoke-virtual {v0, v4}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v100

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v6, v4, v5

    move-object/from16 v0, v100

    invoke-virtual {v0, v4}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v101

    check-cast v101, Landroid/os/IBinder;

    const-string/jumbo v4, "gamemanager"

    move-object/from16 v0, v101

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    const-string/jumbo v4, "SystemServer"

    const-string/jumbo v5, "GameManagerService loaded"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8c
    .catch Ljava/lang/Throwable; {:try_start_8c .. :try_end_8c} :catch_5f

    :goto_65
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string/jumbo v5, "com.samsung.feature.hdr_capable"

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_52

    :try_start_8d
    const-string/jumbo v4, "SystemServer"

    const-string/jumbo v5, "CodecSolutionService"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v46, Ldalvik/system/PathClassLoader;

    const-string/jumbo v4, "/system/framework/codecsolution.jar"

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/SystemServer;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v5

    move-object/from16 v0, v46

    invoke-direct {v0, v4, v5}, Ldalvik/system/PathClassLoader;-><init>(Ljava/lang/String;Ljava/lang/ClassLoader;)V

    const-string/jumbo v4, "com.samsung.android.codecsolution.CodecSolutionManagerService"

    move-object/from16 v0, v46

    invoke-virtual {v0, v4}, Ldalvik/system/PathClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v45

    if-nez v45, :cond_70

    const-string/jumbo v4, "SystemServer"

    const-string/jumbo v5, "CodecSolution Service does not exist"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8d
    .catch Ljava/lang/Throwable; {:try_start_8d .. :try_end_8d} :catch_60

    :cond_52
    :goto_66
    const-string/jumbo v4, "MakeVibratorServiceReady"

    const-wide/32 v222, 0x80000

    move-wide/from16 v0, v222

    invoke-static {v0, v1, v4}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    :try_start_8e
    invoke-virtual/range {v209 .. v209}, Lcom/android/server/VibratorService;->systemReady()V
    :try_end_8e
    .catch Ljava/lang/Throwable; {:try_start_8e .. :try_end_8e} :catch_61

    :goto_67
    const-wide/32 v4, 0x80000

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    const-string/jumbo v4, "MakeLockSettingsServiceReady"

    const-wide/32 v222, 0x80000

    move-wide/from16 v0, v222

    invoke-static {v0, v1, v4}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    if-eqz v118, :cond_53

    :try_start_8f
    invoke-interface/range {v118 .. v118}, Lcom/android/internal/widget/ILockSettings;->systemReady()V
    :try_end_8f
    .catch Ljava/lang/Throwable; {:try_start_8f .. :try_end_8f} :catch_62

    :cond_53
    :goto_68
    const-wide/32 v4, 0x80000

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const/16 v5, 0x1e0

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startBootPhase(I)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const/16 v5, 0x1f4

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startBootPhase(I)V

    if-eqz v92, :cond_71

    :try_start_90
    invoke-virtual/range {v92 .. v92}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->systemReady()V

    const-string/jumbo v4, "SystemServer"

    const-string/jumbo v5, "enterprisePolicy systemReady"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_90
    .catch Ljava/lang/Throwable; {:try_start_90 .. :try_end_90} :catch_63

    :goto_69
    if-eqz v114, :cond_72

    :try_start_91
    invoke-virtual/range {v114 .. v114}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->systemReady()V

    const-string/jumbo v4, "SystemServer"

    const-string/jumbo v5, "knoxcustomPolicy systemReady"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_91
    .catch Ljava/lang/Throwable; {:try_start_91 .. :try_end_91} :catch_64

    :goto_6a
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->credentialManagerService:Lcom/samsung/ucm/ucmservice/CredentialManagerService;

    if-eqz v4, :cond_54

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->credentialManagerService:Lcom/samsung/ucm/ucmservice/CredentialManagerService;

    invoke-virtual {v4}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->systemReady()V

    const-string/jumbo v4, "SystemServer"

    const-string/jumbo v5, "credentialManagerService systemReady"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_54
    const-string/jumbo v4, "SystemServer"

    const-string/jumbo v5, "SecurityManagerService"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_92
    const-string/jumbo v4, "SecurityManagerService"

    new-instance v5, Lcom/android/server/SecurityManagerService;

    invoke-direct {v5, v6}, Lcom/android/server/SecurityManagerService;-><init>(Landroid/content/Context;)V

    invoke-static {v4, v5}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_92
    .catch Ljava/lang/Throwable; {:try_start_92 .. :try_end_92} :catch_65

    :goto_6b
    const-string/jumbo v4, "MakeWindowManagerServiceReady"

    const-wide/32 v222, 0x80000

    move-wide/from16 v0, v222

    invoke-static {v0, v1, v4}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    if-eqz v90, :cond_55

    :try_start_93
    const-string/jumbo v4, "SystemServer"

    const-string/jumbo v5, "calling onBootPhase for Wigig Services"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {v218 .. v218}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v217

    const-string/jumbo v4, "onBootPhase"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Class;

    sget-object v222, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/16 v223, 0x0

    aput-object v222, v5, v223

    move-object/from16 v0, v217

    invoke-virtual {v0, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v119

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    new-instance v5, Ljava/lang/Integer;

    const/16 v222, 0x1f4

    move/from16 v0, v222

    invoke-direct {v5, v0}, Ljava/lang/Integer;-><init>(I)V

    const/16 v222, 0x0

    aput-object v5, v4, v222

    move-object/from16 v0, v119

    move-object/from16 v1, v218

    invoke-virtual {v0, v1, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual/range {v219 .. v219}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v215

    const-string/jumbo v4, "onBootPhase"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Class;

    sget-object v222, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/16 v223, 0x0

    aput-object v222, v5, v223

    move-object/from16 v0, v215

    invoke-virtual {v0, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v119

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    new-instance v5, Ljava/lang/Integer;

    const/16 v222, 0x1f4

    move/from16 v0, v222

    invoke-direct {v5, v0}, Ljava/lang/Integer;-><init>(I)V

    const/16 v222, 0x0

    aput-object v5, v4, v222

    move-object/from16 v0, v119

    move-object/from16 v1, v219

    invoke-virtual {v0, v1, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_93
    .catch Ljava/lang/Throwable; {:try_start_93 .. :try_end_93} :catch_66

    :cond_55
    :goto_6c
    :try_start_94
    invoke-virtual/range {v220 .. v220}, Lcom/android/server/wm/WindowManagerService;->systemReady()V
    :try_end_94
    .catch Ljava/lang/Throwable; {:try_start_94 .. :try_end_94} :catch_67

    :goto_6d
    const-wide/32 v4, 0x80000

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    if-eqz v177, :cond_56

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v4}, Lcom/android/server/am/ActivityManagerService;->showSafeModeOverlay()V

    :cond_56
    invoke-virtual/range {v220 .. v220}, Lcom/android/server/wm/WindowManagerService;->computeNewConfiguration()Landroid/content/res/Configuration;

    move-result-object v49

    new-instance v149, Landroid/util/DisplayMetrics;

    invoke-direct/range {v149 .. v149}, Landroid/util/DisplayMetrics;-><init>()V

    const-string/jumbo v4, "window"

    invoke-virtual {v6, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v211

    check-cast v211, Landroid/view/WindowManager;

    invoke-interface/range {v211 .. v211}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v4

    move-object/from16 v0, v149

    invoke-virtual {v4, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    move-object/from16 v0, v49

    move-object/from16 v1, v149

    invoke-virtual {v4, v0, v1}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    invoke-virtual {v6}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v203

    invoke-virtual/range {v203 .. v203}, Landroid/content/res/Resources$Theme;->getChangingConfigurations()I

    move-result v4

    if-eqz v4, :cond_57

    invoke-virtual/range {v203 .. v203}, Landroid/content/res/Resources$Theme;->rebase()V

    :cond_57
    const-string/jumbo v4, "MakePowerManagerServiceReady"

    const-wide/32 v222, 0x80000

    move-wide/from16 v0, v222

    invoke-static {v0, v1, v4}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    :try_start_95
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mPowerManagerService:Lcom/android/server/power/PowerManagerService;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v5}, Lcom/android/server/am/ActivityManagerService;->getAppOpsService()Lcom/android/internal/app/IAppOpsService;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/server/power/PowerManagerService;->systemReady(Lcom/android/internal/app/IAppOpsService;)V

    const-wide/32 v4, 0x80000

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V
    :try_end_95
    .catch Ljava/lang/Throwable; {:try_start_95 .. :try_end_95} :catch_68

    :goto_6e
    const-wide/32 v4, 0x80000

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    const-string/jumbo v4, "MakePackageManagerServiceReady"

    const-wide/32 v222, 0x80000

    move-wide/from16 v0, v222

    invoke-static {v0, v1, v4}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    :try_start_96
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v4}, Lcom/android/server/pm/PackageManagerService;->systemReady()V
    :try_end_96
    .catch Ljava/lang/Throwable; {:try_start_96 .. :try_end_96} :catch_69

    :goto_6f
    const-wide/32 v4, 0x80000

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    const-string/jumbo v4, "MakeDisplayManagerServiceReady"

    const-wide/32 v222, 0x80000

    move-wide/from16 v0, v222

    invoke-static {v0, v1, v4}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    :try_start_97
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mDisplayManagerService:Lcom/android/server/display/DisplayManagerService;

    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/server/SystemServer;->mOnlyCore:Z

    move/from16 v0, v177

    invoke-virtual {v4, v0, v5}, Lcom/android/server/display/DisplayManagerService;->systemReady(ZZ)V
    :try_end_97
    .catch Ljava/lang/Throwable; {:try_start_97 .. :try_end_97} :catch_6a

    :goto_70
    const-wide/32 v4, 0x80000

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v4

    const-string/jumbo v5, "CscFeature_RIL_DisableSmartBonding"

    invoke-virtual {v4, v5}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_73

    :goto_71
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v4

    const-string/jumbo v5, "CscFeature_RIL_ConfigKeepRrcConnection"

    invoke-virtual {v4, v5}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v95

    if-eqz v95, :cond_58

    const-string/jumbo v4, "hongbao"

    move-object/from16 v0, v95

    invoke-virtual {v0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_58

    :try_start_98
    const-string/jumbo v4, "HongbaoModeServiceReady"

    const-wide/32 v222, 0x80000

    move-wide/from16 v0, v222

    invoke-static {v0, v1, v4}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    invoke-virtual {v6}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v39

    const-string/jumbo v4, "com.samsung.android.hongbaomode.HongbaoModeService"

    const/4 v5, 0x1

    move-object/from16 v0, v39

    invoke-static {v4, v5, v0}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v40

    const-string/jumbo v4, "HONGBAO_MODE_SERVICE"

    move-object/from16 v0, v40

    invoke-virtual {v0, v4}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v96

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const-class v5, Landroid/content/Context;

    const/16 v222, 0x0

    aput-object v5, v4, v222

    move-object/from16 v0, v40

    invoke-virtual {v0, v4}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v53

    const/4 v4, 0x0

    move-object/from16 v0, v96

    invoke-virtual {v0, v4}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/16 v222, 0x0

    aput-object v6, v5, v222

    move-object/from16 v0, v53

    invoke-virtual {v0, v5}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/IBinder;

    invoke-static {v4, v5}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    const-wide/32 v4, 0x80000

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V
    :try_end_98
    .catch Ljava/lang/Throwable; {:try_start_98 .. :try_end_98} :catch_6c

    :cond_58
    :goto_72
    :try_start_99
    invoke-virtual/range {v182 .. v182}, Lcom/android/server/SdpManagerService;->systemReady()V
    :try_end_99
    .catch Ljava/lang/Throwable; {:try_start_99 .. :try_end_99} :catch_6d

    :goto_73
    :try_start_9a
    invoke-virtual/range {v180 .. v180}, Lcom/android/server/SdpLogService;->systemReady()V
    :try_end_9a
    .catch Ljava/lang/Throwable; {:try_start_9a .. :try_end_9a} :catch_6e

    :goto_74
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v4

    const-string/jumbo v5, "CscFeature_RIL_SupportMptcp"

    invoke-virtual {v4, v5}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_59

    :try_start_9b
    const-string/jumbo v4, "SystemServer"

    const-string/jumbo v5, "Mptcp Service"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v154, Ldalvik/system/PathClassLoader;

    const-string/jumbo v4, "/system/framework/mptcpservice.jar"

    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v5

    move-object/from16 v0, v154

    invoke-direct {v0, v4, v5}, Ldalvik/system/PathClassLoader;-><init>(Ljava/lang/String;Ljava/lang/ClassLoader;)V

    const-string/jumbo v4, "com.samsung.android.mptcp.MptcpService"

    move-object/from16 v0, v154

    invoke-virtual {v0, v4}, Ldalvik/system/PathClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v153

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const-class v5, Landroid/content/Context;

    const/16 v222, 0x0

    aput-object v5, v4, v222

    move-object/from16 v0, v153

    invoke-virtual {v0, v4}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v155

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v6, v4, v5

    move-object/from16 v0, v155

    invoke-virtual {v0, v4}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v156

    check-cast v156, Landroid/os/IBinder;

    const-string/jumbo v4, "SystemServer"

    const-string/jumbo v5, "MPTCP loaded"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9b
    .catch Ljava/lang/Throwable; {:try_start_9b .. :try_end_9b} :catch_6f

    :cond_59
    :goto_75
    :try_start_9c
    invoke-virtual/range {v85 .. v85}, Lcom/android/server/DualAppManagerService;->systemReady()V
    :try_end_9c
    .catch Ljava/lang/Throwable; {:try_start_9c .. :try_end_9c} :catch_70

    :goto_76
    invoke-static {}, Lcom/samsung/android/knox/SemPersonaManager;->getKnoxInfo()Landroid/os/Bundle;

    move-result-object v208

    const-string/jumbo v4, "2.0"

    const-string/jumbo v5, "version"

    move-object/from16 v0, v208

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5a

    :try_start_9d
    invoke-virtual/range {v142 .. v142}, Lcom/android/server/pm/PersonaManagerService;->systemReady()V
    :try_end_9d
    .catch Ljava/lang/Throwable; {:try_start_9d .. :try_end_9d} :catch_71

    :goto_77
    :try_start_9e
    invoke-virtual/range {v132 .. v132}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->systemReady()V
    :try_end_9e
    .catch Ljava/lang/Throwable; {:try_start_9e .. :try_end_9e} :catch_72

    :goto_78
    if-eqz v92, :cond_5a

    :try_start_9f
    const-string/jumbo v4, "SystemServer"

    const-string/jumbo v5, "enterprisePolicy is not null"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v4, "mum_container_policy"

    const/4 v5, 0x0

    move-object/from16 v0, v132

    invoke-static {v4, v0, v5}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->addPolicyService(Ljava/lang/String;Ljava/lang/Object;Z)V

    const-string/jumbo v4, "mum_container_rcp_policy"

    const/4 v5, 0x1

    move-object/from16 v0, v134

    invoke-static {v4, v0, v5}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->addPolicyService(Ljava/lang/String;Ljava/lang/Object;Z)V
    :try_end_9f
    .catch Ljava/lang/Throwable; {:try_start_9f .. :try_end_9f} :catch_73

    :cond_5a
    :goto_79
    if-eqz v92, :cond_5b

    :try_start_a0
    new-instance v188, Lcom/android/server/enterprise/container/SmartCardAccessPolicy;

    move-object/from16 v0, v188

    invoke-direct {v0, v6}, Lcom/android/server/enterprise/container/SmartCardAccessPolicy;-><init>(Landroid/content/Context;)V
    :try_end_a0
    .catch Ljava/lang/Throwable; {:try_start_a0 .. :try_end_a0} :catch_74

    :try_start_a1
    const-string/jumbo v4, "smartcard_access_policy"

    const/4 v5, 0x1

    move-object/from16 v0, v188

    invoke-static {v4, v0, v5}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->addPolicyService(Ljava/lang/String;Ljava/lang/Object;Z)V

    const-string/jumbo v4, "smartcard_access_policy"

    const/4 v5, 0x1

    move-object/from16 v0, v188

    invoke-static {v4, v0, v5}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;Z)V

    new-instance v190, Lcom/android/server/enterprise/smartcard/SmartCardBrowserPolicy;

    move-object/from16 v0, v190

    invoke-direct {v0, v6}, Lcom/android/server/enterprise/smartcard/SmartCardBrowserPolicy;-><init>(Landroid/content/Context;)V
    :try_end_a1
    .catch Ljava/lang/Throwable; {:try_start_a1 .. :try_end_a1} :catch_75

    :try_start_a2
    const-string/jumbo v4, "smartcard_browser_policy"

    const/4 v5, 0x1

    move-object/from16 v0, v190

    invoke-static {v4, v0, v5}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->addPolicyService(Ljava/lang/String;Ljava/lang/Object;Z)V

    const-string/jumbo v4, "smartcard_browser_policy"

    const/4 v5, 0x1

    move-object/from16 v0, v190

    invoke-static {v4, v0, v5}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;Z)V

    new-instance v192, Lcom/android/server/enterprise/smartcard/SmartCardEmailPolicy;

    move-object/from16 v0, v192

    invoke-direct {v0, v6}, Lcom/android/server/enterprise/smartcard/SmartCardEmailPolicy;-><init>(Landroid/content/Context;)V
    :try_end_a2
    .catch Ljava/lang/Throwable; {:try_start_a2 .. :try_end_a2} :catch_76

    :try_start_a3
    const-string/jumbo v4, "smartcard_email_policy"

    const/4 v5, 0x1

    move-object/from16 v0, v192

    invoke-static {v4, v0, v5}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->addPolicyService(Ljava/lang/String;Ljava/lang/Object;Z)V

    const-string/jumbo v4, "smartcard_email_policy"

    const/4 v5, 0x1

    move-object/from16 v0, v192

    invoke-static {v4, v0, v5}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;Z)V

    new-instance v194, Lcom/android/server/enterprise/smartcard/SmartCardLockscreenPolicy;

    move-object/from16 v0, v194

    invoke-direct {v0, v6}, Lcom/android/server/enterprise/smartcard/SmartCardLockscreenPolicy;-><init>(Landroid/content/Context;)V
    :try_end_a3
    .catch Ljava/lang/Throwable; {:try_start_a3 .. :try_end_a3} :catch_77

    :try_start_a4
    const-string/jumbo v4, "smartcard_lockscreen_policy"

    const/4 v5, 0x1

    move-object/from16 v0, v194

    invoke-static {v4, v0, v5}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->addPolicyService(Ljava/lang/String;Ljava/lang/Object;Z)V

    const-string/jumbo v4, "smartcard_lockscreen_policy"

    const/4 v5, 0x1

    move-object/from16 v0, v194

    invoke-static {v4, v0, v5}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;Z)V

    new-instance v196, Lcom/android/server/enterprise/smartcard/SmartCardVpnPolicy;

    move-object/from16 v0, v196

    invoke-direct {v0, v6}, Lcom/android/server/enterprise/smartcard/SmartCardVpnPolicy;-><init>(Landroid/content/Context;)V
    :try_end_a4
    .catch Ljava/lang/Throwable; {:try_start_a4 .. :try_end_a4} :catch_78

    :try_start_a5
    const-string/jumbo v4, "smartcard_vpn_policy"

    const/4 v5, 0x1

    move-object/from16 v0, v196

    invoke-static {v4, v0, v5}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->addPolicyService(Ljava/lang/String;Ljava/lang/Object;Z)V

    const-string/jumbo v4, "smartcard_vpn_policy"

    const/4 v5, 0x1

    move-object/from16 v0, v196

    invoke-static {v4, v0, v5}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;Z)V
    :try_end_a5
    .catch Ljava/lang/Throwable; {:try_start_a5 .. :try_end_a5} :catch_79

    move-object/from16 v193, v194

    move-object/from16 v189, v190

    move-object/from16 v195, v196

    move-object/from16 v187, v188

    move-object/from16 v191, v192

    :cond_5b
    :goto_7a
    move-object/from16 v8, v158

    move-object/from16 v9, v163

    move-object/from16 v10, v159

    move-object/from16 v11, v50

    move-object/from16 v7, v161

    move-object/from16 v12, v116

    move-object/from16 v13, v175

    move-object/from16 v14, v59

    move-object/from16 v15, v164

    move-object/from16 v16, v47

    const/16 v17, 0x0

    move-object/from16 v18, v109

    move-object/from16 v19, v204

    move-object/from16 v20, v147

    move-object/from16 v150, v21

    move-object/from16 v22, v173

    move-object/from16 v168, v169

    const-string/jumbo v4, "ro.zygote"

    const-string/jumbo v5, "zygote_unknown"

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v221

    const-string/jumbo v4, "zygote64_32"

    move-object/from16 v0, v221

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v112

    sget-boolean v4, Lcom/android/internal/os/ZygoteInit;->isSecondaryZygoteReady:Z

    if-nez v4, :cond_74

    if-eqz v112, :cond_74

    const-string/jumbo v4, "SystemServer"

    const-string/jumbo v5, "We wait for secondary zygote here."

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/server/SystemServer;->waitForSecondaryZygote()V

    :goto_7b
    const-string/jumbo v4, "sys.boot.zygote_ready"

    const-string/jumbo v5, "1"

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v222, v0

    new-instance v4, Lcom/android/server/SystemServer$2;

    move-object/from16 v5, p0

    invoke-direct/range {v4 .. v22}, Lcom/android/server/SystemServer$2;-><init>(Lcom/android/server/SystemServer;Landroid/content/Context;Lcom/android/server/NetworkScoreService;Lcom/android/server/NetworkManagementService;Lcom/android/server/net/NetworkStatsService;Lcom/android/server/net/NetworkPolicyManagerService;Lcom/android/server/ConnectivityService;Lcom/android/server/LocationManagerService;Landroid/os/IBinder;Lcom/android/server/CountryDetectorService;Lcom/android/server/NetworkTimeUpdateService;Lcom/android/server/CommonTimeManagementService;Lcom/android/server/AssetAtlasService;Lcom/android/server/input/InputManagerService;Lcom/android/server/TelephonyRegistry;Lcom/android/server/media/MediaRouterService;Lcom/android/server/MmsServiceBroker;Lcom/samsung/accessory/manager/SAccessoryManager;)V

    move-object/from16 v0, v222

    invoke-virtual {v0, v4}, Lcom/android/server/am/ActivityManagerService;->systemReady(Ljava/lang/Runnable;)V

    return-void

    :catch_0
    move-exception v88

    :try_start_a6
    const-string/jumbo v4, "SystemServer"

    const-string/jumbo v5, "Failure starting Persona Manager Service"

    move-object/from16 v0, v88

    invoke-static {v4, v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_a6
    .catch Ljava/lang/RuntimeException; {:try_start_a6 .. :try_end_a6} :catch_1

    goto/16 :goto_0

    :catch_1
    move-exception v87

    move-object/from16 v204, v205

    :goto_7c
    const-string/jumbo v4, "System"

    const-string/jumbo v5, "******************************************"

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v4, "System"

    const-string/jumbo v5, "************ Failure starting core service"

    move-object/from16 v0, v87

    invoke-static {v4, v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1b

    :catch_2
    move-exception v88

    :goto_7d
    :try_start_a7
    const-string/jumbo v4, "SystemServer"

    const-string/jumbo v5, "Failure starting KnoxMUMContainerPolicy Service"

    move-object/from16 v0, v88

    invoke-static {v4, v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1

    :catch_3
    move-exception v88

    :goto_7e
    const-string/jumbo v4, "SystemServer"

    const-string/jumbo v5, "Failure starting KnoxMUMRCPPolicyService"

    move-object/from16 v0, v88

    invoke-static {v4, v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_2

    :catch_4
    move-exception v88

    const-string/jumbo v4, "SystemServer"

    const-string/jumbo v5, "Failed to add Reactive Service."

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    :catch_5
    move-exception v88

    invoke-virtual/range {v88 .. v88}, Ljava/lang/Throwable;->printStackTrace()V

    const-string/jumbo v4, "SystemServer"

    const-string/jumbo v5, "Failed to add VaultKeeper Service."

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    :cond_5c
    const-string/jumbo v4, "SystemServer"

    const-string/jumbo v5, "VaultKeeper Service Disabled"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    :catch_6
    move-exception v88

    const-string/jumbo v4, "SystemServer"

    const-string/jumbo v5, "Failed to add Remote Mobile Manager."

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    :catch_7
    move-exception v88

    const-string/jumbo v4, "SystemServer"

    const-string/jumbo v5, "Failed to add DeviceRootKeyService."

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {v88 .. v88}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_6

    :catch_8
    move-exception v88

    const-string/jumbo v4, "SystemServer"

    const-string/jumbo v5, "Failed to add EngineeringModeService."

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {v88 .. v88}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_7

    :catch_9
    move-exception v88

    const-string/jumbo v4, "SystemServer"

    const-string/jumbo v5, "Failed to add SATService."

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a7
    .catch Ljava/lang/RuntimeException; {:try_start_a7 .. :try_end_a7} :catch_1

    goto/16 :goto_8

    :catch_a
    move-exception v88

    :try_start_a8
    const-string/jumbo v4, "SystemServer"

    const-string/jumbo v5, "Failure starting DirEncryptService"

    move-object/from16 v0, v88

    invoke-static {v4, v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_a8
    .catch Ljava/lang/RuntimeException; {:try_start_a8 .. :try_end_a8} :catch_9a

    const/16 v63, 0x0

    goto/16 :goto_9

    :catch_b
    move-exception v86

    :try_start_a9
    const-string/jumbo v4, "SystemServer"

    const-string/jumbo v5, "ssrm.jar not found"

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {v86 .. v86}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_a

    :catch_c
    move-exception v87

    move-object/from16 v57, v58

    move-object/from16 v204, v205

    move-object/from16 v209, v210

    goto/16 :goto_7c

    :catch_d
    move-exception v86

    const-string/jumbo v4, "SystemServer"

    const-string/jumbo v5, "hqm.jar not found"

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {v86 .. v86}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_a9
    .catch Ljava/lang/RuntimeException; {:try_start_a9 .. :try_end_a9} :catch_c

    goto/16 :goto_b

    :catch_e
    move-exception v86

    :try_start_aa
    const-string/jumbo v4, "SystemServer"

    const-string/jumbo v5, "Failure starting SemContextService"

    move-object/from16 v0, v86

    invoke-static {v4, v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_c

    :catch_f
    move-exception v87

    move-object/from16 v57, v58

    move-object/from16 v204, v205

    move-object/from16 v109, v110

    move-object/from16 v209, v210

    goto/16 :goto_7c

    :catch_10
    move-exception v88

    const-string/jumbo v4, "starting TimaService except PKM service"

    move-object/from16 v0, p0

    move-object/from16 v1, v88

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_d

    :catch_11
    move-exception v86

    const-string/jumbo v4, "SystemServer"

    const-string/jumbo v5, "Unable to add TimaKesytore/FipsTimaKesytore provider"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {v86 .. v86}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_e

    :catch_12
    move-exception v88

    const-string/jumbo v4, "starting pkmService"

    move-object/from16 v0, p0

    move-object/from16 v1, v88

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_aa
    .catch Ljava/lang/RuntimeException; {:try_start_aa .. :try_end_aa} :catch_f

    goto/16 :goto_f

    :catch_13
    move-exception v86

    :try_start_ab
    const-string/jumbo v4, "icccManager"

    const-string/jumbo v5, "exception caught"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {v86 .. v86}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_ab
    .catch Ljava/lang/Exception; {:try_start_ab .. :try_end_ab} :catch_14
    .catch Ljava/lang/RuntimeException; {:try_start_ab .. :try_end_ab} :catch_f

    goto/16 :goto_10

    :catch_14
    move-exception v86

    :try_start_ac
    const-string/jumbo v4, "SystemServer"

    const-string/jumbo v5, "Unable to add TimaKesytore/FipsTimaKesytore provider"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {v86 .. v86}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_10

    :catch_15
    move-exception v88

    const-string/jumbo v4, "SystemServer"

    const-string/jumbo v5, "Failure adding UniversalCredentialManagerService"

    move-object/from16 v0, v88

    invoke-static {v4, v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_11

    :catch_16
    move-exception v88

    const-string/jumbo v4, "SystemServer"

    const-string/jumbo v5, "Failure adding CredentialManagerService"

    move-object/from16 v0, v88

    invoke-static {v4, v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_12

    :catch_17
    move-exception v88

    const-string/jumbo v4, "SystemServer"

    const-string/jumbo v5, "CEP is not enabled"

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_13

    :catch_18
    move-exception v88

    const-string/jumbo v4, "SystemServer"

    const-string/jumbo v5, "Failure starting CEP Proxy Service"

    move-object/from16 v0, v88

    invoke-static {v4, v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_14

    :catch_19
    move-exception v88

    const-string/jumbo v4, "SystemServer"

    const-string/jumbo v5, "Failure starting Email Keystore Service"

    move-object/from16 v0, v88

    invoke-static {v4, v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_15

    :cond_5d
    const/4 v4, 0x0

    move v5, v4

    goto/16 :goto_16

    :cond_5e
    const/4 v4, 0x1

    goto/16 :goto_17

    :catch_1a
    move-exception v88

    const-string/jumbo v4, "SystemServer"

    const-string/jumbo v5, "Failure starting BarBeam Service"

    move-object/from16 v0, v88

    invoke-static {v4, v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_18

    :catch_1b
    move-exception v88

    const-string/jumbo v4, "SystemServer"

    const-string/jumbo v5, "Failure starting MultiWindow Manager Service"

    move-object/from16 v0, v88

    invoke-static {v4, v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_19

    :catch_1c
    move-exception v88

    :goto_7f
    const-string/jumbo v4, "SystemServer"

    const-string/jumbo v5, "Failure starting RCP Manager Service"

    move-object/from16 v0, v88

    invoke-static {v4, v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_ac
    .catch Ljava/lang/RuntimeException; {:try_start_ac .. :try_end_ac} :catch_f

    goto/16 :goto_1a

    :catch_1d
    move-exception v88

    const-string/jumbo v4, "starting Accessibility Manager"

    move-object/from16 v0, p0

    move-object/from16 v1, v88

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1c

    :catch_1e
    move-exception v88

    const-string/jumbo v4, "making display ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v88

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1d

    :catch_1f
    move-exception v88

    :goto_80
    const-string/jumbo v4, "starting SAccessoryManager"

    move-object/from16 v0, p0

    move-object/from16 v1, v88

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1e

    :catch_20
    move-exception v88

    const-string/jumbo v4, "Failure starting FM Radio Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v88

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1f

    :cond_5f
    const/4 v4, 0x1

    :try_start_ad
    new-array v4, v4, [Ljava/lang/Class;

    const-class v5, Landroid/content/Context;

    const/16 v222, 0x0

    aput-object v5, v4, v222

    move-object/from16 v0, v145

    invoke-virtual {v0, v4}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v52

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v6, v4, v5

    move-object/from16 v0, v52

    invoke-virtual {v0, v4}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v146

    check-cast v146, Landroid/os/IBinder;

    const-string/jumbo v4, "mDNIe"

    move-object/from16 v0, v146

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_ad
    .catch Ljava/lang/Throwable; {:try_start_ad .. :try_end_ad} :catch_21

    goto/16 :goto_20

    :catch_21
    move-exception v88

    const-string/jumbo v4, "Failed To Start Mdnie Service "

    move-object/from16 v0, p0

    move-object/from16 v1, v88

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_20

    :cond_60
    if-nez v70, :cond_d

    invoke-static {v6}, Lcom/samsung/android/cover/CoverFeatures;->hasCoverSystemFeature(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_d

    const-string/jumbo v4, "SystemServer"

    const-string/jumbo v5, "CoverManager Service"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string/jumbo v5, "com.android.server.cover.CoverManagerService"

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    goto/16 :goto_21

    :catch_22
    move-exception v88

    const-string/jumbo v4, "starting Mate Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v88

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_22

    :cond_61
    :try_start_ae
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string/jumbo v5, "com.android.server.MountService$Lifecycle"

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    const-string/jumbo v4, "mount"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/os/storage/IMountService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IMountService;
    :try_end_ae
    .catch Ljava/lang/Throwable; {:try_start_ae .. :try_end_ae} :catch_23

    move-result-object v152

    goto/16 :goto_23

    :catch_23
    move-exception v88

    const-string/jumbo v4, "starting Mount Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v88

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_23

    :catch_24
    move-exception v88

    const-string/jumbo v4, "starting DirEncryption service"

    move-object/from16 v0, p0

    move-object/from16 v1, v88

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_24

    :catch_25
    move-exception v86

    const-string/jumbo v4, "SystemServer"

    const-string/jumbo v5, "Failure starting MotionRecognitionService"

    move-object/from16 v0, v86

    invoke-static {v4, v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_25

    :catch_26
    move-exception v88

    const-string/jumbo v4, "update packages"

    move-object/from16 v0, p0

    move-object/from16 v1, v88

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_26

    :catch_27
    move-exception v88

    const-string/jumbo v4, "starting LockSettingsService service"

    move-object/from16 v0, p0

    move-object/from16 v1, v88

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_27

    :catch_28
    move-exception v88

    :goto_81
    const-string/jumbo v4, "SystemServer"

    const-string/jumbo v5, "Failure starting Harmony EAS service"

    move-object/from16 v0, v88

    invoke-static {v4, v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_28

    :catch_29
    move-exception v88

    :goto_82
    const-string/jumbo v4, "unable to start SdpManagerService"

    move-object/from16 v0, p0

    move-object/from16 v1, v88

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_29

    :catch_2a
    move-exception v88

    :goto_83
    const-string/jumbo v4, "SystemServer"

    const-string/jumbo v5, "Failure starting SdpLogService Service"

    move-object/from16 v0, v88

    invoke-static {v4, v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_2a

    :catch_2b
    move-exception v88

    const-string/jumbo v4, "unable to start DualAppManagerService"

    move-object/from16 v0, p0

    move-object/from16 v1, v88

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2b

    :catch_2c
    move-exception v88

    :goto_84
    const-string/jumbo v4, "unable to start DLPManagerPolicyService or DLPManagerService"

    move-object/from16 v0, p0

    move-object/from16 v1, v88

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2c

    :catch_2d
    move-exception v88

    const-string/jumbo v4, "SystemServer"

    const-string/jumbo v5, "Failure starting EnterpriseDeviceManagerService"

    move-object/from16 v0, v88

    invoke-static {v4, v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_2d

    :catch_2e
    move-exception v88

    :goto_85
    const-string/jumbo v4, "SystemServer"

    const-string/jumbo v5, "Fail KnoxCustom Policy."

    move-object/from16 v0, v88

    invoke-static {v4, v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_2e

    :catch_2f
    move-exception v88

    :goto_86
    const-string/jumbo v4, "SystemServer"

    const-string/jumbo v5, "Failure adding KNOX SSO services"

    move-object/from16 v0, v88

    invoke-static {v4, v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_2f

    :catch_30
    move-exception v88

    :goto_87
    const-string/jumbo v4, "SystemServer"

    const-string/jumbo v5, "Failure adding KNOX Shared Device service"

    move-object/from16 v0, v88

    invoke-static {v4, v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_30

    :catch_31
    move-exception v88

    :goto_88
    const-string/jumbo v4, "SystemServer"

    const-string/jumbo v5, "Failure adding KNOX OTP service"

    move-object/from16 v0, v88

    invoke-static {v4, v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_31

    :catch_32
    move-exception v88

    const-string/jumbo v4, "SystemServer"

    const-string/jumbo v5, "Failure registering EnterpriseBillingPolicy service with EDM service"

    move-object/from16 v0, v88

    invoke-static {v4, v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_32

    :catch_33
    move-exception v93

    :goto_89
    const-string/jumbo v4, "SystemServer"

    const-string/jumbo v5, "Failure registering SPDControlPolicy service with EDM service"

    move-object/from16 v0, v93

    invoke-static {v4, v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_33

    :catch_34
    move-exception v88

    const-string/jumbo v4, "SystemServer"

    const-string/jumbo v5, "Failure starting SE Android Manager Service"

    move-object/from16 v0, v88

    invoke-static {v4, v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_34

    :catch_35
    move-exception v88

    const-string/jumbo v4, "SystemServer"

    const-string/jumbo v5, "Registration of denial service failed"

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_35

    :catch_36
    move-exception v88

    :goto_8a
    const-string/jumbo v4, "starting StatusBarManagerService"

    move-object/from16 v0, p0

    move-object/from16 v1, v88

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_36

    :catch_37
    move-exception v88

    const-string/jumbo v4, "starting Clipboard Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v88

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_37

    :cond_62
    :try_start_af
    const-string/jumbo v4, "SystemServer"

    const-string/jumbo v5, "SemClipboardService"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v4, "semclipboard"

    new-instance v5, Lcom/android/server/clipboardex/ClipboardExService;

    invoke-direct {v5, v6}, Lcom/android/server/clipboardex/ClipboardExService;-><init>(Landroid/content/Context;)V

    invoke-static {v4, v5}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_af
    .catch Ljava/lang/Throwable; {:try_start_af .. :try_end_af} :catch_38

    goto/16 :goto_38

    :catch_38
    move-exception v88

    const-string/jumbo v4, "starting SemClipboardService"

    move-object/from16 v0, p0

    move-object/from16 v1, v88

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_38

    :catch_39
    move-exception v88

    const-string/jumbo v4, "starting NetworkManagement Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v88

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_39

    :catch_3a
    move-exception v88

    :goto_8b
    const-string/jumbo v4, "SystemServer"

    const-string/jumbo v5, "Failure starting EnterprisePremiumVpnService and KnoxVpnEngineService"

    move-object/from16 v0, v88

    invoke-static {v4, v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_3a

    :catch_3b
    move-exception v88

    :goto_8c
    const-string/jumbo v4, "SystemServer"

    const-string/jumbo v5, "Failure starting EnterprisePremiumVpnService and NetworkAnalyticsService"

    move-object/from16 v0, v88

    invoke-static {v4, v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_3b

    :cond_63
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/TextServicesManagerService$Lifecycle;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    goto/16 :goto_3c

    :catch_3c
    move-exception v88

    :goto_8d
    const-string/jumbo v4, "starting Network Score Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v88

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_3d

    :catch_3d
    move-exception v88

    const-string/jumbo v4, "starting NetworkStats Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v88

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_3e

    :catch_3e
    move-exception v88

    :goto_8e
    const-string/jumbo v4, "starting NetworkPolicy Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v88

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_3f

    :cond_64
    const-string/jumbo v4, "SystemServer"

    const-string/jumbo v5, "No Wi-Fi NAN Service (NAN support Not Present)"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_40

    :catch_3f
    move-exception v88

    const-string/jumbo v4, "starting WigigService"

    move-object/from16 v0, p0

    move-object/from16 v1, v88

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_41

    :catch_40
    move-exception v88

    :goto_8f
    const-string/jumbo v4, "starting Connectivity Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v88

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_42

    :catch_41
    move-exception v88

    const-string/jumbo v4, "starting Service Discovery Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v88

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_43

    :catch_42
    move-exception v88

    :goto_90
    const-string/jumbo v4, "starting Wi-Fi Offload Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v88

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_44

    :catch_43
    move-exception v88

    const-string/jumbo v4, "starting UpdateLockService"

    move-object/from16 v0, p0

    move-object/from16 v1, v88

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_45

    :catch_44
    move-exception v88

    const-string/jumbo v4, "starting Search Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v88

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_46

    :cond_65
    const-string/jumbo v4, "WaitForAsecScan"

    const-wide/32 v222, 0x80000

    move-wide/from16 v0, v222

    invoke-static {v0, v1, v4}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    :try_start_b0
    invoke-interface/range {v152 .. v152}, Landroid/os/storage/IMountService;->waitForAsecScan()V
    :try_end_b0
    .catch Landroid/os/RemoteException; {:try_start_b0 .. :try_end_b0} :catch_45

    :goto_91
    const-wide/32 v4, 0x80000

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    goto/16 :goto_47

    :catch_45
    move-exception v108

    goto :goto_91

    :catch_46
    move-exception v88

    :goto_92
    const-string/jumbo v4, "starting Location Manager"

    move-object/from16 v0, p0

    move-object/from16 v1, v88

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_48

    :catch_47
    move-exception v88

    :goto_93
    const-string/jumbo v4, "starting Country Detector"

    move-object/from16 v0, p0

    move-object/from16 v1, v88

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_49

    :catch_48
    move-exception v86

    :try_start_b1
    const-string/jumbo v4, "vzwlbs"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v222, "Exception while loading the class "

    move-object/from16 v0, v222

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v86

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b1
    .catch Ljava/lang/Throwable; {:try_start_b1 .. :try_end_b1} :catch_49

    goto/16 :goto_4a

    :catch_49
    move-exception v88

    const-string/jumbo v4, "vzwlbs"

    const-string/jumbo v5, "Failure starting VZW Location Manager"

    move-object/from16 v0, v88

    invoke-static {v4, v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_4b

    :cond_66
    :try_start_b2
    const-string/jumbo v4, "vzwlbs"

    const-string/jumbo v5, "Failure starting VZW Location Manager"

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b2
    .catch Ljava/lang/Throwable; {:try_start_b2 .. :try_end_b2} :catch_49

    goto/16 :goto_4b

    :catch_4a
    move-exception v88

    const-string/jumbo v4, "SystemServer"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v222, "Loading SLocation has been failed, error or not support"

    move-object/from16 v0, v222

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {v88 .. v88}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v222

    move-object/from16 v0, v222

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4c

    :cond_67
    const-string/jumbo v4, "StartSearchManagerService"

    invoke-static {v4}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    :try_start_b3
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string/jumbo v5, "com.android.server.search.SearchManagerService$Lifecycle"

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;
    :try_end_b3
    .catch Ljava/lang/Throwable; {:try_start_b3 .. :try_end_b3} :catch_4b

    :goto_94
    const-wide/32 v4, 0x80000

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    goto/16 :goto_4d

    :catch_4b
    move-exception v88

    const-string/jumbo v4, "starting Search Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v88

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_94

    :cond_68
    const-string/jumbo v4, "StartWallpaperManagerService"

    invoke-static {v4}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string/jumbo v5, "com.android.server.wallpaper.WallpaperManagerService$Lifecycle"

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    const-wide/32 v4, 0x80000

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    goto/16 :goto_4e

    :catch_4c
    move-exception v88

    const-string/jumbo v4, "starting WiredAccessoryManager"

    move-object/from16 v0, p0

    move-object/from16 v1, v88

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_4f

    :catch_4d
    move-exception v88

    :goto_95
    const-string/jumbo v4, "SystemServer"

    const-string/jumbo v5, "Failure starting SerialService"

    move-object/from16 v0, v88

    invoke-static {v4, v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_50

    :catch_4e
    move-exception v88

    :goto_96
    const-string/jumbo v4, "SystemServer"

    const-string/jumbo v5, "Failure starting HardwarePropertiesManagerService"

    move-object/from16 v0, v88

    invoke-static {v4, v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_51

    :cond_69
    :try_start_b4
    const-string/jumbo v4, "SystemServer"

    const-string/jumbo v5, "edsclass Service exist"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x1

    new-array v0, v4, [Ljava/lang/Class;

    move-object/from16 v33, v0

    const-class v4, Landroid/content/Context;

    const/4 v5, 0x0

    aput-object v4, v33, v5

    move-object/from16 v0, v89

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v52

    const-string/jumbo v5, "SecExternalDisplayService"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/16 v222, 0x0

    aput-object v6, v4, v222

    move-object/from16 v0, v52

    invoke-virtual {v0, v4}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/IBinder;

    invoke-static {v5, v4}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_b4
    .catch Ljava/lang/Throwable; {:try_start_b4 .. :try_end_b4} :catch_4f

    goto/16 :goto_52

    :catch_4f
    move-exception v88

    const-string/jumbo v4, "SystemServer"

    const-string/jumbo v5, "Failure starting eds Service"

    move-object/from16 v0, v88

    invoke-static {v4, v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_52

    :catch_50
    move-exception v88

    const-string/jumbo v4, "starting DiskStats Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v88

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_53

    :cond_6a
    const/4 v4, 0x1

    :try_start_b5
    new-array v4, v4, [Ljava/lang/Class;

    const-class v5, Landroid/content/Context;

    const/16 v222, 0x0

    aput-object v5, v4, v222

    move-object/from16 v0, v83

    invoke-virtual {v0, v4}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v52

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v6, v4, v5

    move-object/from16 v0, v52

    invoke-virtual {v0, v4}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v84

    check-cast v84, Landroid/os/IBinder;

    const-string/jumbo v4, "DisplaySolution"

    move-object/from16 v0, v84

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_b5
    .catch Ljava/lang/Throwable; {:try_start_b5 .. :try_end_b5} :catch_51

    goto/16 :goto_54

    :catch_51
    move-exception v88

    const-string/jumbo v4, "Failed To Start SemDisplaySolution Service "

    move-object/from16 v0, p0

    move-object/from16 v1, v88

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_54

    :cond_6b
    const/4 v4, 0x1

    :try_start_b6
    new-array v4, v4, [Ljava/lang/Class;

    const-class v5, Landroid/content/Context;

    const/16 v222, 0x0

    aput-object v5, v4, v222

    move-object/from16 v0, v30

    invoke-virtual {v0, v4}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v52

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v6, v4, v5

    move-object/from16 v0, v52

    invoke-virtual {v0, v4}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Landroid/os/IBinder;

    const-string/jumbo v4, "AAS"

    move-object/from16 v0, v31

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_b6
    .catch Ljava/lang/Throwable; {:try_start_b6 .. :try_end_b6} :catch_52

    goto/16 :goto_55

    :catch_52
    move-exception v88

    const-string/jumbo v4, "Failed To Start SemAllAroundSensing Service "

    move-object/from16 v0, p0

    move-object/from16 v1, v88

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_55

    :catch_53
    move-exception v88

    const-string/jumbo v4, "starting SpenGestureManagerService"

    move-object/from16 v0, p0

    move-object/from16 v1, v88

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_56

    :catch_54
    move-exception v88

    const-string/jumbo v4, "SystemServer"

    const-string/jumbo v5, "Failure starting VoIPInterfaceManager Service"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_57

    :catch_55
    move-exception v88

    const-string/jumbo v4, "starting SamplingProfiler Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v88

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_58

    :cond_6c
    const-string/jumbo v4, "StartNetworkTimeUpdateService"

    invoke-static {v4}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    :try_start_b7
    new-instance v165, Lcom/android/server/NetworkTimeUpdateService;

    move-object/from16 v0, v165

    invoke-direct {v0, v6}, Lcom/android/server/NetworkTimeUpdateService;-><init>(Landroid/content/Context;)V
    :try_end_b7
    .catch Ljava/lang/Throwable; {:try_start_b7 .. :try_end_b7} :catch_56

    :try_start_b8
    const-string/jumbo v4, "network_time_update_service"

    move-object/from16 v0, v165

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_b8
    .catch Ljava/lang/Throwable; {:try_start_b8 .. :try_end_b8} :catch_7d

    move-object/from16 v164, v165

    :goto_97
    const-wide/32 v4, 0x80000

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    goto/16 :goto_59

    :catch_56
    move-exception v88

    :goto_98
    const-string/jumbo v4, "starting NetworkTimeUpdate service"

    move-object/from16 v0, p0

    move-object/from16 v1, v88

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_97

    :catch_57
    move-exception v88

    :goto_99
    const-string/jumbo v4, "starting CommonTimeManagementService service"

    move-object/from16 v0, p0

    move-object/from16 v1, v88

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_5a

    :catch_58
    move-exception v88

    const-string/jumbo v4, "starting CertBlacklister"

    move-object/from16 v0, p0

    move-object/from16 v1, v88

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_5b

    :cond_6d
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/emergency/EmergencyAffordanceService;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    goto/16 :goto_5c

    :catch_59
    move-exception v88

    :goto_9a
    const-string/jumbo v4, "starting MediaRouterService"

    move-object/from16 v0, p0

    move-object/from16 v1, v88

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_5d

    :catch_5a
    move-exception v88

    const-string/jumbo v4, "starting BackgroundDexOptService"

    move-object/from16 v0, p0

    move-object/from16 v1, v88

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_5e

    :catch_5b
    move-exception v88

    :goto_9b
    const-string/jumbo v4, "launch permission monitor service"

    move-object/from16 v0, p0

    move-object/from16 v1, v88

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_5f

    :catch_5c
    move-exception v88

    const-string/jumbo v4, "starting BackgroundCompactionService"

    move-object/from16 v0, p0

    move-object/from16 v1, v88

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_60

    :cond_6e
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/media/projection/MediaProjectionManagerService;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    goto/16 :goto_61

    :cond_6f
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v4

    invoke-virtual {v4}, Ldalvik/system/VMRuntime;->startJitCompilation()V

    goto/16 :goto_62

    :catch_5d
    move-exception v88

    const-string/jumbo v4, "SystemServer"

    const-string/jumbo v5, "Failure starting KT UCA Service"

    move-object/from16 v0, v88

    invoke-static {v4, v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_63

    :catch_5e
    move-exception v88

    const-string/jumbo v4, "SystemServer"

    const-string/jumbo v5, "Failure starting Payment Manager Service"

    move-object/from16 v0, v88

    invoke-static {v4, v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_64

    :catch_5f
    move-exception v88

    const-string/jumbo v4, "SystemServer"

    const-string/jumbo v5, "Failed to add GameManagerService."

    move-object/from16 v0, v88

    invoke-static {v4, v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_65

    :cond_70
    const/4 v4, 0x2

    :try_start_b9
    new-array v4, v4, [Ljava/lang/Class;

    const-class v5, Landroid/content/Context;

    const/16 v222, 0x0

    aput-object v5, v4, v222

    const-class v5, Landroid/app/IActivityManager;

    const/16 v222, 0x1

    aput-object v5, v4, v222

    move-object/from16 v0, v45

    invoke-virtual {v0, v4}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v52

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v6, v4, v5

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    const/16 v222, 0x1

    aput-object v5, v4, v222

    move-object/from16 v0, v52

    invoke-virtual {v0, v4}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v202

    check-cast v202, Landroid/os/IBinder;

    const-string/jumbo v4, "CodecSolution"

    move-object/from16 v0, v202

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    const-string/jumbo v4, "SystemServer"

    const-string/jumbo v5, "CodecSolution Service loaded"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b9
    .catch Ljava/lang/Throwable; {:try_start_b9 .. :try_end_b9} :catch_60

    goto/16 :goto_66

    :catch_60
    move-exception v88

    const-string/jumbo v4, "SystemServer"

    const-string/jumbo v5, "Failed To Start CodecSolution Service "

    move-object/from16 v0, v88

    invoke-static {v4, v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_66

    :catch_61
    move-exception v88

    const-string/jumbo v4, "making Vibrator Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v88

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_67

    :catch_62
    move-exception v88

    const-string/jumbo v4, "making Lock Settings Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v88

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_68

    :catch_63
    move-exception v88

    const-string/jumbo v4, "making enterprise manager service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v88

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_69

    :cond_71
    const-string/jumbo v4, "SystemServer"

    const-string/jumbo v5, "enterprisePolicy cannot ready because null reference"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_69

    :catch_64
    move-exception v88

    const-string/jumbo v4, "making knoxcustom manager service ready "

    move-object/from16 v0, p0

    move-object/from16 v1, v88

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_6a

    :cond_72
    const-string/jumbo v4, "SystemServer"

    const-string/jumbo v5, "knoxCustomPolicy can\'t be ready due to a null pointer reference."

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6a

    :catch_65
    move-exception v88

    const-string/jumbo v4, "SystemServer"

    const-string/jumbo v5, "Failed to add SecurityManagerService."

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6b

    :catch_66
    move-exception v88

    const-string/jumbo v4, "Wigig services ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v88

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_6c

    :catch_67
    move-exception v88

    const-string/jumbo v4, "making Window Manager Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v88

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_6d

    :catch_68
    move-exception v88

    const-string/jumbo v4, "making Power Manager Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v88

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_6e

    :catch_69
    move-exception v88

    const-string/jumbo v4, "making Package Manager Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v88

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_6f

    :catch_6a
    move-exception v88

    const-string/jumbo v4, "making Display Manager Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v88

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_70

    :cond_73
    :try_start_ba
    const-string/jumbo v4, "SmartBondingServiceReady"

    const-wide/32 v222, 0x80000

    move-wide/from16 v0, v222

    invoke-static {v0, v1, v4}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    invoke-virtual {v6}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v39

    const-string/jumbo v4, "com.samsung.android.smartbonding.SmartBondingService"

    const/4 v5, 0x1

    move-object/from16 v0, v39

    invoke-static {v4, v5, v0}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v43

    const-string/jumbo v4, "SMARTBONDING_SERVICE"

    move-object/from16 v0, v43

    invoke-virtual {v0, v4}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v97

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const-class v5, Landroid/content/Context;

    const/16 v222, 0x0

    aput-object v5, v4, v222

    move-object/from16 v0, v43

    invoke-virtual {v0, v4}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v56

    const/4 v4, 0x0

    move-object/from16 v0, v97

    invoke-virtual {v0, v4}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/16 v222, 0x0

    aput-object v6, v5, v222

    move-object/from16 v0, v56

    invoke-virtual {v0, v5}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/IBinder;

    invoke-static {v4, v5}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    const-wide/32 v4, 0x80000

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V
    :try_end_ba
    .catch Ljava/lang/Throwable; {:try_start_ba .. :try_end_ba} :catch_6b

    goto/16 :goto_71

    :catch_6b
    move-exception v88

    const-string/jumbo v4, "starting SmartBondingService Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v88

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_71

    :catch_6c
    move-exception v88

    const-string/jumbo v4, "starting HongbaoModeService Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v88

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_72

    :catch_6d
    move-exception v88

    const-string/jumbo v4, "making Sdp manager service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v88

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_73

    :catch_6e
    move-exception v88

    const-string/jumbo v4, "making Sdp Log Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v88

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_74

    :catch_6f
    move-exception v88

    const-string/jumbo v4, "failed to start MptcpService"

    move-object/from16 v0, p0

    move-object/from16 v1, v88

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_75

    :catch_70
    move-exception v88

    const-string/jumbo v4, "making DualAppManagerService ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v88

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_76

    :catch_71
    move-exception v88

    const-string/jumbo v4, "making Persona Manager Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v88

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_77

    :catch_72
    move-exception v88

    const-string/jumbo v4, "making KnoxMUMContainerPolicy Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v88

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_78

    :catch_73
    move-exception v88

    const-string/jumbo v4, "making enterprise manager service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v88

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_79

    :catch_74
    move-exception v88

    :goto_9c
    const-string/jumbo v4, "making enterprise manager service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v88

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_7a

    :cond_74
    const-string/jumbo v4, "SystemServer"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v222, "No need to wait for Zygote secondary. let\'s start ActivityManagerService.systemReady() : zygoteProperty="

    move-object/from16 v0, v222

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v221

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_7b

    :catch_75
    move-exception v88

    move-object/from16 v187, v188

    goto :goto_9c

    :catch_76
    move-exception v88

    move-object/from16 v189, v190

    move-object/from16 v187, v188

    goto :goto_9c

    :catch_77
    move-exception v88

    move-object/from16 v189, v190

    move-object/from16 v187, v188

    move-object/from16 v191, v192

    goto :goto_9c

    :catch_78
    move-exception v88

    move-object/from16 v193, v194

    move-object/from16 v189, v190

    move-object/from16 v187, v188

    move-object/from16 v191, v192

    goto :goto_9c

    :catch_79
    move-exception v88

    move-object/from16 v193, v194

    move-object/from16 v189, v190

    move-object/from16 v195, v196

    move-object/from16 v187, v188

    move-object/from16 v191, v192

    goto :goto_9c

    :catch_7a
    move-exception v88

    move-object/from16 v169, v170

    goto/16 :goto_9b

    :catch_7b
    move-exception v88

    move-object/from16 v147, v148

    goto/16 :goto_9a

    :catch_7c
    move-exception v88

    move-object/from16 v47, v48

    goto/16 :goto_99

    :catch_7d
    move-exception v88

    move-object/from16 v164, v165

    goto/16 :goto_98

    :catch_7e
    move-exception v88

    move-object/from16 v103, v104

    goto/16 :goto_96

    :catch_7f
    move-exception v88

    move-object/from16 v184, v185

    goto/16 :goto_95

    :catch_80
    move-exception v88

    move-object/from16 v59, v60

    goto/16 :goto_93

    :catch_81
    move-exception v88

    move-object/from16 v116, v117

    goto/16 :goto_92

    :catch_82
    move-exception v88

    move-object/from16 v213, v214

    goto/16 :goto_90

    :catch_83
    move-exception v88

    move-object/from16 v50, v51

    goto/16 :goto_8f

    :catch_84
    move-exception v88

    move-object/from16 v159, v160

    goto/16 :goto_8e

    :catch_85
    move-exception v88

    move-object/from16 v161, v162

    goto/16 :goto_8d

    :catch_86
    move-exception v88

    move-object/from16 v138, v139

    goto/16 :goto_8c

    :catch_87
    move-exception v88

    move-object/from16 v120, v121

    goto/16 :goto_8b

    :catch_88
    move-exception v88

    move-object/from16 v136, v137

    move-object/from16 v120, v121

    goto/16 :goto_8b

    :catch_89
    move-exception v88

    move-object/from16 v200, v201

    goto/16 :goto_8a

    :catch_8a
    move-exception v93

    move-object/from16 v197, v198

    goto/16 :goto_89

    :catch_8b
    move-exception v88

    move-object/from16 v140, v141

    goto/16 :goto_88

    :catch_8c
    move-exception v88

    move-object/from16 v124, v125

    goto/16 :goto_87

    :catch_8d
    move-exception v88

    move-object/from16 v122, v123

    goto/16 :goto_86

    :catch_8e
    move-exception v88

    move-object/from16 v122, v123

    move-object/from16 v126, v127

    goto/16 :goto_86

    :catch_8f
    move-exception v88

    move-object/from16 v122, v123

    move-object/from16 v126, v127

    move-object/from16 v128, v129

    goto/16 :goto_86

    :catch_90
    move-exception v88

    move-object/from16 v114, v115

    goto/16 :goto_85

    :catch_91
    move-exception v88

    move-object/from16 v79, v80

    goto/16 :goto_84

    :catch_92
    move-exception v88

    move-object/from16 v81, v82

    move-object/from16 v79, v80

    goto/16 :goto_84

    :catch_93
    move-exception v88

    move-object/from16 v180, v181

    goto/16 :goto_83

    :catch_94
    move-exception v88

    move-object/from16 v182, v183

    goto/16 :goto_82

    :catch_95
    move-exception v88

    move-object/from16 v130, v131

    goto/16 :goto_81

    :catch_96
    move-exception v88

    move-object/from16 v173, v174

    goto/16 :goto_80

    :catch_97
    move-exception v87

    goto/16 :goto_7c

    :catch_98
    move-exception v87

    move-object/from16 v132, v133

    move-object/from16 v204, v205

    goto/16 :goto_7c

    :catch_99
    move-exception v87

    move-object/from16 v134, v135

    move-object/from16 v204, v205

    goto/16 :goto_7c

    :catch_9a
    move-exception v87

    move-object/from16 v63, v64

    move-object/from16 v204, v205

    goto/16 :goto_7c

    :catch_9b
    move-exception v87

    move-object/from16 v204, v205

    move-object/from16 v209, v210

    goto/16 :goto_7c

    :catch_9c
    move-exception v87

    move-object/from16 v143, v144

    move-object/from16 v57, v58

    move-object/from16 v204, v205

    move-object/from16 v109, v110

    move-object/from16 v209, v210

    goto/16 :goto_7c

    :catch_9d
    move-exception v88

    move-object/from16 v143, v144

    goto/16 :goto_7f

    :catch_9e
    move-exception v88

    move-object/from16 v134, v135

    goto/16 :goto_7e

    :catch_9f
    move-exception v88

    move-object/from16 v132, v133

    goto/16 :goto_7d
.end method

.method private static native startSensorService()V
.end method

.method static final startSystemUi(Landroid/content/Context;)V
    .locals 4

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    new-instance v1, Landroid/content/ComponentName;

    const-string/jumbo v2, "com.android.systemui"

    const-string/jumbo v3, "com.android.systemui.SystemUIService"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const/16 v1, 0x100

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    sget-object v1, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;

    return-void
.end method

.method private startThemeService()V
    .locals 5

    iget-object v0, p0, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    new-instance v2, Landroid/content/ComponentName;

    const-string/jumbo v3, "com.samsung.android.themecenter"

    const-string/jumbo v4, "com.samsung.android.thememanager.ThemeManagerService"

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const-string/jumbo v2, "safeMode"

    iget-boolean v3, p0, Lcom/android/server/SystemServer;->safeModeValueForTheme:Z

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string/jumbo v2, "isStartedBySystemServer"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    sget-object v2, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;

    return-void
.end method

.method private static traceBeginAndSlog(Ljava/lang/String;)V
    .locals 2

    const-wide/32 v0, 0x80000

    invoke-static {v0, v1, p0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    const-string/jumbo v0, "SystemServer"

    invoke-static {v0, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private static waitForSecondaryZygote()V
    .locals 9

    const/4 v3, 0x0

    const v5, 0x124f80

    const/16 v2, 0x64

    const/16 v1, 0x2ee0

    :goto_0
    sget-boolean v6, Lcom/android/internal/os/ZygoteInit;->isSecondaryZygoteReady:Z

    if-nez v6, :cond_0

    const-string/jumbo v6, "SystemServer"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Wait for secodary zygote  "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    mul-int/lit8 v8, v3, 0x64

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const v8, 0x124f80

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v6, 0x64

    :try_start_0
    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    add-int/lit8 v4, v3, 0x1

    const/16 v6, 0x2ee0

    if-le v3, v6, :cond_1

    const-string/jumbo v6, "SystemServer"

    const-string/jumbo v7, "Zygote32 is not ready for long time, so kill itself"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v6

    invoke-static {v6}, Landroid/os/Process;->killProcess(I)V

    const/16 v6, 0xa

    invoke-static {v6}, Ljava/lang/System;->exit(I)V

    move v3, v4

    :cond_0
    const-string/jumbo v6, "SystemServer"

    const-string/jumbo v7, "SecondaryZygote is now Ready"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catch_0
    move-exception v0

    goto :goto_1

    :cond_1
    move v3, v4

    goto :goto_0
.end method


# virtual methods
.method synthetic -com_android_server_SystemServer_lambda$2(ZLandroid/content/Context;Z)V
    .locals 2

    if-eqz p1, :cond_0

    const-string/jumbo v0, "SystemServer"

    const-string/jumbo v1, "No Bluetooth Service (emulator)"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    iget v0, p0, Lcom/android/server/SystemServer;->mFactoryTestMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    const-string/jumbo v0, "SystemServer"

    const-string/jumbo v1, "No Bluetooth Service (factory test)"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    invoke-virtual {p2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string/jumbo v1, "android.hardware.bluetooth"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string/jumbo v0, "SystemServer"

    const-string/jumbo v1, "No Bluetooth Service (Bluetooth Hardware Not Present)"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    if-eqz p3, :cond_3

    const-string/jumbo v0, "SystemServer"

    const-string/jumbo v1, "Bluetooth Service disabled by config"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    const-string/jumbo v0, "SystemServer"

    const-string/jumbo v1, "Bluetooth Service"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v1, Lcom/android/server/BluetoothService;

    invoke-virtual {v0, v1}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    const-string/jumbo v0, "SystemServer"

    const-string/jumbo v1, "Bluetooth Secure Mode Manager Service"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "bluetooth_secure_mode_manager"

    new-instance v1, Landroid/app/BluetoothSecureManagerService;

    invoke-direct {v1, p2}, Landroid/app/BluetoothSecureManagerService;-><init>(Landroid/content/Context;)V

    invoke-static {v0, v1}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    goto :goto_0
.end method
