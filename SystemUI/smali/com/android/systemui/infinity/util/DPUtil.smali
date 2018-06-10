.class public Lcom/android/systemui/infinity/util/DPUtil;
.super Ljava/lang/Object;
.source "DPUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static absolutToRelativeX(FFF)F
    .locals 2

    const/high16 v1, 0x40000000    # 2.0f

    div-float v0, p2, v1

    sub-float v0, p0, v0

    div-float v1, p1, v1

    div-float/2addr v0, v1

    return v0
.end method

.method public static absolutToRelativeY(FFF)F
    .locals 2

    const/high16 v1, 0x40000000    # 2.0f

    div-float v0, p2, v1

    sub-float/2addr v0, p0

    div-float v1, p1, v1

    div-float/2addr v0, v1

    return v0
.end method

.method public static dpToPx(Landroid/content/Context;F)I
    .locals 3

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v1, v0, Landroid/util/DisplayMetrics;->xdpi:F

    const/high16 v2, 0x43200000    # 160.0f

    div-float/2addr v1, v2

    mul-float/2addr v1, p1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    return v1
.end method

.method public static pxToDp(Landroid/content/Context;I)I
    .locals 4

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    int-to-float v1, p1

    iget v2, v0, Landroid/util/DisplayMetrics;->xdpi:F

    const/high16 v3, 0x43200000    # 160.0f

    div-float/2addr v2, v3

    div-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    return v1
.end method
