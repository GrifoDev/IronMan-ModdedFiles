.class Lcom/android/incallui/fragment/VoiceCallButtonFragment$9;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/incallui/fragment/VoiceCallButtonFragment;->updateRTTButtonFromMenu()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/fragment/VoiceCallButtonFragment;

.field final synthetic val$call:Lcom/android/incallui/Call;


# direct methods
.method constructor <init>(Lcom/android/incallui/fragment/VoiceCallButtonFragment;Lcom/android/incallui/Call;)V
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment$9;->this$0:Lcom/android/incallui/fragment/VoiceCallButtonFragment;

    iput-object p2, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment$9;->val$call:Lcom/android/incallui/Call;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    const/4 v1, 0x1

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/incallui/InCallPresenter;->setRttCapability(Z)V

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/incallui/InCallPresenter;->setTempRTT(Z)V

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment$9;->this$0:Lcom/android/incallui/fragment/VoiceCallButtonFragment;

    iget-object v1, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment$9;->val$call:Lcom/android/incallui/Call;

    invoke-virtual {v0, v1}, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->updateRTTButton(Lcom/android/incallui/Call;)V

    return-void
.end method
