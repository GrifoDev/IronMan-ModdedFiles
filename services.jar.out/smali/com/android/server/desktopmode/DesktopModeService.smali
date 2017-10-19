.class public Lcom/android/server/desktopmode/DesktopModeService;
.super Lcom/samsung/android/desktopmode/IDesktopMode$Stub;
.source "DesktopModeService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/desktopmode/DesktopModeService$1;,
        Lcom/android/server/desktopmode/DesktopModeService$2;,
        Lcom/android/server/desktopmode/DesktopModeService$3;,
        Lcom/android/server/desktopmode/DesktopModeService$4;,
        Lcom/android/server/desktopmode/DesktopModeService$5;,
        Lcom/android/server/desktopmode/DesktopModeService$6;,
        Lcom/android/server/desktopmode/DesktopModeService$DesktopModeHandler;,
        Lcom/android/server/desktopmode/DesktopModeService$DesktopModeReceiver;,
        Lcom/android/server/desktopmode/DesktopModeService$Enabler;,
        Lcom/android/server/desktopmode/DesktopModeService$Lifecycle;,
        Lcom/android/server/desktopmode/DesktopModeService$PackageStateReceiver;
    }
.end annotation


# static fields
.field private static final ARG_DISMISSED_BY_TIMEOUT:I = -0x1

.field private static final DEBUG:Z

.field private static final DELAY_SET_DEFAULT_DISPLAY_ON:I = 0x3e8

.field private static final DELAY_SET_DESKTOP_MODE:I = 0x3e8

.field private static final DELAY_START_LOADING_SCREEN:I = 0x0

.field private static final DELAY_STOP_LOADING_SCREEN:I = 0x0

.field private static final DELAY_UPDATE_STATE:I = 0x7d0

.field private static final MSG_SET_DESKTOP_MODE_INNER:I = 0x1

.field private static final MSG_SHOW_DIALOG:I = 0x2

.field private static final MSG_START_LOADING_SCREEN:I = 0x3

.field private static final MSG_STOP_LOADING_SCREEN:I = 0x4

.field private static final MSG_UPDATE_DESKTOP_MODE:I = 0x6

.field private static final MSG_UPDATE_PROMOTION_DIALOG:I = 0x7

.field private static final MSG_UPDATE_TOUCHPAD_SCREEN:I = 0x5

.field private static final TAG:Ljava/lang/String;

.field private static final TIMEOUT_CPU_BOOST:I = 0x3a98

.field private static final TIMEOUT_LOADING_SCREEN:I = 0x3a98


# instance fields
.field private mActivityManager:Lcom/android/server/am/ActivityManagerService;

.field private mConnectedDisplay:Landroid/view/Display;

.field private mConnectedKeyboard:Landroid/view/InputDevice;

.field private mConnectedMouse:Landroid/view/InputDevice;

.field private mContext:Landroid/content/Context;

.field private mCoverController:Lcom/android/server/desktopmode/CoverSupportStateController;

.field private mCurrentLaunchPolicyMode:I

.field private mCurrentUiMode:I

.field private mCurrentUserId:I

.field private mCustomDensity:I

.field private mCustomHeight:I

.field private mCustomWidth:I

.field private mDefaultDisplayEnabler:Lcom/android/server/desktopmode/DesktopModeService$Enabler;

.field private mDesktopModeState:Lcom/samsung/android/desktopmode/SemDesktopModeState;

.field private final mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

.field private mDisplayManager:Landroid/hardware/display/DisplayManager;

.field private mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

.field private mDockState:I

.field private mDvfsManager:Lcom/samsung/android/os/SemDvfsManager;

.field private mEmergencyModeBlocker:Lcom/android/server/desktopmode/EmergencyModeBlocker;

.field private mEnterpriseDeviceManager:Lcom/samsung/android/knox/EnterpriseDeviceManager;

.field private mEntryController:Lcom/android/server/desktopmode/DesktopModeEntryController;

.field private mEntryExternalDisplayConnected:Z

.field private mHandler:Lcom/android/server/desktopmode/DesktopModeService$DesktopModeHandler;

.field private final mInputDeviceListener:Landroid/hardware/input/InputManager$InputDeviceListener;

.field private mInputManager:Landroid/hardware/input/InputManager;

.field private mInputManagerService:Lcom/android/server/input/InputManagerService;

.field private mIsBiometric:Z

.field private mIsBootComplete:Z

.field private mIsBtMouseDeepSleep:Z

.field private mIsDesktopDockConnected:Z

.field private mIsDesktopMode:Z

.field private mIsExternalDisplayConnected:Z

.field private mIsForcedDesktopMode:Z

.field private mIsKeyboardConnected:Z

.field private mIsMouseConnected:Z

.field private mIsSPenDetached:Z

.field private mLauncherInterface:Lcom/samsung/android/desktopmode/IDesktopModeLauncher;

.field private final mLock:Ljava/lang/Object;

.field private mModeChangeLock:Z

.field private mPackageState:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mPersonaManager:Lcom/samsung/android/knox/SemPersonaManager;

.field private final mPointerEventListener:Landroid/view/WindowManagerPolicy$PointerEventListener;

.field private mPowerManagerInternal:Landroid/os/PowerManagerInternal;

.field private final mProcessObserver:Landroid/app/IProcessObserver;

.field private mResolver:Landroid/content/ContentResolver;

.field private mSPenFeatureEnabled:Z

.field private mSamsungActivityManager:Lcom/android/server/am/IActivityManagerServiceBridge;

.field private mSamsungWindowManager:Lcom/android/server/wm/IWindowManagerServiceBridge;

.field private final mSettingsObserver:Landroid/database/ContentObserver;

.field private mStateNotifier:Lcom/android/server/desktopmode/StateNotifier;

.field private mStatusBarManager:Landroid/app/StatusBarManager;

.field private mStopFreezingDisplayCalled:Z

.field private mTelecomManager:Landroid/telecom/TelecomManager;

.field private mToast:Lcom/android/server/desktopmode/ToastManager;

.field private mTopTaskId:I

.field private mTopTaskIntent:Landroid/content/Intent;

.field private mTouchScreenEnabler:Lcom/android/server/desktopmode/DesktopModeService$Enabler;

.field private mTouchpadEnabled:Z

.field private final mUEventObserver:Landroid/os/UEventObserver;

.field private mUiManager:Lcom/android/server/desktopmode/DesktopModeUiManager;

.field private mUiModeManager:Landroid/app/IUiModeManager;

.field private mUserSetupCompleteObserver:Landroid/database/ContentObserver;

.field private mWallpaperShown:Z

.field private mWindowManager:Lcom/android/server/wm/WindowManagerService;


# direct methods
.method static synthetic -get0()Z
    .locals 1

    sget-boolean v0, Lcom/android/server/desktopmode/DesktopModeService;->DEBUG:Z

    return v0
.end method

