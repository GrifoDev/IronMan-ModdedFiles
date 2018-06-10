.class public Lcom/android/systemui/infinity/theme/orchid/SmokeOrchidSystem;
.super Lcom/android/systemui/infinity/smoke/SmokeSystem;
.source "SmokeOrchidSystem.java"


# instance fields
.field private final imageHeight:F

.field private inputColor:[[[F

.field private inputPosition:[[F


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/infinity/GalaxyRenderer;)V
    .locals 7

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x3

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/infinity/smoke/SmokeSystem;-><init>(Landroid/content/Context;Lcom/android/systemui/infinity/GalaxyRenderer;)V

    const/high16 v0, 0x45390000    # 2960.0f

    iput v0, p0, Lcom/android/systemui/infinity/theme/orchid/SmokeOrchidSystem;->imageHeight:F

    new-array v0, v3, [[F

    new-array v1, v3, [F

    fill-array-data v1, :array_0

    aput-object v1, v0, v4

    new-array v1, v3, [F

    fill-array-data v1, :array_1

    aput-object v1, v0, v5

    new-array v1, v3, [F

    fill-array-data v1, :array_2

    aput-object v1, v0, v6

    iput-object v0, p0, Lcom/android/systemui/infinity/theme/orchid/SmokeOrchidSystem;->inputPosition:[[F

    new-array v0, v3, [[[F

    new-array v1, v3, [[F

    new-array v2, v3, [F

    fill-array-data v2, :array_3

    aput-object v2, v1, v4

    new-array v2, v3, [F

    fill-array-data v2, :array_4

    aput-object v2, v1, v5

    new-array v2, v3, [F

    fill-array-data v2, :array_5

    aput-object v2, v1, v6

    aput-object v1, v0, v4

    new-array v1, v3, [[F

    new-array v2, v3, [F

    fill-array-data v2, :array_6

    aput-object v2, v1, v4

    new-array v2, v3, [F

    fill-array-data v2, :array_7

    aput-object v2, v1, v5

    new-array v2, v3, [F

    fill-array-data v2, :array_8

    aput-object v2, v1, v6

    aput-object v1, v0, v5

    new-array v1, v3, [[F

    new-array v2, v3, [F

    fill-array-data v2, :array_9

    aput-object v2, v1, v4

    new-array v2, v3, [F

    fill-array-data v2, :array_a

    aput-object v2, v1, v5

    new-array v2, v3, [F

    fill-array-data v2, :array_b

    aput-object v2, v1, v6

    aput-object v1, v0, v6

    iput-object v0, p0, Lcom/android/systemui/infinity/theme/orchid/SmokeOrchidSystem;->inputColor:[[[F

    return-void

    :array_0
    .array-data 4
        0x0
        0x4488e000    # 1095.0f
        0x45390000    # 2960.0f
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x4488e000    # 1095.0f
        0x45390000    # 2960.0f
    .end array-data

    :array_2
    .array-data 4
        0x0
        0x4488e000    # 1095.0f
        0x45390000    # 2960.0f
    .end array-data

    :array_3
    .array-data 4
        0x42380000    # 46.0f
        0x0
        0x42800000    # 64.0f
    .end array-data

    :array_4
    .array-data 4
        0x0
        0x0
        0x0
    .end array-data

    :array_5
    .array-data 4
        0x0
        0x0
        0x0
    .end array-data

    :array_6
    .array-data 4
        0x42380000    # 46.0f
        0x0
        0x42800000    # 64.0f
    .end array-data

    :array_7
    .array-data 4
        0x0
        0x0
        0x0
    .end array-data

    :array_8
    .array-data 4
        0x0
        0x0
        0x0
    .end array-data

    :array_9
    .array-data 4
        0x42380000    # 46.0f
        0x0
        0x42800000    # 64.0f
    .end array-data

    :array_a
    .array-data 4
        0x0
        0x0
        0x0
    .end array-data

    :array_b
    .array-data 4
        0x0
        0x0
        0x0
    .end array-data
.end method


# virtual methods
.method protected getInputColor()[[[F
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/infinity/theme/orchid/SmokeOrchidSystem;->inputColor:[[[F

    return-object v0
.end method

.method protected getInputHeight()F
    .locals 1

    const/high16 v0, 0x45390000    # 2960.0f

    return v0
.end method

.method protected getInputPosition()[[F
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/infinity/theme/orchid/SmokeOrchidSystem;->inputPosition:[[F

    return-object v0
.end method
