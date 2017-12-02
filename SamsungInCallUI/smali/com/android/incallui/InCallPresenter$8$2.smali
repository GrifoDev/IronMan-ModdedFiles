.class Lcom/android/incallui/InCallPresenter$8$2;
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

.field final synthetic val$buttonPresenter:Lcom/android/incallui/CallButtonPresenter;

.field final synthetic val$call:Lcom/android/incallui/Call;

.field final synthetic val$name:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/incallui/InCallPresenter$8;Lcom/android/incallui/CallButtonPresenter;Ljava/lang/String;Lcom/android/incallui/Call;)V
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/InCallPresenter$8$2;->this$1:Lcom/android/incallui/InCallPresenter$8;

    iput-object p2, p0, Lcom/android/incallui/InCallPresenter$8$2;->val$buttonPresenter:Lcom/android/incallui/CallButtonPresenter;

    iput-object p3, p0, Lcom/android/incallui/InCallPresenter$8$2;->val$name:Ljava/lang/String;

    iput-object p4, p0, Lcom/android/incallui/InCallPresenter$8$2;->val$call:Lcom/android/incallui/Call;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/android/incallui/InCallPresenter$8$2;->val$buttonPresenter:Lcom/android/incallui/CallButtonPresenter;

    if-eqz v0, :cond_0

    const-string v0, "onSendRttSessionModifyRequest downgrade"

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/incallui/InCallPresenter$8$2;->val$name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/InCallPresenter$8$2;->this$1:Lcom/android/incallui/InCallPresenter$8;

    iget-object v1, v1, Lcom/android/incallui/InCallPresenter$8;->this$0:Lcom/android/incallui/InCallPresenter;

    invoke-static {v1}, Lcom/android/incallui/InCallPresenter;->access$100(Lcom/android/incallui/InCallPresenter;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f09065b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/InCallPresenter$8$2;->this$1:Lcom/android/incallui/InCallPresenter$8;

    iget-object v1, v1, Lcom/android/incallui/InCallPresenter$8;->this$0:Lcom/android/incallui/InCallPresenter;

    invoke-static {v1}, Lcom/android/incallui/InCallPresenter;->access$100(Lcom/android/incallui/InCallPresenter;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    iget-object v0, p0, Lcom/android/incallui/InCallPresenter$8$2;->this$1:Lcom/android/incallui/InCallPresenter$8;

    iget-object v0, v0, Lcom/android/incallui/InCallPresenter$8;->this$0:Lcom/android/incallui/InCallPresenter;

    invoke-virtual {v0, v3}, Lcom/android/incallui/InCallPresenter;->setrequestedRTT(Z)V

    iget-object v0, p0, Lcom/android/incallui/InCallPresenter$8$2;->val$buttonPresenter:Lcom/android/incallui/CallButtonPresenter;

    iget-object v1, p0, Lcom/android/incallui/InCallPresenter$8$2;->val$call:Lcom/android/incallui/Call;

    invoke-virtual {v1}, Lcom/android/incallui/Call;->getSecCall()Lcom/android/incallui/SecCall;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/SecCall;->getSessionId()I

    move-result v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/incallui/CallButtonPresenter;->sendResponseImsRTTUpgrade(IZ)V

    iget-object v0, p0, Lcom/android/incallui/InCallPresenter$8$2;->this$1:Lcom/android/incallui/InCallPresenter$8;

    iget-object v0, v0, Lcom/android/incallui/InCallPresenter$8;->this$0:Lcom/android/incallui/InCallPresenter;

    invoke-static {v0}, Lcom/android/incallui/InCallPresenter;->access$500(Lcom/android/incallui/InCallPresenter;)Lcom/android/incallui/InCallActivity;

    move-result-object v0

    invoke-virtual {v0, v3, v3}, Lcom/android/incallui/InCallActivity;->displayRTT(ZZ)V

    iget-object v0, p0, Lcom/android/incallui/InCallPresenter$8$2;->this$1:Lcom/android/incallui/InCallPresenter$8;

    iget-object v0, v0, Lcom/android/incallui/InCallPresenter$8;->this$0:Lcom/android/incallui/InCallPresenter;

    invoke-static {v0}, Lcom/android/incallui/InCallPresenter;->access$500(Lcom/android/incallui/InCallPresenter;)Lcom/android/incallui/InCallActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/InCallActivity;->refreshButtonsForRtt()V

    iget-object v0, p0, Lcom/android/incallui/InCallPresenter$8$2;->this$1:Lcom/android/incallui/InCallPresenter$8;

    iget-object v0, v0, Lcom/android/incallui/InCallPresenter$8;->this$0:Lcom/android/incallui/InCallPresenter;

    invoke-virtual {v0}, Lcom/android/incallui/InCallPresenter;->getTempRTT()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/InCallPresenter$8$2;->this$1:Lcom/android/incallui/InCallPresenter$8;

    iget-object v0, v0, Lcom/android/incallui/InCallPresenter$8;->this$0:Lcom/android/incallui/InCallPresenter;

    invoke-virtual {v0, v3}, Lcom/android/incallui/InCallPresenter;->setRttCapability(Z)V

    iget-object v0, p0, Lcom/android/incallui/InCallPresenter$8$2;->this$1:Lcom/android/incallui/InCallPresenter$8;

    iget-object v0, v0, Lcom/android/incallui/InCallPresenter$8;->this$0:Lcom/android/incallui/InCallPresenter;

    invoke-virtual {v0, v3}, Lcom/android/incallui/InCallPresenter;->setTempRTT(Z)V

    :cond_0
    return-void
.end method
