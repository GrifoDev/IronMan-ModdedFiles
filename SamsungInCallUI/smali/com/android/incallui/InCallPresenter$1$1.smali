.class Lcom/android/incallui/InCallPresenter$1$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/incallui/InCallPresenter$1;->onSendRttSessionModifyRequest(IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/incallui/InCallPresenter$1;

.field final synthetic val$buttonPresenter:Lcom/android/incallui/CallButtonPresenter;

.field final synthetic val$call:Lcom/android/incallui/Call;


# direct methods
.method constructor <init>(Lcom/android/incallui/InCallPresenter$1;Lcom/android/incallui/CallButtonPresenter;Lcom/android/incallui/Call;)V
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/InCallPresenter$1$1;->this$1:Lcom/android/incallui/InCallPresenter$1;

    iput-object p2, p0, Lcom/android/incallui/InCallPresenter$1$1;->val$buttonPresenter:Lcom/android/incallui/CallButtonPresenter;

    iput-object p3, p0, Lcom/android/incallui/InCallPresenter$1$1;->val$call:Lcom/android/incallui/Call;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/android/incallui/InCallPresenter$1$1;->val$buttonPresenter:Lcom/android/incallui/CallButtonPresenter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/InCallPresenter$1$1;->val$buttonPresenter:Lcom/android/incallui/CallButtonPresenter;

    invoke-virtual {v0}, Lcom/android/incallui/CallButtonPresenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v0, "onSendRttSessionModifyRequest():at incall state"

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/incallui/InCallPresenter$1$1;->this$1:Lcom/android/incallui/InCallPresenter$1;

    iget-object v0, v0, Lcom/android/incallui/InCallPresenter$1;->this$0:Lcom/android/incallui/InCallPresenter;

    invoke-virtual {v0, v2}, Lcom/android/incallui/InCallPresenter;->setrequestedRTT(Z)V

    invoke-static {}, Lcom/android/incallui/InCallUISystemDB;->isRTTOn()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/android/incallui/InCallUISystemDB;->isRTTAutomaticModeOn()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/InCallPresenter$1$1;->val$buttonPresenter:Lcom/android/incallui/CallButtonPresenter;

    iget-object v1, p0, Lcom/android/incallui/InCallPresenter$1$1;->val$call:Lcom/android/incallui/Call;

    invoke-virtual {v1}, Lcom/android/incallui/Call;->getSecCall()Lcom/android/incallui/SecCall;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/SecCall;->getSessionId()I

    move-result v1

    invoke-virtual {v0, v1, v2}, Lcom/android/incallui/CallButtonPresenter;->sendResponseImsRTTUpgrade(IZ)V

    iget-object v0, p0, Lcom/android/incallui/InCallPresenter$1$1;->val$buttonPresenter:Lcom/android/incallui/CallButtonPresenter;

    invoke-virtual {v0}, Lcom/android/incallui/CallButtonPresenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/CallButtonUi;

    invoke-interface {v0}, Lcom/android/incallui/CallButtonUi;->rttAutomatic()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter$1$1;->val$buttonPresenter:Lcom/android/incallui/CallButtonPresenter;

    invoke-virtual {v0}, Lcom/android/incallui/CallButtonPresenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/CallButtonUi;

    invoke-interface {v0}, Lcom/android/incallui/CallButtonUi;->rttRequested()V

    goto :goto_0
.end method
