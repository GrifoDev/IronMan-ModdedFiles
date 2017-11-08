.class public Lcom/samsung/android/settings/face/bixbysetupwizard/BixbyIconViewAnimation;
.super Landroid/view/animation/Animation;
.source "BixbyIconViewAnimation.java"


# instance fields
.field private cx:F

.field private cy:F

.field private mAngleDegree:F

.field private mAngleRadian:F

.field private mAnimationState:I

.field private mCurrentRadius:F

.field private mFromCenterX:F

.field private mFromCenterY:F

.field private mMaxRadius:F

.field private prevDx:F

.field private prevDy:F

.field private prevX:F

.field private prevY:F

.field private view:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;F)V
    .locals 2

    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/BixbyIconViewAnimation;->view:Landroid/view/View;

    iput p2, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/BixbyIconViewAnimation;->mMaxRadius:F

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/BixbyIconViewAnimation;->mCurrentRadius:F

    const-wide/32 v0, 0x11170

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/settings/face/bixbysetupwizard/BixbyIconViewAnimation;->setDuration(J)V

    const/16 v0, 0x3e8

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/face/bixbysetupwizard/BixbyIconViewAnimation;->setRepeatCount(I)V

    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/face/bixbysetupwizard/BixbyIconViewAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    return-void
.end method


# virtual methods
.method protected applyTransformation(FLandroid/view/animation/Transformation;)V
    .locals 6

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    cmpl-float v0, p1, v2

    if-nez v0, :cond_0

    invoke-virtual {p2}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/BixbyIconViewAnimation;->prevDx:F

    iget v2, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/BixbyIconViewAnimation;->prevDy:F

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->setTranslate(FF)V

    return-void

    :cond_0
    iget v0, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/BixbyIconViewAnimation;->mAnimationState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    iget v0, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/BixbyIconViewAnimation;->mCurrentRadius:F

    iget v1, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/BixbyIconViewAnimation;->mMaxRadius:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_2

    iget v0, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/BixbyIconViewAnimation;->mCurrentRadius:F

    add-float/2addr v0, v3

    iput v0, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/BixbyIconViewAnimation;->mCurrentRadius:F

    :cond_1
    :goto_0
    const/high16 v0, 0x43b40000    # 360.0f

    mul-float/2addr v0, p1

    const/high16 v1, 0x41a00000    # 20.0f

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/BixbyIconViewAnimation;->mAngleDegree:F

    iget v0, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/BixbyIconViewAnimation;->mAngleDegree:F

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v0

    double-to-float v0, v0

    iput v0, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/BixbyIconViewAnimation;->mAngleRadian:F

    iget v0, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/BixbyIconViewAnimation;->cx:F

    float-to-double v0, v0

    iget v2, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/BixbyIconViewAnimation;->mCurrentRadius:F

    float-to-double v2, v2

    iget v4, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/BixbyIconViewAnimation;->mAngleRadian:F

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v4

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    double-to-float v0, v0

    iput v0, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/BixbyIconViewAnimation;->mFromCenterX:F

    iget v0, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/BixbyIconViewAnimation;->cy:F

    float-to-double v0, v0

    iget v2, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/BixbyIconViewAnimation;->mCurrentRadius:F

    float-to-double v2, v2

    iget v4, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/BixbyIconViewAnimation;->mAngleRadian:F

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    double-to-float v0, v0

    iput v0, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/BixbyIconViewAnimation;->mFromCenterY:F

    iget v0, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/BixbyIconViewAnimation;->prevX:F

    iget v1, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/BixbyIconViewAnimation;->mFromCenterX:F

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/BixbyIconViewAnimation;->prevDx:F

    iget v0, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/BixbyIconViewAnimation;->prevY:F

    iget v1, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/BixbyIconViewAnimation;->mFromCenterY:F

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/BixbyIconViewAnimation;->prevDy:F

    iget v0, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/BixbyIconViewAnimation;->mFromCenterX:F

    iput v0, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/BixbyIconViewAnimation;->prevX:F

    iget v0, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/BixbyIconViewAnimation;->mFromCenterY:F

    iput v0, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/BixbyIconViewAnimation;->prevY:F

    invoke-virtual {p2}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/BixbyIconViewAnimation;->prevDx:F

    iget v2, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/BixbyIconViewAnimation;->prevDy:F

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->setTranslate(FF)V

    return-void

    :cond_2
    iget v0, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/BixbyIconViewAnimation;->mAnimationState:I

    if-nez v0, :cond_1

    iget v0, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/BixbyIconViewAnimation;->mCurrentRadius:F

    cmpl-float v0, v0, v2

    if-lez v0, :cond_1

    iget v0, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/BixbyIconViewAnimation;->mCurrentRadius:F

    sub-float/2addr v0, v3

    iput v0, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/BixbyIconViewAnimation;->mCurrentRadius:F

    goto :goto_0
.end method

.method public getCurrentRadius()F
    .locals 1

    iget v0, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/BixbyIconViewAnimation;->mCurrentRadius:F

    return v0
.end method

.method public initialize(IIII)V
    .locals 3

    div-int/lit8 v0, p1, 0x2

    div-int/lit8 v1, p2, 0x2

    iget-object v2, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/BixbyIconViewAnimation;->view:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v2

    add-int/2addr v2, v0

    int-to-float v2, v2

    iput v2, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/BixbyIconViewAnimation;->cx:F

    iget-object v2, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/BixbyIconViewAnimation;->view:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v2

    add-int/2addr v2, v1

    int-to-float v2, v2

    iput v2, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/BixbyIconViewAnimation;->cy:F

    iget v2, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/BixbyIconViewAnimation;->cx:F

    iput v2, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/BixbyIconViewAnimation;->prevX:F

    iget v2, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/BixbyIconViewAnimation;->cy:F

    iput v2, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/BixbyIconViewAnimation;->prevY:F

    return-void
.end method

.method public setAnimationState(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/BixbyIconViewAnimation;->mAnimationState:I

    return-void
.end method

.method public willChangeBounds()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
