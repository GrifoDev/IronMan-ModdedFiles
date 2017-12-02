.class Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$2;
.super Ljava/lang/Object;
.source "AutoPowerOnOffSettings.java"

# interfaces
.implements Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$2;->this$0:Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStateReceived()V
    .locals 15

    iget-object v11, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$2;->this$0:Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;

    invoke-static {v11}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->-get7(Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v11

    invoke-virtual {v11}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getStateId()Ljava/lang/String;

    move-result-object v10

    const-string/jumbo v11, "TurnOnAutoPowerOn"

    invoke-virtual {v11, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_3

    iget-object v11, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$2;->this$0:Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;

    invoke-static {v11}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->-get4(Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;)Landroid/preference/SwitchPreference;

    move-result-object v11

    invoke-virtual {v11}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v11

    if-eqz v11, :cond_1

    iget-object v11, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$2;->this$0:Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;

    invoke-static {v11}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->-get7(Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v11

    const-string/jumbo v12, "AutoPowerOn"

    const-string/jumbo v13, "AlreadyOn"

    const-string/jumbo v14, "yes"

    invoke-virtual {v11, v12, v13, v14}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v11, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$2;->this$0:Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;

    invoke-static {v11}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->-get7(Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v11

    const-string/jumbo v12, "AutoPowerOnOff"

    invoke-virtual {v11, v12}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v11, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$2;->this$0:Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;

    invoke-static {v11}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->-get7(Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v11

    sget-object v12, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v11, v12}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v11, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$2;->this$0:Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;

    invoke-static {v11}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->-get4(Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;)Landroid/preference/SwitchPreference;

    move-result-object v11

    iget-object v12, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$2;->this$0:Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;

    invoke-virtual {v12}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/preference/SwitchPreference;->performClick(Landroid/preference/PreferenceScreen;)V

    iget-object v11, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$2;->this$0:Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;

    invoke-static {v11}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->-get7(Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v11

    invoke-virtual {v11}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v11

    if-eqz v11, :cond_2

    iget-object v11, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$2;->this$0:Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;

    invoke-static {v11}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->-get7(Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v11

    const-string/jumbo v12, "AutoPowerOn"

    const-string/jumbo v13, "AlreadyOn"

    const-string/jumbo v14, "no"

    invoke-virtual {v11, v12, v13, v14}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v11, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$2;->this$0:Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;

    invoke-static {v11}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->-get7(Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v11

    const-string/jumbo v12, "AutoPowerOnOff"

    invoke-virtual {v11, v12}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_2
    iget-object v11, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$2;->this$0:Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;

    invoke-static {v11}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->-get7(Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v11

    sget-object v12, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v11, v12}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto :goto_0

    :cond_3
    const-string/jumbo v11, "TurnOffAutoPowerOn"

    invoke-virtual {v11, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_6

    iget-object v11, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$2;->this$0:Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;

    invoke-static {v11}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->-get4(Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;)Landroid/preference/SwitchPreference;

    move-result-object v11

    invoke-virtual {v11}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v11

    if-nez v11, :cond_4

    iget-object v11, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$2;->this$0:Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;

    invoke-static {v11}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->-get7(Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v11

    const-string/jumbo v12, "AutoPowerOn"

    const-string/jumbo v13, "AlreadyOff"

    const-string/jumbo v14, "yes"

    invoke-virtual {v11, v12, v13, v14}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v11, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$2;->this$0:Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;

    invoke-static {v11}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->-get7(Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v11

    const-string/jumbo v12, "AutoPowerOnOff"

    invoke-virtual {v11, v12}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v11, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$2;->this$0:Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;

    invoke-static {v11}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->-get7(Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v11

    sget-object v12, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v11, v12}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0

    :cond_4
    iget-object v11, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$2;->this$0:Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;

    invoke-static {v11}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->-get4(Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;)Landroid/preference/SwitchPreference;

    move-result-object v11

    iget-object v12, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$2;->this$0:Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;

    invoke-virtual {v12}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/preference/SwitchPreference;->performClick(Landroid/preference/PreferenceScreen;)V

    iget-object v11, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$2;->this$0:Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;

    invoke-static {v11}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->-get7(Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v11

    invoke-virtual {v11}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v11

    if-eqz v11, :cond_5

    iget-object v11, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$2;->this$0:Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;

    invoke-static {v11}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->-get7(Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v11

    const-string/jumbo v12, "AutoPowerOn"

    const-string/jumbo v13, "AlreadyOff"

    const-string/jumbo v14, "no"

    invoke-virtual {v11, v12, v13, v14}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v11, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$2;->this$0:Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;

    invoke-static {v11}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->-get7(Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v11

    const-string/jumbo v12, "AutoPowerOnOff"

    invoke-virtual {v11, v12}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_5
    iget-object v11, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$2;->this$0:Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;

    invoke-static {v11}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->-get7(Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v11

    sget-object v12, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v11, v12}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0

    :cond_6
    const-string/jumbo v11, "AutoPowerOnTime"

    invoke-virtual {v11, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_c

    iget-object v11, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$2;->this$0:Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;

    invoke-static {v11}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->-get7(Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v11

    invoke-virtual {v11}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getParamsSize()I

    move-result v11

    if-nez v11, :cond_7

    iget-object v11, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$2;->this$0:Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;

    invoke-static {v11}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->-get7(Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v11

    const-string/jumbo v12, "SetTime"

    const-string/jumbo v13, "exist"

    const-string/jumbo v14, "no"

    invoke-virtual {v11, v12, v13, v14}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v11, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$2;->this$0:Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;

    invoke-static {v11}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->-get7(Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v11

    const-string/jumbo v12, "AutoPowerOnOff"

    invoke-virtual {v11, v12}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v11, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$2;->this$0:Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;

    invoke-static {v11}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->-get7(Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v11

    sget-object v12, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v11, v12}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0

    :cond_7
    iget-object v11, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$2;->this$0:Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;

    invoke-static {v11}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->-get7(Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v11

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getParamString(I)Ljava/lang/String;

    move-result-object v9

    const/4 v2, -0x1

    const/4 v5, -0x1

    :try_start_0
    const-string/jumbo v11, ":"

    invoke-virtual {v9, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    aget-object v11, v11, v12

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    const-string/jumbo v11, ":"

    invoke-virtual {v9, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x1

    aget-object v11, v11, v12

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    :goto_1
    const-string/jumbo v11, "AutoPowerOnOffSettings"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "AutoPowerOnTime: hour = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, ", mins = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v11, -0x1

    if-eq v2, v11, :cond_8

    const/4 v11, -0x1

    if-ne v5, v11, :cond_9

    :cond_8
    iget-object v11, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$2;->this$0:Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;

    invoke-static {v11}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->-get7(Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v11

    const-string/jumbo v12, "SetTime"

    const-string/jumbo v13, "Valid"

    const-string/jumbo v14, "No"

    invoke-virtual {v11, v12, v13, v14}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v11, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$2;->this$0:Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;

    invoke-static {v11}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->-get7(Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v11

    const-string/jumbo v12, "AutoPowerOnOff"

    invoke-virtual {v11, v12}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v11, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$2;->this$0:Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;

    invoke-static {v11}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->-get7(Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v11

    sget-object v12, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v11, v12}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/NumberFormatException;->printStackTrace()V

    goto :goto_1

    :cond_9
    iget-object v11, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$2;->this$0:Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;

    invoke-static {v11}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->-get4(Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;)Landroid/preference/SwitchPreference;

    move-result-object v11

    invoke-virtual {v11}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v11

    if-nez v11, :cond_a

    iget-object v11, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$2;->this$0:Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;

    invoke-static {v11}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->-get4(Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;)Landroid/preference/SwitchPreference;

    move-result-object v11

    iget-object v12, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$2;->this$0:Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;

    invoke-virtual {v12}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/preference/SwitchPreference;->performClick(Landroid/preference/PreferenceScreen;)V

    :cond_a
    iget-object v11, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$2;->this$0:Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;

    invoke-static {v11, v2, v5}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->-wrap3(Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;II)V

    iget-object v11, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$2;->this$0:Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;

    invoke-static {v11}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->-get7(Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v11

    invoke-virtual {v11}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v11

    if-eqz v11, :cond_b

    iget-object v11, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$2;->this$0:Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;

    invoke-static {v11}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->-get7(Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v11

    const-string/jumbo v12, "SameAutoPowerON"

    const-string/jumbo v13, "AlreadySet"

    const-string/jumbo v14, "no"

    invoke-virtual {v11, v12, v13, v14}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v11, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$2;->this$0:Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;

    invoke-static {v11}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->-get7(Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v11

    const-string/jumbo v12, "time"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, ""

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget-object v14, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$2;->this$0:Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;

    invoke-static {v14}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->-get5(Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;)Landroid/preference/Preference;

    move-result-object v14

    invoke-virtual {v14}, Landroid/preference/Preference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v12, v13}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgResultParam(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v11, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$2;->this$0:Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;

    invoke-static {v11}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->-get7(Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v11

    const-string/jumbo v12, "AutoPowerOnOff"

    invoke-virtual {v11, v12}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_b
    iget-object v11, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$2;->this$0:Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;

    invoke-static {v11}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->-get7(Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v11

    sget-object v12, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v11, v12}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0

    :cond_c
    const-string/jumbo v11, "AutoPowerOnDays"

    invoke-virtual {v11, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_13

    iget-object v11, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$2;->this$0:Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;

    invoke-static {v11}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->-get7(Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v11

    invoke-virtual {v11}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getParamsSize()I

    move-result v11

    if-nez v11, :cond_d

    iget-object v11, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$2;->this$0:Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;

    invoke-static {v11}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->-get7(Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v11

    const-string/jumbo v12, "SetDays"

    const-string/jumbo v13, "exist"

    const-string/jumbo v14, "no"

    invoke-virtual {v11, v12, v13, v14}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v11, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$2;->this$0:Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;

    invoke-static {v11}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->-get7(Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v11

    const-string/jumbo v12, "AutoPowerOnOff"

    invoke-virtual {v11, v12}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v11, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$2;->this$0:Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;

    invoke-static {v11}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->-get7(Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v11

    sget-object v12, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v11, v12}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0

    :cond_d
    iget-object v11, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$2;->this$0:Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;

    invoke-static {v11}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->-get7(Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v11

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getParamString(I)Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v11, "AutoPowerOnOffSettings"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "AutoPowerOnDays: paramDay = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v11, ","

    invoke-virtual {v6, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    array-length v11, v7

    new-array v8, v11, [I

    const/4 v4, 0x0

    const/4 v3, 0x0

    :goto_2
    :try_start_1
    array-length v11, v7

    if-ge v3, v11, :cond_e

    aget-object v11, v7, v3

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    aput v11, v8, v3
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_e
    const/4 v4, 0x1

    :goto_3
    new-instance v0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$DaysOfWeek;

    const/4 v11, 0x0

    invoke-direct {v0, v11}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$DaysOfWeek;-><init>(I)V

    const/4 v3, 0x0

    :goto_4
    array-length v11, v8

    if-ge v3, v11, :cond_f

    aget v11, v8, v3

    const/4 v12, 0x1

    invoke-virtual {v0, v11, v12}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$DaysOfWeek;->setItem(IZ)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    :catch_1
    move-exception v1

    const-string/jumbo v11, "AutoPowerOnOffSettings"

    const-string/jumbo v12, "NumberFormatException error"

    invoke-static {v11, v12}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :cond_f
    if-nez v4, :cond_10

    iget-object v11, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$2;->this$0:Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;

    invoke-static {v11}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->-get7(Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v11

    const-string/jumbo v12, "SetDays"

    const-string/jumbo v13, "Valid"

    const-string/jumbo v14, "no"

    invoke-virtual {v11, v12, v13, v14}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v11, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$2;->this$0:Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;

    invoke-static {v11}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->-get7(Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v11

    const-string/jumbo v12, "AutoPowerOnOff"

    invoke-virtual {v11, v12}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v11, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$2;->this$0:Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;

    invoke-static {v11}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->-get7(Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v11

    sget-object v12, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v11, v12}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0

    :cond_10
    iget-object v11, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$2;->this$0:Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;

    invoke-static {v11}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->-get4(Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;)Landroid/preference/SwitchPreference;

    move-result-object v11

    invoke-virtual {v11}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v11

    if-nez v11, :cond_11

    iget-object v11, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$2;->this$0:Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;

    invoke-static {v11}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->-get4(Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;)Landroid/preference/SwitchPreference;

    move-result-object v11

    iget-object v12, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$2;->this$0:Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;

    invoke-virtual {v12}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/preference/SwitchPreference;->performClick(Landroid/preference/PreferenceScreen;)V

    :cond_11
    iget-object v11, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$2;->this$0:Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;

    invoke-static {v11}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->-get3(Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;)Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffDaysPreference;

    move-result-object v11

    invoke-virtual {v11, v0}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffDaysPreference;->setDaysOfWeek(Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$DaysOfWeek;)V

    iget-object v11, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$2;->this$0:Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;

    invoke-static {v11}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->-get6(Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;)Landroid/content/Context;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string/jumbo v12, "auto_power_on_repeat_days"

    invoke-virtual {v0}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$DaysOfWeek;->getCoded()I

    move-result v13

    invoke-static {v11, v12, v13}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v11, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$2;->this$0:Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;

    iget-object v12, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$2;->this$0:Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;

    invoke-static {v12}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->-get6(Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;)Landroid/content/Context;

    move-result-object v12

    const/4 v13, 0x1

    invoke-static {v11, v12, v13}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->-wrap1(Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;Landroid/content/Context;Z)V

    iget-object v11, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$2;->this$0:Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;

    invoke-static {v11}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->-get7(Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v11

    invoke-virtual {v11}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v11

    if-eqz v11, :cond_12

    iget-object v11, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$2;->this$0:Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;

    invoke-static {v11}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->-get7(Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v11

    const-string/jumbo v12, "SameAutoPowerON"

    const-string/jumbo v13, "AlreadySet"

    const-string/jumbo v14, "no"

    invoke-virtual {v11, v12, v13, v14}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v11, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$2;->this$0:Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;

    invoke-static {v11}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->-get7(Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v11

    const-string/jumbo v12, "Day"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, ""

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget-object v14, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$2;->this$0:Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;

    invoke-static {v14}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->-get3(Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;)Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffDaysPreference;

    move-result-object v14

    invoke-virtual {v14}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffDaysPreference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v12, v13}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgResultParam(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v11, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$2;->this$0:Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;

    invoke-static {v11}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->-get7(Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v11

    const-string/jumbo v12, "AutoPowerOnOff"

    invoke-virtual {v11, v12}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_12
    iget-object v11, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$2;->this$0:Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;

    invoke-static {v11}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->-get7(Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v11

    sget-object v12, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v11, v12}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0

    :cond_13
    const-string/jumbo v11, "TurnOnAutoPowerOff"

    invoke-virtual {v11, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_16

    iget-object v11, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$2;->this$0:Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;

    invoke-static {v11}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->-get1(Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;)Landroid/preference/SwitchPreference;

    move-result-object v11

    invoke-virtual {v11}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v11

    if-eqz v11, :cond_14

    iget-object v11, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$2;->this$0:Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;

    invoke-static {v11}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->-get7(Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v11

    const-string/jumbo v12, "AutoPowerOff"

    const-string/jumbo v13, "AlreadyOn"

    const-string/jumbo v14, "yes"

    invoke-virtual {v11, v12, v13, v14}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v11, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$2;->this$0:Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;

    invoke-static {v11}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->-get7(Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v11

    const-string/jumbo v12, "AutoPowerOnOff"

    invoke-virtual {v11, v12}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v11, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$2;->this$0:Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;

    invoke-static {v11}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->-get7(Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v11

    sget-object v12, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v11, v12}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0

    :cond_14
    iget-object v11, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$2;->this$0:Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;

    invoke-static {v11}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->-get1(Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;)Landroid/preference/SwitchPreference;

    move-result-object v11

    iget-object v12, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$2;->this$0:Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;

    invoke-virtual {v12}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/preference/SwitchPreference;->performClick(Landroid/preference/PreferenceScreen;)V

    iget-object v11, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$2;->this$0:Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;

    invoke-static {v11}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->-get7(Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v11

    invoke-virtual {v11}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v11

    if-eqz v11, :cond_15

    iget-object v11, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$2;->this$0:Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;

    invoke-static {v11}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->-get7(Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v11

    const-string/jumbo v12, "AutoPowerOff"

    const-string/jumbo v13, "AlreadyOn"

    const-string/jumbo v14, "no"

    invoke-virtual {v11, v12, v13, v14}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v11, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$2;->this$0:Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;

    invoke-static {v11}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->-get7(Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v11

    const-string/jumbo v12, "AutoPowerOnOff"

    invoke-virtual {v11, v12}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_15
    iget-object v11, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$2;->this$0:Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;

    invoke-static {v11}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->-get7(Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v11

    sget-object v12, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v11, v12}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0

    :cond_16
    const-string/jumbo v11, "TurnOffAutoPowerOff"

    invoke-virtual {v11, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_19

    iget-object v11, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$2;->this$0:Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;

    invoke-static {v11}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->-get1(Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;)Landroid/preference/SwitchPreference;

    move-result-object v11

    invoke-virtual {v11}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v11

    if-nez v11, :cond_17

    iget-object v11, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$2;->this$0:Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;

    invoke-static {v11}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->-get7(Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v11

    const-string/jumbo v12, "AutoPowerOff"

    const-string/jumbo v13, "AlreadyOff"

    const-string/jumbo v14, "yes"

    invoke-virtual {v11, v12, v13, v14}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v11, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$2;->this$0:Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;

    invoke-static {v11}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->-get7(Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v11

    const-string/jumbo v12, "AutoPowerOnOff"

    invoke-virtual {v11, v12}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v11, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$2;->this$0:Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;

    invoke-static {v11}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->-get7(Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v11

    sget-object v12, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v11, v12}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0

    :cond_17
    iget-object v11, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$2;->this$0:Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;

    invoke-static {v11}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->-get1(Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;)Landroid/preference/SwitchPreference;

    move-result-object v11

    iget-object v12, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$2;->this$0:Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;

    invoke-virtual {v12}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/preference/SwitchPreference;->performClick(Landroid/preference/PreferenceScreen;)V

    iget-object v11, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$2;->this$0:Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;

    invoke-static {v11}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->-get7(Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v11

    invoke-virtual {v11}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v11

    if-eqz v11, :cond_18

    iget-object v11, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$2;->this$0:Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;

    invoke-static {v11}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->-get7(Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v11

    const-string/jumbo v12, "AutoPowerOff"

    const-string/jumbo v13, "AlreadyOff"

    const-string/jumbo v14, "no"

    invoke-virtual {v11, v12, v13, v14}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v11, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$2;->this$0:Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;

    invoke-static {v11}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->-get7(Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v11

    const-string/jumbo v12, "AutoPowerOnOff"

    invoke-virtual {v11, v12}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_18
    iget-object v11, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$2;->this$0:Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;

    invoke-static {v11}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->-get7(Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v11

    sget-object v12, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v11, v12}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0

    :cond_19
    const-string/jumbo v11, "AutoPowerOffTime"

    invoke-virtual {v11, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1f

    iget-object v11, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$2;->this$0:Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;

    invoke-static {v11}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->-get7(Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v11

    invoke-virtual {v11}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getParamsSize()I

    move-result v11

    if-nez v11, :cond_1a

    iget-object v11, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$2;->this$0:Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;

    invoke-static {v11}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->-get7(Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v11

    const-string/jumbo v12, "SetTime"

    const-string/jumbo v13, "exist"

    const-string/jumbo v14, "no"

    invoke-virtual {v11, v12, v13, v14}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v11, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$2;->this$0:Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;

    invoke-static {v11}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->-get7(Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v11

    const-string/jumbo v12, "AutoPowerOnOff"

    invoke-virtual {v11, v12}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v11, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$2;->this$0:Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;

    invoke-static {v11}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->-get7(Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v11

    sget-object v12, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v11, v12}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0

    :cond_1a
    iget-object v11, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$2;->this$0:Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;

    invoke-static {v11}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->-get7(Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v11

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getParamString(I)Ljava/lang/String;

    move-result-object v9

    const/4 v2, -0x1

    const/4 v5, -0x1

    :try_start_2
    const-string/jumbo v11, ":"

    invoke-virtual {v9, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    aget-object v11, v11, v12

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    const-string/jumbo v11, ":"

    invoke-virtual {v9, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x1

    aget-object v11, v11, v12

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_2

    move-result v5

    :goto_5
    const-string/jumbo v11, "AutoPowerOnOffSettings"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "AutoPowerOffTime: hour = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, ", mins = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v11, -0x1

    if-eq v2, v11, :cond_1b

    const/4 v11, -0x1

    if-ne v5, v11, :cond_1c

    :cond_1b
    iget-object v11, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$2;->this$0:Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;

    invoke-static {v11}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->-get7(Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v11

    const-string/jumbo v12, "SetTime"

    const-string/jumbo v13, "Valid"

    const-string/jumbo v14, "no"

    invoke-virtual {v11, v12, v13, v14}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v11, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$2;->this$0:Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;

    invoke-static {v11}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->-get7(Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v11

    const-string/jumbo v12, "AutoPowerOnOff"

    invoke-virtual {v11, v12}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v11, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$2;->this$0:Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;

    invoke-static {v11}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->-get7(Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v11

    sget-object v12, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v11, v12}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0

    :catch_2
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/NumberFormatException;->printStackTrace()V

    goto :goto_5

    :cond_1c
    iget-object v11, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$2;->this$0:Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;

    invoke-static {v11}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->-get1(Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;)Landroid/preference/SwitchPreference;

    move-result-object v11

    invoke-virtual {v11}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v11

    if-nez v11, :cond_1d

    iget-object v11, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$2;->this$0:Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;

    invoke-static {v11}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->-get1(Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;)Landroid/preference/SwitchPreference;

    move-result-object v11

    iget-object v12, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$2;->this$0:Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;

    invoke-virtual {v12}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/preference/SwitchPreference;->performClick(Landroid/preference/PreferenceScreen;)V

    :cond_1d
    iget-object v11, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$2;->this$0:Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;

    invoke-static {v11, v2, v5}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->-wrap2(Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;II)V

    iget-object v11, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$2;->this$0:Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;

    invoke-static {v11}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->-get7(Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v11

    invoke-virtual {v11}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v11

    if-eqz v11, :cond_1e

    iget-object v11, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$2;->this$0:Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;

    invoke-static {v11}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->-get7(Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v11

    const-string/jumbo v12, "SameAutoPowerOFF"

    const-string/jumbo v13, "AlreadySet"

    const-string/jumbo v14, "no"

    invoke-virtual {v11, v12, v13, v14}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v11, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$2;->this$0:Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;

    invoke-static {v11}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->-get7(Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v11

    const-string/jumbo v12, "time"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, ""

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget-object v14, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$2;->this$0:Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;

    invoke-static {v14}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->-get2(Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;)Landroid/preference/Preference;

    move-result-object v14

    invoke-virtual {v14}, Landroid/preference/Preference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v12, v13}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgResultParam(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v11, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$2;->this$0:Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;

    invoke-static {v11}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->-get7(Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v11

    const-string/jumbo v12, "AutoPowerOnOff"

    invoke-virtual {v11, v12}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_1e
    iget-object v11, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$2;->this$0:Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;

    invoke-static {v11}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->-get7(Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v11

    sget-object v12, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v11, v12}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0

    :cond_1f
    const-string/jumbo v11, "AutoPowerOffDays"

    invoke-virtual {v11, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_0

    iget-object v11, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$2;->this$0:Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;

    invoke-static {v11}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->-get7(Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v11

    invoke-virtual {v11}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getParamsSize()I

    move-result v11

    if-nez v11, :cond_20

    iget-object v11, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$2;->this$0:Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;

    invoke-static {v11}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->-get7(Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v11

    const-string/jumbo v12, "SetDays"

    const-string/jumbo v13, "exist"

    const-string/jumbo v14, "no"

    invoke-virtual {v11, v12, v13, v14}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v11, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$2;->this$0:Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;

    invoke-static {v11}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->-get7(Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v11

    const-string/jumbo v12, "AutoPowerOnOff"

    invoke-virtual {v11, v12}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v11, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$2;->this$0:Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;

    invoke-static {v11}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->-get7(Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v11

    sget-object v12, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v11, v12}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0

    :cond_20
    iget-object v11, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$2;->this$0:Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;

    invoke-static {v11}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->-get7(Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v11

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getParamString(I)Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v11, "AutoPowerOnOffSettings"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "AutoPowerOnDays: paramDay = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v11, ","

    invoke-virtual {v6, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    array-length v11, v7

    new-array v8, v11, [I

    const/4 v4, 0x0

    const/4 v3, 0x0

    :goto_6
    :try_start_3
    array-length v11, v7

    if-ge v3, v11, :cond_21

    aget-object v11, v7, v3

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    aput v11, v8, v3
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_3

    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    :cond_21
    const/4 v4, 0x1

    :goto_7
    new-instance v0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$DaysOfWeek;

    const/4 v11, 0x0

    invoke-direct {v0, v11}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$DaysOfWeek;-><init>(I)V

    const/4 v3, 0x0

    :goto_8
    array-length v11, v8

    if-ge v3, v11, :cond_22

    aget v11, v8, v3

    const/4 v12, 0x1

    invoke-virtual {v0, v11, v12}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$DaysOfWeek;->setItem(IZ)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    :catch_3
    move-exception v1

    const-string/jumbo v11, "AutoPowerOnOffSettings"

    const-string/jumbo v12, "NumberFormatException error"

    invoke-static {v11, v12}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    :cond_22
    if-nez v4, :cond_23

    iget-object v11, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$2;->this$0:Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;

    invoke-static {v11}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->-get7(Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v11

    const-string/jumbo v12, "SetDays"

    const-string/jumbo v13, "Valid"

    const-string/jumbo v14, "no"

    invoke-virtual {v11, v12, v13, v14}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v11, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$2;->this$0:Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;

    invoke-static {v11}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->-get7(Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v11

    const-string/jumbo v12, "AutoPowerOnOff"

    invoke-virtual {v11, v12}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v11, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$2;->this$0:Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;

    invoke-static {v11}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->-get7(Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v11

    sget-object v12, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v11, v12}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0

    :cond_23
    iget-object v11, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$2;->this$0:Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;

    invoke-static {v11}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->-get1(Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;)Landroid/preference/SwitchPreference;

    move-result-object v11

    invoke-virtual {v11}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v11

    if-nez v11, :cond_24

    iget-object v11, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$2;->this$0:Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;

    invoke-static {v11}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->-get1(Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;)Landroid/preference/SwitchPreference;

    move-result-object v11

    iget-object v12, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$2;->this$0:Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;

    invoke-virtual {v12}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/preference/SwitchPreference;->performClick(Landroid/preference/PreferenceScreen;)V

    :cond_24
    iget-object v11, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$2;->this$0:Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;

    invoke-static {v11}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->-get0(Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;)Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffDaysPreference;

    move-result-object v11

    invoke-virtual {v11, v0}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffDaysPreference;->setDaysOfWeek(Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$DaysOfWeek;)V

    iget-object v11, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$2;->this$0:Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;

    invoke-static {v11}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->-get6(Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;)Landroid/content/Context;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string/jumbo v12, "auto_power_off_repeat_days"

    invoke-virtual {v0}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$DaysOfWeek;->getCoded()I

    move-result v13

    invoke-static {v11, v12, v13}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v11, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$2;->this$0:Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;

    iget-object v12, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$2;->this$0:Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;

    invoke-static {v12}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->-get6(Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;)Landroid/content/Context;

    move-result-object v12

    const/4 v13, 0x1

    invoke-static {v11, v12, v13}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->-wrap0(Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;Landroid/content/Context;Z)V

    iget-object v11, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$2;->this$0:Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;

    invoke-static {v11}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->-get7(Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v11

    invoke-virtual {v11}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v11

    if-eqz v11, :cond_25

    iget-object v11, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$2;->this$0:Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;

    invoke-static {v11}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->-get7(Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v11

    const-string/jumbo v12, "SameAutoPowerOff"

    const-string/jumbo v13, "AlreadySet"

    const-string/jumbo v14, "no"

    invoke-virtual {v11, v12, v13, v14}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v11, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$2;->this$0:Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;

    invoke-static {v11}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->-get7(Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v11

    const-string/jumbo v12, "Day"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, ""

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget-object v14, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$2;->this$0:Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;

    invoke-static {v14}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->-get0(Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;)Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffDaysPreference;

    move-result-object v14

    invoke-virtual {v14}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffDaysPreference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v12, v13}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgResultParam(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v11, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$2;->this$0:Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;

    invoke-static {v11}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->-get7(Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v11

    const-string/jumbo v12, "AutoPowerOnOff"

    invoke-virtual {v11, v12}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_25
    iget-object v11, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$2;->this$0:Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;

    invoke-static {v11}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->-get7(Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v11

    sget-object v12, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v11, v12}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0
.end method
