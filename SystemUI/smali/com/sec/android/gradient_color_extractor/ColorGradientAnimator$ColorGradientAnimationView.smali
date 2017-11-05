.class public Lcom/sec/android/gradient_color_extractor/ColorGradientAnimator$ColorGradientAnimationView;
.super Landroid/view/View;
.source "ColorGradientAnimator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/gradient_color_extractor/ColorGradientAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ColorGradientAnimationView"
.end annotation


# instance fields
.field mAnimation_mode:I

.field mGradientColor:[[F

.field mGradientColor_background:[F

.field mGradientLinear_left:Landroid/graphics/Bitmap;

.field mGradientLinear_right:Landroid/graphics/Bitmap;

.field mGradient_anim_value_left:F

.field mGradient_anim_value_right:F

.field mGradient_last_anim_time_left:J

.field mGradient_last_anim_time_right:J

.field mGradient_moving_animator_left:Landroid/animation/ValueAnimator;

.field mGradient_moving_animator_right:Landroid/animation/ValueAnimator;

.field mLoopCount:I

.field mStandardScreenHeight:I

.field mStandardScreenWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 10

    const/4 v9, 0x2

    const/4 v8, -0x1

    const/4 v7, 0x0

    const/4 v6, 0x1

    const/4 v5, 0x0

    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    sget-object v1, Lcom/sec/android/gradient_color_extractor/ColorGradientAnimator;->mGradientColorSet:[[[F

    aget-object v1, v1, v5

    iput-object v1, p0, Lcom/sec/android/gradient_color_extractor/ColorGradientAnimator$ColorGradientAnimationView;->mGradientColor:[[F

    const/4 v1, 0x3

    new-array v1, v1, [F

    const/high16 v2, 0x435a0000    # 218.0f

    aput v2, v1, v5

    const v2, 0x3edc28f6    # 0.43f

    aput v2, v1, v6

    const v2, 0x3f23d70a    # 0.64f

    aput v2, v1, v9

    iput-object v1, p0, Lcom/sec/android/gradient_color_extractor/ColorGradientAnimator$ColorGradientAnimationView;->mGradientColor_background:[F

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sec/android/gradient_color_extractor/ColorGradientAnimator$ColorGradientAnimationView;->mGradientLinear_right:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sec/android/gradient_color_extractor/ColorGradientAnimator$ColorGradientAnimationView;->mGradientLinear_left:Landroid/graphics/Bitmap;

    const/16 v1, 0x5a0

    iput v1, p0, Lcom/sec/android/gradient_color_extractor/ColorGradientAnimator$ColorGradientAnimationView;->mStandardScreenWidth:I

    const/16 v1, 0xb90

    iput v1, p0, Lcom/sec/android/gradient_color_extractor/ColorGradientAnimator$ColorGradientAnimationView;->mStandardScreenHeight:I

    iput v5, p0, Lcom/sec/android/gradient_color_extractor/ColorGradientAnimator$ColorGradientAnimationView;->mAnimation_mode:I

    iput v7, p0, Lcom/sec/android/gradient_color_extractor/ColorGradientAnimator$ColorGradientAnimationView;->mGradient_anim_value_right:F

    iput v7, p0, Lcom/sec/android/gradient_color_extractor/ColorGradientAnimator$ColorGradientAnimationView;->mGradient_anim_value_left:F

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/sec/android/gradient_color_extractor/ColorGradientAnimator$ColorGradientAnimationView;->mGradient_last_anim_time_right:J

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/sec/android/gradient_color_extractor/ColorGradientAnimator$ColorGradientAnimationView;->mGradient_last_anim_time_left:J

    iput v8, p0, Lcom/sec/android/gradient_color_extractor/ColorGradientAnimator$ColorGradientAnimationView;->mLoopCount:I

    new-instance v1, Landroid/animation/ValueAnimator;

    invoke-direct {v1}, Landroid/animation/ValueAnimator;-><init>()V

    iput-object v1, p0, Lcom/sec/android/gradient_color_extractor/ColorGradientAnimator$ColorGradientAnimationView;->mGradient_moving_animator_right:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/sec/android/gradient_color_extractor/ColorGradientAnimator$ColorGradientAnimationView;->mGradient_moving_animator_right:Landroid/animation/ValueAnimator;

    new-instance v2, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v2}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v1, p0, Lcom/sec/android/gradient_color_extractor/ColorGradientAnimator$ColorGradientAnimationView;->mGradient_moving_animator_right:Landroid/animation/ValueAnimator;

    invoke-virtual {v1, v8}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    iget-object v1, p0, Lcom/sec/android/gradient_color_extractor/ColorGradientAnimator$ColorGradientAnimationView;->mGradient_moving_animator_right:Landroid/animation/ValueAnimator;

    invoke-virtual {v1, v6}, Landroid/animation/ValueAnimator;->setRepeatMode(I)V

    iget-object v1, p0, Lcom/sec/android/gradient_color_extractor/ColorGradientAnimator$ColorGradientAnimationView;->mGradient_moving_animator_right:Landroid/animation/ValueAnimator;

    const/4 v2, 0x4

    new-array v2, v2, [F

    aput v7, v2, v5

    const/high16 v3, 0x3f000000    # 0.5f

    aput v3, v2, v6

    const/high16 v3, 0x3f400000    # 0.75f

    aput v3, v2, v9

    const/4 v3, 0x3

    const/high16 v4, 0x3f800000    # 1.0f

    aput v4, v2, v3

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    iget-object v1, p0, Lcom/sec/android/gradient_color_extractor/ColorGradientAnimator$ColorGradientAnimationView;->mGradient_moving_animator_right:Landroid/animation/ValueAnimator;

    new-instance v2, Lcom/sec/android/gradient_color_extractor/ColorGradientAnimator$ColorGradientAnimationView$1;

    invoke-direct {v2, p0}, Lcom/sec/android/gradient_color_extractor/ColorGradientAnimator$ColorGradientAnimationView$1;-><init>(Lcom/sec/android/gradient_color_extractor/ColorGradientAnimator$ColorGradientAnimationView;)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance v1, Landroid/animation/ValueAnimator;

    invoke-direct {v1}, Landroid/animation/ValueAnimator;-><init>()V

    iput-object v1, p0, Lcom/sec/android/gradient_color_extractor/ColorGradientAnimator$ColorGradientAnimationView;->mGradient_moving_animator_left:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/sec/android/gradient_color_extractor/ColorGradientAnimator$ColorGradientAnimationView;->mGradient_moving_animator_left:Landroid/animation/ValueAnimator;

    new-instance v2, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v2}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v1, p0, Lcom/sec/android/gradient_color_extractor/ColorGradientAnimator$ColorGradientAnimationView;->mGradient_moving_animator_left:Landroid/animation/ValueAnimator;

    invoke-virtual {v1, v8}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    iget-object v1, p0, Lcom/sec/android/gradient_color_extractor/ColorGradientAnimator$ColorGradientAnimationView;->mGradient_moving_animator_left:Landroid/animation/ValueAnimator;

    invoke-virtual {v1, v6}, Landroid/animation/ValueAnimator;->setRepeatMode(I)V

    iget-object v1, p0, Lcom/sec/android/gradient_color_extractor/ColorGradientAnimator$ColorGradientAnimationView;->mGradient_moving_animator_left:Landroid/animation/ValueAnimator;

    const/4 v2, 0x4

    new-array v2, v2, [F

    aput v7, v2, v5

    const/high16 v3, 0x3f000000    # 0.5f

    aput v3, v2, v6

    const/high16 v3, 0x3f400000    # 0.75f

    aput v3, v2, v9

    const/4 v3, 0x3

    const/high16 v4, 0x3f800000    # 1.0f

    aput v4, v2, v3

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    iget-object v1, p0, Lcom/sec/android/gradient_color_extractor/ColorGradientAnimator$ColorGradientAnimationView;->mGradient_moving_animator_left:Landroid/animation/ValueAnimator;

    new-instance v2, Lcom/sec/android/gradient_color_extractor/ColorGradientAnimator$ColorGradientAnimationView$2;

    invoke-direct {v2, p0}, Lcom/sec/android/gradient_color_extractor/ColorGradientAnimator$ColorGradientAnimationView$2;-><init>(Lcom/sec/android/gradient_color_extractor/ColorGradientAnimator$ColorGradientAnimationView;)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance v0, Lcom/sec/android/gradient_color_extractor/CallGradient$GradientColorResult;

    invoke-direct {v0}, Lcom/sec/android/gradient_color_extractor/CallGradient$GradientColorResult;-><init>()V

    iget-object v1, p0, Lcom/sec/android/gradient_color_extractor/ColorGradientAnimator$ColorGradientAnimationView;->mGradientColor:[[F

    aget-object v1, v1, v5

    invoke-static {v1}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result v1

    iput v1, v0, Lcom/sec/android/gradient_color_extractor/CallGradient$GradientColorResult;->gradientColor_a:I

    iget-object v1, p0, Lcom/sec/android/gradient_color_extractor/ColorGradientAnimator$ColorGradientAnimationView;->mGradientColor:[[F

    aget-object v1, v1, v6

    invoke-static {v1}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result v1

    iput v1, v0, Lcom/sec/android/gradient_color_extractor/CallGradient$GradientColorResult;->gradientColor_b:I

    invoke-virtual {p0, v0}, Lcom/sec/android/gradient_color_extractor/ColorGradientAnimator$ColorGradientAnimationView;->setColorGradient_from_ColorGradientResult(Lcom/sec/android/gradient_color_extractor/CallGradient$GradientColorResult;)V

    iget v1, p0, Lcom/sec/android/gradient_color_extractor/ColorGradientAnimator$ColorGradientAnimationView;->mAnimation_mode:I

    invoke-virtual {p0, v1}, Lcom/sec/android/gradient_color_extractor/ColorGradientAnimator$ColorGradientAnimationView;->setAnimationMode(I)V

    return-void
.end method


# virtual methods
.method public isRunning()Z
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/sec/android/gradient_color_extractor/ColorGradientAnimator$ColorGradientAnimationView;->mGradient_moving_animator_right:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/sec/android/gradient_color_extractor/ColorGradientAnimator$ColorGradientAnimationView;->mGradient_moving_animator_left:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 40

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/gradient_color_extractor/ColorGradientAnimator$ColorGradientAnimationView;->getWidth()I

    move-result v33

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/gradient_color_extractor/ColorGradientAnimator$ColorGradientAnimationView;->getHeight()I

    move-result v32

    move/from16 v0, v33

    int-to-float v0, v0

    move/from16 v35, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/gradient_color_extractor/ColorGradientAnimator$ColorGradientAnimationView;->mStandardScreenWidth:I

    move/from16 v36, v0

    move/from16 v0, v36

    int-to-float v0, v0

    move/from16 v36, v0

    div-float v34, v35, v36

    move/from16 v0, v32

    int-to-float v0, v0

    move/from16 v35, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/gradient_color_extractor/ColorGradientAnimator$ColorGradientAnimationView;->mStandardScreenHeight:I

    move/from16 v36, v0

    move/from16 v0, v36

    int-to-float v0, v0

    move/from16 v36, v0

    div-float v22, v35, v36

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/gradient_color_extractor/ColorGradientAnimator$ColorGradientAnimationView;->mGradientColor_background:[F

    move-object/from16 v35, v0

    invoke-static/range {v35 .. v35}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result v15

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Landroid/graphics/Canvas;->drawColor(I)V

    new-instance v28, Landroid/graphics/Paint;

    invoke-direct/range {v28 .. v28}, Landroid/graphics/Paint;-><init>()V

    new-instance v26, Landroid/graphics/Paint;

    invoke-direct/range {v26 .. v26}, Landroid/graphics/Paint;-><init>()V

    new-instance v27, Landroid/graphics/Paint;

    invoke-direct/range {v27 .. v27}, Landroid/graphics/Paint;-><init>()V

    new-instance v24, Landroid/graphics/Matrix;

    invoke-direct/range {v24 .. v24}, Landroid/graphics/Matrix;-><init>()V

    new-instance v25, Landroid/graphics/Matrix;

    invoke-direct/range {v25 .. v25}, Landroid/graphics/Matrix;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/gradient_color_extractor/ColorGradientAnimator$ColorGradientAnimationView;->mGradientLinear_left:Landroid/graphics/Bitmap;

    move-object/from16 v35, v0

    invoke-virtual/range {v35 .. v35}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v35

    move/from16 v0, v35

    int-to-double v0, v0

    move-wide/from16 v36, v0

    const/high16 v35, 0x42800000    # 64.0f

    move/from16 v0, v35

    float-to-double v0, v0

    move-wide/from16 v38, v0

    invoke-static/range {v38 .. v39}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v38

    invoke-static/range {v38 .. v39}, Ljava/lang/Math;->sin(D)D

    move-result-wide v38

    div-double v36, v36, v38

    move-wide/from16 v0, v36

    double-to-float v0, v0

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/gradient_color_extractor/ColorGradientAnimator$ColorGradientAnimationView;->mGradientLinear_right:Landroid/graphics/Bitmap;

    move-object/from16 v35, v0

    invoke-virtual/range {v35 .. v35}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v35

    move/from16 v0, v35

    int-to-double v0, v0

    move-wide/from16 v36, v0

    const/high16 v35, 0x42880000    # 68.0f

    move/from16 v0, v35

    float-to-double v0, v0

    move-wide/from16 v38, v0

    invoke-static/range {v38 .. v39}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v38

    invoke-static/range {v38 .. v39}, Ljava/lang/Math;->sin(D)D

    move-result-wide v38

    div-double v36, v36, v38

    move-wide/from16 v0, v36

    double-to-float v0, v0

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/gradient_color_extractor/ColorGradientAnimator$ColorGradientAnimationView;->mStandardScreenHeight:I

    move/from16 v35, v0

    move/from16 v0, v35

    int-to-float v0, v0

    move/from16 v35, v0

    div-float v35, v35, v18

    const/high16 v36, 0x3f800000    # 1.0f

    mul-float v16, v35, v36

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/gradient_color_extractor/ColorGradientAnimator$ColorGradientAnimationView;->mStandardScreenHeight:I

    move/from16 v35, v0

    move/from16 v0, v35

    int-to-float v0, v0

    move/from16 v35, v0

    div-float v35, v35, v19

    const/high16 v36, 0x3f800000    # 1.0f

    mul-float v17, v35, v36

    mul-float v20, v18, v16

    mul-float v21, v19, v17

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/gradient_color_extractor/ColorGradientAnimator$ColorGradientAnimationView;->mGradient_anim_value_right:F

    move/from16 v35, v0

    const v36, 0x40490fdb    # (float)Math.PI

    mul-float v35, v35, v36

    const/high16 v36, 0x40000000    # 2.0f

    mul-float v14, v35, v36

    const/4 v12, 0x0

    const/high16 v10, 0x3f800000    # 1.0f

    const v6, 0x40490fdb    # (float)Math.PI

    float-to-double v0, v14

    move-wide/from16 v36, v0

    invoke-static/range {v36 .. v37}, Ljava/lang/Math;->cos(D)D

    move-result-wide v36

    move-wide/from16 v0, v36

    double-to-float v0, v0

    move/from16 v35, v0

    move/from16 v0, v35

    neg-float v0, v0

    move/from16 v35, v0

    const/high16 v36, 0x3f800000    # 1.0f

    add-float v35, v35, v36

    const/high16 v36, 0x3f000000    # 0.5f

    mul-float v31, v35, v36

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/gradient_color_extractor/ColorGradientAnimator$ColorGradientAnimationView;->mGradient_anim_value_left:F

    move/from16 v35, v0

    const v36, 0x40490fdb    # (float)Math.PI

    mul-float v35, v35, v36

    const/high16 v36, 0x40000000    # 2.0f

    mul-float v13, v35, v36

    const/4 v11, 0x0

    const/high16 v8, 0x3f800000    # 1.0f

    const v7, 0x40490fdb    # (float)Math.PI

    float-to-double v0, v13

    move-wide/from16 v36, v0

    invoke-static/range {v36 .. v37}, Ljava/lang/Math;->cos(D)D

    move-result-wide v36

    move-wide/from16 v0, v36

    double-to-float v0, v0

    move/from16 v35, v0

    move/from16 v0, v35

    neg-float v0, v0

    move/from16 v35, v0

    const/high16 v36, 0x3f800000    # 1.0f

    add-float v35, v35, v36

    const/high16 v36, 0x3f000000    # 0.5f

    mul-float v29, v35, v36

    float-to-double v0, v13

    move-wide/from16 v36, v0

    invoke-static/range {v36 .. v37}, Ljava/lang/Math;->cos(D)D

    move-result-wide v36

    move-wide/from16 v0, v36

    double-to-float v0, v0

    move/from16 v35, v0

    move/from16 v0, v35

    neg-float v0, v0

    move/from16 v35, v0

    const/high16 v36, 0x3f800000    # 1.0f

    add-float v35, v35, v36

    const/high16 v36, 0x3f000000    # 0.5f

    mul-float v30, v35, v36

    const/high16 v9, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/gradient_color_extractor/ColorGradientAnimator$ColorGradientAnimationView;->mAnimation_mode:I

    move/from16 v35, v0

    packed-switch v35, :pswitch_data_0

    :pswitch_0
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/gradient_color_extractor/ColorGradientAnimator$ColorGradientAnimationView;->mStandardScreenHeight:I

    move/from16 v35, v0

    move/from16 v0, v35

    int-to-float v12, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/gradient_color_extractor/ColorGradientAnimator$ColorGradientAnimationView;->mStandardScreenHeight:I

    move/from16 v35, v0

    move/from16 v0, v35

    int-to-float v11, v0

    const v35, 0x3fb33333    # 1.4f

    mul-float v35, v35, v31

    const v36, 0x3ecccccd    # 0.4f

    add-float v10, v35, v36

    const v35, 0x3f666666    # 0.9f

    mul-float v35, v35, v29

    const v36, 0x3f8ccccd    # 1.1f

    add-float v8, v35, v36

    const/high16 v35, 0x437f0000    # 255.0f

    mul-float v35, v35, v30

    const v36, 0x3f19999a    # 0.6f

    mul-float v35, v35, v36

    move/from16 v0, v35

    float-to-int v0, v0

    move/from16 v35, v0

    move-object/from16 v0, v27

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    :goto_0
    const/16 v23, 0x0

    :goto_1
    const/16 v35, 0x32

    move/from16 v0, v23

    move/from16 v1, v35

    if-lt v0, v1, :cond_0

    invoke-virtual/range {v28 .. v28}, Landroid/graphics/Paint;->getAlpha()I

    move-result v35

    move/from16 v0, v35

    int-to-float v0, v0

    move/from16 v35, v0

    const v36, 0x3f4ccccd    # 0.8f

    mul-float v35, v35, v36

    move/from16 v0, v35

    float-to-int v0, v0

    move/from16 v35, v0

    move-object/from16 v0, v28

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    const/16 v23, 0x0

    :goto_2
    const/16 v35, 0x32

    move/from16 v0, v23

    move/from16 v1, v35

    if-lt v0, v1, :cond_1

    const/16 v23, 0x0

    :goto_3
    const/16 v35, 0x32

    move/from16 v0, v23

    move/from16 v1, v35

    if-lt v0, v1, :cond_2

    invoke-super/range {p0 .. p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    return-void

    :pswitch_1
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/gradient_color_extractor/ColorGradientAnimator$ColorGradientAnimationView;->mStandardScreenHeight:I

    move/from16 v35, v0

    move/from16 v0, v35

    int-to-float v12, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/gradient_color_extractor/ColorGradientAnimator$ColorGradientAnimationView;->mStandardScreenHeight:I

    move/from16 v35, v0

    move/from16 v0, v35

    int-to-float v11, v0

    const v35, 0x3fb33333    # 1.4f

    mul-float v35, v35, v31

    const v36, 0x3ecccccd    # 0.4f

    add-float v10, v35, v36

    const v35, 0x3f666666    # 0.9f

    mul-float v35, v35, v29

    const v36, 0x3f8ccccd    # 1.1f

    add-float v8, v35, v36

    const/high16 v35, 0x437f0000    # 255.0f

    mul-float v35, v35, v30

    const v36, 0x3f19999a    # 0.6f

    mul-float v35, v35, v36

    move/from16 v0, v35

    float-to-int v0, v0

    move/from16 v35, v0

    move-object/from16 v0, v27

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    goto :goto_0

    :cond_0
    invoke-virtual/range {v24 .. v24}, Landroid/graphics/Matrix;->reset()V

    const/16 v35, 0x0

    const/16 v36, 0x0

    move-object/from16 v0, v25

    move/from16 v1, v34

    move/from16 v2, v22

    move/from16 v3, v35

    move/from16 v4, v36

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Matrix;->setScale(FFFF)V

    move-object/from16 v0, v24

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->setConcat(Landroid/graphics/Matrix;Landroid/graphics/Matrix;)Z

    const/16 v35, 0x0

    move/from16 v0, v20

    neg-float v0, v0

    move/from16 v36, v0

    add-float v36, v36, v11

    move-object/from16 v0, v25

    move/from16 v1, v35

    move/from16 v2, v36

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->setTranslate(FF)V

    move-object/from16 v0, v24

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->setConcat(Landroid/graphics/Matrix;Landroid/graphics/Matrix;)Z

    const/high16 v35, 0x41d00000    # 26.0f

    move/from16 v0, v35

    neg-float v0, v0

    move/from16 v35, v0

    const/16 v36, 0x0

    add-float v35, v35, v36

    const/16 v36, 0x0

    const/16 v37, 0x0

    move-object/from16 v0, v25

    move/from16 v1, v35

    move/from16 v2, v36

    move/from16 v3, v37

    invoke-virtual {v0, v1, v2, v3}, Landroid/graphics/Matrix;->setRotate(FFF)V

    move-object/from16 v0, v24

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->setConcat(Landroid/graphics/Matrix;Landroid/graphics/Matrix;)Z

    const/high16 v35, 0x3f800000    # 1.0f

    mul-float v36, v16, v8

    const/16 v37, 0x0

    const/16 v38, 0x0

    move-object/from16 v0, v25

    move/from16 v1, v35

    move/from16 v2, v36

    move/from16 v3, v37

    move/from16 v4, v38

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Matrix;->setScale(FFFF)V

    move-object/from16 v0, v24

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->setConcat(Landroid/graphics/Matrix;Landroid/graphics/Matrix;)Z

    add-int/lit8 v35, v23, -0x10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/gradient_color_extractor/ColorGradientAnimator$ColorGradientAnimationView;->mGradientLinear_left:Landroid/graphics/Bitmap;

    move-object/from16 v36, v0

    invoke-virtual/range {v36 .. v36}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v36

    mul-int v35, v35, v36

    move/from16 v0, v35

    int-to-float v0, v0

    move/from16 v35, v0

    const/16 v36, 0x0

    move-object/from16 v0, v25

    move/from16 v1, v35

    move/from16 v2, v36

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->setTranslate(FF)V

    move-object/from16 v0, v24

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->setConcat(Landroid/graphics/Matrix;Landroid/graphics/Matrix;)Z

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->setMatrix(Landroid/graphics/Matrix;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/gradient_color_extractor/ColorGradientAnimator$ColorGradientAnimationView;->mGradientLinear_left:Landroid/graphics/Bitmap;

    move-object/from16 v35, v0

    const/16 v36, 0x0

    const/16 v37, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v35

    move/from16 v2, v36

    move/from16 v3, v37

    move-object/from16 v4, v26

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    add-int/lit8 v23, v23, 0x1

    goto/16 :goto_1

    :cond_1
    invoke-virtual/range {v24 .. v24}, Landroid/graphics/Matrix;->reset()V

    const/16 v35, 0x0

    const/16 v36, 0x0

    move-object/from16 v0, v25

    move/from16 v1, v34

    move/from16 v2, v22

    move/from16 v3, v35

    move/from16 v4, v36

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Matrix;->setScale(FFFF)V

    move-object/from16 v0, v24

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->setConcat(Landroid/graphics/Matrix;Landroid/graphics/Matrix;)Z

    const/16 v35, 0x0

    move/from16 v0, v21

    neg-float v0, v0

    move/from16 v36, v0

    add-float v36, v36, v12

    move-object/from16 v0, v25

    move/from16 v1, v35

    move/from16 v2, v36

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->setTranslate(FF)V

    move-object/from16 v0, v24

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->setConcat(Landroid/graphics/Matrix;Landroid/graphics/Matrix;)Z

    const/high16 v35, 0x41b00000    # 22.0f

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/gradient_color_extractor/ColorGradientAnimator$ColorGradientAnimationView;->mStandardScreenWidth:I

    move/from16 v36, v0

    move/from16 v0, v36

    int-to-float v0, v0

    move/from16 v36, v0

    const/16 v37, 0x0

    move-object/from16 v0, v25

    move/from16 v1, v35

    move/from16 v2, v36

    move/from16 v3, v37

    invoke-virtual {v0, v1, v2, v3}, Landroid/graphics/Matrix;->setRotate(FFF)V

    move-object/from16 v0, v24

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->setConcat(Landroid/graphics/Matrix;Landroid/graphics/Matrix;)Z

    const/high16 v35, 0x3f800000    # 1.0f

    mul-float v36, v17, v10

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/gradient_color_extractor/ColorGradientAnimator$ColorGradientAnimationView;->mStandardScreenWidth:I

    move/from16 v37, v0

    move/from16 v0, v37

    int-to-float v0, v0

    move/from16 v37, v0

    const/16 v38, 0x0

    move-object/from16 v0, v25

    move/from16 v1, v35

    move/from16 v2, v36

    move/from16 v3, v37

    move/from16 v4, v38

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Matrix;->setScale(FFFF)V

    move-object/from16 v0, v24

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->setConcat(Landroid/graphics/Matrix;Landroid/graphics/Matrix;)Z

    add-int/lit8 v35, v23, -0x19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/gradient_color_extractor/ColorGradientAnimator$ColorGradientAnimationView;->mGradientLinear_right:Landroid/graphics/Bitmap;

    move-object/from16 v36, v0

    invoke-virtual/range {v36 .. v36}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v36

    mul-int v35, v35, v36

    move/from16 v0, v35

    int-to-float v0, v0

    move/from16 v35, v0

    const/16 v36, 0x0

    move-object/from16 v0, v25

    move/from16 v1, v35

    move/from16 v2, v36

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->setTranslate(FF)V

    move-object/from16 v0, v24

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->setConcat(Landroid/graphics/Matrix;Landroid/graphics/Matrix;)Z

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->setMatrix(Landroid/graphics/Matrix;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/gradient_color_extractor/ColorGradientAnimator$ColorGradientAnimationView;->mGradientLinear_right:Landroid/graphics/Bitmap;

    move-object/from16 v35, v0

    const/16 v36, 0x0

    const/16 v37, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v35

    move/from16 v2, v36

    move/from16 v3, v37

    move-object/from16 v4, v28

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    add-int/lit8 v23, v23, 0x1

    goto/16 :goto_2

    :cond_2
    invoke-virtual/range {v24 .. v24}, Landroid/graphics/Matrix;->reset()V

    const/16 v35, 0x0

    const/16 v36, 0x0

    move-object/from16 v0, v25

    move/from16 v1, v34

    move/from16 v2, v22

    move/from16 v3, v35

    move/from16 v4, v36

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Matrix;->setScale(FFFF)V

    move-object/from16 v0, v24

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->setConcat(Landroid/graphics/Matrix;Landroid/graphics/Matrix;)Z

    const/16 v35, 0x0

    move/from16 v0, v20

    neg-float v0, v0

    move/from16 v36, v0

    add-float v36, v36, v11

    move-object/from16 v0, v25

    move/from16 v1, v35

    move/from16 v2, v36

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->setTranslate(FF)V

    move-object/from16 v0, v24

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->setConcat(Landroid/graphics/Matrix;Landroid/graphics/Matrix;)Z

    const/high16 v35, 0x41d00000    # 26.0f

    move/from16 v0, v35

    neg-float v0, v0

    move/from16 v35, v0

    const/16 v36, 0x0

    add-float v35, v35, v36

    const/16 v36, 0x0

    const/16 v37, 0x0

    move-object/from16 v0, v25

    move/from16 v1, v35

    move/from16 v2, v36

    move/from16 v3, v37

    invoke-virtual {v0, v1, v2, v3}, Landroid/graphics/Matrix;->setRotate(FFF)V

    move-object/from16 v0, v24

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->setConcat(Landroid/graphics/Matrix;Landroid/graphics/Matrix;)Z

    const/high16 v35, 0x3f800000    # 1.0f

    mul-float v36, v16, v8

    const/16 v37, 0x0

    const/16 v38, 0x0

    move-object/from16 v0, v25

    move/from16 v1, v35

    move/from16 v2, v36

    move/from16 v3, v37

    move/from16 v4, v38

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Matrix;->setScale(FFFF)V

    move-object/from16 v0, v24

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->setConcat(Landroid/graphics/Matrix;Landroid/graphics/Matrix;)Z

    add-int/lit8 v35, v23, -0x10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/gradient_color_extractor/ColorGradientAnimator$ColorGradientAnimationView;->mGradientLinear_left:Landroid/graphics/Bitmap;

    move-object/from16 v36, v0

    invoke-virtual/range {v36 .. v36}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v36

    mul-int v35, v35, v36

    move/from16 v0, v35

    int-to-float v0, v0

    move/from16 v35, v0

    const/16 v36, 0x0

    move-object/from16 v0, v25

    move/from16 v1, v35

    move/from16 v2, v36

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->setTranslate(FF)V

    move-object/from16 v0, v24

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->setConcat(Landroid/graphics/Matrix;Landroid/graphics/Matrix;)Z

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->setMatrix(Landroid/graphics/Matrix;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/gradient_color_extractor/ColorGradientAnimator$ColorGradientAnimationView;->mGradientLinear_left:Landroid/graphics/Bitmap;

    move-object/from16 v35, v0

    const/16 v36, 0x0

    const/16 v37, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v35

    move/from16 v2, v36

    move/from16 v3, v37

    move-object/from16 v4, v27

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    add-int/lit8 v23, v23, 0x1

    goto/16 :goto_3

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setAnimationMode(I)V
    .locals 12

    iput p1, p0, Lcom/sec/android/gradient_color_extractor/ColorGradientAnimator$ColorGradientAnimationView;->mAnimation_mode:I

    iget v5, p0, Lcom/sec/android/gradient_color_extractor/ColorGradientAnimator$ColorGradientAnimationView;->mLoopCount:I

    const/4 v6, 0x0

    new-instance v2, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v2}, Landroid/view/animation/LinearInterpolator;-><init>()V

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    const/16 v1, 0xbb8

    const/16 v0, 0xbb8

    const/16 v6, 0x3e8

    iget-object v7, p0, Lcom/sec/android/gradient_color_extractor/ColorGradientAnimator$ColorGradientAnimationView;->mGradient_moving_animator_right:Landroid/animation/ValueAnimator;

    const/4 v8, 0x4

    new-array v8, v8, [F

    const/4 v9, 0x0

    const/4 v10, 0x0

    aput v10, v8, v9

    const/4 v9, 0x1

    const/high16 v10, 0x3f000000    # 0.5f

    aput v10, v8, v9

    const/4 v9, 0x2

    const/high16 v10, 0x3f400000    # 0.75f

    aput v10, v8, v9

    const/4 v9, 0x3

    const/high16 v10, 0x3f800000    # 1.0f

    aput v10, v8, v9

    invoke-virtual {v7, v8}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    iget-object v7, p0, Lcom/sec/android/gradient_color_extractor/ColorGradientAnimator$ColorGradientAnimationView;->mGradient_moving_animator_left:Landroid/animation/ValueAnimator;

    const/4 v8, 0x4

    new-array v8, v8, [F

    const/4 v9, 0x0

    const/4 v10, 0x0

    aput v10, v8, v9

    const/4 v9, 0x1

    const/high16 v10, 0x3f000000    # 0.5f

    aput v10, v8, v9

    const/4 v9, 0x2

    const/high16 v10, 0x3f400000    # 0.75f

    aput v10, v8, v9

    const/4 v9, 0x3

    const/high16 v10, 0x3f800000    # 1.0f

    aput v10, v8, v9

    invoke-virtual {v7, v8}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    :goto_0
    iget-object v7, p0, Lcom/sec/android/gradient_color_extractor/ColorGradientAnimator$ColorGradientAnimationView;->mGradient_moving_animator_right:Landroid/animation/ValueAnimator;

    invoke-virtual {v7}, Landroid/animation/ValueAnimator;->getCurrentPlayTime()J

    move-result-wide v8

    iget-object v7, p0, Lcom/sec/android/gradient_color_extractor/ColorGradientAnimator$ColorGradientAnimationView;->mGradient_moving_animator_right:Landroid/animation/ValueAnimator;

    invoke-virtual {v7}, Landroid/animation/ValueAnimator;->getDuration()J

    move-result-wide v10

    rem-long/2addr v8, v10

    long-to-float v7, v8

    int-to-float v8, v1

    iget-object v9, p0, Lcom/sec/android/gradient_color_extractor/ColorGradientAnimator$ColorGradientAnimationView;->mGradient_moving_animator_right:Landroid/animation/ValueAnimator;

    invoke-virtual {v9}, Landroid/animation/ValueAnimator;->getDuration()J

    move-result-wide v10

    long-to-float v9, v10

    div-float/2addr v8, v9

    mul-float/2addr v7, v8

    float-to-long v8, v7

    iput-wide v8, p0, Lcom/sec/android/gradient_color_extractor/ColorGradientAnimator$ColorGradientAnimationView;->mGradient_last_anim_time_right:J

    invoke-virtual {p0}, Lcom/sec/android/gradient_color_extractor/ColorGradientAnimator$ColorGradientAnimationView;->isRunning()Z

    move-result v3

    iget-object v7, p0, Lcom/sec/android/gradient_color_extractor/ColorGradientAnimator$ColorGradientAnimationView;->mGradient_moving_animator_right:Landroid/animation/ValueAnimator;

    invoke-virtual {v7}, Landroid/animation/ValueAnimator;->cancel()V

    iget-object v7, p0, Lcom/sec/android/gradient_color_extractor/ColorGradientAnimator$ColorGradientAnimationView;->mGradient_moving_animator_right:Landroid/animation/ValueAnimator;

    int-to-long v8, v1

    invoke-virtual {v7, v8, v9}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v7, p0, Lcom/sec/android/gradient_color_extractor/ColorGradientAnimator$ColorGradientAnimationView;->mGradient_moving_animator_right:Landroid/animation/ValueAnimator;

    invoke-virtual {v7, v5}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    iget-object v7, p0, Lcom/sec/android/gradient_color_extractor/ColorGradientAnimator$ColorGradientAnimationView;->mGradient_moving_animator_right:Landroid/animation/ValueAnimator;

    invoke-virtual {v7, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v7, p0, Lcom/sec/android/gradient_color_extractor/ColorGradientAnimator$ColorGradientAnimationView;->mGradient_moving_animator_right:Landroid/animation/ValueAnimator;

    iget-wide v8, p0, Lcom/sec/android/gradient_color_extractor/ColorGradientAnimator$ColorGradientAnimationView;->mGradient_last_anim_time_right:J

    invoke-virtual {v7, v8, v9}, Landroid/animation/ValueAnimator;->setCurrentPlayTime(J)V

    if-nez v3, :cond_0

    :goto_1
    iget-object v7, p0, Lcom/sec/android/gradient_color_extractor/ColorGradientAnimator$ColorGradientAnimationView;->mGradient_moving_animator_left:Landroid/animation/ValueAnimator;

    invoke-virtual {v7}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v4

    iget-object v7, p0, Lcom/sec/android/gradient_color_extractor/ColorGradientAnimator$ColorGradientAnimationView;->mGradient_moving_animator_left:Landroid/animation/ValueAnimator;

    invoke-virtual {v7}, Landroid/animation/ValueAnimator;->getCurrentPlayTime()J

    move-result-wide v8

    iget-object v7, p0, Lcom/sec/android/gradient_color_extractor/ColorGradientAnimator$ColorGradientAnimationView;->mGradient_moving_animator_left:Landroid/animation/ValueAnimator;

    invoke-virtual {v7}, Landroid/animation/ValueAnimator;->getDuration()J

    move-result-wide v10

    rem-long/2addr v8, v10

    long-to-float v7, v8

    int-to-float v8, v1

    iget-object v9, p0, Lcom/sec/android/gradient_color_extractor/ColorGradientAnimator$ColorGradientAnimationView;->mGradient_moving_animator_left:Landroid/animation/ValueAnimator;

    invoke-virtual {v9}, Landroid/animation/ValueAnimator;->getDuration()J

    move-result-wide v10

    long-to-float v9, v10

    div-float/2addr v8, v9

    mul-float/2addr v7, v8

    float-to-long v8, v7

    iput-wide v8, p0, Lcom/sec/android/gradient_color_extractor/ColorGradientAnimator$ColorGradientAnimationView;->mGradient_last_anim_time_left:J

    iget-object v7, p0, Lcom/sec/android/gradient_color_extractor/ColorGradientAnimator$ColorGradientAnimationView;->mGradient_moving_animator_left:Landroid/animation/ValueAnimator;

    invoke-virtual {v7}, Landroid/animation/ValueAnimator;->cancel()V

    iget-object v7, p0, Lcom/sec/android/gradient_color_extractor/ColorGradientAnimator$ColorGradientAnimationView;->mGradient_moving_animator_left:Landroid/animation/ValueAnimator;

    int-to-long v8, v0

    invoke-virtual {v7, v8, v9}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v7, p0, Lcom/sec/android/gradient_color_extractor/ColorGradientAnimator$ColorGradientAnimationView;->mGradient_moving_animator_left:Landroid/animation/ValueAnimator;

    invoke-virtual {v7, v5}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    iget-object v7, p0, Lcom/sec/android/gradient_color_extractor/ColorGradientAnimator$ColorGradientAnimationView;->mGradient_moving_animator_left:Landroid/animation/ValueAnimator;

    invoke-virtual {v7, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v7, p0, Lcom/sec/android/gradient_color_extractor/ColorGradientAnimator$ColorGradientAnimationView;->mGradient_moving_animator_left:Landroid/animation/ValueAnimator;

    int-to-long v8, v6

    iget-wide v10, p0, Lcom/sec/android/gradient_color_extractor/ColorGradientAnimator$ColorGradientAnimationView;->mGradient_last_anim_time_left:J

    sub-long/2addr v8, v10

    const-wide/16 v10, 0x0

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    iget-object v7, p0, Lcom/sec/android/gradient_color_extractor/ColorGradientAnimator$ColorGradientAnimationView;->mGradient_moving_animator_left:Landroid/animation/ValueAnimator;

    iget-wide v8, p0, Lcom/sec/android/gradient_color_extractor/ColorGradientAnimator$ColorGradientAnimationView;->mGradient_last_anim_time_left:J

    invoke-virtual {v7, v8, v9}, Landroid/animation/ValueAnimator;->setCurrentPlayTime(J)V

    if-nez v3, :cond_1

    :goto_2
    invoke-virtual {p0}, Lcom/sec/android/gradient_color_extractor/ColorGradientAnimator$ColorGradientAnimationView;->invalidate()V

    return-void

    :pswitch_1
    const/16 v1, 0xfa0

    const/16 v0, 0xfa0

    const/16 v6, 0x535

    iget-object v7, p0, Lcom/sec/android/gradient_color_extractor/ColorGradientAnimator$ColorGradientAnimationView;->mGradient_moving_animator_right:Landroid/animation/ValueAnimator;

    const/4 v8, 0x2

    new-array v8, v8, [F

    const/4 v9, 0x0

    const/4 v10, 0x0

    aput v10, v8, v9

    const/4 v9, 0x1

    const/high16 v10, 0x3f800000    # 1.0f

    aput v10, v8, v9

    invoke-virtual {v7, v8}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    iget-object v7, p0, Lcom/sec/android/gradient_color_extractor/ColorGradientAnimator$ColorGradientAnimationView;->mGradient_moving_animator_left:Landroid/animation/ValueAnimator;

    const/4 v8, 0x2

    new-array v8, v8, [F

    const/4 v9, 0x0

    const/4 v10, 0x0

    aput v10, v8, v9

    const/4 v9, 0x1

    const/high16 v10, 0x3f800000    # 1.0f

    aput v10, v8, v9

    invoke-virtual {v7, v8}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    goto/16 :goto_0

    :cond_0
    iget-object v7, p0, Lcom/sec/android/gradient_color_extractor/ColorGradientAnimator$ColorGradientAnimationView;->mGradient_moving_animator_right:Landroid/animation/ValueAnimator;

    invoke-virtual {v7}, Landroid/animation/ValueAnimator;->start()V

    goto/16 :goto_1

    :cond_1
    iget-object v7, p0, Lcom/sec/android/gradient_color_extractor/ColorGradientAnimator$ColorGradientAnimationView;->mGradient_moving_animator_left:Landroid/animation/ValueAnimator;

    invoke-virtual {v7}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method setColorGradient_from_ColorGradientResult(Lcom/sec/android/gradient_color_extractor/CallGradient$GradientColorResult;)V
    .locals 8

    const/16 v7, 0x1000

    const/16 v6, 0x80

    const/4 v5, 0x0

    iget-object v2, p0, Lcom/sec/android/gradient_color_extractor/ColorGradientAnimator$ColorGradientAnimationView;->mGradientLinear_right:Landroid/graphics/Bitmap;

    if-nez v2, :cond_0

    :goto_0
    iget-object v2, p0, Lcom/sec/android/gradient_color_extractor/ColorGradientAnimator$ColorGradientAnimationView;->mGradientLinear_left:Landroid/graphics/Bitmap;

    if-nez v2, :cond_1

    :goto_1
    const/16 v2, 0x200

    invoke-static {v2}, Lcom/sec/android/gradient_color_extractor/GradientMaker;->setDithering_step_value(I)V

    const/16 v2, 0x16

    invoke-static {v2}, Lcom/sec/android/gradient_color_extractor/GradientMaker;->setDithering_sample_size(I)V

    iget v1, p1, Lcom/sec/android/gradient_color_extractor/CallGradient$GradientColorResult;->gradientColor_a:I

    invoke-static {v1}, Landroid/graphics/Color;->red(I)I

    move-result v2

    invoke-static {v1}, Landroid/graphics/Color;->green(I)I

    move-result v3

    invoke-static {v1}, Landroid/graphics/Color;->blue(I)I

    move-result v4

    invoke-static {v5, v2, v3, v4}, Landroid/graphics/Color;->argb(IIII)I

    move-result v2

    invoke-static {v1, v2, v6, v7}, Lcom/sec/android/gradient_color_extractor/GradientMaker;->getGradation_low_machband(IIII)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/gradient_color_extractor/ColorGradientAnimator$ColorGradientAnimationView;->mGradientLinear_right:Landroid/graphics/Bitmap;

    iget v0, p1, Lcom/sec/android/gradient_color_extractor/CallGradient$GradientColorResult;->gradientColor_b:I

    invoke-static {v0}, Landroid/graphics/Color;->red(I)I

    move-result v2

    invoke-static {v0}, Landroid/graphics/Color;->green(I)I

    move-result v3

    invoke-static {v0}, Landroid/graphics/Color;->blue(I)I

    move-result v4

    invoke-static {v5, v2, v3, v4}, Landroid/graphics/Color;->argb(IIII)I

    move-result v2

    invoke-static {v0, v2, v6, v7}, Lcom/sec/android/gradient_color_extractor/GradientMaker;->getGradation_low_machband(IIII)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/gradient_color_extractor/ColorGradientAnimator$ColorGradientAnimationView;->mGradientLinear_left:Landroid/graphics/Bitmap;

    invoke-virtual {p0}, Lcom/sec/android/gradient_color_extractor/ColorGradientAnimator$ColorGradientAnimationView;->invalidate()V

    return-void

    :cond_0
    iget-object v2, p0, Lcom/sec/android/gradient_color_extractor/ColorGradientAnimator$ColorGradientAnimationView;->mGradientLinear_right:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/sec/android/gradient_color_extractor/ColorGradientAnimator$ColorGradientAnimationView;->mGradientLinear_left:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_1
.end method