.method static synthetic -get1()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/server/desktopmode/DesktopModeService;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get10(Lcom/android/server/desktopmode/DesktopModeService;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mIsDesktopDockConnected:Z

    return v0
.end method

.method static synthetic -get11(Lcom/android/server/desktopmode/DesktopModeService;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mIsDesktopMode:Z

    return v0
.end method

.method static synthetic -get12(Lcom/android/server/desktopmode/DesktopModeService;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mIsExternalDisplayConnected:Z

    return v0
.end method

.method static synthetic -get13(Lcom/android/server/desktopmode/DesktopModeService;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mIsMouseConnected:Z

    return v0
.end method

.method static synthetic -get14(Lcom/android/server/desktopmode/DesktopModeService;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mIsSPenDetached:Z

    return v0
.end method

.method static synthetic -get15(Lcom/android/server/desktopmode/DesktopModeService;)Ljava/util/Map;
    .locals 1

    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mPackageState:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic -get16(Lcom/android/server/desktopmode/DesktopModeService;)Landroid/view/WindowManagerPolicy$PointerEventListener;
    .locals 1

    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mPointerEventListener:Landroid/view/WindowManagerPolicy$PointerEventListener;

    return-object v0
.end method

.method static synthetic -get17(Lcom/android/server/desktopmode/DesktopModeService;)Landroid/os/PowerManagerInternal;
    .locals 1

    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mPowerManagerInternal:Landroid/os/PowerManagerInternal;

    return-object v0
.end method

.method static synthetic -get18(Lcom/android/server/desktopmode/DesktopModeService;)Landroid/content/ContentResolver;
    .locals 1

    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mResolver:Landroid/content/ContentResolver;

    return-object v0
.end method

.method static synthetic -get19(Lcom/android/server/desktopmode/DesktopModeService;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mSPenFeatureEnabled:Z

    return v0
.end method

.method static synthetic -get2(Lcom/android/server/desktopmode/DesktopModeService;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get20(Lcom/android/server/desktopmode/DesktopModeService;)Lcom/android/server/am/IActivityManagerServiceBridge;
    .locals 1

    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mSamsungActivityManager:Lcom/android/server/am/IActivityManagerServiceBridge;

    return-object v0
.end method

.method static synthetic -get21(Lcom/android/server/desktopmode/DesktopModeService;)Lcom/android/server/wm/IWindowManagerServiceBridge;
    .locals 1

    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mSamsungWindowManager:Lcom/android/server/wm/IWindowManagerServiceBridge;

    return-object v0
.end method

.method static synthetic -get22(Lcom/android/server/desktopmode/DesktopModeService;)Lcom/android/server/desktopmode/StateNotifier;
    .locals 1

    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mStateNotifier:Lcom/android/server/desktopmode/StateNotifier;

    return-object v0
.end method

.method static synthetic -get23(Lcom/android/server/desktopmode/DesktopModeService;)Landroid/app/StatusBarManager;
    .locals 1

    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mStatusBarManager:Landroid/app/StatusBarManager;

    return-object v0
.end method

.method static synthetic -get24(Lcom/android/server/desktopmode/DesktopModeService;)Landroid/telecom/TelecomManager;
    .locals 1

    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mTelecomManager:Landroid/telecom/TelecomManager;

    return-object v0
.end method

.method static synthetic -get25(Lcom/android/server/desktopmode/DesktopModeService;)Lcom/android/server/desktopmode/ToastManager;
    .locals 1

    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mToast:Lcom/android/server/desktopmode/ToastManager;

    return-object v0
.end method

.method static synthetic -get26(Lcom/android/server/desktopmode/DesktopModeService;)I
    .locals 1

    iget v0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mTopTaskId:I

    return v0
.end method

.method static synthetic -get27(Lcom/android/server/desktopmode/DesktopModeService;)Landroid/content/Intent;
    .locals 1

    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mTopTaskIntent:Landroid/content/Intent;

    return-object v0
.end method

.method static synthetic -get28(Lcom/android/server/desktopmode/DesktopModeService;)Lcom/android/server/desktopmode/DesktopModeService$Enabler;
    .locals 1

    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mTouchScreenEnabler:Lcom/android/server/desktopmode/DesktopModeService$Enabler;

    return-object v0
.end method

.method static synthetic -get29(Lcom/android/server/desktopmode/DesktopModeService;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mTouchpadEnabled:Z

    return v0
.end method

.method static synthetic -get3(Lcom/android/server/desktopmode/DesktopModeService;)Lcom/android/server/desktopmode/CoverSupportStateController;
    .locals 1

    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mCoverController:Lcom/android/server/desktopmode/CoverSupportStateController;

    return-object v0
.end method

.method static synthetic -get30(Lcom/android/server/desktopmode/DesktopModeService;)Lcom/android/server/desktopmode/DesktopModeUiManager;
    .locals 1

    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mUiManager:Lcom/android/server/desktopmode/DesktopModeUiManager;

    return-object v0
.end method

.method static synthetic -get31(Lcom/android/server/desktopmode/DesktopModeService;)Lcom/android/server/wm/WindowManagerService;
    .locals 1

    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/server/desktopmode/DesktopModeService;)I
    .locals 1

    iget v0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mCurrentUserId:I

    return v0
.end method

.method static synthetic -get5(Lcom/android/server/desktopmode/DesktopModeService;)Lcom/android/server/desktopmode/DesktopModeService$Enabler;
    .locals 1

    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mDefaultDisplayEnabler:Lcom/android/server/desktopmode/DesktopModeService$Enabler;

    return-object v0
.end method

.method static synthetic -get6(Lcom/android/server/desktopmode/DesktopModeService;)Lcom/samsung/android/desktopmode/SemDesktopModeState;
    .locals 1

    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mDesktopModeState:Lcom/samsung/android/desktopmode/SemDesktopModeState;

    return-object v0
.end method

.method static synthetic -get7(Lcom/android/server/desktopmode/DesktopModeService;)Lcom/samsung/android/os/SemDvfsManager;
    .locals 1

    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mDvfsManager:Lcom/samsung/android/os/SemDvfsManager;

    return-object v0
.end method

.method static synthetic -get8(Lcom/android/server/desktopmode/DesktopModeService;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mEntryExternalDisplayConnected:Z

    return v0
.end method

.method static synthetic -get9(Lcom/android/server/desktopmode/DesktopModeService;)Lcom/android/server/desktopmode/DesktopModeService$DesktopModeHandler;
    .locals 1

    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mHandler:Lcom/android/server/desktopmode/DesktopModeService$DesktopModeHandler;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/server/desktopmode/DesktopModeService;Lcom/android/server/desktopmode/DesktopModeService$Enabler;)Lcom/android/server/desktopmode/DesktopModeService$Enabler;
    .locals 0

    iput-object p1, p0, Lcom/android/server/desktopmode/DesktopModeService;->mDefaultDisplayEnabler:Lcom/android/server/desktopmode/DesktopModeService$Enabler;

    return-object p1
.end method

.method static synthetic -set1(Lcom/android/server/desktopmode/DesktopModeService;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/desktopmode/DesktopModeService;->mIsBtMouseDeepSleep:Z

    return p1
.end method

.method static synthetic -set2(Lcom/android/server/desktopmode/DesktopModeService;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/desktopmode/DesktopModeService;->mIsDesktopMode:Z

    return p1
.end method

.method static synthetic -set3(Lcom/android/server/desktopmode/DesktopModeService;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/desktopmode/DesktopModeService;->mIsSPenDetached:Z

    return p1
.end method

.method static synthetic -set4(Lcom/android/server/desktopmode/DesktopModeService;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/desktopmode/DesktopModeService;->mModeChangeLock:Z

    return p1
.end method

.method static synthetic -set5(Lcom/android/server/desktopmode/DesktopModeService;Lcom/android/server/desktopmode/DesktopModeService$Enabler;)Lcom/android/server/desktopmode/DesktopModeService$Enabler;
    .locals 0

    iput-object p1, p0, Lcom/android/server/desktopmode/DesktopModeService;->mTouchScreenEnabler:Lcom/android/server/desktopmode/DesktopModeService$Enabler;

    return-object p1
.end method

.method static synthetic -set6(Lcom/android/server/desktopmode/DesktopModeService;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/desktopmode/DesktopModeService;->mTouchpadEnabled:Z

    return p1
.end method

.method static synthetic -set7(Lcom/android/server/desktopmode/DesktopModeService;Landroid/database/ContentObserver;)Landroid/database/ContentObserver;
    .locals 0

    iput-object p1, p0, Lcom/android/server/desktopmode/DesktopModeService;->mUserSetupCompleteObserver:Landroid/database/ContentObserver;

    return-object p1
.end method

.method static synthetic -set8(Lcom/android/server/desktopmode/DesktopModeService;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/desktopmode/DesktopModeService;->mWallpaperShown:Z

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/server/desktopmode/DesktopModeService;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/server/desktopmode/DesktopModeService;->updateExternalDisplayStatus()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/android/server/desktopmode/DesktopModeService;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/server/desktopmode/DesktopModeService;->updateInputDeviceStatus()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap10(Lcom/android/server/desktopmode/DesktopModeService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/desktopmode/DesktopModeService;->initializeStates()V

    return-void
.end method

.method static synthetic -wrap11(Lcom/android/server/desktopmode/DesktopModeService;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/desktopmode/DesktopModeService;->onBootPhase(I)V

    return-void
.end method

.method static synthetic -wrap12(Lcom/android/server/desktopmode/DesktopModeService;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/desktopmode/DesktopModeService;->onCleanupUser(I)V

    return-void
.end method

.method static synthetic -wrap13(Lcom/android/server/desktopmode/DesktopModeService;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/desktopmode/DesktopModeService;->onStartUser(I)V

    return-void
.end method

.method static synthetic -wrap14(Lcom/android/server/desktopmode/DesktopModeService;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/desktopmode/DesktopModeService;->onStopUser(I)V

    return-void
.end method

.method static synthetic -wrap15(Lcom/android/server/desktopmode/DesktopModeService;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/desktopmode/DesktopModeService;->onSwitchUser(I)V

    return-void
.end method

.method static synthetic -wrap16(Lcom/android/server/desktopmode/DesktopModeService;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/desktopmode/DesktopModeService;->onUnlockUser(I)V

    return-void
.end method

.method static synthetic -wrap17(Lcom/android/server/desktopmode/DesktopModeService;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/desktopmode/DesktopModeService;->scheduleStartLoadingScreen(Z)V

    return-void
.end method

.method static synthetic -wrap18(Lcom/android/server/desktopmode/DesktopModeService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/desktopmode/DesktopModeService;->scheduleStopLoadingScreenIfPossible()V

    return-void
.end method

.method static synthetic -wrap19(Lcom/android/server/desktopmode/DesktopModeService;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/desktopmode/DesktopModeService;->setAlpmMode(I)V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/server/desktopmode/DesktopModeService;Ljava/lang/String;)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/server/desktopmode/DesktopModeService;->updatePackageState(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap20(Lcom/android/server/desktopmode/DesktopModeService;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/desktopmode/DesktopModeService;->setDefaultDisplayPowerMode(I)V

    return-void
.end method

.method static synthetic -wrap21(Lcom/android/server/desktopmode/DesktopModeService;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/desktopmode/DesktopModeService;->setDesktopModeInner(Z)V

    return-void
.end method

.method static synthetic -wrap22(Lcom/android/server/desktopmode/DesktopModeService;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/server/desktopmode/DesktopModeService;->setDesktopModeState(II)V

    return-void
.end method

.method static synthetic -wrap23(Lcom/android/server/desktopmode/DesktopModeService;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/desktopmode/DesktopModeService;->setDesktopTaskBar(Z)V

    return-void
.end method

.method static synthetic -wrap24(Lcom/android/server/desktopmode/DesktopModeService;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/desktopmode/DesktopModeService;->setDisplayPortState(Z)V

    return-void
.end method

.method static synthetic -wrap25(Lcom/android/server/desktopmode/DesktopModeService;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/desktopmode/DesktopModeService;->setDockState(I)V

    return-void
.end method

.method static synthetic -wrap26(Lcom/android/server/desktopmode/DesktopModeService;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/desktopmode/DesktopModeService;->setSettingsComponent(Z)V

    return-void
.end method

.method static synthetic -wrap27(Lcom/android/server/desktopmode/DesktopModeService;ZI)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/server/desktopmode/DesktopModeService;->setTouchPadScreen(ZI)V

    return-void
.end method

.method static synthetic -wrap28(Lcom/android/server/desktopmode/DesktopModeService;ILcom/android/server/desktopmode/DesktopModeUiManager$InternalDialogCallback;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/server/desktopmode/DesktopModeService;->showDialog(ILcom/android/server/desktopmode/DesktopModeUiManager$InternalDialogCallback;)V

    return-void
.end method

.method static synthetic -wrap29(Lcom/android/server/desktopmode/DesktopModeService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/desktopmode/DesktopModeService;->showDisplayUnsupportDialogIfNeeded()V

    return-void
.end method

.method static synthetic -wrap3(Lcom/android/server/desktopmode/DesktopModeService;)I
    .locals 1

    invoke-direct {p0}, Lcom/android/server/desktopmode/DesktopModeService;->getHdmiSettings()I

    move-result v0

    return v0
.end method

.method static synthetic -wrap30(Lcom/android/server/desktopmode/DesktopModeService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/desktopmode/DesktopModeService;->startHome()V

    return-void
.end method

.method static synthetic -wrap31(Lcom/android/server/desktopmode/DesktopModeService;Landroid/content/Intent;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/server/desktopmode/DesktopModeService;->startTopActivity(Landroid/content/Intent;I)V

    return-void
.end method

.method static synthetic -wrap32(Lcom/android/server/desktopmode/DesktopModeService;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/desktopmode/DesktopModeService;->updateDesktopMode(Z)V

    return-void
.end method

.method static synthetic -wrap33(Lcom/android/server/desktopmode/DesktopModeService;ZZ)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/server/desktopmode/DesktopModeService;->updateOngoingNotification(ZZ)V

    return-void
.end method

.method static synthetic -wrap34(Lcom/android/server/desktopmode/DesktopModeService;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/desktopmode/DesktopModeService;->updateOngoingNotification(Z)V

    return-void
.end method

.method static synthetic -wrap35(Lcom/android/server/desktopmode/DesktopModeService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/desktopmode/DesktopModeService;->updateTouchPadScreen()V

    return-void
.end method

.method static synthetic -wrap36(Lcom/android/server/desktopmode/DesktopModeService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/desktopmode/DesktopModeService;->verifyCurrentState()V

    return-void
.end method

.method static synthetic -wrap4(Lcom/android/server/desktopmode/DesktopModeService;)Ljava/util/List;
    .locals 1

    invoke-direct {p0}, Lcom/android/server/desktopmode/DesktopModeService;->updatePackageState()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap5(Lcom/android/server/desktopmode/DesktopModeService;ZI)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/server/desktopmode/DesktopModeService;->backupOrRestoreSettings(ZI)V

    return-void
.end method

.method static synthetic -wrap6(Lcom/android/server/desktopmode/DesktopModeService;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/desktopmode/DesktopModeService;->blockDefaultDisplayAndTouchScreen(Z)V

    return-void
.end method

.method static synthetic -wrap7(Lcom/android/server/desktopmode/DesktopModeService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/desktopmode/DesktopModeService;->clearSettingsBadgeCount()V

    return-void
.end method

.method static synthetic -wrap8(Lcom/android/server/desktopmode/DesktopModeService;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/desktopmode/DesktopModeService;->clearSettingsByLauncherDataCleared(I)V

    return-void
.end method

.method static synthetic -wrap9(Lcom/android/server/desktopmode/DesktopModeService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/desktopmode/DesktopModeService;->closeLaunchConfirmDialog()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/android/server/desktopmode/DesktopModeService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/desktopmode/DesktopModeService;->TAG:Ljava/lang/String;

    sget-boolean v0, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    sput-boolean v0, Lcom/android/server/desktopmode/DesktopModeService;->DEBUG:Z

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 11

    const/4 v2, -0x1

    const/4 v5, 0x0

    const/4 v4, 0x0

    invoke-direct {p0}, Lcom/samsung/android/desktopmode/IDesktopMode$Stub;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mLock:Ljava/lang/Object;

    new-instance v0, Lcom/android/server/desktopmode/DesktopModeService$1;

    invoke-direct {v0, p0}, Lcom/android/server/desktopmode/DesktopModeService$1;-><init>(Lcom/android/server/desktopmode/DesktopModeService;)V

    iput-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mProcessObserver:Landroid/app/IProcessObserver;

    new-instance v0, Lcom/android/server/desktopmode/DesktopModeService$2;

    invoke-direct {v0, p0}, Lcom/android/server/desktopmode/DesktopModeService$2;-><init>(Lcom/android/server/desktopmode/DesktopModeService;)V

    iput-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

    new-instance v0, Lcom/android/server/desktopmode/DesktopModeService$3;

    invoke-direct {v0, p0}, Lcom/android/server/desktopmode/DesktopModeService$3;-><init>(Lcom/android/server/desktopmode/DesktopModeService;)V

    iput-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mInputDeviceListener:Landroid/hardware/input/InputManager$InputDeviceListener;

    new-instance v0, Lcom/android/server/desktopmode/DesktopModeService$4;

    invoke-direct {v0, p0}, Lcom/android/server/desktopmode/DesktopModeService$4;-><init>(Lcom/android/server/desktopmode/DesktopModeService;)V

    iput-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mUEventObserver:Landroid/os/UEventObserver;

    new-instance v0, Lcom/android/server/desktopmode/DesktopModeService$5;

    invoke-direct {v0, p0, v4}, Lcom/android/server/desktopmode/DesktopModeService$5;-><init>(Lcom/android/server/desktopmode/DesktopModeService;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mSettingsObserver:Landroid/database/ContentObserver;

    new-instance v0, Lcom/android/server/desktopmode/DesktopModeService$6;

    invoke-direct {v0, p0}, Lcom/android/server/desktopmode/DesktopModeService$6;-><init>(Lcom/android/server/desktopmode/DesktopModeService;)V

    iput-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mPointerEventListener:Landroid/view/WindowManagerPolicy$PointerEventListener;

    iput-boolean v5, p0, Lcom/android/server/desktopmode/DesktopModeService;->mIsDesktopMode:Z

    iput-boolean v5, p0, Lcom/android/server/desktopmode/DesktopModeService;->mIsDesktopDockConnected:Z

    iput-boolean v5, p0, Lcom/android/server/desktopmode/DesktopModeService;->mIsForcedDesktopMode:Z

    iput-boolean v5, p0, Lcom/android/server/desktopmode/DesktopModeService;->mIsExternalDisplayConnected:Z

    iput-boolean v5, p0, Lcom/android/server/desktopmode/DesktopModeService;->mEntryExternalDisplayConnected:Z

    iput-boolean v5, p0, Lcom/android/server/desktopmode/DesktopModeService;->mIsMouseConnected:Z

    iput-boolean v5, p0, Lcom/android/server/desktopmode/DesktopModeService;->mIsBtMouseDeepSleep:Z

    iput-boolean v5, p0, Lcom/android/server/desktopmode/DesktopModeService;->mIsKeyboardConnected:Z

    iput-boolean v5, p0, Lcom/android/server/desktopmode/DesktopModeService;->mModeChangeLock:Z

    iput-boolean v5, p0, Lcom/android/server/desktopmode/DesktopModeService;->mIsBiometric:Z

    iput-boolean v5, p0, Lcom/android/server/desktopmode/DesktopModeService;->mIsBootComplete:Z

    iput-boolean v5, p0, Lcom/android/server/desktopmode/DesktopModeService;->mStopFreezingDisplayCalled:Z

    iput-boolean v5, p0, Lcom/android/server/desktopmode/DesktopModeService;->mWallpaperShown:Z

    iput-boolean v5, p0, Lcom/android/server/desktopmode/DesktopModeService;->mIsSPenDetached:Z

    iput-boolean v5, p0, Lcom/android/server/desktopmode/DesktopModeService;->mSPenFeatureEnabled:Z

    iput-boolean v5, p0, Lcom/android/server/desktopmode/DesktopModeService;->mTouchpadEnabled:Z

    new-instance v0, Lcom/samsung/android/desktopmode/SemDesktopModeState;

    const/4 v1, 0x2

    invoke-direct {v0, v1, v5}, Lcom/samsung/android/desktopmode/SemDesktopModeState;-><init>(II)V

    iput-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mDesktopModeState:Lcom/samsung/android/desktopmode/SemDesktopModeState;

    iput v5, p0, Lcom/android/server/desktopmode/DesktopModeService;->mDockState:I

    const/16 v0, -0x2710

    iput v0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mCurrentUserId:I

    iput v2, p0, Lcom/android/server/desktopmode/DesktopModeService;->mCustomWidth:I

    iput v2, p0, Lcom/android/server/desktopmode/DesktopModeService;->mCustomHeight:I

    iput v2, p0, Lcom/android/server/desktopmode/DesktopModeService;->mCustomDensity:I

    iput v2, p0, Lcom/android/server/desktopmode/DesktopModeService;->mTopTaskId:I

    iput v5, p0, Lcom/android/server/desktopmode/DesktopModeService;->mCurrentLaunchPolicyMode:I

    iput-object v4, p0, Lcom/android/server/desktopmode/DesktopModeService;->mContext:Landroid/content/Context;

    iput-object v4, p0, Lcom/android/server/desktopmode/DesktopModeService;->mResolver:Landroid/content/ContentResolver;

    iput-object v4, p0, Lcom/android/server/desktopmode/DesktopModeService;->mHandler:Lcom/android/server/desktopmode/DesktopModeService$DesktopModeHandler;

    iput-object v4, p0, Lcom/android/server/desktopmode/DesktopModeService;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    iput-object v4, p0, Lcom/android/server/desktopmode/DesktopModeService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iput-object v4, p0, Lcom/android/server/desktopmode/DesktopModeService;->mInputManagerService:Lcom/android/server/input/InputManagerService;

    iput-object v4, p0, Lcom/android/server/desktopmode/DesktopModeService;->mInputManager:Landroid/hardware/input/InputManager;

    iput-object v4, p0, Lcom/android/server/desktopmode/DesktopModeService;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    iput-object v4, p0, Lcom/android/server/desktopmode/DesktopModeService;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    iput-object v4, p0, Lcom/android/server/desktopmode/DesktopModeService;->mStatusBarManager:Landroid/app/StatusBarManager;

    iput-object v4, p0, Lcom/android/server/desktopmode/DesktopModeService;->mSamsungActivityManager:Lcom/android/server/am/IActivityManagerServiceBridge;

    iput-object v4, p0, Lcom/android/server/desktopmode/DesktopModeService;->mSamsungWindowManager:Lcom/android/server/wm/IWindowManagerServiceBridge;

    iput-object v4, p0, Lcom/android/server/desktopmode/DesktopModeService;->mUiModeManager:Landroid/app/IUiModeManager;

    iput-object v4, p0, Lcom/android/server/desktopmode/DesktopModeService;->mDvfsManager:Lcom/samsung/android/os/SemDvfsManager;

    iput-object v4, p0, Lcom/android/server/desktopmode/DesktopModeService;->mTopTaskIntent:Landroid/content/Intent;

    iput-object v4, p0, Lcom/android/server/desktopmode/DesktopModeService;->mConnectedDisplay:Landroid/view/Display;

    iput-object v4, p0, Lcom/android/server/desktopmode/DesktopModeService;->mConnectedMouse:Landroid/view/InputDevice;

    iput-object v4, p0, Lcom/android/server/desktopmode/DesktopModeService;->mConnectedKeyboard:Landroid/view/InputDevice;

    iput-object v4, p0, Lcom/android/server/desktopmode/DesktopModeService;->mPowerManagerInternal:Landroid/os/PowerManagerInternal;

    iput-object v4, p0, Lcom/android/server/desktopmode/DesktopModeService;->mTelecomManager:Landroid/telecom/TelecomManager;

    iput-object v4, p0, Lcom/android/server/desktopmode/DesktopModeService;->mPersonaManager:Lcom/samsung/android/knox/SemPersonaManager;

    iput-object v4, p0, Lcom/android/server/desktopmode/DesktopModeService;->mEnterpriseDeviceManager:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mPackageState:Ljava/util/Map;

    iput-object v4, p0, Lcom/android/server/desktopmode/DesktopModeService;->mTouchScreenEnabler:Lcom/android/server/desktopmode/DesktopModeService$Enabler;

    iput-object v4, p0, Lcom/android/server/desktopmode/DesktopModeService;->mDefaultDisplayEnabler:Lcom/android/server/desktopmode/DesktopModeService$Enabler;

    iput-object p1, p0, Lcom/android/server/desktopmode/DesktopModeService;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mContext:Landroid/content/Context;

    const v1, 0x103012b

    invoke-virtual {v0, v1}, Landroid/content/Context;->setTheme(I)V

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mResolver:Landroid/content/ContentResolver;

    new-instance v0, Lcom/android/server/desktopmode/DesktopModeService$DesktopModeHandler;

    invoke-direct {v0, p0, v4}, Lcom/android/server/desktopmode/DesktopModeService$DesktopModeHandler;-><init>(Lcom/android/server/desktopmode/DesktopModeService;Lcom/android/server/desktopmode/DesktopModeService$DesktopModeHandler;)V

    iput-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mHandler:Lcom/android/server/desktopmode/DesktopModeService$DesktopModeHandler;

    new-instance v0, Lcom/android/server/desktopmode/StateNotifier;

    iget-object v1, p0, Lcom/android/server/desktopmode/DesktopModeService;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/server/desktopmode/StateNotifier;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mStateNotifier:Lcom/android/server/desktopmode/StateNotifier;

    new-instance v0, Lcom/android/server/desktopmode/ToastManager;

    iget-object v1, p0, Lcom/android/server/desktopmode/DesktopModeService;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/server/desktopmode/ToastManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mToast:Lcom/android/server/desktopmode/ToastManager;

    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mPackageState:Ljava/util/Map;

    const-string/jumbo v1, "com.sec.android.app.desktoplauncher"

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mPackageState:Ljava/util/Map;

    const-string/jumbo v1, "com.sec.android.desktopmode.uiservice"

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v0, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v0, "android.intent.action.PACKAGE_FULLY_REMOVED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v0, "android.intent.action.PACKAGE_REPLACED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v0, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v0, "android.intent.action.PACKAGE_DATA_CLEARED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v0, "package"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    new-instance v1, Lcom/android/server/desktopmode/DesktopModeService$PackageStateReceiver;

    invoke-direct {v1, p0, v4}, Lcom/android/server/desktopmode/DesktopModeService$PackageStateReceiver;-><init>(Lcom/android/server/desktopmode/DesktopModeService;Lcom/android/server/desktopmode/DesktopModeService$PackageStateReceiver;)V

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    move-object v0, p1

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    new-instance v8, Landroid/content/IntentFilter;

    invoke-direct {v8}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v0, "com.android.server.desktopmode.action.DESKTOP_MODE_UPDATE_REQUEST"

    invoke-virtual {v8, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v0, "android.intent.action.TIME_TICK"

    invoke-virtual {v8, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v0, "com.android.server.desktopmode.action.TOUCHPAD_NOTIFICATION_PRESSED"

    invoke-virtual {v8, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v0, "android.intent.action.PHONE_STATE"

    invoke-virtual {v8, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v0, "android.bluetooth.device.action.ACL_DISCONNECTED"

    invoke-virtual {v8, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v0, "com.samsung.android.intent.action.WALLPAPER_ENGINE_SHOWN"

    invoke-virtual {v8, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v0, "com.samsung.pen.INSERT"

    invoke-virtual {v8, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v0, "com.samsung.android.knox.intent.action.ADD_PACKAGE_PREVENT_START_BLACKLIST_CHANGED_INTERNAL"

    invoke-virtual {v8, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    new-instance v6, Lcom/android/server/desktopmode/DesktopModeService$DesktopModeReceiver;

    invoke-direct {v6, p0, v4}, Lcom/android/server/desktopmode/DesktopModeService$DesktopModeReceiver;-><init>(Lcom/android/server/desktopmode/DesktopModeService;Lcom/android/server/desktopmode/DesktopModeService$DesktopModeReceiver;)V

    sget-object v7, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    move-object v5, p1

    move-object v9, v4

    move-object v10, v4

    invoke-virtual/range {v5 .. v10}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    return-void
.end method

.method synthetic constructor <init>(Landroid/content/Context;Lcom/android/server/desktopmode/DesktopModeService;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/desktopmode/DesktopModeService;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method private backupOrRestoreSettings(ZI)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v1, "enabled"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, p2}, Lcom/android/server/desktopmode/DesktopModeSettingsManager;->getSettingsAsUser(Landroid/content/ContentResolver;Ljava/lang/String;ZI)Z

    move-result v0

    if-ne p1, v0, :cond_2

    sget-boolean v0, Lcom/android/server/desktopmode/DesktopModeService;->DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v1, Lcom/android/server/desktopmode/DesktopModeService;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "backupOrRestoreSettings(), enter="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, ", userId="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, ", Already "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-eqz p1, :cond_1

    const-string/jumbo v0, "backed up!"

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void

    :cond_1
    const-string/jumbo v0, "restored!"

    goto :goto_0

    :cond_2
    sget-boolean v0, Lcom/android/server/desktopmode/DesktopModeService;->DEBUG:Z

    if-eqz v0, :cond_3

    sget-object v0, Lcom/android/server/desktopmode/DesktopModeService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "backupOrRestoreSettings(), enter="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", userId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    invoke-direct {p0, p1, p2}, Lcom/android/server/desktopmode/DesktopModeService;->setScreenOffTimeout(ZI)V

    invoke-direct {p0, p1, p2}, Lcom/android/server/desktopmode/DesktopModeService;->setVirtualKeyboard(ZI)V

    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v1, "enabled"

    invoke-static {v0, v1, p1, p2}, Lcom/android/server/desktopmode/DesktopModeSettingsManager;->setSettingsAsUser(Landroid/content/ContentResolver;Ljava/lang/String;ZI)V

    return-void
.end method

.method private blockDefaultDisplayAndTouchScreen(Z)V
    .locals 3

    const/4 v2, 0x1

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-direct {p0, v0}, Lcom/android/server/desktopmode/DesktopModeService;->setDefaultDisplayPowerMode(I)V

    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mInputManagerService:Lcom/android/server/input/InputManagerService;

    const-class v1, Lcom/android/server/desktopmode/DesktopModeService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v2, v2, v1}, Lcom/android/server/input/InputManagerService;->setBlockDeviceMode(ZIZLjava/lang/String;)V

    return-void

    :cond_0
    const/4 v0, 0x2

    goto :goto_0
.end method

.method private clearSettingsBadgeCount()V
    .locals 7

    const/4 v6, 0x0

    sget-boolean v1, Lcom/android/server/desktopmode/DesktopModeService;->DEBUG:Z

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/server/desktopmode/DesktopModeService;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "clearSettingsBadgeCount()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string/jumbo v1, "badgecount"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    iget-object v1, p0, Lcom/android/server/desktopmode/DesktopModeService;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v2, "content://com.sec.badge/apps"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const-string/jumbo v3, "package=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const-string/jumbo v5, "com.sec.android.app.desktoplauncher"

    aput-object v5, v4, v6

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/server/desktopmode/DesktopModeService;->mContext:Landroid/content/Context;

    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v3, "com.samsung.settings.SETTINGS_BADGE_COUNT"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/android/server/desktopmode/DesktopModeService;->mCurrentUserId:I

    invoke-static {v3}, Landroid/os/UserHandle;->semOf(I)Landroid/os/UserHandle;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    return-void
.end method

.method private clearSettingsByLauncherDataCleared(I)V
    .locals 2

    iget-boolean v0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mIsDesktopMode:Z

    if-eqz v0, :cond_1

    sget-boolean v0, Lcom/android/server/desktopmode/DesktopModeService;->DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/desktopmode/DesktopModeService;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "set Dex default on Screen off timeout and Virtual keyboard"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const v0, 0x927c0

    invoke-direct {p0, v0, p1}, Lcom/android/server/desktopmode/DesktopModeService;->setNormalModeScreenOffTimeout(II)V

    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lcom/android/server/desktopmode/DesktopModeService;->setNormalModeVirtualKeyboard(II)V

    :cond_1
    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mResolver:Landroid/content/ContentResolver;

    invoke-static {v0, p1}, Lcom/android/server/desktopmode/DesktopModeSettingsManager;->clearSettingsAsUser(Landroid/content/ContentResolver;I)V

    return-void
.end method

.method private closeLaunchConfirmDialog()V
    .locals 4

    iget-object v1, p0, Lcom/android/server/desktopmode/DesktopModeService;->mUiManager:Lcom/android/server/desktopmode/DesktopModeUiManager;

    invoke-virtual {v1}, Lcom/android/server/desktopmode/DesktopModeUiManager;->getCurrentDialogType()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    :cond_0
    invoke-direct {p0}, Lcom/android/server/desktopmode/DesktopModeService;->dismissDialog()V

    iget-object v1, p0, Lcom/android/server/desktopmode/DesktopModeService;->mUiManager:Lcom/android/server/desktopmode/DesktopModeUiManager;

    const/16 v2, 0x67

    const/16 v3, 0x6f

    invoke-virtual {v1, v2, v3}, Lcom/android/server/desktopmode/DesktopModeUiManager;->dismissPresentation(II)V

    :cond_1
    return-void
.end method

.method private dismissDialog()V
    .locals 1

    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mUiManager:Lcom/android/server/desktopmode/DesktopModeUiManager;

    invoke-virtual {v0}, Lcom/android/server/desktopmode/DesktopModeUiManager;->dismissDialog()V

    return-void
.end method

.method private getDockState()I
    .locals 4

    const-string/jumbo v1, "/sys/class/switch/ccic_dock/state"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/android/server/desktopmode/DesktopModeUtils;->readFile(Ljava/lang/String;I)I

    move-result v0

    sget-boolean v1, Lcom/android/server/desktopmode/DesktopModeService;->DEBUG:Z

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/server/desktopmode/DesktopModeService;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getDockState(), state="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Lcom/android/server/desktopmode/DesktopModeUtils;->dockStateToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return v0
.end method

.method private getHdmiSettings()I
    .locals 3

    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v1, "hdmi_mode"

    const/4 v2, -0x1

    invoke-static {v0, v1, v2}, Lcom/android/server/desktopmode/DesktopModeSettingsManager;->getSettings(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private initializeStates()V
    .locals 5

    const/4 v2, 0x0

    sget-boolean v0, Lcom/android/server/desktopmode/DesktopModeService;->DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/desktopmode/DesktopModeService;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "initializeStates()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-direct {p0}, Lcom/android/server/desktopmode/DesktopModeService;->isUserSetupComplete()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mUserSetupCompleteObserver:Landroid/database/ContentObserver;

    if-nez v0, :cond_1

    new-instance v0, Lcom/android/server/desktopmode/DesktopModeService$7;

    invoke-direct {v0, p0, v2}, Lcom/android/server/desktopmode/DesktopModeService$7;-><init>(Lcom/android/server/desktopmode/DesktopModeService;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mUserSetupCompleteObserver:Landroid/database/ContentObserver;

    :cond_1
    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v1, "user_setup_complete"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/desktopmode/DesktopModeService;->mUserSetupCompleteObserver:Landroid/database/ContentObserver;

    iget v3, p0, Lcom/android/server/desktopmode/DesktopModeService;->mCurrentUserId:I

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    :goto_0
    return-void

    :cond_2
    invoke-direct {p0}, Lcom/android/server/desktopmode/DesktopModeService;->updateExternalDisplayStatus()Z

    invoke-direct {p0}, Lcom/android/server/desktopmode/DesktopModeService;->updateInputDeviceStatus()Z

    invoke-direct {p0}, Lcom/android/server/desktopmode/DesktopModeService;->getDockState()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/server/desktopmode/DesktopModeService;->setDockState(I)V

    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mCoverController:Lcom/android/server/desktopmode/CoverSupportStateController;

    invoke-virtual {v0}, Lcom/android/server/desktopmode/CoverSupportStateController;->initialize()V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/server/desktopmode/DesktopModeService;->scheduleUpdateDesktopMode(Z)V

    goto :goto_0
.end method

.method private isDesktopModePackagesAvailable(Z)Z
    .locals 3

    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mPackageState:Ljava/util/Map;

    const-string/jumbo v1, "com.sec.android.app.desktoplauncher"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mPackageState:Ljava/util/Map;

    const-string/jumbo v1, "com.sec.android.desktopmode.uiservice"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    sget-object v0, Lcom/android/server/desktopmode/DesktopModeService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "isDesktopModePackagesAvailable(), "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/desktopmode/DesktopModeService;->mPackageState:Ljava/util/Map;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mToast:Lcom/android/server/desktopmode/ToastManager;

    sget v1, Lcom/samsung/android/framework/res/R$string;->dex_toast_unavailable_mode:I

    invoke-virtual {v0, v1}, Lcom/android/server/desktopmode/ToastManager;->showToast(I)V

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private isExternalDisplayConnectedOrForced()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mIsExternalDisplayConnected:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mIsForcedDesktopMode:Z

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private isHdmiSettingReady(Z)Z
    .locals 5

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-boolean v3, p0, Lcom/android/server/desktopmode/DesktopModeService;->mIsDesktopDockConnected:Z

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/server/desktopmode/DesktopModeService;->mCoverController:Lcom/android/server/desktopmode/CoverSupportStateController;

    invoke-virtual {v3}, Lcom/android/server/desktopmode/CoverSupportStateController;->getCoverSupportState()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    return v1

    :cond_0
    invoke-direct {p0}, Lcom/android/server/desktopmode/DesktopModeService;->getHdmiSettings()I

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_3

    const/4 v3, -0x1

    if-ne v0, v3, :cond_3

    :cond_1
    :goto_0
    if-nez v1, :cond_2

    sget-boolean v2, Lcom/android/server/desktopmode/DesktopModeService;->DEBUG:Z

    if-eqz v2, :cond_2

    sget-object v2, Lcom/android/server/desktopmode/DesktopModeService;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "isHdmiSettingReady(enter="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", hdmiSetting="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return v1

    :cond_3
    move v1, v2

    goto :goto_0
.end method

.method private isKnoxLauncherMode()Z
    .locals 6

    const/4 v5, 0x0

    new-instance v3, Landroid/content/Intent;

    const-string/jumbo v4, "android.intent.action.MAIN"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v4, "android.intent.category.HOME"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    iget-object v3, p0, Lcom/android/server/desktopmode/DesktopModeService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v3, v1, v5}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    if-eqz v0, :cond_1

    iget-object v3, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    const-string/jumbo v4, "com.android.internal.app"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    sget-boolean v3, Lcom/android/server/desktopmode/DesktopModeService;->DEBUG:Z

    if-eqz v3, :cond_0

    sget-object v3, Lcom/android/server/desktopmode/DesktopModeService;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "isKnoxLauncherMode(), Knox mode. Return true"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v3, 0x1

    return v3

    :cond_1
    return v5
.end method

.method private isPackageAvailable(Ljava/lang/String;)Z
    .locals 7

    const/4 v3, 0x0

    :try_start_0
    iget-object v4, p0, Lcom/android/server/desktopmode/DesktopModeService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    iget v5, p0, Lcom/android/server/desktopmode/DesktopModeService;->mCurrentUserId:I

    const/4 v6, 0x0

    invoke-virtual {v4, p1, v6, v5}, Landroid/content/pm/PackageManager;->getApplicationInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-boolean v4, v0, Landroid/content/pm/ApplicationInfo;->enabled:Z

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/server/desktopmode/DesktopModeService;->mEnterpriseDeviceManager:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/server/desktopmode/DesktopModeService;->mEnterpriseDeviceManager:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    invoke-virtual {v4}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->getApplicationPolicy()Lcom/samsung/android/knox/application/ApplicationPolicy;

    move-result-object v2

    iget v4, p0, Lcom/android/server/desktopmode/DesktopModeService;->mCurrentUserId:I

    invoke-virtual {v2, p1, v4}, Lcom/samsung/android/knox/application/ApplicationPolicy;->isApplicationStartDisabledAsUser(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_0

    :goto_0
    return v3

    :cond_0
    const/4 v3, 0x1

    goto :goto_0

    :cond_1
    iget-boolean v3, v0, Landroid/content/pm/ApplicationInfo;->enabled:Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return v3

    :catch_0
    move-exception v1

    sget-object v4, Lcom/android/server/desktopmode/DesktopModeService;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "isPackageAvailable failed: unknown package "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return v3
.end method

.method private isSystemReady()Z
    .locals 3

    iget-boolean v0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mIsBootComplete:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/server/desktopmode/DesktopModeService;->isUserSetupComplete()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/os/FactoryTest;->isFactoryBinary()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    sget-boolean v0, Lcom/android/server/desktopmode/DesktopModeService;->DEBUG:Z

    if-eqz v0, :cond_1

    sget-object v0, Lcom/android/server/desktopmode/DesktopModeService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "isSystemReady(), mIsBootComplete="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/server/desktopmode/DesktopModeService;->mIsBootComplete:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", isFactoryBinary="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/FactoryTest;->isFactoryBinary()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const/4 v0, 0x0

    return v0

    :cond_2
    const/4 v0, 0x1

    return v0
.end method

.method private isUserSetupComplete()Z
    .locals 4

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/server/desktopmode/DesktopModeService;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v2, "user_setup_complete"

    iget v3, p0, Lcom/android/server/desktopmode/DesktopModeService;->mCurrentUserId:I

    invoke-static {v1, v2, v0, v3}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    if-nez v0, :cond_1

    sget-boolean v1, Lcom/android/server/desktopmode/DesktopModeService;->DEBUG:Z

    if-eqz v1, :cond_1

    sget-object v1, Lcom/android/server/desktopmode/DesktopModeService;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "isUserSetupComplete()=false"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return v0
.end method

.method private onBootPhase(I)V
    .locals 8

    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v5, 0x0

    const/16 v2, 0x1f4

    if-ne p1, v2, :cond_3

    new-instance v2, Lcom/android/server/desktopmode/DesktopModeEntryController;

    iget-object v3, p0, Lcom/android/server/desktopmode/DesktopModeService;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3, p0}, Lcom/android/server/desktopmode/DesktopModeEntryController;-><init>(Landroid/content/Context;Lcom/android/server/desktopmode/DesktopModeService;)V

    iput-object v2, p0, Lcom/android/server/desktopmode/DesktopModeService;->mEntryController:Lcom/android/server/desktopmode/DesktopModeEntryController;

    new-instance v2, Lcom/android/server/desktopmode/EmergencyModeBlocker;

    iget-object v3, p0, Lcom/android/server/desktopmode/DesktopModeService;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/android/server/desktopmode/EmergencyModeBlocker;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/server/desktopmode/DesktopModeService;->mEmergencyModeBlocker:Lcom/android/server/desktopmode/EmergencyModeBlocker;

    iget-object v2, p0, Lcom/android/server/desktopmode/DesktopModeService;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "input"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/input/InputManager;

    iput-object v2, p0, Lcom/android/server/desktopmode/DesktopModeService;->mInputManager:Landroid/hardware/input/InputManager;

    iget-object v2, p0, Lcom/android/server/desktopmode/DesktopModeService;->mInputManager:Landroid/hardware/input/InputManager;

    iget-object v3, p0, Lcom/android/server/desktopmode/DesktopModeService;->mInputDeviceListener:Landroid/hardware/input/InputManager$InputDeviceListener;

    invoke-virtual {v2, v3, v5}, Landroid/hardware/input/InputManager;->registerInputDeviceListener(Landroid/hardware/input/InputManager$InputDeviceListener;Landroid/os/Handler;)V

    iget-object v2, p0, Lcom/android/server/desktopmode/DesktopModeService;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "display"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/display/DisplayManager;

    iput-object v2, p0, Lcom/android/server/desktopmode/DesktopModeService;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    iget-object v2, p0, Lcom/android/server/desktopmode/DesktopModeService;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    iget-object v3, p0, Lcom/android/server/desktopmode/DesktopModeService;->mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

    invoke-virtual {v2, v3, v5}, Landroid/hardware/display/DisplayManager;->registerDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;Landroid/os/Handler;)V

    new-instance v2, Lcom/android/server/desktopmode/CoverSupportStateController;

    iget-object v3, p0, Lcom/android/server/desktopmode/DesktopModeService;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3, p0}, Lcom/android/server/desktopmode/CoverSupportStateController;-><init>(Landroid/content/Context;Lcom/android/server/desktopmode/DesktopModeService;)V

    iput-object v2, p0, Lcom/android/server/desktopmode/DesktopModeService;->mCoverController:Lcom/android/server/desktopmode/CoverSupportStateController;

    const-class v2, Landroid/hardware/display/DisplayManagerInternal;

    invoke-static {v2}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/display/DisplayManagerInternal;

    iput-object v2, p0, Lcom/android/server/desktopmode/DesktopModeService;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    const-class v2, Landroid/os/PowerManagerInternal;

    invoke-static {v2}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/PowerManagerInternal;

    iput-object v2, p0, Lcom/android/server/desktopmode/DesktopModeService;->mPowerManagerInternal:Landroid/os/PowerManagerInternal;

    sget-object v2, Lcom/android/server/SamsungCoreServices$ServiceTag;->TAG_SAMSUNG_WINDOW_MANAGER_SERVICE:Lcom/android/server/SamsungCoreServices$ServiceTag;

    invoke-static {v2}, Lcom/android/server/SamsungCoreServices;->getService(Lcom/android/server/SamsungCoreServices$ServiceTag;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/IWindowManagerServiceBridge;

    iput-object v2, p0, Lcom/android/server/desktopmode/DesktopModeService;->mSamsungWindowManager:Lcom/android/server/wm/IWindowManagerServiceBridge;

    iget-object v2, p0, Lcom/android/server/desktopmode/DesktopModeService;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "statusbar"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/StatusBarManager;

    iput-object v2, p0, Lcom/android/server/desktopmode/DesktopModeService;->mStatusBarManager:Landroid/app/StatusBarManager;

    iget-object v2, p0, Lcom/android/server/desktopmode/DesktopModeService;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "telecom"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telecom/TelecomManager;

    iput-object v2, p0, Lcom/android/server/desktopmode/DesktopModeService;->mTelecomManager:Landroid/telecom/TelecomManager;

    iget-object v2, p0, Lcom/android/server/desktopmode/DesktopModeService;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "persona"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/knox/SemPersonaManager;

    iput-object v2, p0, Lcom/android/server/desktopmode/DesktopModeService;->mPersonaManager:Lcom/samsung/android/knox/SemPersonaManager;

    const-string/jumbo v2, "uimode"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/app/IUiModeManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IUiModeManager;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/desktopmode/DesktopModeService;->mUiModeManager:Landroid/app/IUiModeManager;

    iget-object v2, p0, Lcom/android/server/desktopmode/DesktopModeService;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "enterprise_policy_new"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/knox/EnterpriseDeviceManager;

    iput-object v2, p0, Lcom/android/server/desktopmode/DesktopModeService;->mEnterpriseDeviceManager:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    iget-object v2, p0, Lcom/android/server/desktopmode/DesktopModeService;->mContext:Landroid/content/Context;

    sget-object v3, Lcom/android/server/desktopmode/DesktopModeService;->TAG:Ljava/lang/String;

    const/16 v4, 0xc

    invoke-static {v2, v3, v4}, Lcom/samsung/android/os/SemDvfsManager;->createInstance(Landroid/content/Context;Ljava/lang/String;I)Lcom/samsung/android/os/SemDvfsManager;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/desktopmode/DesktopModeService;->mDvfsManager:Lcom/samsung/android/os/SemDvfsManager;

    iget-object v2, p0, Lcom/android/server/desktopmode/DesktopModeService;->mDvfsManager:Lcom/samsung/android/os/SemDvfsManager;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/server/desktopmode/DesktopModeService;->mDvfsManager:Lcom/samsung/android/os/SemDvfsManager;

    invoke-virtual {v2}, Lcom/samsung/android/os/SemDvfsManager;->getSupportedFrequencyForSsrm()[I

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v2, p0, Lcom/android/server/desktopmode/DesktopModeService;->mDvfsManager:Lcom/samsung/android/os/SemDvfsManager;

    aget v3, v1, v6

    invoke-virtual {v2, v3}, Lcom/samsung/android/os/SemDvfsManager;->setDvfsValue(I)V

    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/android/server/desktopmode/DesktopModeService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/samsung/android/framework/res/R$integer;->config_DesktopModeDisplayWidth:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    iput v2, p0, Lcom/android/server/desktopmode/DesktopModeService;->mCustomWidth:I

    sget v2, Lcom/samsung/android/framework/res/R$integer;->config_DesktopModeDisplayHeight:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    iput v2, p0, Lcom/android/server/desktopmode/DesktopModeService;->mCustomHeight:I

    sget v2, Lcom/samsung/android/framework/res/R$integer;->config_DesktopModeDisplayDensity:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    iput v2, p0, Lcom/android/server/desktopmode/DesktopModeService;->mCustomDensity:I

    new-instance v2, Lcom/android/server/desktopmode/DesktopModeUiManager;

    iget-object v3, p0, Lcom/android/server/desktopmode/DesktopModeService;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/android/server/desktopmode/DesktopModeUiManager;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/server/desktopmode/DesktopModeService;->mUiManager:Lcom/android/server/desktopmode/DesktopModeUiManager;

    iget-object v2, p0, Lcom/android/server/desktopmode/DesktopModeService;->mResolver:Landroid/content/ContentResolver;

    invoke-static {}, Lcom/android/server/desktopmode/DesktopModeSettingsManager;->getUri()Landroid/net/Uri;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/desktopmode/DesktopModeService;->mSettingsObserver:Landroid/database/ContentObserver;

    const/4 v5, -0x1

    invoke-virtual {v2, v3, v7, v4, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    iget-object v2, p0, Lcom/android/server/desktopmode/DesktopModeService;->mUEventObserver:Landroid/os/UEventObserver;

    const-string/jumbo v3, "DEVPATH=/devices/virtual/switch/ccic_dock"

    invoke-virtual {v2, v3}, Landroid/os/UEventObserver;->startObserving(Ljava/lang/String;)V

    :cond_1
    :goto_1
    return-void

    :cond_2
    iput-object v5, p0, Lcom/android/server/desktopmode/DesktopModeService;->mDvfsManager:Lcom/samsung/android/os/SemDvfsManager;

    goto :goto_0

    :cond_3
    const/16 v2, 0x3e8

    if-ne p1, v2, :cond_1

    iput-boolean v7, p0, Lcom/android/server/desktopmode/DesktopModeService;->mIsBootComplete:Z

    invoke-direct {p0, v6}, Lcom/android/server/desktopmode/DesktopModeService;->setDisplayPortState(Z)V

    iget-object v2, p0, Lcom/android/server/desktopmode/DesktopModeService;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v3, "touchpad_enabled"

    invoke-static {v2, v3, v6}, Lcom/android/server/desktopmode/DesktopModeSettingsManager;->getSettings(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/server/desktopmode/DesktopModeService;->mTouchpadEnabled:Z

    iget-boolean v2, p0, Lcom/android/server/desktopmode/DesktopModeService;->mTouchpadEnabled:Z

    if-eqz v2, :cond_4

    :cond_4
    iput-boolean v6, p0, Lcom/android/server/desktopmode/DesktopModeService;->mSPenFeatureEnabled:Z

    invoke-direct {p0}, Lcom/android/server/desktopmode/DesktopModeService;->initializeStates()V

    goto :goto_1
.end method

.method private onCleanupUser(I)V
    .locals 3

    sget-boolean v0, Lcom/android/server/desktopmode/DesktopModeService;->DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/desktopmode/DesktopModeService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onCleanupUser(), userId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method private onStartUser(I)V
    .locals 3

    sget-boolean v0, Lcom/android/server/desktopmode/DesktopModeService;->DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/desktopmode/DesktopModeService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onStartUser(), userId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " CurrentUser="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->supportsSwitchToByUser()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mPersonaManager:Lcom/samsung/android/knox/SemPersonaManager;

    invoke-virtual {v0}, Lcom/samsung/android/knox/SemPersonaManager;->getKioskId()I

    move-result v0

    if-ne v0, p1, :cond_2

    :cond_1
    invoke-direct {p0, p1}, Lcom/android/server/desktopmode/DesktopModeService;->onUserChanged(I)V

    :cond_2
    return-void
.end method

.method private onStopUser(I)V
    .locals 3

    sget-boolean v0, Lcom/android/server/desktopmode/DesktopModeService;->DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/desktopmode/DesktopModeService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onStopUser(), userId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " CurrentUser="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-static {p1}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p1}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId(I)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    :goto_0
    return-void

    :cond_2
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/server/desktopmode/DesktopModeService;->onUserChanged(I)V

    goto :goto_0
.end method

.method private onSwitchUser(I)V
    .locals 3

    sget-boolean v0, Lcom/android/server/desktopmode/DesktopModeService;->DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/desktopmode/DesktopModeService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onSwitchUser(), userId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/desktopmode/DesktopModeService;->onUserChanged(I)V

    return-void
.end method

.method private onUnlockUser(I)V
    .locals 3

    sget-boolean v0, Lcom/android/server/desktopmode/DesktopModeService;->DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/desktopmode/DesktopModeService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onUnlockUser(), userId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method private onUserChanged(I)V
    .locals 3

    iget v0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mCurrentUserId:I

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    sget-boolean v0, Lcom/android/server/desktopmode/DesktopModeService;->DEBUG:Z

    if-eqz v0, :cond_1

    sget-object v0, Lcom/android/server/desktopmode/DesktopModeService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onUserChanged(), userId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/server/desktopmode/DesktopModeService;->setCurrentUserId(I)V

    invoke-direct {p0}, Lcom/android/server/desktopmode/DesktopModeService;->updatePackageState()Ljava/util/List;

    iget-boolean v0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mIsDesktopMode:Z

    invoke-direct {p0, v0}, Lcom/android/server/desktopmode/DesktopModeService;->setSettingsComponent(Z)V

    iget-boolean v0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mIsDesktopMode:Z

    invoke-direct {p0, v0, p1}, Lcom/android/server/desktopmode/DesktopModeService;->backupOrRestoreSettings(ZI)V

    invoke-direct {p0}, Lcom/android/server/desktopmode/DesktopModeService;->initializeStates()V

    return-void
.end method

.method private prepareDesktopTaskBar(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mSamsungWindowManager:Lcom/android/server/wm/IWindowManagerServiceBridge;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mSamsungWindowManager:Lcom/android/server/wm/IWindowManagerServiceBridge;

    invoke-interface {v0, p1}, Lcom/android/server/wm/IWindowManagerServiceBridge;->prepareDesktopTaskBar(Z)V

    :cond_0
    return-void
.end method

.method private removeAllTasks()V
    .locals 0

    return-void
.end method

.method private restorePreviousSizeDensity(I)V
    .locals 15

    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mSamsungWindowManager:Lcom/android/server/wm/IWindowManagerServiceBridge;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/android/server/wm/IWindowManagerServiceBridge;->getInitialDisplayProperties(I)[I

    move-result-object v8

    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v1, "display_size_forced"

    invoke-static {v0, v1}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    if-eqz v13, :cond_3

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_3

    const/16 v0, 0x2c

    invoke-virtual {v13, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v12

    if-lez v12, :cond_0

    const/16 v0, 0x2c

    invoke-virtual {v13, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    if-ne v0, v12, :cond_0

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {v13, v0, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v14

    add-int/lit8 v0, v12, 0x1

    invoke-virtual {v13, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    if-lez v14, :cond_0

    if-lez v11, :cond_0

    const/4 v0, 0x0

    aput v14, v8, v0

    const/4 v0, 0x1

    aput v11, v8, v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    :try_start_1
    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v1, "display_density_forced"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    if-lez v7, :cond_1

    const/4 v0, 0x2

    aput v7, v8, v0
    :try_end_1
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    :cond_1
    :goto_1
    sget-boolean v0, Lcom/android/server/desktopmode/DesktopModeService;->DEBUG:Z

    if-eqz v0, :cond_2

    sget-object v0, Lcom/android/server/desktopmode/DesktopModeService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Restoring display: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x0

    aget v2, v8, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x1

    aget v2, v8, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x2

    aget v2, v8, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mSamsungWindowManager:Lcom/android/server/wm/IWindowManagerServiceBridge;

    const/4 v1, 0x0

    aget v2, v8, v1

    const/4 v1, 0x1

    aget v3, v8, v1

    const/4 v1, 0x2

    aget v4, v8, v1

    const/4 v5, 0x0

    const/4 v6, 0x0

    move/from16 v1, p1

    invoke-interface/range {v0 .. v6}, Lcom/android/server/wm/IWindowManagerServiceBridge;->setForcedDisplaySizeDensity(IIIIZZ)V

    return-void

    :catch_0
    move-exception v10

    sget-object v0, Lcom/android/server/desktopmode/DesktopModeService;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "Failed to parse previous forced display size"

    invoke-static {v0, v1, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :cond_3
    sget-boolean v0, Lcom/android/server/desktopmode/DesktopModeService;->DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/desktopmode/DesktopModeService;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "No previous forced display size. Use default size instead."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_1
    move-exception v9

    sget-boolean v0, Lcom/android/server/desktopmode/DesktopModeService;->DEBUG:Z

    if-eqz v0, :cond_1

    sget-object v0, Lcom/android/server/desktopmode/DesktopModeService;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "No previous forced display density. Use default density instead."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private scheduleStartLoadingScreen(Z)V
    .locals 7

    const/4 v6, 0x4

    const/4 v5, 0x3

    sget-boolean v2, Lcom/android/server/desktopmode/DesktopModeService;->DEBUG:Z

    if-eqz v2, :cond_0

    sget-object v2, Lcom/android/server/desktopmode/DesktopModeService;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "scheduleStartLoadingScreen(), enter="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/server/desktopmode/DesktopModeService;->mModeChangeLock:Z

    iget-object v2, p0, Lcom/android/server/desktopmode/DesktopModeService;->mHandler:Lcom/android/server/desktopmode/DesktopModeService$DesktopModeHandler;

    invoke-virtual {v2, v5}, Lcom/android/server/desktopmode/DesktopModeService$DesktopModeHandler;->removeMessages(I)V

    iget-object v2, p0, Lcom/android/server/desktopmode/DesktopModeService;->mHandler:Lcom/android/server/desktopmode/DesktopModeService$DesktopModeHandler;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v5, v3}, Lcom/android/server/desktopmode/DesktopModeService$DesktopModeHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/desktopmode/DesktopModeService;->mHandler:Lcom/android/server/desktopmode/DesktopModeService$DesktopModeHandler;

    const-wide/16 v4, 0x0

    invoke-virtual {v2, v0, v4, v5}, Lcom/android/server/desktopmode/DesktopModeService$DesktopModeHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    iget-object v2, p0, Lcom/android/server/desktopmode/DesktopModeService;->mHandler:Lcom/android/server/desktopmode/DesktopModeService$DesktopModeHandler;

    invoke-virtual {v2, v6}, Lcom/android/server/desktopmode/DesktopModeService$DesktopModeHandler;->removeMessages(I)V

    iget-object v2, p0, Lcom/android/server/desktopmode/DesktopModeService;->mHandler:Lcom/android/server/desktopmode/DesktopModeService$DesktopModeHandler;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const/4 v4, -0x1

    const/4 v5, 0x0

    invoke-virtual {v2, v6, v4, v5, v3}, Lcom/android/server/desktopmode/DesktopModeService$DesktopModeHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/desktopmode/DesktopModeService;->mHandler:Lcom/android/server/desktopmode/DesktopModeService$DesktopModeHandler;

    const-wide/16 v4, 0x3a98

    invoke-virtual {v2, v1, v4, v5}, Lcom/android/server/desktopmode/DesktopModeService$DesktopModeHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method private scheduleStopLoadingScreenIfPossible()V
    .locals 6

    const/16 v5, 0x65

    const/4 v4, 0x4

    sget-boolean v0, Lcom/android/server/desktopmode/DesktopModeService;->DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/desktopmode/DesktopModeService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "scheduleStopLoadingScreenIfPossible(), mStopFreezingDisplayCalled="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/server/desktopmode/DesktopModeService;->mStopFreezingDisplayCalled:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", mWallpaperShown="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/server/desktopmode/DesktopModeService;->mWallpaperShown:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", mDesktopModeState="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/desktopmode/DesktopModeService;->mDesktopModeState:Lcom/samsung/android/desktopmode/SemDesktopModeState;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", mIsDesktopMode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/server/desktopmode/DesktopModeService;->mIsDesktopMode:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", InternalPresentation="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/desktopmode/DesktopModeService;->mUiManager:Lcom/android/server/desktopmode/DesktopModeUiManager;

    const/16 v3, 0x66

    invoke-virtual {v2, v3}, Lcom/android/server/desktopmode/DesktopModeUiManager;->getCurrentPresentationType(I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", ExternalPresentation="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/desktopmode/DesktopModeService;->mUiManager:Lcom/android/server/desktopmode/DesktopModeUiManager;

    const/16 v3, 0x67

    invoke-virtual {v2, v3}, Lcom/android/server/desktopmode/DesktopModeUiManager;->getCurrentPresentationType(I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-boolean v0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mStopFreezingDisplayCalled:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mWallpaperShown:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mDesktopModeState:Lcom/samsung/android/desktopmode/SemDesktopModeState;

    iget v0, v0, Lcom/samsung/android/desktopmode/SemDesktopModeState;->state:I

    const/16 v1, 0x32

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mUiManager:Lcom/android/server/desktopmode/DesktopModeUiManager;

    const/16 v1, 0x70

    invoke-virtual {v0, v5, v1}, Lcom/android/server/desktopmode/DesktopModeUiManager;->hasPresentation(II)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mIsDesktopMode:Z

    if-nez v0, :cond_3

    :cond_1
    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mUiManager:Lcom/android/server/desktopmode/DesktopModeUiManager;

    const/16 v1, 0x71

    invoke-virtual {v0, v5, v1}, Lcom/android/server/desktopmode/DesktopModeUiManager;->hasPresentation(II)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mIsDesktopMode:Z

    if-eqz v0, :cond_3

    :cond_2
    :goto_0
    return-void

    :cond_3
    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mHandler:Lcom/android/server/desktopmode/DesktopModeService$DesktopModeHandler;

    invoke-virtual {v0, v4}, Lcom/android/server/desktopmode/DesktopModeService$DesktopModeHandler;->removeMessages(I)V

    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mHandler:Lcom/android/server/desktopmode/DesktopModeService$DesktopModeHandler;

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v4, v2, v3}, Lcom/android/server/desktopmode/DesktopModeService$DesktopModeHandler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method

.method private scheduleUpdateDesktopModeDelayed(ZI)V
    .locals 4

    const/4 v3, 0x6

    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mHandler:Lcom/android/server/desktopmode/DesktopModeService$DesktopModeHandler;

    invoke-virtual {v0, v3}, Lcom/android/server/desktopmode/DesktopModeService$DesktopModeHandler;->removeMessages(I)V

    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mHandler:Lcom/android/server/desktopmode/DesktopModeService$DesktopModeHandler;

    iget-object v1, p0, Lcom/android/server/desktopmode/DesktopModeService;->mHandler:Lcom/android/server/desktopmode/DesktopModeService$DesktopModeHandler;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Lcom/android/server/desktopmode/DesktopModeService$DesktopModeHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    int-to-long v2, p2

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/desktopmode/DesktopModeService$DesktopModeHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method private setAlpmMode(I)V
    .locals 9

    const/4 v5, 0x0

    iget-object v4, p0, Lcom/android/server/desktopmode/DesktopModeService;->mContext:Landroid/content/Context;

    const-string/jumbo v6, "android.permission.DEVICE_POWER"

    invoke-virtual {v4, v6, v5}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    sget-boolean v4, Lcom/android/server/desktopmode/DesktopModeService;->DEBUG:Z

    if-eqz v4, :cond_0

    sget-object v4, Lcom/android/server/desktopmode/DesktopModeService;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "setAlpmMode(), mode="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    new-instance v1, Ljava/io/File;

    const-string/jumbo v4, "/sys/class/lcd/panel/alpm"

    invoke-direct {v1, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_2

    const/4 v2, 0x0

    :try_start_0
    new-instance v3, Ljava/io/FileWriter;

    invoke-direct {v3, v1}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_5
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    if-eqz v3, :cond_1

    :try_start_2
    invoke-virtual {v3}, Ljava/io/FileWriter;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_1
    :goto_0
    if-eqz v5, :cond_2

    :try_start_3
    throw v5
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    :catch_0
    move-exception v0

    move-object v2, v3

    :goto_1
    sget-object v4, Lcom/android/server/desktopmode/DesktopModeService;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "Failed to set Alpm mode"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_2
    return-void

    :catch_1
    move-exception v5

    goto :goto_0

    :catch_2
    move-exception v4

    :goto_2
    :try_start_4
    throw v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :catchall_0
    move-exception v5

    move-object v8, v5

    move-object v5, v4

    move-object v4, v8

    :goto_3
    if-eqz v2, :cond_3

    :try_start_5
    invoke-virtual {v2}, Ljava/io/FileWriter;->close()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_4
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    :cond_3
    :goto_4
    if-eqz v5, :cond_5

    :try_start_6
    throw v5

    :catch_3
    move-exception v0

    goto :goto_1

    :catch_4
    move-exception v6

    if-nez v5, :cond_4

    move-object v5, v6

    goto :goto_4

    :cond_4
    if-eq v5, v6, :cond_3

    invoke-virtual {v5, v6}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_4

    :cond_5
    throw v4
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    :catchall_1
    move-exception v4

    goto :goto_3

    :catchall_2
    move-exception v4

    move-object v2, v3

    goto :goto_3

    :catch_5
    move-exception v4

    move-object v2, v3

    goto :goto_2
.end method

.method private setComponentFromList(II)V
    .locals 13

    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v9

    const/4 v0, 0x0

    array-length v12, v9

    move v11, v0

    :goto_0
    if-ge v11, v12, :cond_4

    aget-object v7, v9, v11

    const/16 v0, 0x2f

    invoke-virtual {v7, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v10

    const/4 v0, -0x1

    if-ne v10, v0, :cond_0

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v10

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {v7, v0, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    add-int/lit8 v0, v10, 0x1

    invoke-virtual {v7, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v1, "com.sec.android.app.desktoplauncher"

    :cond_1
    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    iget v2, p0, Lcom/android/server/desktopmode/DesktopModeService;->mCurrentUserId:I

    invoke-interface {v0, v1, v2}, Landroid/content/pm/IPackageManager;->isPackageAvailable(Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_2

    :goto_1
    add-int/lit8 v0, v11, 0x1

    move v11, v0

    goto :goto_0

    :cond_2
    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    iget v4, p0, Lcom/android/server/desktopmode/DesktopModeService;->mCurrentUserId:I

    const/4 v3, 0x0

    const/4 v5, 0x0

    move v2, p2

    invoke-interface/range {v0 .. v5}, Landroid/content/pm/IPackageManager;->setApplicationEnabledSetting(Ljava/lang/String;IIILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v8

    sget-object v0, Lcom/android/server/desktopmode/DesktopModeService;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Failed to toggle components"

    invoke-static {v0, v2, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    :cond_3
    :try_start_1
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    new-instance v2, Landroid/content/ComponentName;

    invoke-direct {v2, v1, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iget v3, p0, Lcom/android/server/desktopmode/DesktopModeService;->mCurrentUserId:I

    const/4 v4, 0x1

    invoke-interface {v0, v2, p2, v4, v3}, Landroid/content/pm/IPackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;III)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :cond_4
    return-void
.end method

.method private setCustomConfigurations(Z)V
    .locals 8

    :try_start_0
    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mUiModeManager:Landroid/app/IUiModeManager;

    invoke-interface {v0, p1}, Landroid/app/IUiModeManager;->setDesktopMode(Z)V

    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mUiModeManager:Landroid/app/IUiModeManager;

    invoke-interface {v0}, Landroid/app/IUiModeManager;->getCurrentModeType()I

    move-result v0

    iget-object v1, p0, Lcom/android/server/desktopmode/DesktopModeService;->mUiModeManager:Landroid/app/IUiModeManager;

    invoke-interface {v1}, Landroid/app/IUiModeManager;->getNightMode()I

    move-result v1

    shl-int/lit8 v1, v1, 0x4

    or-int/2addr v0, v1

    iput v0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mCurrentUiMode:I

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mSamsungWindowManager:Lcom/android/server/wm/IWindowManagerServiceBridge;

    iget v2, p0, Lcom/android/server/desktopmode/DesktopModeService;->mCustomWidth:I

    iget v3, p0, Lcom/android/server/desktopmode/DesktopModeService;->mCustomHeight:I

    iget v4, p0, Lcom/android/server/desktopmode/DesktopModeService;->mCustomDensity:I

    const/4 v1, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-interface/range {v0 .. v6}, Lcom/android/server/wm/IWindowManagerServiceBridge;->setForcedDisplaySizeDensity(IIIIZZ)V

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/desktopmode/DesktopModeService;->restorePreviousSizeDensity(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v7

    sget-object v0, Lcom/android/server/desktopmode/DesktopModeService;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "Failed to set custom configurations"

    invoke-static {v0, v1, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private setCustomResolution(III)V
    .locals 0

    if-lez p1, :cond_0

    iput p1, p0, Lcom/android/server/desktopmode/DesktopModeService;->mCustomWidth:I

    :cond_0
    if-lez p2, :cond_1

    iput p2, p0, Lcom/android/server/desktopmode/DesktopModeService;->mCustomHeight:I

    :cond_1
    if-lez p3, :cond_2

    iput p3, p0, Lcom/android/server/desktopmode/DesktopModeService;->mCustomDensity:I

    :cond_2
    return-void
.end method

.method private setDefaultDisplayPowerMode(I)V
    .locals 7

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    sget-boolean v1, Lcom/android/server/desktopmode/DesktopModeService;->DEBUG:Z

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/server/desktopmode/DesktopModeService;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setDefaultDisplayPowerMode(), mode="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1}, Lcom/android/server/desktopmode/DesktopModeUtils;->powerModeToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-eq p1, v6, :cond_1

    iget-object v1, p0, Lcom/android/server/desktopmode/DesktopModeService;->mPowerManagerInternal:Landroid/os/PowerManagerInternal;

    invoke-virtual {v1, v5}, Landroid/os/PowerManagerInternal;->setForcedDisplayOff(Z)V

    iget-boolean v1, p0, Lcom/android/server/desktopmode/DesktopModeService;->mSPenFeatureEnabled:Z

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/android/server/desktopmode/DesktopModeService;->isDesktopModeEnablingOrEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string/jumbo v1, "/sys/class/sec/sec_epen/input/enabled"

    invoke-static {v1, v5}, Lcom/android/server/desktopmode/DesktopModeUtils;->writeFile(Ljava/lang/String;I)V

    :cond_1
    iget-object v1, p0, Lcom/android/server/desktopmode/DesktopModeService;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    invoke-virtual {v1, p1}, Landroid/hardware/display/DisplayManagerInternal;->setDefaultDisplayPowerMode(I)V

    if-ne p1, v6, :cond_2

    iget-object v1, p0, Lcom/android/server/desktopmode/DesktopModeService;->mPowerManagerInternal:Landroid/os/PowerManagerInternal;

    invoke-virtual {v1, v4}, Landroid/os/PowerManagerInternal;->setForcedDisplayOff(Z)V

    iget-object v1, p0, Lcom/android/server/desktopmode/DesktopModeService;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/server/desktopmode/DesktopModeUtils;->isSPenSystemFeatureEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/android/server/desktopmode/DesktopModeService;->isDesktopModeEnablingOrEnabled()Z

    move-result v1

    if-eqz v1, :cond_2

    const-string/jumbo v1, "/sys/class/sec/sec_epen/input/enabled"

    invoke-static {v1, v4}, Lcom/android/server/desktopmode/DesktopModeUtils;->writeFile(Ljava/lang/String;I)V

    :cond_2
    return-void
.end method

.method private setDesktopMode(Z)V
    .locals 3

    sget-boolean v0, Lcom/android/server/desktopmode/DesktopModeService;->DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/desktopmode/DesktopModeService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setDesktopMode(), desktopMode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", mModeChangeLock="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/server/desktopmode/DesktopModeService;->mModeChangeLock:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-boolean v0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mModeChangeLock:Z

    if-eqz v0, :cond_1

    return-void

    :cond_1
    iget-boolean v0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mIsDesktopMode:Z

    if-eq v0, p1, :cond_4

    iget-boolean v0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mIsExternalDisplayConnected:Z

    iput-boolean v0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mEntryExternalDisplayConnected:Z

    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mDvfsManager:Lcom/samsung/android/os/SemDvfsManager;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mDvfsManager:Lcom/samsung/android/os/SemDvfsManager;

    const/16 v1, 0x3a98

    invoke-virtual {v0, v1}, Lcom/samsung/android/os/SemDvfsManager;->acquire(I)V

    :cond_2
    if-eqz p1, :cond_3

    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/desktopmode/DesktopModePolicyManager;->createLaunchModePolicyCacheFromDB(Landroid/content/Context;)I

    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mCoverController:Lcom/android/server/desktopmode/CoverSupportStateController;

    invoke-virtual {v0}, Lcom/android/server/desktopmode/CoverSupportStateController;->getCoverSupportState()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mCoverController:Lcom/android/server/desktopmode/CoverSupportStateController;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/desktopmode/CoverSupportStateController;->disableCoverManager(Z)V

    :cond_3
    invoke-direct {p0, p1}, Lcom/android/server/desktopmode/DesktopModeService;->scheduleStartLoadingScreen(Z)V

    :cond_4
    return-void
.end method

.method private setDesktopModeInner(Z)V
    .locals 5

    const/4 v0, 0x1

    const/4 v4, 0x0

    sget-boolean v1, Lcom/android/server/desktopmode/DesktopModeService;->DEBUG:Z

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/server/desktopmode/DesktopModeService;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setDesktopModeInner(), enabled="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-eqz p1, :cond_1

    iget-object v1, p0, Lcom/android/server/desktopmode/DesktopModeService;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/android/knox/SemPersonaManager;->isKioskModeEnabled(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/android/server/desktopmode/DesktopModeService;->dismissDialog()V

    iget-object v1, p0, Lcom/android/server/desktopmode/DesktopModeService;->mToast:Lcom/android/server/desktopmode/ToastManager;

    invoke-virtual {v1}, Lcom/android/server/desktopmode/ToastManager;->cancelToasts()V

    invoke-direct {p0, v0}, Lcom/android/server/desktopmode/DesktopModeService;->updateOngoingNotification(Z)V

    if-eqz p1, :cond_2

    const/4 v0, 0x3

    :cond_2
    const/16 v1, 0x1e

    invoke-direct {p0, v0, v1}, Lcom/android/server/desktopmode/DesktopModeService;->setDesktopModeState(II)V

    invoke-direct {p0}, Lcom/android/server/desktopmode/DesktopModeService;->removeAllTasks()V

    invoke-direct {p0, p1}, Lcom/android/server/desktopmode/DesktopModeService;->setSettingsComponent(Z)V

    invoke-direct {p0, p1}, Lcom/android/server/desktopmode/DesktopModeService;->setDesktopModeToSurfaceFlinger(Z)V

    if-eqz p1, :cond_4

    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService;->stopLockTaskMode()V

    invoke-virtual {p0}, Lcom/android/server/desktopmode/DesktopModeService;->setCurrentLaunchPolicyMode()V

    :goto_1
    iput-boolean v4, p0, Lcom/android/server/desktopmode/DesktopModeService;->mIsSPenDetached:Z

    iput-boolean v4, p0, Lcom/android/server/desktopmode/DesktopModeService;->mStopFreezingDisplayCalled:Z

    iput-boolean v4, p0, Lcom/android/server/desktopmode/DesktopModeService;->mWallpaperShown:Z

    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0, v4}, Lcom/android/server/wm/WindowManagerService;->setEventDispatching(Z)V

    invoke-direct {p0, p1}, Lcom/android/server/desktopmode/DesktopModeService;->setCustomConfigurations(Z)V

    invoke-direct {p0, p1}, Lcom/android/server/desktopmode/DesktopModeService;->prepareDesktopTaskBar(Z)V

    return-void

    :cond_3
    invoke-direct {p0}, Lcom/android/server/desktopmode/DesktopModeService;->isKnoxLauncherMode()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/desktopmode/DesktopModeService;->mPersonaManager:Lcom/samsung/android/knox/SemPersonaManager;

    iget v2, p0, Lcom/android/server/desktopmode/DesktopModeService;->mCurrentUserId:I

    invoke-virtual {v1, v2, v0}, Lcom/samsung/android/knox/SemPersonaManager;->launchPersonaHome(IZ)Z

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mUiManager:Lcom/android/server/desktopmode/DesktopModeUiManager;

    const/16 v1, 0xcb

    invoke-virtual {v0, v1}, Lcom/android/server/desktopmode/DesktopModeUiManager;->removeNotification(I)V

    goto :goto_1
.end method

.method private setDesktopModeOrShowLaunchConfirmationDialog()V
    .locals 4

    const/4 v3, 0x1

    invoke-direct {p0}, Lcom/android/server/desktopmode/DesktopModeService;->getHdmiSettings()I

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0, v3}, Lcom/android/server/desktopmode/DesktopModeService;->setDesktopMode(Z)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-boolean v1, p0, Lcom/android/server/desktopmode/DesktopModeService;->mIsDesktopDockConnected:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/server/desktopmode/DesktopModeService;->mCoverController:Lcom/android/server/desktopmode/CoverSupportStateController;

    invoke-virtual {v1}, Lcom/android/server/desktopmode/CoverSupportStateController;->getCoverSupportState()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    invoke-virtual {p0, v3}, Lcom/android/server/desktopmode/DesktopModeService;->setHdmiSettings(Z)V

    goto :goto_0

    :cond_2
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lcom/android/server/desktopmode/DesktopModeService;->showLaunchConfirmDialog()V

    goto :goto_0
.end method

.method private setDesktopModeState(II)V
    .locals 3

    sget-object v0, Lcom/android/server/desktopmode/DesktopModeService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setDesktopModeState(), enabled="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Lcom/samsung/android/desktopmode/SemDesktopModeState;->enabledToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", state="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p2}, Lcom/samsung/android/desktopmode/SemDesktopModeState;->stateToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mDesktopModeState:Lcom/samsung/android/desktopmode/SemDesktopModeState;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/desktopmode/SemDesktopModeState;->compareTo(II)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mDesktopModeState:Lcom/samsung/android/desktopmode/SemDesktopModeState;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/desktopmode/SemDesktopModeState;->update(II)V

    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mStateNotifier:Lcom/android/server/desktopmode/StateNotifier;

    iget-object v1, p0, Lcom/android/server/desktopmode/DesktopModeService;->mDesktopModeState:Lcom/samsung/android/desktopmode/SemDesktopModeState;

    invoke-virtual {v0, v1}, Lcom/android/server/desktopmode/StateNotifier;->notifyDesktopModeStateChanged(Lcom/samsung/android/desktopmode/SemDesktopModeState;)V

    :cond_0
    return-void
.end method

.method private setDesktopModeToSurfaceFlinger(Z)V
    .locals 6

    const/4 v3, 0x0

    const-string/jumbo v4, "SurfaceFlinger"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    if-eqz v2, :cond_1

    :try_start_0
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    const-string/jumbo v4, "android.ui.ISurfaceComposer"

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    const/4 v3, 0x1

    :cond_0
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v3, 0x44f

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-interface {v2, v3, v0, v4, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception v1

    sget-object v3, Lcom/android/server/desktopmode/DesktopModeService;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "Failed to set desktop mode for SF"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private setDesktopTaskBar(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mSamsungWindowManager:Lcom/android/server/wm/IWindowManagerServiceBridge;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mSamsungWindowManager:Lcom/android/server/wm/IWindowManagerServiceBridge;

    invoke-interface {v0, p1}, Lcom/android/server/wm/IWindowManagerServiceBridge;->setDesktopTaskBar(Z)V

    :cond_0
    return-void
.end method

.method private setDisplayPortState(Z)V
    .locals 5

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {p0}, Lcom/android/server/desktopmode/DesktopModeService;->getHdmiSettings()I

    move-result v4

    if-nez v4, :cond_1

    move v1, v2

    :goto_0
    if-eqz v1, :cond_2

    move v4, v2

    :goto_1
    shl-int/lit8 v4, v4, 0x4

    if-eqz p1, :cond_3

    :goto_2
    or-int v0, v4, v2

    sget-boolean v2, Lcom/android/server/desktopmode/DesktopModeService;->DEBUG:Z

    if-eqz v2, :cond_0

    sget-object v2, Lcom/android/server/desktopmode/DesktopModeService;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setDisplayPortState(), state=0x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const-string/jumbo v2, "/sys/class/dp_sec/dex"

    invoke-static {v2, v0}, Lcom/android/server/desktopmode/DesktopModeUtils;->writeFile(Ljava/lang/String;I)V

    return-void

    :cond_1
    move v1, v3

    goto :goto_0

    :cond_2
    move v4, v3

    goto :goto_1

    :cond_3
    move v2, v3

    goto :goto_2
.end method

.method private setDockState(I)V
    .locals 4

    sget-boolean v1, Lcom/android/server/desktopmode/DesktopModeService;->DEBUG:Z

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/server/desktopmode/DesktopModeService;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setDockState(), state="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1}, Lcom/android/server/desktopmode/DesktopModeUtils;->dockStateToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    packed-switch p1, :pswitch_data_0

    const/4 v1, 0x0

    iput v1, p0, Lcom/android/server/desktopmode/DesktopModeService;->mDockState:I

    :goto_0
    const/16 v1, 0x6e

    if-ne p1, v1, :cond_2

    const/4 v0, 0x1

    :goto_1
    iget-boolean v1, p0, Lcom/android/server/desktopmode/DesktopModeService;->mIsDesktopDockConnected:Z

    if-eq v1, v0, :cond_1

    iput-boolean v0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mIsDesktopDockConnected:Z

    iget-object v1, p0, Lcom/android/server/desktopmode/DesktopModeService;->mCoverController:Lcom/android/server/desktopmode/CoverSupportStateController;

    iget-boolean v2, p0, Lcom/android/server/desktopmode/DesktopModeService;->mIsDesktopDockConnected:Z

    invoke-virtual {v1, v2}, Lcom/android/server/desktopmode/CoverSupportStateController;->onDesktopDockConnectionChanged(Z)V

    iget-object v1, p0, Lcom/android/server/desktopmode/DesktopModeService;->mStateNotifier:Lcom/android/server/desktopmode/StateNotifier;

    iget-boolean v2, p0, Lcom/android/server/desktopmode/DesktopModeService;->mIsDesktopDockConnected:Z

    invoke-virtual {v1, v2}, Lcom/android/server/desktopmode/StateNotifier;->notifyDesktopDockConnectionChanged(Z)V

    :cond_1
    return-void

    :pswitch_0
    iput p1, p0, Lcom/android/server/desktopmode/DesktopModeService;->mDockState:I

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x6d
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private setForcedDesktopMode(ZLjava/io/PrintWriter;)V
    .locals 3

    sget-boolean v0, Lcom/android/server/desktopmode/DesktopModeService;->DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/desktopmode/DesktopModeService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "ADB command received; setForcedDesktopMode(), enabled="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-eqz p2, :cond_3

    iget-boolean v0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mIsForcedDesktopMode:Z

    if-ne p1, v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Forced DeX mode is already turned "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    if-eqz p1, :cond_1

    const-string/jumbo v0, "on"

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "!"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void

    :cond_1
    const-string/jumbo v0, "off"

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Turning "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    if-eqz p1, :cond_4

    const-string/jumbo v0, "on"

    :goto_1
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " forced DeX mode..."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "This simulates the "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    if-eqz p1, :cond_5

    const-string/jumbo v0, "connection"

    :goto_2
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " of an external display."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_3
    iput-boolean p1, p0, Lcom/android/server/desktopmode/DesktopModeService;->mIsForcedDesktopMode:Z

    invoke-virtual {p0, p1}, Lcom/android/server/desktopmode/DesktopModeService;->scheduleUpdateDesktopMode(Z)V

    return-void

    :cond_4
    const-string/jumbo v0, "off"

    goto :goto_1

    :cond_5
    const-string/jumbo v0, "disconnection"

    goto :goto_2
.end method

.method private setNormalModeScreenOffTimeout(II)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v1, "screen_off_timeout"

    invoke-static {v0, v1, p1, p2}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    return-void
.end method

.method private setNormalModeVirtualKeyboard(II)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v1, "show_ime_with_hard_keyboard"

    invoke-static {v0, v1, p1, p2}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    return-void
.end method

.method private setScreenOffTimeout(ZI)V
    .locals 7

    const/4 v6, -0x1

    if-eqz p1, :cond_3

    iget-object v3, p0, Lcom/android/server/desktopmode/DesktopModeService;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v4, "screen_off_timeout"

    const/16 v5, 0x7530

    invoke-static {v3, v4, v5, p2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    sget-boolean v3, Lcom/android/server/desktopmode/DesktopModeService;->DEBUG:Z

    if-eqz v3, :cond_0

    sget-object v3, Lcom/android/server/desktopmode/DesktopModeService;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setScreenOffTimeout(), Backing up current value="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v3, p0, Lcom/android/server/desktopmode/DesktopModeService;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v4, "timeout_backup"

    invoke-static {v3, v4, v2, p2}, Lcom/android/server/desktopmode/DesktopModeSettingsManager;->setSettingsAsUser(Landroid/content/ContentResolver;Ljava/lang/String;II)V

    iget-object v3, p0, Lcom/android/server/desktopmode/DesktopModeService;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v4, "timeout_dex"

    const v5, 0x927c0

    invoke-static {v3, v4, v5, p2}, Lcom/android/server/desktopmode/DesktopModeSettingsManager;->getSettingsAsUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    sget-boolean v3, Lcom/android/server/desktopmode/DesktopModeService;->DEBUG:Z

    if-eqz v3, :cond_1

    sget-object v3, Lcom/android/server/desktopmode/DesktopModeService;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setScreenOffTimeout(), Setting Desktop mode value="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    invoke-direct {p0, v1, p2}, Lcom/android/server/desktopmode/DesktopModeService;->setNormalModeScreenOffTimeout(II)V

    :cond_2
    :goto_0
    return-void

    :cond_3
    iget-object v3, p0, Lcom/android/server/desktopmode/DesktopModeService;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v4, "timeout_backup"

    invoke-static {v3, v4, v6, p2}, Lcom/android/server/desktopmode/DesktopModeSettingsManager;->getSettingsAsUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-lez v0, :cond_2

    sget-boolean v3, Lcom/android/server/desktopmode/DesktopModeService;->DEBUG:Z

    if-eqz v3, :cond_4

    sget-object v3, Lcom/android/server/desktopmode/DesktopModeService;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setScreenOffTimeout(), Restoring backed up value="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    invoke-direct {p0, v0, p2}, Lcom/android/server/desktopmode/DesktopModeService;->setNormalModeScreenOffTimeout(II)V

    iget-object v3, p0, Lcom/android/server/desktopmode/DesktopModeService;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v4, "timeout_backup"

    invoke-static {v3, v4, v6, p2}, Lcom/android/server/desktopmode/DesktopModeSettingsManager;->setSettingsAsUser(Landroid/content/ContentResolver;Ljava/lang/String;II)V

    goto :goto_0
.end method

.method private setSettingsComponent(Z)V
    .locals 4

    const/4 v1, 0x0

    sget-boolean v0, Lcom/android/server/desktopmode/DesktopModeService;->DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/desktopmode/DesktopModeService;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setSettingsComponent(), enabled="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    sget v2, Lcom/samsung/android/framework/res/R$array;->components_desktop_mode:I

    if-eqz p1, :cond_2

    const/4 v0, 0x1

    :goto_0
    invoke-direct {p0, v2, v0}, Lcom/android/server/desktopmode/DesktopModeService;->setComponentFromList(II)V

    sget v0, Lcom/samsung/android/framework/res/R$array;->components_normal_mode:I

    if-eqz p1, :cond_1

    const/4 v1, 0x2

    :cond_1
    invoke-direct {p0, v0, v1}, Lcom/android/server/desktopmode/DesktopModeService;->setComponentFromList(II)V

    return-void

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method private setTouchPadScreen(ZI)V
    .locals 7

    const/16 v6, 0x136

    const/16 v5, 0xcb

    const/4 v4, 0x3

    const/4 v0, 0x0

    iget-boolean v1, p0, Lcom/android/server/desktopmode/DesktopModeService;->mTouchpadEnabled:Z

    if-nez v1, :cond_0

    return-void

    :cond_0
    sget-boolean v1, Lcom/android/server/desktopmode/DesktopModeService;->DEBUG:Z

    if-eqz v1, :cond_1

    sget-object v1, Lcom/android/server/desktopmode/DesktopModeService;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setTouchPadScreen(), enabled="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", mode="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    if-eqz p1, :cond_3

    iget-boolean v1, p0, Lcom/android/server/desktopmode/DesktopModeService;->mIsExternalDisplayConnected:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/server/desktopmode/DesktopModeService;->mUiManager:Lcom/android/server/desktopmode/DesktopModeUiManager;

    invoke-virtual {v1, v6, p2}, Lcom/android/server/desktopmode/DesktopModeUiManager;->showVirtualDevice(II)V

    iget-object v1, p0, Lcom/android/server/desktopmode/DesktopModeService;->mUiManager:Lcom/android/server/desktopmode/DesktopModeUiManager;

    invoke-virtual {v1, v5}, Lcom/android/server/desktopmode/DesktopModeUiManager;->showNotification(I)V

    iget-boolean v1, p0, Lcom/android/server/desktopmode/DesktopModeService;->mSPenFeatureEnabled:Z

    if-eqz v1, :cond_2

    packed-switch p2, :pswitch_data_0

    :cond_2
    :goto_0
    return-void

    :pswitch_0
    const-string/jumbo v0, "/sys/class/sec/sec_epen/dex_enable"

    iget-object v1, p0, Lcom/android/server/desktopmode/DesktopModeService;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v2, "spen_mode"

    invoke-static {v1, v2, v4}, Lcom/android/server/desktopmode/DesktopModeSettingsManager;->getSettings(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/server/desktopmode/DesktopModeUtils;->writeFile(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v1, "spen_mode_icon"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/server/desktopmode/DesktopModeSettingsManager;->setSettings(Landroid/content/ContentResolver;Ljava/lang/String;Z)V

    goto :goto_0

    :pswitch_1
    const-string/jumbo v1, "/sys/class/sec/sec_epen/dex_enable"

    invoke-static {v1, v4}, Lcom/android/server/desktopmode/DesktopModeUtils;->writeFile(Ljava/lang/String;I)V

    iget-object v1, p0, Lcom/android/server/desktopmode/DesktopModeService;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v2, "spen_mode_icon"

    invoke-static {v1, v2, v0}, Lcom/android/server/desktopmode/DesktopModeSettingsManager;->setSettings(Landroid/content/ContentResolver;Ljava/lang/String;Z)V

    goto :goto_0

    :pswitch_2
    const-string/jumbo v1, "/sys/class/sec/sec_epen/dex_enable"

    const/4 v2, 0x7

    invoke-static {v1, v2}, Lcom/android/server/desktopmode/DesktopModeUtils;->writeFile(Ljava/lang/String;I)V

    iget-object v1, p0, Lcom/android/server/desktopmode/DesktopModeService;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v2, "spen_mode_icon"

    invoke-static {v1, v2, v0}, Lcom/android/server/desktopmode/DesktopModeSettingsManager;->setSettings(Landroid/content/ContentResolver;Ljava/lang/String;Z)V

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/android/server/desktopmode/DesktopModeService;->mUiManager:Lcom/android/server/desktopmode/DesktopModeUiManager;

    invoke-virtual {v1, v6}, Lcom/android/server/desktopmode/DesktopModeUiManager;->removeVirtualDevice(I)V

    iget-object v1, p0, Lcom/android/server/desktopmode/DesktopModeService;->mUiManager:Lcom/android/server/desktopmode/DesktopModeUiManager;

    invoke-virtual {v1, v5}, Lcom/android/server/desktopmode/DesktopModeUiManager;->removeNotification(I)V

    iget-boolean v1, p0, Lcom/android/server/desktopmode/DesktopModeService;->mSPenFeatureEnabled:Z

    if-eqz v1, :cond_2

    const-string/jumbo v1, "/sys/class/sec/sec_epen/dex_enable"

    invoke-virtual {p0}, Lcom/android/server/desktopmode/DesktopModeService;->isDesktopModeEnablingOrEnabled()Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v2, "spen_mode"

    invoke-static {v0, v2, v4}, Lcom/android/server/desktopmode/DesktopModeSettingsManager;->getSettings(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    :cond_4
    invoke-static {v1, v0}, Lcom/android/server/desktopmode/DesktopModeUtils;->writeFile(Ljava/lang/String;I)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x12c
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private setVirtualKeyboard(ZI)V
    .locals 8

    const/4 v7, 0x0

    const/4 v6, -0x1

    if-eqz p1, :cond_3

    iget-object v3, p0, Lcom/android/server/desktopmode/DesktopModeService;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v4, "show_ime_with_hard_keyboard"

    const/4 v5, 0x1

    invoke-static {v3, v4, v5, p2}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    sget-boolean v3, Lcom/android/server/desktopmode/DesktopModeService;->DEBUG:Z

    if-eqz v3, :cond_0

    sget-object v3, Lcom/android/server/desktopmode/DesktopModeService;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setVirtualKeyboard(), Backing up current value="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v3, p0, Lcom/android/server/desktopmode/DesktopModeService;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v4, "keyboard_backup"

    invoke-static {v3, v4, v2, p2}, Lcom/android/server/desktopmode/DesktopModeSettingsManager;->setSettingsAsUser(Landroid/content/ContentResolver;Ljava/lang/String;II)V

    iget-object v3, p0, Lcom/android/server/desktopmode/DesktopModeService;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v4, "keyboard_dex"

    invoke-static {v3, v4, v7, p2}, Lcom/android/server/desktopmode/DesktopModeSettingsManager;->getSettingsAsUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    sget-boolean v3, Lcom/android/server/desktopmode/DesktopModeService;->DEBUG:Z

    if-eqz v3, :cond_1

    sget-object v3, Lcom/android/server/desktopmode/DesktopModeService;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setVirtualKeyboard(), Setting Desktop mode value="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    invoke-direct {p0, v1, p2}, Lcom/android/server/desktopmode/DesktopModeService;->setNormalModeVirtualKeyboard(II)V

    :cond_2
    :goto_0
    return-void

    :cond_3
    iget-object v3, p0, Lcom/android/server/desktopmode/DesktopModeService;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v4, "keyboard_backup"

    invoke-static {v3, v4, v6, p2}, Lcom/android/server/desktopmode/DesktopModeSettingsManager;->getSettingsAsUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-ltz v0, :cond_2

    sget-boolean v3, Lcom/android/server/desktopmode/DesktopModeService;->DEBUG:Z

    if-eqz v3, :cond_4

    sget-object v3, Lcom/android/server/desktopmode/DesktopModeService;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setVirtualKeyboard(), Restoring backed up value="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    invoke-direct {p0, v0, p2}, Lcom/android/server/desktopmode/DesktopModeService;->setNormalModeVirtualKeyboard(II)V

    iget-object v3, p0, Lcom/android/server/desktopmode/DesktopModeService;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v4, "keyboard_backup"

    invoke-static {v3, v4, v6, p2}, Lcom/android/server/desktopmode/DesktopModeSettingsManager;->setSettingsAsUser(Landroid/content/ContentResolver;Ljava/lang/String;II)V

    goto :goto_0
.end method

.method private showDialog(ILcom/android/server/desktopmode/DesktopModeUiManager$InternalDialogCallback;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mUiManager:Lcom/android/server/desktopmode/DesktopModeUiManager;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/desktopmode/DesktopModeUiManager;->showDialog(ILcom/android/server/desktopmode/DesktopModeUiManager$InternalDialogCallback;)V

    return-void
.end method

.method private showDisplayUnsupportDialogIfNeeded()V
    .locals 6

    iget-object v1, p0, Lcom/android/server/desktopmode/DesktopModeService;->mConnectedDisplay:Landroid/view/Display;

    if-eqz v1, :cond_0

    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iget-object v1, p0, Lcom/android/server/desktopmode/DesktopModeService;->mConnectedDisplay:Landroid/view/Display;

    invoke-virtual {v1, v0}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    iget v1, v0, Landroid/graphics/Point;->x:I

    const/16 v2, 0x280

    if-gt v1, v2, :cond_0

    iget v1, v0, Landroid/graphics/Point;->y:I

    const/16 v2, 0x1e0

    if-gt v1, v2, :cond_0

    iget-object v1, p0, Lcom/android/server/desktopmode/DesktopModeService;->mHandler:Lcom/android/server/desktopmode/DesktopModeService$DesktopModeHandler;

    iget-object v2, p0, Lcom/android/server/desktopmode/DesktopModeService;->mHandler:Lcom/android/server/desktopmode/DesktopModeService$DesktopModeHandler;

    const/4 v3, 0x2

    const/4 v4, 0x7

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/server/desktopmode/DesktopModeService$DesktopModeHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/desktopmode/DesktopModeService$DesktopModeHandler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    return-void
.end method

.method private showLaunchConfirmDialog()V
    .locals 8

    const/4 v4, 0x2

    iget-boolean v2, p0, Lcom/android/server/desktopmode/DesktopModeService;->mIsExternalDisplayConnected:Z

    iget-object v3, p0, Lcom/android/server/desktopmode/DesktopModeService;->mCoverController:Lcom/android/server/desktopmode/CoverSupportStateController;

    invoke-virtual {v3}, Lcom/android/server/desktopmode/CoverSupportStateController;->getCoverSupportState()I

    move-result v3

    if-ne v3, v4, :cond_0

    const/4 v1, 0x1

    :goto_0
    new-instance v0, Lcom/android/server/desktopmode/DesktopModeService$10;

    invoke-direct {v0, p0, v2, v1}, Lcom/android/server/desktopmode/DesktopModeService$10;-><init>(Lcom/android/server/desktopmode/DesktopModeService;ZZ)V

    iget-object v5, p0, Lcom/android/server/desktopmode/DesktopModeService;->mHandler:Lcom/android/server/desktopmode/DesktopModeService$DesktopModeHandler;

    iget-object v6, p0, Lcom/android/server/desktopmode/DesktopModeService;->mHandler:Lcom/android/server/desktopmode/DesktopModeService$DesktopModeHandler;

    if-eqz v1, :cond_1

    const/4 v3, 0x1

    :goto_1
    const/4 v7, 0x0

    invoke-virtual {v6, v4, v3, v7, v0}, Lcom/android/server/desktopmode/DesktopModeService$DesktopModeHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v5, v3}, Lcom/android/server/desktopmode/DesktopModeService$DesktopModeHandler;->sendMessage(Landroid/os/Message;)Z

    return-void

    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    move v3, v4

    goto :goto_1
.end method

.method private startHome()V
    .locals 3

    sget-boolean v1, Lcom/android/server/desktopmode/DesktopModeService;->DEBUG:Z

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/server/desktopmode/DesktopModeService;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "startHome()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "android.intent.category.HOME"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v1, 0x10200000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    sget-object v1, Lcom/android/server/desktopmode/DesktopModeService;->TAG:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/server/desktopmode/DesktopModeService;->mContext:Landroid/content/Context;

    iget v2, p0, Lcom/android/server/desktopmode/DesktopModeService;->mCurrentUserId:I

    invoke-static {v2}, Landroid/os/UserHandle;->semOf(I)Landroid/os/UserHandle;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    return-void
.end method

.method private startTopActivity(Landroid/content/Intent;I)V
    .locals 0

    return-void
.end method

.method private updateDesktopMode(Z)V
    .locals 5

    const/4 v4, 0x7

    const/4 v1, 0x0

    sget-boolean v0, Lcom/android/server/desktopmode/DesktopModeService;->DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/desktopmode/DesktopModeService;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateDesktopMode(), enter="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", mModeChangeLock="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/server/desktopmode/DesktopModeService;->mModeChangeLock:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-direct {p0}, Lcom/android/server/desktopmode/DesktopModeService;->isSystemReady()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mModeChangeLock:Z

    if-eqz v0, :cond_2

    :cond_1
    return-void

    :cond_2
    invoke-direct {p0, v1}, Lcom/android/server/desktopmode/DesktopModeService;->updateOngoingNotification(Z)V

    if-eqz p1, :cond_5

    iget-boolean v0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mIsDesktopMode:Z

    if-nez v0, :cond_3

    invoke-direct {p0}, Lcom/android/server/desktopmode/DesktopModeService;->isExternalDisplayConnectedOrForced()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/android/server/desktopmode/DesktopModeService;->isDesktopDockConnectedOrForced()Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/server/desktopmode/DesktopModeService;->isAllowed(Z)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-direct {p0}, Lcom/android/server/desktopmode/DesktopModeService;->setDesktopModeOrShowLaunchConfirmationDialog()V

    :cond_3
    :goto_0
    return-void

    :cond_4
    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mHandler:Lcom/android/server/desktopmode/DesktopModeService$DesktopModeHandler;

    invoke-virtual {v0, v4}, Lcom/android/server/desktopmode/DesktopModeService$DesktopModeHandler;->removeMessages(I)V

    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mHandler:Lcom/android/server/desktopmode/DesktopModeService$DesktopModeHandler;

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v4, v2, v3}, Lcom/android/server/desktopmode/DesktopModeService$DesktopModeHandler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    :cond_5
    invoke-direct {p0}, Lcom/android/server/desktopmode/DesktopModeService;->isExternalDisplayConnectedOrForced()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {p0}, Lcom/android/server/desktopmode/DesktopModeService;->isDesktopDockConnectedOrForced()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {p0, v1}, Lcom/android/server/desktopmode/DesktopModeService;->isAllowed(Z)Z

    move-result v0

    :goto_1
    if-nez v0, :cond_3

    invoke-direct {p0}, Lcom/android/server/desktopmode/DesktopModeService;->dismissDialog()V

    iget-boolean v0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mIsDesktopMode:Z

    if-eqz v0, :cond_3

    invoke-direct {p0, v1}, Lcom/android/server/desktopmode/DesktopModeService;->setDesktopMode(Z)V

    goto :goto_0

    :cond_6
    move v0, v1

    goto :goto_1
.end method

.method private updateExternalDisplayStatus()Z
    .locals 10

    const/4 v9, 0x2

    iget-object v5, p0, Lcom/android/server/desktopmode/DesktopModeService;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    invoke-virtual {v5}, Landroid/hardware/display/DisplayManager;->getDisplays()[Landroid/view/Display;

    move-result-object v3

    const/4 v0, 0x0

    const/4 v5, 0x0

    array-length v6, v3

    :goto_0
    if-ge v5, v6, :cond_2

    aget-object v2, v3, v5

    invoke-virtual {v2}, Landroid/view/Display;->getType()I

    move-result v4

    if-eq v4, v9, :cond_0

    const/4 v7, 0x5

    if-ne v4, v7, :cond_5

    invoke-virtual {v2}, Landroid/view/Display;->getOwnerPackageName()Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, "com.displaylink"

    invoke-virtual {v7, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_5

    :cond_0
    sget-boolean v5, Lcom/android/server/desktopmode/DesktopModeService;->DEBUG:Z

    if-eqz v5, :cond_1

    sget-object v5, Lcom/android/server/desktopmode/DesktopModeService;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Connected external display="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const/4 v0, 0x1

    iput-object v2, p0, Lcom/android/server/desktopmode/DesktopModeService;->mConnectedDisplay:Landroid/view/Display;

    :cond_2
    if-nez v0, :cond_3

    iget-boolean v5, p0, Lcom/android/server/desktopmode/DesktopModeService;->mIsDesktopMode:Z

    if-eqz v5, :cond_3

    const-string/jumbo v5, "/sys/class/dp_sec/dex"

    invoke-static {v5}, Lcom/android/server/desktopmode/DesktopModeUtils;->readFile(Ljava/lang/String;)I

    move-result v5

    if-ne v5, v9, :cond_3

    const/4 v0, 0x1

    :cond_3
    iget-boolean v5, p0, Lcom/android/server/desktopmode/DesktopModeService;->mIsExternalDisplayConnected:Z

    if-eq v5, v0, :cond_6

    const/4 v1, 0x1

    :goto_1
    iput-boolean v0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mIsExternalDisplayConnected:Z

    sget-boolean v5, Lcom/android/server/desktopmode/DesktopModeService;->DEBUG:Z

    if-eqz v5, :cond_4

    sget-object v5, Lcom/android/server/desktopmode/DesktopModeService;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "mIsExternalDisplayConnected="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-boolean v7, p0, Lcom/android/server/desktopmode/DesktopModeService;->mIsExternalDisplayConnected:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    return v1

    :cond_5
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_6
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private updateInputDeviceStatus()Z
    .locals 14

    const/4 v9, 0x0

    sget-boolean v8, Lcom/android/server/desktopmode/DesktopModeService;->DEBUG:Z

    if-eqz v8, :cond_0

    sget-object v8, Lcom/android/server/desktopmode/DesktopModeService;->TAG:Ljava/lang/String;

    const-string/jumbo v10, "Call updateInputDevice()"

    invoke-static {v8, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v8, p0, Lcom/android/server/desktopmode/DesktopModeService;->mInputManager:Landroid/hardware/input/InputManager;

    invoke-virtual {v8}, Landroid/hardware/input/InputManager;->getInputDeviceIds()[I

    move-result-object v1

    const/4 v6, 0x0

    const/4 v5, 0x0

    array-length v10, v1

    move v8, v9

    :goto_0
    if-ge v8, v10, :cond_8

    aget v0, v1, v8

    iget-object v11, p0, Lcom/android/server/desktopmode/DesktopModeService;->mInputManager:Landroid/hardware/input/InputManager;

    invoke-virtual {v11, v0}, Landroid/hardware/input/InputManager;->getInputDevice(I)Landroid/view/InputDevice;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Landroid/view/InputDevice;->isExternal()Z

    move-result v11

    if-eqz v11, :cond_1

    invoke-virtual {v2}, Landroid/view/InputDevice;->getSources()I

    move-result v11

    and-int/lit8 v11, v11, 0xe

    if-eqz v11, :cond_2

    const/4 v4, 0x1

    :goto_1
    invoke-virtual {v2}, Landroid/view/InputDevice;->getKeyboardType()I

    move-result v11

    const/4 v12, 0x2

    if-ne v11, v12, :cond_3

    const/4 v3, 0x1

    :goto_2
    if-eqz v4, :cond_4

    invoke-virtual {v2}, Landroid/view/InputDevice;->getProductId()I

    move-result v11

    const v12, 0xa500

    if-ne v11, v12, :cond_4

    invoke-virtual {v2}, Landroid/view/InputDevice;->getVendorId()I

    move-result v11

    const/16 v12, 0x4e8

    if-ne v11, v12, :cond_4

    :cond_1
    :goto_3
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :cond_2
    const/4 v4, 0x0

    goto :goto_1

    :cond_3
    const/4 v3, 0x0

    goto :goto_2

    :cond_4
    or-int/2addr v6, v4

    or-int/2addr v5, v3

    if-eqz v4, :cond_6

    sget-boolean v11, Lcom/android/server/desktopmode/DesktopModeService;->DEBUG:Z

    if-eqz v11, :cond_5

    sget-object v11, Lcom/android/server/desktopmode/DesktopModeService;->TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "Connected mouse="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    iput-object v2, p0, Lcom/android/server/desktopmode/DesktopModeService;->mConnectedMouse:Landroid/view/InputDevice;

    :cond_6
    if-eqz v3, :cond_1

    sget-boolean v11, Lcom/android/server/desktopmode/DesktopModeService;->DEBUG:Z

    if-eqz v11, :cond_7

    sget-object v11, Lcom/android/server/desktopmode/DesktopModeService;->TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "Connected keyboard="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    iput-object v2, p0, Lcom/android/server/desktopmode/DesktopModeService;->mConnectedKeyboard:Landroid/view/InputDevice;

    goto :goto_3

    :cond_8
    iget-boolean v8, p0, Lcom/android/server/desktopmode/DesktopModeService;->mIsMouseConnected:Z

    if-eq v8, v6, :cond_d

    const/4 v7, 0x1

    :goto_4
    iput-boolean v6, p0, Lcom/android/server/desktopmode/DesktopModeService;->mIsMouseConnected:Z

    iput-boolean v5, p0, Lcom/android/server/desktopmode/DesktopModeService;->mIsKeyboardConnected:Z

    iget-boolean v8, p0, Lcom/android/server/desktopmode/DesktopModeService;->mIsBtMouseDeepSleep:Z

    if-eqz v8, :cond_a

    const/4 v8, 0x1

    iput-boolean v8, p0, Lcom/android/server/desktopmode/DesktopModeService;->mIsMouseConnected:Z

    sget-boolean v8, Lcom/android/server/desktopmode/DesktopModeService;->DEBUG:Z

    if-eqz v8, :cond_9

    sget-object v8, Lcom/android/server/desktopmode/DesktopModeService;->TAG:Ljava/lang/String;

    const-string/jumbo v10, "Enter the BT mouse deep sleep routine in updateInputDeviceStatus()"

    invoke-static {v8, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    iput-boolean v9, p0, Lcom/android/server/desktopmode/DesktopModeService;->mIsBtMouseDeepSleep:Z

    :cond_a
    sget-boolean v8, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->SAMSUNG_MULTIWINDOW_DYNAMIC_ENABLED:Z

    if-eqz v8, :cond_b

    iget-object v8, p0, Lcom/android/server/desktopmode/DesktopModeService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v8, v8, Lcom/android/server/wm/WindowManagerService;->mMultiWindowManagerInternal:Lcom/android/server/wm/IMultiWindowManagerInternalBridge;

    iget-boolean v9, p0, Lcom/android/server/desktopmode/DesktopModeService;->mIsMouseConnected:Z

    invoke-interface {v8, v9}, Lcom/android/server/wm/IMultiWindowManagerInternalBridge;->updateMouseConnectedForDesktopMode(Z)V

    :cond_b
    sget-boolean v8, Lcom/android/server/desktopmode/DesktopModeService;->DEBUG:Z

    if-eqz v8, :cond_c

    sget-object v8, Lcom/android/server/desktopmode/DesktopModeService;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "mIsMouseConnected="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-boolean v10, p0, Lcom/android/server/desktopmode/DesktopModeService;->mIsMouseConnected:Z

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, " mIsKeyboardConnected="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-boolean v10, p0, Lcom/android/server/desktopmode/DesktopModeService;->mIsKeyboardConnected:Z

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_c
    return v7

    :cond_d
    const/4 v7, 0x0

    goto :goto_4
.end method

.method private updateMonitorInfo()V
    .locals 5

    const-string/jumbo v2, "/sys/class/dp_sec/monitor_info"

    const-string/jumbo v3, ""

    invoke-static {v2, v3}, Lcom/android/server/desktopmode/DesktopModeUtils;->readFile(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/desktopmode/DesktopModeService;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v3, "monitor_info"

    const-string/jumbo v4, ""

    invoke-static {v2, v3, v4}, Lcom/android/server/desktopmode/DesktopModeSettingsManager;->getSettings(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/server/desktopmode/DesktopModeService;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v3, "monitor_changed"

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Lcom/android/server/desktopmode/DesktopModeSettingsManager;->setSettings(Landroid/content/ContentResolver;Ljava/lang/String;Z)V

    iget-object v2, p0, Lcom/android/server/desktopmode/DesktopModeService;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v3, "monitor_info"

    invoke-static {v2, v3, v0}, Lcom/android/server/desktopmode/DesktopModeSettingsManager;->setSettings(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iget-object v2, p0, Lcom/android/server/desktopmode/DesktopModeService;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v3, "monitor_changed"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Lcom/android/server/desktopmode/DesktopModeSettingsManager;->setSettings(Landroid/content/ContentResolver;Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method private updateOngoingNotification(Z)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/server/desktopmode/DesktopModeService;->updateOngoingNotification(ZZ)V

    return-void
.end method

.method private updateOngoingNotification(ZZ)V
    .locals 5

    const/16 v4, 0xc9

    const/4 v3, -0x1

    sget-boolean v0, Lcom/android/server/desktopmode/DesktopModeService;->DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/desktopmode/DesktopModeService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateOngoingNotification(cancel="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", welcomeDialogDismissed="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-nez p1, :cond_1

    invoke-direct {p0}, Lcom/android/server/desktopmode/DesktopModeService;->isExternalDisplayConnectedOrForced()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/server/desktopmode/DesktopModeService;->isDesktopDockConnectedOrForced()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/desktopmode/DesktopModeService;->isDesktopModePackagesAvailable(Z)Z

    move-result v0

    if-eqz v0, :cond_1

    if-nez p2, :cond_2

    invoke-direct {p0}, Lcom/android/server/desktopmode/DesktopModeService;->getHdmiSettings()I

    move-result v0

    if-ne v0, v3, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mUiManager:Lcom/android/server/desktopmode/DesktopModeUiManager;

    invoke-virtual {v0, v4}, Lcom/android/server/desktopmode/DesktopModeUiManager;->removeNotification(I)V

    return-void

    :cond_2
    iget-boolean v0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mIsDesktopMode:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mCoverController:Lcom/android/server/desktopmode/CoverSupportStateController;

    invoke-virtual {v0}, Lcom/android/server/desktopmode/CoverSupportStateController;->getCoverSupportState()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    iget-boolean v0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mIsDesktopDockConnected:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mUiManager:Lcom/android/server/desktopmode/DesktopModeUiManager;

    const/16 v1, 0xcc

    invoke-virtual {v0, v1}, Lcom/android/server/desktopmode/DesktopModeUiManager;->showNotification(I)V

    :goto_0
    return-void

    :cond_3
    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mUiManager:Lcom/android/server/desktopmode/DesktopModeUiManager;

    const/16 v1, 0xca

    invoke-virtual {v0, v1}, Lcom/android/server/desktopmode/DesktopModeUiManager;->showNotification(I)V

    goto :goto_0

    :cond_4
    if-eqz p2, :cond_5

    invoke-direct {p0}, Lcom/android/server/desktopmode/DesktopModeService;->getHdmiSettings()I

    move-result v0

    if-ne v0, v3, :cond_5

    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mUiManager:Lcom/android/server/desktopmode/DesktopModeUiManager;

    const/16 v1, 0xc8

    invoke-virtual {v0, v1}, Lcom/android/server/desktopmode/DesktopModeUiManager;->showNotification(I)V

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mUiManager:Lcom/android/server/desktopmode/DesktopModeUiManager;

    invoke-virtual {v0, v4}, Lcom/android/server/desktopmode/DesktopModeUiManager;->showNotification(I)V

    goto :goto_0
.end method

.method private updatePackageState()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/server/desktopmode/DesktopModeService;->mPackageState:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/server/desktopmode/DesktopModeService;->updatePackageState(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    if-nez v2, :cond_1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    :cond_1
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-object v2
.end method

.method private updatePackageState(Ljava/lang/String;)Z
    .locals 3

    invoke-direct {p0, p1}, Lcom/android/server/desktopmode/DesktopModeService;->isPackageAvailable(Ljava/lang/String;)Z

    move-result v0

    iget-object v1, p0, Lcom/android/server/desktopmode/DesktopModeService;->mPackageState:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eq v0, v1, :cond_0

    iget-object v1, p0, Lcom/android/server/desktopmode/DesktopModeService;->mPackageState:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v1, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x1

    return v1

    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method private updateTouchPadScreen()V
    .locals 5

    const/16 v0, 0x12c

    const/4 v4, 0x1

    const/4 v3, 0x0

    iget-boolean v1, p0, Lcom/android/server/desktopmode/DesktopModeService;->mTouchpadEnabled:Z

    if-nez v1, :cond_0

    return-void

    :cond_0
    sget-boolean v1, Lcom/android/server/desktopmode/DesktopModeService;->DEBUG:Z

    if-eqz v1, :cond_1

    sget-object v1, Lcom/android/server/desktopmode/DesktopModeService;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "updateTouchPadScreen()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-boolean v1, p0, Lcom/android/server/desktopmode/DesktopModeService;->mIsExternalDisplayConnected:Z

    if-eqz v1, :cond_6

    iget-boolean v1, p0, Lcom/android/server/desktopmode/DesktopModeService;->mIsMouseConnected:Z

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Lcom/android/server/desktopmode/DesktopModeService;->mIsSPenDetached:Z

    if-eqz v1, :cond_6

    :cond_2
    iget-boolean v1, p0, Lcom/android/server/desktopmode/DesktopModeService;->mIsDesktopMode:Z

    if-eqz v1, :cond_6

    iget-boolean v1, p0, Lcom/android/server/desktopmode/DesktopModeService;->mIsBiometric:Z

    if-eqz v1, :cond_5

    const/16 v0, 0x12e

    :cond_3
    :goto_0
    invoke-direct {p0, v4, v0}, Lcom/android/server/desktopmode/DesktopModeService;->setTouchPadScreen(ZI)V

    iget-boolean v0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mIsDesktopMode:Z

    if-eqz v0, :cond_4

    const-class v0, Lcom/android/server/desktopmode/DesktopModeService;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v4, v0}, Lcom/android/server/desktopmode/DesktopModeService;->setTouchScreenOn(ZLjava/lang/String;)V

    const-class v0, Lcom/android/server/desktopmode/DesktopModeService;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v4, v0}, Lcom/android/server/desktopmode/DesktopModeService;->setDefaultDisplayOn(ZLjava/lang/String;)V

    :cond_4
    :goto_1
    return-void

    :cond_5
    iget-boolean v1, p0, Lcom/android/server/desktopmode/DesktopModeService;->mIsDesktopDockConnected:Z

    if-eqz v1, :cond_3

    const/16 v0, 0x12d

    goto :goto_0

    :cond_6
    iget-object v1, p0, Lcom/android/server/desktopmode/DesktopModeService;->mUiManager:Lcom/android/server/desktopmode/DesktopModeUiManager;

    invoke-virtual {v1}, Lcom/android/server/desktopmode/DesktopModeUiManager;->getCurrentVirtualDeviceType()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_9

    iget-boolean v1, p0, Lcom/android/server/desktopmode/DesktopModeService;->mIsDesktopMode:Z

    if-eqz v1, :cond_8

    iget-boolean v1, p0, Lcom/android/server/desktopmode/DesktopModeService;->mIsExternalDisplayConnected:Z

    if-eqz v1, :cond_8

    iget-boolean v1, p0, Lcom/android/server/desktopmode/DesktopModeService;->mIsBiometric:Z

    if-nez v1, :cond_7

    const-class v1, Lcom/android/server/desktopmode/DesktopModeService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v3, v1}, Lcom/android/server/desktopmode/DesktopModeService;->setDefaultDisplayOn(ZLjava/lang/String;)V

    :cond_7
    const-class v1, Lcom/android/server/desktopmode/DesktopModeService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v3, v1}, Lcom/android/server/desktopmode/DesktopModeService;->setTouchScreenOn(ZLjava/lang/String;)V

    :cond_8
    invoke-direct {p0, v3, v0}, Lcom/android/server/desktopmode/DesktopModeService;->setTouchPadScreen(ZI)V

    goto :goto_1

    :cond_9
    const-class v0, Lcom/android/server/desktopmode/DesktopModeService;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v3, v0}, Lcom/android/server/desktopmode/DesktopModeService;->setDefaultDisplayOn(ZLjava/lang/String;)V

    goto :goto_1
.end method

.method private verifyCurrentState()V
    .locals 7

    const/4 v6, 0x0

    const/4 v3, 0x2

    iget-object v2, p0, Lcom/android/server/desktopmode/DesktopModeService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v2, v0, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v2, v2, 0xf

    if-ne v2, v3, :cond_5

    iget v2, v0, Landroid/content/res/Configuration;->densityDpi:I

    iget v4, p0, Lcom/android/server/desktopmode/DesktopModeService;->mCustomDensity:I

    if-ne v2, v4, :cond_4

    const/4 v1, 0x1

    :goto_0
    iget-boolean v2, p0, Lcom/android/server/desktopmode/DesktopModeService;->mIsDesktopMode:Z

    if-eq v1, v2, :cond_3

    sget-boolean v2, Lcom/android/server/desktopmode/DesktopModeService;->DEBUG:Z

    if-eqz v2, :cond_0

    sget-object v2, Lcom/android/server/desktopmode/DesktopModeService;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "verifyCurrentState(), Something is wrong! config="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", mIsDesktopMode="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/android/server/desktopmode/DesktopModeService;->mIsDesktopMode:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iput-boolean v1, p0, Lcom/android/server/desktopmode/DesktopModeService;->mIsDesktopMode:Z

    if-eqz v1, :cond_6

    const/4 v2, 0x4

    :goto_1
    const/4 v4, 0x0

    invoke-direct {p0, v2, v4}, Lcom/android/server/desktopmode/DesktopModeService;->setDesktopModeState(II)V

    invoke-direct {p0, v1}, Lcom/android/server/desktopmode/DesktopModeService;->setSettingsComponent(Z)V

    invoke-direct {p0, v1}, Lcom/android/server/desktopmode/DesktopModeService;->setDesktopModeToSurfaceFlinger(Z)V

    invoke-direct {p0, v1}, Lcom/android/server/desktopmode/DesktopModeService;->setDisplayPortState(Z)V

    if-eqz v1, :cond_1

    iget-object v2, p0, Lcom/android/server/desktopmode/DesktopModeService;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v2}, Lcom/android/server/am/ActivityManagerService;->stopLockTaskMode()V

    :cond_1
    invoke-direct {p0, v1}, Lcom/android/server/desktopmode/DesktopModeService;->prepareDesktopTaskBar(Z)V

    invoke-direct {p0, v1}, Lcom/android/server/desktopmode/DesktopModeService;->setDesktopTaskBar(Z)V

    iget-object v2, p0, Lcom/android/server/desktopmode/DesktopModeService;->mStateNotifier:Lcom/android/server/desktopmode/StateNotifier;

    invoke-virtual {v2, v1}, Lcom/android/server/desktopmode/StateNotifier;->notifyDesktopModeChanged(Z)V

    if-nez v1, :cond_2

    invoke-static {}, Lcom/android/server/desktopmode/DesktopModePolicyManager;->closeLaunchPolicyDB()V

    iput-object v6, p0, Lcom/android/server/desktopmode/DesktopModeService;->mTouchScreenEnabler:Lcom/android/server/desktopmode/DesktopModeService$Enabler;

    iput-object v6, p0, Lcom/android/server/desktopmode/DesktopModeService;->mDefaultDisplayEnabler:Lcom/android/server/desktopmode/DesktopModeService$Enabler;

    :cond_2
    iget v2, p0, Lcom/android/server/desktopmode/DesktopModeService;->mCurrentUserId:I

    invoke-direct {p0, v1, v2}, Lcom/android/server/desktopmode/DesktopModeService;->backupOrRestoreSettings(ZI)V

    iget-object v2, p0, Lcom/android/server/desktopmode/DesktopModeService;->mHandler:Lcom/android/server/desktopmode/DesktopModeService$DesktopModeHandler;

    const/4 v4, 0x5

    invoke-virtual {v2, v4}, Lcom/android/server/desktopmode/DesktopModeService$DesktopModeHandler;->sendEmptyMessage(I)Z

    iget-object v2, p0, Lcom/android/server/desktopmode/DesktopModeService;->mSamsungActivityManager:Lcom/android/server/am/IActivityManagerServiceBridge;

    if-eqz v1, :cond_7

    :goto_2
    const/4 v4, -0x1

    invoke-interface {v2, v3, v4}, Lcom/android/server/am/IActivityManagerServiceBridge;->moveAllTasksToStack(II)V

    :cond_3
    return-void

    :cond_4
    const/4 v1, 0x0

    goto :goto_0

    :cond_5
    const/4 v1, 0x0

    goto :goto_0

    :cond_6
    move v2, v3

    goto :goto_1

    :cond_7
    const/4 v3, 0x1

    goto :goto_2
.end method


# virtual methods
.method public commandDesktopLauncherVisibility(II)Z
    .locals 4

    iget-object v2, p0, Lcom/android/server/desktopmode/DesktopModeService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-object v1, p0, Lcom/android/server/desktopmode/DesktopModeService;->mLauncherInterface:Lcom/samsung/android/desktopmode/IDesktopModeLauncher;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    :try_start_1
    iget-object v1, p0, Lcom/android/server/desktopmode/DesktopModeService;->mLauncherInterface:Lcom/samsung/android/desktopmode/IDesktopModeLauncher;

    invoke-interface {v1, p1, p2}, Lcom/samsung/android/desktopmode/IDesktopModeLauncher;->commandDesktopLauncherVisibility(II)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v1

    monitor-exit v2

    return v1

    :catch_0
    move-exception v0

    :try_start_2
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_0
    const/4 v1, 0x0

    monitor-exit v2

    return v1

    :cond_0
    :try_start_3
    sget-object v1, Lcom/android/server/desktopmode/DesktopModeService;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "commandDesktopLauncherVisibility(). mLauncherInterface is null!!"

    invoke-static {v1, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 11

    const/4 v8, 0x1

    const/4 v7, 0x0

    iget-object v9, p0, Lcom/android/server/desktopmode/DesktopModeService;->mContext:Landroid/content/Context;

    const-string/jumbo v10, "android.permission.DUMP"

    invoke-virtual {v9, v10}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v9

    if-eqz v9, :cond_0

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Permission Denial: can\'t dump DesktopModeService from from pid="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ", uid="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void

    :cond_0
    if-eqz p3, :cond_1

    array-length v9, p3

    if-nez v9, :cond_3

    :cond_1
    new-instance v3, Lcom/android/internal/util/IndentingPrintWriter;

    const-string/jumbo v8, "  "

    invoke-direct {v3, p2, v8}, Lcom/android/internal/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    const-string/jumbo v8, "DesktopModeService (dumpsys desktopmode):"

    invoke-virtual {v3, v8}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    const-string/jumbo v8, "mConnectedDisplay"

    iget-object v9, p0, Lcom/android/server/desktopmode/DesktopModeService;->mConnectedDisplay:Landroid/view/Display;

    invoke-virtual {v3, v8, v9}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)V

    const-string/jumbo v8, "\nmConnectedKeyboard"

    iget-object v9, p0, Lcom/android/server/desktopmode/DesktopModeService;->mConnectedKeyboard:Landroid/view/InputDevice;

    invoke-virtual {v3, v8, v9}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)V

    const-string/jumbo v8, "\nmConnectedMouse"

    iget-object v9, p0, Lcom/android/server/desktopmode/DesktopModeService;->mConnectedMouse:Landroid/view/InputDevice;

    invoke-virtual {v3, v8, v9}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)V

    const-string/jumbo v8, "\nmCurrentLaunchPolicyMode"

    iget v9, p0, Lcom/android/server/desktopmode/DesktopModeService;->mCurrentLaunchPolicyMode:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v3, v8, v9}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)V

    const-string/jumbo v8, "\nmCurrentUserId"

    iget v9, p0, Lcom/android/server/desktopmode/DesktopModeService;->mCurrentUserId:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v3, v8, v9}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)V

    const-string/jumbo v8, "\nmCustomDensity"

    iget v9, p0, Lcom/android/server/desktopmode/DesktopModeService;->mCustomDensity:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v3, v8, v9}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)V

    const-string/jumbo v8, "\nmCustomHeight"

    iget v9, p0, Lcom/android/server/desktopmode/DesktopModeService;->mCustomHeight:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v3, v8, v9}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)V

    const-string/jumbo v8, "\nmCustomWidth"

    iget v9, p0, Lcom/android/server/desktopmode/DesktopModeService;->mCustomWidth:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v3, v8, v9}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)V

    const-string/jumbo v8, "\nmDefaultDisplayEnabler"

    iget-object v9, p0, Lcom/android/server/desktopmode/DesktopModeService;->mDefaultDisplayEnabler:Lcom/android/server/desktopmode/DesktopModeService$Enabler;

    invoke-virtual {v3, v8, v9}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)V

    const-string/jumbo v8, "\nmDesktopModeState"

    iget-object v9, p0, Lcom/android/server/desktopmode/DesktopModeService;->mDesktopModeState:Lcom/samsung/android/desktopmode/SemDesktopModeState;

    invoke-virtual {v3, v8, v9}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)V

    const-string/jumbo v8, "\nmDialogType"

    iget-object v9, p0, Lcom/android/server/desktopmode/DesktopModeService;->mUiManager:Lcom/android/server/desktopmode/DesktopModeUiManager;

    invoke-virtual {v9}, Lcom/android/server/desktopmode/DesktopModeUiManager;->getCurrentDialogType()I

    move-result v9

    invoke-static {v9}, Lcom/samsung/android/desktopmode/DesktopModeUiConstants;->typeToString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v8, v9}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)V

    const-string/jumbo v8, "\nmDockState"

    iget v9, p0, Lcom/android/server/desktopmode/DesktopModeService;->mDockState:I

    invoke-static {v9}, Lcom/android/server/desktopmode/DesktopModeUtils;->dockStateToString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v8, v9}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)V

    const-string/jumbo v8, "\nmEntryExternalDisplayConnected"

    iget-boolean v9, p0, Lcom/android/server/desktopmode/DesktopModeService;->mEntryExternalDisplayConnected:Z

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v3, v8, v9}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)V

    const-string/jumbo v8, "\nmIsBiometric"

    iget-boolean v9, p0, Lcom/android/server/desktopmode/DesktopModeService;->mIsBiometric:Z

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v3, v8, v9}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)V

    const-string/jumbo v8, "\nmIsBootComplete"

    iget-boolean v9, p0, Lcom/android/server/desktopmode/DesktopModeService;->mIsBootComplete:Z

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v3, v8, v9}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)V

    const-string/jumbo v8, "\nmIsBtMouseDeepSleep"

    iget-boolean v9, p0, Lcom/android/server/desktopmode/DesktopModeService;->mIsBtMouseDeepSleep:Z

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v3, v8, v9}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)V

    const-string/jumbo v8, "\nmIsDesktopDockConnected"

    iget-boolean v9, p0, Lcom/android/server/desktopmode/DesktopModeService;->mIsDesktopDockConnected:Z

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v3, v8, v9}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)V

    const-string/jumbo v8, "\nmIsDesktopMode"

    iget-boolean v9, p0, Lcom/android/server/desktopmode/DesktopModeService;->mIsDesktopMode:Z

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v3, v8, v9}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)V

    const-string/jumbo v8, "\nmIsExternalDisplayConnected"

    iget-boolean v9, p0, Lcom/android/server/desktopmode/DesktopModeService;->mIsExternalDisplayConnected:Z

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v3, v8, v9}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)V

    const-string/jumbo v8, "\nmIsForcedDesktopMode"

    iget-boolean v9, p0, Lcom/android/server/desktopmode/DesktopModeService;->mIsForcedDesktopMode:Z

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v3, v8, v9}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)V

    const-string/jumbo v8, "\nmIsKeyboardConnected"

    iget-boolean v9, p0, Lcom/android/server/desktopmode/DesktopModeService;->mIsKeyboardConnected:Z

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v3, v8, v9}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)V

    const-string/jumbo v8, "\nmIsMouseConnected"

    iget-boolean v9, p0, Lcom/android/server/desktopmode/DesktopModeService;->mIsMouseConnected:Z

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v3, v8, v9}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)V

    const-string/jumbo v8, "\nmIsSPenDetached"

    iget-boolean v9, p0, Lcom/android/server/desktopmode/DesktopModeService;->mIsSPenDetached:Z

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v3, v8, v9}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)V

    const-string/jumbo v8, "\nmModeChangeLock"

    iget-boolean v9, p0, Lcom/android/server/desktopmode/DesktopModeService;->mModeChangeLock:Z

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v3, v8, v9}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)V

    const-string/jumbo v8, "\nmPackageState"

    iget-object v9, p0, Lcom/android/server/desktopmode/DesktopModeService;->mPackageState:Ljava/util/Map;

    invoke-virtual {v3, v8, v9}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)V

    const-string/jumbo v8, "\nmStopFreezingDisplayCalled"

    iget-boolean v9, p0, Lcom/android/server/desktopmode/DesktopModeService;->mStopFreezingDisplayCalled:Z

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v3, v8, v9}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)V

    const-string/jumbo v8, "\nmTopTaskId"

    iget v9, p0, Lcom/android/server/desktopmode/DesktopModeService;->mTopTaskId:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v3, v8, v9}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)V

    const-string/jumbo v8, "\nmTopTaskIntent"

    iget-object v9, p0, Lcom/android/server/desktopmode/DesktopModeService;->mTopTaskIntent:Landroid/content/Intent;

    invoke-virtual {v3, v8, v9}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)V

    const-string/jumbo v8, "\nmTouchpadEnabled"

    iget-boolean v9, p0, Lcom/android/server/desktopmode/DesktopModeService;->mTouchpadEnabled:Z

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v3, v8, v9}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)V

    const-string/jumbo v8, "\nmTouchScreenEnabler"

    iget-object v9, p0, Lcom/android/server/desktopmode/DesktopModeService;->mTouchScreenEnabler:Lcom/android/server/desktopmode/DesktopModeService$Enabler;

    invoke-virtual {v3, v8, v9}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)V

    const-string/jumbo v8, "\nmWallpaperShown"

    iget-boolean v9, p0, Lcom/android/server/desktopmode/DesktopModeService;->mWallpaperShown:Z

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v3, v8, v9}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v3}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    const-string/jumbo v8, "\nInternalPresentation"

    iget-object v9, p0, Lcom/android/server/desktopmode/DesktopModeService;->mUiManager:Lcom/android/server/desktopmode/DesktopModeUiManager;

    const/16 v10, 0x66

    invoke-virtual {v9, v10}, Lcom/android/server/desktopmode/DesktopModeUiManager;->getCurrentPresentationType(I)I

    move-result v9

    invoke-static {v9}, Lcom/samsung/android/desktopmode/DesktopModeUiConstants;->typeToString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v8, v9}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)V

    const-string/jumbo v8, "\nExternalPresentation"

    iget-object v9, p0, Lcom/android/server/desktopmode/DesktopModeService;->mUiManager:Lcom/android/server/desktopmode/DesktopModeUiManager;

    const/16 v10, 0x67

    invoke-virtual {v9, v10}, Lcom/android/server/desktopmode/DesktopModeUiManager;->getCurrentPresentationType(I)I

    move-result v9

    invoke-static {v9}, Lcom/samsung/android/desktopmode/DesktopModeUiConstants;->typeToString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v8, v9}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)V

    const-string/jumbo v8, "\nVirtualDevice"

    iget-object v9, p0, Lcom/android/server/desktopmode/DesktopModeService;->mUiManager:Lcom/android/server/desktopmode/DesktopModeUiManager;

    invoke-virtual {v9}, Lcom/android/server/desktopmode/DesktopModeUiManager;->getCurrentVirtualDeviceType()I

    move-result v9

    invoke-static {v9}, Lcom/samsung/android/desktopmode/DesktopModeUiConstants;->typeToString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v8, v9}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v3}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    const-string/jumbo v8, "\nConfiguration"

    iget-object v9, p0, Lcom/android/server/desktopmode/DesktopModeService;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v9

    invoke-virtual {v3, v8, v9}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)V

    const-string/jumbo v8, "\nDISPLAY_SIZE_FORCED"

    iget-object v9, p0, Lcom/android/server/desktopmode/DesktopModeService;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v10, "display_size_forced"

    invoke-static {v9, v10}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v8, v9}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)V

    const-string/jumbo v8, "\nDISPLAY_DENSITY_FORCED"

    iget-object v9, p0, Lcom/android/server/desktopmode/DesktopModeService;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v10, "display_density_forced"

    invoke-static {v9, v10, v7}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v8, v7}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)V

    const-string/jumbo v7, "\nSCREEN_OFF_TIMEOUT"

    iget-object v8, p0, Lcom/android/server/desktopmode/DesktopModeService;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v9, "screen_off_timeout"

    iget v10, p0, Lcom/android/server/desktopmode/DesktopModeService;->mCurrentUserId:I

    invoke-static {v8, v9, v10}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v7, v8}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)V

    const-string/jumbo v7, "\nSHOW_IME_WITH_HARD_KEYBOARD"

    iget-object v8, p0, Lcom/android/server/desktopmode/DesktopModeService;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v9, "show_ime_with_hard_keyboard"

    iget v10, p0, Lcom/android/server/desktopmode/DesktopModeService;->mCurrentUserId:I

    invoke-static {v8, v9, v10}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v7, v8}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v3}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    invoke-virtual {v3}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    iget-object v7, p0, Lcom/android/server/desktopmode/DesktopModeService;->mResolver:Landroid/content/ContentResolver;

    iget v8, p0, Lcom/android/server/desktopmode/DesktopModeService;->mCurrentUserId:I

    invoke-static {v3, v7, v8}, Lcom/android/server/desktopmode/DesktopModeSettingsManager;->dump(Lcom/android/internal/util/IndentingPrintWriter;Landroid/content/ContentResolver;I)V

    invoke-virtual {v3}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    iget-object v7, p0, Lcom/android/server/desktopmode/DesktopModeService;->mStateNotifier:Lcom/android/server/desktopmode/StateNotifier;

    invoke-virtual {v7, v3}, Lcom/android/server/desktopmode/StateNotifier;->dump(Lcom/android/internal/util/IndentingPrintWriter;)V

    invoke-virtual {v3}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    iget-object v7, p0, Lcom/android/server/desktopmode/DesktopModeService;->mEntryController:Lcom/android/server/desktopmode/DesktopModeEntryController;

    invoke-virtual {v7, v3}, Lcom/android/server/desktopmode/DesktopModeEntryController;->dump(Lcom/android/internal/util/IndentingPrintWriter;)V

    invoke-virtual {v3}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    iget-object v7, p0, Lcom/android/server/desktopmode/DesktopModeService;->mCoverController:Lcom/android/server/desktopmode/CoverSupportStateController;

    invoke-virtual {v7, v3}, Lcom/android/server/desktopmode/CoverSupportStateController;->dump(Lcom/android/internal/util/IndentingPrintWriter;)V

    invoke-virtual {v3}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    iget-object v7, p0, Lcom/android/server/desktopmode/DesktopModeService;->mToast:Lcom/android/server/desktopmode/ToastManager;

    invoke-virtual {v7, v3}, Lcom/android/server/desktopmode/ToastManager;->dump(Lcom/android/internal/util/IndentingPrintWriter;)V

    invoke-virtual {v3}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()V

    :cond_2
    :goto_0
    return-void

    :cond_3
    const-string/jumbo v9, "-a"

    aget-object v10, p3, v7

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_1

    sget-boolean v9, Lcom/android/server/desktopmode/DesktopModeService;->DEBUG:Z

    if-eqz v9, :cond_2

    aget-object v1, p3, v7

    const-string/jumbo v9, "toggle"

    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    iget-boolean v9, p0, Lcom/android/server/desktopmode/DesktopModeService;->mIsForcedDesktopMode:Z

    if-eqz v9, :cond_4

    :goto_1
    invoke-direct {p0, v7, p2}, Lcom/android/server/desktopmode/DesktopModeService;->setForcedDesktopMode(ZLjava/io/PrintWriter;)V

    goto :goto_0

    :cond_4
    move v7, v8

    goto :goto_1

    :cond_5
    const-string/jumbo v9, "on"

    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6

    invoke-direct {p0, v8, p2}, Lcom/android/server/desktopmode/DesktopModeService;->setForcedDesktopMode(ZLjava/io/PrintWriter;)V

    goto :goto_0

    :cond_6
    const-string/jumbo v8, "off"

    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_7

    invoke-direct {p0, v7, p2}, Lcom/android/server/desktopmode/DesktopModeService;->setForcedDesktopMode(ZLjava/io/PrintWriter;)V

    goto :goto_0

    :cond_7
    const-string/jumbo v8, "dblist"

    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_b

    iget-object v8, p0, Lcom/android/server/desktopmode/DesktopModeService;->mContext:Landroid/content/Context;

    invoke-static {v8}, Lcom/android/server/desktopmode/DesktopModePolicyManager;->getLaunchModePolicyList(Landroid/content/Context;)Landroid/os/Bundle;

    move-result-object v4

    if-nez v4, :cond_8

    const-string/jumbo v7, "LaunchModePolicyList is null."

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    :cond_8
    const-string/jumbo v8, "white_list"

    invoke-virtual {v4, v8}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v8, "black_list"

    invoke-virtual {v4, v8}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "********** WHITELIST[ "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    array-length v9, v6

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " ]**********"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p2, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    array-length v9, v6

    move v8, v7

    :goto_2
    if-ge v8, v9, :cond_9

    aget-object v5, v6, v8

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    :cond_9
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "********** BLACKLIST[ "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    array-length v9, v0

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " ]**********"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p2, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    array-length v8, v0

    :goto_3
    if-ge v7, v8, :cond_a

    aget-object v5, v0, v7

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    :cond_a
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "********** TOTALLIST[ "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    array-length v8, v6

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ", "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    array-length v8, v0

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " ]**********"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_b
    const-string/jumbo v7, "setCustomResolution"

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_c

    const/4 v7, 0x1

    :try_start_0
    aget-object v7, p3, v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    const/4 v8, 0x2

    aget-object v8, p3, v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    const/4 v9, 0x3

    aget-object v9, p3, v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    invoke-direct {p0, v7, v8, v9}, Lcom/android/server/desktopmode/DesktopModeService;->setCustomResolution(III)V

    const-string/jumbo v7, "Succeed. This change will be resetted when power is off."

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v2

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Unknown argument: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "; USAGE: setCustomResolution [Width] [Height] [Density]"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_c
    const-string/jumbo v7, "checkCustomResolution"

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_d

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Current value: Width="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/android/server/desktopmode/DesktopModeService;->mCustomWidth:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ", Height="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/android/server/desktopmode/DesktopModeService;->mCustomHeight:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ", Density="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/android/server/desktopmode/DesktopModeService;->mCustomDensity:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_d
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Unknown argument: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "; USAGE: [on|off|toggle|dblist]"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public getCurrentUiMode()I
    .locals 1

    iget v0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mCurrentUiMode:I

    return v0
.end method

.method public getDesktopModeKillPolicy()Landroid/os/Bundle;
    .locals 1

    invoke-static {}, Lcom/android/server/desktopmode/DesktopModePolicyManager;->getDesktopModeKillPolicy()Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public getDesktopModeState()Lcom/samsung/android/desktopmode/SemDesktopModeState;
    .locals 1

    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mDesktopModeState:Lcom/samsung/android/desktopmode/SemDesktopModeState;

    return-object v0
.end method

.method public getLaunchPolicyForPackage(Landroid/content/pm/ApplicationInfo;Landroid/content/pm/ActivityInfo;)I
    .locals 2

    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mContext:Landroid/content/Context;

    iget v1, p0, Lcom/android/server/desktopmode/DesktopModeService;->mCurrentLaunchPolicyMode:I

    invoke-static {v0, v1, p1, p2}, Lcom/android/server/desktopmode/DesktopModePolicyManager;->getLaunchPolicyForPackage(Landroid/content/Context;ILandroid/content/pm/ApplicationInfo;Landroid/content/pm/ActivityInfo;)I

    move-result v0

    return v0
.end method

.method public getLaunchPolicyRunnable(Landroid/content/pm/ApplicationInfo;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/android/server/desktopmode/DesktopModePolicyManager;->getLaunchPolicyRunnable(Landroid/content/Context;Landroid/content/pm/ApplicationInfo;)Z

    move-result v0

    return v0
.end method

.method public isAllowed(Z)Z
    .locals 7

    invoke-direct {p0}, Lcom/android/server/desktopmode/DesktopModeService;->isSystemReady()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-direct {p0, p1}, Lcom/android/server/desktopmode/DesktopModeService;->isHdmiSettingReady(Z)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-direct {p0, p1}, Lcom/android/server/desktopmode/DesktopModeService;->isDesktopModePackagesAvailable(Z)Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/android/server/desktopmode/DesktopModeService;->mEntryController:Lcom/android/server/desktopmode/DesktopModeEntryController;

    invoke-virtual {v4}, Lcom/android/server/desktopmode/DesktopModeEntryController;->getBlocker()Lcom/android/server/desktopmode/DesktopModeEntryController$DesktopModeBlockerInfo;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v4, 0x1

    return v4

    :cond_0
    sget-object v4, Lcom/android/server/desktopmode/DesktopModeService;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "isAllowed(enter="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "), blocked by "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_2

    :try_start_0
    iget-object v4, v0, Lcom/android/server/desktopmode/DesktopModeEntryController$DesktopModeBlockerInfo;->blocker:Lcom/samsung/android/desktopmode/IDesktopModeBlocker;

    invoke-interface {v4}, Lcom/samsung/android/desktopmode/IDesktopModeBlocker;->getIdentifier()Ljava/lang/String;

    move-result-object v2

    iget-object v4, v0, Lcom/android/server/desktopmode/DesktopModeEntryController$DesktopModeBlockerInfo;->blocker:Lcom/samsung/android/desktopmode/IDesktopModeBlocker;

    invoke-interface {v4}, Lcom/samsung/android/desktopmode/IDesktopModeBlocker;->getBlockingMessage()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x8

    invoke-static {v4}, Lcom/android/server/desktopmode/DefaultBlocker;->reasonToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/server/desktopmode/DesktopModeService;->mContext:Landroid/content/Context;

    new-instance v5, Landroid/content/Intent;

    const-string/jumbo v6, "com.samsung.android.desktopmode.action.UPDATE_DATABASE"

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v6, "com.sec.android.app.desktoplauncher"

    invoke-virtual {v5, v6}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    :cond_1
    iget-object v4, p0, Lcom/android/server/desktopmode/DesktopModeService;->mToast:Lcom/android/server/desktopmode/ToastManager;

    invoke-virtual {v4, v3}, Lcom/android/server/desktopmode/ToastManager;->showToast(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_0
    const/4 v4, 0x0

    return v4

    :catch_0
    move-exception v1

    sget-object v4, Lcom/android/server/desktopmode/DesktopModeService;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Failed to get blocking message from blocker "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public isConfigurationChangedFromDeX(Landroid/content/res/Configuration;)Z
    .locals 4

    const/4 v3, 0x1

    iget v1, p1, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v1, v1, 0xf

    const/4 v2, 0x2

    if-ne v1, v2, :cond_3

    iget v1, p1, Landroid/content/res/Configuration;->densityDpi:I

    iget v2, p0, Lcom/android/server/desktopmode/DesktopModeService;->mCustomDensity:I

    if-ne v1, v2, :cond_2

    const/4 v0, 0x1

    :goto_0
    iget-object v1, p0, Lcom/android/server/desktopmode/DesktopModeService;->mDesktopModeState:Lcom/samsung/android/desktopmode/SemDesktopModeState;

    iget v1, v1, Lcom/samsung/android/desktopmode/SemDesktopModeState;->state:I

    const/16 v2, 0x1e

    if-ne v1, v2, :cond_5

    if-eqz v0, :cond_4

    iget-object v1, p0, Lcom/android/server/desktopmode/DesktopModeService;->mDesktopModeState:Lcom/samsung/android/desktopmode/SemDesktopModeState;

    iget v1, v1, Lcom/samsung/android/desktopmode/SemDesktopModeState;->enabled:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_4

    :cond_0
    sget-boolean v1, Lcom/android/server/desktopmode/DesktopModeService;->DEBUG:Z

    if-eqz v1, :cond_1

    sget-object v1, Lcom/android/server/desktopmode/DesktopModeService;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "isConfigurationChangedFromDeX true"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return v3

    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    goto :goto_0

    :cond_4
    if-nez v0, :cond_5

    iget-object v1, p0, Lcom/android/server/desktopmode/DesktopModeService;->mDesktopModeState:Lcom/samsung/android/desktopmode/SemDesktopModeState;

    iget v1, v1, Lcom/samsung/android/desktopmode/SemDesktopModeState;->enabled:I

    if-eq v1, v3, :cond_0

    :cond_5
    const/4 v1, 0x0

    return v1
.end method

.method public isDefaultDisplayBlocked()Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mDefaultDisplayEnabler:Lcom/android/server/desktopmode/DesktopModeService$Enabler;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isDesktopDockConnected()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mIsDesktopDockConnected:Z

    return v0
.end method

.method public isDesktopDockConnectedOrForced()Z
    .locals 2

    iget v0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mDockState:I

    const/16 v1, 0x6e

    if-eq v0, v1, :cond_0

    invoke-direct {p0}, Lcom/android/server/desktopmode/DesktopModeService;->isExternalDisplayConnectedOrForced()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/android/server/desktopmode/DesktopModeUtils;->isEngineerBinary()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isDesktopMode()Z
    .locals 2

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/android/server/desktopmode/DesktopModeService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->semDesktopModeEnabled:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isDesktopModeAvailable()Z
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0, v0}, Lcom/android/server/desktopmode/DesktopModeService;->isDesktopModeAvailableEx(ZZ)Z

    move-result v0

    return v0
.end method

.method public isDesktopModeAvailableEx(ZZ)Z
    .locals 4

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/android/server/desktopmode/DesktopModeService;->isExternalDisplayConnectedOrForced()Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_0
    if-eqz p2, :cond_1

    invoke-virtual {p0}, Lcom/android/server/desktopmode/DesktopModeService;->isDesktopDockConnectedOrForced()Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_1
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/server/desktopmode/DesktopModeService;->isAllowed(Z)Z

    move-result v0

    :goto_0
    sget-boolean v1, Lcom/android/server/desktopmode/DesktopModeService;->DEBUG:Z

    if-eqz v1, :cond_2

    sget-object v1, Lcom/android/server/desktopmode/DesktopModeService;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isDesktopModeAvailable(checkExternalDisplay="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", checkDesktopDock="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ")="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return v0

    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isDesktopModeEnablingOrEnabled()Z
    .locals 3

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/android/server/desktopmode/DesktopModeService;->mDesktopModeState:Lcom/samsung/android/desktopmode/SemDesktopModeState;

    iget v1, v1, Lcom/samsung/android/desktopmode/SemDesktopModeState;->enabled:I

    const/4 v2, 0x3

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/android/server/desktopmode/DesktopModeService;->mDesktopModeState:Lcom/samsung/android/desktopmode/SemDesktopModeState;

    iget v1, v1, Lcom/samsung/android/desktopmode/SemDesktopModeState;->enabled:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isDesktopModeForPreparing()Z
    .locals 4

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/android/server/desktopmode/DesktopModeService;->mDesktopModeState:Lcom/samsung/android/desktopmode/SemDesktopModeState;

    iget v1, v1, Lcom/samsung/android/desktopmode/SemDesktopModeState;->enabled:I

    const/4 v2, 0x4

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/android/server/desktopmode/DesktopModeService;->mDesktopModeState:Lcom/samsung/android/desktopmode/SemDesktopModeState;

    const/4 v2, 0x3

    const/16 v3, 0x1e

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/desktopmode/SemDesktopModeState;->compareTo(II)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/server/desktopmode/DesktopModeService;->mDesktopModeState:Lcom/samsung/android/desktopmode/SemDesktopModeState;

    const/16 v2, 0x14

    invoke-virtual {v1, v0, v2}, Lcom/samsung/android/desktopmode/SemDesktopModeState;->compareTo(II)Z

    move-result v0

    :cond_0
    return v0
.end method

.method public isDesktopModeLoadingScreenShowing()Z
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/server/desktopmode/DesktopModeService;->mDesktopModeState:Lcom/samsung/android/desktopmode/SemDesktopModeState;

    iget v1, v1, Lcom/samsung/android/desktopmode/SemDesktopModeState;->state:I

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public isExternalDisplayConnected()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mIsExternalDisplayConnected:Z

    return v0
.end method

.method public isKeepWhiteList(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/android/server/desktopmode/DesktopModePolicyManager;->isKeepWhiteList(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isModeChangePending()Z
    .locals 2

    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mDesktopModeState:Lcom/samsung/android/desktopmode/SemDesktopModeState;

    iget v0, v0, Lcom/samsung/android/desktopmode/SemDesktopModeState;->state:I

    const/16 v1, 0x1e

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3

    iget v1, p1, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v1, v1, 0xf

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    iget v1, p1, Landroid/content/res/Configuration;->densityDpi:I

    iget v2, p0, Lcom/android/server/desktopmode/DesktopModeService;->mCustomDensity:I

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    :goto_0
    iget-object v1, p0, Lcom/android/server/desktopmode/DesktopModeService;->mHandler:Lcom/android/server/desktopmode/DesktopModeService$DesktopModeHandler;

    new-instance v2, Lcom/android/server/desktopmode/DesktopModeService$9;

    invoke-direct {v2, p0, v0}, Lcom/android/server/desktopmode/DesktopModeService$9;-><init>(Lcom/android/server/desktopmode/DesktopModeService;Z)V

    invoke-virtual {v1, v2}, Lcom/android/server/desktopmode/DesktopModeService$DesktopModeHandler;->post(Ljava/lang/Runnable;)Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onStopFreezingDisplay()V
    .locals 5

    const/4 v1, 0x0

    sget-boolean v0, Lcom/android/server/desktopmode/DesktopModeService;->DEBUG:Z

    if-eqz v0, :cond_1

    sget-object v2, Lcom/android/server/desktopmode/DesktopModeService;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onStopFreezingDisplay(), mDesktopModeState="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lcom/android/server/desktopmode/DesktopModeService;->mDesktopModeState:Lcom/samsung/android/desktopmode/SemDesktopModeState;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, ", mIsDesktopMode="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v3, p0, Lcom/android/server/desktopmode/DesktopModeService;->mIsDesktopMode:Z

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, ", InternalPresentation="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mUiManager:Lcom/android/server/desktopmode/DesktopModeUiManager;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mUiManager:Lcom/android/server/desktopmode/DesktopModeUiManager;

    const/16 v4, 0x66

    invoke-virtual {v0, v4}, Lcom/android/server/desktopmode/DesktopModeUiManager;->getCurrentPresentationType(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :goto_0
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, ", ExternalPresentation="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lcom/android/server/desktopmode/DesktopModeService;->mUiManager:Lcom/android/server/desktopmode/DesktopModeUiManager;

    if-eqz v3, :cond_0

    iget-object v1, p0, Lcom/android/server/desktopmode/DesktopModeService;->mUiManager:Lcom/android/server/desktopmode/DesktopModeUiManager;

    const/16 v3, 0x67

    invoke-virtual {v1, v3}, Lcom/android/server/desktopmode/DesktopModeUiManager;->getCurrentPresentationType(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    :cond_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mDesktopModeState:Lcom/samsung/android/desktopmode/SemDesktopModeState;

    iget v0, v0, Lcom/samsung/android/desktopmode/SemDesktopModeState;->state:I

    const/16 v1, 0x1e

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mDesktopModeState:Lcom/samsung/android/desktopmode/SemDesktopModeState;

    iget v0, v0, Lcom/samsung/android/desktopmode/SemDesktopModeState;->state:I

    const/16 v1, 0x28

    if-ne v0, v1, :cond_5

    :cond_2
    :goto_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mStopFreezingDisplayCalled:Z

    invoke-direct {p0}, Lcom/android/server/desktopmode/DesktopModeService;->scheduleStopLoadingScreenIfPossible()V

    :cond_3
    return-void

    :cond_4
    move-object v0, v1

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mDesktopModeState:Lcom/samsung/android/desktopmode/SemDesktopModeState;

    iget v0, v0, Lcom/samsung/android/desktopmode/SemDesktopModeState;->state:I

    const/16 v1, 0x32

    if-ne v0, v1, :cond_3

    goto :goto_1
.end method

.method public registerBlocker(Lcom/samsung/android/desktopmode/IDesktopModeBlocker;Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mEntryController:Lcom/android/server/desktopmode/DesktopModeEntryController;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/desktopmode/DesktopModeEntryController;->registerBlocker(Lcom/samsung/android/desktopmode/IDesktopModeBlocker;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public registerDesktopLauncher(Lcom/samsung/android/desktopmode/IDesktopModeLauncher;)V
    .locals 3

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    iget v1, p0, Lcom/android/server/desktopmode/DesktopModeService;->mCurrentUserId:I

    if-eqz v1, :cond_0

    invoke-static {v0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    :cond_0
    if-eqz v0, :cond_1

    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_2

    :cond_1
    iget-object v1, p0, Lcom/android/server/desktopmode/DesktopModeService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iput-object p1, p0, Lcom/android/server/desktopmode/DesktopModeService;->mLauncherInterface:Lcom/samsung/android/desktopmode/IDesktopModeLauncher;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    :goto_0
    return-void

    :catchall_0
    move-exception v2

    monitor-exit v1

    throw v2

    :cond_2
    sget-object v1, Lcom/android/server/desktopmode/DesktopModeService;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "registerDesktopLauncher() is blocked!!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public registerDesktopModeListener(Lcom/samsung/android/desktopmode/IDesktopModeListener;Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mStateNotifier:Lcom/android/server/desktopmode/StateNotifier;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/desktopmode/StateNotifier;->registerDesktopModeListener(Lcom/samsung/android/desktopmode/IDesktopModeListener;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public registerEventListener(Lcom/samsung/android/desktopmode/IDesktopModeCallback;Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mStateNotifier:Lcom/android/server/desktopmode/StateNotifier;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/desktopmode/StateNotifier;->registerEventListener(Lcom/samsung/android/desktopmode/IDesktopModeCallback;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method scheduleUpdateDesktopMode(Z)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/server/desktopmode/DesktopModeService;->scheduleUpdateDesktopModeDelayed(ZI)V

    return-void
.end method

.method public setCurrentLaunchPolicyMode()V
    .locals 6

    const/4 v5, 0x0

    iget-object v2, p0, Lcom/android/server/desktopmode/DesktopModeService;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v3, "labs_resizable_window_enabled"

    iget v4, p0, Lcom/android/server/desktopmode/DesktopModeService;->mCurrentUserId:I

    invoke-static {v2, v3, v5, v4}, Lcom/android/server/desktopmode/DesktopModeSettingsManager;->getSettingsAsUser(Landroid/content/ContentResolver;Ljava/lang/String;ZI)Z

    move-result v0

    iget-object v2, p0, Lcom/android/server/desktopmode/DesktopModeService;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v3, "launch_policy_developer_enabled"

    iget v4, p0, Lcom/android/server/desktopmode/DesktopModeService;->mCurrentUserId:I

    invoke-static {v2, v3, v5, v4}, Lcom/android/server/desktopmode/DesktopModeSettingsManager;->getSettingsAsUser(Landroid/content/ContentResolver;Ljava/lang/String;ZI)Z

    move-result v1

    sget-boolean v2, Lcom/android/server/desktopmode/DesktopModeService;->DEBUG:Z

    if-eqz v2, :cond_0

    sget-object v2, Lcom/android/server/desktopmode/DesktopModeService;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "labsResizableWindowEnabled settings for user "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/server/desktopmode/DesktopModeService;->mCurrentUserId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " changed to="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    sget-boolean v2, Lcom/android/server/desktopmode/DesktopModeService;->DEBUG:Z

    if-eqz v2, :cond_1

    sget-object v2, Lcom/android/server/desktopmode/DesktopModeService;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "launchPolicyDeveloperEnabled settings for user "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/server/desktopmode/DesktopModeService;->mCurrentUserId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " changed to="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    if-eqz v1, :cond_3

    const/4 v2, 0x2

    iput v2, p0, Lcom/android/server/desktopmode/DesktopModeService;->mCurrentLaunchPolicyMode:I

    :goto_0
    sget-boolean v2, Lcom/android/server/desktopmode/DesktopModeService;->DEBUG:Z

    if-eqz v2, :cond_2

    sget-object v2, Lcom/android/server/desktopmode/DesktopModeService;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setCurrentLaunchPolicyMode "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/server/desktopmode/DesktopModeService;->mCurrentLaunchPolicyMode:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    iget-object v2, p0, Lcom/android/server/desktopmode/DesktopModeService;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v3, "launch_policy_mode"

    iget v4, p0, Lcom/android/server/desktopmode/DesktopModeService;->mCurrentLaunchPolicyMode:I

    iget v5, p0, Lcom/android/server/desktopmode/DesktopModeService;->mCurrentUserId:I

    invoke-static {v2, v3, v4, v5}, Lcom/android/server/desktopmode/DesktopModeSettingsManager;->setSettingsAsUser(Landroid/content/ContentResolver;Ljava/lang/String;II)V

    return-void

    :cond_3
    if-eqz v0, :cond_4

    const/4 v2, 0x1

    iput v2, p0, Lcom/android/server/desktopmode/DesktopModeService;->mCurrentLaunchPolicyMode:I

    goto :goto_0

    :cond_4
    iput v5, p0, Lcom/android/server/desktopmode/DesktopModeService;->mCurrentLaunchPolicyMode:I

    goto :goto_0
.end method

.method public setCurrentUserId(I)V
    .locals 3

    sget-boolean v0, Lcom/android/server/desktopmode/DesktopModeService;->DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/desktopmode/DesktopModeService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setCurrentUserId(), userId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iput p1, p0, Lcom/android/server/desktopmode/DesktopModeService;->mCurrentUserId:I

    invoke-static {p1}, Lcom/android/server/desktopmode/DesktopModeSettingsManager;->setCurrentUserId(I)V

    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mUiManager:Lcom/android/server/desktopmode/DesktopModeUiManager;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mUiManager:Lcom/android/server/desktopmode/DesktopModeUiManager;

    invoke-virtual {v0, p1}, Lcom/android/server/desktopmode/DesktopModeUiManager;->setCurrentUserId(I)V

    :cond_1
    return-void
.end method

.method public setDefaultDisplayOn(ZLjava/lang/String;)V
    .locals 8

    const/4 v7, 0x5

    const/4 v6, 0x0

    const/4 v5, 0x0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    const/16 v3, 0x3e8

    if-eq v2, v3, :cond_0

    new-instance v2, Ljava/lang/SecurityException;

    const-string/jumbo v3, "Only the system may call setDefaultDisplayOn()"

    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    if-eqz p2, :cond_1

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_1
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "callerPkgName must not be null or empty"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_2
    sget-boolean v2, Lcom/android/server/desktopmode/DesktopModeService;->DEBUG:Z

    if-eqz v2, :cond_3

    sget-object v2, Lcom/android/server/desktopmode/DesktopModeService;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setDefaultDisplayOn(), on="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", callerPkgName="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", mDefaultDisplayEnabler="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/desktopmode/DesktopModeService;->mDefaultDisplayEnabler:Lcom/android/server/desktopmode/DesktopModeService$Enabler;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    iget-boolean v2, p0, Lcom/android/server/desktopmode/DesktopModeService;->mIsExternalDisplayConnected:Z

    if-nez v2, :cond_5

    sget-boolean v2, Lcom/android/server/desktopmode/DesktopModeService;->DEBUG:Z

    if-eqz v2, :cond_4

    sget-object v2, Lcom/android/server/desktopmode/DesktopModeService;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "setDefaultDisplayOn(): External display is not connected."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    return-void

    :cond_5
    if-eqz p1, :cond_a

    iget-object v2, p0, Lcom/android/server/desktopmode/DesktopModeService;->mDefaultDisplayEnabler:Lcom/android/server/desktopmode/DesktopModeService$Enabler;

    if-nez v2, :cond_9

    new-instance v2, Lcom/android/server/desktopmode/DesktopModeService$Enabler;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    invoke-direct {v2, p2, v3, v4}, Lcom/android/server/desktopmode/DesktopModeService$Enabler;-><init>(Ljava/lang/String;II)V

    iput-object v2, p0, Lcom/android/server/desktopmode/DesktopModeService;->mDefaultDisplayEnabler:Lcom/android/server/desktopmode/DesktopModeService$Enabler;

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    iget-object v2, p0, Lcom/android/server/desktopmode/DesktopModeService;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, p0, Lcom/android/server/desktopmode/DesktopModeService;->mProcessObserver:Landroid/app/IProcessObserver;

    invoke-virtual {v2, v3}, Lcom/android/server/am/ActivityManagerService;->registerProcessObserver(Landroid/app/IProcessObserver;)V

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    iget-object v2, p0, Lcom/android/server/desktopmode/DesktopModeService;->mHandler:Lcom/android/server/desktopmode/DesktopModeService$DesktopModeHandler;

    new-instance v3, Lcom/android/server/desktopmode/DesktopModeService$8;

    invoke-direct {v3, p0}, Lcom/android/server/desktopmode/DesktopModeService$8;-><init>(Lcom/android/server/desktopmode/DesktopModeService;)V

    const-wide/16 v4, 0x3e8

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/server/desktopmode/DesktopModeService$DesktopModeHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_6
    :goto_0
    const-string/jumbo v2, "com.samsung.android.server.iris"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    const-string/jumbo v2, "com.samsung.android.bio.face.service"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    :cond_7
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/server/desktopmode/DesktopModeService;->mIsBiometric:Z

    iget-object v2, p0, Lcom/android/server/desktopmode/DesktopModeService;->mHandler:Lcom/android/server/desktopmode/DesktopModeService$DesktopModeHandler;

    invoke-virtual {v2, v7}, Lcom/android/server/desktopmode/DesktopModeService$DesktopModeHandler;->sendEmptyMessage(I)Z

    :cond_8
    :goto_1
    return-void

    :cond_9
    sget-boolean v2, Lcom/android/server/desktopmode/DesktopModeService;->DEBUG:Z

    if-eqz v2, :cond_6

    sget-object v2, Lcom/android/server/desktopmode/DesktopModeService;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setDefaultDisplayOn(), Screen already enabled by "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/desktopmode/DesktopModeService;->mDefaultDisplayEnabler:Lcom/android/server/desktopmode/DesktopModeService$Enabler;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_a
    iget-object v2, p0, Lcom/android/server/desktopmode/DesktopModeService;->mDefaultDisplayEnabler:Lcom/android/server/desktopmode/DesktopModeService$Enabler;

    if-eqz v2, :cond_e

    iget-object v2, p0, Lcom/android/server/desktopmode/DesktopModeService;->mDefaultDisplayEnabler:Lcom/android/server/desktopmode/DesktopModeService$Enabler;

    iget-object v2, v2, Lcom/android/server/desktopmode/DesktopModeService$Enabler;->tag:Ljava/lang/String;

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    iput-object v5, p0, Lcom/android/server/desktopmode/DesktopModeService;->mDefaultDisplayEnabler:Lcom/android/server/desktopmode/DesktopModeService$Enabler;

    iget-object v2, p0, Lcom/android/server/desktopmode/DesktopModeService;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, p0, Lcom/android/server/desktopmode/DesktopModeService;->mProcessObserver:Landroid/app/IProcessObserver;

    invoke-virtual {v2, v3}, Lcom/android/server/am/ActivityManagerService;->unregisterProcessObserver(Landroid/app/IProcessObserver;)V

    invoke-direct {p0, v6}, Lcom/android/server/desktopmode/DesktopModeService;->setDefaultDisplayPowerMode(I)V

    :cond_b
    :goto_2
    const-string/jumbo v2, "com.samsung.android.server.iris"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_c

    const-string/jumbo v2, "com.samsung.android.bio.face.service"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    :cond_c
    iput-boolean v6, p0, Lcom/android/server/desktopmode/DesktopModeService;->mIsBiometric:Z

    iget-object v2, p0, Lcom/android/server/desktopmode/DesktopModeService;->mHandler:Lcom/android/server/desktopmode/DesktopModeService$DesktopModeHandler;

    invoke-virtual {v2, v7}, Lcom/android/server/desktopmode/DesktopModeService$DesktopModeHandler;->sendEmptyMessage(I)Z

    goto :goto_1

    :cond_d
    sget-boolean v2, Lcom/android/server/desktopmode/DesktopModeService;->DEBUG:Z

    if-eqz v2, :cond_b

    sget-object v2, Lcom/android/server/desktopmode/DesktopModeService;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setDefaultDisplayOn(), Tag not matched; REQUESTED: {tag="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "}"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " ACQUIRING: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/desktopmode/DesktopModeService;->mDefaultDisplayEnabler:Lcom/android/server/desktopmode/DesktopModeService$Enabler;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_e
    sget-boolean v2, Lcom/android/server/desktopmode/DesktopModeService;->DEBUG:Z

    if-eqz v2, :cond_b

    sget-object v2, Lcom/android/server/desktopmode/DesktopModeService;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "setDefaultDisplayOn(), Screen already disabled"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method public setForcedDesktopMode(Z)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/server/desktopmode/DesktopModeService;->setForcedDesktopMode(ZLjava/io/PrintWriter;)V

    return-void
.end method

.method public setHdmiSettings(Z)V
    .locals 3

    iget-object v1, p0, Lcom/android/server/desktopmode/DesktopModeService;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v2, "hdmi_mode"

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-static {v1, v2, v0}, Lcom/android/server/desktopmode/DesktopModeSettingsManager;->setSettings(Landroid/content/ContentResolver;Ljava/lang/String;I)V

    return-void

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public setSystemService(Ljava/lang/Object;)V
    .locals 1

    instance-of v0, p1, Lcom/android/server/am/ActivityManagerService;

    if-eqz v0, :cond_1

    check-cast p1, Lcom/android/server/am/ActivityManagerService;

    iput-object p1, p0, Lcom/android/server/desktopmode/DesktopModeService;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    :cond_0
    :goto_0
    return-void

    :cond_1
    instance-of v0, p1, Lcom/android/server/wm/WindowManagerService;

    if-eqz v0, :cond_2

    check-cast p1, Lcom/android/server/wm/WindowManagerService;

    iput-object p1, p0, Lcom/android/server/desktopmode/DesktopModeService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    goto :goto_0

    :cond_2
    instance-of v0, p1, Lcom/android/server/input/InputManagerService;

    if-eqz v0, :cond_3

    check-cast p1, Lcom/android/server/input/InputManagerService;

    iput-object p1, p0, Lcom/android/server/desktopmode/DesktopModeService;->mInputManagerService:Lcom/android/server/input/InputManagerService;

    goto :goto_0

    :cond_3
    instance-of v0, p1, Lcom/android/server/am/IActivityManagerServiceBridge;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/android/server/am/IActivityManagerServiceBridge;

    iput-object p1, p0, Lcom/android/server/desktopmode/DesktopModeService;->mSamsungActivityManager:Lcom/android/server/am/IActivityManagerServiceBridge;

    goto :goto_0
.end method

.method public setTouchScreenOn(ZLjava/lang/String;)V
    .locals 7

    const/4 v6, 0x0

    const/4 v5, 0x1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    const/16 v3, 0x3e8

    if-eq v2, v3, :cond_0

    new-instance v2, Ljava/lang/SecurityException;

    const-string/jumbo v3, "Only the system may call setTouchScreenOn()"

    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    if-eqz p2, :cond_1

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_1
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "callerPkgName must not be null or empty"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_2
    sget-boolean v2, Lcom/android/server/desktopmode/DesktopModeService;->DEBUG:Z

    if-eqz v2, :cond_3

    sget-object v2, Lcom/android/server/desktopmode/DesktopModeService;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setTouchScreenOn(), on="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", callerPkgName="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", mTouchScreenEnabler="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/desktopmode/DesktopModeService;->mTouchScreenEnabler:Lcom/android/server/desktopmode/DesktopModeService$Enabler;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    iget-boolean v2, p0, Lcom/android/server/desktopmode/DesktopModeService;->mIsExternalDisplayConnected:Z

    if-nez v2, :cond_5

    sget-boolean v2, Lcom/android/server/desktopmode/DesktopModeService;->DEBUG:Z

    if-eqz v2, :cond_4

    sget-object v2, Lcom/android/server/desktopmode/DesktopModeService;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "setTouchScreenOn(): External display is not connected."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    return-void

    :cond_5
    if-eqz p1, :cond_8

    iget-object v2, p0, Lcom/android/server/desktopmode/DesktopModeService;->mTouchScreenEnabler:Lcom/android/server/desktopmode/DesktopModeService$Enabler;

    if-nez v2, :cond_7

    new-instance v2, Lcom/android/server/desktopmode/DesktopModeService$Enabler;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    invoke-direct {v2, p2, v3, v4}, Lcom/android/server/desktopmode/DesktopModeService$Enabler;-><init>(Ljava/lang/String;II)V

    iput-object v2, p0, Lcom/android/server/desktopmode/DesktopModeService;->mTouchScreenEnabler:Lcom/android/server/desktopmode/DesktopModeService$Enabler;

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    iget-object v2, p0, Lcom/android/server/desktopmode/DesktopModeService;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, p0, Lcom/android/server/desktopmode/DesktopModeService;->mProcessObserver:Landroid/app/IProcessObserver;

    invoke-virtual {v2, v3}, Lcom/android/server/am/ActivityManagerService;->registerProcessObserver(Landroid/app/IProcessObserver;)V

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    iget-object v2, p0, Lcom/android/server/desktopmode/DesktopModeService;->mInputManagerService:Lcom/android/server/input/InputManagerService;

    const-class v3, Lcom/android/server/desktopmode/DesktopModeService;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v4, v5, v5, v3}, Lcom/android/server/input/InputManagerService;->setBlockDeviceMode(ZIZLjava/lang/String;)V

    :cond_6
    :goto_0
    return-void

    :cond_7
    sget-boolean v2, Lcom/android/server/desktopmode/DesktopModeService;->DEBUG:Z

    if-eqz v2, :cond_6

    sget-object v2, Lcom/android/server/desktopmode/DesktopModeService;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setTouchScreenOn(), TSP already enabled by "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/desktopmode/DesktopModeService;->mTouchScreenEnabler:Lcom/android/server/desktopmode/DesktopModeService$Enabler;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_8
    iget-object v2, p0, Lcom/android/server/desktopmode/DesktopModeService;->mTouchScreenEnabler:Lcom/android/server/desktopmode/DesktopModeService$Enabler;

    if-eqz v2, :cond_a

    iget-object v2, p0, Lcom/android/server/desktopmode/DesktopModeService;->mTouchScreenEnabler:Lcom/android/server/desktopmode/DesktopModeService$Enabler;

    iget-object v2, v2, Lcom/android/server/desktopmode/DesktopModeService$Enabler;->tag:Ljava/lang/String;

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    iput-object v6, p0, Lcom/android/server/desktopmode/DesktopModeService;->mTouchScreenEnabler:Lcom/android/server/desktopmode/DesktopModeService$Enabler;

    iget-object v2, p0, Lcom/android/server/desktopmode/DesktopModeService;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, p0, Lcom/android/server/desktopmode/DesktopModeService;->mProcessObserver:Landroid/app/IProcessObserver;

    invoke-virtual {v2, v3}, Lcom/android/server/am/ActivityManagerService;->unregisterProcessObserver(Landroid/app/IProcessObserver;)V

    iget-object v2, p0, Lcom/android/server/desktopmode/DesktopModeService;->mInputManagerService:Lcom/android/server/input/InputManagerService;

    const-class v3, Lcom/android/server/desktopmode/DesktopModeService;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v5, v5, v5, v3}, Lcom/android/server/input/InputManagerService;->setBlockDeviceMode(ZIZLjava/lang/String;)V

    goto :goto_0

    :cond_9
    sget-boolean v2, Lcom/android/server/desktopmode/DesktopModeService;->DEBUG:Z

    if-eqz v2, :cond_6

    sget-object v2, Lcom/android/server/desktopmode/DesktopModeService;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setTouchScreenOn(), Tag not matched; REQUESTED: {tag="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "}"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " ACQUIRING: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/desktopmode/DesktopModeService;->mTouchScreenEnabler:Lcom/android/server/desktopmode/DesktopModeService$Enabler;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_a
    sget-boolean v2, Lcom/android/server/desktopmode/DesktopModeService;->DEBUG:Z

    if-eqz v2, :cond_6

    sget-object v2, Lcom/android/server/desktopmode/DesktopModeService;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "setTouchScreenOn(), TSP already disabled"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method public unregisterBlocker(Lcom/samsung/android/desktopmode/IDesktopModeBlocker;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mEntryController:Lcom/android/server/desktopmode/DesktopModeEntryController;

    invoke-virtual {v0, p1}, Lcom/android/server/desktopmode/DesktopModeEntryController;->unregisterBlocker(Lcom/samsung/android/desktopmode/IDesktopModeBlocker;)Z

    move-result v0

    return v0
.end method

.method public unregisterDesktopModeListener(Lcom/samsung/android/desktopmode/IDesktopModeListener;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mStateNotifier:Lcom/android/server/desktopmode/StateNotifier;

    invoke-virtual {v0, p1}, Lcom/android/server/desktopmode/StateNotifier;->unregisterDesktopModeListener(Lcom/samsung/android/desktopmode/IDesktopModeListener;)Z

    move-result v0

    return v0
.end method

.method public unregisterEventListener(Lcom/samsung/android/desktopmode/IDesktopModeCallback;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mStateNotifier:Lcom/android/server/desktopmode/StateNotifier;

    invoke-virtual {v0, p1}, Lcom/android/server/desktopmode/StateNotifier;->unregisterEventListener(Lcom/samsung/android/desktopmode/IDesktopModeCallback;)Z

    move-result v0

    return v0
.end method
