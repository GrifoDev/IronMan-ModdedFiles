.class public Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/vi/BixbyAnimationHelper;
.super Ljava/lang/Object;
.source "BixbyAnimationHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/vi/BixbyAnimationHelper$ShortAnimatorListener;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static animCommonAlphaEnd(Landroid/view/View;JJ)Landroid/animation/ValueAnimator;
    .locals 5

    const-string/jumbo v2, "alpha"

    const/4 v3, 0x2

    new-array v3, v3, [F

    fill-array-data v3, :array_0

    invoke-static {v2, v3}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    const/4 v2, 0x1

    new-array v2, v2, [Landroid/animation/PropertyValuesHolder;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofPropertyValuesHolder([Landroid/animation/PropertyValuesHolder;)Landroid/animation/ValueAnimator;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/vi/BixbyAnimationHelper$23;

    invoke-direct {v2, p0}, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/vi/BixbyAnimationHelper$23;-><init>(Landroid/view/View;)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance v2, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/vi/BixbyAnimationHelper$24;

    invoke-direct {v2, p0}, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/vi/BixbyAnimationHelper$24;-><init>(Landroid/view/View;)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    new-instance v2, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/vi/interpolator/SineInOut90;

    invoke-direct {v2}, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/vi/interpolator/SineInOut90;-><init>()V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {v1, p3, p4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    invoke-virtual {v1, p1, p2}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    return-object v1

    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method public static animCommonAlphaStart(Landroid/view/View;JJ)Landroid/animation/ValueAnimator;
    .locals 5

    const-string/jumbo v2, "alpha"

    const/4 v3, 0x2

    new-array v3, v3, [F

    fill-array-data v3, :array_0

    invoke-static {v2, v3}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    const/4 v2, 0x1

    new-array v2, v2, [Landroid/animation/PropertyValuesHolder;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofPropertyValuesHolder([Landroid/animation/PropertyValuesHolder;)Landroid/animation/ValueAnimator;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/vi/BixbyAnimationHelper$21;

    invoke-direct {v2, p0}, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/vi/BixbyAnimationHelper$21;-><init>(Landroid/view/View;)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance v2, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/vi/BixbyAnimationHelper$22;

    invoke-direct {v2, p0}, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/vi/BixbyAnimationHelper$22;-><init>(Landroid/view/View;)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    new-instance v2, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/vi/interpolator/SineInOut90;

    invoke-direct {v2}, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/vi/interpolator/SineInOut90;-><init>()V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {v1, p3, p4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    invoke-virtual {v1, p1, p2}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    return-object v1

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public static animTextVerticalTransAtoB(Landroid/view/View;JJFFLandroid/animation/TimeInterpolator;)V
    .locals 11

    const/4 v8, 0x1

    const/4 v7, 0x0

    move/from16 v3, p5

    move/from16 v1, p6

    const-string/jumbo v5, "trans"

    const/4 v6, 0x2

    new-array v6, v6, [F

    aput p5, v6, v7

    aput p6, v6, v8

    invoke-static {v5, v6}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v4

    new-array v5, v8, [Landroid/animation/PropertyValuesHolder;

    aput-object v4, v5, v7

    invoke-static {v5}, Landroid/animation/ValueAnimator;->ofPropertyValuesHolder([Landroid/animation/PropertyValuesHolder;)Landroid/animation/ValueAnimator;

    move-result-object v2

    new-instance v5, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/vi/BixbyAnimationHelper$3;

    invoke-direct {v5, p0}, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/vi/BixbyAnimationHelper$3;-><init>(Landroid/view/View;)V

    invoke-virtual {v2, v5}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance v5, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/vi/BixbyAnimationHelper$4;

    move/from16 v0, p6

    invoke-direct {v5, p0, v0}, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/vi/BixbyAnimationHelper$4;-><init>(Landroid/view/View;F)V

    invoke-virtual {v2, v5}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    if-eqz p7, :cond_0

    move-object/from16 v0, p7

    invoke-virtual {v2, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    :cond_0
    invoke-virtual {v2, p3, p4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    invoke-virtual {v2, p1, p2}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method


# virtual methods
.method public makeVAnimFloat([FJJLandroid/animation/TimeInterpolator;Landroid/animation/ValueAnimator$AnimatorUpdateListener;Landroid/animation/Animator$AnimatorListener;)Landroid/animation/ValueAnimator;
    .locals 4

    new-instance v0, Landroid/animation/ValueAnimator;

    invoke-direct {v0}, Landroid/animation/ValueAnimator;-><init>()V

    invoke-virtual {v0, p1}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    invoke-virtual {v0, p2, p3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    const-wide/16 v2, 0x0

    cmp-long v1, p4, v2

    if-eqz v1, :cond_0

    invoke-virtual {v0, p4, p5}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    :cond_0
    if-eqz p6, :cond_1

    invoke-virtual {v0, p6}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    :cond_1
    if-eqz p7, :cond_2

    invoke-virtual {v0, p7}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    :cond_2
    if-eqz p8, :cond_3

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->removeAllListeners()V

    invoke-virtual {v0, p8}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    :cond_3
    return-object v0
.end method
