.class public Lcom/samsung/android/settings/DockSettings;
.super Lcom/samsung/android/settings/SecSettingsPreferenceFragment;
.source "DockSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/android/settings/search/Indexable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/DockSettings$1;,
        Lcom/samsung/android/settings/DockSettings$2;
    }
.end annotation


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;


# instance fields
.field private mAutomaticUnlock:Landroid/preference/SwitchPreference;

.field private mBatteryInfoReceiver:Landroid/content/BroadcastReceiver;

.field private mCoverCategory:Landroid/preference/PreferenceCategory;

.field private mCoverInfomation:Landroid/preference/PreferenceScreen;

.field private mCoverNote:Landroid/preference/CheckBoxPreference;

.field private mCoverNoteWeatherUnit:Landroid/preference/ListPreference;

.field private mDualclock:Landroid/preference/PreferenceScreen;

.field private mFastWirelessCharging:Landroid/preference/SwitchPreference;

.field private mLedCoverNotifications:Landroid/preference/PreferenceScreen;

.field private mLedIconEditor:Landroid/preference/PreferenceScreen;

.field private mSViewWallpaper:Landroid/preference/PreferenceScreen;

.field private mShowNotifications:Landroid/preference/PreferenceScreen;

.field private mShowSecNotifications:Lcom/android/settingslib/SecRestrictedSettingsSwitchPreference;

.field private mShowShortCuts:Landroid/preference/PreferenceScreen;

.field private mSmartAccessorySettings:Landroid/preference/PreferenceScreen;

.field private showWireLessChargeMenu:I


