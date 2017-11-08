.class Lcom/android/server/policy/GlobalActions;
.super Ljava/lang/Object;
.source "GlobalActions.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/policy/GlobalActions$10;,
        Lcom/android/server/policy/GlobalActions$11;,
        Lcom/android/server/policy/GlobalActions$12;,
        Lcom/android/server/policy/GlobalActions$13;,
        Lcom/android/server/policy/GlobalActions$1;,
        Lcom/android/server/policy/GlobalActions$2;,
        Lcom/android/server/policy/GlobalActions$3;,
        Lcom/android/server/policy/GlobalActions$4;,
        Lcom/android/server/policy/GlobalActions$5;,
        Lcom/android/server/policy/GlobalActions$6;,
        Lcom/android/server/policy/GlobalActions$7;,
        Lcom/android/server/policy/GlobalActions$8;,
        Lcom/android/server/policy/GlobalActions$9;,
        Lcom/android/server/policy/GlobalActions$Action;,
        Lcom/android/server/policy/GlobalActions$BugReportAction;,
        Lcom/android/server/policy/GlobalActions$ConfirmDialogReceiver;,
        Lcom/android/server/policy/GlobalActions$ExtractColor;,
        Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;,
        Lcom/android/server/policy/GlobalActions$LongPressAction;,
        Lcom/android/server/policy/GlobalActions$MyAdapter;,
        Lcom/android/server/policy/GlobalActions$PowerAction;,
        Lcom/android/server/policy/GlobalActions$RebootAction;,
        Lcom/android/server/policy/GlobalActions$SilentModeAction;,
        Lcom/android/server/policy/GlobalActions$SinglePressAction;,
        Lcom/android/server/policy/GlobalActions$ToggleAction;,
        Lcom/android/server/policy/GlobalActions$UIUpdateHandler;
    }
.end annotation


# static fields
.field public static final ACTION_BIXBY_GLOBAL_ACTIONS:Ljava/lang/String; = "com.intent.action.BIXBY_GLOBAL_ACTIONS"

.field private static final ACTION_CLEAR_COVER_STATE_CHANGE:Ljava/lang/String; = "com.samsung.cover.STATE_CHANGE"

.field private static final ACTION_KEYGUARD_STATE_UPDATE:Ljava/lang/String; = "com.samsung.keyguard.KEYGUARD_STATE_UPDATE"

.field private static final ACTION_NETWORK_MODE_CHANGED:Ljava/lang/String; = "android.intent.action.NETWORK_MODE_CHANGED"

.field public static final ACTION_SHOW_GLOBAL_ACTIONS:Ljava/lang/String; = "android.intent.action.SHOW_GLOBAL_ACTIONS"

.field private static final ACTION_STATUS_EXPAND:Ljava/lang/String; = "com.android.systemui.statusbar.EXPANDED"

.field private static final ACTION_TALKBACK_TOGGLED:Ljava/lang/String; = "com.samsung.settings.action.talkback_toggled"

.field private static final COUNTRY_CODE:Ljava/lang/String;

.field private static final DIALOG_DISMISS_DELAY:I = 0x12c

.field private static final FORCE_RESTART_TIME:I = 0x7

.field private static final GLOBALACTIONS_MSG_DELAY:I = 0x96

.field private static final GLOBAL_ACTION_KEY_AIRPLANE:Ljava/lang/String; = "airplane"

.field private static final GLOBAL_ACTION_KEY_ASSIST:Ljava/lang/String; = "assist"

.field private static final GLOBAL_ACTION_KEY_BUGREPORT:Ljava/lang/String; = "bugreport"

.field private static final GLOBAL_ACTION_KEY_DATAMODE:Ljava/lang/String; = "datamode"

.field private static final GLOBAL_ACTION_KEY_EMERGENCYMODE:Ljava/lang/String; = "emergencymode"

.field private static final GLOBAL_ACTION_KEY_LOCKDOWN:Ljava/lang/String; = "lockdown"

.field private static final GLOBAL_ACTION_KEY_POWER:Ljava/lang/String; = "power"

.field private static final GLOBAL_ACTION_KEY_RESTART:Ljava/lang/String; = "restart"

.field private static final GLOBAL_ACTION_KEY_SCREENREC:Ljava/lang/String; = "screenrec"

.field private static final GLOBAL_ACTION_KEY_SETTINGS:Ljava/lang/String; = "settings"

.field private static final GLOBAL_ACTION_KEY_SILENT:Ljava/lang/String; = "silent"

.field private static final GLOBAL_ACTION_KEY_SUBSCREEN:Ljava/lang/String; = "subscreen"

.field private static final GLOBAL_ACTION_KEY_TORCH:Ljava/lang/String; = "flashlight"

.field private static final GLOBAL_ACTION_KEY_USERS:Ljava/lang/String; = "users"

.field private static final GLOBAL_ACTION_KEY_VOICEASSIST:Ljava/lang/String; = "voiceassist"

.field private static final INSERT_LOG_TAG:Ljava/lang/String; = "com.android.service.GlobalAction"

.field private static final MESSAGE_DISMISS:I = 0x0

.field private static final MESSAGE_HIDE_CONFIRM_LANDSCAPE:I = 0x7

.field private static final MESSAGE_HIDE_CONFIRM_PORTRAIT:I = 0x6

.field private static final MESSAGE_HIDE_DECORVIEW:I = 0xc

.field private static final MESSAGE_HIDE_QUICKPANEL:I = 0x4

.field private static final MESSAGE_ONCLICK_ITEM_WITH_BIXBY:I = 0xa

.field private static final MESSAGE_ONCLICK_WITH_SECURE_POWEROFF:I = 0x9

.field private static final MESSAGE_REFRESH:I = 0x1

.field private static final MESSAGE_REFRESH_AIRPLANEMODE:I = 0x3

.field private static final MESSAGE_REFRESH_RINGER:I = 0x5

.field private static final MESSAGE_SHOW:I = 0x2

.field private static final MESSAGE_SHOW_CONFIRM_BY_ORIENTATION:I = 0x8

.field private static final SAFE_DEBUG:Z

.field private static final SALES_CODE:Ljava/lang/String;

.field private static final SCAFE:Ljava/lang/String;

.field private static final SEP_VERSION_8_1:I = 0x138e4

.field private static final SHOW_SILENT_TOGGLE:Z = true

.field private static final SUPPORT_FORCE_RESTART:Z

.field private static final SURVEY_LOG:Z

.field private static final TAG:Ljava/lang/String; = "GlobalActions"

.field private static mPasscodeEditText:Landroid/widget/EditText;

.field private static mProKioskExitAlertDialogBuilder:Landroid/app/AlertDialog$Builder;

.field private static mProKioskMenuPosition:I

.field private static mProKioskOptionShown:Z

.field private static sAccessibiltyShortcutEnabled:Z

.field private static sCurrentDensity:I

.field private static sHasVibrator:Z

.field private static sIsAirplaneConfirmDialogExist:Z

.field private static sIsClearCover:Z

.field private static sIsConfirmDlg:Z

.field private static sIsConfirming:Z

.field private static sIsConfirmingGuard:Ljava/lang/Object;

.field private static sIsCoverOpen:Z

.field private static sIsNeedWhiteTheme:Z

.field private static sIsSViewCoverClosed:Z

.field private static sIsSecondConfirming:Z

.field private static sMessageViewColorWhite:I

.field private static sResource:Landroid/content/res/Resources;

.field private static sSCoverRequestStatus:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static sSilentModeView:Landroid/view/View;

.field private static sStatusViewColorWhite:I

.field private static sSupportBlackWhiteTheme:Z


# instance fields
.field private final BLUR_DIM_AMOUNT:F

.field private final CONFIRM_OPACITY:I

.field private final DEFAULT_OPACITY:I

.field private final DO_NOT_MOVE:I

.field private final FORCE_RESTART_MAX_FONT_SCALE:F

.field private final INTERVAL_SCOVER_TRANSITION:I

.field private final SUPPORT_BIKEMODE_ACTION:Z

.field private final SUPPORT_DATAMODE_ACTION:Z

.field private final SUPPORT_SAFEMODE_ACTION:Z

.field private final bgTouchListener:Landroid/view/View$OnTouchListener;

.field private mAdapter:Lcom/android/server/policy/GlobalActions$MyAdapter;

.field private mAirplaneModeAction:Lcom/android/server/policy/GlobalActions$ToggleAction;

.field mAirplaneModeCancelClickListener:Landroid/content/DialogInterface$OnClickListener;

.field mAirplaneModeClickListener:Landroid/content/DialogInterface$OnClickListener;

.field private mAirplaneModeObserver:Landroid/database/ContentObserver;

.field private mAirplaneMsg:Landroid/widget/TextView;

.field private mAirplaneState:Lcom/android/server/policy/GlobalActions$ToggleAction$State;

.field private final mAudioManager:Landroid/media/AudioManager;

.field private mBikeModeAction:Lcom/android/server/policy/GlobalActions$ToggleAction;

.field private mBikeModeDialog:Landroid/app/AlertDialog;

.field private mBikeModeObserver:Landroid/database/ContentObserver;

.field private mBixbyReceiver:Landroid/content/BroadcastReceiver;

.field private mBottomViewSingleCancelItemWidth:I

.field private mBottomViewSingleItemHeight:I

.field private mBottomViewSingleItemWidth:I

.field private mBottomlayout:Landroid/widget/LinearLayout;

.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mBugReport:Landroid/widget/Button;

.field private mCancelButton:Landroid/widget/Button;

.field private mColorHSV:[F

.field private mConfirmDialog:Landroid/app/AlertDialog;

.field private mConfirmDialogReceiver:Lcom/android/server/policy/GlobalActions$ConfirmDialogReceiver;

.field private mConfirmPowerOffIconResId:I

.field private mConfirmRestartIconResId:I

.field private mConfirmSViewCoverDialog:Lcom/android/server/policy/globalactions/GlobalActionsSViewCoverDialog;

.field private mConnectivityManager:Landroid/net/ConnectivityManager;

.field private final mContext:Landroid/content/Context;

.field private mCoverManager:Lcom/samsung/android/cover/CoverManager;

.field private mCoverState:Lcom/samsung/android/cover/CoverState;

.field mCoverStateListener:Lcom/samsung/android/cover/CoverManager$StateListener;

.field private mCurrentBG:Landroid/graphics/Bitmap;

.field private mCurrentPositionXLand:F

.field private mCurrentPositionY:F

.field private mCurrentPositionYLand:F

.field private mDataModeAction:Lcom/android/server/policy/GlobalActions$ToggleAction;

.field mDataModeClickListener:Landroid/content/DialogInterface$OnClickListener;

.field private mDataNetworkState:Lcom/android/server/policy/GlobalActions$ToggleAction$State;

.field private mDescriptionlayout:Landroid/widget/LinearLayout;

.field private mDesktopModeEventListener:Lcom/samsung/android/desktopmode/SemDesktopModeManager$EventListener;

.field private mDesktopModeManager:Lcom/samsung/android/desktopmode/SemDesktopModeManager;

.field private mDeviceProvisioned:Z

.field private mDialog:Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;

.field private mDisplayConfirm:Z

.field private mDisplayheight:I

.field private mDisplaywidth:I

.field private mDontShowCheckbox:Landroid/widget/CheckBox;

.field private final mDreamManager:Landroid/service/dreams/IDreamManager;

.field private mEmergencyAction:Lcom/android/server/policy/GlobalActions$ToggleAction;

.field private mEmergencyIconResId:I

.field private mEmergencyState:Lcom/android/server/policy/GlobalActions$ToggleAction$State;

.field private mFlashlight:Lcom/android/server/policy/GlobalActions$SinglePressAction;

.field private mForceRestartlayout:Landroid/widget/LinearLayout;

.field private mGlobalActionsFrameLayout:Lcom/android/server/policy/globalactions/GlobalActionsFrameLayout;

.field private mHandler:Landroid/os/Handler;

.field private mHasTelephony:Z

.field private mHorizontalScrollView:Landroid/widget/HorizontalScrollView;

.field private mHotReboot:Lcom/android/server/policy/GlobalActions$SinglePressAction;

.field private mIsBugReportEnable:Z

.field private mIsConfirmPoweroffonClearCover:Z

.field private mIsDisableConfirm:Z

.field private mIsFirstCreated:Z

.field private mIsInitWidthHeight:Z

.field private mIsItemLongpressed:Z

.field private mIsSafeModeEnabled:Z

.field private mIsScreenOFF:Z

.field private mIsSecureKeyguard:Z

.field private mIsSelectedItemTagForBixby:I

.field private mIsSelectedItemTagForSecure:I

.field private mIsSetAirplaneOnMessageCHINA:Z

.field private mIsSetAirplaneOnMessageVZW:Z

.field private mIsShopDemo:Z

.field private mIsTablet:Z

.field private mIsVZWOperatorAirplaneModeONReasonUSB3:Z

.field private mIsWaitingForEcmExit:Z

.field private mItemDivider:I

.field private mItemDividerLand:I

.field private mItemHeight:I

.field private mItemLandscapeDivider:I

.field private mItemMaxWidth:I

.field private mItemMaxWidthForClearCoverClosed:I

.field private mItemMaxWidthForSViewCoverClosed:I

.field private mItemMaxWidthLand:I

.field private mItemPortraitDivider:I

.field private mItemPortraitDividerOverFour:I

.field private mItemPortraitDividerSViewCover:I

.field private mItemWidth:I

.field private mItemWidthLand:I

.field private mItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/policy/GlobalActions$Action;",
            ">;"
        }
    .end annotation
.end field

.field private mKeyguardManager:Landroid/app/KeyguardManager;

.field private mKeyguardShowing:Z

.field private mKnoxCustomSystemManager:Lcom/samsung/android/knox/custom/SystemManager;

.field private mLandscapeLinearLayout:Landroid/widget/LinearLayout;

.field private mLayout:Landroid/widget/LinearLayout;

