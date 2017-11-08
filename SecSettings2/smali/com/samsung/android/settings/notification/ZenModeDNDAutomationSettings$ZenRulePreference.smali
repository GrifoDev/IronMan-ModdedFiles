.class Lcom/samsung/android/settings/notification/ZenModeDNDAutomationSettings$ZenRulePreference;
.super Landroid/preference/Preference;
.source "ZenModeDNDAutomationSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/notification/ZenModeDNDAutomationSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ZenRulePreference"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/notification/ZenModeDNDAutomationSettings$ZenRulePreference$1;
    }
.end annotation


# instance fields
.field final appExists:Z

.field private final mDeleteListener:Landroid/view/View$OnClickListener;

.field final mId:Ljava/lang/String;

.field final mName:Ljava/lang/CharSequence;

.field final synthetic this$0:Lcom/samsung/android/settings/notification/ZenModeDNDAutomationSettings;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/notification/ZenModeDNDAutomationSettings;Landroid/content/Context;Ljava/util/Map$Entry;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map$Entry",
            "<",
            "Ljava/lang/String;",
            "Landroid/app/AutomaticZenRule;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/settings/notification/ZenModeDNDAutomationSettings$ZenRulePreference;->this$0:Lcom/samsung/android/settings/notification/ZenModeDNDAutomationSettings;

    invoke-direct {p0, p2}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    new-instance v9, Lcom/samsung/android/settings/notification/ZenModeDNDAutomationSettings$ZenRulePreference$1;

    invoke-direct {v9, p0}, Lcom/samsung/android/settings/notification/ZenModeDNDAutomationSettings$ZenRulePreference$1;-><init>(Lcom/samsung/android/settings/notification/ZenModeDNDAutomationSettings$ZenRulePreference;)V

    iput-object v9, p0, Lcom/samsung/android/settings/notification/ZenModeDNDAutomationSettings$ZenRulePreference;->mDeleteListener:Landroid/view/View$OnClickListener;

    invoke-interface {p3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/AutomaticZenRule;

    invoke-virtual {v5}, Landroid/app/AutomaticZenRule;->getName()Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/samsung/android/settings/notification/ZenModeDNDAutomationSettings$ZenRulePreference;->mName:Ljava/lang/CharSequence;

    invoke-interface {p3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    iput-object v9, p0, Lcom/samsung/android/settings/notification/ZenModeDNDAutomationSettings$ZenRulePreference;->mId:Ljava/lang/String;

    invoke-virtual {v5}, Landroid/app/AutomaticZenRule;->getConditionId()Landroid/net/Uri;

    move-result-object v9

    invoke-static {v9}, Landroid/service/notification/ZenModeConfig;->isValidScheduleConditionId(Landroid/net/Uri;)Z

    move-result v3

    invoke-virtual {v5}, Landroid/app/AutomaticZenRule;->getConditionId()Landroid/net/Uri;

    move-result-object v9

    invoke-static {v9}, Landroid/service/notification/ZenModeConfig;->isValidEventConditionId(Landroid/net/Uri;)Z

    move-result v2

    if-nez v3, :cond_0

    move v4, v2

    :goto_0
    :try_start_0
    invoke-static {p1}, Lcom/samsung/android/settings/notification/ZenModeDNDAutomationSettings;->-get1(Lcom/samsung/android/settings/notification/ZenModeDNDAutomationSettings;)Landroid/content/pm/PackageManager;

    move-result-object v9

    invoke-virtual {v5}, Landroid/app/AutomaticZenRule;->getOwner()Landroid/content/ComponentName;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    new-instance v8, Lcom/samsung/android/settings/notification/ZenModeDNDAutomationSettings$LoadIconTask;

    invoke-direct {v8, p1, p0}, Lcom/samsung/android/settings/notification/ZenModeDNDAutomationSettings$LoadIconTask;-><init>(Lcom/samsung/android/settings/notification/ZenModeDNDAutomationSettings;Landroid/preference/Preference;)V

    const/4 v9, 0x1

    new-array v9, v9, [Landroid/content/pm/ApplicationInfo;

    const/4 v10, 0x0

    aput-object v1, v9, v10

    invoke-virtual {v8, v9}, Lcom/samsung/android/settings/notification/ZenModeDNDAutomationSettings$LoadIconTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    invoke-static {p1}, Lcom/samsung/android/settings/notification/ZenModeDNDAutomationSettings;->-get1(Lcom/samsung/android/settings/notification/ZenModeDNDAutomationSettings;)Landroid/content/pm/PackageManager;

    move-result-object v9

    invoke-virtual {v1, v9}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v9

    invoke-static {p1, v5, v4, v9}, Lcom/samsung/android/settings/notification/ZenModeDNDAutomationSettings;->-wrap2(Lcom/samsung/android/settings/notification/ZenModeDNDAutomationSettings;Landroid/app/AutomaticZenRule;ZLjava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v9}, Lcom/samsung/android/settings/notification/ZenModeDNDAutomationSettings$ZenRulePreference;->setSummary(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const-string/jumbo v9, "twschedule"

    iget-object v10, p0, Lcom/samsung/android/settings/notification/ZenModeDNDAutomationSettings$ZenRulePreference;->mName:Ljava/lang/CharSequence;

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/samsung/android/settings/notification/ZenModeDNDAutomationSettings$ZenRulePreference;->appExists:Z

    :goto_1
    invoke-virtual {v5}, Landroid/app/AutomaticZenRule;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v9}, Lcom/samsung/android/settings/notification/ZenModeDNDAutomationSettings$ZenRulePreference;->setTitle(Ljava/lang/CharSequence;)V

    const/4 v9, 0x0

    invoke-virtual {p0, v9}, Lcom/samsung/android/settings/notification/ZenModeDNDAutomationSettings$ZenRulePreference;->setPersistent(Z)V

    invoke-static {p1}, Lcom/samsung/android/settings/notification/ZenModeDNDAutomationSettings;->-get2(Lcom/samsung/android/settings/notification/ZenModeDNDAutomationSettings;)Lcom/android/settings/utils/ZenServiceListing;

    move-result-object v9

    invoke-virtual {v5}, Landroid/app/AutomaticZenRule;->getOwner()Landroid/content/ComponentName;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/android/settings/utils/ZenServiceListing;->findService(Landroid/content/ComponentName;)Landroid/content/pm/ServiceInfo;

    move-result-object v7

    invoke-static {v7}, Lcom/samsung/android/settings/notification/ZenModeDNDAutomationSettings;->-wrap0(Landroid/content/pm/ServiceInfo;)Landroid/content/ComponentName;

    move-result-object v6

    const v9, 0x7f0403e2

    invoke-virtual {p0, v9}, Lcom/samsung/android/settings/notification/ZenModeDNDAutomationSettings$ZenRulePreference;->setWidgetLayoutResource(I)V

    return-void

    :cond_0
    const/4 v4, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    const v9, 0x7f0201e8

    invoke-virtual {p0, v9}, Lcom/samsung/android/settings/notification/ZenModeDNDAutomationSettings$ZenRulePreference;->setIcon(I)V

    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/samsung/android/settings/notification/ZenModeDNDAutomationSettings$ZenRulePreference;->appExists:Z

    return-void

    :cond_1
    const/4 v9, 0x1

    iput-boolean v9, p0, Lcom/samsung/android/settings/notification/ZenModeDNDAutomationSettings$ZenRulePreference;->appExists:Z

    goto :goto_1
.end method


# virtual methods
.method public onBindView(Landroid/view/View;)V
    .locals 4

    const/4 v3, 0x1

    invoke-super {p0, p1}, Landroid/preference/Preference;->onBindView(Landroid/view/View;)V

    const v2, 0x7f1109d5

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/samsung/android/settings/notification/ZenModeDNDAutomationSettings$ZenRulePreference;->mDeleteListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    iget-object v2, p0, Lcom/samsung/android/settings/notification/ZenModeDNDAutomationSettings$ZenRulePreference;->this$0:Lcom/samsung/android/settings/notification/ZenModeDNDAutomationSettings;

    invoke-virtual {v2}, Lcom/samsung/android/settings/notification/ZenModeDNDAutomationSettings;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setHeaderDividersEnabled(Z)V

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setFooterDividersEnabled(Z)V

    return-void
.end method
