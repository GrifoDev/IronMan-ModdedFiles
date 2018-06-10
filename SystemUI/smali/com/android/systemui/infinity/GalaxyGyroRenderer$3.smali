.class Lcom/android/systemui/infinity/GalaxyGyroRenderer$3;
.super Ljava/lang/Object;
.source "GalaxyGyroRenderer.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/infinity/GalaxyGyroRenderer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/infinity/GalaxyGyroRenderer;


# direct methods
.method constructor <init>(Lcom/android/systemui/infinity/GalaxyGyroRenderer;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/infinity/GalaxyGyroRenderer$3;->this$0:Lcom/android/systemui/infinity/GalaxyGyroRenderer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 6

    const/4 v5, 0x1

    iget-object v0, p0, Lcom/android/systemui/infinity/GalaxyGyroRenderer$3;->this$0:Lcom/android/systemui/infinity/GalaxyGyroRenderer;

    iget-object v1, v0, Lcom/android/systemui/infinity/GalaxyGyroRenderer;->gyroTangramData:[F

    iget-object v0, p0, Lcom/android/systemui/infinity/GalaxyGyroRenderer$3;->this$0:Lcom/android/systemui/infinity/GalaxyGyroRenderer;

    iget v2, v0, Lcom/android/systemui/infinity/GalaxyGyroRenderer;->moveGyroDistance:F

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    mul-float/2addr v0, v2

    aput v0, v1, v5

    iget-object v0, p0, Lcom/android/systemui/infinity/GalaxyGyroRenderer$3;->this$0:Lcom/android/systemui/infinity/GalaxyGyroRenderer;

    iget-object v1, v0, Lcom/android/systemui/infinity/GalaxyGyroRenderer;->gyroParticleData:[F

    iget-object v0, p0, Lcom/android/systemui/infinity/GalaxyGyroRenderer$3;->this$0:Lcom/android/systemui/infinity/GalaxyGyroRenderer;

    iget v2, v0, Lcom/android/systemui/infinity/GalaxyGyroRenderer;->initParticleValue:F

    iget-object v0, p0, Lcom/android/systemui/infinity/GalaxyGyroRenderer$3;->this$0:Lcom/android/systemui/infinity/GalaxyGyroRenderer;

    iget v3, v0, Lcom/android/systemui/infinity/GalaxyGyroRenderer;->moveGyroDistance:F

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    const/high16 v4, 0x3f800000    # 1.0f

    sub-float v0, v4, v0

    mul-float/2addr v0, v3

    sub-float v0, v2, v0

    aput v0, v1, v5

    iget-object v0, p0, Lcom/android/systemui/infinity/GalaxyGyroRenderer$3;->this$0:Lcom/android/systemui/infinity/GalaxyGyroRenderer;

    iget-object v1, p0, Lcom/android/systemui/infinity/GalaxyGyroRenderer$3;->this$0:Lcom/android/systemui/infinity/GalaxyGyroRenderer;

    iget-object v1, v1, Lcom/android/systemui/infinity/GalaxyGyroRenderer;->gyroParticleData:[F

    iget-object v2, p0, Lcom/android/systemui/infinity/GalaxyGyroRenderer$3;->this$0:Lcom/android/systemui/infinity/GalaxyGyroRenderer;

    iget-object v2, v2, Lcom/android/systemui/infinity/GalaxyGyroRenderer;->gyroTangramData:[F

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/infinity/GalaxyGyroRenderer;->onChangeGyroData([F[F)V

    iget-object v0, p0, Lcom/android/systemui/infinity/GalaxyGyroRenderer$3;->this$0:Lcom/android/systemui/infinity/GalaxyGyroRenderer;

    iget-object v0, v0, Lcom/android/systemui/infinity/GalaxyGyroRenderer;->animatorManager:Lcom/altamirasoft/glanimationutil/GLAnimatorManager;

    invoke-virtual {v0}, Lcom/altamirasoft/glanimationutil/GLAnimatorManager;->startAnim()V

    return-void
.end method