.field private mLinearLayout:Landroid/widget/LinearLayout;

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mMSimPhoneStateListener:[Landroid/telephony/PhoneStateListener;

.field private mMSimServiceState:[I

.field private mMessageViewPaddingBottom:I

.field private mMessageViewPaddingTop:I

.field private mPackageManager:Landroid/content/pm/PackageManager;

.field private mPhoneCount:I

.field private mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field private mPowerManager:Landroid/os/PowerManager;

.field private mPowerOffIconResId:I

.field private mProKioskAction:Lcom/android/server/policy/GlobalActions$ToggleAction;

.field private mProKioskManager:Lcom/samsung/android/knox/custom/ProKioskManager;

.field private mRebootRecovery:Lcom/android/server/policy/GlobalActions$SinglePressAction;

.field private mRestartAction:Lcom/android/server/policy/GlobalActions$SinglePressAction;

.field private mRestartIconResId:I

.field private mRingerModeReceiver:Landroid/content/BroadcastReceiver;

.field private mSContextManager:Landroid/hardware/scontext/SContextManager;

.field private mSafeModeIconResId:I

.field mScreenRec:Lcom/android/server/policy/GlobalActions$SinglePressAction;

.field private mScreenshot:Lcom/android/server/policy/GlobalActions$SinglePressAction;

.field private mScrollview:Landroid/widget/ScrollView;

.field private mSecureLockReceiver:Landroid/content/BroadcastReceiver;

.field private mSelectedItemNumbyBixby:I

.field private mSelectedItemView:Landroid/view/View;

.field private mSemEmergencyManager:Lcom/samsung/android/emergencymode/SemEmergencyManager;

.field private mShowNavigationBar:Z

.field private mShowOnAirplaneConfirm:Z

.field private final mShowSilentToggle:Z

.field private mSilentModeAction:Lcom/android/server/policy/GlobalActions$SilentModeAction;

.field private mSubScreenAction:Lcom/android/server/policy/GlobalActions$ToggleAction;

.field private mSubScreenState:Lcom/android/server/policy/GlobalActions$ToggleAction$State;

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private mTrueStringArray:[Ljava/lang/String;

.field private mUsbManager:Landroid/hardware/usb/UsbManager;

.field private mWindow:Landroid/view/Window;

.field private final mWindowManagerFuncs:Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

.field private sBugReportStatusViewColorWhite:I

.field private final scrollViewTouchListener:Landroid/view/View$OnTouchListener;


# direct methods
.method static synthetic -get0()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/server/policy/GlobalActions;->COUNTRY_CODE:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get1()Z
    .locals 1

    sget-boolean v0, Lcom/android/server/policy/GlobalActions;->SAFE_DEBUG:Z

    return v0
.end method

.method static synthetic -get10(Lcom/android/server/policy/GlobalActions;)Landroid/app/AlertDialog;
    .locals 1

    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mBikeModeDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic -get11(Lcom/android/server/policy/GlobalActions;)Landroid/widget/LinearLayout;
    .locals 1

    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mBottomlayout:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic -get12(Lcom/android/server/policy/GlobalActions;)Landroid/net/ConnectivityManager;
    .locals 1

    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mConnectivityManager:Landroid/net/ConnectivityManager;

    return-object v0
.end method

.method static synthetic -get13(Lcom/android/server/policy/GlobalActions;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get14(Lcom/android/server/policy/GlobalActions;)Lcom/android/server/policy/GlobalActions$ToggleAction;
    .locals 1

    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mDataModeAction:Lcom/android/server/policy/GlobalActions$ToggleAction;

    return-object v0
.end method

.method static synthetic -get15(Lcom/android/server/policy/GlobalActions;)Lcom/android/server/policy/GlobalActions$ToggleAction$State;
    .locals 1

    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mDataNetworkState:Lcom/android/server/policy/GlobalActions$ToggleAction$State;

    return-object v0
.end method

.method static synthetic -get16(Lcom/android/server/policy/GlobalActions;)Landroid/widget/LinearLayout;
    .locals 1

    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mDescriptionlayout:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic -get17(Lcom/android/server/policy/GlobalActions;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/policy/GlobalActions;->mDeviceProvisioned:Z

    return v0
.end method

.method static synthetic -get18(Lcom/android/server/policy/GlobalActions;)Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;
    .locals 1

    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mDialog:Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;

    return-object v0
.end method

.method static synthetic -get19(Lcom/android/server/policy/GlobalActions;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/policy/GlobalActions;->mDisplayConfirm:Z

    return v0
.end method

.method static synthetic -get2()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/server/policy/GlobalActions;->SALES_CODE:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get20(Lcom/android/server/policy/GlobalActions;)Lcom/android/server/policy/GlobalActions$ToggleAction;
    .locals 1

    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mEmergencyAction:Lcom/android/server/policy/GlobalActions$ToggleAction;

    return-object v0
.end method

.method static synthetic -get21(Lcom/android/server/policy/GlobalActions;)I
    .locals 1

    iget v0, p0, Lcom/android/server/policy/GlobalActions;->mEmergencyIconResId:I

    return v0
.end method

.method static synthetic -get22(Lcom/android/server/policy/GlobalActions;)Lcom/android/server/policy/GlobalActions$ToggleAction$State;
    .locals 1

    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mEmergencyState:Lcom/android/server/policy/GlobalActions$ToggleAction$State;

    return-object v0
.end method

.method static synthetic -get23(Lcom/android/server/policy/GlobalActions;)Landroid/widget/LinearLayout;
    .locals 1

    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mForceRestartlayout:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic -get24(Lcom/android/server/policy/GlobalActions;)Lcom/android/server/policy/globalactions/GlobalActionsFrameLayout;
    .locals 1

    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mGlobalActionsFrameLayout:Lcom/android/server/policy/globalactions/GlobalActionsFrameLayout;

    return-object v0
.end method

.method static synthetic -get25(Lcom/android/server/policy/GlobalActions;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -get26(Lcom/android/server/policy/GlobalActions;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/policy/GlobalActions;->mHasTelephony:Z

    return v0
.end method

.method static synthetic -get27(Lcom/android/server/policy/GlobalActions;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/policy/GlobalActions;->mIsConfirmPoweroffonClearCover:Z

    return v0
.end method

.method static synthetic -get28(Lcom/android/server/policy/GlobalActions;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/policy/GlobalActions;->mIsItemLongpressed:Z

    return v0
.end method

.method static synthetic -get29(Lcom/android/server/policy/GlobalActions;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/policy/GlobalActions;->mIsSafeModeEnabled:Z

    return v0
.end method

.method static synthetic -get3()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/server/policy/GlobalActions;->SCAFE:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get30(Lcom/android/server/policy/GlobalActions;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/policy/GlobalActions;->mIsScreenOFF:Z

    return v0
.end method

.method static synthetic -get31(Lcom/android/server/policy/GlobalActions;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/policy/GlobalActions;->mIsSecureKeyguard:Z

    return v0
.end method

.method static synthetic -get32(Lcom/android/server/policy/GlobalActions;)I
    .locals 1

    iget v0, p0, Lcom/android/server/policy/GlobalActions;->mIsSelectedItemTagForBixby:I

    return v0
.end method

.method static synthetic -get33(Lcom/android/server/policy/GlobalActions;)I
    .locals 1

    iget v0, p0, Lcom/android/server/policy/GlobalActions;->mIsSelectedItemTagForSecure:I

    return v0
.end method

.method static synthetic -get34(Lcom/android/server/policy/GlobalActions;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/policy/GlobalActions;->mIsShopDemo:Z

    return v0
.end method

.method static synthetic -get35(Lcom/android/server/policy/GlobalActions;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/policy/GlobalActions;->mIsVZWOperatorAirplaneModeONReasonUSB3:Z

    return v0
.end method

.method static synthetic -get36(Lcom/android/server/policy/GlobalActions;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/policy/GlobalActions;->mIsWaitingForEcmExit:Z

    return v0
.end method

.method static synthetic -get37(Lcom/android/server/policy/GlobalActions;)I
    .locals 1

    iget v0, p0, Lcom/android/server/policy/GlobalActions;->mItemHeight:I

    return v0
.end method

.method static synthetic -get38(Lcom/android/server/policy/GlobalActions;)I
    .locals 1

    iget v0, p0, Lcom/android/server/policy/GlobalActions;->mItemWidth:I

    return v0
.end method

.method static synthetic -get39(Lcom/android/server/policy/GlobalActions;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mItems:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/server/policy/GlobalActions;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/policy/GlobalActions;->SUPPORT_DATAMODE_ACTION:Z

    return v0
.end method

.method static synthetic -get40(Lcom/android/server/policy/GlobalActions;)Landroid/app/KeyguardManager;
    .locals 1

    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mKeyguardManager:Landroid/app/KeyguardManager;

    return-object v0
.end method

.method static synthetic -get41(Lcom/android/server/policy/GlobalActions;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/policy/GlobalActions;->mKeyguardShowing:Z

    return v0
.end method

.method static synthetic -get42(Lcom/android/server/policy/GlobalActions;)Landroid/widget/LinearLayout;
    .locals 1

    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mLandscapeLinearLayout:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic -get43(Lcom/android/server/policy/GlobalActions;)Landroid/widget/LinearLayout;
    .locals 1

    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mLinearLayout:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic -get44(Lcom/android/server/policy/GlobalActions;)[I
    .locals 1

    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mMSimServiceState:[I

    return-object v0
.end method

.method static synthetic -get45()Landroid/widget/EditText;
    .locals 1

    sget-object v0, Lcom/android/server/policy/GlobalActions;->mPasscodeEditText:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic -get46(Lcom/android/server/policy/GlobalActions;)I
    .locals 1

    iget v0, p0, Lcom/android/server/policy/GlobalActions;->mPhoneCount:I

    return v0
.end method

.method static synthetic -get47(Lcom/android/server/policy/GlobalActions;)Landroid/os/PowerManager;
    .locals 1

    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mPowerManager:Landroid/os/PowerManager;

    return-object v0
.end method

.method static synthetic -get48(Lcom/android/server/policy/GlobalActions;)I
    .locals 1

    iget v0, p0, Lcom/android/server/policy/GlobalActions;->mPowerOffIconResId:I

    return v0
.end method

.method static synthetic -get49(Lcom/android/server/policy/GlobalActions;)Lcom/android/server/policy/GlobalActions$ToggleAction;
    .locals 1

    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mProKioskAction:Lcom/android/server/policy/GlobalActions$ToggleAction;

    return-object v0
.end method

.method static synthetic -get5(Lcom/android/server/policy/GlobalActions;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/policy/GlobalActions;->SUPPORT_SAFEMODE_ACTION:Z

    return v0
.end method

.method static synthetic -get50()Landroid/app/AlertDialog$Builder;
    .locals 1

    sget-object v0, Lcom/android/server/policy/GlobalActions;->mProKioskExitAlertDialogBuilder:Landroid/app/AlertDialog$Builder;

    return-object v0
.end method

.method static synthetic -get51(Lcom/android/server/policy/GlobalActions;)Lcom/samsung/android/knox/custom/ProKioskManager;
    .locals 1

    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mProKioskManager:Lcom/samsung/android/knox/custom/ProKioskManager;

    return-object v0
.end method

.method static synthetic -get52()I
    .locals 1

    sget v0, Lcom/android/server/policy/GlobalActions;->mProKioskMenuPosition:I

    return v0
.end method

.method static synthetic -get53()Z
    .locals 1

    sget-boolean v0, Lcom/android/server/policy/GlobalActions;->mProKioskOptionShown:Z

    return v0
.end method

.method static synthetic -get54(Lcom/android/server/policy/GlobalActions;)I
    .locals 1

    iget v0, p0, Lcom/android/server/policy/GlobalActions;->mRestartIconResId:I

    return v0
.end method

.method static synthetic -get55(Lcom/android/server/policy/GlobalActions;)Lcom/samsung/android/emergencymode/SemEmergencyManager;
    .locals 1

    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mSemEmergencyManager:Lcom/samsung/android/emergencymode/SemEmergencyManager;

    return-object v0
.end method

.method static synthetic -get56(Lcom/android/server/policy/GlobalActions;)Lcom/android/server/policy/GlobalActions$SilentModeAction;
    .locals 1

    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mSilentModeAction:Lcom/android/server/policy/GlobalActions$SilentModeAction;

    return-object v0
.end method

.method static synthetic -get57(Lcom/android/server/policy/GlobalActions;)Landroid/telephony/TelephonyManager;
    .locals 1

    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    return-object v0
.end method

.method static synthetic -get58(Lcom/android/server/policy/GlobalActions;)[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mTrueStringArray:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get59(Lcom/android/server/policy/GlobalActions;)Landroid/hardware/usb/UsbManager;
    .locals 1

    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mUsbManager:Landroid/hardware/usb/UsbManager;

    return-object v0
.end method

.method static synthetic -get6(Lcom/android/server/policy/GlobalActions;)Lcom/android/server/policy/GlobalActions$MyAdapter;
    .locals 1

    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mAdapter:Lcom/android/server/policy/GlobalActions$MyAdapter;

    return-object v0
.end method

.method static synthetic -get60(Lcom/android/server/policy/GlobalActions;)Landroid/view/WindowManagerPolicy$WindowManagerFuncs;
    .locals 1

    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mWindowManagerFuncs:Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    return-object v0
.end method

.method static synthetic -get61()Z
    .locals 1

    sget-boolean v0, Lcom/android/server/policy/GlobalActions;->sAccessibiltyShortcutEnabled:Z

    return v0
.end method

.method static synthetic -get62()I
    .locals 1

    sget v0, Lcom/android/server/policy/GlobalActions;->sCurrentDensity:I

    return v0
.end method

.method static synthetic -get63()Z
    .locals 1

    sget-boolean v0, Lcom/android/server/policy/GlobalActions;->sHasVibrator:Z

    return v0
.end method

.method static synthetic -get64()Z
    .locals 1

    sget-boolean v0, Lcom/android/server/policy/GlobalActions;->sIsClearCover:Z

    return v0
.end method

.method static synthetic -get65()Z
    .locals 1

    sget-boolean v0, Lcom/android/server/policy/GlobalActions;->sIsConfirmDlg:Z

    return v0
.end method

.method static synthetic -get66()Ljava/lang/Object;
    .locals 1

    sget-object v0, Lcom/android/server/policy/GlobalActions;->sIsConfirmingGuard:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic -get67()Z
    .locals 1

    sget-boolean v0, Lcom/android/server/policy/GlobalActions;->sIsCoverOpen:Z

    return v0
.end method

.method static synthetic -get68()Z
    .locals 1

    sget-boolean v0, Lcom/android/server/policy/GlobalActions;->sIsNeedWhiteTheme:Z

    return v0
.end method

.method static synthetic -get69()Z
    .locals 1

    sget-boolean v0, Lcom/android/server/policy/GlobalActions;->sIsSViewCoverClosed:Z

    return v0
.end method

.method static synthetic -get7(Lcom/android/server/policy/GlobalActions;)Lcom/android/server/policy/GlobalActions$ToggleAction;
    .locals 1

    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mAirplaneModeAction:Lcom/android/server/policy/GlobalActions$ToggleAction;

    return-object v0
.end method

.method static synthetic -get70()Z
    .locals 1

    sget-boolean v0, Lcom/android/server/policy/GlobalActions;->sIsSecondConfirming:Z

    return v0
.end method

.method static synthetic -get71()I
    .locals 1

    sget v0, Lcom/android/server/policy/GlobalActions;->sMessageViewColorWhite:I

    return v0
.end method

.method static synthetic -get72()Landroid/content/res/Resources;
    .locals 1

    sget-object v0, Lcom/android/server/policy/GlobalActions;->sResource:Landroid/content/res/Resources;

    return-object v0
.end method

.method static synthetic -get73()Landroid/view/View;
    .locals 1

    sget-object v0, Lcom/android/server/policy/GlobalActions;->sSilentModeView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic -get74()I
    .locals 1

    sget v0, Lcom/android/server/policy/GlobalActions;->sStatusViewColorWhite:I

    return v0
.end method

.method static synthetic -get75()Z
    .locals 1

    sget-boolean v0, Lcom/android/server/policy/GlobalActions;->sSupportBlackWhiteTheme:Z

    return v0
.end method

.method static synthetic -get8(Lcom/android/server/policy/GlobalActions;)Lcom/android/server/policy/GlobalActions$ToggleAction$State;
    .locals 1

    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mAirplaneState:Lcom/android/server/policy/GlobalActions$ToggleAction$State;

    return-object v0
.end method

.method static synthetic -get9(Lcom/android/server/policy/GlobalActions;)Lcom/android/server/policy/GlobalActions$ToggleAction;
    .locals 1

    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mBikeModeAction:Lcom/android/server/policy/GlobalActions$ToggleAction;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/server/policy/GlobalActions;Lcom/android/server/policy/GlobalActions$ToggleAction$State;)Lcom/android/server/policy/GlobalActions$ToggleAction$State;
    .locals 0

    iput-object p1, p0, Lcom/android/server/policy/GlobalActions;->mAirplaneState:Lcom/android/server/policy/GlobalActions$ToggleAction$State;

    return-object p1
.end method

.method static synthetic -set1(Lcom/android/server/policy/GlobalActions;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0

    iput-object p1, p0, Lcom/android/server/policy/GlobalActions;->mBikeModeDialog:Landroid/app/AlertDialog;

    return-object p1
.end method

.method static synthetic -set10(Lcom/android/server/policy/GlobalActions;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/policy/GlobalActions;->mIsSetAirplaneOnMessageVZW:Z

    return p1
.end method

.method static synthetic -set11(Lcom/android/server/policy/GlobalActions;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/policy/GlobalActions;->mIsVZWOperatorAirplaneModeONReasonUSB3:Z

    return p1
.end method

.method static synthetic -set12(Lcom/android/server/policy/GlobalActions;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/policy/GlobalActions;->mIsWaitingForEcmExit:Z

    return p1
.end method

.method static synthetic -set13(Z)Z
    .locals 0

    sput-boolean p0, Lcom/android/server/policy/GlobalActions;->mProKioskOptionShown:Z

    return p0
.end method

.method static synthetic -set14(Lcom/android/server/policy/GlobalActions;Lcom/android/server/policy/GlobalActions$ToggleAction$State;)Lcom/android/server/policy/GlobalActions$ToggleAction$State;
    .locals 0

    iput-object p1, p0, Lcom/android/server/policy/GlobalActions;->mSubScreenState:Lcom/android/server/policy/GlobalActions$ToggleAction$State;

    return-object p1
.end method

.method static synthetic -set15(Lcom/android/server/policy/GlobalActions;Landroid/hardware/usb/UsbManager;)Landroid/hardware/usb/UsbManager;
    .locals 0

    iput-object p1, p0, Lcom/android/server/policy/GlobalActions;->mUsbManager:Landroid/hardware/usb/UsbManager;

    return-object p1
.end method

.method static synthetic -set16(Z)Z
    .locals 0

    sput-boolean p0, Lcom/android/server/policy/GlobalActions;->sAccessibiltyShortcutEnabled:Z

    return p0
.end method

.method static synthetic -set17(Z)Z
    .locals 0

    sput-boolean p0, Lcom/android/server/policy/GlobalActions;->sIsAirplaneConfirmDialogExist:Z

    return p0
.end method

.method static synthetic -set18(Z)Z
    .locals 0

    sput-boolean p0, Lcom/android/server/policy/GlobalActions;->sIsConfirmDlg:Z

    return p0
.end method

.method static synthetic -set19(Z)Z
    .locals 0

    sput-boolean p0, Lcom/android/server/policy/GlobalActions;->sIsConfirming:Z

    return p0
.end method

.method static synthetic -set2(Lcom/android/server/policy/GlobalActions;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0

    iput-object p1, p0, Lcom/android/server/policy/GlobalActions;->mConfirmDialog:Landroid/app/AlertDialog;

    return-object p1
.end method

.method static synthetic -set20(Z)Z
    .locals 0

    sput-boolean p0, Lcom/android/server/policy/GlobalActions;->sIsSecondConfirming:Z

    return p0
.end method

.method static synthetic -set3(Lcom/android/server/policy/GlobalActions;Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;)Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;
    .locals 0

    iput-object p1, p0, Lcom/android/server/policy/GlobalActions;->mDialog:Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;

    return-object p1
.end method

.method static synthetic -set4(Lcom/android/server/policy/GlobalActions;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/policy/GlobalActions;->mIsConfirmPoweroffonClearCover:Z

    return p1
.end method

.method static synthetic -set5(Lcom/android/server/policy/GlobalActions;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/policy/GlobalActions;->mIsItemLongpressed:Z

    return p1
.end method

.method static synthetic -set6(Lcom/android/server/policy/GlobalActions;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/policy/GlobalActions;->mIsSafeModeEnabled:Z

    return p1
.end method

.method static synthetic -set7(Lcom/android/server/policy/GlobalActions;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/policy/GlobalActions;->mIsScreenOFF:Z

    return p1
.end method

.method static synthetic -set8(Lcom/android/server/policy/GlobalActions;I)I
    .locals 0

    iput p1, p0, Lcom/android/server/policy/GlobalActions;->mIsSelectedItemTagForSecure:I

    return p1
.end method

.method static synthetic -set9(Lcom/android/server/policy/GlobalActions;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/policy/GlobalActions;->mIsSetAirplaneOnMessageCHINA:Z

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/server/policy/GlobalActions;Z)Landroid/view/ViewGroup;
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/server/policy/GlobalActions;->findTargetView(Z)Landroid/view/ViewGroup;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Lcom/android/server/policy/GlobalActions;Lcom/android/server/policy/GlobalActions$Action;IZ)Landroid/view/View;
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/policy/GlobalActions;->makeActionsItemView(Lcom/android/server/policy/GlobalActions$Action;IZ)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap10(Lcom/android/server/policy/GlobalActions;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/server/policy/GlobalActions;->isSimReady()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap11(Lcom/android/server/policy/GlobalActions;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/server/policy/GlobalActions;->isTSafeLock()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap12(Lcom/android/server/policy/GlobalActions;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/android/server/policy/GlobalActions;->isTouchInside(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap13(Lcom/android/server/policy/GlobalActions;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/server/policy/GlobalActions;->isUSA()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap14(Lcom/android/server/policy/GlobalActions;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/server/policy/GlobalActions;->isVoiceCapable()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap15(Lcom/android/server/policy/GlobalActions;I)I
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/server/policy/GlobalActions;->getMarginStartAtCenter(I)I

    move-result v0

    return v0
.end method

.method static synthetic -wrap16(Lcom/android/server/policy/GlobalActions;I)I
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/server/policy/GlobalActions;->getMarginTopAtCenter(I)I

    move-result v0

    return v0
.end method

.method static synthetic -wrap17(Lcom/android/server/policy/GlobalActions;I)I
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/server/policy/GlobalActions;->getPhoneId(I)I

    move-result v0

    return v0
.end method

.method static synthetic -wrap18(Lcom/android/server/policy/GlobalActions;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/policy/GlobalActions;->isEDM(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap19(Lcom/android/server/policy/GlobalActions;Lcom/android/server/policy/GlobalActions$Action;Landroid/view/View;Z)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/policy/GlobalActions;->actionClicked(Lcom/android/server/policy/GlobalActions$Action;Landroid/view/View;Z)V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/server/policy/GlobalActions;IZZ)Z
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/policy/GlobalActions;->bottomViewOnTouch(IZZ)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap20(Lcom/android/server/policy/GlobalActions;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/policy/GlobalActions;->airplaneModeClickAction(Z)V

    return-void
.end method

.method static synthetic -wrap21(Lcom/android/server/policy/GlobalActions;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/policy/GlobalActions;->changeAirplaneModeSystemSetting(Z)V

    return-void
.end method

.method static synthetic -wrap22(Lcom/android/server/policy/GlobalActions;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/policy/GlobalActions;->changeConfirmDialogByOrientation(Z)V

    return-void
.end method

.method static synthetic -wrap23(Lcom/android/server/policy/GlobalActions;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/policy/GlobalActions;->clearSCoverRequestStatus()V

    return-void
.end method

.method static synthetic -wrap24(Lcom/android/server/policy/GlobalActions;Lcom/android/server/policy/GlobalActions$ToggleAction;III)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/policy/GlobalActions;->confirmDialog(Lcom/android/server/policy/GlobalActions$ToggleAction;III)V

    return-void
.end method

.method static synthetic -wrap25(Lcom/android/server/policy/GlobalActions;Landroid/view/View;Lcom/android/server/policy/GlobalActions$Action;Z)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/policy/GlobalActions;->confirmeAction(Landroid/view/View;Lcom/android/server/policy/GlobalActions$Action;Z)V

    return-void
.end method

.method static synthetic -wrap26(Lcom/android/server/policy/GlobalActions;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/policy/GlobalActions;->dismissDialog()V

    return-void
.end method

.method static synthetic -wrap27(Lcom/android/server/policy/GlobalActions;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/policy/GlobalActions;->doActionByBixby(I)V

    return-void
.end method

.method static synthetic -wrap28(Lcom/android/server/policy/GlobalActions;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/policy/GlobalActions;->handleShow()V

    return-void
.end method

.method static synthetic -wrap29(Lcom/android/server/policy/GlobalActions;ZZ)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/server/policy/GlobalActions;->hideConfirmDialog(ZZ)V

    return-void
.end method

.method static synthetic -wrap3(Lcom/android/server/policy/GlobalActions;I)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/server/policy/GlobalActions;->isActionAvailable(I)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap30(Lcom/android/server/policy/GlobalActions;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/policy/GlobalActions;->hideDecorView()V

    return-void
.end method

.method static synthetic -wrap31(Lcom/android/server/policy/GlobalActions;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/policy/GlobalActions;->insertLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic -wrap32(Lcom/android/server/policy/GlobalActions;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/policy/GlobalActions;->onAirplaneModeChanged()V

    return-void
.end method

.method static synthetic -wrap33(Lcom/android/server/policy/GlobalActions;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/policy/GlobalActions;->onToggleDatamode()V

    return-void
.end method

.method static synthetic -wrap34(Lcom/android/server/policy/GlobalActions;Lcom/android/server/policy/GlobalActions$Action;Landroid/view/View;Z)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/policy/GlobalActions;->performItemLongClickForSafemode(Lcom/android/server/policy/GlobalActions$Action;Landroid/view/View;Z)V

    return-void
.end method

.method static synthetic -wrap35(Lcom/android/server/policy/GlobalActions;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/policy/GlobalActions;->registerPhoneStateListener(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic -wrap36(Lcom/android/server/policy/GlobalActions;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/policy/GlobalActions;->sendBendedPendingIntent()V

    return-void
.end method

.method static synthetic -wrap37(Lcom/android/server/policy/GlobalActions;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/policy/GlobalActions;->showErrorMessage(I)V

    return-void
.end method

.method static synthetic -wrap38(Lcom/android/server/policy/GlobalActions;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/server/policy/GlobalActions;->showToast(II)V

    return-void
.end method

.method static synthetic -wrap39(Lcom/android/server/policy/GlobalActions;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/policy/GlobalActions;->unregisterPhoneStateListener()V

    return-void
.end method

.method static synthetic -wrap4(Lcom/android/server/policy/GlobalActions;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/server/policy/GlobalActions;->isCHINA()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap40(Lcom/android/server/policy/GlobalActions;Lcom/android/server/policy/GlobalActions$ToggleAction;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/policy/GlobalActions;->updateActions(Lcom/android/server/policy/GlobalActions$ToggleAction;)V

    return-void
.end method

.method static synthetic -wrap41(Lcom/android/server/policy/GlobalActions;F)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/policy/GlobalActions;->updateWindowBlur(F)V

    return-void
.end method

.method static synthetic -wrap5(Lcom/android/server/policy/GlobalActions;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/server/policy/GlobalActions;->isFMMlocked()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap6(Lcom/android/server/policy/GlobalActions;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/server/policy/GlobalActions;->isInAirplanModefromSettings()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap7(Lcom/android/server/policy/GlobalActions;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/server/policy/GlobalActions;->isMultiSim()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap8(Lcom/android/server/policy/GlobalActions;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/server/policy/GlobalActions;->isPortrait()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap9(Lcom/android/server/policy/GlobalActions;I)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/server/policy/GlobalActions;->isSimCardInserted(I)Z

    move-result v0

    return v0
.end method

.method static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x1

    const/4 v4, 0x0

    const/4 v1, 0x0

    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    move-result v2

    sput-boolean v2, Lcom/android/server/policy/GlobalActions;->SAFE_DEBUG:Z

    const-string/jumbo v2, "ro.csc.sales_code"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/android/server/policy/GlobalActions;->SALES_CODE:Ljava/lang/String;

    const-string/jumbo v2, "ro.csc.country_code"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/android/server/policy/GlobalActions;->COUNTRY_CODE:Ljava/lang/String;

    const-string/jumbo v2, "ro.build.scafe"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/android/server/policy/GlobalActions;->SCAFE:Ljava/lang/String;

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v2

    const-string/jumbo v3, "SEC_FLOATING_FEATURE_CONTEXTSERVICE_ENABLE_SURVEY_MODE"

    invoke-virtual {v2, v3}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    sput-boolean v2, Lcom/android/server/policy/GlobalActions;->SURVEY_LOG:Z

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v2

    const-string/jumbo v3, "CscFeature_Framework_SupportForceRestartGlobalAction"

    invoke-virtual {v2, v3}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    sput-boolean v2, Lcom/android/server/policy/GlobalActions;->SUPPORT_FORCE_RESTART:Z

    sput v1, Lcom/android/server/policy/GlobalActions;->mProKioskMenuPosition:I

    sput-boolean v1, Lcom/android/server/policy/GlobalActions;->mProKioskOptionShown:Z

    sput-object v4, Lcom/android/server/policy/GlobalActions;->mProKioskExitAlertDialogBuilder:Landroid/app/AlertDialog$Builder;

    sput-object v4, Lcom/android/server/policy/GlobalActions;->mPasscodeEditText:Landroid/widget/EditText;

    sput-boolean v1, Lcom/android/server/policy/GlobalActions;->sIsConfirming:Z

    sput-boolean v1, Lcom/android/server/policy/GlobalActions;->sIsSecondConfirming:Z

    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    sput-object v2, Lcom/android/server/policy/GlobalActions;->sIsConfirmingGuard:Ljava/lang/Object;

    sput-boolean v1, Lcom/android/server/policy/GlobalActions;->sAccessibiltyShortcutEnabled:Z

    sput-boolean v1, Lcom/android/server/policy/GlobalActions;->sIsAirplaneConfirmDialogExist:Z

    sput-boolean v1, Lcom/android/server/policy/GlobalActions;->sIsClearCover:Z

    sput-boolean v1, Lcom/android/server/policy/GlobalActions;->sIsConfirmDlg:Z

    sput-boolean v0, Lcom/android/server/policy/GlobalActions;->sIsCoverOpen:Z

    sput-boolean v1, Lcom/android/server/policy/GlobalActions;->sIsSViewCoverClosed:Z

    sget v2, Landroid/os/Build$VERSION;->SEM_PLATFORM_INT:I

    const v3, 0x138e4

    if-lt v2, v3, :cond_0

    :goto_0
    sput-boolean v0, Lcom/android/server/policy/GlobalActions;->sSupportBlackWhiteTheme:Z

    sput-object v4, Lcom/android/server/policy/GlobalActions;->sSilentModeView:Landroid/view/View;

    sput v1, Lcom/android/server/policy/GlobalActions;->sCurrentDensity:I

    sput-boolean v1, Lcom/android/server/policy/GlobalActions;->sIsNeedWhiteTheme:Z

    sput v1, Lcom/android/server/policy/GlobalActions;->sMessageViewColorWhite:I

    sput v1, Lcom/android/server/policy/GlobalActions;->sStatusViewColorWhite:I

    sput-object v4, Lcom/android/server/policy/GlobalActions;->sResource:Landroid/content/res/Resources;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/android/server/policy/GlobalActions;->sSCoverRequestStatus:Ljava/util/HashSet;

    return-void

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/WindowManagerPolicy$WindowManagerFuncs;)V
    .locals 8

    const/4 v7, 0x0

    const/4 v4, 0x1

    const/4 v6, 0x0

    const/4 v3, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v2, 0xc8

    iput v2, p0, Lcom/android/server/policy/GlobalActions;->INTERVAL_SCOVER_TRANSITION:I

    const/16 v2, -0x3e8

    iput v2, p0, Lcom/android/server/policy/GlobalActions;->DO_NOT_MOVE:I

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v2

    const-string/jumbo v5, "CscFeature_Common_ConfigBikeMode"

    invoke-virtual {v2, v5}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v5, "bikemode"

    invoke-virtual {v2, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v2

    const-string/jumbo v5, "CscFeature_Common_ConfigBikeMode"

    invoke-virtual {v2, v5}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v5, "globalaction"

    invoke-virtual {v2, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    :goto_0
    iput-boolean v2, p0, Lcom/android/server/policy/GlobalActions;->SUPPORT_BIKEMODE_ACTION:Z

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v2

    const-string/jumbo v5, "CscFeature_Framework_SupportDataModeSwitchGlobalAction"

    invoke-virtual {v2, v5}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/server/policy/GlobalActions;->SUPPORT_DATAMODE_ACTION:Z

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v2

    const-string/jumbo v5, "CscFeature_Framework_SupportRebootWithSafemode"

    invoke-virtual {v2, v5}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/server/policy/GlobalActions;->SUPPORT_SAFEMODE_ACTION:Z

    iput-object v6, p0, Lcom/android/server/policy/GlobalActions;->mHandler:Landroid/os/Handler;

    iput-boolean v3, p0, Lcom/android/server/policy/GlobalActions;->mKeyguardShowing:Z

    iput-boolean v3, p0, Lcom/android/server/policy/GlobalActions;->mDeviceProvisioned:Z

    sget-object v2, Lcom/android/server/policy/GlobalActions$ToggleAction$State;->Off:Lcom/android/server/policy/GlobalActions$ToggleAction$State;

    iput-object v2, p0, Lcom/android/server/policy/GlobalActions;->mAirplaneState:Lcom/android/server/policy/GlobalActions$ToggleAction$State;

    sget-object v2, Lcom/android/server/policy/GlobalActions$ToggleAction$State;->Off:Lcom/android/server/policy/GlobalActions$ToggleAction$State;

    iput-object v2, p0, Lcom/android/server/policy/GlobalActions;->mDataNetworkState:Lcom/android/server/policy/GlobalActions$ToggleAction$State;

    sget-object v2, Lcom/android/server/policy/GlobalActions$ToggleAction$State;->Off:Lcom/android/server/policy/GlobalActions$ToggleAction$State;

    iput-object v2, p0, Lcom/android/server/policy/GlobalActions;->mSubScreenState:Lcom/android/server/policy/GlobalActions$ToggleAction$State;

    iput-boolean v3, p0, Lcom/android/server/policy/GlobalActions;->mIsWaitingForEcmExit:Z

    iput-object v6, p0, Lcom/android/server/policy/GlobalActions;->mProKioskManager:Lcom/samsung/android/knox/custom/ProKioskManager;

    iput-object v6, p0, Lcom/android/server/policy/GlobalActions;->mKnoxCustomSystemManager:Lcom/samsung/android/knox/custom/SystemManager;

    iput-object v6, p0, Lcom/android/server/policy/GlobalActions;->mProKioskAction:Lcom/android/server/policy/GlobalActions$ToggleAction;

    sget-object v2, Lcom/android/server/policy/GlobalActions$ToggleAction$State;->Off:Lcom/android/server/policy/GlobalActions$ToggleAction$State;

    iput-object v2, p0, Lcom/android/server/policy/GlobalActions;->mEmergencyState:Lcom/android/server/policy/GlobalActions$ToggleAction$State;

    iput-boolean v4, p0, Lcom/android/server/policy/GlobalActions;->mDisplayConfirm:Z

    iput-boolean v3, p0, Lcom/android/server/policy/GlobalActions;->mIsSafeModeEnabled:Z

    iput-boolean v3, p0, Lcom/android/server/policy/GlobalActions;->mIsBugReportEnable:Z

    iput-object v6, p0, Lcom/android/server/policy/GlobalActions;->mGlobalActionsFrameLayout:Lcom/android/server/policy/globalactions/GlobalActionsFrameLayout;

    iput-object v6, p0, Lcom/android/server/policy/GlobalActions;->mCoverManager:Lcom/samsung/android/cover/CoverManager;

    iput-object v6, p0, Lcom/android/server/policy/GlobalActions;->mKeyguardManager:Landroid/app/KeyguardManager;

    iput-object v6, p0, Lcom/android/server/policy/GlobalActions;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iput-object v6, p0, Lcom/android/server/policy/GlobalActions;->mSContextManager:Landroid/hardware/scontext/SContextManager;

    iput-object v6, p0, Lcom/android/server/policy/GlobalActions;->mDesktopModeManager:Lcom/samsung/android/desktopmode/SemDesktopModeManager;

    iput-object v6, p0, Lcom/android/server/policy/GlobalActions;->mDesktopModeEventListener:Lcom/samsung/android/desktopmode/SemDesktopModeManager$EventListener;

    iput-object v6, p0, Lcom/android/server/policy/GlobalActions;->mSemEmergencyManager:Lcom/samsung/android/emergencymode/SemEmergencyManager;

    iput-object v6, p0, Lcom/android/server/policy/GlobalActions;->mUsbManager:Landroid/hardware/usb/UsbManager;

    iput-object v6, p0, Lcom/android/server/policy/GlobalActions;->mCancelButton:Landroid/widget/Button;

    iput-object v6, p0, Lcom/android/server/policy/GlobalActions;->mBugReport:Landroid/widget/Button;

    iput-object v6, p0, Lcom/android/server/policy/GlobalActions;->mDontShowCheckbox:Landroid/widget/CheckBox;

    iput-object v6, p0, Lcom/android/server/policy/GlobalActions;->mHorizontalScrollView:Landroid/widget/HorizontalScrollView;

    iput-object v6, p0, Lcom/android/server/policy/GlobalActions;->mBottomlayout:Landroid/widget/LinearLayout;

    iput-object v6, p0, Lcom/android/server/policy/GlobalActions;->mDescriptionlayout:Landroid/widget/LinearLayout;

    iput-object v6, p0, Lcom/android/server/policy/GlobalActions;->mForceRestartlayout:Landroid/widget/LinearLayout;

    iput-object v6, p0, Lcom/android/server/policy/GlobalActions;->mLandscapeLinearLayout:Landroid/widget/LinearLayout;

    iput-object v6, p0, Lcom/android/server/policy/GlobalActions;->mLayout:Landroid/widget/LinearLayout;

    iput-object v6, p0, Lcom/android/server/policy/GlobalActions;->mLinearLayout:Landroid/widget/LinearLayout;

    iput-object v6, p0, Lcom/android/server/policy/GlobalActions;->mScrollview:Landroid/widget/ScrollView;

    iput-object v6, p0, Lcom/android/server/policy/GlobalActions;->mAirplaneMsg:Landroid/widget/TextView;

    iput-object v6, p0, Lcom/android/server/policy/GlobalActions;->mSelectedItemView:Landroid/view/View;

    new-array v2, v4, [Ljava/lang/String;

    const-string/jumbo v5, "true"

    aput-object v5, v2, v3

    iput-object v2, p0, Lcom/android/server/policy/GlobalActions;->mTrueStringArray:[Ljava/lang/String;

    iput-boolean v3, p0, Lcom/android/server/policy/GlobalActions;->mIsConfirmPoweroffonClearCover:Z

    iput-boolean v3, p0, Lcom/android/server/policy/GlobalActions;->mIsDisableConfirm:Z

    iput-boolean v4, p0, Lcom/android/server/policy/GlobalActions;->mIsFirstCreated:Z

    iput-boolean v3, p0, Lcom/android/server/policy/GlobalActions;->mIsInitWidthHeight:Z

    iput-boolean v3, p0, Lcom/android/server/policy/GlobalActions;->mIsScreenOFF:Z

    iput-boolean v3, p0, Lcom/android/server/policy/GlobalActions;->mIsSecureKeyguard:Z

    iput-boolean v3, p0, Lcom/android/server/policy/GlobalActions;->mIsSetAirplaneOnMessageVZW:Z

    iput-boolean v3, p0, Lcom/android/server/policy/GlobalActions;->mIsSetAirplaneOnMessageCHINA:Z

    iput-boolean v3, p0, Lcom/android/server/policy/GlobalActions;->mIsShopDemo:Z

    iput-boolean v3, p0, Lcom/android/server/policy/GlobalActions;->mIsVZWOperatorAirplaneModeONReasonUSB3:Z

    iput-boolean v3, p0, Lcom/android/server/policy/GlobalActions;->mIsTablet:Z

    iput-boolean v3, p0, Lcom/android/server/policy/GlobalActions;->mShowNavigationBar:Z

    iput-boolean v4, p0, Lcom/android/server/policy/GlobalActions;->mShowOnAirplaneConfirm:Z

    iput v7, p0, Lcom/android/server/policy/GlobalActions;->mCurrentPositionY:F

    iput v7, p0, Lcom/android/server/policy/GlobalActions;->mCurrentPositionXLand:F

    iput v7, p0, Lcom/android/server/policy/GlobalActions;->mCurrentPositionYLand:F

    iput v3, p0, Lcom/android/server/policy/GlobalActions;->mBottomViewSingleCancelItemWidth:I

    iput v3, p0, Lcom/android/server/policy/GlobalActions;->mBottomViewSingleItemHeight:I

    iput v3, p0, Lcom/android/server/policy/GlobalActions;->mBottomViewSingleItemWidth:I

    iput v3, p0, Lcom/android/server/policy/GlobalActions;->mDisplayheight:I

    iput v3, p0, Lcom/android/server/policy/GlobalActions;->mDisplaywidth:I

    iput v3, p0, Lcom/android/server/policy/GlobalActions;->mItemDivider:I

    iput v3, p0, Lcom/android/server/policy/GlobalActions;->mItemDividerLand:I

    iput v3, p0, Lcom/android/server/policy/GlobalActions;->mItemHeight:I

    iput v3, p0, Lcom/android/server/policy/GlobalActions;->mItemLandscapeDivider:I

    iput v3, p0, Lcom/android/server/policy/GlobalActions;->mItemMaxWidth:I

    iput v3, p0, Lcom/android/server/policy/GlobalActions;->mItemMaxWidthForClearCoverClosed:I

    iput v3, p0, Lcom/android/server/policy/GlobalActions;->mItemMaxWidthForSViewCoverClosed:I

    iput v3, p0, Lcom/android/server/policy/GlobalActions;->mItemMaxWidthLand:I

    iput v3, p0, Lcom/android/server/policy/GlobalActions;->mItemPortraitDivider:I

    iput v3, p0, Lcom/android/server/policy/GlobalActions;->mItemPortraitDividerOverFour:I

    iput v3, p0, Lcom/android/server/policy/GlobalActions;->mItemPortraitDividerSViewCover:I

    iput v3, p0, Lcom/android/server/policy/GlobalActions;->mItemWidth:I

    iput v3, p0, Lcom/android/server/policy/GlobalActions;->mItemWidthLand:I

    iput v3, p0, Lcom/android/server/policy/GlobalActions;->mMessageViewPaddingTop:I

    iput v3, p0, Lcom/android/server/policy/GlobalActions;->mMessageViewPaddingBottom:I

    iput v3, p0, Lcom/android/server/policy/GlobalActions;->mPhoneCount:I

    iput v3, p0, Lcom/android/server/policy/GlobalActions;->mPowerOffIconResId:I

    iput v3, p0, Lcom/android/server/policy/GlobalActions;->mConfirmPowerOffIconResId:I

    iput v3, p0, Lcom/android/server/policy/GlobalActions;->mRestartIconResId:I

    iput v3, p0, Lcom/android/server/policy/GlobalActions;->mConfirmRestartIconResId:I

    iput v3, p0, Lcom/android/server/policy/GlobalActions;->mEmergencyIconResId:I

    iput v3, p0, Lcom/android/server/policy/GlobalActions;->mSafeModeIconResId:I

    const/4 v2, -0x1

    iput v2, p0, Lcom/android/server/policy/GlobalActions;->mSelectedItemNumbyBixby:I

    iput v3, p0, Lcom/android/server/policy/GlobalActions;->mIsSelectedItemTagForBixby:I

    iput v3, p0, Lcom/android/server/policy/GlobalActions;->mIsSelectedItemTagForSecure:I

    iput-boolean v3, p0, Lcom/android/server/policy/GlobalActions;->mIsItemLongpressed:Z

    iput v3, p0, Lcom/android/server/policy/GlobalActions;->sBugReportStatusViewColorWhite:I

    const/4 v2, 0x3

    new-array v2, v2, [F

    iput-object v2, p0, Lcom/android/server/policy/GlobalActions;->mColorHSV:[F

    iput-object v6, p0, Lcom/android/server/policy/GlobalActions;->mCurrentBG:Landroid/graphics/Bitmap;

    iput-object v6, p0, Lcom/android/server/policy/GlobalActions;->mWindow:Landroid/view/Window;

    const v2, 0x3e99999a    # 0.3f

    iput v2, p0, Lcom/android/server/policy/GlobalActions;->BLUR_DIM_AMOUNT:F

    const/16 v2, 0x99

    iput v2, p0, Lcom/android/server/policy/GlobalActions;->DEFAULT_OPACITY:I

    const/16 v2, 0xbf

    iput v2, p0, Lcom/android/server/policy/GlobalActions;->CONFIRM_OPACITY:I

    const v2, 0x3f99999a    # 1.2f

    iput v2, p0, Lcom/android/server/policy/GlobalActions;->FORCE_RESTART_MAX_FONT_SCALE:F

    new-instance v2, Lcom/android/server/policy/GlobalActions$1;

    invoke-direct {v2, p0}, Lcom/android/server/policy/GlobalActions$1;-><init>(Lcom/android/server/policy/GlobalActions;)V

    iput-object v2, p0, Lcom/android/server/policy/GlobalActions;->mCoverStateListener:Lcom/samsung/android/cover/CoverManager$StateListener;

    new-instance v2, Lcom/android/server/policy/GlobalActions$2;

    invoke-direct {v2, p0}, Lcom/android/server/policy/GlobalActions$2;-><init>(Lcom/android/server/policy/GlobalActions;)V

    iput-object v2, p0, Lcom/android/server/policy/GlobalActions;->scrollViewTouchListener:Landroid/view/View$OnTouchListener;

    new-instance v2, Lcom/android/server/policy/GlobalActions$3;

    invoke-direct {v2, p0}, Lcom/android/server/policy/GlobalActions$3;-><init>(Lcom/android/server/policy/GlobalActions;)V

    iput-object v2, p0, Lcom/android/server/policy/GlobalActions;->bgTouchListener:Landroid/view/View$OnTouchListener;

    new-instance v2, Lcom/android/server/policy/GlobalActions$4;

    invoke-direct {v2, p0}, Lcom/android/server/policy/GlobalActions$4;-><init>(Lcom/android/server/policy/GlobalActions;)V

    iput-object v2, p0, Lcom/android/server/policy/GlobalActions;->mAirplaneModeClickListener:Landroid/content/DialogInterface$OnClickListener;

    new-instance v2, Lcom/android/server/policy/GlobalActions$5;

    invoke-direct {v2, p0}, Lcom/android/server/policy/GlobalActions$5;-><init>(Lcom/android/server/policy/GlobalActions;)V

    iput-object v2, p0, Lcom/android/server/policy/GlobalActions;->mAirplaneModeCancelClickListener:Landroid/content/DialogInterface$OnClickListener;

    new-instance v2, Lcom/android/server/policy/GlobalActions$6;

    invoke-direct {v2, p0}, Lcom/android/server/policy/GlobalActions$6;-><init>(Lcom/android/server/policy/GlobalActions;)V

    iput-object v2, p0, Lcom/android/server/policy/GlobalActions;->mDataModeClickListener:Landroid/content/DialogInterface$OnClickListener;

    new-instance v2, Lcom/android/server/policy/GlobalActions$7;

    invoke-direct {v2, p0}, Lcom/android/server/policy/GlobalActions$7;-><init>(Lcom/android/server/policy/GlobalActions;)V

    iput-object v2, p0, Lcom/android/server/policy/GlobalActions;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Lcom/android/server/policy/GlobalActions$8;

    invoke-direct {v2, p0}, Lcom/android/server/policy/GlobalActions$8;-><init>(Lcom/android/server/policy/GlobalActions;)V

    iput-object v2, p0, Lcom/android/server/policy/GlobalActions;->mSecureLockReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Lcom/android/server/policy/GlobalActions$9;

    invoke-direct {v2, p0}, Lcom/android/server/policy/GlobalActions$9;-><init>(Lcom/android/server/policy/GlobalActions;)V

    iput-object v2, p0, Lcom/android/server/policy/GlobalActions;->mBixbyReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Lcom/android/server/policy/GlobalActions$10;

    invoke-direct {v2, p0}, Lcom/android/server/policy/GlobalActions$10;-><init>(Lcom/android/server/policy/GlobalActions;)V

    iput-object v2, p0, Lcom/android/server/policy/GlobalActions;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    new-instance v2, Lcom/android/server/policy/GlobalActions$11;

    invoke-direct {v2, p0}, Lcom/android/server/policy/GlobalActions$11;-><init>(Lcom/android/server/policy/GlobalActions;)V

    iput-object v2, p0, Lcom/android/server/policy/GlobalActions;->mRingerModeReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Lcom/android/server/policy/GlobalActions$12;

    new-instance v5, Landroid/os/Handler;

    invoke-direct {v5}, Landroid/os/Handler;-><init>()V

    invoke-direct {v2, p0, v5}, Lcom/android/server/policy/GlobalActions$12;-><init>(Lcom/android/server/policy/GlobalActions;Landroid/os/Handler;)V

    iput-object v2, p0, Lcom/android/server/policy/GlobalActions;->mAirplaneModeObserver:Landroid/database/ContentObserver;

    new-instance v2, Lcom/android/server/policy/GlobalActions$13;

    new-instance v5, Landroid/os/Handler;

    invoke-direct {v5}, Landroid/os/Handler;-><init>()V

    invoke-direct {v2, p0, v5}, Lcom/android/server/policy/GlobalActions$13;-><init>(Lcom/android/server/policy/GlobalActions;Landroid/os/Handler;)V

    iput-object v2, p0, Lcom/android/server/policy/GlobalActions;->mBikeModeObserver:Landroid/database/ContentObserver;

    new-instance v2, Landroid/view/ContextThemeWrapper;

    const v5, 0x103012b

    invoke-direct {v2, p1, v5}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    iput-object v2, p0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sput-object v2, Lcom/android/server/policy/GlobalActions;->sResource:Landroid/content/res/Resources;

    iput-object p2, p0, Lcom/android/server/policy/GlobalActions;->mWindowManagerFuncs:Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    iget-object v2, p0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    const-string/jumbo v5, "audio"

    invoke-virtual {v2, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/AudioManager;

    iput-object v2, p0, Lcom/android/server/policy/GlobalActions;->mAudioManager:Landroid/media/AudioManager;

    const-string/jumbo v2, "dreams"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/service/dreams/IDreamManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/dreams/IDreamManager;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/policy/GlobalActions;->mDreamManager:Landroid/service/dreams/IDreamManager;

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v2, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v2, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v2, "android.intent.action.EMERGENCY_CALLBACK_MODE_CHANGED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v2, "com.android.systemui.statusbar.EXPANDED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v2, "com.samsung.settings.action.talkback_toggled"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v2, "com.samsung.keyguard.KEYGUARD_STATE_UPDATE"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v2, "android.intent.action.ACTION_SUBINFO_RECORD_UPDATED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/server/policy/GlobalActions;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v5, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const-string/jumbo v2, "connectivity"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/ConnectivityManager;

    iput-object v2, p0, Lcom/android/server/policy/GlobalActions;->mConnectivityManager:Landroid/net/ConnectivityManager;

    iget-object v2, p0, Lcom/android/server/policy/GlobalActions;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v2, v3}, Landroid/net/ConnectivityManager;->isNetworkSupported(I)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/server/policy/GlobalActions;->mHasTelephony:Z

    const-string/jumbo v2, "phone"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    iput-object v2, p0, Lcom/android/server/policy/GlobalActions;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v2, p0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    invoke-direct {p0, v2}, Lcom/android/server/policy/GlobalActions;->registerPhoneStateListener(Landroid/content/Context;)V

    iget-object v2, p0, Lcom/android/server/policy/GlobalActions;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v5, p0, Lcom/android/server/policy/GlobalActions;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/16 v6, 0x20

    invoke-virtual {v2, v5, v6}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    iget-object v2, p0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v5, "airplane_mode_on"

    invoke-static {v5}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/policy/GlobalActions;->mAirplaneModeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v2, v5, v4, v6}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    iget-object v2, p0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    const-string/jumbo v5, "vibrator"

    invoke-virtual {v2, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Vibrator;

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Landroid/os/Vibrator;->hasVibrator()Z

    move-result v2

    :goto_1
    sput-boolean v2, Lcom/android/server/policy/GlobalActions;->sHasVibrator:Z

    iget-object v2, p0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v5, 0x1120086

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    if-eqz v2, :cond_5

    move v2, v3

    :goto_2
    iput-boolean v2, p0, Lcom/android/server/policy/GlobalActions;->mShowSilentToggle:Z

    const-string/jumbo v2, "TMB"

    sget-object v5, Lcom/android/server/policy/GlobalActions;->SALES_CODE:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iput-boolean v3, p0, Lcom/android/server/policy/GlobalActions;->mDisplayConfirm:Z

    :cond_0
    iget-object v2, p0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/samsung/android/emergencymode/SemEmergencyManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/emergencymode/SemEmergencyManager;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/policy/GlobalActions;->mSemEmergencyManager:Lcom/samsung/android/emergencymode/SemEmergencyManager;

    iget-object v2, p0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    const-string/jumbo v5, "keyguard"

    invoke-virtual {v2, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/KeyguardManager;

    iput-object v2, p0, Lcom/android/server/policy/GlobalActions;->mKeyguardManager:Landroid/app/KeyguardManager;

    new-instance v2, Lcom/android/internal/widget/LockPatternUtils;

    iget-object v5, p0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    invoke-direct {v2, v5}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/server/policy/GlobalActions;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget-object v2, p0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/policy/GlobalActions;->mPackageManager:Landroid/content/pm/PackageManager;

    iget-object v2, p0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    const-string/jumbo v5, "power"

    invoke-virtual {v2, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/PowerManager;

    iput-object v2, p0, Lcom/android/server/policy/GlobalActions;->mPowerManager:Landroid/os/PowerManager;

    iget-object v2, p0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v5, "shopdemo"

    invoke-static {v2, v5, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v4, :cond_6

    move v2, v4

    :goto_3
    iput-boolean v2, p0, Lcom/android/server/policy/GlobalActions;->mIsShopDemo:Z

    invoke-direct {p0}, Lcom/android/server/policy/GlobalActions;->isTablet()Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/server/policy/GlobalActions;->mIsTablet:Z

    iget-object v2, p0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v5, 0x112006b

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/server/policy/GlobalActions;->mShowNavigationBar:Z

    iget-boolean v2, p0, Lcom/android/server/policy/GlobalActions;->SUPPORT_BIKEMODE_ACTION:Z

    if-eqz v2, :cond_1

    const-string/jumbo v2, "com.samsung.android.app.bikemode"

    invoke-direct {p0, v2}, Lcom/android/server/policy/GlobalActions;->isSBikeInstalled(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v5, "isBikeMode"

    invoke-static {v5}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/policy/GlobalActions;->mBikeModeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v2, v5, v3, v6}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    :cond_1
    iget-object v2, p0, Lcom/android/server/policy/GlobalActions;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string/jumbo v5, "com.sec.feature.folder_type"

    invoke-virtual {v2, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/server/policy/GlobalActions;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string/jumbo v5, "com.sec.feature.dual_lcd"

    invoke-virtual {v2, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    :cond_2
    :goto_4
    iput-boolean v3, p0, Lcom/android/server/policy/GlobalActions;->mIsDisableConfirm:Z

    invoke-direct {p0, p1}, Lcom/android/server/policy/GlobalActions;->initCoverManager(Landroid/content/Context;)V

    invoke-direct {p0}, Lcom/android/server/policy/GlobalActions;->registerBixbyReceiver()V

    invoke-static {}, Lcom/samsung/android/knox/custom/ProKioskManager;->getInstance()Lcom/samsung/android/knox/custom/ProKioskManager;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/policy/GlobalActions;->mProKioskManager:Lcom/samsung/android/knox/custom/ProKioskManager;

    invoke-static {}, Lcom/samsung/android/knox/custom/SystemManager;->getInstance()Lcom/samsung/android/knox/custom/SystemManager;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/policy/GlobalActions;->mKnoxCustomSystemManager:Lcom/samsung/android/knox/custom/SystemManager;

    return-void

    :cond_3
    move v2, v3

    goto/16 :goto_0

    :cond_4
    move v2, v3

    goto/16 :goto_1

    :cond_5
    move v2, v4

    goto/16 :goto_2

    :cond_6
    move v2, v3

    goto :goto_3

    :cond_7
    move v3, v4

    goto :goto_4
.end method

.method static synthetic access$500(Lcom/android/server/policy/GlobalActions;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$5001(Lcom/android/server/policy/GlobalActions;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/policy/GlobalActions;->toggleScreenRecord()V

    return-void
.end method

.method private actionClicked(Lcom/android/server/policy/GlobalActions$Action;Landroid/view/View;Z)V
    .locals 8

    const/4 v7, 0x1

    const v5, 0x10203dc

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/FrameLayout;

    invoke-virtual {v4}, Landroid/widget/FrameLayout;->isEnabled()Z

    move-result v5

    if-nez v5, :cond_0

    return-void

    :cond_0
    invoke-virtual {v4}, Landroid/widget/FrameLayout;->isFocusable()Z

    move-result v5

    if-nez v5, :cond_1

    return-void

    :cond_1
    const v5, 0x1020006

    invoke-virtual {v4, v5}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const v5, 0x102000b

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v5, 0x10203da

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/server/policy/GlobalActions;->isActionAvailable(I)Z

    move-result v5

    if-nez v5, :cond_2

    return-void

    :cond_2
    iput v1, p0, Lcom/android/server/policy/GlobalActions;->mIsSelectedItemTagForBixby:I

    invoke-virtual {v2}, Landroid/widget/TextView;->getHeight()I

    move-result v5

    invoke-virtual {v3}, Landroid/widget/TextView;->getHeight()I

    move-result v6

    add-int/2addr v5, v6

    invoke-direct {p0, v4, v5}, Lcom/android/server/policy/GlobalActions;->updateDescViewHeight(Landroid/view/View;I)V

    sget-boolean v5, Lcom/android/server/policy/GlobalActions;->sIsConfirmDlg:Z

    if-nez v5, :cond_3

    iget-boolean v5, p0, Lcom/android/server/policy/GlobalActions;->mIsDisableConfirm:Z

    if-eqz v5, :cond_4

    :cond_3
    invoke-direct {p0, p2, p1, v7}, Lcom/android/server/policy/GlobalActions;->confirmeAction(Landroid/view/View;Lcom/android/server/policy/GlobalActions$Action;Z)V

    :goto_0
    return-void

    :cond_4
    invoke-direct {p0, v4}, Lcom/android/server/policy/GlobalActions;->isSingleActionItem(Landroid/view/View;)Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-direct {p0, p2, v7, p3}, Lcom/android/server/policy/GlobalActions;->showConfirmDialog(Landroid/view/View;ZZ)V

    goto :goto_0
.end method

.method private addCustomDialogItems(Landroid/graphics/drawable/BitmapDrawable;Ljava/lang/String;Landroid/content/Intent;ILjava/util/ArrayList;)Z
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/drawable/BitmapDrawable;",
            "Ljava/lang/String;",
            "Landroid/content/Intent;",
            "I",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/policy/GlobalActions$Action;",
            ">;)Z"
        }
    .end annotation

    iget-object v6, p0, Lcom/android/server/policy/GlobalActions;->mItems:Ljava/util/ArrayList;

    monitor-enter v6

    :try_start_0
    iget-object v7, p0, Lcom/android/server/policy/GlobalActions;->mItems:Ljava/util/ArrayList;

    new-instance v0, Lcom/android/server/policy/GlobalActions$33;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p4

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/server/policy/GlobalActions$33;-><init>(Lcom/android/server/policy/GlobalActions;Landroid/graphics/drawable/Drawable;Ljava/lang/String;ILandroid/content/Intent;)V

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit v6

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v6

    throw v0
.end method

.method private addDialogItemsIfEnabled(ILcom/android/server/policy/GlobalActions$Action;Ljava/util/ArrayList;Z)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/android/server/policy/GlobalActions$Action;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/policy/GlobalActions$Action;",
            ">;Z)Z"
        }
    .end annotation

    if-eqz p2, :cond_1

    if-eqz p3, :cond_1

    const-string/jumbo v0, "content://com.sec.knox.provider2/KnoxCustomManagerService2"

    const-string/jumbo v1, "getSealedPowerDialogItems"

    invoke-direct {p0, v0, v1}, Lcom/android/server/policy/GlobalActions;->isIntEDM(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    and-int/2addr v0, p1

    if-ne v0, p1, :cond_1

    invoke-virtual {p3, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-eqz p4, :cond_0

    sget v0, Lcom/android/server/policy/GlobalActions;->mProKioskMenuPosition:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/android/server/policy/GlobalActions;->mProKioskMenuPosition:I

    :cond_0
    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private addUsersToMenu(Ljava/util/ArrayList;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/policy/GlobalActions$Action;",
            ">;)V"
        }
    .end annotation

    iget-object v1, p0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "user"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/os/UserManager;

    invoke-virtual {v8}, Landroid/os/UserManager;->isUserSwitcherEnabled()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-virtual {v8}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v10

    invoke-direct {p0}, Lcom/android/server/policy/GlobalActions;->getCurrentUser()Landroid/content/pm/UserInfo;

    move-result-object v6

    invoke-interface {v10}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_0
    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/UserInfo;

    invoke-virtual {v5}, Landroid/content/pm/UserInfo;->supportsSwitchToByUser()Z

    move-result v1

    if-eqz v1, :cond_0

    if-nez v6, :cond_2

    iget v1, v5, Landroid/content/pm/UserInfo;->id:I

    if-nez v1, :cond_1

    :goto_1
    const/4 v7, 0x1

    :goto_2
    iget-object v1, v5, Landroid/content/pm/UserInfo;->iconPath:Ljava/lang/String;

    if-eqz v1, :cond_3

    iget-object v1, v5, Landroid/content/pm/UserInfo;->iconPath:Ljava/lang/String;

    invoke-static {v1}, Landroid/graphics/drawable/Drawable;->createFromPath(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    :goto_3
    new-instance v0, Lcom/android/server/policy/GlobalActions$38;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, v5, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    if-eqz v1, :cond_4

    iget-object v1, v5, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    :goto_4
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-eqz v7, :cond_5

    const-string/jumbo v1, " \u2714"

    :goto_5
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const v2, 0x1080452

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/server/policy/GlobalActions$38;-><init>(Lcom/android/server/policy/GlobalActions;ILandroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;Landroid/content/pm/UserInfo;)V

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    const/4 v7, 0x0

    goto :goto_2

    :cond_2
    iget v1, v6, Landroid/content/pm/UserInfo;->id:I

    iget v2, v5, Landroid/content/pm/UserInfo;->id:I

    if-ne v1, v2, :cond_1

    goto :goto_1

    :cond_3
    const/4 v3, 0x0

    goto :goto_3

    :cond_4
    const-string/jumbo v1, "Primary"

    goto :goto_4

    :cond_5
    const-string/jumbo v1, ""

    goto :goto_5

    :cond_6
    return-void
.end method

.method private adjustBottomView()V
    .locals 11

    const/16 v8, 0x8

    const/4 v10, 0x0

    iget-boolean v6, p0, Lcom/android/server/policy/GlobalActions;->mIsBugReportEnable:Z

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/android/server/policy/GlobalActions;->mGlobalActionsFrameLayout:Lcom/android/server/policy/globalactions/GlobalActionsFrameLayout;

    const v7, 0x10203d6

    invoke-virtual {v6, v7}, Lcom/android/server/policy/globalactions/GlobalActionsFrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    iget-object v6, p0, Lcom/android/server/policy/GlobalActions;->mGlobalActionsFrameLayout:Lcom/android/server/policy/globalactions/GlobalActionsFrameLayout;

    const v7, 0x10203d5

    invoke-virtual {v6, v7}, Lcom/android/server/policy/globalactions/GlobalActionsFrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout;

    iget-object v6, p0, Lcom/android/server/policy/GlobalActions;->mGlobalActionsFrameLayout:Lcom/android/server/policy/globalactions/GlobalActionsFrameLayout;

    const v7, 0x10203d3

    invoke-virtual {v6, v7}, Lcom/android/server/policy/globalactions/GlobalActionsFrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout;

    invoke-virtual {v3, v8}, Landroid/widget/FrameLayout;->setVisibility(I)V

    invoke-virtual {v2, v8}, Landroid/widget/FrameLayout;->setVisibility(I)V

    iget-boolean v6, p0, Lcom/android/server/policy/GlobalActions;->mShowNavigationBar:Z

    if-eqz v6, :cond_1

    invoke-direct {p0}, Lcom/android/server/policy/GlobalActions;->isPortrait()Z

    move-result v6

    if-eqz v6, :cond_1

    sget-object v6, Lcom/android/server/policy/GlobalActions;->sResource:Landroid/content/res/Resources;

    const v7, 0x105001a

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    iget v6, p0, Lcom/android/server/policy/GlobalActions;->mBottomViewSingleItemHeight:I

    int-to-double v6, v6

    const-wide/high16 v8, 0x3ff8000000000000L    # 1.5

    mul-double/2addr v6, v8

    double-to-int v0, v6

    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v6, -0x1

    invoke-direct {v4, v6, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v4, v10, v10, v10, v5}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    iget-object v6, p0, Lcom/android/server/policy/GlobalActions;->mBottomlayout:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v4}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    sget-boolean v6, Lcom/android/server/policy/GlobalActions;->SUPPORT_FORCE_RESTART:Z

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/android/server/policy/GlobalActions;->mGlobalActionsFrameLayout:Lcom/android/server/policy/globalactions/GlobalActionsFrameLayout;

    const v7, 0x10203d0

    invoke-virtual {v6, v7}, Lcom/android/server/policy/globalactions/GlobalActionsFrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/LinearLayout;

    iput-object v6, p0, Lcom/android/server/policy/GlobalActions;->mForceRestartlayout:Landroid/widget/LinearLayout;

    iget-object v6, p0, Lcom/android/server/policy/GlobalActions;->mForceRestartlayout:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v10, v10, v10, v10}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    :cond_0
    :goto_0
    iget-object v6, p0, Lcom/android/server/policy/GlobalActions;->mBottomlayout:Landroid/widget/LinearLayout;

    new-instance v7, Lcom/android/server/policy/GlobalActions$43;

    invoke-direct {v7, p0}, Lcom/android/server/policy/GlobalActions$43;-><init>(Lcom/android/server/policy/GlobalActions;)V

    invoke-virtual {v6, v7}, Landroid/widget/LinearLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void

    :cond_1
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    iget v6, p0, Lcom/android/server/policy/GlobalActions;->mBottomViewSingleItemWidth:I

    iget v7, p0, Lcom/android/server/policy/GlobalActions;->mBottomViewSingleItemHeight:I

    invoke-direct {v4, v6, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v4}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method private adjustForceRestartView()V
    .locals 11

    const/4 v10, 0x1

    const/4 v9, 0x0

    sget-boolean v6, Lcom/android/server/policy/GlobalActions;->SUPPORT_FORCE_RESTART:Z

    if-eqz v6, :cond_5

    sget-boolean v6, Lcom/android/server/policy/GlobalActions;->sIsCoverOpen:Z

    if-nez v6, :cond_0

    sget-boolean v6, Lcom/android/server/policy/GlobalActions;->sIsCoverOpen:Z

    if-nez v6, :cond_5

    sget-boolean v6, Lcom/android/server/policy/GlobalActions;->sIsClearCover:Z

    if-eqz v6, :cond_5

    :cond_0
    iget-object v6, p0, Lcom/android/server/policy/GlobalActions;->mGlobalActionsFrameLayout:Lcom/android/server/policy/globalactions/GlobalActionsFrameLayout;

    const v7, 0x10203d0

    invoke-virtual {v6, v7}, Lcom/android/server/policy/globalactions/GlobalActionsFrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/LinearLayout;

    iput-object v6, p0, Lcom/android/server/policy/GlobalActions;->mForceRestartlayout:Landroid/widget/LinearLayout;

    iget-object v6, p0, Lcom/android/server/policy/GlobalActions;->mGlobalActionsFrameLayout:Lcom/android/server/policy/globalactions/GlobalActionsFrameLayout;

    const v7, 0x10203d1

    invoke-virtual {v6, v7}, Lcom/android/server/policy/globalactions/GlobalActionsFrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    sget-object v6, Lcom/android/server/policy/GlobalActions;->sResource:Landroid/content/res/Resources;

    invoke-virtual {v6}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-boolean v6, p0, Lcom/android/server/policy/GlobalActions;->mShowNavigationBar:Z

    if-eqz v6, :cond_1

    iget v6, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v7, 0x2

    if-eq v6, v7, :cond_1

    iget-object v6, p0, Lcom/android/server/policy/GlobalActions;->mForceRestartlayout:Landroid/widget/LinearLayout;

    if-eqz v6, :cond_1

    sget-object v6, Lcom/android/server/policy/GlobalActions;->sResource:Landroid/content/res/Resources;

    const v7, 0x105001a

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iget-boolean v6, p0, Lcom/android/server/policy/GlobalActions;->mIsBugReportEnable:Z

    if-nez v6, :cond_1

    iget-object v6, p0, Lcom/android/server/policy/GlobalActions;->mForceRestartlayout:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v9, v9, v9, v3}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    :cond_1
    sget-boolean v6, Lcom/android/server/policy/GlobalActions;->sIsNeedWhiteTheme:Z

    if-eqz v6, :cond_2

    if-eqz v5, :cond_2

    sget-object v6, Lcom/android/server/policy/GlobalActions;->sResource:Landroid/content/res/Resources;

    const v7, 0x106016f

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_2
    sget-object v6, Lcom/android/server/policy/GlobalActions;->sResource:Landroid/content/res/Resources;

    const v7, 0x10502e6

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v6

    sget-object v7, Lcom/android/server/policy/GlobalActions;->sResource:Landroid/content/res/Resources;

    invoke-virtual {v7}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v7

    iget v7, v7, Landroid/util/DisplayMetrics;->density:F

    div-float v4, v6, v7

    iget v1, v0, Landroid/content/res/Configuration;->fontScale:F

    const v6, 0x3f99999a    # 1.2f

    cmpl-float v6, v1, v6

    if-lez v6, :cond_3

    const v1, 0x3f99999a    # 1.2f

    :cond_3
    iget-object v6, p0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    new-array v7, v10, [Ljava/lang/Object;

    const/4 v8, 0x7

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v9

    const v8, 0x104014a

    invoke-virtual {v6, v8, v7}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    if-eqz v5, :cond_4

    mul-float v6, v1, v4

    invoke-virtual {v5, v10, v6}, Landroid/widget/TextView;->setTextSize(IF)V

    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_4
    iget-object v6, p0, Lcom/android/server/policy/GlobalActions;->mForceRestartlayout:Landroid/widget/LinearLayout;

    if-eqz v6, :cond_5

    iget-object v6, p0, Lcom/android/server/policy/GlobalActions;->mForceRestartlayout:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v9}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_5
    return-void
.end method

.method private airplaneModeClickAction(Z)V
    .locals 5

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mAirplaneModeAction:Lcom/android/server/policy/GlobalActions$ToggleAction;

    invoke-virtual {v0}, Lcom/android/server/policy/GlobalActions$ToggleAction;->onPressAction()V

    sget-boolean v0, Lcom/android/server/policy/GlobalActions;->sIsCoverOpen:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/android/server/policy/GlobalActions;->sIsSecondConfirming:Z

    if-nez v0, :cond_4

    sget-object v0, Lcom/android/server/policy/GlobalActions;->sIsConfirmingGuard:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    sput-boolean v1, Lcom/android/server/policy/GlobalActions;->sIsConfirming:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    :goto_0
    invoke-direct {p0}, Lcom/android/server/policy/GlobalActions;->clearSCoverRequestStatus()V

    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_0
    iget-boolean v0, p0, Lcom/android/server/policy/GlobalActions;->mIsVZWOperatorAirplaneModeONReasonUSB3:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mUsbManager:Landroid/hardware/usb/UsbManager;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mUsbManager:Landroid/hardware/usb/UsbManager;

    invoke-virtual {v0}, Landroid/hardware/usb/UsbManager;->isUsb30Enabled()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mUsbManager:Landroid/hardware/usb/UsbManager;

    invoke-virtual {v0}, Landroid/hardware/usb/UsbManager;->isUsb30Available()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mUsbManager:Landroid/hardware/usb/UsbManager;

    invoke-virtual {v0, v4}, Landroid/hardware/usb/UsbManager;->setUsb30Mode(Z)V

    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "airplane_mode_on_reason_usb3"

    invoke-static {v0, v1, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    sget-boolean v0, Lcom/android/server/policy/GlobalActions;->SAFE_DEBUG:Z

    if-eqz v0, :cond_1

    const-string/jumbo v0, "GlobalActions"

    const-string/jumbo v1, "USB 3.0 is disconnected."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_1
    if-eqz p1, :cond_3

    iget-boolean v0, p0, Lcom/android/server/policy/GlobalActions;->mIsSetAirplaneOnMessageVZW:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/android/server/policy/GlobalActions;->mIsSetAirplaneOnMessageCHINA:Z

    if-eqz v0, :cond_3

    :cond_2
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mDontShowCheckbox:Landroid/widget/CheckBox;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mDontShowCheckbox:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "tw_globalactions_dont_show_again"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_3
    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1

    :cond_4
    sput-boolean v4, Lcom/android/server/policy/GlobalActions;->sIsSecondConfirming:Z

    goto :goto_0

    :cond_5
    sget-boolean v0, Lcom/android/server/policy/GlobalActions;->SAFE_DEBUG:Z

    if-eqz v0, :cond_1

    const-string/jumbo v0, "GlobalActions"

    const-string/jumbo v1, "USB manager is not created hence USB 3.0 connection can not be terminated."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private awakenIfNecessary()V
    .locals 2

    iget-object v1, p0, Lcom/android/server/policy/GlobalActions;->mDreamManager:Landroid/service/dreams/IDreamManager;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/policy/GlobalActions;->mDreamManager:Landroid/service/dreams/IDreamManager;

    invoke-interface {v1}, Landroid/service/dreams/IDreamManager;->isDreaming()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/policy/GlobalActions;->mDreamManager:Landroid/service/dreams/IDreamManager;

    invoke-interface {v1}, Landroid/service/dreams/IDreamManager;->awaken()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private bottomViewOnTouch(IZZ)Z
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    if-nez p1, :cond_3

    sget-boolean v0, Lcom/android/server/policy/GlobalActions;->sAccessibiltyShortcutEnabled:Z

    if-eqz v0, :cond_0

    if-eqz p3, :cond_1

    :cond_0
    if-eqz p3, :cond_2

    invoke-direct {p0, p2, v1}, Lcom/android/server/policy/GlobalActions;->hideConfirmDialog(ZZ)V

    :goto_0
    return v2

    :cond_1
    return v2

    :cond_2
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    :cond_3
    if-ne p1, v2, :cond_4

    sget-boolean v0, Lcom/android/server/policy/GlobalActions;->sAccessibiltyShortcutEnabled:Z

    if-eqz v0, :cond_4

    if-eqz p3, :cond_5

    sput-boolean v1, Lcom/android/server/policy/GlobalActions;->sIsConfirmDlg:Z

    iput-boolean v1, p0, Lcom/android/server/policy/GlobalActions;->mIsSafeModeEnabled:Z

    :cond_4
    :goto_1
    return v1

    :cond_5
    sput-boolean v1, Lcom/android/server/policy/GlobalActions;->sAccessibiltyShortcutEnabled:Z

    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_1
.end method

.method private buildActionsBaseView(Z)V
    .locals 4

    invoke-direct {p0, p1}, Lcom/android/server/policy/GlobalActions;->findTargetView(Z)Landroid/view/ViewGroup;

    move-result-object v1

    invoke-direct {p0, p1}, Lcom/android/server/policy/GlobalActions;->findTargetScrollView(Z)Landroid/view/ViewGroup;

    move-result-object v0

    if-nez p1, :cond_0

    iget-object v2, p0, Lcom/android/server/policy/GlobalActions;->mAdapter:Lcom/android/server/policy/GlobalActions$MyAdapter;

    invoke-virtual {v2}, Lcom/android/server/policy/GlobalActions$MyAdapter;->getCount()I

    move-result v2

    const/4 v3, 0x4

    if-ge v2, v3, :cond_1

    sget-object v2, Lcom/android/server/policy/GlobalActions;->sResource:Landroid/content/res/Resources;

    const v3, 0x1050238

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/android/server/policy/GlobalActions;->mItemWidthLand:I

    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/android/server/policy/GlobalActions;->bgTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v2, p0, Lcom/android/server/policy/GlobalActions;->scrollViewTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    invoke-direct {p0, p1}, Lcom/android/server/policy/GlobalActions;->fillActionItemViews(Z)V

    return-void

    :cond_1
    sget-object v2, Lcom/android/server/policy/GlobalActions;->sResource:Landroid/content/res/Resources;

    const v3, 0x1050239

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/android/server/policy/GlobalActions;->mItemWidthLand:I

    goto :goto_0
.end method

.method private captureScreen(Landroid/content/Context;)Landroid/graphics/Bitmap;
    .locals 14

    if-nez p1, :cond_0

    const-string/jumbo v0, "GlobalActions"

    const-string/jumbo v5, "captureScreen() : mContext is NULL!!!"

    invoke-static {v0, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return-object v0

    :cond_0
    new-instance v8, Landroid/util/DisplayMetrics;

    invoke-direct {v8}, Landroid/util/DisplayMetrics;-><init>()V

    const-string/jumbo v0, "window"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v10

    invoke-virtual {v10, v8}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    iget v0, v8, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v13

    iget v0, v8, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v12

    move v1, v13

    move v2, v12

    invoke-virtual {v10}, Landroid/view/Display;->getRotation()I

    move-result v7

    packed-switch v7, :pswitch_data_0

    :goto_0
    :pswitch_0
    const/4 v11, 0x0

    const/16 v3, 0x4e20

    const v4, 0x30d40

    :try_start_0
    new-instance v0, Landroid/graphics/Rect;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-direct {v0, v5, v6, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Landroid/view/SurfaceControl;->screenshot(Landroid/graphics/Rect;IIIIZI)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v11

    :goto_1
    if-nez v11, :cond_1

    const-string/jumbo v0, "GlobalActions"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "captureScreen : Could not capture the screen! screenBitmap == null, lcdWidth="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " lcdHeight="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " rotation="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return-object v0

    :pswitch_1
    move v1, v12

    move v2, v13

    goto :goto_0

    :catch_0
    move-exception v9

    const-string/jumbo v0, "GlobalActions"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "captureScreen : failed to access screenshot API : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    :cond_1
    return-object v11

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private changeAirplaneModeSystemSetting(Z)V
    .locals 6

    iget-object v1, p0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "airplane_mode_on"

    if-eqz p1, :cond_2

    const/4 v1, 0x1

    :goto_0
    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v1

    const-string/jumbo v2, "CscFeature_IMS_EnableVoLTE"

    invoke-virtual {v1, v2}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    if-eqz p1, :cond_3

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v1, "com.sec.android.internal.ims.FLIGHT_MODE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    iget-object v1, p0, Lcom/android/server/policy/GlobalActions;->mHandler:Landroid/os/Handler;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/policy/GlobalActions;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/policy/GlobalActions$39;

    invoke-direct {v2, p0}, Lcom/android/server/policy/GlobalActions$39;-><init>(Lcom/android/server/policy/GlobalActions;)V

    const-wide/16 v4, 0x3e8

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    :goto_1
    iget-boolean v1, p0, Lcom/android/server/policy/GlobalActions;->mHasTelephony:Z

    if-nez v1, :cond_1

    if-eqz p1, :cond_4

    sget-object v1, Lcom/android/server/policy/GlobalActions$ToggleAction$State;->On:Lcom/android/server/policy/GlobalActions$ToggleAction$State;

    :goto_2
    iput-object v1, p0, Lcom/android/server/policy/GlobalActions;->mAirplaneState:Lcom/android/server/policy/GlobalActions$ToggleAction$State;

    :cond_1
    return-void

    :cond_2
    const/4 v1, 0x0

    goto :goto_0

    :cond_3
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.AIRPLANE_MODE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v1, 0x20000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string/jumbo v1, "state"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto :goto_1

    :cond_4
    sget-object v1, Lcom/android/server/policy/GlobalActions$ToggleAction$State;->Off:Lcom/android/server/policy/GlobalActions$ToggleAction$State;

    goto :goto_2
.end method

.method private changeConfirmDialogByOrientation(Z)V
    .locals 11

    const/4 v9, 0x0

    iget-object v8, p0, Lcom/android/server/policy/GlobalActions;->mDialog:Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;

    if-nez v8, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    iget-object v5, p0, Lcom/android/server/policy/GlobalActions;->mLandscapeLinearLayout:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mLinearLayout:Landroid/widget/LinearLayout;

    :goto_0
    const/4 v1, 0x0

    :goto_1
    iget-object v8, p0, Lcom/android/server/policy/GlobalActions;->mAdapter:Lcom/android/server/policy/GlobalActions$MyAdapter;

    invoke-virtual {v8}, Lcom/android/server/policy/GlobalActions$MyAdapter;->getCount()I

    move-result v8

    if-ge v1, v8, :cond_4

    invoke-virtual {v5, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    iget-object v8, p0, Lcom/android/server/policy/GlobalActions;->mSelectedItemView:Landroid/view/View;

    invoke-virtual {v8, v4}, Landroid/view/View;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    iput-object v7, p0, Lcom/android/server/policy/GlobalActions;->mSelectedItemView:Landroid/view/View;

    const v8, 0x10203dc

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout;

    const v8, 0x102000b

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const v8, 0x10203da

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/view/ViewGroup;->removeAllViews()V

    if-eqz p1, :cond_2

    move v8, v9

    :goto_2
    invoke-direct {p0, v8}, Lcom/android/server/policy/GlobalActions;->fillActionItemViews(Z)V

    invoke-virtual {v3}, Landroid/widget/TextView;->getHeight()I

    move-result v8

    invoke-virtual {v6}, Landroid/widget/TextView;->getHeight()I

    move-result v10

    add-int/2addr v8, v10

    invoke-direct {p0, v2, v8}, Lcom/android/server/policy/GlobalActions;->updateDescViewHeight(Landroid/view/View;I)V

    invoke-direct {p0, v7, v9, p1}, Lcom/android/server/policy/GlobalActions;->showConfirmDialog(Landroid/view/View;ZZ)V

    return-void

    :cond_1
    iget-object v5, p0, Lcom/android/server/policy/GlobalActions;->mLinearLayout:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mLandscapeLinearLayout:Landroid/widget/LinearLayout;

    goto :goto_0

    :cond_2
    const/4 v8, 0x1

    goto :goto_2

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_4
    return-void
.end method

.method private checkAirplaneModeOnOff()V
    .locals 4

    const-string/jumbo v0, "GlobalActions"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "checkAirplaneModeOnOff : airplaneModeOn = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/android/server/policy/GlobalActions;->isInAirplanModefromSettings()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/server/policy/GlobalActions;->isInAirplanModefromSettings()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/policy/GlobalActions$ToggleAction$State;->On:Lcom/android/server/policy/GlobalActions$ToggleAction$State;

    :goto_0
    iput-object v0, p0, Lcom/android/server/policy/GlobalActions;->mAirplaneState:Lcom/android/server/policy/GlobalActions$ToggleAction$State;

    const-string/jumbo v0, "GlobalActions"

    const-string/jumbo v1, "checkAirplaneModeOnOff : sendEmptyMessageDelayed MESSAGE_REFRESH_AIRPLANEMODE"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x96

    const/4 v1, 0x3

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void

    :cond_0
    sget-object v0, Lcom/android/server/policy/GlobalActions$ToggleAction$State;->Off:Lcom/android/server/policy/GlobalActions$ToggleAction$State;

    goto :goto_0
.end method

.method private clearCustomDialogItems()Z
    .locals 4

    iget-object v3, p0, Lcom/android/server/policy/GlobalActions;->mItems:Ljava/util/ArrayList;

    monitor-enter v3

    :try_start_0
    iget-object v2, p0, Lcom/android/server/policy/GlobalActions;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/policy/GlobalActions$Action;

    instance-of v2, v1, Lcom/android/server/policy/GlobalActions$SinglePressAction;

    if-eqz v2, :cond_0

    check-cast v1, Lcom/android/server/policy/GlobalActions$SinglePressAction;

    iget-boolean v2, v1, Lcom/android/server/policy/GlobalActions$SinglePressAction;->isKnoxCustom:Z

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2

    :cond_1
    monitor-exit v3

    const/4 v2, 0x1

    return v2
.end method

.method private clearSCoverRequestStatus()V
    .locals 4

    const/4 v3, 0x4

    iget-object v2, p0, Lcom/android/server/policy/GlobalActions;->mHandler:Landroid/os/Handler;

    if-nez v2, :cond_0

    return-void

    :cond_0
    iget-object v2, p0, Lcom/android/server/policy/GlobalActions;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/server/policy/GlobalActions;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    :cond_1
    sget-object v2, Lcom/android/server/policy/GlobalActions;->sSCoverRequestStatus:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/android/server/policy/GlobalActions;->restoreQuickpanelBackground(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    sget-object v2, Lcom/android/server/policy/GlobalActions;->sSCoverRequestStatus:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->clear()V

    return-void
.end method

.method private confirmDialog(Lcom/android/server/policy/GlobalActions$ToggleAction;III)V
    .locals 18

    const/4 v12, 0x0

    const/4 v11, 0x0

    const/4 v4, 0x0

    const/4 v13, 0x0

    const/4 v1, 0x0

    const/4 v10, 0x0

    const/4 v6, 0x0

    const/4 v9, 0x0

    const/4 v8, 0x0

    const/4 v7, 0x0

    const/4 v14, 0x1

    sput-boolean v14, Lcom/android/server/policy/GlobalActions;->sIsAirplaneConfirmDialogExist:Z

    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/android/server/policy/GlobalActions$ToggleAction;->mState:Lcom/android/server/policy/GlobalActions$ToggleAction$State;

    sget-object v15, Lcom/android/server/policy/GlobalActions$ToggleAction$State;->Off:Lcom/android/server/policy/GlobalActions$ToggleAction$State;

    if-ne v14, v15, :cond_9

    const v13, 0x1040660

    const/4 v10, 0x1

    :goto_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/policy/GlobalActions;->mAirplaneModeAction:Lcom/android/server/policy/GlobalActions$ToggleAction;

    move-object/from16 v0, p1

    if-ne v0, v14, :cond_a

    const/4 v6, 0x1

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/policy/GlobalActions;->mAirplaneModeClickListener:Landroid/content/DialogInterface$OnClickListener;

    :goto_1
    sget-boolean v14, Lcom/android/server/policy/GlobalActions;->sIsCoverOpen:Z

    if-nez v14, :cond_0

    sget-boolean v14, Lcom/android/server/policy/GlobalActions;->sIsClearCover:Z

    if-eqz v14, :cond_c

    :cond_0
    sget-boolean v14, Lcom/android/server/policy/GlobalActions;->sIsCoverOpen:Z

    if-nez v14, :cond_f

    sget-boolean v14, Lcom/android/server/policy/GlobalActions;->sIsClearCover:Z

    if-eqz v14, :cond_f

    new-instance v1, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    const v15, 0x10304fe

    invoke-direct {v1, v14, v15}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    :goto_2
    move/from16 v0, p2

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/android/server/policy/GlobalActions;->mIsSetAirplaneOnMessageVZW:Z

    if-nez v14, :cond_1

    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/android/server/policy/GlobalActions;->mIsSetAirplaneOnMessageCHINA:Z

    if-eqz v14, :cond_11

    :cond_1
    if-eqz v6, :cond_11

    if-eqz v10, :cond_11

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    const-string/jumbo v15, "layout_inflater"

    invoke-virtual {v14, v15}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/LayoutInflater;

    const v14, 0x1090149

    const/4 v15, 0x0

    invoke-virtual {v5, v14, v15}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/android/server/policy/GlobalActions;->mIsSetAirplaneOnMessageVZW:Z

    if-eqz v14, :cond_10

    const/4 v9, 0x1

    const-string/jumbo v14, "GlobalActions"

    const-string/jumbo v15, "confirmDialog : set airplane mode on message for VZW"

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_3
    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    const v14, 0x1020534

    invoke-virtual {v3, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/CheckBox;

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/server/policy/GlobalActions;->mDontShowCheckbox:Landroid/widget/CheckBox;

    const v14, 0x102000b

    invoke-virtual {v3, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/server/policy/GlobalActions;->mAirplaneMsg:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/policy/GlobalActions;->mAirplaneMsg:Landroid/widget/TextView;

    move/from16 v0, p3

    invoke-virtual {v14, v0}, Landroid/widget/TextView;->setText(I)V

    :goto_4
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/android/server/policy/GlobalActions;->mIsVZWOperatorAirplaneModeONReasonUSB3:Z

    if-eqz v14, :cond_13

    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/android/server/policy/GlobalActions$ToggleAction;->mState:Lcom/android/server/policy/GlobalActions$ToggleAction$State;

    sget-object v15, Lcom/android/server/policy/GlobalActions$ToggleAction$State;->Off:Lcom/android/server/policy/GlobalActions$ToggleAction$State;

    if-eq v14, v15, :cond_13

    const v13, 0x10407fe

    :goto_5
    invoke-virtual {v1, v13, v12}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const v14, 0x1040009

    const/4 v15, 0x0

    invoke-virtual {v1, v14, v15}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    :goto_6
    new-instance v14, Lcom/android/server/policy/GlobalActions$ConfirmDialogReceiver;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    invoke-direct {v14, v15}, Lcom/android/server/policy/GlobalActions$ConfirmDialogReceiver;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/server/policy/GlobalActions;->mConfirmDialogReceiver:Lcom/android/server/policy/GlobalActions$ConfirmDialogReceiver;

    sget-boolean v14, Lcom/android/server/policy/GlobalActions;->sIsCoverOpen:Z

    if-nez v14, :cond_3

    sget-boolean v14, Lcom/android/server/policy/GlobalActions;->sIsClearCover:Z

    if-eqz v14, :cond_16

    :cond_3
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/policy/GlobalActions;->mConfirmDialogReceiver:Lcom/android/server/policy/GlobalActions$ConfirmDialogReceiver;

    iput-object v4, v14, Lcom/android/server/policy/GlobalActions$ConfirmDialogReceiver;->dialog:Landroid/app/AlertDialog;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/policy/GlobalActions;->mConfirmDialogReceiver:Lcom/android/server/policy/GlobalActions$ConfirmDialogReceiver;

    invoke-virtual {v4, v14}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    sget-boolean v14, Lcom/android/server/policy/GlobalActions;->sIsCoverOpen:Z

    if-nez v14, :cond_18

    sget-boolean v14, Lcom/android/server/policy/GlobalActions;->sIsClearCover:Z

    if-eqz v14, :cond_18

    invoke-virtual {v4}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v14

    const/16 v15, 0x833

    invoke-virtual {v14, v15}, Landroid/view/Window;->setType(I)V

    :goto_7
    sget-object v14, Lcom/android/server/policy/GlobalActions;->sResource:Landroid/content/res/Resources;

    const v15, 0x112000d

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v14

    if-nez v14, :cond_4

    invoke-virtual {v4}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v14

    const/4 v15, 0x4

    invoke-virtual {v14, v15}, Landroid/view/Window;->addFlags(I)V

    :cond_4
    const/4 v14, 0x0

    invoke-virtual {v4, v14}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/android/server/policy/GlobalActions;->mShowOnAirplaneConfirm:Z

    if-nez v14, :cond_19

    if-nez v9, :cond_5

    if-eqz v8, :cond_19

    :cond_5
    const/4 v14, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/server/policy/GlobalActions;->airplaneModeClickAction(Z)V

    const/4 v7, 0x1

    :goto_8
    sget-boolean v14, Lcom/android/server/policy/GlobalActions;->SAFE_DEBUG:Z

    if-eqz v14, :cond_6

    const-string/jumbo v14, "GlobalActions"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "in confirmDialog action = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p1

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, " resON = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move/from16 v0, p3

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, "resOFF = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move/from16 v0, p4

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, " config_sf_slowBlur = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    sget-object v16, Lcom/android/server/policy/GlobalActions;->sResource:Landroid/content/res/Resources;

    const v17, 0x112000d

    invoke-virtual/range {v16 .. v17}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, " resTitle = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move/from16 v0, p2

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, " mAirplaneModeAction = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/GlobalActions;->mAirplaneModeAction:Lcom/android/server/policy/GlobalActions$ToggleAction;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, " mDataModeAction = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/GlobalActions;->mDataModeAction:Lcom/android/server/policy/GlobalActions$ToggleAction;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/server/policy/GlobalActions;->mConfirmDialog:Landroid/app/AlertDialog;

    :cond_7
    :goto_9
    if-nez v7, :cond_8

    sget-object v14, Lcom/android/server/policy/GlobalActions;->sIsConfirmingGuard:Ljava/lang/Object;

    monitor-enter v14

    const/4 v15, 0x1

    :try_start_0
    sput-boolean v15, Lcom/android/server/policy/GlobalActions;->sIsConfirming:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v14

    :cond_8
    return-void

    :cond_9
    const v13, 0x104065f

    goto/16 :goto_0

    :cond_a
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/policy/GlobalActions;->mDataModeAction:Lcom/android/server/policy/GlobalActions$ToggleAction;

    move-object/from16 v0, p1

    if-ne v0, v14, :cond_b

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/policy/GlobalActions;->mDataModeClickListener:Landroid/content/DialogInterface$OnClickListener;

    goto/16 :goto_1

    :cond_b
    const-string/jumbo v14, "GlobalActions"

    const-string/jumbo v15, "Cannot find ClickListener."

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :cond_c
    new-instance v14, Lcom/android/server/policy/globalactions/GlobalActionsSViewCoverDialog$Builder;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    invoke-direct {v14, v15}, Lcom/android/server/policy/globalactions/GlobalActionsSViewCoverDialog$Builder;-><init>(Landroid/content/Context;)V

    move/from16 v0, p2

    invoke-virtual {v14, v0}, Lcom/android/server/policy/globalactions/GlobalActionsSViewCoverDialog$Builder;->setTitle(I)Lcom/android/server/policy/globalactions/GlobalActionsSViewCoverDialog$Builder;

    move-result-object v15

    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/android/server/policy/GlobalActions$ToggleAction;->mState:Lcom/android/server/policy/GlobalActions$ToggleAction$State;

    sget-object v16, Lcom/android/server/policy/GlobalActions$ToggleAction$State;->Off:Lcom/android/server/policy/GlobalActions$ToggleAction$State;

    move-object/from16 v0, v16

    if-ne v14, v0, :cond_d

    move/from16 v14, p3

    :goto_a
    invoke-virtual {v15, v14}, Lcom/android/server/policy/globalactions/GlobalActionsSViewCoverDialog$Builder;->setMessage(I)Lcom/android/server/policy/globalactions/GlobalActionsSViewCoverDialog$Builder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/android/server/policy/GlobalActions;->mIsVZWOperatorAirplaneModeONReasonUSB3:Z

    if-eqz v14, :cond_e

    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/android/server/policy/GlobalActions$ToggleAction;->mState:Lcom/android/server/policy/GlobalActions$ToggleAction$State;

    sget-object v16, Lcom/android/server/policy/GlobalActions$ToggleAction$State;->Off:Lcom/android/server/policy/GlobalActions$ToggleAction$State;

    move-object/from16 v0, v16

    if-eq v14, v0, :cond_e

    const v14, 0x10407fe

    :goto_b
    invoke-virtual {v15, v14, v12}, Lcom/android/server/policy/globalactions/GlobalActionsSViewCoverDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/android/server/policy/globalactions/GlobalActionsSViewCoverDialog$Builder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/policy/GlobalActions;->mAirplaneModeCancelClickListener:Landroid/content/DialogInterface$OnClickListener;

    const v16, 0x1040009

    move/from16 v0, v16

    invoke-virtual {v14, v0, v15}, Lcom/android/server/policy/globalactions/GlobalActionsSViewCoverDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/android/server/policy/globalactions/GlobalActionsSViewCoverDialog$Builder;

    move-result-object v14

    invoke-virtual {v14}, Lcom/android/server/policy/globalactions/GlobalActionsSViewCoverDialog$Builder;->create()Lcom/android/server/policy/globalactions/GlobalActionsSViewCoverDialog;

    move-result-object v11

    goto/16 :goto_6

    :cond_d
    move/from16 v14, p4

    goto :goto_a

    :cond_e
    move v14, v13

    goto :goto_b

    :cond_f
    new-instance v1, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    invoke-direct {v1, v14}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    goto/16 :goto_2

    :cond_10
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/android/server/policy/GlobalActions;->mIsSetAirplaneOnMessageCHINA:Z

    if-eqz v14, :cond_2

    const/4 v8, 0x1

    const-string/jumbo v14, "GlobalActions"

    const-string/jumbo v15, "confirmDialog : set airplane mode on message for CHINA"

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    :cond_11
    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/android/server/policy/GlobalActions$ToggleAction;->mState:Lcom/android/server/policy/GlobalActions$ToggleAction$State;

    sget-object v15, Lcom/android/server/policy/GlobalActions$ToggleAction$State;->Off:Lcom/android/server/policy/GlobalActions$ToggleAction$State;

    if-ne v14, v15, :cond_12

    move/from16 v14, p3

    :goto_c
    invoke-virtual {v1, v14}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    goto/16 :goto_4

    :cond_12
    move/from16 v14, p4

    goto :goto_c

    :cond_13
    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/android/server/policy/GlobalActions$ToggleAction;->mState:Lcom/android/server/policy/GlobalActions$ToggleAction$State;

    sget-object v15, Lcom/android/server/policy/GlobalActions$ToggleAction$State;->Off:Lcom/android/server/policy/GlobalActions$ToggleAction$State;

    if-ne v14, v15, :cond_15

    const-string/jumbo v14, "VZW"

    sget-object v15, Lcom/android/server/policy/GlobalActions;->SALES_CODE:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_14

    const v13, 0x104000a

    goto/16 :goto_5

    :cond_14
    const v13, 0x1040660

    goto/16 :goto_5

    :cond_15
    const v13, 0x104065f

    goto/16 :goto_5

    :cond_16
    if-eqz v11, :cond_7

    invoke-virtual {v11}, Lcom/android/server/policy/globalactions/GlobalActionsSViewCoverDialog;->getWindow()Landroid/view/Window;

    move-result-object v14

    const/16 v15, 0x833

    invoke-virtual {v14, v15}, Landroid/view/Window;->setType(I)V

    sget-object v14, Lcom/android/server/policy/GlobalActions;->sResource:Landroid/content/res/Resources;

    const v15, 0x112000d

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v14

    if-nez v14, :cond_17

    invoke-virtual {v11}, Lcom/android/server/policy/globalactions/GlobalActionsSViewCoverDialog;->getWindow()Landroid/view/Window;

    move-result-object v14

    const/4 v15, 0x4

    invoke-virtual {v14, v15}, Landroid/view/Window;->addFlags(I)V

    :cond_17
    invoke-virtual {v11}, Lcom/android/server/policy/globalactions/GlobalActionsSViewCoverDialog;->getWindow()Landroid/view/Window;

    move-result-object v14

    invoke-virtual {v14}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    const/4 v14, 0x1

    iput v14, v2, Landroid/view/WindowManager$LayoutParams;->screenOrientation:I

    const/4 v14, 0x0

    iput v14, v2, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    invoke-virtual {v11}, Lcom/android/server/policy/globalactions/GlobalActionsSViewCoverDialog;->getWindow()Landroid/view/Window;

    move-result-object v14

    invoke-virtual {v14, v2}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    const/4 v14, 0x0

    invoke-virtual {v11, v14}, Lcom/android/server/policy/globalactions/GlobalActionsSViewCoverDialog;->setCanceledOnTouchOutside(Z)V

    invoke-virtual {v11}, Lcom/android/server/policy/globalactions/GlobalActionsSViewCoverDialog;->show()V

    const-string/jumbo v14, "GlobalActions$ConfirmDialog"

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/server/policy/GlobalActions;->hideQuickpanelBackground(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/android/server/policy/GlobalActions;->mConfirmSViewCoverDialog:Lcom/android/server/policy/globalactions/GlobalActionsSViewCoverDialog;

    goto/16 :goto_9

    :cond_18
    invoke-virtual {v4}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v14

    const/16 v15, 0x96b

    invoke-virtual {v14, v15}, Landroid/view/Window;->setType(I)V

    goto/16 :goto_7

    :cond_19
    invoke-virtual {v4}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_8

    :catchall_0
    move-exception v15

    monitor-exit v14

    throw v15
.end method

.method private confirmeAction(Landroid/view/View;Lcom/android/server/policy/GlobalActions$Action;Z)V
    .locals 11

    const/16 v10, 0x8

    const/4 v9, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    const v5, 0x1020006

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    if-eqz p3, :cond_0

    invoke-virtual {v2}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-direct {p0, v5}, Lcom/android/server/policy/GlobalActions;->isSecurePoweroff(I)Z

    move-result v5

    if-eqz v5, :cond_0

    return-void

    :cond_0
    iput-boolean v7, p0, Lcom/android/server/policy/GlobalActions;->mDisplayConfirm:Z

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_1

    invoke-virtual {v2}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    iget v6, p0, Lcom/android/server/policy/GlobalActions;->mPowerOffIconResId:I

    if-eq v5, v6, :cond_1

    invoke-virtual {v2}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    iget v6, p0, Lcom/android/server/policy/GlobalActions;->mRestartIconResId:I

    if-eq v5, v6, :cond_1

    invoke-interface {p2}, Lcom/android/server/policy/GlobalActions$Action;->onPress()V

    iget-object v5, p0, Lcom/android/server/policy/GlobalActions;->mGlobalActionsFrameLayout:Lcom/android/server/policy/globalactions/GlobalActionsFrameLayout;

    invoke-virtual {v5, p1, v9}, Lcom/android/server/policy/globalactions/GlobalActionsFrameLayout;->hideAllView(Landroid/view/View;Z)V

    iget-object v5, p0, Lcom/android/server/policy/GlobalActions;->mHandler:Landroid/os/Handler;

    invoke-virtual {v5, v7}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :goto_0
    return-void

    :cond_1
    iget-object v5, p0, Lcom/android/server/policy/GlobalActions;->mGlobalActionsFrameLayout:Lcom/android/server/policy/globalactions/GlobalActionsFrameLayout;

    const v6, 0x10203c9

    invoke-virtual {v5, v6}, Lcom/android/server/policy/globalactions/GlobalActionsFrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    iget v5, p0, Lcom/android/server/policy/GlobalActions;->mIsSelectedItemTagForSecure:I

    if-eqz v5, :cond_4

    const/4 v1, 0x0

    :goto_1
    iget-object v5, p0, Lcom/android/server/policy/GlobalActions;->mAdapter:Lcom/android/server/policy/GlobalActions$MyAdapter;

    invoke-virtual {v5}, Lcom/android/server/policy/GlobalActions$MyAdapter;->getCount()I

    move-result v5

    if-ge v1, v5, :cond_4

    iget-object v5, p0, Lcom/android/server/policy/GlobalActions;->mLinearLayout:Landroid/widget/LinearLayout;

    if-eqz v5, :cond_2

    invoke-direct {p0, v9}, Lcom/android/server/policy/GlobalActions;->findTargetView(Z)Landroid/view/ViewGroup;

    move-result-object v5

    invoke-virtual {v5, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_2

    invoke-virtual {v4, v8}, Landroid/view/View;->setAlpha(F)V

    invoke-virtual {v4, v10}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    iget-object v5, p0, Lcom/android/server/policy/GlobalActions;->mLandscapeLinearLayout:Landroid/widget/LinearLayout;

    if-eqz v5, :cond_3

    invoke-direct {p0, v7}, Lcom/android/server/policy/GlobalActions;->findTargetView(Z)Landroid/view/ViewGroup;

    move-result-object v5

    invoke-virtual {v5, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_3

    invoke-virtual {v4, v8}, Landroid/view/View;->setAlpha(F)V

    invoke-virtual {v4, v10}, Landroid/view/View;->setVisibility(I)V

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_4
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v5

    invoke-virtual {v5, v8}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v5

    const-wide/16 v6, 0x96

    invoke-virtual {v5, v6, v7}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/ViewPropertyAnimator;->start()V

    iget-object v5, p0, Lcom/android/server/policy/GlobalActions;->mDescriptionlayout:Landroid/widget/LinearLayout;

    invoke-virtual {v5}, Landroid/widget/LinearLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v5

    invoke-virtual {v5, v8}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v5

    const-wide/16 v6, 0x96

    invoke-virtual {v5, v6, v7}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/ViewPropertyAnimator;->start()V

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    const-string/jumbo v6, "alpha"

    const/16 v7, 0x99

    const/16 v8, 0xff

    filled-new-array {v7, v8}, [I

    move-result-object v7

    invoke-static {v5, v6, v7}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v0

    const-wide/16 v6, 0x12c

    invoke-virtual {v0, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v5

    invoke-virtual {v5}, Landroid/animation/ObjectAnimator;->start()V

    new-instance v5, Lcom/android/server/policy/GlobalActions$31;

    invoke-direct {v5, p0, p2}, Lcom/android/server/policy/GlobalActions$31;-><init>(Lcom/android/server/policy/GlobalActions;Lcom/android/server/policy/GlobalActions$Action;)V

    invoke-virtual {v0, v5}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    goto/16 :goto_0
.end method

.method private createDialog()Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;
    .locals 27

    const/4 v2, 0x0

    sput-boolean v2, Lcom/android/server/policy/GlobalActions;->mProKioskOptionShown:Z

    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/GlobalActions;->makeActionsItems()V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/policy/GlobalActions;->mItems:Ljava/util/ArrayList;

    const/4 v9, 0x1

    const/4 v2, 0x0

    sput v2, Lcom/android/server/policy/GlobalActions;->mProKioskMenuPosition:I

    const-string/jumbo v2, "content://com.sec.knox.provider2/KnoxCustomManagerService1"

    const-string/jumbo v3, "getSealedState"

    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3, v4}, Lcom/android/server/policy/GlobalActions;->isEDM(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "true"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    new-instance v2, Lcom/android/server/policy/GlobalActions$PowerAction;

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v3}, Lcom/android/server/policy/GlobalActions$PowerAction;-><init>(Lcom/android/server/policy/GlobalActions;Lcom/android/server/policy/GlobalActions$PowerAction;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/policy/GlobalActions;->mItems:Ljava/util/ArrayList;

    const/4 v4, 0x4

    const/4 v5, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v2, v3, v5}, Lcom/android/server/policy/GlobalActions;->addDialogItemsIfEnabled(ILcom/android/server/policy/GlobalActions$Action;Ljava/util/ArrayList;Z)Z

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/policy/GlobalActions;->mRestartAction:Lcom/android/server/policy/GlobalActions$SinglePressAction;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/policy/GlobalActions;->mItems:Ljava/util/ArrayList;

    const/16 v4, 0x40

    const/4 v5, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v2, v3, v5}, Lcom/android/server/policy/GlobalActions;->addDialogItemsIfEnabled(ILcom/android/server/policy/GlobalActions$Action;Ljava/util/ArrayList;Z)Z

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/policy/GlobalActions;->mEmergencyAction:Lcom/android/server/policy/GlobalActions$ToggleAction;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/policy/GlobalActions;->mItems:Ljava/util/ArrayList;

    const/16 v4, 0x80

    const/4 v5, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v2, v3, v5}, Lcom/android/server/policy/GlobalActions;->addDialogItemsIfEnabled(ILcom/android/server/policy/GlobalActions$Action;Ljava/util/ArrayList;Z)Z

    new-instance v2, Lcom/android/server/policy/GlobalActions$BugReportAction;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/android/server/policy/GlobalActions$BugReportAction;-><init>(Lcom/android/server/policy/GlobalActions;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/policy/GlobalActions;->mItems:Ljava/util/ArrayList;

    const/16 v4, 0x100

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/policy/GlobalActions;->mRebootRecovery:Lcom/android/server/policy/GlobalActions$SinglePressAction;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/policy/GlobalActions;->mItems:Ljava/util/ArrayList;

    const/4 v7, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v2, v3, v7}, Lcom/android/server/policy/GlobalActions;->addDialogItemsIfEnabled(ILcom/android/server/policy/GlobalActions$Action;Ljava/util/ArrayList;Z)Z

    const/16 v4, 0x200

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/policy/GlobalActions;->mHotReboot:Lcom/android/server/policy/GlobalActions$SinglePressAction;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/policy/GlobalActions;->mItems:Ljava/util/ArrayList;

    const/4 v7, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v2, v3, v7}, Lcom/android/server/policy/GlobalActions;->addDialogItemsIfEnabled(ILcom/android/server/policy/GlobalActions$Action;Ljava/util/ArrayList;Z)Z

    const/16 v4, 0x300

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/policy/GlobalActions;->mScreenRec:Lcom/android/server/policy/GlobalActions$SinglePressAction;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/policy/GlobalActions;->mItems:Ljava/util/ArrayList;

    const/4 v7, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v2, v3, v7}, Lcom/android/server/policy/GlobalActions;->addDialogItemsIfEnabled(ILcom/android/server/policy/GlobalActions$Action;Ljava/util/ArrayList;Z)Z

    const/16 v4, 0x400

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/policy/GlobalActions;->mScreenshot:Lcom/android/server/policy/GlobalActions$SinglePressAction;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/policy/GlobalActions;->mItems:Ljava/util/ArrayList;

    const/4 v7, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v2, v3, v7}, Lcom/android/server/policy/GlobalActions;->addDialogItemsIfEnabled(ILcom/android/server/policy/GlobalActions$Action;Ljava/util/ArrayList;Z)Z

    const/16 v4, 0x500

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/policy/GlobalActions;->mFlashlight:Lcom/android/server/policy/GlobalActions$SinglePressAction;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/policy/GlobalActions;->mItems:Ljava/util/ArrayList;

    const/4 v7, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v2, v3, v7}, Lcom/android/server/policy/GlobalActions;->addDialogItemsIfEnabled(ILcom/android/server/policy/GlobalActions$Action;Ljava/util/ArrayList;Z)Z

    const/16 v4, 0x600

    const/4 v5, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v2, v3, v5}, Lcom/android/server/policy/GlobalActions;->addDialogItemsIfEnabled(ILcom/android/server/policy/GlobalActions$Action;Ljava/util/ArrayList;Z)Z

    const-string/jumbo v2, "content://com.sec.knox.provider2/KnoxCustomManagerService1"

    const-string/jumbo v3, "getSealedPowerDialogOptionMode"

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lcom/android/server/policy/GlobalActions;->isIntEDM(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/policy/GlobalActions;->mProKioskAction:Lcom/android/server/policy/GlobalActions$ToggleAction;

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/policy/GlobalActions;->mItems:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/policy/GlobalActions;->mProKioskAction:Lcom/android/server/policy/GlobalActions$ToggleAction;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    const/4 v9, 0x0

    :cond_1
    if-eqz v9, :cond_1a

    sget-object v2, Lcom/android/server/policy/GlobalActions;->sResource:Landroid/content/res/Resources;

    const v3, 0x1070060

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v15

    new-instance v10, Landroid/util/ArraySet;

    invoke-direct {v10}, Landroid/util/ArraySet;-><init>()V

    const/16 v18, 0x0

    :goto_0
    array-length v2, v15

    move/from16 v0, v18

    if-ge v0, v2, :cond_19

    aget-object v8, v15, v18

    invoke-virtual {v10, v8}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_2
    :goto_1
    add-int/lit8 v18, v18, 0x1

    goto :goto_0

    :cond_3
    sget-boolean v2, Lcom/android/server/policy/GlobalActions;->sIsCoverOpen:Z

    if-nez v2, :cond_4

    const-string/jumbo v2, "emergencymode"

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string/jumbo v2, "users"

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string/jumbo v2, "settings"

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    :cond_4
    invoke-static {}, Lcom/sec/enterprise/knox/container/KnoxContainerManager;->isEmergencyModeSupported()Z

    move-result v2

    if-nez v2, :cond_5

    const-string/jumbo v2, "emergencymode"

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    const-string/jumbo v2, "GlobalActions"

    const-string/jumbo v3, "Removed Emergency mode button because of Knox creation."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_5
    const-string/jumbo v2, "power"

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/policy/GlobalActions;->mItems:Ljava/util/ArrayList;

    new-instance v3, Lcom/android/server/policy/GlobalActions$PowerAction;

    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-direct {v3, v0, v4}, Lcom/android/server/policy/GlobalActions$PowerAction;-><init>(Lcom/android/server/policy/GlobalActions;Lcom/android/server/policy/GlobalActions$PowerAction;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_6
    :goto_2
    invoke-virtual {v10, v8}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_7
    const-string/jumbo v2, "airplane"

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/policy/GlobalActions;->mItems:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/policy/GlobalActions;->mAirplaneModeAction:Lcom/android/server/policy/GlobalActions$ToggleAction;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_8
    const-string/jumbo v2, "subscreen"

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    const-string/jumbo v2, "datamode"

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/policy/GlobalActions;->mItems:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/policy/GlobalActions;->mDataModeAction:Lcom/android/server/policy/GlobalActions$ToggleAction;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_9
    const-string/jumbo v2, "bugreport"

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "bugreport_in_power_menu"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_b

    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/GlobalActions;->isCurrentUserOwner()Z

    move-result v2

    if-eqz v2, :cond_b

    sget-boolean v2, Lcom/android/server/policy/GlobalActions;->sIsCoverOpen:Z

    if-eqz v2, :cond_a

    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/policy/GlobalActions;->mIsBugReportEnable:Z

    goto :goto_2

    :cond_a
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/policy/GlobalActions;->mIsBugReportEnable:Z

    goto :goto_2

    :cond_b
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/policy/GlobalActions;->mIsBugReportEnable:Z

    goto :goto_2

    :cond_c
    const-string/jumbo v2, "restart"

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/policy/GlobalActions;->mItems:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/policy/GlobalActions;->mRestartAction:Lcom/android/server/policy/GlobalActions$SinglePressAction;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    :cond_d
    const-string/jumbo v2, "emergencymode"

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/policy/GlobalActions;->mItems:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/policy/GlobalActions;->mEmergencyAction:Lcom/android/server/policy/GlobalActions$ToggleAction;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    :cond_e
    const-string/jumbo v2, "rebootrecovery"

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/policy/GlobalActions;->mItems:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/policy/GlobalActions;->mRebootRecovery:Lcom/android/server/policy/GlobalActions$SinglePressAction;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    :cond_f
    const-string/jumbo v2, "quickreboot"

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/policy/GlobalActions;->mItems:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/policy/GlobalActions;->mHotReboot:Lcom/android/server/policy/GlobalActions$SinglePressAction;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    :cond_10
    const-string/jumbo v2, "screenrec"

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/policy/GlobalActions;->mItems:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/policy/GlobalActions;->mScreenRec:Lcom/android/server/policy/GlobalActions$SinglePressAction;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    :cond_11
    const-string/jumbo v2, "screenshot"

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_12

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/policy/GlobalActions;->mItems:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/policy/GlobalActions;->mScreenshot:Lcom/android/server/policy/GlobalActions$SinglePressAction;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    :cond_12
    const-string/jumbo v2, "flashlight"

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_13

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/policy/GlobalActions;->mItems:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/policy/GlobalActions;->mFlashlight:Lcom/android/server/policy/GlobalActions$SinglePressAction;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    :cond_13
    const-string/jumbo v2, "silent"

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_14

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/policy/GlobalActions;->mShowSilentToggle:Z

    if-eqz v2, :cond_6

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/policy/GlobalActions;->mItems:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/policy/GlobalActions;->mSilentModeAction:Lcom/android/server/policy/GlobalActions$SilentModeAction;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    :cond_14
    const-string/jumbo v2, "users"

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_15

    const-string/jumbo v2, "fw.power_user_switcher"

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_6

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/policy/GlobalActions;->mItems:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/server/policy/GlobalActions;->addUsersToMenu(Ljava/util/ArrayList;)V

    goto/16 :goto_2

    :cond_15
    const-string/jumbo v2, "settings"

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_16

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/policy/GlobalActions;->mItems:Ljava/util/ArrayList;

    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/GlobalActions;->getSettingsAction()Lcom/android/server/policy/GlobalActions$Action;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    :cond_16
    const-string/jumbo v2, "voiceassist"

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_17

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/policy/GlobalActions;->mItems:Ljava/util/ArrayList;

    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/GlobalActions;->getVoiceAssistAction()Lcom/android/server/policy/GlobalActions$Action;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    :cond_17
    const-string/jumbo v2, "assist"

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_18

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/policy/GlobalActions;->mItems:Ljava/util/ArrayList;

    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/GlobalActions;->getAssistAction()Lcom/android/server/policy/GlobalActions$Action;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    :cond_18
    const-string/jumbo v2, "GlobalActions"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Invalid global action key "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    :cond_19
    new-instance v2, Lcom/android/server/policy/GlobalActions$SilentModeAction;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/policy/GlobalActions;->mAudioManager:Landroid/media/AudioManager;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/policy/GlobalActions;->mHandler:Landroid/os/Handler;

    invoke-direct {v2, v3, v4}, Lcom/android/server/policy/GlobalActions$SilentModeAction;-><init>(Landroid/media/AudioManager;Landroid/os/Handler;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v2, v3, v5, v6, v4}, Lcom/android/server/policy/GlobalActions$SilentModeAction;->create(Landroid/content/Context;Landroid/view/View;Landroid/view/ViewGroup;Landroid/view/LayoutInflater;)Landroid/view/View;

    move-result-object v2

    sput-object v2, Lcom/android/server/policy/GlobalActions;->sSilentModeView:Landroid/view/View;

    :cond_1a
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/policy/GlobalActions;->SUPPORT_BIKEMODE_ACTION:Z

    if-eqz v2, :cond_1b

    const-string/jumbo v2, "com.samsung.android.app.bikemode"

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/server/policy/GlobalActions;->isSBikeInstalled(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1b

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/policy/GlobalActions;->mItems:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/policy/GlobalActions;->mBikeModeAction:Lcom/android/server/policy/GlobalActions$ToggleAction;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/policy/GlobalActions;->mKnoxCustomSystemManager:Lcom/samsung/android/knox/custom/SystemManager;

    if-eqz v2, :cond_1c

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/policy/GlobalActions;->mKnoxCustomSystemManager:Lcom/samsung/android/knox/custom/SystemManager;

    invoke-virtual {v2}, Lcom/samsung/android/knox/custom/SystemManager;->getPowerDialogCustomItemsState()Z

    move-result v2

    if-eqz v2, :cond_1c

    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/GlobalActions;->clearCustomDialogItems()Z

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/policy/GlobalActions;->mKnoxCustomSystemManager:Lcom/samsung/android/knox/custom/SystemManager;

    invoke-virtual {v2}, Lcom/samsung/android/knox/custom/SystemManager;->getPowerDialogCustomItems()Ljava/util/List;

    move-result-object v17

    if-eqz v17, :cond_1c

    invoke-interface/range {v17 .. v17}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v20

    :goto_3
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1c

    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/samsung/android/knox/custom/PowerItem;

    invoke-virtual/range {v19 .. v19}, Lcom/samsung/android/knox/custom/PowerItem;->getIcon()Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v3

    invoke-virtual/range {v19 .. v19}, Lcom/samsung/android/knox/custom/PowerItem;->getText()Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {v19 .. v19}, Lcom/samsung/android/knox/custom/PowerItem;->getIntent()Landroid/content/Intent;

    move-result-object v5

    invoke-virtual/range {v19 .. v19}, Lcom/samsung/android/knox/custom/PowerItem;->getIntentAction()I

    move-result v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/policy/GlobalActions;->mItems:Ljava/util/ArrayList;

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/android/server/policy/GlobalActions;->addCustomDialogItems(Landroid/graphics/drawable/BitmapDrawable;Ljava/lang/String;Landroid/content/Intent;ILjava/util/ArrayList;)Z

    goto :goto_3

    :cond_1c
    new-instance v2, Lcom/android/server/policy/GlobalActions$MyAdapter;

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v3}, Lcom/android/server/policy/GlobalActions$MyAdapter;-><init>(Lcom/android/server/policy/GlobalActions;Lcom/android/server/policy/GlobalActions$MyAdapter;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/policy/GlobalActions;->mAdapter:Lcom/android/server/policy/GlobalActions$MyAdapter;

    new-instance v23, Lcom/android/internal/app/AlertController$AlertParams;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    move-object/from16 v0, v23

    invoke-direct {v0, v2}, Lcom/android/internal/app/AlertController$AlertParams;-><init>(Landroid/content/Context;)V

    sget-boolean v2, Lcom/android/server/policy/GlobalActions;->sIsCoverOpen:Z

    if-nez v2, :cond_1d

    sget-boolean v2, Lcom/android/server/policy/GlobalActions;->sIsClearCover:Z

    if-eqz v2, :cond_23

    :cond_1d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/policy/GlobalActions;->mAdapter:Lcom/android/server/policy/GlobalActions$MyAdapter;

    move-object/from16 v0, v23

    iput-object v2, v0, Lcom/android/internal/app/AlertController$AlertParams;->mAdapter:Landroid/widget/ListAdapter;

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    iput-object v0, v1, Lcom/android/internal/app/AlertController$AlertParams;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    const/4 v2, 0x1

    move-object/from16 v0, v23

    iput-boolean v2, v0, Lcom/android/internal/app/AlertController$AlertParams;->mForceInverseBackground:Z

    :goto_4
    new-instance v16, Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/policy/GlobalActions;->mHandler:Landroid/os/Handler;

    move-object/from16 v0, v16

    move-object/from16 v1, v23

    invoke-direct {v0, v2, v1, v3}, Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;-><init>(Landroid/content/Context;Lcom/android/internal/app/AlertController$AlertParams;Landroid/os/Handler;)V

    const-string/jumbo v2, "GlobalActions"

    const-string/jumbo v3, "Create GlobalActionsDialog"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {v16 .. v16}, Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/view/Window;->requestFeature(I)Z

    new-instance v22, Lcom/android/server/policy/GlobalActions$15;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/server/policy/GlobalActions$15;-><init>(Lcom/android/server/policy/GlobalActions;)V

    new-instance v2, Lcom/android/server/policy/globalactions/GlobalActionsFrameLayout;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    sget-boolean v4, Lcom/android/server/policy/GlobalActions;->sIsSViewCoverClosed:Z

    move-object/from16 v0, v22

    invoke-direct {v2, v3, v0, v4}, Lcom/android/server/policy/globalactions/GlobalActionsFrameLayout;-><init>(Landroid/content/Context;Ljava/lang/Runnable;Z)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/policy/GlobalActions;->mGlobalActionsFrameLayout:Lcom/android/server/policy/globalactions/GlobalActionsFrameLayout;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/policy/GlobalActions;->mGlobalActionsFrameLayout:Lcom/android/server/policy/globalactions/GlobalActionsFrameLayout;

    const v3, 0x10203d2

    invoke-virtual {v2, v3}, Lcom/android/server/policy/globalactions/GlobalActionsFrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/policy/GlobalActions;->mBottomlayout:Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/policy/GlobalActions;->mGlobalActionsFrameLayout:Lcom/android/server/policy/globalactions/GlobalActionsFrameLayout;

    const v3, 0x10203d7

    invoke-virtual {v2, v3}, Lcom/android/server/policy/globalactions/GlobalActionsFrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/policy/GlobalActions;->mBugReport:Landroid/widget/Button;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/policy/GlobalActions;->mGlobalActionsFrameLayout:Lcom/android/server/policy/globalactions/GlobalActionsFrameLayout;

    const v3, 0x1020070

    invoke-virtual {v2, v3}, Lcom/android/server/policy/globalactions/GlobalActionsFrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/policy/GlobalActions;->mCancelButton:Landroid/widget/Button;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/policy/GlobalActions;->mGlobalActionsFrameLayout:Lcom/android/server/policy/globalactions/GlobalActionsFrameLayout;

    const v3, 0x10203ce

    invoke-virtual {v2, v3}, Lcom/android/server/policy/globalactions/GlobalActionsFrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/policy/GlobalActions;->mDescriptionlayout:Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/policy/GlobalActions;->mGlobalActionsFrameLayout:Lcom/android/server/policy/globalactions/GlobalActionsFrameLayout;

    const v3, 0x10203cb

    invoke-virtual {v2, v3}, Lcom/android/server/policy/globalactions/GlobalActionsFrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/policy/GlobalActions;->mLinearLayout:Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/policy/GlobalActions;->mGlobalActionsFrameLayout:Lcom/android/server/policy/globalactions/GlobalActionsFrameLayout;

    const v3, 0x10203ca

    invoke-virtual {v2, v3}, Lcom/android/server/policy/globalactions/GlobalActionsFrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ScrollView;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/policy/GlobalActions;->mScrollview:Landroid/widget/ScrollView;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/policy/GlobalActions;->mGlobalActionsFrameLayout:Lcom/android/server/policy/globalactions/GlobalActionsFrameLayout;

    const v3, 0x10203cc

    invoke-virtual {v2, v3}, Lcom/android/server/policy/globalactions/GlobalActionsFrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/HorizontalScrollView;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/policy/GlobalActions;->mHorizontalScrollView:Landroid/widget/HorizontalScrollView;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/policy/GlobalActions;->mGlobalActionsFrameLayout:Lcom/android/server/policy/globalactions/GlobalActionsFrameLayout;

    const v3, 0x10203d8

    invoke-virtual {v2, v3}, Lcom/android/server/policy/globalactions/GlobalActionsFrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v25

    check-cast v25, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/policy/GlobalActions;->mGlobalActionsFrameLayout:Lcom/android/server/policy/globalactions/GlobalActionsFrameLayout;

    const v3, 0x10203d9

    invoke-virtual {v2, v3}, Lcom/android/server/policy/globalactions/GlobalActionsFrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v26

    check-cast v26, Landroid/widget/TextView;

    sget-boolean v2, Lcom/android/server/policy/GlobalActions;->sIsSViewCoverClosed:Z

    if-nez v2, :cond_1e

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/policy/GlobalActions;->mGlobalActionsFrameLayout:Lcom/android/server/policy/globalactions/GlobalActionsFrameLayout;

    const v3, 0x10203cd

    invoke-virtual {v2, v3}, Lcom/android/server/policy/globalactions/GlobalActionsFrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/policy/GlobalActions;->mLandscapeLinearLayout:Landroid/widget/LinearLayout;

    :cond_1e
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/policy/GlobalActions;->mDescriptionlayout:Landroid/widget/LinearLayout;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setAlpha(F)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/policy/GlobalActions;->mCancelButton:Landroid/widget/Button;

    new-instance v3, Lcom/android/server/policy/GlobalActions$16;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/android/server/policy/GlobalActions$16;-><init>(Lcom/android/server/policy/GlobalActions;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    const v3, 0x1040143

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    sget-object v4, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    sget-object v4, Landroid/os/Build;->ID:Ljava/lang/String;

    const/4 v5, 0x1

    aput-object v4, v3, v5

    const v4, 0x1040149

    invoke-virtual {v2, v4, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v14}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v25

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v13}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v26

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget-boolean v2, Lcom/android/server/policy/GlobalActions;->sIsNeedWhiteTheme:Z

    if-eqz v2, :cond_1f

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/GlobalActions;->sBugReportStatusViewColorWhite:I

    move-object/from16 v0, v26

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_1f
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/policy/GlobalActions;->mBugReport:Landroid/widget/Button;

    new-instance v3, Lcom/android/server/policy/GlobalActions$17;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/android/server/policy/GlobalActions$17;-><init>(Lcom/android/server/policy/GlobalActions;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/policy/GlobalActions;->mIsBugReportEnable:Z

    if-nez v2, :cond_24

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/policy/GlobalActions;->mBottomlayout:Landroid/widget/LinearLayout;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :goto_5
    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/GlobalActions;->adjustForceRestartView()V

    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/server/policy/GlobalActions;->buildActionsBaseView(Z)V

    sget-boolean v2, Lcom/android/server/policy/GlobalActions;->sIsSViewCoverClosed:Z

    if-nez v2, :cond_20

    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/server/policy/GlobalActions;->buildActionsBaseView(Z)V

    :cond_20
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/policy/GlobalActions;->mGlobalActionsFrameLayout:Lcom/android/server/policy/globalactions/GlobalActionsFrameLayout;

    const v3, 0x10203c9

    invoke-virtual {v2, v3}, Lcom/android/server/policy/globalactions/GlobalActionsFrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/LinearLayout;

    new-instance v21, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x1

    move-object/from16 v0, v21

    invoke-direct {v0, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    move-object/from16 v0, v21

    invoke-virtual {v11, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    sget-boolean v2, Lcom/android/server/policy/GlobalActions;->sIsNeedWhiteTheme:Z

    if-eqz v2, :cond_25

    const v2, 0x106016b

    invoke-virtual {v11, v2}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    :goto_6
    sget-boolean v2, Lcom/android/server/policy/GlobalActions;->sIsNeedWhiteTheme:Z

    if-eqz v2, :cond_26

    const/16 v24, 0x4d

    :goto_7
    invoke-virtual {v11}, Landroid/widget/LinearLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    const-string/jumbo v3, "alpha"

    const/4 v4, 0x2

    new-array v4, v4, [I

    const/4 v5, 0x0

    const/4 v6, 0x0

    aput v5, v4, v6

    const/4 v5, 0x1

    aput v24, v4, v5

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v12

    const-wide/16 v2, 0x12c

    invoke-virtual {v12, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v2

    invoke-virtual {v2}, Landroid/animation/ObjectAnimator;->start()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/policy/GlobalActions;->mGlobalActionsFrameLayout:Lcom/android/server/policy/globalactions/GlobalActionsFrameLayout;

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;->setContentView(Landroid/view/View;)V

    const/4 v2, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;->setCanceledOnTouchOutside(Z)V

    sget-boolean v2, Lcom/android/server/policy/GlobalActions;->sIsCoverOpen:Z

    if-nez v2, :cond_21

    sget-boolean v2, Lcom/android/server/policy/GlobalActions;->sIsClearCover:Z

    if-eqz v2, :cond_22

    :cond_21
    const-string/jumbo v2, "content://com.sec.knox.provider2/KnoxCustomManagerService1"

    const-string/jumbo v3, "getSealedPowerDialogOptionMode"

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lcom/android/server/policy/GlobalActions;->isIntEDM(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_22

    new-instance v2, Lcom/android/server/policy/GlobalActions$18;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/android/server/policy/GlobalActions$18;-><init>(Lcom/android/server/policy/GlobalActions;)V

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    :cond_22
    return-object v16

    :cond_23
    new-instance v2, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/policy/GlobalActions;->mLayout:Landroid/widget/LinearLayout;

    new-instance v21, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x1

    move-object/from16 v0, v21

    invoke-direct {v0, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/policy/GlobalActions;->mLayout:Landroid/widget/LinearLayout;

    move-object/from16 v0, v21

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/policy/GlobalActions;->mLayout:Landroid/widget/LinearLayout;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    goto/16 :goto_4

    :cond_24
    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/GlobalActions;->adjustBottomView()V

    goto/16 :goto_5

    :cond_25
    const v2, 0x106016a

    invoke-virtual {v11, v2}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    goto/16 :goto_6

    :cond_26
    const/16 v24, 0x99

    goto/16 :goto_7
.end method

.method private dismissDialog()V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mConfirmDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mConfirmDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/server/policy/GlobalActions;->isGlobalActionConfirming()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mConfirmDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    :cond_0
    sget-boolean v0, Lcom/android/server/policy/GlobalActions;->sIsCoverOpen:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mConfirmSViewCoverDialog:Lcom/android/server/policy/globalactions/GlobalActionsSViewCoverDialog;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mConfirmSViewCoverDialog:Lcom/android/server/policy/globalactions/GlobalActionsSViewCoverDialog;

    invoke-virtual {v0}, Lcom/android/server/policy/globalactions/GlobalActionsSViewCoverDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/android/server/policy/GlobalActions;->isGlobalActionConfirming()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mConfirmSViewCoverDialog:Lcom/android/server/policy/globalactions/GlobalActionsSViewCoverDialog;

    invoke-virtual {v0}, Lcom/android/server/policy/globalactions/GlobalActionsSViewCoverDialog;->dismiss()V

    sget-boolean v0, Lcom/android/server/policy/GlobalActions;->sIsSecondConfirming:Z

    if-nez v0, :cond_3

    sget-object v0, Lcom/android/server/policy/GlobalActions;->sIsConfirmingGuard:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    sput-boolean v1, Lcom/android/server/policy/GlobalActions;->sIsConfirming:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mDialog:Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;

    if-eqz v0, :cond_2

    const-string/jumbo v0, "GlobalActions"

    const-string/jumbo v1, "handleMessage : MESSAGE_DISMISS : Call mDialog.dismiss()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mDialog:Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;

    invoke-virtual {v0}, Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;->dismiss()V

    iput-object v3, p0, Lcom/android/server/policy/GlobalActions;->mDialog:Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;

    :cond_2
    sput-boolean v2, Lcom/android/server/policy/GlobalActions;->sIsConfirmDlg:Z

    iput-boolean v2, p0, Lcom/android/server/policy/GlobalActions;->mIsSafeModeEnabled:Z

    iput-boolean v2, p0, Lcom/android/server/policy/GlobalActions;->mIsScreenOFF:Z

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1

    :cond_3
    sput-boolean v2, Lcom/android/server/policy/GlobalActions;->sIsSecondConfirming:Z

    goto :goto_0
.end method

.method private doActionByBixby(I)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mDialog:Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string/jumbo v0, "GlobalActions"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mPowerOffIconResId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/policy/GlobalActions;->mPowerOffIconResId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", mRestartIconResId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/policy/GlobalActions;->mRestartIconResId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "tag = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p1}, Lcom/android/server/policy/GlobalActions;->getActionViewByTag(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-direct {p0, p1}, Lcom/android/server/policy/GlobalActions;->getActionViewByTag(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/policy/GlobalActions;->mSelectedItemView:Landroid/view/View;

    iget v0, p0, Lcom/android/server/policy/GlobalActions;->mPowerOffIconResId:I

    if-eq p1, v0, :cond_1

    iget v0, p0, Lcom/android/server/policy/GlobalActions;->mRestartIconResId:I

    if-ne p1, v0, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mAdapter:Lcom/android/server/policy/GlobalActions$MyAdapter;

    iget v1, p0, Lcom/android/server/policy/GlobalActions;->mSelectedItemNumbyBixby:I

    invoke-virtual {v0, v1}, Lcom/android/server/policy/GlobalActions$MyAdapter;->getItem(I)Lcom/android/server/policy/GlobalActions$Action;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/policy/GlobalActions;->mSelectedItemView:Landroid/view/View;

    invoke-direct {p0}, Lcom/android/server/policy/GlobalActions;->isPortrait()Z

    move-result v2

    invoke-direct {p0, v0, v1, v2}, Lcom/android/server/policy/GlobalActions;->actionClicked(Lcom/android/server/policy/GlobalActions$Action;Landroid/view/View;Z)V

    :cond_2
    return-void
.end method

.method private doAnimation(Landroid/view/View;FFFIZ)V
    .locals 36

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/GlobalActions;->mDialog:Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;

    move-object/from16 v30, v0

    if-nez v30, :cond_0

    return-void

    :cond_0
    const v30, 0x1020006

    move-object/from16 v0, p1

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/ImageView;

    const v30, 0x102000b

    move-object/from16 v0, p1

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v20

    check-cast v20, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/GlobalActions;->mDescriptionlayout:Landroid/widget/LinearLayout;

    move-object/from16 v30, v0

    const v31, 0x10203cf

    invoke-virtual/range {v30 .. v31}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    const v30, 0x10203dc

    move-object/from16 v0, p1

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v16

    check-cast v16, Landroid/widget/FrameLayout;

    const/4 v11, 0x0

    const/4 v7, 0x0

    invoke-virtual {v12}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v30

    check-cast v30, Ljava/lang/Integer;

    invoke-virtual/range {v30 .. v30}, Ljava/lang/Integer;->intValue()I

    move-result v15

    sget-boolean v30, Lcom/android/server/policy/GlobalActions;->sIsNeedWhiteTheme:Z

    if-eqz v30, :cond_1

    if-eqz v8, :cond_1

    sget v30, Lcom/android/server/policy/GlobalActions;->sStatusViewColorWhite:I

    move/from16 v0, v30

    invoke-virtual {v8, v0}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_1
    if-eqz p6, :cond_c

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/policy/GlobalActions;->mPowerOffIconResId:I

    move/from16 v30, v0

    move/from16 v0, v30

    if-ne v15, v0, :cond_a

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/policy/GlobalActions;->mIsTablet:Z

    move/from16 v30, v0

    if-eqz v30, :cond_9

    const v7, 0x1040824

    :cond_2
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/GlobalActions;->mDescriptionlayout:Landroid/widget/LinearLayout;

    move-object/from16 v30, v0

    const-string/jumbo v31, "alpha"

    const/16 v32, 0x2

    move/from16 v0, v32

    new-array v0, v0, [F

    move-object/from16 v32, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/GlobalActions;->mDescriptionlayout:Landroid/widget/LinearLayout;

    move-object/from16 v33, v0

    invoke-virtual/range {v33 .. v33}, Landroid/widget/LinearLayout;->getAlpha()F

    move-result v33

    const/16 v34, 0x0

    aput v33, v32, v34

    const/high16 v33, 0x3f800000    # 1.0f

    const/16 v34, 0x1

    aput v33, v32, v34

    invoke-static/range {v30 .. v32}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/GlobalActions;->mBottomlayout:Landroid/widget/LinearLayout;

    move-object/from16 v30, v0

    const-string/jumbo v31, "alpha"

    const/16 v32, 0x2

    move/from16 v0, v32

    new-array v0, v0, [F

    move-object/from16 v32, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/GlobalActions;->mBottomlayout:Landroid/widget/LinearLayout;

    move-object/from16 v33, v0

    invoke-virtual/range {v33 .. v33}, Landroid/widget/LinearLayout;->getAlpha()F

    move-result v33

    const/16 v34, 0x0

    aput v33, v32, v34

    const/16 v33, 0x0

    const/16 v34, 0x1

    aput v33, v32, v34

    invoke-static/range {v30 .. v32}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/GlobalActions;->mForceRestartlayout:Landroid/widget/LinearLayout;

    move-object/from16 v30, v0

    if-eqz v30, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/GlobalActions;->mForceRestartlayout:Landroid/widget/LinearLayout;

    move-object/from16 v30, v0

    const-string/jumbo v31, "alpha"

    const/16 v32, 0x2

    move/from16 v0, v32

    new-array v0, v0, [F

    move-object/from16 v32, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/GlobalActions;->mForceRestartlayout:Landroid/widget/LinearLayout;

    move-object/from16 v33, v0

    invoke-virtual/range {v33 .. v33}, Landroid/widget/LinearLayout;->getAlpha()F

    move-result v33

    const/16 v34, 0x0

    aput v33, v32, v34

    const/16 v33, 0x0

    const/16 v34, 0x1

    aput v33, v32, v34

    invoke-static/range {v30 .. v32}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v11

    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/GlobalActions;->mBugReport:Landroid/widget/Button;

    move-object/from16 v30, v0

    const/16 v31, 0x0

    invoke-virtual/range {v30 .. v31}, Landroid/widget/Button;->setFocusable(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/GlobalActions;->mBugReport:Landroid/widget/Button;

    move-object/from16 v30, v0

    const/16 v31, 0x0

    invoke-virtual/range {v30 .. v31}, Landroid/widget/Button;->setClickable(Z)V

    :goto_1
    const-wide/16 v30, 0x190

    move-wide/from16 v0, v30

    invoke-virtual {v9, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/GlobalActions;->mGlobalActionsFrameLayout:Lcom/android/server/policy/globalactions/GlobalActionsFrameLayout;

    move-object/from16 v30, v0

    const v31, 0x10203c9

    invoke-virtual/range {v30 .. v31}, Lcom/android/server/policy/globalactions/GlobalActionsFrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v22

    check-cast v22, Landroid/widget/LinearLayout;

    if-eqz p6, :cond_e

    const-string/jumbo v30, "translationX"

    const/16 v31, 0x1

    move/from16 v0, v31

    new-array v0, v0, [F

    move-object/from16 v31, v0

    const/16 v32, 0x0

    aput p2, v31, v32

    move-object/from16 v0, p1

    move-object/from16 v1, v30

    move-object/from16 v2, v31

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v28

    const-string/jumbo v30, "translationY"

    const/16 v31, 0x1

    move/from16 v0, v31

    new-array v0, v0, [F

    move-object/from16 v31, v0

    const/16 v32, 0x0

    aput p3, v31, v32

    move-object/from16 v0, p1

    move-object/from16 v1, v30

    move-object/from16 v2, v31

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v29

    const-string/jumbo v30, "translationY"

    const/16 v31, 0x1

    move/from16 v0, v31

    new-array v0, v0, [F

    move-object/from16 v31, v0

    invoke-virtual/range {v20 .. v20}, Landroid/widget/TextView;->getHeight()I

    move-result v32

    move/from16 v0, v32

    int-to-double v0, v0

    move-wide/from16 v32, v0

    const-wide v34, 0x3fd999999999999aL    # 0.4

    mul-double v32, v32, v34

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/policy/GlobalActions;->mMessageViewPaddingTop:I

    move/from16 v34, v0

    move/from16 v0, v34

    int-to-double v0, v0

    move-wide/from16 v34, v0

    add-double v32, v32, v34

    move-wide/from16 v0, v32

    double-to-float v0, v0

    move/from16 v32, v0

    const/16 v33, 0x0

    aput v32, v31, v33

    move-object/from16 v0, v20

    move-object/from16 v1, v30

    move-object/from16 v2, v31

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v21

    :goto_2
    const-string/jumbo v30, "scaleX"

    const/16 v31, 0x1

    move/from16 v0, v31

    new-array v0, v0, [F

    move-object/from16 v31, v0

    const/16 v32, 0x0

    aput p4, v31, v32

    move-object/from16 v0, p1

    move-object/from16 v1, v30

    move-object/from16 v2, v31

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v23

    const-string/jumbo v30, "scaleY"

    const/16 v31, 0x1

    move/from16 v0, v31

    new-array v0, v0, [F

    move-object/from16 v31, v0

    const/16 v32, 0x0

    aput p4, v31, v32

    move-object/from16 v0, v16

    move-object/from16 v1, v30

    move-object/from16 v2, v31

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v25

    const v30, 0x10203dd

    move-object/from16 v0, p1

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/ImageView;

    const v30, 0x10203de

    move-object/from16 v0, p1

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/ImageView;

    sget-boolean v30, Lcom/android/server/policy/GlobalActions;->sSupportBlackWhiteTheme:Z

    if-eqz v30, :cond_12

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/policy/GlobalActions;->mPowerOffIconResId:I

    move/from16 v30, v0

    move/from16 v0, v30

    if-ne v15, v0, :cond_12

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/policy/GlobalActions;->mIsSafeModeEnabled:Z

    move/from16 v30, v0

    if-eqz v30, :cond_12

    if-eqz p6, :cond_11

    const v19, 0x1040827

    const-string/jumbo v30, "VZW"

    sget-object v31, Lcom/android/server/policy/GlobalActions;->SALES_CODE:Ljava/lang/String;

    invoke-virtual/range {v30 .. v31}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v30

    if-eqz v30, :cond_f

    const v7, 0x104082a

    :goto_3
    const/high16 v30, 0x3f800000    # 1.0f

    move/from16 v0, v30

    invoke-virtual {v14, v0}, Landroid/widget/ImageView;->setAlpha(F)V

    :goto_4
    move-object/from16 v0, v20

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    :goto_5
    if-eqz v7, :cond_4

    invoke-virtual {v8, v7}, Landroid/widget/TextView;->setText(I)V

    :cond_4
    const/16 v17, 0x0

    if-eqz p6, :cond_14

    sget-boolean v30, Lcom/android/server/policy/GlobalActions;->sSupportBlackWhiteTheme:Z

    if-eqz v30, :cond_13

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/policy/GlobalActions;->mPowerOffIconResId:I

    move/from16 v30, v0

    move/from16 v0, v30

    if-ne v15, v0, :cond_13

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/policy/GlobalActions;->mIsSafeModeEnabled:Z

    move/from16 v30, v0

    if-eqz v30, :cond_13

    const-string/jumbo v30, "alpha"

    const/16 v31, 0x0

    const/16 v32, 0xff

    filled-new-array/range {v31 .. v32}, [I

    move-result-object v31

    move-object/from16 v0, v30

    move-object/from16 v1, v31

    invoke-static {v14, v0, v1}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v18

    const-string/jumbo v30, "alpha"

    const/16 v31, 0xff

    const/16 v32, 0x0

    filled-new-array/range {v31 .. v32}, [I

    move-result-object v31

    move-object/from16 v0, v30

    move-object/from16 v1, v31

    invoke-static {v12, v0, v1}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v17

    :goto_6
    const-string/jumbo v30, "scaleX"

    const/16 v31, 0x1

    move/from16 v0, v31

    new-array v0, v0, [F

    move-object/from16 v31, v0

    const v32, 0x3f6b851f    # 0.92f

    const/16 v33, 0x0

    aput v32, v31, v33

    move-object/from16 v0, v20

    move-object/from16 v1, v30

    move-object/from16 v2, v31

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v24

    const-string/jumbo v30, "scaleY"

    const/16 v31, 0x1

    move/from16 v0, v31

    new-array v0, v0, [F

    move-object/from16 v31, v0

    const v32, 0x3f99999a    # 1.2f

    const/16 v33, 0x0

    aput v32, v31, v33

    move-object/from16 v0, v20

    move-object/from16 v1, v30

    move-object/from16 v2, v31

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v26

    :goto_7
    const-wide/16 v30, 0xc8

    move-object/from16 v0, v18

    move-wide/from16 v1, v30

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    if-eqz p6, :cond_18

    sget-boolean v30, Lcom/android/server/policy/GlobalActions;->sIsNeedWhiteTheme:Z

    if-eqz v30, :cond_16

    const v30, 0x106016b

    move-object/from16 v0, v22

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    :goto_8
    sget-boolean v30, Lcom/android/server/policy/GlobalActions;->sIsNeedWhiteTheme:Z

    if-eqz v30, :cond_17

    const/16 v27, 0x4d

    const/16 v10, 0x80

    :goto_9
    invoke-virtual/range {v22 .. v22}, Landroid/widget/LinearLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v30

    const-string/jumbo v31, "alpha"

    const/16 v32, 0x2

    move/from16 v0, v32

    new-array v0, v0, [I

    move-object/from16 v32, v0

    const/16 v33, 0x0

    aput v27, v32, v33

    const/16 v33, 0x1

    aput v10, v32, v33

    invoke-static/range {v30 .. v32}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v5

    new-instance v4, Landroid/animation/AnimatorSet;

    invoke-direct {v4}, Landroid/animation/AnimatorSet;-><init>()V

    new-instance v30, Lcom/android/server/policy/GlobalActions$32;

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    move-object/from16 v2, v16

    invoke-direct {v0, v1, v2}, Lcom/android/server/policy/GlobalActions$32;-><init>(Lcom/android/server/policy/GlobalActions;Landroid/widget/FrameLayout;)V

    move-object/from16 v0, v30

    invoke-virtual {v4, v0}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    move-object/from16 v0, v25

    invoke-virtual {v4, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v30

    move-object/from16 v0, v30

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v30

    move-object/from16 v0, v30

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v30

    move-object/from16 v0, v30

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v30

    move-object/from16 v0, v30

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v30

    move-object/from16 v0, v30

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v30

    move-object/from16 v0, v30

    invoke-virtual {v0, v5}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v30

    move-object/from16 v0, v30

    invoke-virtual {v0, v9}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v30

    move-object/from16 v0, v30

    invoke-virtual {v0, v6}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move/from16 v0, p2

    float-to-int v0, v0

    move/from16 v30, v0

    const/16 v31, -0x3e8

    move/from16 v0, v30

    move/from16 v1, v31

    if-eq v0, v1, :cond_5

    const/16 v30, 0x1

    move/from16 v0, v30

    new-array v0, v0, [Landroid/animation/Animator;

    move-object/from16 v30, v0

    const/16 v31, 0x0

    aput-object v28, v30, v31

    move-object/from16 v0, v30

    invoke-virtual {v4, v0}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    :cond_5
    if-eqz v11, :cond_6

    const/16 v30, 0x1

    move/from16 v0, v30

    new-array v0, v0, [Landroid/animation/Animator;

    move-object/from16 v30, v0

    const/16 v31, 0x0

    aput-object v11, v30, v31

    move-object/from16 v0, v30

    invoke-virtual {v4, v0}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    :cond_6
    move/from16 v0, p3

    float-to-int v0, v0

    move/from16 v30, v0

    const/16 v31, -0x3e8

    move/from16 v0, v30

    move/from16 v1, v31

    if-eq v0, v1, :cond_7

    const/16 v30, 0x1

    move/from16 v0, v30

    new-array v0, v0, [Landroid/animation/Animator;

    move-object/from16 v30, v0

    const/16 v31, 0x0

    aput-object v29, v30, v31

    move-object/from16 v0, v30

    invoke-virtual {v4, v0}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    :cond_7
    if-eqz v17, :cond_8

    const-wide/16 v30, 0xc8

    move-object/from16 v0, v17

    move-wide/from16 v1, v30

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    const/16 v30, 0x1

    move/from16 v0, v30

    new-array v0, v0, [Landroid/animation/Animator;

    move-object/from16 v30, v0

    const/16 v31, 0x0

    aput-object v17, v30, v31

    move-object/from16 v0, v30

    invoke-virtual {v4, v0}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    :cond_8
    move/from16 v0, p5

    int-to-long v0, v0

    move-wide/from16 v30, v0

    move-wide/from16 v0, v30

    invoke-virtual {v4, v0, v1}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    new-instance v30, Landroid/view/animation/PathInterpolator;

    const v31, 0x3e2e147b    # 0.17f

    const v32, 0x3e2e147b    # 0.17f

    const v33, 0x3e4ccccd    # 0.2f

    const/high16 v34, 0x3f800000    # 1.0f

    invoke-direct/range {v30 .. v34}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    move-object/from16 v0, v30

    invoke-virtual {v4, v0}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {v4}, Landroid/animation/AnimatorSet;->start()V

    return-void

    :cond_9
    const v7, 0x1040823

    goto/16 :goto_0

    :cond_a
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/policy/GlobalActions;->mRestartIconResId:I

    move/from16 v30, v0

    move/from16 v0, v30

    if-ne v15, v0, :cond_2

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/policy/GlobalActions;->mIsTablet:Z

    move/from16 v30, v0

    if-eqz v30, :cond_b

    const v7, 0x1040826

    goto/16 :goto_0

    :cond_b
    const v7, 0x1040825

    goto/16 :goto_0

    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/GlobalActions;->mDescriptionlayout:Landroid/widget/LinearLayout;

    move-object/from16 v30, v0

    const-string/jumbo v31, "alpha"

    const/16 v32, 0x2

    move/from16 v0, v32

    new-array v0, v0, [F

    move-object/from16 v32, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/GlobalActions;->mDescriptionlayout:Landroid/widget/LinearLayout;

    move-object/from16 v33, v0

    invoke-virtual/range {v33 .. v33}, Landroid/widget/LinearLayout;->getAlpha()F

    move-result v33

    const/16 v34, 0x0

    aput v33, v32, v34

    const/16 v33, 0x0

    const/16 v34, 0x1

    aput v33, v32, v34

    invoke-static/range {v30 .. v32}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/GlobalActions;->mBottomlayout:Landroid/widget/LinearLayout;

    move-object/from16 v30, v0

    const-string/jumbo v31, "alpha"

    const/16 v32, 0x2

    move/from16 v0, v32

    new-array v0, v0, [F

    move-object/from16 v32, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/GlobalActions;->mBottomlayout:Landroid/widget/LinearLayout;

    move-object/from16 v33, v0

    invoke-virtual/range {v33 .. v33}, Landroid/widget/LinearLayout;->getAlpha()F

    move-result v33

    const/16 v34, 0x0

    aput v33, v32, v34

    const/high16 v33, 0x3f800000    # 1.0f

    const/16 v34, 0x1

    aput v33, v32, v34

    invoke-static/range {v30 .. v32}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/GlobalActions;->mForceRestartlayout:Landroid/widget/LinearLayout;

    move-object/from16 v30, v0

    if-eqz v30, :cond_d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/GlobalActions;->mForceRestartlayout:Landroid/widget/LinearLayout;

    move-object/from16 v30, v0

    const-string/jumbo v31, "alpha"

    const/16 v32, 0x2

    move/from16 v0, v32

    new-array v0, v0, [F

    move-object/from16 v32, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/GlobalActions;->mForceRestartlayout:Landroid/widget/LinearLayout;

    move-object/from16 v33, v0

    invoke-virtual/range {v33 .. v33}, Landroid/widget/LinearLayout;->getAlpha()F

    move-result v33

    const/16 v34, 0x0

    aput v33, v32, v34

    const/high16 v33, 0x3f800000    # 1.0f

    const/16 v34, 0x1

    aput v33, v32, v34

    invoke-static/range {v30 .. v32}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v11

    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/GlobalActions;->mBugReport:Landroid/widget/Button;

    move-object/from16 v30, v0

    const/16 v31, 0x1

    invoke-virtual/range {v30 .. v31}, Landroid/widget/Button;->setFocusable(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/GlobalActions;->mBugReport:Landroid/widget/Button;

    move-object/from16 v30, v0

    const/16 v31, 0x1

    invoke-virtual/range {v30 .. v31}, Landroid/widget/Button;->setClickable(Z)V

    goto/16 :goto_1

    :cond_e
    const-string/jumbo v30, "x"

    const/16 v31, 0x1

    move/from16 v0, v31

    new-array v0, v0, [F

    move-object/from16 v31, v0

    const/16 v32, 0x0

    aput p2, v31, v32

    move-object/from16 v0, p1

    move-object/from16 v1, v30

    move-object/from16 v2, v31

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v28

    const-string/jumbo v30, "y"

    const/16 v31, 0x1

    move/from16 v0, v31

    new-array v0, v0, [F

    move-object/from16 v31, v0

    const/16 v32, 0x0

    aput p3, v31, v32

    move-object/from16 v0, p1

    move-object/from16 v1, v30

    move-object/from16 v2, v31

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v29

    const-string/jumbo v30, "translationY"

    const/16 v31, 0x1

    move/from16 v0, v31

    new-array v0, v0, [F

    move-object/from16 v31, v0

    const/16 v32, 0x0

    const/16 v33, 0x0

    aput v32, v31, v33

    move-object/from16 v0, v20

    move-object/from16 v1, v30

    move-object/from16 v2, v31

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v21

    goto/16 :goto_2

    :cond_f
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/policy/GlobalActions;->mIsTablet:Z

    move/from16 v30, v0

    if-eqz v30, :cond_10

    const v7, 0x1040829

    goto/16 :goto_3

    :cond_10
    const v7, 0x1040828

    goto/16 :goto_3

    :cond_11
    const v19, 0x104013f

    const/16 v30, 0x0

    move/from16 v0, v30

    invoke-virtual {v14, v0}, Landroid/widget/ImageView;->setAlpha(F)V

    goto/16 :goto_4

    :cond_12
    const/high16 v30, 0x3f800000    # 1.0f

    move/from16 v0, v30

    invoke-virtual {v13, v0}, Landroid/widget/ImageView;->setAlpha(F)V

    goto/16 :goto_5

    :cond_13
    const-string/jumbo v30, "alpha"

    const/16 v31, 0x0

    const/16 v32, 0xff

    filled-new-array/range {v31 .. v32}, [I

    move-result-object v31

    move-object/from16 v0, v30

    move-object/from16 v1, v31

    invoke-static {v13, v0, v1}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v18

    goto/16 :goto_6

    :cond_14
    sget-boolean v30, Lcom/android/server/policy/GlobalActions;->sSupportBlackWhiteTheme:Z

    if-eqz v30, :cond_15

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/policy/GlobalActions;->mPowerOffIconResId:I

    move/from16 v30, v0

    move/from16 v0, v30

    if-ne v15, v0, :cond_15

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/policy/GlobalActions;->mIsSafeModeEnabled:Z

    move/from16 v30, v0

    if-eqz v30, :cond_15

    const-string/jumbo v30, "alpha"

    const/16 v31, 0xff

    const/16 v32, 0x0

    filled-new-array/range {v31 .. v32}, [I

    move-result-object v31

    move-object/from16 v0, v30

    move-object/from16 v1, v31

    invoke-static {v14, v0, v1}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v18

    const-string/jumbo v30, "alpha"

    const/16 v31, 0x0

    const/16 v32, 0xff

    filled-new-array/range {v31 .. v32}, [I

    move-result-object v31

    move-object/from16 v0, v30

    move-object/from16 v1, v31

    invoke-static {v12, v0, v1}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v17

    :goto_a
    const-string/jumbo v30, "scaleX"

    const/16 v31, 0x1

    move/from16 v0, v31

    new-array v0, v0, [F

    move-object/from16 v31, v0

    const/high16 v32, 0x3f800000    # 1.0f

    const/16 v33, 0x0

    aput v32, v31, v33

    move-object/from16 v0, v20

    move-object/from16 v1, v30

    move-object/from16 v2, v31

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v24

    const-string/jumbo v30, "scaleY"

    const/16 v31, 0x1

    move/from16 v0, v31

    new-array v0, v0, [F

    move-object/from16 v31, v0

    const/high16 v32, 0x3f800000    # 1.0f

    const/16 v33, 0x0

    aput v32, v31, v33

    move-object/from16 v0, v20

    move-object/from16 v1, v30

    move-object/from16 v2, v31

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v26

    goto/16 :goto_7

    :cond_15
    const-string/jumbo v30, "alpha"

    const/16 v31, 0xff

    const/16 v32, 0x0

    filled-new-array/range {v31 .. v32}, [I

    move-result-object v31

    move-object/from16 v0, v30

    move-object/from16 v1, v31

    invoke-static {v13, v0, v1}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v18

    goto :goto_a

    :cond_16
    const v30, 0x106016a

    move-object/from16 v0, v22

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    goto/16 :goto_8

    :cond_17
    const/16 v27, 0x99

    const/16 v10, 0xbf

    goto/16 :goto_9

    :cond_18
    sget-boolean v30, Lcom/android/server/policy/GlobalActions;->sIsNeedWhiteTheme:Z

    if-eqz v30, :cond_19

    const/16 v27, 0x80

    const/16 v10, 0x4d

    goto/16 :goto_9

    :cond_19
    const/16 v27, 0xbf

    const/16 v10, 0x99

    goto/16 :goto_9
.end method

.method private fillActionItemViews(Z)V
    .locals 5

    iget-object v3, p0, Lcom/android/server/policy/GlobalActions;->mAdapter:Lcom/android/server/policy/GlobalActions$MyAdapter;

    invoke-virtual {v3}, Lcom/android/server/policy/GlobalActions$MyAdapter;->getCount()I

    move-result v0

    invoke-direct {p0, p1}, Lcom/android/server/policy/GlobalActions;->findTargetView(Z)Landroid/view/ViewGroup;

    move-result-object v2

    if-eqz p1, :cond_3

    sget-boolean v3, Lcom/android/server/policy/GlobalActions;->sIsCoverOpen:Z

    if-nez v3, :cond_0

    sget-boolean v3, Lcom/android/server/policy/GlobalActions;->sIsClearCover:Z

    if-eqz v3, :cond_1

    :cond_0
    iget-object v3, p0, Lcom/android/server/policy/GlobalActions;->mAdapter:Lcom/android/server/policy/GlobalActions$MyAdapter;

    invoke-virtual {v3}, Lcom/android/server/policy/GlobalActions$MyAdapter;->getCount()I

    move-result v3

    const/4 v4, 0x3

    if-gt v3, v4, :cond_2

    iget v3, p0, Lcom/android/server/policy/GlobalActions;->mItemPortraitDivider:I

    iput v3, p0, Lcom/android/server/policy/GlobalActions;->mItemDivider:I

    :goto_0
    const/4 v1, 0x0

    :goto_1
    if-ge v1, v0, :cond_4

    iget-object v3, p0, Lcom/android/server/policy/GlobalActions;->mAdapter:Lcom/android/server/policy/GlobalActions$MyAdapter;

    invoke-virtual {v3, v1}, Lcom/android/server/policy/GlobalActions$MyAdapter;->getItem(I)Lcom/android/server/policy/GlobalActions$Action;

    move-result-object v3

    invoke-direct {p0, v3, v1, p1}, Lcom/android/server/policy/GlobalActions;->makeActionsItemView(Lcom/android/server/policy/GlobalActions$Action;IZ)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    iget v3, p0, Lcom/android/server/policy/GlobalActions;->mItemPortraitDividerSViewCover:I

    iput v3, p0, Lcom/android/server/policy/GlobalActions;->mItemDivider:I

    goto :goto_0

    :cond_2
    iget v3, p0, Lcom/android/server/policy/GlobalActions;->mItemPortraitDividerOverFour:I

    iput v3, p0, Lcom/android/server/policy/GlobalActions;->mItemDivider:I

    goto :goto_0

    :cond_3
    iget v3, p0, Lcom/android/server/policy/GlobalActions;->mItemLandscapeDivider:I

    iput v3, p0, Lcom/android/server/policy/GlobalActions;->mItemDividerLand:I

    goto :goto_0

    :cond_4
    return-void
.end method

.method private findTargetScrollView(Z)Landroid/view/ViewGroup;
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mScrollview:Landroid/widget/ScrollView;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mHorizontalScrollView:Landroid/widget/HorizontalScrollView;

    goto :goto_0
.end method

.method private findTargetView(Z)Landroid/view/ViewGroup;
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mLinearLayout:Landroid/widget/LinearLayout;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mLandscapeLinearLayout:Landroid/widget/LinearLayout;

    goto :goto_0
.end method

.method private getActionViewByTag(I)Landroid/view/View;
    .locals 5

    const/4 v4, 0x0

    iget-object v3, p0, Lcom/android/server/policy/GlobalActions;->mDialog:Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;

    if-eqz v3, :cond_1

    const/4 v0, 0x0

    :goto_0
    iget-object v3, p0, Lcom/android/server/policy/GlobalActions;->mAdapter:Lcom/android/server/policy/GlobalActions$MyAdapter;

    invoke-virtual {v3}, Lcom/android/server/policy/GlobalActions$MyAdapter;->getCount()I

    move-result v3

    if-ge v0, v3, :cond_1

    invoke-direct {p0}, Lcom/android/server/policy/GlobalActions;->isPortrait()Z

    move-result v3

    invoke-direct {p0, v3}, Lcom/android/server/policy/GlobalActions;->findTargetView(Z)Landroid/view/ViewGroup;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    const v3, 0x1020006

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ne v3, p1, :cond_0

    iput v0, p0, Lcom/android/server/policy/GlobalActions;->mSelectedItemNumbyBixby:I

    return-object v2

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-object v4
.end method

.method private getAssistAction()Lcom/android/server/policy/GlobalActions$Action;
    .locals 3

    new-instance v0, Lcom/android/server/policy/GlobalActions$35;

    const v1, 0x108035d

    const v2, 0x1040152

    invoke-direct {v0, p0, v1, v2}, Lcom/android/server/policy/GlobalActions$35;-><init>(Lcom/android/server/policy/GlobalActions;II)V

    return-object v0
.end method

.method private getCurrentUser()Landroid/content/pm/UserInfo;
    .locals 2

    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/app/IActivityManager;->getCurrentUser()Landroid/content/pm/UserInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    :catch_0
    move-exception v0

    const/4 v1, 0x0

    return-object v1
.end method

.method private getLockdownAction()Lcom/android/server/policy/GlobalActions$Action;
    .locals 3

    new-instance v0, Lcom/android/server/policy/GlobalActions$37;

    const v1, 0x108002f

    const v2, 0x1040154

    invoke-direct {v0, p0, v1, v2}, Lcom/android/server/policy/GlobalActions$37;-><init>(Lcom/android/server/policy/GlobalActions;II)V

    return-object v0
.end method

.method private getMarginStartAtCenter(I)I
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/policy/GlobalActions;->mIsInitWidthHeight:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/server/policy/GlobalActions;->initDialogWidthHeight()V

    :cond_0
    iget v0, p0, Lcom/android/server/policy/GlobalActions;->mDisplaywidth:I

    sub-int/2addr v0, p1

    div-int/lit8 v0, v0, 0x2

    return v0
.end method

.method private getMarginTopAtCenter(I)I
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/policy/GlobalActions;->mIsInitWidthHeight:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/server/policy/GlobalActions;->initDialogWidthHeight()V

    :cond_0
    iget v0, p0, Lcom/android/server/policy/GlobalActions;->mDisplayheight:I

    sub-int/2addr v0, p1

    div-int/lit8 v0, v0, 0x2

    return v0
.end method

.method private getPhoneId(I)I
    .locals 2

    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result v0

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->isValidPhoneId(I)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    return v1

    :cond_0
    return v0
.end method

.method private getPhoneStateListener(II)Landroid/telephony/PhoneStateListener;
    .locals 1

    new-instance v0, Lcom/android/server/policy/GlobalActions$41;

    invoke-direct {v0, p0, p1}, Lcom/android/server/policy/GlobalActions$41;-><init>(Lcom/android/server/policy/GlobalActions;I)V

    return-object v0
.end method

.method private getSettingsAction()Lcom/android/server/policy/GlobalActions$Action;
    .locals 3

    new-instance v0, Lcom/android/server/policy/GlobalActions$34;

    const v1, 0x10804c2

    const v2, 0x1040151

    invoke-direct {v0, p0, v1, v2}, Lcom/android/server/policy/GlobalActions$34;-><init>(Lcom/android/server/policy/GlobalActions;II)V

    return-object v0
.end method

.method private getVoiceAssistAction()Lcom/android/server/policy/GlobalActions$Action;
    .locals 3

    new-instance v0, Lcom/android/server/policy/GlobalActions$36;

    const v1, 0x10804d9

    const v2, 0x1040153

    invoke-direct {v0, p0, v1, v2}, Lcom/android/server/policy/GlobalActions$36;-><init>(Lcom/android/server/policy/GlobalActions;II)V

    return-object v0
.end method

.method private handleShow()V
    .locals 9

    const/4 v8, 0x4

    const/4 v7, -0x1

    const/4 v3, 0x1

    const/4 v4, 0x0

    const-string/jumbo v2, "GlobalActions"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "handleShow() : call createDialog(), sIsCoverOpen = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-boolean v6, Lcom/android/server/policy/GlobalActions;->sIsCoverOpen:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/server/policy/GlobalActions;->awakenIfNecessary()V

    invoke-direct {p0}, Lcom/android/server/policy/GlobalActions;->isCoverOpened()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-direct {p0}, Lcom/android/server/policy/GlobalActions;->isMobileKeyboard()Z

    move-result v2

    :goto_0
    sput-boolean v2, Lcom/android/server/policy/GlobalActions;->sIsCoverOpen:Z

    invoke-direct {p0}, Lcom/android/server/policy/GlobalActions;->isClearCover()Z

    move-result v2

    sput-boolean v2, Lcom/android/server/policy/GlobalActions;->sIsClearCover:Z

    sget-boolean v2, Lcom/android/server/policy/GlobalActions;->sIsCoverOpen:Z

    if-nez v2, :cond_0

    sget-boolean v2, Lcom/android/server/policy/GlobalActions;->sIsClearCover:Z

    if-eqz v2, :cond_3

    :cond_0
    move v2, v4

    :goto_1
    sput-boolean v2, Lcom/android/server/policy/GlobalActions;->sIsSViewCoverClosed:Z

    iget-object v2, p0, Lcom/android/server/policy/GlobalActions;->mCoverState:Lcom/samsung/android/cover/CoverState;

    if-eqz v2, :cond_1

    sget-boolean v2, Lcom/android/server/policy/GlobalActions;->sIsCoverOpen:Z

    if-eqz v2, :cond_4

    :cond_1
    invoke-direct {p0}, Lcom/android/server/policy/GlobalActions;->createDialog()Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/policy/GlobalActions;->mDialog:Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;

    iget-object v2, p0, Lcom/android/server/policy/GlobalActions;->mDialog:Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;

    if-nez v2, :cond_5

    const-string/jumbo v2, "GlobalActions"

    const-string/jumbo v3, "Can not show dialog as it is not well formed properly"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    move v2, v3

    goto :goto_0

    :cond_3
    move v2, v3

    goto :goto_1

    :cond_4
    iget-object v2, p0, Lcom/android/server/policy/GlobalActions;->mCoverState:Lcom/samsung/android/cover/CoverState;

    invoke-virtual {v2}, Lcom/samsung/android/cover/CoverState;->getModel()I

    move-result v2

    const/4 v5, 0x3

    if-ne v2, v5, :cond_1

    const-string/jumbo v2, "GlobalActions"

    const-string/jumbo v3, "Device is not supported in Global Actions in main view, show panel in cocktail bar"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/server/policy/GlobalActions;->notifyStateToCocktailBar()V

    return-void

    :cond_5
    iget-object v2, p0, Lcom/android/server/policy/GlobalActions;->mDialog:Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;

    invoke-virtual {v2}, Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/policy/GlobalActions;->mWindow:Landroid/view/Window;

    invoke-direct {p0}, Lcom/android/server/policy/GlobalActions;->prepareDialog()V

    iget-object v2, p0, Lcom/android/server/policy/GlobalActions;->mAdapter:Lcom/android/server/policy/GlobalActions$MyAdapter;

    invoke-virtual {v2}, Lcom/android/server/policy/GlobalActions$MyAdapter;->getCount()I

    move-result v2

    if-ne v2, v3, :cond_6

    iget-object v2, p0, Lcom/android/server/policy/GlobalActions;->mAdapter:Lcom/android/server/policy/GlobalActions$MyAdapter;

    invoke-virtual {v2, v4}, Lcom/android/server/policy/GlobalActions$MyAdapter;->getItem(I)Lcom/android/server/policy/GlobalActions$Action;

    move-result-object v2

    instance-of v2, v2, Lcom/android/server/policy/GlobalActions$SinglePressAction;

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/android/server/policy/GlobalActions;->mAdapter:Lcom/android/server/policy/GlobalActions$MyAdapter;

    invoke-virtual {v2, v4}, Lcom/android/server/policy/GlobalActions$MyAdapter;->getItem(I)Lcom/android/server/policy/GlobalActions$Action;

    move-result-object v2

    instance-of v2, v2, Lcom/android/server/policy/GlobalActions$LongPressAction;

    if-eqz v2, :cond_b

    :cond_6
    iget-object v2, p0, Lcom/android/server/policy/GlobalActions;->mWindow:Landroid/view/Window;

    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    sget-object v2, Lcom/android/server/policy/GlobalActions;->sResource:Landroid/content/res/Resources;

    const v5, 0x104013d

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    iput-boolean v3, v0, Landroid/view/WindowManager$LayoutParams;->hasManualSurfaceInsets:Z

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit8 v2, v2, 0x2

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v3, 0x20000

    or-int/2addr v2, v3

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v3, 0x1000000

    or-int/2addr v2, v3

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit16 v2, v2, 0x400

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit16 v2, v2, 0x100

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    sget-boolean v2, Lcom/android/server/policy/GlobalActions;->sIsCoverOpen:Z

    if-nez v2, :cond_7

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit16 v2, v2, 0x100

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    :cond_7
    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit8 v2, v2, 0x2

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    const v2, 0x3e99999a    # 0.3f

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->samsungFlags:I

    or-int/lit8 v2, v2, 0x40

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->samsungFlags:I

    iget-object v2, p0, Lcom/android/server/policy/GlobalActions;->mWindow:Landroid/view/Window;

    invoke-virtual {v2, v7, v7}, Landroid/view/Window;->setLayout(II)V

    iget-object v2, p0, Lcom/android/server/policy/GlobalActions;->mWindow:Landroid/view/Window;

    new-instance v3, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v3, v4}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v2, v3}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v2, p0, Lcom/android/server/policy/GlobalActions;->mWindow:Landroid/view/Window;

    invoke-virtual {v2, v4}, Landroid/view/Window;->setWindowAnimations(I)V

    iget-object v2, p0, Lcom/android/server/policy/GlobalActions;->mWindow:Landroid/view/Window;

    invoke-virtual {v2, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    iget-boolean v2, p0, Lcom/android/server/policy/GlobalActions;->mShowNavigationBar:Z

    if-eqz v2, :cond_9

    const v1, 0x10200

    sget-boolean v2, Lcom/android/server/policy/GlobalActions;->sIsNeedWhiteTheme:Z

    if-nez v2, :cond_8

    or-int/lit8 v1, v1, 0x10

    :cond_8
    iget-object v2, p0, Lcom/android/server/policy/GlobalActions;->mWindow:Landroid/view/Window;

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    :cond_9
    iget-object v2, p0, Lcom/android/server/policy/GlobalActions;->mDialog:Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;

    invoke-virtual {v2}, Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;->show()V

    invoke-direct {p0}, Lcom/android/server/policy/GlobalActions;->isPortrait()Z

    move-result v2

    if-eqz v2, :cond_c

    iget-object v2, p0, Lcom/android/server/policy/GlobalActions;->mScrollview:Landroid/widget/ScrollView;

    invoke-virtual {v2, v8}, Landroid/widget/ScrollView;->setVisibility(I)V

    :cond_a
    :goto_2
    invoke-direct {p0}, Lcom/android/server/policy/GlobalActions;->hideQuickpanelBackground()V

    :goto_3
    return-void

    :cond_b
    iget-object v2, p0, Lcom/android/server/policy/GlobalActions;->mAdapter:Lcom/android/server/policy/GlobalActions$MyAdapter;

    invoke-virtual {v2, v4}, Lcom/android/server/policy/GlobalActions$MyAdapter;->getItem(I)Lcom/android/server/policy/GlobalActions$Action;

    move-result-object v2

    check-cast v2, Lcom/android/server/policy/GlobalActions$SinglePressAction;

    invoke-virtual {v2}, Lcom/android/server/policy/GlobalActions$SinglePressAction;->onPress()V

    goto :goto_3

    :cond_c
    iget-object v2, p0, Lcom/android/server/policy/GlobalActions;->mHorizontalScrollView:Landroid/widget/HorizontalScrollView;

    if-eqz v2, :cond_a

    iget-object v2, p0, Lcom/android/server/policy/GlobalActions;->mHorizontalScrollView:Landroid/widget/HorizontalScrollView;

    invoke-virtual {v2, v8}, Landroid/widget/HorizontalScrollView;->setVisibility(I)V

    goto :goto_2
.end method

.method private hasTSafeLock()Z
    .locals 8

    const/4 v7, 0x0

    const/4 v2, 0x0

    const-string/jumbo v0, "com.skt.t_smart_charge"

    :try_start_0
    iget-object v4, p0, Lcom/android/server/policy/GlobalActions;->mPackageManager:Landroid/content/pm/PackageManager;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/server/policy/GlobalActions;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string/jumbo v5, "com.skt.t_smart_charge"

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    if-eqz v3, :cond_1

    const/4 v2, 0x1

    :cond_0
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0

    :catch_0
    move-exception v1

    return v7
.end method

.method private hideConfirmDialog(ZZ)V
    .locals 12

    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mDialog:Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/policy/GlobalActions;->findTargetView(Z)Landroid/view/ViewGroup;

    move-result-object v11

    const/4 v7, 0x0

    :goto_0
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mAdapter:Lcom/android/server/policy/GlobalActions$MyAdapter;

    invoke-virtual {v0}, Lcom/android/server/policy/GlobalActions$MyAdapter;->getCount()I

    move-result v0

    if-ge v7, v0, :cond_7

    invoke-virtual {v11, v7}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mSelectedItemView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const v0, 0x10203dc

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/FrameLayout;

    const/4 v0, 0x1

    invoke-virtual {v8, v0}, Landroid/widget/FrameLayout;->setClickable(Z)V

    const/4 v0, 0x1

    invoke-virtual {v8, v0}, Landroid/widget/FrameLayout;->setFocusable(Z)V

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Landroid/view/View;->setAlpha(F)V

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    :cond_1
    :goto_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_2
    const v0, 0x10203da

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    invoke-virtual {v10}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    const-string/jumbo v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const/4 v0, 0x0

    invoke-virtual {v10, v0}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_3
    if-eqz p1, :cond_5

    new-instance v9, Landroid/widget/LinearLayout$LayoutParams;

    iget v0, p0, Lcom/android/server/policy/GlobalActions;->mItemMaxWidth:I

    const/4 v2, -0x2

    invoke-direct {v9, v0, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mAdapter:Lcom/android/server/policy/GlobalActions$MyAdapter;

    invoke-virtual {v0}, Lcom/android/server/policy/GlobalActions$MyAdapter;->getCount()I

    move-result v0

    add-int/lit8 v2, v7, 0x1

    sub-int/2addr v0, v2

    if-eqz v0, :cond_4

    iget v0, p0, Lcom/android/server/policy/GlobalActions;->mItemDivider:I

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v9, v2, v3, v4, v0}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    :cond_4
    invoke-virtual {v1, v9}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/high16 v2, -0x3b860000    # -1000.0f

    iget v3, p0, Lcom/android/server/policy/GlobalActions;->mCurrentPositionY:F

    const/high16 v4, 0x3f800000    # 1.0f

    const/16 v5, 0x12c

    const/4 v6, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/server/policy/GlobalActions;->doAnimation(Landroid/view/View;FFFIZ)V

    goto :goto_1

    :cond_5
    new-instance v9, Landroid/widget/LinearLayout$LayoutParams;

    iget v0, p0, Lcom/android/server/policy/GlobalActions;->mItemWidthLand:I

    const/4 v2, -0x2

    invoke-direct {v9, v0, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mAdapter:Lcom/android/server/policy/GlobalActions$MyAdapter;

    invoke-virtual {v0}, Lcom/android/server/policy/GlobalActions$MyAdapter;->getCount()I

    move-result v0

    add-int/lit8 v2, v7, 0x1

    sub-int/2addr v0, v2

    if-eqz v0, :cond_6

    iget v0, p0, Lcom/android/server/policy/GlobalActions;->mItemDividerLand:I

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v9, v2, v3, v0, v4}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    :cond_6
    invoke-virtual {v1, v9}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget v2, p0, Lcom/android/server/policy/GlobalActions;->mCurrentPositionXLand:F

    iget v3, p0, Lcom/android/server/policy/GlobalActions;->mCurrentPositionYLand:F

    const/high16 v4, 0x3f800000    # 1.0f

    const/16 v5, 0x12c

    const/4 v6, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/server/policy/GlobalActions;->doAnimation(Landroid/view/View;FFFIZ)V

    goto :goto_1

    :cond_7
    sget-boolean v0, Lcom/android/server/policy/GlobalActions;->sAccessibiltyShortcutEnabled:Z

    if-nez v0, :cond_8

    if-eqz p2, :cond_9

    :cond_8
    :goto_2
    return-void

    :cond_9
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/policy/GlobalActions;->sIsConfirmDlg:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/policy/GlobalActions;->mIsSafeModeEnabled:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/policy/GlobalActions;->mIsConfirmPoweroffonClearCover:Z

    goto :goto_2
.end method

.method private hideDecorView()V
    .locals 6

    iget-object v2, p0, Lcom/android/server/policy/GlobalActions;->mDialog:Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/server/policy/GlobalActions;->mDialog:Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;

    invoke-virtual {v2}, Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    move-object v1, v0

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    const-wide/16 v4, 0xc8

    invoke-virtual {v2, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    new-instance v3, Lcom/android/server/policy/GlobalActions$42;

    invoke-direct {v3, p0, v0}, Lcom/android/server/policy/GlobalActions$42;-><init>(Lcom/android/server/policy/GlobalActions;Landroid/view/View;)V

    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewPropertyAnimator;->start()V

    :cond_0
    return-void
.end method

.method private hideQuickpanelBackground()V
    .locals 1

    const-string/jumbo v0, "GlobalActions"

    invoke-direct {p0, v0}, Lcom/android/server/policy/GlobalActions;->hideQuickpanelBackground(Ljava/lang/String;)V

    return-void
.end method

.method private hideQuickpanelBackground(Ljava/lang/String;)V
    .locals 4

    sget-boolean v1, Lcom/android/server/policy/GlobalActions;->sIsCoverOpen:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    if-nez v1, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/android/server/policy/GlobalActions;->mHandler:Landroid/os/Handler;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/policy/GlobalActions;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x4

    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/policy/GlobalActions;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0xc8

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    sget-object v1, Lcom/android/server/policy/GlobalActions;->sSCoverRequestStatus:Ljava/util/HashSet;

    invoke-virtual {v1, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private initCoverManager(Landroid/content/Context;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/samsung/android/cover/CoverManager;

    invoke-direct {v0, p1}, Lcom/samsung/android/cover/CoverManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/policy/GlobalActions;->mCoverManager:Lcom/samsung/android/cover/CoverManager;

    const-string/jumbo v0, "GlobalActions"

    const-string/jumbo v1, "initCoverManager"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mCoverManager:Lcom/samsung/android/cover/CoverManager;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mCoverStateListener:Lcom/samsung/android/cover/CoverManager$StateListener;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mCoverManager:Lcom/samsung/android/cover/CoverManager;

    iget-object v1, p0, Lcom/android/server/policy/GlobalActions;->mCoverStateListener:Lcom/samsung/android/cover/CoverManager$StateListener;

    invoke-virtual {v0, v1}, Lcom/samsung/android/cover/CoverManager;->registerListener(Lcom/samsung/android/cover/CoverManager$StateListener;)V

    const-string/jumbo v0, "GlobalActions"

    const-string/jumbo v1, "mCoverManager.registerListener"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method

.method private initDialogWidthHeight()V
    .locals 1

    invoke-direct {p0}, Lcom/android/server/policy/GlobalActions;->isPortrait()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mDialog:Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;

    invoke-virtual {v0}, Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/android/server/policy/GlobalActions;->mDisplaywidth:I

    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mDialog:Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;

    invoke-virtual {v0}, Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/android/server/policy/GlobalActions;->mDisplayheight:I

    :goto_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/policy/GlobalActions;->mIsInitWidthHeight:Z

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mDialog:Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;

    invoke-virtual {v0}, Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/android/server/policy/GlobalActions;->mDisplaywidth:I

    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mDialog:Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;

    invoke-virtual {v0}, Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/android/server/policy/GlobalActions;->mDisplayheight:I

    goto :goto_0
.end method

.method private initValueForShow()V
    .locals 8

    const v7, 0x1080a33

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    iget-object v1, p0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sput-object v1, Lcom/android/server/policy/GlobalActions;->sResource:Landroid/content/res/Resources;

    sget-object v1, Lcom/android/server/policy/GlobalActions;->sResource:Landroid/content/res/Resources;

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->densityDpi:I

    sput v1, Lcom/android/server/policy/GlobalActions;->sCurrentDensity:I

    sget-object v1, Lcom/android/server/policy/GlobalActions;->sResource:Landroid/content/res/Resources;

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v1, p0, Lcom/android/server/policy/GlobalActions;->mDisplaywidth:I

    sget-object v1, Lcom/android/server/policy/GlobalActions;->sResource:Landroid/content/res/Resources;

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v1, p0, Lcom/android/server/policy/GlobalActions;->mDisplayheight:I

    sget-object v1, Lcom/android/server/policy/GlobalActions;->sResource:Landroid/content/res/Resources;

    const v2, 0x1050235

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/server/policy/GlobalActions;->mItemHeight:I

    sget-object v1, Lcom/android/server/policy/GlobalActions;->sResource:Landroid/content/res/Resources;

    const v2, 0x1050237

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/server/policy/GlobalActions;->mItemWidth:I

    sget-object v1, Lcom/android/server/policy/GlobalActions;->sResource:Landroid/content/res/Resources;

    const v2, 0x1050238

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/server/policy/GlobalActions;->mItemWidthLand:I

    sget-object v1, Lcom/android/server/policy/GlobalActions;->sResource:Landroid/content/res/Resources;

    const v2, 0x105023b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/server/policy/GlobalActions;->mItemMaxWidth:I

    sget-object v1, Lcom/android/server/policy/GlobalActions;->sResource:Landroid/content/res/Resources;

    const v2, 0x105023c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/server/policy/GlobalActions;->mItemMaxWidthLand:I

    sget-object v1, Lcom/android/server/policy/GlobalActions;->sResource:Landroid/content/res/Resources;

    const v2, 0x105023d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/server/policy/GlobalActions;->mItemMaxWidthForClearCoverClosed:I

    sget-object v1, Lcom/android/server/policy/GlobalActions;->sResource:Landroid/content/res/Resources;

    const v2, 0x105023e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/server/policy/GlobalActions;->mItemMaxWidthForSViewCoverClosed:I

    sget-object v1, Lcom/android/server/policy/GlobalActions;->sResource:Landroid/content/res/Resources;

    const v2, 0x1050243

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/server/policy/GlobalActions;->mItemPortraitDivider:I

    sget-object v1, Lcom/android/server/policy/GlobalActions;->sResource:Landroid/content/res/Resources;

    const v2, 0x1050244

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/server/policy/GlobalActions;->mItemPortraitDividerOverFour:I

    sget-object v1, Lcom/android/server/policy/GlobalActions;->sResource:Landroid/content/res/Resources;

    const v2, 0x1050246

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/server/policy/GlobalActions;->mItemPortraitDividerSViewCover:I

    sget-object v1, Lcom/android/server/policy/GlobalActions;->sResource:Landroid/content/res/Resources;

    const v2, 0x1050245

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/server/policy/GlobalActions;->mItemLandscapeDivider:I

    sget-object v1, Lcom/android/server/policy/GlobalActions;->sResource:Landroid/content/res/Resources;

    const v2, 0x105023f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/server/policy/GlobalActions;->mBottomViewSingleItemWidth:I

    sget-object v1, Lcom/android/server/policy/GlobalActions;->sResource:Landroid/content/res/Resources;

    const v2, 0x1050240

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/server/policy/GlobalActions;->mBottomViewSingleCancelItemWidth:I

    sget-object v1, Lcom/android/server/policy/GlobalActions;->sResource:Landroid/content/res/Resources;

    const v2, 0x1050242

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/server/policy/GlobalActions;->mBottomViewSingleItemHeight:I

    sget-object v1, Lcom/android/server/policy/GlobalActions;->sResource:Landroid/content/res/Resources;

    const v2, 0x1050248

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/server/policy/GlobalActions;->mMessageViewPaddingTop:I

    sget-object v1, Lcom/android/server/policy/GlobalActions;->sResource:Landroid/content/res/Resources;

    const v2, 0x1050249

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/server/policy/GlobalActions;->mMessageViewPaddingBottom:I

    sget-object v1, Lcom/android/server/policy/GlobalActions;->sResource:Landroid/content/res/Resources;

    const v2, 0x1060167

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/android/server/policy/GlobalActions;->sBugReportStatusViewColorWhite:I

    sget-object v1, Lcom/android/server/policy/GlobalActions;->sResource:Landroid/content/res/Resources;

    const v2, 0x106016c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    sput v1, Lcom/android/server/policy/GlobalActions;->sMessageViewColorWhite:I

    sget-object v1, Lcom/android/server/policy/GlobalActions;->sResource:Landroid/content/res/Resources;

    const v2, 0x106016d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    sput v1, Lcom/android/server/policy/GlobalActions;->sStatusViewColorWhite:I

    iget-object v1, p0, Lcom/android/server/policy/GlobalActions;->mDialog:Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/policy/GlobalActions;->mDialog:Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;

    invoke-virtual {v1}, Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    const/16 v2, 0x8

    if-eq v1, v2, :cond_0

    iput v4, p0, Lcom/android/server/policy/GlobalActions;->mIsSelectedItemTagForSecure:I

    :cond_0
    iput v4, p0, Lcom/android/server/policy/GlobalActions;->mIsSelectedItemTagForBixby:I

    const/4 v1, -0x1

    iput v1, p0, Lcom/android/server/policy/GlobalActions;->mSelectedItemNumbyBixby:I

    iput-boolean v4, p0, Lcom/android/server/policy/GlobalActions;->mIsConfirmPoweroffonClearCover:Z

    iput-boolean v4, p0, Lcom/android/server/policy/GlobalActions;->mIsInitWidthHeight:Z

    iget-object v1, p0, Lcom/android/server/policy/GlobalActions;->mCoverManager:Lcom/samsung/android/cover/CoverManager;

    invoke-virtual {v1}, Lcom/samsung/android/cover/CoverManager;->getCoverState()Lcom/samsung/android/cover/CoverState;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/policy/GlobalActions;->mCoverState:Lcom/samsung/android/cover/CoverState;

    sget-boolean v1, Lcom/android/server/policy/GlobalActions;->sSupportBlackWhiteTheme:Z

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    invoke-direct {p0, v1}, Lcom/android/server/policy/GlobalActions;->captureScreen(Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/policy/GlobalActions;->mCurrentBG:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/android/server/policy/GlobalActions;->mCurrentBG:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_1

    invoke-direct {p0}, Lcom/android/server/policy/GlobalActions;->isPortrait()Z

    move-result v1

    if-eqz v1, :cond_2

    new-instance v0, Landroid/graphics/Rect;

    iget v1, p0, Lcom/android/server/policy/GlobalActions;->mDisplaywidth:I

    iget v2, p0, Lcom/android/server/policy/GlobalActions;->mDisplayheight:I

    invoke-direct {v0, v4, v4, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    :goto_0
    iget-object v1, p0, Lcom/android/server/policy/GlobalActions;->mCurrentBG:Landroid/graphics/Bitmap;

    invoke-static {v1, v0}, Lcom/android/server/policy/GlobalActions$ExtractColor;->getColorHSV(Landroid/graphics/Bitmap;Landroid/graphics/Rect;)[F

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/policy/GlobalActions;->mColorHSV:[F

    iget-object v1, p0, Lcom/android/server/policy/GlobalActions;->mColorHSV:[F

    if-eqz v1, :cond_1

    const-string/jumbo v1, "GlobalActions"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Whole Area Hue="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/policy/GlobalActions;->mColorHSV:[F

    aget v3, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", Saturation="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/policy/GlobalActions;->mColorHSV:[F

    aget v3, v3, v5

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", Brightness="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/policy/GlobalActions;->mColorHSV:[F

    aget v3, v3, v6

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/server/policy/GlobalActions;->mColorHSV:[F

    aget v1, v1, v5

    const v2, 0x3e99999a    # 0.3f

    cmpg-float v1, v1, v2

    if-gez v1, :cond_3

    iget-object v1, p0, Lcom/android/server/policy/GlobalActions;->mColorHSV:[F

    aget v1, v1, v6

    const v2, 0x3f6147ae    # 0.88f

    cmpl-float v1, v1, v2

    if-ltz v1, :cond_3

    sput-boolean v5, Lcom/android/server/policy/GlobalActions;->sIsNeedWhiteTheme:Z

    :cond_1
    :goto_1
    const v1, 0x1080a2d

    iput v1, p0, Lcom/android/server/policy/GlobalActions;->mPowerOffIconResId:I

    const v1, 0x1080a2c

    iput v1, p0, Lcom/android/server/policy/GlobalActions;->mConfirmPowerOffIconResId:I

    const v1, 0x1080a31

    iput v1, p0, Lcom/android/server/policy/GlobalActions;->mRestartIconResId:I

    const v1, 0x1080a30

    iput v1, p0, Lcom/android/server/policy/GlobalActions;->mConfirmRestartIconResId:I

    const v1, 0x1080a28

    iput v1, p0, Lcom/android/server/policy/GlobalActions;->mEmergencyIconResId:I

    iput v7, p0, Lcom/android/server/policy/GlobalActions;->mSafeModeIconResId:I

    :goto_2
    iget-object v1, p0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "desktopmode"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/desktopmode/SemDesktopModeManager;

    iput-object v1, p0, Lcom/android/server/policy/GlobalActions;->mDesktopModeManager:Lcom/samsung/android/desktopmode/SemDesktopModeManager;

    new-instance v1, Lcom/android/server/policy/GlobalActions$14;

    invoke-direct {v1, p0}, Lcom/android/server/policy/GlobalActions$14;-><init>(Lcom/android/server/policy/GlobalActions;)V

    iput-object v1, p0, Lcom/android/server/policy/GlobalActions;->mDesktopModeEventListener:Lcom/samsung/android/desktopmode/SemDesktopModeManager$EventListener;

    iget-object v1, p0, Lcom/android/server/policy/GlobalActions;->mDesktopModeManager:Lcom/samsung/android/desktopmode/SemDesktopModeManager;

    iget-object v1, p0, Lcom/android/server/policy/GlobalActions;->mDesktopModeEventListener:Lcom/samsung/android/desktopmode/SemDesktopModeManager$EventListener;

    invoke-static {v1}, Lcom/samsung/android/desktopmode/SemDesktopModeManager;->registerListener(Lcom/samsung/android/desktopmode/SemDesktopModeManager$EventListener;)V

    return-void

    :cond_2
    new-instance v0, Landroid/graphics/Rect;

    iget v1, p0, Lcom/android/server/policy/GlobalActions;->mDisplayheight:I

    iget v2, p0, Lcom/android/server/policy/GlobalActions;->mDisplaywidth:I

    invoke-direct {v0, v4, v4, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    goto/16 :goto_0

    :cond_3
    sput-boolean v4, Lcom/android/server/policy/GlobalActions;->sIsNeedWhiteTheme:Z

    goto :goto_1

    :cond_4
    const v1, 0x1080a2a

    iput v1, p0, Lcom/android/server/policy/GlobalActions;->mPowerOffIconResId:I

    const v1, 0x1080a2b

    iput v1, p0, Lcom/android/server/policy/GlobalActions;->mConfirmPowerOffIconResId:I

    const v1, 0x1080a2e

    iput v1, p0, Lcom/android/server/policy/GlobalActions;->mRestartIconResId:I

    const v1, 0x1080a2f

    iput v1, p0, Lcom/android/server/policy/GlobalActions;->mConfirmRestartIconResId:I

    const v1, 0x1080a27

    iput v1, p0, Lcom/android/server/policy/GlobalActions;->mEmergencyIconResId:I

    iput v7, p0, Lcom/android/server/policy/GlobalActions;->mSafeModeIconResId:I

    goto :goto_2
.end method

.method private insertLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    sget-boolean v2, Lcom/android/server/policy/GlobalActions;->SURVEY_LOG:Z

    if-eqz v2, :cond_0

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string/jumbo v2, "app_id"

    invoke-virtual {v0, v2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "feature"

    invoke-virtual {v0, v2, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "extra"

    invoke-virtual {v0, v2, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "com.samsung.android.providers.context.log.action.USE_APP_FEATURE_SURVEY"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v2, "data"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string/jumbo v2, "com.samsung.android.providers.context"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    sget-boolean v2, Lcom/android/server/policy/GlobalActions;->SAFE_DEBUG:Z

    if-eqz v2, :cond_0

    const-string/jumbo v2, "GlobalActions"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "insetLog feature="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " ,extra="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method private isActionAvailable(I)Z
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x1

    iget-boolean v0, p0, Lcom/android/server/policy/GlobalActions;->mIsSecureKeyguard:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/policy/GlobalActions;->mIsSafeModeEnabled:Z

    if-eqz v0, :cond_6

    :cond_0
    invoke-direct {p0}, Lcom/android/server/policy/GlobalActions;->isSKTCarrierLockPlusEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/android/server/policy/GlobalActions;->isFMMlocked()Z

    move-result v0

    if-eqz v0, :cond_9

    :cond_1
    iget v0, p0, Lcom/android/server/policy/GlobalActions;->mPowerOffIconResId:I

    if-eq p1, v0, :cond_2

    iget v0, p0, Lcom/android/server/policy/GlobalActions;->mRestartIconResId:I

    if-ne p1, v0, :cond_8

    :cond_2
    iget v0, p0, Lcom/android/server/policy/GlobalActions;->mPowerOffIconResId:I

    if-ne p1, v0, :cond_3

    iget-boolean v0, p0, Lcom/android/server/policy/GlobalActions;->mIsSafeModeEnabled:Z

    if-eqz v0, :cond_c

    :cond_3
    iget v0, p0, Lcom/android/server/policy/GlobalActions;->mRestartIconResId:I

    if-eq p1, v0, :cond_4

    iget-boolean v0, p0, Lcom/android/server/policy/GlobalActions;->mIsSafeModeEnabled:Z

    if-eqz v0, :cond_d

    :cond_4
    const v0, 0x10407ec

    invoke-direct {p0, v0, v3}, Lcom/android/server/policy/GlobalActions;->showToast(II)V

    :cond_5
    :goto_0
    return v4

    :cond_6
    iget v0, p0, Lcom/android/server/policy/GlobalActions;->mPowerOffIconResId:I

    if-ne p1, v0, :cond_0

    invoke-direct {p0}, Lcom/android/server/policy/GlobalActions;->isTSafeLock()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/server/policy/GlobalActions;->mPowerOffIconResId:I

    if-ne p1, v0, :cond_7

    const v0, 0x10407e8

    invoke-direct {p0, v0, v3}, Lcom/android/server/policy/GlobalActions;->showToast(II)V

    :cond_7
    return v4

    :cond_8
    iget v0, p0, Lcom/android/server/policy/GlobalActions;->mEmergencyIconResId:I

    if-eq p1, v0, :cond_2

    :cond_9
    iget v0, p0, Lcom/android/server/policy/GlobalActions;->mPowerOffIconResId:I

    if-eq p1, v0, :cond_a

    iget v0, p0, Lcom/android/server/policy/GlobalActions;->mRestartIconResId:I

    if-ne p1, v0, :cond_e

    :cond_a
    const-string/jumbo v0, "content://com.sec.knox.provider/RestrictionPolicy3"

    const-string/jumbo v1, "isPowerOffAllowed"

    iget-object v2, p0, Lcom/android/server/policy/GlobalActions;->mTrueStringArray:[Ljava/lang/String;

    invoke-direct {p0, v0, v1, v2}, Lcom/android/server/policy/GlobalActions;->isEDM(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "false"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    sget-boolean v0, Lcom/android/server/policy/GlobalActions;->SAFE_DEBUG:Z

    if-eqz v0, :cond_b

    const-string/jumbo v0, "GlobalActions"

    const-string/jumbo v1, "power or restart : restricted by MDM "

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b
    return v4

    :cond_c
    const v0, 0x10407eb

    invoke-direct {p0, v0, v3}, Lcom/android/server/policy/GlobalActions;->showToast(II)V

    goto :goto_0

    :cond_d
    iget v0, p0, Lcom/android/server/policy/GlobalActions;->mEmergencyIconResId:I

    if-ne p1, v0, :cond_5

    const v0, 0x10407ed

    invoke-direct {p0, v0, v3}, Lcom/android/server/policy/GlobalActions;->showToast(II)V

    goto :goto_0

    :cond_e
    return v3
.end method

.method private isCHINA()Z
    .locals 2

    const-string/jumbo v0, "CMCC"

    sget-object v1, Lcom/android/server/policy/GlobalActions;->SALES_CODE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "CHM"

    sget-object v1, Lcom/android/server/policy/GlobalActions;->SALES_CODE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private isClearCover()Z
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/server/policy/GlobalActions;->mCoverState:Lcom/samsung/android/cover/CoverState;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/policy/GlobalActions;->mCoverState:Lcom/samsung/android/cover/CoverState;

    invoke-virtual {v1}, Lcom/samsung/android/cover/CoverState;->getType()I

    move-result v1

    const/16 v2, 0x8

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private isCoverOpened()Z
    .locals 3

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mCoverManager:Lcom/samsung/android/cover/CoverManager;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mCoverState:Lcom/samsung/android/cover/CoverState;

    if-eqz v0, :cond_0

    const-string/jumbo v0, "GlobalActions"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mCoverManager.getCoverState() : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/policy/GlobalActions;->mCoverState:Lcom/samsung/android/cover/CoverState;

    invoke-virtual {v2}, Lcom/samsung/android/cover/CoverState;->getSwitchState()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mCoverState:Lcom/samsung/android/cover/CoverState;

    invoke-virtual {v0}, Lcom/samsung/android/cover/CoverState;->getSwitchState()Z

    move-result v0

    return v0

    :cond_0
    const-string/jumbo v0, "GlobalActions"

    const-string/jumbo v1, "state is null "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_1
    const-string/jumbo v0, "GlobalActions"

    const-string/jumbo v1, "mCoverManager is null "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2
.end method

.method private isCurrentUserOwner()Z
    .locals 2

    invoke-direct {p0}, Lcom/android/server/policy/GlobalActions;->getCurrentUser()Landroid/content/pm/UserInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isPrimary()Z

    move-result v1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private isEDM(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    const/4 v2, 0x0

    const-string/jumbo v7, ""

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v6, 0x0

    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    if-nez p3, :cond_3

    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    move-object v3, p2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    :cond_0
    :goto_0
    if-eqz v6, :cond_2

    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v6, p2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v7

    :cond_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_2
    return-object v7

    :cond_3
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    move-object v3, p2

    move-object v4, p3

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method private isFMMlocked()Z
    .locals 2

    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->isFMMLockEnabled(I)Z

    move-result v0

    return v0
.end method

.method private isGlobalActionConfirming()Z
    .locals 2

    sget-object v0, Lcom/android/server/policy/GlobalActions;->sIsConfirmingGuard:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-boolean v1, Lcom/android/server/policy/GlobalActions;->sIsConfirming:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private isInAirplanModefromSettings()Z
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "airplane_mode_on"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private isIntEDM(Ljava/lang/String;Ljava/lang/String;)I
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0, p1, p2, v2}, Lcom/android/server/policy/GlobalActions;->isEDM(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    return v0

    :cond_0
    invoke-direct {p0, p1, p2, v2}, Lcom/android/server/policy/GlobalActions;->isEDM(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method private isMobileKeyboard()Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/server/policy/GlobalActions;->mCoverState:Lcom/samsung/android/cover/CoverState;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/server/policy/GlobalActions;->mCoverState:Lcom/samsung/android/cover/CoverState;

    invoke-virtual {v2}, Lcom/samsung/android/cover/CoverState;->getType()I

    move-result v2

    const/16 v3, 0x9

    if-eq v2, v3, :cond_0

    iget-object v2, p0, Lcom/android/server/policy/GlobalActions;->mCoverState:Lcom/samsung/android/cover/CoverState;

    invoke-virtual {v2}, Lcom/samsung/android/cover/CoverState;->getType()I

    move-result v2

    const/16 v3, 0xa

    if-ne v2, v3, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method private isMultiSim()Z
    .locals 2

    const/4 v0, 0x1

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v1

    if-le v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isPortrait()Z
    .locals 2

    const/4 v0, 0x1

    sget-object v1, Lcom/android/server/policy/GlobalActions;->sResource:Landroid/content/res/Resources;

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isRMMlocked()Z
    .locals 2

    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->isRMMLockEnabled(I)Z

    move-result v0

    return v0
.end method

.method private isSBikeInstalled(Ljava/lang/String;)Z
    .locals 4

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/android/server/policy/GlobalActions;->mPackageManager:Landroid/content/pm/PackageManager;

    const/4 v3, 0x1

    invoke-virtual {v2, p1, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isSKTCarrierLockPlusEnabled()Z
    .locals 2

    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->isCarrierLockPlusEnabled(I)Z

    move-result v0

    return v0
.end method

.method private isSecurePoweroff(I)Z
    .locals 4

    const/4 v3, 0x1

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mKeyguardManager:Landroid/app/KeyguardManager;

    invoke-virtual {v0}, Landroid/app/KeyguardManager;->isDeviceSecure()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mKeyguardManager:Landroid/app/KeyguardManager;

    invoke-virtual {v0}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    move-result v0

    :goto_0
    iput-boolean v0, p0, Lcom/android/server/policy/GlobalActions;->mIsSecureKeyguard:Z

    iget v0, p0, Lcom/android/server/policy/GlobalActions;->mPowerOffIconResId:I

    if-ne p1, v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/policy/GlobalActions;->mIsSafeModeEnabled:Z

    if-eqz v0, :cond_2

    :cond_0
    return v1

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Lcom/android/server/policy/GlobalActions;->isSimLock()Z

    move-result v0

    if-eqz v0, :cond_3

    return v1

    :cond_3
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v2, "lock_function_val"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_4

    return v1

    :cond_4
    invoke-direct {p0}, Lcom/android/server/policy/GlobalActions;->isRMMlocked()Z

    move-result v0

    if-eqz v0, :cond_5

    return v1

    :cond_5
    iget-boolean v0, p0, Lcom/android/server/policy/GlobalActions;->mIsSecureKeyguard:Z

    if-eqz v0, :cond_6

    sget-boolean v0, Lcom/android/server/policy/GlobalActions;->sIsCoverOpen:Z

    if-eqz v0, :cond_7

    :cond_6
    iget-boolean v0, p0, Lcom/android/server/policy/GlobalActions;->mIsSecureKeyguard:Z

    if-eqz v0, :cond_8

    const-string/jumbo v0, "GlobalActions"

    const-string/jumbo v1, "isFMMlocked true"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput p1, p0, Lcom/android/server/policy/GlobalActions;->mIsSelectedItemTagForSecure:I

    invoke-direct {p0}, Lcom/android/server/policy/GlobalActions;->sendBendedPendingIntent()V

    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return v3

    :cond_7
    const v0, 0x10407ee

    invoke-direct {p0, v0, v3}, Lcom/android/server/policy/GlobalActions;->showToast(II)V

    iput-boolean v3, p0, Lcom/android/server/policy/GlobalActions;->mIsConfirmPoweroffonClearCover:Z

    return v3

    :cond_8
    return v1
.end method

.method private isSimCardInserted(I)Z
    .locals 8

    const/4 v4, 0x1

    const/4 v5, 0x0

    const-string/jumbo v6, "ril.MSIMM"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v6, "1"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    if-nez p1, :cond_0

    return v5

    :cond_0
    return v4

    :cond_1
    const-string/jumbo v6, "ril.ICC_TYPE"

    const-string/jumbo v7, "0,0"

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v6, ","

    invoke-virtual {v1, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v6, v0

    const/4 v7, 0x2

    if-eq v6, v7, :cond_2

    return v5

    :cond_2
    const/4 v2, 0x0

    packed-switch p1, :pswitch_data_0

    :goto_0
    if-eqz v2, :cond_3

    const-string/jumbo v6, ""

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    :cond_3
    return v5

    :pswitch_0
    aget-object v2, v0, v5

    goto :goto_0

    :pswitch_1
    aget-object v2, v0, v4

    goto :goto_0

    :cond_4
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    if-eqz v6, :cond_5

    :goto_1
    return v4

    :cond_5
    move v4, v5

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private isSimLock()Z
    .locals 10

    const/16 v9, 0xa

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v3, 0x0

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v5

    invoke-virtual {v5}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v2

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v5

    invoke-virtual {v5}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v1

    new-array v0, v1, [I

    invoke-direct {p0}, Lcom/android/server/policy/GlobalActions;->isMultiSim()Z

    move-result v5

    if-eqz v5, :cond_3

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v1, :cond_5

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/telephony/TelephonyManager;->getSimState(I)I

    move-result v5

    aput v5, v0, v4

    aget v5, v0, v4

    if-eq v5, v7, :cond_0

    aget v5, v0, v4

    if-ne v5, v8, :cond_1

    :cond_0
    move v5, v6

    :goto_1
    or-int/2addr v3, v5

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    aget v5, v0, v4

    if-ne v5, v9, :cond_2

    move v5, v6

    goto :goto_1

    :cond_2
    const/4 v5, 0x0

    goto :goto_1

    :cond_3
    if-eq v2, v7, :cond_4

    if-ne v2, v8, :cond_6

    :cond_4
    const/4 v3, 0x1

    :cond_5
    :goto_2
    return v3

    :cond_6
    if-ne v2, v9, :cond_7

    const/4 v3, 0x1

    goto :goto_2

    :cond_7
    const/4 v3, 0x0

    goto :goto_2
.end method

.method private isSimReady()Z
    .locals 9

    const/4 v8, 0x1

    const/4 v7, 0x0

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v5

    invoke-virtual {v5}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v0

    const-string/jumbo v5, "ro.config.donot_nosim"

    invoke-static {v5, v7}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v0, :cond_0

    if-ne v0, v8, :cond_1

    :cond_0
    const/4 v4, 0x1

    :goto_0
    if-nez v3, :cond_2

    if-eqz v4, :cond_2

    new-instance v2, Landroid/app/AlertDialog$Builder;

    iget-object v5, p0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    invoke-direct {v2, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v5, 0x1040812

    invoke-virtual {v2, v5}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    const v5, 0x1040813

    invoke-virtual {v2, v5}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v2, v7}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    const v5, 0x104000a

    const/4 v6, 0x0

    invoke-virtual {v2, v5, v6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v5

    const/16 v6, 0x96b

    invoke-virtual {v5, v6}, Landroid/view/Window;->setType(I)V

    new-instance v5, Lcom/android/server/policy/GlobalActions$40;

    invoke-direct {v5, p0}, Lcom/android/server/policy/GlobalActions$40;-><init>(Lcom/android/server/policy/GlobalActions;)V

    invoke-virtual {v1, v5}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    invoke-virtual {v1, v8}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    iput-object v1, p0, Lcom/android/server/policy/GlobalActions;->mConfirmDialog:Landroid/app/AlertDialog;

    sget-object v5, Lcom/android/server/policy/GlobalActions;->sIsConfirmingGuard:Ljava/lang/Object;

    monitor-enter v5

    const/4 v6, 0x1

    :try_start_0
    sput-boolean v6, Lcom/android/server/policy/GlobalActions;->sIsConfirming:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v5

    return v7

    :cond_1
    const/4 v4, 0x0

    goto :goto_0

    :catchall_0
    move-exception v6

    monitor-exit v5

    throw v6

    :cond_2
    return v8
.end method

.method private isSingleActionItem(Landroid/view/View;)Z
    .locals 4

    const/4 v3, 0x1

    const v2, 0x1020006

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget v2, p0, Lcom/android/server/policy/GlobalActions;->mPowerOffIconResId:I

    if-eq v1, v2, :cond_0

    iget v2, p0, Lcom/android/server/policy/GlobalActions;->mRestartIconResId:I

    if-ne v1, v2, :cond_1

    :cond_0
    move v2, v3

    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private isTSafeLock()Z
    .locals 5

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    if-nez v3, :cond_0

    return v2

    :cond_0
    invoke-direct {p0}, Lcom/android/server/policy/GlobalActions;->hasTSafeLock()Z

    move-result v3

    if-nez v3, :cond_1

    return v2

    :cond_1
    const-string/jumbo v0, "off_menu_setting"

    iget-object v3, p0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "off_menu_setting"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v1, :cond_2

    :goto_0
    return v1

    :cond_2
    move v1, v2

    goto :goto_0
.end method

.method private isTablet()Z
    .locals 2

    const-string/jumbo v1, "ro.build.characteristics"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string/jumbo v1, "tablet"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isTouchInside(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 9

    const/4 v8, 0x1

    const/4 v7, 0x0

    const/4 v6, 0x0

    const/4 v4, 0x2

    new-array v0, v4, [I

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v4

    aget v5, v0, v7

    int-to-float v5, v5

    sub-float v2, v4, v5

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v4

    aget v5, v0, v8

    int-to-float v5, v5

    sub-float v3, v4, v5

    sget-boolean v4, Lcom/android/server/policy/GlobalActions;->sIsConfirmDlg:Z

    if-eqz v4, :cond_0

    const v1, 0x3fa66666    # 1.3f

    :cond_0
    cmpg-float v4, v2, v6

    if-ltz v4, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v4, v1

    cmpl-float v4, v2, v4

    if-lez v4, :cond_2

    :cond_1
    return v7

    :cond_2
    cmpg-float v4, v3, v6

    if-ltz v4, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v4, v1

    cmpl-float v4, v3, v4

    if-gtz v4, :cond_1

    return v8
.end method

.method private isUSA()Z
    .locals 3

    const/4 v2, 0x1

    const-string/jumbo v0, "USA"

    sget-object v1, Lcom/android/server/policy/GlobalActions;->COUNTRY_CODE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return v2

    :cond_0
    const-string/jumbo v0, "VZW"

    sget-object v1, Lcom/android/server/policy/GlobalActions;->SALES_CODE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "ATT"

    sget-object v1, Lcom/android/server/policy/GlobalActions;->SALES_CODE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "TMB"

    sget-object v1, Lcom/android/server/policy/GlobalActions;->SALES_CODE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "SPR"

    sget-object v1, Lcom/android/server/policy/GlobalActions;->SALES_CODE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "VMU"

    sget-object v1, Lcom/android/server/policy/GlobalActions;->SALES_CODE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "MTR"

    sget-object v1, Lcom/android/server/policy/GlobalActions;->SALES_CODE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "USC"

    sget-object v1, Lcom/android/server/policy/GlobalActions;->SALES_CODE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "BST"

    sget-object v1, Lcom/android/server/policy/GlobalActions;->SALES_CODE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "XAS"

    sget-object v1, Lcom/android/server/policy/GlobalActions;->SALES_CODE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "LRA"

    sget-object v1, Lcom/android/server/policy/GlobalActions;->SALES_CODE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "SPT"

    sget-object v1, Lcom/android/server/policy/GlobalActions;->SALES_CODE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "CSP"

    sget-object v1, Lcom/android/server/policy/GlobalActions;->SALES_CODE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "AIO"

    sget-object v1, Lcom/android/server/policy/GlobalActions;->SALES_CODE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "TFN"

    sget-object v1, Lcom/android/server/policy/GlobalActions;->SALES_CODE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "CRI"

    sget-object v1, Lcom/android/server/policy/GlobalActions;->SALES_CODE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    return v2

    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method private isVoiceCapable()Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->isVoiceCapable()Z

    move-result v0

    return v0
.end method

.method private makeActionsItemView(Lcom/android/server/policy/GlobalActions$Action;IZ)Landroid/view/View;
    .locals 24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v19

    const/16 v20, 0x0

    const/16 v21, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    move-object/from16 v2, v20

    move-object/from16 v3, v21

    move-object/from16 v4, v19

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/android/server/policy/GlobalActions$Action;->create(Landroid/content/Context;Landroid/view/View;Landroid/view/ViewGroup;Landroid/view/LayoutInflater;)Landroid/view/View;

    move-result-object v15

    const v18, 0x1020006

    move/from16 v0, v18

    invoke-virtual {v15, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    const v18, 0x10203dd

    move/from16 v0, v18

    invoke-virtual {v15, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ImageView;

    const v18, 0x10203de

    move/from16 v0, v18

    invoke-virtual {v15, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/ImageView;

    const v18, 0x10203dc

    move/from16 v0, v18

    invoke-virtual {v15, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/FrameLayout;

    invoke-virtual {v7}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/Integer;

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Integer;->intValue()I

    move-result v10

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/policy/GlobalActions;->mPowerOffIconResId:I

    move/from16 v18, v0

    move/from16 v0, v18

    if-ne v10, v0, :cond_5

    sget-object v18, Lcom/android/server/policy/GlobalActions;->sResource:Landroid/content/res/Resources;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/policy/GlobalActions;->mConfirmPowerOffIconResId:I

    move/from16 v19, v0

    sget v20, Lcom/android/server/policy/GlobalActions;->sCurrentDensity:I

    invoke-virtual/range {v18 .. v20}, Landroid/content/res/Resources;->getDrawableForDensity(II)Landroid/graphics/drawable/Drawable;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v8, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-virtual {v8, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-virtual {v8, v0}, Landroid/widget/ImageView;->setAlpha(F)V

    sget-object v18, Lcom/android/server/policy/GlobalActions;->sResource:Landroid/content/res/Resources;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/policy/GlobalActions;->mSafeModeIconResId:I

    move/from16 v19, v0

    sget v20, Lcom/android/server/policy/GlobalActions;->sCurrentDensity:I

    invoke-virtual/range {v18 .. v20}, Landroid/content/res/Resources;->getDrawableForDensity(II)Landroid/graphics/drawable/Drawable;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v9, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-virtual {v9, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-virtual {v9, v0}, Landroid/widget/ImageView;->setAlpha(F)V

    :cond_0
    :goto_0
    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-virtual {v15, v0}, Landroid/view/View;->setAlpha(F)V

    if-eqz p3, :cond_6

    new-instance v12, Landroid/widget/LinearLayout$LayoutParams;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/policy/GlobalActions;->mItemMaxWidth:I

    move/from16 v18, v0

    const/16 v19, -0x2

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-direct {v12, v0, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/GlobalActions;->mAdapter:Lcom/android/server/policy/GlobalActions$MyAdapter;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/server/policy/GlobalActions$MyAdapter;->getCount()I

    move-result v18

    add-int/lit8 v19, p2, 0x1

    sub-int v18, v18, v19

    if-eqz v18, :cond_1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/policy/GlobalActions;->mItemDivider:I

    move/from16 v18, v0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    move/from16 v0, v19

    move/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, v18

    invoke-virtual {v12, v0, v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    :cond_1
    :goto_1
    invoke-virtual {v15, v12}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v15}, Landroid/view/View;->bringToFront()V

    move-object/from16 v17, v15

    if-eqz v11, :cond_4

    if-eqz p3, :cond_2

    const v18, 0x10203da

    move/from16 v0, v18

    invoke-virtual {v15, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v16

    check-cast v16, Landroid/widget/TextView;

    sget-boolean v18, Lcom/android/server/policy/GlobalActions;->sIsCoverOpen:Z

    if-nez v18, :cond_2

    sget-boolean v18, Lcom/android/server/policy/GlobalActions;->sIsClearCover:Z

    if-eqz v18, :cond_7

    :cond_2
    :goto_2
    const/16 v18, 0x1

    move/from16 v0, v18

    invoke-virtual {v11, v0}, Landroid/widget/FrameLayout;->setClickable(Z)V

    const/16 v18, 0x1

    move/from16 v0, v18

    invoke-virtual {v11, v0}, Landroid/widget/FrameLayout;->setFocusable(Z)V

    new-instance v18, Lcom/android/server/policy/GlobalActions$19;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v3, p3

    invoke-direct {v0, v1, v2, v15, v3}, Lcom/android/server/policy/GlobalActions$19;-><init>(Lcom/android/server/policy/GlobalActions;Lcom/android/server/policy/GlobalActions$Action;Landroid/view/View;Z)V

    move-object/from16 v0, v18

    invoke-virtual {v11, v0}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v18, Lcom/android/server/policy/GlobalActions$20;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v3, p3

    invoke-direct {v0, v1, v2, v15, v3}, Lcom/android/server/policy/GlobalActions$20;-><init>(Lcom/android/server/policy/GlobalActions;Lcom/android/server/policy/GlobalActions$Action;Landroid/view/View;Z)V

    move-object/from16 v0, v18

    invoke-virtual {v11, v0}, Landroid/widget/FrameLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    new-instance v18, Lcom/android/server/policy/GlobalActions$21;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v3, p3

    invoke-direct {v0, v1, v2, v15, v3}, Lcom/android/server/policy/GlobalActions$21;-><init>(Lcom/android/server/policy/GlobalActions;Lcom/android/server/policy/GlobalActions$Action;Landroid/view/View;Z)V

    move-object/from16 v0, v18

    invoke-virtual {v11, v0}, Landroid/widget/FrameLayout;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    const-string/jumbo v19, "accessibility"

    invoke-virtual/range {v18 .. v19}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/accessibility/AccessibilityManager;

    if-eqz v6, :cond_8

    const/16 v18, 0x20

    move/from16 v0, v18

    invoke-virtual {v6, v0}, Landroid/view/accessibility/AccessibilityManager;->semIsAccessibilityServiceEnabled(I)Z

    move-result v18

    if-nez v18, :cond_3

    const/16 v18, 0x10

    move/from16 v0, v18

    invoke-virtual {v6, v0}, Landroid/view/accessibility/AccessibilityManager;->semIsAccessibilityServiceEnabled(I)Z

    move-result v18

    if-eqz v18, :cond_8

    :cond_3
    const-string/jumbo v18, "GlobalActions"

    const-string/jumbo v19, "AccessibilityManager Enabled"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v18, Lcom/android/server/policy/GlobalActions;->sResource:Landroid/content/res/Resources;

    sget v19, Lcom/android/server/policy/GlobalActions;->sCurrentDensity:I

    const v20, 0x108033d

    move-object/from16 v0, v18

    move/from16 v1, v20

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getDrawableForDensity(II)Landroid/graphics/drawable/Drawable;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v11, v0}, Landroid/widget/FrameLayout;->setForeground(Landroid/graphics/drawable/Drawable;)V

    :goto_3
    invoke-virtual {v15}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v18

    const/high16 v19, 0x3f800000    # 1.0f

    invoke-virtual/range {v18 .. v19}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v18

    const-wide/16 v20, 0x258

    move-object/from16 v0, v18

    move-wide/from16 v1, v20

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v18

    new-instance v19, Landroid/view/animation/PathInterpolator;

    const v20, 0x3ebd70a4    # 0.37f

    const/16 v21, 0x0

    const v22, 0x3e99999a    # 0.3f

    const/high16 v23, 0x3f800000    # 1.0f

    invoke-direct/range {v19 .. v23}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual/range {v18 .. v19}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/view/ViewPropertyAnimator;->start()V

    :cond_4
    return-object v15

    :cond_5
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/policy/GlobalActions;->mRestartIconResId:I

    move/from16 v18, v0

    move/from16 v0, v18

    if-ne v10, v0, :cond_0

    sget-object v18, Lcom/android/server/policy/GlobalActions;->sResource:Landroid/content/res/Resources;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/policy/GlobalActions;->mConfirmRestartIconResId:I

    move/from16 v19, v0

    sget v20, Lcom/android/server/policy/GlobalActions;->sCurrentDensity:I

    invoke-virtual/range {v18 .. v20}, Landroid/content/res/Resources;->getDrawableForDensity(II)Landroid/graphics/drawable/Drawable;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v8, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-virtual {v8, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-virtual {v8, v0}, Landroid/widget/ImageView;->setAlpha(F)V

    goto/16 :goto_0

    :cond_6
    new-instance v12, Landroid/widget/LinearLayout$LayoutParams;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/policy/GlobalActions;->mItemWidthLand:I

    move/from16 v18, v0

    const/16 v19, -0x2

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-direct {v12, v0, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/GlobalActions;->mAdapter:Lcom/android/server/policy/GlobalActions$MyAdapter;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/server/policy/GlobalActions$MyAdapter;->getCount()I

    move-result v18

    add-int/lit8 v19, p2, 0x1

    sub-int v18, v18, v19

    if-eqz v18, :cond_1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/policy/GlobalActions;->mItemDividerLand:I

    move/from16 v18, v0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    move/from16 v0, v19

    move/from16 v1, v20

    move/from16 v2, v18

    move/from16 v3, v21

    invoke-virtual {v12, v0, v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    goto/16 :goto_1

    :cond_7
    invoke-virtual {v11}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v13

    check-cast v13, Landroid/widget/LinearLayout$LayoutParams;

    iget v14, v13, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    if-eqz v16, :cond_2

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/policy/GlobalActions;->SUPPORT_DATAMODE_ACTION:Z

    move/from16 v18, v0

    if-nez v18, :cond_2

    move-object/from16 v0, v16

    invoke-virtual {v0, v14}, Landroid/widget/TextView;->setHeight(I)V

    goto/16 :goto_2

    :cond_8
    const-string/jumbo v18, "GlobalActions"

    const-string/jumbo v19, "AccessibilityManager Disabled"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v18, Lcom/android/server/policy/GlobalActions;->sResource:Landroid/content/res/Resources;

    sget v19, Lcom/android/server/policy/GlobalActions;->sCurrentDensity:I

    const v20, 0x108033e

    move-object/from16 v0, v18

    move/from16 v1, v20

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getDrawableForDensity(II)Landroid/graphics/drawable/Drawable;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v11, v0}, Landroid/widget/FrameLayout;->setForeground(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_3
.end method

.method private makeActionsItems()V
    .locals 14

    const v13, 0x1040970

    const/16 v12, 0x32

    const/4 v11, 0x1

    const/4 v10, 0x0

    const/4 v9, -0x1

    new-instance v0, Lcom/android/server/policy/GlobalActions$SilentModeAction;

    iget-object v1, p0, Lcom/android/server/policy/GlobalActions;->mAudioManager:Landroid/media/AudioManager;

    iget-object v2, p0, Lcom/android/server/policy/GlobalActions;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, v1, v2}, Lcom/android/server/policy/GlobalActions$SilentModeAction;-><init>(Landroid/media/AudioManager;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/server/policy/GlobalActions;->mSilentModeAction:Lcom/android/server/policy/GlobalActions$SilentModeAction;

    new-instance v0, Lcom/android/server/policy/GlobalActions$22;

    sget-boolean v1, Lcom/android/server/policy/GlobalActions;->sSupportBlackWhiteTheme:Z

    if-eqz v1, :cond_1

    const v2, 0x1080a26

    :goto_0
    sget-boolean v1, Lcom/android/server/policy/GlobalActions;->sSupportBlackWhiteTheme:Z

    if-eqz v1, :cond_2

    const v3, 0x1080a26

    :goto_1
    const v4, 0x104081b

    const v5, 0x104081c

    const v6, 0x104081d

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/server/policy/GlobalActions$22;-><init>(Lcom/android/server/policy/GlobalActions;IIIII)V

    iput-object v0, p0, Lcom/android/server/policy/GlobalActions;->mDataModeAction:Lcom/android/server/policy/GlobalActions$ToggleAction;

    new-instance v0, Lcom/android/server/policy/GlobalActions$23;

    const v2, 0x1080a34

    const v3, 0x1080a35

    const v4, 0x104014e

    const v5, 0x104014f

    const v6, 0x1040150

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/server/policy/GlobalActions$23;-><init>(Lcom/android/server/policy/GlobalActions;IIIII)V

    iput-object v0, p0, Lcom/android/server/policy/GlobalActions;->mAirplaneModeAction:Lcom/android/server/policy/GlobalActions$ToggleAction;

    invoke-direct {p0}, Lcom/android/server/policy/GlobalActions;->onAirplaneModeChanged()V

    new-instance v0, Lcom/android/server/policy/GlobalActions$24;

    const v2, 0x1080a3c

    const v3, 0x1080a3b

    const v4, 0x10407f2

    const v5, 0x10407f3

    const v6, 0x10407f4

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/server/policy/GlobalActions$24;-><init>(Lcom/android/server/policy/GlobalActions;IIIII)V

    iput-object v0, p0, Lcom/android/server/policy/GlobalActions;->mSubScreenAction:Lcom/android/server/policy/GlobalActions$ToggleAction;

    new-instance v0, Lcom/android/server/policy/GlobalActions$25;

    sget-boolean v1, Lcom/android/server/policy/GlobalActions;->sSupportBlackWhiteTheme:Z

    if-eqz v1, :cond_3

    const v2, 0x1080a28

    :goto_2
    sget-boolean v1, Lcom/android/server/policy/GlobalActions;->sSupportBlackWhiteTheme:Z

    if-eqz v1, :cond_4

    const v3, 0x1080a28

    :goto_3
    const v4, 0x1040807

    const v5, 0x1040805

    const v6, 0x1040806

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/server/policy/GlobalActions$25;-><init>(Lcom/android/server/policy/GlobalActions;IIIII)V

    iput-object v0, p0, Lcom/android/server/policy/GlobalActions;->mEmergencyAction:Lcom/android/server/policy/GlobalActions$ToggleAction;

    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/server/policy/GlobalActions;->mProKioskExitAlertDialogBuilder:Landroid/app/AlertDialog$Builder;

    sget-object v0, Lcom/android/server/policy/GlobalActions;->mProKioskExitAlertDialogBuilder:Landroid/app/AlertDialog$Builder;

    const v1, 0x1040972

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    sget-object v0, Lcom/android/server/policy/GlobalActions;->mProKioskExitAlertDialogBuilder:Landroid/app/AlertDialog$Builder;

    const v1, 0x1040973

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    new-instance v7, Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    invoke-direct {v7, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v7, v11}, Landroid/widget/LinearLayout;->setOrientation(I)V

    new-instance v8, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v8, v9, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v8, v12, v10, v12, v10}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    new-instance v0, Landroid/widget/EditText;

    iget-object v1, p0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/server/policy/GlobalActions;->mPasscodeEditText:Landroid/widget/EditText;

    sget-object v0, Lcom/android/server/policy/GlobalActions;->mPasscodeEditText:Landroid/widget/EditText;

    const/16 v1, 0x81

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setInputType(I)V

    sget-object v0, Lcom/android/server/policy/GlobalActions;->mPasscodeEditText:Landroid/widget/EditText;

    invoke-static {}, Landroid/text/method/PasswordTransformationMethod;->getInstance()Landroid/text/method/PasswordTransformationMethod;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    sget-object v0, Lcom/android/server/policy/GlobalActions;->mPasscodeEditText:Landroid/widget/EditText;

    invoke-virtual {v0, v11}, Landroid/widget/EditText;->setGravity(I)V

    sget-object v0, Lcom/android/server/policy/GlobalActions;->mPasscodeEditText:Landroid/widget/EditText;

    invoke-virtual {v7, v0, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    sget-object v0, Lcom/android/server/policy/GlobalActions;->mProKioskExitAlertDialogBuilder:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0, v7}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    sget-object v0, Lcom/android/server/policy/GlobalActions;->mProKioskExitAlertDialogBuilder:Landroid/app/AlertDialog$Builder;

    new-instance v1, Lcom/android/server/policy/GlobalActions$26;

    invoke-direct {v1, p0}, Lcom/android/server/policy/GlobalActions$26;-><init>(Lcom/android/server/policy/GlobalActions;)V

    const v2, 0x104000a

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    sget-object v0, Lcom/android/server/policy/GlobalActions;->mProKioskExitAlertDialogBuilder:Landroid/app/AlertDialog$Builder;

    new-instance v1, Lcom/android/server/policy/GlobalActions$27;

    invoke-direct {v1, p0}, Lcom/android/server/policy/GlobalActions$27;-><init>(Lcom/android/server/policy/GlobalActions;)V

    const/high16 v2, 0x1040000

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    new-instance v0, Lcom/android/server/policy/GlobalActions$28;

    sget-boolean v1, Lcom/android/server/policy/GlobalActions;->sSupportBlackWhiteTheme:Z

    if-eqz v1, :cond_5

    const v2, 0x1080401

    :goto_4
    sget-boolean v1, Lcom/android/server/policy/GlobalActions;->sSupportBlackWhiteTheme:Z

    if-eqz v1, :cond_6

    const v3, 0x1080401

    :goto_5
    const v4, 0x104096f

    move-object v1, p0

    move v5, v13

    move v6, v13

    invoke-direct/range {v0 .. v6}, Lcom/android/server/policy/GlobalActions$28;-><init>(Lcom/android/server/policy/GlobalActions;IIIII)V

    iput-object v0, p0, Lcom/android/server/policy/GlobalActions;->mProKioskAction:Lcom/android/server/policy/GlobalActions$ToggleAction;

    new-instance v1, Lcom/android/server/policy/GlobalActions$29;

    sget-boolean v0, Lcom/android/server/policy/GlobalActions;->sSupportBlackWhiteTheme:Z

    if-eqz v0, :cond_7

    const v0, 0x1080a31

    :goto_6
    const v2, 0x1040730

    invoke-direct {v1, p0, v0, v2}, Lcom/android/server/policy/GlobalActions$29;-><init>(Lcom/android/server/policy/GlobalActions;II)V

    iput-object v1, p0, Lcom/android/server/policy/GlobalActions;->mRestartAction:Lcom/android/server/policy/GlobalActions$SinglePressAction;

    new-instance v4, Lcom/android/server/policy/GlobalActions$49;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "tw_ic_do_rebootrecovery"

    const-string v2, "drawable"

    const-string v3, "android"

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "tw_ic_do_rebootrecovery"

    const-string v2, "string"

    const-string v3, "android"

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    move-object/from16 v0, p0

    invoke-direct {v4, v0, v5, v6}, Lcom/android/server/policy/GlobalActions$49;-><init>(Lcom/android/server/policy/GlobalActions;II)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/server/policy/GlobalActions;->mRebootRecovery:Lcom/android/server/policy/GlobalActions$SinglePressAction;

    new-instance v4, Lcom/android/server/policy/GlobalActions$QuickReboot;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string/jumbo v1, "tw_ic_fast_reboot"

    const-string/jumbo v2, "drawable"

    const-string v3, "android"

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string/jumbo v1, "global_action_fast_reboot"

    const-string/jumbo v2, "string"

    const-string v3, "android"

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    move-object/from16 v0, p0

    invoke-direct {v4, v0, v5, v6}, Lcom/android/server/policy/GlobalActions$QuickReboot;-><init>(Lcom/android/server/policy/GlobalActions;II)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/server/policy/GlobalActions;->mHotReboot:Lcom/android/server/policy/GlobalActions$SinglePressAction;

    new-instance v4, Lcom/android/server/policy/GlobalActions$98;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string/jumbo v1, "tw_ic_lock_screenrec"

    const-string/jumbo v2, "drawable"

    const-string v3, "android"

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string/jumbo v1, "screenrec"

    const-string/jumbo v2, "string"

    const-string v3, "android"

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    move-object/from16 v0, p0

    invoke-direct {v4, v0, v5, v6}, Lcom/android/server/policy/GlobalActions$98;-><init>(Lcom/android/server/policy/GlobalActions;II)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/server/policy/GlobalActions;->mScreenRec:Lcom/android/server/policy/GlobalActions$SinglePressAction;

    new-instance v4, Lcom/android/server/policy/GlobalActions$Screenshot;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string/jumbo v1, "tw_ic_lock_screenshot"

    const-string/jumbo v2, "drawable"

    const-string v3, "android"

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string/jumbo v1, "global_action_screenshot"

    const-string/jumbo v2, "string"

    const-string v3, "android"

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    move-object/from16 v0, p0

    invoke-direct {v4, v0, v5, v6}, Lcom/android/server/policy/GlobalActions$Screenshot;-><init>(Lcom/android/server/policy/GlobalActions;II)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/server/policy/GlobalActions;->mScreenshot:Lcom/android/server/policy/GlobalActions$SinglePressAction;

    new-instance v4, Lcom/android/server/policy/GlobalActions$Flashlight;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string/jumbo v1, "tw_ic_lock_flashlight"

    const-string/jumbo v2, "drawable"

    const-string v3, "android"

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string/jumbo v1, "global_action_flashlight"

    const-string/jumbo v2, "string"

    const-string v3, "android"

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    move-object/from16 v0, p0

    invoke-direct {v4, v0, v5, v6}, Lcom/android/server/policy/GlobalActions$Flashlight;-><init>(Lcom/android/server/policy/GlobalActions;II)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/server/policy/GlobalActions;->mFlashlight:Lcom/android/server/policy/GlobalActions$SinglePressAction;

    iget-boolean v0, p0, Lcom/android/server/policy/GlobalActions;->SUPPORT_BIKEMODE_ACTION:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "com.samsung.android.app.bikemode"

    invoke-direct {p0, v0}, Lcom/android/server/policy/GlobalActions;->isSBikeInstalled(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/android/server/policy/GlobalActions$30;

    sget-boolean v1, Lcom/android/server/policy/GlobalActions;->sSupportBlackWhiteTheme:Z

    if-eqz v1, :cond_8

    const v2, 0x1080a23

    :goto_7
    sget-boolean v1, Lcom/android/server/policy/GlobalActions;->sSupportBlackWhiteTheme:Z

    if-eqz v1, :cond_9

    const v3, 0x1080a23

    :goto_8
    const v4, 0x10408f4

    const v5, 0x10408f5

    const v6, 0x10408f6

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/server/policy/GlobalActions$30;-><init>(Lcom/android/server/policy/GlobalActions;IIIII)V

    iput-object v0, p0, Lcom/android/server/policy/GlobalActions;->mBikeModeAction:Lcom/android/server/policy/GlobalActions$ToggleAction;

    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mBikeModeDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mBikeModeDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mBikeModeDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    :cond_0
    return-void

    :cond_1
    const v2, 0x1080a25

    goto/16 :goto_0

    :cond_2
    const v3, 0x1080a25

    goto/16 :goto_1

    :cond_3
    const v2, 0x1080a27

    goto/16 :goto_2

    :cond_4
    const v3, 0x1080a27

    goto/16 :goto_3

    :cond_5
    const v2, 0x1080400

    goto :goto_4

    :cond_6
    const v3, 0x1080400

    goto :goto_5

    :cond_7
    const v0, 0x1080a2e

    goto :goto_6

    :cond_8
    const v2, 0x1080a36

    goto :goto_7

    :cond_9
    const v3, 0x1080a36

    goto :goto_8
.end method

.method private notifyStateToCocktailBar()V
    .locals 4

    iget-object v2, p0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/samsung/android/cocktailbar/CocktailBarManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/cocktailbar/CocktailBarManager;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string/jumbo v2, "GlobalActions"

    const-string/jumbo v3, "notifyStateToCocktailBar"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v2, "show_global_actions"

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {v1, v0}, Lcom/samsung/android/cocktailbar/CocktailBarManager;->sendExtraDataToCocktailBar(Landroid/os/Bundle;)V

    :cond_0
    return-void
.end method

.method private onAirplaneModeChanged()V
    .locals 2

    iget-boolean v0, p0, Lcom/android/server/policy/GlobalActions;->mHasTelephony:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/android/server/policy/GlobalActions;->isInAirplanModefromSettings()Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/android/server/policy/GlobalActions$ToggleAction$State;->On:Lcom/android/server/policy/GlobalActions$ToggleAction$State;

    :goto_0
    iput-object v0, p0, Lcom/android/server/policy/GlobalActions;->mAirplaneState:Lcom/android/server/policy/GlobalActions$ToggleAction$State;

    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mAirplaneModeAction:Lcom/android/server/policy/GlobalActions$ToggleAction;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mAirplaneModeAction:Lcom/android/server/policy/GlobalActions$ToggleAction;

    iget-object v1, p0, Lcom/android/server/policy/GlobalActions;->mAirplaneState:Lcom/android/server/policy/GlobalActions$ToggleAction$State;

    invoke-virtual {v0, v1}, Lcom/android/server/policy/GlobalActions$ToggleAction;->updateState(Lcom/android/server/policy/GlobalActions$ToggleAction$State;)V

    :cond_1
    return-void

    :cond_2
    sget-object v0, Lcom/android/server/policy/GlobalActions$ToggleAction$State;->Off:Lcom/android/server/policy/GlobalActions$ToggleAction$State;

    goto :goto_0
.end method

.method private onToggleDatamode()V
    .locals 5

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mDataModeAction:Lcom/android/server/policy/GlobalActions$ToggleAction;

    invoke-virtual {v0}, Lcom/android/server/policy/GlobalActions$ToggleAction;->onPressAction()V

    sget-boolean v0, Lcom/android/server/policy/GlobalActions;->sIsCoverOpen:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/android/server/policy/GlobalActions;->sIsSecondConfirming:Z

    if-nez v0, :cond_1

    sget-object v0, Lcom/android/server/policy/GlobalActions;->sIsConfirmingGuard:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    sput-boolean v1, Lcom/android/server/policy/GlobalActions;->sIsConfirming:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    :goto_0
    invoke-direct {p0}, Lcom/android/server/policy/GlobalActions;->clearSCoverRequestStatus()V

    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_0
    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1

    :cond_1
    sput-boolean v4, Lcom/android/server/policy/GlobalActions;->sIsSecondConfirming:Z

    goto :goto_0
.end method

.method private performItemLongClickForSafemode(Lcom/android/server/policy/GlobalActions$Action;Landroid/view/View;Z)V
    .locals 3

    iget-object v1, p0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "user"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    const-string/jumbo v1, "no_safe_boot"

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/policy/GlobalActions;->mIsSafeModeEnabled:Z

    sget-boolean v1, Lcom/android/server/policy/GlobalActions;->sIsConfirmDlg:Z

    if-eqz v1, :cond_1

    invoke-direct {p0, p2}, Lcom/android/server/policy/GlobalActions;->setSafemodeIcon(Landroid/view/View;)V

    :goto_0
    return-void

    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/policy/GlobalActions;->actionClicked(Lcom/android/server/policy/GlobalActions$Action;Landroid/view/View;Z)V

    goto :goto_0
.end method

.method private prepareDialog()V
    .locals 3

    invoke-direct {p0}, Lcom/android/server/policy/GlobalActions;->updateToggleActionState()V

    sget-boolean v1, Lcom/android/server/policy/GlobalActions;->sIsCoverOpen:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/policy/GlobalActions;->mWindow:Landroid/view/Window;

    const/16 v2, 0x96b

    invoke-virtual {v1, v2}, Landroid/view/Window;->setType(I)V

    :goto_0
    iget-boolean v1, p0, Lcom/android/server/policy/GlobalActions;->mShowSilentToggle:Z

    if-eqz v1, :cond_0

    new-instance v0, Landroid/content/IntentFilter;

    const-string/jumbo v1, "android.media.RINGER_MODE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/policy/GlobalActions;->mRingerModeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :cond_0
    invoke-direct {p0}, Lcom/android/server/policy/GlobalActions;->registerSecureLockReceiver()V

    return-void

    :cond_1
    iget-object v1, p0, Lcom/android/server/policy/GlobalActions;->mWindow:Landroid/view/Window;

    const/16 v2, 0x833

    invoke-virtual {v1, v2}, Landroid/view/Window;->setType(I)V

    goto :goto_0
.end method

.method private registerBixbyReceiver()V
    .locals 3

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v1, "com.intent.action.BIXBY_GLOBAL_ACTIONS"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/policy/GlobalActions;->mBixbyReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method private registerPhoneStateListener(Landroid/content/Context;)V
    .locals 9

    const/4 v8, 0x0

    const/4 v7, 0x1

    const/4 v6, 0x0

    const-string/jumbo v3, "phone"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/TelephonyManager;

    iput-object v3, p0, Lcom/android/server/policy/GlobalActions;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v3

    iput v3, p0, Lcom/android/server/policy/GlobalActions;->mPhoneCount:I

    const-string/jumbo v3, "GlobalActions"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "registerPhoneStateListener: sim# "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/server/policy/GlobalActions;->mPhoneCount:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v3, p0, Lcom/android/server/policy/GlobalActions;->mPhoneCount:I

    new-array v3, v3, [Landroid/telephony/PhoneStateListener;

    iput-object v3, p0, Lcom/android/server/policy/GlobalActions;->mMSimPhoneStateListener:[Landroid/telephony/PhoneStateListener;

    iget v3, p0, Lcom/android/server/policy/GlobalActions;->mPhoneCount:I

    new-array v3, v3, [I

    iput-object v3, p0, Lcom/android/server/policy/GlobalActions;->mMSimServiceState:[I

    const/4 v0, 0x0

    :goto_0
    iget v3, p0, Lcom/android/server/policy/GlobalActions;->mPhoneCount:I

    if-ge v0, v3, :cond_4

    iget-object v3, p0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v2

    if-eqz v2, :cond_0

    aget v1, v2, v6

    if-lez v1, :cond_1

    iget-object v3, p0, Lcom/android/server/policy/GlobalActions;->mMSimPhoneStateListener:[Landroid/telephony/PhoneStateListener;

    invoke-direct {p0, v1, v0}, Lcom/android/server/policy/GlobalActions;->getPhoneStateListener(II)Landroid/telephony/PhoneStateListener;

    move-result-object v4

    aput-object v4, v3, v0

    iget-object v3, p0, Lcom/android/server/policy/GlobalActions;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v4, p0, Lcom/android/server/policy/GlobalActions;->mMSimPhoneStateListener:[Landroid/telephony/PhoneStateListener;

    aget-object v4, v4, v0

    invoke-virtual {v3, v4, v7}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    :goto_1
    iget-object v3, p0, Lcom/android/server/policy/GlobalActions;->mMSimServiceState:[I

    aput v6, v3, v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    invoke-direct {p0, v6}, Lcom/android/server/policy/GlobalActions;->isSimCardInserted(I)Z

    move-result v3

    if-nez v3, :cond_2

    invoke-direct {p0, v7}, Lcom/android/server/policy/GlobalActions;->isSimCardInserted(I)Z

    move-result v3

    if-eqz v3, :cond_3

    :cond_2
    iget-object v3, p0, Lcom/android/server/policy/GlobalActions;->mMSimPhoneStateListener:[Landroid/telephony/PhoneStateListener;

    aput-object v8, v3, v0

    goto :goto_1

    :cond_3
    if-nez v0, :cond_2

    iget-object v3, p0, Lcom/android/server/policy/GlobalActions;->mMSimPhoneStateListener:[Landroid/telephony/PhoneStateListener;

    invoke-direct {p0, v1, v0}, Lcom/android/server/policy/GlobalActions;->getPhoneStateListener(II)Landroid/telephony/PhoneStateListener;

    move-result-object v4

    aput-object v4, v3, v0

    iget-object v3, p0, Lcom/android/server/policy/GlobalActions;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v4, p0, Lcom/android/server/policy/GlobalActions;->mMSimPhoneStateListener:[Landroid/telephony/PhoneStateListener;

    aget-object v4, v4, v0

    invoke-virtual {v3, v4, v7}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    goto :goto_1

    :cond_4
    return-void
.end method

.method private registerSecureLockReceiver()V
    .locals 3

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v1, "android.intent.action.SHOW_GLOBAL_ACTIONS"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/policy/GlobalActions;->mSecureLockReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method private restoreQuickpanelBackground()V
    .locals 1

    const-string/jumbo v0, "GlobalActions"

    invoke-direct {p0, v0}, Lcom/android/server/policy/GlobalActions;->restoreQuickpanelBackground(Ljava/lang/String;)V

    return-void
.end method

.method private restoreQuickpanelBackground(Ljava/lang/String;)V
    .locals 3

    const/4 v2, 0x0

    sget-boolean v1, Lcom/android/server/policy/GlobalActions;->sIsCoverOpen:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    if-nez v1, :cond_1

    :cond_0
    return-void

    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.samsung.cover.STATE_CHANGE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "suppressCoverUI"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string/jumbo v1, "miniModeUI"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string/jumbo v1, "sender"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method private sendBendedPendingIntent()V
    .locals 7

    const/4 v6, 0x0

    iget-object v4, p0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    const-string/jumbo v5, "keyguard"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/KeyguardManager;

    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v4, "android.intent.action.SHOW_GLOBAL_ACTIONS"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    const/high16 v5, 0x8000000

    invoke-static {v4, v6, v1, v5}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v4, "afterKeyguardGone"

    invoke-virtual {v0, v4, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string/jumbo v4, "dismissType"

    const-string/jumbo v5, "shutdown"

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v4, "GlobalActions"

    const-string/jumbo v5, "sendBendedPendingIntent"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v2, v3, v0}, Landroid/app/KeyguardManager;->setBendedPendingIntent(Landroid/app/PendingIntent;Landroid/content/Intent;)V

    return-void
.end method

.method private setSafemodeIcon(Landroid/view/View;)V
    .locals 19

    const v14, 0x10203dc

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/FrameLayout;

    const v14, 0x102000b

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/TextView;

    const v14, 0x10203da

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/policy/GlobalActions;->mDescriptionlayout:Landroid/widget/LinearLayout;

    const v15, 0x10203cf

    invoke-virtual {v14, v15}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    const v14, 0x1020006

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    const v14, 0x10203dd

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    const v14, 0x10203de

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    invoke-virtual {v7}, Landroid/widget/ImageView;->getAlpha()F

    move-result v14

    const/high16 v15, 0x3f800000    # 1.0f

    cmpl-float v14, v14, v15

    if-nez v14, :cond_0

    return-void

    :cond_0
    invoke-virtual {v12}, Landroid/widget/TextView;->getHeight()I

    move-result v14

    invoke-virtual {v13}, Landroid/widget/TextView;->getHeight()I

    move-result v15

    add-int/2addr v14, v15

    move-object/from16 v0, p0

    invoke-direct {v0, v8, v14}, Lcom/android/server/policy/GlobalActions;->updateDescViewHeight(Landroid/view/View;I)V

    const-string/jumbo v14, "VZW"

    sget-object v15, Lcom/android/server/policy/GlobalActions;->SALES_CODE:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_1

    const v3, 0x104082a

    :goto_0
    const v14, 0x1040827

    invoke-virtual {v12, v14}, Landroid/widget/TextView;->setText(I)V

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(I)V

    const/high16 v14, 0x3f800000    # 1.0f

    invoke-virtual {v7, v14}, Landroid/widget/ImageView;->setAlpha(F)V

    const-string/jumbo v14, "alpha"

    const/4 v15, 0x0

    const/16 v16, 0xff

    filled-new-array/range {v15 .. v16}, [I

    move-result-object v15

    invoke-static {v7, v14, v15}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v11

    const-string/jumbo v14, "alpha"

    const/16 v15, 0xff

    const/16 v16, 0x0

    filled-new-array/range {v15 .. v16}, [I

    move-result-object v15

    invoke-static {v5, v14, v15}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v9

    const-string/jumbo v14, "alpha"

    const/16 v15, 0xff

    const/16 v16, 0x0

    filled-new-array/range {v15 .. v16}, [I

    move-result-object v15

    invoke-static {v6, v14, v15}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v10

    const-wide/16 v14, 0xc8

    invoke-virtual {v11, v14, v15}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    const-wide/16 v14, 0xc8

    invoke-virtual {v9, v14, v15}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    const-wide/16 v14, 0xc8

    invoke-virtual {v10, v14, v15}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    invoke-virtual {v2, v11}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v14

    invoke-virtual {v14, v9}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v14

    invoke-virtual {v14, v10}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    const-wide/16 v14, 0x12c

    invoke-virtual {v2, v14, v15}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    new-instance v14, Landroid/view/animation/PathInterpolator;

    const v15, 0x3e2e147b    # 0.17f

    const v16, 0x3e2e147b    # 0.17f

    const v17, 0x3e4ccccd    # 0.2f

    const/high16 v18, 0x3f800000    # 1.0f

    invoke-direct/range {v14 .. v18}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {v2, v14}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->start()V

    return-void

    :cond_1
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/android/server/policy/GlobalActions;->mIsTablet:Z

    if-eqz v14, :cond_2

    const v3, 0x1040829

    goto :goto_0

    :cond_2
    const v3, 0x1040828

    goto/16 :goto_0
.end method

.method private showConfirmDialog(Landroid/view/View;ZZ)V
    .locals 15

    move-object/from16 v0, p1

    iput-object v0, p0, Lcom/android/server/policy/GlobalActions;->mSelectedItemView:Landroid/view/View;

    iget-object v1, p0, Lcom/android/server/policy/GlobalActions;->mSelectedItemView:Landroid/view/View;

    const v2, 0x102000b

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/server/policy/GlobalActions;->mSelectedItemView:Landroid/view/View;

    const v2, 0x10203da

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/TextView;

    const/4 v1, 0x2

    new-array v11, v1, [I

    sget-boolean v1, Lcom/android/server/policy/GlobalActions;->sIsClearCover:Z

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/server/policy/GlobalActions;->mSelectedItemView:Landroid/view/View;

    invoke-virtual {v1, v11}, Landroid/view/View;->getLocationOnScreen([I)V

    :goto_0
    if-eqz p3, :cond_4

    iget-object v1, p0, Lcom/android/server/policy/GlobalActions;->mSelectedItemView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    invoke-virtual {v13}, Landroid/widget/TextView;->getHeight()I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {v14}, Landroid/widget/TextView;->getHeight()I

    move-result v2

    add-int/2addr v1, v2

    invoke-direct {p0, v1}, Lcom/android/server/policy/GlobalActions;->getMarginTopAtCenter(I)I

    move-result v1

    int-to-float v9, v1

    const/4 v1, 0x1

    aget v1, v11, v1

    int-to-float v1, v1

    iput v1, p0, Lcom/android/server/policy/GlobalActions;->mCurrentPositionY:F

    iget-object v1, p0, Lcom/android/server/policy/GlobalActions;->mGlobalActionsFrameLayout:Lcom/android/server/policy/globalactions/GlobalActionsFrameLayout;

    iget-object v2, p0, Lcom/android/server/policy/GlobalActions;->mSelectedItemView:Landroid/view/View;

    move/from16 v0, p3

    invoke-virtual {v1, v2, v0}, Lcom/android/server/policy/globalactions/GlobalActionsFrameLayout;->hideAllView(Landroid/view/View;Z)V

    if-eqz p2, :cond_2

    iget-object v2, p0, Lcom/android/server/policy/GlobalActions;->mSelectedItemView:Landroid/view/View;

    const/high16 v3, -0x3b860000    # -1000.0f

    iget v1, p0, Lcom/android/server/policy/GlobalActions;->mCurrentPositionY:F

    sub-float v4, v9, v1

    const v5, 0x3fa66666    # 1.3f

    const/16 v6, 0x12c

    const/4 v7, 0x1

    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Lcom/android/server/policy/GlobalActions;->doAnimation(Landroid/view/View;FFFIZ)V

    :goto_1
    iget v1, p0, Lcom/android/server/policy/GlobalActions;->mCurrentPositionY:F

    iget-object v2, p0, Lcom/android/server/policy/GlobalActions;->mScrollview:Landroid/widget/ScrollView;

    invoke-virtual {v2}, Landroid/widget/ScrollView;->getScrollY()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v1, v2

    iput v1, p0, Lcom/android/server/policy/GlobalActions;->mCurrentPositionY:F

    sget-boolean v1, Lcom/android/server/policy/GlobalActions;->sIsCoverOpen:Z

    if-nez v1, :cond_0

    sget-boolean v1, Lcom/android/server/policy/GlobalActions;->sIsClearCover:Z

    if-eqz v1, :cond_3

    :cond_0
    :goto_2
    const/4 v1, 0x1

    sput-boolean v1, Lcom/android/server/policy/GlobalActions;->sIsConfirmDlg:Z

    return-void

    :cond_1
    iget-object v1, p0, Lcom/android/server/policy/GlobalActions;->mSelectedItemView:Landroid/view/View;

    invoke-virtual {v1, v11}, Landroid/view/View;->getLocationInWindow([I)V

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/android/server/policy/GlobalActions;->mSelectedItemView:Landroid/view/View;

    const/high16 v3, -0x3b860000    # -1000.0f

    iget v1, p0, Lcom/android/server/policy/GlobalActions;->mCurrentPositionY:F

    sub-float v4, v9, v1

    const v5, 0x3fa66666    # 1.3f

    const/4 v6, 0x0

    const/4 v7, 0x1

    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Lcom/android/server/policy/GlobalActions;->doAnimation(Landroid/view/View;FFFIZ)V

    goto :goto_1

    :cond_3
    iget-object v1, p0, Lcom/android/server/policy/GlobalActions;->mLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v10

    check-cast v10, Landroid/widget/FrameLayout$LayoutParams;

    iget v12, v10, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    iget v1, p0, Lcom/android/server/policy/GlobalActions;->mCurrentPositionY:F

    int-to-float v2, v12

    sub-float/2addr v1, v2

    iput v1, p0, Lcom/android/server/policy/GlobalActions;->mCurrentPositionY:F

    goto :goto_2

    :cond_4
    iget v1, p0, Lcom/android/server/policy/GlobalActions;->mItemWidthLand:I

    invoke-direct {p0, v1}, Lcom/android/server/policy/GlobalActions;->getMarginTopAtCenter(I)I

    move-result v1

    int-to-float v8, v1

    iget-object v1, p0, Lcom/android/server/policy/GlobalActions;->mSelectedItemView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    invoke-virtual {v13}, Landroid/widget/TextView;->getHeight()I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {v14}, Landroid/widget/TextView;->getHeight()I

    move-result v2

    add-int/2addr v1, v2

    invoke-direct {p0, v1}, Lcom/android/server/policy/GlobalActions;->getMarginStartAtCenter(I)I

    move-result v1

    int-to-float v9, v1

    const/4 v1, 0x0

    aget v1, v11, v1

    int-to-float v1, v1

    iput v1, p0, Lcom/android/server/policy/GlobalActions;->mCurrentPositionXLand:F

    const/4 v1, 0x1

    aget v1, v11, v1

    int-to-float v1, v1

    iput v1, p0, Lcom/android/server/policy/GlobalActions;->mCurrentPositionYLand:F

    iget-object v1, p0, Lcom/android/server/policy/GlobalActions;->mGlobalActionsFrameLayout:Lcom/android/server/policy/globalactions/GlobalActionsFrameLayout;

    iget-object v2, p0, Lcom/android/server/policy/GlobalActions;->mSelectedItemView:Landroid/view/View;

    move/from16 v0, p3

    invoke-virtual {v1, v2, v0}, Lcom/android/server/policy/globalactions/GlobalActionsFrameLayout;->hideAllView(Landroid/view/View;Z)V

    if-eqz p2, :cond_5

    iget-object v2, p0, Lcom/android/server/policy/GlobalActions;->mSelectedItemView:Landroid/view/View;

    iget v1, p0, Lcom/android/server/policy/GlobalActions;->mCurrentPositionXLand:F

    sub-float v3, v8, v1

    iget v1, p0, Lcom/android/server/policy/GlobalActions;->mCurrentPositionYLand:F

    sub-float v4, v9, v1

    const v5, 0x3fa66666    # 1.3f

    const/16 v6, 0x12c

    const/4 v7, 0x1

    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Lcom/android/server/policy/GlobalActions;->doAnimation(Landroid/view/View;FFFIZ)V

    :goto_3
    iget v1, p0, Lcom/android/server/policy/GlobalActions;->mCurrentPositionXLand:F

    iget-object v2, p0, Lcom/android/server/policy/GlobalActions;->mHorizontalScrollView:Landroid/widget/HorizontalScrollView;

    invoke-virtual {v2}, Landroid/widget/HorizontalScrollView;->getScrollX()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v1, v2

    iput v1, p0, Lcom/android/server/policy/GlobalActions;->mCurrentPositionXLand:F

    goto :goto_2

    :cond_5
    iget-object v2, p0, Lcom/android/server/policy/GlobalActions;->mSelectedItemView:Landroid/view/View;

    iget v1, p0, Lcom/android/server/policy/GlobalActions;->mCurrentPositionXLand:F

    sub-float v3, v8, v1

    iget v1, p0, Lcom/android/server/policy/GlobalActions;->mCurrentPositionYLand:F

    sub-float v4, v9, v1

    const v5, 0x3fa66666    # 1.3f

    const/4 v6, 0x0

    const/4 v7, 0x1

    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Lcom/android/server/policy/GlobalActions;->doAnimation(Landroid/view/View;FFFIZ)V

    goto :goto_3
.end method

.method private showErrorMessage(I)V
    .locals 1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-direct {p0, p1, v0}, Lcom/android/server/policy/GlobalActions;->showToast(II)V

    :cond_0
    return-void
.end method

.method private showToast(II)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    invoke-static {v0, p1, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method private toggleScreenRecord()V
    .locals 4

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v1, "com.sec.app.screenrecorder"

    const-string/jumbo v2, "com.sec.app.screenrecorder.activity.LauncherActivity"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private unRegisterBixbyReceiver()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mBixbyReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/policy/GlobalActions;->mBixbyReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_0
    return-void
.end method

.method private unRegisterSecureLockReceiver()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mSecureLockReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/policy/GlobalActions;->mSecureLockReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_0
    return-void
.end method

.method private unregisterPhoneStateListener()V
    .locals 4

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lcom/android/server/policy/GlobalActions;->mPhoneCount:I

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/android/server/policy/GlobalActions;->mMSimPhoneStateListener:[Landroid/telephony/PhoneStateListener;

    aget-object v1, v1, v0

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/policy/GlobalActions;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v2, p0, Lcom/android/server/policy/GlobalActions;->mMSimPhoneStateListener:[Landroid/telephony/PhoneStateListener;

    aget-object v2, v2, v0

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private updateActions(Lcom/android/server/policy/GlobalActions$ToggleAction;)V
    .locals 12

    invoke-direct {p0}, Lcom/android/server/policy/GlobalActions;->isPortrait()Z

    move-result v9

    invoke-direct {p0, v9}, Lcom/android/server/policy/GlobalActions;->findTargetView(Z)Landroid/view/ViewGroup;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v9, p1, Lcom/android/server/policy/GlobalActions$ToggleAction;->mState:Lcom/android/server/policy/GlobalActions$ToggleAction$State;

    sget-object v10, Lcom/android/server/policy/GlobalActions$ToggleAction$State;->On:Lcom/android/server/policy/GlobalActions$ToggleAction$State;

    if-eq v9, v10, :cond_1

    iget-object v9, p1, Lcom/android/server/policy/GlobalActions$ToggleAction;->mState:Lcom/android/server/policy/GlobalActions$ToggleAction$State;

    sget-object v10, Lcom/android/server/policy/GlobalActions$ToggleAction$State;->TurningOn:Lcom/android/server/policy/GlobalActions$ToggleAction$State;

    if-ne v9, v10, :cond_3

    :cond_1
    const/4 v6, 0x1

    :goto_0
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v1, :cond_5

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    const v9, 0x1020006

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    const v9, 0x102000b

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    const v9, 0x10203da

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    const v9, 0x10203dc

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/FrameLayout;

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v9

    if-eqz v9, :cond_2

    invoke-virtual {v3}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    iget v10, p1, Lcom/android/server/policy/GlobalActions$ToggleAction;->mEnabledIconResId:I

    if-ne v9, v10, :cond_2

    if-eqz v7, :cond_2

    if-eqz v6, :cond_4

    iget v9, p1, Lcom/android/server/policy/GlobalActions$ToggleAction;->mEnabledStatusMessageResId:I

    :goto_2
    invoke-virtual {v7, v9}, Landroid/widget/TextView;->setText(I)V

    const/4 v9, 0x0

    invoke-virtual {v7, v9}, Landroid/widget/TextView;->setVisibility(I)V

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, ", "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget-object v10, Lcom/android/server/policy/GlobalActions;->sResource:Landroid/content/res/Resources;

    const v11, 0x104082b

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, ", "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v7}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9}, Landroid/widget/FrameLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_1

    :cond_3
    const/4 v6, 0x0

    goto/16 :goto_0

    :cond_4
    iget v9, p1, Lcom/android/server/policy/GlobalActions$ToggleAction;->mDisabledStatusMessageResId:I

    goto :goto_2

    :cond_5
    return-void
.end method

.method private updateDescViewHeight(Landroid/view/View;I)V
    .locals 8

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    iget-object v1, p0, Lcom/android/server/policy/GlobalActions;->mDescriptionlayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x2

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    invoke-direct {p0}, Lcom/android/server/policy/GlobalActions;->isPortrait()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v1

    add-int/2addr v1, p2

    invoke-direct {p0, v1}, Lcom/android/server/policy/GlobalActions;->getMarginTopAtCenter(I)I

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v2

    int-to-double v2, v2

    mul-double/2addr v2, v4

    int-to-double v4, p2

    const-wide v6, 0x3fe6666666666666L    # 0.7

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    double-to-int v2, v2

    add-int/2addr v1, v2

    iget v2, p0, Lcom/android/server/policy/GlobalActions;->mMessageViewPaddingBottom:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    sget-boolean v1, Lcom/android/server/policy/GlobalActions;->sIsCoverOpen:Z

    if-nez v1, :cond_1

    sget-boolean v1, Lcom/android/server/policy/GlobalActions;->sIsClearCover:Z

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/android/server/policy/GlobalActions;->mItemMaxWidthForClearCoverClosed:I

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    :goto_0
    iget-object v1, p0, Lcom/android/server/policy/GlobalActions;->mDescriptionlayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->requestLayout()V

    return-void

    :cond_0
    iget v1, p0, Lcom/android/server/policy/GlobalActions;->mItemMaxWidthForSViewCoverClosed:I

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    goto :goto_0

    :cond_1
    iget v1, p0, Lcom/android/server/policy/GlobalActions;->mItemMaxWidth:I

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/server/policy/GlobalActions;->getMarginStartAtCenter(I)I

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v2

    int-to-double v2, v2

    mul-double/2addr v2, v4

    int-to-double v4, p2

    const-wide v6, 0x3fc999999999999aL    # 0.2

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    double-to-int v2, v2

    add-int/2addr v1, v2

    iget v2, p0, Lcom/android/server/policy/GlobalActions;->mMessageViewPaddingBottom:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    iget v1, p0, Lcom/android/server/policy/GlobalActions;->mItemMaxWidthLand:I

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    goto :goto_0
.end method

.method private updateToggleActionState()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getMobileDataEnabled()Z

    move-result v0

    if-eqz v0, :cond_4

    sget-object v0, Lcom/android/server/policy/GlobalActions$ToggleAction$State;->On:Lcom/android/server/policy/GlobalActions$ToggleAction$State;

    iput-object v0, p0, Lcom/android/server/policy/GlobalActions;->mDataNetworkState:Lcom/android/server/policy/GlobalActions$ToggleAction$State;

    :goto_0
    const-string/jumbo v0, "gsm.sim.state"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "ABSENT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/policy/GlobalActions$ToggleAction$State;->Off:Lcom/android/server/policy/GlobalActions$ToggleAction$State;

    iput-object v0, p0, Lcom/android/server/policy/GlobalActions;->mDataNetworkState:Lcom/android/server/policy/GlobalActions$ToggleAction$State;

    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mDataModeAction:Lcom/android/server/policy/GlobalActions$ToggleAction;

    iget-object v1, p0, Lcom/android/server/policy/GlobalActions;->mDataNetworkState:Lcom/android/server/policy/GlobalActions$ToggleAction$State;

    invoke-virtual {v0, v1}, Lcom/android/server/policy/GlobalActions$ToggleAction;->updateState(Lcom/android/server/policy/GlobalActions$ToggleAction$State;)V

    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mDataModeAction:Lcom/android/server/policy/GlobalActions$ToggleAction;

    invoke-direct {p0, v0}, Lcom/android/server/policy/GlobalActions;->updateActions(Lcom/android/server/policy/GlobalActions$ToggleAction;)V

    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mAirplaneModeAction:Lcom/android/server/policy/GlobalActions$ToggleAction;

    iget-object v1, p0, Lcom/android/server/policy/GlobalActions;->mAirplaneState:Lcom/android/server/policy/GlobalActions$ToggleAction$State;

    invoke-virtual {v0, v1}, Lcom/android/server/policy/GlobalActions$ToggleAction;->updateState(Lcom/android/server/policy/GlobalActions$ToggleAction$State;)V

    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mAirplaneModeAction:Lcom/android/server/policy/GlobalActions$ToggleAction;

    invoke-direct {p0, v0}, Lcom/android/server/policy/GlobalActions;->updateActions(Lcom/android/server/policy/GlobalActions$ToggleAction;)V

    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mProKioskAction:Lcom/android/server/policy/GlobalActions$ToggleAction;

    if-eqz v0, :cond_1

    const-string/jumbo v0, "content://com.sec.knox.provider2/KnoxCustomManagerService1"

    const-string/jumbo v1, "getSealedState"

    invoke-direct {p0, v0, v1, v2}, Lcom/android/server/policy/GlobalActions;->isEDM(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "true"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mProKioskAction:Lcom/android/server/policy/GlobalActions$ToggleAction;

    sget-object v1, Lcom/android/server/policy/GlobalActions$ToggleAction$State;->On:Lcom/android/server/policy/GlobalActions$ToggleAction$State;

    invoke-virtual {v0, v1}, Lcom/android/server/policy/GlobalActions$ToggleAction;->updateState(Lcom/android/server/policy/GlobalActions$ToggleAction$State;)V

    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/emergencymode/SemEmergencyManager;->isEmergencyMode(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_6

    sget-object v0, Lcom/android/server/policy/GlobalActions$ToggleAction$State;->On:Lcom/android/server/policy/GlobalActions$ToggleAction$State;

    :goto_2
    iput-object v0, p0, Lcom/android/server/policy/GlobalActions;->mEmergencyState:Lcom/android/server/policy/GlobalActions$ToggleAction$State;

    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mEmergencyAction:Lcom/android/server/policy/GlobalActions$ToggleAction;

    iget-object v1, p0, Lcom/android/server/policy/GlobalActions;->mEmergencyState:Lcom/android/server/policy/GlobalActions$ToggleAction$State;

    invoke-virtual {v0, v1}, Lcom/android/server/policy/GlobalActions$ToggleAction;->updateState(Lcom/android/server/policy/GlobalActions$ToggleAction$State;)V

    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mEmergencyAction:Lcom/android/server/policy/GlobalActions$ToggleAction;

    invoke-direct {p0, v0}, Lcom/android/server/policy/GlobalActions;->updateActions(Lcom/android/server/policy/GlobalActions$ToggleAction;)V

    iget-boolean v0, p0, Lcom/android/server/policy/GlobalActions;->SUPPORT_BIKEMODE_ACTION:Z

    if-eqz v0, :cond_2

    const-string/jumbo v0, "com.samsung.android.app.bikemode"

    invoke-direct {p0, v0}, Lcom/android/server/policy/GlobalActions;->isSBikeInstalled(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mBikeModeAction:Lcom/android/server/policy/GlobalActions$ToggleAction;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "isBikeMode"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_7

    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mBikeModeAction:Lcom/android/server/policy/GlobalActions$ToggleAction;

    sget-object v1, Lcom/android/server/policy/GlobalActions$ToggleAction$State;->On:Lcom/android/server/policy/GlobalActions$ToggleAction$State;

    invoke-virtual {v0, v1}, Lcom/android/server/policy/GlobalActions$ToggleAction;->updateState(Lcom/android/server/policy/GlobalActions$ToggleAction$State;)V

    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mBikeModeAction:Lcom/android/server/policy/GlobalActions$ToggleAction;

    invoke-direct {p0, v0}, Lcom/android/server/policy/GlobalActions;->updateActions(Lcom/android/server/policy/GlobalActions$ToggleAction;)V

    :cond_2
    :goto_3
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mAdapter:Lcom/android/server/policy/GlobalActions$MyAdapter;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mAdapter:Lcom/android/server/policy/GlobalActions$MyAdapter;

    invoke-virtual {v0}, Lcom/android/server/policy/GlobalActions$MyAdapter;->notifyDataSetChanged()V

    :cond_3
    return-void

    :cond_4
    sget-object v0, Lcom/android/server/policy/GlobalActions$ToggleAction$State;->Off:Lcom/android/server/policy/GlobalActions$ToggleAction$State;

    iput-object v0, p0, Lcom/android/server/policy/GlobalActions;->mDataNetworkState:Lcom/android/server/policy/GlobalActions$ToggleAction$State;

    goto/16 :goto_0

    :cond_5
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mProKioskAction:Lcom/android/server/policy/GlobalActions$ToggleAction;

    sget-object v1, Lcom/android/server/policy/GlobalActions$ToggleAction$State;->Off:Lcom/android/server/policy/GlobalActions$ToggleAction$State;

    invoke-virtual {v0, v1}, Lcom/android/server/policy/GlobalActions$ToggleAction;->updateState(Lcom/android/server/policy/GlobalActions$ToggleAction$State;)V

    goto :goto_1

    :cond_6
    sget-object v0, Lcom/android/server/policy/GlobalActions$ToggleAction$State;->Off:Lcom/android/server/policy/GlobalActions$ToggleAction$State;

    goto :goto_2

    :cond_7
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mBikeModeAction:Lcom/android/server/policy/GlobalActions$ToggleAction;

    sget-object v1, Lcom/android/server/policy/GlobalActions$ToggleAction$State;->Off:Lcom/android/server/policy/GlobalActions$ToggleAction$State;

    invoke-virtual {v0, v1}, Lcom/android/server/policy/GlobalActions$ToggleAction;->updateState(Lcom/android/server/policy/GlobalActions$ToggleAction$State;)V

    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mBikeModeAction:Lcom/android/server/policy/GlobalActions$ToggleAction;

    invoke-direct {p0, v0}, Lcom/android/server/policy/GlobalActions;->updateActions(Lcom/android/server/policy/GlobalActions$ToggleAction;)V

    goto :goto_3
.end method

.method private updateWindowBlur(F)V
    .locals 2

    iget-object v1, p0, Lcom/android/server/policy/GlobalActions;->mDialog:Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/policy/GlobalActions;->mWindow:Landroid/view/Window;

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    iget-object v1, p0, Lcom/android/server/policy/GlobalActions;->mWindow:Landroid/view/Window;

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    :cond_0
    return-void
.end method


# virtual methods
.method isDialogPowerOptionHidden()Z
    .locals 4

    const/4 v0, 0x0

    const-string/jumbo v1, "content://com.sec.knox.provider2/KnoxCustomManagerService1"

    const-string/jumbo v2, "getSealedState"

    const/4 v3, 0x0

    invoke-direct {p0, v1, v2, v3}, Lcom/android/server/policy/GlobalActions;->isEDM(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "true"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string/jumbo v1, "content://com.sec.knox.provider2/KnoxCustomManagerService1"

    const-string/jumbo v2, "getSealedPowerDialogOptionMode"

    invoke-direct {p0, v1, v2}, Lcom/android/server/policy/GlobalActions;->isIntEDM(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_1

    sget-boolean v1, Lcom/android/server/policy/GlobalActions;->mProKioskOptionShown:Z

    if-eqz v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method isDialogShowing()Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mDialog:Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mDialog:Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;

    invoke-virtual {v0}, Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;->isShowing()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 4

    const/4 v3, 0x0

    iget-boolean v1, p0, Lcom/android/server/policy/GlobalActions;->mShowSilentToggle:Z

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/policy/GlobalActions;->mRingerModeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    sget-boolean v1, Lcom/android/server/policy/GlobalActions;->sIsAirplaneConfirmDialogExist:Z

    if-nez v1, :cond_1

    :try_start_1
    iget-object v1, p0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/policy/GlobalActions;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    :cond_1
    :goto_1
    sget-boolean v1, Lcom/android/server/policy/GlobalActions;->sIsCoverOpen:Z

    if-nez v1, :cond_2

    sget-boolean v1, Lcom/android/server/policy/GlobalActions;->sIsSecondConfirming:Z

    if-nez v1, :cond_3

    sget-object v1, Lcom/android/server/policy/GlobalActions;->sIsConfirmingGuard:Ljava/lang/Object;

    monitor-enter v1

    const/4 v2, 0x0

    :try_start_2
    sput-boolean v2, Lcom/android/server/policy/GlobalActions;->sIsConfirming:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v1

    :cond_2
    :goto_2
    invoke-direct {p0}, Lcom/android/server/policy/GlobalActions;->unRegisterSecureLockReceiver()V

    invoke-direct {p0}, Lcom/android/server/policy/GlobalActions;->unRegisterBixbyReceiver()V

    sput-boolean v3, Lcom/android/server/policy/GlobalActions;->sIsConfirmDlg:Z

    iput-boolean v3, p0, Lcom/android/server/policy/GlobalActions;->mIsSafeModeEnabled:Z

    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "GlobalActions"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :catch_1
    move-exception v0

    const-string/jumbo v1, "GlobalActions"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    :catchall_0
    move-exception v2

    monitor-exit v1

    throw v2

    :cond_3
    sput-boolean v3, Lcom/android/server/policy/GlobalActions;->sIsSecondConfirming:Z

    goto :goto_2
.end method

.method public showDialog(ZZ)V
    .locals 7

    const/4 v6, 0x0

    const/4 v3, 0x0

    invoke-direct {p0}, Lcom/android/server/policy/GlobalActions;->isGlobalActionConfirming()Z

    move-result v2

    if-eqz v2, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v2

    const-string/jumbo v4, "SEC_FLOATING_FEATURE_COMMON_SUPPORT_SAFETYCARE"

    invoke-virtual {v2, v4}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/server/policy/GlobalActions;->mSemEmergencyManager:Lcom/samsung/android/emergencymode/SemEmergencyManager;

    invoke-virtual {v2}, Lcom/samsung/android/emergencymode/SemEmergencyManager;->isModifying()Z

    move-result v2

    if-eqz v2, :cond_1

    const-string/jumbo v2, "GlobalActions"

    const-string/jumbo v3, "Cannot use Global Action. because Emergency mode Entering.."

    invoke-static {v2, v3}, Lcom/samsung/android/emergencymode/Elog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    const-string/jumbo v2, "content://com.sec.knox.provider2/KnoxCustomManagerService1"

    const-string/jumbo v4, "getPowerMenuLockedState"

    invoke-direct {p0, v2, v4, v6}, Lcom/android/server/policy/GlobalActions;->isEDM(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v4, "false"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-boolean v2, p0, Lcom/android/server/policy/GlobalActions;->mKeyguardShowing:Z

    if-eqz v2, :cond_2

    const-string/jumbo v2, "GlobalActions"

    const-string/jumbo v3, "Knox Customization: GlobalActions dialog will not display when keyguard is showing"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    const-string/jumbo v2, "com.android.service.GlobalAction"

    const-string/jumbo v4, "0001"

    const-string/jumbo v5, "null"

    invoke-direct {p0, v2, v4, v5}, Lcom/android/server/policy/GlobalActions;->insertLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/server/policy/GlobalActions;->initValueForShow()V

    iget-object v2, p0, Lcom/android/server/policy/GlobalActions;->mHandler:Landroid/os/Handler;

    if-nez v2, :cond_3

    new-instance v2, Lcom/android/server/policy/GlobalActions$UIUpdateHandler;

    invoke-direct {v2, p0, v6}, Lcom/android/server/policy/GlobalActions$UIUpdateHandler;-><init>(Lcom/android/server/policy/GlobalActions;Lcom/android/server/policy/GlobalActions$UIUpdateHandler;)V

    iput-object v2, p0, Lcom/android/server/policy/GlobalActions;->mHandler:Landroid/os/Handler;

    :cond_3
    sput-boolean v3, Lcom/android/server/policy/GlobalActions;->sIsAirplaneConfirmDialogExist:Z

    iget-object v2, p0, Lcom/android/server/policy/GlobalActions;->mKeyguardManager:Landroid/app/KeyguardManager;

    invoke-virtual {v2}, Landroid/app/KeyguardManager;->isDeviceSecure()Z

    move-result v2

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/android/server/policy/GlobalActions;->mKeyguardManager:Landroid/app/KeyguardManager;

    invoke-virtual {v2}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    move-result v2

    :goto_0
    iput-boolean v2, p0, Lcom/android/server/policy/GlobalActions;->mIsSecureKeyguard:Z

    iput-boolean p1, p0, Lcom/android/server/policy/GlobalActions;->mKeyguardShowing:Z

    iget-boolean v2, p0, Lcom/android/server/policy/GlobalActions;->mKeyguardShowing:Z

    if-nez v2, :cond_4

    invoke-static {}, Lcom/samsung/android/knox/SemPersonaManager;->getKnoxInfo()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_4

    const-string/jumbo v2, "2.0"

    const-string/jumbo v4, "version"

    invoke-virtual {v1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "persona"

    invoke-virtual {v2, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/knox/SemPersonaManager;

    iget-boolean v2, p0, Lcom/android/server/policy/GlobalActions;->mKeyguardShowing:Z

    invoke-virtual {v0}, Lcom/samsung/android/knox/SemPersonaManager;->getKeyguardShowState()Z

    move-result v4

    or-int/2addr v2, v4

    iput-boolean v2, p0, Lcom/android/server/policy/GlobalActions;->mKeyguardShowing:Z

    const-string/jumbo v2, "GlobalActions"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Oring mKeyguardShowing and pm.getKeyguardShowState()"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/android/server/policy/GlobalActions;->mKeyguardShowing:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    iput-boolean p2, p0, Lcom/android/server/policy/GlobalActions;->mDeviceProvisioned:Z

    const-string/jumbo v2, "GlobalActions"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "device provision check : mDeviceProvisioned ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/android/server/policy/GlobalActions;->mDeviceProvisioned:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/server/policy/GlobalActions;->mDialog:Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/android/server/policy/GlobalActions;->mDialog:Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;

    invoke-virtual {v2}, Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    const/16 v4, 0x8

    if-eq v2, v4, :cond_5

    iget-object v2, p0, Lcom/android/server/policy/GlobalActions;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    sput-boolean v3, Lcom/android/server/policy/GlobalActions;->sIsConfirmDlg:Z

    iput-boolean v3, p0, Lcom/android/server/policy/GlobalActions;->mIsSafeModeEnabled:Z

    :cond_5
    :goto_1
    return-void

    :cond_6
    move v2, v3

    goto/16 :goto_0

    :cond_7
    const-string/jumbo v2, "GlobalActions"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "showDialog() : mIsFirstCreated = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/android/server/policy/GlobalActions;->mIsFirstCreated:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v2, p0, Lcom/android/server/policy/GlobalActions;->mIsFirstCreated:Z

    if-eqz v2, :cond_8

    invoke-direct {p0}, Lcom/android/server/policy/GlobalActions;->checkAirplaneModeOnOff()V

    iput-boolean v3, p0, Lcom/android/server/policy/GlobalActions;->mIsFirstCreated:Z

    :cond_8
    invoke-direct {p0}, Lcom/android/server/policy/GlobalActions;->handleShow()V

    goto :goto_1
.end method
