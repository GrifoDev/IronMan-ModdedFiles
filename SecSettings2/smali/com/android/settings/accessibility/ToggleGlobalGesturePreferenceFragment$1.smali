.class Lcom/android/settings/accessibility/ToggleGlobalGesturePreferenceFragment$1;
.super Ljava/lang/Object;
.source "ToggleGlobalGesturePreferenceFragment.java"

# interfaces
.implements Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/accessibility/ToggleGlobalGesturePreferenceFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/accessibility/ToggleGlobalGesturePreferenceFragment;


# direct methods
.method constructor <init>(Lcom/android/settings/accessibility/ToggleGlobalGesturePreferenceFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/accessibility/ToggleGlobalGesturePreferenceFragment$1;->this$0:Lcom/android/settings/accessibility/ToggleGlobalGesturePreferenceFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStateReceived()V
    .locals 4

    iget-object v1, p0, Lcom/android/settings/accessibility/ToggleGlobalGesturePreferenceFragment$1;->this$0:Lcom/android/settings/accessibility/ToggleGlobalGesturePreferenceFragment;

    invoke-static {v1}, Lcom/android/settings/accessibility/ToggleGlobalGesturePreferenceFragment;->-get0(Lcom/android/settings/accessibility/ToggleGlobalGesturePreferenceFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getStateId()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "AccessibilityShortcutOn"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/settings/accessibility/ToggleGlobalGesturePreferenceFragment$1;->this$0:Lcom/android/settings/accessibility/ToggleGlobalGesturePreferenceFragment;

    iget-object v1, v1, Lcom/android/settings/accessibility/ToggleGlobalGesturePreferenceFragment;->mToggleSwitch:Lcom/android/settings/widget/ToggleSwitch;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/accessibility/ToggleGlobalGesturePreferenceFragment$1;->this$0:Lcom/android/settings/accessibility/ToggleGlobalGesturePreferenceFragment;

    iget-object v1, v1, Lcom/android/settings/accessibility/ToggleGlobalGesturePreferenceFragment;->mToggleSwitch:Lcom/android/settings/widget/ToggleSwitch;

    invoke-virtual {v1}, Lcom/android/settings/widget/ToggleSwitch;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/accessibility/ToggleGlobalGesturePreferenceFragment$1;->this$0:Lcom/android/settings/accessibility/ToggleGlobalGesturePreferenceFragment;

    iget-object v1, v1, Lcom/android/settings/accessibility/ToggleGlobalGesturePreferenceFragment;->mToggleSwitch:Lcom/android/settings/widget/ToggleSwitch;

    invoke-virtual {v1}, Lcom/android/settings/widget/ToggleSwitch;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_0
    iget-object v1, p0, Lcom/android/settings/accessibility/ToggleGlobalGesturePreferenceFragment$1;->this$0:Lcom/android/settings/accessibility/ToggleGlobalGesturePreferenceFragment;

    invoke-static {v1}, Lcom/android/settings/accessibility/ToggleGlobalGesturePreferenceFragment;->-get0(Lcom/android/settings/accessibility/ToggleGlobalGesturePreferenceFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    const-string/jumbo v2, "AlreadyOn"

    const-string/jumbo v3, "yes"

    invoke-virtual {v1, v0, v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/settings/accessibility/ToggleGlobalGesturePreferenceFragment$1;->this$0:Lcom/android/settings/accessibility/ToggleGlobalGesturePreferenceFragment;

    invoke-static {v1}, Lcom/android/settings/accessibility/ToggleGlobalGesturePreferenceFragment;->-get0(Lcom/android/settings/accessibility/ToggleGlobalGesturePreferenceFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    const-string/jumbo v2, "AccessibilityShortcut"

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/settings/accessibility/ToggleGlobalGesturePreferenceFragment$1;->this$0:Lcom/android/settings/accessibility/ToggleGlobalGesturePreferenceFragment;

    invoke-static {v1}, Lcom/android/settings/accessibility/ToggleGlobalGesturePreferenceFragment;->-get0(Lcom/android/settings/accessibility/ToggleGlobalGesturePreferenceFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v1, p0, Lcom/android/settings/accessibility/ToggleGlobalGesturePreferenceFragment$1;->this$0:Lcom/android/settings/accessibility/ToggleGlobalGesturePreferenceFragment;

    iget-object v1, v1, Lcom/android/settings/accessibility/ToggleGlobalGesturePreferenceFragment;->mToggleSwitch:Lcom/android/settings/widget/ToggleSwitch;

    invoke-virtual {v1}, Lcom/android/settings/widget/ToggleSwitch;->performClick()Z

    iget-object v1, p0, Lcom/android/settings/accessibility/ToggleGlobalGesturePreferenceFragment$1;->this$0:Lcom/android/settings/accessibility/ToggleGlobalGesturePreferenceFragment;

    invoke-static {v1}, Lcom/android/settings/accessibility/ToggleGlobalGesturePreferenceFragment;->-get0(Lcom/android/settings/accessibility/ToggleGlobalGesturePreferenceFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/settings/accessibility/ToggleGlobalGesturePreferenceFragment$1;->this$0:Lcom/android/settings/accessibility/ToggleGlobalGesturePreferenceFragment;

    invoke-static {v1}, Lcom/android/settings/accessibility/ToggleGlobalGesturePreferenceFragment;->-get0(Lcom/android/settings/accessibility/ToggleGlobalGesturePreferenceFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    const-string/jumbo v2, "AlreadyOn"

    const-string/jumbo v3, "no"

    invoke-virtual {v1, v0, v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/settings/accessibility/ToggleGlobalGesturePreferenceFragment$1;->this$0:Lcom/android/settings/accessibility/ToggleGlobalGesturePreferenceFragment;

    invoke-static {v1}, Lcom/android/settings/accessibility/ToggleGlobalGesturePreferenceFragment;->-get0(Lcom/android/settings/accessibility/ToggleGlobalGesturePreferenceFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    const-string/jumbo v2, "AccessibilityShortcut"

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_3
    iget-object v1, p0, Lcom/android/settings/accessibility/ToggleGlobalGesturePreferenceFragment$1;->this$0:Lcom/android/settings/accessibility/ToggleGlobalGesturePreferenceFragment;

    invoke-static {v1}, Lcom/android/settings/accessibility/ToggleGlobalGesturePreferenceFragment;->-get0(Lcom/android/settings/accessibility/ToggleGlobalGesturePreferenceFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto :goto_0

    :cond_4
    const-string/jumbo v1, "AccessibilityShortcutOff"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/settings/accessibility/ToggleGlobalGesturePreferenceFragment$1;->this$0:Lcom/android/settings/accessibility/ToggleGlobalGesturePreferenceFragment;

    iget-object v1, v1, Lcom/android/settings/accessibility/ToggleGlobalGesturePreferenceFragment;->mToggleSwitch:Lcom/android/settings/widget/ToggleSwitch;

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/android/settings/accessibility/ToggleGlobalGesturePreferenceFragment$1;->this$0:Lcom/android/settings/accessibility/ToggleGlobalGesturePreferenceFragment;

    iget-object v1, v1, Lcom/android/settings/accessibility/ToggleGlobalGesturePreferenceFragment;->mToggleSwitch:Lcom/android/settings/widget/ToggleSwitch;

    invoke-virtual {v1}, Lcom/android/settings/widget/ToggleSwitch;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/android/settings/accessibility/ToggleGlobalGesturePreferenceFragment$1;->this$0:Lcom/android/settings/accessibility/ToggleGlobalGesturePreferenceFragment;

    iget-object v1, v1, Lcom/android/settings/accessibility/ToggleGlobalGesturePreferenceFragment;->mToggleSwitch:Lcom/android/settings/widget/ToggleSwitch;

    invoke-virtual {v1}, Lcom/android/settings/widget/ToggleSwitch;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/android/settings/accessibility/ToggleGlobalGesturePreferenceFragment$1;->this$0:Lcom/android/settings/accessibility/ToggleGlobalGesturePreferenceFragment;

    iget-object v1, v1, Lcom/android/settings/accessibility/ToggleGlobalGesturePreferenceFragment;->mToggleSwitch:Lcom/android/settings/widget/ToggleSwitch;

    invoke-virtual {v1}, Lcom/android/settings/widget/ToggleSwitch;->performClick()Z

    iget-object v1, p0, Lcom/android/settings/accessibility/ToggleGlobalGesturePreferenceFragment$1;->this$0:Lcom/android/settings/accessibility/ToggleGlobalGesturePreferenceFragment;

    invoke-static {v1}, Lcom/android/settings/accessibility/ToggleGlobalGesturePreferenceFragment;->-get0(Lcom/android/settings/accessibility/ToggleGlobalGesturePreferenceFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/android/settings/accessibility/ToggleGlobalGesturePreferenceFragment$1;->this$0:Lcom/android/settings/accessibility/ToggleGlobalGesturePreferenceFragment;

    invoke-static {v1}, Lcom/android/settings/accessibility/ToggleGlobalGesturePreferenceFragment;->-get0(Lcom/android/settings/accessibility/ToggleGlobalGesturePreferenceFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    const-string/jumbo v2, "AlreadyOff"

    const-string/jumbo v3, "no"

    invoke-virtual {v1, v0, v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/settings/accessibility/ToggleGlobalGesturePreferenceFragment$1;->this$0:Lcom/android/settings/accessibility/ToggleGlobalGesturePreferenceFragment;

    invoke-static {v1}, Lcom/android/settings/accessibility/ToggleGlobalGesturePreferenceFragment;->-get0(Lcom/android/settings/accessibility/ToggleGlobalGesturePreferenceFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    const-string/jumbo v2, "AccessibilityShortcut"

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_5
    iget-object v1, p0, Lcom/android/settings/accessibility/ToggleGlobalGesturePreferenceFragment$1;->this$0:Lcom/android/settings/accessibility/ToggleGlobalGesturePreferenceFragment;

    invoke-static {v1}, Lcom/android/settings/accessibility/ToggleGlobalGesturePreferenceFragment;->-get0(Lcom/android/settings/accessibility/ToggleGlobalGesturePreferenceFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0

    :cond_6
    iget-object v1, p0, Lcom/android/settings/accessibility/ToggleGlobalGesturePreferenceFragment$1;->this$0:Lcom/android/settings/accessibility/ToggleGlobalGesturePreferenceFragment;

    invoke-static {v1}, Lcom/android/settings/accessibility/ToggleGlobalGesturePreferenceFragment;->-get0(Lcom/android/settings/accessibility/ToggleGlobalGesturePreferenceFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    const-string/jumbo v2, "AlreadyOff"

    const-string/jumbo v3, "yes"

    invoke-virtual {v1, v0, v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/settings/accessibility/ToggleGlobalGesturePreferenceFragment$1;->this$0:Lcom/android/settings/accessibility/ToggleGlobalGesturePreferenceFragment;

    invoke-static {v1}, Lcom/android/settings/accessibility/ToggleGlobalGesturePreferenceFragment;->-get0(Lcom/android/settings/accessibility/ToggleGlobalGesturePreferenceFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    const-string/jumbo v2, "AccessibilityShortcut"

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/settings/accessibility/ToggleGlobalGesturePreferenceFragment$1;->this$0:Lcom/android/settings/accessibility/ToggleGlobalGesturePreferenceFragment;

    invoke-static {v1}, Lcom/android/settings/accessibility/ToggleGlobalGesturePreferenceFragment;->-get0(Lcom/android/settings/accessibility/ToggleGlobalGesturePreferenceFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0
.end method
