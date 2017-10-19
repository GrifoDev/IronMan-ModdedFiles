.class public Lcom/android/server/connectivity/NetworkMonitor;
.super Lcom/android/internal/util/StateMachine;
.source "NetworkMonitor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/connectivity/NetworkMonitor$1;,
        Lcom/android/server/connectivity/NetworkMonitor$2;,
        Lcom/android/server/connectivity/NetworkMonitor$BIG_DATA_WEB_VIEW;,
        Lcom/android/server/connectivity/NetworkMonitor$CaptivePortalProbeResult;,
        Lcom/android/server/connectivity/NetworkMonitor$CaptivePortalState;,
        Lcom/android/server/connectivity/NetworkMonitor$CustomIntentReceiver;,
        Lcom/android/server/connectivity/NetworkMonitor$DefaultState;,
        Lcom/android/server/connectivity/NetworkMonitor$EvaluatingState;,
        Lcom/android/server/connectivity/NetworkMonitor$MaybeNotifyState;,
        Lcom/android/server/connectivity/NetworkMonitor$NetworkMonitorPhoneStateListner;,
        Lcom/android/server/connectivity/NetworkMonitor$ValidatedState;
    }
.end annotation


# static fields
.field public static final ACTION_DISMISS_HUN_NOTIFICATION:Ljava/lang/String; = "android.net.netmon.dismissHunNotification"

.field public static final ACTION_LAUNCH_CAPTIVE_PORTAL_APP:Ljava/lang/String; = "android.net.netmon.launchCaptivePortalApp"

.field public static final ACTION_NETWORK_CONDITIONS_MEASURED:Ljava/lang/String; = "android.net.conn.NETWORK_CONDITIONS_MEASURED"

.field public static final ACTION_SIGNIN_HUN_NOTIFICATION:Ljava/lang/String; = "android.net.netmon.signinHunNotification"

.field private static final BASE:I = 0x82000

.field private static final BLAME_FOR_EVALUATION_ATTEMPTS:I = 0x5

.field public static final CAPTIVE_PORTAL_HUN_ID_OFFSET:I = 0x64

.field public static final CAPTIVE_PORTAL_HUN_REMOVAL_MS:I = 0x1388

.field private static final CAPTIVE_PORTAL_REEVALUATE_DELAY_MS:I = 0x927c0

.field public static final CAPTIVE_PORTAL_TX_CHECK_EXPIRATION_TIME:I = 0x258

.field public static final CMD_ACCEPT_UNVALIDATED_WIFI:I = 0x82012

.field private static final CMD_CAPTIVE_PORTAL_APP_FINISHED:I = 0x82009

.field public static final CMD_CAPTIVE_PORTAL_CHECK_UID_TX_BYTES:I = 0x82010

.field private static final CMD_CAPTIVE_PORTAL_RECHECK:I = 0x8200c

.field public static final CMD_CAPTIVE_PORTAL_REMOVE_HUN_NOTIFICATION:I = 0x82011

.field public static final CMD_CAPTIVE_PORTAL_RESTART_CHECK_UID:I = 0x8200e

.field public static final CMD_CAPTIVE_PORTAL_RESTART_LOGIN_ACTIVITY:I = 0x82013

.field public static final CMD_CAPTIVE_PORTAL_UPDATE_NOTIFICATION:I = 0x82014

.field public static final CMD_FORCE_REEVALUATION:I = 0x82008

.field public static final CMD_FORCE_REEVALUATION_CAPTIVE_PORTAL_DETECT:I = 0x8200f

.field private static final CMD_LAUNCH_CAPTIVE_PORTAL_APP:I = 0x8200b

.field public static final CMD_NETWORK_CONNECTED:I = 0x82001

.field public static final CMD_NETWORK_DISCONNECTED:I = 0x82007

.field private static final CMD_REEVALUATE:I = 0x82006

.field private static final DBG:Z = true

.field private static final DEFAULT_FALLBACK_URL:Ljava/lang/String; = "http://www.google.com/gen_204"

.field private static final DEFAULT_HTTPS_URL:Ljava/lang/String; = "https://www.google.com/generate_204"

.field private static final DEFAULT_HTTP_URL:Ljava/lang/String; = "http://connectivitycheck.gstatic.com/generate_204"

.field private static final DEFAULT_USER_AGENT:Ljava/lang/String; = "Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/52.0.2743.82 Safari/537.36"

.field public static final EVENT_NETWORK_TESTED:I = 0x82002

.field public static final EVENT_PROVISIONING_NOTIFICATION:I = 0x8200a

.field public static final EXTRA_BSSID:Ljava/lang/String; = "extra_bssid"

.field public static final EXTRA_CELL_ID:Ljava/lang/String; = "extra_cellid"

.field public static final EXTRA_CONNECTIVITY_TYPE:Ljava/lang/String; = "extra_connectivity_type"

.field public static final EXTRA_IS_CAPTIVE_PORTAL:Ljava/lang/String; = "extra_is_captive_portal"

.field public static final EXTRA_NETWORK_TYPE:Ljava/lang/String; = "extra_network_type"

.field public static final EXTRA_REQUEST_TIMESTAMP_MS:Ljava/lang/String; = "extra_request_timestamp_ms"

.field public static final EXTRA_RESPONSE_RECEIVED:Ljava/lang/String; = "extra_response_received"

.field public static final EXTRA_RESPONSE_TIMESTAMP_MS:Ljava/lang/String; = "extra_response_timestamp_ms"

.field public static final EXTRA_SSID:Ljava/lang/String; = "extra_ssid"

.field private static final IGNORE_REEVALUATE_ATTEMPTS:I = 0x5

.field private static final INITIAL_REEVALUATE_DELAY_MS:I = 0x3e8

.field private static final INVALID_UID:I = -0x1

.field private static final MAX_REEVALUATE_DELAY_MS:I = 0x927c0

.field public static final NETWORK_TEST_RESULT_INVALID:I = 0x1

.field public static final NETWORK_TEST_RESULT_VALID:I = 0x0

.field private static final PERMISSION_ACCESS_NETWORK_CONDITIONS:Ljava/lang/String; = "android.permission.ACCESS_NETWORK_CONDITIONS"

.field private static final PROBE_TIMEOUT_MS:I = 0xbb8

.field private static final SOCKET_TIMEOUT_MS:I = 0x2710

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mAlarmManager:Landroid/app/AlarmManager;

.field private mAuthCompleted:Z

.field private mCaptivePortalCheckDone:Z

.field private mCaptivePortalReceiver:Landroid/content/BroadcastReceiver;

.field private mCaptivePortalRegistered:Z

.field private final mCaptivePortalState:Lcom/android/internal/util/State;

.field private mCaptivePortalTxCheckSec:I

.field private mConnectivityManager:Landroid/net/ConnectivityManager;

.field private final mConnectivityServiceHandler:Landroid/os/Handler;

.field private final mContext:Landroid/content/Context;

.field private mCountryCode:Ljava/lang/String;

.field private mCurrentTxByteUid:J

.field private mCurrentUid:I

.field private final mDefaultRequest:Landroid/net/NetworkRequest;

.field private final mDefaultState:Lcom/android/internal/util/State;

.field private mDontDisplaySigninNotification:Z

.field private final mEvaluatingState:Lcom/android/internal/util/State;

.field private final mEvaluationTimer:Landroid/net/util/Stopwatch;

.field private mInitialUid:I

.field private mIsCaptivePortalAutoConnectMode:Z

.field private mIsCaptivePortalCheckEnabled:Z

.field private mIsCaptivePortalHunNotified:Z

.field private mIsCaptivePortalLoginActivity:Z

.field private mIsCaptivePortalLoginActivityCreated:Z

.field private mIsNetworkVerified:Z

.field private mIsNoInternetAp:Z

.field private mIsSupportAdvancedCaptivePortal:Z

.field private mIsWaitForScreenOnForHun:Z

.field private mIsWifiOnly:Z

.field private mLastPortalProbeResult:Lcom/android/server/connectivity/NetworkMonitor$CaptivePortalProbeResult;

.field private mLaunchCaptivePortalAppBroadcastReceiver:Lcom/android/server/connectivity/NetworkMonitor$CustomIntentReceiver;

.field private mMDMCaptivePortalBrowserLaunched:Z

.field private final mMaybeNotifyState:Lcom/android/internal/util/State;

.field private final mMetricsLog:Landroid/net/metrics/IpConnectivityLog;

.field private final mNetId:I

.field private final mNetworkAgentInfo:Lcom/android/server/connectivity/NetworkAgentInfo;

.field private mPhoneListener:Lcom/android/server/connectivity/NetworkMonitor$NetworkMonitorPhoneStateListner;

.field final mProcessObserver:Landroid/app/IProcessObserver;

.field private mReevaluateToken:I

.field private mSmartDetectionAvailable:Z

.field private mSmartDetectionPackageName:Ljava/lang/String;

.field private final mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private mUidResponsibleForReeval:I

.field private mUseHttps:Z

.field private mUserDoesNotWant:Z

