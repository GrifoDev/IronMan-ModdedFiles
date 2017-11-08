.class Lcom/samsung/android/settings/accessibility/LightNotificationPreferenceFragment$2;
.super Ljava/lang/Object;
.source "LightNotificationPreferenceFragment.java"

# interfaces
.implements Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/accessibility/LightNotificationPreferenceFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/accessibility/LightNotificationPreferenceFragment;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/accessibility/LightNotificationPreferenceFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/accessibility/LightNotificationPreferenceFragment$2;->this$0:Lcom/samsung/android/settings/accessibility/LightNotificationPreferenceFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private requestNLG(ZLjava/lang/String;Z)V
    .locals 5

    if-eqz p1, :cond_0

    iget-object v2, p0, Lcom/samsung/android/settings/accessibility/LightNotificationPreferenceFragment$2;->this$0:Lcom/samsung/android/settings/accessibility/LightNotificationPreferenceFragment;

    invoke-static {v2}, Lcom/samsung/android/settings/accessibility/LightNotificationPreferenceFragment;->-get0(Lcom/samsung/android/settings/accessibility/LightNotificationPreferenceFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Already"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-eqz p3, :cond_2

    const-string/jumbo v2, "On"

    :goto_0
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    if-eqz p1, :cond_3

    const-string/jumbo v1, "no"

    :goto_1
    const-string/jumbo v2, "LightNotification"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "requestNLG(): success ="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", param = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", attributeName = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", attributeValue ="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/samsung/android/settings/accessibility/LightNotificationPreferenceFragment$2;->this$0:Lcom/samsung/android/settings/accessibility/LightNotificationPreferenceFragment;

    invoke-static {v2}, Lcom/samsung/android/settings/accessibility/LightNotificationPreferenceFragment;->-get0(Lcom/samsung/android/settings/accessibility/LightNotificationPreferenceFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    invoke-virtual {v2, p2, v0, v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/android/settings/accessibility/LightNotificationPreferenceFragment$2;->this$0:Lcom/samsung/android/settings/accessibility/LightNotificationPreferenceFragment;

    invoke-static {v2}, Lcom/samsung/android/settings/accessibility/LightNotificationPreferenceFragment;->-get0(Lcom/samsung/android/settings/accessibility/LightNotificationPreferenceFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v3, "LightNotification"

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    if-eqz p1, :cond_4

    iget-object v2, p0, Lcom/samsung/android/settings/accessibility/LightNotificationPreferenceFragment$2;->this$0:Lcom/samsung/android/settings/accessibility/LightNotificationPreferenceFragment;

    invoke-static {v2}, Lcom/samsung/android/settings/accessibility/LightNotificationPreferenceFragment;->-get0(Lcom/samsung/android/settings/accessibility/LightNotificationPreferenceFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    :cond_1
    :goto_2
    return-void

    :cond_2
    const-string/jumbo v2, "Off"

    goto :goto_0

    :cond_3
    const-string/jumbo v1, "yes"

    goto :goto_1

    :cond_4
    iget-object v2, p0, Lcom/samsung/android/settings/accessibility/LightNotificationPreferenceFragment$2;->this$0:Lcom/samsung/android/settings/accessibility/LightNotificationPreferenceFragment;

    invoke-static {v2}, Lcom/samsung/android/settings/accessibility/LightNotificationPreferenceFragment;->-get0(Lcom/samsung/android/settings/accessibility/LightNotificationPreferenceFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto :goto_2
.end method


# virtual methods
.method public onStateReceived()V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/LightNotificationPreferenceFragment$2;->this$0:Lcom/samsung/android/settings/accessibility/LightNotificationPreferenceFragment;

    invoke-static {v1}, Lcom/samsung/android/settings/accessibility/LightNotificationPreferenceFragment;->-get0(Lcom/samsung/android/settings/accessibility/LightNotificationPreferenceFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getStateId()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "FlashNotificationOn"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, v4}, Lcom/samsung/android/settings/accessibility/LightNotificationPreferenceFragment$2;->performSwitchTrigger(Z)V

    :goto_0
    return-void

    :cond_0
    const-string/jumbo v1, "FlashNotificationOff"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/accessibility/LightNotificationPreferenceFragment$2;->performSwitchTrigger(Z)V

    goto :goto_0

    :cond_1
    const-string/jumbo v1, "ScreenOn"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/LightNotificationPreferenceFragment$2;->this$0:Lcom/samsung/android/settings/accessibility/LightNotificationPreferenceFragment;

    invoke-static {v1}, Lcom/samsung/android/settings/accessibility/LightNotificationPreferenceFragment;->-get2(Lcom/samsung/android/settings/accessibility/LightNotificationPreferenceFragment;)Landroid/preference/SwitchPreference;

    move-result-object v1

    const-string/jumbo v2, "Screen"

    invoke-virtual {p0, v1, v2, v4}, Lcom/samsung/android/settings/accessibility/LightNotificationPreferenceFragment$2;->performSwitchTrigger(Landroid/preference/SwitchPreference;Ljava/lang/String;Z)V

    goto :goto_0

    :cond_2
    const-string/jumbo v1, "ScreenOff"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/LightNotificationPreferenceFragment$2;->this$0:Lcom/samsung/android/settings/accessibility/LightNotificationPreferenceFragment;

    invoke-static {v1}, Lcom/samsung/android/settings/accessibility/LightNotificationPreferenceFragment;->-get2(Lcom/samsung/android/settings/accessibility/LightNotificationPreferenceFragment;)Landroid/preference/SwitchPreference;

    move-result-object v1

    const-string/jumbo v2, "Screen"

    invoke-virtual {p0, v1, v2, v3}, Lcom/samsung/android/settings/accessibility/LightNotificationPreferenceFragment$2;->performSwitchTrigger(Landroid/preference/SwitchPreference;Ljava/lang/String;Z)V

    goto :goto_0

    :cond_3
    const-string/jumbo v1, "CameraFlashOn"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/LightNotificationPreferenceFragment$2;->this$0:Lcom/samsung/android/settings/accessibility/LightNotificationPreferenceFragment;

    invoke-static {v1}, Lcom/samsung/android/settings/accessibility/LightNotificationPreferenceFragment;->-get1(Lcom/samsung/android/settings/accessibility/LightNotificationPreferenceFragment;)Landroid/preference/SwitchPreference;

    move-result-object v1

    const-string/jumbo v2, "Flash"

    invoke-virtual {p0, v1, v2, v4}, Lcom/samsung/android/settings/accessibility/LightNotificationPreferenceFragment$2;->performSwitchTrigger(Landroid/preference/SwitchPreference;Ljava/lang/String;Z)V

    goto :goto_0

    :cond_4
    const-string/jumbo v1, "CameraFlashOff"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/LightNotificationPreferenceFragment$2;->this$0:Lcom/samsung/android/settings/accessibility/LightNotificationPreferenceFragment;

    invoke-static {v1}, Lcom/samsung/android/settings/accessibility/LightNotificationPreferenceFragment;->-get1(Lcom/samsung/android/settings/accessibility/LightNotificationPreferenceFragment;)Landroid/preference/SwitchPreference;

    move-result-object v1

    const-string/jumbo v2, "Flash"

    invoke-virtual {p0, v1, v2, v3}, Lcom/samsung/android/settings/accessibility/LightNotificationPreferenceFragment$2;->performSwitchTrigger(Landroid/preference/SwitchPreference;Ljava/lang/String;Z)V

    goto :goto_0

    :cond_5
    const-string/jumbo v1, "LightNotification"

    const-string/jumbo v2, "No such bixby rule for LightNotification."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public performSwitchTrigger(Landroid/preference/SwitchPreference;Ljava/lang/String;Z)V
    .locals 3

    if-nez p1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/LightNotificationPreferenceFragment$2;->this$0:Lcom/samsung/android/settings/accessibility/LightNotificationPreferenceFragment;

    invoke-static {v1}, Lcom/samsung/android/settings/accessibility/LightNotificationPreferenceFragment;->-get0(Lcom/samsung/android/settings/accessibility/LightNotificationPreferenceFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v1

    if-eq p3, v1, :cond_2

    const/4 v0, 0x1

    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {p1, p3}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/LightNotificationPreferenceFragment$2;->this$0:Lcom/samsung/android/settings/accessibility/LightNotificationPreferenceFragment;

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Lcom/samsung/android/settings/accessibility/LightNotificationPreferenceFragment;->onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z

    :cond_1
    invoke-direct {p0, v0, p2, p3}, Lcom/samsung/android/settings/accessibility/LightNotificationPreferenceFragment$2;->requestNLG(ZLjava/lang/String;Z)V

    return-void

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public performSwitchTrigger(Z)V
    .locals 4

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/LightNotificationPreferenceFragment$2;->this$0:Lcom/samsung/android/settings/accessibility/LightNotificationPreferenceFragment;

    invoke-static {v1}, Lcom/samsung/android/settings/accessibility/LightNotificationPreferenceFragment;->-get2(Lcom/samsung/android/settings/accessibility/LightNotificationPreferenceFragment;)Landroid/preference/SwitchPreference;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/LightNotificationPreferenceFragment$2;->this$0:Lcom/samsung/android/settings/accessibility/LightNotificationPreferenceFragment;

    invoke-static {v1}, Lcom/samsung/android/settings/accessibility/LightNotificationPreferenceFragment;->-get1(Lcom/samsung/android/settings/accessibility/LightNotificationPreferenceFragment;)Landroid/preference/SwitchPreference;

    move-result-object v1

    if-nez v1, :cond_1

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/LightNotificationPreferenceFragment$2;->this$0:Lcom/samsung/android/settings/accessibility/LightNotificationPreferenceFragment;

    invoke-static {v1}, Lcom/samsung/android/settings/accessibility/LightNotificationPreferenceFragment;->-get0(Lcom/samsung/android/settings/accessibility/LightNotificationPreferenceFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    return-void

    :cond_1
    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/LightNotificationPreferenceFragment$2;->this$0:Lcom/samsung/android/settings/accessibility/LightNotificationPreferenceFragment;

    invoke-static {v1}, Lcom/samsung/android/settings/accessibility/LightNotificationPreferenceFragment;->-get2(Lcom/samsung/android/settings/accessibility/LightNotificationPreferenceFragment;)Landroid/preference/SwitchPreference;

    move-result-object v1

    invoke-virtual {v1}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v1

    if-ne v1, p1, :cond_2

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/LightNotificationPreferenceFragment$2;->this$0:Lcom/samsung/android/settings/accessibility/LightNotificationPreferenceFragment;

    invoke-static {v1}, Lcom/samsung/android/settings/accessibility/LightNotificationPreferenceFragment;->-get1(Lcom/samsung/android/settings/accessibility/LightNotificationPreferenceFragment;)Landroid/preference/SwitchPreference;

    move-result-object v1

    invoke-virtual {v1}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v1

    if-eq v1, p1, :cond_5

    :cond_2
    :goto_0
    if-eqz v0, :cond_4

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/LightNotificationPreferenceFragment$2;->this$0:Lcom/samsung/android/settings/accessibility/LightNotificationPreferenceFragment;

    invoke-static {v1}, Lcom/samsung/android/settings/accessibility/LightNotificationPreferenceFragment;->-get2(Lcom/samsung/android/settings/accessibility/LightNotificationPreferenceFragment;)Landroid/preference/SwitchPreference;

    move-result-object v1

    invoke-virtual {v1}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v1

    if-eq v1, p1, :cond_3

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/LightNotificationPreferenceFragment$2;->this$0:Lcom/samsung/android/settings/accessibility/LightNotificationPreferenceFragment;

    invoke-static {v1}, Lcom/samsung/android/settings/accessibility/LightNotificationPreferenceFragment;->-get2(Lcom/samsung/android/settings/accessibility/LightNotificationPreferenceFragment;)Landroid/preference/SwitchPreference;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/LightNotificationPreferenceFragment$2;->this$0:Lcom/samsung/android/settings/accessibility/LightNotificationPreferenceFragment;

    iget-object v2, p0, Lcom/samsung/android/settings/accessibility/LightNotificationPreferenceFragment$2;->this$0:Lcom/samsung/android/settings/accessibility/LightNotificationPreferenceFragment;

    invoke-static {v2}, Lcom/samsung/android/settings/accessibility/LightNotificationPreferenceFragment;->-get2(Lcom/samsung/android/settings/accessibility/LightNotificationPreferenceFragment;)Landroid/preference/SwitchPreference;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/settings/accessibility/LightNotificationPreferenceFragment;->onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z

    :cond_3
    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/LightNotificationPreferenceFragment$2;->this$0:Lcom/samsung/android/settings/accessibility/LightNotificationPreferenceFragment;

    invoke-static {v1}, Lcom/samsung/android/settings/accessibility/LightNotificationPreferenceFragment;->-get1(Lcom/samsung/android/settings/accessibility/LightNotificationPreferenceFragment;)Landroid/preference/SwitchPreference;

    move-result-object v1

    invoke-virtual {v1}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v1

    if-eq v1, p1, :cond_4

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/LightNotificationPreferenceFragment$2;->this$0:Lcom/samsung/android/settings/accessibility/LightNotificationPreferenceFragment;

    invoke-static {v1}, Lcom/samsung/android/settings/accessibility/LightNotificationPreferenceFragment;->-get1(Lcom/samsung/android/settings/accessibility/LightNotificationPreferenceFragment;)Landroid/preference/SwitchPreference;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/LightNotificationPreferenceFragment$2;->this$0:Lcom/samsung/android/settings/accessibility/LightNotificationPreferenceFragment;

    iget-object v2, p0, Lcom/samsung/android/settings/accessibility/LightNotificationPreferenceFragment$2;->this$0:Lcom/samsung/android/settings/accessibility/LightNotificationPreferenceFragment;

    invoke-static {v2}, Lcom/samsung/android/settings/accessibility/LightNotificationPreferenceFragment;->-get1(Lcom/samsung/android/settings/accessibility/LightNotificationPreferenceFragment;)Landroid/preference/SwitchPreference;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/settings/accessibility/LightNotificationPreferenceFragment;->onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z

    :cond_4
    const-string/jumbo v1, "LightNotification"

    invoke-direct {p0, v0, v1, p1}, Lcom/samsung/android/settings/accessibility/LightNotificationPreferenceFragment$2;->requestNLG(ZLjava/lang/String;Z)V

    return-void

    :cond_5
    const/4 v0, 0x0

    goto :goto_0
.end method
