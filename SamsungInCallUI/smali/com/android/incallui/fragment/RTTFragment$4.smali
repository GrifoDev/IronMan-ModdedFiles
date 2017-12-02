.class Lcom/android/incallui/fragment/RTTFragment$4;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/incallui/fragment/RTTFragment;->startMTTimer()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/fragment/RTTFragment;


# direct methods
.method constructor <init>(Lcom/android/incallui/fragment/RTTFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/fragment/RTTFragment$4;->this$0:Lcom/android/incallui/fragment/RTTFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    iget-object v0, p0, Lcom/android/incallui/fragment/RTTFragment$4;->this$0:Lcom/android/incallui/fragment/RTTFragment;

    invoke-static {v0}, Lcom/android/incallui/fragment/RTTFragment;->access$600(Lcom/android/incallui/fragment/RTTFragment;)Landroid/os/CountDownTimer;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/fragment/RTTFragment$4;->this$0:Lcom/android/incallui/fragment/RTTFragment;

    invoke-static {v0}, Lcom/android/incallui/fragment/RTTFragment;->access$600(Lcom/android/incallui/fragment/RTTFragment;)Landroid/os/CountDownTimer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    :cond_0
    iget-object v6, p0, Lcom/android/incallui/fragment/RTTFragment$4;->this$0:Lcom/android/incallui/fragment/RTTFragment;

    new-instance v0, Lcom/android/incallui/fragment/RTTFragment$4$1;

    const-wide/16 v2, 0x1388

    const-wide/16 v4, 0x3e8

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/incallui/fragment/RTTFragment$4$1;-><init>(Lcom/android/incallui/fragment/RTTFragment$4;JJ)V

    invoke-static {v6, v0}, Lcom/android/incallui/fragment/RTTFragment;->access$602(Lcom/android/incallui/fragment/RTTFragment;Landroid/os/CountDownTimer;)Landroid/os/CountDownTimer;

    iget-object v0, p0, Lcom/android/incallui/fragment/RTTFragment$4;->this$0:Lcom/android/incallui/fragment/RTTFragment;

    invoke-static {v0}, Lcom/android/incallui/fragment/RTTFragment;->access$600(Lcom/android/incallui/fragment/RTTFragment;)Landroid/os/CountDownTimer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    return-void
.end method
