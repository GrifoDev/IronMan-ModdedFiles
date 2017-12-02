.class Lcom/android/incallui/InCallPresenter$8$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/incallui/InCallPresenter$8;->onSendRttSessionModifyRequest(IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/incallui/InCallPresenter$8;

.field final synthetic val$call:Lcom/android/incallui/Call;


# direct methods
.method constructor <init>(Lcom/android/incallui/InCallPresenter$8;Lcom/android/incallui/Call;)V
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/InCallPresenter$8$1;->this$1:Lcom/android/incallui/InCallPresenter$8;

    iput-object p2, p0, Lcom/android/incallui/InCallPresenter$8$1;->val$call:Lcom/android/incallui/Call;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    const/16 v4, 0x3ef

    iget-object v0, p0, Lcom/android/incallui/InCallPresenter$8$1;->this$1:Lcom/android/incallui/InCallPresenter$8;

    iget-object v0, v0, Lcom/android/incallui/InCallPresenter$8;->this$0:Lcom/android/incallui/InCallPresenter;

    invoke-static {v0}, Lcom/android/incallui/InCallPresenter;->access$000(Lcom/android/incallui/InCallPresenter;)Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/InCallPresenter$8$1;->this$1:Lcom/android/incallui/InCallPresenter$8;

    iget-object v0, v0, Lcom/android/incallui/InCallPresenter$8;->this$0:Lcom/android/incallui/InCallPresenter;

    invoke-static {v0}, Lcom/android/incallui/InCallPresenter;->access$000(Lcom/android/incallui/InCallPresenter;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "removeMsgOnRTTRequest"

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/android/incallui/InCallPresenter$8$1;->this$1:Lcom/android/incallui/InCallPresenter$8;

    iget-object v0, v0, Lcom/android/incallui/InCallPresenter$8;->this$0:Lcom/android/incallui/InCallPresenter;

    invoke-static {v0}, Lcom/android/incallui/InCallPresenter;->access$000(Lcom/android/incallui/InCallPresenter;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeMessages(I)V

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter$8$1;->val$call:Lcom/android/incallui/Call;

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getSecCall()Lcom/android/incallui/SecCall;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/SecCall;->getSecVideoState()I

    move-result v0

    invoke-static {v0}, Lcom/android/incallui/service/vt/SecVideoState;->modifyingToDummy(I)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/incallui/InCallPresenter$8$1;->val$call:Lcom/android/incallui/Call;

    invoke-virtual {v0}, Lcom/android/incallui/Call;->cancelModifyRequestDummy()V

    iget-object v0, p0, Lcom/android/incallui/InCallPresenter$8$1;->this$1:Lcom/android/incallui/InCallPresenter$8;

    iget-object v0, v0, Lcom/android/incallui/InCallPresenter$8;->this$0:Lcom/android/incallui/InCallPresenter;

    invoke-static {v0}, Lcom/android/incallui/InCallPresenter;->access$000(Lcom/android/incallui/InCallPresenter;)Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/InCallPresenter$8$1;->this$1:Lcom/android/incallui/InCallPresenter$8;

    iget-object v0, v0, Lcom/android/incallui/InCallPresenter$8;->this$0:Lcom/android/incallui/InCallPresenter;

    invoke-static {v0}, Lcom/android/incallui/InCallPresenter;->access$000(Lcom/android/incallui/InCallPresenter;)Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter$8$1;->this$1:Lcom/android/incallui/InCallPresenter$8;

    iget-object v0, v0, Lcom/android/incallui/InCallPresenter$8;->this$0:Lcom/android/incallui/InCallPresenter;

    invoke-virtual {v0}, Lcom/android/incallui/InCallPresenter;->onReceiveRttRequest()V

    goto :goto_0
.end method
