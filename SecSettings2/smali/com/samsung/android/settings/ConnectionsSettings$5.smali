.class Lcom/samsung/android/settings/ConnectionsSettings$5;
.super Ljava/lang/Object;
.source "ConnectionsSettings.java"

# interfaces
.implements Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/ConnectionsSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/ConnectionsSettings;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/ConnectionsSettings;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/ConnectionsSettings$5;->this$0:Lcom/samsung/android/settings/ConnectionsSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStateReceived()V
    .locals 10

    const/4 v9, 0x1

    const/4 v8, 0x0

    iget-object v6, p0, Lcom/samsung/android/settings/ConnectionsSettings$5;->this$0:Lcom/samsung/android/settings/ConnectionsSettings;

    iget-object v6, v6, Lcom/samsung/android/settings/ConnectionsSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getStateId()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v6, "AirplaneMode"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/samsung/android/settings/ConnectionsSettings$5;->this$0:Lcom/samsung/android/settings/ConnectionsSettings;

    invoke-static {v6}, Lcom/samsung/android/settings/ConnectionsSettings;->-get1(Lcom/samsung/android/settings/ConnectionsSettings;)Landroid/preference/SwitchPreference;

    move-result-object v6

    iget-object v7, p0, Lcom/samsung/android/settings/ConnectionsSettings$5;->this$0:Lcom/samsung/android/settings/ConnectionsSettings;

    invoke-virtual {v7}, Lcom/samsung/android/settings/ConnectionsSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/preference/SwitchPreference;->performClick(Landroid/preference/PreferenceScreen;)V

    iget-object v6, p0, Lcom/samsung/android/settings/ConnectionsSettings$5;->this$0:Lcom/samsung/android/settings/ConnectionsSettings;

    iget-object v6, v6, Lcom/samsung/android/settings/ConnectionsSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    sget-object v7, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string/jumbo v6, "WiFiSettings"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    iget-object v6, p0, Lcom/samsung/android/settings/ConnectionsSettings$5;->this$0:Lcom/samsung/android/settings/ConnectionsSettings;

    invoke-static {v6}, Lcom/samsung/android/settings/ConnectionsSettings;->-get8(Lcom/samsung/android/settings/ConnectionsSettings;)Landroid/preference/SwitchPreference;

    move-result-object v6

    iget-object v7, p0, Lcom/samsung/android/settings/ConnectionsSettings$5;->this$0:Lcom/samsung/android/settings/ConnectionsSettings;

    invoke-virtual {v7}, Lcom/samsung/android/settings/ConnectionsSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/preference/SwitchPreference;->performClick(Landroid/preference/PreferenceScreen;)V

    iget-object v6, p0, Lcom/samsung/android/settings/ConnectionsSettings$5;->this$0:Lcom/samsung/android/settings/ConnectionsSettings;

    iget-object v6, v6, Lcom/samsung/android/settings/ConnectionsSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v6

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/samsung/android/settings/ConnectionsSettings$5;->this$0:Lcom/samsung/android/settings/ConnectionsSettings;

    iget-object v6, v6, Lcom/samsung/android/settings/ConnectionsSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v7, "WiFiSettings"

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_2
    iget-object v6, p0, Lcom/samsung/android/settings/ConnectionsSettings$5;->this$0:Lcom/samsung/android/settings/ConnectionsSettings;

    iget-object v6, v6, Lcom/samsung/android/settings/ConnectionsSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    sget-object v7, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto :goto_0

    :cond_3
    const-string/jumbo v6, "BluetoothSettings"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    iget-object v6, p0, Lcom/samsung/android/settings/ConnectionsSettings$5;->this$0:Lcom/samsung/android/settings/ConnectionsSettings;

    invoke-static {v6}, Lcom/samsung/android/settings/ConnectionsSettings;->-get2(Lcom/samsung/android/settings/ConnectionsSettings;)Landroid/preference/SwitchPreference;

    move-result-object v6

    iget-object v7, p0, Lcom/samsung/android/settings/ConnectionsSettings$5;->this$0:Lcom/samsung/android/settings/ConnectionsSettings;

    invoke-virtual {v7}, Lcom/samsung/android/settings/ConnectionsSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/preference/SwitchPreference;->performClick(Landroid/preference/PreferenceScreen;)V

    iget-object v6, p0, Lcom/samsung/android/settings/ConnectionsSettings$5;->this$0:Lcom/samsung/android/settings/ConnectionsSettings;

    iget-object v6, v6, Lcom/samsung/android/settings/ConnectionsSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v6

    if-eqz v6, :cond_4

    iget-object v6, p0, Lcom/samsung/android/settings/ConnectionsSettings$5;->this$0:Lcom/samsung/android/settings/ConnectionsSettings;

    iget-object v6, v6, Lcom/samsung/android/settings/ConnectionsSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {v6, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_4
    iget-object v6, p0, Lcom/samsung/android/settings/ConnectionsSettings$5;->this$0:Lcom/samsung/android/settings/ConnectionsSettings;

    iget-object v6, v6, Lcom/samsung/android/settings/ConnectionsSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    sget-object v7, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto :goto_0

    :cond_5
    const-string/jumbo v6, "DeviceVisibility"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    iget-object v6, p0, Lcom/samsung/android/settings/ConnectionsSettings$5;->this$0:Lcom/samsung/android/settings/ConnectionsSettings;

    invoke-static {v6}, Lcom/samsung/android/settings/ConnectionsSettings;->-get3(Lcom/samsung/android/settings/ConnectionsSettings;)Landroid/preference/SwitchPreference;

    move-result-object v6

    iget-object v7, p0, Lcom/samsung/android/settings/ConnectionsSettings$5;->this$0:Lcom/samsung/android/settings/ConnectionsSettings;

    invoke-virtual {v7}, Lcom/samsung/android/settings/ConnectionsSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/preference/SwitchPreference;->performClick(Landroid/preference/PreferenceScreen;)V

    iget-object v6, p0, Lcom/samsung/android/settings/ConnectionsSettings$5;->this$0:Lcom/samsung/android/settings/ConnectionsSettings;

    iget-object v6, v6, Lcom/samsung/android/settings/ConnectionsSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    sget-object v7, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0

    :cond_6
    const-string/jumbo v6, "DataUsage"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    iget-object v6, p0, Lcom/samsung/android/settings/ConnectionsSettings$5;->this$0:Lcom/samsung/android/settings/ConnectionsSettings;

    const-string/jumbo v7, "data_usage_settings"

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/ConnectionsSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    iget-object v7, p0, Lcom/samsung/android/settings/ConnectionsSettings$5;->this$0:Lcom/samsung/android/settings/ConnectionsSettings;

    invoke-virtual {v7}, Lcom/samsung/android/settings/ConnectionsSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/preference/Preference;->performClick(Landroid/preference/PreferenceScreen;)V

    iget-object v6, p0, Lcom/samsung/android/settings/ConnectionsSettings$5;->this$0:Lcom/samsung/android/settings/ConnectionsSettings;

    iget-object v6, v6, Lcom/samsung/android/settings/ConnectionsSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v6

    if-eqz v6, :cond_7

    iget-object v6, p0, Lcom/samsung/android/settings/ConnectionsSettings$5;->this$0:Lcom/samsung/android/settings/ConnectionsSettings;

    iget-object v6, v6, Lcom/samsung/android/settings/ConnectionsSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {v6, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_7
    iget-object v6, p0, Lcom/samsung/android/settings/ConnectionsSettings$5;->this$0:Lcom/samsung/android/settings/ConnectionsSettings;

    iget-object v6, v6, Lcom/samsung/android/settings/ConnectionsSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    sget-object v7, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0

    :cond_8
    const-string/jumbo v6, "MoreConnectionSettings"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_d

    iget-object v6, p0, Lcom/samsung/android/settings/ConnectionsSettings$5;->this$0:Lcom/samsung/android/settings/ConnectionsSettings;

    invoke-virtual {v6}, Lcom/samsung/android/settings/ConnectionsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-static {v6}, Lcom/android/settings/Utils;->isSupportGraceUXForVZW(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_b

    iget-object v6, p0, Lcom/samsung/android/settings/ConnectionsSettings$5;->this$0:Lcom/samsung/android/settings/ConnectionsSettings;

    const-string/jumbo v7, "wireless_settings_for_vzw"

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/ConnectionsSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    if-eqz v6, :cond_a

    iget-object v6, p0, Lcom/samsung/android/settings/ConnectionsSettings$5;->this$0:Lcom/samsung/android/settings/ConnectionsSettings;

    const-string/jumbo v7, "wireless_settings_for_vzw"

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/ConnectionsSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    iget-object v7, p0, Lcom/samsung/android/settings/ConnectionsSettings$5;->this$0:Lcom/samsung/android/settings/ConnectionsSettings;

    invoke-virtual {v7}, Lcom/samsung/android/settings/ConnectionsSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/preference/Preference;->performClick(Landroid/preference/PreferenceScreen;)V

    :goto_1
    iget-object v6, p0, Lcom/samsung/android/settings/ConnectionsSettings$5;->this$0:Lcom/samsung/android/settings/ConnectionsSettings;

    iget-object v6, v6, Lcom/samsung/android/settings/ConnectionsSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v6

    if-eqz v6, :cond_9

    iget-object v6, p0, Lcom/samsung/android/settings/ConnectionsSettings$5;->this$0:Lcom/samsung/android/settings/ConnectionsSettings;

    iget-object v6, v6, Lcom/samsung/android/settings/ConnectionsSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {v6, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_9
    iget-object v6, p0, Lcom/samsung/android/settings/ConnectionsSettings$5;->this$0:Lcom/samsung/android/settings/ConnectionsSettings;

    iget-object v6, v6, Lcom/samsung/android/settings/ConnectionsSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    sget-object v7, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0

    :cond_a
    iget-object v6, p0, Lcom/samsung/android/settings/ConnectionsSettings$5;->this$0:Lcom/samsung/android/settings/ConnectionsSettings;

    iget-object v6, v6, Lcom/samsung/android/settings/ConnectionsSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    sget-object v7, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    return-void

    :cond_b
    iget-object v6, p0, Lcom/samsung/android/settings/ConnectionsSettings$5;->this$0:Lcom/samsung/android/settings/ConnectionsSettings;

    const-string/jumbo v7, "wireless_settings"

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/ConnectionsSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    if-eqz v6, :cond_c

    iget-object v6, p0, Lcom/samsung/android/settings/ConnectionsSettings$5;->this$0:Lcom/samsung/android/settings/ConnectionsSettings;

    const-string/jumbo v7, "wireless_settings"

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/ConnectionsSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    iget-object v7, p0, Lcom/samsung/android/settings/ConnectionsSettings$5;->this$0:Lcom/samsung/android/settings/ConnectionsSettings;

    invoke-virtual {v7}, Lcom/samsung/android/settings/ConnectionsSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/preference/Preference;->performClick(Landroid/preference/PreferenceScreen;)V

    goto :goto_1

    :cond_c
    iget-object v6, p0, Lcom/samsung/android/settings/ConnectionsSettings$5;->this$0:Lcom/samsung/android/settings/ConnectionsSettings;

    iget-object v6, v6, Lcom/samsung/android/settings/ConnectionsSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    sget-object v7, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    return-void

    :cond_d
    const-string/jumbo v6, "NfcSettings"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_e

    iget-object v6, p0, Lcom/samsung/android/settings/ConnectionsSettings$5;->this$0:Lcom/samsung/android/settings/ConnectionsSettings;

    invoke-static {v6}, Lcom/samsung/android/settings/ConnectionsSettings;->-get5(Lcom/samsung/android/settings/ConnectionsSettings;)Landroid/preference/SwitchPreference;

    move-result-object v6

    iget-object v7, p0, Lcom/samsung/android/settings/ConnectionsSettings$5;->this$0:Lcom/samsung/android/settings/ConnectionsSettings;

    invoke-virtual {v7}, Lcom/samsung/android/settings/ConnectionsSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/preference/SwitchPreference;->performClick(Landroid/preference/PreferenceScreen;)V

    iget-object v6, p0, Lcom/samsung/android/settings/ConnectionsSettings$5;->this$0:Lcom/samsung/android/settings/ConnectionsSettings;

    iget-object v6, v6, Lcom/samsung/android/settings/ConnectionsSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    sget-object v7, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    iget-object v6, p0, Lcom/samsung/android/settings/ConnectionsSettings$5;->this$0:Lcom/samsung/android/settings/ConnectionsSettings;

    iget-object v6, v6, Lcom/samsung/android/settings/ConnectionsSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v6

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/samsung/android/settings/ConnectionsSettings$5;->this$0:Lcom/samsung/android/settings/ConnectionsSettings;

    iget-object v6, v6, Lcom/samsung/android/settings/ConnectionsSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {v6, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_e
    const-string/jumbo v6, "MobileHotspotAndTethering"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_10

    iget-object v6, p0, Lcom/samsung/android/settings/ConnectionsSettings$5;->this$0:Lcom/samsung/android/settings/ConnectionsSettings;

    invoke-static {v6}, Lcom/samsung/android/settings/ConnectionsSettings;->-get6(Lcom/samsung/android/settings/ConnectionsSettings;)Lcom/samsung/android/settingslib/RestrictedPreference;

    move-result-object v6

    iget-object v7, p0, Lcom/samsung/android/settings/ConnectionsSettings$5;->this$0:Lcom/samsung/android/settings/ConnectionsSettings;

    invoke-virtual {v7}, Lcom/samsung/android/settings/ConnectionsSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/samsung/android/settingslib/RestrictedPreference;->performClick(Landroid/preference/PreferenceScreen;)V

    iget-object v6, p0, Lcom/samsung/android/settings/ConnectionsSettings$5;->this$0:Lcom/samsung/android/settings/ConnectionsSettings;

    iget-object v6, v6, Lcom/samsung/android/settings/ConnectionsSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v6

    if-eqz v6, :cond_f

    iget-object v6, p0, Lcom/samsung/android/settings/ConnectionsSettings$5;->this$0:Lcom/samsung/android/settings/ConnectionsSettings;

    iget-object v6, v6, Lcom/samsung/android/settings/ConnectionsSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {v6, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_f
    iget-object v6, p0, Lcom/samsung/android/settings/ConnectionsSettings$5;->this$0:Lcom/samsung/android/settings/ConnectionsSettings;

    iget-object v6, v6, Lcom/samsung/android/settings/ConnectionsSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    sget-object v7, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0

    :cond_10
    const-string/jumbo v6, "Location"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_12

    iget-object v6, p0, Lcom/samsung/android/settings/ConnectionsSettings$5;->this$0:Lcom/samsung/android/settings/ConnectionsSettings;

    invoke-static {v6}, Lcom/samsung/android/settings/ConnectionsSettings;->-get4(Lcom/samsung/android/settings/ConnectionsSettings;)Landroid/preference/SwitchPreference;

    move-result-object v6

    iget-object v7, p0, Lcom/samsung/android/settings/ConnectionsSettings$5;->this$0:Lcom/samsung/android/settings/ConnectionsSettings;

    invoke-virtual {v7}, Lcom/samsung/android/settings/ConnectionsSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/preference/SwitchPreference;->performClick(Landroid/preference/PreferenceScreen;)V

    iget-object v6, p0, Lcom/samsung/android/settings/ConnectionsSettings$5;->this$0:Lcom/samsung/android/settings/ConnectionsSettings;

    iget-object v6, v6, Lcom/samsung/android/settings/ConnectionsSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v6

    if-eqz v6, :cond_11

    iget-object v6, p0, Lcom/samsung/android/settings/ConnectionsSettings$5;->this$0:Lcom/samsung/android/settings/ConnectionsSettings;

    iget-object v6, v6, Lcom/samsung/android/settings/ConnectionsSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {v6, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_11
    iget-object v6, p0, Lcom/samsung/android/settings/ConnectionsSettings$5;->this$0:Lcom/samsung/android/settings/ConnectionsSettings;

    iget-object v6, v6, Lcom/samsung/android/settings/ConnectionsSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    sget-object v7, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0

    :cond_12
    const-string/jumbo v6, "ActiveWiFiCalling"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_13

    const-string/jumbo v6, "WiFiCalling"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    :cond_13
    sget-boolean v6, Lcom/android/settings/Utils;->SUPPORT_ATT_WFC:Z

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/samsung/android/settings/ConnectionsSettings$5;->this$0:Lcom/samsung/android/settings/ConnectionsSettings;

    invoke-static {v6}, Lcom/samsung/android/settings/ConnectionsSettings;->-get7(Lcom/samsung/android/settings/ConnectionsSettings;)Landroid/preference/PreferenceScreen;

    move-result-object v6

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/samsung/android/settings/ConnectionsSettings$5;->this$0:Lcom/samsung/android/settings/ConnectionsSettings;

    invoke-static {v6}, Lcom/samsung/android/settings/ConnectionsSettings;->-get7(Lcom/samsung/android/settings/ConnectionsSettings;)Landroid/preference/PreferenceScreen;

    move-result-object v6

    invoke-virtual {v6}, Landroid/preference/PreferenceScreen;->isEnabled()Z

    move-result v6

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/samsung/android/settings/ConnectionsSettings$5;->this$0:Lcom/samsung/android/settings/ConnectionsSettings;

    invoke-virtual {v6}, Lcom/samsung/android/settings/ConnectionsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/String;

    const-string/jumbo v7, "wifi_call_enable"

    aput-object v7, v6, v8

    const-string/jumbo v7, "vowifi_mdn"

    aput-object v7, v6, v9

    const-string/jumbo v7, "0"

    invoke-static {v0, v6, v7}, Lcom/android/settings/VoWiFiCallingDBManager;->getString(Landroid/content/Context;[Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_14

    return-void

    :cond_14
    const-string/jumbo v6, "1"

    aget-object v7, v4, v8

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_15

    const/4 v5, 0x1

    :goto_2
    aget-object v3, v4, v9

    iget-object v6, p0, Lcom/samsung/android/settings/ConnectionsSettings$5;->this$0:Lcom/samsung/android/settings/ConnectionsSettings;

    invoke-static {v6}, Lcom/samsung/android/settings/ConnectionsSettings;->-get7(Lcom/samsung/android/settings/ConnectionsSettings;)Landroid/preference/PreferenceScreen;

    move-result-object v6

    invoke-virtual {v6}, Landroid/preference/PreferenceScreen;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v6, "stateId"

    invoke-virtual {v1, v6, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v6, "lastState"

    iget-object v7, p0, Lcom/samsung/android/settings/ConnectionsSettings$5;->this$0:Lcom/samsung/android/settings/ConnectionsSettings;

    iget-object v7, v7, Lcom/samsung/android/settings/ConnectionsSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v7

    invoke-virtual {v1, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v6, p0, Lcom/samsung/android/settings/ConnectionsSettings$5;->this$0:Lcom/samsung/android/settings/ConnectionsSettings;

    invoke-static {v6}, Lcom/samsung/android/settings/ConnectionsSettings;->-get7(Lcom/samsung/android/settings/ConnectionsSettings;)Landroid/preference/PreferenceScreen;

    move-result-object v6

    invoke-virtual {v6, v1}, Landroid/preference/PreferenceScreen;->setIntent(Landroid/content/Intent;)V

    const-string/jumbo v6, "ConnectionsSettings"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "WFC state "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v6, "ActiveWiFiCalling"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_16

    const-string/jumbo v6, "0"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_17

    iget-object v6, p0, Lcom/samsung/android/settings/ConnectionsSettings$5;->this$0:Lcom/samsung/android/settings/ConnectionsSettings;

    iget-object v6, v6, Lcom/samsung/android/settings/ConnectionsSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v7, "Wi-FiCallingActivated"

    const-string/jumbo v8, "Valid"

    const-string/jumbo v9, "yes"

    invoke-virtual {v6, v7, v8, v9}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v6, p0, Lcom/samsung/android/settings/ConnectionsSettings$5;->this$0:Lcom/samsung/android/settings/ConnectionsSettings;

    iget-object v6, v6, Lcom/samsung/android/settings/ConnectionsSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {v6, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :goto_3
    iget-object v6, p0, Lcom/samsung/android/settings/ConnectionsSettings$5;->this$0:Lcom/samsung/android/settings/ConnectionsSettings;

    iget-object v6, v6, Lcom/samsung/android/settings/ConnectionsSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    sget-object v7, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    :goto_4
    iget-object v6, p0, Lcom/samsung/android/settings/ConnectionsSettings$5;->this$0:Lcom/samsung/android/settings/ConnectionsSettings;

    invoke-static {v6}, Lcom/samsung/android/settings/ConnectionsSettings;->-get7(Lcom/samsung/android/settings/ConnectionsSettings;)Landroid/preference/PreferenceScreen;

    move-result-object v6

    iget-object v7, p0, Lcom/samsung/android/settings/ConnectionsSettings$5;->this$0:Lcom/samsung/android/settings/ConnectionsSettings;

    invoke-virtual {v7}, Lcom/samsung/android/settings/ConnectionsSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/preference/PreferenceScreen;->performClick(Landroid/preference/PreferenceScreen;)V

    goto/16 :goto_0

    :cond_15
    const/4 v5, 0x0

    goto/16 :goto_2

    :cond_16
    const-string/jumbo v6, "WiFiCalling"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1a

    const-string/jumbo v6, "0"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_18

    iget-object v6, p0, Lcom/samsung/android/settings/ConnectionsSettings$5;->this$0:Lcom/samsung/android/settings/ConnectionsSettings;

    iget-object v6, v6, Lcom/samsung/android/settings/ConnectionsSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v7, "Call"

    const-string/jumbo v8, "WifiCallingActivation"

    const-string/jumbo v9, "no"

    invoke-virtual {v6, v7, v8, v9}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v6, p0, Lcom/samsung/android/settings/ConnectionsSettings$5;->this$0:Lcom/samsung/android/settings/ConnectionsSettings;

    iget-object v6, v6, Lcom/samsung/android/settings/ConnectionsSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v7, "NLG_PRECONDITION"

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/samsung/android/settings/ConnectionsSettings$5;->this$0:Lcom/samsung/android/settings/ConnectionsSettings;

    iget-object v6, v6, Lcom/samsung/android/settings/ConnectionsSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    sget-object v7, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto :goto_4

    :cond_17
    iget-object v6, p0, Lcom/samsung/android/settings/ConnectionsSettings$5;->this$0:Lcom/samsung/android/settings/ConnectionsSettings;

    iget-object v6, v6, Lcom/samsung/android/settings/ConnectionsSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v7, "Wi-FiCallingActivated"

    const-string/jumbo v8, "Valid"

    const-string/jumbo v9, "no"

    invoke-virtual {v6, v7, v8, v9}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v6, p0, Lcom/samsung/android/settings/ConnectionsSettings$5;->this$0:Lcom/samsung/android/settings/ConnectionsSettings;

    iget-object v6, v6, Lcom/samsung/android/settings/ConnectionsSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {v6, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    goto :goto_3

    :cond_18
    iget-object v6, p0, Lcom/samsung/android/settings/ConnectionsSettings$5;->this$0:Lcom/samsung/android/settings/ConnectionsSettings;

    iget-object v6, v6, Lcom/samsung/android/settings/ConnectionsSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v6

    if-eqz v6, :cond_19

    iget-object v6, p0, Lcom/samsung/android/settings/ConnectionsSettings$5;->this$0:Lcom/samsung/android/settings/ConnectionsSettings;

    iget-object v6, v6, Lcom/samsung/android/settings/ConnectionsSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {v6, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_19
    iget-object v6, p0, Lcom/samsung/android/settings/ConnectionsSettings$5;->this$0:Lcom/samsung/android/settings/ConnectionsSettings;

    iget-object v6, v6, Lcom/samsung/android/settings/ConnectionsSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    sget-object v7, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto :goto_4

    :cond_1a
    const-string/jumbo v6, "ConnectionsSettings"

    const-string/jumbo v7, "Invalid stateID for WFC"

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v6, p0, Lcom/samsung/android/settings/ConnectionsSettings$5;->this$0:Lcom/samsung/android/settings/ConnectionsSettings;

    iget-object v6, v6, Lcom/samsung/android/settings/ConnectionsSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    sget-object v7, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_4
.end method
