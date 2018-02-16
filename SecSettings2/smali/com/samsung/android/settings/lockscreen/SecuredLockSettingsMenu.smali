.class public Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;
.super Lcom/samsung/android/settings/SecSettingsPreferenceFragment;
.source "SecuredLockSettingsMenu.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/android/settings/search/Indexable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu$1;,
        Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu$SecuredLockIndexProvider;,
        Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu$UnificationConfirmationDialog;
    }
.end annotation


# static fields
.field private static final MY_USER_ID:I

.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

.field public static final SUPPORT_BACKGROUND_AUTHENTICATION:Z

.field private static final TRUST_AGENT_INTENT:Landroid/content/Intent;

.field private static mSmartLockString:Ljava/lang/String;


# instance fields
.field private isDeviceLockTime:Z

.field private mAutoFactoryReset:Landroid/preference/SwitchPreference;

.field private mBiometricsWithAutoWakeUp:Landroid/preference/SwitchPreference;

.field private mChooseLockSettingsHelper:Lcom/android/settings/ChooseLockSettingsHelper;

.field private mDPM:Landroid/app/admin/DevicePolicyManager;

.field private mDeviceLockDialog:Landroid/app/AlertDialog;

.field private mDirectionLockBeep:Landroid/preference/SwitchPreference;

.field private mDirectionLockVibration:Landroid/preference/SwitchPreference;

.field private mDirectionLockVisible:Landroid/preference/SwitchPreference;

.field private mDirectionLockVoice:Landroid/preference/SwitchPreference;

.field public mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

.field private mLockAfter:Lcom/android/settings/TimeoutListPreference;

.field private mLockNetworkAndSecurity:Landroid/preference/SwitchPreference;

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mLocktype:I

.field private mPasswordConfirmed:Z

.field private mPowerButtonInstantlyLocks:Landroid/preference/SwitchPreference;

.field private mResetCount:I

.field private mTrustAgentClickIntent:Landroid/content/Intent;

.field private mUserManager:Landroid/os/UserManager;

.field private mVisiblePattern:Landroid/preference/SwitchPreference;

.field private smartlock:Landroid/preference/Preference;


# direct methods
.method static synthetic -get0()I
    .locals 1

    sget v0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->MY_USER_ID:I

    return v0
.end method

.method static synthetic -get1(Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;)Lcom/samsung/android/settings/bixby/EmSettingsManager;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    return-object v0
.end method

