.class public Lcom/android/settings/wifi/p2p/WifiP2pSettings;
.super Lcom/android/settings/RestrictedSettingsFragment;
.source "WifiP2pSettings.java"

# interfaces
.implements Landroid/net/wifi/p2p/WifiP2pManager$GroupInfoListener;
.implements Landroid/net/wifi/p2p/WifiP2pManager$PeerListListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/wifi/p2p/WifiP2pSettings$1;,
        Lcom/android/settings/wifi/p2p/WifiP2pSettings$2;,
        Lcom/android/settings/wifi/p2p/WifiP2pSettings$3;
    }
.end annotation


# static fields
.field private static mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

.field private static mBixbyDeviceName:Ljava/lang/String;

.field private static mBixbyStateId:Ljava/lang/String;

.field private static mContext:Landroid/content/Context;

.field private static mCreatedGroupInfo:Landroid/net/wifi/p2p/WifiP2pGroup;

.field private static mIdleStartCnt:I

.field private static mInvited:Z

.field private static mMotionSensorManager:Landroid/hardware/motion/MotionRecognitionManager;

.field private static mPeers:Landroid/net/wifi/p2p/WifiP2pDeviceList;

.field private static mThisDevice:Landroid/net/wifi/p2p/WifiP2pDevice;


# instance fields
.field private mAutoFinish:Z

.field private mAvailablePeers:Landroid/net/wifi/p2p/WifiP2pDeviceList;

.field private mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

.field private mConnectedGroup:Landroid/net/wifi/p2p/WifiP2pGroup;

.field public mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

.field private mFullScanTimer:Landroid/os/CountDownTimer;

.field private mGoDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

.field private mIdleTimer:Landroid/os/CountDownTimer;

.field private final mIntentFilter:Landroid/content/IntentFilter;

.field private mIsRegisteredMotionListener:Z

.field private mIsResume:Z

.field private mIsSetTimer:Z

.field private mIsTablet:Z

.field private mLastGroupFormed:Z

.field private mMotionListener:Landroid/hardware/motion/MRListener;

.field private mNetworkInfo:Landroid/net/NetworkInfo;

.field private mNoDevicesPreference:Landroid/support/v7/preference/Preference;

.field private mOnHierarchyChangeListener:Landroid/view/ViewGroup$OnHierarchyChangeListener;

.field private mPassCreate:Z

.field private mPeersGroup:Landroid/support/v7/preference/PreferenceGroup;

.field private mReceivedStickyEnabled:Z

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mScanTimer:Landroid/os/CountDownTimer;

.field private mSelectedWifiPeer:Lcom/android/settings/wifi/p2p/WifiP2pPeer;

.field private mSharedPref:Landroid/content/SharedPreferences;

.field private mTalkback:Z

.field mTempSsid:Ljava/lang/String;

.field private mTextToSpeech:Landroid/speech/tts/TextToSpeech;

.field private mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

.field private progressBarItem:Landroid/view/MenuItem;


