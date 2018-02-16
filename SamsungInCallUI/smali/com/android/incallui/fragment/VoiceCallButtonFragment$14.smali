.class Lcom/android/incallui/fragment/VoiceCallButtonFragment$14;
.super Landroid/os/Handler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/incallui/fragment/VoiceCallButtonFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/fragment/VoiceCallButtonFragment;


# direct methods
.method constructor <init>(Lcom/android/incallui/fragment/VoiceCallButtonFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment$14;->this$0:Lcom/android/incallui/fragment/VoiceCallButtonFragment;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    const-string v0, "EVENT_DISPLAY_RTT"

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment$14;->this$0:Lcom/android/incallui/fragment/VoiceCallButtonFragment;

    invoke-static {v0}, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->access$900(Lcom/android/incallui/fragment/VoiceCallButtonFragment;)V

    goto :goto_0

    :pswitch_1
    const-string v0, "EVENT_RTT_EMERGENCY"

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment$14;->this$0:Lcom/android/incallui/fragment/VoiceCallButtonFragment;

    invoke-static {v0}, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->access$1000(Lcom/android/incallui/fragment/VoiceCallButtonFragment;)V

    goto :goto_0

    :pswitch_2
    const-string v0, "RECORD_BUTTON_REQUEST_FOCUS"

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment$14;->this$0:Lcom/android/incallui/fragment/VoiceCallButtonFragment;

    invoke-virtual {v0}, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->setFocusOnRecordBtn()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x3e9
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
