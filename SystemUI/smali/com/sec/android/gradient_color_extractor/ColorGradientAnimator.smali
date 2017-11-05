.class public Lcom/sec/android/gradient_color_extractor/ColorGradientAnimator;
.super Lcom/sec/android/gradient_color_extractor/GradientMaker;
.source "ColorGradientAnimator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/gradient_color_extractor/ColorGradientAnimator$ColorGradientAnimationView;
    }
.end annotation


# static fields
.field public static mGradientColorSet:[[[F


# direct methods
.method static constructor <clinit>()V
    .locals 10

    const/4 v9, 0x0

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v0, 0x7

    new-array v0, v0, [[[F

    new-array v1, v7, [[F

    new-array v2, v8, [F

    const/high16 v3, 0x43570000    # 215.0f

    aput v3, v2, v5

    const v3, 0x3f2e147b    # 0.68f

    aput v3, v2, v6

    const/high16 v3, 0x3f400000    # 0.75f

    aput v3, v2, v7

    aput-object v2, v1, v5

    new-array v2, v8, [F

    const/high16 v3, 0x432c0000    # 172.0f

    aput v3, v2, v5

    const v3, 0x3f6147ae    # 0.88f

    aput v3, v2, v6

    const v3, 0x3f47ae14    # 0.78f

    aput v3, v2, v7

    aput-object v2, v1, v6

    aput-object v1, v0, v5

    new-array v1, v7, [[F

    new-array v2, v8, [F

    const/high16 v3, 0x430b0000    # 139.0f

    aput v3, v2, v5

    const v3, 0x3ed1eb85    # 0.41f

    aput v3, v2, v6

    const v3, 0x3f266666    # 0.65f

    aput v3, v2, v7

    aput-object v2, v1, v5

    new-array v2, v8, [F

    const/high16 v3, 0x43300000    # 176.0f

    aput v3, v2, v5

    const/high16 v3, 0x3f800000    # 1.0f

    aput v3, v2, v6

    const v3, 0x3f3ae148    # 0.73f

    aput v3, v2, v7

    aput-object v2, v1, v6

    aput-object v1, v0, v6

    new-array v1, v7, [[F

    new-array v2, v8, [F

    const/high16 v3, 0x40800000    # 4.0f

    aput v3, v2, v5

    const v3, 0x3ee66666    # 0.45f

    aput v3, v2, v6

    const v3, 0x3f3d70a4    # 0.74f

    aput v3, v2, v7

    aput-object v2, v1, v5

    new-array v2, v8, [F

    const/high16 v3, 0x41d80000    # 27.0f

    aput v3, v2, v5

    const v3, 0x3e9eb852    # 0.31f

    aput v3, v2, v6

    const/high16 v3, 0x3f400000    # 0.75f

    aput v3, v2, v7

    aput-object v2, v1, v6

    aput-object v1, v0, v7

    new-array v1, v7, [[F

    new-array v2, v8, [F

    const/high16 v3, 0x43760000    # 246.0f

    aput v3, v2, v5

    const v3, 0x3f1eb852    # 0.62f

    aput v3, v2, v6

    const v3, 0x3f2147ae    # 0.63f

    aput v3, v2, v7

    aput-object v2, v1, v5

    new-array v2, v8, [F

    const v3, 0x438e8000    # 285.0f

    aput v3, v2, v5

    const v3, 0x3efae148    # 0.49f

    aput v3, v2, v6

    const v3, 0x3f1eb852    # 0.62f

    aput v3, v2, v7

    aput-object v2, v1, v6

    aput-object v1, v0, v8

    const/4 v1, 0x4

    new-array v2, v7, [[F

    new-array v3, v8, [F

    const/high16 v4, 0x43460000    # 198.0f

    aput v4, v3, v5

    const v4, 0x3f11eb85    # 0.57f

    aput v4, v3, v6

    const v4, 0x3f59999a    # 0.85f

    aput v4, v3, v7

    aput-object v3, v2, v5

    new-array v3, v8, [F

    const/high16 v4, 0x43670000    # 231.0f

    aput v4, v3, v5

    const v4, 0x3f3d70a4    # 0.74f

    aput v4, v3, v6

    const v4, 0x3f570a3d    # 0.84f

    aput v4, v3, v7

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/4 v1, 0x5

    new-array v2, v7, [[F

    new-array v3, v8, [F

    const/high16 v4, 0x42000000    # 32.0f

    aput v4, v3, v5

    const v4, 0x3f0f5c29    # 0.56f

    aput v4, v3, v6

    const v4, 0x3f333333    # 0.7f

    aput v4, v3, v7

    aput-object v3, v2, v5

    new-array v3, v8, [F

    const/high16 v4, 0x43880000    # 272.0f

    aput v4, v3, v5

    const v4, 0x3e051eb8    # 0.13f

    aput v4, v3, v6

    const v4, 0x3f23d70a    # 0.64f

    aput v4, v3, v7

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/4 v1, 0x6

    new-array v2, v7, [[F

    new-array v3, v8, [F

    aput v9, v3, v5

    aput v9, v3, v6

    const v4, 0x3ee147ae    # 0.44f

    aput v4, v3, v7

    aput-object v3, v2, v5

    new-array v3, v8, [F

    aput v9, v3, v5

    aput v9, v3, v6

    const v4, 0x3f2e147b    # 0.68f

    aput v4, v3, v7

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    sput-object v0, Lcom/sec/android/gradient_color_extractor/ColorGradientAnimator;->mGradientColorSet:[[[F

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/gradient_color_extractor/GradientMaker;-><init>()V

    return-void
.end method
