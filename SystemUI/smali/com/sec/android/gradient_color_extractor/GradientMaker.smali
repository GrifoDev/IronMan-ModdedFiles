.class public Lcom/sec/android/gradient_color_extractor/GradientMaker;
.super Ljava/lang/Object;
.source "GradientMaker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/gradient_color_extractor/GradientMaker$GradientFunction;
    }
.end annotation


# static fields
.field static mDithering_sample_size_value:I

.field static mDithering_step_value:I

.field static mGradientFunction:Lcom/sec/android/gradient_color_extractor/GradientMaker$GradientFunction;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/sec/android/gradient_color_extractor/GradientMaker$GradientFunction;->Sine:Lcom/sec/android/gradient_color_extractor/GradientMaker$GradientFunction;

    sput-object v0, Lcom/sec/android/gradient_color_extractor/GradientMaker;->mGradientFunction:Lcom/sec/android/gradient_color_extractor/GradientMaker$GradientFunction;

    const/16 v0, 0x200

    sput v0, Lcom/sec/android/gradient_color_extractor/GradientMaker;->mDithering_step_value:I

    const/16 v0, 0x13

    sput v0, Lcom/sec/android/gradient_color_extractor/GradientMaker;->mDithering_sample_size_value:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static getArithmeticSequence(II)I
    .locals 2

    add-int/lit8 v1, p0, -0x1

    sub-int v1, p1, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v0

    add-int v1, p0, p1

    mul-int/2addr v1, v0

    div-int/lit8 v1, v1, 0x2

    return v1
.end method

