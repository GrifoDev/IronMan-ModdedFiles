.class Lcom/android/incallui/fragment/VoiceCallButtonFragment$4;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/incallui/fragment/VoiceCallButtonFragment;->showSwitchCallButton(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/fragment/VoiceCallButtonFragment;

.field final synthetic val$fAvailablePSVT:Z

.field final synthetic val$fShow:Z


# direct methods
.method constructor <init>(Lcom/android/incallui/fragment/VoiceCallButtonFragment;ZZ)V
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment$4;->this$0:Lcom/android/incallui/fragment/VoiceCallButtonFragment;

    iput-boolean p2, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment$4;->val$fAvailablePSVT:Z

    iput-boolean p3, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment$4;->val$fShow:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/16 v3, 0x8

    const-string v0, "VoiceCallButtonFragment"

    const-string v4, "runOnUiThread run()"

    invoke-static {v0, v4, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v0, "show_switch_icon_in_button"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment$4;->val$fAvailablePSVT:Z

    if-nez v0, :cond_4

    :cond_0
    const-string v0, "VoiceCallButtonFragment"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Code returning = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment$4;->val$fAvailablePSVT:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment$4;->this$0:Lcom/android/incallui/fragment/VoiceCallButtonFragment;

    iget-object v0, v0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mSwitchCallButtonStub:Landroid/view/ViewStub;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment$4;->this$0:Lcom/android/incallui/fragment/VoiceCallButtonFragment;

    iget-object v0, v0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mSwitchCallButtonStub:Landroid/view/ViewStub;

    invoke-virtual {v0, v3}, Landroid/view/ViewStub;->setVisibility(I)V

    :cond_1
    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment$4;->this$0:Lcom/android/incallui/fragment/VoiceCallButtonFragment;

    iget-object v0, v0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mSwitchCallButton:Lcom/android/incallui/widget/SecVoiceButton;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment$4;->this$0:Lcom/android/incallui/fragment/VoiceCallButtonFragment;

    iget-object v0, v0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mSwitchCallButton:Lcom/android/incallui/widget/SecVoiceButton;

    invoke-virtual {v0, v3}, Lcom/android/incallui/widget/SecVoiceButton;->setVisibility(I)V

    :cond_2
    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment$4;->this$0:Lcom/android/incallui/fragment/VoiceCallButtonFragment;

    iget-object v0, v0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mExtraVolumeButton:Landroid/widget/ToggleButton;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment$4;->this$0:Lcom/android/incallui/fragment/VoiceCallButtonFragment;

    iget-object v0, v0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mExtraVolumeButton:Landroid/widget/ToggleButton;

    invoke-virtual {v0, v2}, Landroid/widget/ToggleButton;->setVisibility(I)V

    :cond_3
    :goto_0
    return-void

    :cond_4
    const-string v0, "VoiceCallButtonFragment"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "showSwitchCallButton show = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment$4;->val$fShow:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-static {}, Lcom/android/incallui/secrcs/RcsShareUI;->getInstance()Lcom/android/incallui/secrcs/RcsShareUI;

    move-result-object v4

    iget-boolean v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment$4;->val$fShow:Z

    if-nez v0, :cond_5

    move v0, v1

    :goto_1
    invoke-virtual {v4, v0}, Lcom/android/incallui/secrcs/RcsShareUI;->setNoShowVolumeAvailable(Z)V

    invoke-static {}, Lcom/android/incallui/secrcs/RcsShareUI;->getInstance()Lcom/android/incallui/secrcs/RcsShareUI;

    sget-boolean v0, Lcom/android/incallui/secrcs/RcsShareUI;->mIsSelfCapable:Z

    if-eqz v0, :cond_6

    invoke-static {}, Lcom/android/incallui/secrcs/RcsShareUI;->getInstance()Lcom/android/incallui/secrcs/RcsShareUI;

    sget-boolean v0, Lcom/android/incallui/secrcs/RcsShareUI;->mIsActiveCall:Z

    if-eqz v0, :cond_6

    const-string v0, "VoiceCallButtonFragment"

    const-string v2, "extraVolume removed because RCS CALL"

    invoke-static {v0, v2, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment$4;->this$0:Lcom/android/incallui/fragment/VoiceCallButtonFragment;

    iget-object v0, v0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mExtraVolumeButton:Landroid/widget/ToggleButton;

    invoke-virtual {v0, v3}, Landroid/widget/ToggleButton;->setVisibility(I)V

    goto :goto_0

    :cond_5
    move v0, v2

    goto :goto_1

    :cond_6
    invoke-static {}, Lcom/android/incallui/secrcs/RcsShareUI;->getInstance()Lcom/android/incallui/secrcs/RcsShareUI;

    sget-boolean v0, Lcom/android/incallui/secrcs/RcsShareUI;->mIsSelfCapable:Z

    if-nez v0, :cond_c

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment$4;->this$0:Lcom/android/incallui/fragment/VoiceCallButtonFragment;

    iget-object v0, v0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mSwitchCallButtonStub:Landroid/view/ViewStub;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment$4;->this$0:Lcom/android/incallui/fragment/VoiceCallButtonFragment;

    iget-object v1, v0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mSwitchCallButtonStub:Landroid/view/ViewStub;

    iget-boolean v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment$4;->val$fShow:Z

    if-eqz v0, :cond_9

    move v0, v2

    :goto_2
    invoke-virtual {v1, v0}, Landroid/view/ViewStub;->setVisibility(I)V

    :cond_7
    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment$4;->this$0:Lcom/android/incallui/fragment/VoiceCallButtonFragment;

    iget-object v0, v0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mSwitchCallButton:Lcom/android/incallui/widget/SecVoiceButton;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment$4;->this$0:Lcom/android/incallui/fragment/VoiceCallButtonFragment;

    iget-object v1, v0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mSwitchCallButton:Lcom/android/incallui/widget/SecVoiceButton;

    iget-boolean v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment$4;->val$fShow:Z

    if-eqz v0, :cond_a

    move v0, v2

    :goto_3
    invoke-virtual {v1, v0}, Lcom/android/incallui/widget/SecVoiceButton;->setVisibility(I)V

    :cond_8
    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment$4;->this$0:Lcom/android/incallui/fragment/VoiceCallButtonFragment;

    iget-object v0, v0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mExtraVolumeButton:Landroid/widget/ToggleButton;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment$4;->this$0:Lcom/android/incallui/fragment/VoiceCallButtonFragment;

    iget-object v0, v0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mExtraVolumeButton:Landroid/widget/ToggleButton;

    iget-boolean v1, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment$4;->val$fShow:Z

    if-eqz v1, :cond_b

    :goto_4
    invoke-virtual {v0, v3}, Landroid/widget/ToggleButton;->setVisibility(I)V

    goto/16 :goto_0

    :cond_9
    move v0, v3

    goto :goto_2

    :cond_a
    move v0, v3

    goto :goto_3

    :cond_b
    move v3, v2

    goto :goto_4

    :cond_c
    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment$4;->this$0:Lcom/android/incallui/fragment/VoiceCallButtonFragment;

    iget-object v0, v0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mSwitchCallButtonStub:Landroid/view/ViewStub;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment$4;->this$0:Lcom/android/incallui/fragment/VoiceCallButtonFragment;

    iget-object v0, v0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mSwitchCallButtonStub:Landroid/view/ViewStub;

    invoke-virtual {v0, v3}, Landroid/view/ViewStub;->setVisibility(I)V

    :cond_d
    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment$4;->this$0:Lcom/android/incallui/fragment/VoiceCallButtonFragment;

    iget-object v0, v0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mSwitchCallButton:Lcom/android/incallui/widget/SecVoiceButton;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment$4;->this$0:Lcom/android/incallui/fragment/VoiceCallButtonFragment;

    iget-object v0, v0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mSwitchCallButton:Lcom/android/incallui/widget/SecVoiceButton;

    invoke-virtual {v0, v3}, Lcom/android/incallui/widget/SecVoiceButton;->setVisibility(I)V

    :cond_e
    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment$4;->this$0:Lcom/android/incallui/fragment/VoiceCallButtonFragment;

    iget-object v0, v0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mExtraVolumeButton:Landroid/widget/ToggleButton;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment$4;->this$0:Lcom/android/incallui/fragment/VoiceCallButtonFragment;

    iget-object v0, v0, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mExtraVolumeButton:Landroid/widget/ToggleButton;

    invoke-virtual {v0, v2}, Landroid/widget/ToggleButton;->setVisibility(I)V

    goto/16 :goto_0
.end method
