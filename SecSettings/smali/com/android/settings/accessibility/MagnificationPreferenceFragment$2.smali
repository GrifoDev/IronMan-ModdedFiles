.class Lcom/android/settings/accessibility/MagnificationPreferenceFragment$2;
.super Ljava/lang/Object;
.source "MagnificationPreferenceFragment.java"

# interfaces
.implements Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/accessibility/MagnificationPreferenceFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/accessibility/MagnificationPreferenceFragment;


# direct methods
.method constructor <init>(Lcom/android/settings/accessibility/MagnificationPreferenceFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/accessibility/MagnificationPreferenceFragment$2;->this$0:Lcom/android/settings/accessibility/MagnificationPreferenceFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStateReceived()V
    .locals 3

    iget-object v1, p0, Lcom/android/settings/accessibility/MagnificationPreferenceFragment$2;->this$0:Lcom/android/settings/accessibility/MagnificationPreferenceFragment;

    invoke-static {v1}, Lcom/android/settings/accessibility/MagnificationPreferenceFragment;->-get0(Lcom/android/settings/accessibility/MagnificationPreferenceFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getStateId()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "TripleTapScreenToMagnify"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/settings/accessibility/MagnificationPreferenceFragment$2;->this$0:Lcom/android/settings/accessibility/MagnificationPreferenceFragment;

    invoke-static {v1}, Lcom/android/settings/accessibility/MagnificationPreferenceFragment;->-get1(Lcom/android/settings/accessibility/MagnificationPreferenceFragment;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/accessibility/MagnificationPreferenceFragment$2;->this$0:Lcom/android/settings/accessibility/MagnificationPreferenceFragment;

    invoke-static {v1}, Lcom/android/settings/accessibility/MagnificationPreferenceFragment;->-get0(Lcom/android/settings/accessibility/MagnificationPreferenceFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/settings/accessibility/MagnificationPreferenceFragment$2;->this$0:Lcom/android/settings/accessibility/MagnificationPreferenceFragment;

    invoke-static {v1}, Lcom/android/settings/accessibility/MagnificationPreferenceFragment;->-get1(Lcom/android/settings/accessibility/MagnificationPreferenceFragment;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v7/preference/Preference;->performClick()V

    iget-object v1, p0, Lcom/android/settings/accessibility/MagnificationPreferenceFragment$2;->this$0:Lcom/android/settings/accessibility/MagnificationPreferenceFragment;

    invoke-static {v1}, Lcom/android/settings/accessibility/MagnificationPreferenceFragment;->-get0(Lcom/android/settings/accessibility/MagnificationPreferenceFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/settings/accessibility/MagnificationPreferenceFragment$2;->this$0:Lcom/android/settings/accessibility/MagnificationPreferenceFragment;

    invoke-static {v1}, Lcom/android/settings/accessibility/MagnificationPreferenceFragment;->-get0(Lcom/android/settings/accessibility/MagnificationPreferenceFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_1
    iget-object v1, p0, Lcom/android/settings/accessibility/MagnificationPreferenceFragment$2;->this$0:Lcom/android/settings/accessibility/MagnificationPreferenceFragment;

    invoke-static {v1}, Lcom/android/settings/accessibility/MagnificationPreferenceFragment;->-get0(Lcom/android/settings/accessibility/MagnificationPreferenceFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    :cond_2
    :goto_0
    return-void

    :cond_3
    const-string/jumbo v1, "TapButtonToMagnify"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/settings/accessibility/MagnificationPreferenceFragment$2;->this$0:Lcom/android/settings/accessibility/MagnificationPreferenceFragment;

    invoke-static {v1}, Lcom/android/settings/accessibility/MagnificationPreferenceFragment;->-get2(Lcom/android/settings/accessibility/MagnificationPreferenceFragment;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/android/settings/accessibility/MagnificationPreferenceFragment$2;->this$0:Lcom/android/settings/accessibility/MagnificationPreferenceFragment;

    invoke-static {v1}, Lcom/android/settings/accessibility/MagnificationPreferenceFragment;->-get0(Lcom/android/settings/accessibility/MagnificationPreferenceFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    return-void

    :cond_4
    iget-object v1, p0, Lcom/android/settings/accessibility/MagnificationPreferenceFragment$2;->this$0:Lcom/android/settings/accessibility/MagnificationPreferenceFragment;

    invoke-static {v1}, Lcom/android/settings/accessibility/MagnificationPreferenceFragment;->-get2(Lcom/android/settings/accessibility/MagnificationPreferenceFragment;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v7/preference/Preference;->performClick()V

    iget-object v1, p0, Lcom/android/settings/accessibility/MagnificationPreferenceFragment$2;->this$0:Lcom/android/settings/accessibility/MagnificationPreferenceFragment;

    invoke-static {v1}, Lcom/android/settings/accessibility/MagnificationPreferenceFragment;->-get0(Lcom/android/settings/accessibility/MagnificationPreferenceFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/android/settings/accessibility/MagnificationPreferenceFragment$2;->this$0:Lcom/android/settings/accessibility/MagnificationPreferenceFragment;

    invoke-static {v1}, Lcom/android/settings/accessibility/MagnificationPreferenceFragment;->-get0(Lcom/android/settings/accessibility/MagnificationPreferenceFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_5
    iget-object v1, p0, Lcom/android/settings/accessibility/MagnificationPreferenceFragment$2;->this$0:Lcom/android/settings/accessibility/MagnificationPreferenceFragment;

    invoke-static {v1}, Lcom/android/settings/accessibility/MagnificationPreferenceFragment;->-get0(Lcom/android/settings/accessibility/MagnificationPreferenceFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto :goto_0
.end method