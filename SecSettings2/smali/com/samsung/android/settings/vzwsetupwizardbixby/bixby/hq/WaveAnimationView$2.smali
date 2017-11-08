.class Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/WaveAnimationView$2;
.super Ljava/lang/Object;
.source "WaveAnimationView.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/WaveAnimationView;->moveToTraget(JFJFJJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/WaveAnimationView;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/WaveAnimationView;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/WaveAnimationView$2;->this$0:Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/WaveAnimationView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/WaveAnimationView$2;->this$0:Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/WaveAnimationView;

    iget-object v1, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/WaveAnimationView$2;->this$0:Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/WaveAnimationView;

    iget-object v2, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/WaveAnimationView$2;->this$0:Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/WaveAnimationView;

    invoke-static {v2}, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/WaveAnimationView;->-get2(Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/WaveAnimationView;)F

    move-result v2

    invoke-static {v1, v2}, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/WaveAnimationView;->-set4(Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/WaveAnimationView;F)F

    move-result v1

    invoke-static {v0, v1}, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/WaveAnimationView;->-set2(Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/WaveAnimationView;F)F

    iget-object v0, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/WaveAnimationView$2;->this$0:Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/WaveAnimationView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/WaveAnimationView;->-set1(Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/WaveAnimationView;F)F

    iget-object v0, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/WaveAnimationView$2;->this$0:Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/WaveAnimationView;

    const/4 v1, 0x2

    new-array v1, v1, [F

    iget-object v2, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/WaveAnimationView$2;->this$0:Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/WaveAnimationView;

    invoke-static {v2}, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/WaveAnimationView;->-get5(Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/WaveAnimationView;)F

    move-result v2

    const/4 v3, 0x0

    aput v2, v1, v3

    iget-object v2, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/WaveAnimationView$2;->this$0:Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/WaveAnimationView;

    invoke-static {v2}, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/WaveAnimationView;->-get1(Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/WaveAnimationView;)F

    move-result v2

    const/4 v3, 0x1

    aput v2, v1, v3

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/WaveAnimationView;->-set0(Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/WaveAnimationView;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/WaveAnimationView$2;->this$0:Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/WaveAnimationView;

    invoke-static {v0}, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/WaveAnimationView;->-get0(Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/WaveAnimationView;)Landroid/animation/ValueAnimator;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/WaveAnimationView$2;->this$0:Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/WaveAnimationView;

    iget-wide v2, v1, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/WaveAnimationView;->mDuration2ndBezierY:J

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/WaveAnimationView$2;->this$0:Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/WaveAnimationView;

    invoke-static {v0}, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/WaveAnimationView;->-get0(Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/WaveAnimationView;)Landroid/animation/ValueAnimator;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/vi/interpolator/Elastic60;

    invoke-direct {v1}, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/vi/interpolator/Elastic60;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v0, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/WaveAnimationView$2;->this$0:Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/WaveAnimationView;

    invoke-static {v0}, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/WaveAnimationView;->-get0(Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/WaveAnimationView;)Landroid/animation/ValueAnimator;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/WaveAnimationView$2$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/WaveAnimationView$2$1;-><init>(Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/WaveAnimationView$2;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v0, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/WaveAnimationView$2;->this$0:Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/WaveAnimationView;

    invoke-static {v0}, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/WaveAnimationView;->-get0(Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/WaveAnimationView;)Landroid/animation/ValueAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method
