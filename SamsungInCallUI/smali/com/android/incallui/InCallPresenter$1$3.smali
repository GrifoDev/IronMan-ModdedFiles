.class Lcom/android/incallui/InCallPresenter$1$3;
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

.field final synthetic val$buttonPresenter:Lcom/android/incallui/CallButtonPresenter;

.field final synthetic val$result:Z


# direct methods
.method constructor <init>(Lcom/android/incallui/InCallPresenter$1;Lcom/android/incallui/CallButtonPresenter;Z)V
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/InCallPresenter$1$3;->this$1:Lcom/android/incallui/InCallPresenter$1;

    iput-object p2, p0, Lcom/android/incallui/InCallPresenter$1$3;->val$buttonPresenter:Lcom/android/incallui/CallButtonPresenter;

    iput-boolean p3, p0, Lcom/android/incallui/InCallPresenter$1$3;->val$result:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/android/incallui/InCallPresenter$1$3;->val$buttonPresenter:Lcom/android/incallui/CallButtonPresenter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/InCallPresenter$1$3;->val$buttonPresenter:Lcom/android/incallui/CallButtonPresenter;

    invoke-virtual {v0}, Lcom/android/incallui/CallButtonPresenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/InCallPresenter$1$3;->val$buttonPresenter:Lcom/android/incallui/CallButtonPresenter;

    iget-boolean v1, p0, Lcom/android/incallui/InCallPresenter$1$3;->val$result:Z

    invoke-virtual {v0, v1}, Lcom/android/incallui/CallButtonPresenter;->notifyOnUpgradeRTT(Z)V

    :cond_0
    return-void
.end method