# direct methods
.method static synthetic -get0(Lcom/android/settings/wifi/p2p/WifiP2pSettings;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mAutoFinish:Z

    return v0
.end method

.method static synthetic -get1(Lcom/android/settings/wifi/p2p/WifiP2pSettings;)Landroid/net/wifi/p2p/WifiP2pDeviceList;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mAvailablePeers:Landroid/net/wifi/p2p/WifiP2pDeviceList;

    return-object v0
.end method

.method static synthetic -get10(Lcom/android/settings/wifi/p2p/WifiP2pSettings;)Landroid/hardware/motion/MRListener;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mMotionListener:Landroid/hardware/motion/MRListener;

    return-object v0
.end method

.method static synthetic -get11()Landroid/hardware/motion/MotionRecognitionManager;
    .locals 1

    sget-object v0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mMotionSensorManager:Landroid/hardware/motion/MotionRecognitionManager;

    return-object v0
.end method

.method static synthetic -get12(Lcom/android/settings/wifi/p2p/WifiP2pSettings;)Landroid/net/NetworkInfo;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mNetworkInfo:Landroid/net/NetworkInfo;

    return-object v0
.end method

.method static synthetic -get13()Landroid/net/wifi/p2p/WifiP2pDeviceList;
    .locals 1

    sget-object v0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mPeers:Landroid/net/wifi/p2p/WifiP2pDeviceList;

    return-object v0
.end method

.method static synthetic -get14(Lcom/android/settings/wifi/p2p/WifiP2pSettings;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mReceivedStickyEnabled:Z

    return v0
.end method

.method static synthetic -get15(Lcom/android/settings/wifi/p2p/WifiP2pSettings;)Landroid/os/CountDownTimer;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mScanTimer:Landroid/os/CountDownTimer;

    return-object v0
.end method

.method static synthetic -get16(Lcom/android/settings/wifi/p2p/WifiP2pSettings;)Landroid/speech/tts/TextToSpeech;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mTextToSpeech:Landroid/speech/tts/TextToSpeech;

    return-object v0
.end method

.method static synthetic -get17(Lcom/android/settings/wifi/p2p/WifiP2pSettings;)Landroid/net/wifi/p2p/WifiP2pManager;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    return-object v0
.end method

.method static synthetic -get2()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mBixbyStateId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/settings/wifi/p2p/WifiP2pSettings;)Landroid/net/wifi/p2p/WifiP2pManager$Channel;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    return-object v0
.end method

.method static synthetic -get4()Landroid/net/wifi/p2p/WifiP2pGroup;
    .locals 1

    sget-object v0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mCreatedGroupInfo:Landroid/net/wifi/p2p/WifiP2pGroup;

    return-object v0
.end method

.method static synthetic -get5(Lcom/android/settings/wifi/p2p/WifiP2pSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    return-object v0
.end method

.method static synthetic -get6()I
    .locals 1

    sget v0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mIdleStartCnt:I

    return v0
.end method

.method static synthetic -get7(Lcom/android/settings/wifi/p2p/WifiP2pSettings;)Landroid/os/CountDownTimer;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mIdleTimer:Landroid/os/CountDownTimer;

    return-object v0
.end method

.method static synthetic -get8()Z
    .locals 1

    sget-boolean v0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mInvited:Z

    return v0
.end method

.method static synthetic -get9(Lcom/android/settings/wifi/p2p/WifiP2pSettings;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mIsRegisteredMotionListener:Z

    return v0
.end method

.method static synthetic -set0(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    sput-object p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mBixbyDeviceName:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic -set1(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    sput-object p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mBixbyStateId:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic -set2(Landroid/net/wifi/p2p/WifiP2pGroup;)Landroid/net/wifi/p2p/WifiP2pGroup;
    .locals 0

    sput-object p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mCreatedGroupInfo:Landroid/net/wifi/p2p/WifiP2pGroup;

    return-object p0
.end method

.method static synthetic -set3(Z)Z
    .locals 0

    sput-boolean p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mInvited:Z

    return p0
.end method

.method static synthetic -set4(Lcom/android/settings/wifi/p2p/WifiP2pSettings;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mIsRegisteredMotionListener:Z

    return p1
.end method

.method static synthetic -set5(Lcom/android/settings/wifi/p2p/WifiP2pSettings;Landroid/net/NetworkInfo;)Landroid/net/NetworkInfo;
    .locals 0

    iput-object p1, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mNetworkInfo:Landroid/net/NetworkInfo;

    return-object p1
.end method

.method static synthetic -set6(Lcom/android/settings/wifi/p2p/WifiP2pSettings;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mReceivedStickyEnabled:Z

    return p1
.end method

.method static synthetic -set7(Landroid/net/wifi/p2p/WifiP2pDevice;)Landroid/net/wifi/p2p/WifiP2pDevice;
    .locals 0

    sput-object p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mThisDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    return-object p0
.end method

.method static synthetic -wrap0(Lcom/android/settings/wifi/p2p/WifiP2pSettings;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->isP2pConnected()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/android/settings/wifi/p2p/WifiP2pSettings;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->isP2pEnabled()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap2(Lcom/android/settings/wifi/p2p/WifiP2pSettings;Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap3(Lcom/android/settings/wifi/p2p/WifiP2pSettings;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->addMyDeviceCenterText(Z)V

    return-void
.end method

.method static synthetic -wrap4(Lcom/android/settings/wifi/p2p/WifiP2pSettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->addNoDeviceLayout()V

    return-void
.end method

.method static synthetic -wrap5(Lcom/android/settings/wifi/p2p/WifiP2pSettings;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->hideProgressBar(Z)V

    return-void
.end method

.method static synthetic -wrap6(Lcom/android/settings/wifi/p2p/WifiP2pSettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->selFinish()V

    return-void
.end method

.method static synthetic -wrap7(Lcom/android/settings/wifi/p2p/WifiP2pSettings;ZZ)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->setScanTimer(ZZ)V

    return-void
.end method

.method static synthetic -wrap8(Lcom/android/settings/wifi/p2p/WifiP2pSettings;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->triggerFullScan(Z)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    new-instance v0, Landroid/net/wifi/p2p/WifiP2pDeviceList;

    invoke-direct {v0}, Landroid/net/wifi/p2p/WifiP2pDeviceList;-><init>()V

    sput-object v0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mPeers:Landroid/net/wifi/p2p/WifiP2pDeviceList;

    sput-object v1, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mCreatedGroupInfo:Landroid/net/wifi/p2p/WifiP2pGroup;

    sput-boolean v2, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mInvited:Z

    sput v2, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mIdleStartCnt:I

    sput-object v1, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mBixbyDeviceName:Ljava/lang/String;

    sput-object v1, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mBixbyStateId:Ljava/lang/String;

    sput-object v1, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mMotionSensorManager:Landroid/hardware/motion/MotionRecognitionManager;

    sput-object v1, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    sput-object v1, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mContext:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    const-string/jumbo v0, "no_config_wifi"

    invoke-direct {p0, v0}, Lcom/android/settings/RestrictedSettingsFragment;-><init>(Ljava/lang/String;)V

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mIntentFilter:Landroid/content/IntentFilter;

    iput-boolean v1, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mLastGroupFormed:Z

    new-instance v0, Landroid/net/wifi/p2p/WifiP2pDeviceList;

    invoke-direct {v0}, Landroid/net/wifi/p2p/WifiP2pDeviceList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mAvailablePeers:Landroid/net/wifi/p2p/WifiP2pDeviceList;

    iput-boolean v1, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mIsTablet:Z

    iput-boolean v1, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mReceivedStickyEnabled:Z

    iput-boolean v1, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mPassCreate:Z

    iput-boolean v1, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mIsSetTimer:Z

    iput-boolean v1, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mIsResume:Z

    iput-object v2, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mTempSsid:Ljava/lang/String;

    iput-object v2, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mMotionListener:Landroid/hardware/motion/MRListener;

    iput-boolean v1, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mIsRegisteredMotionListener:Z

    iput-boolean v1, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mTalkback:Z

    new-instance v0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$1;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/p2p/WifiP2pSettings$1;-><init>(Lcom/android/settings/wifi/p2p/WifiP2pSettings;)V

    iput-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$2;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/p2p/WifiP2pSettings$2;-><init>(Lcom/android/settings/wifi/p2p/WifiP2pSettings;)V

    iput-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mOnHierarchyChangeListener:Landroid/view/ViewGroup$OnHierarchyChangeListener;

    new-instance v0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$3;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/p2p/WifiP2pSettings$3;-><init>(Lcom/android/settings/wifi/p2p/WifiP2pSettings;)V

    iput-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

    return-void
.end method

.method private addMyDeviceCenterText(Z)V
    .locals 3

    const v2, 0x7f12206d

    const/4 v1, 0x0

    iget-boolean v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mIsTablet:Z

    if-eqz v0, :cond_0

    const v0, 0x7f122075

    invoke-direct {p0, v0, v2, v1}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->addMyDeviceDescriptionPreference(III)V

    :goto_0
    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mPeersGroup:Landroid/support/v7/preference/PreferenceGroup;

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceScreen;->addPreference(Landroid/support/v7/preference/Preference;)Z

    :goto_1
    return-void

    :cond_0
    const v0, 0x7f122074

    invoke-direct {p0, v0, v2, v1}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->addMyDeviceDescriptionPreference(III)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mPeersGroup:Landroid/support/v7/preference/PreferenceGroup;

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    goto :goto_1
.end method

.method private addMyDeviceDescriptionPreference(III)V
    .locals 7

    const/4 v6, 0x1

    const/4 v5, 0x0

    sget-object v2, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mContext:Landroid/content/Context;

    if-eqz v2, :cond_0

    new-instance v1, Landroid/support/v7/preference/Preference;

    sget-object v2, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/support/v7/preference/Preference;-><init>(Landroid/content/Context;)V

    if-eqz v1, :cond_0

    const v2, 0x7f0d03b3

    invoke-virtual {v1, v2}, Landroid/support/v7/preference/Preference;->setLayoutResource(I)V

    invoke-virtual {p0}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    new-array v3, v6, [Ljava/lang/Object;

    invoke-direct {p0}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->getMyDeviceName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {v2, p1, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "<br/><br/>"

    invoke-virtual {v0, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/support/v7/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    invoke-virtual {v1, p3}, Landroid/support/v7/preference/Preference;->setOrder(I)V

    invoke-virtual {v1, v6}, Landroid/support/v7/preference/Preference;->setEnabled(Z)V

    invoke-virtual {v1, v5}, Landroid/support/v7/preference/Preference;->setSelectable(Z)V

    invoke-virtual {p0}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/support/v7/preference/PreferenceScreen;->addPreference(Landroid/support/v7/preference/Preference;)Z

    :cond_0
    return-void
.end method

.method private addNoDeviceLayout()V
    .locals 3

    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mPeersGroup:Landroid/support/v7/preference/PreferenceGroup;

    invoke-virtual {v0}, Landroid/support/v7/preference/PreferenceGroup;->removeAll()V

    invoke-virtual {p0}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mPeersGroup:Landroid/support/v7/preference/PreferenceGroup;

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceScreen;->addPreference(Landroid/support/v7/preference/Preference;)Z

    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mNoDevicesPreference:Landroid/support/v7/preference/Preference;

    if-nez v0, :cond_0

    new-instance v0, Lcom/samsung/android/settings/wifi/p2p/WifiP2pNoItemPreference;

    invoke-virtual {p0}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->getListView()Landroid/support/v7/widget/RecyclerView;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/settings/wifi/p2p/WifiP2pNoItemPreference;-><init>(Landroid/content/Context;Landroid/view/View;)V

    iput-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mNoDevicesPreference:Landroid/support/v7/preference/Preference;

    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mNoDevicesPreference:Landroid/support/v7/preference/Preference;

    const v1, 0x7f0d03b8

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/Preference;->setLayoutResource(I)V

    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mNoDevicesPreference:Landroid/support/v7/preference/Preference;

    invoke-virtual {p0}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f122077

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mNoDevicesPreference:Landroid/support/v7/preference/Preference;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/Preference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mNoDevicesPreference:Landroid/support/v7/preference/Preference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/Preference;->setSelectable(Z)V

    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mPeersGroup:Landroid/support/v7/preference/PreferenceGroup;

    iget-object v1, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mNoDevicesPreference:Landroid/support/v7/preference/Preference;

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceGroup;->addPreference(Landroid/support/v7/preference/Preference;)Z

    return-void
.end method

.method private cancelConnect()V
    .locals 3

    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    if-eqz v0, :cond_0

    const-string/jumbo v0, "WifiP2pSettings"

    const-string/jumbo v1, "cancelConnect ====> cancelConnect()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mInvited:Z

    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    iget-object v1, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    new-instance v2, Lcom/android/settings/wifi/p2p/WifiP2pSettings$14;

    invoke-direct {v2, p0}, Lcom/android/settings/wifi/p2p/WifiP2pSettings$14;-><init>(Lcom/android/settings/wifi/p2p/WifiP2pSettings;)V

    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/p2p/WifiP2pManager;->cancelConnect(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    :cond_0
    return-void
.end method

.method private chkMdm()Z
    .locals 7

    const/4 v2, 0x0

    const-string/jumbo v0, "content://com.sec.knox.provider/RestrictionPolicy4"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    sget-object v0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v3, "isWifiDirectAllowed"

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    if-eqz v6, :cond_1

    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    const-string/jumbo v0, "isWifiDirectAllowed"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "false"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    return v0

    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_1
    const/4 v0, 0x0

    return v0

    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method private convertDevAddress(Ljava/lang/String;)Ljava/lang/String;
    .locals 12

    const/16 v11, 0xe

    const/16 v10, 0xc

    const/4 v9, 0x0

    new-instance v3, Ljava/util/Formatter;

    invoke-direct {v3}, Ljava/util/Formatter;-><init>()V

    const-string/jumbo v2, ""

    invoke-virtual {p1, v10, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x10

    invoke-static {v4, v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v1

    xor-int/lit16 v1, v1, 0x80

    :try_start_0
    const-string/jumbo v5, "%02x"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/4 v8, 0x0

    aput-object v7, v6, v8

    invoke-virtual {v3, v5, v6}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    invoke-virtual {v3}, Ljava/util/Formatter;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    invoke-virtual {v3}, Ljava/util/Formatter;->close()V

    :goto_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v9, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {p1, v11, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5

    :catch_0
    move-exception v0

    :try_start_1
    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {v3}, Ljava/util/Formatter;->close()V

    goto :goto_0

    :catchall_0
    move-exception v5

    invoke-virtual {v3}, Ljava/util/Formatter;->close()V

    throw v5
.end method

.method private endConnection()V
    .locals 4

    sget-object v1, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mCreatedGroupInfo:Landroid/net/wifi/p2p/WifiP2pGroup;

    if-eqz v1, :cond_1

    sget-object v1, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mCreatedGroupInfo:Landroid/net/wifi/p2p/WifiP2pGroup;

    invoke-virtual {v1}, Landroid/net/wifi/p2p/WifiP2pGroup;->isGroupOwner()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mSelectedWifiPeer:Lcom/android/settings/wifi/p2p/WifiP2pPeer;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mSelectedWifiPeer:Lcom/android/settings/wifi/p2p/WifiP2pPeer;

    iget-object v1, v1, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->mDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mSelectedWifiPeer:Lcom/android/settings/wifi/p2p/WifiP2pPeer;

    iget-object v1, v1, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->mDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    invoke-direct {p0, v1}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->getPreferredConfig(Landroid/net/wifi/p2p/WifiP2pDevice;)Landroid/net/wifi/p2p/WifiP2pConfig;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    iget-object v2, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    new-instance v3, Lcom/android/settings/wifi/p2p/WifiP2pSettings$12;

    invoke-direct {v3, p0}, Lcom/android/settings/wifi/p2p/WifiP2pSettings$12;-><init>(Lcom/android/settings/wifi/p2p/WifiP2pSettings;)V

    invoke-virtual {v1, v2, v0, v3}, Landroid/net/wifi/p2p/WifiP2pManager;->removeClient(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pConfig;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    iget-object v2, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    new-instance v3, Lcom/android/settings/wifi/p2p/WifiP2pSettings$13;

    invoke-direct {v3, p0}, Lcom/android/settings/wifi/p2p/WifiP2pSettings$13;-><init>(Lcom/android/settings/wifi/p2p/WifiP2pSettings;)V

    invoke-virtual {v1, v2, v3}, Landroid/net/wifi/p2p/WifiP2pManager;->removeGroup(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    goto :goto_0
.end method

.method private getMyDeviceName()Ljava/lang/String;
    .locals 6

    sget-object v3, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "device_name"

    invoke-static {v3, v4}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object v3, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "device_name"

    invoke-static {v3, v4}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    if-nez v0, :cond_1

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    if-nez v0, :cond_1

    sget-object v3, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "android_id"

    invoke-static {v3, v4}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Android_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x4

    invoke-virtual {v1, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "\u200e"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v0}, Landroid/text/Html;->escapeHtml(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "\u200e"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private getPreferredConfig(Landroid/net/wifi/p2p/WifiP2pDevice;)Landroid/net/wifi/p2p/WifiP2pConfig;
    .locals 3

    const/4 v2, 0x0

    new-instance v0, Landroid/net/wifi/p2p/WifiP2pConfig;

    invoke-direct {v0}, Landroid/net/wifi/p2p/WifiP2pConfig;-><init>()V

    iget-object v1, p1, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    iput-object v1, v0, Landroid/net/wifi/p2p/WifiP2pConfig;->deviceAddress:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/net/wifi/p2p/WifiP2pDevice;->wpsPbcSupported()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, v0, Landroid/net/wifi/p2p/WifiP2pConfig;->wps:Landroid/net/wifi/WpsInfo;

    iput v2, v1, Landroid/net/wifi/WpsInfo;->setup:I

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p1}, Landroid/net/wifi/p2p/WifiP2pDevice;->wpsKeypadSupported()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, v0, Landroid/net/wifi/p2p/WifiP2pConfig;->wps:Landroid/net/wifi/WpsInfo;

    const/4 v2, 0x2

    iput v2, v1, Landroid/net/wifi/WpsInfo;->setup:I

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Landroid/net/wifi/p2p/WifiP2pDevice;->wpsDisplaySupported()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, v0, Landroid/net/wifi/p2p/WifiP2pConfig;->wps:Landroid/net/wifi/WpsInfo;

    const/4 v2, 0x1

    iput v2, v1, Landroid/net/wifi/WpsInfo;->setup:I

    goto :goto_0

    :cond_2
    iget-object v1, v0, Landroid/net/wifi/p2p/WifiP2pConfig;->wps:Landroid/net/wifi/WpsInfo;

    iput v2, v1, Landroid/net/wifi/WpsInfo;->setup:I

    goto :goto_0
.end method

.method private getSecuredMacAddress(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    const/16 v3, 0x11

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-ne v0, v3, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0xc

    const/16 v2, 0xe

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0xf

    invoke-virtual {p1, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    return-object p1
.end method

.method private hideProgressBar(Z)V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->progressBarItem:Landroid/view/MenuItem;

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->isP2pConnected()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_2

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->progressBarItem:Landroid/view/MenuItem;

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->progressBarItem:Landroid/view/MenuItem;

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setActionView(Landroid/view/View;)Landroid/view/MenuItem;

    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->progressBarItem:Landroid/view/MenuItem;

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->progressBarItem:Landroid/view/MenuItem;

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->progressBarItem:Landroid/view/MenuItem;

    const v1, 0x7f0d03b9

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setActionView(I)Landroid/view/MenuItem;

    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->progressBarItem:Landroid/view/MenuItem;

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->progressBarItem:Landroid/view/MenuItem;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->isP2pConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->progressBarItem:Landroid/view/MenuItem;

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->progressBarItem:Landroid/view/MenuItem;

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setActionView(Landroid/view/View;)Landroid/view/MenuItem;

    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->progressBarItem:Landroid/view/MenuItem;

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_0
.end method

.method private isP2pConnected()Z
    .locals 1

    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    invoke-virtual {v0}, Landroid/net/wifi/p2p/WifiP2pManager;->isWifiP2pConnected()Z

    move-result v0

    return v0
.end method

.method private isP2pEnabled()Z
    .locals 1

    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    invoke-virtual {v0}, Landroid/net/wifi/p2p/WifiP2pManager;->isWifiP2pEnabled()Z

    move-result v0

    return v0
.end method

.method private selFinish()V
    .locals 1

    iget-boolean v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mIsTablet:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->getBackStackEntryCount()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->popBackStack()V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->finish()V

    goto :goto_0
.end method

.method private sendP2pSettingsStartedBroadcast(Z)V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.android.settings.wifi.p2p.SETTINGS_STRATED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "started"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    iput-boolean p1, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mIsResume:Z

    return-void
.end method

.method private setDivider()V
    .locals 12

    const/4 v3, 0x1

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v10

    invoke-static {v10}, Landroid/text/TextUtils;->getLayoutDirectionFromLocale(Ljava/util/Locale;)I

    move-result v2

    if-ne v2, v3, :cond_3

    const/4 v9, 0x1

    :goto_0
    const/4 v6, 0x0

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->getContext()Landroid/content/Context;

    move-result-object v2

    sget-object v3, Landroid/support/v14/preference/R$styleable;->PreferenceFragment:[I

    invoke-virtual {p0}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->getContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f04014f

    const v11, 0x1010506

    invoke-static {v4, v5, v11}, Landroid/support/v4/content/res/TypedArrayUtils;->getAttr(Landroid/content/Context;II)I

    move-result v4

    const/4 v5, 0x0

    const/4 v11, 0x0

    invoke-virtual {v2, v5, v3, v4, v11}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v6

    if-eqz v6, :cond_0

    const/4 v2, 0x1

    invoke-virtual {v6, v2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0704e9

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    if-nez v9, :cond_4

    new-instance v0, Landroid/graphics/drawable/InsetDrawable;

    invoke-virtual {p0}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070919

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-virtual {p0}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0704ea

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    const/4 v3, 0x0

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/graphics/drawable/InsetDrawable;-><init>(Landroid/graphics/drawable/Drawable;IIII)V

    :goto_1
    invoke-super {p0, v0}, Lcom/android/settings/RestrictedSettingsFragment;->setDivider(Landroid/graphics/drawable/Drawable;)V

    const/4 v2, -0x1

    if-eq v7, v2, :cond_1

    invoke-super {p0, v7}, Lcom/android/settings/RestrictedSettingsFragment;->setDividerHeight(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    if-eqz v6, :cond_2

    invoke-virtual {v6}, Landroid/content/res/TypedArray;->recycle()V

    :cond_2
    :goto_2
    return-void

    :cond_3
    const/4 v9, 0x0

    goto :goto_0

    :cond_4
    :try_start_1
    new-instance v0, Landroid/graphics/drawable/InsetDrawable;

    invoke-virtual {p0}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0704ea

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-virtual {p0}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f070919

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    const/4 v3, 0x0

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/graphics/drawable/InsetDrawable;-><init>(Landroid/graphics/drawable/Drawable;IIII)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v8

    :try_start_2
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v6, :cond_2

    invoke-virtual {v6}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_2

    :catchall_0
    move-exception v2

    if-eqz v6, :cond_5

    invoke-virtual {v6}, Landroid/content/res/TypedArray;->recycle()V

    :cond_5
    throw v2
.end method

.method private setScanTimer(ZZ)V
    .locals 4

    const/4 v3, 0x0

    const-string/jumbo v0, "WifiP2pSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setScanTimer - scan : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", listen : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mFullScanTimer:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    const/4 v0, 0x1

    sput v0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mIdleStartCnt:I

    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    iget-object v1, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    new-instance v2, Lcom/android/settings/wifi/p2p/WifiP2pSettings$10;

    invoke-direct {v2, p0}, Lcom/android/settings/wifi/p2p/WifiP2pSettings$10;-><init>(Lcom/android/settings/wifi/p2p/WifiP2pSettings;)V

    const/16 v3, 0x64b

    invoke-virtual {v0, v1, v3, v2}, Landroid/net/wifi/p2p/WifiP2pManager;->discoverPeers(Landroid/net/wifi/p2p/WifiP2pManager$Channel;ILandroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-boolean v0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mInvited:Z

    if-nez v0, :cond_2

    invoke-direct {p0}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->isP2pConnected()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mTalkback:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mTextToSpeech:Landroid/speech/tts/TextToSpeech;

    const v1, 0x7f122097

    invoke-virtual {p0, v1}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/speech/tts/TextToSpeech;->speak(Ljava/lang/String;ILjava/util/HashMap;)I

    :cond_2
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mScanTimer:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mFullScanTimer:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mIdleTimer:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    iget-object v1, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    invoke-virtual {v0, v1, v3}, Landroid/net/wifi/p2p/WifiP2pManager;->requestP2pListen(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    goto :goto_0
.end method

.method private triggerFullScan(Z)V
    .locals 4

    const/4 v3, 0x0

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mScanTimer:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    sget v0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mIdleStartCnt:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mIdleStartCnt:I

    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    iget-object v1, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    new-instance v2, Lcom/android/settings/wifi/p2p/WifiP2pSettings$11;

    invoke-direct {v2, p0}, Lcom/android/settings/wifi/p2p/WifiP2pSettings$11;-><init>(Lcom/android/settings/wifi/p2p/WifiP2pSettings;)V

    invoke-virtual {v0, v1, v3, v2}, Landroid/net/wifi/p2p/WifiP2pManager;->discoverPeers(Landroid/net/wifi/p2p/WifiP2pManager$Channel;ILandroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    :goto_0
    return-void

    :cond_0
    sput v3, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mIdleStartCnt:I

    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mScanTimer:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mFullScanTimer:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    goto :goto_0
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 1

    const/16 v0, 0x6d

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 8

    const/4 v6, 0x1

    invoke-virtual {p0}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    sput-object v3, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mContext:Landroid/content/Context;

    new-instance v3, Landroid/view/ContextThemeWrapper;

    sget-object v4, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mContext:Landroid/content/Context;

    const v5, 0x103012b

    invoke-direct {v3, v4, v5}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    sput-object v3, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mContext:Landroid/content/Context;

    invoke-direct {p0}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->setDivider()V

    iget-object v3, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mPeersGroup:Landroid/support/v7/preference/PreferenceGroup;

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Landroid/support/v7/preference/PreferenceGroup;->setOrder(I)V

    iget-object v3, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mPeersGroup:Landroid/support/v7/preference/PreferenceGroup;

    invoke-virtual {v3, v6}, Landroid/support/v7/preference/PreferenceGroup;->setEnabled(Z)V

    const-string/jumbo v3, "AUTO_FINISH"

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mAutoFinish:Z

    iget-boolean v3, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mAutoFinish:Z

    if-eqz v3, :cond_0

    const-string/jumbo v3, "AUTO_FINISH"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p0, v6}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->setHasOptionsMenu(Z)V

    invoke-virtual {p0}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const-string/jumbo v5, "action_bar"

    const-string/jumbo v6, "id"

    const-string/jumbo v7, "android"

    invoke-virtual {v4, v5, v6, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    if-eqz v2, :cond_1

    iget-object v3, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mOnHierarchyChangeListener:Landroid/view/ViewGroup$OnHierarchyChangeListener;

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->setOnHierarchyChangeListener(Landroid/view/ViewGroup$OnHierarchyChangeListener;)V

    :cond_1
    invoke-super {p0, p1}, Lcom/android/settings/RestrictedSettingsFragment;->onActivityCreated(Landroid/os/Bundle;)V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/android/settings/RestrictedSettingsFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    :try_start_0
    iget-object v1, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mNoDevicesPreference:Landroid/support/v7/preference/Preference;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mPeersGroup:Landroid/support/v7/preference/PreferenceGroup;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mPeersGroup:Landroid/support/v7/preference/PreferenceGroup;

    invoke-virtual {v1}, Landroid/support/v7/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v1

    if-lez v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mPeersGroup:Landroid/support/v7/preference/PreferenceGroup;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/support/v7/preference/PreferenceGroup;->getPreference(I)Landroid/support/v7/preference/Preference;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v7/preference/Preference;->getLayoutResource()I

    move-result v1

    iget-object v2, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mNoDevicesPreference:Landroid/support/v7/preference/Preference;

    invoke-virtual {v2}, Landroid/support/v7/preference/Preference;->getLayoutResource()I

    move-result v2

    if-ne v1, v2, :cond_0

    invoke-direct {p0}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->addNoDeviceLayout()V

    const-string/jumbo v1, "WifiP2pSettings"

    const-string/jumbo v2, "onConfigurationChanged : nodevice found"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 11

    const/4 v10, 0x1

    const-wide/16 v4, 0x3e8

    const/4 v9, 0x0

    invoke-super {p0, p1}, Lcom/android/settings/RestrictedSettingsFragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mIsTablet:Z

    iput-boolean v10, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mPassCreate:Z

    const v0, 0x7f1500dd

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->addPreferencesFromResource(I)V

    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mIntentFilter:Landroid/content/IntentFilter;

    const-string/jumbo v1, "android.net.wifi.p2p.STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mIntentFilter:Landroid/content/IntentFilter;

    const-string/jumbo v1, "android.net.wifi.p2p.PEERS_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mIntentFilter:Landroid/content/IntentFilter;

    const-string/jumbo v1, "android.net.wifi.p2p.CONNECTION_STATE_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mIntentFilter:Landroid/content/IntentFilter;

    const-string/jumbo v1, "android.net.wifi.p2p.THIS_DEVICE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mIntentFilter:Landroid/content/IntentFilter;

    const-string/jumbo v1, "android.net.wifi.p2p.REQUEST_STATE_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    new-instance v0, Landroid/support/v7/preference/PreferenceCategory;

    invoke-virtual {p0}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->getPrefContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v7/preference/PreferenceCategory;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mPeersGroup:Landroid/support/v7/preference/PreferenceGroup;

    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mPeersGroup:Landroid/support/v7/preference/PreferenceGroup;

    const v1, 0x7f12048f

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceGroup;->setTitle(I)V

    invoke-virtual {p0}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/preference/PreferenceScreen;->removeAll()V

    new-instance v0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$4;

    const-wide/16 v2, 0x2710

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/settings/wifi/p2p/WifiP2pSettings$4;-><init>(Lcom/android/settings/wifi/p2p/WifiP2pSettings;JJ)V

    iput-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mScanTimer:Landroid/os/CountDownTimer;

    new-instance v2, Lcom/android/settings/wifi/p2p/WifiP2pSettings$5;

    move-object v3, p0

    move-wide v6, v4

    invoke-direct/range {v2 .. v7}, Lcom/android/settings/wifi/p2p/WifiP2pSettings$5;-><init>(Lcom/android/settings/wifi/p2p/WifiP2pSettings;JJ)V

    iput-object v2, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mFullScanTimer:Landroid/os/CountDownTimer;

    new-instance v0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$6;

    const-wide/16 v2, 0x1388

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/settings/wifi/p2p/WifiP2pSettings$6;-><init>(Lcom/android/settings/wifi/p2p/WifiP2pSettings;JJ)V

    iput-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mIdleTimer:Landroid/os/CountDownTimer;

    const-string/jumbo v0, "wifip2p"

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/p2p/WifiP2pManager;

    iput-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    invoke-virtual {p0}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v0, v8, v1, v9}, Landroid/net/wifi/p2p/WifiP2pManager;->initialize(Landroid/content/Context;Landroid/os/Looper;Landroid/net/wifi/p2p/WifiP2pManager$ChannelListener;)Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    if-nez v0, :cond_0

    const-string/jumbo v0, "WifiP2pSettings"

    const-string/jumbo v1, "Failed to set up connection with wifi p2p service"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iput-object v9, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    :cond_0
    :goto_0
    new-instance v0, Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-direct {v0}, Lcom/samsung/android/settings/bixby/EmSettingsManager;-><init>()V

    iput-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    new-instance v0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$7;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/p2p/WifiP2pSettings$7;-><init>(Lcom/android/settings/wifi/p2p/WifiP2pSettings;)V

    iput-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mMotionListener:Landroid/hardware/motion/MRListener;

    invoke-virtual {p0, v10}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->setRetainInstance(Z)V

    return-void

    :cond_1
    const-string/jumbo v0, "WifiP2pSettings"

    const-string/jumbo v1, "mWifiP2pManager is null !"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 4

    const/4 v3, 0x0

    const v2, 0x7f0d03b9

    const/4 v1, 0x0

    const v0, 0x7f0e000e

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    const v0, 0x7f0a0687

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->progressBarItem:Landroid/view/MenuItem;

    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->progressBarItem:Landroid/view/MenuItem;

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setActionView(I)Landroid/view/MenuItem;

    invoke-direct {p0}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->isP2pEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mIsResume:Z

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->progressBarItem:Landroid/view/MenuItem;

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->progressBarItem:Landroid/view/MenuItem;

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setActionView(Landroid/view/View;)Landroid/view/MenuItem;

    :goto_0
    return-void

    :cond_1
    invoke-direct {p0}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->isP2pConnected()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->progressBarItem:Landroid/view/MenuItem;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->progressBarItem:Landroid/view/MenuItem;

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setActionView(I)Landroid/view/MenuItem;

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->progressBarItem:Landroid/view/MenuItem;

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->progressBarItem:Landroid/view/MenuItem;

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setActionView(Landroid/view/View;)Landroid/view/MenuItem;

    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3

    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/RestrictedSettingsFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    const/16 v2, 0xc

    invoke-virtual {v1, v2}, Landroid/app/ActionBar;->setDisplayOptions(I)V

    return-object v0
.end method

.method public onDestroy()V
    .locals 3

    invoke-super {p0}, Lcom/android/settings/RestrictedSettingsFragment;->onDestroy()V

    const-string/jumbo v0, "WifiP2pSettings"

    const-string/jumbo v1, "onDestroy"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mScanTimer:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mFullScanTimer:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mIdleTimer:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    iget-object v1, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/p2p/WifiP2pManager;->stopPeerDiscovery(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    iget-object v1, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    invoke-virtual {v0, v1}, Landroid/net/wifi/p2p/WifiP2pManager;->closeChannel(Landroid/net/wifi/p2p/WifiP2pManager$Channel;)V

    return-void
.end method

.method public onGroupInfoAvailable(Landroid/net/wifi/p2p/WifiP2pGroup;)V
    .locals 3

    const-string/jumbo v0, "WifiP2pSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, " group "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mConnectedGroup:Landroid/net/wifi/p2p/WifiP2pGroup;

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    :goto_0
    invoke-super {p0, p1}, Lcom/android/settings/RestrictedSettingsFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    return v1

    :pswitch_0
    :try_start_0
    invoke-direct {p0}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->selFinish()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v1, 0x1

    return v1

    :catch_0
    move-exception v0

    const-string/jumbo v1, "WifiP2pSettings"

    const-string/jumbo v2, "IllegalStateException: Can not perform this action after onSaveInstanceState"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v1, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/android/settings/SAUtils;->getInstance(Landroid/content/Context;)Lcom/samsung/android/settings/SAUtils;

    move-result-object v1

    const v2, 0x7f121745

    const v3, 0x7f120a3c

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/settings/SAUtils;->insertLog(II)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method

.method public onPause()V
    .locals 11

    const/4 v2, 0x1

    const/4 v6, 0x0

    const/4 v10, 0x0

    invoke-super {p0}, Lcom/android/settings/RestrictedSettingsFragment;->onPause()V

    const-string/jumbo v0, "power"

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/os/PowerManager;

    invoke-virtual {v9}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v8

    const-string/jumbo v0, "WifiP2pSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onPause - LCD on? "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mSharedPref:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string/jumbo v1, "SAMSUNG_P2P"

    invoke-virtual {v0, v1, v10}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mSharedPref:Landroid/content/SharedPreferences;

    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mSharedPref:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v7

    const-string/jumbo v0, "IS_INVITED"

    sget-boolean v1, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mInvited:Z

    invoke-interface {v7, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v7}, Landroid/content/SharedPreferences$Editor;->commit()Z

    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    iget-object v1, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    invoke-virtual {v0, v1, v6}, Landroid/net/wifi/p2p/WifiP2pManager;->stopPeerDiscovery(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    if-eqz v8, :cond_4

    invoke-direct {p0, v10, v10}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->setScanTimer(ZZ)V

    iget-boolean v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mTalkback:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mTextToSpeech:Landroid/speech/tts/TextToSpeech;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mTextToSpeech:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v0}, Landroid/speech/tts/TextToSpeech;->stop()I

    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mTextToSpeech:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v0}, Landroid/speech/tts/TextToSpeech;->shutdown()V

    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    invoke-direct {p0, v10}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->sendP2pSettingsStartedBroadcast(Z)V

    invoke-virtual {p0}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isInMultiWindowMode()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/preference/PreferenceScreen;->removeAll()V

    invoke-direct {p0, v2}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->addMyDeviceCenterText(Z)V

    :cond_2
    sget-object v0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mMotionSensorManager:Landroid/hardware/motion/MotionRecognitionManager;

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mIsRegisteredMotionListener:Z

    if-eqz v0, :cond_3

    sget-object v0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mMotionSensorManager:Landroid/hardware/motion/MotionRecognitionManager;

    iget-object v1, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mMotionListener:Landroid/hardware/motion/MRListener;

    invoke-virtual {v0, v1}, Landroid/hardware/motion/MotionRecognitionManager;->unregisterListener(Landroid/hardware/motion/MRListener;)V

    iput-boolean v10, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mIsRegisteredMotionListener:Z

    :cond_3
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v1, "WiFiDirectSettings"

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->clearEmService(Ljava/lang/Object;)V

    sput-object v6, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mBixbyDeviceName:Ljava/lang/String;

    sput-object v6, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mBixbyStateId:Ljava/lang/String;

    return-void

    :cond_4
    invoke-direct {p0}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->isP2pConnected()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0, v10, v10}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->setScanTimer(ZZ)V

    sget-object v0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mPeers:Landroid/net/wifi/p2p/WifiP2pDeviceList;

    invoke-virtual {v0}, Landroid/net/wifi/p2p/WifiP2pDeviceList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    iget-object v1, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    const/16 v3, 0x1f4

    const/16 v4, 0x1388

    const/4 v5, 0x6

    invoke-virtual/range {v0 .. v6}, Landroid/net/wifi/p2p/WifiP2pManager;->setListenOffloading(Landroid/net/wifi/p2p/WifiP2pManager$Channel;IIIILandroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    :cond_5
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    iget-object v1, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/p2p/WifiP2pManager;->setListenOffloadingTimer(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Z)V

    iput-boolean v2, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mIsSetTimer:Z

    goto :goto_0
.end method

.method public onPeersAvailable(Landroid/net/wifi/p2p/WifiP2pDeviceList;)V
    .locals 18

    const-string/jumbo v15, "WifiP2pSettings"

    const-string/jumbo v16, "onPeersAvailable"

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct/range {p0 .. p0}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->isP2pEnabled()Z

    move-result v15

    if-eqz v15, :cond_0

    if-nez p1, :cond_1

    :cond_0
    const-string/jumbo v15, "WifiP2pSettings"

    const-string/jumbo v16, "Return, P2P is not enabled or peer list is empty"

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mPeersGroup:Landroid/support/v7/preference/PreferenceGroup;

    invoke-virtual {v15}, Landroid/support/v7/preference/PreferenceGroup;->removeAll()V

    return-void

    :cond_1
    invoke-virtual/range {p1 .. p1}, Landroid/net/wifi/p2p/WifiP2pDeviceList;->isEmpty()Z

    move-result v15

    if-eqz v15, :cond_2

    invoke-direct/range {p0 .. p0}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->isP2pConnected()Z

    move-result v15

    xor-int/lit8 v15, v15, 0x1

    if-nez v15, :cond_0

    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->isAdded()Z

    move-result v15

    xor-int/lit8 v15, v15, 0x1

    if-nez v15, :cond_0

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v11

    const/4 v15, 0x0

    invoke-virtual {v11, v15}, Landroid/support/v7/preference/PreferenceScreen;->setOrderingAsAdded(Z)V

    invoke-virtual {v11}, Landroid/support/v7/preference/PreferenceScreen;->removeAll()V

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mPeersGroup:Landroid/support/v7/preference/PreferenceGroup;

    invoke-virtual {v15}, Landroid/support/v7/preference/PreferenceGroup;->removeAll()V

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mAvailablePeers:Landroid/net/wifi/p2p/WifiP2pDeviceList;

    invoke-virtual {v15}, Landroid/net/wifi/p2p/WifiP2pDeviceList;->clear()Z

    const/4 v15, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->addMyDeviceCenterText(Z)V

    sget-object v15, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mCreatedGroupInfo:Landroid/net/wifi/p2p/WifiP2pGroup;

    if-eqz v15, :cond_3

    invoke-direct/range {p0 .. p0}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->isP2pConnected()Z

    move-result v15

    xor-int/lit8 v15, v15, 0x1

    if-eqz v15, :cond_b

    :cond_3
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {p1 .. p1}, Landroid/net/wifi/p2p/WifiP2pDeviceList;->getDeviceList()Ljava/util/Collection;

    move-result-object v15

    invoke-interface {v15}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_4
    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_8

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v15, v9, Landroid/net/wifi/p2p/WifiP2pDevice;->GOdeviceName:Ljava/lang/String;

    if-nez v15, :cond_5

    invoke-virtual {v9}, Landroid/net/wifi/p2p/WifiP2pDevice;->isGroupClient()Ljava/lang/String;

    move-result-object v15

    if-eqz v15, :cond_7

    :cond_5
    invoke-virtual {v9}, Landroid/net/wifi/p2p/WifiP2pDevice;->isGroupOwner()Z

    move-result v15

    if-nez v15, :cond_7

    sget-object v15, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mThisDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v15, v15, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    iget-object v0, v9, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_6

    new-instance v4, Lcom/android/settings/wifi/p2p/WifiP2pPeer;

    sget-object v15, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mContext:Landroid/content/Context;

    invoke-direct {v4, v15, v9}, Lcom/android/settings/wifi/p2p/WifiP2pPeer;-><init>(Landroid/content/Context;Landroid/net/wifi/p2p/WifiP2pDevice;)V

    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mTalkback:Z

    invoke-virtual {v4, v15}, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->setTalkback(Z)V

    add-int/lit8 v3, v3, 0x1

    :cond_6
    :goto_1
    iget v15, v9, Landroid/net/wifi/p2p/WifiP2pDevice;->status:I

    const/16 v16, 0x1

    move/from16 v0, v16

    if-ne v15, v0, :cond_4

    const/4 v8, 0x1

    goto :goto_0

    :cond_7
    new-instance v12, Lcom/android/settings/wifi/p2p/WifiP2pPeer;

    sget-object v15, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mContext:Landroid/content/Context;

    invoke-direct {v12, v15, v9}, Lcom/android/settings/wifi/p2p/WifiP2pPeer;-><init>(Landroid/content/Context;Landroid/net/wifi/p2p/WifiP2pDevice;)V

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mTalkback:Z

    invoke-virtual {v12, v15}, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->setTalkback(Z)V

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mPeersGroup:Landroid/support/v7/preference/PreferenceGroup;

    invoke-virtual {v15, v12}, Landroid/support/v7/preference/PreferenceGroup;->addPreference(Landroid/support/v7/preference/Preference;)Z

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mAvailablePeers:Landroid/net/wifi/p2p/WifiP2pDeviceList;

    iget-object v0, v12, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->mDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Landroid/net/wifi/p2p/WifiP2pDeviceList;->update(Landroid/net/wifi/p2p/WifiP2pDevice;)V

    goto :goto_1

    :cond_8
    if-eqz v8, :cond_a

    const/4 v15, 0x1

    sput-boolean v15, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mInvited:Z

    const/4 v15, 0x0

    const/16 v16, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v15, v1}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->setScanTimer(ZZ)V

    const/4 v15, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->hideProgressBar(Z)V

    :cond_9
    :goto_2
    sput-object p1, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mPeers:Landroid/net/wifi/p2p/WifiP2pDeviceList;

    return-void

    :cond_a
    const/4 v15, 0x0

    sput-boolean v15, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mInvited:Z

    goto :goto_2

    :cond_b
    const-string/jumbo v15, "WifiP2pSettings"

    const-string/jumbo v16, "show connected devices"

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v15, 0x0

    sput-boolean v15, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mInvited:Z

    const/4 v15, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->hideProgressBar(Z)V

    sget-object v15, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mCreatedGroupInfo:Landroid/net/wifi/p2p/WifiP2pGroup;

    if-eqz v15, :cond_9

    sget-object v15, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mCreatedGroupInfo:Landroid/net/wifi/p2p/WifiP2pGroup;

    invoke-virtual {v15}, Landroid/net/wifi/p2p/WifiP2pGroup;->isGroupOwner()Z

    move-result v15

    if-eqz v15, :cond_c

    const-string/jumbo v15, "WifiP2pSettings"

    const-string/jumbo v16, "I am GO"

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v15, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mCreatedGroupInfo:Landroid/net/wifi/p2p/WifiP2pGroup;

    invoke-virtual {v15}, Landroid/net/wifi/p2p/WifiP2pGroup;->getClientList()Ljava/util/Collection;

    move-result-object v15

    invoke-interface {v15}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_9

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/wifi/p2p/WifiP2pDevice;

    const/4 v15, 0x0

    iput v15, v5, Landroid/net/wifi/p2p/WifiP2pDevice;->status:I

    new-instance v13, Lcom/android/settings/wifi/p2p/WifiP2pPeer;

    sget-object v15, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mContext:Landroid/content/Context;

    invoke-direct {v13, v15, v5}, Lcom/android/settings/wifi/p2p/WifiP2pPeer;-><init>(Landroid/content/Context;Landroid/net/wifi/p2p/WifiP2pDevice;)V

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mPeersGroup:Landroid/support/v7/preference/PreferenceGroup;

    invoke-virtual {v15, v13}, Landroid/support/v7/preference/PreferenceGroup;->addPreference(Landroid/support/v7/preference/Preference;)Z

    goto :goto_3

    :cond_c
    sget-object v15, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mCreatedGroupInfo:Landroid/net/wifi/p2p/WifiP2pGroup;

    invoke-virtual {v15}, Landroid/net/wifi/p2p/WifiP2pGroup;->getOwner()Landroid/net/wifi/p2p/WifiP2pDevice;

    move-result-object v15

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mGoDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mGoDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    if-eqz v15, :cond_d

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mGoDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v15, v15, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->convertDevAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    :cond_d
    if-nez v7, :cond_e

    const-string/jumbo v7, ""

    :cond_e
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mGoDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    if-eqz v15, :cond_f

    const-string/jumbo v15, "WifiP2pSettings"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v17, "I am GC, my GO addr : "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mGoDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->getSecuredMacAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string/jumbo v17, ", converted : "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->getSecuredMacAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_f
    invoke-virtual/range {p1 .. p1}, Landroid/net/wifi/p2p/WifiP2pDeviceList;->getDeviceList()Ljava/util/Collection;

    move-result-object v15

    invoke-interface {v15}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_10
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_9

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/net/wifi/p2p/WifiP2pDevice;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mGoDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    if-eqz v15, :cond_11

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mGoDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v15, v15, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    iget-object v0, v9, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_12

    :cond_11
    iget-object v15, v9, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    invoke-virtual {v7, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_10

    :cond_12
    const/4 v15, 0x0

    iput v15, v9, Landroid/net/wifi/p2p/WifiP2pDevice;->status:I

    new-instance v14, Lcom/android/settings/wifi/p2p/WifiP2pPeer;

    sget-object v15, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mContext:Landroid/content/Context;

    invoke-direct {v14, v15, v9}, Lcom/android/settings/wifi/p2p/WifiP2pPeer;-><init>(Landroid/content/Context;Landroid/net/wifi/p2p/WifiP2pDevice;)V

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mPeersGroup:Landroid/support/v7/preference/PreferenceGroup;

    invoke-virtual {v15, v14}, Landroid/support/v7/preference/PreferenceGroup;->addPreference(Landroid/support/v7/preference/Preference;)Z

    goto/16 :goto_2
.end method

.method public onPreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z
    .locals 10

    const/4 v6, 0x1

    const v9, 0x7f121745

    const v8, 0x7f120a3b

    instance-of v4, p1, Lcom/android/settings/wifi/p2p/WifiP2pPeer;

    if-eqz v4, :cond_0

    move-object v4, p1

    check-cast v4, Lcom/android/settings/wifi/p2p/WifiP2pPeer;

    iput-object v4, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mSelectedWifiPeer:Lcom/android/settings/wifi/p2p/WifiP2pPeer;

    iget-object v4, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mSelectedWifiPeer:Lcom/android/settings/wifi/p2p/WifiP2pPeer;

    iget-object v4, v4, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->mDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget v4, v4, Landroid/net/wifi/p2p/WifiP2pDevice;->status:I

    if-nez v4, :cond_1

    sget-object v4, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/samsung/android/settings/SAUtils;->getInstance(Landroid/content/Context;)Lcom/samsung/android/settings/SAUtils;

    move-result-object v4

    const-wide/16 v6, 0x2

    invoke-virtual {v4, v9, v8, v6, v7}, Lcom/samsung/android/settings/SAUtils;->insertLog(IIJ)V

    invoke-direct {p0}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->endConnection()V

    :cond_0
    :goto_0
    invoke-super {p0, p1}, Lcom/android/settings/RestrictedSettingsFragment;->onPreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z

    move-result v4

    return v4

    :cond_1
    iget-object v4, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mSelectedWifiPeer:Lcom/android/settings/wifi/p2p/WifiP2pPeer;

    iget-object v4, v4, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->mDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget v4, v4, Landroid/net/wifi/p2p/WifiP2pDevice;->status:I

    if-ne v4, v6, :cond_2

    sget-object v4, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/samsung/android/settings/SAUtils;->getInstance(Landroid/content/Context;)Lcom/samsung/android/settings/SAUtils;

    move-result-object v4

    const-wide/16 v6, 0x1

    invoke-virtual {v4, v9, v8, v6, v7}, Lcom/samsung/android/settings/SAUtils;->insertLog(IIJ)V

    invoke-direct {p0}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->cancelConnect()V

    goto :goto_0

    :cond_2
    iget-object v4, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mSelectedWifiPeer:Lcom/android/settings/wifi/p2p/WifiP2pPeer;

    iget-object v4, v4, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->mDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v4, v4, Landroid/net/wifi/p2p/WifiP2pDevice;->GOdeviceName:Ljava/lang/String;

    if-nez v4, :cond_3

    iget-object v4, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mSelectedWifiPeer:Lcom/android/settings/wifi/p2p/WifiP2pPeer;

    iget-object v4, v4, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->mDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    invoke-virtual {v4}, Landroid/net/wifi/p2p/WifiP2pDevice;->isGroupClient()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_4

    :cond_3
    sget-object v4, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mThisDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v4, v4, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mSelectedWifiPeer:Lcom/android/settings/wifi/p2p/WifiP2pPeer;

    iget-object v5, v5, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->mDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v5, v5, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const v5, 0x7f12205f

    invoke-static {v4, v5, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :cond_4
    iget-object v4, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mSelectedWifiPeer:Lcom/android/settings/wifi/p2p/WifiP2pPeer;

    iget-object v4, v4, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->mDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    invoke-direct {p0, v4}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->getPreferredConfig(Landroid/net/wifi/p2p/WifiP2pDevice;)Landroid/net/wifi/p2p/WifiP2pConfig;

    move-result-object v1

    iget-object v4, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    if-eqz v4, :cond_0

    sget-object v4, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mContext:Landroid/content/Context;

    const-string/jumbo v5, "wifi"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/WifiManager;

    if-eqz v3, :cond_5

    new-instance v2, Landroid/os/Message;

    invoke-direct {v2}, Landroid/os/Message;-><init>()V

    const/16 v4, 0x4d

    iput v4, v2, Landroid/os/Message;->what:I

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v4, "feature"

    const-string/jumbo v5, "WDCR"

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v4, "extra"

    const-string/jumbo v5, "Settings"

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v3, v2}, Landroid/net/wifi/WifiManager;->callSECApi(Landroid/os/Message;)I

    const-string/jumbo v4, "WifiP2pSettings"

    const-string/jumbo v5, "Logging - WiFi Direct Connection Request from Settings"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    iget-object v4, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    iget-object v5, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    new-instance v6, Lcom/android/settings/wifi/p2p/WifiP2pSettings$9;

    invoke-direct {v6, p0}, Lcom/android/settings/wifi/p2p/WifiP2pSettings$9;-><init>(Lcom/android/settings/wifi/p2p/WifiP2pSettings;)V

    invoke-virtual {v4, v5, v1, v6}, Landroid/net/wifi/p2p/WifiP2pManager;->connect(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pConfig;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    sget-object v4, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/samsung/android/settings/SAUtils;->getInstance(Landroid/content/Context;)Lcom/samsung/android/settings/SAUtils;

    move-result-object v4

    const-wide/16 v6, 0x0

    invoke-virtual {v4, v9, v8, v6, v7}, Lcom/samsung/android/settings/SAUtils;->insertLog(IIJ)V

    goto/16 :goto_0
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/android/settings/RestrictedSettingsFragment;->onPrepareOptionsMenu(Landroid/view/Menu;)V

    return-void
.end method

.method public onResume()V
    .locals 10

    const/4 v6, 0x0

    const/4 v9, 0x1

    const/4 v2, 0x0

    invoke-super {p0}, Lcom/android/settings/RestrictedSettingsFragment;->onResume()V

    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    if-eqz v0, :cond_2

    const-string/jumbo v0, "WifiP2pSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onResume(), mAutoFinish : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v3, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mAutoFinish:Z

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, ", p2p enabled : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->isP2pEnabled()Z

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, ", p2p connected : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->isP2pConnected()Z

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "wifi"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/net/wifi/WifiManager;

    invoke-direct {p0}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->chkMdm()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-direct {p0}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->isP2pEnabled()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_4

    if-eqz v8, :cond_4

    invoke-virtual {v8}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {v8}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v0

    if-eq v0, v9, :cond_4

    invoke-virtual {v8}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result v0

    const/16 v1, 0xc

    if-eq v0, v1, :cond_4

    iget-boolean v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mPassCreate:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    iget-object v1, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    invoke-virtual {v0, v1}, Landroid/net/wifi/p2p/WifiP2pManager;->enableP2p(Landroid/net/wifi/p2p/WifiP2pManager$Channel;)V

    iput-boolean v2, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mPassCreate:Z

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    invoke-virtual {v0}, Landroid/net/wifi/p2p/WifiP2pManager;->isInactiveState()Z

    move-result v0

    if-eqz v0, :cond_1

    sput-boolean v2, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mInvited:Z

    :cond_1
    iget-boolean v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mIsSetTimer:Z

    if-eqz v0, :cond_2

    const-string/jumbo v0, "WifiP2pSettings"

    const-string/jumbo v1, "Stop listen offloading timmer & Cancel listen offloading"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    iget-object v1, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/p2p/WifiP2pManager;->setListenOffloadingTimer(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Z)V

    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    iget-object v1, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    move v3, v2

    move v4, v2

    move v5, v2

    invoke-virtual/range {v0 .. v6}, Landroid/net/wifi/p2p/WifiP2pManager;->setListenOffloading(Landroid/net/wifi/p2p/WifiP2pManager$Channel;IIIILandroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    iput-boolean v2, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mIsSetTimer:Z

    :cond_2
    invoke-direct {p0, v9}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->sendP2pSettingsStartedBroadcast(Z)V

    invoke-virtual {p0}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    invoke-virtual {p0}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v3, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v3}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iput-boolean v2, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mTalkback:Z

    invoke-virtual {p0}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/Utils;->isTalkBackEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    iput-boolean v9, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mTalkback:Z

    new-instance v0, Landroid/speech/tts/TextToSpeech;

    invoke-virtual {p0}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    new-instance v2, Lcom/android/settings/wifi/p2p/WifiP2pSettings$8;

    invoke-direct {v2, p0}, Lcom/android/settings/wifi/p2p/WifiP2pSettings$8;-><init>(Lcom/android/settings/wifi/p2p/WifiP2pSettings;)V

    invoke-direct {v0, v1, v2}, Landroid/speech/tts/TextToSpeech;-><init>(Landroid/content/Context;Landroid/speech/tts/TextToSpeech$OnInitListener;)V

    iput-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mTextToSpeech:Landroid/speech/tts/TextToSpeech;

    :cond_3
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {p0}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

    const-string/jumbo v3, "WiFiDirectSettings"

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->bindEmService(Landroid/content/Context;Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;Ljava/lang/Object;)V

    return-void

    :cond_4
    invoke-direct {p0}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->isP2pEnabled()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-direct {p0}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->isP2pConnected()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-boolean v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mAutoFinish:Z

    if-nez v0, :cond_6

    :cond_5
    invoke-direct {p0}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->chkMdm()Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_6
    :try_start_0
    invoke-direct {p0}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->selFinish()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v7

    const-string/jumbo v0, "WifiP2pSettings"

    const-string/jumbo v1, "IllegalStateException: Recursive entry to executePendingTransactions during calling finish method to close the fragment."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/android/settings/RestrictedSettingsFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    const/4 v0, 0x0

    const/4 v1, -0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->setTargetFragment(Landroid/app/Fragment;I)V

    return-void
.end method

.method public onStart()V
    .locals 2

    invoke-super {p0}, Lcom/android/settings/RestrictedSettingsFragment;->onStart()V

    const-string/jumbo v0, "WifiP2pSettings"

    const-string/jumbo v1, "onStart"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mContext:Landroid/content/Context;

    :cond_0
    sget-object v0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/settings/SAUtils;->getInstance(Landroid/content/Context;)Lcom/samsung/android/settings/SAUtils;

    move-result-object v0

    const v1, 0x7f121745

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/SAUtils;->insertLog(I)V

    return-void
.end method
