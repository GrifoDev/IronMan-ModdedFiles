.class Lcom/android/systemui/infinity/GalaxyGyroRenderer$1;
.super Ljava/lang/Object;
.source "GalaxyGyroRenderer.java"

# interfaces
.implements Ljava/lang/Runnable;


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

    iput-object p1, p0, Lcom/android/systemui/infinity/GalaxyGyroRenderer$1;->this$0:Lcom/android/systemui/infinity/GalaxyGyroRenderer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    const/4 v3, 0x1

    iget-object v1, p0, Lcom/android/systemui/infinity/GalaxyGyroRenderer$1;->this$0:Lcom/android/systemui/infinity/GalaxyGyroRenderer;

    invoke-static {v1}, Lcom/android/systemui/infinity/GalaxyGyroRenderer;->-wrap0(Lcom/android/systemui/infinity/GalaxyGyroRenderer;)V

    iget-object v1, p0, Lcom/android/systemui/infinity/GalaxyGyroRenderer$1;->this$0:Lcom/android/systemui/infinity/GalaxyGyroRenderer;

    iget-object v1, v1, Lcom/android/systemui/infinity/GalaxyGyroRenderer;->gyroTangramData:[F

    aget v0, v1, v3

    iget-object v1, p0, Lcom/android/systemui/infinity/GalaxyGyroRenderer$1;->this$0:Lcom/android/systemui/infinity/GalaxyGyroRenderer;

    iput v0, v1, Lcom/android/systemui/infinity/GalaxyGyroRenderer;->moveGyroDistance:F

    iget-object v1, p0, Lcom/android/systemui/infinity/GalaxyGyroRenderer$1;->this$0:Lcom/android/systemui/infinity/GalaxyGyroRenderer;

    iget-object v2, p0, Lcom/android/systemui/infinity/GalaxyGyroRenderer$1;->this$0:Lcom/android/systemui/infinity/GalaxyGyroRenderer;

    iget-object v2, v2, Lcom/android/systemui/infinity/GalaxyGyroRenderer;->gyroParticleData:[F

    aget v2, v2, v3

    iput v2, v1, Lcom/android/systemui/infinity/GalaxyGyroRenderer;->initParticleValue:F

    iget-object v1, p0, Lcom/android/systemui/infinity/GalaxyGyroRenderer$1;->this$0:Lcom/android/systemui/infinity/GalaxyGyroRenderer;

    const/4 v2, 0x2

    new-array v2, v2, [F

    fill-array-data v2, :array_0

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v2

    iput-object v2, v1, Lcom/android/systemui/infinity/GalaxyGyroRenderer;->combackAnim:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/android/systemui/infinity/GalaxyGyroRenderer$1;->this$0:Lcom/android/systemui/infinity/GalaxyGyroRenderer;

    iget-object v1, v1, Lcom/android/systemui/infinity/GalaxyGyroRenderer;->combackAnim:Landroid/animation/ValueAnimator;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/android/systemui/infinity/GalaxyGyroRenderer$1;->this$0:Lcom/android/systemui/infinity/GalaxyGyroRenderer;

    iget-object v1, v1, Lcom/android/systemui/infinity/GalaxyGyroRenderer;->combackAnim:Landroid/animation/ValueAnimator;

    iget-object v2, p0, Lcom/android/systemui/infinity/GalaxyGyroRenderer$1;->this$0:Lcom/android/systemui/infinity/GalaxyGyroRenderer;

    iget-object v2, v2, Lcom/android/systemui/infinity/GalaxyGyroRenderer;->comebackLisener:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v1, p0, Lcom/android/systemui/infinity/GalaxyGyroRenderer$1;->this$0:Lcom/android/systemui/infinity/GalaxyGyroRenderer;

    iget-object v1, v1, Lcom/android/systemui/infinity/GalaxyGyroRenderer;->combackAnim:Landroid/animation/ValueAnimator;

    iget-object v2, p0, Lcom/android/systemui/infinity/GalaxyGyroRenderer$1;->this$0:Lcom/android/systemui/infinity/GalaxyGyroRenderer;

    iget-object v2, v2, Lcom/android/systemui/infinity/GalaxyGyroRenderer;->comebackUpdateLisener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v1, p0, Lcom/android/systemui/infinity/GalaxyGyroRenderer$1;->this$0:Lcom/android/systemui/infinity/GalaxyGyroRenderer;

    iget-object v1, v1, Lcom/android/systemui/infinity/GalaxyGyroRenderer;->combackAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    return-void

    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method
