.class public Lcom/android/settings/gestures/GestureSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "GestureSettings.java"

# interfaces
.implements Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/android/settings/search/Indexable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/gestures/GestureSettings$1;
    }
.end annotation


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;


# instance fields
.field private mAmbientConfig:Lcom/android/internal/hardware/AmbientDisplayConfiguration;

.field private mPreferences:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/settings/gestures/GesturePreference;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic -get0(Lcom/android/settings/gestures/GestureSettings;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/gestures/GestureSettings;->mPreferences:Ljava/util/List;

    return-object v0
.end method

.method static synthetic -wrap0(Landroid/content/res/Resources;)Z
    .locals 1

    invoke-static {p0}, Lcom/android/settings/gestures/GestureSettings;->isCameraDoubleTapPowerGestureAvailable(Landroid/content/res/Resources;)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Landroid/content/Context;)Z
    .locals 1

    invoke-static {p0}, Lcom/android/settings/gestures/GestureSettings;->isDoubleTwistAvailable(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap2(Landroid/content/Context;)Z
    .locals 1

    invoke-static {p0}, Lcom/android/settings/gestures/GestureSettings;->isSystemUINavigationAvailable(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/settings/gestures/GestureSettings$1;

    invoke-direct {v0}, Lcom/android/settings/gestures/GestureSettings$1;-><init>()V

    sput-object v0, Lcom/android/settings/gestures/GestureSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    return-void
.end method

.method private addPreference(Ljava/lang/String;Z)V
    .locals 2

    invoke-virtual {p0, p1}, Lcom/android/settings/gestures/GestureSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/gestures/GesturePreference;

    invoke-virtual {v0, p2}, Lcom/android/settings/gestures/GesturePreference;->setChecked(Z)V

    invoke-virtual {v0, p0}, Lcom/android/settings/gestures/GesturePreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    iget-object v1, p0, Lcom/android/settings/gestures/GestureSettings;->mPreferences:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private static hasSensor(Landroid/content/Context;II)Z
    .locals 7

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    :cond_0
    const/4 v6, 0x0

    return v6

    :cond_1
    const-string/jumbo v6, "sensor"

    invoke-virtual {p0, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/SensorManager;

    const/4 v6, -0x1

    invoke-virtual {v4, v6}, Landroid/hardware/SensorManager;->getSensorList(I)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/Sensor;

    invoke-virtual {v2}, Landroid/hardware/Sensor;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-virtual {v2}, Landroid/hardware/Sensor;->getVendor()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    const/4 v6, 0x1

    return v6
.end method

.method private static isCameraDoubleTapPowerGestureAvailable(Landroid/content/res/Resources;)Z
    .locals 1

    const v0, 0x11200ae

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    return v0
.end method

.method private static isDoubleTwistAvailable(Landroid/content/Context;)Z
    .locals 2

    const v0, 0x7f0b0234

    const v1, 0x7f0b0235

    invoke-static {p0, v0, v1}, Lcom/android/settings/gestures/GestureSettings;->hasSensor(Landroid/content/Context;II)Z

    move-result v0

    return v0
.end method

.method private static isSystemUINavigationAvailable(Landroid/content/Context;)Z
    .locals 2

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x11200d6

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    return v0
.end method

.method private static isSystemUINavigationEnabled(Landroid/content/Context;)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "system_navigation_keys_enabled"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method


# virtual methods
.method protected getHelpResource()I
    .locals 1

    const v0, 0x7f0b1bc8

    return v0
.end method

.method protected getMetricsCategory()I
    .locals 1

    const/16 v0, 0x1cb

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 9

    const/4 v6, 0x1

    const/4 v7, 0x0

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    const v5, 0x7f08007d

    invoke-virtual {p0, v5}, Lcom/android/settings/gestures/GestureSettings;->addPreferencesFromResource(I)V

    invoke-virtual {p0}, Lcom/android/settings/gestures/GestureSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/android/settings/gestures/GestureSettings;->mPreferences:Ljava/util/List;

    invoke-virtual {p0}, Lcom/android/settings/gestures/GestureSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-static {v5}, Lcom/android/settings/gestures/GestureSettings;->isCameraDoubleTapPowerGestureAvailable(Landroid/content/res/Resources;)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {p0}, Lcom/android/settings/gestures/GestureSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v8, "camera_double_tap_power_gesture_disabled"

    invoke-static {v5, v8, v7}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const-string/jumbo v8, "gesture_double_tap_power"

    if-nez v0, :cond_0

    move v5, v6

    :goto_0
    invoke-direct {p0, v8, v5}, Lcom/android/settings/gestures/GestureSettings;->addPreference(Ljava/lang/String;Z)V

    :goto_1
    new-instance v5, Lcom/android/internal/hardware/AmbientDisplayConfiguration;

    invoke-direct {v5, v1}, Lcom/android/internal/hardware/AmbientDisplayConfiguration;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/android/settings/gestures/GestureSettings;->mAmbientConfig:Lcom/android/internal/hardware/AmbientDisplayConfiguration;

    iget-object v5, p0, Lcom/android/settings/gestures/GestureSettings;->mAmbientConfig:Lcom/android/internal/hardware/AmbientDisplayConfiguration;

    invoke-virtual {v5}, Lcom/android/internal/hardware/AmbientDisplayConfiguration;->pulseOnPickupAvailable()Z

    move-result v5

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/android/settings/gestures/GestureSettings;->mAmbientConfig:Lcom/android/internal/hardware/AmbientDisplayConfiguration;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v8

    invoke-virtual {v5, v8}, Lcom/android/internal/hardware/AmbientDisplayConfiguration;->pulseOnPickupEnabled(I)Z

    move-result v4

    const-string/jumbo v5, "gesture_pick_up"

    invoke-direct {p0, v5, v4}, Lcom/android/settings/gestures/GestureSettings;->addPreference(Ljava/lang/String;Z)V

    :goto_2
    iget-object v5, p0, Lcom/android/settings/gestures/GestureSettings;->mAmbientConfig:Lcom/android/internal/hardware/AmbientDisplayConfiguration;

    invoke-virtual {v5}, Lcom/android/internal/hardware/AmbientDisplayConfiguration;->pulseOnDoubleTapAvailable()Z

    move-result v5

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/android/settings/gestures/GestureSettings;->mAmbientConfig:Lcom/android/internal/hardware/AmbientDisplayConfiguration;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v8

    invoke-virtual {v5, v8}, Lcom/android/internal/hardware/AmbientDisplayConfiguration;->pulseOnDoubleTapEnabled(I)Z

    move-result v2

    const-string/jumbo v5, "gesture_double_tap_screen"

    invoke-direct {p0, v5, v2}, Lcom/android/settings/gestures/GestureSettings;->addPreference(Ljava/lang/String;Z)V

    :goto_3
    invoke-static {v1}, Lcom/android/settings/gestures/GestureSettings;->isSystemUINavigationAvailable(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_4

    const-string/jumbo v5, "gesture_swipe_down_fingerprint"

    invoke-static {v1}, Lcom/android/settings/gestures/GestureSettings;->isSystemUINavigationEnabled(Landroid/content/Context;)Z

    move-result v8

    invoke-direct {p0, v5, v8}, Lcom/android/settings/gestures/GestureSettings;->addPreference(Ljava/lang/String;Z)V

    :goto_4
    invoke-static {v1}, Lcom/android/settings/gestures/GestureSettings;->isDoubleTwistAvailable(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-virtual {p0}, Lcom/android/settings/gestures/GestureSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v8, "camera_double_twist_to_flip_enabled"

    invoke-static {v5, v8, v6}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    const-string/jumbo v5, "gesture_double_twist"

    if-eqz v3, :cond_5

    :goto_5
    invoke-direct {p0, v5, v6}, Lcom/android/settings/gestures/GestureSettings;->addPreference(Ljava/lang/String;Z)V

    :goto_6
    return-void

    :cond_0
    move v5, v7

    goto :goto_0

    :cond_1
    const-string/jumbo v5, "gesture_double_tap_power"

    invoke-virtual {p0, v5}, Lcom/android/settings/gestures/GestureSettings;->removePreference(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    const-string/jumbo v5, "gesture_pick_up"

    invoke-virtual {p0, v5}, Lcom/android/settings/gestures/GestureSettings;->removePreference(Ljava/lang/String;)V

    goto :goto_2

    :cond_3
    const-string/jumbo v5, "gesture_double_tap_screen"

    invoke-virtual {p0, v5}, Lcom/android/settings/gestures/GestureSettings;->removePreference(Ljava/lang/String;)V

    goto :goto_3

    :cond_4
    const-string/jumbo v5, "gesture_swipe_down_fingerprint"

    invoke-virtual {p0, v5}, Lcom/android/settings/gestures/GestureSettings;->removePreference(Ljava/lang/String;)V

    goto :goto_4

    :cond_5
    move v6, v7

    goto :goto_5

    :cond_6
    const-string/jumbo v5, "gesture_double_twist"

    invoke-virtual {p0, v5}, Lcom/android/settings/gestures/GestureSettings;->removePreference(Ljava/lang/String;)V

    goto :goto_6
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3

    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/SettingsPreferenceFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/settings/gestures/GestureSettings;->getListView()Landroid/support/v7/widget/RecyclerView;

    move-result-object v0

    new-instance v2, Lcom/android/settings/gestures/GestureSettings$2;

    invoke-direct {v2, p0}, Lcom/android/settings/gestures/GestureSettings$2;-><init>(Lcom/android/settings/gestures/GestureSettings;)V

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/RecyclerView;->addOnScrollListener(Landroid/support/v7/widget/RecyclerView$OnScrollListener;)V

    return-object v1
.end method

.method public onPreferenceChange(Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z
    .locals 6

    const/4 v2, 0x0

    const/4 v3, 0x1

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v4, "gesture_double_tap_power"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {p0}, Lcom/android/settings/gestures/GestureSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "camera_double_tap_power_gesture_disabled"

    if-eqz v0, :cond_1

    :goto_0
    invoke-static {v4, v5, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_0
    :goto_1
    return v3

    :cond_1
    move v2, v3

    goto :goto_0

    :cond_2
    const-string/jumbo v4, "gesture_pick_up"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-virtual {p0}, Lcom/android/settings/gestures/GestureSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "doze_pulse_on_pick_up"

    if-eqz v0, :cond_3

    move v2, v3

    :cond_3
    invoke-static {v4, v5, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1

    :cond_4
    const-string/jumbo v4, "gesture_double_tap_screen"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-virtual {p0}, Lcom/android/settings/gestures/GestureSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "doze_pulse_on_double_tap"

    if-eqz v0, :cond_5

    move v2, v3

    :cond_5
    invoke-static {v4, v5, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1

    :cond_6
    const-string/jumbo v4, "gesture_swipe_down_fingerprint"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-virtual {p0}, Lcom/android/settings/gestures/GestureSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "system_navigation_keys_enabled"

    if-eqz v0, :cond_7

    move v2, v3

    :cond_7
    invoke-static {v4, v5, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1

    :cond_8
    const-string/jumbo v4, "gesture_double_twist"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/gestures/GestureSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "camera_double_twist_to_flip_enabled"

    if-eqz v0, :cond_9

    move v2, v3

    :cond_9
    invoke-static {v4, v5, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1
.end method

.method public onStart()V
    .locals 3

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onStart()V

    iget-object v2, p0, Lcom/android/settings/gestures/GestureSettings;->mPreferences:Ljava/util/List;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/gestures/GesturePreference;

    invoke-virtual {v0}, Lcom/android/settings/gestures/GesturePreference;->onViewVisible()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 3

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onStop()V

    iget-object v2, p0, Lcom/android/settings/gestures/GestureSettings;->mPreferences:Ljava/util/List;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/gestures/GesturePreference;

    invoke-virtual {v0}, Lcom/android/settings/gestures/GesturePreference;->onViewInvisible()V

    goto :goto_0

    :cond_0
    return-void
.end method
