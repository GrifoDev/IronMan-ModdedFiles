.class Lcom/android/incallui/agif/AgifImageManager$2;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/incallui/agif/AgifImageManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field initialPositionX:F

.field initialTouchX:F

.field final synthetic this$0:Lcom/android/incallui/agif/AgifImageManager;


# direct methods
.method constructor <init>(Lcom/android/incallui/agif/AgifImageManager;)V
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/agif/AgifImageManager$2;->this$0:Lcom/android/incallui/agif/AgifImageManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 7

    const/4 v6, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    :cond_0
    :goto_0
    return v1

    :pswitch_0
    iget-object v0, p0, Lcom/android/incallui/agif/AgifImageManager$2;->this$0:Lcom/android/incallui/agif/AgifImageManager;

    invoke-static {v0}, Lcom/android/incallui/agif/AgifImageManager;->access$300(Lcom/android/incallui/agif/AgifImageManager;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getX()F

    move-result v0

    iput v0, p0, Lcom/android/incallui/agif/AgifImageManager$2;->initialPositionX:F

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    iput v0, p0, Lcom/android/incallui/agif/AgifImageManager$2;->initialTouchX:F

    goto :goto_0

    :pswitch_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v3

    iget v4, p0, Lcom/android/incallui/agif/AgifImageManager$2;->initialTouchX:F

    sub-float/2addr v3, v4

    float-to-int v4, v3

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    if-lez v4, :cond_1

    int-to-float v4, v4

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v4, v5

    sub-float/2addr v0, v4

    :cond_1
    const/high16 v4, 0x3f000000    # 0.5f

    cmpg-float v4, v0, v4

    if-gez v4, :cond_3

    const/4 v0, 0x0

    cmpg-float v0, v3, v0

    if-gez v0, :cond_2

    move v0, v1

    :goto_1
    iget-object v3, p0, Lcom/android/incallui/agif/AgifImageManager$2;->this$0:Lcom/android/incallui/agif/AgifImageManager;

    iget-object v4, p0, Lcom/android/incallui/agif/AgifImageManager$2;->this$0:Lcom/android/incallui/agif/AgifImageManager;

    invoke-static {v4}, Lcom/android/incallui/agif/AgifImageManager;->access$300(Lcom/android/incallui/agif/AgifImageManager;)Landroid/view/View;

    move-result-object v4

    invoke-static {v3, v4, v0}, Lcom/android/incallui/agif/AgifImageManager;->access$400(Lcom/android/incallui/agif/AgifImageManager;Landroid/view/View;Z)V

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v0

    invoke-static {v0, v6, v2}, Lcom/android/incallui/util/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, v6}, Lcom/android/incallui/Call;->setAgifUri(Landroid/net/Uri;)V

    goto :goto_0

    :cond_2
    move v0, v2

    goto :goto_1

    :cond_3
    iget-object v2, p0, Lcom/android/incallui/agif/AgifImageManager$2;->this$0:Lcom/android/incallui/agif/AgifImageManager;

    invoke-static {v2}, Lcom/android/incallui/agif/AgifImageManager;->access$300(Lcom/android/incallui/agif/AgifImageManager;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/View;->setAlpha(F)V

    iget-object v0, p0, Lcom/android/incallui/agif/AgifImageManager$2;->this$0:Lcom/android/incallui/agif/AgifImageManager;

    invoke-static {v0}, Lcom/android/incallui/agif/AgifImageManager;->access$300(Lcom/android/incallui/agif/AgifImageManager;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget v2, p0, Lcom/android/incallui/agif/AgifImageManager$2;->initialPositionX:F

    add-float/2addr v2, v3

    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->x(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v4, 0x0

    invoke-virtual {v0, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    const-string v0, "AgifImageManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onTouch: deltaX-"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " getX()-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/incallui/agif/AgifImageManager$2;->this$0:Lcom/android/incallui/agif/AgifImageManager;

    invoke-static {v3}, Lcom/android/incallui/agif/AgifImageManager;->access$300(Lcom/android/incallui/agif/AgifImageManager;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getX()F

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/android/incallui/agif/AgifImageManager$2;->this$0:Lcom/android/incallui/agif/AgifImageManager;

    iget-object v2, p0, Lcom/android/incallui/agif/AgifImageManager$2;->this$0:Lcom/android/incallui/agif/AgifImageManager;

    invoke-static {v2}, Lcom/android/incallui/agif/AgifImageManager;->access$300(Lcom/android/incallui/agif/AgifImageManager;)Landroid/view/View;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/incallui/agif/AgifImageManager;->access$500(Lcom/android/incallui/agif/AgifImageManager;Landroid/view/View;)V

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method