# direct methods
.method static synthetic -wrap0(Landroid/content/Context;)Z
    .locals 1

    invoke-static {p0}, Lcom/samsung/android/settings/DockSettings;->isMateCoverAttached(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/samsung/android/settings/DockSettings;Landroid/content/Intent;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/DockSettings;->updateBatteryStatus(Landroid/content/Intent;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/samsung/android/settings/DockSettings$2;

    invoke-direct {v0}, Lcom/samsung/android/settings/DockSettings$2;-><init>()V

    sput-object v0, Lcom/samsung/android/settings/DockSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;-><init>()V

    new-instance v0, Lcom/samsung/android/settings/DockSettings$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/DockSettings$1;-><init>(Lcom/samsung/android/settings/DockSettings;)V

    iput-object v0, p0, Lcom/samsung/android/settings/DockSettings;->mBatteryInfoReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method private createDownloadLEDCoverFeaturePopup()Landroid/app/Dialog;
    .locals 3

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/samsung/android/settings/DockSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0b03a9

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    const v1, 0x7f0b03aa

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    new-instance v1, Lcom/samsung/android/settings/DockSettings$3;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/DockSettings$3;-><init>(Lcom/samsung/android/settings/DockSettings;)V

    const v2, 0x7f0b06ff

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    new-instance v1, Lcom/samsung/android/settings/DockSettings$4;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/DockSettings$4;-><init>(Lcom/samsung/android/settings/DockSettings;)V

    const/high16 v2, 0x1040000

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    return-object v1
.end method

.method private initDockSettings()V
    .locals 7

    const/16 v6, 0x8

    const/4 v5, 0x7

    const/4 v4, 0x1

    const/4 v3, 0x0

    const-string/jumbo v1, "cover"

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/DockSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceCategory;

    iput-object v1, p0, Lcom/samsung/android/settings/DockSettings;->mCoverCategory:Landroid/preference/PreferenceCategory;

    const-string/jumbo v1, "sview_wallpaper"

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/DockSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceScreen;

    iput-object v1, p0, Lcom/samsung/android/settings/DockSettings;->mSViewWallpaper:Landroid/preference/PreferenceScreen;

    const-string/jumbo v1, "cover_info_and_app_shortcut"

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/DockSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceScreen;

    iput-object v1, p0, Lcom/samsung/android/settings/DockSettings;->mCoverInfomation:Landroid/preference/PreferenceScreen;

    const-string/jumbo v1, "automatic_unlock"

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/DockSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/SwitchPreference;

    iput-object v1, p0, Lcom/samsung/android/settings/DockSettings;->mAutomaticUnlock:Landroid/preference/SwitchPreference;

    const-string/jumbo v1, "lock_screen_dualclock"

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/DockSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceScreen;

    iput-object v1, p0, Lcom/samsung/android/settings/DockSettings;->mDualclock:Landroid/preference/PreferenceScreen;

    const-string/jumbo v1, "cover_show_shortcuts"

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/DockSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceScreen;

    iput-object v1, p0, Lcom/samsung/android/settings/DockSettings;->mShowShortCuts:Landroid/preference/PreferenceScreen;

    const-string/jumbo v1, "cover_show_notifications"

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/DockSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceScreen;

    iput-object v1, p0, Lcom/samsung/android/settings/DockSettings;->mShowNotifications:Landroid/preference/PreferenceScreen;

    const-string/jumbo v1, "cover_show_sec_notifications"

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/DockSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/android/settingslib/SecRestrictedSettingsSwitchPreference;

    iput-object v1, p0, Lcom/samsung/android/settings/DockSettings;->mShowSecNotifications:Lcom/android/settingslib/SecRestrictedSettingsSwitchPreference;

    const-string/jumbo v1, "fast_wireless_charging"

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/DockSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/SwitchPreference;

    iput-object v1, p0, Lcom/samsung/android/settings/DockSettings;->mFastWirelessCharging:Landroid/preference/SwitchPreference;

    const-string/jumbo v1, "led_cover_notifications_icon"

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/DockSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceScreen;

    iput-object v1, p0, Lcom/samsung/android/settings/DockSettings;->mLedCoverNotifications:Landroid/preference/PreferenceScreen;

    const-string/jumbo v1, "led_icon_editor"

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/DockSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceScreen;

    iput-object v1, p0, Lcom/samsung/android/settings/DockSettings;->mLedIconEditor:Landroid/preference/PreferenceScreen;

    const-string/jumbo v1, "smart_accessory_settings"

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/DockSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceScreen;

    iput-object v1, p0, Lcom/samsung/android/settings/DockSettings;->mSmartAccessorySettings:Landroid/preference/PreferenceScreen;

    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/settings/DockSettings;->mCoverCategory:Landroid/preference/PreferenceCategory;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/settings/DockSettings;->mCoverCategory:Landroid/preference/PreferenceCategory;

    const v2, 0x7f0b0398

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceCategory;->setTitle(I)V

    :cond_0
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    const/16 v2, 0x64

    if-ge v1, v2, :cond_4

    invoke-virtual {p0}, Lcom/samsung/android/settings/DockSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/Utils;->isCoverVerified(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v1

    if-eqz v1, :cond_5

    const-string/jumbo v1, "sview_wallpaper"

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/DockSettings;->removePreference(Ljava/lang/String;)V

    const-string/jumbo v1, "cover_info_and_app_shortcut"

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/DockSettings;->removePreference(Ljava/lang/String;)V

    const-string/jumbo v1, "lock_screen_dualclock"

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/DockSettings;->removePreference(Ljava/lang/String;)V

    const-string/jumbo v1, "cover_show_shortcuts"

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/DockSettings;->removePreference(Ljava/lang/String;)V

    const-string/jumbo v1, "cover_show_notifications"

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/DockSettings;->removePreference(Ljava/lang/String;)V

    const-string/jumbo v1, "cover_show_sec_notifications"

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/DockSettings;->removePreference(Ljava/lang/String;)V

    const-string/jumbo v1, "led_cover_caller_id"

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/DockSettings;->removePreference(Ljava/lang/String;)V

    const-string/jumbo v1, "led_cover_notifications_icon"

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/DockSettings;->removePreference(Ljava/lang/String;)V

    const-string/jumbo v1, "led_icon_editor"

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/DockSettings;->removePreference(Ljava/lang/String;)V

    :goto_0
    const-string/jumbo v1, "automatic_unlock"

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/DockSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/settings/DockSettings;->mAutomaticUnlock:Landroid/preference/SwitchPreference;

    invoke-virtual {v1, p0}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    :cond_1
    const-string/jumbo v1, "cover_note"

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/DockSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/samsung/android/settings/DockSettings;->mCoverNote:Landroid/preference/CheckBoxPreference;

    const-string/jumbo v1, "cover_note_weather_unit"

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/DockSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/ListPreference;

    iput-object v1, p0, Lcom/samsung/android/settings/DockSettings;->mCoverNoteWeatherUnit:Landroid/preference/ListPreference;

    invoke-virtual {p0}, Lcom/samsung/android/settings/DockSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/Utils;->isExistCoverNotePackage(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_18

    const-string/jumbo v1, "cover_note"

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/DockSettings;->removePreference(Ljava/lang/String;)V

    const-string/jumbo v1, "cover_note_weather_unit"

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/DockSettings;->removePreference(Ljava/lang/String;)V

    :goto_1
    invoke-virtual {p0}, Lcom/samsung/android/settings/DockSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "show_wireless_charger_menu"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/samsung/android/settings/DockSettings;->showWireLessChargeMenu:I

    iget v1, p0, Lcom/samsung/android/settings/DockSettings;->showWireLessChargeMenu:I

    if-ne v1, v4, :cond_19

    invoke-static {}, Lcom/android/settings/Utils;->isSupportFastWirelessCharger()Z

    move-result v1

    if-eqz v1, :cond_19

    iget-object v1, p0, Lcom/samsung/android/settings/DockSettings;->mFastWirelessCharging:Landroid/preference/SwitchPreference;

    invoke-virtual {v1, p0}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    :goto_2
    invoke-virtual {p0}, Lcom/samsung/android/settings/DockSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/settings/DockSettings;->isMateCoverAttached(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string/jumbo v1, "smart_accessory"

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/DockSettings;->removePreference(Ljava/lang/String;)V

    const-string/jumbo v1, "smart_accessory_settings"

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/DockSettings;->removePreference(Ljava/lang/String;)V

    :cond_2
    iget-object v1, p0, Lcom/samsung/android/settings/DockSettings;->mCoverInfomation:Landroid/preference/PreferenceScreen;

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Lcom/samsung/android/settings/DockSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/Utils;->getTypeOfCover(Landroid/content/Context;)I

    move-result v0

    if-ne v0, v6, :cond_1a

    iget-object v1, p0, Lcom/samsung/android/settings/DockSettings;->mCoverInfomation:Landroid/preference/PreferenceScreen;

    const v2, 0x7f0b03a3

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->setSummary(I)V

    :cond_3
    :goto_3
    return-void

    :cond_4
    const-string/jumbo v1, "cover"

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/DockSettings;->removePreference(Ljava/lang/String;)V

    const-string/jumbo v1, "automatic_unlock"

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/DockSettings;->removePreference(Ljava/lang/String;)V

    const-string/jumbo v1, "sview_wallpaper"

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/DockSettings;->removePreference(Ljava/lang/String;)V

    const-string/jumbo v1, "cover_info_and_app_shortcut"

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/DockSettings;->removePreference(Ljava/lang/String;)V

    const-string/jumbo v1, "lock_screen_dualclock"

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/DockSettings;->removePreference(Ljava/lang/String;)V

    const-string/jumbo v1, "cover_show_shortcuts"

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/DockSettings;->removePreference(Ljava/lang/String;)V

    const-string/jumbo v1, "cover_show_notifications"

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/DockSettings;->removePreference(Ljava/lang/String;)V

    const-string/jumbo v1, "cover_show_sec_notifications"

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/DockSettings;->removePreference(Ljava/lang/String;)V

    const-string/jumbo v1, "led_cover_caller_id"

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/DockSettings;->removePreference(Ljava/lang/String;)V

    const-string/jumbo v1, "led_cover_notifications_icon"

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/DockSettings;->removePreference(Ljava/lang/String;)V

    const-string/jumbo v1, "led_icon_editor"

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/DockSettings;->removePreference(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_5
    invoke-virtual {p0}, Lcom/samsung/android/settings/DockSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/Utils;->getTypeOfCover(Landroid/content/Context;)I

    move-result v0

    invoke-virtual {p0}, Lcom/samsung/android/settings/DockSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/Utils;->hasCoverSettingAutomaticUnlock(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_d

    const-string/jumbo v1, "cover"

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/DockSettings;->removePreference(Ljava/lang/String;)V

    :cond_6
    :goto_4
    invoke-virtual {p0}, Lcom/samsung/android/settings/DockSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/Utils;->hasCoverWallpaper(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_7

    const-string/jumbo v1, "sview_wallpaper"

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/DockSettings;->removePreference(Ljava/lang/String;)V

    :cond_7
    invoke-virtual {p0}, Lcom/samsung/android/settings/DockSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/Utils;->hasCoverSettingOptions(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_8

    const-string/jumbo v1, "cover_info_and_app_shortcut"

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/DockSettings;->removePreference(Ljava/lang/String;)V

    :cond_8
    invoke-virtual {p0}, Lcom/samsung/android/settings/DockSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/Utils;->hasCoverDualClockOptionOnly(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_9

    const-string/jumbo v1, "lock_screen_dualclock"

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/DockSettings;->removePreference(Ljava/lang/String;)V

    :cond_9
    invoke-virtual {p0}, Lcom/samsung/android/settings/DockSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/Utils;->hasCoverSettingAppShortcut(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_13

    invoke-static {}, Lcom/android/settings/Utils;->isSupportLockAppShortcut()Z

    move-result v1

    if-eqz v1, :cond_13

    invoke-static {}, Lcom/android/settings/Utils;->isLockscreenMenuTreeForAOD()Z

    move-result v1

    if-eqz v1, :cond_13

    :goto_5
    invoke-virtual {p0}, Lcom/samsung/android/settings/DockSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/Utils;->hasCoverSettingShowNotifications(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_14

    const-string/jumbo v1, "cover_show_notifications"

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/DockSettings;->removePreference(Ljava/lang/String;)V

    const-string/jumbo v1, "cover_show_sec_notifications"

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/DockSettings;->removePreference(Ljava/lang/String;)V

    :cond_a
    :goto_6
    invoke-virtual {p0}, Lcom/samsung/android/settings/DockSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/Utils;->hasCoverLEDCallerID(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_b

    const-string/jumbo v1, "led_cover_caller_id"

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/DockSettings;->removePreference(Ljava/lang/String;)V

    :cond_b
    invoke-virtual {p0}, Lcom/samsung/android/settings/DockSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/Utils;->hasCoverLEDNotificationIcon(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_c

    const-string/jumbo v1, "led_cover_notifications_icon"

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/DockSettings;->removePreference(Ljava/lang/String;)V

    :cond_c
    if-eq v0, v5, :cond_16

    const-string/jumbo v1, "led_icon_editor"

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/DockSettings;->removePreference(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_d
    iget-object v1, p0, Lcom/samsung/android/settings/DockSettings;->mCoverCategory:Landroid/preference/PreferenceCategory;

    if-eqz v1, :cond_6

    if-nez v0, :cond_e

    iget-object v1, p0, Lcom/samsung/android/settings/DockSettings;->mCoverCategory:Landroid/preference/PreferenceCategory;

    const v2, 0x7f0b03a0

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceCategory;->setTitle(I)V

    goto/16 :goto_4

    :cond_e
    if-eq v0, v4, :cond_f

    const/4 v1, 0x3

    if-ne v0, v1, :cond_10

    :cond_f
    iget-object v1, p0, Lcom/samsung/android/settings/DockSettings;->mCoverCategory:Landroid/preference/PreferenceCategory;

    const v2, 0x7f0b0394

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceCategory;->setTitle(I)V

    goto/16 :goto_4

    :cond_10
    const/4 v1, 0x6

    if-eq v0, v1, :cond_f

    if-ne v0, v5, :cond_11

    iget-object v1, p0, Lcom/samsung/android/settings/DockSettings;->mCoverCategory:Landroid/preference/PreferenceCategory;

    const v2, 0x7f0b039f

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceCategory;->setTitle(I)V

    goto/16 :goto_4

    :cond_11
    if-ne v0, v6, :cond_12

    iget-object v1, p0, Lcom/samsung/android/settings/DockSettings;->mCoverCategory:Landroid/preference/PreferenceCategory;

    const v2, 0x7f0b03a1

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceCategory;->setTitle(I)V

    goto/16 :goto_4

    :cond_12
    const/16 v1, 0xb

    if-ne v0, v1, :cond_6

    iget-object v1, p0, Lcom/samsung/android/settings/DockSettings;->mCoverCategory:Landroid/preference/PreferenceCategory;

    const v2, 0x7f0b039e

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceCategory;->setTitle(I)V

    goto/16 :goto_4

    :cond_13
    const-string/jumbo v1, "cover_show_shortcuts"

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/DockSettings;->removePreference(Ljava/lang/String;)V

    goto/16 :goto_5

    :cond_14
    invoke-static {}, Lcom/android/settings/Utils;->isSupportNotificationsIconsOnly()Z

    move-result v1

    if-eqz v1, :cond_15

    const-string/jumbo v1, "cover_show_notifications"

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/DockSettings;->removePreference(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/settings/DockSettings;->mShowSecNotifications:Lcom/android/settingslib/SecRestrictedSettingsSwitchPreference;

    if-eqz v1, :cond_a

    iget-object v1, p0, Lcom/samsung/android/settings/DockSettings;->mShowSecNotifications:Lcom/android/settingslib/SecRestrictedSettingsSwitchPreference;

    invoke-virtual {v1, p0}, Lcom/android/settingslib/SecRestrictedSettingsSwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    goto/16 :goto_6

    :cond_15
    const-string/jumbo v1, "cover_show_sec_notifications"

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/DockSettings;->removePreference(Ljava/lang/String;)V

    goto/16 :goto_6

    :cond_16
    invoke-virtual {p0}, Lcom/samsung/android/settings/DockSettings;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, "com.samsung.android.app.ledcover.action.LAUNCH"

    invoke-static {v1, v2}, Lcom/android/settings/Utils;->isIntentAvailable(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_17

    const-string/jumbo v1, "led_cover_caller_id"

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/DockSettings;->removePreference(Ljava/lang/String;)V

    const-string/jumbo v1, "led_cover_notifications_icon"

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/DockSettings;->removePreference(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_17
    const-string/jumbo v1, "led_icon_editor"

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/DockSettings;->removePreference(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_18
    iget-object v1, p0, Lcom/samsung/android/settings/DockSettings;->mCoverNote:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    iget-object v1, p0, Lcom/samsung/android/settings/DockSettings;->mCoverNoteWeatherUnit:Landroid/preference/ListPreference;

    invoke-virtual {v1, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    goto/16 :goto_1

    :cond_19
    const-string/jumbo v1, "fast_charing_category"

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/DockSettings;->removePreference(Ljava/lang/String;)V

    const-string/jumbo v1, "fast_wireless_charging"

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/DockSettings;->removePreference(Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_1a
    invoke-static {}, Lcom/android/settings/Utils;->isLockscreenMenuTreeForAOD()Z

    move-result v1

    if-eqz v1, :cond_1b

    iget-object v1, p0, Lcom/samsung/android/settings/DockSettings;->mCoverInfomation:Landroid/preference/PreferenceScreen;

    const v2, 0x7f0b0a63

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->setSummary(I)V

    goto/16 :goto_3

    :cond_1b
    iget-object v1, p0, Lcom/samsung/android/settings/DockSettings;->mCoverInfomation:Landroid/preference/PreferenceScreen;

    const v2, 0x7f0b0a62

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->setSummary(I)V

    goto/16 :goto_3
.end method

.method private static isMateCoverAttached(Landroid/content/Context;)Z
    .locals 5

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "mate_setting_activation"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_0

    :goto_0
    return v1

    :cond_0
    move v1, v2

    goto :goto_0
.end method

.method private updateBatteryStatus(Landroid/content/Intent;)V
    .locals 3

    const/4 v2, 0x1

    const-string/jumbo v1, "status"

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/settings/DockSettings;->mFastWirelessCharging:Landroid/preference/SwitchPreference;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    iget-object v1, p0, Lcom/samsung/android/settings/DockSettings;->mFastWirelessCharging:Landroid/preference/SwitchPreference;

    const v2, 0x7f0b0d89

    invoke-virtual {v1, v2}, Landroid/preference/SwitchPreference;->setSummary(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/settings/DockSettings;->mFastWirelessCharging:Landroid/preference/SwitchPreference;

    invoke-virtual {v1, v2}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    iget-object v1, p0, Lcom/samsung/android/settings/DockSettings;->mFastWirelessCharging:Landroid/preference/SwitchPreference;

    const v2, 0x7f0b0d8c

    invoke-virtual {v1, v2}, Landroid/preference/SwitchPreference;->setSummary(I)V

    goto :goto_0
.end method


# virtual methods
.method protected getMetricsCategory()I
    .locals 1

    const/16 v0, 0x28

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f08006a

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/DockSettings;->addPreferencesFromResource(I)V

    invoke-direct {p0}, Lcom/samsung/android/settings/DockSettings;->initDockSettings()V

    return-void
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/settings/DockSettings;->createDownloadLEDCoverFeaturePopup()Landroid/app/Dialog;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public onPause()V
    .locals 2

    invoke-super {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onPause()V

    invoke-virtual {p0}, Lcom/samsung/android/settings/DockSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/DockSettings;->mBatteryInfoReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 8

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v6, "automatic_unlock"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-virtual {p0}, Lcom/samsung/android/settings/DockSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string/jumbo v7, "automatic_unlock"

    if-eqz v3, :cond_0

    move v4, v5

    :cond_0
    invoke-static {v6, v7, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_1
    :goto_0
    return v5

    :cond_2
    const-string/jumbo v6, "cover_note"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    iget-object v6, p0, Lcom/samsung/android/settings/DockSettings;->mCoverNote:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v6, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/DockSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string/jumbo v7, "cover_note"

    if-eqz v3, :cond_3

    move v4, v5

    :cond_3
    invoke-static {v6, v7, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-string/jumbo v4, "DockSettings"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Save KEY_COVER_NOTE : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_4
    const-string/jumbo v6, "cover_note_weather_unit"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p0}, Lcom/samsung/android/settings/DockSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    if-eqz v4, :cond_5

    invoke-virtual {p0}, Lcom/samsung/android/settings/DockSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v6, "cover_note_weather_unit"

    invoke-static {v4, v6, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_5
    iget-object v4, p0, Lcom/samsung/android/settings/DockSettings;->mCoverNoteWeatherUnit:Landroid/preference/ListPreference;

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/samsung/android/settings/DockSettings;->mCoverNoteWeatherUnit:Landroid/preference/ListPreference;

    iget-object v6, p0, Lcom/samsung/android/settings/DockSettings;->mCoverNoteWeatherUnit:Landroid/preference/ListPreference;

    invoke-virtual {v6}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_6
    const-string/jumbo v6, "fast_wireless_charging"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-virtual {p0}, Lcom/samsung/android/settings/DockSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string/jumbo v7, "wireless_fast_charging"

    if-eqz v3, :cond_7

    move v4, v5

    :cond_7
    invoke-static {v6, v7, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return v5

    :cond_8
    const-string/jumbo v6, "cover_show_sec_notifications"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iget-object v6, p0, Lcom/samsung/android/settings/DockSettings;->mShowSecNotifications:Lcom/android/settingslib/SecRestrictedSettingsSwitchPreference;

    invoke-virtual {v6, v0}, Lcom/android/settingslib/SecRestrictedSettingsSwitchPreference;->setChecked(Z)V

    iget-object v7, p0, Lcom/samsung/android/settings/DockSettings;->mShowSecNotifications:Lcom/android/settingslib/SecRestrictedSettingsSwitchPreference;

    if-eqz v0, :cond_a

    const v6, 0x7f0b1cf6

    :goto_1
    invoke-virtual {v7, v6}, Lcom/android/settingslib/SecRestrictedSettingsSwitchPreference;->setSummary(I)V

    iget-object v6, p0, Lcom/samsung/android/settings/DockSettings;->mShowSecNotifications:Lcom/android/settingslib/SecRestrictedSettingsSwitchPreference;

    invoke-virtual {v6, v0}, Lcom/android/settingslib/SecRestrictedSettingsSwitchPreference;->semSetSummaryColorToColorPrimaryDark(Z)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/DockSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string/jumbo v7, "lock_screen_show_notifications"

    if-eqz v0, :cond_9

    move v4, v5

    :cond_9
    invoke-static {v6, v7, v4}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    :cond_a
    const v6, 0x7f0b0a65

    goto :goto_1
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 5

    const/4 v2, 0x1

    iget-object v1, p0, Lcom/samsung/android/settings/DockSettings;->mAutomaticUnlock:Landroid/preference/SwitchPreference;

    if-ne p2, v1, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/settings/DockSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "automatic_unlock"

    iget-object v1, p0, Lcom/samsung/android/settings/DockSettings;->mAutomaticUnlock:Landroid/preference/SwitchPreference;

    invoke-virtual {v1}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v2

    :goto_0
    invoke-static {v3, v4, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return v2

    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/samsung/android/settings/DockSettings;->mSViewWallpaper:Landroid/preference/PreferenceScreen;

    if-ne p2, v1, :cond_3

    invoke-virtual {p0}, Lcom/samsung/android/settings/DockSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/Utils;->startMyThemeWallpaperActivity(Landroid/content/Context;)V

    :cond_2
    :goto_1
    invoke-super {p0, p1, p2}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v1

    return v1

    :cond_3
    iget-object v1, p0, Lcom/samsung/android/settings/DockSettings;->mDualclock:Landroid/preference/PreferenceScreen;

    if-ne p2, v1, :cond_4

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v1

    const-string/jumbo v2, "SEC_FLOATING_FEATURE_CONTEXTSERVICE_ENABLE_SURVEY_MODE"

    invoke-virtual {v1, v2}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/samsung/android/settings/DockSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string/jumbo v2, "com.android.settings"

    const-string/jumbo v3, "LNCS"

    const-string/jumbo v4, "SViewCover"

    invoke-static {v1, v2, v3, v4}, Lcom/android/settings/Utils;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    iget-object v1, p0, Lcom/samsung/android/settings/DockSettings;->mLedCoverNotifications:Landroid/preference/PreferenceScreen;

    if-ne p2, v1, :cond_6

    invoke-virtual {p0}, Lcom/samsung/android/settings/DockSettings;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, "com.samsung.android.app.ledcovergrace"

    invoke-static {v1, v2}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v1, "com.samsung.android.app.ledcovergrace"

    const-string/jumbo v2, "com.samsung.android.app.ledcovergrace.app.LCoverNotiMainActivity"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/DockSettings;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    :cond_5
    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/DockSettings;->showDialog(I)V

    goto :goto_1

    :cond_6
    iget-object v1, p0, Lcom/samsung/android/settings/DockSettings;->mLedIconEditor:Landroid/preference/PreferenceScreen;

    if-ne p2, v1, :cond_7

    invoke-virtual {p0}, Lcom/samsung/android/settings/DockSettings;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, "com.samsung.android.app.ledcover.action.LAUNCH"

    invoke-static {v1, v2}, Lcom/android/settings/Utils;->isIntentAvailable(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.samsung.android.app.ledcover.action.LAUNCH"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const v1, 0x10008000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/DockSettings;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    :cond_7
    iget-object v1, p0, Lcom/samsung/android/settings/DockSettings;->mSmartAccessorySettings:Landroid/preference/PreferenceScreen;

    if-ne p2, v1, :cond_2

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v2, "com.samsung.android.mateagent"

    const-string/jumbo v3, "com.samsung.android.mateagent.setting.SettingActivity"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/android/settings/DockSettings;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/android/settings/Utils;->isIntentAvailable(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/DockSettings;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_1
.end method

.method public onResume()V
    .locals 14

    const/4 v13, -0x1

    const/4 v8, 0x1

    const/4 v9, 0x0

    invoke-super {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onResume()V

    invoke-virtual {p0}, Lcom/samsung/android/settings/DockSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget-object v7, p0, Lcom/samsung/android/settings/DockSettings;->mAutomaticUnlock:Landroid/preference/SwitchPreference;

    if-eqz v7, :cond_0

    iget-object v10, p0, Lcom/samsung/android/settings/DockSettings;->mAutomaticUnlock:Landroid/preference/SwitchPreference;

    invoke-virtual {p0}, Lcom/samsung/android/settings/DockSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string/jumbo v11, "automatic_unlock"

    invoke-static {v7, v11, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    if-ne v7, v8, :cond_9

    move v7, v8

    :goto_0
    invoke-virtual {v10, v7}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v7

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/samsung/android/settings/DockSettings;->mAutomaticUnlock:Landroid/preference/SwitchPreference;

    const v10, 0x7f0b0397

    invoke-virtual {v7, v10}, Landroid/preference/SwitchPreference;->setSummary(I)V

    :cond_0
    iget-object v7, p0, Lcom/samsung/android/settings/DockSettings;->mCoverNote:Landroid/preference/CheckBoxPreference;

    if-eqz v7, :cond_1

    const-string/jumbo v7, "cover_note"

    invoke-static {v2, v7, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    if-nez v7, :cond_a

    const/4 v6, 0x0

    :goto_1
    iget-object v7, p0, Lcom/samsung/android/settings/DockSettings;->mCoverNote:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v7, v6}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    :cond_1
    iget-object v7, p0, Lcom/samsung/android/settings/DockSettings;->mCoverNoteWeatherUnit:Landroid/preference/ListPreference;

    if-eqz v7, :cond_2

    const-string/jumbo v7, "cover_note_weather_unit"

    invoke-static {v2, v7, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    iget-object v7, p0, Lcom/samsung/android/settings/DockSettings;->mCoverNoteWeatherUnit:Landroid/preference/ListPreference;

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/samsung/android/settings/DockSettings;->mCoverNoteWeatherUnit:Landroid/preference/ListPreference;

    iget-object v10, p0, Lcom/samsung/android/settings/DockSettings;->mCoverNoteWeatherUnit:Landroid/preference/ListPreference;

    invoke-virtual {v10}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v10

    invoke-virtual {v7, v10}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_2
    iget-object v7, p0, Lcom/samsung/android/settings/DockSettings;->mDualclock:Landroid/preference/PreferenceScreen;

    if-eqz v7, :cond_3

    const-string/jumbo v7, "oversea"

    const-string/jumbo v10, "ril.currentplmn"

    invoke-static {v10}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    invoke-static {}, Lcom/android/settings/Utils;->isDomesticSKTModel()Z

    move-result v7

    if-eqz v7, :cond_b

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/samsung/android/settings/DockSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0b0a7a

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v10, " "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p0}, Lcom/samsung/android/settings/DockSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0b0d41

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v7, p0, Lcom/samsung/android/settings/DockSettings;->mDualclock:Landroid/preference/PreferenceScreen;

    invoke-virtual {v7, v3}, Landroid/preference/PreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v7, p0, Lcom/samsung/android/settings/DockSettings;->mDualclock:Landroid/preference/PreferenceScreen;

    invoke-virtual {v7, v9}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    :goto_2
    iget-object v7, p0, Lcom/samsung/android/settings/DockSettings;->mDualclock:Landroid/preference/PreferenceScreen;

    invoke-virtual {v7, v8}, Landroid/preference/PreferenceScreen;->semSetSummaryColorToColorPrimaryDark(Z)V

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v7

    const-string/jumbo v10, "SEC_FLOATING_FEATURE_COMMON_SUPPORT_AOD_LOCK_SHARE_INFO"

    invoke-virtual {v7, v10}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    iget-object v7, p0, Lcom/samsung/android/settings/DockSettings;->mDualclock:Landroid/preference/PreferenceScreen;

    const v10, 0x7f0b0a79

    invoke-virtual {v7, v10}, Landroid/preference/PreferenceScreen;->setTitle(I)V

    :cond_3
    iget-object v7, p0, Lcom/samsung/android/settings/DockSettings;->mShowNotifications:Landroid/preference/PreferenceScreen;

    if-eqz v7, :cond_4

    iget-object v7, p0, Lcom/samsung/android/settings/DockSettings;->mShowNotifications:Landroid/preference/PreferenceScreen;

    invoke-virtual {p0}, Lcom/samsung/android/settings/DockSettings;->getActivity()Landroid/app/Activity;

    move-result-object v10

    invoke-static {v10}, Lcom/android/settings/Utils;->getLockScreenShowNotificationSummary(Landroid/content/Context;)I

    move-result v10

    invoke-virtual {v7, v10}, Landroid/preference/PreferenceScreen;->setSummary(I)V

    :cond_4
    iget-object v7, p0, Lcom/samsung/android/settings/DockSettings;->mShowSecNotifications:Lcom/android/settingslib/SecRestrictedSettingsSwitchPreference;

    if-eqz v7, :cond_5

    invoke-virtual {p0}, Lcom/samsung/android/settings/DockSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string/jumbo v10, "lock_screen_show_notifications"

    invoke-static {v7, v10, v9}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    if-eqz v7, :cond_c

    const/4 v0, 0x1

    :goto_3
    iget-object v7, p0, Lcom/samsung/android/settings/DockSettings;->mShowSecNotifications:Lcom/android/settingslib/SecRestrictedSettingsSwitchPreference;

    invoke-virtual {v7, v0}, Lcom/android/settingslib/SecRestrictedSettingsSwitchPreference;->setChecked(Z)V

    iget-object v10, p0, Lcom/samsung/android/settings/DockSettings;->mShowSecNotifications:Lcom/android/settingslib/SecRestrictedSettingsSwitchPreference;

    if-eqz v0, :cond_d

    const v7, 0x7f0b1cf6

    :goto_4
    invoke-virtual {v10, v7}, Lcom/android/settingslib/SecRestrictedSettingsSwitchPreference;->setSummary(I)V

    iget-object v7, p0, Lcom/samsung/android/settings/DockSettings;->mShowSecNotifications:Lcom/android/settingslib/SecRestrictedSettingsSwitchPreference;

    invoke-virtual {v7, v0}, Lcom/android/settingslib/SecRestrictedSettingsSwitchPreference;->semSetSummaryColorToColorPrimaryDark(Z)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/DockSettings;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-static {}, Landroid/os/UserHandle;->semGetMyUserId()I

    move-result v10

    const/16 v11, 0xc

    invoke-static {v7, v11, v10}, Lcom/android/settingslib/RestrictedLockUtils;->checkIfKeyguardFeaturesDisabled(Landroid/content/Context;II)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object v4

    iget-object v7, p0, Lcom/samsung/android/settings/DockSettings;->mShowSecNotifications:Lcom/android/settingslib/SecRestrictedSettingsSwitchPreference;

    invoke-virtual {v7, v4}, Lcom/android/settingslib/SecRestrictedSettingsSwitchPreference;->setDisabledByAdmin(Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    :cond_5
    iget v7, p0, Lcom/samsung/android/settings/DockSettings;->showWireLessChargeMenu:I

    if-ne v7, v8, :cond_7

    invoke-static {}, Lcom/android/settings/Utils;->isSupportFastWirelessCharger()Z

    move-result v7

    if-eqz v7, :cond_7

    const-string/jumbo v7, "wireless_fast_charging"

    invoke-static {v2, v7, v13}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-ne v5, v13, :cond_6

    const-string/jumbo v7, "wireless_fast_charging"

    invoke-static {v2, v7, v8}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const/4 v5, 0x1

    :cond_6
    iget-object v7, p0, Lcom/samsung/android/settings/DockSettings;->mFastWirelessCharging:Landroid/preference/SwitchPreference;

    if-ne v5, v8, :cond_e

    :goto_5
    invoke-virtual {v7, v8}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    :cond_7
    invoke-virtual {p0}, Lcom/samsung/android/settings/DockSettings;->getActivity()Landroid/app/Activity;

    move-result-object v7

    iget-object v8, p0, Lcom/samsung/android/settings/DockSettings;->mBatteryInfoReceiver:Landroid/content/BroadcastReceiver;

    new-instance v9, Landroid/content/IntentFilter;

    const-string/jumbo v10, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v9, v10}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v8, v9}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/samsung/android/settings/DockSettings;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-static {v7}, Lcom/android/settings/Utils;->hasCoverLEDNotificationIcon(Landroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_8

    invoke-virtual {p0}, Lcom/samsung/android/settings/DockSettings;->getContext()Landroid/content/Context;

    move-result-object v7

    const-string/jumbo v8, "com.samsung.android.app.ledcovergrace"

    invoke-static {v7, v8}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_f

    iget-object v7, p0, Lcom/samsung/android/settings/DockSettings;->mLedCoverNotifications:Landroid/preference/PreferenceScreen;

    const v8, 0x7f0b03a7

    invoke-virtual {v7, v8}, Landroid/preference/PreferenceScreen;->setSummary(I)V

    :cond_8
    :goto_6
    return-void

    :cond_9
    move v7, v9

    goto/16 :goto_0

    :cond_a
    const/4 v6, 0x1

    goto/16 :goto_1

    :cond_b
    iget-object v7, p0, Lcom/samsung/android/settings/DockSettings;->mDualclock:Landroid/preference/PreferenceScreen;

    invoke-virtual {p0}, Lcom/samsung/android/settings/DockSettings;->getActivity()Landroid/app/Activity;

    move-result-object v10

    invoke-virtual {p0}, Lcom/samsung/android/settings/DockSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string/jumbo v12, "dualclock_menu_settings"

    invoke-static {v11, v12, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v11

    invoke-static {v10, v11}, Lcom/android/settings/Utils;->getOnOffstatus(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Landroid/preference/PreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    :cond_c
    const/4 v0, 0x0

    goto/16 :goto_3

    :cond_d
    const v7, 0x7f0b0a65

    goto/16 :goto_4

    :cond_e
    move v8, v9

    goto :goto_5

    :cond_f
    iget-object v7, p0, Lcom/samsung/android/settings/DockSettings;->mLedCoverNotifications:Landroid/preference/PreferenceScreen;

    const v8, 0x7f0b03a8

    invoke-virtual {v7, v8}, Landroid/preference/PreferenceScreen;->setSummary(I)V

    goto :goto_6
.end method