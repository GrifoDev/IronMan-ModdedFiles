.class public Lcom/android/systemui/infinity/theme/blue/BackgroundBlueSystem;
.super Lcom/android/systemui/infinity/background/BackgroundSystem;
.source "BackgroundBlueSystem.java"


# instance fields
.field private homeBGColor:[[F

.field private homeBGPosition:[F


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/infinity/GalaxyRenderer;)V
    .locals 4

    const/16 v1, 0xa

    const/4 v3, 0x3

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/infinity/background/BackgroundSystem;-><init>(Landroid/content/Context;Lcom/android/systemui/infinity/GalaxyRenderer;)V

    new-array v0, v1, [F

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/android/systemui/infinity/theme/blue/BackgroundBlueSystem;->homeBGPosition:[F

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

    iput-object v0, p0, Lcom/android/systemui/infinity/theme/blue/BackgroundBlueSystem;->homeBGColor:[[F

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x43c08000    # 385.0f
        0x44390000    # 740.0f
        0x44904000    # 1154.0f
        0x44b90000    # 1480.0f
        0x44e1c000    # 1806.0f
        0x44f08000    # 1924.0f
        0x450e7000    # 2279.0f
        0x4524a000    # 2634.0f
        0x45390000    # 2960.0f
    .end array-data

    :array_1
    .array-data 4
        0x40800000    # 4.0f
        0x40a00000    # 5.0f
        0x41d00000    # 26.0f
    .end array-data

    :array_2
    .array-data 4
        0x40000000    # 2.0f
        0x40e00000    # 7.0f
        0x42480000    # 50.0f
    .end array-data

    :array_3
    .array-data 4
        0x41000000    # 8.0f
        0x42440000    # 49.0f
        0x42ce0000    # 103.0f
    .end array-data

    :array_4
    .array-data 4
        0x421c0000    # 39.0f
        0x42c20000    # 97.0f
        0x43150000    # 149.0f
    .end array-data

    :array_5
    .array-data 4
        0x428c0000    # 70.0f
        0x42e60000    # 115.0f
        0x431c0000    # 156.0f
    .end array-data

    :array_6
    .array-data 4
        0x42b20000    # 89.0f
        0x42fc0000    # 126.0f
        0x431d0000    # 157.0f
    .end array-data

    :array_7
    .array-data 4
        0x42b60000    # 91.0f
        0x42fe0000    # 127.0f
        0x431c0000    # 156.0f
    .end array-data

    :array_8
    .array-data 4
        0x42b00000    # 88.0f
        0x42f20000    # 121.0f
        0x43160000    # 150.0f
    .end array-data

    :array_9
    .array-data 4
        0x42820000    # 65.0f
        0x42c80000    # 100.0f
        0x43060000    # 134.0f
    .end array-data

    :array_a
    .array-data 4
        0x42240000    # 41.0f
        0x428c0000    # 70.0f
        0x42d20000    # 105.0f
    .end array-data
.end method


# virtual methods
.method public getHomeGradientInputColor()[[F
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/infinity/theme/blue/BackgroundBlueSystem;->homeBGColor:[[F

    return-object v0
.end method

.method public getHomeGradientInputPosition()[F
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/infinity/theme/blue/BackgroundBlueSystem;->homeBGPosition:[F

    return-object v0
.end method

.method public getHomeGridentHeight()F
    .locals 1

    const/high16 v0, 0x45390000    # 2960.0f

    return v0
.end method

.method public getLockBgFileName()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "bl_lock_bg.png"

    return-object v0
.end method

.method public getTextureLockId()I
    .locals 1

    const v0, 0x7f110009

    return v0
.end method
