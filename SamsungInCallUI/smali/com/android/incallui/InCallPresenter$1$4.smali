.class Lcom/android/incallui/InCallPresenter$1$4;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/incallui/InCallPresenter$1;->onSendRttSessionModifyResponse(IZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/incallui/InCallPresenter$1;

.field final synthetic val$result:Z


# direct methods
.method constructor <init>(Lcom/android/incallui/InCallPresenter$1;Z)V
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/InCallPresenter$1$4;->this$1:Lcom/android/incallui/InCallPresenter$1;

    iput-boolean p2, p0, Lcom/android/incallui/InCallPresenter$1$4;->val$result:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    const/4 v2, 0x0

    iget-boolean v0, p0, Lcom/android/incallui/InCallPresenter$1$4;->val$result:Z

    if-eqz v0, :cond_1

    const-string v0, "onSendRttSessionModifyResponse downgrade"

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/incallui/InCallPresenter$1$4;->this$1:Lcom/android/incallui/InCallPresenter$1;

    iget-object v0, v0, Lcom/android/incallui/InCallPresenter$1;->this$0:Lcom/android/incallui/InCallPresenter;

    invoke-static {v0}, Lcom/android/incallui/InCallPresenter;->access$000(Lcom/android/incallui/InCallPresenter;)Lcom/android/incallui/InCallActivity;

    move-result-object v0

    invoke-virtual {v0, v2, v2}, Lcom/android/incallui/InCallActivity;->displayRTT(ZZ)V

    iget-object v0, p0, Lcom/android/incallui/InCallPresenter$1$4;->this$1:Lcom/android/incallui/InCallPresenter$1;

    iget-object v0, v0, Lcom/android/incallui/InCallPresenter$1;->this$0:Lcom/android/incallui/InCallPresenter;

    invoke-static {v0}, Lcom/android/incallui/InCallPresenter;->access$000(Lcom/android/incallui/InCallPresenter;)Lcom/android/incallui/InCallActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/InCallActivity;->refreshButtonsForRtt()V

    iget-object v0, p0, Lcom/android/incallui/InCallPresenter$1$4;->this$1:Lcom/android/incallui/InCallPresenter$1;

    iget-object v0, v0, Lcom/android/incallui/InCallPresenter$1;->this$0:Lcom/android/incallui/InCallPresenter;

    invoke-virtual {v0}, Lcom/android/incallui/InCallPresenter;->getAudioMode()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    const-string v0, "onSendRttSessionModifyResponse speaker off"

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/incallui/InCallPresenter$1$4;->this$1:Lcom/android/incallui/InCallPresenter$1;

    iget-object v0, v0, Lcom/android/incallui/InCallPresenter$1;->this$0:Lcom/android/incallui/InCallPresenter;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/android/incallui/InCallPresenter;->setAudioMode(I)V

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter$1$4;->this$1:Lcom/android/incallui/InCallPresenter$1;

    iget-object v0, v0, Lcom/android/incallui/InCallPresenter$1;->this$0:Lcom/android/incallui/InCallPresenter;

    invoke-virtual {v0}, Lcom/android/incallui/InCallPresenter;->getTempRTT()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/InCallPresenter$1$4;->this$1:Lcom/android/incallui/InCallPresenter$1;

    iget-object v0, v0, Lcom/android/incallui/InCallPresenter$1;->this$0:Lcom/android/incallui/InCallPresenter;

    invoke-static {v0}, Lcom/android/incallui/InCallPresenter;->access$100(Lcom/android/incallui/InCallPresenter;)Lcom/android/incallui/service/ims/IMSManagerWrapper;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/incallui/service/ims/IMSManagerWrapper;->setRttMode(I)V

    :cond_1
    return-void
.end method
