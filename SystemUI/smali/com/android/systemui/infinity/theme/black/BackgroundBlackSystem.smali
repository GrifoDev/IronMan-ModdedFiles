.class public Lcom/android/systemui/infinity/theme/black/BackgroundBlackSystem;
.super Lcom/android/systemui/infinity/background/BackgroundSystem;
.source "BackgroundBlackSystem.java"


# instance fields
.field private homeBGColor:[[F

.field private homeBGPosition:[F


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/infinity/GalaxyRenderer;)V
    .locals 4

    const/16 v1, 0xc

    const/4 v3, 0x3

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/infinity/background/BackgroundSystem;-><init>(Landroid/content/Context;Lcom/android/systemui/infinity/GalaxyRenderer;)V

    new-array v0, v1, [F

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/android/systemui/infinity/theme/black/BackgroundBlackSystem;->homeBGPosition:[F

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

    new-array v1, v3, [F

    fill-array-data v1, :array_c

    const/16 v2, 0xb

    aput-object v1, v0, v2

    iput-object v0, p0, Lcom/android/systemui/infinity/theme/black/BackgroundBlackSystem;->homeBGColor:[[F

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x43b18000    # 355.0f
        0x44318000    # 710.0f
        0x4488e000    # 1095.0f
        0x44b90000    # 1480.0f
        0x44da4000    # 1746.0f
        0x44f08000    # 1924.0f
        0x45018000    # 2072.0f
        0x450ca000    # 2250.0f
        0x4517b000    # 2427.0f
        0x4522d000    # 2605.0f
        0x45390000    # 2960.0f
    .end array-data

    :array_1
    .array-data 4
        0x41980000    # 19.0f
        0x41980000    # 19.0f
        0x41e80000    # 29.0f
    .end array-data

    :array_2
    .array-data 4
        0x41a80000    # 21.0f
        0x41c00000    # 24.0f
        0x42280000    # 42.0f
    .end array-data

    :array_3
    .array-data 4
        0x42240000    # 41.0f
        0x42380000    # 46.0f
        0x427c0000    # 63.0f
    .end array-data

    :array_4
    .array-data 4
        0x42820000    # 65.0f
        0x42900000    # 72.0f
        0x42b00000    # 88.0f
    .end array-data

    :array_5
    .array-data 4
        0x42c60000    # 99.0f
        0x42c60000    # 99.0f
        0x42e40000    # 114.0f
    .end array-data

    :array_6
    .array-data 4
        0x42fa0000    # 125.0f
        0x42ee0000    # 119.0f
        0x43040000    # 132.0f
    .end array-data

    :array_7
    .array-data 4
        0x430b0000    # 139.0f
        0x42fe0000    # 127.0f
        0x430f0000    # 143.0f
    .end array-data

    :array_8
    .array-data 4
        0x43110000    # 145.0f
        0x43000000    # 128.0f
        0x43110000    # 145.0f
    .end array-data

    :array_9
    .array-data 4
        0x430c0000    # 140.0f
        0x42fa0000    # 125.0f
        0x43120000    # 146.0f
    .end array-data

    :array_a
    .array-data 4
        0x43010000    # 129.0f
        0x42ea0000    # 117.0f
        0x43120000    # 146.0f
    .end array-data

    :array_b
    .array-data 4
        0x42d80000    # 108.0f
        0x42d40000    # 106.0f
        0x43060000    # 134.0f
    .end array-data

    :array_c
    .array-data 4
        0x42700000    # 60.0f
        0x428a0000    # 69.0f
        0x42b80000    # 92.0f
    .end array-data
.end method


# virtual methods
.method public getHomeGradientInputColor()[[F
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/infinity/theme/black/BackgroundBlackSystem;->homeBGColor:[[F

    return-object v0
.end method

.method public getHomeGradientInputPosition()[F
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/infinity/theme/black/BackgroundBlackSystem;->homeBGPosition:[F

    return-object v0
.end method

.method public getHomeGridentHeight()F
    .locals 1

    const/high16 v0, 0x45390000    # 2960.0f

    return v0
.end method

.method public getLockBgFileName()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "bk_lock_bg.png"

    return-object v0
.end method

.method public getTextureLockId()I
    .locals 1

    const v0, 0x7f110007

    return v0
.end method
