.class public Lcom/sec/android/gradient_color_extractor/Kmeans;
.super Ljava/lang/Object;
.source "Kmeans.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/gradient_color_extractor/Kmeans$DominantColorResult;
    }
.end annotation


# static fields
.field static mGrayscale_limite_b:F

.field static mGrayscale_limite_s:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const v0, 0x3df5c28f    # 0.12f

    sput v0, Lcom/sec/android/gradient_color_extractor/Kmeans;->mGrayscale_limite_s:F

    const/high16 v0, 0x3e800000    # 0.25f

    sput v0, Lcom/sec/android/gradient_color_extractor/Kmeans;->mGrayscale_limite_b:F

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static calculateCenter(Ljava/util/List;)I
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;)I"
        }
    .end annotation

    const/4 v6, 0x0

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v3, 0x0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v4

    div-int v4, v3, v4

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v5

    div-int v5, v1, v5

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v6

    div-int v6, v0, v6

    invoke-static {v4, v5, v6}, Landroid/graphics/Color;->rgb(III)I

    move-result v4

    return v4

    :cond_0
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v2}, Landroid/graphics/Color;->red(I)I

    move-result v4

    add-int/2addr v3, v4

    invoke-static {v2}, Landroid/graphics/Color;->green(I)I

    move-result v4

    add-int/2addr v1, v4

    invoke-static {v2}, Landroid/graphics/Color;->blue(I)I

    move-result v4

    add-int/2addr v0, v4

    goto :goto_0

    :cond_1
    return v6
.end method

