.class Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/WaveAnimationView$3;
.super Ljava/lang/Object;
.source "WaveAnimationView.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


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

    iput-object p1, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/WaveAnimationView$3;->this$0:Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/WaveAnimationView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 3

    iget-object v2, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/WaveAnimationView$3;->this$0:Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/WaveAnimationView;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-static {v2, v1}, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/WaveAnimationView;->-set6(Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/WaveAnimationView;F)F

    iget-object v1, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/WaveAnimationView$3;->this$0:Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/WaveAnimationView;

    invoke-static {v1}, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/WaveAnimationView;->-get7(Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/WaveAnimationView;)F

    move-result v1

    iget-object v2, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/WaveAnimationView$3;->this$0:Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/WaveAnimationView;

    invoke-static {v2}, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/WaveAnimationView;->-get4(Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/WaveAnimationView;)F

    move-result v2

    sub-float v0, v1, v2

    iget-object v1, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/WaveAnimationView$3;->this$0:Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/WaveAnimationView;

    iget-object v2, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/WaveAnimationView$3;->this$0:Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/WaveAnimationView;

    invoke-static {v2}, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/WaveAnimationView;->-get7(Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/WaveAnimationView;)F

    move-result v2

    invoke-static {v1, v2}, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/WaveAnimationView;->-set3(Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/WaveAnimationView;F)F

    iget-object v1, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/WaveAnimationView$3;->this$0:Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/WaveAnimationView;

    invoke-static {v1}, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/WaveAnimationView;->-get6(Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/WaveAnimationView;)F

    move-result v2

    add-float/2addr v2, v0

    invoke-static {v1, v2}, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/WaveAnimationView;->-set5(Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/WaveAnimationView;F)F

    iget-object v1, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/WaveAnimationView$3;->this$0:Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/WaveAnimationView;

    invoke-virtual {v1}, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/WaveAnimationView;->invalidate()V

    return-void
.end method