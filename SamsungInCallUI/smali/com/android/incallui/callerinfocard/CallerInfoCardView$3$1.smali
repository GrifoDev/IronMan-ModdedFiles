.class Lcom/android/incallui/callerinfocard/CallerInfoCardView$3$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/incallui/callerinfocard/CallerInfoCardView$3;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/incallui/callerinfocard/CallerInfoCardView$3;


# direct methods
.method constructor <init>(Lcom/android/incallui/callerinfocard/CallerInfoCardView$3;)V
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView$3$1;->this$1:Lcom/android/incallui/callerinfocard/CallerInfoCardView$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView$3$1;->this$1:Lcom/android/incallui/callerinfocard/CallerInfoCardView$3;

    iget-object v0, v0, Lcom/android/incallui/callerinfocard/CallerInfoCardView$3;->this$0:Lcom/android/incallui/callerinfocard/CallerInfoCardView;

    invoke-static {v0}, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->access$700(Lcom/android/incallui/callerinfocard/CallerInfoCardView;)Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView$3$1;->this$1:Lcom/android/incallui/callerinfocard/CallerInfoCardView$3;

    iget-object v0, v0, Lcom/android/incallui/callerinfocard/CallerInfoCardView$3;->this$0:Lcom/android/incallui/callerinfocard/CallerInfoCardView;

    invoke-static {v0}, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->access$700(Lcom/android/incallui/callerinfocard/CallerInfoCardView;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView$3$1;->this$1:Lcom/android/incallui/callerinfocard/CallerInfoCardView$3;

    iget-object v0, v0, Lcom/android/incallui/callerinfocard/CallerInfoCardView$3;->this$0:Lcom/android/incallui/callerinfocard/CallerInfoCardView;

    invoke-static {v0}, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->access$700(Lcom/android/incallui/callerinfocard/CallerInfoCardView;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView$3$1;->this$1:Lcom/android/incallui/callerinfocard/CallerInfoCardView$3;

    iget-object v0, v0, Lcom/android/incallui/callerinfocard/CallerInfoCardView$3;->this$0:Lcom/android/incallui/callerinfocard/CallerInfoCardView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->access$702(Lcom/android/incallui/callerinfocard/CallerInfoCardView;Landroid/app/Dialog;)Landroid/app/Dialog;

    :cond_1
    return-void
.end method