.method static checkGayScale_with_value([FFF)Z
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x1

    aget v0, p0, v1

    cmpg-float v0, v0, p1

    if-gtz v0, :cond_1

    move v0, v1

    :goto_0
    if-nez v0, :cond_0

    const/4 v0, 0x2

    aget v0, p0, v0

    cmpg-float v0, v0, p2

    if-gtz v0, :cond_2

    :cond_0
    return v1

    :cond_1
    move v0, v2

    goto :goto_0

    :cond_2
    return v2
.end method

.method static colorDistance_hsv_square2([F[F[F)F
    .locals 10

    const/high16 v9, 0x43340000    # 180.0f

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    aget v4, p1, v6

    aget v5, p0, v6

    sub-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpl-float v4, v1, v9

    if-ltz v4, :cond_0

    const/high16 v4, 0x43b40000    # 360.0f

    sub-float v1, v4, v1

    :cond_0
    div-float/2addr v1, v9

    aget v4, p1, v7

    aget v5, p0, v7

    sub-float v2, v4, v5

    aget v4, p1, v8

    aget v5, p0, v8

    sub-float v0, v4, v5

    aget v4, p2, v6

    mul-float/2addr v1, v4

    aget v4, p2, v7

    mul-float/2addr v2, v4

    aget v4, p2, v8

    mul-float/2addr v0, v4

    mul-float v4, v1, v1

    mul-float v5, v2, v2

    add-float/2addr v4, v5

    mul-float v5, v0, v0

    add-float v3, v4, v5

    return v3
.end method

.method public static kMeans_hsv(Landroid/graphics/Bitmap;[I)[Lcom/sec/android/gradient_color_extractor/Kmeans$DominantColorResult;
    .locals 8

    const/4 v2, 0x0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    mul-int/2addr v0, v3

    new-array v1, v0, [I

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    move-object v0, p0

    move v4, v2

    move v5, v2

    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    invoke-static {v1, p1}, Lcom/sec/android/gradient_color_extractor/Kmeans;->kMeans_hsv([I[I)[Lcom/sec/android/gradient_color_extractor/Kmeans$DominantColorResult;

    move-result-object v0

    return-object v0
.end method

.method static kMeans_hsv([I[I)[Lcom/sec/android/gradient_color_extractor/Kmeans$DominantColorResult;
    .locals 22

    move-object/from16 v0, p1

    array-length v3, v0

    new-array v5, v3, [Lcom/sec/android/gradient_color_extractor/Kmeans$DominantColorResult;

    new-array v1, v3, [I

    new-array v2, v3, [[F

    const/4 v6, 0x0

    :goto_0
    if-lt v6, v3, :cond_1

    move-object/from16 v0, p0

    array-length v0, v0

    move/from16 v17, v0

    move/from16 v0, v17

    new-array v0, v0, [[F

    move-object/from16 v16, v0

    const/4 v6, 0x0

    :goto_1
    move-object/from16 v0, p0

    array-length v0, v0

    move/from16 v17, v0

    move/from16 v0, v17

    if-lt v6, v0, :cond_2

    const/4 v11, 0x0

    :goto_2
    const/16 v17, 0x1

    move/from16 v0, v17

    if-lt v11, v0, :cond_3

    :cond_0
    new-instance v17, Lcom/sec/android/gradient_color_extractor/Kmeans$1;

    invoke-direct/range {v17 .. v17}, Lcom/sec/android/gradient_color_extractor/Kmeans$1;-><init>()V

    move-object/from16 v0, v17

    invoke-static {v5, v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    return-object v5

    :cond_1
    aget v17, p1, v6

    aput v17, v1, v6

    const/16 v17, 0x3

    move/from16 v0, v17

    new-array v0, v0, [F

    move-object/from16 v17, v0

    aput-object v17, v2, v6

    aget v17, v1, v6

    aget-object v18, v2, v6

    invoke-static/range {v17 .. v18}, Landroid/graphics/Color;->colorToHSV(I[F)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_2
    const/16 v17, 0x3

    move/from16 v0, v17

    new-array v0, v0, [F

    move-object/from16 v17, v0

    aput-object v17, v16, v6

    aget v17, p0, v6

    aget-object v18, v16, v6

    invoke-static/range {v17 .. v18}, Landroid/graphics/Color;->colorToHSV(I[F)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_3
    new-array v15, v3, [Ljava/util/ArrayList;

    const/4 v6, 0x0

    :goto_3
    if-lt v6, v3, :cond_4

    const/4 v6, 0x0

    :goto_4
    move-object/from16 v0, p0

    array-length v0, v0

    move/from16 v17, v0

    move/from16 v0, v17

    if-lt v6, v0, :cond_5

    const/4 v6, 0x0

    :goto_5
    if-lt v6, v3, :cond_b

    if-eqz v11, :cond_c

    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    :cond_4
    new-instance v17, Ljava/util/ArrayList;

    invoke-direct/range {v17 .. v17}, Ljava/util/ArrayList;-><init>()V

    aput-object v17, v15, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    :cond_5
    const v12, 0x7f7fffff    # Float.MAX_VALUE

    const/4 v13, 0x0

    aget-object v17, v16, v6

    sget v18, Lcom/sec/android/gradient_color_extractor/Kmeans;->mGrayscale_limite_s:F

    sget v19, Lcom/sec/android/gradient_color_extractor/Kmeans;->mGrayscale_limite_b:F

    invoke-static/range {v17 .. v19}, Lcom/sec/android/gradient_color_extractor/Kmeans;->checkGayScale_with_value([FFF)Z

    move-result v9

    const/4 v10, 0x0

    :goto_6
    if-lt v10, v3, :cond_6

    aget-object v17, v15, v13

    aget v18, p0, v6

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    :cond_6
    aget-object v17, v2, v10

    sget v18, Lcom/sec/android/gradient_color_extractor/Kmeans;->mGrayscale_limite_s:F

    sget v19, Lcom/sec/android/gradient_color_extractor/Kmeans;->mGrayscale_limite_b:F

    invoke-static/range {v17 .. v19}, Lcom/sec/android/gradient_color_extractor/Kmeans;->checkGayScale_with_value([FFF)Z

    move-result v8

    if-eqz v8, :cond_9

    :cond_7
    if-nez v8, :cond_a

    :cond_8
    :goto_7
    add-int/lit8 v10, v10, 0x1

    goto :goto_6

    :cond_9
    if-nez v9, :cond_7

    aget-object v17, v16, v6

    aget-object v18, v2, v10

    const/16 v19, 0x3

    move/from16 v0, v19

    new-array v0, v0, [F

    move-object/from16 v19, v0

    const/16 v20, 0x0

    const/high16 v21, 0x3f800000    # 1.0f

    aput v21, v19, v20

    const/16 v20, 0x1

    const v21, 0x3dcccccd    # 0.1f

    aput v21, v19, v20

    const/16 v20, 0x2

    const v21, 0x3dcccccd    # 0.1f

    aput v21, v19, v20

    invoke-static/range {v17 .. v19}, Lcom/sec/android/gradient_color_extractor/Kmeans;->colorDistance_hsv_square2([F[F[F)F

    move-result v4

    cmpg-float v17, v4, v12

    if-gez v17, :cond_8

    move v12, v4

    move v13, v10

    goto :goto_7

    :cond_a
    if-eqz v9, :cond_8

    aget-object v17, v16, v6

    aget-object v18, v2, v10

    const/16 v19, 0x3

    move/from16 v0, v19

    new-array v0, v0, [F

    move-object/from16 v19, v0

    const/16 v20, 0x0

    const/16 v21, 0x0

    aput v21, v19, v20

    const/16 v20, 0x1

    const/high16 v21, 0x3f800000    # 1.0f

    aput v21, v19, v20

    const/16 v20, 0x2

    const/high16 v21, 0x3f800000    # 1.0f

    aput v21, v19, v20

    invoke-static/range {v17 .. v19}, Lcom/sec/android/gradient_color_extractor/Kmeans;->colorDistance_hsv_square2([F[F[F)F

    move-result v4

    cmpg-float v17, v4, v12

    if-gez v17, :cond_8

    move v12, v4

    move v13, v10

    goto :goto_7

    :cond_b
    aget-object v17, v15, v6

    invoke-static/range {v17 .. v17}, Lcom/sec/android/gradient_color_extractor/Kmeans;->calculateCenter(Ljava/util/List;)I

    move-result v14

    aput v14, v1, v6

    aget v17, v1, v6

    aget-object v18, v2, v6

    invoke-static/range {v17 .. v18}, Landroid/graphics/Color;->colorToHSV(I[F)V

    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_5

    :cond_c
    move-object/from16 v0, p0

    array-length v0, v0

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    const/high16 v18, 0x3f800000    # 1.0f

    div-float v7, v18, v17

    const/4 v6, 0x0

    :goto_8
    array-length v0, v1

    move/from16 v17, v0

    move/from16 v0, v17

    if-ge v6, v0, :cond_0

    new-instance v17, Lcom/sec/android/gradient_color_extractor/Kmeans$DominantColorResult;

    aget v18, v1, v6

    aget-object v19, v15, v6

    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->size()I

    move-result v19

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    mul-float v19, v19, v7

    invoke-direct/range {v17 .. v19}, Lcom/sec/android/gradient_color_extractor/Kmeans$DominantColorResult;-><init>(IF)V

    aput-object v17, v5, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_8
.end method