.field private final mValidatedState:Lcom/android/internal/util/State;

.field mWatchdogChannel:Lcom/android/internal/util/AsyncChannel;

.field private final mWifiManager:Landroid/net/wifi/WifiManager;

.field public systemReady:Z

.field private final validationLogs:Landroid/util/LocalLog;


# direct methods
.method static synthetic -get0()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/server/connectivity/NetworkMonitor;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/server/connectivity/NetworkMonitor;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->mCaptivePortalCheckDone:Z

    return v0
.end method

.method static synthetic -get10(Lcom/android/server/connectivity/NetworkMonitor;)J
    .locals 2

    iget-wide v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->mCurrentTxByteUid:J

    return-wide v0
.end method

.method static synthetic -get11(Lcom/android/server/connectivity/NetworkMonitor;)I
    .locals 1

    iget v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->mCurrentUid:I

    return v0
.end method

.method static synthetic -get12(Lcom/android/server/connectivity/NetworkMonitor;)Landroid/net/NetworkRequest;
    .locals 1

    iget-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->mDefaultRequest:Landroid/net/NetworkRequest;

    return-object v0
.end method

.method static synthetic -get13(Lcom/android/server/connectivity/NetworkMonitor;)Lcom/android/internal/util/State;
    .locals 1

    iget-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->mDefaultState:Lcom/android/internal/util/State;

    return-object v0
.end method

