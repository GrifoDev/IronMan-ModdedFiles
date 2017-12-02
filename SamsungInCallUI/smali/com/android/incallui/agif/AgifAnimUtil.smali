.class public Lcom/android/incallui/agif/AgifAnimUtil;
.super Ljava/lang/Object;


# static fields
.field private static final AGIF_DURING_TRAY_ANIM_DURATION:I = 0x12c

.field private static final AGIF_DURING_TRAY_ANIM_RETURN_DELAY:I = 0x2bc

.field private static final AGIF_DURING_TRAY_ANIM_RETURN_DELAY_DELTA:I = 0x258

.field private static final AGIF_DURING_TRAY_ANIM_START_DELAY:I = 0x1f4

.field private static final AGIF_DURING_TRAY_ANIM_START_DELAY_DELTA:I = 0xc8

.field private static final AGIF_DURING_TRAY_SHADOW_ANIM_DELAY:I = 0xb4

.field private static final AGIF_DURING_TRAY_SHADOW_ANIM_DURATION:I = 0x78

.field private static final AGIF_OUTGOING_CONTAINER_ANIM_DURATION:I = 0x226

.field private static final AGIF_OUTGOING_TRAY_ANIM_DURATION:I = 0x12c

.field private static final AGIF_OUTGOING_TRAY_ANIM_INTERVAL:I = 0x3c

.field private static final AGIF_POPUP_OFF_ALPHA_ANIM_DURATION:I = 0xc8

.field private static final AGIF_POPUP_OFF_BUTTON_ALPHA_ANIM_DURATION:I = 0x12c

.field private static final AGIF_POPUP_OFF_SCALE_ANIM_DURATION:I = 0xc8

.field private static final AGIF_POPUP_ON_ALPHA_ANIM_DURATION:I = 0x96

.field private static final AGIF_POPUP_ON_BUTTON_ALPHA_ANIM_DURATION:I = 0xc8

.field private static final AGIF_POPUP_ON_SCALE_ANIM_DURATION:I = 0x12c

.field static final ANIM_ALPHA_HIDE:F = 0.0f

.field static final ANIM_ALPHA_SHOW:F = 1.0f

.field private static final ANIM_DURING_TRAY_IMAGE_POSITION_Y_UP:F = -10.0f

.field private static final ANIM_DURING_TRAY_SHADOW_SCALE:F = 1.0f

.field private static final ANIM_DURING_TRAY_SHADOW_SCALE_UP:F = 1.2f

.field private static final ANIM_FLOAT_ZERO:F = 0.0f

.field private static final ANIM_OUTGOING_CONTAINER_POSITION_X:F = 440.0f

.field private static final ANIM_OUTGOING_TRAY_ALPHA_FROM:F = 1.0f

.field private static final ANIM_OUTGOING_TRAY_POSITION_Y:F = 30.0f

.field private static final ANIM_OUTGOING_TRAY_SCALE_FROM:F = 0.7f

.field private static final ANIM_OUTGOING_TRAY_SCALE_TO:F = 1.0f

.field static final ANIM_POPUP_SCALE:F = 1.0f