.method static synthetic -get2(Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->mPasswordConfirmed:Z

    return v0
.end method

.method static synthetic -wrap0(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;Landroid/app/admin/DevicePolicyManager;)Ljava/util/ArrayList;
    .locals 1

    invoke-static {p0, p1, p2}, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->getActiveTrustAgents(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;Landroid/app/admin/DevicePolicyManager;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->proceedPartialLanding(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic -wrap2(Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;Ljava/lang/CharSequence;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->startTrustAgentIntent(Ljava/lang/CharSequence;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.service.trust.TrustAgentService"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->TRUST_AGENT_INTENT:Landroid/content/Intent;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    sput v0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->MY_USER_ID:I

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    const-string/jumbo v1, "SEC_FLOATING_FEATURE_LOCKSCREEN_SUPPORT_BACKGROUND_AUTHENTICATION"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->SUPPORT_BACKGROUND_AUTHENTICATION:Z

    new-instance v0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu$SecuredLockIndexProvider;

    invoke-direct {v0}, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu$SecuredLockIndexProvider;-><init>()V

    sput-object v0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->mDeviceLockDialog:Landroid/app/AlertDialog;

    const/16 v0, 0xf

    iput v0, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->mResetCount:I

    iput v1, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->mLocktype:I

    iput-boolean v1, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->mPasswordConfirmed:Z

    new-instance v0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu$1;-><init>(Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;)V

    iput-object v0, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

    return-void
.end method

.method private InitValue()V
    .locals 19

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v15

    if-eqz v15, :cond_b

    const/4 v11, 0x1

    :goto_0
    const-string/jumbo v15, "visiblepattern"

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v15

    check-cast v15, Landroid/preference/SwitchPreference;

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->mVisiblePattern:Landroid/preference/SwitchPreference;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->mVisiblePattern:Landroid/preference/SwitchPreference;

    if-eqz v15, :cond_2

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v15}, Lcom/android/internal/widget/LockPatternUtils;->isVisiblePatternDisabledByMDM()Z

    move-result v15

    if-nez v15, :cond_0

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->getActivity()Landroid/app/Activity;

    move-result-object v15

    invoke-static {v15}, Lcom/android/settings/Utils;->isDesktopMode(Landroid/content/Context;)Z

    move-result v15

    if-eqz v15, :cond_1

    :cond_0
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->mVisiblePattern:Landroid/preference/SwitchPreference;

    const/16 v16, 0x0

    invoke-virtual/range {v15 .. v16}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    :cond_1
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->mVisiblePattern:Landroid/preference/SwitchPreference;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    move-object/from16 v16, v0

    sget v17, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->MY_USER_ID:I

    invoke-virtual/range {v16 .. v17}, Lcom/android/internal/widget/LockPatternUtils;->isVisiblePatternEnabled(I)Z

    move-result v16

    invoke-virtual/range {v15 .. v16}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->mVisiblePattern:Landroid/preference/SwitchPreference;

    move-object/from16 v0, p0

    invoke-virtual {v15, v0}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    :cond_2
    const-string/jumbo v15, "auto_factory_reset"

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v15

    check-cast v15, Landroid/preference/SwitchPreference;

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->mAutoFactoryReset:Landroid/preference/SwitchPreference;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->mAutoFactoryReset:Landroid/preference/SwitchPreference;

    if-eqz v15, :cond_4

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v15

    const-string/jumbo v16, "auto_swipe_main_user"

    const/16 v17, 0x0

    invoke-static/range {v15 .. v17}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v15

    if-eqz v15, :cond_c

    const/4 v14, 0x1

    :goto_1
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->mAutoFactoryReset:Landroid/preference/SwitchPreference;

    invoke-virtual {v15, v14}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->mAutoFactoryReset:Landroid/preference/SwitchPreference;

    move-object/from16 v0, p0

    invoke-virtual {v15, v0}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    const-string/jumbo v4, ""

    const v15, 0x7f0b0df9

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->getString(I)Ljava/lang/String;

    move-result-object v15

    const/16 v16, 0x1

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->mResetCount:I

    move/from16 v17, v0

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    const/16 v18, 0x0

    aput-object v17, v16, v18

    invoke-static/range {v15 .. v16}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    if-eqz v11, :cond_3

    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v15

    if-eqz v15, :cond_3

    const v15, 0x7f0b0dfa

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->getString(I)Ljava/lang/String;

    move-result-object v15

    const/16 v16, 0x1

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->mResetCount:I

    move/from16 v17, v0

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    const/16 v18, 0x0

    aput-object v17, v16, v18

    invoke-static/range {v15 .. v16}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    :cond_3
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->mAutoFactoryReset:Landroid/preference/SwitchPreference;

    invoke-virtual {v15, v4}, Landroid/preference/SwitchPreference;->setSummary(Ljava/lang/CharSequence;)V

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->mDPM:Landroid/app/admin/DevicePolicyManager;

    if-eqz v15, :cond_d

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->mDPM:Landroid/app/admin/DevicePolicyManager;

    const/16 v16, 0x0

    invoke-virtual/range {v15 .. v16}, Landroid/app/admin/DevicePolicyManager;->getMaximumFailedPasswordsForWipe(Landroid/content/ComponentName;)I

    move-result v15

    if-lez v15, :cond_d

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->mAutoFactoryReset:Landroid/preference/SwitchPreference;

    const/16 v16, 0x0

    invoke-virtual/range {v15 .. v16}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    :goto_2
    invoke-static {}, Lcom/android/settings/Utils;->isUCMKeyguardEnabled()Z

    move-result v15

    if-eqz v15, :cond_4

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->mAutoFactoryReset:Landroid/preference/SwitchPreference;

    const/16 v16, 0x0

    invoke-virtual/range {v15 .. v16}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    :cond_4
    const-string/jumbo v15, "lock_network_and_security"

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v15

    check-cast v15, Landroid/preference/SwitchPreference;

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->mLockNetworkAndSecurity:Landroid/preference/SwitchPreference;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->mLockNetworkAndSecurity:Landroid/preference/SwitchPreference;

    if-eqz v15, :cond_5

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v15

    const-string/jumbo v16, "lock_function_val"

    const/16 v17, 0x0

    invoke-static/range {v15 .. v17}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v15

    if-eqz v15, :cond_f

    const/4 v14, 0x1

    :goto_3
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->mLockNetworkAndSecurity:Landroid/preference/SwitchPreference;

    invoke-virtual {v15, v14}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->mLockNetworkAndSecurity:Landroid/preference/SwitchPreference;

    move-object/from16 v0, p0

    invoke-virtual {v15, v0}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    :cond_5
    const-string/jumbo v15, "biometrics_with_auto_wakeup"

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v15

    check-cast v15, Landroid/preference/SwitchPreference;

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->mBiometricsWithAutoWakeUp:Landroid/preference/SwitchPreference;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->mBiometricsWithAutoWakeUp:Landroid/preference/SwitchPreference;

    if-eqz v15, :cond_6

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v15

    const-string/jumbo v16, "biometrics_auto_wakeup_enabled"

    const/16 v17, 0x0

    invoke-static/range {v15 .. v17}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v15

    if-eqz v15, :cond_10

    const/4 v14, 0x1

    :goto_4
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->mBiometricsWithAutoWakeUp:Landroid/preference/SwitchPreference;

    invoke-virtual {v15, v14}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->mBiometricsWithAutoWakeUp:Landroid/preference/SwitchPreference;

    move-object/from16 v0, p0

    invoke-virtual {v15, v0}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v16

    const/16 v17, 0x10

    move/from16 v0, v17

    move/from16 v1, v16

    invoke-virtual {v15, v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->getBiometricLockscreen(II)I

    move-result v15

    const/16 v16, 0x1

    move/from16 v0, v16

    if-ne v15, v0, :cond_11

    const/4 v10, 0x1

    :goto_5
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v16

    const/16 v17, 0x100

    move/from16 v0, v17

    move/from16 v1, v16

    invoke-virtual {v15, v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->getBiometricLockscreen(II)I

    move-result v15

    const/16 v16, 0x1

    move/from16 v0, v16

    if-ne v15, v0, :cond_12

    const/4 v8, 0x1

    :goto_6
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v16

    const/16 v17, 0x1

    move/from16 v0, v17

    move/from16 v1, v16

    invoke-virtual {v15, v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->getBiometricLockscreen(II)I

    move-result v15

    const/16 v16, 0x1

    move/from16 v0, v16

    if-ne v15, v0, :cond_13

    const/4 v9, 0x1

    :goto_7
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->mBiometricsWithAutoWakeUp:Landroid/preference/SwitchPreference;

    if-nez v10, :cond_14

    if-nez v9, :cond_14

    :goto_8
    invoke-virtual {v15, v8}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    :cond_6
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    sget v16, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->MY_USER_ID:I

    invoke-virtual/range {v15 .. v16}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v5

    if-eqz v5, :cond_a

    const-string/jumbo v15, "lock_after_timeout"

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v15

    check-cast v15, Lcom/android/settings/TimeoutListPreference;

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->mLockAfter:Lcom/android/settings/TimeoutListPreference;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->mLockAfter:Lcom/android/settings/TimeoutListPreference;

    if-eqz v15, :cond_9

    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->isDeviceLockTime:Z

    if-eqz v15, :cond_8

    const-string/jumbo v15, "ATT"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_7

    const-string/jumbo v15, "AIO"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_15

    :cond_7
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->mLockAfter:Lcom/android/settings/TimeoutListPreference;

    const v16, 0x7f0b0a93

    invoke-virtual/range {v15 .. v16}, Lcom/android/settings/TimeoutListPreference;->setTitle(I)V

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->mLockAfter:Lcom/android/settings/TimeoutListPreference;

    const v16, 0x7f0b0a93

    invoke-virtual/range {v15 .. v16}, Lcom/android/settings/TimeoutListPreference;->setDialogTitle(I)V

    :goto_9
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->mLockAfter:Lcom/android/settings/TimeoutListPreference;

    const v16, 0x7f0c0036

    invoke-virtual/range {v15 .. v16}, Lcom/android/settings/TimeoutListPreference;->setEntries(I)V

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->mLockAfter:Lcom/android/settings/TimeoutListPreference;

    const v16, 0x7f0c0037

    invoke-virtual/range {v15 .. v16}, Lcom/android/settings/TimeoutListPreference;->setEntryValues(I)V

    :cond_8
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->setupLockAfterPreference()V

    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->updateLockAfterPreferenceSummary()V

    :cond_9
    const-string/jumbo v15, "power_button_instantly_locks"

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v15

    check-cast v15, Landroid/preference/SwitchPreference;

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->mPowerButtonInstantlyLocks:Landroid/preference/SwitchPreference;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->mPowerButtonInstantlyLocks:Landroid/preference/SwitchPreference;

    if-eqz v15, :cond_a

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->mPowerButtonInstantlyLocks:Landroid/preference/SwitchPreference;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    move-object/from16 v16, v0

    sget v17, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->MY_USER_ID:I

    invoke-virtual/range {v16 .. v17}, Lcom/android/internal/widget/LockPatternUtils;->getPowerButtonInstantlyLocks(I)Z

    move-result v16

    invoke-virtual/range {v15 .. v16}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->mPowerButtonInstantlyLocks:Landroid/preference/SwitchPreference;

    move-object/from16 v0, p0

    invoke-virtual {v15, v0}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    :cond_a
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->getActivity()Landroid/app/Activity;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->mDPM:Landroid/app/admin/DevicePolicyManager;

    move-object/from16 v17, v0

    invoke-static/range {v15 .. v17}, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->getActiveTrustAgents(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;Landroid/app/admin/DevicePolicyManager;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v12

    const/4 v13, 0x0

    if-nez v12, :cond_16

    return-void

    :cond_b
    const/4 v11, 0x0

    goto/16 :goto_0

    :cond_c
    const/4 v14, 0x0

    goto/16 :goto_1

    :cond_d
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v15}, Landroid/os/UserManager;->isAdminUser()Z

    move-result v15

    if-nez v15, :cond_e

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v15}, Landroid/os/UserManager;->isUserSwitcherEnabled()Z

    move-result v15

    if-eqz v15, :cond_e

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->mAutoFactoryReset:Landroid/preference/SwitchPreference;

    const/16 v16, 0x0

    invoke-virtual/range {v15 .. v16}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    goto/16 :goto_2

    :cond_e
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->mAutoFactoryReset:Landroid/preference/SwitchPreference;

    const/16 v16, 0x1

    invoke-virtual/range {v15 .. v16}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    goto/16 :goto_2

    :cond_f
    const/4 v14, 0x0

    goto/16 :goto_3

    :cond_10
    const/4 v14, 0x0

    goto/16 :goto_4

    :cond_11
    const/4 v10, 0x0

    goto/16 :goto_5

    :cond_12
    const/4 v8, 0x0

    goto/16 :goto_6

    :cond_13
    const/4 v9, 0x0

    goto/16 :goto_7

    :cond_14
    const/4 v8, 0x1

    goto/16 :goto_8

    :cond_15
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->mLockAfter:Lcom/android/settings/TimeoutListPreference;

    const v16, 0x7f0b1419

    invoke-virtual/range {v15 .. v16}, Lcom/android/settings/TimeoutListPreference;->setTitle(I)V

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->mLockAfter:Lcom/android/settings/TimeoutListPreference;

    const v16, 0x7f0b1419

    invoke-virtual/range {v15 .. v16}, Lcom/android/settings/TimeoutListPreference;->setDialogTitle(I)V

    goto/16 :goto_9

    :cond_16
    const/4 v6, 0x0

    :goto_a
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v15

    if-ge v6, v15, :cond_18

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settings/TrustAgentUtils$TrustAgentComponentInfo;

    new-instance v15, Landroid/preference/Preference;

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->getActivity()Landroid/app/Activity;

    move-result-object v16

    invoke-direct/range {v15 .. v16}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->smartlock:Landroid/preference/Preference;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->smartlock:Landroid/preference/Preference;

    const-string/jumbo v16, "trust_agent"

    invoke-virtual/range {v15 .. v16}, Landroid/preference/Preference;->setKey(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->smartlock:Landroid/preference/Preference;

    iget-object v0, v2, Lcom/android/settings/TrustAgentUtils$TrustAgentComponentInfo;->title:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->smartlock:Landroid/preference/Preference;

    iget-object v0, v2, Lcom/android/settings/TrustAgentUtils$TrustAgentComponentInfo;->summary:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    new-instance v7, Landroid/content/Intent;

    invoke-direct {v7}, Landroid/content/Intent;-><init>()V

    iget-object v15, v2, Lcom/android/settings/TrustAgentUtils$TrustAgentComponentInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v7, v15}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const-string/jumbo v15, "android.intent.action.MAIN"

    invoke-virtual {v7, v15}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->smartlock:Landroid/preference/Preference;

    invoke-virtual {v15, v7}, Landroid/preference/Preference;->setIntent(Landroid/content/Intent;)V

    invoke-static {}, Lcom/android/settings/Utils;->isLockscreenMenuTreeForAOD()Z

    move-result v15

    if-nez v15, :cond_17

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->smartlock:Landroid/preference/Preference;

    invoke-virtual {v12, v15}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    :cond_17
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->smartlock:Landroid/preference/Preference;

    add-int/lit8 v6, v6, 0x1

    goto :goto_a

    :cond_18
    const-string/jumbo v15, "lock_screen_visible"

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v15

    check-cast v15, Landroid/preference/SwitchPreference;

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->mDirectionLockVisible:Landroid/preference/SwitchPreference;

    const-string/jumbo v15, "lock_screen_vibration"

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v15

    check-cast v15, Landroid/preference/SwitchPreference;

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->mDirectionLockVibration:Landroid/preference/SwitchPreference;

    const-string/jumbo v15, "lock_screen_voice"

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v15

    check-cast v15, Landroid/preference/SwitchPreference;

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->mDirectionLockVoice:Landroid/preference/SwitchPreference;

    const-string/jumbo v15, "lock_screen_beep"

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v15

    check-cast v15, Landroid/preference/SwitchPreference;

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->mDirectionLockBeep:Landroid/preference/SwitchPreference;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    sget v16, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->MY_USER_ID:I

    invoke-virtual/range {v15 .. v16}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality(I)I

    move-result v15

    const v16, 0x10001

    move/from16 v0, v16

    if-eq v15, v0, :cond_19

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->mDirectionLockBeep:Landroid/preference/SwitchPreference;

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->mDirectionLockVibration:Landroid/preference/SwitchPreference;

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->mDirectionLockVisible:Landroid/preference/SwitchPreference;

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->mDirectionLockVoice:Landroid/preference/SwitchPreference;

    :cond_19
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->mDirectionLockVisible:Landroid/preference/SwitchPreference;

    if-eqz v15, :cond_1a

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->mDirectionLockVisible:Landroid/preference/SwitchPreference;

    move-object/from16 v0, p0

    invoke-virtual {v15, v0}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->mDirectionLockVisible:Landroid/preference/SwitchPreference;

    move-object/from16 v16, v0

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v15

    const-string/jumbo v17, "universal_lock_visible"

    const/16 v18, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-static {v15, v0, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v15

    const/16 v17, 0x1

    move/from16 v0, v17

    if-ne v15, v0, :cond_24

    const/4 v15, 0x1

    :goto_b
    move-object/from16 v0, v16

    invoke-virtual {v0, v15}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    :cond_1a
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->mDirectionLockVibration:Landroid/preference/SwitchPreference;

    if-eqz v15, :cond_1b

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->mDirectionLockVibration:Landroid/preference/SwitchPreference;

    move-object/from16 v0, p0

    invoke-virtual {v15, v0}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->mDirectionLockVibration:Landroid/preference/SwitchPreference;

    move-object/from16 v16, v0

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v15

    const-string/jumbo v17, "universal_lock_vibration"

    const/16 v18, 0x1

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-static {v15, v0, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v15

    const/16 v17, 0x1

    move/from16 v0, v17

    if-ne v15, v0, :cond_25

    const/4 v15, 0x1

    :goto_c
    move-object/from16 v0, v16

    invoke-virtual {v0, v15}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    :cond_1b
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->mDirectionLockBeep:Landroid/preference/SwitchPreference;

    if-eqz v15, :cond_1c

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->mDirectionLockBeep:Landroid/preference/SwitchPreference;

    move-object/from16 v0, p0

    invoke-virtual {v15, v0}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->mDirectionLockBeep:Landroid/preference/SwitchPreference;

    move-object/from16 v16, v0

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v15

    const-string/jumbo v17, "universal_lock_beep"

    const/16 v18, 0x1

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-static {v15, v0, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v15

    const/16 v17, 0x1

    move/from16 v0, v17

    if-ne v15, v0, :cond_26

    const/4 v15, 0x1

    :goto_d
    move-object/from16 v0, v16

    invoke-virtual {v0, v15}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    :cond_1c
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->mDirectionLockVoice:Landroid/preference/SwitchPreference;

    if-eqz v15, :cond_1d

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->mDirectionLockVoice:Landroid/preference/SwitchPreference;

    move-object/from16 v0, p0

    invoke-virtual {v15, v0}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->mDirectionLockVoice:Landroid/preference/SwitchPreference;

    move-object/from16 v16, v0

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v15

    const-string/jumbo v17, "universal_lock_voice"

    const/16 v18, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-static {v15, v0, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v15

    const/16 v17, 0x1

    move/from16 v0, v17

    if-ne v15, v0, :cond_27

    const/4 v15, 0x1

    :goto_e
    move-object/from16 v0, v16

    invoke-virtual {v0, v15}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    :cond_1d
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->getActivity()Landroid/app/Activity;

    move-result-object v15

    invoke-static {v15}, Lcom/android/settings/Utils;->isSharedDeviceEnabled(Landroid/content/Context;)Z

    move-result v15

    if-eqz v15, :cond_22

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->mLockAfter:Lcom/android/settings/TimeoutListPreference;

    if-eqz v15, :cond_1e

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->mLockAfter:Lcom/android/settings/TimeoutListPreference;

    const/16 v16, 0x0

    invoke-virtual/range {v15 .. v16}, Lcom/android/settings/TimeoutListPreference;->setEnabled(Z)V

    :cond_1e
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->mVisiblePattern:Landroid/preference/SwitchPreference;

    if-eqz v15, :cond_1f

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->mVisiblePattern:Landroid/preference/SwitchPreference;

    const/16 v16, 0x1

    invoke-virtual/range {v15 .. v16}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    sget v16, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->MY_USER_ID:I

    const/16 v17, 0x1

    move/from16 v0, v17

    move/from16 v1, v16

    invoke-virtual {v15, v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->setVisiblePatternEnabled(ZI)V

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->mVisiblePattern:Landroid/preference/SwitchPreference;

    const/16 v16, 0x0

    invoke-virtual/range {v15 .. v16}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    :cond_1f
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->mPowerButtonInstantlyLocks:Landroid/preference/SwitchPreference;

    if-eqz v15, :cond_20

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->mPowerButtonInstantlyLocks:Landroid/preference/SwitchPreference;

    const/16 v16, 0x1

    invoke-virtual/range {v15 .. v16}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->mPowerButtonInstantlyLocks:Landroid/preference/SwitchPreference;

    const/16 v16, 0x0

    invoke-virtual/range {v15 .. v16}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    :cond_20
    if-eqz v13, :cond_21

    const/4 v15, 0x0

    invoke-virtual {v13, v15}, Landroid/preference/Preference;->setEnabled(Z)V

    :cond_21
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->mAutoFactoryReset:Landroid/preference/SwitchPreference;

    if-eqz v15, :cond_22

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->mAutoFactoryReset:Landroid/preference/SwitchPreference;

    const/16 v16, 0x0

    invoke-virtual/range {v15 .. v16}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    :cond_22
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->mLockAfter:Lcom/android/settings/TimeoutListPreference;

    if-eqz v15, :cond_23

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->mLockAfter:Lcom/android/settings/TimeoutListPreference;

    const/16 v16, 0x1

    invoke-virtual/range {v15 .. v16}, Lcom/android/settings/TimeoutListPreference;->semSetSummaryColorToColorPrimaryDark(Z)V

    :cond_23
    return-void

    :cond_24
    const/4 v15, 0x0

    goto/16 :goto_b

    :cond_25
    const/4 v15, 0x0

    goto/16 :goto_c

    :cond_26
    const/4 v15, 0x0

    goto/16 :goto_d

    :cond_27
    const/4 v15, 0x0

    goto/16 :goto_e
.end method

.method private RemoveMenu()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->mDirectionLockVibration:Landroid/preference/SwitchPreference;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->isVibrationSupport()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_0
    :goto_0
    iget v0, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->mLocktype:I

    const/high16 v1, 0x10000

    if-eq v0, v1, :cond_1

    iget v0, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->mLocktype:I

    const/high16 v1, 0x90000

    if-eq v0, v1, :cond_1

    iget v0, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->mLocktype:I

    const v1, 0x9100

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->mVisiblePattern:Landroid/preference/SwitchPreference;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->mVisiblePattern:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->mPowerButtonInstantlyLocks:Landroid/preference/SwitchPreference;

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->isDeviceLockTime:Z

    if-nez v0, :cond_4

    invoke-static {}, Lcom/android/settings/Utils;->isSupportPowerKey()Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_2
    :goto_1
    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->mBiometricsWithAutoWakeUp:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    return-void

    :cond_3
    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->mDirectionLockVibration:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_0

    :cond_4
    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->mPowerButtonInstantlyLocks:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_1
.end method

.method private disableUnusableTimeouts(J)V
    .locals 15

    iget-object v12, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->mLockAfter:Lcom/android/settings/TimeoutListPreference;

    invoke-virtual {v12}, Lcom/android/settings/TimeoutListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v2

    iget-object v12, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->mLockAfter:Lcom/android/settings/TimeoutListPreference;

    invoke-virtual {v12}, Lcom/android/settings/TimeoutListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v11

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    const-string/jumbo v13, "screen_off_timeout"

    const/4 v14, 0x0

    invoke-static {v12, v13, v14}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v12

    const/4 v13, 0x0

    invoke-static {v13, v12}, Ljava/lang/Math;->max(II)I

    move-result v12

    int-to-long v0, v12

    const/4 v3, 0x0

    :goto_0
    array-length v12, v11

    if-ge v3, v12, :cond_1

    aget-object v12, v11, v3

    invoke-interface {v12}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    cmp-long v12, v8, p1

    if-gtz v12, :cond_0

    aget-object v12, v2, v3

    invoke-virtual {v6, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    aget-object v12, v11, v3

    invoke-virtual {v7, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    const-string/jumbo v12, "SecuredLockSettingsMenu"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "revisedValues.size() : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v12

    add-int/lit8 v12, v12, -0x1

    invoke-virtual {v7, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/CharSequence;

    invoke-interface {v12}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    sub-long v4, p1, v12

    const-string/jumbo v12, "SecuredLockSettingsMenu"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "last_timeout : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v12, 0x0

    cmp-long v12, v4, v12

    if-lez v12, :cond_2

    array-length v12, v11

    add-int/lit8 v12, v12, -0x1

    aget-object v12, v11, v12

    invoke-interface {v12}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    cmp-long v12, p1, v12

    if-gez v12, :cond_2

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    invoke-direct/range {p0 .. p2}, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->getTimeoutNewEntry(J)Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x0

    aput-object v13, v12, v14

    const v13, 0x7f0b0a97

    invoke-virtual {p0, v13, v12}, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v6, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v7, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    iget-object v13, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->mLockAfter:Lcom/android/settings/TimeoutListPreference;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v12

    new-array v12, v12, [Ljava/lang/CharSequence;

    invoke-virtual {v6, v12}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v12

    check-cast v12, [Ljava/lang/CharSequence;

    invoke-virtual {v13, v12}, Lcom/android/settings/TimeoutListPreference;->setEntries([Ljava/lang/CharSequence;)V

    iget-object v13, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->mLockAfter:Lcom/android/settings/TimeoutListPreference;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v12

    new-array v12, v12, [Ljava/lang/CharSequence;

    invoke-virtual {v7, v12}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v12

    check-cast v12, [Ljava/lang/CharSequence;

    invoke-virtual {v13, v12}, Lcom/android/settings/TimeoutListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    iget-object v12, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->mLockAfter:Lcom/android/settings/TimeoutListPreference;

    invoke-virtual {v12}, Lcom/android/settings/TimeoutListPreference;->getValue()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v10

    int-to-long v12, v10

    cmp-long v12, v12, p1

    if-gtz v12, :cond_3

    iget-object v12, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->mLockAfter:Lcom/android/settings/TimeoutListPreference;

    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/android/settings/TimeoutListPreference;->setValue(Ljava/lang/String;)V

    :goto_1
    iget-object v13, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->mLockAfter:Lcom/android/settings/TimeoutListPreference;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-lez v12, :cond_4

    const/4 v12, 0x1

    :goto_2
    invoke-virtual {v13, v12}, Lcom/android/settings/TimeoutListPreference;->setEnabled(Z)V

    return-void

    :cond_3
    const-string/jumbo v12, "SecuredLockSettingsMenu"

    const-string/jumbo v13, "mLockAfter.setValueIndex(revisedValues.size()-1)"

    invoke-static {v12, v13}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v12, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->mLockAfter:Lcom/android/settings/TimeoutListPreference;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v13

    add-int/lit8 v13, v13, -0x1

    invoke-virtual {v12, v13}, Lcom/android/settings/TimeoutListPreference;->setValueIndex(I)V

    goto :goto_1

    :cond_4
    const/4 v12, 0x0

    goto :goto_2
.end method

.method private static getActiveTrustAgents(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;Landroid/app/admin/DevicePolicyManager;)Ljava/util/ArrayList;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/internal/widget/LockPatternUtils;",
            "Landroid/app/admin/DevicePolicyManager;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings/TrustAgentUtils$TrustAgentComponentInfo;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    sget-object v11, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->TRUST_AGENT_INTENT:Landroid/content/Intent;

    const/16 v12, 0x80

    invoke-virtual {v5, v11, v12}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v7

    sget v11, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->MY_USER_ID:I

    invoke-virtual {p1, v11}, Lcom/android/internal/widget/LockPatternUtils;->getEnabledTrustAgents(I)Ljava/util/List;

    move-result-object v2

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v11

    const/16 v12, 0x10

    invoke-static {p0, v12, v11}, Lcom/android/settingslib/RestrictedLockUtils;->checkIfKeyguardFeaturesDisabled(Landroid/content/Context;II)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object v0

    if-eqz v2, :cond_0

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v11

    if-eqz v11, :cond_1

    :cond_0
    :goto_0
    return-object v9

    :cond_1
    const/4 v3, 0x0

    :goto_1
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v11

    if-ge v3, v11, :cond_0

    invoke-interface {v7, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/ResolveInfo;

    iget-object v11, v6, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    if-nez v11, :cond_3

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_3
    invoke-static {v6, v5}, Lcom/android/settings/TrustAgentUtils;->checkProvidePermission(Landroid/content/pm/ResolveInfo;Landroid/content/pm/PackageManager;)Z

    move-result v11

    if-eqz v11, :cond_2

    invoke-static {v5, v6}, Lcom/android/settings/TrustAgentUtils;->getSettingsComponent(Landroid/content/pm/PackageManager;Landroid/content/pm/ResolveInfo;)Lcom/android/settings/TrustAgentUtils$TrustAgentComponentInfo;

    move-result-object v10

    if-eqz v10, :cond_2

    iget-object v11, v10, Lcom/android/settings/TrustAgentUtils$TrustAgentComponentInfo;->componentName:Landroid/content/ComponentName;

    if-eqz v11, :cond_2

    invoke-static {v6}, Lcom/android/settings/TrustAgentUtils;->getComponentName(Landroid/content/pm/ResolveInfo;)Landroid/content/ComponentName;

    move-result-object v11

    invoke-interface {v2, v11}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    iget-object v11, v10, Lcom/android/settings/TrustAgentUtils$TrustAgentComponentInfo;->title:Ljava/lang/String;

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_2

    if-eqz v0, :cond_4

    invoke-static {v6}, Lcom/android/settings/TrustAgentUtils;->getComponentName(Landroid/content/pm/ResolveInfo;)Landroid/content/ComponentName;

    move-result-object v11

    const/4 v12, 0x0

    invoke-virtual {p2, v12, v11}, Landroid/app/admin/DevicePolicyManager;->getTrustAgentConfiguration(Landroid/content/ComponentName;Landroid/content/ComponentName;)Ljava/util/List;

    move-result-object v11

    if-nez v11, :cond_4

    iput-object v0, v10, Lcom/android/settings/TrustAgentUtils$TrustAgentComponentInfo;->admin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    :cond_4
    iget-object v11, v10, Lcom/android/settings/TrustAgentUtils$TrustAgentComponentInfo;->summary:Ljava/lang/String;

    if-nez v11, :cond_5

    iget-object v11, v6, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget v4, v11, Landroid/content/pm/ServiceInfo;->labelRes:I

    const/4 v8, 0x0

    :try_start_0
    iget-object v11, v6, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v11, v11, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v5, v11}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/Resources;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v8

    :goto_2
    invoke-static {v8, v4}, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->isSmartLockPreference(Landroid/content/res/Resources;I)Ljava/lang/Boolean;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v11

    if-eqz v11, :cond_5

    if-eqz v8, :cond_5

    sget-object v11, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->mSmartLockString:Ljava/lang/String;

    if-eqz v11, :cond_5

    sget-object v11, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->mSmartLockString:Ljava/lang/String;

    iput-object v11, v10, Lcom/android/settings/TrustAgentUtils$TrustAgentComponentInfo;->summary:Ljava/lang/String;

    :cond_5
    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :catch_0
    move-exception v1

    const-string/jumbo v11, "SecuredLockSettingsMenu"

    const-string/jumbo v12, "getResourcesForApplication NameNotFoundException!"

    invoke-static {v11, v12}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_2
.end method

.method private getTimeoutNewEntry(J)Ljava/lang/String;
    .locals 11

    const-wide/16 v6, 0x3e8

    div-long v4, p1, v6

    const-wide/16 v6, 0x3c

    div-long v0, v4, v6

    const-wide/16 v6, 0x3c

    rem-long/2addr v4, v6

    const-string/jumbo v2, ""

    const-wide/16 v6, 0x0

    cmp-long v3, v0, v6

    if-lez v3, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    long-to-int v6, v0

    const v7, 0x7f130002

    invoke-virtual {v3, v7, v6}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v3

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    long-to-int v7, v0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/4 v8, 0x0

    aput-object v7, v6, v8

    invoke-static {v3, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    :cond_0
    const-wide/16 v6, 0x0

    cmp-long v3, v0, v6

    if-lez v3, :cond_1

    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-lez v3, :cond_1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v6, " "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_1
    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-lez v3, :cond_2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    long-to-int v7, v4

    const v8, 0x7f130003

    invoke-virtual {v6, v8, v7}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    long-to-int v8, v4

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/4 v9, 0x0

    aput-object v8, v7, v9

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_2
    const-string/jumbo v3, "SecuredLockSettingsMenu"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "getTimeoutNewEntry : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2
.end method

.method private isInDefaultTimeoutList(J)Z
    .locals 5

    const/4 v4, 0x0

    const/4 v1, 0x0

    iget-boolean v2, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->isDeviceLockTime:Z

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c0037

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    :goto_0
    if-nez v1, :cond_1

    return v4

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c0039

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_1
    array-length v2, v1

    if-ge v0, v2, :cond_3

    aget-object v2, v1, v0

    invoke-static {v2}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    cmp-long v2, v2, p1

    if-nez v2, :cond_2

    const/4 v2, 0x1

    return v2

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    return v4
.end method

.method public static isSmartLockPreference(Landroid/content/res/Resources;I)Ljava/lang/Boolean;
    .locals 9

    const/4 v8, 0x0

    const/4 v5, 0x0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    new-instance v1, Landroid/content/res/Configuration;

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v6

    invoke-direct {v1, v6}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    sget-object v6, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    iput-object v6, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    new-instance v2, Landroid/content/res/Resources;

    invoke-direct {v2, v0, v4, v1}, Landroid/content/res/Resources;-><init>(Landroid/content/res/AssetManager;Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;)V

    :try_start_0
    invoke-virtual {v2, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    :cond_0
    :goto_0
    if-nez v5, :cond_1

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    return-object v6

    :catch_0
    move-exception v3

    const-string/jumbo v5, ""

    goto :goto_0

    :cond_1
    const-string/jumbo v6, "Smart Lock"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_2

    const-string/jumbo v6, "SecuredLockSettingsMenu"

    const-string/jumbo v7, "isSmartLockSupported : true"

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    return-object v6

    :cond_2
    const-string/jumbo v6, "SecuredLockSettingsMenu"

    const-string/jumbo v7, "isSmartLockSupported : false"

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    return-object v6
.end method

.method private isVibrationSupport()Z
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/Utils;->hasHaptic(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/Utils;->isEnableIntensity(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private needShowSmartLockDialog(Landroid/content/Context;)Z
    .locals 4

    const/4 v3, 0x0

    const-string/jumbo v2, "secured_lock_settings_menu"

    invoke-virtual {p1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string/jumbo v2, "smart_lock_show_dialog"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    return v3

    :cond_0
    invoke-static {p1}, Lcom/android/settings/Utils;->isCHNSimInserted(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    return v2

    :cond_1
    return v3
.end method

.method private proceedPartialLanding(Ljava/lang/String;)V
    .locals 20

    const-string/jumbo v14, "SecuredLockSettingsMenu"

    const-string/jumbo v15, "proceedPartialLanding"

    invoke-static {v14, v15}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_0

    return-void

    :cond_0
    const-string/jumbo v14, "MakePatternVisibleOn"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_4

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->mVisiblePattern:Landroid/preference/SwitchPreference;

    invoke-virtual {v14}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v14

    if-eqz v14, :cond_2

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v15, "MakePatternVisible"

    const-string/jumbo v16, "AlreadyOn"

    const-string/jumbo v17, "yes"

    invoke-virtual/range {v14 .. v17}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v15, "SecureLockSettings"

    invoke-virtual {v14, v15}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    sget-object v15, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v14, v15}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->mVisiblePattern:Landroid/preference/SwitchPreference;

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v15

    invoke-virtual {v14, v15}, Landroid/preference/SwitchPreference;->performClick(Landroid/preference/PreferenceScreen;)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {v14}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v14

    if-eqz v14, :cond_3

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v15, "MakePatternVisible"

    const-string/jumbo v16, "AlreadyOn"

    const-string/jumbo v17, "no"

    invoke-virtual/range {v14 .. v17}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v15, "SecureLockSettings"

    invoke-virtual {v14, v15}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_3
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    sget-object v15, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v14, v15}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto :goto_0

    :cond_4
    const-string/jumbo v14, "MakePatternVisibleOff"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_7

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->mVisiblePattern:Landroid/preference/SwitchPreference;

    invoke-virtual {v14}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v14

    if-nez v14, :cond_5

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v15, "MakePatternVisible"

    const-string/jumbo v16, "AlreadyOff"

    const-string/jumbo v17, "yes"

    invoke-virtual/range {v14 .. v17}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v15, "SecureLockSettings"

    invoke-virtual {v14, v15}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    sget-object v15, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v14, v15}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto :goto_0

    :cond_5
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->mVisiblePattern:Landroid/preference/SwitchPreference;

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v15

    invoke-virtual {v14, v15}, Landroid/preference/SwitchPreference;->performClick(Landroid/preference/PreferenceScreen;)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {v14}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v14

    if-eqz v14, :cond_6

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v15, "MakePatternVisible"

    const-string/jumbo v16, "AlreadyOff"

    const-string/jumbo v17, "no"

    invoke-virtual/range {v14 .. v17}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v15, "SecureLockSettings"

    invoke-virtual {v14, v15}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_6
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    sget-object v15, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v14, v15}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0

    :cond_7
    const-string/jumbo v14, "LockAutomatically"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_8

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->getListView()Landroid/widget/ListView;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->mLockAfter:Lcom/android/settings/TimeoutListPreference;

    invoke-virtual {v15}, Lcom/android/settings/TimeoutListPreference;->getOrder()I

    move-result v15

    const/16 v16, 0x0

    invoke-virtual/range {v14 .. v16}, Landroid/widget/ListView;->setSelectionFromTop(II)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    sget-object v15, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v14, v15}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0

    :cond_8
    const-string/jumbo v14, "LockAutomaticallySet"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_11

    const/4 v7, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {v14}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getParamsSize()I

    move-result v14

    if-eqz v14, :cond_9

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getParamString(I)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_9

    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v14

    if-eqz v14, :cond_b

    :cond_9
    :goto_1
    if-nez v7, :cond_d

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->mLockAfter:Lcom/android/settings/TimeoutListPreference;

    invoke-virtual {v14}, Lcom/android/settings/TimeoutListPreference;->getSelectedItemSummary()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->mLockAfter:Lcom/android/settings/TimeoutListPreference;

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v15

    invoke-virtual {v14, v15}, Lcom/android/settings/TimeoutListPreference;->performClick(Landroid/preference/PreferenceScreen;)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v15, "Object"

    const-string/jumbo v16, "exist"

    const-string/jumbo v17, "No"

    invoke-virtual/range {v14 .. v17}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v5, :cond_a

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v15, "Object"

    invoke-virtual {v14, v15, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgResultParam(Ljava/lang/String;Ljava/lang/String;)V

    :cond_a
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v15, "LockAutomatically"

    invoke-virtual {v14, v15}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    sget-object v15, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v14, v15}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0

    :cond_b
    const-string/jumbo v14, ""

    invoke-virtual {v14, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_9

    const-string/jumbo v14, ", "

    const-string/jumbo v15, ""

    invoke-virtual {v6, v14, v15}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    const/16 v14, 0x64

    invoke-virtual {v6, v14}, Ljava/lang/String;->indexOf(I)I

    move-result v14

    add-int/lit8 v14, v14, 0x1

    invoke-virtual {v6, v14}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const-wide/16 v8, 0x0

    const/16 v14, 0x68

    :try_start_0
    invoke-virtual {v6, v14}, Ljava/lang/String;->indexOf(I)I

    move-result v14

    const/4 v15, 0x0

    invoke-virtual {v6, v15, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    const/16 v14, 0x68

    invoke-virtual {v6, v14}, Ljava/lang/String;->indexOf(I)I

    move-result v14

    add-int/lit8 v14, v14, 0x1

    const/16 v15, 0x6d

    invoke-virtual {v6, v15}, Ljava/lang/String;->indexOf(I)I

    move-result v15

    invoke-virtual {v6, v14, v15}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    const/16 v14, 0x6d

    invoke-virtual {v6, v14}, Ljava/lang/String;->indexOf(I)I

    move-result v14

    add-int/lit8 v14, v14, 0x1

    const/16 v15, 0x73

    invoke-virtual {v6, v15}, Ljava/lang/String;->indexOf(I)I

    move-result v15

    invoke-virtual {v6, v14, v15}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    invoke-static {v10}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v14

    const-wide/16 v16, 0xe10

    mul-long v14, v14, v16

    invoke-static {v11}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v16

    const-wide/16 v18, 0x3c

    mul-long v16, v16, v18

    add-long v14, v14, v16

    invoke-static {v12}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v16

    add-long v14, v14, v16

    const-wide/16 v16, 0x3e8

    mul-long v8, v14, v16

    const-string/jumbo v14, "SecuredLockSettingsMenu"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "timeout : "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->mLockAfter:Lcom/android/settings/TimeoutListPreference;

    invoke-virtual {v14}, Lcom/android/settings/TimeoutListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->mLockAfter:Lcom/android/settings/TimeoutListPreference;

    invoke-virtual {v14}, Lcom/android/settings/TimeoutListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v3

    const/4 v4, 0x0

    :goto_2
    array-length v14, v13

    if-ge v4, v14, :cond_9

    aget-object v14, v13, v4

    invoke-interface {v14}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v14

    cmp-long v14, v8, v14

    if-nez v14, :cond_c

    invoke-static {v8, v9}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v7

    aget-object v14, v3, v4

    invoke-interface {v14}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_1

    :catch_0
    move-exception v2

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->mLockAfter:Lcom/android/settings/TimeoutListPreference;

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v15

    invoke-virtual {v14, v15}, Lcom/android/settings/TimeoutListPreference;->performClick(Landroid/preference/PreferenceScreen;)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v15, "Object"

    const-string/jumbo v16, "valid"

    const-string/jumbo v17, "No"

    invoke-virtual/range {v14 .. v17}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v15, "LockAutomatically"

    invoke-virtual {v14, v15}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    sget-object v15, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v14, v15}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    return-void

    :cond_c
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_d
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->mLockAfter:Lcom/android/settings/TimeoutListPreference;

    invoke-virtual {v14}, Lcom/android/settings/TimeoutListPreference;->getValue()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v7, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_e

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v15, "Object"

    const-string/jumbo v16, "AlreadySet"

    const-string/jumbo v17, "Yes"

    invoke-virtual/range {v14 .. v17}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v15, "Object"

    invoke-virtual {v14, v15, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgResultParam(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v15, "LockAutomatically"

    invoke-virtual {v14, v15}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    sget-object v15, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v14, v15}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0

    :cond_e
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->mLockAfter:Lcom/android/settings/TimeoutListPreference;

    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v7}, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->mLockAfter:Lcom/android/settings/TimeoutListPreference;

    invoke-virtual {v14}, Lcom/android/settings/TimeoutListPreference;->isDialogShowing()Z

    move-result v14

    if-eqz v14, :cond_f

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->mLockAfter:Lcom/android/settings/TimeoutListPreference;

    invoke-virtual {v14}, Lcom/android/settings/TimeoutListPreference;->updateSelectedItem()V

    :cond_f
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {v14}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v14

    if-eqz v14, :cond_10

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v15, "Object"

    const-string/jumbo v16, "AlreadySet"

    const-string/jumbo v17, "No"

    invoke-virtual/range {v14 .. v17}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v15, "Object"

    invoke-virtual {v14, v15, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgResultParam(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v15, "LockAutomatically"

    invoke-virtual {v14, v15}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_10
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    sget-object v15, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v14, v15}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0

    :cond_11
    const-string/jumbo v14, "LockInstantlyWithPowerKeyOn"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_14

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->mPowerButtonInstantlyLocks:Landroid/preference/SwitchPreference;

    invoke-virtual {v14}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v14

    if-eqz v14, :cond_12

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v15, "LockInstantlyWithPowerKeyOn"

    const-string/jumbo v16, "AlreadySet"

    const-string/jumbo v17, "yes"

    invoke-virtual/range {v14 .. v17}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v15, "SecureLockSettings"

    invoke-virtual {v14, v15}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    sget-object v15, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v14, v15}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0

    :cond_12
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->mPowerButtonInstantlyLocks:Landroid/preference/SwitchPreference;

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v15

    invoke-virtual {v14, v15}, Landroid/preference/SwitchPreference;->performClick(Landroid/preference/PreferenceScreen;)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {v14}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v14

    if-eqz v14, :cond_13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v15, "LockInstantlyWithPowerKeyOn"

    const-string/jumbo v16, "AlreadySet"

    const-string/jumbo v17, "no"

    invoke-virtual/range {v14 .. v17}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v15, "SecureLockSettings"

    invoke-virtual {v14, v15}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_13
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    sget-object v15, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v14, v15}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0

    :cond_14
    const-string/jumbo v14, "LockInstantlyWithPowerKeyOff"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_17

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->mPowerButtonInstantlyLocks:Landroid/preference/SwitchPreference;

    invoke-virtual {v14}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v14

    if-nez v14, :cond_15

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v15, "LockInstantlyWithPowerKeyOff"

    const-string/jumbo v16, "AlreadySet"

    const-string/jumbo v17, "yes"

    invoke-virtual/range {v14 .. v17}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v15, "SecureLockSettings"

    invoke-virtual {v14, v15}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    sget-object v15, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v14, v15}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0

    :cond_15
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->mPowerButtonInstantlyLocks:Landroid/preference/SwitchPreference;

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v15

    invoke-virtual {v14, v15}, Landroid/preference/SwitchPreference;->performClick(Landroid/preference/PreferenceScreen;)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {v14}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v14

    if-eqz v14, :cond_16

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v15, "LockInstantlyWithPowerKeyOff"

    const-string/jumbo v16, "AlreadySet"

    const-string/jumbo v17, "no"

    invoke-virtual/range {v14 .. v17}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v15, "SecureLockSettings"

    invoke-virtual {v14, v15}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_16
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    sget-object v15, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v14, v15}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0

    :cond_17
    const-string/jumbo v14, "AutoFactoryResetOn"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_1a

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->mAutoFactoryReset:Landroid/preference/SwitchPreference;

    invoke-virtual {v14}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v14

    if-eqz v14, :cond_18

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v15, "AutoFactoryResetOn"

    const-string/jumbo v16, "AlreadySet"

    const-string/jumbo v17, "yes"

    invoke-virtual/range {v14 .. v17}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v15, "SecureLockSettings"

    invoke-virtual {v14, v15}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    sget-object v15, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v14, v15}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0

    :cond_18
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->mAutoFactoryReset:Landroid/preference/SwitchPreference;

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v15

    invoke-virtual {v14, v15}, Landroid/preference/SwitchPreference;->performClick(Landroid/preference/PreferenceScreen;)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {v14}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v14

    if-eqz v14, :cond_19

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v15, "AutoFactoryResetOn"

    const-string/jumbo v16, "AlreadySet"

    const-string/jumbo v17, "no"

    invoke-virtual/range {v14 .. v17}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v15, "SecureLockSettings"

    invoke-virtual {v14, v15}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_19
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    sget-object v15, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v14, v15}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0

    :cond_1a
    const-string/jumbo v14, "AutoFactoryResetOff"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_1d

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->mAutoFactoryReset:Landroid/preference/SwitchPreference;

    invoke-virtual {v14}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v14

    if-nez v14, :cond_1b

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v15, "AutoFactoryResetOff"

    const-string/jumbo v16, "AlreadySet"

    const-string/jumbo v17, "yes"

    invoke-virtual/range {v14 .. v17}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v15, "SecureLockSettings"

    invoke-virtual {v14, v15}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    sget-object v15, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v14, v15}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0

    :cond_1b
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->mAutoFactoryReset:Landroid/preference/SwitchPreference;

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v15

    invoke-virtual {v14, v15}, Landroid/preference/SwitchPreference;->performClick(Landroid/preference/PreferenceScreen;)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {v14}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v14

    if-eqz v14, :cond_1c

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v15, "AutoFactoryResetOff"

    const-string/jumbo v16, "AlreadySet"

    const-string/jumbo v17, "no"

    invoke-virtual/range {v14 .. v17}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v15, "SecureLockSettings"

    invoke-virtual {v14, v15}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_1c
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    sget-object v15, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v14, v15}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0

    :cond_1d
    const-string/jumbo v14, "LockNetworkAndSecurityOn"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_20

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->mLockNetworkAndSecurity:Landroid/preference/SwitchPreference;

    invoke-virtual {v14}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v14

    if-eqz v14, :cond_1e

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v15, "LockNetworkAndSecurity"

    const-string/jumbo v16, "AlreadyOn"

    const-string/jumbo v17, "yes"

    invoke-virtual/range {v14 .. v17}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v15, "SecureLockSettings"

    invoke-virtual {v14, v15}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    sget-object v15, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v14, v15}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0

    :cond_1e
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->mLockNetworkAndSecurity:Landroid/preference/SwitchPreference;

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v15

    invoke-virtual {v14, v15}, Landroid/preference/SwitchPreference;->performClick(Landroid/preference/PreferenceScreen;)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {v14}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v14

    if-eqz v14, :cond_1f

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v15, "LockNetworkAndSecurity"

    const-string/jumbo v16, "AlreadyOn"

    const-string/jumbo v17, "no"

    invoke-virtual/range {v14 .. v17}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v15, "SecureLockSettings"

    invoke-virtual {v14, v15}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_1f
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    sget-object v15, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v14, v15}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0

    :cond_20
    const-string/jumbo v14, "LockNetworkAndSecurityOff"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_23

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->mLockNetworkAndSecurity:Landroid/preference/SwitchPreference;

    invoke-virtual {v14}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v14

    if-nez v14, :cond_21

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v15, "LockNetworkAndSecurity"

    const-string/jumbo v16, "AlreadyOff"

    const-string/jumbo v17, "yes"

    invoke-virtual/range {v14 .. v17}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v15, "SecureLockSettings"

    invoke-virtual {v14, v15}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    sget-object v15, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v14, v15}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0

    :cond_21
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->mLockNetworkAndSecurity:Landroid/preference/SwitchPreference;

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v15

    invoke-virtual {v14, v15}, Landroid/preference/SwitchPreference;->performClick(Landroid/preference/PreferenceScreen;)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {v14}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v14

    if-eqz v14, :cond_22

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v15, "LockNetworkAndSecurity"

    const-string/jumbo v16, "AlreadyOff"

    const-string/jumbo v17, "no"

    invoke-virtual/range {v14 .. v17}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v15, "SecureLockSettings"

    invoke-virtual {v14, v15}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_22
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    sget-object v15, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v14, v15}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0

    :cond_23
    const-string/jumbo v14, "SmartLock"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_1

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->smartlock:Landroid/preference/Preference;

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v15

    invoke-virtual {v14, v15}, Landroid/preference/Preference;->performClick(Landroid/preference/PreferenceScreen;)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {v14}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v14

    if-eqz v14, :cond_24

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v15, "SecuredLockType"

    const-string/jumbo v16, "AlreadySet"

    const-string/jumbo v17, "yes"

    invoke-virtual/range {v14 .. v17}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v15, "SmartLock"

    invoke-virtual {v14, v15}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_24
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    sget-object v15, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v14, v15}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0
.end method

.method private setupLockAfterPreference()V
    .locals 14

    const-wide/16 v12, 0x0

    const/4 v11, 0x0

    const/4 v10, 0x0

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string/jumbo v7, "lock_screen_lock_after_timeout"

    const-wide/16 v8, 0x1388

    invoke-static {v6, v7, v8, v9}, Landroid/provider/Settings$Secure;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v2

    iget-object v6, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->mLockAfter:Lcom/android/settings/TimeoutListPreference;

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/settings/TimeoutListPreference;->setValue(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->mLockAfter:Lcom/android/settings/TimeoutListPreference;

    invoke-virtual {v6, p0}, Lcom/android/settings/TimeoutListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    iget-object v6, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->mDPM:Landroid/app/admin/DevicePolicyManager;

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->mDPM:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v6, v11}, Landroid/app/admin/DevicePolicyManager;->getMaximumTimeToLock(Landroid/content/ComponentName;)J

    move-result-wide v0

    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string/jumbo v7, "screen_off_timeout"

    invoke-static {v6, v7, v10}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    invoke-static {v10, v6}, Ljava/lang/Math;->max(II)I

    move-result v6

    int-to-long v4, v6

    cmp-long v6, v0, v12

    if-lez v6, :cond_0

    iget-boolean v6, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->isDeviceLockTime:Z

    if-eqz v6, :cond_2

    :goto_1
    invoke-static {v12, v13, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v6

    invoke-direct {p0, v6, v7}, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->disableUnusableTimeouts(J)V

    :cond_0
    return-void

    :cond_1
    const-wide/16 v0, 0x0

    goto :goto_0

    :cond_2
    sub-long/2addr v0, v4

    goto :goto_1
.end method

.method private showSmartLockDialog(Landroid/content/Context;Ljava/lang/CharSequence;)V
    .locals 7

    move-object v2, p2

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    const v5, 0x7f040372

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    const v4, 0x7f11085a

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    const v4, 0x7f11019d

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const v4, 0x7f0b11fa

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    new-instance v4, Landroid/app/AlertDialog$Builder;

    invoke-direct {v4, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    new-instance v5, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu$2;

    invoke-direct {v5, p0, v0, p2}, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu$2;-><init>(Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;Landroid/widget/CheckBox;Ljava/lang/CharSequence;)V

    const v6, 0x7f0b0512

    invoke-virtual {v4, v6, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    new-instance v5, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu$3;

    invoke-direct {v5, p0}, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu$3;-><init>(Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;)V

    const v6, 0x7f0b0509

    invoke-virtual {v4, v6, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    new-instance v5, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu$4;

    invoke-direct {v5, p0}, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu$4;-><init>(Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;)V

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method

.method private startTrustAgentIntent(Ljava/lang/CharSequence;)V
    .locals 4

    const/4 v3, 0x0

    new-instance v1, Lcom/android/settings/ChooseLockSettingsHelper;

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2, p0}, Lcom/android/settings/ChooseLockSettingsHelper;-><init>(Landroid/app/Activity;Landroid/app/Fragment;)V

    const/16 v2, 0x7e

    invoke-virtual {v1, v2, p1}, Lcom/android/settings/ChooseLockSettingsHelper;->launchConfirmationActivity(ILjava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v2, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->mTrustAgentClickIntent:Landroid/content/Intent;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->mTrustAgentClickIntent:Landroid/content/Intent;

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->startActivity(Landroid/content/Intent;)V

    iput-object v3, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->mTrustAgentClickIntent:Landroid/content/Intent;

    :cond_0
    return-void
.end method

.method private updateLockAfterPreferenceSummary()V
    .locals 22

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v18

    const-string/jumbo v19, "lock_screen_lock_after_timeout"

    const-wide/16 v20, 0x1388

    invoke-static/range {v18 .. v21}, Landroid/provider/Settings$Secure;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->mLockAfter:Lcom/android/settings/TimeoutListPreference;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/settings/TimeoutListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->mLockAfter:Lcom/android/settings/TimeoutListPreference;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/settings/TimeoutListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v15

    const/4 v4, 0x0

    const/4 v10, 0x0

    :goto_0
    array-length v0, v15

    move/from16 v18, v0

    move/from16 v0, v18

    if-ge v10, v0, :cond_1

    aget-object v18, v15, v10

    invoke-interface/range {v18 .. v18}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Long;->longValue()J

    move-result-wide v16

    cmp-long v18, v6, v16

    if-ltz v18, :cond_0

    move v4, v10

    :cond_0
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->mDPM:Landroid/app/admin/DevicePolicyManager;

    move-object/from16 v18, v0

    if-eqz v18, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->mDPM:Landroid/app/admin/DevicePolicyManager;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Landroid/app/admin/DevicePolicyManager;->getMaximumTimeToLock(Landroid/content/ComponentName;)J

    move-result-wide v2

    :goto_1
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v18

    const-string/jumbo v19, "screen_off_timeout"

    const/16 v20, 0x0

    invoke-static/range {v18 .. v20}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v18

    const/16 v19, 0x0

    move/from16 v0, v19

    move/from16 v1, v18

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v18

    move/from16 v0, v18

    int-to-long v8, v0

    const-wide/16 v18, 0x0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->isDeviceLockTime:Z

    move/from16 v20, v0

    if-eqz v20, :cond_3

    :goto_2
    move-wide/from16 v0, v18

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v12

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->isDeviceLockTime:Z

    move/from16 v18, v0

    if-eqz v18, :cond_4

    const v14, 0x7f0b0a94

    :goto_3
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->isDeviceLockTime:Z

    move/from16 v18, v0

    if-eqz v18, :cond_5

    const v11, 0x7f0b0a95

    :goto_4
    aget-object v18, v15, v4

    invoke-interface/range {v18 .. v18}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Long;->longValue()J

    move-result-wide v18

    cmp-long v18, v18, v12

    if-gez v18, :cond_7

    cmp-long v18, v12, v6

    if-gez v18, :cond_7

    const-string/jumbo v18, "SecuredLockSettingsMenu"

    const-string/jumbo v19, "updateLockAfterPreferenceSummary, Long.valueOf(values[best].toString()) < maxTimeout && maxTimeout < currentTimeout"

    invoke-static/range {v18 .. v19}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->isDeviceLockTime:Z

    move/from16 v18, v0

    if-eqz v18, :cond_6

    cmp-long v18, v12, v8

    if-gez v18, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->mLockAfter:Lcom/android/settings/TimeoutListPreference;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    aget-object v20, v5, v4

    const/16 v21, 0x0

    aput-object v20, v19, v21

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v11, v1}, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Lcom/android/settings/TimeoutListPreference;->setSummary(Ljava/lang/CharSequence;)V

    :goto_5
    return-void

    :cond_2
    const-wide/16 v2, 0x0

    goto/16 :goto_1

    :cond_3
    sub-long/2addr v2, v8

    goto :goto_2

    :cond_4
    const v14, 0x7f0b141a

    goto :goto_3

    :cond_5
    const v11, 0x7f0b0a96

    goto :goto_4

    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->mLockAfter:Lcom/android/settings/TimeoutListPreference;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    invoke-direct {v0, v12, v13}, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->getTimeoutNewEntry(J)Ljava/lang/String;

    move-result-object v20

    const/16 v21, 0x0

    aput-object v20, v19, v21

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v14, v1}, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Lcom/android/settings/TimeoutListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_5

    :cond_7
    if-nez v4, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->mLockAfter:Lcom/android/settings/TimeoutListPreference;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    aget-object v20, v5, v4

    const/16 v21, 0x0

    aput-object v20, v19, v21

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v11, v1}, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Lcom/android/settings/TimeoutListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_5

    :cond_8
    move-object/from16 v0, p0

    invoke-direct {v0, v6, v7}, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->isInDefaultTimeoutList(J)Z

    move-result v18

    if-eqz v18, :cond_a

    cmp-long v18, v6, v12

    if-ltz v18, :cond_9

    const-wide/16 v18, 0x0

    cmp-long v18, v12, v18

    if-nez v18, :cond_a

    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->mLockAfter:Lcom/android/settings/TimeoutListPreference;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    aget-object v20, v5, v4

    const/16 v21, 0x0

    aput-object v20, v19, v21

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v14, v1}, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Lcom/android/settings/TimeoutListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_5

    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->mLockAfter:Lcom/android/settings/TimeoutListPreference;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    invoke-direct {v0, v12, v13}, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->getTimeoutNewEntry(J)Ljava/lang/String;

    move-result-object v20

    const/16 v21, 0x0

    aput-object v20, v19, v21

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v14, v1}, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Lcom/android/settings/TimeoutListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_5
.end method

.method private verifyCurrentLock()V
    .locals 5

    iget-object v1, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    sget v2, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->MY_USER_ID:I

    invoke-virtual {v1, v2}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "SecuredLockSettingsMenu"

    const-string/jumbo v2, "finish the page, device is not secure"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->finishActivity()V

    :cond_0
    new-instance v0, Lcom/android/settings/ChooseLockSettingsHelper;

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/android/settings/ChooseLockSettingsHelper;-><init>(Landroid/app/Activity;Landroid/app/Fragment;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f0b1471

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    sget v2, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->MY_USER_ID:I

    const/16 v3, 0x12c

    const/4 v4, 0x1

    invoke-virtual {v0, v3, v1, v4, v2}, Lcom/android/settings/ChooseLockSettingsHelper;->launchConfirmationActivity(ILjava/lang/CharSequence;ZI)Z

    move-result v1

    if-nez v1, :cond_1

    :goto_0
    return-void

    :cond_1
    const-string/jumbo v1, "SecuredLockSettingsMenu"

    const-string/jumbo v2, "Need to confirm Current Lock"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method protected getMetricsCategory()I
    .locals 2

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0f022b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    return v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, -0x1

    invoke-super {p0, p1, p2, p3}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onActivityResult(IILandroid/content/Intent;)V

    const/16 v1, 0x7e

    if-ne p1, v1, :cond_1

    if-ne p2, v2, :cond_1

    iget-object v1, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->mTrustAgentClickIntent:Landroid/content/Intent;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->mTrustAgentClickIntent:Landroid/content/Intent;

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iput-object v3, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->mTrustAgentClickIntent:Landroid/content/Intent;

    :cond_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto :goto_0

    :cond_1
    const/16 v1, 0x12c

    if-ne p1, v1, :cond_4

    if-eq p2, v2, :cond_3

    const-string/jumbo v1, "SecuredLockSettingsMenu"

    const-string/jumbo v2, "Lock confirm failed"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->finish()V

    :cond_2
    :goto_1
    return-void

    :cond_3
    const-string/jumbo v1, "SecuredLockSettingsMenu"

    const-string/jumbo v2, "Lock confirmed"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->mPasswordConfirmed:Z

    iget-object v1, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isRuleRunning()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getStateId()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->proceedPartialLanding(Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->mLockAfter:Lcom/android/settings/TimeoutListPreference;

    invoke-virtual {v0}, Lcom/android/settings/TimeoutListPreference;->rotateSettingsListPreference()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {p0}, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->verifyCurrentLock()V

    const v0, 0x7f0b0a78

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->mSmartLockString:Ljava/lang/String;

    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f0b0a79

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->mSmartLockString:Ljava/lang/String;

    :cond_0
    const-string/jumbo v0, "DeviceLockTime"

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v1

    const-string/jumbo v2, "CscFeature_Setting_ReplaceMenuLockAutoAs"

    invoke-virtual {v1, v2}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->isDeviceLockTime:Z

    const-string/jumbo v0, "device_policy"

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    iput-object v0, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->mDPM:Landroid/app/admin/DevicePolicyManager;

    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    sget v1, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->MY_USER_ID:I

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality(I)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->mLocktype:I

    new-instance v0, Lcom/android/settings/ChooseLockSettingsHelper;

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/settings/ChooseLockSettingsHelper;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->mChooseLockSettingsHelper:Lcom/android/settings/ChooseLockSettingsHelper;

    const-string/jumbo v0, "user"

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    iput-object v0, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->mUserManager:Landroid/os/UserManager;

    if-eqz p1, :cond_1

    const-string/jumbo v0, "trust_agent_click_intent"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "trust_agent_click_intent"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    iput-object v0, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->mTrustAgentClickIntent:Landroid/content/Intent;

    :cond_1
    iget v0, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->mLocktype:I

    const v1, 0x10001

    if-ne v0, v1, :cond_2

    const v0, 0x7f080106

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->addPreferencesFromResource(I)V

    :goto_0
    invoke-direct {p0}, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->InitValue()V

    invoke-direct {p0}, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->RemoveMenu()V

    new-instance v0, Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-direct {v0}, Lcom/samsung/android/settings/bixby/EmSettingsManager;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    return-void

    :cond_2
    const v0, 0x7f0800fe

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->addPreferencesFromResource(I)V

    goto :goto_0
.end method

.method public onPause()V
    .locals 2

    invoke-super {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onPause()V

    const-string/jumbo v0, "SecuredLockSettingsMenu"

    const-string/jumbo v1, "onPause"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v1, "SecureLockSettings"

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->clearEmService(Ljava/lang/Object;)V

    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 15

    invoke-virtual/range {p1 .. p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v13

    const-string/jumbo v0, "visiblepattern"

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    move-object/from16 v0, p2

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    sget v2, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->MY_USER_ID:I

    invoke-virtual {v1, v0, v2}, Lcom/android/internal/widget/LockPatternUtils;->setVisiblePatternEnabled(ZI)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0f022c

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual/range {p2 .. p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x3e8

    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v1, v2, v0}, Lcom/android/settings/Utils;->insertEventwithDetailLog(Landroid/content/Context;ILjava/lang/Object;)V

    :cond_0
    :goto_1
    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    const-string/jumbo v0, "power_button_instantly_locks"

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v1, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    move-object/from16 v0, p2

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    sget v2, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->MY_USER_ID:I

    invoke-virtual {v1, v0, v2}, Lcom/android/internal/widget/LockPatternUtils;->setPowerButtonInstantlyLocks(ZI)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0f022e

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual/range {p2 .. p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_3

    const/16 v0, 0x3e8

    :goto_2
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v1, v2, v0}, Lcom/android/settings/Utils;->insertEventwithDetailLog(Landroid/content/Context;ILjava/lang/Object;)V

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    goto :goto_2

    :cond_4
    const-string/jumbo v0, "auto_factory_reset"

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "auto_swipe_main_user"

    move-object/from16 v0, p2

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_5

    const/4 v0, 0x1

    :goto_3
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string/jumbo v2, "com.android.settings"

    const-string/jumbo v3, "SLAV"

    move-object/from16 v0, p2

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_6

    const/16 v0, 0x3e8

    :goto_4
    int-to-long v4, v0

    invoke-static {v1, v2, v3, v4, v5}, Lcom/android/settings/Utils;->insertStatusLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0f022f

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual/range {p2 .. p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_7

    const/16 v0, 0x3e8

    :goto_5
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v1, v2, v0}, Lcom/android/settings/Utils;->insertEventwithDetailLog(Landroid/content/Context;ILjava/lang/Object;)V

    goto/16 :goto_1

    :cond_5
    const/4 v0, 0x0

    goto :goto_3

    :cond_6
    const/4 v0, 0x0

    goto :goto_4

    :cond_7
    const/4 v0, 0x0

    goto :goto_5

    :cond_8
    const-string/jumbo v0, "lock_network_and_security"

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "lock_function_val"

    move-object/from16 v0, p2

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_9

    const/4 v0, 0x1

    :goto_6
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0f0231

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual/range {p2 .. p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_a

    const/16 v0, 0x3e8

    :goto_7
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v1, v2, v0}, Lcom/android/settings/Utils;->insertEventwithDetailLog(Landroid/content/Context;ILjava/lang/Object;)V

    goto/16 :goto_1

    :cond_9
    const/4 v0, 0x0

    goto :goto_6

    :cond_a
    const/4 v0, 0x0

    goto :goto_7

    :cond_b
    const-string/jumbo v0, "biometrics_with_auto_wakeup"

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "biometrics_auto_wakeup_enabled"

    move-object/from16 v0, p2

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    :goto_8
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0f0232

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual/range {p2 .. p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_d

    const/16 v0, 0x3e8

    :goto_9
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v1, v2, v0}, Lcom/android/settings/Utils;->insertEventwithDetailLog(Landroid/content/Context;ILjava/lang/Object;)V

    goto/16 :goto_1

    :cond_c
    const/4 v0, 0x0

    goto :goto_8

    :cond_d
    const/4 v0, 0x0

    goto :goto_9

    :cond_e
    const-string/jumbo v0, "lock_after_timeout"

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    check-cast p2, Ljava/lang/String;

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v14

    int-to-long v0, v14

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->isInDefaultTimeoutList(J)Z

    move-result v0

    if-eqz v0, :cond_11

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "lock_after_timeout_rollback"

    invoke-static {v0, v1, v14}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :goto_a
    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "lock_screen_lock_after_timeout"

    invoke-static {v0, v1, v14}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_b
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "screen lock timeout : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v6

    const/4 v0, 0x5

    const/4 v1, 0x5

    const/4 v2, 0x1

    invoke-static/range {v0 .. v6}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "screen_off_timeout"

    const-wide/16 v2, 0x7530

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v10

    iget-boolean v0, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->isDeviceLockTime:Z

    if-eqz v0, :cond_f

    if-eqz v14, :cond_f

    int-to-long v0, v14

    cmp-long v0, v0, v10

    if-gez v0, :cond_f

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->showDeviceLockDialog()V

    :cond_f
    invoke-direct {p0}, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->updateLockAfterPreferenceSummary()V

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "lock_screen_lock_after_timeout"

    const-wide/16 v2, 0x1388

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$Secure;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v8

    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->mLockAfter:Lcom/android/settings/TimeoutListPreference;

    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/TimeoutListPreference;->setValue(Ljava/lang/String;)V

    const/4 v7, 0x0

    const-wide/16 v0, 0x1388

    cmp-long v0, v8, v0

    if-nez v0, :cond_12

    const/4 v7, 0x1

    :cond_10
    :goto_c
    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0f022d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/android/settings/Utils;->insertEventwithDetailLog(Landroid/content/Context;ILjava/lang/Object;)V

    goto/16 :goto_1

    :cond_11
    const v14, 0x1b7741

    goto/16 :goto_a

    :catch_0
    move-exception v12

    const-string/jumbo v0, "SecuritySettings"

    const-string/jumbo v1, "could not persist lockAfter timeout setting"

    invoke-static {v0, v1, v12}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_b

    :cond_12
    const-wide/16 v0, 0x3a98

    cmp-long v0, v8, v0

    if-nez v0, :cond_13

    const/4 v7, 0x2

    goto :goto_c

    :cond_13
    const-wide/16 v0, 0x7530

    cmp-long v0, v8, v0

    if-nez v0, :cond_14

    const/4 v7, 0x3

    goto :goto_c

    :cond_14
    const-wide/32 v0, 0xea60

    cmp-long v0, v8, v0

    if-nez v0, :cond_15

    const/4 v7, 0x4

    goto :goto_c

    :cond_15
    const-wide/32 v0, 0x1d4c0

    cmp-long v0, v8, v0

    if-nez v0, :cond_16

    const/4 v7, 0x5

    goto :goto_c

    :cond_16
    const-wide/32 v0, 0x493e0

    cmp-long v0, v8, v0

    if-nez v0, :cond_17

    const/4 v7, 0x6

    goto :goto_c

    :cond_17
    const-wide/32 v0, 0x927c0

    cmp-long v0, v8, v0

    if-nez v0, :cond_18

    const/4 v7, 0x7

    goto :goto_c

    :cond_18
    const-wide/32 v0, 0x1b7740

    cmp-long v0, v8, v0

    if-nez v0, :cond_10

    const/16 v7, 0x8

    goto :goto_c

    :cond_19
    const-string/jumbo v0, "lock_screen_visible"

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b

    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->mDirectionLockVisible:Landroid/preference/SwitchPreference;

    invoke-virtual {v0}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_1a

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "universal_lock_visible"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    sget v1, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->MY_USER_ID:I

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Lcom/android/internal/widget/LockPatternUtils;->setDirectionShowEnabled(ZI)V

    goto/16 :goto_1

    :cond_1a
    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "universal_lock_visible"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    sget v1, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->MY_USER_ID:I

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Lcom/android/internal/widget/LockPatternUtils;->setDirectionShowEnabled(ZI)V

    goto/16 :goto_1

    :cond_1b
    const-string/jumbo v0, "lock_screen_vibration"

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1d

    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->mDirectionLockVibration:Landroid/preference/SwitchPreference;

    invoke-virtual {v0}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_1c

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "universal_lock_vibration"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    sget v1, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->MY_USER_ID:I

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Lcom/android/internal/widget/LockPatternUtils;->setDirectionVibrationEnabled(ZI)V

    goto/16 :goto_1

    :cond_1c
    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "universal_lock_vibration"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    sget v1, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->MY_USER_ID:I

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Lcom/android/internal/widget/LockPatternUtils;->setDirectionVibrationEnabled(ZI)V

    goto/16 :goto_1

    :cond_1d
    const-string/jumbo v0, "lock_screen_beep"

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1f

    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->mDirectionLockBeep:Landroid/preference/SwitchPreference;

    invoke-virtual {v0}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_1e

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "universal_lock_beep"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    sget v1, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->MY_USER_ID:I

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Lcom/android/internal/widget/LockPatternUtils;->setDirectionSoundEnabled(ZI)V

    goto/16 :goto_1

    :cond_1e
    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "universal_lock_beep"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    sget v1, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->MY_USER_ID:I

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Lcom/android/internal/widget/LockPatternUtils;->setDirectionSoundEnabled(ZI)V

    goto/16 :goto_1

    :cond_1f
    const-string/jumbo v0, "lock_screen_voice"

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->mDirectionLockVoice:Landroid/preference/SwitchPreference;

    invoke-virtual {v0}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_20

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "universal_lock_voice"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    sget v1, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->MY_USER_ID:I

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Lcom/android/internal/widget/LockPatternUtils;->setDirectionVoiceEnabled(ZI)V

    goto/16 :goto_1

    :cond_20
    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "universal_lock_voice"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    sget v1, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->MY_USER_ID:I

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Lcom/android/internal/widget/LockPatternUtils;->setDirectionVoiceEnabled(ZI)V

    goto/16 :goto_1
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 5

    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v3, "trust_agent"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0f0230

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    invoke-static {v0, v3}, Lcom/android/settings/Utils;->insertEventLog(Landroid/content/Context;I)V

    invoke-virtual {p2}, Landroid/preference/Preference;->getIntent()Landroid/content/Intent;

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->mTrustAgentClickIntent:Landroid/content/Intent;

    invoke-virtual {p2}, Landroid/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {}, Lcom/android/settings/Utils;->isChinaModel()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-direct {p0, v0}, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->needShowSmartLockDialog(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-direct {p0, v0, v2}, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->showSmartLockDialog(Landroid/content/Context;Ljava/lang/CharSequence;)V

    :goto_0
    const/4 v3, 0x1

    return v3

    :cond_0
    invoke-direct {p0, v2}, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->startTrustAgentIntent(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_1
    invoke-super {p0, p1, p2}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v3

    return v3
.end method

.method public onResume()V
    .locals 4

    invoke-super {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onResume()V

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/Utils;->isDesktopMode(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->finishFragment()V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

    const-string/jumbo v3, "SecureLockSettings"

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->bindEmService(Landroid/content/Context;Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;Ljava/lang/Object;)V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->mTrustAgentClickIntent:Landroid/content/Intent;

    if-eqz v0, :cond_0

    const-string/jumbo v0, "trust_agent_click_intent"

    iget-object v1, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->mTrustAgentClickIntent:Landroid/content/Intent;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    :cond_0
    return-void
.end method

.method public showDeviceLockDialog()V
    .locals 6

    const/4 v5, 0x0

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v0, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v4, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->mDeviceLockDialog:Landroid/app/AlertDialog;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->mDeviceLockDialog:Landroid/app/AlertDialog;

    invoke-virtual {v4}, Landroid/app/AlertDialog;->dismiss()V

    iput-object v5, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->mDeviceLockDialog:Landroid/app/AlertDialog;

    :cond_0
    const-string/jumbo v4, "layout_inflater"

    invoke-virtual {p0, v4}, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    const v4, 0x7f040215

    invoke-virtual {v1, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    const v4, 0x7f11065d

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const v4, 0x7f0b0a99

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    const v4, 0x7f0b1668

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    const v4, 0x104000a

    invoke-virtual {v0, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    iput-object v4, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->mDeviceLockDialog:Landroid/app/AlertDialog;

    iget-object v4, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->mDeviceLockDialog:Landroid/app/AlertDialog;

    invoke-virtual {v4}, Landroid/app/AlertDialog;->show()V

    return-void
.end method
