.class public Lcom/android/systemui/infinity/theme/gold/BackgroundGoldSystem;
.super Lcom/android/systemui/infinity/background/BackgroundSystem;
.source "BackgroundGoldSystem.java"


# instance fields
.field private homeBGColor:[[F

.field private homeBGPosition:[F


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/infinity/GalaxyRenderer;)V
    .locals 4

    const/16 v1, 0xb

    const/4 v3, 0x3

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/infinity/background/BackgroundSystem;-><init>(Landroid/content/Context;Lcom/android/systemui/infinity/GalaxyRenderer;)V

    new-array v0, v1, [F

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/android/systemui/infinity/theme/gold/BackgroundGoldSystem;->homeBGPosition:[F

    new-array v0, v1, [[F

    new-array v1, v3, [F

    fill-array-data v1, :array_1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    new-array v1, v3, [F

    fill-array-data v1, :array_2

    const/4 v2, 0x1

    aput-object v1, v0, v2

    new-array v1, v3, [F

    fill-array-data v1, :array_3

    const/4 v2, 0x2

    aput-object v1, v0, v2

    new-array v1, v3, [F

    fill-array-data v1, :array_4

    aput-object v1, v0, v3

    new-array v1, v3, [F

    fill-array-data v1, :array_5

    const/4 v2, 0x4

    aput-object v1, v0, v2

    new-array v1, v3, [F

    fill-array-data v1, :array_6

    const/4 v2, 0x5

    aput-object v1, v0, v2

    new-array v1, v3, [F

    fill-array-data v1, :array_7

    const/4 v2, 0x6

    aput-object v1, v0, v2

    new-array v1, v3, [F

    fill-array-data v1, :array_8

    const/4 v2, 0x7

    aput-object v1, v0, v2

    new-array v1, v3, [F

    fill-array-data v1, :array_9

    const/16 v2, 0x8

    aput-object v1, v0, v2

    new-array v1, v3, [F

    fill-array-data v1, :array_a

    const/16 v2, 0x9

    aput-object v1, v0, v2

    new-array v1, v3, [F

    fill-array-data v1, :array_b

    const/16 v2, 0xa

    aput-object v1, v0, v2

    iput-object v0, p0, Lcom/android/systemui/infinity/theme/gold/BackgroundGoldSystem;->homeBGColor:[[F

    return-void

    :array_0
    .array-data 4
        0x0
        0x43b18000    # 355.0f
        0x44390000    # 740.0f
        0x4488e000    # 1095.0f
        0x44b90000    # 1480.0f
        0x44d6a000    # 1717.0f
        0x44f7e000    # 1983.0f
        0x450ac000    # 2220.0f
        0x45199000    # 2457.0f
        0x45268000    # 2664.0f
        0x45390000    # 2960.0f
    .end array-data

    :array_1
    .array-data 4
        0x40c00000    # 6.0f
        0x40800000    # 4.0f
        0x42400000    # 48.0f
    .end array-data

    :array_2
    .array-data 4
        0x41200000    # 10.0f
        0x41c00000    # 24.0f
        0x42820000    # 65.0f
    .end array-data

    :array_3
    .array-data 4
        0x41a80000    # 21.0f
        0x42100000    # 36.0f
        0x42900000    # 72.0f
    .end array-data

    :array_4
    .array-data 4
        0x42440000    # 49.0f
        0x426c0000    # 59.0f
        0x42ac0000    # 86.0f
    .end array-data

    :array_5
    .array-data 4
        0x42d00000    # 104.0f
        0x42c40000    # 98.0f
        0x42c40000    # 98.0f
    .end array-data

    :array_6
    .array-data 4
        0x43000000    # 128.0f
        0x42e40000    # 114.0f
        0x42c60000    # 99.0f
    .end array-data

    :array_7
    .array-data 4
        0x43160000    # 150.0f
        0x42fa0000    # 125.0f
        0x42b40000    # 90.0f
    .end array-data

    :array_8
    .array-data 4
        0x431f0000    # 159.0f
        0x42f80000    # 124.0f
        0x42860000    # 67.0f
    .end array-data

    :array_9
    .array-data 4
        0x431d0000    # 157.0f
        0x42e80000    # 116.0f
        0x426c0000    # 59.0f
    .end array-data

    :array_a
    .array-data 4
        0x43110000    # 145.0f
        0x42c60000    # 99.0f
        0x42400000    # 48.0f
    .end array-data

    :array_b
    .array-data 4
        0x42da0000    # 109.0f
        0x427c0000    # 63.0f
        0x41e80000    # 29.0f
    .end array-data
.end method


# virtual methods
.method public getHomeGradientInputColor()[[F
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/infinity/theme/gold/BackgroundGoldSystem;->homeBGColor:[[F

    return-object v0
.end method

.method public getHomeGradientInputPosition()[F
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/infinity/theme/gold/BackgroundGoldSystem;->homeBGPosition:[F

    return-object v0
.end method

.method public getHomeGridentHeight()F
    .locals 1

    const/high16 v0, 0x45390000    # 2960.0f

    return v0
.end method

.method public getLockBgFileName()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "gd_lock_bg.png"

    return-object v0
.end method

.method public getTextureLockId()I
    .locals 1

    const v0, 0x7f0a000b

    return v0
.end method
