.class Lcom/android/incallui/fragment/RTTFragment$5;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/incallui/fragment/RTTFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/fragment/RTTFragment;

.field final synthetic val$decorView:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/android/incallui/fragment/RTTFragment;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/fragment/RTTFragment$5;->this$0:Lcom/android/incallui/fragment/RTTFragment;

    iput-object p2, p0, Lcom/android/incallui/fragment/RTTFragment$5;->val$decorView:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 10

    const/4 v1, 0x1

    const/4 v2, 0x0

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iget-object v3, p0, Lcom/android/incallui/fragment/RTTFragment$5;->val$decorView:Landroid/view/View;

    invoke-virtual {v3, v0}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    iget v3, v0, Landroid/graphics/Rect;->bottom:I

    iget v0, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v3, v0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "displayHeight(): "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/incallui/fragment/RTTFragment$5;->val$decorView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "completeheight(): "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    int-to-double v6, v3

    int-to-double v8, v4

    div-double/2addr v6, v8

    const-wide v8, 0x3fe999999999999aL    # 0.8

    cmpl-double v0, v6, v8

    if-lez v0, :cond_1

    move v0, v1

    :goto_0
    iget-object v5, p0, Lcom/android/incallui/fragment/RTTFragment$5;->this$0:Lcom/android/incallui/fragment/RTTFragment;

    invoke-static {v5}, Lcom/android/incallui/fragment/RTTFragment;->access$000(Lcom/android/incallui/fragment/RTTFragment;)Z

    move-result v5

    if-eq v0, v5, :cond_0

    invoke-static {}, Lcom/android/incallui/UiAdapter;->getInstance()Lcom/android/incallui/UiAdapter;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/incallui/UiAdapter;->isShowMultiWindowMode()Z

    move-result v5

    if-nez v5, :cond_0

    invoke-static {}, Lcom/android/incallui/util/InCallUtils;->isMobileKeyboardCovered()Z

    move-result v5

    if-nez v5, :cond_0

    iget-object v5, p0, Lcom/android/incallui/fragment/RTTFragment$5;->this$0:Lcom/android/incallui/fragment/RTTFragment;

    invoke-static {v5, v0}, Lcom/android/incallui/fragment/RTTFragment;->access$002(Lcom/android/incallui/fragment/RTTFragment;Z)Z

    iget-object v0, p0, Lcom/android/incallui/fragment/RTTFragment$5;->this$0:Lcom/android/incallui/fragment/RTTFragment;

    invoke-static {v0}, Lcom/android/incallui/fragment/RTTFragment;->access$000(Lcom/android/incallui/fragment/RTTFragment;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "Keyboard shown"

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/incallui/fragment/RTTFragment$5;->this$0:Lcom/android/incallui/fragment/RTTFragment;

    invoke-static {v0, v1, v3, v4}, Lcom/android/incallui/fragment/RTTFragment;->access$100(Lcom/android/incallui/fragment/RTTFragment;ZII)V

    :cond_0
    :goto_1
    return-void

    :cond_1
    move v0, v2

    goto :goto_0

    :cond_2
    const-string v0, "Keyboard hidden"

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/incallui/fragment/RTTFragment$5;->this$0:Lcom/android/incallui/fragment/RTTFragment;

    invoke-static {v0, v2, v2, v2}, Lcom/android/incallui/fragment/RTTFragment;->access$100(Lcom/android/incallui/fragment/RTTFragment;ZII)V

    goto :goto_1
.end method
