.class public Lcom/android/settings/applications/ManageDomainUrls;
.super Lcom/samsung/android/settings/SecSettingsPreferenceFragment;
.source "ManageDomainUrls.java"

# interfaces
.implements Lcom/android/settingslib/applications/ApplicationsState$Callbacks;
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Landroid/preference/Preference$OnPreferenceClickListener;
.implements Lcom/samsung/android/settings/applications/EmHandler$EmHandlerCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/applications/ManageDomainUrls$1;,
        Lcom/android/settings/applications/ManageDomainUrls$DomainAppPreference;
    }
.end annotation


# static fields
.field private static mEmHandler:Lcom/samsung/android/settings/applications/EmHandler;


# instance fields
.field private mApplicationsState:Lcom/android/settingslib/applications/ApplicationsState;

.field private mBooster:Lcom/samsung/android/settings/utils/Booster;

.field private mDomainAppList:Landroid/preference/PreferenceGroup;

.field public mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

.field private mSession:Lcom/android/settingslib/applications/ApplicationsState$Session;

.field private mWebAction:Landroid/preference/SwitchPreference;


# direct methods
.method static synthetic -get0(Lcom/android/settings/applications/ManageDomainUrls;)Lcom/android/settingslib/applications/ApplicationsState;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/applications/ManageDomainUrls;->mApplicationsState:Lcom/android/settingslib/applications/ApplicationsState;

    return-object v0
.end method

.method static synthetic -get1()Lcom/samsung/android/settings/applications/EmHandler;
    .locals 1

    sget-object v0, Lcom/android/settings/applications/ManageDomainUrls;->mEmHandler:Lcom/samsung/android/settings/applications/EmHandler;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/settings/applications/ManageDomainUrls;)Lcom/samsung/android/settings/bixby/EmSettingsManager;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/applications/ManageDomainUrls;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    return-object v0
.end method

.method static synthetic -set0(Lcom/samsung/android/settings/applications/EmHandler;)Lcom/samsung/android/settings/applications/EmHandler;
    .locals 0

    sput-object p0, Lcom/android/settings/applications/ManageDomainUrls;->mEmHandler:Lcom/samsung/android/settings/applications/EmHandler;

    return-object p0
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;-><init>()V

    new-instance v0, Lcom/android/settings/applications/ManageDomainUrls$1;

    invoke-direct {v0, p0}, Lcom/android/settings/applications/ManageDomainUrls$1;-><init>(Lcom/android/settings/applications/ManageDomainUrls;)V

    iput-object v0, p0, Lcom/android/settings/applications/ManageDomainUrls;->mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

    return-void
.end method

