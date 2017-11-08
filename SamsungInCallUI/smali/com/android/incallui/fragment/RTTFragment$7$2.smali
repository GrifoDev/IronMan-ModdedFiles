.class Lcom/android/incallui/fragment/RTTFragment$7$2;
.super Landroid/os/CountDownTimer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/incallui/fragment/RTTFragment$7;->afterTextChanged(Landroid/text/Editable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/incallui/fragment/RTTFragment$7;


# direct methods
.method constructor <init>(Lcom/android/incallui/fragment/RTTFragment$7;JJ)V
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/fragment/RTTFragment$7$2;->this$1:Lcom/android/incallui/fragment/RTTFragment$7;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 2

    const-string v0, "countdowntimer(): onFinish"

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/incallui/fragment/RTTFragment$7$2;->this$1:Lcom/android/incallui/fragment/RTTFragment$7;

    iget-object v0, v0, Lcom/android/incallui/fragment/RTTFragment$7;->this$0:Lcom/android/incallui/fragment/RTTFragment;

    invoke-static {v0}, Lcom/android/incallui/fragment/RTTFragment;->access$400(Lcom/android/incallui/fragment/RTTFragment;)Lcom/android/incallui/rtt/ChatAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/rtt/ChatAdapter;->findMyLastRealTimePosition()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_2

    iget-object v1, p0, Lcom/android/incallui/fragment/RTTFragment$7$2;->this$1:Lcom/android/incallui/fragment/RTTFragment$7;

    iget-object v1, v1, Lcom/android/incallui/fragment/RTTFragment$7;->this$0:Lcom/android/incallui/fragment/RTTFragment;

    invoke-static {v1}, Lcom/android/incallui/fragment/RTTFragment;->access$400(Lcom/android/incallui/fragment/RTTFragment;)Lcom/android/incallui/rtt/ChatAdapter;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/incallui/rtt/ChatAdapter;->getItem(I)Lcom/android/incallui/rtt/ChatMessage;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/incallui/rtt/ChatMessage;->setRealTime(Z)V

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/fragment/RTTFragment$7$2;->this$1:Lcom/android/incallui/fragment/RTTFragment$7;

    iget-object v0, v0, Lcom/android/incallui/fragment/RTTFragment$7;->this$0:Lcom/android/incallui/fragment/RTTFragment;

    invoke-virtual {v0}, Lcom/android/incallui/fragment/RTTFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/fragment/RTTFragment$7$2;->this$1:Lcom/android/incallui/fragment/RTTFragment$7;

    iget-object v0, v0, Lcom/android/incallui/fragment/RTTFragment$7;->this$0:Lcom/android/incallui/fragment/RTTFragment;

    invoke-virtual {v0}, Lcom/android/incallui/fragment/RTTFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/RTTPresenter;

    const-string v1, "\r"

    invoke-virtual {v0, v1}, Lcom/android/incallui/RTTPresenter;->sendRttMessage(Ljava/lang/String;)V

    :cond_1
    iget-object v0, p0, Lcom/android/incallui/fragment/RTTFragment$7$2;->this$1:Lcom/android/incallui/fragment/RTTFragment$7;

    iget-object v0, v0, Lcom/android/incallui/fragment/RTTFragment$7;->this$0:Lcom/android/incallui/fragment/RTTFragment;

    invoke-static {v0}, Lcom/android/incallui/fragment/RTTFragment;->access$200(Lcom/android/incallui/fragment/RTTFragment;)Landroid/widget/EditText;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/incallui/fragment/RTTFragment$7$2;->this$1:Lcom/android/incallui/fragment/RTTFragment$7;

    iget-object v0, v0, Lcom/android/incallui/fragment/RTTFragment$7;->this$0:Lcom/android/incallui/fragment/RTTFragment;

    invoke-virtual {v0}, Lcom/android/incallui/fragment/RTTFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/incallui/fragment/RTTFragment$7$2;->this$1:Lcom/android/incallui/fragment/RTTFragment$7;

    iget-object v0, v0, Lcom/android/incallui/fragment/RTTFragment$7;->this$0:Lcom/android/incallui/fragment/RTTFragment;

    invoke-virtual {v0}, Lcom/android/incallui/fragment/RTTFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcom/android/incallui/fragment/RTTFragment$7$2$1;

    invoke-direct {v1, p0}, Lcom/android/incallui/fragment/RTTFragment$7$2$1;-><init>(Lcom/android/incallui/fragment/RTTFragment$7$2;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_2
    return-void
.end method

.method public onTick(J)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "countdowntimer(): millisUntilFinished"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method
