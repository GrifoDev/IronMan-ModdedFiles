.class public Lcom/android/systemui/infinity/theme/black/TangramBlackSystem;
.super Lcom/android/systemui/infinity/tangram/TangramSystem;
.source "TangramBlackSystem.java"


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

.field j:Lcom/android/systemui/infinity/tangram/Tangram;

.field k:Lcom/android/systemui/infinity/tangram/Tangram;

.field protected showEasing:F

.field protected tiltEasing:F

.field protected tiltSubEasing:F

.field protected tiltTranslation:F


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x3

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/16 v4, 0xb

    const/4 v3, 0x2

    new-array v0, v4, [Ljava/lang/String;

    const-string/jumbo v1, "a"

    aput-object v1, v0, v5

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

    const-string/jumbo v1, "j"

    const/16 v2, 0x9

    aput-object v1, v0, v2

    const-string/jumbo v1, "k"

    const/16 v2, 0xa

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/systemui/infinity/theme/black/TangramBlackSystem;->layerName:[Ljava/lang/String;

    new-array v0, v4, [Ljava/lang/String;

    const-string/jumbo v1, "bk_layer_a.png"

    aput-object v1, v0, v5

    const-string/jumbo v1, "bk_layer_b.png"

    aput-object v1, v0, v6

    const-string/jumbo v1, "bk_layer_c.png"

    aput-object v1, v0, v3

    const-string/jumbo v1, "bk_layer_d.png"

    aput-object v1, v0, v7

    const-string/jumbo v1, "bk_layer_e.png"

    const/4 v2, 0x4

    aput-object v1, v0, v2

    const-string/jumbo v1, "bk_layer_f.png"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    const-string/jumbo v1, "bk_layer_g.png"

    const/4 v2, 0x6

    aput-object v1, v0, v2

    const-string/jumbo v1, "bk_layer_h.png"

    const/4 v2, 0x7

    aput-object v1, v0, v2

    const-string/jumbo v1, "bk_layer_i.png"

    const/16 v2, 0x8

    aput-object v1, v0, v2

    const-string/jumbo v1, "bk_layer_j.png"

    const/16 v2, 0x9

    aput-object v1, v0, v2

    const-string/jumbo v1, "bk_layer_k.png"

    const/16 v2, 0xa

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/systemui/infinity/theme/black/TangramBlackSystem;->mapLayerFileName:[Ljava/lang/String;

    new-array v0, v4, [Ljava/lang/String;

    const-string/jumbo v1, "bk_layer_a_mask.png"

    aput-object v1, v0, v5

    const-string/jumbo v1, "bk_layer_b_mask.png"

    aput-object v1, v0, v6

    const-string/jumbo v1, "bk_layer_c_mask.png"

    aput-object v1, v0, v3

    const-string/jumbo v1, "bk_layer_d_mask.png"

    aput-object v1, v0, v7

    const-string/jumbo v1, "bk_layer_e_mask.png"

    const/4 v2, 0x4

    aput-object v1, v0, v2

    const-string/jumbo v1, "bk_layer_f_mask.png"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    const-string/jumbo v1, "bk_layer_g_mask.png"

    const/4 v2, 0x6

    aput-object v1, v0, v2

    const-string/jumbo v1, "bk_layer_h_mask.png"

    const/4 v2, 0x7

    aput-object v1, v0, v2

    const-string/jumbo v1, "bk_layer_i_mask.png"

    const/16 v2, 0x8

    aput-object v1, v0, v2

    const-string/jumbo v1, "bk_layer_j_mask.png"

    const/16 v2, 0x9

    aput-object v1, v0, v2

    const-string/jumbo v1, "bk_layer_k_mask.png"

    const/16 v2, 0xa

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/systemui/infinity/theme/black/TangramBlackSystem;->mapMaskFileName:[Ljava/lang/String;

    new-array v0, v4, [Ljava/lang/String;

    const-string/jumbo v1, "bk_layer_a_color_l.png"

    aput-object v1, v0, v5

    const-string/jumbo v1, ""

    aput-object v1, v0, v6

    const-string/jumbo v1, ""

    aput-object v1, v0, v3

    const-string/jumbo v1, ""

    aput-object v1, v0, v7

    const-string/jumbo v1, ""

    const/4 v2, 0x4

    aput-object v1, v0, v2

    const-string/jumbo v1, ""

    const/4 v2, 0x5

    aput-object v1, v0, v2

    const-string/jumbo v1, ""

    const/4 v2, 0x6

    aput-object v1, v0, v2

    const-string/jumbo v1, "bk_layer_h_color_l.png"

    const/4 v2, 0x7

    aput-object v1, v0, v2

    const-string/jumbo v1, ""

    const/16 v2, 0x8

    aput-object v1, v0, v2

    const-string/jumbo v1, "bk_layer_a_color_r.png"

    const/16 v2, 0x9

    aput-object v1, v0, v2

    const-string/jumbo v1, ""

    const/16 v2, 0xa

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/systemui/infinity/theme/black/TangramBlackSystem;->mapLeftFileName:[Ljava/lang/String;

    new-array v0, v4, [Ljava/lang/String;

    const-string/jumbo v1, "bk_layer_a_color_r.png"

    aput-object v1, v0, v5

    const-string/jumbo v1, ""

    aput-object v1, v0, v6

    const-string/jumbo v1, ""

    aput-object v1, v0, v3

    const-string/jumbo v1, ""

    aput-object v1, v0, v7

    const-string/jumbo v1, ""

    const/4 v2, 0x4

    aput-object v1, v0, v2

    const-string/jumbo v1, ""

    const/4 v2, 0x5

    aput-object v1, v0, v2

    const-string/jumbo v1, ""

    const/4 v2, 0x6

    aput-object v1, v0, v2

    const-string/jumbo v1, "bk_layer_h_color_r.png"

    const/4 v2, 0x7

    aput-object v1, v0, v2

    const-string/jumbo v1, ""

    const/16 v2, 0x8

    aput-object v1, v0, v2

    const-string/jumbo v1, "bk_layer_j_color_r.png"

    const/16 v2, 0x9

    aput-object v1, v0, v2

    const-string/jumbo v1, ""

    const/16 v2, 0xa

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/systemui/infinity/theme/black/TangramBlackSystem;->mapRightFileName:[Ljava/lang/String;

    new-array v0, v4, [Z

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/systemui/infinity/theme/black/TangramBlackSystem;->bottomLayerImage:[Z

    new-array v0, v4, [F

    fill-array-data v0, :array_1

    sput-object v0, Lcom/android/systemui/infinity/theme/black/TangramBlackSystem;->layerFixAlpha:[F

    new-array v0, v4, [[F

    new-array v1, v3, [F

    fill-array-data v1, :array_2

    aput-object v1, v0, v5

    new-array v1, v3, [F

    fill-array-data v1, :array_3

    aput-object v1, v0, v6

    new-array v1, v3, [F

    fill-array-data v1, :array_4

    aput-object v1, v0, v3

    new-array v1, v3, [F

    fill-array-data v1, :array_5

    aput-object v1, v0, v7

    new-array v1, v3, [F

    fill-array-data v1, :array_6

    const/4 v2, 0x4

    aput-object v1, v0, v2

    new-array v1, v3, [F

    fill-array-data v1, :array_7

    const/4 v2, 0x5

    aput-object v1, v0, v2

    new-array v1, v3, [F

    fill-array-data v1, :array_8

    const/4 v2, 0x6

    aput-object v1, v0, v2

    new-array v1, v3, [F

    fill-array-data v1, :array_9

    const/4 v2, 0x7

    aput-object v1, v0, v2

    new-array v1, v3, [F

    fill-array-data v1, :array_a

    const/16 v2, 0x8

    aput-object v1, v0, v2

    new-array v1, v3, [F

    fill-array-data v1, :array_b

    const/16 v2, 0x9

    aput-object v1, v0, v2

    new-array v1, v3, [F

    fill-array-data v1, :array_c

    const/16 v2, 0xa

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/systemui/infinity/theme/black/TangramBlackSystem;->layerSize:[[F

    new-array v0, v4, [[F

    new-array v1, v3, [F

    fill-array-data v1, :array_d

    aput-object v1, v0, v5

    new-array v1, v3, [F

    fill-array-data v1, :array_e

    aput-object v1, v0, v6

    new-array v1, v3, [F

    fill-array-data v1, :array_f

    aput-object v1, v0, v3

    new-array v1, v3, [F

    fill-array-data v1, :array_10

    aput-object v1, v0, v7

    new-array v1, v3, [F

    fill-array-data v1, :array_11

    const/4 v2, 0x4

    aput-object v1, v0, v2

    new-array v1, v3, [F

    fill-array-data v1, :array_12

    const/4 v2, 0x5

    aput-object v1, v0, v2

    new-array v1, v3, [F

    fill-array-data v1, :array_13

    const/4 v2, 0x6

    aput-object v1, v0, v2

    new-array v1, v3, [F

    fill-array-data v1, :array_14

    const/4 v2, 0x7

    aput-object v1, v0, v2

    new-array v1, v3, [F

    fill-array-data v1, :array_15

    const/16 v2, 0x8

    aput-object v1, v0, v2

    new-array v1, v3, [F

    fill-array-data v1, :array_16

    const/16 v2, 0x9

    aput-object v1, v0, v2

    new-array v1, v3, [F

    fill-array-data v1, :array_17

    const/16 v2, 0xa

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/systemui/infinity/theme/black/TangramBlackSystem;->layerPosition:[[F

    new-array v0, v4, [[F

    new-array v1, v3, [F

    fill-array-data v1, :array_18

    aput-object v1, v0, v5

    new-array v1, v3, [F

    fill-array-data v1, :array_19

    aput-object v1, v0, v6

    new-array v1, v3, [F

    fill-array-data v1, :array_1a

    aput-object v1, v0, v3

    new-array v1, v3, [F

    fill-array-data v1, :array_1b

    aput-object v1, v0, v7

    new-array v1, v3, [F

    fill-array-data v1, :array_1c

    const/4 v2, 0x4

    aput-object v1, v0, v2

    new-array v1, v3, [F

    fill-array-data v1, :array_1d

    const/4 v2, 0x5

    aput-object v1, v0, v2

    new-array v1, v3, [F

    fill-array-data v1, :array_1e

    const/4 v2, 0x6

    aput-object v1, v0, v2

    new-array v1, v3, [F

    fill-array-data v1, :array_1f

    const/4 v2, 0x7

    aput-object v1, v0, v2

    new-array v1, v3, [F

    fill-array-data v1, :array_20

    const/16 v2, 0x8

    aput-object v1, v0, v2

    new-array v1, v3, [F

    fill-array-data v1, :array_21

    const/16 v2, 0x9

    aput-object v1, v0, v2

    new-array v1, v3, [F

    fill-array-data v1, :array_22

    const/16 v2, 0xa

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/systemui/infinity/theme/black/TangramBlackSystem;->maskMoveDistance:[[F

    new-array v0, v4, [[F

    new-array v1, v3, [F

    fill-array-data v1, :array_23

    aput-object v1, v0, v5

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

    new-array v1, v3, [F

    fill-array-data v1, :array_2c

    const/16 v2, 0x9

    aput-object v1, v0, v2

    new-array v1, v3, [F

    fill-array-data v1, :array_2d

    const/16 v2, 0xa

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/systemui/infinity/theme/black/TangramBlackSystem;->maskSize:[[F

    new-array v0, v4, [[F

    new-array v1, v3, [F

    fill-array-data v1, :array_2e

    aput-object v1, v0, v5

    new-array v1, v3, [F

    fill-array-data v1, :array_2f

    aput-object v1, v0, v6

    new-array v1, v3, [F

    fill-array-data v1, :array_30

    aput-object v1, v0, v3

    new-array v1, v3, [F

    fill-array-data v1, :array_31

    aput-object v1, v0, v7

    new-array v1, v3, [F

    fill-array-data v1, :array_32

    const/4 v2, 0x4

    aput-object v1, v0, v2

    new-array v1, v3, [F

    fill-array-data v1, :array_33

    const/4 v2, 0x5

    aput-object v1, v0, v2

    new-array v1, v3, [F

    fill-array-data v1, :array_34

    const/4 v2, 0x6

    aput-object v1, v0, v2

    new-array v1, v3, [F

    fill-array-data v1, :array_35

    const/4 v2, 0x7

    aput-object v1, v0, v2

    new-array v1, v3, [F

    fill-array-data v1, :array_36

    const/16 v2, 0x8

    aput-object v1, v0, v2

    new-array v1, v3, [F

    fill-array-data v1, :array_37

    const/16 v2, 0x9

    aput-object v1, v0, v2

    new-array v1, v3, [F

    fill-array-data v1, :array_38

    const/16 v2, 0xa

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/systemui/infinity/theme/black/TangramBlackSystem;->maskPosition:[[F

    new-array v0, v4, [[F

    new-array v1, v3, [F

    fill-array-data v1, :array_39

    aput-object v1, v0, v5

    new-array v1, v3, [F

    fill-array-data v1, :array_3a

    aput-object v1, v0, v6

    new-array v1, v3, [F

    fill-array-data v1, :array_3b

    aput-object v1, v0, v3

    new-array v1, v3, [F

    fill-array-data v1, :array_3c

    aput-object v1, v0, v7

    new-array v1, v3, [F

    fill-array-data v1, :array_3d

    const/4 v2, 0x4

    aput-object v1, v0, v2

    new-array v1, v3, [F

    fill-array-data v1, :array_3e

    const/4 v2, 0x5

    aput-object v1, v0, v2

    new-array v1, v3, [F

    fill-array-data v1, :array_3f

    const/4 v2, 0x6

    aput-object v1, v0, v2

    new-array v1, v3, [F

    fill-array-data v1, :array_40

    const/4 v2, 0x7

    aput-object v1, v0, v2

    new-array v1, v3, [F

    fill-array-data v1, :array_41

    const/16 v2, 0x8

    aput-object v1, v0, v2

    new-array v1, v3, [F

    fill-array-data v1, :array_42

    const/16 v2, 0x9

    aput-object v1, v0, v2

    new-array v1, v3, [F

    fill-array-data v1, :array_43

    const/16 v2, 0xa

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/systemui/infinity/theme/black/TangramBlackSystem;->initTranslation:[[F

    new-array v0, v4, [[F

    new-array v1, v3, [F

    fill-array-data v1, :array_44

    aput-object v1, v0, v5

    new-array v1, v3, [F

    fill-array-data v1, :array_45

    aput-object v1, v0, v6

    new-array v1, v3, [F

    fill-array-data v1, :array_46

    aput-object v1, v0, v3

    new-array v1, v3, [F

    fill-array-data v1, :array_47

    aput-object v1, v0, v7

    new-array v1, v3, [F

    fill-array-data v1, :array_48

    const/4 v2, 0x4

    aput-object v1, v0, v2

    new-array v1, v3, [F

    fill-array-data v1, :array_49

    const/4 v2, 0x5

    aput-object v1, v0, v2

    new-array v1, v3, [F

    fill-array-data v1, :array_4a

    const/4 v2, 0x6

    aput-object v1, v0, v2

    new-array v1, v3, [F

    fill-array-data v1, :array_4b

    const/4 v2, 0x7

    aput-object v1, v0, v2

    new-array v1, v3, [F

    fill-array-data v1, :array_4c

    const/16 v2, 0x8

    aput-object v1, v0, v2

    new-array v1, v3, [F

    fill-array-data v1, :array_4d

    const/16 v2, 0x9

    aput-object v1, v0, v2

    new-array v1, v3, [F

    fill-array-data v1, :array_4e

    const/16 v2, 0xa

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/systemui/infinity/theme/black/TangramBlackSystem;->endTranslation:[[F

    return-void

    nop

    :array_0
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f4ccccd    # 0.8f
        0x3f800000    # 1.0f
        0x3eae147b    # 0.34f
        0x3f800000    # 1.0f
    .end array-data

    :array_2
    .array-data 4
        0x449ce000    # 1255.0f
        0x449ce000    # 1255.0f
    .end array-data

    :array_3
    .array-data 4
        0x44a02000    # 1281.0f
        0x44c40000    # 1568.0f
    .end array-data

    :array_4
    .array-data 4
        0x448de000    # 1135.0f
        0x448e0000    # 1136.0f
    .end array-data

    :array_5
    .array-data 4
        0x44de0000    # 1776.0f
        0x44c22000    # 1553.0f
    .end array-data

    :array_6
    .array-data 4
        0x44e0e000    # 1799.0f
        0x4502a000    # 2090.0f
    .end array-data

    :array_7
    .array-data 4
        0x44bca000    # 1509.0f
        0x44bca000    # 1509.0f
    .end array-data

    :array_8
    .array-data 4
        0x44e02000    # 1793.0f
        0x4509c000    # 2204.0f
    .end array-data

    :array_9
    .array-data 4
        0x44af2000    # 1401.0f
        0x44af2000    # 1401.0f
    .end array-data

    :array_a
    .array-data 4
        0x45008000    # 2056.0f
        0x451ea000    # 2538.0f
    .end array-data

    :array_b
    .array-data 4
        0x44bbc000    # 1502.0f
        0x44bbc000    # 1502.0f
    .end array-data

    :array_c
    .array-data 4
        0x45006000    # 2054.0f
        0x45213000    # 2579.0f
    .end array-data

    :array_d
    .array-data 4
        0x44bb3000    # 1497.5f
        0x44930000    # 1176.0f
    .end array-data

    :array_e
    .array-data 4
        0x448c0000    # 1120.0f
        0x44440000    # 784.0f
    .end array-data

    :array_f
    .array-data 4
        0x44b91000    # 1480.5f
        0x45099000    # 2201.0f
    .end array-data

    :array_10
    .array-data 4
        0x44862000    # 1073.0f
        0x44f9f000    # 1999.5f
    .end array-data

    :array_11
    .array-data 4
        0x450a2800    # 2210.5f
        0x4525d000    # 2653.0f
    .end array-data

    :array_12
    .array-data 4
        0x43e24000    # 452.5f
        0x45292800    # 2706.5f
    .end array-data

    :array_13
    .array-data 4
        0x45148800    # 2376.5f
        0x44e36000    # 1819.0f
    .end array-data

    :array_14
    .array-data 4
        0x44b90000    # 1480.0f
        0x45090000    # 2192.0f
    .end array-data

    :array_15
    .array-data 4
        0x45136000    # 2358.0f
        0x44b9e000    # 1487.0f
    .end array-data

    :array_16
    .array-data 4
        0x44ee0000    # 1904.0f
        0x4400e000    # 515.5f
    .end array-data

    :array_17
    .array-data 4
        0x43be0000    # 380.0f
        0x4458a000    # 866.5f
    .end array-data

    :array_18
    .array-data 4
        0x3ca3d70a    # 0.02f
        0x3ca3d70a    # 0.02f
    .end array-data

    :array_19
    .array-data 4
        0x0
        0x0
    .end array-data

    :array_1a
    .array-data 4
        0x3d23d70a    # 0.04f
        0x3d23d70a    # 0.04f
    .end array-data

    :array_1b
    .array-data 4
        0x3d23d70a    # 0.04f
        0x3d23d70a    # 0.04f
    .end array-data

    :array_1c
    .array-data 4
        0x0
        0x0
    .end array-data

    :array_1d
    .array-data 4
        0x3c23d70a    # 0.01f
        0x3c449ba6    # 0.012f
    .end array-data

    :array_1e
    .array-data 4
        0x3c23d70a    # 0.01f
        0x3c449ba6    # 0.012f
    .end array-data

    :array_1f
    .array-data 4
        0x3d37e910    # 0.0449f
        0x3d37e910    # 0.0449f
    .end array-data

    :array_20
    .array-data 4
        0x0
        0x0
    .end array-data

    :array_21
    .array-data 4
        0x3c23d70a    # 0.01f
        0x3c343958    # 0.011f
    .end array-data

    :array_22
    .array-data 4
        0x0
        0x0
    .end array-data

    :array_23
    .array-data 4
        0x45390000    # 2960.0f
        0x45390000    # 2960.0f
    .end array-data

    :array_24
    .array-data 4
        0x45390000    # 2960.0f
        0x45390000    # 2960.0f
    .end array-data

    :array_25
    .array-data 4
        0x45390000    # 2960.0f
        0x45390000    # 2960.0f
    .end array-data

    :array_26
    .array-data 4
        0x45390000    # 2960.0f
        0x45390000    # 2960.0f
    .end array-data

    :array_27
    .array-data 4
        0x45390000    # 2960.0f
        0x45390000    # 2960.0f
    .end array-data

    :array_28
    .array-data 4
        0x45390000    # 2960.0f
        0x45390000    # 2960.0f
    .end array-data

    :array_29
    .array-data 4
        0x45390000    # 2960.0f
        0x45390000    # 2960.0f
    .end array-data

    :array_2a
    .array-data 4
        0x45390000    # 2960.0f
        0x45390000    # 2960.0f
    .end array-data

    :array_2b
    .array-data 4
        0x45390000    # 2960.0f
        0x45390000    # 2960.0f
    .end array-data

    :array_2c
    .array-data 4
        0x45390000    # 2960.0f
        0x45390000    # 2960.0f
    .end array-data

    :array_2d
    .array-data 4
        0x45390000    # 2960.0f
        0x45390000    # 2960.0f
    .end array-data

    :array_2e
    .array-data 4
        0x0
        0x0
    .end array-data

    :array_2f
    .array-data 4
        0x0
        0x0
    .end array-data

    :array_30
    .array-data 4
        0x0
        0x0
    .end array-data

    :array_31
    .array-data 4
        0x0
        0x0
    .end array-data

    :array_32
    .array-data 4
        0x0
        0x0
    .end array-data

    :array_33
    .array-data 4
        0x0
        0x0
    .end array-data

    :array_34
    .array-data 4
        0x0
        0x0
    .end array-data

    :array_35
    .array-data 4
        0x0
        0x0
    .end array-data

    :array_36
    .array-data 4
        0x0
        0x0
    .end array-data

    :array_37
    .array-data 4
        0x0
        0x0
    .end array-data

    :array_38
    .array-data 4
        0x0
        0x0
    .end array-data

    :array_39
    .array-data 4
        0x435c0000    # 220.0f
        0x435c0000    # 220.0f
    .end array-data

    :array_3a
    .array-data 4
        0x435c0000    # 220.0f
        0x435c0000    # 220.0f
    .end array-data

    :array_3b
    .array-data 4
        0x435c0000    # 220.0f
        0x435c0000    # 220.0f
    .end array-data

    :array_3c
    .array-data 4
        0x435c0000    # 220.0f
        0x435c0000    # 220.0f
    .end array-data

    :array_3d
    .array-data 4
        0x435c0000    # 220.0f
        0x435c0000    # 220.0f
    .end array-data

    :array_3e
    .array-data 4
        0x435c0000    # 220.0f
        0x435c0000    # 220.0f
    .end array-data

    :array_3f
    .array-data 4
        0x435c0000    # 220.0f
        0x435c0000    # 220.0f
    .end array-data

    :array_40
    .array-data 4
        0x435c0000    # 220.0f
        0x435c0000    # 220.0f
    .end array-data

    :array_41
    .array-data 4
        0x435c0000    # 220.0f
        0x435c0000    # 220.0f
    .end array-data

    :array_42
    .array-data 4
        0x435c0000    # 220.0f
        0x435c0000    # 220.0f
    .end array-data

    :array_43
    .array-data 4
        0x435c0000    # 220.0f
        0x435c0000    # 220.0f
    .end array-data

    :array_44
    .array-data 4
        0x42fa0000    # 125.0f
        0x42fa0000    # 125.0f
    .end array-data

    :array_45
    .array-data 4
        0x42fa0000    # 125.0f
        0x42fa0000    # 125.0f
    .end array-data

    :array_46
    .array-data 4
        0x42fa0000    # 125.0f
        0x42fa0000    # 125.0f
    .end array-data

    :array_47
    .array-data 4
        0x42fa0000    # 125.0f
        0x42fa0000    # 125.0f
    .end array-data

    :array_48
    .array-data 4
        -0x3d060000    # -125.0f
        -0x3d060000    # -125.0f
    .end array-data

    :array_49
    .array-data 4
        0x42fa0000    # 125.0f
        0x42fa0000    # 125.0f
    .end array-data

    :array_4a
    .array-data 4
        -0x3d060000    # -125.0f
        -0x3d060000    # -125.0f
    .end array-data

    :array_4b
    .array-data 4
        -0x3d060000    # -125.0f
        -0x3d060000    # -125.0f
    .end array-data

    :array_4c
    .array-data 4
        -0x3d060000    # -125.0f
        -0x3d060000    # -125.0f
    .end array-data

    :array_4d
    .array-data 4
        0x42fa0000    # 125.0f
        0x42fa0000    # 125.0f
    .end array-data

    :array_4e
    .array-data 4
        0x42fa0000    # 125.0f
        0x42fa0000    # 125.0f
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/infinity/GalaxyRenderer;)V
    .locals 3

    const v2, 0x3dcccccd    # 0.1f

    const v0, 0x7f0a0007

    const v1, 0x7f0a0008

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/android/systemui/infinity/tangram/TangramSystem;-><init>(Landroid/content/Context;Lcom/android/systemui/infinity/GalaxyRenderer;II)V

    iput v2, p0, Lcom/android/systemui/infinity/theme/black/TangramBlackSystem;->showEasing:F

    iput v2, p0, Lcom/android/systemui/infinity/theme/black/TangramBlackSystem;->tiltEasing:F

    const v0, 0x3da3d70a    # 0.08f

    iput v0, p0, Lcom/android/systemui/infinity/theme/black/TangramBlackSystem;->tiltSubEasing:F

    const v0, 0x3e99999a    # 0.3f

    iput v0, p0, Lcom/android/systemui/infinity/theme/black/TangramBlackSystem;->tiltTranslation:F

    iget-object v0, p0, Lcom/android/systemui/infinity/theme/black/TangramBlackSystem;->tangramList:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/infinity/tangram/Tangram;

    iput-object v0, p0, Lcom/android/systemui/infinity/theme/black/TangramBlackSystem;->a:Lcom/android/systemui/infinity/tangram/Tangram;

    iget-object v0, p0, Lcom/android/systemui/infinity/theme/black/TangramBlackSystem;->tangramList:Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/infinity/tangram/Tangram;

    iput-object v0, p0, Lcom/android/systemui/infinity/theme/black/TangramBlackSystem;->b:Lcom/android/systemui/infinity/tangram/Tangram;

    iget-object v0, p0, Lcom/android/systemui/infinity/theme/black/TangramBlackSystem;->tangramList:Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/infinity/tangram/Tangram;

    iput-object v0, p0, Lcom/android/systemui/infinity/theme/black/TangramBlackSystem;->c:Lcom/android/systemui/infinity/tangram/Tangram;

    iget-object v0, p0, Lcom/android/systemui/infinity/theme/black/TangramBlackSystem;->tangramList:Ljava/util/ArrayList;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/infinity/tangram/Tangram;

    iput-object v0, p0, Lcom/android/systemui/infinity/theme/black/TangramBlackSystem;->d:Lcom/android/systemui/infinity/tangram/Tangram;

    iget-object v0, p0, Lcom/android/systemui/infinity/theme/black/TangramBlackSystem;->tangramList:Ljava/util/ArrayList;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/infinity/tangram/Tangram;

    iput-object v0, p0, Lcom/android/systemui/infinity/theme/black/TangramBlackSystem;->e:Lcom/android/systemui/infinity/tangram/Tangram;

    iget-object v0, p0, Lcom/android/systemui/infinity/theme/black/TangramBlackSystem;->tangramList:Ljava/util/ArrayList;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/infinity/tangram/Tangram;

    iput-object v0, p0, Lcom/android/systemui/infinity/theme/black/TangramBlackSystem;->f:Lcom/android/systemui/infinity/tangram/Tangram;

    iget-object v0, p0, Lcom/android/systemui/infinity/theme/black/TangramBlackSystem;->tangramList:Ljava/util/ArrayList;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/infinity/tangram/Tangram;

    iput-object v0, p0, Lcom/android/systemui/infinity/theme/black/TangramBlackSystem;->g:Lcom/android/systemui/infinity/tangram/Tangram;

    iget-object v0, p0, Lcom/android/systemui/infinity/theme/black/TangramBlackSystem;->tangramList:Ljava/util/ArrayList;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/infinity/tangram/Tangram;

    iput-object v0, p0, Lcom/android/systemui/infinity/theme/black/TangramBlackSystem;->h:Lcom/android/systemui/infinity/tangram/Tangram;

    iget-object v0, p0, Lcom/android/systemui/infinity/theme/black/TangramBlackSystem;->tangramList:Ljava/util/ArrayList;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/infinity/tangram/Tangram;

    iput-object v0, p0, Lcom/android/systemui/infinity/theme/black/TangramBlackSystem;->il:Lcom/android/systemui/infinity/tangram/Tangram;

    iget-object v0, p0, Lcom/android/systemui/infinity/theme/black/TangramBlackSystem;->tangramList:Ljava/util/ArrayList;

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/infinity/tangram/Tangram;

    iput-object v0, p0, Lcom/android/systemui/infinity/theme/black/TangramBlackSystem;->j:Lcom/android/systemui/infinity/tangram/Tangram;

    iget-object v0, p0, Lcom/android/systemui/infinity/theme/black/TangramBlackSystem;->tangramList:Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/infinity/tangram/Tangram;

    iput-object v0, p0, Lcom/android/systemui/infinity/theme/black/TangramBlackSystem;->k:Lcom/android/systemui/infinity/tangram/Tangram;

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

    sget-object v1, Lcom/android/systemui/infinity/theme/black/TangramBlackSystem;->maskMoveDistance:[[F

    iput-object v1, v0, Lcom/android/systemui/infinity/tangram/TangramMapData;->maskMoveDistance:[[F

    sget-object v1, Lcom/android/systemui/infinity/theme/black/TangramBlackSystem;->layerSize:[[F

    iput-object v1, v0, Lcom/android/systemui/infinity/tangram/TangramMapData;->layerSize:[[F

    sget-object v1, Lcom/android/systemui/infinity/theme/black/TangramBlackSystem;->layerPosition:[[F

    iput-object v1, v0, Lcom/android/systemui/infinity/tangram/TangramMapData;->layerPosition:[[F

    sget-object v1, Lcom/android/systemui/infinity/theme/black/TangramBlackSystem;->maskSize:[[F

    iput-object v1, v0, Lcom/android/systemui/infinity/tangram/TangramMapData;->maskSize:[[F

    sget-object v1, Lcom/android/systemui/infinity/theme/black/TangramBlackSystem;->maskPosition:[[F

    iput-object v1, v0, Lcom/android/systemui/infinity/tangram/TangramMapData;->maskPosition:[[F

    sget-object v1, Lcom/android/systemui/infinity/theme/black/TangramBlackSystem;->layerName:[Ljava/lang/String;

    iput-object v1, v0, Lcom/android/systemui/infinity/tangram/TangramMapData;->layerName:[Ljava/lang/String;

    sget-object v1, Lcom/android/systemui/infinity/theme/black/TangramBlackSystem;->initTranslation:[[F

    iput-object v1, v0, Lcom/android/systemui/infinity/tangram/TangramMapData;->initTranslation:[[F

    sget-object v1, Lcom/android/systemui/infinity/theme/black/TangramBlackSystem;->endTranslation:[[F

    iput-object v1, v0, Lcom/android/systemui/infinity/tangram/TangramMapData;->endTranslation:[[F

    sget-object v1, Lcom/android/systemui/infinity/theme/black/TangramBlackSystem;->bottomLayerImage:[Z

    iput-object v1, v0, Lcom/android/systemui/infinity/tangram/TangramMapData;->bottomLayerImage:[Z

    sget-object v1, Lcom/android/systemui/infinity/theme/black/TangramBlackSystem;->layerFixAlpha:[F

    iput-object v1, v0, Lcom/android/systemui/infinity/tangram/TangramMapData;->layerFixAlpha:[F

    sget-object v1, Lcom/android/systemui/infinity/theme/black/TangramBlackSystem;->mapLayerFileName:[Ljava/lang/String;

    iput-object v1, v0, Lcom/android/systemui/infinity/tangram/TangramMapData;->mapLayerFileName:[Ljava/lang/String;

    sget-object v1, Lcom/android/systemui/infinity/theme/black/TangramBlackSystem;->mapMaskFileName:[Ljava/lang/String;

    iput-object v1, v0, Lcom/android/systemui/infinity/tangram/TangramMapData;->mapMaskFileName:[Ljava/lang/String;

    sget-object v1, Lcom/android/systemui/infinity/theme/black/TangramBlackSystem;->mapLeftFileName:[Ljava/lang/String;

    iput-object v1, v0, Lcom/android/systemui/infinity/tangram/TangramMapData;->mapLeftFileName:[Ljava/lang/String;

    sget-object v1, Lcom/android/systemui/infinity/theme/black/TangramBlackSystem;->mapRightFileName:[Ljava/lang/String;

    iput-object v1, v0, Lcom/android/systemui/infinity/tangram/TangramMapData;->mapRightFileName:[Ljava/lang/String;

    const/4 v1, 0x0

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
    iget-object v3, p0, Lcom/android/systemui/infinity/theme/black/TangramBlackSystem;->tangramList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_0

    iget-object v3, p0, Lcom/android/systemui/infinity/theme/black/TangramBlackSystem;->tangramList:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/infinity/tangram/Tangram;

    iput v4, v3, Lcom/android/systemui/infinity/tangram/Tangram;->gyroTx:F

    iget-object v3, p0, Lcom/android/systemui/infinity/theme/black/TangramBlackSystem;->tangramList:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/infinity/tangram/Tangram;

    iput v4, v3, Lcom/android/systemui/infinity/tangram/Tangram;->gyroTy:F

    iget-object v3, p0, Lcom/android/systemui/infinity/theme/black/TangramBlackSystem;->tangramList:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/infinity/tangram/Tangram;

    iput v4, v3, Lcom/android/systemui/infinity/tangram/Tangram;->gyroValue:F

    iget-object v3, p0, Lcom/android/systemui/infinity/theme/black/TangramBlackSystem;->tangramList:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/infinity/tangram/Tangram;

    iput v5, v3, Lcom/android/systemui/infinity/tangram/Tangram;->gyroAlpha:F

    iget-object v3, p0, Lcom/android/systemui/infinity/theme/black/TangramBlackSystem;->tangramList:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/infinity/tangram/Tangram;

    iput v4, v3, Lcom/android/systemui/infinity/tangram/Tangram;->leftImageAlpha:F

    iget-object v3, p0, Lcom/android/systemui/infinity/theme/black/TangramBlackSystem;->tangramList:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/infinity/tangram/Tangram;

    iput v4, v3, Lcom/android/systemui/infinity/tangram/Tangram;->rightImageAlpha:F

    iget-object v3, p0, Lcom/android/systemui/infinity/theme/black/TangramBlackSystem;->tangramList:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/infinity/tangram/Tangram;

    iput v5, v3, Lcom/android/systemui/infinity/tangram/Tangram;->centerImageAlpha:F

    iget-object v3, p0, Lcom/android/systemui/infinity/theme/black/TangramBlackSystem;->tangramList:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/infinity/tangram/Tangram;

    iput v5, v3, Lcom/android/systemui/infinity/tangram/Tangram;->gyroScale:F

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget-object v3, p0, Lcom/android/systemui/infinity/theme/black/TangramBlackSystem;->b:Lcom/android/systemui/infinity/tangram/Tangram;

    iget v4, p0, Lcom/android/systemui/infinity/theme/black/TangramBlackSystem;->showingProgress:F

    iput v4, v3, Lcom/android/systemui/infinity/tangram/Tangram;->showingProgress:F

    iget-object v3, p0, Lcom/android/systemui/infinity/theme/black/TangramBlackSystem;->j:Lcom/android/systemui/infinity/tangram/Tangram;

    iget v4, p0, Lcom/android/systemui/infinity/theme/black/TangramBlackSystem;->showingProgress:F

    iput v4, v3, Lcom/android/systemui/infinity/tangram/Tangram;->showingProgress:F

    iget-object v3, p0, Lcom/android/systemui/infinity/theme/black/TangramBlackSystem;->k:Lcom/android/systemui/infinity/tangram/Tangram;

    iget v4, p0, Lcom/android/systemui/infinity/theme/black/TangramBlackSystem;->showingProgress:F

    iput v4, v3, Lcom/android/systemui/infinity/tangram/Tangram;->showingProgress:F

    iget-object v3, p0, Lcom/android/systemui/infinity/theme/black/TangramBlackSystem;->b:Lcom/android/systemui/infinity/tangram/Tangram;

    iget v2, v3, Lcom/android/systemui/infinity/tangram/Tangram;->showingProgress:F

    iget-object v3, p0, Lcom/android/systemui/infinity/theme/black/TangramBlackSystem;->a:Lcom/android/systemui/infinity/tangram/Tangram;

    iget v3, v3, Lcom/android/systemui/infinity/tangram/Tangram;->showingProgress:F

    sub-float v0, v2, v3

    iget-object v3, p0, Lcom/android/systemui/infinity/theme/black/TangramBlackSystem;->a:Lcom/android/systemui/infinity/tangram/Tangram;

    iget-object v4, p0, Lcom/android/systemui/infinity/theme/black/TangramBlackSystem;->a:Lcom/android/systemui/infinity/tangram/Tangram;

    iget v4, v4, Lcom/android/systemui/infinity/tangram/Tangram;->showingProgress:F

    iget v5, p0, Lcom/android/systemui/infinity/theme/black/TangramBlackSystem;->showEasing:F

    mul-float/2addr v5, v0

    add-float/2addr v4, v5

    iput v4, v3, Lcom/android/systemui/infinity/tangram/Tangram;->showingProgress:F

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v3

    cmpg-float v3, v3, v6

    if-gez v3, :cond_1

    iget-object v3, p0, Lcom/android/systemui/infinity/theme/black/TangramBlackSystem;->a:Lcom/android/systemui/infinity/tangram/Tangram;

    iput v2, v3, Lcom/android/systemui/infinity/tangram/Tangram;->showingProgress:F

    :cond_1
    iget-object v3, p0, Lcom/android/systemui/infinity/theme/black/TangramBlackSystem;->c:Lcom/android/systemui/infinity/tangram/Tangram;

    iget-object v4, p0, Lcom/android/systemui/infinity/theme/black/TangramBlackSystem;->a:Lcom/android/systemui/infinity/tangram/Tangram;

    iget v4, v4, Lcom/android/systemui/infinity/tangram/Tangram;->showingProgress:F

    iput v4, v3, Lcom/android/systemui/infinity/tangram/Tangram;->showingProgress:F

    iget-object v3, p0, Lcom/android/systemui/infinity/theme/black/TangramBlackSystem;->d:Lcom/android/systemui/infinity/tangram/Tangram;

    iget-object v4, p0, Lcom/android/systemui/infinity/theme/black/TangramBlackSystem;->a:Lcom/android/systemui/infinity/tangram/Tangram;

    iget v4, v4, Lcom/android/systemui/infinity/tangram/Tangram;->showingProgress:F

    iput v4, v3, Lcom/android/systemui/infinity/tangram/Tangram;->showingProgress:F

    iget-object v3, p0, Lcom/android/systemui/infinity/theme/black/TangramBlackSystem;->f:Lcom/android/systemui/infinity/tangram/Tangram;

    iget-object v4, p0, Lcom/android/systemui/infinity/theme/black/TangramBlackSystem;->a:Lcom/android/systemui/infinity/tangram/Tangram;

    iget v4, v4, Lcom/android/systemui/infinity/tangram/Tangram;->showingProgress:F

    iput v4, v3, Lcom/android/systemui/infinity/tangram/Tangram;->showingProgress:F

    iget-object v3, p0, Lcom/android/systemui/infinity/theme/black/TangramBlackSystem;->a:Lcom/android/systemui/infinity/tangram/Tangram;

    iget v2, v3, Lcom/android/systemui/infinity/tangram/Tangram;->showingProgress:F

    iget-object v3, p0, Lcom/android/systemui/infinity/theme/black/TangramBlackSystem;->e:Lcom/android/systemui/infinity/tangram/Tangram;

    iget v3, v3, Lcom/android/systemui/infinity/tangram/Tangram;->showingProgress:F

    sub-float v0, v2, v3

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v3

    cmpg-float v3, v3, v6

    if-gez v3, :cond_2

    iget-object v3, p0, Lcom/android/systemui/infinity/theme/black/TangramBlackSystem;->e:Lcom/android/systemui/infinity/tangram/Tangram;

    iput v2, v3, Lcom/android/systemui/infinity/tangram/Tangram;->showingProgress:F

    :cond_2
    iget-object v3, p0, Lcom/android/systemui/infinity/theme/black/TangramBlackSystem;->e:Lcom/android/systemui/infinity/tangram/Tangram;

    iget-object v4, p0, Lcom/android/systemui/infinity/theme/black/TangramBlackSystem;->e:Lcom/android/systemui/infinity/tangram/Tangram;

    iget v4, v4, Lcom/android/systemui/infinity/tangram/Tangram;->showingProgress:F

    iget v5, p0, Lcom/android/systemui/infinity/theme/black/TangramBlackSystem;->showEasing:F

    mul-float/2addr v5, v0

    add-float/2addr v4, v5

    iput v4, v3, Lcom/android/systemui/infinity/tangram/Tangram;->showingProgress:F

    iget-object v3, p0, Lcom/android/systemui/infinity/theme/black/TangramBlackSystem;->g:Lcom/android/systemui/infinity/tangram/Tangram;

    iget-object v4, p0, Lcom/android/systemui/infinity/theme/black/TangramBlackSystem;->e:Lcom/android/systemui/infinity/tangram/Tangram;

    iget v4, v4, Lcom/android/systemui/infinity/tangram/Tangram;->showingProgress:F

    iput v4, v3, Lcom/android/systemui/infinity/tangram/Tangram;->showingProgress:F

    iget-object v3, p0, Lcom/android/systemui/infinity/theme/black/TangramBlackSystem;->h:Lcom/android/systemui/infinity/tangram/Tangram;

    iget-object v4, p0, Lcom/android/systemui/infinity/theme/black/TangramBlackSystem;->e:Lcom/android/systemui/infinity/tangram/Tangram;

    iget v4, v4, Lcom/android/systemui/infinity/tangram/Tangram;->showingProgress:F

    iput v4, v3, Lcom/android/systemui/infinity/tangram/Tangram;->showingProgress:F

    iget-object v3, p0, Lcom/android/systemui/infinity/theme/black/TangramBlackSystem;->il:Lcom/android/systemui/infinity/tangram/Tangram;

    iget-object v4, p0, Lcom/android/systemui/infinity/theme/black/TangramBlackSystem;->e:Lcom/android/systemui/infinity/tangram/Tangram;

    iget v4, v4, Lcom/android/systemui/infinity/tangram/Tangram;->showingProgress:F

    iput v4, v3, Lcom/android/systemui/infinity/tangram/Tangram;->showingProgress:F

    return-void
.end method

.method protected tiltProcess(Z)V
    .locals 14

    const v13, 0x3e4ccccd    # 0.2f

    const/high16 v12, 0x40000000    # 2.0f

    const v11, 0x3f8ccccd    # 1.1f

    const/4 v10, 0x0

    const/high16 v9, 0x3f800000    # 1.0f

    iget v6, p0, Lcom/android/systemui/infinity/theme/black/TangramBlackSystem;->targetGyroValue:F

    iget-object v7, p0, Lcom/android/systemui/infinity/theme/black/TangramBlackSystem;->b:Lcom/android/systemui/infinity/tangram/Tangram;

    iget v7, v7, Lcom/android/systemui/infinity/tangram/Tangram;->gyroValue:F

    iget v8, p0, Lcom/android/systemui/infinity/theme/black/TangramBlackSystem;->tiltEasing:F

    invoke-virtual {p0, v6, v7, v8}, Lcom/android/systemui/infinity/theme/black/TangramBlackSystem;->getLinearTargetPosition(FFF)F

    move-result v1

    iget-object v6, p0, Lcom/android/systemui/infinity/theme/black/TangramBlackSystem;->b:Lcom/android/systemui/infinity/tangram/Tangram;

    iput v1, v6, Lcom/android/systemui/infinity/tangram/Tangram;->gyroValue:F

    iget-object v6, p0, Lcom/android/systemui/infinity/theme/black/TangramBlackSystem;->j:Lcom/android/systemui/infinity/tangram/Tangram;

    iput v1, v6, Lcom/android/systemui/infinity/tangram/Tangram;->gyroValue:F

    iget-object v6, p0, Lcom/android/systemui/infinity/theme/black/TangramBlackSystem;->k:Lcom/android/systemui/infinity/tangram/Tangram;

    iput v1, v6, Lcom/android/systemui/infinity/tangram/Tangram;->gyroValue:F

    move v4, v1

    iget-object v6, p0, Lcom/android/systemui/infinity/theme/black/TangramBlackSystem;->a:Lcom/android/systemui/infinity/tangram/Tangram;

    iget v6, v6, Lcom/android/systemui/infinity/tangram/Tangram;->gyroValue:F

    sub-float v2, v1, v6

    iget-object v6, p0, Lcom/android/systemui/infinity/theme/black/TangramBlackSystem;->a:Lcom/android/systemui/infinity/tangram/Tangram;

    iget-object v7, p0, Lcom/android/systemui/infinity/theme/black/TangramBlackSystem;->a:Lcom/android/systemui/infinity/tangram/Tangram;

    iget v7, v7, Lcom/android/systemui/infinity/tangram/Tangram;->gyroValue:F

    iget v8, p0, Lcom/android/systemui/infinity/theme/black/TangramBlackSystem;->tiltSubEasing:F

    mul-float/2addr v8, v2

    add-float/2addr v7, v8

    iput v7, v6, Lcom/android/systemui/infinity/tangram/Tangram;->gyroValue:F

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v6

    const v7, 0x3a83126f    # 0.001f

    cmpg-float v6, v6, v7

    if-gez v6, :cond_0

    iget-object v6, p0, Lcom/android/systemui/infinity/theme/black/TangramBlackSystem;->a:Lcom/android/systemui/infinity/tangram/Tangram;

    iput v1, v6, Lcom/android/systemui/infinity/tangram/Tangram;->gyroValue:F

    :cond_0
    iget-object v6, p0, Lcom/android/systemui/infinity/theme/black/TangramBlackSystem;->c:Lcom/android/systemui/infinity/tangram/Tangram;

    iget-object v7, p0, Lcom/android/systemui/infinity/theme/black/TangramBlackSystem;->a:Lcom/android/systemui/infinity/tangram/Tangram;

    iget v7, v7, Lcom/android/systemui/infinity/tangram/Tangram;->gyroValue:F

    iput v7, v6, Lcom/android/systemui/infinity/tangram/Tangram;->gyroValue:F

    iget-object v6, p0, Lcom/android/systemui/infinity/theme/black/TangramBlackSystem;->d:Lcom/android/systemui/infinity/tangram/Tangram;

    iget-object v7, p0, Lcom/android/systemui/infinity/theme/black/TangramBlackSystem;->a:Lcom/android/systemui/infinity/tangram/Tangram;

    iget v7, v7, Lcom/android/systemui/infinity/tangram/Tangram;->gyroValue:F

    iput v7, v6, Lcom/android/systemui/infinity/tangram/Tangram;->gyroValue:F

    iget-object v6, p0, Lcom/android/systemui/infinity/theme/black/TangramBlackSystem;->f:Lcom/android/systemui/infinity/tangram/Tangram;

    iget-object v7, p0, Lcom/android/systemui/infinity/theme/black/TangramBlackSystem;->a:Lcom/android/systemui/infinity/tangram/Tangram;

    iget v7, v7, Lcom/android/systemui/infinity/tangram/Tangram;->gyroValue:F

    iput v7, v6, Lcom/android/systemui/infinity/tangram/Tangram;->gyroValue:F

    iget-object v6, p0, Lcom/android/systemui/infinity/theme/black/TangramBlackSystem;->a:Lcom/android/systemui/infinity/tangram/Tangram;

    iget v4, v6, Lcom/android/systemui/infinity/tangram/Tangram;->gyroValue:F

    iget-object v6, p0, Lcom/android/systemui/infinity/theme/black/TangramBlackSystem;->e:Lcom/android/systemui/infinity/tangram/Tangram;

    iget v6, v6, Lcom/android/systemui/infinity/tangram/Tangram;->gyroValue:F

    sub-float v2, v4, v6

    iget-object v6, p0, Lcom/android/systemui/infinity/theme/black/TangramBlackSystem;->e:Lcom/android/systemui/infinity/tangram/Tangram;

    iget-object v7, p0, Lcom/android/systemui/infinity/theme/black/TangramBlackSystem;->e:Lcom/android/systemui/infinity/tangram/Tangram;

    iget v7, v7, Lcom/android/systemui/infinity/tangram/Tangram;->gyroValue:F

    iget v8, p0, Lcom/android/systemui/infinity/theme/black/TangramBlackSystem;->tiltSubEasing:F

    mul-float/2addr v8, v2

    add-float/2addr v7, v8

    iput v7, v6, Lcom/android/systemui/infinity/tangram/Tangram;->gyroValue:F

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v6

    const v7, 0x3a83126f    # 0.001f

    cmpg-float v6, v6, v7

    if-gez v6, :cond_1

    iget-object v6, p0, Lcom/android/systemui/infinity/theme/black/TangramBlackSystem;->e:Lcom/android/systemui/infinity/tangram/Tangram;

    iput v4, v6, Lcom/android/systemui/infinity/tangram/Tangram;->gyroValue:F

    :cond_1
    iget-object v6, p0, Lcom/android/systemui/infinity/theme/black/TangramBlackSystem;->g:Lcom/android/systemui/infinity/tangram/Tangram;

    iget-object v7, p0, Lcom/android/systemui/infinity/theme/black/TangramBlackSystem;->e:Lcom/android/systemui/infinity/tangram/Tangram;

    iget v7, v7, Lcom/android/systemui/infinity/tangram/Tangram;->gyroValue:F

    iput v7, v6, Lcom/android/systemui/infinity/tangram/Tangram;->gyroValue:F

    iget-object v6, p0, Lcom/android/systemui/infinity/theme/black/TangramBlackSystem;->h:Lcom/android/systemui/infinity/tangram/Tangram;

    iget-object v7, p0, Lcom/android/systemui/infinity/theme/black/TangramBlackSystem;->e:Lcom/android/systemui/infinity/tangram/Tangram;

    iget v7, v7, Lcom/android/systemui/infinity/tangram/Tangram;->gyroValue:F

    iput v7, v6, Lcom/android/systemui/infinity/tangram/Tangram;->gyroValue:F

    iget-object v6, p0, Lcom/android/systemui/infinity/theme/black/TangramBlackSystem;->il:Lcom/android/systemui/infinity/tangram/Tangram;

    iget-object v7, p0, Lcom/android/systemui/infinity/theme/black/TangramBlackSystem;->e:Lcom/android/systemui/infinity/tangram/Tangram;

    iget v7, v7, Lcom/android/systemui/infinity/tangram/Tangram;->gyroValue:F

    iput v7, v6, Lcom/android/systemui/infinity/tangram/Tangram;->gyroValue:F

    iget-object v6, p0, Lcom/android/systemui/infinity/theme/black/TangramBlackSystem;->b:Lcom/android/systemui/infinity/tangram/Tangram;

    iget-object v7, p0, Lcom/android/systemui/infinity/theme/black/TangramBlackSystem;->il:Lcom/android/systemui/infinity/tangram/Tangram;

    invoke-virtual {p0, v6, v7}, Lcom/android/systemui/infinity/theme/black/TangramBlackSystem;->checkFinishTiltEasing(Lcom/android/systemui/infinity/tangram/Tangram;Lcom/android/systemui/infinity/tangram/Tangram;)V

    const/4 v3, 0x0

    :goto_0
    iget-object v6, p0, Lcom/android/systemui/infinity/theme/black/TangramBlackSystem;->tangramList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v3, v6, :cond_2

    iget-object v6, p0, Lcom/android/systemui/infinity/theme/black/TangramBlackSystem;->tangramList:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/infinity/tangram/Tangram;

    iget v6, v0, Lcom/android/systemui/infinity/tangram/Tangram;->gyroValue:F

    iget v7, p0, Lcom/android/systemui/infinity/theme/black/TangramBlackSystem;->tiltTranslation:F

    mul-float v5, v6, v7

    iput v5, v0, Lcom/android/systemui/infinity/tangram/Tangram;->gyroTx:F

    iput v5, v0, Lcom/android/systemui/infinity/tangram/Tangram;->gyroTy:F

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    iget-object v6, p0, Lcom/android/systemui/infinity/theme/black/TangramBlackSystem;->a:Lcom/android/systemui/infinity/tangram/Tangram;

    iget v6, v6, Lcom/android/systemui/infinity/tangram/Tangram;->gyroTx:F

    cmpg-float v6, v6, v10

    if-gez v6, :cond_1b

    iget-object v6, p0, Lcom/android/systemui/infinity/theme/black/TangramBlackSystem;->a:Lcom/android/systemui/infinity/tangram/Tangram;

    iget-object v7, p0, Lcom/android/systemui/infinity/theme/black/TangramBlackSystem;->a:Lcom/android/systemui/infinity/tangram/Tangram;

    iget v7, v7, Lcom/android/systemui/infinity/tangram/Tangram;->gyroTx:F

    const v8, 0x3fab851f    # 1.34f

    mul-float/2addr v7, v8

    iput v7, v6, Lcom/android/systemui/infinity/tangram/Tangram;->gyroTy:F

    :goto_1
    iget-object v6, p0, Lcom/android/systemui/infinity/theme/black/TangramBlackSystem;->j:Lcom/android/systemui/infinity/tangram/Tangram;

    iget v6, v6, Lcom/android/systemui/infinity/tangram/Tangram;->gyroTx:F

    cmpg-float v6, v6, v10

    if-gez v6, :cond_1c

    iget-object v6, p0, Lcom/android/systemui/infinity/theme/black/TangramBlackSystem;->j:Lcom/android/systemui/infinity/tangram/Tangram;

    iget-object v7, p0, Lcom/android/systemui/infinity/theme/black/TangramBlackSystem;->j:Lcom/android/systemui/infinity/tangram/Tangram;

    iget v7, v7, Lcom/android/systemui/infinity/tangram/Tangram;->gyroTx:F

    const v8, 0x3fb33333    # 1.4f

    mul-float/2addr v7, v8

    iput v7, v6, Lcom/android/systemui/infinity/tangram/Tangram;->gyroTy:F

    :goto_2
    iget-object v6, p0, Lcom/android/systemui/infinity/theme/black/TangramBlackSystem;->h:Lcom/android/systemui/infinity/tangram/Tangram;

    iget v6, v6, Lcom/android/systemui/infinity/tangram/Tangram;->gyroTx:F

    cmpg-float v6, v6, v10

    if-gez v6, :cond_1d

    iget-object v6, p0, Lcom/android/systemui/infinity/theme/black/TangramBlackSystem;->h:Lcom/android/systemui/infinity/tangram/Tangram;

    iget-object v7, p0, Lcom/android/systemui/infinity/theme/black/TangramBlackSystem;->h:Lcom/android/systemui/infinity/tangram/Tangram;

    iget v7, v7, Lcom/android/systemui/infinity/tangram/Tangram;->gyroTx:F

    const v8, 0x3f333333    # 0.7f

    mul-float/2addr v7, v8

    iput v7, v6, Lcom/android/systemui/infinity/tangram/Tangram;->gyroTy:F

    :goto_3
    iget-object v6, p0, Lcom/android/systemui/infinity/theme/black/TangramBlackSystem;->a:Lcom/android/systemui/infinity/tangram/Tangram;

    iget-object v7, p0, Lcom/android/systemui/infinity/theme/black/TangramBlackSystem;->a:Lcom/android/systemui/infinity/tangram/Tangram;

    iget v7, v7, Lcom/android/systemui/infinity/tangram/Tangram;->gyroValue:F

    mul-float/2addr v7, v13

    sub-float v7, v9, v7

    iput v7, v6, Lcom/android/systemui/infinity/tangram/Tangram;->gyroScale:F

    iget-object v6, p0, Lcom/android/systemui/infinity/theme/black/TangramBlackSystem;->a:Lcom/android/systemui/infinity/tangram/Tangram;

    iget v6, v6, Lcom/android/systemui/infinity/tangram/Tangram;->gyroScale:F

    cmpl-float v6, v6, v11

    if-lez v6, :cond_3

    iget-object v6, p0, Lcom/android/systemui/infinity/theme/black/TangramBlackSystem;->a:Lcom/android/systemui/infinity/tangram/Tangram;

    iput v11, v6, Lcom/android/systemui/infinity/tangram/Tangram;->gyroScale:F

    :cond_3
    iget-object v6, p0, Lcom/android/systemui/infinity/theme/black/TangramBlackSystem;->a:Lcom/android/systemui/infinity/tangram/Tangram;

    iget v6, v6, Lcom/android/systemui/infinity/tangram/Tangram;->gyroScale:F

    const v7, 0x3f666666    # 0.9f

    cmpg-float v6, v6, v7

    if-gez v6, :cond_4

    iget-object v6, p0, Lcom/android/systemui/infinity/theme/black/TangramBlackSystem;->a:Lcom/android/systemui/infinity/tangram/Tangram;

    const v7, 0x3f666666    # 0.9f

    iput v7, v6, Lcom/android/systemui/infinity/tangram/Tangram;->gyroScale:F

    :cond_4
    iget-object v6, p0, Lcom/android/systemui/infinity/theme/black/TangramBlackSystem;->j:Lcom/android/systemui/infinity/tangram/Tangram;

    iget-object v7, p0, Lcom/android/systemui/infinity/theme/black/TangramBlackSystem;->a:Lcom/android/systemui/infinity/tangram/Tangram;

    iget v7, v7, Lcom/android/systemui/infinity/tangram/Tangram;->gyroValue:F

    mul-float/2addr v7, v13

    sub-float v7, v9, v7

    iput v7, v6, Lcom/android/systemui/infinity/tangram/Tangram;->gyroScale:F

    iget-object v6, p0, Lcom/android/systemui/infinity/theme/black/TangramBlackSystem;->j:Lcom/android/systemui/infinity/tangram/Tangram;

    iget v6, v6, Lcom/android/systemui/infinity/tangram/Tangram;->gyroScale:F

    cmpl-float v6, v6, v11

    if-lez v6, :cond_5

    iget-object v6, p0, Lcom/android/systemui/infinity/theme/black/TangramBlackSystem;->j:Lcom/android/systemui/infinity/tangram/Tangram;

    iput v11, v6, Lcom/android/systemui/infinity/tangram/Tangram;->gyroScale:F

    :cond_5
    iget-object v6, p0, Lcom/android/systemui/infinity/theme/black/TangramBlackSystem;->j:Lcom/android/systemui/infinity/tangram/Tangram;

    iget v6, v6, Lcom/android/systemui/infinity/tangram/Tangram;->gyroScale:F

    const v7, 0x3f63d70a    # 0.89f

    cmpg-float v6, v6, v7

    if-gez v6, :cond_6

    iget-object v6, p0, Lcom/android/systemui/infinity/theme/black/TangramBlackSystem;->j:Lcom/android/systemui/infinity/tangram/Tangram;

    const v7, 0x3f63d70a    # 0.89f

    iput v7, v6, Lcom/android/systemui/infinity/tangram/Tangram;->gyroScale:F

    :cond_6
    iget-object v6, p0, Lcom/android/systemui/infinity/theme/black/TangramBlackSystem;->h:Lcom/android/systemui/infinity/tangram/Tangram;

    iget-object v7, p0, Lcom/android/systemui/infinity/theme/black/TangramBlackSystem;->a:Lcom/android/systemui/infinity/tangram/Tangram;

    iget v7, v7, Lcom/android/systemui/infinity/tangram/Tangram;->gyroValue:F

    mul-float/2addr v7, v13

    sub-float v7, v9, v7

    iput v7, v6, Lcom/android/systemui/infinity/tangram/Tangram;->gyroScale:F

    iget-object v6, p0, Lcom/android/systemui/infinity/theme/black/TangramBlackSystem;->h:Lcom/android/systemui/infinity/tangram/Tangram;

    iget v6, v6, Lcom/android/systemui/infinity/tangram/Tangram;->gyroScale:F

    cmpl-float v6, v6, v11

    if-lez v6, :cond_7

    iget-object v6, p0, Lcom/android/systemui/infinity/theme/black/TangramBlackSystem;->h:Lcom/android/systemui/infinity/tangram/Tangram;

    iput v11, v6, Lcom/android/systemui/infinity/tangram/Tangram;->gyroScale:F

    :cond_7
    iget-object v6, p0, Lcom/android/systemui/infinity/theme/black/TangramBlackSystem;->h:Lcom/android/systemui/infinity/tangram/Tangram;

    iget v6, v6, Lcom/android/systemui/infinity/tangram/Tangram;->gyroScale:F

    const v7, 0x3f733333    # 0.95f

    cmpg-float v6, v6, v7

    if-gez v6, :cond_8

    iget-object v6, p0, Lcom/android/systemui/infinity/theme/black/TangramBlackSystem;->h:Lcom/android/systemui/infinity/tangram/Tangram;

    const v7, 0x3f733333    # 0.95f

    iput v7, v6, Lcom/android/systemui/infinity/tangram/Tangram;->gyroScale:F

    :cond_8
    iget-object v6, p0, Lcom/android/systemui/infinity/theme/black/TangramBlackSystem;->h:Lcom/android/systemui/infinity/tangram/Tangram;

    iput v9, v6, Lcom/android/systemui/infinity/tangram/Tangram;->gyroScale:F

    iget-object v6, p0, Lcom/android/systemui/infinity/theme/black/TangramBlackSystem;->h:Lcom/android/systemui/infinity/tangram/Tangram;

    iget-object v7, p0, Lcom/android/systemui/infinity/theme/black/TangramBlackSystem;->a:Lcom/android/systemui/infinity/tangram/Tangram;

    iget v7, v7, Lcom/android/systemui/infinity/tangram/Tangram;->gyroValue:F

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    sub-float v7, v9, v7

    iput v7, v6, Lcom/android/systemui/infinity/tangram/Tangram;->gyroAlpha:F

    iget-object v6, p0, Lcom/android/systemui/infinity/theme/black/TangramBlackSystem;->h:Lcom/android/systemui/infinity/tangram/Tangram;

    iget v6, v6, Lcom/android/systemui/infinity/tangram/Tangram;->gyroAlpha:F

    const v7, 0x3d4ccccd    # 0.05f

    cmpg-float v6, v6, v7

    if-gez v6, :cond_9

    iget-object v6, p0, Lcom/android/systemui/infinity/theme/black/TangramBlackSystem;->h:Lcom/android/systemui/infinity/tangram/Tangram;

    const v7, 0x3d4ccccd    # 0.05f

    iput v7, v6, Lcom/android/systemui/infinity/tangram/Tangram;->gyroAlpha:F

    :cond_9
    iget-object v6, p0, Lcom/android/systemui/infinity/theme/black/TangramBlackSystem;->h:Lcom/android/systemui/infinity/tangram/Tangram;

    iget v6, v6, Lcom/android/systemui/infinity/tangram/Tangram;->gyroAlpha:F

    cmpl-float v6, v6, v9

    if-lez v6, :cond_a

    iget-object v6, p0, Lcom/android/systemui/infinity/theme/black/TangramBlackSystem;->h:Lcom/android/systemui/infinity/tangram/Tangram;

    iput v9, v6, Lcom/android/systemui/infinity/tangram/Tangram;->gyroAlpha:F

    :cond_a
    iget-object v6, p0, Lcom/android/systemui/infinity/theme/black/TangramBlackSystem;->c:Lcom/android/systemui/infinity/tangram/Tangram;

    iget-object v7, p0, Lcom/android/systemui/infinity/theme/black/TangramBlackSystem;->h:Lcom/android/systemui/infinity/tangram/Tangram;

    iget v7, v7, Lcom/android/systemui/infinity/tangram/Tangram;->gyroAlpha:F

    iput v7, v6, Lcom/android/systemui/infinity/tangram/Tangram;->gyroAlpha:F

    iget-object v6, p0, Lcom/android/systemui/infinity/theme/black/TangramBlackSystem;->a:Lcom/android/systemui/infinity/tangram/Tangram;

    iget-object v7, p0, Lcom/android/systemui/infinity/theme/black/TangramBlackSystem;->a:Lcom/android/systemui/infinity/tangram/Tangram;

    iget v7, v7, Lcom/android/systemui/infinity/tangram/Tangram;->gyroValue:F

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    sub-float v7, v9, v7

    iput v7, v6, Lcom/android/systemui/infinity/tangram/Tangram;->gyroAlpha:F

    iget-object v6, p0, Lcom/android/systemui/infinity/theme/black/TangramBlackSystem;->a:Lcom/android/systemui/infinity/tangram/Tangram;

    iget v6, v6, Lcom/android/systemui/infinity/tangram/Tangram;->gyroAlpha:F

    const/high16 v7, 0x3f000000    # 0.5f

    cmpg-float v6, v6, v7

    if-gez v6, :cond_b

    iget-object v6, p0, Lcom/android/systemui/infinity/theme/black/TangramBlackSystem;->a:Lcom/android/systemui/infinity/tangram/Tangram;

    const/high16 v7, 0x3f000000    # 0.5f

    iput v7, v6, Lcom/android/systemui/infinity/tangram/Tangram;->gyroAlpha:F

    :cond_b
    iget-object v6, p0, Lcom/android/systemui/infinity/theme/black/TangramBlackSystem;->a:Lcom/android/systemui/infinity/tangram/Tangram;

    iget v6, v6, Lcom/android/systemui/infinity/tangram/Tangram;->gyroAlpha:F

    cmpl-float v6, v6, v9

    if-lez v6, :cond_c

    iget-object v6, p0, Lcom/android/systemui/infinity/theme/black/TangramBlackSystem;->a:Lcom/android/systemui/infinity/tangram/Tangram;

    iput v9, v6, Lcom/android/systemui/infinity/tangram/Tangram;->gyroAlpha:F

    :cond_c
    iget-object v6, p0, Lcom/android/systemui/infinity/theme/black/TangramBlackSystem;->j:Lcom/android/systemui/infinity/tangram/Tangram;

    iget-object v7, p0, Lcom/android/systemui/infinity/theme/black/TangramBlackSystem;->j:Lcom/android/systemui/infinity/tangram/Tangram;

    iget v7, v7, Lcom/android/systemui/infinity/tangram/Tangram;->gyroValue:F

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    sub-float v7, v9, v7

    iput v7, v6, Lcom/android/systemui/infinity/tangram/Tangram;->gyroAlpha:F

    iget-object v6, p0, Lcom/android/systemui/infinity/theme/black/TangramBlackSystem;->j:Lcom/android/systemui/infinity/tangram/Tangram;

    iget v6, v6, Lcom/android/systemui/infinity/tangram/Tangram;->gyroAlpha:F

    const v7, 0x3e99999a    # 0.3f

    cmpg-float v6, v6, v7

    if-gez v6, :cond_d

    iget-object v6, p0, Lcom/android/systemui/infinity/theme/black/TangramBlackSystem;->j:Lcom/android/systemui/infinity/tangram/Tangram;

    const v7, 0x3e99999a    # 0.3f

    iput v7, v6, Lcom/android/systemui/infinity/tangram/Tangram;->gyroAlpha:F

    :cond_d
    iget-object v6, p0, Lcom/android/systemui/infinity/theme/black/TangramBlackSystem;->j:Lcom/android/systemui/infinity/tangram/Tangram;

    iget v6, v6, Lcom/android/systemui/infinity/tangram/Tangram;->gyroAlpha:F

    cmpl-float v6, v6, v9

    if-lez v6, :cond_e

    iget-object v6, p0, Lcom/android/systemui/infinity/theme/black/TangramBlackSystem;->j:Lcom/android/systemui/infinity/tangram/Tangram;

    iput v9, v6, Lcom/android/systemui/infinity/tangram/Tangram;->gyroAlpha:F

    :cond_e
    iget-object v6, p0, Lcom/android/systemui/infinity/theme/black/TangramBlackSystem;->h:Lcom/android/systemui/infinity/tangram/Tangram;

    iget-object v7, p0, Lcom/android/systemui/infinity/theme/black/TangramBlackSystem;->a:Lcom/android/systemui/infinity/tangram/Tangram;

    iget v7, v7, Lcom/android/systemui/infinity/tangram/Tangram;->gyroValue:F

    const v8, 0x3f19999a    # 0.6f

    mul-float/2addr v7, v8

    iput v7, v6, Lcom/android/systemui/infinity/tangram/Tangram;->rightImageAlpha:F

    iget-object v6, p0, Lcom/android/systemui/infinity/theme/black/TangramBlackSystem;->h:Lcom/android/systemui/infinity/tangram/Tangram;

    iget-object v7, p0, Lcom/android/systemui/infinity/theme/black/TangramBlackSystem;->a:Lcom/android/systemui/infinity/tangram/Tangram;

    iget v7, v7, Lcom/android/systemui/infinity/tangram/Tangram;->gyroValue:F

    neg-float v7, v7

    mul-float/2addr v7, v12

    iput v7, v6, Lcom/android/systemui/infinity/tangram/Tangram;->leftImageAlpha:F

    iget-object v6, p0, Lcom/android/systemui/infinity/theme/black/TangramBlackSystem;->a:Lcom/android/systemui/infinity/tangram/Tangram;

    iget-object v7, p0, Lcom/android/systemui/infinity/theme/black/TangramBlackSystem;->a:Lcom/android/systemui/infinity/tangram/Tangram;

    iget v7, v7, Lcom/android/systemui/infinity/tangram/Tangram;->gyroValue:F

    const v8, 0x3fb33333    # 1.4f

    mul-float/2addr v7, v8

    iput v7, v6, Lcom/android/systemui/infinity/tangram/Tangram;->rightImageAlpha:F

    iget-object v6, p0, Lcom/android/systemui/infinity/theme/black/TangramBlackSystem;->a:Lcom/android/systemui/infinity/tangram/Tangram;

    iget-object v7, p0, Lcom/android/systemui/infinity/theme/black/TangramBlackSystem;->a:Lcom/android/systemui/infinity/tangram/Tangram;

    iget v7, v7, Lcom/android/systemui/infinity/tangram/Tangram;->gyroValue:F

    neg-float v7, v7

    mul-float/2addr v7, v12

    iput v7, v6, Lcom/android/systemui/infinity/tangram/Tangram;->leftImageAlpha:F

    iget-object v6, p0, Lcom/android/systemui/infinity/theme/black/TangramBlackSystem;->j:Lcom/android/systemui/infinity/tangram/Tangram;

    iget-object v7, p0, Lcom/android/systemui/infinity/theme/black/TangramBlackSystem;->a:Lcom/android/systemui/infinity/tangram/Tangram;

    iget v7, v7, Lcom/android/systemui/infinity/tangram/Tangram;->gyroValue:F

    mul-float/2addr v7, v12

    iput v7, v6, Lcom/android/systemui/infinity/tangram/Tangram;->rightImageAlpha:F

    iget-object v6, p0, Lcom/android/systemui/infinity/theme/black/TangramBlackSystem;->j:Lcom/android/systemui/infinity/tangram/Tangram;

    iget-object v7, p0, Lcom/android/systemui/infinity/theme/black/TangramBlackSystem;->a:Lcom/android/systemui/infinity/tangram/Tangram;

    iget v7, v7, Lcom/android/systemui/infinity/tangram/Tangram;->gyroValue:F

    neg-float v7, v7

    mul-float/2addr v7, v12

    iput v7, v6, Lcom/android/systemui/infinity/tangram/Tangram;->leftImageAlpha:F

    iget-object v6, p0, Lcom/android/systemui/infinity/theme/black/TangramBlackSystem;->h:Lcom/android/systemui/infinity/tangram/Tangram;

    iget v6, v6, Lcom/android/systemui/infinity/tangram/Tangram;->rightImageAlpha:F

    cmpg-float v6, v6, v10

    if-gez v6, :cond_f

    iget-object v6, p0, Lcom/android/systemui/infinity/theme/black/TangramBlackSystem;->h:Lcom/android/systemui/infinity/tangram/Tangram;

    iput v10, v6, Lcom/android/systemui/infinity/tangram/Tangram;->rightImageAlpha:F

    :cond_f
    iget-object v6, p0, Lcom/android/systemui/infinity/theme/black/TangramBlackSystem;->h:Lcom/android/systemui/infinity/tangram/Tangram;

    iget v6, v6, Lcom/android/systemui/infinity/tangram/Tangram;->rightImageAlpha:F

    cmpl-float v6, v6, v9

    if-lez v6, :cond_10

    iget-object v6, p0, Lcom/android/systemui/infinity/theme/black/TangramBlackSystem;->h:Lcom/android/systemui/infinity/tangram/Tangram;

    iput v9, v6, Lcom/android/systemui/infinity/tangram/Tangram;->rightImageAlpha:F

    :cond_10
    iget-object v6, p0, Lcom/android/systemui/infinity/theme/black/TangramBlackSystem;->h:Lcom/android/systemui/infinity/tangram/Tangram;

    iget v6, v6, Lcom/android/systemui/infinity/tangram/Tangram;->leftImageAlpha:F

    cmpg-float v6, v6, v10

    if-gez v6, :cond_11

    iget-object v6, p0, Lcom/android/systemui/infinity/theme/black/TangramBlackSystem;->h:Lcom/android/systemui/infinity/tangram/Tangram;

    iput v10, v6, Lcom/android/systemui/infinity/tangram/Tangram;->leftImageAlpha:F

    :cond_11
    iget-object v6, p0, Lcom/android/systemui/infinity/theme/black/TangramBlackSystem;->h:Lcom/android/systemui/infinity/tangram/Tangram;

    iget v6, v6, Lcom/android/systemui/infinity/tangram/Tangram;->leftImageAlpha:F

    cmpl-float v6, v6, v9

    if-lez v6, :cond_12

    iget-object v6, p0, Lcom/android/systemui/infinity/theme/black/TangramBlackSystem;->h:Lcom/android/systemui/infinity/tangram/Tangram;

    iput v9, v6, Lcom/android/systemui/infinity/tangram/Tangram;->leftImageAlpha:F

    :cond_12
    iget-object v6, p0, Lcom/android/systemui/infinity/theme/black/TangramBlackSystem;->a:Lcom/android/systemui/infinity/tangram/Tangram;

    iget v6, v6, Lcom/android/systemui/infinity/tangram/Tangram;->rightImageAlpha:F

    cmpg-float v6, v6, v10

    if-gez v6, :cond_13

    iget-object v6, p0, Lcom/android/systemui/infinity/theme/black/TangramBlackSystem;->a:Lcom/android/systemui/infinity/tangram/Tangram;

    iput v10, v6, Lcom/android/systemui/infinity/tangram/Tangram;->rightImageAlpha:F

    :cond_13
    iget-object v6, p0, Lcom/android/systemui/infinity/theme/black/TangramBlackSystem;->a:Lcom/android/systemui/infinity/tangram/Tangram;

    iget v6, v6, Lcom/android/systemui/infinity/tangram/Tangram;->rightImageAlpha:F

    cmpl-float v6, v6, v9

    if-lez v6, :cond_14

    iget-object v6, p0, Lcom/android/systemui/infinity/theme/black/TangramBlackSystem;->a:Lcom/android/systemui/infinity/tangram/Tangram;

    iput v9, v6, Lcom/android/systemui/infinity/tangram/Tangram;->rightImageAlpha:F

    :cond_14
    iget-object v6, p0, Lcom/android/systemui/infinity/theme/black/TangramBlackSystem;->a:Lcom/android/systemui/infinity/tangram/Tangram;

    iget v6, v6, Lcom/android/systemui/infinity/tangram/Tangram;->leftImageAlpha:F

    cmpg-float v6, v6, v10

    if-gez v6, :cond_15

    iget-object v6, p0, Lcom/android/systemui/infinity/theme/black/TangramBlackSystem;->a:Lcom/android/systemui/infinity/tangram/Tangram;

    iput v10, v6, Lcom/android/systemui/infinity/tangram/Tangram;->leftImageAlpha:F

    :cond_15
    iget-object v6, p0, Lcom/android/systemui/infinity/theme/black/TangramBlackSystem;->a:Lcom/android/systemui/infinity/tangram/Tangram;

    iget v6, v6, Lcom/android/systemui/infinity/tangram/Tangram;->leftImageAlpha:F

    cmpl-float v6, v6, v9

    if-lez v6, :cond_16

    iget-object v6, p0, Lcom/android/systemui/infinity/theme/black/TangramBlackSystem;->a:Lcom/android/systemui/infinity/tangram/Tangram;

    iput v9, v6, Lcom/android/systemui/infinity/tangram/Tangram;->leftImageAlpha:F

    :cond_16
    iget-object v6, p0, Lcom/android/systemui/infinity/theme/black/TangramBlackSystem;->j:Lcom/android/systemui/infinity/tangram/Tangram;

    iget v6, v6, Lcom/android/systemui/infinity/tangram/Tangram;->rightImageAlpha:F

    cmpg-float v6, v6, v10

    if-gez v6, :cond_17

    iget-object v6, p0, Lcom/android/systemui/infinity/theme/black/TangramBlackSystem;->j:Lcom/android/systemui/infinity/tangram/Tangram;

    iput v10, v6, Lcom/android/systemui/infinity/tangram/Tangram;->rightImageAlpha:F

    :cond_17
    iget-object v6, p0, Lcom/android/systemui/infinity/theme/black/TangramBlackSystem;->j:Lcom/android/systemui/infinity/tangram/Tangram;

    iget v6, v6, Lcom/android/systemui/infinity/tangram/Tangram;->rightImageAlpha:F

    cmpl-float v6, v6, v9

    if-lez v6, :cond_18

    iget-object v6, p0, Lcom/android/systemui/infinity/theme/black/TangramBlackSystem;->j:Lcom/android/systemui/infinity/tangram/Tangram;

    iput v9, v6, Lcom/android/systemui/infinity/tangram/Tangram;->rightImageAlpha:F

    :cond_18
    iget-object v6, p0, Lcom/android/systemui/infinity/theme/black/TangramBlackSystem;->j:Lcom/android/systemui/infinity/tangram/Tangram;

    iget v6, v6, Lcom/android/systemui/infinity/tangram/Tangram;->leftImageAlpha:F

    cmpg-float v6, v6, v10

    if-gez v6, :cond_19

    iget-object v6, p0, Lcom/android/systemui/infinity/theme/black/TangramBlackSystem;->j:Lcom/android/systemui/infinity/tangram/Tangram;

    iput v10, v6, Lcom/android/systemui/infinity/tangram/Tangram;->leftImageAlpha:F

    :cond_19
    iget-object v6, p0, Lcom/android/systemui/infinity/theme/black/TangramBlackSystem;->j:Lcom/android/systemui/infinity/tangram/Tangram;

    iget v6, v6, Lcom/android/systemui/infinity/tangram/Tangram;->leftImageAlpha:F

    cmpl-float v6, v6, v9

    if-lez v6, :cond_1a

    iget-object v6, p0, Lcom/android/systemui/infinity/theme/black/TangramBlackSystem;->j:Lcom/android/systemui/infinity/tangram/Tangram;

    iput v9, v6, Lcom/android/systemui/infinity/tangram/Tangram;->leftImageAlpha:F

    :cond_1a
    return-void

    :cond_1b
    iget-object v6, p0, Lcom/android/systemui/infinity/theme/black/TangramBlackSystem;->a:Lcom/android/systemui/infinity/tangram/Tangram;

    iget-object v7, p0, Lcom/android/systemui/infinity/theme/black/TangramBlackSystem;->a:Lcom/android/systemui/infinity/tangram/Tangram;

    iget v7, v7, Lcom/android/systemui/infinity/tangram/Tangram;->gyroTx:F

    const v8, 0x3fa28f5c    # 1.27f

    mul-float/2addr v7, v8

    iput v7, v6, Lcom/android/systemui/infinity/tangram/Tangram;->gyroTy:F

    goto/16 :goto_1

    :cond_1c
    iget-object v6, p0, Lcom/android/systemui/infinity/theme/black/TangramBlackSystem;->j:Lcom/android/systemui/infinity/tangram/Tangram;

    iget-object v7, p0, Lcom/android/systemui/infinity/theme/black/TangramBlackSystem;->j:Lcom/android/systemui/infinity/tangram/Tangram;

    iget v7, v7, Lcom/android/systemui/infinity/tangram/Tangram;->gyroTx:F

    const/high16 v8, 0x3fc00000    # 1.5f

    mul-float/2addr v7, v8

    iput v7, v6, Lcom/android/systemui/infinity/tangram/Tangram;->gyroTy:F

    goto/16 :goto_2

    :cond_1d
    iget-object v6, p0, Lcom/android/systemui/infinity/theme/black/TangramBlackSystem;->h:Lcom/android/systemui/infinity/tangram/Tangram;

    iget-object v7, p0, Lcom/android/systemui/infinity/theme/black/TangramBlackSystem;->h:Lcom/android/systemui/infinity/tangram/Tangram;

    iget v7, v7, Lcom/android/systemui/infinity/tangram/Tangram;->gyroTx:F

    const v8, 0x3f666666    # 0.9f

    mul-float/2addr v7, v8

    iput v7, v6, Lcom/android/systemui/infinity/tangram/Tangram;->gyroTy:F

    goto/16 :goto_3
.end method
