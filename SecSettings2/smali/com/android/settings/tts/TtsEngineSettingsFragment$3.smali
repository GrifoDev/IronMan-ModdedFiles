.class Lcom/android/settings/tts/TtsEngineSettingsFragment$3;
.super Ljava/lang/Object;
.source "TtsEngineSettingsFragment.java"

# interfaces
.implements Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/tts/TtsEngineSettingsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/tts/TtsEngineSettingsFragment;


# direct methods
.method constructor <init>(Lcom/android/settings/tts/TtsEngineSettingsFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/tts/TtsEngineSettingsFragment$3;->this$0:Lcom/android/settings/tts/TtsEngineSettingsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStateReceived()V
    .locals 6

    iget-object v2, p0, Lcom/android/settings/tts/TtsEngineSettingsFragment$3;->this$0:Lcom/android/settings/tts/TtsEngineSettingsFragment;

    invoke-static {v2}, Lcom/android/settings/tts/TtsEngineSettingsFragment;->-get1(Lcom/android/settings/tts/TtsEngineSettingsFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getStateId()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "Language"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/settings/tts/TtsEngineSettingsFragment$3;->this$0:Lcom/android/settings/tts/TtsEngineSettingsFragment;

    invoke-static {v2}, Lcom/android/settings/tts/TtsEngineSettingsFragment;->-get0(Lcom/android/settings/tts/TtsEngineSettingsFragment;)Landroid/os/Handler;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    iget-object v2, p0, Lcom/android/settings/tts/TtsEngineSettingsFragment$3;->this$0:Lcom/android/settings/tts/TtsEngineSettingsFragment;

    invoke-static {v2}, Lcom/android/settings/tts/TtsEngineSettingsFragment;->-get0(Lcom/android/settings/tts/TtsEngineSettingsFragment;)Landroid/os/Handler;

    move-result-object v2

    const-wide/16 v4, 0x64

    invoke-virtual {v2, v0, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :goto_0
    return-void

    :cond_0
    const-string/jumbo v2, "START_SettingsForSamsungTTSEngine"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/settings/tts/TtsEngineSettingsFragment$3;->this$0:Lcom/android/settings/tts/TtsEngineSettingsFragment;

    iget-object v3, p0, Lcom/android/settings/tts/TtsEngineSettingsFragment$3;->this$0:Lcom/android/settings/tts/TtsEngineSettingsFragment;

    invoke-static {v3}, Lcom/android/settings/tts/TtsEngineSettingsFragment;->-get2(Lcom/android/settings/tts/TtsEngineSettingsFragment;)Landroid/preference/Preference;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/settings/tts/TtsEngineSettingsFragment;->onPreferenceClick(Landroid/preference/Preference;)Z

    iget-object v2, p0, Lcom/android/settings/tts/TtsEngineSettingsFragment$3;->this$0:Lcom/android/settings/tts/TtsEngineSettingsFragment;

    invoke-static {v2}, Lcom/android/settings/tts/TtsEngineSettingsFragment;->-get1(Lcom/android/settings/tts/TtsEngineSettingsFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto :goto_0

    :cond_1
    const-string/jumbo v2, "START_SamsungTTSInstallVoiceData"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/settings/tts/TtsEngineSettingsFragment$3;->this$0:Lcom/android/settings/tts/TtsEngineSettingsFragment;

    iget-object v3, p0, Lcom/android/settings/tts/TtsEngineSettingsFragment$3;->this$0:Lcom/android/settings/tts/TtsEngineSettingsFragment;

    invoke-static {v3}, Lcom/android/settings/tts/TtsEngineSettingsFragment;->-get4(Lcom/android/settings/tts/TtsEngineSettingsFragment;)Landroid/preference/Preference;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/settings/tts/TtsEngineSettingsFragment;->onPreferenceClick(Landroid/preference/Preference;)Z

    iget-object v2, p0, Lcom/android/settings/tts/TtsEngineSettingsFragment$3;->this$0:Lcom/android/settings/tts/TtsEngineSettingsFragment;

    invoke-static {v2}, Lcom/android/settings/tts/TtsEngineSettingsFragment;->-get1(Lcom/android/settings/tts/TtsEngineSettingsFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/android/settings/tts/TtsEngineSettingsFragment$3;->this$0:Lcom/android/settings/tts/TtsEngineSettingsFragment;

    invoke-static {v2}, Lcom/android/settings/tts/TtsEngineSettingsFragment;->-get1(Lcom/android/settings/tts/TtsEngineSettingsFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto :goto_0
.end method