.method static synthetic -get14(Lcom/android/server/connectivity/NetworkMonitor;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->mDontDisplaySigninNotification:Z

    return v0
.end method

.method static synthetic -get15(Lcom/android/server/connectivity/NetworkMonitor;)Lcom/android/internal/util/State;
    .locals 1

    iget-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->mEvaluatingState:Lcom/android/internal/util/State;

    return-object v0
.end method

.method static synthetic -get16(Lcom/android/server/connectivity/NetworkMonitor;)Landroid/net/util/Stopwatch;
    .locals 1

    iget-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->mEvaluationTimer:Landroid/net/util/Stopwatch;

    return-object v0
.end method

.method static synthetic -get17(Lcom/android/server/connectivity/NetworkMonitor;)I
    .locals 1

    iget v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->mInitialUid:I

    return v0
.end method

.method static synthetic -get18(Lcom/android/server/connectivity/NetworkMonitor;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->mIsCaptivePortalAutoConnectMode:Z

    return v0
.end method

.method static synthetic -get19(Lcom/android/server/connectivity/NetworkMonitor;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->mIsCaptivePortalHunNotified:Z

    return v0
.end method

.method static synthetic -get2(Lcom/android/server/connectivity/NetworkMonitor;)Landroid/content/BroadcastReceiver;
    .locals 1

    iget-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->mCaptivePortalReceiver:Landroid/content/BroadcastReceiver;

    return-object v0
.end method

.method static synthetic -get20(Lcom/android/server/connectivity/NetworkMonitor;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->mIsCaptivePortalLoginActivity:Z

    return v0
.end method

.method static synthetic -get21(Lcom/android/server/connectivity/NetworkMonitor;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->mIsCaptivePortalLoginActivityCreated:Z

    return v0
.end method

.method static synthetic -get22(Lcom/android/server/connectivity/NetworkMonitor;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->mIsNetworkVerified:Z

    return v0
.end method

.method static synthetic -get23(Lcom/android/server/connectivity/NetworkMonitor;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->mIsNoInternetAp:Z

    return v0
.end method

.method static synthetic -get24(Lcom/android/server/connectivity/NetworkMonitor;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->mIsSupportAdvancedCaptivePortal:Z

    return v0
.end method

.method static synthetic -get25(Lcom/android/server/connectivity/NetworkMonitor;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->mIsWaitForScreenOnForHun:Z

    return v0
.end method

.method static synthetic -get26(Lcom/android/server/connectivity/NetworkMonitor;)Lcom/android/server/connectivity/NetworkMonitor$CaptivePortalProbeResult;
    .locals 1

    iget-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->mLastPortalProbeResult:Lcom/android/server/connectivity/NetworkMonitor$CaptivePortalProbeResult;

    return-object v0
.end method

.method static synthetic -get27(Lcom/android/server/connectivity/NetworkMonitor;)Lcom/android/server/connectivity/NetworkMonitor$CustomIntentReceiver;
    .locals 1

    iget-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->mLaunchCaptivePortalAppBroadcastReceiver:Lcom/android/server/connectivity/NetworkMonitor$CustomIntentReceiver;

    return-object v0
.end method

.method static synthetic -get28(Lcom/android/server/connectivity/NetworkMonitor;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->mMDMCaptivePortalBrowserLaunched:Z

    return v0
.end method

.method static synthetic -get29(Lcom/android/server/connectivity/NetworkMonitor;)I
    .locals 1

    iget v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->mNetId:I

    return v0
.end method

.method static synthetic -get3(Lcom/android/server/connectivity/NetworkMonitor;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->mCaptivePortalRegistered:Z

    return v0
.end method

.method static synthetic -get30(Lcom/android/server/connectivity/NetworkMonitor;)Lcom/android/server/connectivity/NetworkAgentInfo;
    .locals 1

    iget-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->mNetworkAgentInfo:Lcom/android/server/connectivity/NetworkAgentInfo;

    return-object v0
.end method

.method static synthetic -get31(Lcom/android/server/connectivity/NetworkMonitor;)Lcom/android/server/connectivity/NetworkMonitor$NetworkMonitorPhoneStateListner;
    .locals 1

    iget-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->mPhoneListener:Lcom/android/server/connectivity/NetworkMonitor$NetworkMonitorPhoneStateListner;

    return-object v0
.end method

.method static synthetic -get32(Lcom/android/server/connectivity/NetworkMonitor;)I
    .locals 1

    iget v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->mReevaluateToken:I

    return v0
.end method

.method static synthetic -get33(Lcom/android/server/connectivity/NetworkMonitor;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->mSmartDetectionAvailable:Z

    return v0
.end method

.method static synthetic -get34(Lcom/android/server/connectivity/NetworkMonitor;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->mSmartDetectionPackageName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get35(Lcom/android/server/connectivity/NetworkMonitor;)Landroid/telephony/TelephonyManager;
    .locals 1

    iget-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    return-object v0
.end method

.method static synthetic -get36(Lcom/android/server/connectivity/NetworkMonitor;)I
    .locals 1

    iget v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->mUidResponsibleForReeval:I

    return v0
.end method

.method static synthetic -get37(Lcom/android/server/connectivity/NetworkMonitor;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->mUserDoesNotWant:Z

    return v0
.end method

.method static synthetic -get38(Lcom/android/server/connectivity/NetworkMonitor;)Lcom/android/internal/util/State;
    .locals 1

    iget-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->mValidatedState:Lcom/android/internal/util/State;

    return-object v0
.end method

.method static synthetic -get39(Lcom/android/server/connectivity/NetworkMonitor;)Landroid/net/wifi/WifiManager;
    .locals 1

    iget-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->mWifiManager:Landroid/net/wifi/WifiManager;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/server/connectivity/NetworkMonitor;)Lcom/android/internal/util/State;
    .locals 1

    iget-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->mCaptivePortalState:Lcom/android/internal/util/State;

    return-object v0
.end method

.method static synthetic -get5(Lcom/android/server/connectivity/NetworkMonitor;)I
    .locals 1

    iget v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->mCaptivePortalTxCheckSec:I

    return v0
.end method

.method static synthetic -get6(Lcom/android/server/connectivity/NetworkMonitor;)Landroid/net/ConnectivityManager;
    .locals 1

    iget-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->mConnectivityManager:Landroid/net/ConnectivityManager;

    return-object v0
.end method

.method static synthetic -get7(Lcom/android/server/connectivity/NetworkMonitor;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->mConnectivityServiceHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -get8(Lcom/android/server/connectivity/NetworkMonitor;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get9(Lcom/android/server/connectivity/NetworkMonitor;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->mCountryCode:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/server/connectivity/NetworkMonitor;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/connectivity/NetworkMonitor;->mAuthCompleted:Z

    return p1
.end method

.method static synthetic -set1(Lcom/android/server/connectivity/NetworkMonitor;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/connectivity/NetworkMonitor;->mCaptivePortalCheckDone:Z

    return p1
.end method

.method static synthetic -set10(Lcom/android/server/connectivity/NetworkMonitor;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/connectivity/NetworkMonitor;->mIsCaptivePortalAutoConnectMode:Z

    return p1
.end method

.method static synthetic -set11(Lcom/android/server/connectivity/NetworkMonitor;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/connectivity/NetworkMonitor;->mIsCaptivePortalHunNotified:Z

    return p1
.end method

.method static synthetic -set12(Lcom/android/server/connectivity/NetworkMonitor;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/connectivity/NetworkMonitor;->mIsCaptivePortalLoginActivity:Z

    return p1
.end method

.method static synthetic -set13(Lcom/android/server/connectivity/NetworkMonitor;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/connectivity/NetworkMonitor;->mIsCaptivePortalLoginActivityCreated:Z

    return p1
.end method

.method static synthetic -set14(Lcom/android/server/connectivity/NetworkMonitor;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/connectivity/NetworkMonitor;->mIsNetworkVerified:Z

    return p1
.end method

.method static synthetic -set15(Lcom/android/server/connectivity/NetworkMonitor;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/connectivity/NetworkMonitor;->mIsNoInternetAp:Z

    return p1
.end method

.method static synthetic -set16(Lcom/android/server/connectivity/NetworkMonitor;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/connectivity/NetworkMonitor;->mIsWaitForScreenOnForHun:Z

    return p1
.end method

.method static synthetic -set17(Lcom/android/server/connectivity/NetworkMonitor;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/connectivity/NetworkMonitor;->mIsWifiOnly:Z

    return p1
.end method

.method static synthetic -set18(Lcom/android/server/connectivity/NetworkMonitor;Lcom/android/server/connectivity/NetworkMonitor$CaptivePortalProbeResult;)Lcom/android/server/connectivity/NetworkMonitor$CaptivePortalProbeResult;
    .locals 0

    iput-object p1, p0, Lcom/android/server/connectivity/NetworkMonitor;->mLastPortalProbeResult:Lcom/android/server/connectivity/NetworkMonitor$CaptivePortalProbeResult;

    return-object p1
.end method

.method static synthetic -set19(Lcom/android/server/connectivity/NetworkMonitor;Lcom/android/server/connectivity/NetworkMonitor$CustomIntentReceiver;)Lcom/android/server/connectivity/NetworkMonitor$CustomIntentReceiver;
    .locals 0

    iput-object p1, p0, Lcom/android/server/connectivity/NetworkMonitor;->mLaunchCaptivePortalAppBroadcastReceiver:Lcom/android/server/connectivity/NetworkMonitor$CustomIntentReceiver;

    return-object p1
.end method

.method static synthetic -set2(Lcom/android/server/connectivity/NetworkMonitor;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/connectivity/NetworkMonitor;->mCaptivePortalRegistered:Z

    return p1
.end method

.method static synthetic -set20(Lcom/android/server/connectivity/NetworkMonitor;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/connectivity/NetworkMonitor;->mMDMCaptivePortalBrowserLaunched:Z

    return p1
.end method

.method static synthetic -set21(Lcom/android/server/connectivity/NetworkMonitor;Lcom/android/server/connectivity/NetworkMonitor$NetworkMonitorPhoneStateListner;)Lcom/android/server/connectivity/NetworkMonitor$NetworkMonitorPhoneStateListner;
    .locals 0

    iput-object p1, p0, Lcom/android/server/connectivity/NetworkMonitor;->mPhoneListener:Lcom/android/server/connectivity/NetworkMonitor$NetworkMonitorPhoneStateListner;

    return-object p1
.end method

.method static synthetic -set22(Lcom/android/server/connectivity/NetworkMonitor;I)I
    .locals 0

    iput p1, p0, Lcom/android/server/connectivity/NetworkMonitor;->mReevaluateToken:I

    return p1
.end method

.method static synthetic -set23(Lcom/android/server/connectivity/NetworkMonitor;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/connectivity/NetworkMonitor;->mSmartDetectionAvailable:Z

    return p1
.end method

.method static synthetic -set24(Lcom/android/server/connectivity/NetworkMonitor;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/android/server/connectivity/NetworkMonitor;->mSmartDetectionPackageName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic -set25(Lcom/android/server/connectivity/NetworkMonitor;I)I
    .locals 0

    iput p1, p0, Lcom/android/server/connectivity/NetworkMonitor;->mUidResponsibleForReeval:I

    return p1
.end method

.method static synthetic -set26(Lcom/android/server/connectivity/NetworkMonitor;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/connectivity/NetworkMonitor;->mUseHttps:Z

    return p1
.end method

.method static synthetic -set27(Lcom/android/server/connectivity/NetworkMonitor;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/connectivity/NetworkMonitor;->mUserDoesNotWant:Z

    return p1
.end method

.method static synthetic -set3(Lcom/android/server/connectivity/NetworkMonitor;I)I
    .locals 0

    iput p1, p0, Lcom/android/server/connectivity/NetworkMonitor;->mCaptivePortalTxCheckSec:I

    return p1
.end method

.method static synthetic -set4(Lcom/android/server/connectivity/NetworkMonitor;Landroid/net/ConnectivityManager;)Landroid/net/ConnectivityManager;
    .locals 0

    iput-object p1, p0, Lcom/android/server/connectivity/NetworkMonitor;->mConnectivityManager:Landroid/net/ConnectivityManager;

    return-object p1
.end method

.method static synthetic -set5(Lcom/android/server/connectivity/NetworkMonitor;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/android/server/connectivity/NetworkMonitor;->mCountryCode:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic -set6(Lcom/android/server/connectivity/NetworkMonitor;J)J
    .locals 1

    iput-wide p1, p0, Lcom/android/server/connectivity/NetworkMonitor;->mCurrentTxByteUid:J

    return-wide p1
.end method

.method static synthetic -set7(Lcom/android/server/connectivity/NetworkMonitor;I)I
    .locals 0

    iput p1, p0, Lcom/android/server/connectivity/NetworkMonitor;->mCurrentUid:I

    return p1
.end method

.method static synthetic -set8(Lcom/android/server/connectivity/NetworkMonitor;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/connectivity/NetworkMonitor;->mDontDisplaySigninNotification:Z

    return p1
.end method

.method static synthetic -set9(Lcom/android/server/connectivity/NetworkMonitor;I)I
    .locals 0

    iput p1, p0, Lcom/android/server/connectivity/NetworkMonitor;->mInitialUid:I

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/server/connectivity/NetworkMonitor;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/server/connectivity/NetworkMonitor;->isMobileDataConnected()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/android/server/connectivity/NetworkMonitor;Ljava/lang/String;)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/server/connectivity/NetworkMonitor;->isSmartCPDetectException(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap10(Lcom/android/server/connectivity/NetworkMonitor;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/connectivity/NetworkMonitor;->validationLog(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/server/connectivity/NetworkMonitor;)Lcom/android/internal/util/IState;
    .locals 1

    invoke-virtual {p0}, Lcom/android/server/connectivity/NetworkMonitor;->getCurrentState()Lcom/android/internal/util/IState;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap3(Lcom/android/server/connectivity/NetworkMonitor;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/connectivity/NetworkMonitor;->logNetworkEvent(I)V

    return-void
.end method

.method static synthetic -wrap4(Lcom/android/server/connectivity/NetworkMonitor;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/server/connectivity/NetworkMonitor;->loge(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic -wrap5(Lcom/android/server/connectivity/NetworkMonitor;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/connectivity/NetworkMonitor;->maybeLogEvaluationResult(I)V

    return-void
.end method

.method static synthetic -wrap6(Lcom/android/server/connectivity/NetworkMonitor;)V
    .locals 0

    invoke-virtual {p0}, Lcom/android/server/connectivity/NetworkMonitor;->quit()V

    return-void
.end method

.method static synthetic -wrap7(Lcom/android/server/connectivity/NetworkMonitor;I)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/server/connectivity/NetworkMonitor;->removeMessages(I)V

    return-void
.end method

.method static synthetic -wrap8(Lcom/android/server/connectivity/NetworkMonitor;ZZ)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/server/connectivity/NetworkMonitor;->startLoginActivity(ZZ)V

    return-void
.end method

.method static synthetic -wrap9(Lcom/android/server/connectivity/NetworkMonitor;Lcom/android/internal/util/IState;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/server/connectivity/NetworkMonitor;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/android/server/connectivity/NetworkMonitor;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/connectivity/NetworkMonitor;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Lcom/android/server/connectivity/NetworkAgentInfo;Landroid/net/NetworkRequest;)V
    .locals 6

    new-instance v5, Landroid/net/metrics/IpConnectivityLog;

    invoke-direct {v5}, Landroid/net/metrics/IpConnectivityLog;-><init>()V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/server/connectivity/NetworkMonitor;-><init>(Landroid/content/Context;Landroid/os/Handler;Lcom/android/server/connectivity/NetworkAgentInfo;Landroid/net/NetworkRequest;Landroid/net/metrics/IpConnectivityLog;)V

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;Landroid/os/Handler;Lcom/android/server/connectivity/NetworkAgentInfo;Landroid/net/NetworkRequest;Landroid/net/metrics/IpConnectivityLog;)V
    .locals 7

    const/4 v1, 0x1

    const/4 v6, 0x0

    const/4 v2, 0x0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/android/server/connectivity/NetworkMonitor;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p3}, Lcom/android/server/connectivity/NetworkAgentInfo;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/util/StateMachine;-><init>(Ljava/lang/String;)V

    iput v2, p0, Lcom/android/server/connectivity/NetworkMonitor;->mReevaluateToken:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->mUidResponsibleForReeval:I

    iput-boolean v2, p0, Lcom/android/server/connectivity/NetworkMonitor;->mUserDoesNotWant:Z

    iput-boolean v2, p0, Lcom/android/server/connectivity/NetworkMonitor;->mDontDisplaySigninNotification:Z

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->mSmartDetectionPackageName:Ljava/lang/String;

    iput v2, p0, Lcom/android/server/connectivity/NetworkMonitor;->mCurrentUid:I

    iput v2, p0, Lcom/android/server/connectivity/NetworkMonitor;->mInitialUid:I

    const-wide/16 v4, 0x0

    iput-wide v4, p0, Lcom/android/server/connectivity/NetworkMonitor;->mCurrentTxByteUid:J

    iput v2, p0, Lcom/android/server/connectivity/NetworkMonitor;->mCaptivePortalTxCheckSec:I

    iput-boolean v2, p0, Lcom/android/server/connectivity/NetworkMonitor;->mIsCaptivePortalLoginActivityCreated:Z

    iput-boolean v2, p0, Lcom/android/server/connectivity/NetworkMonitor;->mIsCaptivePortalLoginActivity:Z

    iput-boolean v2, p0, Lcom/android/server/connectivity/NetworkMonitor;->mIsCaptivePortalHunNotified:Z

    iput-boolean v2, p0, Lcom/android/server/connectivity/NetworkMonitor;->mCaptivePortalRegistered:Z

    iput-boolean v2, p0, Lcom/android/server/connectivity/NetworkMonitor;->mCaptivePortalCheckDone:Z

    iput-boolean v2, p0, Lcom/android/server/connectivity/NetworkMonitor;->mAuthCompleted:Z

    iput-boolean v2, p0, Lcom/android/server/connectivity/NetworkMonitor;->mIsCaptivePortalAutoConnectMode:Z

    iput-boolean v2, p0, Lcom/android/server/connectivity/NetworkMonitor;->mIsSupportAdvancedCaptivePortal:Z

    iput-boolean v1, p0, Lcom/android/server/connectivity/NetworkMonitor;->mSmartDetectionAvailable:Z

    iput-boolean v2, p0, Lcom/android/server/connectivity/NetworkMonitor;->mIsNoInternetAp:Z

    iput-boolean v2, p0, Lcom/android/server/connectivity/NetworkMonitor;->mIsNetworkVerified:Z

    iput-object v6, p0, Lcom/android/server/connectivity/NetworkMonitor;->mConnectivityManager:Landroid/net/ConnectivityManager;

    iput-object v6, p0, Lcom/android/server/connectivity/NetworkMonitor;->mPhoneListener:Lcom/android/server/connectivity/NetworkMonitor$NetworkMonitorPhoneStateListner;

    iput-object v6, p0, Lcom/android/server/connectivity/NetworkMonitor;->mWatchdogChannel:Lcom/android/internal/util/AsyncChannel;

    iput-object v6, p0, Lcom/android/server/connectivity/NetworkMonitor;->mCountryCode:Ljava/lang/String;

    iput-boolean v2, p0, Lcom/android/server/connectivity/NetworkMonitor;->mIsWifiOnly:Z

    iput-boolean v2, p0, Lcom/android/server/connectivity/NetworkMonitor;->systemReady:Z

    new-instance v0, Lcom/android/server/connectivity/NetworkMonitor$DefaultState;

    invoke-direct {v0, p0, v6}, Lcom/android/server/connectivity/NetworkMonitor$DefaultState;-><init>(Lcom/android/server/connectivity/NetworkMonitor;Lcom/android/server/connectivity/NetworkMonitor$DefaultState;)V

    iput-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->mDefaultState:Lcom/android/internal/util/State;

    new-instance v0, Lcom/android/server/connectivity/NetworkMonitor$ValidatedState;

    invoke-direct {v0, p0, v6}, Lcom/android/server/connectivity/NetworkMonitor$ValidatedState;-><init>(Lcom/android/server/connectivity/NetworkMonitor;Lcom/android/server/connectivity/NetworkMonitor$ValidatedState;)V

    iput-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->mValidatedState:Lcom/android/internal/util/State;

    new-instance v0, Lcom/android/server/connectivity/NetworkMonitor$MaybeNotifyState;

    invoke-direct {v0, p0, v6}, Lcom/android/server/connectivity/NetworkMonitor$MaybeNotifyState;-><init>(Lcom/android/server/connectivity/NetworkMonitor;Lcom/android/server/connectivity/NetworkMonitor$MaybeNotifyState;)V

    iput-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->mMaybeNotifyState:Lcom/android/internal/util/State;

    new-instance v0, Lcom/android/server/connectivity/NetworkMonitor$EvaluatingState;

    invoke-direct {v0, p0, v6}, Lcom/android/server/connectivity/NetworkMonitor$EvaluatingState;-><init>(Lcom/android/server/connectivity/NetworkMonitor;Lcom/android/server/connectivity/NetworkMonitor$EvaluatingState;)V

    iput-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->mEvaluatingState:Lcom/android/internal/util/State;

    new-instance v0, Lcom/android/server/connectivity/NetworkMonitor$CaptivePortalState;

    invoke-direct {v0, p0, v6}, Lcom/android/server/connectivity/NetworkMonitor$CaptivePortalState;-><init>(Lcom/android/server/connectivity/NetworkMonitor;Lcom/android/server/connectivity/NetworkMonitor$CaptivePortalState;)V

    iput-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->mCaptivePortalState:Lcom/android/internal/util/State;

    iput-object v6, p0, Lcom/android/server/connectivity/NetworkMonitor;->mLaunchCaptivePortalAppBroadcastReceiver:Lcom/android/server/connectivity/NetworkMonitor$CustomIntentReceiver;

    new-instance v0, Landroid/util/LocalLog;

    const/16 v3, 0x14

    invoke-direct {v0, v3}, Landroid/util/LocalLog;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->validationLogs:Landroid/util/LocalLog;

    new-instance v0, Landroid/net/util/Stopwatch;

    invoke-direct {v0}, Landroid/net/util/Stopwatch;-><init>()V

    iput-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->mEvaluationTimer:Landroid/net/util/Stopwatch;

    sget-object v0, Lcom/android/server/connectivity/NetworkMonitor$CaptivePortalProbeResult;->FAILED:Lcom/android/server/connectivity/NetworkMonitor$CaptivePortalProbeResult;

    iput-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->mLastPortalProbeResult:Lcom/android/server/connectivity/NetworkMonitor$CaptivePortalProbeResult;

    iput-boolean v2, p0, Lcom/android/server/connectivity/NetworkMonitor;->mMDMCaptivePortalBrowserLaunched:Z

    iput-boolean v2, p0, Lcom/android/server/connectivity/NetworkMonitor;->mIsWaitForScreenOnForHun:Z

    new-instance v0, Lcom/android/server/connectivity/NetworkMonitor$1;

    invoke-direct {v0, p0}, Lcom/android/server/connectivity/NetworkMonitor$1;-><init>(Lcom/android/server/connectivity/NetworkMonitor;)V

    iput-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->mCaptivePortalReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/android/server/connectivity/NetworkMonitor$2;

    invoke-direct {v0, p0}, Lcom/android/server/connectivity/NetworkMonitor$2;-><init>(Lcom/android/server/connectivity/NetworkMonitor;)V

    iput-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->mProcessObserver:Landroid/app/IProcessObserver;

    iput-object p1, p0, Lcom/android/server/connectivity/NetworkMonitor;->mContext:Landroid/content/Context;

    iput-object p5, p0, Lcom/android/server/connectivity/NetworkMonitor;->mMetricsLog:Landroid/net/metrics/IpConnectivityLog;

    iput-object p2, p0, Lcom/android/server/connectivity/NetworkMonitor;->mConnectivityServiceHandler:Landroid/os/Handler;

    iput-object p3, p0, Lcom/android/server/connectivity/NetworkMonitor;->mNetworkAgentInfo:Lcom/android/server/connectivity/NetworkAgentInfo;

    iget-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->mNetworkAgentInfo:Lcom/android/server/connectivity/NetworkAgentInfo;

    iget-object v0, v0, Lcom/android/server/connectivity/NetworkAgentInfo;->network:Landroid/net/Network;

    iget v0, v0, Landroid/net/Network;->netId:I

    iput v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->mNetId:I

    const-string/jumbo v0, "phone"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    const-string/jumbo v0, "wifi"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->mWifiManager:Landroid/net/wifi/WifiManager;

    const-string/jumbo v0, "alarm"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    iput-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->mAlarmManager:Landroid/app/AlarmManager;

    iput-object p4, p0, Lcom/android/server/connectivity/NetworkMonitor;->mDefaultRequest:Landroid/net/NetworkRequest;

    iget-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->mDefaultState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v0}, Lcom/android/server/connectivity/NetworkMonitor;->addState(Lcom/android/internal/util/State;)V

    iget-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->mValidatedState:Lcom/android/internal/util/State;

    iget-object v3, p0, Lcom/android/server/connectivity/NetworkMonitor;->mDefaultState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v0, v3}, Lcom/android/server/connectivity/NetworkMonitor;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    iget-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->mMaybeNotifyState:Lcom/android/internal/util/State;

    iget-object v3, p0, Lcom/android/server/connectivity/NetworkMonitor;->mDefaultState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v0, v3}, Lcom/android/server/connectivity/NetworkMonitor;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    iget-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->mEvaluatingState:Lcom/android/internal/util/State;

    iget-object v3, p0, Lcom/android/server/connectivity/NetworkMonitor;->mMaybeNotifyState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v0, v3}, Lcom/android/server/connectivity/NetworkMonitor;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    iget-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->mCaptivePortalState:Lcom/android/internal/util/State;

    iget-object v3, p0, Lcom/android/server/connectivity/NetworkMonitor;->mMaybeNotifyState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v0, v3}, Lcom/android/server/connectivity/NetworkMonitor;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    iget-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->mDefaultState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v0}, Lcom/android/server/connectivity/NetworkMonitor;->setInitialState(Lcom/android/internal/util/State;)V

    iget-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v3, "captive_portal_detection_enabled"

    invoke-static {v0, v3, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_1

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->mIsCaptivePortalCheckEnabled:Z

    iget-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v3, "captive_portal_use_https"

    invoke-static {v0, v3, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_2

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->mUseHttps:Z

    invoke-virtual {p0}, Lcom/android/server/connectivity/NetworkMonitor;->start()V

    iget-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->mNetworkAgentInfo:Lcom/android/server/connectivity/NetworkAgentInfo;

    iget-object v0, v0, Lcom/android/server/connectivity/NetworkAgentInfo;->networkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v0

    if-ne v0, v1, :cond_0

    invoke-static {}, Landroid/net/wifi/WifiManager;->showWebBrowserAtCaptivePortal()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_0
    :goto_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mIsSupportAdvancedCaptivePortal is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/connectivity/NetworkMonitor;->mIsSupportAdvancedCaptivePortal:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/connectivity/NetworkMonitor;->log(Ljava/lang/String;)V

    return-void

    :cond_1
    move v0, v2

    goto :goto_0

    :cond_2
    move v0, v2

    goto :goto_1

    :cond_3
    const-string/jumbo v0, "ro.radio.noril"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    iput-boolean v1, p0, Lcom/android/server/connectivity/NetworkMonitor;->mIsSupportAdvancedCaptivePortal:Z

    iget-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->mWatchdogChannel:Lcom/android/internal/util/AsyncChannel;

    if-nez v0, :cond_4

    new-instance v0, Lcom/android/internal/util/AsyncChannel;

    invoke-direct {v0}, Lcom/android/internal/util/AsyncChannel;-><init>()V

    iput-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->mWatchdogChannel:Lcom/android/internal/util/AsyncChannel;

    :cond_4
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->mWatchdogChannel:Lcom/android/internal/util/AsyncChannel;

    iget-object v1, p0, Lcom/android/server/connectivity/NetworkMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/android/server/connectivity/NetworkMonitor;->getHandler()Landroid/os/Handler;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/connectivity/NetworkMonitor;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->getWifiWatchdogMessenger()Landroid/os/Messenger;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/util/AsyncChannel;->connect(Landroid/content/Context;Landroid/os/Handler;Landroid/os/Messenger;)V

    goto :goto_2
.end method

.method private static getCaptivePortalFallbackUrl(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    const-string/jumbo v0, "captive_portal_fallback_url"

    const-string/jumbo v1, "http://www.google.com/gen_204"

    invoke-static {p0, v0, v1}, Lcom/android/server/connectivity/NetworkMonitor;->getSetting(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getCaptivePortalServerHttpUrl(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    const-string/jumbo v0, "captive_portal_http_url"

    const-string/jumbo v1, "http://connectivitycheck.gstatic.com/generate_204"

    invoke-static {p0, v0, v1}, Lcom/android/server/connectivity/NetworkMonitor;->getSetting(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getCaptivePortalServerHttpsUrl(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    const-string/jumbo v0, "captive_portal_https_url"

    const-string/jumbo v1, "https://www.google.com/generate_204"

    invoke-static {p0, v0, v1}, Lcom/android/server/connectivity/NetworkMonitor;->getSetting(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getCaptivePortalUserAgent(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    const-string/jumbo v0, "captive_portal_user_agent"

    const-string/jumbo v1, "Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/52.0.2743.82 Safari/537.36"

    invoke-static {p0, v0, v1}, Lcom/android/server/connectivity/NetworkMonitor;->getSetting(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getSetting(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v1, p1}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    move-object v0, p2

    goto :goto_0
.end method

.method private isMobileDataConnected()Z
    .locals 2

    iget-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDataState()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private isSmartCPDetectException(Ljava/lang/String;)Z
    .locals 2

    const-string/jumbo v0, "com.android.captiveportallogin"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "com.sec.android.app.launcher"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "isSmartCPDetectException - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " is Exception on SmartCPDetect!!"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/connectivity/NetworkMonitor;->log(Ljava/lang/String;)V

    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private logNetworkEvent(I)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->mMetricsLog:Landroid/net/metrics/IpConnectivityLog;

    new-instance v1, Landroid/net/metrics/NetworkEvent;

    iget v2, p0, Lcom/android/server/connectivity/NetworkMonitor;->mNetId:I

    invoke-direct {v1, v2, p1}, Landroid/net/metrics/NetworkEvent;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/net/metrics/IpConnectivityLog;->log(Landroid/os/Parcelable;)V

    return-void
.end method

.method private logValidationProbe(JII)V
    .locals 7

    iget-object v6, p0, Lcom/android/server/connectivity/NetworkMonitor;->mMetricsLog:Landroid/net/metrics/IpConnectivityLog;

    new-instance v0, Landroid/net/metrics/ValidationProbeEvent;

    iget v1, p0, Lcom/android/server/connectivity/NetworkMonitor;->mNetId:I

    move-wide v2, p1

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Landroid/net/metrics/ValidationProbeEvent;-><init>(IJII)V

    invoke-virtual {v6, v0}, Landroid/net/metrics/IpConnectivityLog;->log(Landroid/os/Parcelable;)V

    return-void
.end method

.method private makeURL(Ljava/lang/String;)Ljava/net/URL;
    .locals 4

    const/4 v3, 0x0

    if-eqz p1, :cond_0

    :try_start_0
    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Bad URL: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/connectivity/NetworkMonitor;->validationLog(Ljava/lang/String;)V

    :cond_0
    return-object v3
.end method

.method private maybeLogEvaluationResult(I)V
    .locals 6

    iget-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->mEvaluationTimer:Landroid/net/util/Stopwatch;

    invoke-virtual {v0}, Landroid/net/util/Stopwatch;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->mMetricsLog:Landroid/net/metrics/IpConnectivityLog;

    new-instance v1, Landroid/net/metrics/NetworkEvent;

    iget v2, p0, Lcom/android/server/connectivity/NetworkMonitor;->mNetId:I

    iget-object v3, p0, Lcom/android/server/connectivity/NetworkMonitor;->mEvaluationTimer:Landroid/net/util/Stopwatch;

    invoke-virtual {v3}, Landroid/net/util/Stopwatch;->stop()J

    move-result-wide v4

    invoke-direct {v1, v2, p1, v4, v5}, Landroid/net/metrics/NetworkEvent;-><init>(IIJ)V

    invoke-virtual {v0, v1}, Landroid/net/metrics/IpConnectivityLog;->log(Landroid/os/Parcelable;)V

    iget-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->mEvaluationTimer:Landroid/net/util/Stopwatch;

    invoke-virtual {v0}, Landroid/net/util/Stopwatch;->reset()V

    :cond_0
    return-void
.end method

.method private sendNetworkConditionsBroadcast(ZZJJ)V
    .locals 15

    iget-object v12, p0, Lcom/android/server/connectivity/NetworkMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v12}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    const-string/jumbo v13, "wifi_scan_always_enabled"

    const/4 v14, 0x0

    invoke-static {v12, v13, v14}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v12

    if-nez v12, :cond_0

    return-void

    :cond_0
    iget-boolean v12, p0, Lcom/android/server/connectivity/NetworkMonitor;->systemReady:Z

    if-nez v12, :cond_1

    return-void

    :cond_1
    new-instance v10, Landroid/content/Intent;

    const-string/jumbo v12, "android.net.conn.NETWORK_CONDITIONS_MEASURED"

    invoke-direct {v10, v12}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v12, p0, Lcom/android/server/connectivity/NetworkMonitor;->mNetworkAgentInfo:Lcom/android/server/connectivity/NetworkAgentInfo;

    iget-object v12, v12, Lcom/android/server/connectivity/NetworkAgentInfo;->networkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v12}, Landroid/net/NetworkInfo;->getType()I

    move-result v12

    packed-switch v12, :pswitch_data_0

    return-void

    :pswitch_0
    iget-object v12, p0, Lcom/android/server/connectivity/NetworkMonitor;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v12}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v8

    if-eqz v8, :cond_4

    const-string/jumbo v12, "extra_ssid"

    invoke-virtual {v8}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v10, v12, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v12, "extra_bssid"

    invoke-virtual {v8}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v10, v12, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_2
    const-string/jumbo v12, "extra_connectivity_type"

    iget-object v13, p0, Lcom/android/server/connectivity/NetworkMonitor;->mNetworkAgentInfo:Lcom/android/server/connectivity/NetworkAgentInfo;

    iget-object v13, v13, Lcom/android/server/connectivity/NetworkAgentInfo;->networkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v13}, Landroid/net/NetworkInfo;->getType()I

    move-result v13

    invoke-virtual {v10, v12, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v12, "extra_response_received"

    move/from16 v0, p1

    invoke-virtual {v10, v12, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string/jumbo v12, "extra_request_timestamp_ms"

    move-wide/from16 v0, p3

    invoke-virtual {v10, v12, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    if-eqz p1, :cond_3

    const-string/jumbo v12, "extra_is_captive_portal"

    move/from16 v0, p2

    invoke-virtual {v10, v12, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string/jumbo v12, "extra_response_timestamp_ms"

    move-wide/from16 v0, p5

    invoke-virtual {v10, v12, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    :cond_3
    iget-object v12, p0, Lcom/android/server/connectivity/NetworkMonitor;->mContext:Landroid/content/Context;

    sget-object v13, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    const-string/jumbo v14, "android.permission.ACCESS_NETWORK_CONDITIONS"

    invoke-virtual {v12, v10, v13, v14}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    return-void

    :cond_4
    const-string/jumbo v12, "network info is TYPE_WIFI but no ConnectionInfo found"

    invoke-virtual {p0, v12}, Lcom/android/server/connectivity/NetworkMonitor;->logw(Ljava/lang/String;)V

    return-void

    :pswitch_1
    const-string/jumbo v12, "extra_network_type"

    iget-object v13, p0, Lcom/android/server/connectivity/NetworkMonitor;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v13}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v13

    invoke-virtual {v10, v12, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v12, p0, Lcom/android/server/connectivity/NetworkMonitor;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v12}, Landroid/telephony/TelephonyManager;->getAllCellInfo()Ljava/util/List;

    move-result-object v9

    if-nez v9, :cond_5

    return-void

    :cond_5
    const/4 v11, 0x0

    invoke-interface {v9}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_6
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_2

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/telephony/CellInfo;

    invoke-virtual {v6}, Landroid/telephony/CellInfo;->isRegistered()Z

    move-result v12

    if-eqz v12, :cond_6

    add-int/lit8 v11, v11, 0x1

    const/4 v12, 0x1

    if-le v11, v12, :cond_7

    const-string/jumbo v12, "more than one registered CellInfo.  Can\'t tell which is active.  Bailing."

    invoke-virtual {p0, v12}, Lcom/android/server/connectivity/NetworkMonitor;->log(Ljava/lang/String;)V

    return-void

    :cond_7
    instance-of v12, v6, Landroid/telephony/CellInfoCdma;

    if-eqz v12, :cond_8

    check-cast v6, Landroid/telephony/CellInfoCdma;

    invoke-virtual {v6}, Landroid/telephony/CellInfoCdma;->getCellIdentity()Landroid/telephony/CellIdentityCdma;

    move-result-object v2

    const-string/jumbo v12, "extra_cellid"

    invoke-virtual {v10, v12, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    goto :goto_0

    :cond_8
    instance-of v12, v6, Landroid/telephony/CellInfoGsm;

    if-eqz v12, :cond_9

    check-cast v6, Landroid/telephony/CellInfoGsm;

    invoke-virtual {v6}, Landroid/telephony/CellInfoGsm;->getCellIdentity()Landroid/telephony/CellIdentityGsm;

    move-result-object v3

    const-string/jumbo v12, "extra_cellid"

    invoke-virtual {v10, v12, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    goto :goto_0

    :cond_9
    instance-of v12, v6, Landroid/telephony/CellInfoLte;

    if-eqz v12, :cond_a

    check-cast v6, Landroid/telephony/CellInfoLte;

    invoke-virtual {v6}, Landroid/telephony/CellInfoLte;->getCellIdentity()Landroid/telephony/CellIdentityLte;

    move-result-object v4

    const-string/jumbo v12, "extra_cellid"

    invoke-virtual {v10, v12, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    goto :goto_0

    :cond_a
    instance-of v12, v6, Landroid/telephony/CellInfoWcdma;

    if-eqz v12, :cond_b

    check-cast v6, Landroid/telephony/CellInfoWcdma;

    invoke-virtual {v6}, Landroid/telephony/CellInfoWcdma;->getCellIdentity()Landroid/telephony/CellIdentityWcdma;

    move-result-object v5

    const-string/jumbo v12, "extra_cellid"

    invoke-virtual {v10, v12, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    goto :goto_0

    :cond_b
    const-string/jumbo v12, "Registered cellinfo is unrecognized"

    invoke-virtual {p0, v12}, Lcom/android/server/connectivity/NetworkMonitor;->logw(Ljava/lang/String;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private sendParallelHttpProbes(Ljava/net/URL;Ljava/net/URL;Ljava/net/URL;)Lcom/android/server/connectivity/NetworkMonitor$CaptivePortalProbeResult;
    .locals 18

    new-instance v7, Ljava/util/concurrent/CountDownLatch;

    const/4 v3, 0x2

    invoke-direct {v7, v3}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    new-instance v2, Lcom/android/server/connectivity/NetworkMonitor$1ProbeThread;

    const/4 v4, 0x1

    move-object/from16 v3, p0

    move-object/from16 v5, p1

    move-object/from16 v6, p2

    invoke-direct/range {v2 .. v7}, Lcom/android/server/connectivity/NetworkMonitor$1ProbeThread;-><init>(Lcom/android/server/connectivity/NetworkMonitor;ZLjava/net/URL;Ljava/net/URL;Ljava/util/concurrent/CountDownLatch;)V

    new-instance v8, Lcom/android/server/connectivity/NetworkMonitor$1ProbeThread;

    const/4 v10, 0x0

    move-object/from16 v9, p0

    move-object/from16 v11, p1

    move-object/from16 v12, p2

    move-object v13, v7

    invoke-direct/range {v8 .. v13}, Lcom/android/server/connectivity/NetworkMonitor$1ProbeThread;-><init>(Lcom/android/server/connectivity/NetworkMonitor;ZLjava/net/URL;Ljava/net/URL;Ljava/util/concurrent/CountDownLatch;)V

    :try_start_0
    invoke-virtual {v2}, Lcom/android/server/connectivity/NetworkMonitor$1ProbeThread;->start()V

    invoke-virtual {v8}, Lcom/android/server/connectivity/NetworkMonitor$1ProbeThread;->start()V

    const-wide/16 v4, 0xbb8

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v7, v4, v5, v3}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {v2}, Lcom/android/server/connectivity/NetworkMonitor$1ProbeThread;->result()Lcom/android/server/connectivity/NetworkMonitor$CaptivePortalProbeResult;

    move-result-object v16

    invoke-virtual {v8}, Lcom/android/server/connectivity/NetworkMonitor$1ProbeThread;->result()Lcom/android/server/connectivity/NetworkMonitor$CaptivePortalProbeResult;

    move-result-object v15

    invoke-virtual {v15}, Lcom/android/server/connectivity/NetworkMonitor$CaptivePortalProbeResult;->isPortal()Z

    move-result v3

    if-eqz v3, :cond_0

    return-object v15

    :catch_0
    move-exception v14

    const-string/jumbo v3, "Error: probes wait interrupted!"

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/server/connectivity/NetworkMonitor;->validationLog(Ljava/lang/String;)V

    sget-object v3, Lcom/android/server/connectivity/NetworkMonitor$CaptivePortalProbeResult;->FAILED:Lcom/android/server/connectivity/NetworkMonitor$CaptivePortalProbeResult;

    return-object v3

    :cond_0
    invoke-virtual/range {v16 .. v16}, Lcom/android/server/connectivity/NetworkMonitor$CaptivePortalProbeResult;->isPortal()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual/range {v16 .. v16}, Lcom/android/server/connectivity/NetworkMonitor$CaptivePortalProbeResult;->isSuccessful()Z

    move-result v3

    if-eqz v3, :cond_2

    :cond_1
    return-object v16

    :cond_2
    if-eqz p3, :cond_3

    const/4 v3, 0x4

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v3}, Lcom/android/server/connectivity/NetworkMonitor;->sendHttpProbe(Ljava/net/URL;I)Lcom/android/server/connectivity/NetworkMonitor$CaptivePortalProbeResult;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/android/server/connectivity/NetworkMonitor$CaptivePortalProbeResult;->isPortal()Z

    move-result v3

    if-eqz v3, :cond_3

    return-object v17

    :cond_3
    :try_start_1
    invoke-virtual {v2}, Lcom/android/server/connectivity/NetworkMonitor$1ProbeThread;->join()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    invoke-virtual {v2}, Lcom/android/server/connectivity/NetworkMonitor$1ProbeThread;->result()Lcom/android/server/connectivity/NetworkMonitor$CaptivePortalProbeResult;

    move-result-object v3

    return-object v3

    :catch_1
    move-exception v14

    const-string/jumbo v3, "Error: https probe wait interrupted!"

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/server/connectivity/NetworkMonitor;->validationLog(Ljava/lang/String;)V

    sget-object v3, Lcom/android/server/connectivity/NetworkMonitor$CaptivePortalProbeResult;->FAILED:Lcom/android/server/connectivity/NetworkMonitor$CaptivePortalProbeResult;

    return-object v3
.end method

.method private startLoginActivity(ZZ)V
    .locals 6

    iget-boolean v3, p0, Lcom/android/server/connectivity/NetworkMonitor;->mIsCaptivePortalLoginActivityCreated:Z

    if-eqz v3, :cond_0

    if-eqz p2, :cond_2

    :cond_0
    iget-object v3, p0, Lcom/android/server/connectivity/NetworkMonitor;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "power"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/PowerManager;

    invoke-virtual {v2}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v3

    if-eqz v3, :cond_3

    const-string/jumbo v3, "FINISH"

    const-string/jumbo v4, "persist.sys.setupwizard"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    if-eqz p1, :cond_1

    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/server/connectivity/NetworkMonitor;->mIsCaptivePortalLoginActivityCreated:Z

    :cond_1
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v3, "android.net.conn.CAPTIVE_PORTAL"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v3, Landroid/content/ComponentName;

    const-string/jumbo v4, "com.android.captiveportallogin"

    const-string/jumbo v5, "com.android.captiveportallogin.CaptivePortalLoginActivity"

    invoke-direct {v3, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const-string/jumbo v3, "android.net.extra.NETWORK"

    iget-object v4, p0, Lcom/android/server/connectivity/NetworkMonitor;->mNetworkAgentInfo:Lcom/android/server/connectivity/NetworkAgentInfo;

    iget-object v4, v4, Lcom/android/server/connectivity/NetworkAgentInfo;->network:Landroid/net/Network;

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string/jumbo v3, "android.net.extra.CAPTIVE_PORTAL"

    new-instance v4, Landroid/net/CaptivePortal;

    new-instance v5, Lcom/android/server/connectivity/NetworkMonitor$3;

    invoke-direct {v5, p0}, Lcom/android/server/connectivity/NetworkMonitor$3;-><init>(Lcom/android/server/connectivity/NetworkMonitor;)V

    invoke-direct {v4, v5}, Landroid/net/CaptivePortal;-><init>(Landroid/os/IBinder;)V

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string/jumbo v3, "android.net.extra.CAPTIVE_PORTAL_SMART_DETECTION"

    invoke-virtual {v1, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/high16 v3, 0x10c00000

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    iget-object v3, p0, Lcom/android/server/connectivity/NetworkMonitor;->mContext:Landroid/content/Context;

    sget-object v4, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v3, v1, v4}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    if-nez p2, :cond_2

    const-wide/16 v4, 0xbb8

    const v3, 0x82013

    invoke-virtual {p0, v3, v4, v5}, Lcom/android/server/connectivity/NetworkMonitor;->sendMessageDelayed(IJ)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_0
    return-void

    :catch_0
    move-exception v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Exception occured while StartActivity: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/server/connectivity/NetworkMonitor;->loge(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    const-string/jumbo v3, "Captive portal is detected, but DO NOT start login activity"

    invoke-virtual {p0, v3}, Lcom/android/server/connectivity/NetworkMonitor;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private validationLog(Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p0, p1}, Lcom/android/server/connectivity/NetworkMonitor;->log(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->validationLogs:Landroid/util/LocalLog;

    invoke-virtual {v0, p1}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public doQuit()V
    .locals 0

    invoke-virtual {p0}, Lcom/android/server/connectivity/NetworkMonitor;->quitNow()V

    return-void
.end method

.method public getValidationLogs()Landroid/util/LocalLog$ReadOnlyLocalLog;
    .locals 1

    iget-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->validationLogs:Landroid/util/LocalLog;

    invoke-virtual {v0}, Landroid/util/LocalLog;->readOnlyLocalLog()Landroid/util/LocalLog$ReadOnlyLocalLog;

    move-result-object v0

    return-object v0
.end method

.method protected isCaptivePortal()Lcom/android/server/connectivity/NetworkMonitor$CaptivePortalProbeResult;
    .locals 29

    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/server/connectivity/NetworkMonitor;->mIsCaptivePortalCheckEnabled:Z

    if-nez v5, :cond_0

    new-instance v5, Lcom/android/server/connectivity/NetworkMonitor$CaptivePortalProbeResult;

    const/16 v6, 0xcc

    invoke-direct {v5, v6}, Lcom/android/server/connectivity/NetworkMonitor$CaptivePortalProbeResult;-><init>(I)V

    return-object v5

    :cond_0
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/server/connectivity/NetworkMonitor;->mIsWifiOnly:Z

    if-eqz v5, :cond_2

    const-string/jumbo v5, "cn"

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/connectivity/NetworkMonitor;->mCountryCode:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    const-string/jumbo v5, "hk"

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/connectivity/NetworkMonitor;->mCountryCode:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    :cond_1
    const-string/jumbo v5, "Skip Internet check for Wi-Fi only chinese model."

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/server/connectivity/NetworkMonitor;->log(Ljava/lang/String;)V

    new-instance v5, Lcom/android/server/connectivity/NetworkMonitor$CaptivePortalProbeResult;

    const/16 v6, 0xcc

    invoke-direct {v5, v6}, Lcom/android/server/connectivity/NetworkMonitor$CaptivePortalProbeResult;-><init>(I)V

    return-object v5

    :cond_2
    const/16 v24, 0x0

    const/16 v22, 0x0

    const/16 v21, 0x0

    const/16 v19, 0x0

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/connectivity/NetworkMonitor;->mNetworkAgentInfo:Lcom/android/server/connectivity/NetworkAgentInfo;

    iget-object v5, v5, Lcom/android/server/connectivity/NetworkAgentInfo;->linkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v5}, Landroid/net/LinkProperties;->getHttpProxy()Landroid/net/ProxyInfo;

    move-result-object v27

    if-eqz v27, :cond_3

    sget-object v5, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    invoke-virtual/range {v27 .. v27}, Landroid/net/ProxyInfo;->getPacFileUrl()Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    :cond_3
    if-nez v24, :cond_6

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/connectivity/NetworkMonitor;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/android/server/connectivity/NetworkMonitor;->getCaptivePortalServerHttpsUrl(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/android/server/connectivity/NetworkMonitor;->makeURL(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/connectivity/NetworkMonitor;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/android/server/connectivity/NetworkMonitor;->getCaptivePortalServerHttpUrl(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/android/server/connectivity/NetworkMonitor;->makeURL(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/connectivity/NetworkMonitor;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/android/server/connectivity/NetworkMonitor;->getCaptivePortalFallbackUrl(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/android/server/connectivity/NetworkMonitor;->makeURL(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v19

    if-eqz v21, :cond_4

    if-nez v22, :cond_6

    :cond_4
    sget-object v5, Lcom/android/server/connectivity/NetworkMonitor$CaptivePortalProbeResult;->FAILED:Lcom/android/server/connectivity/NetworkMonitor$CaptivePortalProbeResult;

    return-object v5

    :cond_5
    invoke-virtual/range {v27 .. v27}, Landroid/net/ProxyInfo;->getPacFileUrl()Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/android/server/connectivity/NetworkMonitor;->makeURL(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v24

    if-nez v24, :cond_3

    sget-object v5, Lcom/android/server/connectivity/NetworkMonitor$CaptivePortalProbeResult;->FAILED:Lcom/android/server/connectivity/NetworkMonitor$CaptivePortalProbeResult;

    return-object v5

    :cond_6
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    const/16 v20, 0x0

    if-eqz v24, :cond_8

    invoke-virtual/range {v24 .. v24}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v20

    :goto_0
    invoke-static/range {v20 .. v20}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_b

    const/4 v5, 0x0

    invoke-static {v5}, Landroid/net/metrics/ValidationProbeEvent;->getProbeName(I)Ljava/lang/String;

    move-result-object v26

    new-instance v5, Landroid/net/util/Stopwatch;

    invoke-direct {v5}, Landroid/net/util/Stopwatch;-><init>()V

    invoke-virtual {v5}, Landroid/net/util/Stopwatch;->start()Landroid/net/util/Stopwatch;

    move-result-object v17

    :try_start_0
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/connectivity/NetworkMonitor;->mNetworkAgentInfo:Lcom/android/server/connectivity/NetworkAgentInfo;

    iget-object v5, v5, Lcom/android/server/connectivity/NetworkAgentInfo;->network:Landroid/net/Network;

    move-object/from16 v0, v20

    invoke-virtual {v5, v0}, Landroid/net/Network;->getAllByName(Ljava/lang/String;)[Ljava/net/InetAddress;

    move-result-object v12

    const/16 v16, 0x1

    invoke-virtual/range {v17 .. v17}, Landroid/net/util/Stopwatch;->stop()J

    move-result-wide v14

    new-instance v13, Ljava/lang/StringBuffer;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v20

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v13, v5}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const/4 v5, 0x0

    array-length v6, v12

    :goto_1
    if-ge v5, v6, :cond_a

    aget-object v4, v12, v5

    invoke-virtual {v4}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v13, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    array-length v7, v12

    add-int/lit8 v7, v7, -0x1

    aget-object v7, v12, v7

    if-eq v4, v7, :cond_7

    const-string/jumbo v7, ","

    invoke-virtual {v13, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_7
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_8
    if-eqz v27, :cond_9

    invoke-virtual/range {v27 .. v27}, Landroid/net/ProxyInfo;->getHost()Ljava/lang/String;

    move-result-object v20

    goto :goto_0

    :cond_9
    invoke-virtual/range {v21 .. v21}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v20

    goto :goto_0

    :cond_a
    :try_start_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v26

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " OK "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "ms"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/android/server/connectivity/NetworkMonitor;->validationLog(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/net/UnknownHostException; {:try_start_1 .. :try_end_1} :catch_0

    :goto_2
    const/4 v5, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v14, v15, v5, v1}, Lcom/android/server/connectivity/NetworkMonitor;->logValidationProbe(JII)V

    :cond_b
    if-eqz v24, :cond_d

    const/4 v5, 0x3

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1, v5}, Lcom/android/server/connectivity/NetworkMonitor;->sendHttpProbe(Ljava/net/URL;I)Lcom/android/server/connectivity/NetworkMonitor$CaptivePortalProbeResult;

    move-result-object v28

    :goto_3
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v10

    invoke-virtual/range {v28 .. v28}, Lcom/android/server/connectivity/NetworkMonitor$CaptivePortalProbeResult;->isPortal()Z

    move-result v7

    const/4 v6, 0x1

    move-object/from16 v5, p0

    invoke-direct/range {v5 .. v11}, Lcom/android/server/connectivity/NetworkMonitor;->sendNetworkConditionsBroadcast(ZZJJ)V

    invoke-virtual/range {v28 .. v28}, Lcom/android/server/connectivity/NetworkMonitor$CaptivePortalProbeResult;->isPortal()Z

    move-result v5

    if-eqz v5, :cond_c

    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/android/server/connectivity/NetworkMonitor$CaptivePortalProbeResult;->redirectUrl:Ljava/lang/String;

    move-object/from16 v25, v0

    sget-object v5, Lcom/android/server/connectivity/NetworkMonitor;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "portalURL = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v25

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v23, Landroid/content/Intent;

    const-string/jumbo v5, "com.samsung.android.knox.intent.action.CAPTIVE_PORTAL_DETECTED_INTERNAL"

    move-object/from16 v0, v23

    invoke-direct {v0, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v5, "com.samsung.android.knox.intent.extra.EXTRA_CAPTIVE_PORTAL_URL_INTERNAL"

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    invoke-virtual {v0, v5, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/connectivity/NetworkMonitor;->mContext:Landroid/content/Context;

    move-object/from16 v0, v23

    invoke-virtual {v5, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    :cond_c
    return-object v28

    :catch_0
    move-exception v18

    const/16 v16, 0x0

    invoke-virtual/range {v17 .. v17}, Landroid/net/util/Stopwatch;->stop()J

    move-result-wide v14

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v26

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " FAIL "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "ms, "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v20

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/android/server/connectivity/NetworkMonitor;->validationLog(Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_d
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/server/connectivity/NetworkMonitor;->mUseHttps:Z

    if-eqz v5, :cond_e

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, v21

    move-object/from16 v3, v19

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/connectivity/NetworkMonitor;->sendParallelHttpProbes(Ljava/net/URL;Ljava/net/URL;Ljava/net/URL;)Lcom/android/server/connectivity/NetworkMonitor$CaptivePortalProbeResult;

    move-result-object v28

    goto/16 :goto_3

    :cond_e
    const/4 v5, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1, v5}, Lcom/android/server/connectivity/NetworkMonitor;->sendHttpProbe(Ljava/net/URL;I)Lcom/android/server/connectivity/NetworkMonitor$CaptivePortalProbeResult;

    move-result-object v28

    goto/16 :goto_3
.end method

.method protected log(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/android/server/connectivity/NetworkMonitor;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/connectivity/NetworkMonitor;->mNetworkAgentInfo:Lcom/android/server/connectivity/NetworkAgentInfo;

    invoke-virtual {v1}, Lcom/android/server/connectivity/NetworkAgentInfo;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected sendHttpProbe(Ljava/net/URL;I)Lcom/android/server/connectivity/NetworkMonitor$CaptivePortalProbeResult;
    .locals 16

    const/4 v10, 0x0

    const/16 v3, 0x257

    const/4 v5, 0x0

    new-instance v12, Landroid/net/util/Stopwatch;

    invoke-direct {v12}, Landroid/net/util/Stopwatch;-><init>()V

    invoke-virtual {v12}, Landroid/net/util/Stopwatch;->start()Landroid/net/util/Stopwatch;

    move-result-object v4

    :try_start_0
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/connectivity/NetworkMonitor;->mNetworkAgentInfo:Lcom/android/server/connectivity/NetworkAgentInfo;

    iget-object v12, v12, Lcom/android/server/connectivity/NetworkAgentInfo;->network:Landroid/net/Network;

    move-object/from16 v0, p1

    invoke-virtual {v12, v0}, Landroid/net/Network;->openConnection(Ljava/net/URL;)Ljava/net/URLConnection;

    move-result-object v12

    move-object v0, v12

    check-cast v0, Ljava/net/HttpURLConnection;

    move-object v10, v0

    const/4 v12, 0x3

    move/from16 v0, p2

    if-ne v0, v12, :cond_4

    const/4 v12, 0x1

    :goto_0
    invoke-virtual {v10, v12}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    const/16 v12, 0x2710

    invoke-virtual {v10, v12}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    const/16 v12, 0x2710

    invoke-virtual {v10, v12}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    const/4 v12, 0x0

    invoke-virtual {v10, v12}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/connectivity/NetworkMonitor;->mContext:Landroid/content/Context;

    invoke-static {v12}, Lcom/android/server/connectivity/NetworkMonitor;->getCaptivePortalUserAgent(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v11

    if-eqz v11, :cond_0

    const-string/jumbo v12, "User-Agent"

    invoke-virtual {v10, v12, v11}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    invoke-virtual {v10}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v3

    const-string/jumbo v12, "location"

    invoke-virtual {v10, v12}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static/range {p2 .. p2}, Landroid/net/metrics/ValidationProbeEvent;->getProbeName(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, " "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p1

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, " time="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    sub-long v14, v8, v6

    invoke-virtual {v12, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, "ms"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, " ret="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, " headers="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v10}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/android/server/connectivity/NetworkMonitor;->validationLog(Ljava/lang/String;)V

    const/16 v12, 0xc8

    if-ne v3, v12, :cond_1

    invoke-virtual {v10}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result v12

    if-nez v12, :cond_1

    const-string/jumbo v12, "Empty 200 response interpreted as 204 response."

    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/android/server/connectivity/NetworkMonitor;->validationLog(Ljava/lang/String;)V

    const/16 v3, 0xcc

    :cond_1
    const/16 v12, 0xc8

    if-ne v3, v12, :cond_2

    const/4 v12, 0x3

    move/from16 v0, p2

    if-ne v0, v12, :cond_2

    const-string/jumbo v12, "PAC fetch 200 response interpreted as 204 response."

    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/android/server/connectivity/NetworkMonitor;->validationLog(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 v3, 0xcc

    :cond_2
    if-eqz v10, :cond_3

    invoke-virtual {v10}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_3
    :goto_1
    invoke-virtual {v4}, Landroid/net/util/Stopwatch;->stop()J

    move-result-wide v12

    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v12, v13, v1, v3}, Lcom/android/server/connectivity/NetworkMonitor;->logValidationProbe(JII)V

    new-instance v12, Lcom/android/server/connectivity/NetworkMonitor$CaptivePortalProbeResult;

    invoke-virtual/range {p1 .. p1}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v3, v5, v13}, Lcom/android/server/connectivity/NetworkMonitor$CaptivePortalProbeResult;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    return-object v12

    :cond_4
    const/4 v12, 0x0

    goto/16 :goto_0

    :catch_0
    move-exception v2

    :try_start_1
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "Probably not a portal: exception "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/android/server/connectivity/NetworkMonitor;->validationLog(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/16 v12, 0x257

    if-ne v3, v12, :cond_5

    :cond_5
    if-eqz v10, :cond_3

    invoke-virtual {v10}, Ljava/net/HttpURLConnection;->disconnect()V

    goto :goto_1

    :catchall_0
    move-exception v12

    if-eqz v10, :cond_6

    invoke-virtual {v10}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_6
    throw v12
.end method