.method public static getGradation_low_machband(IIII)Landroid/graphics/Bitmap;
    .locals 44

    const/4 v4, 0x4

    move/from16 v0, p3

    if-lt v0, v4, :cond_0

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    const-wide/high16 v42, 0x402c000000000000L    # 14.0

    move-wide/from16 v0, v42

    invoke-static {v6, v7, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    double-to-int v0, v6

    move/from16 v32, v0

    const/16 v27, 0x0

    :goto_0
    const/4 v4, 0x7

    move/from16 v0, v27

    if-lt v0, v4, :cond_1

    :goto_1
    move/from16 v0, p3

    move/from16 v1, v32

    if-gt v0, v1, :cond_4

    :goto_2
    sget v4, Lcom/sec/android/gradient_color_extractor/GradientMaker;->mDithering_step_value:I

    div-int v4, p3, v4

    const/4 v6, 0x1

    invoke-static {v4, v6}, Ljava/lang/Math;->max(II)I

    move-result v25

    sget v24, Lcom/sec/android/gradient_color_extractor/GradientMaker;->mDithering_sample_size_value:I

    mul-int/lit8 v5, p2, 0x1

    mul-int/lit8 v9, p3, 0x1

    mul-int v4, v5, v9

    new-array v3, v4, [I

    const/4 v10, 0x0

    const/4 v13, 0x1

    const/4 v12, 0x2

    const/4 v11, 0x3

    const/4 v4, 0x4

    new-array v0, v4, [I

    move-object/from16 v20, v0

    const/4 v4, 0x0

    invoke-static/range {p0 .. p0}, Landroid/graphics/Color;->alpha(I)I

    move-result v6

    aput v6, v20, v4

    const/4 v4, 0x1

    invoke-static/range {p0 .. p0}, Landroid/graphics/Color;->red(I)I

    move-result v6

    aput v6, v20, v4

    const/4 v4, 0x2

    invoke-static/range {p0 .. p0}, Landroid/graphics/Color;->green(I)I

    move-result v6

    aput v6, v20, v4

    const/4 v4, 0x3

    invoke-static/range {p0 .. p0}, Landroid/graphics/Color;->blue(I)I

    move-result v6

    aput v6, v20, v4

    const/4 v4, 0x4

    new-array v0, v4, [I

    move-object/from16 v40, v0

    const/4 v4, 0x0

    invoke-static/range {p1 .. p1}, Landroid/graphics/Color;->alpha(I)I

    move-result v6

    aput v6, v40, v4

    const/4 v4, 0x1

    invoke-static/range {p1 .. p1}, Landroid/graphics/Color;->red(I)I

    move-result v6

    aput v6, v40, v4

    const/4 v4, 0x2

    invoke-static/range {p1 .. p1}, Landroid/graphics/Color;->green(I)I

    move-result v6

    aput v6, v40, v4

    const/4 v4, 0x3

    invoke-static/range {p1 .. p1}, Landroid/graphics/Color;->blue(I)I

    move-result v6

    aput v6, v40, v4

    new-instance v37, Ljava/util/Random;

    invoke-direct/range {v37 .. v37}, Ljava/util/Random;-><init>()V

    move/from16 v0, v24

    new-array v0, v0, [[I

    move-object/from16 v36, v0

    move/from16 v0, v24

    new-array v0, v0, [[I

    move-object/from16 v35, v0

    const/16 v27, 0x0

    :goto_3
    move/from16 v0, v27

    move/from16 v1, v24

    if-lt v0, v1, :cond_5

    sget-object v21, Lcom/sec/android/gradient_color_extractor/GradientMaker;->mGradientFunction:Lcom/sec/android/gradient_color_extractor/GradientMaker$GradientFunction;

    const/16 v26, 0x0

    :goto_4
    move/from16 v0, v26

    if-lt v0, v9, :cond_6

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v5, v9, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move v8, v5

    invoke-virtual/range {v2 .. v9}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    const/4 v4, 0x1

    move/from16 v0, p2

    move/from16 v1, p3

    invoke-static {v2, v0, v1, v4}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v39

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    return-object v39

    :cond_0
    const/16 p3, 0x4

    goto/16 :goto_2

    :cond_1
    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    add-int/lit8 v4, v27, 0x8

    add-int/lit8 v4, v4, 0x1

    int-to-double v0, v4

    move-wide/from16 v42, v0

    move-wide/from16 v0, v42

    invoke-static {v6, v7, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    double-to-int v0, v6

    move/from16 v34, v0

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    add-int/lit8 v4, v27, 0x8

    int-to-double v0, v4

    move-wide/from16 v42, v0

    move-wide/from16 v0, v42

    invoke-static {v6, v7, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    double-to-int v0, v6

    move/from16 v30, v0

    move/from16 v0, p3

    move/from16 v1, v30

    if-ge v0, v1, :cond_3

    :cond_2
    add-int/lit8 v27, v27, 0x1

    goto/16 :goto_0

    :cond_3
    move/from16 v0, p3

    move/from16 v1, v34

    if-ge v0, v1, :cond_2

    move/from16 p3, v30

    goto/16 :goto_1

    :cond_4
    move/from16 p3, v32

    goto/16 :goto_2

    :cond_5
    const/4 v4, 0x4

    new-array v4, v4, [I

    aput-object v4, v36, v27

    const/4 v4, 0x4

    new-array v4, v4, [I

    aput-object v4, v35, v27

    add-int/lit8 v27, v27, 0x1

    goto :goto_3

    :cond_6
    add-int/lit8 v4, v9, -0x1

    int-to-float v4, v4

    const/high16 v6, 0x3f800000    # 1.0f

    div-float v29, v6, v4

    const/16 v27, 0x0

    :goto_5
    move/from16 v0, v27

    move/from16 v1, v24

    if-lt v0, v1, :cond_7

    mul-int v16, v26, v5

    add-int/lit8 v4, v26, 0x1

    mul-int v33, v4, v5

    const/16 v41, 0x0

    :goto_6
    move/from16 v0, v41

    if-lt v0, v5, :cond_a

    add-int v26, v26, v25

    goto/16 :goto_4

    :cond_7
    add-int/lit8 v4, v27, 0x1

    mul-int v4, v4, v25

    add-int v4, v4, v26

    int-to-float v0, v4

    move/from16 v22, v0

    int-to-float v4, v9

    cmpl-float v4, v22, v4

    if-ltz v4, :cond_8

    add-int/lit8 v4, v9, -0x1

    int-to-float v4, v4

    add-int/lit8 v6, v9, -0x1

    int-to-float v6, v6

    sub-float v6, v22, v6

    sub-float v22, v4, v6

    :cond_8
    mul-float v22, v22, v29

    aget-object v4, v35, v27

    const/4 v6, 0x0

    const/4 v7, 0x0

    aget v7, v20, v7

    int-to-float v7, v7

    const/4 v8, 0x0

    aget v8, v40, v8

    int-to-float v8, v8

    move/from16 v0, v22

    move-object/from16 v1, v21

    invoke-static {v0, v7, v8, v1}, Lcom/sec/android/gradient_color_extractor/GradientMaker;->gradient_lerp(FFFLcom/sec/android/gradient_color_extractor/GradientMaker$GradientFunction;)F

    move-result v7

    float-to-int v7, v7

    aput v7, v4, v6

    aget-object v4, v35, v27

    const/4 v6, 0x1

    const/4 v7, 0x1

    aget v7, v20, v7

    int-to-float v7, v7

    const/4 v8, 0x1

    aget v8, v40, v8

    int-to-float v8, v8

    move/from16 v0, v22

    move-object/from16 v1, v21

    invoke-static {v0, v7, v8, v1}, Lcom/sec/android/gradient_color_extractor/GradientMaker;->gradient_lerp(FFFLcom/sec/android/gradient_color_extractor/GradientMaker$GradientFunction;)F

    move-result v7

    float-to-int v7, v7

    aput v7, v4, v6

    aget-object v4, v35, v27

    const/4 v6, 0x2

    const/4 v7, 0x2

    aget v7, v20, v7

    int-to-float v7, v7

    const/4 v8, 0x2

    aget v8, v40, v8

    int-to-float v8, v8

    move/from16 v0, v22

    move-object/from16 v1, v21

    invoke-static {v0, v7, v8, v1}, Lcom/sec/android/gradient_color_extractor/GradientMaker;->gradient_lerp(FFFLcom/sec/android/gradient_color_extractor/GradientMaker$GradientFunction;)F

    move-result v7

    float-to-int v7, v7

    aput v7, v4, v6

    aget-object v4, v35, v27

    const/4 v6, 0x3

    const/4 v7, 0x3

    aget v7, v20, v7

    int-to-float v7, v7

    const/4 v8, 0x3

    aget v8, v40, v8

    int-to-float v8, v8

    move/from16 v0, v22

    move-object/from16 v1, v21

    invoke-static {v0, v7, v8, v1}, Lcom/sec/android/gradient_color_extractor/GradientMaker;->gradient_lerp(FFFLcom/sec/android/gradient_color_extractor/GradientMaker$GradientFunction;)F

    move-result v7

    float-to-int v7, v7

    aput v7, v4, v6

    mul-int v4, v25, v27

    sub-int v4, v26, v4

    int-to-float v0, v4

    move/from16 v23, v0

    const/4 v4, 0x0

    cmpg-float v4, v23, v4

    if-gez v4, :cond_9

    move/from16 v0, v23

    neg-float v0, v0

    move/from16 v23, v0

    :cond_9
    mul-float v23, v23, v29

    aget-object v4, v36, v27

    const/4 v6, 0x0

    const/4 v7, 0x0

    aget v7, v20, v7

    int-to-float v7, v7

    const/4 v8, 0x0

    aget v8, v40, v8

    int-to-float v8, v8

    move/from16 v0, v23

    move-object/from16 v1, v21

    invoke-static {v0, v7, v8, v1}, Lcom/sec/android/gradient_color_extractor/GradientMaker;->gradient_lerp(FFFLcom/sec/android/gradient_color_extractor/GradientMaker$GradientFunction;)F

    move-result v7

    float-to-int v7, v7

    aput v7, v4, v6

    aget-object v4, v36, v27

    const/4 v6, 0x1

    const/4 v7, 0x1

    aget v7, v20, v7

    int-to-float v7, v7

    const/4 v8, 0x1

    aget v8, v40, v8

    int-to-float v8, v8

    move/from16 v0, v23

    move-object/from16 v1, v21

    invoke-static {v0, v7, v8, v1}, Lcom/sec/android/gradient_color_extractor/GradientMaker;->gradient_lerp(FFFLcom/sec/android/gradient_color_extractor/GradientMaker$GradientFunction;)F

    move-result v7

    float-to-int v7, v7

    aput v7, v4, v6

    aget-object v4, v36, v27

    const/4 v6, 0x2

    const/4 v7, 0x2

    aget v7, v20, v7

    int-to-float v7, v7

    const/4 v8, 0x2

    aget v8, v40, v8

    int-to-float v8, v8

    move/from16 v0, v23

    move-object/from16 v1, v21

    invoke-static {v0, v7, v8, v1}, Lcom/sec/android/gradient_color_extractor/GradientMaker;->gradient_lerp(FFFLcom/sec/android/gradient_color_extractor/GradientMaker$GradientFunction;)F

    move-result v7

    float-to-int v7, v7

    aput v7, v4, v6

    aget-object v4, v36, v27

    const/4 v6, 0x3

    const/4 v7, 0x3

    aget v7, v20, v7

    int-to-float v7, v7

    const/4 v8, 0x3

    aget v8, v40, v8

    int-to-float v8, v8

    move/from16 v0, v23

    move-object/from16 v1, v21

    invoke-static {v0, v7, v8, v1}, Lcom/sec/android/gradient_color_extractor/GradientMaker;->gradient_lerp(FFFLcom/sec/android/gradient_color_extractor/GradientMaker$GradientFunction;)F

    move-result v7

    float-to-int v7, v7

    aput v7, v4, v6

    add-int/lit8 v27, v27, 0x1

    goto/16 :goto_5

    :cond_a
    const/16 v17, 0x0

    :goto_7
    move/from16 v0, v17

    move/from16 v1, v25

    if-lt v0, v1, :cond_b

    add-int/lit8 v41, v41, 0x1

    goto/16 :goto_6

    :cond_b
    add-int v4, v16, v41

    mul-int v6, v17, v5

    add-int v28, v4, v6

    const/4 v4, 0x1

    add-int/lit8 v6, v24, -0x1

    invoke-static {v4, v6}, Lcom/sec/android/gradient_color_extractor/GradientMaker;->getArithmeticSequence(II)I

    move-result v4

    const/4 v6, 0x1

    add-int/lit8 v7, v24, -0x1

    add-int/lit8 v7, v7, -0x1

    invoke-static {v6, v7}, Lcom/sec/android/gradient_color_extractor/GradientMaker;->getArithmeticSequence(II)I

    move-result v6

    add-int/2addr v4, v6

    mul-int v31, v25, v4

    invoke-virtual/range {v37 .. v37}, Ljava/util/Random;->nextInt()I

    move-result v4

    rem-int v4, v4, v31

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v38

    move/from16 v14, v17

    const/4 v15, 0x0

    const/16 v27, 0x1

    :goto_8
    move/from16 v0, v27

    move/from16 v1, v24

    if-lt v0, v1, :cond_c

    :goto_9
    add-int/lit8 v17, v17, 0x1

    goto :goto_7

    :cond_c
    mul-int v4, v25, v24

    add-int/lit8 v6, v27, 0x1

    mul-int v6, v6, v25

    sub-int/2addr v6, v14

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v6

    sub-int/2addr v4, v6

    const/4 v6, 0x0

    invoke-static {v4, v6}, Ljava/lang/Math;->max(II)I

    move-result v18

    add-int v15, v15, v18

    move/from16 v0, v38

    if-lt v0, v15, :cond_d

    mul-int v4, v25, v24

    add-int/lit8 v6, v27, 0x0

    mul-int v6, v6, v25

    neg-int v6, v6

    sub-int/2addr v6, v14

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v6

    sub-int/2addr v4, v6

    const/4 v6, 0x0

    invoke-static {v4, v6}, Ljava/lang/Math;->max(II)I

    move-result v19

    add-int v15, v15, v19

    move/from16 v0, v38

    if-lt v0, v15, :cond_e

    add-int/lit8 v4, v24, -0x1

    move/from16 v0, v27

    if-eq v0, v4, :cond_f

    :goto_a
    add-int/lit8 v27, v27, 0x1

    goto :goto_8

    :cond_d
    aget-object v4, v35, v27

    const/4 v6, 0x0

    aget v4, v4, v6

    aget-object v6, v35, v27

    const/4 v7, 0x1

    aget v6, v6, v7

    aget-object v7, v35, v27

    const/4 v8, 0x2

    aget v7, v7, v8

    aget-object v8, v35, v27

    const/16 v42, 0x3

    aget v8, v8, v42

    invoke-static {v4, v6, v7, v8}, Landroid/graphics/Color;->argb(IIII)I

    move-result v4

    aput v4, v3, v28

    goto :goto_9

    :cond_e
    aget-object v4, v36, v27

    const/4 v6, 0x0

    aget v4, v4, v6

    aget-object v6, v36, v27

    const/4 v7, 0x1

    aget v6, v6, v7

    aget-object v7, v36, v27

    const/4 v8, 0x2

    aget v7, v7, v8

    aget-object v8, v36, v27

    const/16 v42, 0x3

    aget v8, v8, v42

    invoke-static {v4, v6, v7, v8}, Landroid/graphics/Color;->argb(IIII)I

    move-result v4

    aput v4, v3, v28

    goto :goto_9

    :cond_f
    sub-int v4, v31, v38

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    move/from16 v0, v38

    if-gt v4, v0, :cond_10

    const/4 v4, 0x0

    aget-object v4, v36, v4

    const/4 v6, 0x0

    aget v4, v4, v6

    const/4 v6, 0x0

    aget-object v6, v36, v6

    const/4 v7, 0x1

    aget v6, v6, v7

    const/4 v7, 0x0

    aget-object v7, v36, v7

    const/4 v8, 0x2

    aget v7, v7, v8

    const/4 v8, 0x0

    aget-object v8, v36, v8

    const/16 v42, 0x3

    aget v8, v8, v42

    invoke-static {v4, v6, v7, v8}, Landroid/graphics/Color;->argb(IIII)I

    move-result v4

    aput v4, v3, v28

    goto :goto_a

    :cond_10
    const/4 v4, 0x0

    aget-object v4, v35, v4

    const/4 v6, 0x0

    aget v4, v4, v6

    const/4 v6, 0x0

    aget-object v6, v35, v6

    const/4 v7, 0x1

    aget v6, v6, v7

    const/4 v7, 0x0

    aget-object v7, v35, v7

    const/4 v8, 0x2

    aget v7, v7, v8

    const/4 v8, 0x0

    aget-object v8, v35, v8

    const/16 v42, 0x3

    aget v8, v8, v42

    invoke-static {v4, v6, v7, v8}, Landroid/graphics/Color;->argb(IIII)I

    move-result v4

    aput v4, v3, v28

    goto/16 :goto_a
.end method

.method static gradient_lerp(FFFLcom/sec/android/gradient_color_extractor/GradientMaker$GradientFunction;)F
    .locals 3

    const/high16 v2, 0x3f800000    # 1.0f

    sget-object v0, Lcom/sec/android/gradient_color_extractor/GradientMaker$2;->$SwitchMap$com$sec$android$gradient_color_extractor$GradientMaker$GradientFunction:[I

    invoke-virtual {p3}, Lcom/sec/android/gradient_color_extractor/GradientMaker$GradientFunction;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    sub-float v0, p2, p1

    invoke-static {p0, p1, v0, v2}, Lcom/sec/android/gradient_color_extractor/GradientMaker;->lerp_linear(FFFF)F

    move-result v0

    return v0

    :pswitch_1
    sub-float v0, p2, p1

    invoke-static {p0, p1, v0, v2}, Lcom/sec/android/gradient_color_extractor/GradientMaker;->lerp_sine_in_out(FFFF)F

    move-result v0

    return v0

    :pswitch_2
    sub-float v0, p2, p1

    invoke-static {p0, p1, v0, v2}, Lcom/sec/android/gradient_color_extractor/GradientMaker;->lerp_cubic_in_out(FFFF)F

    move-result v0

    return v0

    :pswitch_3
    sub-float v0, p2, p1

    invoke-static {p0, p1, v0, v2}, Lcom/sec/android/gradient_color_extractor/GradientMaker;->lerp_quad_in_out(FFFF)F

    move-result v0

    return v0

    :pswitch_4
    sub-float v0, p2, p1

    invoke-static {p0, p1, v0, v2}, Lcom/sec/android/gradient_color_extractor/GradientMaker;->lerp_circ_in_out(FFFF)F

    move-result v0

    return v0

    :pswitch_5
    sub-float v0, p2, p1

    invoke-static {p0, p1, v0, v2}, Lcom/sec/android/gradient_color_extractor/GradientMaker;->lerp_expo_in_out(FFFF)F

    move-result v0

    return v0

    :pswitch_6
    sub-float v0, p2, p1

    invoke-static {p0, p1, v0, v2}, Lcom/sec/android/gradient_color_extractor/GradientMaker;->lerp_quint_in_out(FFFF)F

    move-result v0

    return v0

    :pswitch_7
    sub-float v0, p2, p1

    const v1, 0x3ecccccd    # 0.4f

    const v2, 0x3f19999a    # 0.6f

    invoke-static {p0, p1, v0, v1, v2}, Lcom/sec/android/gradient_color_extractor/GradientMaker;->lerp_bezier(FFFFF)F

    move-result v0

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method static lerp_bezier(FFFFF)F
    .locals 10

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float/2addr v2, p0

    float-to-double v2, v2

    const-wide/high16 v4, 0x4008000000000000L    # 3.0

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    const-wide/16 v4, 0x0

    mul-double/2addr v2, v4

    const/high16 v4, 0x40400000    # 3.0f

    mul-float/2addr v4, p0

    float-to-double v4, v4

    const/high16 v6, 0x3f800000    # 1.0f

    sub-float/2addr v6, p0

    float-to-double v6, v6

    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    mul-double/2addr v4, v6

    float-to-double v6, p3

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    float-to-double v4, p0

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    const-wide/high16 v6, 0x4008000000000000L    # 3.0

    mul-double/2addr v4, v6

    const/high16 v6, 0x3f800000    # 1.0f

    sub-float/2addr v6, p0

    float-to-double v6, v6

    mul-double/2addr v4, v6

    float-to-double v6, p4

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    float-to-double v4, p0

    const-wide/high16 v6, 0x4008000000000000L    # 3.0

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    double-to-float v0, v2

    mul-float v2, v0, p2

    add-float v1, v2, p1

    return v1
.end method

.method static lerp_circ_in_out(FFFF)F
    .locals 5

    const/high16 v1, 0x40000000    # 2.0f

    const/high16 v4, 0x3f800000    # 1.0f

    div-float v0, p3, v1

    div-float/2addr p0, v0

    cmpg-float v0, p0, v4

    if-gez v0, :cond_0

    neg-float v0, p2

    div-float/2addr v0, v1

    mul-float v1, p0, p0

    sub-float v1, v4, v1

    float-to-double v2, v1

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    double-to-float v1, v2

    sub-float/2addr v1, v4

    mul-float/2addr v0, v1

    add-float/2addr v0, p1

    return v0

    :cond_0
    div-float v0, p2, v1

    sub-float/2addr p0, v1

    mul-float v1, p0, p0

    sub-float v1, v4, v1

    float-to-double v2, v1

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    double-to-float v1, v2

    add-float/2addr v1, v4

    mul-float/2addr v0, v1

    add-float/2addr v0, p1

    return v0
.end method

.method static lerp_cubic_in_out(FFFF)F
    .locals 3

    const/high16 v2, 0x40000000    # 2.0f

    div-float v0, p3, v2

    div-float/2addr p0, v0

    const/high16 v0, 0x3f800000    # 1.0f

    cmpg-float v0, p0, v0

    if-gez v0, :cond_0

    div-float v0, p2, v2

    mul-float/2addr v0, p0

    mul-float/2addr v0, p0

    mul-float/2addr v0, p0

    add-float/2addr v0, p1

    return v0

    :cond_0
    div-float v0, p2, v2

    sub-float/2addr p0, v2

    mul-float v1, p0, p0

    mul-float/2addr v1, p0

    add-float/2addr v1, v2

    mul-float/2addr v0, v1

    add-float/2addr v0, p1

    return v0
.end method

.method public static lerp_expo_in_out(FFFF)F
    .locals 8

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    const/high16 v1, 0x3f800000    # 1.0f

    const/high16 v4, 0x40000000    # 2.0f

    const/4 v0, 0x0

    cmpl-float v0, p0, v0

    if-nez v0, :cond_0

    return p1

    :cond_0
    cmpl-float v0, p0, p3

    if-nez v0, :cond_1

    add-float v0, p1, p2

    return v0

    :cond_1
    div-float v0, p3, v4

    div-float/2addr p0, v0

    cmpg-float v0, p0, v1

    if-gez v0, :cond_2

    div-float v0, p2, v4

    sub-float v1, p0, v1

    const/high16 v2, 0x41200000    # 10.0f

    mul-float/2addr v1, v2

    float-to-double v2, v1

    invoke-static {v6, v7, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    double-to-float v1, v2

    mul-float/2addr v0, v1

    add-float/2addr v0, p1

    return v0

    :cond_2
    div-float v0, p2, v4

    sub-float/2addr p0, v1

    const/high16 v1, -0x3ee00000    # -10.0f

    mul-float/2addr v1, p0

    float-to-double v2, v1

    invoke-static {v6, v7, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    double-to-float v1, v2

    neg-float v1, v1

    add-float/2addr v1, v4

    mul-float/2addr v0, v1

    add-float/2addr v0, p1

    return v0
.end method

.method static lerp_linear(FFFF)F
    .locals 1

    mul-float v0, p2, p0

    div-float/2addr v0, p3

    add-float/2addr v0, p1

    return v0
.end method

.method static lerp_quad_in_out(FFFF)F
    .locals 3

    const/high16 v2, 0x3f800000    # 1.0f

    const/high16 v1, 0x40000000    # 2.0f

    div-float v0, p3, v1

    div-float/2addr p0, v0

    cmpg-float v0, p0, v2

    if-gez v0, :cond_0

    div-float v0, p2, v1

    mul-float/2addr v0, p0

    mul-float/2addr v0, p0

    add-float/2addr v0, p1

    return v0

    :cond_0
    neg-float v0, p2

    div-float/2addr v0, v1

    sub-float/2addr p0, v2

    sub-float v1, p0, v1

    mul-float/2addr v1, p0

    sub-float/2addr v1, v2

    mul-float/2addr v0, v1

    add-float/2addr v0, p1

    return v0
.end method

.method static lerp_quint_in_out(FFFF)F
    .locals 3

    const/high16 v2, 0x40000000    # 2.0f

    div-float v0, p3, v2

    div-float/2addr p0, v0

    const/high16 v0, 0x3f800000    # 1.0f

    cmpg-float v0, p0, v0

    if-gez v0, :cond_0

    div-float v0, p2, v2

    mul-float/2addr v0, p0

    mul-float/2addr v0, p0

    mul-float/2addr v0, p0

    mul-float/2addr v0, p0

    mul-float/2addr v0, p0

    add-float/2addr v0, p1

    return v0

    :cond_0
    div-float v0, p2, v2

    sub-float/2addr p0, v2

    mul-float v1, p0, p0

    mul-float/2addr v1, p0

    mul-float/2addr v1, p0

    mul-float/2addr v1, p0

    add-float/2addr v1, v2

    mul-float/2addr v0, v1

    add-float/2addr v0, p1

    return v0
.end method

.method static lerp_sine_in_out(FFFF)F
    .locals 6

    neg-float v0, p2

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    float-to-double v2, p0

    const-wide v4, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v2, v4

    float-to-double v4, p3

    div-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    double-to-float v1, v2

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float/2addr v1, v2

    mul-float/2addr v0, v1

    add-float/2addr v0, p1

    return v0
.end method

.method public static setDithering_sample_size(I)V
    .locals 0

    sput p0, Lcom/sec/android/gradient_color_extractor/GradientMaker;->mDithering_sample_size_value:I

    return-void
.end method

.method public static setDithering_step_value(I)V
    .locals 0

    sput p0, Lcom/sec/android/gradient_color_extractor/GradientMaker;->mDithering_step_value:I

    return-void
.end method
