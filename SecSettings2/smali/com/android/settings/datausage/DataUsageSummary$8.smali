.class Lcom/android/settings/datausage/DataUsageSummary$8;
.super Ljava/lang/Object;
.source "DataUsageSummary.java"

# interfaces
.implements Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/datausage/DataUsageSummary;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/datausage/DataUsageSummary;


# direct methods
.method constructor <init>(Lcom/android/settings/datausage/DataUsageSummary;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/datausage/DataUsageSummary$8;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStateReceived()V
    .locals 32

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$8;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/android/settings/datausage/DataUsageSummary;->-get4(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getStateId()Ljava/lang/String;

    move-result-object v23

    const-string/jumbo v27, "DataSaver"

    move-object/from16 v0, v23

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$8;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/android/settings/datausage/DataUsageSummary;->-get1(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/android/settings/datausage/DataSaverPreference;

    move-result-object v27

    if-eqz v27, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$8;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/android/settings/datausage/DataUsageSummary;->-get1(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/android/settings/datausage/DataSaverPreference;

    move-result-object v27

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$8;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lcom/android/settings/datausage/DataUsageSummary;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Lcom/android/settings/datausage/DataSaverPreference;->performClick(Landroid/preference/PreferenceScreen;)V

    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$8;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/android/settings/datausage/DataUsageSummary;->-get4(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v27

    if-eqz v27, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$8;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/android/settings/datausage/DataUsageSummary;->-get4(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$8;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/android/settings/datausage/DataUsageSummary;->-get4(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v27

    sget-object v28, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual/range {v27 .. v28}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    :cond_2
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$8;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/android/settings/datausage/DataUsageSummary;->-get5(Lcom/android/settings/datausage/DataUsageSummary;)Z

    move-result v27

    if-eqz v27, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$8;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/android/settings/datausage/DataUsageSummary;->-get6(Lcom/android/settings/datausage/DataUsageSummary;)Z

    move-result v27

    if-eqz v27, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$8;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lcom/android/settings/datausage/DataUsageSummary;->getContext()Landroid/content/Context;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v27

    const-string/jumbo v28, "opera_max_china_state"

    const/16 v29, 0x0

    invoke-static/range {v27 .. v29}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v19

    const/16 v20, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$8;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary;->summaryLayoutChn:Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;

    move-object/from16 v27, v0

    if-eqz v27, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$8;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/android/settings/datausage/DataUsageSummary;->-get4(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getParamsSize()I

    move-result v27

    if-eqz v27, :cond_3

    const-string/jumbo v27, "SetUsedData"

    move-object/from16 v0, v27

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_3f

    :cond_3
    :goto_1
    const-string/jumbo v27, "DataUsageDetail"

    move-object/from16 v0, v27

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_44

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$8;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary;->summaryLayoutChn:Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;

    move-object/from16 v27, v0

    if-eqz v27, :cond_43

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$8;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lcom/android/settings/datausage/DataUsageSummary;->getContext()Landroid/content/Context;

    move-result-object v27

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$8;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary;->summaryLayoutChn:Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->getIntent()Landroid/content/Intent;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    if-eqz v20, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$8;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/android/settings/datausage/DataUsageSummary;->-get4(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v27

    const-string/jumbo v28, "SimCardInfo"

    const-string/jumbo v29, "Exists"

    const-string/jumbo v30, "Yes"

    invoke-virtual/range {v27 .. v30}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$8;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/android/settings/datausage/DataUsageSummary;->-get4(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v27

    const-string/jumbo v28, "DataUsageDetail"

    invoke-virtual/range {v27 .. v28}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$8;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/android/settings/datausage/DataUsageSummary;->-get4(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v27

    sget-object v28, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual/range {v27 .. v28}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    :cond_5
    :goto_2
    sget-boolean v27, Lcom/android/settings/Utils;->SUPPORT_DATA_USAGE_REMINDER:Z

    if-eqz v27, :cond_6

    const-string/jumbo v27, "DataUsageNotificationsOn"

    move-object/from16 v0, v23

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_60

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$8;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v27, v0

    const-string/jumbo v28, "data_usage_reminder"

    invoke-virtual/range {v27 .. v28}, Lcom/android/settings/datausage/DataUsageSummary;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    check-cast v8, Landroid/preference/SwitchPreference;

    if-eqz v8, :cond_5f

    invoke-virtual {v8}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v27

    if-eqz v27, :cond_5d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$8;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/android/settings/datausage/DataUsageSummary;->-get4(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v27

    const-string/jumbo v28, "DataUsageNotifications"

    const-string/jumbo v29, "AlreadyOn"

    const-string/jumbo v30, "yes"

    invoke-virtual/range {v27 .. v30}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$8;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/android/settings/datausage/DataUsageSummary;->-get4(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v27

    const-string/jumbo v28, "DataUsage"

    invoke-virtual/range {v27 .. v28}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$8;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/android/settings/datausage/DataUsageSummary;->-get4(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v27

    sget-object v28, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual/range {v27 .. v28}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    :cond_6
    :goto_3
    return-void

    :cond_7
    const-string/jumbo v27, "MobileDataOn"

    move-object/from16 v0, v23

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$8;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary;->services:Lcom/android/settings/datausage/TemplatePreference$NetworkServices;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/settings/datausage/TemplatePreference$NetworkServices;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/telephony/TelephonyManager;->getDataEnabled()Z

    move-result v12

    if-eqz v12, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$8;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/android/settings/datausage/DataUsageSummary;->-get5(Lcom/android/settings/datausage/DataUsageSummary;)Z

    move-result v27

    if-nez v27, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$8;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/android/settings/datausage/DataUsageSummary;->-get4(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v27

    const-string/jumbo v28, "MobileDataOn"

    const-string/jumbo v29, "AlreadyOn"

    const-string/jumbo v30, "yes"

    invoke-virtual/range {v27 .. v30}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$8;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/android/settings/datausage/DataUsageSummary;->-get4(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v27

    const-string/jumbo v28, "DataUsage"

    invoke-virtual/range {v27 .. v28}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$8;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/android/settings/datausage/DataUsageSummary;->-get4(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v27

    sget-object v28, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual/range {v27 .. v28}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0

    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$8;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/android/settings/datausage/DataUsageSummary;->-get4(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v27

    const-string/jumbo v28, "MobileData"

    const-string/jumbo v29, "AlreadyOn"

    const-string/jumbo v30, "yes"

    invoke-virtual/range {v27 .. v30}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$8;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lcom/android/settings/datausage/DataUsageSummary;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$8;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/android/settings/datausage/DataUsageSummary;->-get5(Lcom/android/settings/datausage/DataUsageSummary;)Z

    move-result v27

    if-nez v27, :cond_b

    const/16 v27, 0x1

    move-object/from16 v0, v21

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->getPreference(I)Landroid/preference/Preference;

    move-result-object v18

    check-cast v18, Lcom/android/settings/datausage/TemplatePreferenceCategory;

    :goto_5
    move-object/from16 v0, v18

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/settings/datausage/TemplatePreferenceCategory;->MobileDataPerformClick(Landroid/preference/PreferenceScreen;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$8;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/android/settings/datausage/DataUsageSummary;->-get4(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v27

    if-eqz v27, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$8;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/android/settings/datausage/DataUsageSummary;->-get5(Lcom/android/settings/datausage/DataUsageSummary;)Z

    move-result v27

    if-nez v27, :cond_c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$8;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/android/settings/datausage/DataUsageSummary;->-get4(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v27

    const-string/jumbo v28, "MobileDataOn"

    const-string/jumbo v29, "AlreadyOn"

    const-string/jumbo v30, "no"

    invoke-virtual/range {v27 .. v30}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$8;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/android/settings/datausage/DataUsageSummary;->-get4(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v27

    const-string/jumbo v28, "DataUsage"

    invoke-virtual/range {v27 .. v28}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$8;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/android/settings/datausage/DataUsageSummary;->-get4(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v27

    sget-object v28, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual/range {v27 .. v28}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0

    :cond_b
    const/16 v27, 0x0

    move-object/from16 v0, v21

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->getPreference(I)Landroid/preference/Preference;

    move-result-object v18

    check-cast v18, Lcom/android/settings/datausage/TemplatePreferenceCategory;

    goto :goto_5

    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$8;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/android/settings/datausage/DataUsageSummary;->-get4(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v27

    const-string/jumbo v28, "MobileData"

    const-string/jumbo v29, "AlreadyOn"

    const-string/jumbo v30, "no"

    invoke-virtual/range {v27 .. v30}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6

    :cond_d
    const-string/jumbo v27, "MobileDataOff"

    move-object/from16 v0, v23

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_13

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$8;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary;->services:Lcom/android/settings/datausage/TemplatePreference$NetworkServices;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/settings/datausage/TemplatePreference$NetworkServices;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/telephony/TelephonyManager;->getDataEnabled()Z

    move-result v12

    if-nez v12, :cond_f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$8;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/android/settings/datausage/DataUsageSummary;->-get5(Lcom/android/settings/datausage/DataUsageSummary;)Z

    move-result v27

    if-nez v27, :cond_e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$8;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/android/settings/datausage/DataUsageSummary;->-get4(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v27

    const-string/jumbo v28, "MobileDataOff"

    const-string/jumbo v29, "AlreadyOff"

    const-string/jumbo v30, "yes"

    invoke-virtual/range {v27 .. v30}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$8;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/android/settings/datausage/DataUsageSummary;->-get4(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v27

    const-string/jumbo v28, "DataUsage"

    invoke-virtual/range {v27 .. v28}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$8;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/android/settings/datausage/DataUsageSummary;->-get4(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v27

    sget-object v28, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual/range {v27 .. v28}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0

    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$8;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/android/settings/datausage/DataUsageSummary;->-get4(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v27

    const-string/jumbo v28, "MobileData"

    const-string/jumbo v29, "AlreadyOff"

    const-string/jumbo v30, "yes"

    invoke-virtual/range {v27 .. v30}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_7

    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$8;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lcom/android/settings/datausage/DataUsageSummary;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$8;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/android/settings/datausage/DataUsageSummary;->-get5(Lcom/android/settings/datausage/DataUsageSummary;)Z

    move-result v27

    if-nez v27, :cond_11

    const/16 v27, 0x1

    move-object/from16 v0, v21

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->getPreference(I)Landroid/preference/Preference;

    move-result-object v18

    check-cast v18, Lcom/android/settings/datausage/TemplatePreferenceCategory;

    :goto_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$8;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/android/settings/datausage/DataUsageSummary;->-get4(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v27

    if-eqz v27, :cond_10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$8;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/android/settings/datausage/DataUsageSummary;->-get5(Lcom/android/settings/datausage/DataUsageSummary;)Z

    move-result v27

    if-nez v27, :cond_12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$8;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/android/settings/datausage/DataUsageSummary;->-get4(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v27

    const-string/jumbo v28, "MobileDataOff"

    const-string/jumbo v29, "AlreadyOff"

    const-string/jumbo v30, "no"

    invoke-virtual/range {v27 .. v30}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$8;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/android/settings/datausage/DataUsageSummary;->-get4(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v27

    const-string/jumbo v28, "DataUsage"

    invoke-virtual/range {v27 .. v28}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$8;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/android/settings/datausage/DataUsageSummary;->-get4(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v27

    sget-object v28, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual/range {v27 .. v28}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    move-object/from16 v0, v18

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/settings/datausage/TemplatePreferenceCategory;->MobileDataPerformClick(Landroid/preference/PreferenceScreen;)V

    goto/16 :goto_0

    :cond_11
    const/16 v27, 0x0

    move-object/from16 v0, v21

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->getPreference(I)Landroid/preference/Preference;

    move-result-object v18

    check-cast v18, Lcom/android/settings/datausage/TemplatePreferenceCategory;

    goto :goto_8

    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$8;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/android/settings/datausage/DataUsageSummary;->-get4(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v27

    const-string/jumbo v28, "MobileData"

    const-string/jumbo v29, "AlreadyOff"

    const-string/jumbo v30, "no"

    invoke-virtual/range {v27 .. v30}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_9

    :cond_13
    const-string/jumbo v27, "CellularDataUsage"

    move-object/from16 v0, v23

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-nez v27, :cond_14

    const-string/jumbo v27, "BillingCycle"

    move-object/from16 v0, v23

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_23

    :cond_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$8;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lcom/android/settings/datausage/DataUsageSummary;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v21

    const/16 v22, -0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$8;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/android/settings/datausage/DataUsageSummary;->-get4(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getParamsSize()I

    move-result v27

    if-lez v27, :cond_15

    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$8;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/android/settings/datausage/DataUsageSummary;->-get4(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v27

    const/16 v28, 0x0

    invoke-virtual/range {v27 .. v28}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getParamInt(I)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v22

    :cond_15
    :goto_a
    const-string/jumbo v27, "DataUsageSummary"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v29, "EmSettingsManager : "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string/jumbo v29, " sim Param : "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$8;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/android/settings/datausage/DataUsageSummary;->-get5(Lcom/android/settings/datausage/DataUsageSummary;)Z

    move-result v27

    if-nez v27, :cond_1d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$8;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/android/settings/datausage/DataUsageSummary;->-get9(Lcom/android/settings/datausage/DataUsageSummary;)Ljava/util/List;

    move-result-object v27

    invoke-interface/range {v27 .. v27}, Ljava/util/List;->size()I

    move-result v27

    if-lez v27, :cond_1c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$8;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/android/settings/datausage/DataUsageSummary;->-get9(Lcom/android/settings/datausage/DataUsageSummary;)Ljava/util/List;

    move-result-object v27

    invoke-interface/range {v27 .. v27}, Ljava/util/List;->size()I

    move-result v27

    move/from16 v0, v22

    move/from16 v1, v27

    if-ge v0, v1, :cond_1c

    if-ltz v22, :cond_1a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$8;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/android/settings/datausage/DataUsageSummary;->-get9(Lcom/android/settings/datausage/DataUsageSummary;)Ljava/util/List;

    move-result-object v27

    move-object/from16 v0, v27

    move/from16 v1, v22

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/settings/datausage/TemplatePreferenceCategory;

    :goto_b
    const/4 v10, 0x0

    :goto_c
    invoke-virtual {v13}, Lcom/android/settings/datausage/TemplatePreferenceCategory;->getPreferenceCount()I

    move-result v27

    move/from16 v0, v27

    if-ge v10, v0, :cond_1c

    invoke-virtual {v13, v10}, Lcom/android/settings/datausage/TemplatePreferenceCategory;->getPreference(I)Landroid/preference/Preference;

    move-result-object v14

    const-string/jumbo v27, "CellularDataUsage"

    move-object/from16 v0, v23

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_16

    instance-of v0, v14, Lcom/android/settings/datausage/DataUsagePreference;

    move/from16 v27, v0

    if-nez v27, :cond_17

    :cond_16
    const-string/jumbo v27, "BillingCycle"

    move-object/from16 v0, v23

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_1b

    instance-of v0, v14, Lcom/android/settings/datausage/BillingCyclePreference;

    move/from16 v27, v0

    if-eqz v27, :cond_1b

    :cond_17
    invoke-virtual {v14}, Landroid/preference/Preference;->isEnabled()Z

    move-result v27

    if-eqz v27, :cond_1b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$8;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lcom/android/settings/datausage/DataUsageSummary;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v14, v0}, Landroid/preference/Preference;->performClick(Landroid/preference/PreferenceScreen;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$8;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/android/settings/datausage/DataUsageSummary;->-get4(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v27

    if-eqz v27, :cond_19

    if-ltz v22, :cond_18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$8;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/android/settings/datausage/DataUsageSummary;->-get4(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v27

    const-string/jumbo v28, "SimCardInfo"

    const-string/jumbo v29, "Match"

    const-string/jumbo v30, "yes"

    invoke-virtual/range {v27 .. v30}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_18
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$8;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/android/settings/datausage/DataUsageSummary;->-get4(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_19
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$8;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/android/settings/datausage/DataUsageSummary;->-get4(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v27

    sget-object v28, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual/range {v27 .. v28}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    return-void

    :catch_0
    move-exception v9

    const-string/jumbo v27, "DataUsageSummary"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v29, "NumberFormatException : "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v22, -0x1

    goto/16 :goto_a

    :cond_1a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$8;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/android/settings/datausage/DataUsageSummary;->-get9(Lcom/android/settings/datausage/DataUsageSummary;)Ljava/util/List;

    move-result-object v27

    const/16 v28, 0x0

    invoke-interface/range {v27 .. v28}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/settings/datausage/TemplatePreferenceCategory;

    goto/16 :goto_b

    :cond_1b
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_c

    :cond_1c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$8;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/android/settings/datausage/DataUsageSummary;->-get4(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v27

    const-string/jumbo v28, "SimCardInfo"

    const-string/jumbo v29, "Match"

    const-string/jumbo v30, "no"

    invoke-virtual/range {v27 .. v30}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$8;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/android/settings/datausage/DataUsageSummary;->-get4(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$8;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/android/settings/datausage/DataUsageSummary;->-get4(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v27

    sget-object v28, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual/range {v27 .. v28}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0

    :cond_1d
    const/16 v27, 0x0

    move-object/from16 v0, v21

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->getPreference(I)Landroid/preference/Preference;

    move-result-object v13

    check-cast v13, Lcom/android/settings/datausage/TemplatePreferenceCategory;

    const/4 v10, 0x0

    :goto_d
    invoke-virtual {v13}, Lcom/android/settings/datausage/TemplatePreferenceCategory;->getPreferenceCount()I

    move-result v27

    move/from16 v0, v27

    if-ge v10, v0, :cond_21

    invoke-virtual {v13, v10}, Lcom/android/settings/datausage/TemplatePreferenceCategory;->getPreference(I)Landroid/preference/Preference;

    move-result-object v14

    const-string/jumbo v27, "CellularDataUsage"

    move-object/from16 v0, v23

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_1e

    instance-of v0, v14, Lcom/android/settings/datausage/DataUsagePreference;

    move/from16 v27, v0

    if-nez v27, :cond_1f

    :cond_1e
    const-string/jumbo v27, "BillingCycle"

    move-object/from16 v0, v23

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_20

    instance-of v0, v14, Lcom/android/settings/datausage/BillingCyclePreference;

    move/from16 v27, v0

    if-eqz v27, :cond_20

    :cond_1f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$8;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lcom/android/settings/datausage/DataUsageSummary;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v14, v0}, Landroid/preference/Preference;->performClick(Landroid/preference/PreferenceScreen;)V

    :cond_20
    add-int/lit8 v10, v10, 0x1

    goto :goto_d

    :cond_21
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$8;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/android/settings/datausage/DataUsageSummary;->-get4(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v27

    if-eqz v27, :cond_22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$8;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/android/settings/datausage/DataUsageSummary;->-get4(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v27

    const-string/jumbo v28, "SimCardInfo"

    const-string/jumbo v29, "Match"

    const-string/jumbo v30, "yes"

    invoke-virtual/range {v27 .. v30}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$8;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/android/settings/datausage/DataUsageSummary;->-get4(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_22
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$8;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/android/settings/datausage/DataUsageSummary;->-get4(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v27

    sget-object v28, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual/range {v27 .. v28}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0

    :cond_23
    const-string/jumbo v27, "AlertMeAboutDataUsageOn"

    move-object/from16 v0, v23

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_26

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$8;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v27, v0

    const-string/jumbo v28, "alert_at_warning"

    invoke-virtual/range {v27 .. v28}, Lcom/android/settings/datausage/DataUsageSummary;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v15

    check-cast v15, Lcom/android/settings/datausage/AlertAtWarningPreference;

    if-eqz v15, :cond_2

    invoke-virtual {v15}, Lcom/android/settings/datausage/AlertAtWarningPreference;->isChecked()Z

    move-result v27

    if-eqz v27, :cond_24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$8;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/android/settings/datausage/DataUsageSummary;->-get4(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v27

    const-string/jumbo v28, "AlertMeAboutDataUsage"

    const-string/jumbo v29, "AlreadyOn"

    const-string/jumbo v30, "Yes"

    invoke-virtual/range {v27 .. v30}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$8;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/android/settings/datausage/DataUsageSummary;->-get4(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v27

    const-string/jumbo v28, "DataUsage"

    invoke-virtual/range {v27 .. v28}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$8;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/android/settings/datausage/DataUsageSummary;->-get4(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v27

    sget-object v28, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual/range {v27 .. v28}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0

    :cond_24
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$8;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lcom/android/settings/datausage/DataUsageSummary;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v15, v0}, Lcom/android/settings/datausage/AlertAtWarningPreference;->performClick(Landroid/preference/PreferenceScreen;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$8;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/android/settings/datausage/DataUsageSummary;->-get4(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v27

    if-eqz v27, :cond_25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$8;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/android/settings/datausage/DataUsageSummary;->-get4(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v27

    const-string/jumbo v28, "AlertMeAboutDataUsage"

    const-string/jumbo v29, "AlreadyOn"

    const-string/jumbo v30, "No"

    invoke-virtual/range {v27 .. v30}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$8;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/android/settings/datausage/DataUsageSummary;->-get4(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v27

    const-string/jumbo v28, "DataUsage"

    invoke-virtual/range {v27 .. v28}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_25
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$8;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/android/settings/datausage/DataUsageSummary;->-get4(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v27

    sget-object v28, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual/range {v27 .. v28}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0

    :cond_26
    const-string/jumbo v27, "AlertMeAboutDataUsageOff"

    move-object/from16 v0, v23

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_29

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$8;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v27, v0

    const-string/jumbo v28, "alert_at_warning"

    invoke-virtual/range {v27 .. v28}, Lcom/android/settings/datausage/DataUsageSummary;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v15

    check-cast v15, Lcom/android/settings/datausage/AlertAtWarningPreference;

    if-eqz v15, :cond_2

    invoke-virtual {v15}, Lcom/android/settings/datausage/AlertAtWarningPreference;->isChecked()Z

    move-result v27

    if-nez v27, :cond_27

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$8;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/android/settings/datausage/DataUsageSummary;->-get4(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v27

    const-string/jumbo v28, "AlertMeAboutDataUsage"

    const-string/jumbo v29, "AlreadyOff"

    const-string/jumbo v30, "Yes"

    invoke-virtual/range {v27 .. v30}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$8;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/android/settings/datausage/DataUsageSummary;->-get4(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v27

    const-string/jumbo v28, "DataUsage"

    invoke-virtual/range {v27 .. v28}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$8;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/android/settings/datausage/DataUsageSummary;->-get4(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v27

    sget-object v28, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual/range {v27 .. v28}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0

    :cond_27
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$8;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lcom/android/settings/datausage/DataUsageSummary;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v15, v0}, Lcom/android/settings/datausage/AlertAtWarningPreference;->performClick(Landroid/preference/PreferenceScreen;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$8;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/android/settings/datausage/DataUsageSummary;->-get4(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v27

    if-eqz v27, :cond_28

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$8;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/android/settings/datausage/DataUsageSummary;->-get4(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v27

    const-string/jumbo v28, "AlertMeAboutDataUsage"

    const-string/jumbo v29, "AlreadyOff"

    const-string/jumbo v30, "No"

    invoke-virtual/range {v27 .. v30}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$8;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/android/settings/datausage/DataUsageSummary;->-get4(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v27

    const-string/jumbo v28, "DataUsage"

    invoke-virtual/range {v27 .. v28}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_28
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$8;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/android/settings/datausage/DataUsageSummary;->-get4(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v27

    sget-object v28, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual/range {v27 .. v28}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0

    :cond_29
    const-string/jumbo v27, "ConfirmMobileDataConnectionOn"

    move-object/from16 v0, v23

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_2d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$8;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/android/settings/datausage/DataUsageSummary;->-get0(Lcom/android/settings/datausage/DataUsageSummary;)Landroid/preference/SwitchPreference;

    move-result-object v27

    if-eqz v27, :cond_2c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$8;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/android/settings/datausage/DataUsageSummary;->-get0(Lcom/android/settings/datausage/DataUsageSummary;)Landroid/preference/SwitchPreference;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v27

    if-eqz v27, :cond_2a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$8;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/android/settings/datausage/DataUsageSummary;->-get4(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v27

    const-string/jumbo v28, "ConfirmMobileDataConnection"

    const-string/jumbo v29, "AlreadyOn"

    const-string/jumbo v30, "yes"

    invoke-virtual/range {v27 .. v30}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$8;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/android/settings/datausage/DataUsageSummary;->-get4(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v27

    const-string/jumbo v28, "DataUsage"

    invoke-virtual/range {v27 .. v28}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$8;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/android/settings/datausage/DataUsageSummary;->-get4(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v27

    sget-object v28, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual/range {v27 .. v28}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0

    :cond_2a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$8;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/android/settings/datausage/DataUsageSummary;->-get0(Lcom/android/settings/datausage/DataUsageSummary;)Landroid/preference/SwitchPreference;

    move-result-object v27

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$8;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lcom/android/settings/datausage/DataUsageSummary;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Landroid/preference/SwitchPreference;->performClick(Landroid/preference/PreferenceScreen;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$8;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/android/settings/datausage/DataUsageSummary;->-get4(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v27

    if-eqz v27, :cond_2b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$8;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/android/settings/datausage/DataUsageSummary;->-get4(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v27

    const-string/jumbo v28, "ConfirmMobileDataConnection"

    const-string/jumbo v29, "AlreadyOn"

    const-string/jumbo v30, "no"

    invoke-virtual/range {v27 .. v30}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$8;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/android/settings/datausage/DataUsageSummary;->-get4(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v27

    const-string/jumbo v28, "DataUsage"

    invoke-virtual/range {v27 .. v28}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_2b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$8;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/android/settings/datausage/DataUsageSummary;->-get4(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v27

    sget-object v28, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual/range {v27 .. v28}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0

    :cond_2c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$8;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/android/settings/datausage/DataUsageSummary;->-get4(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v27

    const-string/jumbo v28, "ConfirmMobileDataConnection"

    const-string/jumbo v29, "Exist"

    const-string/jumbo v30, "no"

    invoke-virtual/range {v27 .. v30}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$8;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/android/settings/datausage/DataUsageSummary;->-get4(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v27

    const-string/jumbo v28, "DataUsage"

    invoke-virtual/range {v27 .. v28}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$8;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/android/settings/datausage/DataUsageSummary;->-get4(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v27

    sget-object v28, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual/range {v27 .. v28}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0

    :cond_2d
    const-string/jumbo v27, "ConfirmMobileDataConnectionOff"

    move-object/from16 v0, v23

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_31

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$8;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/android/settings/datausage/DataUsageSummary;->-get0(Lcom/android/settings/datausage/DataUsageSummary;)Landroid/preference/SwitchPreference;

    move-result-object v27

    if-eqz v27, :cond_30

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$8;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/android/settings/datausage/DataUsageSummary;->-get0(Lcom/android/settings/datausage/DataUsageSummary;)Landroid/preference/SwitchPreference;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v27

    if-nez v27, :cond_2e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$8;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/android/settings/datausage/DataUsageSummary;->-get4(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v27

    const-string/jumbo v28, "ConfirmMobileDataConnection"

    const-string/jumbo v29, "AlreadyOf"

    const-string/jumbo v30, "yes"

    invoke-virtual/range {v27 .. v30}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$8;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/android/settings/datausage/DataUsageSummary;->-get4(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v27

    const-string/jumbo v28, "DataUsage"

    invoke-virtual/range {v27 .. v28}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$8;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/android/settings/datausage/DataUsageSummary;->-get4(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v27

    sget-object v28, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual/range {v27 .. v28}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0

    :cond_2e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$8;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/android/settings/datausage/DataUsageSummary;->-get0(Lcom/android/settings/datausage/DataUsageSummary;)Landroid/preference/SwitchPreference;

    move-result-object v27

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$8;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lcom/android/settings/datausage/DataUsageSummary;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Landroid/preference/SwitchPreference;->performClick(Landroid/preference/PreferenceScreen;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$8;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/android/settings/datausage/DataUsageSummary;->-get4(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v27

    if-eqz v27, :cond_2f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$8;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/android/settings/datausage/DataUsageSummary;->-get4(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v27

    const-string/jumbo v28, "ConfirmMobileDataConnection"

    const-string/jumbo v29, "AlreadyOf"

    const-string/jumbo v30, "no"

    invoke-virtual/range {v27 .. v30}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$8;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/android/settings/datausage/DataUsageSummary;->-get4(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v27

    const-string/jumbo v28, "DataUsage"

    invoke-virtual/range {v27 .. v28}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_2f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$8;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/android/settings/datausage/DataUsageSummary;->-get4(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v27

    sget-object v28, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual/range {v27 .. v28}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0

    :cond_30
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$8;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/android/settings/datausage/DataUsageSummary;->-get4(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v27

    const-string/jumbo v28, "ConfirmMobileDataConnection"

    const-string/jumbo v29, "Exist"

    const-string/jumbo v30, "no"

    invoke-virtual/range {v27 .. v30}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$8;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/android/settings/datausage/DataUsageSummary;->-get4(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v27

    const-string/jumbo v28, "DataUsage"

    invoke-virtual/range {v27 .. v28}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$8;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/android/settings/datausage/DataUsageSummary;->-get4(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v27

    sget-object v28, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual/range {v27 .. v28}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0

    :cond_31
    const-string/jumbo v27, "WiFiDataUsage"

    move-object/from16 v0, v23

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_34

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$8;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/android/settings/datausage/DataUsageSummary;->-get13(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/android/settings/datausage/TemplatePreferenceCategory;

    move-result-object v27

    const-string/jumbo v28, "wifi_data_usage"

    invoke-virtual/range {v27 .. v28}, Lcom/android/settings/datausage/TemplatePreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v16

    check-cast v16, Lcom/android/settings/datausage/DataUsagePreference;

    if-eqz v16, :cond_33

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$8;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lcom/android/settings/datausage/DataUsageSummary;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v27

    move-object/from16 v0, v16

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/android/settings/datausage/DataUsagePreference;->performClick(Landroid/preference/PreferenceScreen;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$8;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/android/settings/datausage/DataUsageSummary;->-get4(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v27

    if-eqz v27, :cond_32

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$8;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/android/settings/datausage/DataUsageSummary;->-get4(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v27

    const-string/jumbo v28, "WiFiDataUsage"

    const-string/jumbo v29, "Exist"

    const-string/jumbo v30, "yes"

    invoke-virtual/range {v27 .. v30}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$8;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/android/settings/datausage/DataUsageSummary;->-get4(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v27

    const-string/jumbo v28, "DataUsage"

    invoke-virtual/range {v27 .. v28}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_32
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$8;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/android/settings/datausage/DataUsageSummary;->-get4(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v27

    sget-object v28, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual/range {v27 .. v28}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0

    :cond_33
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$8;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/android/settings/datausage/DataUsageSummary;->-get4(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v27

    const-string/jumbo v28, "WiFiDataUsage"

    const-string/jumbo v29, "Exist"

    const-string/jumbo v30, "no"

    invoke-virtual/range {v27 .. v30}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$8;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/android/settings/datausage/DataUsageSummary;->-get4(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v27

    const-string/jumbo v28, "DataUsage"

    invoke-virtual/range {v27 .. v28}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$8;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/android/settings/datausage/DataUsageSummary;->-get4(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v27

    sget-object v28, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual/range {v27 .. v28}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0

    :cond_34
    const-string/jumbo v27, "MobiledataInternationalDataRoaming"

    move-object/from16 v0, v23

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_37

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$8;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/android/settings/datausage/DataUsageSummary;->-get10(Lcom/android/settings/datausage/DataUsageSummary;)Landroid/preference/Preference;

    move-result-object v27

    if-eqz v27, :cond_36

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$8;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/android/settings/datausage/DataUsageSummary;->-get10(Lcom/android/settings/datausage/DataUsageSummary;)Landroid/preference/Preference;

    move-result-object v27

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$8;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lcom/android/settings/datausage/DataUsageSummary;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Landroid/preference/Preference;->performClick(Landroid/preference/PreferenceScreen;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$8;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/android/settings/datausage/DataUsageSummary;->-get4(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v27

    if-eqz v27, :cond_35

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$8;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/android/settings/datausage/DataUsageSummary;->-get4(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v27

    const-string/jumbo v28, "MobiledataInternationalDataRoaming"

    invoke-virtual/range {v27 .. v28}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_35
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$8;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/android/settings/datausage/DataUsageSummary;->-get4(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v27

    sget-object v28, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual/range {v27 .. v28}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0

    :cond_36
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$8;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/android/settings/datausage/DataUsageSummary;->-get4(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v27

    const-string/jumbo v28, "MobiledataInternationalDataRoaming"

    const-string/jumbo v29, "Exist"

    const-string/jumbo v30, "no"

    invoke-virtual/range {v27 .. v30}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$8;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/android/settings/datausage/DataUsageSummary;->-get4(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v27

    const-string/jumbo v28, "MobiledataInternationalDataRoaming"

    invoke-virtual/range {v27 .. v28}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$8;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/android/settings/datausage/DataUsageSummary;->-get4(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v27

    sget-object v28, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual/range {v27 .. v28}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0

    :cond_37
    const-string/jumbo v27, "DisplayUnits"

    move-object/from16 v0, v23

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_3c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$8;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/android/settings/datausage/DataUsageSummary;->-get7(Lcom/android/settings/datausage/DataUsageSummary;)Z

    move-result v27

    if-eqz v27, :cond_3b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$8;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/android/settings/datausage/DataUsageSummary;->-get11(Lcom/android/settings/datausage/DataUsageSummary;)Landroid/view/MenuItem;

    move-result-object v27

    if-eqz v27, :cond_3a

    invoke-static {}, Landroid/app/ActivityManager;->isUserAMonkey()Z

    move-result v27

    if-nez v27, :cond_39

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$8;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/android/settings/datausage/DataUsageSummary;->-wrap1(Lcom/android/settings/datausage/DataUsageSummary;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$8;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/android/settings/datausage/DataUsageSummary;->-get4(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v27

    if-eqz v27, :cond_38

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$8;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/android/settings/datausage/DataUsageSummary;->-get4(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v27

    const-string/jumbo v28, "DisplayUnits"

    invoke-virtual/range {v27 .. v28}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_38
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$8;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/android/settings/datausage/DataUsageSummary;->-get4(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v27

    sget-object v28, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual/range {v27 .. v28}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0

    :cond_39
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$8;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/android/settings/datausage/DataUsageSummary;->-get4(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v27

    const-string/jumbo v28, "DisplayUnits"

    invoke-virtual/range {v27 .. v28}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$8;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/android/settings/datausage/DataUsageSummary;->-get4(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v27

    sget-object v28, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual/range {v27 .. v28}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0

    :cond_3a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$8;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/android/settings/datausage/DataUsageSummary;->-get4(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v27

    const/16 v28, 0x1

    invoke-virtual/range {v27 .. v28}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setPendingState(Z)V

    goto/16 :goto_0

    :cond_3b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$8;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/android/settings/datausage/DataUsageSummary;->-get4(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v27

    const-string/jumbo v28, "DisplayUnits"

    invoke-virtual/range {v27 .. v28}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$8;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/android/settings/datausage/DataUsageSummary;->-get4(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v27

    sget-object v28, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual/range {v27 .. v28}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0

    :cond_3c
    const-string/jumbo v27, "RestrictWiFiNetwork"

    move-object/from16 v0, v23

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$8;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/android/settings/datausage/DataUsageSummary;->-get13(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/android/settings/datausage/TemplatePreferenceCategory;

    move-result-object v27

    const-string/jumbo v28, "network_restrictions"

    invoke-virtual/range {v27 .. v28}, Lcom/android/settings/datausage/TemplatePreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v17

    check-cast v17, Lcom/android/settings/datausage/NetworkRestrictionsPreference;

    if-eqz v17, :cond_3e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$8;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lcom/android/settings/datausage/DataUsageSummary;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v27

    move-object/from16 v0, v17

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/android/settings/datausage/NetworkRestrictionsPreference;->performClick(Landroid/preference/PreferenceScreen;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$8;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/android/settings/datausage/DataUsageSummary;->-get4(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v27

    if-eqz v27, :cond_3d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$8;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/android/settings/datausage/DataUsageSummary;->-get4(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v27

    const-string/jumbo v28, "RestrictWiFiNetworks"

    const-string/jumbo v29, "Exist"

    const-string/jumbo v30, "yes"

    invoke-virtual/range {v27 .. v30}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$8;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/android/settings/datausage/DataUsageSummary;->-get4(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v27

    const-string/jumbo v28, "DataUsage"

    invoke-virtual/range {v27 .. v28}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_3d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$8;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/android/settings/datausage/DataUsageSummary;->-get4(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v27

    sget-object v28, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual/range {v27 .. v28}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0

    :cond_3e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$8;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/android/settings/datausage/DataUsageSummary;->-get4(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v27

    const-string/jumbo v28, "RestrictWiFiNetworks"

    const-string/jumbo v29, "Exist"

    const-string/jumbo v30, "no"

    invoke-virtual/range {v27 .. v30}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$8;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/android/settings/datausage/DataUsageSummary;->-get4(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v27

    const-string/jumbo v28, "DataUsage"

    invoke-virtual/range {v27 .. v28}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$8;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/android/settings/datausage/DataUsageSummary;->-get4(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v27

    sget-object v28, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual/range {v27 .. v28}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0

    :cond_3f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$8;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/android/settings/datausage/DataUsageSummary;->-get4(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v27

    const-string/jumbo v28, "SimCardInfo"

    invoke-virtual/range {v27 .. v28}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getParamString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    const-string/jumbo v27, "DataUsageSummary"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v29, "tabId is "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v24, :cond_40

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$8;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/android/settings/datausage/DataUsageSummary;->-get4(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v27

    const-string/jumbo v28, "SimCardInfo"

    const-string/jumbo v29, "Exists"

    const-string/jumbo v30, "no"

    invoke-virtual/range {v27 .. v30}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$8;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/android/settings/datausage/DataUsageSummary;->-get4(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v27

    const-string/jumbo v28, "DataUsage"

    invoke-virtual/range {v27 .. v28}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$8;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/android/settings/datausage/DataUsageSummary;->-get4(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v27

    sget-object v28, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual/range {v27 .. v28}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    return-void

    :cond_40
    const-string/jumbo v27, "2"

    move-object/from16 v0, v24

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v27

    if-eqz v27, :cond_41

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$8;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary;->summaryLayoutChn:Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->getTabCount()I

    move-result v27

    const/16 v28, 0x2

    move/from16 v0, v27

    move/from16 v1, v28

    if-lt v0, v1, :cond_41

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$8;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary;->summaryLayoutChn:Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;

    move-object/from16 v27, v0

    const/16 v28, 0x1

    invoke-virtual/range {v27 .. v28}, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->getTabViewAt(I)Landroid/view/View;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Landroid/view/View;->performClick()Z

    const-string/jumbo v27, "DataUsageSummary"

    const-string/jumbo v28, "Click Tab 2"

    invoke-static/range {v27 .. v28}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v20, "SIM2"

    goto/16 :goto_1

    :cond_41
    const-string/jumbo v27, "1"

    move-object/from16 v0, v24

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v27

    if-eqz v27, :cond_42

    const-string/jumbo v20, "SIM1"

    goto/16 :goto_1

    :cond_42
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$8;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/android/settings/datausage/DataUsageSummary;->-get4(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v27

    const-string/jumbo v28, "SimCardInfo"

    const-string/jumbo v29, "Exists"

    const-string/jumbo v30, "no"

    invoke-virtual/range {v27 .. v30}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$8;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/android/settings/datausage/DataUsageSummary;->-get4(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v27

    const-string/jumbo v28, "DataUsage"

    invoke-virtual/range {v27 .. v28}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$8;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/android/settings/datausage/DataUsageSummary;->-get4(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v27

    sget-object v28, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual/range {v27 .. v28}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    return-void

    :cond_43
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$8;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/android/settings/datausage/DataUsageSummary;->-get4(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v27

    sget-object v28, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual/range {v27 .. v28}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_2

    :cond_44
    const-string/jumbo v27, "ManageAppData"

    move-object/from16 v0, v27

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_46

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$8;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v27, v0

    const-string/jumbo v28, "restrict_app_data"

    invoke-virtual/range {v27 .. v28}, Lcom/android/settings/datausage/DataUsageSummary;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v27

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$8;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lcom/android/settings/datausage/DataUsageSummary;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Landroid/preference/Preference;->performClick(Landroid/preference/PreferenceScreen;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$8;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/android/settings/datausage/DataUsageSummary;->-get4(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v27

    if-eqz v27, :cond_45

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$8;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/android/settings/datausage/DataUsageSummary;->-get4(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v27

    const-string/jumbo v28, "ManageAppData"

    invoke-virtual/range {v27 .. v28}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_45
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$8;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/android/settings/datausage/DataUsageSummary;->-get4(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v27

    sget-object v28, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual/range {v27 .. v28}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_2

    :cond_46
    const-string/jumbo v27, "WlanUsageView"

    move-object/from16 v0, v27

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_48

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$8;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v27, v0

    const-string/jumbo v28, "wifi_data_usage"

    invoke-virtual/range {v27 .. v28}, Lcom/android/settings/datausage/DataUsageSummary;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v27

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$8;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lcom/android/settings/datausage/DataUsageSummary;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Landroid/preference/Preference;->performClick(Landroid/preference/PreferenceScreen;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$8;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/android/settings/datausage/DataUsageSummary;->-get4(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v27

    if-eqz v27, :cond_47

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$8;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/android/settings/datausage/DataUsageSummary;->-get4(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v27

    const-string/jumbo v28, "WlanUsageView"

    invoke-virtual/range {v27 .. v28}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_47
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$8;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/android/settings/datausage/DataUsageSummary;->-get4(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v27

    sget-object v28, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual/range {v27 .. v28}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_2

    :cond_48
    const-string/jumbo v27, "NetworkRestrictView"

    move-object/from16 v0, v27

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_4a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$8;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v27, v0

    const-string/jumbo v28, "network_restrictions"

    invoke-virtual/range {v27 .. v28}, Lcom/android/settings/datausage/DataUsageSummary;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v27

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$8;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lcom/android/settings/datausage/DataUsageSummary;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Landroid/preference/Preference;->performClick(Landroid/preference/PreferenceScreen;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$8;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/android/settings/datausage/DataUsageSummary;->-get4(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v27

    if-eqz v27, :cond_49

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$8;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/android/settings/datausage/DataUsageSummary;->-get4(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v27

    const-string/jumbo v28, "NetworkRestrictView"

    invoke-virtual/range {v27 .. v28}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_49
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$8;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/android/settings/datausage/DataUsageSummary;->-get4(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v27

    sget-object v28, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual/range {v27 .. v28}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_2

    :cond_4a
    const-string/jumbo v27, "DataUsageLimitSettings"

    move-object/from16 v0, v27

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_4d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$8;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v27, v0

    const-string/jumbo v28, "billing_preference_chn"

    invoke-virtual/range {v27 .. v28}, Lcom/android/settings/datausage/DataUsageSummary;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v27

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$8;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lcom/android/settings/datausage/DataUsageSummary;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Landroid/preference/Preference;->performClick(Landroid/preference/PreferenceScreen;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$8;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/android/settings/datausage/DataUsageSummary;->-get4(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v27

    if-eqz v27, :cond_4c

    if-eqz v20, :cond_4b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$8;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/android/settings/datausage/DataUsageSummary;->-get4(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v27

    const-string/jumbo v28, "SimCardInfo"

    const-string/jumbo v29, "Exists"

    const-string/jumbo v30, "Yes"

    invoke-virtual/range {v27 .. v30}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_4b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$8;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/android/settings/datausage/DataUsageSummary;->-get4(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v27

    const-string/jumbo v28, "DataUsageLimitSettings"

    invoke-virtual/range {v27 .. v28}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_4c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$8;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/android/settings/datausage/DataUsageSummary;->-get4(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v27

    sget-object v28, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual/range {v27 .. v28}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_2

    :cond_4d
    const-string/jumbo v27, "UsedDataPopup"

    move-object/from16 v0, v27

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-nez v27, :cond_4e

    const-string/jumbo v27, "SetUsedData"

    move-object/from16 v0, v27

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_56

    :cond_4e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$8;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/android/settings/datausage/DataUsageSummary;->-get4(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getParamsSize()I

    move-result v27

    if-nez v27, :cond_50

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$8;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/android/settings/datausage/DataUsageSummary;->-get4(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v27

    if-eqz v27, :cond_4f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$8;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v27, v0

    const-string/jumbo v28, "set_used_data"

    invoke-virtual/range {v27 .. v28}, Lcom/android/settings/datausage/DataUsageSummary;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v27

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$8;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lcom/android/settings/datausage/DataUsageSummary;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Landroid/preference/Preference;->performClick(Landroid/preference/PreferenceScreen;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$8;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/android/settings/datausage/DataUsageSummary;->-get4(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v27

    const-string/jumbo v28, "DataAmount"

    const-string/jumbo v29, "Exists"

    const-string/jumbo v30, "No"

    invoke-virtual/range {v27 .. v30}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$8;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/android/settings/datausage/DataUsageSummary;->-get4(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v27

    const-string/jumbo v28, "UsedDataPopup"

    invoke-virtual/range {v27 .. v28}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$8;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/android/settings/datausage/DataUsageSummary;->-get4(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v27

    sget-object v28, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual/range {v27 .. v28}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    :cond_4f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$8;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/android/settings/datausage/DataUsageSummary;->-get4(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v27

    sget-object v28, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual/range {v27 .. v28}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_2

    :cond_50
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$8;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/android/settings/datausage/DataUsageSummary;->-get4(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v27

    const-string/jumbo v28, "DataNumber"

    invoke-virtual/range {v27 .. v28}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getParamString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$8;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/android/settings/datausage/DataUsageSummary;->-get4(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v27

    const-string/jumbo v28, "DataUnit"

    invoke-virtual/range {v27 .. v28}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getParamString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    if-eqz v11, :cond_51

    if-nez v26, :cond_52

    :cond_51
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$8;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v27, v0

    const-string/jumbo v28, "set_used_data"

    invoke-virtual/range {v27 .. v28}, Lcom/android/settings/datausage/DataUsageSummary;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v27

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$8;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lcom/android/settings/datausage/DataUsageSummary;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Landroid/preference/Preference;->performClick(Landroid/preference/PreferenceScreen;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$8;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/android/settings/datausage/DataUsageSummary;->-get4(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v27

    const-string/jumbo v28, "DataAmount"

    const-string/jumbo v29, "Valid"

    const-string/jumbo v30, "No"

    invoke-virtual/range {v27 .. v30}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$8;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/android/settings/datausage/DataUsageSummary;->-get4(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v27

    const-string/jumbo v28, "UsedDataPopup"

    invoke-virtual/range {v27 .. v28}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$8;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/android/settings/datausage/DataUsageSummary;->-get4(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v27

    sget-object v28, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual/range {v27 .. v28}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_2

    :cond_52
    const/4 v4, 0x0

    :try_start_1
    const-string/jumbo v27, "MB"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v27

    if-eqz v27, :cond_55

    invoke-static {v11}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/Float;->floatValue()F

    move-result v4

    :cond_53
    :goto_e
    new-instance v25, Lcom/samsung/android/settings/datausage/trafficmanager/TrafficDataSummary;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$8;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lcom/android/settings/datausage/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v27

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    invoke-direct {v0, v1}, Lcom/samsung/android/settings/datausage/trafficmanager/TrafficDataSummary;-><init>(Landroid/content/Context;)V

    invoke-static {}, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->getCurrentTabSubId()I

    move-result v27

    move-object/from16 v0, v25

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/datausage/trafficmanager/TrafficDataSummary;->setSubId(I)V

    invoke-virtual/range {v25 .. v25}, Lcom/samsung/android/settings/datausage/trafficmanager/TrafficDataSummary;->updateDataInfomation()V

    invoke-static {v4}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$8;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lcom/android/settings/datausage/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v27

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v29, "data_used_by_check_time"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-static {}, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->getCurrentTabSubId()I

    move-result v29

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    invoke-static {v0, v1, v5}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$8;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lcom/android/settings/datausage/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v27

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v29, "check_time"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-static {}, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->getCurrentTabSubId()I

    move-result v29

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    invoke-static {v0, v1, v6, v7}, Landroid/provider/Settings$System;->putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$8;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lcom/android/settings/datausage/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v27

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v29, "middle_real_value"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-static {}, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->getCurrentTabSubId()I

    move-result v29

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v25

    invoke-virtual {v0, v6, v7}, Lcom/samsung/android/settings/datausage/trafficmanager/TrafficDataSummary;->getRealTimeValue(J)J

    move-result-wide v30

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    move-wide/from16 v2, v30

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$8;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary;->summaryLayoutChn:Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;

    move-object/from16 v27, v0

    sget-object v28, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mInfo:Lcom/android/settingslib/net/DataUsageController$DataUsageInfo;

    invoke-virtual/range {v27 .. v28}, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->updateUI(Lcom/android/settingslib/net/DataUsageController$DataUsageInfo;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$8;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary;->summaryLayoutChn:Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->updatePolicy()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$8;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/android/settings/datausage/DataUsageSummary;->-get4(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v27

    if-eqz v27, :cond_54

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$8;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/android/settings/datausage/DataUsageSummary;->-get4(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v27

    const-string/jumbo v28, "DataAmount"

    const-string/jumbo v29, "Already set"

    const-string/jumbo v30, "no"

    invoke-virtual/range {v27 .. v30}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$8;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/android/settings/datausage/DataUsageSummary;->-get4(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v27

    const-string/jumbo v28, "DataUsage"

    invoke-virtual/range {v27 .. v28}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_54
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$8;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/android/settings/datausage/DataUsageSummary;->-get4(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v27

    sget-object v28, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual/range {v27 .. v28}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_2

    :catch_1
    move-exception v9

    const-string/jumbo v27, "DataUsageSummary"

    const-string/jumbo v28, "could not persist insert byte"

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    invoke-static {v0, v1, v9}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$8;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v27, v0

    const-string/jumbo v28, "set_used_data"

    invoke-virtual/range {v27 .. v28}, Lcom/android/settings/datausage/DataUsageSummary;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v27

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$8;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lcom/android/settings/datausage/DataUsageSummary;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Landroid/preference/Preference;->performClick(Landroid/preference/PreferenceScreen;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$8;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/android/settings/datausage/DataUsageSummary;->-get4(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v27

    const-string/jumbo v28, "DataAmount"

    const-string/jumbo v29, "Valid"

    const-string/jumbo v30, "No"

    invoke-virtual/range {v27 .. v30}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$8;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/android/settings/datausage/DataUsageSummary;->-get4(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v27

    const-string/jumbo v28, "UsedDataPopup"

    invoke-virtual/range {v27 .. v28}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$8;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/android/settings/datausage/DataUsageSummary;->-get4(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v27

    sget-object v28, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual/range {v27 .. v28}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_2

    :cond_55
    :try_start_2
    const-string/jumbo v27, "GB"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v27

    if-eqz v27, :cond_53

    invoke-static {v11}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/Float;->floatValue()F
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_1

    move-result v4

    const/high16 v27, 0x44800000    # 1024.0f

    mul-float v4, v4, v27

    goto/16 :goto_e

    :cond_56
    const-string/jumbo v27, "DataCompressionOn"

    move-object/from16 v0, v27

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_59

    if-nez v19, :cond_58

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$8;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/android/settings/datausage/DataUsageSummary;->-get4(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v27

    if-eqz v27, :cond_57

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$8;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/android/settings/datausage/DataUsageSummary;->-get4(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v27

    const-string/jumbo v28, "Data Compression "

    const-string/jumbo v29, "AlreadyON"

    const-string/jumbo v30, "No"

    invoke-virtual/range {v27 .. v30}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$8;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/android/settings/datausage/DataUsageSummary;->-get4(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v27

    const-string/jumbo v28, "DataUsage"

    invoke-virtual/range {v27 .. v28}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_57
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$8;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v27, v0

    const-string/jumbo v28, "data_saving_chn"

    invoke-virtual/range {v27 .. v28}, Lcom/android/settings/datausage/DataUsageSummary;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v27

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$8;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lcom/android/settings/datausage/DataUsageSummary;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Landroid/preference/Preference;->performClick(Landroid/preference/PreferenceScreen;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$8;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/android/settings/datausage/DataUsageSummary;->-get4(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v27

    sget-object v28, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual/range {v27 .. v28}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_2

    :cond_58
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$8;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/android/settings/datausage/DataUsageSummary;->-get4(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v27

    const-string/jumbo v28, "Data Compression "

    const-string/jumbo v29, "AlreadyON"

    const-string/jumbo v30, "Yes"

    invoke-virtual/range {v27 .. v30}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$8;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/android/settings/datausage/DataUsageSummary;->-get4(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v27

    const-string/jumbo v28, "DataUsage"

    invoke-virtual/range {v27 .. v28}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$8;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/android/settings/datausage/DataUsageSummary;->-get4(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v27

    sget-object v28, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual/range {v27 .. v28}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_2

    :cond_59
    const-string/jumbo v27, "DataCompressionOff"

    move-object/from16 v0, v27

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_5c

    const/16 v27, 0x1

    move/from16 v0, v19

    move/from16 v1, v27

    if-ne v0, v1, :cond_5b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$8;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/android/settings/datausage/DataUsageSummary;->-get4(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v27

    if-eqz v27, :cond_5a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$8;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/android/settings/datausage/DataUsageSummary;->-get4(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v27

    const-string/jumbo v28, "Data Compression "

    const-string/jumbo v29, "AlreadyOff"

    const-string/jumbo v30, "No"

    invoke-virtual/range {v27 .. v30}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$8;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/android/settings/datausage/DataUsageSummary;->-get4(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v27

    const-string/jumbo v28, "DataUsage"

    invoke-virtual/range {v27 .. v28}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_5a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$8;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v27, v0

    const-string/jumbo v28, "data_saving_chn"

    invoke-virtual/range {v27 .. v28}, Lcom/android/settings/datausage/DataUsageSummary;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v27

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$8;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lcom/android/settings/datausage/DataUsageSummary;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Landroid/preference/Preference;->performClick(Landroid/preference/PreferenceScreen;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$8;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/android/settings/datausage/DataUsageSummary;->-get4(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v27

    sget-object v28, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual/range {v27 .. v28}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_2

    :cond_5b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$8;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/android/settings/datausage/DataUsageSummary;->-get4(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v27

    const-string/jumbo v28, "Data Compression "

    const-string/jumbo v29, "AlreadyOff"

    const-string/jumbo v30, "Yes"

    invoke-virtual/range {v27 .. v30}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$8;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/android/settings/datausage/DataUsageSummary;->-get4(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v27

    const-string/jumbo v28, "DataUsage"

    invoke-virtual/range {v27 .. v28}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$8;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/android/settings/datausage/DataUsageSummary;->-get4(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v27

    sget-object v28, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual/range {v27 .. v28}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_2

    :cond_5c
    const-string/jumbo v27, "DataUsageBySIM"

    move-object/from16 v0, v27

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_5

    if-eqz v20, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$8;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/android/settings/datausage/DataUsageSummary;->-get4(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v27

    const-string/jumbo v28, "SimCardInfo"

    const-string/jumbo v29, "Exists"

    const-string/jumbo v30, "Yes"

    invoke-virtual/range {v27 .. v30}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$8;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/android/settings/datausage/DataUsageSummary;->-get4(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v27

    const-string/jumbo v28, "DataUsage"

    invoke-virtual/range {v27 .. v28}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$8;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/android/settings/datausage/DataUsageSummary;->-get4(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v27

    sget-object v28, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual/range {v27 .. v28}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_2

    :cond_5d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$8;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lcom/android/settings/datausage/DataUsageSummary;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v8, v0}, Landroid/preference/SwitchPreference;->performClick(Landroid/preference/PreferenceScreen;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$8;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/android/settings/datausage/DataUsageSummary;->-get4(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v27

    if-eqz v27, :cond_5e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$8;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/android/settings/datausage/DataUsageSummary;->-get4(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v27

    const-string/jumbo v28, "DataUsageNotifications"

    const-string/jumbo v29, "AlreadyOn"

    const-string/jumbo v30, "no"

    invoke-virtual/range {v27 .. v30}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$8;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/android/settings/datausage/DataUsageSummary;->-get4(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v27

    const-string/jumbo v28, "DataUsage"

    invoke-virtual/range {v27 .. v28}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_5e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$8;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/android/settings/datausage/DataUsageSummary;->-get4(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v27

    sget-object v28, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual/range {v27 .. v28}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_3

    :cond_5f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$8;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/android/settings/datausage/DataUsageSummary;->-get4(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v27

    sget-object v28, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual/range {v27 .. v28}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_3

    :cond_60
    const-string/jumbo v27, "DataUsageNotificationsOff"

    move-object/from16 v0, v23

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$8;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v27, v0

    const-string/jumbo v28, "data_usage_reminder"

    invoke-virtual/range {v27 .. v28}, Lcom/android/settings/datausage/DataUsageSummary;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    check-cast v8, Landroid/preference/SwitchPreference;

    if-eqz v8, :cond_63

    invoke-virtual {v8}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v27

    if-eqz v27, :cond_62

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$8;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lcom/android/settings/datausage/DataUsageSummary;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v8, v0}, Landroid/preference/SwitchPreference;->performClick(Landroid/preference/PreferenceScreen;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$8;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/android/settings/datausage/DataUsageSummary;->-get4(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v27

    if-eqz v27, :cond_61

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$8;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/android/settings/datausage/DataUsageSummary;->-get4(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v27

    const-string/jumbo v28, "DataUsageNotifications"

    const-string/jumbo v29, "AlreadyOff"

    const-string/jumbo v30, "no"

    invoke-virtual/range {v27 .. v30}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$8;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/android/settings/datausage/DataUsageSummary;->-get4(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v27

    const-string/jumbo v28, "DataUsage"

    invoke-virtual/range {v27 .. v28}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_61
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$8;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/android/settings/datausage/DataUsageSummary;->-get4(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v27

    sget-object v28, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual/range {v27 .. v28}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_3

    :cond_62
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$8;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/android/settings/datausage/DataUsageSummary;->-get4(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v27

    const-string/jumbo v28, "DataUsageNotifications"

    const-string/jumbo v29, "AlreadyOff"

    const-string/jumbo v30, "yes"

    invoke-virtual/range {v27 .. v30}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$8;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/android/settings/datausage/DataUsageSummary;->-get4(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v27

    const-string/jumbo v28, "DataUsage"

    invoke-virtual/range {v27 .. v28}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$8;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/android/settings/datausage/DataUsageSummary;->-get4(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v27

    sget-object v28, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual/range {v27 .. v28}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_3

    :cond_63
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary$8;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/android/settings/datausage/DataUsageSummary;->-get4(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v27

    sget-object v28, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual/range {v27 .. v28}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_3
.end method
