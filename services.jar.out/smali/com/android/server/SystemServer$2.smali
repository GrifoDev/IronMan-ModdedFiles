.class Lcom/android/server/SystemServer$2;
.super Ljava/lang/Object;
.source "SystemServer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/SystemServer;->startOtherServices()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/SystemServer$2$-void_run__LambdaImpl0;
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/SystemServer;

.field final synthetic val$atlasF:Lcom/android/server/AssetAtlasService;

.field final synthetic val$commonTimeMgmtServiceF:Lcom/android/server/CommonTimeManagementService;

.field final synthetic val$connectivityF:Lcom/android/server/ConnectivityService;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$countryDetectorF:Lcom/android/server/CountryDetectorService;

.field final synthetic val$inputManagerF:Lcom/android/server/input/InputManagerService;

.field final synthetic val$locationF:Lcom/android/server/LocationManagerService;

.field final synthetic val$mediaRouterF:Lcom/android/server/media/MediaRouterService;

.field final synthetic val$mmsServiceF:Lcom/android/server/MmsServiceBroker;

.field final synthetic val$networkManagementF:Lcom/android/server/NetworkManagementService;

.field final synthetic val$networkPolicyF:Lcom/android/server/net/NetworkPolicyManagerService;

.field final synthetic val$networkScoreF:Lcom/android/server/NetworkScoreService;

.field final synthetic val$networkStatsF:Lcom/android/server/net/NetworkStatsService;

.field final synthetic val$networkTimeUpdaterF:Lcom/android/server/NetworkTimeUpdateService;

.field final synthetic val$sAccessoryManagerF:Lcom/samsung/accessory/manager/SAccessoryManager;

.field final synthetic val$sLocationF:Landroid/os/IBinder;

.field final synthetic val$telephonyRegistryF:Lcom/android/server/TelephonyRegistry;


