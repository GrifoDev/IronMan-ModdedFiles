.class public Lcom/android/systemui/infinity/theme/orchid/BackgroundOrchidSystem;
.super Lcom/android/systemui/infinity/background/BackgroundSystem;
.source "BackgroundOrchidSystem.java"


# instance fields
.field private homeBGColor:[[F

.field private homeBGPosition:[F


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/infinity/GalaxyRenderer;)V
    .locals 4

    const/16 v1, 0xd

    const/4 v3, 0x3

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/infinity/background/BackgroundSystem;-><init>(Landroid/content/Context;Lcom/android/systemui/infinity/GalaxyRenderer;)V

    new-array v0, v1, [F

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/android/systemui/infinity/theme/orchid/BackgroundOrchidSystem;->homeBGPosition:[F

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

    new-array v1, v3, [F

    fill-array-data v1, :array_d

    const/16 v2, 0xc

    aput-object v1, v0, v2

    iput-object v0, p0, Lcom/android/systemui/infinity/theme/orchid/BackgroundOrchidSystem;->homeBGColor:[[F

    return-void

    :array_0
    .array-data 4
        0x0
        0x43b18000    # 355.0f
        0x44390000    # 740.0f
        0x4488e000    # 1095.0f
        0x44b90000    # 1480.0f
        0x44de0000    # 1776.0f
        0x44f42000    # 1953.0f
        0x45018000    # 2072.0f
        0x450ac000    # 2220.0f
        0x45140000    # 2368.0f
        0x451d4000    # 2516.0f
        0x45268000    # 2664.0f
        0x45390000    # 2960.0f
    .end array-data

    :array_1
    .array-data 4
        0x41200000    # 10.0f
        0x41000000    # 8.0f
        0x41d80000    # 27.0f
    .end array-data

    :array_2
    .array-data 4
        0x41d80000    # 27.0f
        0x41a80000    # 21.0f
        0x42500000    # 52.0f
    .end array-data

    :array_3
    .array-data 4
        0x42540000    # 53.0f
        0x42280000    # 42.0f
        0x42ae0000    # 87.0f
    .end array-data

    :array_4
    .array-data 4
        0x42a20000    # 81.0f
        0x427c0000    # 63.0f
        0x42e20000    # 113.0f
    .end array-data

    :array_5
    .array-data 4
        0x42de0000    # 111.0f
        0x42ae0000    # 87.0f
        0x43040000    # 132.0f
    .end array-data

    :array_6
    .array-data 4
        0x43080000    # 136.0f
        0x42d60000    # 107.0f
        0x430d0000    # 141.0f
    .end array-data

    :array_7
    .array-data 4
        0x43110000    # 145.0f
        0x42e60000    # 115.0f
        0x430a0000    # 138.0f
    .end array-data

    :array_8
    .array-data 4
        0x43150000    # 149.0f
        0x42e80000    # 116.0f
        0x43060000    # 134.0f
    .end array-data

    :array_9
    .array-data 4
        0x43110000    # 145.0f
        0x42de0000    # 111.0f
        0x42f60000    # 123.0f
    .end array-data

    :array_a
    .array-data 4
        0x430a0000    # 138.0f
        0x42d20000    # 105.0f
        0x42e80000    # 116.0f
    .end array-data

    :array_b
    .array-data 4
        0x42f60000    # 123.0f
        0x42bc0000    # 94.0f
        0x42d40000    # 106.0f
    .end array-data

    :array_c
    .array-data 4
        0x42dc0000    # 110.0f
        0x42a80000    # 84.0f
        0x42c60000    # 99.0f
    .end array-data

    :array_d
    .array-data 4
        0x42a80000    # 84.0f
        0x42840000    # 66.0f
        0x42a80000    # 84.0f
    .end array-data
.end method


# virtual methods
.method public getHomeGradientInputColor()[[F
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/infinity/theme/orchid/BackgroundOrchidSystem;->homeBGColor:[[F

    return-object v0
.end method

.method public getHomeGradientInputPosition()[F
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/infinity/theme/orchid/BackgroundOrchidSystem;->homeBGPosition:[F

    return-object v0
.end method

.method public getHomeGridentHeight()F
    .locals 1

    const/high16 v0, 0x45390000    # 2960.0f

    return v0
.end method

.method public getLockBgFileName()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "oc_lock_bg.png"

    return-object v0
.end method

.method public getTextureLockId()I
    .locals 1

    const v0, 0x7f0a000d

    return v0
.end method
