.class public Lcom/sec/android/gradient_color_extractor/GradientColorExtractor;
.super Lcom/sec/android/gradient_color_extractor/Kmeans;
.source "GradientColorExtractor.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/gradient_color_extractor/Kmeans;-><init>()V

    return-void
.end method

.method public static makeClusterrGroup_preset1(I)[I
    .locals 11

    const/4 v10, 0x3

    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    const/high16 v6, 0x3f000000    # 0.5f

    if-lt p0, v10, :cond_0

    :goto_0
    new-array v0, p0, [I

    const/4 v2, -0x1

    aput v2, v0, v7

    const/high16 v2, -0x1000000

    aput v2, v0, v8

    const v2, -0x777778

    aput v2, v0, v9

    const/4 v1, 0x3

    :goto_1
    if-lt v1, p0, :cond_1

    return-object v0

    :cond_0
    const/4 p0, 0x3

    goto :goto_0

    :cond_1
    new-array v2, v10, [F

    add-int/lit8 v3, v1, -0x3

    int-to-float v3, v3

    add-int/lit8 v4, p0, -0x3

    int-to-float v4, v4

    const/high16 v5, 0x43b40000    # 360.0f

    div-float v4, v5, v4

    mul-float/2addr v3, v4

    aput v3, v2, v7

    aput v6, v2, v8

    aput v6, v2, v9

    invoke-static {v2}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result v2

    aput v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method