# direct methods
.method constructor <init>(Lcom/android/server/SystemServer;Landroid/content/Context;Lcom/android/server/NetworkScoreService;Lcom/android/server/NetworkManagementService;Lcom/android/server/net/NetworkStatsService;Lcom/android/server/net/NetworkPolicyManagerService;Lcom/android/server/ConnectivityService;Lcom/android/server/LocationManagerService;Landroid/os/IBinder;Lcom/android/server/CountryDetectorService;Lcom/android/server/NetworkTimeUpdateService;Lcom/android/server/CommonTimeManagementService;Lcom/android/server/AssetAtlasService;Lcom/android/server/input/InputManagerService;Lcom/android/server/TelephonyRegistry;Lcom/android/server/media/MediaRouterService;Lcom/android/server/MmsServiceBroker;Lcom/samsung/accessory/manager/SAccessoryManager;)V
    .locals 1

    iput-object p1, p0, Lcom/android/server/SystemServer$2;->this$0:Lcom/android/server/SystemServer;

    iput-object p2, p0, Lcom/android/server/SystemServer$2;->val$context:Landroid/content/Context;

    iput-object p3, p0, Lcom/android/server/SystemServer$2;->val$networkScoreF:Lcom/android/server/NetworkScoreService;

    iput-object p4, p0, Lcom/android/server/SystemServer$2;->val$networkManagementF:Lcom/android/server/NetworkManagementService;

    iput-object p5, p0, Lcom/android/server/SystemServer$2;->val$networkStatsF:Lcom/android/server/net/NetworkStatsService;

    iput-object p6, p0, Lcom/android/server/SystemServer$2;->val$networkPolicyF:Lcom/android/server/net/NetworkPolicyManagerService;

    iput-object p7, p0, Lcom/android/server/SystemServer$2;->val$connectivityF:Lcom/android/server/ConnectivityService;

    iput-object p8, p0, Lcom/android/server/SystemServer$2;->val$locationF:Lcom/android/server/LocationManagerService;

    iput-object p9, p0, Lcom/android/server/SystemServer$2;->val$sLocationF:Landroid/os/IBinder;

    iput-object p10, p0, Lcom/android/server/SystemServer$2;->val$countryDetectorF:Lcom/android/server/CountryDetectorService;

    iput-object p11, p0, Lcom/android/server/SystemServer$2;->val$networkTimeUpdaterF:Lcom/android/server/NetworkTimeUpdateService;

    iput-object p12, p0, Lcom/android/server/SystemServer$2;->val$commonTimeMgmtServiceF:Lcom/android/server/CommonTimeManagementService;

    iput-object p13, p0, Lcom/android/server/SystemServer$2;->val$atlasF:Lcom/android/server/AssetAtlasService;

    iput-object p14, p0, Lcom/android/server/SystemServer$2;->val$inputManagerF:Lcom/android/server/input/InputManagerService;

    move-object/from16 v0, p15

    iput-object v0, p0, Lcom/android/server/SystemServer$2;->val$telephonyRegistryF:Lcom/android/server/TelephonyRegistry;

    move-object/from16 v0, p16

    iput-object v0, p0, Lcom/android/server/SystemServer$2;->val$mediaRouterF:Lcom/android/server/media/MediaRouterService;

    move-object/from16 v0, p17

    iput-object v0, p0, Lcom/android/server/SystemServer$2;->val$mmsServiceF:Lcom/android/server/MmsServiceBroker;

    move-object/from16 v0, p18

    iput-object v0, p0, Lcom/android/server/SystemServer$2;->val$sAccessoryManagerF:Lcom/samsung/accessory/manager/SAccessoryManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method synthetic -com_android_server_SystemServer$2_lambda$3()V
    .locals 4

    const-wide/32 v2, 0x80000

    const-string/jumbo v0, "WebViewFactoryPreparation"

    invoke-static {v2, v3, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    const-string/jumbo v0, "SystemServer"

    const-string/jumbo v1, "WebViewFactoryPreparation"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/SystemServer$2;->this$0:Lcom/android/server/SystemServer;

    invoke-static {v0}, Lcom/android/server/SystemServer;->-get3(Lcom/android/server/SystemServer;)Lcom/android/server/webkit/WebViewUpdateService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/webkit/WebViewUpdateService;->prepareWebViewInSystemServer()V

    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    const-string/jumbo v0, "SystemServer"

    const-string/jumbo v1, "webview end"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public run()V
    .locals 12

    const-wide/32 v10, 0x80000

    const-string/jumbo v6, "systemReady_runnable BEGIN"

    const v7, 0xf42a9

    invoke-static {v7, v6}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I

    const-string/jumbo v6, "SystemServer"

    const-string/jumbo v7, "Making services ready"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v6, p0, Lcom/android/server/SystemServer$2;->this$0:Lcom/android/server/SystemServer;

    invoke-static {v6}, Lcom/android/server/SystemServer;->-get2(Lcom/android/server/SystemServer;)Lcom/android/server/SystemServiceManager;

    move-result-object v6

    const/16 v7, 0x226

    invoke-virtual {v6, v7}, Lcom/android/server/SystemServiceManager;->startBootPhase(I)V

    const-string/jumbo v6, "PhaseActivityManagerReady"

    invoke-static {v10, v11, v6}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    const-string/jumbo v6, "StartObservingNativeCrashes"

    invoke-static {v10, v11, v6}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    :try_start_0
    iget-object v6, p0, Lcom/android/server/SystemServer$2;->this$0:Lcom/android/server/SystemServer;

    invoke-static {v6}, Lcom/android/server/SystemServer;->-get0(Lcom/android/server/SystemServer;)Lcom/android/server/am/ActivityManagerService;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/server/am/ActivityManagerService;->startObservingNativeCrashes()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-static {v10, v11}, Landroid/os/Trace;->traceEnd(J)V

    const-string/jumbo v0, "WebViewFactoryPreparation"

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/android/server/SystemServer$2;->this$0:Lcom/android/server/SystemServer;

    invoke-static {v6}, Lcom/android/server/SystemServer;->-get1(Lcom/android/server/SystemServer;)Z

    move-result v6

    if-nez v6, :cond_0

    const-string/jumbo v6, "SystemServer"

    const-string/jumbo v7, "WebViewFactory preparation"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/server/SystemServerInitThreadPool;->get()Lcom/android/server/SystemServerInitThreadPool;

    move-result-object v6

    new-instance v7, Lcom/android/server/SystemServer$2$-void_run__LambdaImpl0;

    invoke-direct {v7, p0}, Lcom/android/server/SystemServer$2$-void_run__LambdaImpl0;-><init>(Lcom/android/server/SystemServer$2;)V

    const-string/jumbo v8, "WebViewFactoryPreparation"

    invoke-virtual {v6, v7, v8}, Lcom/android/server/SystemServerInitThreadPool;->submit(Ljava/lang/Runnable;Ljava/lang/String;)Ljava/util/concurrent/Future;

    move-result-object v5

    const-string/jumbo v6, "SystemServer"

    const-string/jumbo v7, "webview end Main"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const-string/jumbo v6, "StartSystemUI"

    invoke-static {v10, v11, v6}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    const/4 v6, -0x2

    :try_start_1
    invoke-static {v6}, Landroid/os/Process;->setThreadPriority(I)V

    iget-object v6, p0, Lcom/android/server/SystemServer$2;->val$context:Landroid/content/Context;

    invoke-static {v6}, Lcom/android/server/SystemServer;->startSystemUi(Landroid/content/Context;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    invoke-static {v10, v11}, Landroid/os/Trace;->traceEnd(J)V

    const-string/jumbo v6, "MakeNetworkScoreReady"

    invoke-static {v10, v11, v6}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    :try_start_2
    iget-object v6, p0, Lcom/android/server/SystemServer$2;->this$0:Lcom/android/server/SystemServer;

    invoke-static {v6}, Lcom/android/server/SystemServer;->-wrap1(Lcom/android/server/SystemServer;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2

    :goto_2
    :try_start_3
    iget-object v6, p0, Lcom/android/server/SystemServer$2;->val$networkScoreF:Lcom/android/server/NetworkScoreService;

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/android/server/SystemServer$2;->val$networkScoreF:Lcom/android/server/NetworkScoreService;

    invoke-virtual {v6}, Lcom/android/server/NetworkScoreService;->systemReady()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_3

    :cond_1
    :goto_3
    invoke-static {v10, v11}, Landroid/os/Trace;->traceEnd(J)V

    const-string/jumbo v6, "MakeNetworkManagementServiceReady"

    invoke-static {v10, v11, v6}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    :try_start_4
    const-string/jumbo v6, "SystemServer"

    const-string/jumbo v7, "!@Boot_DEBUG: start networkManagement"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v6, p0, Lcom/android/server/SystemServer$2;->val$networkManagementF:Lcom/android/server/NetworkManagementService;

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/android/server/SystemServer$2;->val$networkManagementF:Lcom/android/server/NetworkManagementService;

    invoke-virtual {v6}, Lcom/android/server/NetworkManagementService;->systemReady()V

    :cond_2
    const-string/jumbo v6, "SystemServer"

    const-string/jumbo v7, "!@Boot_DEBUG: end networkManagement"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_4

    :goto_4
    invoke-static {v10, v11}, Landroid/os/Trace;->traceEnd(J)V

    const-string/jumbo v6, "MakeNetworkStatsServiceReady"

    invoke-static {v10, v11, v6}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    :try_start_5
    iget-object v6, p0, Lcom/android/server/SystemServer$2;->val$networkStatsF:Lcom/android/server/net/NetworkStatsService;

    if-eqz v6, :cond_3

    iget-object v6, p0, Lcom/android/server/SystemServer$2;->val$networkStatsF:Lcom/android/server/net/NetworkStatsService;

    invoke-virtual {v6}, Lcom/android/server/net/NetworkStatsService;->systemReady()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_5

    :cond_3
    :goto_5
    invoke-static {v10, v11}, Landroid/os/Trace;->traceEnd(J)V

    const-string/jumbo v6, "MakeNetworkPolicyServiceReady"

    invoke-static {v10, v11, v6}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    :try_start_6
    iget-object v6, p0, Lcom/android/server/SystemServer$2;->val$networkPolicyF:Lcom/android/server/net/NetworkPolicyManagerService;

    if-eqz v6, :cond_4

    iget-object v6, p0, Lcom/android/server/SystemServer$2;->val$networkPolicyF:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-virtual {v6}, Lcom/android/server/net/NetworkPolicyManagerService;->systemReady()V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_6

    :cond_4
    :goto_6
    invoke-static {v10, v11}, Landroid/os/Trace;->traceEnd(J)V

    const-string/jumbo v6, "MakeConnectivityServiceReady"

    invoke-static {v10, v11, v6}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    :try_start_7
    iget-object v6, p0, Lcom/android/server/SystemServer$2;->val$connectivityF:Lcom/android/server/ConnectivityService;

    if-eqz v6, :cond_5

    iget-object v6, p0, Lcom/android/server/SystemServer$2;->val$connectivityF:Lcom/android/server/ConnectivityService;

    invoke-virtual {v6}, Lcom/android/server/ConnectivityService;->systemReady()V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_7

    :cond_5
    :goto_7
    :try_start_8
    iget-object v6, p0, Lcom/android/server/SystemServer$2;->val$networkManagementF:Lcom/android/server/NetworkManagementService;

    if-eqz v6, :cond_6

    iget-object v6, p0, Lcom/android/server/SystemServer$2;->val$networkManagementF:Lcom/android/server/NetworkManagementService;

    invoke-virtual {v6}, Lcom/android/server/NetworkManagementService;->enableStrict()V
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_8

    :cond_6
    :goto_8
    invoke-static {v10, v11}, Landroid/os/Trace;->traceEnd(J)V

    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/server/Watchdog;->start()V

    invoke-static {v10, v11}, Landroid/os/Trace;->traceEnd(J)V

    const-string/jumbo v6, "PhaseThirdPartyAppsCanStart"

    invoke-static {v10, v11, v6}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    iget-object v6, p0, Lcom/android/server/SystemServer$2;->this$0:Lcom/android/server/SystemServer;

    invoke-static {v6}, Lcom/android/server/SystemServer;->-get2(Lcom/android/server/SystemServer;)Lcom/android/server/SystemServiceManager;

    move-result-object v6

    const/16 v7, 0x258

    invoke-virtual {v6, v7}, Lcom/android/server/SystemServiceManager;->startBootPhase(I)V

    :try_start_9
    iget-object v6, p0, Lcom/android/server/SystemServer$2;->val$locationF:Lcom/android/server/LocationManagerService;

    if-eqz v6, :cond_7

    iget-object v6, p0, Lcom/android/server/SystemServer$2;->val$locationF:Lcom/android/server/LocationManagerService;

    invoke-virtual {v6}, Lcom/android/server/LocationManagerService;->systemRunning()V
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_9

    :cond_7
    :goto_9
    :try_start_a
    iget-object v6, p0, Lcom/android/server/SystemServer$2;->val$sLocationF:Landroid/os/IBinder;

    if-eqz v6, :cond_8

    const-string/jumbo v6, "com.samsung.android.location.SLocationLoader"

    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    const-string/jumbo v6, "systemReady"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Class;

    const-class v8, Landroid/content/Context;

    const/4 v9, 0x0

    aput-object v8, v7, v9

    const-class v8, Landroid/os/IBinder;

    const/4 v9, 0x1

    aput-object v8, v7, v9

    invoke-virtual {v3, v6, v7}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    iget-object v7, p0, Lcom/android/server/SystemServer$2;->val$context:Landroid/content/Context;

    const/4 v8, 0x0

    aput-object v7, v6, v8

    iget-object v7, p0, Lcom/android/server/SystemServer$2;->val$sLocationF:Landroid/os/IBinder;

    const/4 v8, 0x1

    aput-object v7, v6, v8

    const/4 v7, 0x0

    invoke-virtual {v4, v7, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_a

    :cond_8
    :goto_a
    :try_start_b
    iget-object v6, p0, Lcom/android/server/SystemServer$2;->val$countryDetectorF:Lcom/android/server/CountryDetectorService;

    if-eqz v6, :cond_9

    iget-object v6, p0, Lcom/android/server/SystemServer$2;->val$countryDetectorF:Lcom/android/server/CountryDetectorService;

    invoke-virtual {v6}, Lcom/android/server/CountryDetectorService;->systemRunning()V
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_b} :catch_b

    :cond_9
    :goto_b
    :try_start_c
    iget-object v6, p0, Lcom/android/server/SystemServer$2;->val$networkTimeUpdaterF:Lcom/android/server/NetworkTimeUpdateService;

    if-eqz v6, :cond_a

    iget-object v6, p0, Lcom/android/server/SystemServer$2;->val$networkTimeUpdaterF:Lcom/android/server/NetworkTimeUpdateService;

    invoke-virtual {v6}, Lcom/android/server/NetworkTimeUpdateService;->systemRunning()V
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_c} :catch_c

    :cond_a
    :goto_c
    :try_start_d
    iget-object v6, p0, Lcom/android/server/SystemServer$2;->val$commonTimeMgmtServiceF:Lcom/android/server/CommonTimeManagementService;

    if-eqz v6, :cond_b

    iget-object v6, p0, Lcom/android/server/SystemServer$2;->val$commonTimeMgmtServiceF:Lcom/android/server/CommonTimeManagementService;

    invoke-virtual {v6}, Lcom/android/server/CommonTimeManagementService;->systemRunning()V
    :try_end_d
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_d} :catch_d

    :cond_b
    :goto_d
    :try_start_e
    iget-object v6, p0, Lcom/android/server/SystemServer$2;->val$atlasF:Lcom/android/server/AssetAtlasService;

    if-eqz v6, :cond_c

    iget-object v6, p0, Lcom/android/server/SystemServer$2;->val$atlasF:Lcom/android/server/AssetAtlasService;

    invoke-virtual {v6}, Lcom/android/server/AssetAtlasService;->systemRunning()V
    :try_end_e
    .catch Ljava/lang/Throwable; {:try_start_e .. :try_end_e} :catch_e

    :cond_c
    :goto_e
    :try_start_f
    iget-object v6, p0, Lcom/android/server/SystemServer$2;->val$inputManagerF:Lcom/android/server/input/InputManagerService;

    if-eqz v6, :cond_d

    iget-object v6, p0, Lcom/android/server/SystemServer$2;->val$inputManagerF:Lcom/android/server/input/InputManagerService;

    invoke-virtual {v6}, Lcom/android/server/input/InputManagerService;->systemRunning()V
    :try_end_f
    .catch Ljava/lang/Throwable; {:try_start_f .. :try_end_f} :catch_f

    :cond_d
    :goto_f
    :try_start_10
    iget-object v6, p0, Lcom/android/server/SystemServer$2;->val$telephonyRegistryF:Lcom/android/server/TelephonyRegistry;

    if-eqz v6, :cond_e

    iget-object v6, p0, Lcom/android/server/SystemServer$2;->val$telephonyRegistryF:Lcom/android/server/TelephonyRegistry;

    invoke-virtual {v6}, Lcom/android/server/TelephonyRegistry;->systemRunning()V
    :try_end_10
    .catch Ljava/lang/Throwable; {:try_start_10 .. :try_end_10} :catch_10

    :cond_e
    :goto_10
    :try_start_11
    iget-object v6, p0, Lcom/android/server/SystemServer$2;->val$mediaRouterF:Lcom/android/server/media/MediaRouterService;

    if-eqz v6, :cond_f

    iget-object v6, p0, Lcom/android/server/SystemServer$2;->val$mediaRouterF:Lcom/android/server/media/MediaRouterService;

    invoke-virtual {v6}, Lcom/android/server/media/MediaRouterService;->systemRunning()V
    :try_end_11
    .catch Ljava/lang/Throwable; {:try_start_11 .. :try_end_11} :catch_11

    :cond_f
    :goto_11
    :try_start_12
    iget-object v6, p0, Lcom/android/server/SystemServer$2;->val$context:Landroid/content/Context;

    invoke-static {v6}, Lcom/android/server/SystemServer;->startEmergencyModeService(Landroid/content/Context;)V
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_12

    :goto_12
    :try_start_13
    iget-object v6, p0, Lcom/android/server/SystemServer$2;->val$mmsServiceF:Lcom/android/server/MmsServiceBroker;

    if-eqz v6, :cond_10

    iget-object v6, p0, Lcom/android/server/SystemServer$2;->val$mmsServiceF:Lcom/android/server/MmsServiceBroker;

    invoke-virtual {v6}, Lcom/android/server/MmsServiceBroker;->systemRunning()V
    :try_end_13
    .catch Ljava/lang/Throwable; {:try_start_13 .. :try_end_13} :catch_13

    :cond_10
    :goto_13
    :try_start_14
    iget-object v6, p0, Lcom/android/server/SystemServer$2;->val$networkScoreF:Lcom/android/server/NetworkScoreService;

    if-eqz v6, :cond_11

    iget-object v6, p0, Lcom/android/server/SystemServer$2;->val$networkScoreF:Lcom/android/server/NetworkScoreService;

    invoke-virtual {v6}, Lcom/android/server/NetworkScoreService;->systemRunning()V
    :try_end_14
    .catch Ljava/lang/Throwable; {:try_start_14 .. :try_end_14} :catch_14

    :cond_11
    :goto_14
    invoke-static {v10, v11}, Landroid/os/Trace;->traceEnd(J)V

    :try_start_15
    iget-object v6, p0, Lcom/android/server/SystemServer$2;->val$sAccessoryManagerF:Lcom/samsung/accessory/manager/SAccessoryManager;

    if-eqz v6, :cond_12

    iget-object v6, p0, Lcom/android/server/SystemServer$2;->val$sAccessoryManagerF:Lcom/samsung/accessory/manager/SAccessoryManager;

    invoke-virtual {v6}, Lcom/samsung/accessory/manager/SAccessoryManager;->systemReady()V
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_15} :catch_15

    :cond_12
    :goto_15
    const-string/jumbo v6, "systemReady_runnable END"

    const v7, 0xf42aa

    invoke-static {v7, v6}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I

    return-void

    :catch_0
    move-exception v2

    iget-object v6, p0, Lcom/android/server/SystemServer$2;->this$0:Lcom/android/server/SystemServer;

    const-string/jumbo v7, "observing native crashes"

    invoke-static {v6, v7, v2}, Lcom/android/server/SystemServer;->-wrap0(Lcom/android/server/SystemServer;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    :catch_1
    move-exception v2

    iget-object v6, p0, Lcom/android/server/SystemServer$2;->this$0:Lcom/android/server/SystemServer;

    const-string/jumbo v7, "starting System UI"

    invoke-static {v6, v7, v2}, Lcom/android/server/SystemServer;->-wrap0(Lcom/android/server/SystemServer;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1

    :catch_2
    move-exception v2

    iget-object v6, p0, Lcom/android/server/SystemServer$2;->this$0:Lcom/android/server/SystemServer;

    const-string/jumbo v7, "starting Theme Service"

    invoke-static {v6, v7, v2}, Lcom/android/server/SystemServer;->-wrap0(Lcom/android/server/SystemServer;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2

    :catch_3
    move-exception v2

    iget-object v6, p0, Lcom/android/server/SystemServer$2;->this$0:Lcom/android/server/SystemServer;

    const-string/jumbo v7, "making Network Score Service ready"

    invoke-static {v6, v7, v2}, Lcom/android/server/SystemServer;->-wrap0(Lcom/android/server/SystemServer;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_3

    :catch_4
    move-exception v2

    iget-object v6, p0, Lcom/android/server/SystemServer$2;->this$0:Lcom/android/server/SystemServer;

    const-string/jumbo v7, "making Network Managment Service ready"

    invoke-static {v6, v7, v2}, Lcom/android/server/SystemServer;->-wrap0(Lcom/android/server/SystemServer;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_4

    :catch_5
    move-exception v2

    iget-object v6, p0, Lcom/android/server/SystemServer$2;->this$0:Lcom/android/server/SystemServer;

    const-string/jumbo v7, "making Network Stats Service ready"

    invoke-static {v6, v7, v2}, Lcom/android/server/SystemServer;->-wrap0(Lcom/android/server/SystemServer;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_5

    :catch_6
    move-exception v2

    iget-object v6, p0, Lcom/android/server/SystemServer$2;->this$0:Lcom/android/server/SystemServer;

    const-string/jumbo v7, "making Network Policy Service ready"

    invoke-static {v6, v7, v2}, Lcom/android/server/SystemServer;->-wrap0(Lcom/android/server/SystemServer;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_6

    :catch_7
    move-exception v2

    iget-object v6, p0, Lcom/android/server/SystemServer$2;->this$0:Lcom/android/server/SystemServer;

    const-string/jumbo v7, "making Connectivity Service ready"

    invoke-static {v6, v7, v2}, Lcom/android/server/SystemServer;->-wrap0(Lcom/android/server/SystemServer;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_7

    :catch_8
    move-exception v2

    iget-object v6, p0, Lcom/android/server/SystemServer$2;->this$0:Lcom/android/server/SystemServer;

    const-string/jumbo v7, "enableStrict"

    invoke-static {v6, v7, v2}, Lcom/android/server/SystemServer;->-wrap0(Lcom/android/server/SystemServer;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_8

    :catch_9
    move-exception v2

    iget-object v6, p0, Lcom/android/server/SystemServer$2;->this$0:Lcom/android/server/SystemServer;

    const-string/jumbo v7, "Notifying Location Service running"

    invoke-static {v6, v7, v2}, Lcom/android/server/SystemServer;->-wrap0(Lcom/android/server/SystemServer;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_9

    :catch_a
    move-exception v2

    const-string/jumbo v6, "SystemServer"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "making SLocation Service ready :"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v2}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_a

    :catch_b
    move-exception v2

    iget-object v6, p0, Lcom/android/server/SystemServer$2;->this$0:Lcom/android/server/SystemServer;

    const-string/jumbo v7, "Notifying CountryDetectorService running"

    invoke-static {v6, v7, v2}, Lcom/android/server/SystemServer;->-wrap0(Lcom/android/server/SystemServer;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_b

    :catch_c
    move-exception v2

    iget-object v6, p0, Lcom/android/server/SystemServer$2;->this$0:Lcom/android/server/SystemServer;

    const-string/jumbo v7, "Notifying NetworkTimeService running"

    invoke-static {v6, v7, v2}, Lcom/android/server/SystemServer;->-wrap0(Lcom/android/server/SystemServer;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_c

    :catch_d
    move-exception v2

    iget-object v6, p0, Lcom/android/server/SystemServer$2;->this$0:Lcom/android/server/SystemServer;

    const-string/jumbo v7, "Notifying CommonTimeManagementService running"

    invoke-static {v6, v7, v2}, Lcom/android/server/SystemServer;->-wrap0(Lcom/android/server/SystemServer;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_d

    :catch_e
    move-exception v2

    iget-object v6, p0, Lcom/android/server/SystemServer$2;->this$0:Lcom/android/server/SystemServer;

    const-string/jumbo v7, "Notifying AssetAtlasService running"

    invoke-static {v6, v7, v2}, Lcom/android/server/SystemServer;->-wrap0(Lcom/android/server/SystemServer;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_e

    :catch_f
    move-exception v2

    iget-object v6, p0, Lcom/android/server/SystemServer$2;->this$0:Lcom/android/server/SystemServer;

    const-string/jumbo v7, "Notifying InputManagerService running"

    invoke-static {v6, v7, v2}, Lcom/android/server/SystemServer;->-wrap0(Lcom/android/server/SystemServer;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_f

    :catch_10
    move-exception v2

    iget-object v6, p0, Lcom/android/server/SystemServer$2;->this$0:Lcom/android/server/SystemServer;

    const-string/jumbo v7, "Notifying TelephonyRegistry running"

    invoke-static {v6, v7, v2}, Lcom/android/server/SystemServer;->-wrap0(Lcom/android/server/SystemServer;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_10

    :catch_11
    move-exception v2

    iget-object v6, p0, Lcom/android/server/SystemServer$2;->this$0:Lcom/android/server/SystemServer;

    const-string/jumbo v7, "Notifying MediaRouterService running"

    invoke-static {v6, v7, v2}, Lcom/android/server/SystemServer;->-wrap0(Lcom/android/server/SystemServer;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_11

    :catch_12
    move-exception v1

    iget-object v6, p0, Lcom/android/server/SystemServer$2;->this$0:Lcom/android/server/SystemServer;

    const-string/jumbo v7, "Notifying EmergencyModeService running"

    invoke-static {v6, v7, v1}, Lcom/android/server/SystemServer;->-wrap0(Lcom/android/server/SystemServer;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_12

    :catch_13
    move-exception v2

    iget-object v6, p0, Lcom/android/server/SystemServer$2;->this$0:Lcom/android/server/SystemServer;

    const-string/jumbo v7, "Notifying MmsService running"

    invoke-static {v6, v7, v2}, Lcom/android/server/SystemServer;->-wrap0(Lcom/android/server/SystemServer;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_13

    :catch_14
    move-exception v2

    iget-object v6, p0, Lcom/android/server/SystemServer$2;->this$0:Lcom/android/server/SystemServer;

    const-string/jumbo v7, "Notifying NetworkScoreService running"

    invoke-static {v6, v7, v2}, Lcom/android/server/SystemServer;->-wrap0(Lcom/android/server/SystemServer;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_14

    :catch_15
    move-exception v1

    iget-object v6, p0, Lcom/android/server/SystemServer$2;->this$0:Lcom/android/server/SystemServer;

    const-string/jumbo v7, "Notifying SAccessoryManager running"

    invoke-static {v6, v7, v1}, Lcom/android/server/SystemServer;->-wrap0(Lcom/android/server/SystemServer;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_15
.end method
