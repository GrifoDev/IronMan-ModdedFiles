.class Lcom/android/incallui/fragment/RTTFragment$2$2;
.super Landroid/os/CountDownTimer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/incallui/fragment/RTTFragment$2;->afterTextChanged(Landroid/text/Editable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/incallui/fragment/RTTFragment$2;


# direct methods
.method constructor <init>(Lcom/android/incallui/fragment/RTTFragment$2;JJ)V
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/fragment/RTTFragment$2$2;->this$1:Lcom/android/incallui/fragment/RTTFragment$2;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 2

    const-string v0, "countdowntimer(): onFinish"

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/incallui/fragment/RTTFragment$2$2;->this$1:Lcom/android/incallui/fragment/RTTFragment$2;

    iget-object v0, v0, Lcom/android/incallui/fragment/RTTFragment$2;->this$0:Lcom/android/incallui/fragment/RTTFragment;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/incallui/fragment/RTTFragment;->access$400(Lcom/android/incallui/fragment/RTTFragment;Z)V

    iget-object v0, p0, Lcom/android/incallui/fragment/RTTFragment$2$2;->this$1:Lcom/android/incallui/fragment/RTTFragment$2;

    iget-object v0, v0, Lcom/android/incallui/fragment/RTTFragment$2;->this$0:Lcom/android/incallui/fragment/RTTFragment;

    invoke-static {v0}, Lcom/android/incallui/fragment/RTTFragment;->access$200(Lcom/android/incallui/fragment/RTTFragment;)Landroid/widget/EditText;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

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