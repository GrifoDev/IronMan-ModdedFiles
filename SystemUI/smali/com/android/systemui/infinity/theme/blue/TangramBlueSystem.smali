.class public Lcom/android/systemui/infinity/theme/blue/TangramBlueSystem;
.super Lcom/android/systemui/infinity/tangram/TangramSystem;
.source "TangramBlueSystem.java"


# static fields
.field private static final bottomLayerImage:[Z

.field private static final endTranslation:[[F

.field private static final initTranslation:[[F

.field private static final layerFixAlpha:[F

.field private static final layerName:[Ljava/lang/String;

.field private static final layerPosition:[[F

.field private static final layerSize:[[F

.field private static final mapLayerFileName:[Ljava/lang/String;

.field private static final mapLeftFileName:[Ljava/lang/String;

.field private static final mapMaskFileName:[Ljava/lang/String;

.field private static final mapRightFileName:[Ljava/lang/String;

.field private static final maskMoveDistance:[[F

.field private static final maskPosition:[[F

.field private static final maskSize:[[F


# instance fields
.field a:Lcom/android/systemui/infinity/tangram/Tangram;

.field b:Lcom/android/systemui/infinity/tangram/Tangram;

.field c:Lcom/android/systemui/infinity/tangram/Tangram;

.field d:Lcom/android/systemui/infinity/tangram/Tangram;

.field e:Lcom/android/systemui/infinity/tangram/Tangram;

.field f:Lcom/android/systemui/infinity/tangram/Tangram;

.field g:Lcom/android/systemui/infinity/tangram/Tangram;

.field h:Lcom/android/systemui/infinity/tangram/Tangram;

.field il:Lcom/android/systemui/infinity/tangram/Tangram;

.field protected showEasing:F

.field protected tiltEasing:F

.field protected tiltSubEasing:F

.field protected tiltTranslation:F


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x3

    const/4 v6, 0x1

    const/16 v5, 0x9

    const/4 v4, 0x0

    const/4 v3, 0x2

    new-array v0, v5, [Ljava/lang/String;

    const-string/jumbo v1, "a"

    aput-object v1, v0, v4

    const-string/jumbo v1, "b"

    aput-object v1, v0, v6

    const-string/jumbo v1, "c"

    aput-object v1, v0, v3

    const-string/jumbo v1, "d"

    aput-object v1, v0, v7

    const-string/jumbo v1, "e"

    const/4 v2, 0x4

    aput-object v1, v0, v2

    const-string/jumbo v1, "f"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    const-string/jumbo v1, "g"

    const/4 v2, 0x6

    aput-object v1, v0, v2

    const-string/jumbo v1, "h"

    const/4 v2, 0x7

    aput-object v1, v0, v2

    const-string/jumbo v1, "i"

    const/16 v2, 0x8

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/systemui/infinity/theme/blue/TangramBlueSystem;->layerName:[Ljava/lang/String;

    new-array v0, v5, [Ljava/lang/String;

    const-string/jumbo v1, "bl_layer_a.png"

    aput-object v1, v0, v4

    const-string/jumbo v1, "bl_layer_b.png"

    aput-object v1, v0, v6

    const-string/jumbo v1, "bl_layer_c_m.png"

    aput-object v1, v0, v3

    const-string/jumbo v1, "bl_layer_d_m.png"

    aput-object v1, v0, v7

    const-string/jumbo v1, "bl_layer_e.png"

    const/4 v2, 0x4

    aput-object v1, v0, v2

    const-string/jumbo v1, "bl_layer_f.png"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    const-string/jumbo v1, "bl_layer_g_m.png"

    const/4 v2, 0x6

    aput-object v1, v0, v2

    const-string/jumbo v1, "bl_layer_h.png"

    const/4 v2, 0x7

    aput-object v1, v0, v2

    const-string/jumbo v1, "bl_layer_i.png"

    const/16 v2, 0x8

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/systemui/infinity/theme/blue/TangramBlueSystem;->mapLayerFileName:[Ljava/lang/String;

    new-array v0, v5, [Ljava/lang/String;

    const-string/jumbo v1, "bl_layer_a_mask.png"

    aput-object v1, v0, v4

    const-string/jumbo v1, "bl_layer_b_mask.png"

    aput-object v1, v0, v6

    const-string/jumbo v1, ""

    aput-object v1, v0, v3

    const-string/jumbo v1, ""

    aput-object v1, v0, v7

    const-string/jumbo v1, "bl_layer_e_mask.png"

    const/4 v2, 0x4

    aput-object v1, v0, v2

    const-string/jumbo v1, "bl_layer_f_mask.png"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    const-string/jumbo v1, ""

    const/4 v2, 0x6

    aput-object v1, v0, v2

    const-string/jumbo v1, "bl_layer_h_mask.png"

    const/4 v2, 0x7

    aput-object v1, v0, v2

    const-string/jumbo v1, "bl_layer_i_mask.png"

    const/16 v2, 0x8

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/systemui/infinity/theme/blue/TangramBlueSystem;->mapMaskFileName:[Ljava/lang/String;

    new-array v0, v5, [Ljava/lang/String;

    const-string/jumbo v1, "bl_layer_a_color_l.png"

    aput-object v1, v0, v4

    const-string/jumbo v1, ""

    aput-object v1, v0, v6

    const-string/jumbo v1, ""

    aput-object v1, v0, v3

    const-string/jumbo v1, ""

    aput-object v1, v0, v7

    const-string/jumbo v1, "bl_layer_e_color_l.png"

    const/4 v2, 0x4

    aput-object v1, v0, v2

    const-string/jumbo v1, ""

    const/4 v2, 0x5

    aput-object v1, v0, v2

    const-string/jumbo v1, ""

    const/4 v2, 0x6

    aput-object v1, v0, v2

    const-string/jumbo v1, ""

    const/4 v2, 0x7

    aput-object v1, v0, v2

    const-string/jumbo v1, ""

    const/16 v2, 0x8

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/systemui/infinity/theme/blue/TangramBlueSystem;->mapLeftFileName:[Ljava/lang/String;

    new-array v0, v5, [Ljava/lang/String;

    const-string/jumbo v1, "bl_layer_a_color_l.png"

    aput-object v1, v0, v4

    const-string/jumbo v1, ""

    aput-object v1, v0, v6

    const-string/jumbo v1, ""

    aput-object v1, v0, v3

    const-string/jumbo v1, ""

    aput-object v1, v0, v7

    const-string/jumbo v1, "bl_layer_e_color_l.png"

    const/4 v2, 0x4

    aput-object v1, v0, v2

    const-string/jumbo v1, ""

    const/4 v2, 0x5

    aput-object v1, v0, v2

    const-string/jumbo v1, ""

    const/4 v2, 0x6

    aput-object v1, v0, v2

    const-string/jumbo v1, ""

    const/4 v2, 0x7

    aput-object v1, v0, v2

    const-string/jumbo v1, ""

    const/16 v2, 0x8

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/systemui/infinity/theme/blue/TangramBlueSystem;->mapRightFileName:[Ljava/lang/String;

    new-array v0, v5, [[F

    new-array v1, v3, [F

    fill-array-data v1, :array_0

    aput-object v1, v0, v4

    new-array v1, v3, [F

    fill-array-data v1, :array_1

    aput-object v1, v0, v6

    new-array v1, v4, [F

    aput-object v1, v0, v3

    new-array v1, v4, [F

    aput-object v1, v0, v7

    new-array v1, v3, [F

    fill-array-data v1, :array_2

    const/4 v2, 0x4

    aput-object v1, v0, v2

    new-array v1, v3, [F

    fill-array-data v1, :array_3

    const/4 v2, 0x5

    aput-object v1, v0, v2

    new-array v1, v4, [F

    const/4 v2, 0x6

    aput-object v1, v0, v2

    new-array v1, v3, [F

    fill-array-data v1, :array_4

    const/4 v2, 0x7

    aput-object v1, v0, v2

    new-array v1, v3, [F

    fill-array-data v1, :array_5

    const/16 v2, 0x8

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/systemui/infinity/theme/blue/TangramBlueSystem;->maskMoveDistance:[[F

    new-array v0, v5, [Z

    fill-array-data v0, :array_6

    sput-object v0, Lcom/android/systemui/infinity/theme/blue/TangramBlueSystem;->bottomLayerImage:[Z

    new-array v0, v5, [F

    fill-array-data v0, :array_7

    sput-object v0, Lcom/android/systemui/infinity/theme/blue/TangramBlueSystem;->layerFixAlpha:[F

    new-array v0, v5, [[F

    new-array v1, v3, [F

    fill-array-data v1, :array_8

    aput-object v1, v0, v4

    new-array v1, v3, [F

    fill-array-data v1, :array_9

    aput-object v1, v0, v6

    new-array v1, v3, [F

    fill-array-data v1, :array_a

    aput-object v1, v0, v3

    new-array v1, v3, [F

    fill-array-data v1, :array_b

    aput-object v1, v0, v7

    new-array v1, v3, [F

    fill-array-data v1, :array_c

    const/4 v2, 0x4

    aput-object v1, v0, v2

    new-array v1, v3, [F

    fill-array-data v1, :array_d

    const/4 v2, 0x5

    aput-object v1, v0, v2

    new-array v1, v3, [F

    fill-array-data v1, :array_e

    const/4 v2, 0x6

    aput-object v1, v0, v2

    new-array v1, v3, [F

    fill-array-data v1, :array_f

    const/4 v2, 0x7

    aput-object v1, v0, v2

    new-array v1, v3, [F

    fill-array-data v1, :array_10

    const/16 v2, 0x8

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/systemui/infinity/theme/blue/TangramBlueSystem;->layerSize:[[F

    new-array v0, v5, [[F

    new-array v1, v3, [F

    fill-array-data v1, :array_11

    aput-object v1, v0, v4

    new-array v1, v3, [F

    fill-array-data v1, :array_12

    aput-object v1, v0, v6

    new-array v1, v3, [F

    fill-array-data v1, :array_13

    aput-object v1, v0, v3

    new-array v1, v3, [F

    fill-array-data v1, :array_14

    aput-object v1, v0, v7

    new-array v1, v3, [F

    fill-array-data v1, :array_15

    const/4 v2, 0x4

    aput-object v1, v0, v2

    new-array v1, v3, [F

    fill-array-data v1, :array_16

    const/4 v2, 0x5

    aput-object v1, v0, v2

    new-array v1, v3, [F

    fill-array-data v1, :array_17

    const/4 v2, 0x6

    aput-object v1, v0, v2

    new-array v1, v3, [F

    fill-array-data v1, :array_18

    const/4 v2, 0x7

    aput-object v1, v0, v2

    new-array v1, v3, [F

    fill-array-data v1, :array_19

    const/16 v2, 0x8

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/systemui/infinity/theme/blue/TangramBlueSystem;->layerPosition:[[F

    new-array v0, v5, [[F

    new-array v1, v3, [F

    fill-array-data v1, :array_1a

    aput-object v1, v0, v4

    new-array v1, v3, [F

    fill-array-data v1, :array_1b

    aput-object v1, v0, v6

    new-array v1, v3, [F

    fill-array-data v1, :array_1c

    aput-object v1, v0, v3

    new-array v1, v3, [F

    fill-array-data v1, :array_1d

    aput-object v1, v0, v7

    new-array v1, v3, [F

    fill-array-data v1, :array_1e

    const/4 v2, 0x4

    aput-object v1, v0, v2

    new-array v1, v3, [F

    fill-array-data v1, :array_1f

    const/4 v2, 0x5

    aput-object v1, v0, v2

    new-array v1, v3, [F

    fill-array-data v1, :array_20

    const/4 v2, 0x6

    aput-object v1, v0, v2

    new-array v1, v3, [F

    fill-array-data v1, :array_21

    const/4 v2, 0x7

    aput-object v1, v0, v2

    new-array v1, v3, [F

    fill-array-data v1, :array_22

    const/16 v2, 0x8

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/systemui/infinity/theme/blue/TangramBlueSystem;->maskSize:[[F

    new-array v0, v5, [[F

    new-array v1, v3, [F

    fill-array-data v1, :array_23

    aput-object v1, v0, v4

    new-array v1, v3, [F

    fill-array-data v1, :array_24

    aput-object v1, v0, v6

    new-array v1, v3, [F

    fill-array-data v1, :array_25

    aput-object v1, v0, v3

    new-array v1, v3, [F

    fill-array-data v1, :array_26

    aput-object v1, v0, v7

    new-array v1, v3, [F

    fill-array-data v1, :array_27

    const/4 v2, 0x4

    aput-object v1, v0, v2

    new-array v1, v3, [F

    fill-array-data v1, :array_28

    const/4 v2, 0x5

    aput-object v1, v0, v2

    new-array v1, v3, [F

    fill-array-data v1, :array_29

    const/4 v2, 0x6

    aput-object v1, v0, v2

    new-array v1, v3, [F

    fill-array-data v1, :array_2a

    const/4 v2, 0x7

    aput-object v1, v0, v2

    new-array v1, v3, [F

    fill-array-data v1, :array_2b

    const/16 v2, 0x8

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/systemui/infinity/theme/blue/TangramBlueSystem;->maskPosition:[[F

    new-array v0, v5, [[F

    new-array v1, v3, [F

    fill-array-data v1, :array_2c

    aput-object v1, v0, v4

    new-array v1, v3, [F

    fill-array-data v1, :array_2d

    aput-object v1, v0, v6

    new-array v1, v3, [F

    fill-array-data v1, :array_2e

    aput-object v1, v0, v3

    new-array v1, v3, [F

    fill-array-data v1, :array_2f

    aput-object v1, v0, v7

    new-array v1, v3, [F

    fill-array-data v1, :array_30

    const/4 v2, 0x4

    aput-object v1, v0, v2

    new-array v1, v3, [F

    fill-array-data v1, :array_31

    const/4 v2, 0x5

    aput-object v1, v0, v2

    new-array v1, v3, [F

    fill-array-data v1, :array_32

    const/4 v2, 0x6

    aput-object v1, v0, v2

    new-array v1, v3, [F

    fill-array-data v1, :array_33

    const/4 v2, 0x7

    aput-object v1, v0, v2

    new-array v1, v3, [F

    fill-array-data v1, :array_34

    const/16 v2, 0x8

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/systemui/infinity/theme/blue/TangramBlueSystem;->initTranslation:[[F

    new-array v0, v5, [[F

    new-array v1, v3, [F

    fill-array-data v1, :array_35

    aput-object v1, v0, v4

    new-array v1, v3, [F

    fill-array-data v1, :array_36

    aput-object v1, v0, v6

    new-array v1, v3, [F

    fill-array-data v1, :array_37

    aput-object v1, v0, v3

    new-array v1, v3, [F

    fill-array-data v1, :array_38

    aput-object v1, v0, v7

    new-array v1, v3, [F

    fill-array-data v1, :array_39

    const/4 v2, 0x4

    aput-object v1, v0, v2

    new-array v1, v3, [F

    fill-array-data v1, :array_3a

    const/4 v2, 0x5

    aput-object v1, v0, v2

    new-array v1, v3, [F

    fill-array-data v1, :array_3b

    const/4 v2, 0x6

    aput-object v1, v0, v2

    new-array v1, v3, [F

    fill-array-data v1, :array_3c

    const/4 v2, 0x7

    aput-object v1, v0, v2

    new-array v1, v3, [F

    fill-array-data v1, :array_3d

    const/16 v2, 0x8

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/systemui/infinity/theme/blue/TangramBlueSystem;->endTranslation:[[F

    return-void

    :array_0
    .array-data 4
        0x3d23d70a    # 0.04f
        0x3d23d70a    # 0.04f
    .end array-data

    :array_1
    .array-data 4
        0x3d23d70a    # 0.04f
        0x3d23d70a    # 0.04f
    .end array-data

    :array_2
    .array-data 4
        0x3d23d70a    # 0.04f
        0x3d23d70a    # 0.04f
    .end array-data

    :array_3
    .array-data 4
        0x3cf5c28f    # 0.03f
        0x3cf5c28f    # 0.03f
    .end array-data

    :array_4
    .array-data 4
        0x3cf5c28f    # 0.03f
        0x3cf5c28f    # 0.03f
    .end array-data

    :array_5
    .array-data 4
        0x3d23d70a    # 0.04f
        0x3d23d70a    # 0.04f
    .end array-data

    :array_6
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x0t
        0x1t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_7
    .array-data 4
        0x3f4ccccd    # 0.8f
        0x3ecccccd    # 0.4f
        0x3f19999a    # 0.6f
        0x3ecccccd    # 0.4f
        0x3ebd70a4    # 0.37f
        0x3eb33333    # 0.35f
        0x3e99999a    # 0.3f
        0x3f333333    # 0.7f
        0x3f000000    # 0.5f
    .end array-data

    :array_8
    .array-data 4
        0x44a0e000    # 1287.0f
        0x44a0e000    # 1287.0f
    .end array-data

    :array_9
    .array-data 4
        0x44a0e000    # 1287.0f
        0x44a0e000    # 1287.0f
    .end array-data

    :array_a
    .array-data 4
        0x44c5c000    # 1582.0f
        0x44d46000    # 1699.0f
    .end array-data

    :array_b
    .array-data 4
        0x44a94000    # 1354.0f
        0x45026000    # 2086.0f
    .end array-data

    :array_c
    .array-data 4
        0x44a16000    # 1291.0f
        0x44a16000    # 1291.0f
    .end array-data

    :array_d
    .array-data 4
        0x44920000    # 1168.0f
        0x4492a000    # 1173.0f
    .end array-data

    :array_e
    .array-data 4
        0x4514e000    # 2382.0f
        0x4514f000    # 2383.0f
    .end array-data

    :array_f
    .array-data 4
        0x45202000    # 2562.0f
        0x45202000    # 2562.0f
    .end array-data

    :array_10
    .array-data 4
        0x44b28000    # 1428.0f
        0x44bb2000    # 1497.0f
    .end array-data

    :array_11
    .array-data 4
        0x44b8e000    # 1479.0f
        0x44adc000    # 1390.0f
    .end array-data

    :array_12
    .array-data 4
        0x44b8e000    # 1479.0f
        0x44adc000    # 1390.0f
    .end array-data

    :array_13
    .array-data 4
        0x4502a000    # 2090.0f
        0x44b60000    # 1456.0f
    .end array-data

    :array_14
    .array-data 4
        0x43df8000    # 447.0f
        0x4482c000    # 1046.0f
    .end array-data

    :array_15
    .array-data 4
        0x44b8c000    # 1478.0f
        0x45018000    # 2072.0f
    .end array-data

    :array_16
    .array-data 4
        0x44684000    # 929.0f
        0x44e44000    # 1826.0f
    .end array-data

    :array_17
    .array-data 4
        0x45080000    # 2176.0f
        0x44a3c000    # 1310.0f
    .end array-data

    :array_18
    .array-data 4
        0x443c8000    # 754.0f
        0x451a8000    # 2472.0f
    .end array-data

    :array_19
    .array-data 4
        0x44c38000    # 1564.0f
        0x45224000    # 2596.0f
    .end array-data

    :array_1a
    .array-data 4
        0x45390000    # 2960.0f
        0x45390000    # 2960.0f
    .end array-data

    :array_1b
    .array-data 4
        0x45390000    # 2960.0f
        0x45390000    # 2960.0f
    .end array-data

    :array_1c
    .array-data 4
        0x45390000    # 2960.0f
        0x45390000    # 2960.0f
    .end array-data

    :array_1d
    .array-data 4
        0x45390000    # 2960.0f
        0x45390000    # 2960.0f
    .end array-data

    :array_1e
    .array-data 4
        0x45390000    # 2960.0f
        0x45390000    # 2960.0f
    .end array-data

    :array_1f
    .array-data 4
        0x45390000    # 2960.0f
        0x45390000    # 2960.0f
    .end array-data

    :array_20
    .array-data 4
        0x45390000    # 2960.0f
        0x45390000    # 2960.0f
    .end array-data

    :array_21
    .array-data 4
        0x45390000    # 2960.0f
        0x45390000    # 2960.0f
    .end array-data

    :array_22
    .array-data 4
        0x45390000    # 2960.0f
        0x45390000    # 2960.0f
    .end array-data

    :array_23
    .array-data 4
        0x0
        0x0
    .end array-data

    :array_24
    .array-data 4
        0x0
        0x0
    .end array-data

    :array_25
    .array-data 4
        0x0
        0x0
    .end array-data

    :array_26
    .array-data 4
        0x0
        0x0
    .end array-data

    :array_27
    .array-data 4
        0x0
        0x0
    .end array-data

    :array_28
    .array-data 4
        0x0
        0x0
    .end array-data

    :array_29
    .array-data 4
        0x0
        0x0
    .end array-data

    :array_2a
    .array-data 4
        0x0
        0x0
    .end array-data

    :array_2b
    .array-data 4
        0x0
        0x0
    .end array-data

    :array_2c
    .array-data 4
        0x435c0000    # 220.0f
        0x435c0000    # 220.0f
    .end array-data

    :array_2d
    .array-data 4
        0x435c0000    # 220.0f
        0x435c0000    # 220.0f
    .end array-data

    :array_2e
    .array-data 4
        0x435c0000    # 220.0f
        0x435c0000    # 220.0f
    .end array-data

    :array_2f
    .array-data 4
        0x435c0000    # 220.0f
        0x435c0000    # 220.0f
    .end array-data

    :array_30
    .array-data 4
        0x435c0000    # 220.0f
        0x435c0000    # 220.0f
    .end array-data

    :array_31
    .array-data 4
        0x435c0000    # 220.0f
        0x435c0000    # 220.0f
    .end array-data

    :array_32
    .array-data 4
        0x435c0000    # 220.0f
        0x435c0000    # 220.0f
    .end array-data

    :array_33
    .array-data 4
        0x435c0000    # 220.0f
        0x435c0000    # 220.0f
    .end array-data

    :array_34
    .array-data 4
        0x435c0000    # 220.0f
        0x435c0000    # 220.0f
    .end array-data

    :array_35
    .array-data 4
        0x42fa0000    # 125.0f
        0x42fa0000    # 125.0f
    .end array-data

    :array_36
    .array-data 4
        0x42fa0000    # 125.0f
        0x42fa0000    # 125.0f
    .end array-data

    :array_37
    .array-data 4
        -0x3d060000    # -125.0f
        -0x3d060000    # -125.0f
    .end array-data

    :array_38
    .array-data 4
        0x42fa0000    # 125.0f
        0x42fa0000    # 125.0f
    .end array-data

    :array_39
    .array-data 4
        -0x3d060000    # -125.0f
        -0x3d060000    # -125.0f
    .end array-data

    :array_3a
    .array-data 4
        0x42fa0000    # 125.0f
        0x42fa0000    # 125.0f
    .end array-data

    :array_3b
    .array-data 4
        -0x3d060000    # -125.0f
        -0x3d060000    # -125.0f
    .end array-data

    :array_3c
    .array-data 4
        0x42fa0000    # 125.0f
        0x42fa0000    # 125.0f
    .end array-data

    :array_3d
    .array-data 4
        -0x3d060000    # -125.0f
        -0x3d060000    # -125.0f
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/infinity/GalaxyRenderer;)V
    .locals 3

    const v2, 0x3dcccccd    # 0.1f

    const v0, 0x7f0a0009

    const v1, 0x7f0a000a

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/android/systemui/infinity/tangram/TangramSystem;-><init>(Landroid/content/Context;Lcom/android/systemui/infinity/GalaxyRenderer;II)V

    iput v2, p0, Lcom/android/systemui/infinity/theme/blue/TangramBlueSystem;->showEasing:F

    iput v2, p0, Lcom/android/systemui/infinity/theme/blue/TangramBlueSystem;->tiltEasing:F

    const v0, 0x3da3d70a    # 0.08f

    iput v0, p0, Lcom/android/systemui/infinity/theme/blue/TangramBlueSystem;->tiltSubEasing:F

    const v0, 0x3e947ae1    # 0.29f

    iput v0, p0, Lcom/android/systemui/infinity/theme/blue/TangramBlueSystem;->tiltTranslation:F

    iget-object v0, p0, Lcom/android/systemui/infinity/theme/blue/TangramBlueSystem;->tangramList:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/infinity/tangram/Tangram;

    iput-object v0, p0, Lcom/android/systemui/infinity/theme/blue/TangramBlueSystem;->a:Lcom/android/systemui/infinity/tangram/Tangram;

    iget-object v0, p0, Lcom/android/systemui/infinity/theme/blue/TangramBlueSystem;->tangramList:Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/infinity/tangram/Tangram;

    iput-object v0, p0, Lcom/android/systemui/infinity/theme/blue/TangramBlueSystem;->b:Lcom/android/systemui/infinity/tangram/Tangram;

    iget-object v0, p0, Lcom/android/systemui/infinity/theme/blue/TangramBlueSystem;->tangramList:Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/infinity/tangram/Tangram;

    iput-object v0, p0, Lcom/android/systemui/infinity/theme/blue/TangramBlueSystem;->c:Lcom/android/systemui/infinity/tangram/Tangram;

    iget-object v0, p0, Lcom/android/systemui/infinity/theme/blue/TangramBlueSystem;->tangramList:Ljava/util/ArrayList;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/infinity/tangram/Tangram;

    iput-object v0, p0, Lcom/android/systemui/infinity/theme/blue/TangramBlueSystem;->d:Lcom/android/systemui/infinity/tangram/Tangram;

    iget-object v0, p0, Lcom/android/systemui/infinity/theme/blue/TangramBlueSystem;->tangramList:Ljava/util/ArrayList;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/infinity/tangram/Tangram;

    iput-object v0, p0, Lcom/android/systemui/infinity/theme/blue/TangramBlueSystem;->e:Lcom/android/systemui/infinity/tangram/Tangram;

    iget-object v0, p0, Lcom/android/systemui/infinity/theme/blue/TangramBlueSystem;->tangramList:Ljava/util/ArrayList;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/infinity/tangram/Tangram;

    iput-object v0, p0, Lcom/android/systemui/infinity/theme/blue/TangramBlueSystem;->f:Lcom/android/systemui/infinity/tangram/Tangram;

    iget-object v0, p0, Lcom/android/systemui/infinity/theme/blue/TangramBlueSystem;->tangramList:Ljava/util/ArrayList;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/infinity/tangram/Tangram;

    iput-object v0, p0, Lcom/android/systemui/infinity/theme/blue/TangramBlueSystem;->g:Lcom/android/systemui/infinity/tangram/Tangram;

    iget-object v0, p0, Lcom/android/systemui/infinity/theme/blue/TangramBlueSystem;->tangramList:Ljava/util/ArrayList;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/infinity/tangram/Tangram;

    iput-object v0, p0, Lcom/android/systemui/infinity/theme/blue/TangramBlueSystem;->h:Lcom/android/systemui/infinity/tangram/Tangram;

    iget-object v0, p0, Lcom/android/systemui/infinity/theme/blue/TangramBlueSystem;->tangramList:Ljava/util/ArrayList;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/infinity/tangram/Tangram;

    iput-object v0, p0, Lcom/android/systemui/infinity/theme/blue/TangramBlueSystem;->il:Lcom/android/systemui/infinity/tangram/Tangram;

    return-void
.end method


# virtual methods
.method protected getTextureMapData()Lcom/android/systemui/infinity/tangram/TangramMapData;
    .locals 2

    const/high16 v1, 0x45390000    # 2960.0f

    new-instance v0, Lcom/android/systemui/infinity/tangram/TangramMapData;

    invoke-direct {v0}, Lcom/android/systemui/infinity/tangram/TangramMapData;-><init>()V

    iput v1, v0, Lcom/android/systemui/infinity/tangram/TangramMapData;->previewHeight:F

    iput v1, v0, Lcom/android/systemui/infinity/tangram/TangramMapData;->previewWidth:F

    sget-object v1, Lcom/android/systemui/infinity/theme/blue/TangramBlueSystem;->maskMoveDistance:[[F

    iput-object v1, v0, Lcom/android/systemui/infinity/tangram/TangramMapData;->maskMoveDistance:[[F

    sget-object v1, Lcom/android/systemui/infinity/theme/blue/TangramBlueSystem;->layerSize:[[F

    iput-object v1, v0, Lcom/android/systemui/infinity/tangram/TangramMapData;->layerSize:[[F

    sget-object v1, Lcom/android/systemui/infinity/theme/blue/TangramBlueSystem;->layerPosition:[[F

    iput-object v1, v0, Lcom/android/systemui/infinity/tangram/TangramMapData;->layerPosition:[[F

    sget-object v1, Lcom/android/systemui/infinity/theme/blue/TangramBlueSystem;->maskSize:[[F

    iput-object v1, v0, Lcom/android/systemui/infinity/tangram/TangramMapData;->maskSize:[[F

    sget-object v1, Lcom/android/systemui/infinity/theme/blue/TangramBlueSystem;->maskPosition:[[F

    iput-object v1, v0, Lcom/android/systemui/infinity/tangram/TangramMapData;->maskPosition:[[F

    sget-object v1, Lcom/android/systemui/infinity/theme/blue/TangramBlueSystem;->layerName:[Ljava/lang/String;

    iput-object v1, v0, Lcom/android/systemui/infinity/tangram/TangramMapData;->layerName:[Ljava/lang/String;

    sget-object v1, Lcom/android/systemui/infinity/theme/blue/TangramBlueSystem;->initTranslation:[[F

    iput-object v1, v0, Lcom/android/systemui/infinity/tangram/TangramMapData;->initTranslation:[[F

    sget-object v1, Lcom/android/systemui/infinity/theme/blue/TangramBlueSystem;->endTranslation:[[F

    iput-object v1, v0, Lcom/android/systemui/infinity/tangram/TangramMapData;->endTranslation:[[F

    sget-object v1, Lcom/android/systemui/infinity/theme/blue/TangramBlueSystem;->bottomLayerImage:[Z

    iput-object v1, v0, Lcom/android/systemui/infinity/tangram/TangramMapData;->bottomLayerImage:[Z

    sget-object v1, Lcom/android/systemui/infinity/theme/blue/TangramBlueSystem;->layerFixAlpha:[F

    iput-object v1, v0, Lcom/android/systemui/infinity/tangram/TangramMapData;->layerFixAlpha:[F

    sget-object v1, Lcom/android/systemui/infinity/theme/blue/TangramBlueSystem;->mapLayerFileName:[Ljava/lang/String;

    iput-object v1, v0, Lcom/android/systemui/infinity/tangram/TangramMapData;->mapLayerFileName:[Ljava/lang/String;

    sget-object v1, Lcom/android/systemui/infinity/theme/blue/TangramBlueSystem;->mapMaskFileName:[Ljava/lang/String;

    iput-object v1, v0, Lcom/android/systemui/infinity/tangram/TangramMapData;->mapMaskFileName:[Ljava/lang/String;

    sget-object v1, Lcom/android/systemui/infinity/theme/blue/TangramBlueSystem;->mapLeftFileName:[Ljava/lang/String;

    iput-object v1, v0, Lcom/android/systemui/infinity/tangram/TangramMapData;->mapLeftFileName:[Ljava/lang/String;

    sget-object v1, Lcom/android/systemui/infinity/theme/blue/TangramBlueSystem;->mapRightFileName:[Ljava/lang/String;

    iput-object v1, v0, Lcom/android/systemui/infinity/tangram/TangramMapData;->mapRightFileName:[Ljava/lang/String;

    const/4 v1, 0x2

    iput v1, v0, Lcom/android/systemui/infinity/tangram/TangramMapData;->objectType:I

    return-object v0
.end method

.method protected showingProcess()V
    .locals 7

    const v6, 0x3a83126f    # 0.001f

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    const/4 v1, 0x0

    :goto_0
    iget-object v3, p0, Lcom/android/systemui/infinity/theme/blue/TangramBlueSystem;->tangramList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_0

    iget-object v3, p0, Lcom/android/systemui/infinity/theme/blue/TangramBlueSystem;->tangramList:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/infinity/tangram/Tangram;

    iput v4, v3, Lcom/android/systemui/infinity/tangram/Tangram;->gyroTx:F

    iget-object v3, p0, Lcom/android/systemui/infinity/theme/blue/TangramBlueSystem;->tangramList:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/infinity/tangram/Tangram;

    iput v4, v3, Lcom/android/systemui/infinity/tangram/Tangram;->gyroTy:F

    iget-object v3, p0, Lcom/android/systemui/infinity/theme/blue/TangramBlueSystem;->tangramList:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/infinity/tangram/Tangram;

    iput v4, v3, Lcom/android/systemui/infinity/tangram/Tangram;->gyroValue:F

    iget-object v3, p0, Lcom/android/systemui/infinity/theme/blue/TangramBlueSystem;->tangramList:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/infinity/tangram/Tangram;

    iput v5, v3, Lcom/android/systemui/infinity/tangram/Tangram;->gyroAlpha:F

    iget-object v3, p0, Lcom/android/systemui/infinity/theme/blue/TangramBlueSystem;->tangramList:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/infinity/tangram/Tangram;

    iput v4, v3, Lcom/android/systemui/infinity/tangram/Tangram;->leftImageAlpha:F

    iget-object v3, p0, Lcom/android/systemui/infinity/theme/blue/TangramBlueSystem;->tangramList:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/infinity/tangram/Tangram;

    iput v4, v3, Lcom/android/systemui/infinity/tangram/Tangram;->rightImageAlpha:F

    iget-object v3, p0, Lcom/android/systemui/infinity/theme/blue/TangramBlueSystem;->tangramList:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/infinity/tangram/Tangram;

    iput v5, v3, Lcom/android/systemui/infinity/tangram/Tangram;->centerImageAlpha:F

    iget-object v3, p0, Lcom/android/systemui/infinity/theme/blue/TangramBlueSystem;->tangramList:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/infinity/tangram/Tangram;

    iput v5, v3, Lcom/android/systemui/infinity/tangram/Tangram;->gyroScale:F

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget-object v3, p0, Lcom/android/systemui/infinity/theme/blue/TangramBlueSystem;->d:Lcom/android/systemui/infinity/tangram/Tangram;

    iget v4, p0, Lcom/android/systemui/infinity/theme/blue/TangramBlueSystem;->showingProgress:F

    iput v4, v3, Lcom/android/systemui/infinity/tangram/Tangram;->showingProgress:F

    iget-object v3, p0, Lcom/android/systemui/infinity/theme/blue/TangramBlueSystem;->f:Lcom/android/systemui/infinity/tangram/Tangram;

    iget v4, p0, Lcom/android/systemui/infinity/theme/blue/TangramBlueSystem;->showingProgress:F

    iput v4, v3, Lcom/android/systemui/infinity/tangram/Tangram;->showingProgress:F

    iget-object v3, p0, Lcom/android/systemui/infinity/theme/blue/TangramBlueSystem;->d:Lcom/android/systemui/infinity/tangram/Tangram;

    iget v2, v3, Lcom/android/systemui/infinity/tangram/Tangram;->showingProgress:F

    iget-object v3, p0, Lcom/android/systemui/infinity/theme/blue/TangramBlueSystem;->a:Lcom/android/systemui/infinity/tangram/Tangram;

    iget v3, v3, Lcom/android/systemui/infinity/tangram/Tangram;->showingProgress:F

    sub-float v0, v2, v3

    iget-object v3, p0, Lcom/android/systemui/infinity/theme/blue/TangramBlueSystem;->a:Lcom/android/systemui/infinity/tangram/Tangram;

    iget-object v4, p0, Lcom/android/systemui/infinity/theme/blue/TangramBlueSystem;->a:Lcom/android/systemui/infinity/tangram/Tangram;

    iget v4, v4, Lcom/android/systemui/infinity/tangram/Tangram;->showingProgress:F

    iget v5, p0, Lcom/android/systemui/infinity/theme/blue/TangramBlueSystem;->showEasing:F

    mul-float/2addr v5, v0

    add-float/2addr v4, v5

    iput v4, v3, Lcom/android/systemui/infinity/tangram/Tangram;->showingProgress:F

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v3

    cmpg-float v3, v3, v6

    if-gez v3, :cond_1

    iget-object v3, p0, Lcom/android/systemui/infinity/theme/blue/TangramBlueSystem;->a:Lcom/android/systemui/infinity/tangram/Tangram;

    iput v2, v3, Lcom/android/systemui/infinity/tangram/Tangram;->showingProgress:F

    :cond_1
    iget-object v3, p0, Lcom/android/systemui/infinity/theme/blue/TangramBlueSystem;->b:Lcom/android/systemui/infinity/tangram/Tangram;

    iget-object v4, p0, Lcom/android/systemui/infinity/theme/blue/TangramBlueSystem;->a:Lcom/android/systemui/infinity/tangram/Tangram;

    iget v4, v4, Lcom/android/systemui/infinity/tangram/Tangram;->showingProgress:F

    iput v4, v3, Lcom/android/systemui/infinity/tangram/Tangram;->showingProgress:F

    iget-object v3, p0, Lcom/android/systemui/infinity/theme/blue/TangramBlueSystem;->h:Lcom/android/systemui/infinity/tangram/Tangram;

    iget-object v4, p0, Lcom/android/systemui/infinity/theme/blue/TangramBlueSystem;->a:Lcom/android/systemui/infinity/tangram/Tangram;

    iget v4, v4, Lcom/android/systemui/infinity/tangram/Tangram;->showingProgress:F

    iput v4, v3, Lcom/android/systemui/infinity/tangram/Tangram;->showingProgress:F

    iget-object v3, p0, Lcom/android/systemui/infinity/theme/blue/TangramBlueSystem;->a:Lcom/android/systemui/infinity/tangram/Tangram;

    iget v2, v3, Lcom/android/systemui/infinity/tangram/Tangram;->showingProgress:F

    iget-object v3, p0, Lcom/android/systemui/infinity/theme/blue/TangramBlueSystem;->c:Lcom/android/systemui/infinity/tangram/Tangram;

    iget v3, v3, Lcom/android/systemui/infinity/tangram/Tangram;->showingProgress:F

    sub-float v0, v2, v3

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v3

    cmpg-float v3, v3, v6

    if-gez v3, :cond_2

    iget-object v3, p0, Lcom/android/systemui/infinity/theme/blue/TangramBlueSystem;->c:Lcom/android/systemui/infinity/tangram/Tangram;

    iput v2, v3, Lcom/android/systemui/infinity/tangram/Tangram;->showingProgress:F

    :cond_2
    iget-object v3, p0, Lcom/android/systemui/infinity/theme/blue/TangramBlueSystem;->c:Lcom/android/systemui/infinity/tangram/Tangram;

    iget-object v4, p0, Lcom/android/systemui/infinity/theme/blue/TangramBlueSystem;->c:Lcom/android/systemui/infinity/tangram/Tangram;

    iget v4, v4, Lcom/android/systemui/infinity/tangram/Tangram;->showingProgress:F

    iget v5, p0, Lcom/android/systemui/infinity/theme/blue/TangramBlueSystem;->showEasing:F

    mul-float/2addr v5, v0

    add-float/2addr v4, v5

    iput v4, v3, Lcom/android/systemui/infinity/tangram/Tangram;->showingProgress:F

    iget-object v3, p0, Lcom/android/systemui/infinity/theme/blue/TangramBlueSystem;->e:Lcom/android/systemui/infinity/tangram/Tangram;

    iget-object v4, p0, Lcom/android/systemui/infinity/theme/blue/TangramBlueSystem;->c:Lcom/android/systemui/infinity/tangram/Tangram;

    iget v4, v4, Lcom/android/systemui/infinity/tangram/Tangram;->showingProgress:F

    iput v4, v3, Lcom/android/systemui/infinity/tangram/Tangram;->showingProgress:F

    iget-object v3, p0, Lcom/android/systemui/infinity/theme/blue/TangramBlueSystem;->g:Lcom/android/systemui/infinity/tangram/Tangram;

    iget-object v4, p0, Lcom/android/systemui/infinity/theme/blue/TangramBlueSystem;->c:Lcom/android/systemui/infinity/tangram/Tangram;

    iget v4, v4, Lcom/android/systemui/infinity/tangram/Tangram;->showingProgress:F

    iput v4, v3, Lcom/android/systemui/infinity/tangram/Tangram;->showingProgress:F

    iget-object v3, p0, Lcom/android/systemui/infinity/theme/blue/TangramBlueSystem;->il:Lcom/android/systemui/infinity/tangram/Tangram;

    iget-object v4, p0, Lcom/android/systemui/infinity/theme/blue/TangramBlueSystem;->c:Lcom/android/systemui/infinity/tangram/Tangram;

    iget v4, v4, Lcom/android/systemui/infinity/tangram/Tangram;->showingProgress:F

    iput v4, v3, Lcom/android/systemui/infinity/tangram/Tangram;->showingProgress:F

    return-void
.end method

.method protected tiltProcess(Z)V
    .locals 14

    const v13, 0x3ecccccd    # 0.4f

    const v9, 0x3f933333    # 1.15f

    const/high16 v12, 0x40000000    # 2.0f

    const/4 v11, 0x0

    const/high16 v10, 0x3f800000    # 1.0f

    iget v6, p0, Lcom/android/systemui/infinity/theme/blue/TangramBlueSystem;->targetGyroValue:F

    iget-object v7, p0, Lcom/android/systemui/infinity/theme/blue/TangramBlueSystem;->d:Lcom/android/systemui/infinity/tangram/Tangram;

    iget v7, v7, Lcom/android/systemui/infinity/tangram/Tangram;->gyroValue:F

    iget v8, p0, Lcom/android/systemui/infinity/theme/blue/TangramBlueSystem;->tiltEasing:F

    invoke-virtual {p0, v6, v7, v8}, Lcom/android/systemui/infinity/theme/blue/TangramBlueSystem;->getLinearTargetPosition(FFF)F

    move-result v1

    iget-object v6, p0, Lcom/android/systemui/infinity/theme/blue/TangramBlueSystem;->d:Lcom/android/systemui/infinity/tangram/Tangram;

    iput v1, v6, Lcom/android/systemui/infinity/tangram/Tangram;->gyroValue:F

    iget-object v6, p0, Lcom/android/systemui/infinity/theme/blue/TangramBlueSystem;->f:Lcom/android/systemui/infinity/tangram/Tangram;

    iput v1, v6, Lcom/android/systemui/infinity/tangram/Tangram;->gyroValue:F

    move v4, v1

    iget-object v6, p0, Lcom/android/systemui/infinity/theme/blue/TangramBlueSystem;->a:Lcom/android/systemui/infinity/tangram/Tangram;

    iget v6, v6, Lcom/android/systemui/infinity/tangram/Tangram;->gyroValue:F

    sub-float v2, v1, v6

    iget-object v6, p0, Lcom/android/systemui/infinity/theme/blue/TangramBlueSystem;->a:Lcom/android/systemui/infinity/tangram/Tangram;

    iget-object v7, p0, Lcom/android/systemui/infinity/theme/blue/TangramBlueSystem;->a:Lcom/android/systemui/infinity/tangram/Tangram;

    iget v7, v7, Lcom/android/systemui/infinity/tangram/Tangram;->gyroValue:F

    iget v8, p0, Lcom/android/systemui/infinity/theme/blue/TangramBlueSystem;->tiltSubEasing:F

    mul-float/2addr v8, v2

    add-float/2addr v7, v8

    iput v7, v6, Lcom/android/systemui/infinity/tangram/Tangram;->gyroValue:F

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v6

    const v7, 0x3a83126f    # 0.001f

    cmpg-float v6, v6, v7

    if-gez v6, :cond_0

    iget-object v6, p0, Lcom/android/systemui/infinity/theme/blue/TangramBlueSystem;->a:Lcom/android/systemui/infinity/tangram/Tangram;

    iput v1, v6, Lcom/android/systemui/infinity/tangram/Tangram;->gyroValue:F

    :cond_0
    iget-object v6, p0, Lcom/android/systemui/infinity/theme/blue/TangramBlueSystem;->b:Lcom/android/systemui/infinity/tangram/Tangram;

    iget-object v7, p0, Lcom/android/systemui/infinity/theme/blue/TangramBlueSystem;->a:Lcom/android/systemui/infinity/tangram/Tangram;

    iget v7, v7, Lcom/android/systemui/infinity/tangram/Tangram;->gyroValue:F

    iput v7, v6, Lcom/android/systemui/infinity/tangram/Tangram;->gyroValue:F

    iget-object v6, p0, Lcom/android/systemui/infinity/theme/blue/TangramBlueSystem;->h:Lcom/android/systemui/infinity/tangram/Tangram;

    iget-object v7, p0, Lcom/android/systemui/infinity/theme/blue/TangramBlueSystem;->a:Lcom/android/systemui/infinity/tangram/Tangram;

    iget v7, v7, Lcom/android/systemui/infinity/tangram/Tangram;->gyroValue:F

    iput v7, v6, Lcom/android/systemui/infinity/tangram/Tangram;->gyroValue:F

    iget-object v6, p0, Lcom/android/systemui/infinity/theme/blue/TangramBlueSystem;->b:Lcom/android/systemui/infinity/tangram/Tangram;

    iget v4, v6, Lcom/android/systemui/infinity/tangram/Tangram;->gyroValue:F

    iget-object v6, p0, Lcom/android/systemui/infinity/theme/blue/TangramBlueSystem;->c:Lcom/android/systemui/infinity/tangram/Tangram;

    iget v6, v6, Lcom/android/systemui/infinity/tangram/Tangram;->gyroValue:F

    sub-float v2, v4, v6

    iget-object v6, p0, Lcom/android/systemui/infinity/theme/blue/TangramBlueSystem;->c:Lcom/android/systemui/infinity/tangram/Tangram;

    iget-object v7, p0, Lcom/android/systemui/infinity/theme/blue/TangramBlueSystem;->c:Lcom/android/systemui/infinity/tangram/Tangram;

    iget v7, v7, Lcom/android/systemui/infinity/tangram/Tangram;->gyroValue:F

    iget v8, p0, Lcom/android/systemui/infinity/theme/blue/TangramBlueSystem;->tiltSubEasing:F

    mul-float/2addr v8, v2

    add-float/2addr v7, v8

    iput v7, v6, Lcom/android/systemui/infinity/tangram/Tangram;->gyroValue:F

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v6

    const v7, 0x3a83126f    # 0.001f

    cmpg-float v6, v6, v7

    if-gez v6, :cond_1

    iget-object v6, p0, Lcom/android/systemui/infinity/theme/blue/TangramBlueSystem;->c:Lcom/android/systemui/infinity/tangram/Tangram;

    iput v4, v6, Lcom/android/systemui/infinity/tangram/Tangram;->gyroValue:F

    :cond_1
    iget-object v6, p0, Lcom/android/systemui/infinity/theme/blue/TangramBlueSystem;->e:Lcom/android/systemui/infinity/tangram/Tangram;

    iget-object v7, p0, Lcom/android/systemui/infinity/theme/blue/TangramBlueSystem;->c:Lcom/android/systemui/infinity/tangram/Tangram;

    iget v7, v7, Lcom/android/systemui/infinity/tangram/Tangram;->gyroValue:F

    iput v7, v6, Lcom/android/systemui/infinity/tangram/Tangram;->gyroValue:F

    iget-object v6, p0, Lcom/android/systemui/infinity/theme/blue/TangramBlueSystem;->g:Lcom/android/systemui/infinity/tangram/Tangram;

    iget-object v7, p0, Lcom/android/systemui/infinity/theme/blue/TangramBlueSystem;->c:Lcom/android/systemui/infinity/tangram/Tangram;

    iget v7, v7, Lcom/android/systemui/infinity/tangram/Tangram;->gyroValue:F

    iput v7, v6, Lcom/android/systemui/infinity/tangram/Tangram;->gyroValue:F

    iget-object v6, p0, Lcom/android/systemui/infinity/theme/blue/TangramBlueSystem;->il:Lcom/android/systemui/infinity/tangram/Tangram;

    iget-object v7, p0, Lcom/android/systemui/infinity/theme/blue/TangramBlueSystem;->c:Lcom/android/systemui/infinity/tangram/Tangram;

    iget v7, v7, Lcom/android/systemui/infinity/tangram/Tangram;->gyroValue:F

    iput v7, v6, Lcom/android/systemui/infinity/tangram/Tangram;->gyroValue:F

    iget-object v6, p0, Lcom/android/systemui/infinity/theme/blue/TangramBlueSystem;->d:Lcom/android/systemui/infinity/tangram/Tangram;

    iget-object v7, p0, Lcom/android/systemui/infinity/theme/blue/TangramBlueSystem;->il:Lcom/android/systemui/infinity/tangram/Tangram;

    invoke-virtual {p0, v6, v7}, Lcom/android/systemui/infinity/theme/blue/TangramBlueSystem;->checkFinishTiltEasing(Lcom/android/systemui/infinity/tangram/Tangram;Lcom/android/systemui/infinity/tangram/Tangram;)V

    const/4 v3, 0x0

    :goto_0
    iget-object v6, p0, Lcom/android/systemui/infinity/theme/blue/TangramBlueSystem;->tangramList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v3, v6, :cond_2

    iget-object v6, p0, Lcom/android/systemui/infinity/theme/blue/TangramBlueSystem;->tangramList:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/infinity/tangram/Tangram;

    iget v6, v0, Lcom/android/systemui/infinity/tangram/Tangram;->gyroValue:F

    iget v7, p0, Lcom/android/systemui/infinity/theme/blue/TangramBlueSystem;->tiltTranslation:F

    mul-float v5, v6, v7

    iput v5, v0, Lcom/android/systemui/infinity/tangram/Tangram;->gyroTx:F

    iput v5, v0, Lcom/android/systemui/infinity/tangram/Tangram;->gyroTy:F

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    iget-object v6, p0, Lcom/android/systemui/infinity/theme/blue/TangramBlueSystem;->a:Lcom/android/systemui/infinity/tangram/Tangram;

    iget v6, v6, Lcom/android/systemui/infinity/tangram/Tangram;->gyroTx:F

    cmpg-float v6, v6, v11

    if-gez v6, :cond_18

    iget-object v6, p0, Lcom/android/systemui/infinity/theme/blue/TangramBlueSystem;->a:Lcom/android/systemui/infinity/tangram/Tangram;

    iget-object v7, p0, Lcom/android/systemui/infinity/theme/blue/TangramBlueSystem;->a:Lcom/android/systemui/infinity/tangram/Tangram;

    iget v7, v7, Lcom/android/systemui/infinity/tangram/Tangram;->gyroTx:F

    const v8, 0x3fa66666    # 1.3f

    mul-float/2addr v7, v8

    iput v7, v6, Lcom/android/systemui/infinity/tangram/Tangram;->gyroTx:F

    iget-object v6, p0, Lcom/android/systemui/infinity/theme/blue/TangramBlueSystem;->a:Lcom/android/systemui/infinity/tangram/Tangram;

    iget-object v7, p0, Lcom/android/systemui/infinity/theme/blue/TangramBlueSystem;->a:Lcom/android/systemui/infinity/tangram/Tangram;

    iget v7, v7, Lcom/android/systemui/infinity/tangram/Tangram;->gyroTx:F

    iput v7, v6, Lcom/android/systemui/infinity/tangram/Tangram;->gyroTy:F

    :goto_1
    iget-object v6, p0, Lcom/android/systemui/infinity/theme/blue/TangramBlueSystem;->b:Lcom/android/systemui/infinity/tangram/Tangram;

    iget v6, v6, Lcom/android/systemui/infinity/tangram/Tangram;->gyroTx:F

    cmpg-float v6, v6, v11

    if-gez v6, :cond_19

    iget-object v6, p0, Lcom/android/systemui/infinity/theme/blue/TangramBlueSystem;->b:Lcom/android/systemui/infinity/tangram/Tangram;

    iget-object v7, p0, Lcom/android/systemui/infinity/theme/blue/TangramBlueSystem;->b:Lcom/android/systemui/infinity/tangram/Tangram;

    iget v7, v7, Lcom/android/systemui/infinity/tangram/Tangram;->gyroTx:F

    const v8, 0x3fa66666    # 1.3f

    mul-float/2addr v7, v8

    iput v7, v6, Lcom/android/systemui/infinity/tangram/Tangram;->gyroTx:F

    iget-object v6, p0, Lcom/android/systemui/infinity/theme/blue/TangramBlueSystem;->b:Lcom/android/systemui/infinity/tangram/Tangram;

    iget-object v7, p0, Lcom/android/systemui/infinity/theme/blue/TangramBlueSystem;->b:Lcom/android/systemui/infinity/tangram/Tangram;

    iget v7, v7, Lcom/android/systemui/infinity/tangram/Tangram;->gyroTx:F

    iput v7, v6, Lcom/android/systemui/infinity/tangram/Tangram;->gyroTy:F

    :goto_2
    iget-object v6, p0, Lcom/android/systemui/infinity/theme/blue/TangramBlueSystem;->e:Lcom/android/systemui/infinity/tangram/Tangram;

    iget v6, v6, Lcom/android/systemui/infinity/tangram/Tangram;->gyroTx:F

    cmpg-float v6, v6, v11

    if-gez v6, :cond_1a

    iget-object v6, p0, Lcom/android/systemui/infinity/theme/blue/TangramBlueSystem;->e:Lcom/android/systemui/infinity/tangram/Tangram;

    iget-object v7, p0, Lcom/android/systemui/infinity/theme/blue/TangramBlueSystem;->e:Lcom/android/systemui/infinity/tangram/Tangram;

    iget v7, v7, Lcom/android/systemui/infinity/tangram/Tangram;->gyroTx:F

    const v8, 0x3fa66666    # 1.3f

    mul-float/2addr v7, v8

    iput v7, v6, Lcom/android/systemui/infinity/tangram/Tangram;->gyroTx:F

    iget-object v6, p0, Lcom/android/systemui/infinity/theme/blue/TangramBlueSystem;->e:Lcom/android/systemui/infinity/tangram/Tangram;

    iget-object v7, p0, Lcom/android/systemui/infinity/theme/blue/TangramBlueSystem;->e:Lcom/android/systemui/infinity/tangram/Tangram;

    iget v7, v7, Lcom/android/systemui/infinity/tangram/Tangram;->gyroTx:F

    iput v7, v6, Lcom/android/systemui/infinity/tangram/Tangram;->gyroTy:F

    :goto_3
    iget-object v6, p0, Lcom/android/systemui/infinity/theme/blue/TangramBlueSystem;->h:Lcom/android/systemui/infinity/tangram/Tangram;

    iget v6, v6, Lcom/android/systemui/infinity/tangram/Tangram;->gyroTx:F

    cmpg-float v6, v6, v11

    if-gez v6, :cond_3

    iget-object v6, p0, Lcom/android/systemui/infinity/theme/blue/TangramBlueSystem;->h:Lcom/android/systemui/infinity/tangram/Tangram;

    iget-object v7, p0, Lcom/android/systemui/infinity/theme/blue/TangramBlueSystem;->h:Lcom/android/systemui/infinity/tangram/Tangram;

    iget v7, v7, Lcom/android/systemui/infinity/tangram/Tangram;->gyroTx:F

    const/high16 v8, 0x3fc00000    # 1.5f

    mul-float/2addr v7, v8

    iput v7, v6, Lcom/android/systemui/infinity/tangram/Tangram;->gyroTx:F

    iget-object v6, p0, Lcom/android/systemui/infinity/theme/blue/TangramBlueSystem;->h:Lcom/android/systemui/infinity/tangram/Tangram;

    iget-object v7, p0, Lcom/android/systemui/infinity/theme/blue/TangramBlueSystem;->h:Lcom/android/systemui/infinity/tangram/Tangram;

    iget v7, v7, Lcom/android/systemui/infinity/tangram/Tangram;->gyroTx:F

    iput v7, v6, Lcom/android/systemui/infinity/tangram/Tangram;->gyroTy:F

    :cond_3
    iget-object v6, p0, Lcom/android/systemui/infinity/theme/blue/TangramBlueSystem;->a:Lcom/android/systemui/infinity/tangram/Tangram;

    iget-object v7, p0, Lcom/android/systemui/infinity/theme/blue/TangramBlueSystem;->a:Lcom/android/systemui/infinity/tangram/Tangram;

    iget v7, v7, Lcom/android/systemui/infinity/tangram/Tangram;->gyroValue:F

    const v8, 0x3e19999a    # 0.15f

    mul-float/2addr v7, v8

    sub-float v7, v10, v7

    iput v7, v6, Lcom/android/systemui/infinity/tangram/Tangram;->gyroScale:F

    iget-object v6, p0, Lcom/android/systemui/infinity/theme/blue/TangramBlueSystem;->a:Lcom/android/systemui/infinity/tangram/Tangram;

    iget v6, v6, Lcom/android/systemui/infinity/tangram/Tangram;->gyroScale:F

    cmpl-float v6, v6, v9

    if-lez v6, :cond_4

    iget-object v6, p0, Lcom/android/systemui/infinity/theme/blue/TangramBlueSystem;->a:Lcom/android/systemui/infinity/tangram/Tangram;

    iput v9, v6, Lcom/android/systemui/infinity/tangram/Tangram;->gyroScale:F

    :cond_4
    iget-object v6, p0, Lcom/android/systemui/infinity/theme/blue/TangramBlueSystem;->a:Lcom/android/systemui/infinity/tangram/Tangram;

    iget v6, v6, Lcom/android/systemui/infinity/tangram/Tangram;->gyroScale:F

    const v7, 0x3f666666    # 0.9f

    cmpg-float v6, v6, v7

    if-gez v6, :cond_5

    iget-object v6, p0, Lcom/android/systemui/infinity/theme/blue/TangramBlueSystem;->a:Lcom/android/systemui/infinity/tangram/Tangram;

    const v7, 0x3f666666    # 0.9f

    iput v7, v6, Lcom/android/systemui/infinity/tangram/Tangram;->gyroScale:F

    :cond_5
    iget-object v6, p0, Lcom/android/systemui/infinity/theme/blue/TangramBlueSystem;->b:Lcom/android/systemui/infinity/tangram/Tangram;

    iget-object v7, p0, Lcom/android/systemui/infinity/theme/blue/TangramBlueSystem;->a:Lcom/android/systemui/infinity/tangram/Tangram;

    iget v7, v7, Lcom/android/systemui/infinity/tangram/Tangram;->gyroScale:F

    iput v7, v6, Lcom/android/systemui/infinity/tangram/Tangram;->gyroScale:F

    iget-object v6, p0, Lcom/android/systemui/infinity/theme/blue/TangramBlueSystem;->e:Lcom/android/systemui/infinity/tangram/Tangram;

    iget-object v7, p0, Lcom/android/systemui/infinity/theme/blue/TangramBlueSystem;->a:Lcom/android/systemui/infinity/tangram/Tangram;

    iget v7, v7, Lcom/android/systemui/infinity/tangram/Tangram;->gyroValue:F

    const v8, 0x3e19999a    # 0.15f

    mul-float/2addr v7, v8

    sub-float v7, v10, v7

    iput v7, v6, Lcom/android/systemui/infinity/tangram/Tangram;->gyroScale:F

    iget-object v6, p0, Lcom/android/systemui/infinity/theme/blue/TangramBlueSystem;->e:Lcom/android/systemui/infinity/tangram/Tangram;

    iget v6, v6, Lcom/android/systemui/infinity/tangram/Tangram;->gyroScale:F

    cmpl-float v6, v6, v9

    if-lez v6, :cond_6

    iget-object v6, p0, Lcom/android/systemui/infinity/theme/blue/TangramBlueSystem;->e:Lcom/android/systemui/infinity/tangram/Tangram;

    iput v9, v6, Lcom/android/systemui/infinity/tangram/Tangram;->gyroScale:F

    :cond_6
    iget-object v6, p0, Lcom/android/systemui/infinity/theme/blue/TangramBlueSystem;->e:Lcom/android/systemui/infinity/tangram/Tangram;

    iget v6, v6, Lcom/android/systemui/infinity/tangram/Tangram;->gyroScale:F

    float-to-double v6, v6

    const-wide v8, 0x3feccccccccccccdL    # 0.9

    cmpg-double v6, v6, v8

    if-gez v6, :cond_7

    iget-object v6, p0, Lcom/android/systemui/infinity/theme/blue/TangramBlueSystem;->e:Lcom/android/systemui/infinity/tangram/Tangram;

    const v7, 0x3f666666    # 0.9f

    iput v7, v6, Lcom/android/systemui/infinity/tangram/Tangram;->gyroScale:F

    :cond_7
    iget-object v6, p0, Lcom/android/systemui/infinity/theme/blue/TangramBlueSystem;->a:Lcom/android/systemui/infinity/tangram/Tangram;

    iget-object v7, p0, Lcom/android/systemui/infinity/theme/blue/TangramBlueSystem;->a:Lcom/android/systemui/infinity/tangram/Tangram;

    iget v7, v7, Lcom/android/systemui/infinity/tangram/Tangram;->gyroValue:F

    mul-float/2addr v7, v12

    iput v7, v6, Lcom/android/systemui/infinity/tangram/Tangram;->rightImageAlpha:F

    iget-object v6, p0, Lcom/android/systemui/infinity/theme/blue/TangramBlueSystem;->a:Lcom/android/systemui/infinity/tangram/Tangram;

    iget-object v7, p0, Lcom/android/systemui/infinity/theme/blue/TangramBlueSystem;->a:Lcom/android/systemui/infinity/tangram/Tangram;

    iget v7, v7, Lcom/android/systemui/infinity/tangram/Tangram;->gyroValue:F

    neg-float v7, v7

    mul-float/2addr v7, v12

    iput v7, v6, Lcom/android/systemui/infinity/tangram/Tangram;->leftImageAlpha:F

    iget-object v6, p0, Lcom/android/systemui/infinity/theme/blue/TangramBlueSystem;->e:Lcom/android/systemui/infinity/tangram/Tangram;

    iget-object v7, p0, Lcom/android/systemui/infinity/theme/blue/TangramBlueSystem;->e:Lcom/android/systemui/infinity/tangram/Tangram;

    iget v7, v7, Lcom/android/systemui/infinity/tangram/Tangram;->gyroValue:F

    mul-float/2addr v7, v12

    iput v7, v6, Lcom/android/systemui/infinity/tangram/Tangram;->rightImageAlpha:F

    iget-object v6, p0, Lcom/android/systemui/infinity/theme/blue/TangramBlueSystem;->e:Lcom/android/systemui/infinity/tangram/Tangram;

    iget-object v7, p0, Lcom/android/systemui/infinity/theme/blue/TangramBlueSystem;->e:Lcom/android/systemui/infinity/tangram/Tangram;

    iget v7, v7, Lcom/android/systemui/infinity/tangram/Tangram;->gyroValue:F

    neg-float v7, v7

    mul-float/2addr v7, v12

    iput v7, v6, Lcom/android/systemui/infinity/tangram/Tangram;->leftImageAlpha:F

    iget-object v6, p0, Lcom/android/systemui/infinity/theme/blue/TangramBlueSystem;->a:Lcom/android/systemui/infinity/tangram/Tangram;

    iget v6, v6, Lcom/android/systemui/infinity/tangram/Tangram;->rightImageAlpha:F

    cmpg-float v6, v6, v11

    if-gez v6, :cond_8

    iget-object v6, p0, Lcom/android/systemui/infinity/theme/blue/TangramBlueSystem;->a:Lcom/android/systemui/infinity/tangram/Tangram;

    iput v11, v6, Lcom/android/systemui/infinity/tangram/Tangram;->rightImageAlpha:F

    :cond_8
    iget-object v6, p0, Lcom/android/systemui/infinity/theme/blue/TangramBlueSystem;->a:Lcom/android/systemui/infinity/tangram/Tangram;

    iget v6, v6, Lcom/android/systemui/infinity/tangram/Tangram;->rightImageAlpha:F

    cmpl-float v6, v6, v10

    if-lez v6, :cond_9

    iget-object v6, p0, Lcom/android/systemui/infinity/theme/blue/TangramBlueSystem;->a:Lcom/android/systemui/infinity/tangram/Tangram;

    iput v10, v6, Lcom/android/systemui/infinity/tangram/Tangram;->rightImageAlpha:F

    :cond_9
    iget-object v6, p0, Lcom/android/systemui/infinity/theme/blue/TangramBlueSystem;->a:Lcom/android/systemui/infinity/tangram/Tangram;

    iget v6, v6, Lcom/android/systemui/infinity/tangram/Tangram;->leftImageAlpha:F

    cmpg-float v6, v6, v11

    if-gez v6, :cond_a

    iget-object v6, p0, Lcom/android/systemui/infinity/theme/blue/TangramBlueSystem;->a:Lcom/android/systemui/infinity/tangram/Tangram;

    iput v11, v6, Lcom/android/systemui/infinity/tangram/Tangram;->leftImageAlpha:F

    :cond_a
    iget-object v6, p0, Lcom/android/systemui/infinity/theme/blue/TangramBlueSystem;->a:Lcom/android/systemui/infinity/tangram/Tangram;

    iget v6, v6, Lcom/android/systemui/infinity/tangram/Tangram;->leftImageAlpha:F

    const v7, 0x3f59999a    # 0.85f

    cmpl-float v6, v6, v7

    if-lez v6, :cond_b

    iget-object v6, p0, Lcom/android/systemui/infinity/theme/blue/TangramBlueSystem;->a:Lcom/android/systemui/infinity/tangram/Tangram;

    const v7, 0x3f59999a    # 0.85f

    iput v7, v6, Lcom/android/systemui/infinity/tangram/Tangram;->leftImageAlpha:F

    :cond_b
    iget-object v6, p0, Lcom/android/systemui/infinity/theme/blue/TangramBlueSystem;->e:Lcom/android/systemui/infinity/tangram/Tangram;

    iget v6, v6, Lcom/android/systemui/infinity/tangram/Tangram;->rightImageAlpha:F

    cmpg-float v6, v6, v11

    if-gez v6, :cond_c

    iget-object v6, p0, Lcom/android/systemui/infinity/theme/blue/TangramBlueSystem;->e:Lcom/android/systemui/infinity/tangram/Tangram;

    iput v11, v6, Lcom/android/systemui/infinity/tangram/Tangram;->rightImageAlpha:F

    :cond_c
    iget-object v6, p0, Lcom/android/systemui/infinity/theme/blue/TangramBlueSystem;->e:Lcom/android/systemui/infinity/tangram/Tangram;

    iget v6, v6, Lcom/android/systemui/infinity/tangram/Tangram;->rightImageAlpha:F

    cmpl-float v6, v6, v10

    if-lez v6, :cond_d

    iget-object v6, p0, Lcom/android/systemui/infinity/theme/blue/TangramBlueSystem;->e:Lcom/android/systemui/infinity/tangram/Tangram;

    iput v10, v6, Lcom/android/systemui/infinity/tangram/Tangram;->rightImageAlpha:F

    :cond_d
    iget-object v6, p0, Lcom/android/systemui/infinity/theme/blue/TangramBlueSystem;->e:Lcom/android/systemui/infinity/tangram/Tangram;

    iget v6, v6, Lcom/android/systemui/infinity/tangram/Tangram;->leftImageAlpha:F

    cmpg-float v6, v6, v11

    if-gez v6, :cond_e

    iget-object v6, p0, Lcom/android/systemui/infinity/theme/blue/TangramBlueSystem;->e:Lcom/android/systemui/infinity/tangram/Tangram;

    iput v11, v6, Lcom/android/systemui/infinity/tangram/Tangram;->leftImageAlpha:F

    :cond_e
    iget-object v6, p0, Lcom/android/systemui/infinity/theme/blue/TangramBlueSystem;->e:Lcom/android/systemui/infinity/tangram/Tangram;

    iget v6, v6, Lcom/android/systemui/infinity/tangram/Tangram;->leftImageAlpha:F

    const v7, 0x3f4ccccd    # 0.8f

    cmpl-float v6, v6, v7

    if-lez v6, :cond_f

    iget-object v6, p0, Lcom/android/systemui/infinity/theme/blue/TangramBlueSystem;->e:Lcom/android/systemui/infinity/tangram/Tangram;

    const v7, 0x3f4ccccd    # 0.8f

    iput v7, v6, Lcom/android/systemui/infinity/tangram/Tangram;->leftImageAlpha:F

    :cond_f
    iget-object v6, p0, Lcom/android/systemui/infinity/theme/blue/TangramBlueSystem;->e:Lcom/android/systemui/infinity/tangram/Tangram;

    iget-object v7, p0, Lcom/android/systemui/infinity/theme/blue/TangramBlueSystem;->e:Lcom/android/systemui/infinity/tangram/Tangram;

    iget v7, v7, Lcom/android/systemui/infinity/tangram/Tangram;->gyroValue:F

    mul-float/2addr v7, v12

    add-float/2addr v7, v10

    iput v7, v6, Lcom/android/systemui/infinity/tangram/Tangram;->centerImageAlpha:F

    iget-object v6, p0, Lcom/android/systemui/infinity/theme/blue/TangramBlueSystem;->e:Lcom/android/systemui/infinity/tangram/Tangram;

    iget v6, v6, Lcom/android/systemui/infinity/tangram/Tangram;->centerImageAlpha:F

    cmpg-float v6, v6, v11

    if-gez v6, :cond_10

    iget-object v6, p0, Lcom/android/systemui/infinity/theme/blue/TangramBlueSystem;->e:Lcom/android/systemui/infinity/tangram/Tangram;

    iput v11, v6, Lcom/android/systemui/infinity/tangram/Tangram;->centerImageAlpha:F

    :cond_10
    iget-object v6, p0, Lcom/android/systemui/infinity/theme/blue/TangramBlueSystem;->e:Lcom/android/systemui/infinity/tangram/Tangram;

    iget v6, v6, Lcom/android/systemui/infinity/tangram/Tangram;->centerImageAlpha:F

    cmpl-float v6, v6, v10

    if-lez v6, :cond_11

    iget-object v6, p0, Lcom/android/systemui/infinity/theme/blue/TangramBlueSystem;->e:Lcom/android/systemui/infinity/tangram/Tangram;

    iput v10, v6, Lcom/android/systemui/infinity/tangram/Tangram;->centerImageAlpha:F

    :cond_11
    iget-object v6, p0, Lcom/android/systemui/infinity/theme/blue/TangramBlueSystem;->e:Lcom/android/systemui/infinity/tangram/Tangram;

    iput v10, v6, Lcom/android/systemui/infinity/tangram/Tangram;->centerImageAlpha:F

    iget-object v6, p0, Lcom/android/systemui/infinity/theme/blue/TangramBlueSystem;->c:Lcom/android/systemui/infinity/tangram/Tangram;

    iget-object v7, p0, Lcom/android/systemui/infinity/theme/blue/TangramBlueSystem;->a:Lcom/android/systemui/infinity/tangram/Tangram;

    iget v7, v7, Lcom/android/systemui/infinity/tangram/Tangram;->gyroValue:F

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    const v8, 0x3eb33333    # 0.35f

    mul-float/2addr v7, v8

    sub-float v7, v10, v7

    iput v7, v6, Lcom/android/systemui/infinity/tangram/Tangram;->gyroAlpha:F

    iget-object v6, p0, Lcom/android/systemui/infinity/theme/blue/TangramBlueSystem;->c:Lcom/android/systemui/infinity/tangram/Tangram;

    iget v6, v6, Lcom/android/systemui/infinity/tangram/Tangram;->gyroAlpha:F

    const v7, 0x3f266666    # 0.65f

    cmpg-float v6, v6, v7

    if-gez v6, :cond_12

    iget-object v6, p0, Lcom/android/systemui/infinity/theme/blue/TangramBlueSystem;->c:Lcom/android/systemui/infinity/tangram/Tangram;

    const v7, 0x3f266666    # 0.65f

    iput v7, v6, Lcom/android/systemui/infinity/tangram/Tangram;->gyroAlpha:F

    :cond_12
    iget-object v6, p0, Lcom/android/systemui/infinity/theme/blue/TangramBlueSystem;->c:Lcom/android/systemui/infinity/tangram/Tangram;

    iget v6, v6, Lcom/android/systemui/infinity/tangram/Tangram;->gyroAlpha:F

    cmpl-float v6, v6, v10

    if-lez v6, :cond_13

    iget-object v6, p0, Lcom/android/systemui/infinity/theme/blue/TangramBlueSystem;->c:Lcom/android/systemui/infinity/tangram/Tangram;

    iput v10, v6, Lcom/android/systemui/infinity/tangram/Tangram;->gyroAlpha:F

    :cond_13
    iget-object v6, p0, Lcom/android/systemui/infinity/theme/blue/TangramBlueSystem;->h:Lcom/android/systemui/infinity/tangram/Tangram;

    iget-object v7, p0, Lcom/android/systemui/infinity/theme/blue/TangramBlueSystem;->a:Lcom/android/systemui/infinity/tangram/Tangram;

    iget v7, v7, Lcom/android/systemui/infinity/tangram/Tangram;->gyroValue:F

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    const v8, 0x3f333333    # 0.7f

    mul-float/2addr v7, v8

    sub-float v7, v10, v7

    iput v7, v6, Lcom/android/systemui/infinity/tangram/Tangram;->gyroAlpha:F

    iget-object v6, p0, Lcom/android/systemui/infinity/theme/blue/TangramBlueSystem;->h:Lcom/android/systemui/infinity/tangram/Tangram;

    iget v6, v6, Lcom/android/systemui/infinity/tangram/Tangram;->gyroAlpha:F

    cmpg-float v6, v6, v13

    if-gez v6, :cond_14

    iget-object v6, p0, Lcom/android/systemui/infinity/theme/blue/TangramBlueSystem;->h:Lcom/android/systemui/infinity/tangram/Tangram;

    iput v13, v6, Lcom/android/systemui/infinity/tangram/Tangram;->gyroAlpha:F

    :cond_14
    iget-object v6, p0, Lcom/android/systemui/infinity/theme/blue/TangramBlueSystem;->h:Lcom/android/systemui/infinity/tangram/Tangram;

    iget v6, v6, Lcom/android/systemui/infinity/tangram/Tangram;->gyroAlpha:F

    cmpl-float v6, v6, v10

    if-lez v6, :cond_15

    iget-object v6, p0, Lcom/android/systemui/infinity/theme/blue/TangramBlueSystem;->h:Lcom/android/systemui/infinity/tangram/Tangram;

    iput v10, v6, Lcom/android/systemui/infinity/tangram/Tangram;->gyroAlpha:F

    :cond_15
    iget-object v6, p0, Lcom/android/systemui/infinity/theme/blue/TangramBlueSystem;->f:Lcom/android/systemui/infinity/tangram/Tangram;

    iget-object v7, p0, Lcom/android/systemui/infinity/theme/blue/TangramBlueSystem;->a:Lcom/android/systemui/infinity/tangram/Tangram;

    iget v7, v7, Lcom/android/systemui/infinity/tangram/Tangram;->gyroValue:F

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    mul-float/2addr v7, v13

    sub-float v7, v10, v7

    iput v7, v6, Lcom/android/systemui/infinity/tangram/Tangram;->gyroAlpha:F

    iget-object v6, p0, Lcom/android/systemui/infinity/theme/blue/TangramBlueSystem;->f:Lcom/android/systemui/infinity/tangram/Tangram;

    iget v6, v6, Lcom/android/systemui/infinity/tangram/Tangram;->gyroAlpha:F

    const v7, 0x3f2e147b    # 0.68f

    cmpg-float v6, v6, v7

    if-gez v6, :cond_16

    iget-object v6, p0, Lcom/android/systemui/infinity/theme/blue/TangramBlueSystem;->f:Lcom/android/systemui/infinity/tangram/Tangram;

    const v7, 0x3f2e147b    # 0.68f

    iput v7, v6, Lcom/android/systemui/infinity/tangram/Tangram;->gyroAlpha:F

    :cond_16
    iget-object v6, p0, Lcom/android/systemui/infinity/theme/blue/TangramBlueSystem;->f:Lcom/android/systemui/infinity/tangram/Tangram;

    iget v6, v6, Lcom/android/systemui/infinity/tangram/Tangram;->gyroAlpha:F

    cmpl-float v6, v6, v10

    if-lez v6, :cond_17

    iget-object v6, p0, Lcom/android/systemui/infinity/theme/blue/TangramBlueSystem;->f:Lcom/android/systemui/infinity/tangram/Tangram;

    iput v10, v6, Lcom/android/systemui/infinity/tangram/Tangram;->gyroAlpha:F

    :cond_17
    iget-object v6, p0, Lcom/android/systemui/infinity/theme/blue/TangramBlueSystem;->d:Lcom/android/systemui/infinity/tangram/Tangram;

    iget-object v7, p0, Lcom/android/systemui/infinity/theme/blue/TangramBlueSystem;->c:Lcom/android/systemui/infinity/tangram/Tangram;

    iget v7, v7, Lcom/android/systemui/infinity/tangram/Tangram;->gyroAlpha:F

    iput v7, v6, Lcom/android/systemui/infinity/tangram/Tangram;->gyroAlpha:F

    iget-object v6, p0, Lcom/android/systemui/infinity/theme/blue/TangramBlueSystem;->g:Lcom/android/systemui/infinity/tangram/Tangram;

    iget-object v7, p0, Lcom/android/systemui/infinity/theme/blue/TangramBlueSystem;->c:Lcom/android/systemui/infinity/tangram/Tangram;

    iget v7, v7, Lcom/android/systemui/infinity/tangram/Tangram;->gyroAlpha:F

    iput v7, v6, Lcom/android/systemui/infinity/tangram/Tangram;->gyroAlpha:F

    iget-object v6, p0, Lcom/android/systemui/infinity/theme/blue/TangramBlueSystem;->il:Lcom/android/systemui/infinity/tangram/Tangram;

    iget-object v7, p0, Lcom/android/systemui/infinity/theme/blue/TangramBlueSystem;->c:Lcom/android/systemui/infinity/tangram/Tangram;

    iget v7, v7, Lcom/android/systemui/infinity/tangram/Tangram;->gyroAlpha:F

    iput v7, v6, Lcom/android/systemui/infinity/tangram/Tangram;->gyroAlpha:F

    return-void

    :cond_18
    iget-object v6, p0, Lcom/android/systemui/infinity/theme/blue/TangramBlueSystem;->a:Lcom/android/systemui/infinity/tangram/Tangram;

    iget-object v7, p0, Lcom/android/systemui/infinity/theme/blue/TangramBlueSystem;->a:Lcom/android/systemui/infinity/tangram/Tangram;

    iget v7, v7, Lcom/android/systemui/infinity/tangram/Tangram;->gyroTx:F

    const v8, 0x3fc66666    # 1.55f

    mul-float/2addr v7, v8

    iput v7, v6, Lcom/android/systemui/infinity/tangram/Tangram;->gyroTx:F

    iget-object v6, p0, Lcom/android/systemui/infinity/theme/blue/TangramBlueSystem;->a:Lcom/android/systemui/infinity/tangram/Tangram;

    iget-object v7, p0, Lcom/android/systemui/infinity/theme/blue/TangramBlueSystem;->a:Lcom/android/systemui/infinity/tangram/Tangram;

    iget v7, v7, Lcom/android/systemui/infinity/tangram/Tangram;->gyroTx:F

    iput v7, v6, Lcom/android/systemui/infinity/tangram/Tangram;->gyroTy:F

    goto/16 :goto_1

    :cond_19
    iget-object v6, p0, Lcom/android/systemui/infinity/theme/blue/TangramBlueSystem;->b:Lcom/android/systemui/infinity/tangram/Tangram;

    iget-object v7, p0, Lcom/android/systemui/infinity/theme/blue/TangramBlueSystem;->b:Lcom/android/systemui/infinity/tangram/Tangram;

    iget v7, v7, Lcom/android/systemui/infinity/tangram/Tangram;->gyroTx:F

    const v8, 0x3fc66666    # 1.55f

    mul-float/2addr v7, v8

    iput v7, v6, Lcom/android/systemui/infinity/tangram/Tangram;->gyroTx:F

    iget-object v6, p0, Lcom/android/systemui/infinity/theme/blue/TangramBlueSystem;->b:Lcom/android/systemui/infinity/tangram/Tangram;

    iget-object v7, p0, Lcom/android/systemui/infinity/theme/blue/TangramBlueSystem;->b:Lcom/android/systemui/infinity/tangram/Tangram;

    iget v7, v7, Lcom/android/systemui/infinity/tangram/Tangram;->gyroTx:F

    iput v7, v6, Lcom/android/systemui/infinity/tangram/Tangram;->gyroTy:F

    goto/16 :goto_2

    :cond_1a
    iget-object v6, p0, Lcom/android/systemui/infinity/theme/blue/TangramBlueSystem;->e:Lcom/android/systemui/infinity/tangram/Tangram;

    iget-object v7, p0, Lcom/android/systemui/infinity/theme/blue/TangramBlueSystem;->e:Lcom/android/systemui/infinity/tangram/Tangram;

    iget v7, v7, Lcom/android/systemui/infinity/tangram/Tangram;->gyroTx:F

    const v8, 0x3fc66666    # 1.55f

    mul-float/2addr v7, v8

    iput v7, v6, Lcom/android/systemui/infinity/tangram/Tangram;->gyroTx:F

    iget-object v6, p0, Lcom/android/systemui/infinity/theme/blue/TangramBlueSystem;->e:Lcom/android/systemui/infinity/tangram/Tangram;

    iget-object v7, p0, Lcom/android/systemui/infinity/theme/blue/TangramBlueSystem;->e:Lcom/android/systemui/infinity/tangram/Tangram;

    iget v7, v7, Lcom/android/systemui/infinity/tangram/Tangram;->gyroTx:F

    iput v7, v6, Lcom/android/systemui/infinity/tangram/Tangram;->gyroTy:F

    goto/16 :goto_3
.end method