.field static final ANIM_POPUP_SCALE_DOWN:F = 0.9f


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static buildPopOffAnimatorSet(Landroid/view/View;)Landroid/animation/AnimatorSet;
    .locals 4

    sget-object v0, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    invoke-static {p0, v0}, Lcom/android/incallui/agif/AgifAnimUtil;->getPopupScaleDownAnimator(Landroid/view/View;Landroid/util/Property;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    sget-object v1, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    invoke-static {p0, v1}, Lcom/android/incallui/agif/AgifAnimUtil;->getPopupScaleDownAnimator(Landroid/view/View;Landroid/util/Property;)Landroid/animation/ObjectAnimator;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {p0, v2}, Lcom/android/incallui/agif/AgifAnimUtil;->getPopupAlphaAnimator(Landroid/view/View;Z)Landroid/animation/ObjectAnimator;

    move-result-object v2

    new-instance v3, Landroid/animation/AnimatorSet;

    invoke-direct {v3}, Landroid/animation/AnimatorSet;-><init>()V

    invoke-virtual {v3, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    return-object v3
.end method

.method static buildPopOffButtonAnimatorSet(Landroid/view/View;)Landroid/animation/AnimatorSet;
    .locals 2

    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    const/4 v1, 0x1

    invoke-static {p0, v1}, Lcom/android/incallui/agif/AgifAnimUtil;->getButtonAlphaAnimator(Landroid/view/View;Z)Landroid/animation/ObjectAnimator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    return-object v0
.end method

.method static buildPopOnAnimatorSet(Landroid/view/View;)Landroid/animation/AnimatorSet;
    .locals 4

    sget-object v0, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    invoke-static {p0, v0}, Lcom/android/incallui/agif/AgifAnimUtil;->getPopupScaleUpAnimator(Landroid/view/View;Landroid/util/Property;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    sget-object v1, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    invoke-static {p0, v1}, Lcom/android/incallui/agif/AgifAnimUtil;->getPopupScaleUpAnimator(Landroid/view/View;Landroid/util/Property;)Landroid/animation/ObjectAnimator;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {p0, v2}, Lcom/android/incallui/agif/AgifAnimUtil;->getPopupAlphaAnimator(Landroid/view/View;Z)Landroid/animation/ObjectAnimator;

    move-result-object v2

    new-instance v3, Landroid/animation/AnimatorSet;

    invoke-direct {v3}, Landroid/animation/AnimatorSet;-><init>()V

    invoke-virtual {v3, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    return-object v3
.end method

.method static buildPopOnButtonAnimatorSet(Landroid/view/View;)Landroid/animation/AnimatorSet;
    .locals 2

    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    const/4 v1, 0x0

    invoke-static {p0, v1}, Lcom/android/incallui/agif/AgifAnimUtil;->getButtonAlphaAnimator(Landroid/view/View;Z)Landroid/animation/ObjectAnimator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    return-object v0
.end method

.method static getButtonAlphaAnimator(Landroid/view/View;Z)Landroid/animation/ObjectAnimator;
    .locals 4

    sget-object v1, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v0, 0x1

    new-array v2, v0, [F

    const/4 v3, 0x0

    if-eqz p1, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    :goto_0
    aput v0, v2, v3

    invoke-static {p0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    if-eqz p1, :cond_1

    const/16 v0, 0xc8

    :goto_1
    int-to-long v2, v0

    invoke-virtual {v1, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    return-object v1

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    const/16 v0, 0x12c

    goto :goto_1
.end method

.method static getContainerTranslationAnimator(Landroid/view/View;)Landroid/animation/ObjectAnimator;
    .locals 4

    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    const/high16 v0, 0x43dc0000    # 440.0f

    invoke-virtual {p0, v0}, Landroid/view/View;->setTranslationX(F)V

    sget-object v0, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    const/4 v1, 0x1

    new-array v1, v1, [F

    const/4 v2, 0x0

    const/4 v3, 0x0

    aput v3, v1, v2

    invoke-static {p0, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/view/a/g;

    invoke-direct {v1}, Lcom/samsung/android/view/a/g;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v2, 0x226

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    goto :goto_0
.end method

.method static getPopupAlphaAnimator(Landroid/view/View;Z)Landroid/animation/ObjectAnimator;
    .locals 4

    sget-object v1, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v0, 0x1

    new-array v2, v0, [F

    const/4 v3, 0x0

    if-eqz p1, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    :goto_0
    aput v0, v2, v3

    invoke-static {p0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    if-eqz p1, :cond_1

    const/16 v0, 0x96

    :goto_1
    int-to-long v2, v0

    invoke-virtual {v1, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    return-object v1

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    const/16 v0, 0xc8

    goto :goto_1
.end method

.method static getPopupScaleDownAnimator(Landroid/view/View;Landroid/util/Property;)Landroid/animation/ObjectAnimator;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Landroid/util/Property",
            "<",
            "Landroid/view/View;",
            "Ljava/lang/Float;",
            ">;)",
            "Landroid/animation/ObjectAnimator;"
        }
    .end annotation

    const/4 v0, 0x1

    new-array v0, v0, [F

    const/4 v1, 0x0

    const v2, 0x3f666666    # 0.9f

    aput v2, v0, v1

    invoke-static {p0, p1, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/view/a/a;

    invoke-direct {v1}, Lcom/samsung/android/view/a/a;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    return-object v0
.end method

.method static getPopupScaleUpAnimator(Landroid/view/View;Landroid/util/Property;)Landroid/animation/ObjectAnimator;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Landroid/util/Property",
            "<",
            "Landroid/view/View;",
            "Ljava/lang/Float;",
            ">;)",
            "Landroid/animation/ObjectAnimator;"
        }
    .end annotation

    const/4 v0, 0x1

    new-array v0, v0, [F

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    aput v2, v0, v1

    invoke-static {p0, p1, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/view/a/c;

    invoke-direct {v1}, Lcom/samsung/android/view/a/c;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    return-object v0
.end method

.method protected static getRandomReturnDelay()J
    .locals 6

    const-wide/16 v0, 0x2bc

    new-instance v2, Ljava/util/Random;

    invoke-direct {v2}, Ljava/util/Random;-><init>()V

    invoke-virtual {v2}, Ljava/util/Random;->nextLong()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(J)J

    move-result-wide v2

    const-wide/16 v4, 0x258

    rem-long/2addr v2, v4

    add-long/2addr v0, v2

    return-wide v0
.end method

.method private static getRandomStartDelay()J
    .locals 6

    const-wide/16 v0, 0x1f4

    new-instance v2, Ljava/util/Random;

    invoke-direct {v2}, Ljava/util/Random;-><init>()V

    invoke-virtual {v2}, Ljava/util/Random;->nextLong()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(J)J

    move-result-wide v2

    const-wide/16 v4, 0xc8

    rem-long/2addr v2, v4

    add-long/2addr v0, v2

    return-wide v0
.end method

.method private static getShadowScaleDownAnimator(Landroid/view/View;Landroid/util/Property;)Landroid/animation/ObjectAnimator;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Landroid/util/Property",
            "<",
            "Landroid/view/View;",
            "Ljava/lang/Float;",
            ">;)",
            "Landroid/animation/ObjectAnimator;"
        }
    .end annotation

    const/4 v0, 0x1

    new-array v0, v0, [F

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    aput v2, v0, v1

    invoke-static {p0, p1, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    const-wide/16 v2, 0xb4

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    const-wide/16 v2, 0x78

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    return-object v0
.end method

.method private static getShadowScaleUpAnimator(Landroid/view/View;Landroid/util/Property;)Landroid/animation/ObjectAnimator;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Landroid/util/Property",
            "<",
            "Landroid/view/View;",
            "Ljava/lang/Float;",
            ">;)",
            "Landroid/animation/ObjectAnimator;"
        }
    .end annotation

    const/4 v0, 0x1

    new-array v0, v0, [F

    const/4 v1, 0x0

    const v2, 0x3f99999a    # 1.2f

    aput v2, v0, v1

    invoke-static {p0, p1, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    const-wide/16 v2, 0x78

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    return-object v0
.end method

.method static getTrayIconAlphaAnimator([Lcom/android/incallui/agif/AgifSlidingTrayIcons$TayIconView;)[Landroid/animation/ObjectAnimator;
    .locals 8

    const/4 v2, 0x0

    if-nez p0, :cond_1

    const/4 v0, 0x0

    :cond_0
    return-object v0

    :cond_1
    array-length v3, p0

    new-array v0, v3, [Landroid/animation/ObjectAnimator;

    move v1, v2

    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v4, p0, v1

    iget-object v4, v4, Lcom/android/incallui/agif/AgifSlidingTrayIcons$TayIconView;->trayContainer:Landroid/view/View;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/view/View;->setAlpha(F)V

    aget-object v4, p0, v1

    iget-object v4, v4, Lcom/android/incallui/agif/AgifSlidingTrayIcons$TayIconView;->trayContainer:Landroid/view/View;

    sget-object v5, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v6, 0x1

    new-array v6, v6, [F

    const/high16 v7, 0x3f800000    # 1.0f

    aput v7, v6, v2

    invoke-static {v4, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    aput-object v4, v0, v1

    aget-object v4, v0, v1

    new-instance v5, Lcom/samsung/android/view/a/g;

    invoke-direct {v5}, Lcom/samsung/android/view/a/g;-><init>()V

    invoke-virtual {v4, v5}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    aget-object v4, v0, v1

    mul-int/lit8 v5, v1, 0x3c

    int-to-long v6, v5

    invoke-virtual {v4, v6, v7}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    aget-object v4, v0, v1

    const-wide/16 v6, 0x12c

    invoke-virtual {v4, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method static getTrayIconAnimation(Landroid/animation/AnimatorSet;Lcom/android/incallui/agif/AgifSlidingTrayIcons$TayIconView;)Landroid/animation/AnimatorSet;
    .locals 11

    invoke-static {}, Lcom/android/incallui/agif/AgifAnimUtil;->getRandomStartDelay()J

    move-result-wide v0

    invoke-static {}, Lcom/android/incallui/agif/AgifAnimUtil;->getRandomReturnDelay()J

    move-result-wide v2

    iget-object v4, p1, Lcom/android/incallui/agif/AgifSlidingTrayIcons$TayIconView;->trayImage:Landroid/widget/ImageView;

    const/high16 v5, -0x3ee00000    # -10.0f

    invoke-static {v4, v5}, Lcom/android/incallui/agif/AgifAnimUtil;->getTrayTranslationAnimator(Landroid/view/View;F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    iget-object v5, p1, Lcom/android/incallui/agif/AgifSlidingTrayIcons$TayIconView;->trayImage:Landroid/widget/ImageView;

    const/4 v6, 0x0

    invoke-static {v5, v6}, Lcom/android/incallui/agif/AgifAnimUtil;->getTrayTranslationAnimator(Landroid/view/View;F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    iget-object v6, p1, Lcom/android/incallui/agif/AgifSlidingTrayIcons$TayIconView;->trayShadow:Landroid/widget/ImageView;

    sget-object v7, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    invoke-static {v6, v7}, Lcom/android/incallui/agif/AgifAnimUtil;->getShadowScaleUpAnimator(Landroid/view/View;Landroid/util/Property;)Landroid/animation/ObjectAnimator;

    move-result-object v6

    iget-object v7, p1, Lcom/android/incallui/agif/AgifSlidingTrayIcons$TayIconView;->trayShadow:Landroid/widget/ImageView;

    sget-object v8, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    invoke-static {v7, v8}, Lcom/android/incallui/agif/AgifAnimUtil;->getShadowScaleUpAnimator(Landroid/view/View;Landroid/util/Property;)Landroid/animation/ObjectAnimator;

    move-result-object v7

    iget-object v8, p1, Lcom/android/incallui/agif/AgifSlidingTrayIcons$TayIconView;->trayShadow:Landroid/widget/ImageView;

    sget-object v9, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    invoke-static {v8, v9}, Lcom/android/incallui/agif/AgifAnimUtil;->getShadowScaleDownAnimator(Landroid/view/View;Landroid/util/Property;)Landroid/animation/ObjectAnimator;

    move-result-object v8

    iget-object v9, p1, Lcom/android/incallui/agif/AgifSlidingTrayIcons$TayIconView;->trayShadow:Landroid/widget/ImageView;

    sget-object v10, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    invoke-static {v9, v10}, Lcom/android/incallui/agif/AgifAnimUtil;->getShadowScaleDownAnimator(Landroid/view/View;Landroid/util/Property;)Landroid/animation/ObjectAnimator;

    move-result-object v9

    invoke-virtual {p0, v4}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v10

    invoke-virtual {v10, v6}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v6

    invoke-virtual {v6, v7}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v6

    invoke-virtual {v6, v0, v1}, Landroid/animation/AnimatorSet$Builder;->after(J)Landroid/animation/AnimatorSet$Builder;

    invoke-virtual {p0, v5}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/animation/AnimatorSet$Builder;->after(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Landroid/animation/AnimatorSet$Builder;->after(J)Landroid/animation/AnimatorSet$Builder;

    invoke-virtual {p0, v5}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v0

    invoke-virtual {v0, v9}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    new-instance v0, Lcom/android/incallui/agif/AgifAnimUtil$1;

    invoke-direct {v0}, Lcom/android/incallui/agif/AgifAnimUtil$1;-><init>()V

    invoke-virtual {p0, v0}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-object p0
.end method

.method static getTrayIconScaleAnimator([Lcom/android/incallui/agif/AgifSlidingTrayIcons$TayIconView;Landroid/util/Property;)[Landroid/animation/ObjectAnimator;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/android/incallui/agif/AgifSlidingTrayIcons$TayIconView;",
            "Landroid/util/Property",
            "<",
            "Landroid/view/View;",
            "Ljava/lang/Float;",
            ">;)[",
            "Landroid/animation/ObjectAnimator;"
        }
    .end annotation

    const/4 v1, 0x0

    const v8, 0x3f333333    # 0.7f

    array-length v2, p0

    new-array v3, v2, [Landroid/animation/ObjectAnimator;

    move v0, v1

    :goto_0
    if-ge v0, v2, :cond_2

    sget-object v4, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    if-ne p1, v4, :cond_1

    aget-object v4, p0, v0

    iget-object v4, v4, Lcom/android/incallui/agif/AgifSlidingTrayIcons$TayIconView;->trayContainer:Landroid/view/View;

    invoke-virtual {v4, v8}, Landroid/view/View;->setScaleX(F)V

    :cond_0
    :goto_1
    aget-object v4, p0, v0

    iget-object v4, v4, Lcom/android/incallui/agif/AgifSlidingTrayIcons$TayIconView;->trayContainer:Landroid/view/View;

    const/4 v5, 0x1

    new-array v5, v5, [F

    const/high16 v6, 0x3f800000    # 1.0f

    aput v6, v5, v1

    invoke-static {v4, p1, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    aput-object v4, v3, v0

    aget-object v4, v3, v0

    new-instance v5, Lcom/samsung/android/view/a/g;

    invoke-direct {v5}, Lcom/samsung/android/view/a/g;-><init>()V

    invoke-virtual {v4, v5}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    aget-object v4, v3, v0

    mul-int/lit8 v5, v0, 0x3c

    int-to-long v6, v5

    invoke-virtual {v4, v6, v7}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    aget-object v4, v3, v0

    const-wide/16 v6, 0x12c

    invoke-virtual {v4, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    sget-object v4, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    if-ne p1, v4, :cond_0

    aget-object v4, p0, v0

    iget-object v4, v4, Lcom/android/incallui/agif/AgifSlidingTrayIcons$TayIconView;->trayContainer:Landroid/view/View;

    invoke-virtual {v4, v8}, Landroid/view/View;->setScaleY(F)V

    goto :goto_1

    :cond_2
    return-object v3
.end method

.method static getTrayIconTransAnimator([Lcom/android/incallui/agif/AgifSlidingTrayIcons$TayIconView;)[Landroid/animation/ObjectAnimator;
    .locals 8

    const/4 v2, 0x0

    if-nez p0, :cond_1

    const/4 v0, 0x0

    :cond_0
    return-object v0

    :cond_1
    array-length v3, p0

    new-array v0, v3, [Landroid/animation/ObjectAnimator;

    move v1, v2

    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v4, p0, v1

    iget-object v4, v4, Lcom/android/incallui/agif/AgifSlidingTrayIcons$TayIconView;->trayContainer:Landroid/view/View;

    const/high16 v5, 0x41f00000    # 30.0f

    invoke-virtual {v4, v5}, Landroid/view/View;->setTranslationY(F)V

    aget-object v4, p0, v1

    iget-object v4, v4, Lcom/android/incallui/agif/AgifSlidingTrayIcons$TayIconView;->trayContainer:Landroid/view/View;

    aget-object v5, p0, v1

    iget-object v5, v5, Lcom/android/incallui/agif/AgifSlidingTrayIcons$TayIconView;->trayContainer:Landroid/view/View;

    sget-object v5, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    const/4 v6, 0x1

    new-array v6, v6, [F

    const/4 v7, 0x0

    aput v7, v6, v2

    invoke-static {v4, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    aput-object v4, v0, v1

    aget-object v4, v0, v1

    new-instance v5, Lcom/samsung/android/view/a/g;

    invoke-direct {v5}, Lcom/samsung/android/view/a/g;-><init>()V

    invoke-virtual {v4, v5}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    aget-object v4, v0, v1

    mul-int/lit8 v5, v1, 0x3c

    int-to-long v6, v5

    invoke-virtual {v4, v6, v7}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    aget-object v4, v0, v1

    const-wide/16 v6, 0x12c

    invoke-virtual {v4, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private static getTrayTranslationAnimator(Landroid/view/View;F)Landroid/animation/ObjectAnimator;
    .locals 4

    sget-object v0, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    const/4 v1, 0x1

    new-array v1, v1, [F

    const/4 v2, 0x0

    aput p1, v1, v2

    invoke-static {p0, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/view/a/e;

    invoke-direct {v1}, Lcom/samsung/android/view/a/e;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    return-object v0
.end method
