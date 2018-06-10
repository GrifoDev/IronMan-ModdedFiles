.class public abstract Lcom/android/systemui/infinity/smoke/SmokeSystem;
.super Ljava/lang/Object;
.source "SmokeSystem.java"

# interfaces
.implements Lcom/android/systemui/infinity/GalaxyRenderLifeCycleListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/infinity/smoke/SmokeSystem$1;
    }
.end annotation


# instance fields
.field private colorShaderProgram:Lcom/android/systemui/infinity/common/ColorShaderProgram;

.field context:Landroid/content/Context;

.field handler:Landroid/os/Handler;

.field hideRunnable:Ljava/lang/Runnable;

.field index:I

.field mPlugged:Z

.field renderer:Lcom/android/systemui/infinity/GalaxyRenderer;

.field showAnimator:Lcom/altamirasoft/glanimationutil/GLValueAnimator;

.field public smokeList:[Lcom/android/systemui/infinity/background/GradientBackground;

.field public targetSmokeAlpha:F


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/infinity/GalaxyRenderer;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v1, p0, Lcom/android/systemui/infinity/smoke/SmokeSystem;->index:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/infinity/smoke/SmokeSystem;->targetSmokeAlpha:F

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/android/systemui/infinity/background/GradientBackground;

    iput-object v0, p0, Lcom/android/systemui/infinity/smoke/SmokeSystem;->smokeList:[Lcom/android/systemui/infinity/background/GradientBackground;

    iput-boolean v1, p0, Lcom/android/systemui/infinity/smoke/SmokeSystem;->mPlugged:Z

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/infinity/smoke/SmokeSystem;->handler:Landroid/os/Handler;

    new-instance v0, Lcom/android/systemui/infinity/smoke/SmokeSystem$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/infinity/smoke/SmokeSystem$1;-><init>(Lcom/android/systemui/infinity/smoke/SmokeSystem;)V

    iput-object v0, p0, Lcom/android/systemui/infinity/smoke/SmokeSystem;->hideRunnable:Ljava/lang/Runnable;

    iput-object p1, p0, Lcom/android/systemui/infinity/smoke/SmokeSystem;->context:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/systemui/infinity/smoke/SmokeSystem;->renderer:Lcom/android/systemui/infinity/GalaxyRenderer;

    return-void
.end method


# virtual methods
.method public draw([F)V
    .locals 4

    const/4 v3, 0x0

    iget v1, p0, Lcom/android/systemui/infinity/smoke/SmokeSystem;->targetSmokeAlpha:F

    cmpl-float v1, v1, v3

    if-nez v1, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/infinity/smoke/SmokeSystem;->colorShaderProgram:Lcom/android/systemui/infinity/common/ColorShaderProgram;

    invoke-virtual {v1}, Lcom/android/systemui/infinity/common/ColorShaderProgram;->useProgram()V

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/systemui/infinity/smoke/SmokeSystem;->smokeList:[Lcom/android/systemui/infinity/background/GradientBackground;

    array-length v1, v1

    if-ge v0, v1, :cond_2

    iget v1, p0, Lcom/android/systemui/infinity/smoke/SmokeSystem;->index:I

    if-ne v0, v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/infinity/smoke/SmokeSystem;->colorShaderProgram:Lcom/android/systemui/infinity/common/ColorShaderProgram;

    iget v2, p0, Lcom/android/systemui/infinity/smoke/SmokeSystem;->targetSmokeAlpha:F

    invoke-virtual {v1, p1, v2}, Lcom/android/systemui/infinity/common/ColorShaderProgram;->setUniforms([FF)V

    :goto_1
    iget-object v1, p0, Lcom/android/systemui/infinity/smoke/SmokeSystem;->smokeList:[Lcom/android/systemui/infinity/background/GradientBackground;

    aget-object v1, v1, v0

    iget-object v2, p0, Lcom/android/systemui/infinity/smoke/SmokeSystem;->colorShaderProgram:Lcom/android/systemui/infinity/common/ColorShaderProgram;

    invoke-virtual {v1, v2}, Lcom/android/systemui/infinity/background/GradientBackground;->bindData(Lcom/android/systemui/infinity/common/ColorShaderProgram;)V

    iget-object v1, p0, Lcom/android/systemui/infinity/smoke/SmokeSystem;->smokeList:[Lcom/android/systemui/infinity/background/GradientBackground;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/android/systemui/infinity/background/GradientBackground;->draw()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/android/systemui/infinity/smoke/SmokeSystem;->colorShaderProgram:Lcom/android/systemui/infinity/common/ColorShaderProgram;

    invoke-virtual {v1, p1, v3}, Lcom/android/systemui/infinity/common/ColorShaderProgram;->setUniforms([FF)V

    goto :goto_1

    :cond_2
    return-void
.end method

.method protected abstract getInputColor()[[[F
.end method

.method protected abstract getInputHeight()F
.end method

.method protected abstract getInputPosition()[[F
.end method

.method public hideSmoke()V
    .locals 4

    const/4 v3, 0x0

    const-string/jumbo v0, "GalaxyWallpaper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "SmokeSystem hideSmoke() current alpha : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/systemui/infinity/smoke/SmokeSystem;->targetSmokeAlpha:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/infinity/smoke/SmokeSystem;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/infinity/smoke/SmokeSystem;->hideRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget v0, p0, Lcom/android/systemui/infinity/smoke/SmokeSystem;->targetSmokeAlpha:F

    cmpl-float v0, v0, v3

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/infinity/smoke/SmokeSystem;->showAnimator:Lcom/altamirasoft/glanimationutil/GLValueAnimator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/infinity/smoke/SmokeSystem;->showAnimator:Lcom/altamirasoft/glanimationutil/GLValueAnimator;

    invoke-virtual {v0}, Lcom/altamirasoft/glanimationutil/GLValueAnimator;->end()V

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/infinity/smoke/SmokeSystem;->renderer:Lcom/android/systemui/infinity/GalaxyRenderer;

    invoke-virtual {v0}, Lcom/android/systemui/infinity/GalaxyRenderer;->getAnimatorManager()Lcom/altamirasoft/glanimationutil/GLAnimatorManager;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1, v3}, Lcom/altamirasoft/glanimationutil/GLAnimatorManager;->createValueAnimator(FF)Lcom/altamirasoft/glanimationutil/GLValueAnimator;

    move-result-object v0

    const-wide/16 v2, 0x269

    invoke-virtual {v0, v2, v3}, Lcom/altamirasoft/glanimationutil/GLValueAnimator;->setDuration(J)Lcom/altamirasoft/glanimationutil/GLValueAnimator;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/view/animation/SineOut33;

    invoke-direct {v1}, Lcom/samsung/android/view/animation/SineOut33;-><init>()V

    invoke-virtual {v0, v1}, Lcom/altamirasoft/glanimationutil/GLValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Lcom/altamirasoft/glanimationutil/GLValueAnimator;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/infinity/smoke/SmokeSystem$3;

    invoke-direct {v1, p0}, Lcom/android/systemui/infinity/smoke/SmokeSystem$3;-><init>(Lcom/android/systemui/infinity/smoke/SmokeSystem;)V

    invoke-virtual {v0, v1}, Lcom/altamirasoft/glanimationutil/GLValueAnimator;->addUpdateListener(Lcom/altamirasoft/glanimationutil/GLValueAnimator$AnimatorUpdateListener;)Lcom/altamirasoft/glanimationutil/GLValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/infinity/smoke/SmokeSystem;->showAnimator:Lcom/altamirasoft/glanimationutil/GLValueAnimator;

    iget-object v0, p0, Lcom/android/systemui/infinity/smoke/SmokeSystem;->showAnimator:Lcom/altamirasoft/glanimationutil/GLValueAnimator;

    invoke-virtual {v0}, Lcom/altamirasoft/glanimationutil/GLValueAnimator;->start()V

    :cond_1
    return-void
.end method

.method public onSurfaceChanged(II)V
    .locals 0

    return-void
.end method

.method public onSurfaceCreated()V
    .locals 8

    invoke-virtual {p0}, Lcom/android/systemui/infinity/smoke/SmokeSystem;->getInputPosition()[[F

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [[F

    invoke-virtual {p0}, Lcom/android/systemui/infinity/smoke/SmokeSystem;->getInputColor()[[[F

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[[F

    const/4 v0, 0x0

    :goto_0
    const/4 v3, 0x3

    if-ge v0, v3, :cond_0

    iget-object v3, p0, Lcom/android/systemui/infinity/smoke/SmokeSystem;->smokeList:[Lcom/android/systemui/infinity/background/GradientBackground;

    new-instance v4, Lcom/android/systemui/infinity/background/GradientBackground;

    aget-object v5, v2, v0

    aget-object v6, v1, v0

    invoke-virtual {p0}, Lcom/android/systemui/infinity/smoke/SmokeSystem;->getInputHeight()F

    move-result v7

    invoke-direct {v4, v5, v6, v7}, Lcom/android/systemui/infinity/background/GradientBackground;-><init>([F[[FF)V

    aput-object v4, v3, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    new-instance v3, Lcom/android/systemui/infinity/common/ColorShaderProgram;

    iget-object v4, p0, Lcom/android/systemui/infinity/smoke/SmokeSystem;->context:Landroid/content/Context;

    invoke-direct {v3, v4}, Lcom/android/systemui/infinity/common/ColorShaderProgram;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/systemui/infinity/smoke/SmokeSystem;->colorShaderProgram:Lcom/android/systemui/infinity/common/ColorShaderProgram;

    return-void
.end method

.method public setIndex(I)V
    .locals 0

    iput p1, p0, Lcom/android/systemui/infinity/smoke/SmokeSystem;->index:I

    return-void
.end method

.method public setIsPlugged(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/infinity/smoke/SmokeSystem;->mPlugged:Z

    return-void
.end method

.method public showSmoke()V
    .locals 4

    const-string/jumbo v0, "GalaxyWallpaper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "SmokeSystem showSmoke() current alpha : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/systemui/infinity/smoke/SmokeSystem;->targetSmokeAlpha:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", mPlugged : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/systemui/infinity/smoke/SmokeSystem;->mPlugged:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/infinity/smoke/SmokeSystem;->showAnimator:Lcom/altamirasoft/glanimationutil/GLValueAnimator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/infinity/smoke/SmokeSystem;->showAnimator:Lcom/altamirasoft/glanimationutil/GLValueAnimator;

    invoke-virtual {v0}, Lcom/altamirasoft/glanimationutil/GLValueAnimator;->end()V

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/infinity/smoke/SmokeSystem;->renderer:Lcom/android/systemui/infinity/GalaxyRenderer;

    invoke-virtual {v0}, Lcom/android/systemui/infinity/GalaxyRenderer;->getAnimatorManager()Lcom/altamirasoft/glanimationutil/GLAnimatorManager;

    move-result-object v0

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1, v2}, Lcom/altamirasoft/glanimationutil/GLAnimatorManager;->createValueAnimator(FF)Lcom/altamirasoft/glanimationutil/GLValueAnimator;

    move-result-object v0

    const-wide/16 v2, 0x269

    invoke-virtual {v0, v2, v3}, Lcom/altamirasoft/glanimationutil/GLValueAnimator;->setDuration(J)Lcom/altamirasoft/glanimationutil/GLValueAnimator;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/view/animation/SineOut33;

    invoke-direct {v1}, Lcom/samsung/android/view/animation/SineOut33;-><init>()V

    invoke-virtual {v0, v1}, Lcom/altamirasoft/glanimationutil/GLValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Lcom/altamirasoft/glanimationutil/GLValueAnimator;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/infinity/smoke/SmokeSystem$2;

    invoke-direct {v1, p0}, Lcom/android/systemui/infinity/smoke/SmokeSystem$2;-><init>(Lcom/android/systemui/infinity/smoke/SmokeSystem;)V

    invoke-virtual {v0, v1}, Lcom/altamirasoft/glanimationutil/GLValueAnimator;->addUpdateListener(Lcom/altamirasoft/glanimationutil/GLValueAnimator$AnimatorUpdateListener;)Lcom/altamirasoft/glanimationutil/GLValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/infinity/smoke/SmokeSystem;->showAnimator:Lcom/altamirasoft/glanimationutil/GLValueAnimator;

    iget-object v0, p0, Lcom/android/systemui/infinity/smoke/SmokeSystem;->showAnimator:Lcom/altamirasoft/glanimationutil/GLValueAnimator;

    invoke-virtual {v0}, Lcom/altamirasoft/glanimationutil/GLValueAnimator;->start()V

    iget-boolean v0, p0, Lcom/android/systemui/infinity/smoke/SmokeSystem;->mPlugged:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/infinity/smoke/SmokeSystem;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/infinity/smoke/SmokeSystem;->hideRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/android/systemui/infinity/smoke/SmokeSystem;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/infinity/smoke/SmokeSystem;->hideRunnable:Ljava/lang/Runnable;

    const-wide/32 v2, 0xea60

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    return-void
.end method
