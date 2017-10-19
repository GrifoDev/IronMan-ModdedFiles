.class public Lcom/samsung/android/srib/glutils/MatrixHelper;
.super Ljava/lang/Object;
.source "MatrixHelper.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static perspectiveM([FFFFF)V
    .locals 5

    const/4 v4, 0x0

    float-to-double v0, p1

    const-wide v2, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v0, v2

    const-wide v2, 0x4066800000000000L    # 180.0

    div-double/2addr v0, v2

    double-to-float v0, v0

    float-to-double v0, v0

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->tan(D)D

    move-result-wide v0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    div-double v0, v2, v0

    double-to-float v0, v0

    const/4 v1, 0x0

    div-float v2, v0, p2

    aput v2, p0, v1

    const/4 v1, 0x1

    aput v4, p0, v1

    const/4 v1, 0x2

    aput v4, p0, v1

    const/4 v1, 0x3

    aput v4, p0, v1

    const/4 v1, 0x4

    aput v4, p0, v1

    const/4 v1, 0x5

    aput v0, p0, v1

    const/4 v0, 0x6

    aput v4, p0, v0

    const/4 v0, 0x7

    aput v4, p0, v0

    const/16 v0, 0x8

    aput v4, p0, v0

    const/16 v0, 0x9

    aput v4, p0, v0

    const/16 v0, 0xa

    add-float v1, p4, p3

    sub-float v2, p4, p3

    div-float/2addr v1, v2

    neg-float v1, v1

    aput v1, p0, v0

    const/16 v0, 0xb

    const/high16 v1, -0x40800000    # -1.0f

    aput v1, p0, v0

    const/16 v0, 0xc

    aput v4, p0, v0

    const/16 v0, 0xd

    aput v4, p0, v0

    const/16 v0, 0xe

    const/high16 v1, 0x40000000    # 2.0f

    mul-float/2addr v1, p4

    mul-float/2addr v1, p3

    sub-float v2, p4, p3

    div-float/2addr v1, v2

    neg-float v1, v1

    aput v1, p0, v0

    const/16 v0, 0xf

    aput v4, p0, v0

    return-void
.end method
