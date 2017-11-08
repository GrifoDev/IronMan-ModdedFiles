.class Lcom/android/settings/datausage/BillingCycleChnSettings$1;
.super Ljava/lang/Object;
.source "BillingCycleChnSettings.java"

# interfaces
.implements Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/datausage/BillingCycleChnSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/datausage/BillingCycleChnSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/datausage/BillingCycleChnSettings;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/datausage/BillingCycleChnSettings$1;->this$0:Lcom/android/settings/datausage/BillingCycleChnSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStateReceived()V
    .locals 14

    iget-object v10, p0, Lcom/android/settings/datausage/BillingCycleChnSettings$1;->this$0:Lcom/android/settings/datausage/BillingCycleChnSettings;

    invoke-static {v10}, Lcom/android/settings/datausage/BillingCycleChnSettings;->-get0(Lcom/android/settings/datausage/BillingCycleChnSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    invoke-virtual {v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getStateId()Ljava/lang/String;

    move-result-object v8

    iget-object v10, p0, Lcom/android/settings/datausage/BillingCycleChnSettings$1;->this$0:Lcom/android/settings/datausage/BillingCycleChnSettings;

    invoke-static {v10}, Lcom/android/settings/datausage/BillingCycleChnSettings;->-get6(Lcom/android/settings/datausage/BillingCycleChnSettings;)Landroid/content/SharedPreferences;

    move-result-object v10

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "switch_traffic_settings"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    sget v12, Lcom/android/settings/datausage/BillingCycleChnSettings;->sSubId:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    invoke-interface {v10, v11, v12}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    if-nez v5, :cond_0

    iget-object v10, p0, Lcom/android/settings/datausage/BillingCycleChnSettings$1;->this$0:Lcom/android/settings/datausage/BillingCycleChnSettings;

    invoke-virtual {v10}, Lcom/android/settings/datausage/BillingCycleChnSettings;->getActivity()Landroid/app/Activity;

    move-result-object v10

    invoke-virtual {v10}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "switch_traffic_settings"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    sget v12, Lcom/android/settings/datausage/BillingCycleChnSettings;->sSubId:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-static {v10, v11, v12, v13}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v10

    if-nez v10, :cond_4

    const/4 v5, 0x0

    :cond_0
    :goto_0
    iget-object v10, p0, Lcom/android/settings/datausage/BillingCycleChnSettings$1;->this$0:Lcom/android/settings/datausage/BillingCycleChnSettings;

    invoke-static {v10}, Lcom/android/settings/datausage/BillingCycleChnSettings;->-get6(Lcom/android/settings/datausage/BillingCycleChnSettings;)Landroid/content/SharedPreferences;

    move-result-object v10

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "restrict_data_check_box"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    sget v12, Lcom/android/settings/datausage/BillingCycleChnSettings;->sSubId:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    invoke-interface {v10, v11, v12}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    if-nez v6, :cond_1

    iget-object v10, p0, Lcom/android/settings/datausage/BillingCycleChnSettings$1;->this$0:Lcom/android/settings/datausage/BillingCycleChnSettings;

    invoke-virtual {v10}, Lcom/android/settings/datausage/BillingCycleChnSettings;->getActivity()Landroid/app/Activity;

    move-result-object v10

    invoke-virtual {v10}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "restrict_data_check_box"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    sget v12, Lcom/android/settings/datausage/BillingCycleChnSettings;->sSubId:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-static {v10, v11, v12, v13}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v10

    if-nez v10, :cond_5

    const/4 v6, 0x0

    :cond_1
    :goto_1
    const-string/jumbo v10, "DataUsageLimitOn"

    invoke-virtual {v10, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_8

    if-nez v5, :cond_7

    iget-object v10, p0, Lcom/android/settings/datausage/BillingCycleChnSettings$1;->this$0:Lcom/android/settings/datausage/BillingCycleChnSettings;

    invoke-static {v10}, Lcom/android/settings/datausage/BillingCycleChnSettings;->-get0(Lcom/android/settings/datausage/BillingCycleChnSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    invoke-virtual {v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v10

    if-eqz v10, :cond_2

    iget-object v10, p0, Lcom/android/settings/datausage/BillingCycleChnSettings$1;->this$0:Lcom/android/settings/datausage/BillingCycleChnSettings;

    invoke-static {v10}, Lcom/android/settings/datausage/BillingCycleChnSettings;->-get0(Lcom/android/settings/datausage/BillingCycleChnSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    const-string/jumbo v11, "MobileDatalimit"

    const-string/jumbo v12, "AlreadyON"

    const-string/jumbo v13, "No"

    invoke-virtual {v10, v11, v12, v13}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v10, p0, Lcom/android/settings/datausage/BillingCycleChnSettings$1;->this$0:Lcom/android/settings/datausage/BillingCycleChnSettings;

    invoke-static {v10}, Lcom/android/settings/datausage/BillingCycleChnSettings;->-get0(Lcom/android/settings/datausage/BillingCycleChnSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    const-string/jumbo v11, "DataUsageLimitSettings"

    invoke-virtual {v10, v11}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_2
    iget-object v10, p0, Lcom/android/settings/datausage/BillingCycleChnSettings$1;->this$0:Lcom/android/settings/datausage/BillingCycleChnSettings;

    invoke-static {v10}, Lcom/android/settings/datausage/BillingCycleChnSettings;->-get7(Lcom/android/settings/datausage/BillingCycleChnSettings;)Lcom/android/settings/widget/SwitchBar;

    move-result-object v11

    if-eqz v5, :cond_6

    const/4 v10, 0x0

    :goto_2
    invoke-virtual {v11, v10}, Lcom/android/settings/widget/SwitchBar;->setChecked(Z)V

    iget-object v10, p0, Lcom/android/settings/datausage/BillingCycleChnSettings$1;->this$0:Lcom/android/settings/datausage/BillingCycleChnSettings;

    invoke-static {v10}, Lcom/android/settings/datausage/BillingCycleChnSettings;->-get0(Lcom/android/settings/datausage/BillingCycleChnSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    sget-object v11, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v10, v11}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    :cond_3
    :goto_3
    return-void

    :cond_4
    const/4 v5, 0x1

    goto/16 :goto_0

    :cond_5
    const/4 v6, 0x1

    goto :goto_1

    :cond_6
    const/4 v10, 0x1

    goto :goto_2

    :cond_7
    iget-object v10, p0, Lcom/android/settings/datausage/BillingCycleChnSettings$1;->this$0:Lcom/android/settings/datausage/BillingCycleChnSettings;

    invoke-static {v10}, Lcom/android/settings/datausage/BillingCycleChnSettings;->-get0(Lcom/android/settings/datausage/BillingCycleChnSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    const-string/jumbo v11, "MobileDatalimit"

    const-string/jumbo v12, "AlreadyON"

    const-string/jumbo v13, "Yes"

    invoke-virtual {v10, v11, v12, v13}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v10, p0, Lcom/android/settings/datausage/BillingCycleChnSettings$1;->this$0:Lcom/android/settings/datausage/BillingCycleChnSettings;

    invoke-static {v10}, Lcom/android/settings/datausage/BillingCycleChnSettings;->-get0(Lcom/android/settings/datausage/BillingCycleChnSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    const-string/jumbo v11, "DataUsageLimitSettings"

    invoke-virtual {v10, v11}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v10, p0, Lcom/android/settings/datausage/BillingCycleChnSettings$1;->this$0:Lcom/android/settings/datausage/BillingCycleChnSettings;

    invoke-static {v10}, Lcom/android/settings/datausage/BillingCycleChnSettings;->-get0(Lcom/android/settings/datausage/BillingCycleChnSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    sget-object v11, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v10, v11}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto :goto_3

    :cond_8
    const-string/jumbo v10, "DataUsageLimitOff"

    invoke-virtual {v10, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_c

    if-eqz v5, :cond_b

    iget-object v10, p0, Lcom/android/settings/datausage/BillingCycleChnSettings$1;->this$0:Lcom/android/settings/datausage/BillingCycleChnSettings;

    invoke-static {v10}, Lcom/android/settings/datausage/BillingCycleChnSettings;->-get0(Lcom/android/settings/datausage/BillingCycleChnSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    invoke-virtual {v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v10

    if-eqz v10, :cond_9

    iget-object v10, p0, Lcom/android/settings/datausage/BillingCycleChnSettings$1;->this$0:Lcom/android/settings/datausage/BillingCycleChnSettings;

    invoke-static {v10}, Lcom/android/settings/datausage/BillingCycleChnSettings;->-get0(Lcom/android/settings/datausage/BillingCycleChnSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    const-string/jumbo v11, "MobileDatalimit"

    const-string/jumbo v12, "AlreadyOff"

    const-string/jumbo v13, "No"

    invoke-virtual {v10, v11, v12, v13}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v10, p0, Lcom/android/settings/datausage/BillingCycleChnSettings$1;->this$0:Lcom/android/settings/datausage/BillingCycleChnSettings;

    invoke-static {v10}, Lcom/android/settings/datausage/BillingCycleChnSettings;->-get0(Lcom/android/settings/datausage/BillingCycleChnSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    const-string/jumbo v11, "DataUsageLimitSettings"

    invoke-virtual {v10, v11}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_9
    iget-object v10, p0, Lcom/android/settings/datausage/BillingCycleChnSettings$1;->this$0:Lcom/android/settings/datausage/BillingCycleChnSettings;

    invoke-static {v10}, Lcom/android/settings/datausage/BillingCycleChnSettings;->-get7(Lcom/android/settings/datausage/BillingCycleChnSettings;)Lcom/android/settings/widget/SwitchBar;

    move-result-object v11

    if-eqz v5, :cond_a

    const/4 v10, 0x0

    :goto_4
    invoke-virtual {v11, v10}, Lcom/android/settings/widget/SwitchBar;->setChecked(Z)V

    iget-object v10, p0, Lcom/android/settings/datausage/BillingCycleChnSettings$1;->this$0:Lcom/android/settings/datausage/BillingCycleChnSettings;

    invoke-static {v10}, Lcom/android/settings/datausage/BillingCycleChnSettings;->-get0(Lcom/android/settings/datausage/BillingCycleChnSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    sget-object v11, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v10, v11}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto :goto_3

    :cond_a
    const/4 v10, 0x1

    goto :goto_4

    :cond_b
    iget-object v10, p0, Lcom/android/settings/datausage/BillingCycleChnSettings$1;->this$0:Lcom/android/settings/datausage/BillingCycleChnSettings;

    invoke-static {v10}, Lcom/android/settings/datausage/BillingCycleChnSettings;->-get0(Lcom/android/settings/datausage/BillingCycleChnSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    const-string/jumbo v11, "MobileDatalimit"

    const-string/jumbo v12, "AlreadyOff"

    const-string/jumbo v13, "Yes"

    invoke-virtual {v10, v11, v12, v13}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v10, p0, Lcom/android/settings/datausage/BillingCycleChnSettings$1;->this$0:Lcom/android/settings/datausage/BillingCycleChnSettings;

    invoke-static {v10}, Lcom/android/settings/datausage/BillingCycleChnSettings;->-get0(Lcom/android/settings/datausage/BillingCycleChnSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    const-string/jumbo v11, "DataUsageLimitSettings"

    invoke-virtual {v10, v11}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v10, p0, Lcom/android/settings/datausage/BillingCycleChnSettings$1;->this$0:Lcom/android/settings/datausage/BillingCycleChnSettings;

    invoke-static {v10}, Lcom/android/settings/datausage/BillingCycleChnSettings;->-get0(Lcom/android/settings/datausage/BillingCycleChnSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    sget-object v11, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v10, v11}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_3

    :cond_c
    const-string/jumbo v10, "MonthlyDataLimitPopup"

    invoke-virtual {v10, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_d

    const-string/jumbo v10, "SetMonthlyDataLimit"

    invoke-virtual {v10, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_15

    :cond_d
    if-nez v5, :cond_e

    iget-object v10, p0, Lcom/android/settings/datausage/BillingCycleChnSettings$1;->this$0:Lcom/android/settings/datausage/BillingCycleChnSettings;

    invoke-static {v10}, Lcom/android/settings/datausage/BillingCycleChnSettings;->-get0(Lcom/android/settings/datausage/BillingCycleChnSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    const-string/jumbo v11, "MobileDatalimit"

    const-string/jumbo v12, "AlreadyOff"

    const-string/jumbo v13, "Yes"

    invoke-virtual {v10, v11, v12, v13}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v10, p0, Lcom/android/settings/datausage/BillingCycleChnSettings$1;->this$0:Lcom/android/settings/datausage/BillingCycleChnSettings;

    invoke-static {v10}, Lcom/android/settings/datausage/BillingCycleChnSettings;->-get0(Lcom/android/settings/datausage/BillingCycleChnSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    const-string/jumbo v11, "DataUsageLimitSettings"

    invoke-virtual {v10, v11}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v10, p0, Lcom/android/settings/datausage/BillingCycleChnSettings$1;->this$0:Lcom/android/settings/datausage/BillingCycleChnSettings;

    invoke-static {v10}, Lcom/android/settings/datausage/BillingCycleChnSettings;->-get0(Lcom/android/settings/datausage/BillingCycleChnSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    sget-object v11, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v10, v11}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_3

    :cond_e
    iget-object v10, p0, Lcom/android/settings/datausage/BillingCycleChnSettings$1;->this$0:Lcom/android/settings/datausage/BillingCycleChnSettings;

    invoke-static {v10}, Lcom/android/settings/datausage/BillingCycleChnSettings;->-get0(Lcom/android/settings/datausage/BillingCycleChnSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    invoke-virtual {v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getParamsSize()I

    move-result v10

    if-nez v10, :cond_10

    iget-object v10, p0, Lcom/android/settings/datausage/BillingCycleChnSettings$1;->this$0:Lcom/android/settings/datausage/BillingCycleChnSettings;

    invoke-static {v10}, Lcom/android/settings/datausage/BillingCycleChnSettings;->-get3(Lcom/android/settings/datausage/BillingCycleChnSettings;)Landroid/preference/Preference;

    move-result-object v10

    iget-object v11, p0, Lcom/android/settings/datausage/BillingCycleChnSettings$1;->this$0:Lcom/android/settings/datausage/BillingCycleChnSettings;

    invoke-virtual {v11}, Lcom/android/settings/datausage/BillingCycleChnSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/preference/Preference;->performClick(Landroid/preference/PreferenceScreen;)V

    iget-object v10, p0, Lcom/android/settings/datausage/BillingCycleChnSettings$1;->this$0:Lcom/android/settings/datausage/BillingCycleChnSettings;

    invoke-static {v10}, Lcom/android/settings/datausage/BillingCycleChnSettings;->-get0(Lcom/android/settings/datausage/BillingCycleChnSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    invoke-virtual {v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v10

    if-eqz v10, :cond_f

    iget-object v10, p0, Lcom/android/settings/datausage/BillingCycleChnSettings$1;->this$0:Lcom/android/settings/datausage/BillingCycleChnSettings;

    invoke-static {v10}, Lcom/android/settings/datausage/BillingCycleChnSettings;->-get0(Lcom/android/settings/datausage/BillingCycleChnSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    const-string/jumbo v11, "MonthlyDataLimitPopup"

    invoke-virtual {v10, v11}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_f
    iget-object v10, p0, Lcom/android/settings/datausage/BillingCycleChnSettings$1;->this$0:Lcom/android/settings/datausage/BillingCycleChnSettings;

    invoke-static {v10}, Lcom/android/settings/datausage/BillingCycleChnSettings;->-get0(Lcom/android/settings/datausage/BillingCycleChnSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    sget-object v11, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v10, v11}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_3

    :cond_10
    iget-object v10, p0, Lcom/android/settings/datausage/BillingCycleChnSettings$1;->this$0:Lcom/android/settings/datausage/BillingCycleChnSettings;

    invoke-static {v10}, Lcom/android/settings/datausage/BillingCycleChnSettings;->-get0(Lcom/android/settings/datausage/BillingCycleChnSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    const-string/jumbo v11, "DataNumber"

    invoke-virtual {v10, v11}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getParamString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iget-object v10, p0, Lcom/android/settings/datausage/BillingCycleChnSettings$1;->this$0:Lcom/android/settings/datausage/BillingCycleChnSettings;

    invoke-static {v10}, Lcom/android/settings/datausage/BillingCycleChnSettings;->-get0(Lcom/android/settings/datausage/BillingCycleChnSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    const-string/jumbo v11, "DataUnit"

    invoke-virtual {v10, v11}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getParamString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    if-eqz v7, :cond_11

    if-nez v9, :cond_12

    :cond_11
    iget-object v10, p0, Lcom/android/settings/datausage/BillingCycleChnSettings$1;->this$0:Lcom/android/settings/datausage/BillingCycleChnSettings;

    invoke-static {v10}, Lcom/android/settings/datausage/BillingCycleChnSettings;->-get3(Lcom/android/settings/datausage/BillingCycleChnSettings;)Landroid/preference/Preference;

    move-result-object v10

    iget-object v11, p0, Lcom/android/settings/datausage/BillingCycleChnSettings$1;->this$0:Lcom/android/settings/datausage/BillingCycleChnSettings;

    invoke-virtual {v11}, Lcom/android/settings/datausage/BillingCycleChnSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/preference/Preference;->performClick(Landroid/preference/PreferenceScreen;)V

    iget-object v10, p0, Lcom/android/settings/datausage/BillingCycleChnSettings$1;->this$0:Lcom/android/settings/datausage/BillingCycleChnSettings;

    invoke-static {v10}, Lcom/android/settings/datausage/BillingCycleChnSettings;->-get0(Lcom/android/settings/datausage/BillingCycleChnSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    const-string/jumbo v11, "DataAmount"

    const-string/jumbo v12, "Valid"

    const-string/jumbo v13, "No"

    invoke-virtual {v10, v11, v12, v13}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v10, p0, Lcom/android/settings/datausage/BillingCycleChnSettings$1;->this$0:Lcom/android/settings/datausage/BillingCycleChnSettings;

    invoke-static {v10}, Lcom/android/settings/datausage/BillingCycleChnSettings;->-get0(Lcom/android/settings/datausage/BillingCycleChnSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    const-string/jumbo v11, "MonthlyDataLimitPopup"

    invoke-virtual {v10, v11}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v10, p0, Lcom/android/settings/datausage/BillingCycleChnSettings$1;->this$0:Lcom/android/settings/datausage/BillingCycleChnSettings;

    invoke-static {v10}, Lcom/android/settings/datausage/BillingCycleChnSettings;->-get0(Lcom/android/settings/datausage/BillingCycleChnSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    sget-object v11, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v10, v11}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_3

    :cond_12
    const/4 v0, 0x0

    :try_start_0
    const-string/jumbo v10, "MB"

    invoke-virtual {v9, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_14

    invoke-static {v7}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Float;->floatValue()F

    move-result v0

    :cond_13
    :goto_5
    invoke-static {v0}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v1

    iget-object v10, p0, Lcom/android/settings/datausage/BillingCycleChnSettings$1;->this$0:Lcom/android/settings/datausage/BillingCycleChnSettings;

    invoke-virtual {v10}, Lcom/android/settings/datausage/BillingCycleChnSettings;->getActivity()Landroid/app/Activity;

    move-result-object v10

    invoke-static {v10}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v10

    invoke-interface {v10}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "set_data_limit"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    sget v11, Lcom/android/settings/datausage/BillingCycleChnSettings;->sSubId:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v4, v10, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->apply()V

    iget-object v10, p0, Lcom/android/settings/datausage/BillingCycleChnSettings$1;->this$0:Lcom/android/settings/datausage/BillingCycleChnSettings;

    invoke-virtual {v10}, Lcom/android/settings/datausage/BillingCycleChnSettings;->getActivity()Landroid/app/Activity;

    move-result-object v10

    invoke-virtual {v10}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "set_data_limit"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    sget v12, Lcom/android/settings/datausage/BillingCycleChnSettings;->sSubId:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11, v1}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    iget-object v10, p0, Lcom/android/settings/datausage/BillingCycleChnSettings$1;->this$0:Lcom/android/settings/datausage/BillingCycleChnSettings;

    invoke-static {v10}, Lcom/android/settings/datausage/BillingCycleChnSettings;->-wrap0(Lcom/android/settings/datausage/BillingCycleChnSettings;)V

    iget-object v10, p0, Lcom/android/settings/datausage/BillingCycleChnSettings$1;->this$0:Lcom/android/settings/datausage/BillingCycleChnSettings;

    invoke-static {v10}, Lcom/android/settings/datausage/BillingCycleChnSettings;->-get0(Lcom/android/settings/datausage/BillingCycleChnSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    const-string/jumbo v11, "DataAmount"

    const-string/jumbo v12, "Already set"

    const-string/jumbo v13, "No"

    invoke-virtual {v10, v11, v12, v13}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v10, p0, Lcom/android/settings/datausage/BillingCycleChnSettings$1;->this$0:Lcom/android/settings/datausage/BillingCycleChnSettings;

    invoke-static {v10}, Lcom/android/settings/datausage/BillingCycleChnSettings;->-get0(Lcom/android/settings/datausage/BillingCycleChnSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    const-string/jumbo v11, "DataUsageLimitSettings"

    invoke-virtual {v10, v11}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v10, p0, Lcom/android/settings/datausage/BillingCycleChnSettings$1;->this$0:Lcom/android/settings/datausage/BillingCycleChnSettings;

    invoke-static {v10}, Lcom/android/settings/datausage/BillingCycleChnSettings;->-get0(Lcom/android/settings/datausage/BillingCycleChnSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    sget-object v11, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v10, v11}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_3

    :catch_0
    move-exception v3

    const-string/jumbo v10, "BillingCycleChnSettings"

    const-string/jumbo v11, "could not persist insert byte"

    invoke-static {v10, v11, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-object v10, p0, Lcom/android/settings/datausage/BillingCycleChnSettings$1;->this$0:Lcom/android/settings/datausage/BillingCycleChnSettings;

    invoke-static {v10}, Lcom/android/settings/datausage/BillingCycleChnSettings;->-get3(Lcom/android/settings/datausage/BillingCycleChnSettings;)Landroid/preference/Preference;

    move-result-object v10

    iget-object v11, p0, Lcom/android/settings/datausage/BillingCycleChnSettings$1;->this$0:Lcom/android/settings/datausage/BillingCycleChnSettings;

    invoke-virtual {v11}, Lcom/android/settings/datausage/BillingCycleChnSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/preference/Preference;->performClick(Landroid/preference/PreferenceScreen;)V

    iget-object v10, p0, Lcom/android/settings/datausage/BillingCycleChnSettings$1;->this$0:Lcom/android/settings/datausage/BillingCycleChnSettings;

    invoke-static {v10}, Lcom/android/settings/datausage/BillingCycleChnSettings;->-get0(Lcom/android/settings/datausage/BillingCycleChnSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    const-string/jumbo v11, "DataAmount"

    const-string/jumbo v12, "Valid"

    const-string/jumbo v13, "No"

    invoke-virtual {v10, v11, v12, v13}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v10, p0, Lcom/android/settings/datausage/BillingCycleChnSettings$1;->this$0:Lcom/android/settings/datausage/BillingCycleChnSettings;

    invoke-static {v10}, Lcom/android/settings/datausage/BillingCycleChnSettings;->-get0(Lcom/android/settings/datausage/BillingCycleChnSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    const-string/jumbo v11, "MonthlyDataLimitPopup"

    invoke-virtual {v10, v11}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v10, p0, Lcom/android/settings/datausage/BillingCycleChnSettings$1;->this$0:Lcom/android/settings/datausage/BillingCycleChnSettings;

    invoke-static {v10}, Lcom/android/settings/datausage/BillingCycleChnSettings;->-get0(Lcom/android/settings/datausage/BillingCycleChnSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    sget-object v11, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v10, v11}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_3

    :cond_14
    :try_start_1
    const-string/jumbo v10, "GB"

    invoke-virtual {v9, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_13

    invoke-static {v7}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Float;->floatValue()F
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v0

    const/high16 v10, 0x44800000    # 1024.0f

    mul-float/2addr v0, v10

    goto/16 :goto_5

    :cond_15
    const-string/jumbo v10, "DataWarning"

    invoke-virtual {v10, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_17

    iget-object v10, p0, Lcom/android/settings/datausage/BillingCycleChnSettings$1;->this$0:Lcom/android/settings/datausage/BillingCycleChnSettings;

    invoke-static {v10}, Lcom/android/settings/datausage/BillingCycleChnSettings;->-get5(Lcom/android/settings/datausage/BillingCycleChnSettings;)Landroid/preference/Preference;

    move-result-object v10

    iget-object v11, p0, Lcom/android/settings/datausage/BillingCycleChnSettings$1;->this$0:Lcom/android/settings/datausage/BillingCycleChnSettings;

    invoke-virtual {v11}, Lcom/android/settings/datausage/BillingCycleChnSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/preference/Preference;->performClick(Landroid/preference/PreferenceScreen;)V

    iget-object v10, p0, Lcom/android/settings/datausage/BillingCycleChnSettings$1;->this$0:Lcom/android/settings/datausage/BillingCycleChnSettings;

    invoke-static {v10}, Lcom/android/settings/datausage/BillingCycleChnSettings;->-get0(Lcom/android/settings/datausage/BillingCycleChnSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    invoke-virtual {v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v10

    if-eqz v10, :cond_16

    iget-object v10, p0, Lcom/android/settings/datausage/BillingCycleChnSettings$1;->this$0:Lcom/android/settings/datausage/BillingCycleChnSettings;

    invoke-static {v10}, Lcom/android/settings/datausage/BillingCycleChnSettings;->-get0(Lcom/android/settings/datausage/BillingCycleChnSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    const-string/jumbo v11, "DataWarning"

    invoke-virtual {v10, v11}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_16
    iget-object v10, p0, Lcom/android/settings/datausage/BillingCycleChnSettings$1;->this$0:Lcom/android/settings/datausage/BillingCycleChnSettings;

    invoke-static {v10}, Lcom/android/settings/datausage/BillingCycleChnSettings;->-get0(Lcom/android/settings/datausage/BillingCycleChnSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    sget-object v11, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v10, v11}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_3

    :cond_17
    const-string/jumbo v10, "DataUsageLimitRestrictOn"

    invoke-virtual {v10, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1b

    if-nez v5, :cond_18

    iget-object v10, p0, Lcom/android/settings/datausage/BillingCycleChnSettings$1;->this$0:Lcom/android/settings/datausage/BillingCycleChnSettings;

    invoke-static {v10}, Lcom/android/settings/datausage/BillingCycleChnSettings;->-get0(Lcom/android/settings/datausage/BillingCycleChnSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    const-string/jumbo v11, "DataWarninglmit"

    const-string/jumbo v12, "AlreadyOff"

    const-string/jumbo v13, "Yes"

    invoke-virtual {v10, v11, v12, v13}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v10, p0, Lcom/android/settings/datausage/BillingCycleChnSettings$1;->this$0:Lcom/android/settings/datausage/BillingCycleChnSettings;

    invoke-static {v10}, Lcom/android/settings/datausage/BillingCycleChnSettings;->-get0(Lcom/android/settings/datausage/BillingCycleChnSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    const-string/jumbo v11, "DataUsageLimitSettings"

    invoke-virtual {v10, v11}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v10, p0, Lcom/android/settings/datausage/BillingCycleChnSettings$1;->this$0:Lcom/android/settings/datausage/BillingCycleChnSettings;

    invoke-static {v10}, Lcom/android/settings/datausage/BillingCycleChnSettings;->-get0(Lcom/android/settings/datausage/BillingCycleChnSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    sget-object v11, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v10, v11}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_3

    :cond_18
    if-nez v6, :cond_1a

    iget-object v10, p0, Lcom/android/settings/datausage/BillingCycleChnSettings$1;->this$0:Lcom/android/settings/datausage/BillingCycleChnSettings;

    invoke-static {v10}, Lcom/android/settings/datausage/BillingCycleChnSettings;->-get0(Lcom/android/settings/datausage/BillingCycleChnSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    invoke-virtual {v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v10

    if-eqz v10, :cond_19

    iget-object v10, p0, Lcom/android/settings/datausage/BillingCycleChnSettings$1;->this$0:Lcom/android/settings/datausage/BillingCycleChnSettings;

    invoke-static {v10}, Lcom/android/settings/datausage/BillingCycleChnSettings;->-get0(Lcom/android/settings/datausage/BillingCycleChnSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    const-string/jumbo v11, "Data usage restrict when limit exceeded "

    const-string/jumbo v12, "AlreadyOn"

    const-string/jumbo v13, "No"

    invoke-virtual {v10, v11, v12, v13}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v10, p0, Lcom/android/settings/datausage/BillingCycleChnSettings$1;->this$0:Lcom/android/settings/datausage/BillingCycleChnSettings;

    invoke-static {v10}, Lcom/android/settings/datausage/BillingCycleChnSettings;->-get0(Lcom/android/settings/datausage/BillingCycleChnSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    const-string/jumbo v11, "DataUsageLimitSettings"

    invoke-virtual {v10, v11}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_19
    iget-object v10, p0, Lcom/android/settings/datausage/BillingCycleChnSettings$1;->this$0:Lcom/android/settings/datausage/BillingCycleChnSettings;

    invoke-static {v10}, Lcom/android/settings/datausage/BillingCycleChnSettings;->-get2(Lcom/android/settings/datausage/BillingCycleChnSettings;)Landroid/preference/SwitchPreference;

    move-result-object v10

    iget-object v11, p0, Lcom/android/settings/datausage/BillingCycleChnSettings$1;->this$0:Lcom/android/settings/datausage/BillingCycleChnSettings;

    invoke-virtual {v11}, Lcom/android/settings/datausage/BillingCycleChnSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/preference/SwitchPreference;->performClick(Landroid/preference/PreferenceScreen;)V

    iget-object v10, p0, Lcom/android/settings/datausage/BillingCycleChnSettings$1;->this$0:Lcom/android/settings/datausage/BillingCycleChnSettings;

    invoke-static {v10}, Lcom/android/settings/datausage/BillingCycleChnSettings;->-get0(Lcom/android/settings/datausage/BillingCycleChnSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    sget-object v11, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v10, v11}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_3

    :cond_1a
    iget-object v10, p0, Lcom/android/settings/datausage/BillingCycleChnSettings$1;->this$0:Lcom/android/settings/datausage/BillingCycleChnSettings;

    invoke-static {v10}, Lcom/android/settings/datausage/BillingCycleChnSettings;->-get0(Lcom/android/settings/datausage/BillingCycleChnSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    const-string/jumbo v11, "DataUsageLimitSettings"

    invoke-virtual {v10, v11}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v10, p0, Lcom/android/settings/datausage/BillingCycleChnSettings$1;->this$0:Lcom/android/settings/datausage/BillingCycleChnSettings;

    invoke-static {v10}, Lcom/android/settings/datausage/BillingCycleChnSettings;->-get0(Lcom/android/settings/datausage/BillingCycleChnSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    sget-object v11, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v10, v11}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_3

    :cond_1b
    const-string/jumbo v10, "DataUsageLimitRestrictOff"

    invoke-virtual {v10, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1f

    if-nez v5, :cond_1c

    iget-object v10, p0, Lcom/android/settings/datausage/BillingCycleChnSettings$1;->this$0:Lcom/android/settings/datausage/BillingCycleChnSettings;

    invoke-static {v10}, Lcom/android/settings/datausage/BillingCycleChnSettings;->-get0(Lcom/android/settings/datausage/BillingCycleChnSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    const-string/jumbo v11, "DataWarninglmit"

    const-string/jumbo v12, "AlreadyOff"

    const-string/jumbo v13, "Yes"

    invoke-virtual {v10, v11, v12, v13}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v10, p0, Lcom/android/settings/datausage/BillingCycleChnSettings$1;->this$0:Lcom/android/settings/datausage/BillingCycleChnSettings;

    invoke-static {v10}, Lcom/android/settings/datausage/BillingCycleChnSettings;->-get0(Lcom/android/settings/datausage/BillingCycleChnSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    const-string/jumbo v11, "DataUsageLimitSettings"

    invoke-virtual {v10, v11}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v10, p0, Lcom/android/settings/datausage/BillingCycleChnSettings$1;->this$0:Lcom/android/settings/datausage/BillingCycleChnSettings;

    invoke-static {v10}, Lcom/android/settings/datausage/BillingCycleChnSettings;->-get0(Lcom/android/settings/datausage/BillingCycleChnSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    sget-object v11, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v10, v11}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_3

    :cond_1c
    if-eqz v6, :cond_1e

    iget-object v10, p0, Lcom/android/settings/datausage/BillingCycleChnSettings$1;->this$0:Lcom/android/settings/datausage/BillingCycleChnSettings;

    invoke-static {v10}, Lcom/android/settings/datausage/BillingCycleChnSettings;->-get0(Lcom/android/settings/datausage/BillingCycleChnSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    invoke-virtual {v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v10

    if-eqz v10, :cond_1d

    iget-object v10, p0, Lcom/android/settings/datausage/BillingCycleChnSettings$1;->this$0:Lcom/android/settings/datausage/BillingCycleChnSettings;

    invoke-static {v10}, Lcom/android/settings/datausage/BillingCycleChnSettings;->-get0(Lcom/android/settings/datausage/BillingCycleChnSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    const-string/jumbo v11, "Data usage restrict when limit exceeded "

    const-string/jumbo v12, "AlreadyOff"

    const-string/jumbo v13, "No"

    invoke-virtual {v10, v11, v12, v13}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v10, p0, Lcom/android/settings/datausage/BillingCycleChnSettings$1;->this$0:Lcom/android/settings/datausage/BillingCycleChnSettings;

    invoke-static {v10}, Lcom/android/settings/datausage/BillingCycleChnSettings;->-get0(Lcom/android/settings/datausage/BillingCycleChnSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    const-string/jumbo v11, "DataUsageLimitSettings"

    invoke-virtual {v10, v11}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_1d
    iget-object v10, p0, Lcom/android/settings/datausage/BillingCycleChnSettings$1;->this$0:Lcom/android/settings/datausage/BillingCycleChnSettings;

    invoke-static {v10}, Lcom/android/settings/datausage/BillingCycleChnSettings;->-get2(Lcom/android/settings/datausage/BillingCycleChnSettings;)Landroid/preference/SwitchPreference;

    move-result-object v10

    iget-object v11, p0, Lcom/android/settings/datausage/BillingCycleChnSettings$1;->this$0:Lcom/android/settings/datausage/BillingCycleChnSettings;

    invoke-virtual {v11}, Lcom/android/settings/datausage/BillingCycleChnSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/preference/SwitchPreference;->performClick(Landroid/preference/PreferenceScreen;)V

    iget-object v10, p0, Lcom/android/settings/datausage/BillingCycleChnSettings$1;->this$0:Lcom/android/settings/datausage/BillingCycleChnSettings;

    invoke-static {v10}, Lcom/android/settings/datausage/BillingCycleChnSettings;->-get0(Lcom/android/settings/datausage/BillingCycleChnSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    sget-object v11, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v10, v11}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_3

    :cond_1e
    iget-object v10, p0, Lcom/android/settings/datausage/BillingCycleChnSettings$1;->this$0:Lcom/android/settings/datausage/BillingCycleChnSettings;

    invoke-static {v10}, Lcom/android/settings/datausage/BillingCycleChnSettings;->-get0(Lcom/android/settings/datausage/BillingCycleChnSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    const-string/jumbo v11, "Data usage restrict when limit exceeded "

    const-string/jumbo v12, "AlreadyOff"

    const-string/jumbo v13, "Yes"

    invoke-virtual {v10, v11, v12, v13}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v10, p0, Lcom/android/settings/datausage/BillingCycleChnSettings$1;->this$0:Lcom/android/settings/datausage/BillingCycleChnSettings;

    invoke-static {v10}, Lcom/android/settings/datausage/BillingCycleChnSettings;->-get0(Lcom/android/settings/datausage/BillingCycleChnSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    const-string/jumbo v11, "DataUsageLimitSettings"

    invoke-virtual {v10, v11}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v10, p0, Lcom/android/settings/datausage/BillingCycleChnSettings$1;->this$0:Lcom/android/settings/datausage/BillingCycleChnSettings;

    invoke-static {v10}, Lcom/android/settings/datausage/BillingCycleChnSettings;->-get0(Lcom/android/settings/datausage/BillingCycleChnSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    sget-object v11, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v10, v11}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_3

    :cond_1f
    const-string/jumbo v10, "PlanBillingPopup"

    invoke-virtual {v10, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    if-nez v5, :cond_20

    iget-object v10, p0, Lcom/android/settings/datausage/BillingCycleChnSettings$1;->this$0:Lcom/android/settings/datausage/BillingCycleChnSettings;

    invoke-static {v10}, Lcom/android/settings/datausage/BillingCycleChnSettings;->-get0(Lcom/android/settings/datausage/BillingCycleChnSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    const-string/jumbo v11, "MobileDatalimit"

    const-string/jumbo v12, "AlreadyOff"

    const-string/jumbo v13, "Yes"

    invoke-virtual {v10, v11, v12, v13}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v10, p0, Lcom/android/settings/datausage/BillingCycleChnSettings$1;->this$0:Lcom/android/settings/datausage/BillingCycleChnSettings;

    invoke-static {v10}, Lcom/android/settings/datausage/BillingCycleChnSettings;->-get0(Lcom/android/settings/datausage/BillingCycleChnSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    const-string/jumbo v11, "DataUsageLimitSettings"

    invoke-virtual {v10, v11}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v10, p0, Lcom/android/settings/datausage/BillingCycleChnSettings$1;->this$0:Lcom/android/settings/datausage/BillingCycleChnSettings;

    invoke-static {v10}, Lcom/android/settings/datausage/BillingCycleChnSettings;->-get0(Lcom/android/settings/datausage/BillingCycleChnSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    sget-object v11, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v10, v11}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_3

    :cond_20
    iget-object v10, p0, Lcom/android/settings/datausage/BillingCycleChnSettings$1;->this$0:Lcom/android/settings/datausage/BillingCycleChnSettings;

    invoke-static {v10}, Lcom/android/settings/datausage/BillingCycleChnSettings;->-get0(Lcom/android/settings/datausage/BillingCycleChnSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    invoke-virtual {v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getParamsSize()I

    move-result v10

    if-nez v10, :cond_21

    iget-object v10, p0, Lcom/android/settings/datausage/BillingCycleChnSettings$1;->this$0:Lcom/android/settings/datausage/BillingCycleChnSettings;

    invoke-static {v10}, Lcom/android/settings/datausage/BillingCycleChnSettings;->-get4(Lcom/android/settings/datausage/BillingCycleChnSettings;)Landroid/preference/Preference;

    move-result-object v10

    iget-object v11, p0, Lcom/android/settings/datausage/BillingCycleChnSettings$1;->this$0:Lcom/android/settings/datausage/BillingCycleChnSettings;

    invoke-virtual {v11}, Lcom/android/settings/datausage/BillingCycleChnSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/preference/Preference;->performClick(Landroid/preference/PreferenceScreen;)V

    iget-object v10, p0, Lcom/android/settings/datausage/BillingCycleChnSettings$1;->this$0:Lcom/android/settings/datausage/BillingCycleChnSettings;

    invoke-static {v10}, Lcom/android/settings/datausage/BillingCycleChnSettings;->-get0(Lcom/android/settings/datausage/BillingCycleChnSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    const-string/jumbo v11, "DayOfMonth"

    const-string/jumbo v12, "Exist"

    const-string/jumbo v13, "No"

    invoke-virtual {v10, v11, v12, v13}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v10, p0, Lcom/android/settings/datausage/BillingCycleChnSettings$1;->this$0:Lcom/android/settings/datausage/BillingCycleChnSettings;

    invoke-static {v10}, Lcom/android/settings/datausage/BillingCycleChnSettings;->-get0(Lcom/android/settings/datausage/BillingCycleChnSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    const-string/jumbo v11, "PlanBillingPopup"

    invoke-virtual {v10, v11}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v10, p0, Lcom/android/settings/datausage/BillingCycleChnSettings$1;->this$0:Lcom/android/settings/datausage/BillingCycleChnSettings;

    invoke-static {v10}, Lcom/android/settings/datausage/BillingCycleChnSettings;->-get0(Lcom/android/settings/datausage/BillingCycleChnSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    sget-object v11, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v10, v11}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_3

    :cond_21
    iget-object v10, p0, Lcom/android/settings/datausage/BillingCycleChnSettings$1;->this$0:Lcom/android/settings/datausage/BillingCycleChnSettings;

    invoke-static {v10}, Lcom/android/settings/datausage/BillingCycleChnSettings;->-get0(Lcom/android/settings/datausage/BillingCycleChnSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    const-string/jumbo v11, "DayOfMonth"

    invoke-virtual {v10, v11}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getParamString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    if-nez v7, :cond_22

    iget-object v10, p0, Lcom/android/settings/datausage/BillingCycleChnSettings$1;->this$0:Lcom/android/settings/datausage/BillingCycleChnSettings;

    invoke-static {v10}, Lcom/android/settings/datausage/BillingCycleChnSettings;->-get4(Lcom/android/settings/datausage/BillingCycleChnSettings;)Landroid/preference/Preference;

    move-result-object v10

    iget-object v11, p0, Lcom/android/settings/datausage/BillingCycleChnSettings$1;->this$0:Lcom/android/settings/datausage/BillingCycleChnSettings;

    invoke-virtual {v11}, Lcom/android/settings/datausage/BillingCycleChnSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/preference/Preference;->performClick(Landroid/preference/PreferenceScreen;)V

    iget-object v10, p0, Lcom/android/settings/datausage/BillingCycleChnSettings$1;->this$0:Lcom/android/settings/datausage/BillingCycleChnSettings;

    invoke-static {v10}, Lcom/android/settings/datausage/BillingCycleChnSettings;->-get0(Lcom/android/settings/datausage/BillingCycleChnSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    const-string/jumbo v11, "DayOfMonth"

    const-string/jumbo v12, "Valid"

    const-string/jumbo v13, "No"

    invoke-virtual {v10, v11, v12, v13}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v10, p0, Lcom/android/settings/datausage/BillingCycleChnSettings$1;->this$0:Lcom/android/settings/datausage/BillingCycleChnSettings;

    invoke-static {v10}, Lcom/android/settings/datausage/BillingCycleChnSettings;->-get0(Lcom/android/settings/datausage/BillingCycleChnSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    const-string/jumbo v11, "PlanBillingPopup"

    invoke-virtual {v10, v11}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v10, p0, Lcom/android/settings/datausage/BillingCycleChnSettings$1;->this$0:Lcom/android/settings/datausage/BillingCycleChnSettings;

    invoke-static {v10}, Lcom/android/settings/datausage/BillingCycleChnSettings;->-get0(Lcom/android/settings/datausage/BillingCycleChnSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    sget-object v11, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v10, v11}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_3

    :cond_22
    :try_start_2
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget-object v10, p0, Lcom/android/settings/datausage/BillingCycleChnSettings$1;->this$0:Lcom/android/settings/datausage/BillingCycleChnSettings;

    invoke-virtual {v10}, Lcom/android/settings/datausage/BillingCycleChnSettings;->getActivity()Landroid/app/Activity;

    move-result-object v10

    invoke-static {v10}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v10

    invoke-interface {v10}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "set_package_start_date_value"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    sget v11, Lcom/android/settings/datausage/BillingCycleChnSettings;->sSubId:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v4, v10, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    iget-object v10, p0, Lcom/android/settings/datausage/BillingCycleChnSettings$1;->this$0:Lcom/android/settings/datausage/BillingCycleChnSettings;

    invoke-virtual {v10}, Lcom/android/settings/datausage/BillingCycleChnSettings;->getActivity()Landroid/app/Activity;

    move-result-object v10

    invoke-virtual {v10}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "set_package_start_date_value"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    sget v12, Lcom/android/settings/datausage/BillingCycleChnSettings;->sSubId:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->apply()V

    iget-object v10, p0, Lcom/android/settings/datausage/BillingCycleChnSettings$1;->this$0:Lcom/android/settings/datausage/BillingCycleChnSettings;

    invoke-static {v10}, Lcom/android/settings/datausage/BillingCycleChnSettings;->-wrap0(Lcom/android/settings/datausage/BillingCycleChnSettings;)V

    iget-object v10, p0, Lcom/android/settings/datausage/BillingCycleChnSettings$1;->this$0:Lcom/android/settings/datausage/BillingCycleChnSettings;

    invoke-static {v10}, Lcom/android/settings/datausage/BillingCycleChnSettings;->-get0(Lcom/android/settings/datausage/BillingCycleChnSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    const-string/jumbo v11, "DayOfMonth"

    const-string/jumbo v12, "Already set"

    const-string/jumbo v13, "No"

    invoke-virtual {v10, v11, v12, v13}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v10, p0, Lcom/android/settings/datausage/BillingCycleChnSettings$1;->this$0:Lcom/android/settings/datausage/BillingCycleChnSettings;

    invoke-static {v10}, Lcom/android/settings/datausage/BillingCycleChnSettings;->-get0(Lcom/android/settings/datausage/BillingCycleChnSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    const-string/jumbo v11, "DataUsageLimitSettings"

    invoke-virtual {v10, v11}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v10, p0, Lcom/android/settings/datausage/BillingCycleChnSettings$1;->this$0:Lcom/android/settings/datausage/BillingCycleChnSettings;

    invoke-static {v10}, Lcom/android/settings/datausage/BillingCycleChnSettings;->-get0(Lcom/android/settings/datausage/BillingCycleChnSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    sget-object v11, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v10, v11}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_3

    :catch_1
    move-exception v3

    const-string/jumbo v10, "BillingCycleChnSettings"

    const-string/jumbo v11, "could not persist insert byte"

    invoke-static {v10, v11, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-object v10, p0, Lcom/android/settings/datausage/BillingCycleChnSettings$1;->this$0:Lcom/android/settings/datausage/BillingCycleChnSettings;

    invoke-static {v10}, Lcom/android/settings/datausage/BillingCycleChnSettings;->-get4(Lcom/android/settings/datausage/BillingCycleChnSettings;)Landroid/preference/Preference;

    move-result-object v10

    iget-object v11, p0, Lcom/android/settings/datausage/BillingCycleChnSettings$1;->this$0:Lcom/android/settings/datausage/BillingCycleChnSettings;

    invoke-virtual {v11}, Lcom/android/settings/datausage/BillingCycleChnSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/preference/Preference;->performClick(Landroid/preference/PreferenceScreen;)V

    iget-object v10, p0, Lcom/android/settings/datausage/BillingCycleChnSettings$1;->this$0:Lcom/android/settings/datausage/BillingCycleChnSettings;

    invoke-static {v10}, Lcom/android/settings/datausage/BillingCycleChnSettings;->-get0(Lcom/android/settings/datausage/BillingCycleChnSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    const-string/jumbo v11, "DayOfMonth"

    const-string/jumbo v12, "Valid"

    const-string/jumbo v13, "No"

    invoke-virtual {v10, v11, v12, v13}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v10, p0, Lcom/android/settings/datausage/BillingCycleChnSettings$1;->this$0:Lcom/android/settings/datausage/BillingCycleChnSettings;

    invoke-static {v10}, Lcom/android/settings/datausage/BillingCycleChnSettings;->-get0(Lcom/android/settings/datausage/BillingCycleChnSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    const-string/jumbo v11, "PlanBillingPopup"

    invoke-virtual {v10, v11}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v10, p0, Lcom/android/settings/datausage/BillingCycleChnSettings$1;->this$0:Lcom/android/settings/datausage/BillingCycleChnSettings;

    invoke-static {v10}, Lcom/android/settings/datausage/BillingCycleChnSettings;->-get0(Lcom/android/settings/datausage/BillingCycleChnSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    sget-object v11, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v10, v11}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_3
.end method
