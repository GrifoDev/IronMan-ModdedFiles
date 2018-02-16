.class Lcom/samsung/android/settings/notification/SoundModeSettings$3;
.super Ljava/lang/Object;
.source "SoundModeSettings.java"

# interfaces
.implements Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/notification/SoundModeSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/notification/SoundModeSettings;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/notification/SoundModeSettings;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/notification/SoundModeSettings$3;->this$0:Lcom/samsung/android/settings/notification/SoundModeSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStateReceived()V
    .locals 24

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/notification/SoundModeSettings$3;->this$0:Lcom/samsung/android/settings/notification/SoundModeSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/notification/SoundModeSettings;->-get3(Lcom/samsung/android/settings/notification/SoundModeSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getStateId()Ljava/lang/String;

    move-result-object v21

    const-string/jumbo v2, "SoundMode"

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/notification/SoundModeSettings$3;->this$0:Lcom/samsung/android/settings/notification/SoundModeSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/notification/SoundModeSettings;->-get3(Lcom/samsung/android/settings/notification/SoundModeSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getParamString(I)Ljava/lang/String;

    move-result-object v18

    const/16 v17, -0x1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/notification/SoundModeSettings$3;->this$0:Lcom/samsung/android/settings/notification/SoundModeSettings;

    invoke-virtual {v2}, Lcom/samsung/android/settings/notification/SoundModeSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b161e

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v19

    const-string/jumbo v2, "Mute"

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/16 v17, 0x0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/notification/SoundModeSettings$3;->this$0:Lcom/samsung/android/settings/notification/SoundModeSettings;

    invoke-virtual {v2}, Lcom/samsung/android/settings/notification/SoundModeSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b0c3c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v19

    :cond_0
    :goto_0
    const/4 v2, -0x1

    move/from16 v0, v17

    if-ne v0, v2, :cond_4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/notification/SoundModeSettings$3;->this$0:Lcom/samsung/android/settings/notification/SoundModeSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/notification/SoundModeSettings;->-get3(Lcom/samsung/android/settings/notification/SoundModeSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v3, "SoundMode"

    const-string/jumbo v4, "Match"

    const-string/jumbo v5, "no"

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/notification/SoundModeSettings$3;->this$0:Lcom/samsung/android/settings/notification/SoundModeSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/notification/SoundModeSettings;->-get3(Lcom/samsung/android/settings/notification/SoundModeSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v3, "SoundModeSettings"

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/notification/SoundModeSettings$3;->this$0:Lcom/samsung/android/settings/notification/SoundModeSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/notification/SoundModeSettings;->-get3(Lcom/samsung/android/settings/notification/SoundModeSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    :cond_1
    :goto_1
    return-void

    :cond_2
    const-string/jumbo v2, "Vibrate"

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    const/16 v17, 0x1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/notification/SoundModeSettings$3;->this$0:Lcom/samsung/android/settings/notification/SoundModeSettings;

    invoke-virtual {v2}, Lcom/samsung/android/settings/notification/SoundModeSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b0c3b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v19

    goto :goto_0

    :cond_3
    const-string/jumbo v2, "Sound"

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v17, 0x2

    goto :goto_0

    :cond_4
    invoke-static {}, Lcom/samsung/android/settings/notification/SoundModeSettings;->-get0()Landroid/media/AudioManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/media/AudioManager;->getRingerModeInternal()I

    move-result v2

    move/from16 v0, v17

    if-ne v0, v2, :cond_5

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/notification/SoundModeSettings$3;->this$0:Lcom/samsung/android/settings/notification/SoundModeSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/notification/SoundModeSettings;->-get3(Lcom/samsung/android/settings/notification/SoundModeSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v3, "SoundMode"

    const-string/jumbo v4, "AlreadySelected"

    const-string/jumbo v5, "yes"

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/notification/SoundModeSettings$3;->this$0:Lcom/samsung/android/settings/notification/SoundModeSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/notification/SoundModeSettings;->-get3(Lcom/samsung/android/settings/notification/SoundModeSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v3, "SoundMode"

    move-object/from16 v0, v19

    invoke-virtual {v2, v3, v0}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgResultParam(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/notification/SoundModeSettings$3;->this$0:Lcom/samsung/android/settings/notification/SoundModeSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/notification/SoundModeSettings;->-get3(Lcom/samsung/android/settings/notification/SoundModeSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v3, "SoundModeSettings"

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/notification/SoundModeSettings$3;->this$0:Lcom/samsung/android/settings/notification/SoundModeSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/notification/SoundModeSettings;->-get3(Lcom/samsung/android/settings/notification/SoundModeSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto :goto_1

    :cond_5
    invoke-static {}, Lcom/samsung/android/settings/notification/SoundModeSettings;->-get0()Landroid/media/AudioManager;

    move-result-object v2

    move/from16 v0, v17

    invoke-virtual {v2, v0}, Landroid/media/AudioManager;->setRingerModeInternal(I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/notification/SoundModeSettings$3;->this$0:Lcom/samsung/android/settings/notification/SoundModeSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/notification/SoundModeSettings;->-get3(Lcom/samsung/android/settings/notification/SoundModeSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v2

    if-eqz v2, :cond_6

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/notification/SoundModeSettings$3;->this$0:Lcom/samsung/android/settings/notification/SoundModeSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/notification/SoundModeSettings;->-get3(Lcom/samsung/android/settings/notification/SoundModeSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v3, "SoundMode"

    const-string/jumbo v4, "AlreadySelected"

    const-string/jumbo v5, "no"

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/notification/SoundModeSettings$3;->this$0:Lcom/samsung/android/settings/notification/SoundModeSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/notification/SoundModeSettings;->-get3(Lcom/samsung/android/settings/notification/SoundModeSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v3, "SoundMode"

    move-object/from16 v0, v19

    invoke-virtual {v2, v3, v0}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgResultParam(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/notification/SoundModeSettings$3;->this$0:Lcom/samsung/android/settings/notification/SoundModeSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/notification/SoundModeSettings;->-get3(Lcom/samsung/android/settings/notification/SoundModeSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v3, "SoundModeSettings"

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/notification/SoundModeSettings$3;->this$0:Lcom/samsung/android/settings/notification/SoundModeSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/notification/SoundModeSettings;->-get3(Lcom/samsung/android/settings/notification/SoundModeSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_1

    :cond_7
    const-string/jumbo v2, "TemporaryMuteOn"

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    invoke-static {}, Lcom/samsung/android/settings/notification/SoundModeSettings;->-get0()Landroid/media/AudioManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/media/AudioManager;->getRingerModeInternal()I

    move-result v2

    if-eqz v2, :cond_8

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/notification/SoundModeSettings$3;->this$0:Lcom/samsung/android/settings/notification/SoundModeSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/notification/SoundModeSettings;->-get3(Lcom/samsung/android/settings/notification/SoundModeSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v3, "SoundMode"

    const-string/jumbo v4, "AlreadyMute"

    const-string/jumbo v5, "no"

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/notification/SoundModeSettings$3;->this$0:Lcom/samsung/android/settings/notification/SoundModeSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/notification/SoundModeSettings;->-get3(Lcom/samsung/android/settings/notification/SoundModeSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v3, "SoundsModeSettings"

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/notification/SoundModeSettings$3;->this$0:Lcom/samsung/android/settings/notification/SoundModeSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/notification/SoundModeSettings;->-get3(Lcom/samsung/android/settings/notification/SoundModeSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    return-void

    :cond_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/notification/SoundModeSettings$3;->this$0:Lcom/samsung/android/settings/notification/SoundModeSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/notification/SoundModeSettings;->-get4(Lcom/samsung/android/settings/notification/SoundModeSettings;)Landroid/preference/SwitchPreference;

    move-result-object v2

    invoke-virtual {v2}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_9

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/notification/SoundModeSettings$3;->this$0:Lcom/samsung/android/settings/notification/SoundModeSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/notification/SoundModeSettings;->-get3(Lcom/samsung/android/settings/notification/SoundModeSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v3, "TemporaryMute"

    const-string/jumbo v4, "AlreadyOn"

    const-string/jumbo v5, "yes"

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/notification/SoundModeSettings$3;->this$0:Lcom/samsung/android/settings/notification/SoundModeSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/notification/SoundModeSettings;->-get3(Lcom/samsung/android/settings/notification/SoundModeSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v3, "SoundsModeSettings"

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/notification/SoundModeSettings$3;->this$0:Lcom/samsung/android/settings/notification/SoundModeSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/notification/SoundModeSettings;->-get3(Lcom/samsung/android/settings/notification/SoundModeSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_1

    :cond_9
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/notification/SoundModeSettings$3;->this$0:Lcom/samsung/android/settings/notification/SoundModeSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/notification/SoundModeSettings;->-get4(Lcom/samsung/android/settings/notification/SoundModeSettings;)Landroid/preference/SwitchPreference;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/settings/notification/SoundModeSettings$3;->this$0:Lcom/samsung/android/settings/notification/SoundModeSettings;

    invoke-virtual {v3}, Lcom/samsung/android/settings/notification/SoundModeSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/SwitchPreference;->performClick(Landroid/preference/PreferenceScreen;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/notification/SoundModeSettings$3;->this$0:Lcom/samsung/android/settings/notification/SoundModeSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/notification/SoundModeSettings;->-get3(Lcom/samsung/android/settings/notification/SoundModeSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v2

    if-eqz v2, :cond_a

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/notification/SoundModeSettings$3;->this$0:Lcom/samsung/android/settings/notification/SoundModeSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/notification/SoundModeSettings;->-get3(Lcom/samsung/android/settings/notification/SoundModeSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v3, "TemporaryMute"

    const-string/jumbo v4, "AlreadyOn"

    const-string/jumbo v5, "no"

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/notification/SoundModeSettings$3;->this$0:Lcom/samsung/android/settings/notification/SoundModeSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/notification/SoundModeSettings;->-get3(Lcom/samsung/android/settings/notification/SoundModeSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v3, "SoundsModeSettings"

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/notification/SoundModeSettings$3;->this$0:Lcom/samsung/android/settings/notification/SoundModeSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/notification/SoundModeSettings;->-get3(Lcom/samsung/android/settings/notification/SoundModeSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_1

    :cond_b
    const-string/jumbo v2, "TemporaryMuteOff"

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f

    invoke-static {}, Lcom/samsung/android/settings/notification/SoundModeSettings;->-get0()Landroid/media/AudioManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/media/AudioManager;->getRingerModeInternal()I

    move-result v2

    if-eqz v2, :cond_c

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/notification/SoundModeSettings$3;->this$0:Lcom/samsung/android/settings/notification/SoundModeSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/notification/SoundModeSettings;->-get3(Lcom/samsung/android/settings/notification/SoundModeSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v3, "SoundMode"

    const-string/jumbo v4, "AlreadyMute"

    const-string/jumbo v5, "no"

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/notification/SoundModeSettings$3;->this$0:Lcom/samsung/android/settings/notification/SoundModeSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/notification/SoundModeSettings;->-get3(Lcom/samsung/android/settings/notification/SoundModeSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v3, "SoundsModeSettings"

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/notification/SoundModeSettings$3;->this$0:Lcom/samsung/android/settings/notification/SoundModeSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/notification/SoundModeSettings;->-get3(Lcom/samsung/android/settings/notification/SoundModeSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    return-void

    :cond_c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/notification/SoundModeSettings$3;->this$0:Lcom/samsung/android/settings/notification/SoundModeSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/notification/SoundModeSettings;->-get4(Lcom/samsung/android/settings/notification/SoundModeSettings;)Landroid/preference/SwitchPreference;

    move-result-object v2

    invoke-virtual {v2}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v2

    if-nez v2, :cond_d

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/notification/SoundModeSettings$3;->this$0:Lcom/samsung/android/settings/notification/SoundModeSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/notification/SoundModeSettings;->-get3(Lcom/samsung/android/settings/notification/SoundModeSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v3, "TemporaryMute"

    const-string/jumbo v4, "AlreadyOff"

    const-string/jumbo v5, "yes"

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/notification/SoundModeSettings$3;->this$0:Lcom/samsung/android/settings/notification/SoundModeSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/notification/SoundModeSettings;->-get3(Lcom/samsung/android/settings/notification/SoundModeSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v3, "SoundsModeSettings"

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/notification/SoundModeSettings$3;->this$0:Lcom/samsung/android/settings/notification/SoundModeSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/notification/SoundModeSettings;->-get3(Lcom/samsung/android/settings/notification/SoundModeSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_1

    :cond_d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/notification/SoundModeSettings$3;->this$0:Lcom/samsung/android/settings/notification/SoundModeSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/notification/SoundModeSettings;->-get4(Lcom/samsung/android/settings/notification/SoundModeSettings;)Landroid/preference/SwitchPreference;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/settings/notification/SoundModeSettings$3;->this$0:Lcom/samsung/android/settings/notification/SoundModeSettings;

    invoke-virtual {v3}, Lcom/samsung/android/settings/notification/SoundModeSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/SwitchPreference;->performClick(Landroid/preference/PreferenceScreen;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/notification/SoundModeSettings$3;->this$0:Lcom/samsung/android/settings/notification/SoundModeSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/notification/SoundModeSettings;->-get3(Lcom/samsung/android/settings/notification/SoundModeSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v2

    if-eqz v2, :cond_e

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/notification/SoundModeSettings$3;->this$0:Lcom/samsung/android/settings/notification/SoundModeSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/notification/SoundModeSettings;->-get3(Lcom/samsung/android/settings/notification/SoundModeSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v3, "TemporaryMute"

    const-string/jumbo v4, "AlreadyOff"

    const-string/jumbo v5, "no"

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/notification/SoundModeSettings$3;->this$0:Lcom/samsung/android/settings/notification/SoundModeSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/notification/SoundModeSettings;->-get3(Lcom/samsung/android/settings/notification/SoundModeSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v3, "SoundsModeSettings"

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_e
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/notification/SoundModeSettings$3;->this$0:Lcom/samsung/android/settings/notification/SoundModeSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/notification/SoundModeSettings;->-get3(Lcom/samsung/android/settings/notification/SoundModeSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_1

    :cond_f
    const-string/jumbo v2, "Mute"

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/notification/SoundModeSettings$3;->this$0:Lcom/samsung/android/settings/notification/SoundModeSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/notification/SoundModeSettings;->-get3(Lcom/samsung/android/settings/notification/SoundModeSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_1

    :cond_10
    const-string/jumbo v2, "MuteDuration"

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {}, Lcom/samsung/android/settings/notification/SoundModeSettings;->-get0()Landroid/media/AudioManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/media/AudioManager;->getRingerModeInternal()I

    move-result v2

    if-eqz v2, :cond_11

    invoke-static {}, Lcom/samsung/android/settings/notification/SoundModeSettings;->-get0()Landroid/media/AudioManager;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/media/AudioManager;->setRingerModeInternal(I)V

    :cond_11
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/notification/SoundModeSettings$3;->this$0:Lcom/samsung/android/settings/notification/SoundModeSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/notification/SoundModeSettings;->-get4(Lcom/samsung/android/settings/notification/SoundModeSettings;)Landroid/preference/SwitchPreference;

    move-result-object v2

    invoke-virtual {v2}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v2

    if-nez v2, :cond_12

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/notification/SoundModeSettings$3;->this$0:Lcom/samsung/android/settings/notification/SoundModeSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/notification/SoundModeSettings;->-get4(Lcom/samsung/android/settings/notification/SoundModeSettings;)Landroid/preference/SwitchPreference;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/settings/notification/SoundModeSettings$3;->this$0:Lcom/samsung/android/settings/notification/SoundModeSettings;

    invoke-virtual {v3}, Lcom/samsung/android/settings/notification/SoundModeSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/SwitchPreference;->performClick(Landroid/preference/PreferenceScreen;)V

    :cond_12
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/notification/SoundModeSettings$3;->this$0:Lcom/samsung/android/settings/notification/SoundModeSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/notification/SoundModeSettings;->-get3(Lcom/samsung/android/settings/notification/SoundModeSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getParamString(I)Ljava/lang/String;

    move-result-object v18

    const-string/jumbo v2, "SoundModeSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "recipientId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v14, -0x1

    const/4 v15, -0x1

    const/16 v20, -0x1

    :try_start_0
    const-string/jumbo v2, " "

    const-string/jumbo v3, ""

    move-object/from16 v0, v18

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v18

    const-string/jumbo v2, ","

    const-string/jumbo v3, ""

    move-object/from16 v0, v18

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v18

    const-string/jumbo v2, "y"

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x0

    move-object/from16 v0, v18

    invoke-virtual {v0, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v22

    const-string/jumbo v2, "y"

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    const-string/jumbo v3, "m"

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, v18

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v16

    const-string/jumbo v2, "m"

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    const-string/jumbo v3, "d"

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, v18

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    const-string/jumbo v2, "m"

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    const-string/jumbo v3, "s"

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, v18

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v20

    const-string/jumbo v2, ""

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_13

    if-nez v22, :cond_13

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Float;->floatValue()F

    move-result v2

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-nez v2, :cond_13

    if-nez v11, :cond_13

    const-string/jumbo v2, "d"

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    const-string/jumbo v3, "h"

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, v18

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v14

    const-string/jumbo v2, "h"

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    const-string/jumbo v3, "m"

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, v18

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v15

    :cond_13
    const-string/jumbo v2, "SoundModeSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v0, v22

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "y,"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "m,"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "d,"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "h,"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "m"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/StringIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    const/4 v2, -0x1

    if-eq v14, v2, :cond_14

    const/4 v2, -0x1

    if-ne v15, v2, :cond_15

    :cond_14
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/notification/SoundModeSettings$3;->this$0:Lcom/samsung/android/settings/notification/SoundModeSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/notification/SoundModeSettings;->-get3(Lcom/samsung/android/settings/notification/SoundModeSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v3, "MuteDuration"

    const-string/jumbo v4, "Exist"

    const-string/jumbo v5, "no"

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/notification/SoundModeSettings$3;->this$0:Lcom/samsung/android/settings/notification/SoundModeSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/notification/SoundModeSettings;->-get3(Lcom/samsung/android/settings/notification/SoundModeSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v3, "Mute"

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/notification/SoundModeSettings$3;->this$0:Lcom/samsung/android/settings/notification/SoundModeSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/notification/SoundModeSettings;->-get3(Lcom/samsung/android/settings/notification/SoundModeSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_1

    :catch_0
    move-exception v12

    invoke-virtual {v12}, Ljava/lang/NumberFormatException;->printStackTrace()V

    goto :goto_2

    :catch_1
    move-exception v13

    invoke-virtual {v13}, Ljava/lang/StringIndexOutOfBoundsException;->printStackTrace()V

    goto :goto_2

    :cond_15
    if-nez v14, :cond_16

    if-eqz v15, :cond_14

    :cond_16
    if-nez v20, :cond_14

    move v9, v15

    move v10, v14

    mul-int/lit8 v8, v14, 0x3c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/notification/SoundModeSettings$3;->this$0:Lcom/samsung/android/settings/notification/SoundModeSettings;

    move-object/from16 v23, v0

    new-instance v2, Lcom/samsung/android/settings/notification/SoundModeSettings$3$1;

    const-wide/16 v4, 0x1f4

    const-wide/16 v6, 0x3e8

    move-object/from16 v3, p0

    invoke-direct/range {v2 .. v10}, Lcom/samsung/android/settings/notification/SoundModeSettings$3$1;-><init>(Lcom/samsung/android/settings/notification/SoundModeSettings$3;JJIII)V

    move-object/from16 v0, v23

    invoke-static {v0, v2}, Lcom/samsung/android/settings/notification/SoundModeSettings;->-set0(Lcom/samsung/android/settings/notification/SoundModeSettings;Landroid/os/CountDownTimer;)Landroid/os/CountDownTimer;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/notification/SoundModeSettings$3;->this$0:Lcom/samsung/android/settings/notification/SoundModeSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/notification/SoundModeSettings;->-get5(Lcom/samsung/android/settings/notification/SoundModeSettings;)Landroid/os/CountDownTimer;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    goto/16 :goto_1
.end method
