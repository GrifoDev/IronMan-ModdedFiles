.class Lcom/android/server/fingerprint/SemFingerprintMaskView$6;
.super Ljava/lang/Object;
.source "SemFingerprintMaskView.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/fingerprint/SemFingerprintMaskView;->showAnimationView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/fingerprint/SemFingerprintMaskView;


# direct methods
.method constructor <init>(Lcom/android/server/fingerprint/SemFingerprintMaskView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/fingerprint/SemFingerprintMaskView$6;->this$0:Lcom/android/server/fingerprint/SemFingerprintMaskView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 13

    const/4 v12, 0x0

    const-wide/high16 v10, 0x4000000000000000L    # 2.0

    new-instance v5, Landroid/graphics/Point;

    invoke-direct {v5}, Landroid/graphics/Point;-><init>()V

    const/4 v3, 0x0

    const/4 v4, 0x0

    :try_start_0
    iget-object v6, p0, Lcom/android/server/fingerprint/SemFingerprintMaskView$6;->this$0:Lcom/android/server/fingerprint/SemFingerprintMaskView;

    invoke-static {v6}, Lcom/android/server/fingerprint/SemFingerprintMaskView;->-get13(Lcom/android/server/fingerprint/SemFingerprintMaskView;)Landroid/view/WindowManager;

    move-result-object v6

    invoke-interface {v6}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    iget v3, v5, Landroid/graphics/Point;->y:I

    iget v4, v5, Landroid/graphics/Point;->x:I
    :try_end_0
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v6, p0, Lcom/android/server/fingerprint/SemFingerprintMaskView$6;->this$0:Lcom/android/server/fingerprint/SemFingerprintMaskView;

    invoke-static {v6}, Lcom/android/server/fingerprint/SemFingerprintMaskView;->-get13(Lcom/android/server/fingerprint/SemFingerprintMaskView;)Landroid/view/WindowManager;

    move-result-object v6

    invoke-interface {v6}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/Display;->getRotation()I

    move-result v2

    iget-object v6, p0, Lcom/android/server/fingerprint/SemFingerprintMaskView$6;->this$0:Lcom/android/server/fingerprint/SemFingerprintMaskView;

    invoke-static {v6}, Lcom/android/server/fingerprint/SemFingerprintMaskView;->-get2(Lcom/android/server/fingerprint/SemFingerprintMaskView;)Lcom/android/server/fingerprint/SemFingerUnlockEffect;

    move-result-object v6

    if-nez v6, :cond_0

    return-void

    :catch_0
    move-exception v1

    const-string/jumbo v6, "FingerprintService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "getScreenSize exception : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const/4 v0, 0x0

    packed-switch v2, :pswitch_data_0

    :goto_0
    iget-object v6, p0, Lcom/android/server/fingerprint/SemFingerprintMaskView$6;->this$0:Lcom/android/server/fingerprint/SemFingerprintMaskView;

    invoke-static {v6}, Lcom/android/server/fingerprint/SemFingerprintMaskView;->-get13(Lcom/android/server/fingerprint/SemFingerprintMaskView;)Landroid/view/WindowManager;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/fingerprint/SemFingerprintMaskView$6;->this$0:Lcom/android/server/fingerprint/SemFingerprintMaskView;

    invoke-static {v7}, Lcom/android/server/fingerprint/SemFingerprintMaskView;->-get2(Lcom/android/server/fingerprint/SemFingerprintMaskView;)Lcom/android/server/fingerprint/SemFingerUnlockEffect;

    move-result-object v7

    iget-object v8, p0, Lcom/android/server/fingerprint/SemFingerprintMaskView$6;->this$0:Lcom/android/server/fingerprint/SemFingerprintMaskView;

    invoke-static {v8}, Lcom/android/server/fingerprint/SemFingerprintMaskView;->-get1(Lcom/android/server/fingerprint/SemFingerprintMaskView;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v8

    invoke-interface {v6, v7, v8}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v6, p0, Lcom/android/server/fingerprint/SemFingerprintMaskView$6;->this$0:Lcom/android/server/fingerprint/SemFingerprintMaskView;

    invoke-static {v6}, Lcom/android/server/fingerprint/SemFingerprintMaskView;->-get2(Lcom/android/server/fingerprint/SemFingerprintMaskView;)Lcom/android/server/fingerprint/SemFingerUnlockEffect;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/server/fingerprint/SemFingerUnlockEffect;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v6

    invoke-virtual {v6, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void

    :pswitch_0
    div-int/lit8 v6, v3, 0x2

    iget-object v7, p0, Lcom/android/server/fingerprint/SemFingerprintMaskView$6;->this$0:Lcom/android/server/fingerprint/SemFingerprintMaskView;

    invoke-static {v7}, Lcom/android/server/fingerprint/SemFingerprintMaskView;->-get11(Lcom/android/server/fingerprint/SemFingerprintMaskView;)F

    move-result v7

    float-to-int v7, v7

    sub-int/2addr v6, v7

    iget-object v7, p0, Lcom/android/server/fingerprint/SemFingerprintMaskView$6;->this$0:Lcom/android/server/fingerprint/SemFingerprintMaskView;

    invoke-static {v7}, Lcom/android/server/fingerprint/SemFingerprintMaskView;->-get9(Lcom/android/server/fingerprint/SemFingerprintMaskView;)F

    move-result v7

    float-to-double v8, v7

    div-double/2addr v8, v10

    double-to-int v7, v8

    sub-int v0, v6, v7

    iget-object v6, p0, Lcom/android/server/fingerprint/SemFingerprintMaskView$6;->this$0:Lcom/android/server/fingerprint/SemFingerprintMaskView;

    invoke-static {v6}, Lcom/android/server/fingerprint/SemFingerprintMaskView;->-get1(Lcom/android/server/fingerprint/SemFingerprintMaskView;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v6

    iput v0, v6, Landroid/view/WindowManager$LayoutParams;->y:I

    iget-object v6, p0, Lcom/android/server/fingerprint/SemFingerprintMaskView$6;->this$0:Lcom/android/server/fingerprint/SemFingerprintMaskView;

    invoke-static {v6}, Lcom/android/server/fingerprint/SemFingerprintMaskView;->-get1(Lcom/android/server/fingerprint/SemFingerprintMaskView;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v6

    iput v12, v6, Landroid/view/WindowManager$LayoutParams;->x:I

    goto :goto_0

    :pswitch_1
    div-int/lit8 v6, v4, 0x2

    iget-object v7, p0, Lcom/android/server/fingerprint/SemFingerprintMaskView$6;->this$0:Lcom/android/server/fingerprint/SemFingerprintMaskView;

    invoke-static {v7}, Lcom/android/server/fingerprint/SemFingerprintMaskView;->-get11(Lcom/android/server/fingerprint/SemFingerprintMaskView;)F

    move-result v7

    float-to-int v7, v7

    sub-int/2addr v6, v7

    iget-object v7, p0, Lcom/android/server/fingerprint/SemFingerprintMaskView$6;->this$0:Lcom/android/server/fingerprint/SemFingerprintMaskView;

    invoke-static {v7}, Lcom/android/server/fingerprint/SemFingerprintMaskView;->-get9(Lcom/android/server/fingerprint/SemFingerprintMaskView;)F

    move-result v7

    float-to-double v8, v7

    div-double/2addr v8, v10

    double-to-int v7, v8

    sub-int v0, v6, v7

    iget-object v6, p0, Lcom/android/server/fingerprint/SemFingerprintMaskView$6;->this$0:Lcom/android/server/fingerprint/SemFingerprintMaskView;

    invoke-static {v6}, Lcom/android/server/fingerprint/SemFingerprintMaskView;->-get1(Lcom/android/server/fingerprint/SemFingerprintMaskView;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v6

    iput v0, v6, Landroid/view/WindowManager$LayoutParams;->x:I

    iget-object v6, p0, Lcom/android/server/fingerprint/SemFingerprintMaskView$6;->this$0:Lcom/android/server/fingerprint/SemFingerprintMaskView;

    invoke-static {v6}, Lcom/android/server/fingerprint/SemFingerprintMaskView;->-get1(Lcom/android/server/fingerprint/SemFingerprintMaskView;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v6

    iput v12, v6, Landroid/view/WindowManager$LayoutParams;->y:I

    goto :goto_0

    :pswitch_2
    iget-object v6, p0, Lcom/android/server/fingerprint/SemFingerprintMaskView$6;->this$0:Lcom/android/server/fingerprint/SemFingerprintMaskView;

    invoke-static {v6}, Lcom/android/server/fingerprint/SemFingerprintMaskView;->-get11(Lcom/android/server/fingerprint/SemFingerprintMaskView;)F

    move-result v6

    float-to-int v6, v6

    iget-object v7, p0, Lcom/android/server/fingerprint/SemFingerprintMaskView$6;->this$0:Lcom/android/server/fingerprint/SemFingerprintMaskView;

    invoke-static {v7}, Lcom/android/server/fingerprint/SemFingerprintMaskView;->-get9(Lcom/android/server/fingerprint/SemFingerprintMaskView;)F

    move-result v7

    float-to-double v8, v7

    div-double/2addr v8, v10

    double-to-int v7, v8

    add-int/2addr v6, v7

    div-int/lit8 v7, v4, 0x2

    sub-int v0, v6, v7

    iget-object v6, p0, Lcom/android/server/fingerprint/SemFingerprintMaskView$6;->this$0:Lcom/android/server/fingerprint/SemFingerprintMaskView;

    invoke-static {v6}, Lcom/android/server/fingerprint/SemFingerprintMaskView;->-get1(Lcom/android/server/fingerprint/SemFingerprintMaskView;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v6

    iput v0, v6, Landroid/view/WindowManager$LayoutParams;->x:I

    iget-object v6, p0, Lcom/android/server/fingerprint/SemFingerprintMaskView$6;->this$0:Lcom/android/server/fingerprint/SemFingerprintMaskView;

    invoke-static {v6}, Lcom/android/server/fingerprint/SemFingerprintMaskView;->-get1(Lcom/android/server/fingerprint/SemFingerprintMaskView;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v6

    iput v12, v6, Landroid/view/WindowManager$LayoutParams;->y:I

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
