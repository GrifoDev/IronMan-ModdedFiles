.class Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings$ScreenLockSearchIndexProvider;
.super Lcom/android/settings/search/BaseSearchIndexProvider;
.source "LockscreenMenuSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ScreenLockSearchIndexProvider"
.end annotation


# instance fields
.field private final mClassName:Ljava/lang/String;

.field private mLockUtil:Lcom/android/internal/widget/LockPatternUtils;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/settings/search/BaseSearchIndexProvider;-><init>()V

    const-class v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings$ScreenLockSearchIndexProvider;->mClassName:Ljava/lang/String;

    return-void
.end method

.method private isGuestUser(Landroid/content/Context;)Z
    .locals 4

    const/4 v3, 0x0

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p1}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v1

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isGuest()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    return v1

    :cond_0
    return v3
.end method


# virtual methods
.method public getNonIndexableKeys(Landroid/content/Context;)Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    const/4 v3, 0x0

    invoke-static {p1}, Lcom/android/settings/Utils;->isSupportLMM(Landroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v7

    if-nez v7, :cond_0

    const/4 v3, 0x1

    :cond_0
    const/4 v0, 0x0

    invoke-static {p1}, Lcom/android/settings/Utils;->hasFMMDMClient(Landroid/content/Context;)Z

    move-result v0

    invoke-static {}, Lcom/android/settings/Utils;->isSupportNotificationsIconsOnly()Z

    move-result v7

    if-eqz v7, :cond_19

    const-string/jumbo v7, "lock_screen_menu_notifications"

    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_0
    iget-object v7, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings$ScreenLockSearchIndexProvider;->mLockUtil:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v8

    invoke-virtual {v7, v8}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v7

    if-nez v7, :cond_1

    const-string/jumbo v7, "secured_lock_settigns"

    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    iget-object v7, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings$ScreenLockSearchIndexProvider;->mLockUtil:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v8

    invoke-virtual {v7, v8}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v7

    if-nez v7, :cond_2

    iget-object v7, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings$ScreenLockSearchIndexProvider;->mLockUtil:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v8

    invoke-virtual {v7, v8}, Lcom/android/internal/widget/LockPatternUtils;->isLockScreenDisabled(I)Z

    move-result v7

    if-eqz v7, :cond_2

    const-string/jumbo v7, "show_information"

    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string/jumbo v7, "secured_lock_settigns"

    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    iget-object v7, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings$ScreenLockSearchIndexProvider;->mLockUtil:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v8

    invoke-virtual {v7, v8}, Lcom/android/internal/widget/LockPatternUtils;->isLockScreenDisabled(I)Z

    move-result v7

    if-eqz v7, :cond_3

    const-string/jumbo v7, "lock_screen_menu_notifications"

    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string/jumbo v7, "lock_screen_menu_sec_notifications"

    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    invoke-static {p1}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->-wrap2(Landroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_4

    const-string/jumbo v7, "find_my_mobile"

    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4
    invoke-static {p1}, Lcom/android/settings/Utils;->isShopDemo(Landroid/content/Context;)Z

    move-result v7

    if-nez v7, :cond_5

    invoke-static {}, Lcom/android/settings/Utils;->isLDUModel()Z

    move-result v7

    if-eqz v7, :cond_6

    :cond_5
    const-string/jumbo v7, "finger_scanner"

    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string/jumbo v7, "iris_settings"

    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string/jumbo v7, "unlock_set_or_change"

    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string/jumbo v7, "other_security_settings"

    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string/jumbo v7, "silent_lock"

    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_6
    invoke-static {p1}, Lcom/android/settings/Utils;->hasFingerprintFeature(Landroid/content/Context;)Z

    move-result v7

    if-nez v7, :cond_1a

    const-string/jumbo v7, "finger_scanner"

    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_7
    :goto_1
    invoke-static {}, Lcom/android/settings/Utils;->isSupportIris()Z

    move-result v7

    if-nez v7, :cond_8

    const-string/jumbo v7, "iris_settings"

    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_8
    invoke-static {}, Lcom/android/settings/Utils;->isSupportSilentLock()Z

    move-result v7

    if-nez v7, :cond_9

    const-string/jumbo v7, "silent_lock"

    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_9
    invoke-static {p1}, Lcom/android/settings/Utils;->isDesktopMode(Landroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_a

    const-string/jumbo v7, "lock_app_shortcut"

    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string/jumbo v7, "lock_screen_menu_notifications"

    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string/jumbo v7, "lock_screen_menu_sec_notifications"

    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string/jumbo v7, "unlock_set_or_change"

    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string/jumbo v7, "secured_lock_settigns"

    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_a
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v7

    invoke-static {p1, v7}, Lcom/android/settings/Utils;->isFaceDisabled(Landroid/content/Context;I)Z

    move-result v7

    if-eqz v7, :cond_b

    const-string/jumbo v7, "silent_lock"

    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_b
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v7

    invoke-static {p1, v7}, Lcom/android/settings/Utils;->isFingerprintDisabled(Landroid/content/Context;I)Z

    move-result v7

    if-eqz v7, :cond_c

    const-string/jumbo v7, "finger_scanner"

    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_c
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v7

    invoke-static {p1, v7}, Lcom/android/settings/Utils;->isIrisDisabled(Landroid/content/Context;I)Z

    move-result v7

    if-eqz v7, :cond_d

    const-string/jumbo v7, "iris_settings"

    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_d
    const-string/jumbo v7, "app_ops_settings"

    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {p1}, Lcom/samsung/android/knox/SemPersonaManager;->isKioskModeEnabled(Landroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_e

    const-string/jumbo v7, "lock_screen_menu_notifications"

    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string/jumbo v7, "lock_screen_menu_sec_notifications"

    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string/jumbo v7, "unlock_set_or_change"

    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string/jumbo v7, "show_information"

    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string/jumbo v7, "secured_lock_settigns"

    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string/jumbo v7, "toggle_install_applications"

    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_e
    invoke-static {}, Lcom/android/settings/Utils;->isSupportCseriesUX()Z

    move-result v7

    if-eqz v7, :cond_f

    const-string/jumbo v7, "toggle_install_applications"

    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_f
    invoke-static {}, Lcom/android/settings/Utils;->isSupportIris()Z

    move-result v7

    if-nez v7, :cond_10

    const-string/jumbo v7, "iris_settings"

    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_10
    invoke-static {p1}, Lcom/android/settings/Utils;->isSupportGraceUXHeroView(Landroid/content/Context;)Z

    move-result v7

    if-nez v7, :cond_11

    invoke-static {p1}, Lcom/android/settings/Utils;->isShopDemo(Landroid/content/Context;)Z

    move-result v7

    if-nez v7, :cond_11

    invoke-static {}, Lcom/android/settings/Utils;->isLDUModel()Z

    move-result v7

    if-nez v7, :cond_11

    :cond_11
    const-string/jumbo v7, "key_private_mode"

    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v7, "com.sec.knox.securefolder.CREATE_SECURE_FOLDER"

    invoke-virtual {v1, v7}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v1, v6}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v7

    if-eqz v7, :cond_1b

    const/4 v2, 0x1

    :goto_2
    const-string/jumbo v7, "persona"

    invoke-virtual {p1, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/knox/SemPersonaManager;

    invoke-virtual {v5}, Lcom/samsung/android/knox/SemPersonaManager;->isUserManaged()Z

    move-result v7

    if-eqz v7, :cond_1c

    if-eqz v2, :cond_1c

    :goto_3
    invoke-static {p1}, Lcom/android/settings/Utils;->hasSamsungPassApplication(Landroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_12

    invoke-static {p1}, Lcom/android/settings/Utils;->hasSamsungPassFrameworkPackage(Landroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_12

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v7

    if-eqz v7, :cond_13

    :cond_12
    const-string/jumbo v7, "samsung_pass"

    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_13
    invoke-static {p1}, Lcom/android/settings/Utils;->isSharedDeviceEnabled(Landroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_14

    const-string/jumbo v7, "silent_lock"

    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {p1}, Lcom/android/settings/Utils;->isSharedDeviceSupportIris(Landroid/content/Context;)Z

    move-result v7

    if-nez v7, :cond_14

    const-string/jumbo v7, "iris_settings"

    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_14
    const-string/jumbo v7, "com.samsung.android.app.aodservice"

    invoke-static {p1, v7}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_15

    const-string/jumbo v7, "always_on_screen"

    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_15
    invoke-static {}, Lcom/android/settings/Utils;->isUCMKeyguardEnabled()Z

    move-result v7

    if-eqz v7, :cond_16

    const-string/jumbo v7, "iris_settings"

    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string/jumbo v7, "finger_scanner"

    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string/jumbo v7, "silent_lock"

    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_16
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v7

    const-string/jumbo v8, "SEC_FLOATING_FEATURE_FRAMEWORK_SUPPORT_APP_PERMISSION_MONITOR"

    invoke-virtual {v7, v8}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_17

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v7

    if-eqz v7, :cond_18

    :cond_17
    const-string/jumbo v7, "app_permission_monitor"

    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_18
    return-object v4

    :cond_19
    const-string/jumbo v7, "lock_screen_menu_sec_notifications"

    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_1a
    invoke-direct {p0, p1}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings$ScreenLockSearchIndexProvider;->isGuestUser(Landroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_7

    const-string/jumbo v7, "finger_scanner"

    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :cond_1b
    const/4 v2, 0x0

    goto/16 :goto_2

    :cond_1c
    const-string/jumbo v7, "secure_folder"

    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3
.end method

.method public getRawDataToIndex(Landroid/content/Context;Z)Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Z)",
            "Ljava/util/List",
            "<",
            "Lcom/android/settings/search/SearchIndexableRaw;",
            ">;"
        }
    .end annotation

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    new-instance v2, Lcom/android/settings/search/SearchIndexableRaw;

    invoke-direct {v2, p1}, Lcom/android/settings/search/SearchIndexableRaw;-><init>(Landroid/content/Context;)V

    const-string/jumbo v8, "unlock_set_or_change"

    iput-object v8, v2, Lcom/android/settings/search/SearchIndexableRaw;->key:Ljava/lang/String;

    const-class v8, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;

    invoke-virtual {v8}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v2, Lcom/android/settings/search/SearchIndexableRaw;->className:Ljava/lang/String;

    const v8, 0x7f0b1471

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v2, Lcom/android/settings/search/SearchIndexableRaw;->title:Ljava/lang/String;

    const v8, 0x7f0b1471

    invoke-static {p1, v8}, Lcom/android/settings/Utils;->getKeywordForSearch(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v2, Lcom/android/settings/search/SearchIndexableRaw;->keywords:Ljava/lang/String;

    const v8, 0x7f0b0573

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v2, Lcom/android/settings/search/SearchIndexableRaw;->screenTitle:Ljava/lang/String;

    const/4 v8, 0x3

    iput v8, v2, Lcom/android/settings/search/SearchIndexableRaw;->menu_type:I

    invoke-interface {v7, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v2, Lcom/android/settings/search/SearchIndexableRaw;

    invoke-direct {v2, p1}, Lcom/android/settings/search/SearchIndexableRaw;-><init>(Landroid/content/Context;)V

    const-string/jumbo v8, "lock_app_shortcut"

    iput-object v8, v2, Lcom/android/settings/search/SearchIndexableRaw;->key:Ljava/lang/String;

    const-class v8, Lcom/samsung/android/settings/lockappshortcut/LockAppShortcutSettings;

    invoke-virtual {v8}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v2, Lcom/android/settings/search/SearchIndexableRaw;->className:Ljava/lang/String;

    const v8, 0x7f0b0b0e

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v2, Lcom/android/settings/search/SearchIndexableRaw;->title:Ljava/lang/String;

    const v8, 0x7f0b0573

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v2, Lcom/android/settings/search/SearchIndexableRaw;->screenTitle:Ljava/lang/String;

    invoke-interface {v7, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lcom/android/settings/Utils;->isLockscreenMenuTreeForAOD()Z

    move-result v8

    if-eqz v8, :cond_0

    iget-object v8, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings$ScreenLockSearchIndexProvider;->mLockUtil:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->-get0()I

    move-result v9

    invoke-virtual {v8, v9}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v8

    if-eqz v8, :cond_0

    iget-object v9, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings$ScreenLockSearchIndexProvider;->mLockUtil:Lcom/android/internal/widget/LockPatternUtils;

    const-class v8, Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {p1, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/app/admin/DevicePolicyManager;

    invoke-static {p1, v9, v8}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getActiveTrustAgents(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;Landroid/app/admin/DevicePolicyManager;)Ljava/util/ArrayList;

    move-result-object v1

    const/4 v4, 0x0

    :goto_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v4, v8, :cond_0

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/TrustAgentUtils$TrustAgentComponentInfo;

    new-instance v2, Lcom/android/settings/search/SearchIndexableRaw;

    invoke-direct {v2, p1}, Lcom/android/settings/search/SearchIndexableRaw;-><init>(Landroid/content/Context;)V

    iget-object v8, v0, Lcom/android/settings/TrustAgentUtils$TrustAgentComponentInfo;->title:Ljava/lang/String;

    iput-object v8, v2, Lcom/android/settings/search/SearchIndexableRaw;->title:Ljava/lang/String;

    iget-object v8, v0, Lcom/android/settings/TrustAgentUtils$TrustAgentComponentInfo;->summary:Ljava/lang/String;

    iput-object v8, v2, Lcom/android/settings/search/SearchIndexableRaw;->summaryOn:Ljava/lang/String;

    const v8, 0x7f0b0573

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v2, Lcom/android/settings/search/SearchIndexableRaw;->screenTitle:Ljava/lang/String;

    const-string/jumbo v8, "trust_agent"

    iput-object v8, v2, Lcom/android/settings/search/SearchIndexableRaw;->key:Ljava/lang/String;

    invoke-interface {v7, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    new-instance v2, Lcom/android/settings/search/SearchIndexableRaw;

    invoke-direct {v2, p1}, Lcom/android/settings/search/SearchIndexableRaw;-><init>(Landroid/content/Context;)V

    const-class v8, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;

    invoke-virtual {v8}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v2, Lcom/android/settings/search/SearchIndexableRaw;->className:Ljava/lang/String;

    const-string/jumbo v8, "show_information"

    iput-object v8, v2, Lcom/android/settings/search/SearchIndexableRaw;->key:Ljava/lang/String;

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v8

    const-string/jumbo v9, "SEC_FLOATING_FEATURE_COMMON_SUPPORT_AOD_LOCK_SHARE_INFO"

    invoke-virtual {v8, v9}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_a

    const v8, 0x7f0b0a40

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v2, Lcom/android/settings/search/SearchIndexableRaw;->title:Ljava/lang/String;

    const v8, 0x7f0b0a40

    invoke-static {p1, v8}, Lcom/android/settings/Utils;->getKeywordForSearch(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v2, Lcom/android/settings/search/SearchIndexableRaw;->keywords:Ljava/lang/String;

    :goto_1
    const-string/jumbo v8, "com.samsung.android.app.aodservice"

    invoke-static {p1, v8}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_b

    const v8, 0x7f0b0a42

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v2, Lcom/android/settings/search/SearchIndexableRaw;->summaryOn:Ljava/lang/String;

    :goto_2
    const v8, 0x7f0b0573

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v2, Lcom/android/settings/search/SearchIndexableRaw;->screenTitle:Ljava/lang/String;

    invoke-interface {v7, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v2, Lcom/android/settings/search/SearchIndexableRaw;

    invoke-direct {v2, p1}, Lcom/android/settings/search/SearchIndexableRaw;-><init>(Landroid/content/Context;)V

    const-string/jumbo v8, "toggle_install_applications"

    iput-object v8, v2, Lcom/android/settings/search/SearchIndexableRaw;->key:Ljava/lang/String;

    const v8, 0x7f0b1824

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v2, Lcom/android/settings/search/SearchIndexableRaw;->title:Ljava/lang/String;

    const v8, 0x7f0b1824

    invoke-static {p1, v8}, Lcom/android/settings/Utils;->getKeywordForSearch(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v2, Lcom/android/settings/search/SearchIndexableRaw;->keywords:Ljava/lang/String;

    invoke-static {}, Lcom/android/settings/Utils;->isChinaModel()Z

    move-result v8

    if-eqz v8, :cond_c

    const v8, 0x7f0b0a24

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v2, Lcom/android/settings/search/SearchIndexableRaw;->summaryOn:Ljava/lang/String;

    :goto_3
    const v8, 0x7f0b0573

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v2, Lcom/android/settings/search/SearchIndexableRaw;->screenTitle:Ljava/lang/String;

    invoke-interface {v7, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v8

    const-string/jumbo v9, "SEC_FLOATING_FEATURE_FRAMEWORK_SUPPORT_APP_PERMISSION_MONITOR"

    invoke-virtual {v8, v9}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1

    new-instance v2, Lcom/android/settings/search/SearchIndexableRaw;

    invoke-direct {v2, p1}, Lcom/android/settings/search/SearchIndexableRaw;-><init>(Landroid/content/Context;)V

    const-string/jumbo v8, "app_permission_monitor"

    iput-object v8, v2, Lcom/android/settings/search/SearchIndexableRaw;->key:Ljava/lang/String;

    const v8, 0x7f0b1214

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v2, Lcom/android/settings/search/SearchIndexableRaw;->title:Ljava/lang/String;

    const-string/jumbo v8, ""

    iput-object v8, v2, Lcom/android/settings/search/SearchIndexableRaw;->summaryOff:Ljava/lang/String;

    const-string/jumbo v8, ""

    iput-object v8, v2, Lcom/android/settings/search/SearchIndexableRaw;->summaryOn:Ljava/lang/String;

    const v8, 0x7f0b0573

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v2, Lcom/android/settings/search/SearchIndexableRaw;->screenTitle:Ljava/lang/String;

    invoke-interface {v7, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    const/4 v5, 0x0

    invoke-static {p1}, Lcom/android/settings/Utils;->isSupportLMM(Landroid/content/Context;)Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v8

    if-nez v8, :cond_2

    const/4 v5, 0x1

    :cond_2
    const/4 v3, 0x0

    invoke-static {p1}, Lcom/android/settings/Utils;->hasFMMDMClient(Landroid/content/Context;)Z

    move-result v3

    if-eqz v5, :cond_3

    if-eqz v3, :cond_d

    :cond_3
    :goto_4
    iget-object v8, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings$ScreenLockSearchIndexProvider;->mLockUtil:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v9

    invoke-virtual {v8, v9}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v8

    if-eqz v8, :cond_4

    new-instance v2, Lcom/android/settings/search/SearchIndexableRaw;

    invoke-direct {v2, p1}, Lcom/android/settings/search/SearchIndexableRaw;-><init>(Landroid/content/Context;)V

    const-string/jumbo v8, "secured_lock_settigns"

    iput-object v8, v2, Lcom/android/settings/search/SearchIndexableRaw;->key:Ljava/lang/String;

    const-class v8, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;

    invoke-virtual {v8}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v2, Lcom/android/settings/search/SearchIndexableRaw;->className:Ljava/lang/String;

    const v8, 0x7f0b0a76

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v2, Lcom/android/settings/search/SearchIndexableRaw;->title:Ljava/lang/String;

    const v8, 0x7f0b0a76

    invoke-static {p1, v8}, Lcom/android/settings/Utils;->getKeywordForSearch(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v2, Lcom/android/settings/search/SearchIndexableRaw;->keywords:Ljava/lang/String;

    const-string/jumbo v8, ""

    iput-object v8, v2, Lcom/android/settings/search/SearchIndexableRaw;->summaryOff:Ljava/lang/String;

    const-string/jumbo v8, ""

    iput-object v8, v2, Lcom/android/settings/search/SearchIndexableRaw;->summaryOn:Ljava/lang/String;

    const v8, 0x7f0b0573

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v2, Lcom/android/settings/search/SearchIndexableRaw;->screenTitle:Ljava/lang/String;

    invoke-interface {v7, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4
    invoke-static {}, Lcom/android/settings/Utils;->isLockscreenMenuTreeForAOD()Z

    move-result v8

    if-eqz v8, :cond_5

    new-instance v2, Lcom/android/settings/search/SearchIndexableRaw;

    invoke-direct {v2, p1}, Lcom/android/settings/search/SearchIndexableRaw;-><init>(Landroid/content/Context;)V

    const-string/jumbo v8, "always_on_screen"

    iput-object v8, v2, Lcom/android/settings/search/SearchIndexableRaw;->key:Ljava/lang/String;

    const-string/jumbo v8, "android.intent.action.MAIN"

    iput-object v8, v2, Lcom/android/settings/search/SearchIndexableRaw;->intentAction:Ljava/lang/String;

    const-string/jumbo v8, "com.samsung.android.app.aodservice"

    iput-object v8, v2, Lcom/android/settings/search/SearchIndexableRaw;->intentTargetPackage:Ljava/lang/String;

    const-string/jumbo v8, "com.samsung.android.app.aodservice.settings.AODSettingsMain"

    iput-object v8, v2, Lcom/android/settings/search/SearchIndexableRaw;->intentTargetClass:Ljava/lang/String;

    const v8, 0x7f0b04d0

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v2, Lcom/android/settings/search/SearchIndexableRaw;->title:Ljava/lang/String;

    const v8, 0x7f0b04d0

    invoke-static {p1, v8}, Lcom/android/settings/Utils;->getKeywordForSearch(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v2, Lcom/android/settings/search/SearchIndexableRaw;->keywords:Ljava/lang/String;

    const-string/jumbo v8, ""

    iput-object v8, v2, Lcom/android/settings/search/SearchIndexableRaw;->summaryOff:Ljava/lang/String;

    const-string/jumbo v8, ""

    iput-object v8, v2, Lcom/android/settings/search/SearchIndexableRaw;->summaryOn:Ljava/lang/String;

    const v8, 0x7f0b0573

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v2, Lcom/android/settings/search/SearchIndexableRaw;->screenTitle:Ljava/lang/String;

    invoke-interface {v7, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_5
    invoke-static {}, Lcom/android/settings/Utils;->isSupportCseriesUX()Z

    move-result v8

    if-nez v8, :cond_6

    new-instance v2, Lcom/android/settings/search/SearchIndexableRaw;

    invoke-direct {v2, p1}, Lcom/android/settings/search/SearchIndexableRaw;-><init>(Landroid/content/Context;)V

    const-string/jumbo v8, "other_security_settings"

    iput-object v8, v2, Lcom/android/settings/search/SearchIndexableRaw;->key:Ljava/lang/String;

    const-class v8, Lcom/samsung/android/settings/OtherSecuritySettings;

    invoke-virtual {v8}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v2, Lcom/android/settings/search/SearchIndexableRaw;->className:Ljava/lang/String;

    const v8, 0x7f0b0a43

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v2, Lcom/android/settings/search/SearchIndexableRaw;->title:Ljava/lang/String;

    const v8, 0x7f0b0a43

    invoke-static {p1, v8}, Lcom/android/settings/Utils;->getKeywordForSearch(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v2, Lcom/android/settings/search/SearchIndexableRaw;->keywords:Ljava/lang/String;

    const v8, 0x7f0b0a44

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v2, Lcom/android/settings/search/SearchIndexableRaw;->summaryOn:Ljava/lang/String;

    const v8, 0x7f0b0573

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v2, Lcom/android/settings/search/SearchIndexableRaw;->screenTitle:Ljava/lang/String;

    invoke-interface {v7, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_6
    invoke-static {}, Lcom/android/settings/Utils;->isSupportIris()Z

    move-result v8

    if-eqz v8, :cond_7

    invoke-static {p1}, Lcom/android/settings/Utils;->isShopDemo(Landroid/content/Context;)Z

    move-result v8

    if-eqz v8, :cond_e

    :cond_7
    :goto_5
    invoke-static {p1}, Lcom/android/settings/Utils;->hasFingerprintFeature(Landroid/content/Context;)Z

    move-result v8

    if-eqz v8, :cond_8

    invoke-static {p1}, Lcom/android/settings/Utils;->isShopDemo(Landroid/content/Context;)Z

    move-result v8

    if-eqz v8, :cond_10

    :cond_8
    :goto_6
    invoke-static {}, Lcom/android/settings/Utils;->isSupportBioFace()Z

    move-result v8

    if-eqz v8, :cond_9

    invoke-static {p1}, Lcom/android/settings/Utils;->isShopDemo(Landroid/content/Context;)Z

    move-result v8

    if-eqz v8, :cond_12

    :cond_9
    :goto_7
    return-object v7

    :cond_a
    const v8, 0x7f0b0ab6

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v2, Lcom/android/settings/search/SearchIndexableRaw;->title:Ljava/lang/String;

    const v8, 0x7f0b0ab6

    invoke-static {p1, v8}, Lcom/android/settings/Utils;->getKeywordForSearch(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v2, Lcom/android/settings/search/SearchIndexableRaw;->keywords:Ljava/lang/String;

    goto/16 :goto_1

    :cond_b
    const v8, 0x7f0b0a41

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v2, Lcom/android/settings/search/SearchIndexableRaw;->summaryOn:Ljava/lang/String;

    goto/16 :goto_2

    :cond_c
    const v8, 0x7f0b0446

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v2, Lcom/android/settings/search/SearchIndexableRaw;->summaryOn:Ljava/lang/String;

    goto/16 :goto_3

    :cond_d
    new-instance v2, Lcom/android/settings/search/SearchIndexableRaw;

    invoke-direct {v2, p1}, Lcom/android/settings/search/SearchIndexableRaw;-><init>(Landroid/content/Context;)V

    const-string/jumbo v8, "find_my_mobile"

    iput-object v8, v2, Lcom/android/settings/search/SearchIndexableRaw;->key:Ljava/lang/String;

    const v8, 0x7f0b0909

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v2, Lcom/android/settings/search/SearchIndexableRaw;->title:Ljava/lang/String;

    const v8, 0x7f0b0909

    invoke-static {p1, v8}, Lcom/android/settings/Utils;->getKeywordForSearch(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v2, Lcom/android/settings/search/SearchIndexableRaw;->keywords:Ljava/lang/String;

    const-string/jumbo v8, ""

    iput-object v8, v2, Lcom/android/settings/search/SearchIndexableRaw;->summaryOff:Ljava/lang/String;

    const-string/jumbo v8, ""

    iput-object v8, v2, Lcom/android/settings/search/SearchIndexableRaw;->summaryOn:Ljava/lang/String;

    const v8, 0x7f0b0573

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v2, Lcom/android/settings/search/SearchIndexableRaw;->screenTitle:Ljava/lang/String;

    invoke-interface {v7, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_4

    :cond_e
    invoke-static {p1}, Lcom/android/settings/Utils;->isSharedDeviceSupportIris(Landroid/content/Context;)Z

    move-result v8

    if-eqz v8, :cond_7

    new-instance v2, Lcom/android/settings/search/SearchIndexableRaw;

    invoke-direct {v2, p1}, Lcom/android/settings/search/SearchIndexableRaw;-><init>(Landroid/content/Context;)V

    const-string/jumbo v8, "iris_settings"

    iput-object v8, v2, Lcom/android/settings/search/SearchIndexableRaw;->key:Ljava/lang/String;

    const-string/jumbo v8, "android.intent.action.MAIN"

    iput-object v8, v2, Lcom/android/settings/search/SearchIndexableRaw;->intentAction:Ljava/lang/String;

    const-string/jumbo v8, "com.android.settings"

    iput-object v8, v2, Lcom/android/settings/search/SearchIndexableRaw;->intentTargetPackage:Ljava/lang/String;

    const-string/jumbo v8, "com.samsung.android.settings.iris.IrisLockSettings"

    iput-object v8, v2, Lcom/android/settings/search/SearchIndexableRaw;->intentTargetClass:Ljava/lang/String;

    const v8, 0x7f0b0985

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v2, Lcom/android/settings/search/SearchIndexableRaw;->title:Ljava/lang/String;

    const v8, 0x7f0b0985

    invoke-static {p1, v8}, Lcom/android/settings/Utils;->getKeywordForSearch(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v2, Lcom/android/settings/search/SearchIndexableRaw;->keywords:Ljava/lang/String;

    const v8, 0x7f0b0573

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v2, Lcom/android/settings/search/SearchIndexableRaw;->screenTitle:Ljava/lang/String;

    invoke-static {p1}, Lcom/android/settings/Utils;->isDesktopMode(Landroid/content/Context;)Z

    move-result v8

    if-eqz v8, :cond_f

    const/4 v8, 0x3

    iput v8, v2, Lcom/android/settings/search/SearchIndexableRaw;->menu_type:I

    :goto_8
    invoke-interface {v7, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_5

    :cond_f
    const/4 v8, 0x2

    iput v8, v2, Lcom/android/settings/search/SearchIndexableRaw;->menu_type:I

    goto :goto_8

    :cond_10
    new-instance v2, Lcom/android/settings/search/SearchIndexableRaw;

    invoke-direct {v2, p1}, Lcom/android/settings/search/SearchIndexableRaw;-><init>(Landroid/content/Context;)V

    const-string/jumbo v8, "finger_scanner"

    iput-object v8, v2, Lcom/android/settings/search/SearchIndexableRaw;->key:Ljava/lang/String;

    const-string/jumbo v8, "android.intent.action.MAIN"

    iput-object v8, v2, Lcom/android/settings/search/SearchIndexableRaw;->intentAction:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v2, Lcom/android/settings/search/SearchIndexableRaw;->intentTargetPackage:Ljava/lang/String;

    const-class v8, Lcom/android/settings/fingerprint/FingerprintEntry;

    invoke-virtual {v8}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v2, Lcom/android/settings/search/SearchIndexableRaw;->intentTargetClass:Ljava/lang/String;

    const v8, 0x7f0b0984

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v2, Lcom/android/settings/search/SearchIndexableRaw;->title:Ljava/lang/String;

    const v8, 0x7f0b0984

    invoke-static {p1, v8}, Lcom/android/settings/Utils;->getKeywordForSearch(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v2, Lcom/android/settings/search/SearchIndexableRaw;->keywords:Ljava/lang/String;

    const v8, 0x7f0b0573

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v2, Lcom/android/settings/search/SearchIndexableRaw;->screenTitle:Ljava/lang/String;

    invoke-static {p1}, Lcom/android/settings/Utils;->isDesktopMode(Landroid/content/Context;)Z

    move-result v8

    if-eqz v8, :cond_11

    const/4 v8, 0x3

    iput v8, v2, Lcom/android/settings/search/SearchIndexableRaw;->menu_type:I

    :goto_9
    invoke-interface {v7, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_6

    :cond_11
    const/4 v8, 0x2

    iput v8, v2, Lcom/android/settings/search/SearchIndexableRaw;->menu_type:I

    goto :goto_9

    :cond_12
    invoke-static {p1}, Lcom/android/settings/Utils;->isSharedDeviceEnabled(Landroid/content/Context;)Z

    move-result v8

    if-nez v8, :cond_9

    new-instance v2, Lcom/android/settings/search/SearchIndexableRaw;

    invoke-direct {v2, p1}, Lcom/android/settings/search/SearchIndexableRaw;-><init>(Landroid/content/Context;)V

    const-string/jumbo v8, "silent_lock"

    iput-object v8, v2, Lcom/android/settings/search/SearchIndexableRaw;->key:Ljava/lang/String;

    const-string/jumbo v8, "android.intent.action.MAIN"

    iput-object v8, v2, Lcom/android/settings/search/SearchIndexableRaw;->intentAction:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v2, Lcom/android/settings/search/SearchIndexableRaw;->intentTargetPackage:Ljava/lang/String;

    const-class v8, Lcom/samsung/android/settings/face/FaceEntry;

    invoke-virtual {v8}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v2, Lcom/android/settings/search/SearchIndexableRaw;->intentTargetClass:Ljava/lang/String;

    const v8, 0x7f0b0983

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v2, Lcom/android/settings/search/SearchIndexableRaw;->title:Ljava/lang/String;

    const v8, 0x7f0b0983

    invoke-static {p1, v8}, Lcom/android/settings/Utils;->getKeywordForSearch(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v2, Lcom/android/settings/search/SearchIndexableRaw;->keywords:Ljava/lang/String;

    const v8, 0x7f0b0573

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v2, Lcom/android/settings/search/SearchIndexableRaw;->screenTitle:Ljava/lang/String;

    invoke-static {p1}, Lcom/android/settings/Utils;->isDesktopMode(Landroid/content/Context;)Z

    move-result v8

    if-eqz v8, :cond_13

    const/4 v8, 0x3

    iput v8, v2, Lcom/android/settings/search/SearchIndexableRaw;->menu_type:I

    :goto_a
    invoke-interface {v7, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_7

    :cond_13
    const/4 v8, 0x2

    iput v8, v2, Lcom/android/settings/search/SearchIndexableRaw;->menu_type:I

    goto :goto_a
.end method

.method public getXmlResourcesToIndex(Landroid/content/Context;Z)Ljava/util/List;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Z)",
            "Ljava/util/List",
            "<",
            "Landroid/provider/SearchIndexableResource;",
            ">;"
        }
    .end annotation

    const/4 v4, 0x0

    const/4 v11, 0x0

    new-instance v10, Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {v10, p1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v10, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings$ScreenLockSearchIndexProvider;->mLockUtil:Lcom/android/internal/widget/LockPatternUtils;

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    new-instance v7, Landroid/provider/SearchIndexableResource;

    invoke-direct {v7, p1}, Landroid/provider/SearchIndexableResource;-><init>(Landroid/content/Context;)V

    iget-object v10, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings$ScreenLockSearchIndexProvider;->mClassName:Ljava/lang/String;

    iput-object v10, v7, Landroid/provider/SearchIndexableResource;->className:Ljava/lang/String;

    const v10, 0x7f08009a

    iput v10, v7, Landroid/provider/SearchIndexableResource;->xmlResId:I

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {p1}, Lcom/android/settings/Utils;->hasFMMDMClient(Landroid/content/Context;)Z

    move-result v1

    invoke-static {}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->-get0()I

    move-result v10

    if-nez v10, :cond_0

    const/4 v4, 0x1

    :cond_0
    if-eqz v4, :cond_1

    invoke-static {p1}, Lcom/android/settings/Utils;->isShopDemo(Landroid/content/Context;)Z

    move-result v10

    if-eqz v10, :cond_2

    :cond_1
    :goto_0
    return-object v6

    :cond_2
    invoke-static {}, Lcom/android/settings/Utils;->isLDUModel()Z

    move-result v10

    if-nez v10, :cond_1

    invoke-static {}, Lcom/android/settings/Utils;->isSupportCseriesUX()Z

    move-result v10

    if-nez v10, :cond_1

    const/4 v5, 0x0

    invoke-static {}, Lcom/android/internal/widget/LockPatternUtils;->isDeviceEncryptionEnabled()Z

    move-result v10

    if-eqz v10, :cond_6

    invoke-static {}, Lcom/android/internal/widget/LockPatternUtils;->isFileEncryptionEnabled()Z

    move-result v10

    if-nez v10, :cond_3

    const v5, 0x7f080108

    :cond_3
    :goto_1
    invoke-static {}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->-wrap1()Z

    move-result v10

    if-nez v10, :cond_4

    new-instance v7, Landroid/provider/SearchIndexableResource;

    invoke-direct {v7, p1}, Landroid/provider/SearchIndexableResource;-><init>(Landroid/content/Context;)V

    iget-object v10, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings$ScreenLockSearchIndexProvider;->mClassName:Ljava/lang/String;

    iput-object v10, v7, Landroid/provider/SearchIndexableResource;->className:Ljava/lang/String;

    iput v5, v7, Landroid/provider/SearchIndexableResource;->xmlResId:I

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4
    new-instance v0, Lcom/samsung/android/settings/encryption/EncryptionPreferenceManager;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v10

    invoke-direct {v0, v10}, Lcom/samsung/android/settings/encryption/EncryptionPreferenceManager;-><init>(Landroid/content/Context;)V

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lcom/samsung/android/settings/encryption/EncryptionPreferenceManager;->isSDcardEncryptionPossible()Z

    move-result v10

    if-eqz v10, :cond_5

    new-instance v3, Lcom/samsung/android/security/SemSdCardEncryption;

    invoke-direct {v3, p1}, Lcom/samsung/android/security/SemSdCardEncryption;-><init>(Landroid/content/Context;)V

    const-string/jumbo v10, "device_policy"

    invoke-virtual {p1, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v3}, Lcom/samsung/android/security/SemSdCardEncryption;->getCurrentStatus()I

    move-result v9

    invoke-virtual {v3}, Lcom/samsung/android/security/SemSdCardEncryption;->getVolumeState()Ljava/lang/String;

    move-result-object v8

    if-nez v8, :cond_7

    const v5, 0x7f08010e

    :goto_2
    new-instance v7, Landroid/provider/SearchIndexableResource;

    invoke-direct {v7, p1}, Landroid/provider/SearchIndexableResource;-><init>(Landroid/content/Context;)V

    iget-object v10, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings$ScreenLockSearchIndexProvider;->mClassName:Ljava/lang/String;

    iput-object v10, v7, Landroid/provider/SearchIndexableResource;->className:Ljava/lang/String;

    iput v5, v7, Landroid/provider/SearchIndexableResource;->xmlResId:I

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_5
    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_6
    const v5, 0x7f08011e

    goto :goto_1

    :cond_7
    invoke-virtual {v2, v11}, Landroid/app/admin/DevicePolicyManager;->getSamsungSDcardEncryptionStatus(Landroid/content/ComponentName;)Z

    move-result v10

    if-eqz v10, :cond_b

    if-nez v9, :cond_8

    invoke-virtual {v3}, Lcom/samsung/android/security/SemSdCardEncryption;->isEncryptionAppliedSDCard()Z

    move-result v10

    if-eqz v10, :cond_8

    invoke-virtual {v2, v11}, Landroid/app/admin/DevicePolicyManager;->semGetRequireStorageCardEncryption(Landroid/content/ComponentName;)Z

    move-result v10

    if-eqz v10, :cond_a

    const v5, 0x7f08011c

    goto :goto_2

    :cond_8
    invoke-virtual {v2, v11}, Landroid/app/admin/DevicePolicyManager;->semGetRequireStorageCardEncryption(Landroid/content/ComponentName;)Z

    move-result v10

    if-eqz v10, :cond_9

    const v5, 0x7f08011b

    goto :goto_2

    :cond_9
    const v5, 0x7f08011a

    goto :goto_2

    :cond_a
    const v5, 0x7f08011a

    goto :goto_2

    :cond_b
    const v5, 0x7f08011b

    goto :goto_2
.end method