.method private rebuild()V
    .locals 4

    iget-object v1, p0, Lcom/android/settings/applications/ManageDomainUrls;->mSession:Lcom/android/settingslib/applications/ApplicationsState$Session;

    sget-object v2, Lcom/android/settingslib/applications/ApplicationsState;->FILTER_WITH_DOMAIN_URLS:Lcom/android/settingslib/applications/ApplicationsState$AppFilter;

    sget-object v3, Lcom/android/settingslib/applications/ApplicationsState;->ALPHA_COMPARATOR:Ljava/util/Comparator;

    invoke-virtual {v1, v2, v3}, Lcom/android/settingslib/applications/ApplicationsState$Session;->rebuild(Lcom/android/settingslib/applications/ApplicationsState$AppFilter;Ljava/util/Comparator;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Lcom/android/settings/applications/ManageDomainUrls;->onRebuildComplete(Ljava/util/ArrayList;)V

    :cond_0
    return-void
.end method

.method private rebuildAppList(Landroid/preference/PreferenceGroup;Ljava/util/ArrayList;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/preference/PreferenceGroup;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settingslib/applications/ApplicationsState$AppEntry;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/android/settings/applications/ManageDomainUrls;->cacheRemoveAllPrefs(Landroid/preference/PreferenceGroup;)V

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, v1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v6, v6, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "|"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v6, v6, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/settings/applications/ManageDomainUrls;->getCachedPreference(Ljava/lang/String;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Lcom/android/settings/applications/ManageDomainUrls$DomainAppPreference;

    if-nez v4, :cond_0

    new-instance v4, Lcom/android/settings/applications/ManageDomainUrls$DomainAppPreference;

    invoke-virtual {p0}, Lcom/android/settings/applications/ManageDomainUrls;->getPrefContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, p0, v5, v1}, Lcom/android/settings/applications/ManageDomainUrls$DomainAppPreference;-><init>(Lcom/android/settings/applications/ManageDomainUrls;Landroid/content/Context;Lcom/android/settingslib/applications/ApplicationsState$AppEntry;)V

    invoke-virtual {v4, v3}, Lcom/android/settings/applications/ManageDomainUrls$DomainAppPreference;->setKey(Ljava/lang/String;)V

    invoke-virtual {v4, p0}, Lcom/android/settings/applications/ManageDomainUrls$DomainAppPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    invoke-virtual {p1, v4}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    :goto_1
    invoke-virtual {v4, v2}, Lcom/android/settings/applications/ManageDomainUrls$DomainAppPreference;->setOrder(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v4}, Lcom/android/settings/applications/ManageDomainUrls$DomainAppPreference;->reuse()V

    goto :goto_1

    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/settings/applications/ManageDomainUrls;->removeCachedPrefs(Landroid/preference/PreferenceGroup;)V

    return-void
.end method


# virtual methods
.method public exeCustomAction()V
    .locals 0

    return-void
.end method

.method public exeOptAction()V
    .locals 0

    return-void
.end method

.method public exePrefAction()V
    .locals 8

    sget-object v0, Lcom/android/settings/applications/ManageDomainUrls;->mEmHandler:Lcom/samsung/android/settings/applications/EmHandler;

    invoke-virtual {v0}, Lcom/samsung/android/settings/applications/EmHandler;->getStateId()Ljava/lang/String;

    move-result-object v7

    iget-object v0, p0, Lcom/android/settings/applications/ManageDomainUrls;->mWebAction:Landroid/preference/SwitchPreference;

    if-nez v0, :cond_0

    sget-object v0, Lcom/samsung/android/settings/applications/EmHandler;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "mWebAction is not ready"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/android/settings/applications/ManageDomainUrls;->mEmHandler:Lcom/samsung/android/settings/applications/EmHandler;

    sget-object v1, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    const-string/jumbo v2, "SetAsDefault"

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/settings/applications/EmHandler;->setResult(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;Ljava/lang/String;)V

    sget-object v0, Lcom/android/settings/applications/ManageDomainUrls;->mEmHandler:Lcom/samsung/android/settings/applications/EmHandler;

    invoke-virtual {v0}, Lcom/samsung/android/settings/applications/EmHandler;->retryAction()V

    return-void

    :cond_0
    sget-object v0, Lcom/samsung/android/settings/applications/EmHandler;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "mWebAction is ready"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/android/settings/applications/ManageDomainUrls;->mEmHandler:Lcom/samsung/android/settings/applications/EmHandler;

    iget-object v1, p0, Lcom/android/settings/applications/ManageDomainUrls;->mWebAction:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/applications/EmHandler;->updateActionObj(Ljava/lang/Object;)V

    sget-object v0, Lcom/android/settings/applications/ManageDomainUrls;->mEmHandler:Lcom/samsung/android/settings/applications/EmHandler;

    invoke-virtual {p0}, Lcom/android/settings/applications/ManageDomainUrls;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/settings/applications/EmHandler;->exePrefBasicAction(Landroid/preference/PreferenceScreen;Z)Z

    move-result v6

    if-eqz v6, :cond_5

    const-string/jumbo v0, "OpenLinksInAppsOn"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/settings/applications/ManageDomainUrls;->mWebAction:Landroid/preference/SwitchPreference;

    invoke-virtual {v0}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/android/settings/applications/ManageDomainUrls;->mEmHandler:Lcom/samsung/android/settings/applications/EmHandler;

    sget-object v1, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    const-string/jumbo v2, "SetAsDefault"

    const-string/jumbo v3, "OpenLinksInApps"

    const-string/jumbo v4, "AlreadyOn"

    const-string/jumbo v5, "yes"

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/settings/applications/EmHandler;->setResult(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    sget-object v0, Lcom/android/settings/applications/ManageDomainUrls;->mEmHandler:Lcom/samsung/android/settings/applications/EmHandler;

    invoke-virtual {v0}, Lcom/samsung/android/settings/applications/EmHandler;->finish()V

    return-void

    :cond_2
    sget-object v0, Lcom/android/settings/applications/ManageDomainUrls;->mEmHandler:Lcom/samsung/android/settings/applications/EmHandler;

    sget-object v1, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    const-string/jumbo v2, "SetAsDefault"

    const-string/jumbo v3, "OpenLinksInApps"

    const-string/jumbo v4, "AlreadyOn"

    const-string/jumbo v5, "no"

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/settings/applications/EmHandler;->setResult(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/settings/applications/ManageDomainUrls;->mWebAction:Landroid/preference/SwitchPreference;

    invoke-virtual {p0}, Lcom/android/settings/applications/ManageDomainUrls;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->performClick(Landroid/preference/PreferenceScreen;)V

    goto :goto_0

    :cond_3
    const-string/jumbo v0, "OpenLinksInAppsOff"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/applications/ManageDomainUrls;->mWebAction:Landroid/preference/SwitchPreference;

    invoke-virtual {v0}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v0

    if-nez v0, :cond_4

    sget-object v0, Lcom/android/settings/applications/ManageDomainUrls;->mEmHandler:Lcom/samsung/android/settings/applications/EmHandler;

    sget-object v1, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    const-string/jumbo v2, "SetAsDefault"

    const-string/jumbo v3, "OpenLinksInApps"

    const-string/jumbo v4, "AlreadyOff"

    const-string/jumbo v5, "yes"

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/settings/applications/EmHandler;->setResult(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    sget-object v0, Lcom/android/settings/applications/ManageDomainUrls;->mEmHandler:Lcom/samsung/android/settings/applications/EmHandler;

    sget-object v1, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    const-string/jumbo v2, "SetAsDefault"

    const-string/jumbo v3, "OpenLinksInApps"

    const-string/jumbo v4, "AlreadyOff"

    const-string/jumbo v5, "no"

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/settings/applications/EmHandler;->setResult(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/settings/applications/ManageDomainUrls;->mWebAction:Landroid/preference/SwitchPreference;

    invoke-virtual {p0}, Lcom/android/settings/applications/ManageDomainUrls;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->performClick(Landroid/preference/PreferenceScreen;)V

    goto :goto_0

    :cond_5
    sget-object v0, Lcom/android/settings/applications/ManageDomainUrls;->mEmHandler:Lcom/samsung/android/settings/applications/EmHandler;

    sget-object v1, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    const-string/jumbo v2, "SetAsDefault"

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/settings/applications/EmHandler;->setResult(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;Ljava/lang/String;)V

    sget-object v0, Lcom/android/settings/applications/ManageDomainUrls;->mEmHandler:Lcom/samsung/android/settings/applications/EmHandler;

    invoke-virtual {v0}, Lcom/samsung/android/settings/applications/EmHandler;->retryAction()V

    return-void
.end method

.method public exeViewAction()V
    .locals 0

    return-void
.end method

.method protected getMetricsCategory()I
    .locals 1

    const/16 v0, 0x8f

    return v0
.end method

.method public onAllSizesComputed()V
    .locals 0

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/android/settings/applications/ManageDomainUrls;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/settings/applications/ManageDomainUrls;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceManager;->createPreferenceScreen(Landroid/content/Context;)Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings/applications/ManageDomainUrls;->setPreferenceScreen(Landroid/preference/PreferenceScreen;)V

    invoke-virtual {p0}, Lcom/android/settings/applications/ManageDomainUrls;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Application;

    invoke-static {v0}, Lcom/android/settingslib/applications/ApplicationsState;->getInstance(Landroid/app/Application;)Lcom/android/settingslib/applications/ApplicationsState;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/applications/ManageDomainUrls;->mApplicationsState:Lcom/android/settingslib/applications/ApplicationsState;

    iget-object v0, p0, Lcom/android/settings/applications/ManageDomainUrls;->mApplicationsState:Lcom/android/settingslib/applications/ApplicationsState;

    invoke-virtual {v0, p0}, Lcom/android/settingslib/applications/ApplicationsState;->newSession(Lcom/android/settingslib/applications/ApplicationsState$Callbacks;)Lcom/android/settingslib/applications/ApplicationsState$Session;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/applications/ManageDomainUrls;->mSession:Lcom/android/settingslib/applications/ApplicationsState$Session;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/settings/applications/ManageDomainUrls;->setHasOptionsMenu(Z)V

    new-instance v0, Lcom/samsung/android/settings/utils/Booster;

    invoke-virtual {p0}, Lcom/android/settings/applications/ManageDomainUrls;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/settings/utils/Booster;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/applications/ManageDomainUrls;->mBooster:Lcom/samsung/android/settings/utils/Booster;

    iget-object v0, p0, Lcom/android/settings/applications/ManageDomainUrls;->mBooster:Lcom/samsung/android/settings/utils/Booster;

    const/16 v1, 0xbb8

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/utils/Booster;->start(I)V

    new-instance v0, Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-direct {v0}, Lcom/samsung/android/settings/bixby/EmSettingsManager;-><init>()V

    iput-object v0, p0, Lcom/android/settings/applications/ManageDomainUrls;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    return-void
.end method

.method public onDestroy()V
    .locals 1

    invoke-super {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onDestroy()V

    iget-object v0, p0, Lcom/android/settings/applications/ManageDomainUrls;->mSession:Lcom/android/settingslib/applications/ApplicationsState$Session;

    invoke-virtual {v0}, Lcom/android/settingslib/applications/ApplicationsState$Session;->release()V

    return-void
.end method

.method public onLauncherInfoChanged()V
    .locals 0

    return-void
.end method

.method public onLoadEntriesCompleted()V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/applications/ManageDomainUrls;->rebuild()V

    return-void
.end method

.method public onPackageIconChanged()V
    .locals 0

    return-void
.end method

.method public onPackageListChanged()V
    .locals 0

    return-void
.end method

.method public onPackageSizeChanged(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onPause()V
    .locals 2

    invoke-super {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onPause()V

    iget-object v0, p0, Lcom/android/settings/applications/ManageDomainUrls;->mSession:Lcom/android/settingslib/applications/ApplicationsState$Session;

    invoke-virtual {v0}, Lcom/android/settingslib/applications/ApplicationsState$Session;->pause()V

    iget-object v0, p0, Lcom/android/settings/applications/ManageDomainUrls;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v1, "SetAsDefault"

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->clearEmService(Ljava/lang/Object;)V

    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 3

    iget-object v1, p0, Lcom/android/settings/applications/ManageDomainUrls;->mWebAction:Landroid/preference/SwitchPreference;

    if-ne p1, v1, :cond_1

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/applications/ManageDomainUrls;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "web_action_enabled"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const/4 v1, 0x1

    return v1

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    return v1
.end method

.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 7

    const/4 v5, 0x1

    invoke-virtual {p1}, Landroid/preference/Preference;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lcom/android/settings/applications/ManageDomainUrls$DomainAppPreference;

    if-ne v0, v1, :cond_0

    check-cast p1, Lcom/android/settings/applications/ManageDomainUrls$DomainAppPreference;

    invoke-static {p1}, Lcom/android/settings/applications/ManageDomainUrls$DomainAppPreference;->-get0(Lcom/android/settings/applications/ManageDomainUrls$DomainAppPreference;)Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    move-result-object v6

    const-class v0, Lcom/android/settings/applications/AppLaunchSettings;

    iget-object v1, v6, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v1, v6, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v3, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    const v1, 0x7f0b0450

    move-object v4, p0

    invoke-static/range {v0 .. v5}, Lcom/android/settings/applications/AppInfoBase;->startAppInfoFragment(Ljava/lang/Class;ILjava/lang/String;ILandroid/app/Fragment;I)V

    return v5

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onRebuildComplete(Ljava/util/ArrayList;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settingslib/applications/ApplicationsState$AppEntry;",
            ">;)V"
        }
    .end annotation

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-virtual {p0}, Lcom/android/settings/applications/ManageDomainUrls;->getContext()Landroid/content/Context;

    move-result-object v4

    if-nez v4, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/applications/ManageDomainUrls;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v7, "enable_ephemeral_feature"

    invoke-static {v4, v7, v5}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-nez v4, :cond_3

    move v0, v5

    :goto_0
    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/android/settings/applications/ManageDomainUrls;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/applications/ManageDomainUrls;->mDomainAppList:Landroid/preference/PreferenceGroup;

    :cond_1
    :goto_1
    iget-object v4, p0, Lcom/android/settings/applications/ManageDomainUrls;->mDomainAppList:Landroid/preference/PreferenceGroup;

    invoke-direct {p0, v4, p1}, Lcom/android/settings/applications/ManageDomainUrls;->rebuildAppList(Landroid/preference/PreferenceGroup;Ljava/util/ArrayList;)V

    invoke-virtual {p0}, Lcom/android/settings/applications/ManageDomainUrls;->getListView()Landroid/widget/ListView;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v1, v5}, Landroid/widget/ListView;->semSetGoToTopEnabled(Z)V

    invoke-virtual {v1, v5}, Landroid/widget/ListView;->semSetFastScrollCustomEffectEnabled(Z)V

    invoke-virtual {v1, v5}, Landroid/widget/ListView;->setFastScrollEnabled(Z)V

    :cond_2
    invoke-virtual {p0, v6, v6}, Lcom/android/settings/applications/ManageDomainUrls;->setLoading(ZZ)V

    return-void

    :cond_3
    move v0, v6

    goto :goto_0

    :cond_4
    invoke-virtual {p0}, Lcom/android/settings/applications/ManageDomainUrls;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    invoke-virtual {v2}, Landroid/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v4

    if-nez v4, :cond_1

    new-instance v3, Landroid/preference/PreferenceCategory;

    invoke-virtual {p0}, Lcom/android/settings/applications/ManageDomainUrls;->getPrefContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/preference/PreferenceCategory;-><init>(Landroid/content/Context;)V

    const v4, 0x7f0b1ecb

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceCategory;->setTitle(I)V

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    new-instance v4, Landroid/preference/SwitchPreference;

    invoke-virtual {p0}, Lcom/android/settings/applications/ManageDomainUrls;->getPrefContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v4, v7}, Landroid/preference/SwitchPreference;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/android/settings/applications/ManageDomainUrls;->mWebAction:Landroid/preference/SwitchPreference;

    iget-object v4, p0, Lcom/android/settings/applications/ManageDomainUrls;->mWebAction:Landroid/preference/SwitchPreference;

    const v7, 0x7f0b1ec9

    invoke-virtual {v4, v7}, Landroid/preference/SwitchPreference;->setTitle(I)V

    iget-object v4, p0, Lcom/android/settings/applications/ManageDomainUrls;->mWebAction:Landroid/preference/SwitchPreference;

    const v7, 0x7f0b1eca

    invoke-virtual {v4, v7}, Landroid/preference/SwitchPreference;->setSummary(I)V

    iget-object v7, p0, Lcom/android/settings/applications/ManageDomainUrls;->mWebAction:Landroid/preference/SwitchPreference;

    invoke-virtual {p0}, Lcom/android/settings/applications/ManageDomainUrls;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v8, "web_action_enabled"

    invoke-static {v4, v8, v5}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-eqz v4, :cond_5

    move v4, v5

    :goto_2
    invoke-virtual {v7, v4}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    iget-object v4, p0, Lcom/android/settings/applications/ManageDomainUrls;->mWebAction:Landroid/preference/SwitchPreference;

    invoke-virtual {v4, p0}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    iget-object v4, p0, Lcom/android/settings/applications/ManageDomainUrls;->mWebAction:Landroid/preference/SwitchPreference;

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    new-instance v4, Landroid/preference/PreferenceCategory;

    invoke-virtual {p0}, Lcom/android/settings/applications/ManageDomainUrls;->getPrefContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v4, v7}, Landroid/preference/PreferenceCategory;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/android/settings/applications/ManageDomainUrls;->mDomainAppList:Landroid/preference/PreferenceGroup;

    iget-object v4, p0, Lcom/android/settings/applications/ManageDomainUrls;->mDomainAppList:Landroid/preference/PreferenceGroup;

    const v7, 0x7f0b1ecc

    invoke-virtual {v4, v7}, Landroid/preference/PreferenceGroup;->setTitle(I)V

    iget-object v4, p0, Lcom/android/settings/applications/ManageDomainUrls;->mDomainAppList:Landroid/preference/PreferenceGroup;

    invoke-virtual {v2, v4}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    goto/16 :goto_1

    :cond_5
    move v4, v6

    goto :goto_2
.end method

.method public onResume()V
    .locals 4

    invoke-super {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onResume()V

    iget-object v0, p0, Lcom/android/settings/applications/ManageDomainUrls;->mSession:Lcom/android/settingslib/applications/ApplicationsState$Session;

    invoke-virtual {v0}, Lcom/android/settingslib/applications/ApplicationsState$Session;->resume()V

    iget-object v0, p0, Lcom/android/settings/applications/ManageDomainUrls;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {p0}, Lcom/android/settings/applications/ManageDomainUrls;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/applications/ManageDomainUrls;->mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

    const-string/jumbo v3, "SetAsDefault"

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->bindEmService(Landroid/content/Context;Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;Ljava/lang/Object;)V

    return-void
.end method

.method public onRunningStateChanged(Z)V
    .locals 0

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1, p2}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/applications/ManageDomainUrls;->setLoading(ZZ)V

    return-void
.end method

.method public setActionType(Ljava/lang/String;)V
    .locals 4

    const-string/jumbo v0, "OpenLinksInAppsOn"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "OpenLinksInAppsOff"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    sget-object v0, Lcom/android/settings/applications/ManageDomainUrls;->mEmHandler:Lcom/samsung/android/settings/applications/EmHandler;

    iget-object v1, p0, Lcom/android/settings/applications/ManageDomainUrls;->mWebAction:Landroid/preference/SwitchPreference;

    const/4 v2, 0x1

    const/16 v3, 0x2710

    invoke-virtual {v0, v2, v1, v3}, Lcom/samsung/android/settings/applications/EmHandler;->setAction(ILjava/lang/Object;I)V

    :cond_1
    return-void
.end method

.method public stopAction()V
    .locals 3

    const/4 v2, 0x0

    sget-object v0, Lcom/android/settings/applications/ManageDomainUrls;->mEmHandler:Lcom/samsung/android/settings/applications/EmHandler;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/settings/applications/ManageDomainUrls;->mEmHandler:Lcom/samsung/android/settings/applications/EmHandler;

    iget-object v1, p0, Lcom/android/settings/applications/ManageDomainUrls;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/applications/EmHandler;->sendResult(Lcom/samsung/android/settings/bixby/EmSettingsManager;)V

    sput-object v2, Lcom/android/settings/applications/ManageDomainUrls;->mEmHandler:Lcom/samsung/android/settings/applications/EmHandler;

    :cond_0
    return-void
.end method
