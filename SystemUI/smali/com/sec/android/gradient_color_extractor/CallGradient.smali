.class public Lcom/sec/android/gradient_color_extractor/CallGradient;
.super Lcom/sec/android/gradient_color_extractor/GradientColorExtractor;
.source "CallGradient.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/gradient_color_extractor/CallGradient$GradientColorResult;
    }
.end annotation


# static fields
.field static mColorGroup_pallete:[[F

.field static mColor_pallete:[[F

.field static mColor_pallete_for_lockscreen:[[F

.field static mGray_scale_pallete:[[F

.field static mWallPaperColor_highBrightness_pallete:[[F

.field static mWallPaperColor_lowBrightness_pallete:[[F

.field static mWallPaperIndexTable:[I

.field static mWallpaperColor_monotone:[[F


# direct methods
.method static constructor <clinit>()V
    .locals 9

    const/high16 v8, 0x41f00000    # 30.0f

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    new-array v0, v7, [[F

    new-array v1, v7, [F

    const/high16 v2, 0x434d0000    # 205.0f

    aput v2, v1, v4

    const/high16 v2, 0x41880000    # 17.0f

    aput v2, v1, v5

    const/high16 v2, 0x420c0000    # 35.0f

    aput v2, v1, v6

    aput-object v1, v0, v4

    new-array v1, v7, [F

    const/high16 v2, 0x434d0000    # 205.0f

    aput v2, v1, v4

    const/high16 v2, 0x41880000    # 17.0f

    aput v2, v1, v5

    const/high16 v2, 0x42480000    # 50.0f

    aput v2, v1, v6

    aput-object v1, v0, v5

    new-array v1, v7, [F

    const/high16 v2, 0x434d0000    # 205.0f

    aput v2, v1, v4

    const/high16 v2, 0x41500000    # 13.0f

    aput v2, v1, v5

    const/high16 v2, 0x428c0000    # 70.0f

    aput v2, v1, v6

    aput-object v1, v0, v6

    sput-object v0, Lcom/sec/android/gradient_color_extractor/CallGradient;->mGray_scale_pallete:[[F

    const/16 v0, 0x41

    new-array v0, v0, [[F

    new-array v1, v7, [F

    const/high16 v2, 0x40a00000    # 5.0f

    aput v2, v1, v4

    aput v8, v1, v5

    const/high16 v2, 0x429c0000    # 78.0f

    aput v2, v1, v6

    aput-object v1, v0, v4

    new-array v1, v7, [F

    const/high16 v2, 0x41600000    # 14.0f

    aput v2, v1, v4

    aput v8, v1, v5

    const/high16 v2, 0x42960000    # 75.0f

    aput v2, v1, v6

    aput-object v1, v0, v5

    new-array v1, v7, [F

    const/high16 v2, 0x41000000    # 8.0f

    aput v2, v1, v4

    const/high16 v2, 0x42340000    # 45.0f

    aput v2, v1, v5

    const/high16 v2, 0x429a0000    # 77.0f

    aput v2, v1, v6

    aput-object v1, v0, v6

    new-array v1, v7, [F

    const/high16 v2, 0x41880000    # 17.0f

    aput v2, v1, v4

    const/high16 v2, 0x423c0000    # 47.0f

    aput v2, v1, v5

    const/high16 v2, 0x429a0000    # 77.0f

    aput v2, v1, v6

    aput-object v1, v0, v7

    const/4 v1, 0x4

    new-array v2, v7, [F

    const/high16 v3, 0x41c80000    # 25.0f

    aput v3, v2, v4

    aput v8, v2, v5

    const/high16 v3, 0x42900000    # 72.0f

    aput v3, v2, v6

    aput-object v2, v0, v1

    const/4 v1, 0x5

    new-array v2, v7, [F

    const/high16 v3, 0x420c0000    # 35.0f

    aput v3, v2, v4

    aput v8, v2, v5

    const/high16 v3, 0x428c0000    # 70.0f

    aput v3, v2, v6

    aput-object v2, v0, v1

    const/4 v1, 0x6

    new-array v2, v7, [F

    const/high16 v3, 0x42100000    # 36.0f

    aput v3, v2, v4

    const/high16 v3, 0x42200000    # 40.0f

    aput v3, v2, v5

    const/high16 v3, 0x429a0000    # 77.0f

    aput v3, v2, v6

    aput-object v2, v0, v1

    const/4 v1, 0x7

    new-array v2, v7, [F

    const/high16 v3, 0x42340000    # 45.0f

    aput v3, v2, v4

    const/high16 v3, 0x420c0000    # 35.0f

    aput v3, v2, v5

    const/high16 v3, 0x42900000    # 72.0f

    aput v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x8

    new-array v2, v7, [F

    const/high16 v3, 0x425c0000    # 55.0f

    aput v3, v2, v4

    const/high16 v3, 0x42200000    # 40.0f

    aput v3, v2, v5

    const/high16 v3, 0x42900000    # 72.0f

    aput v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x9

    new-array v2, v7, [F

    const/high16 v3, 0x42340000    # 45.0f

    aput v3, v2, v4

    const/high16 v3, 0x42340000    # 45.0f

    aput v3, v2, v5

    const/high16 v3, 0x429c0000    # 78.0f

    aput v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0xa

    new-array v2, v7, [F

    const/high16 v3, 0x428a0000    # 69.0f

    aput v3, v2, v4

    const/high16 v3, 0x42140000    # 37.0f

    aput v3, v2, v5

    const/high16 v3, 0x42940000    # 74.0f

    aput v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0xb

    new-array v2, v7, [F

    const/high16 v3, 0x429c0000    # 78.0f

    aput v3, v2, v4

    const/high16 v3, 0x41e00000    # 28.0f

    aput v3, v2, v5

    const/high16 v3, 0x428c0000    # 70.0f

    aput v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0xc

    new-array v2, v7, [F

    const/high16 v3, 0x42b20000    # 89.0f

    aput v3, v2, v4

    aput v8, v2, v5

    const/high16 v3, 0x429a0000    # 77.0f

    aput v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0xd

    new-array v2, v7, [F

    const/high16 v3, 0x42ce0000    # 103.0f

    aput v3, v2, v4

    aput v8, v2, v5

    const/high16 v3, 0x42960000    # 75.0f

    aput v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0xe

    new-array v2, v7, [F

    const/high16 v3, 0x43070000    # 135.0f

    aput v3, v2, v4

    const/high16 v3, 0x41b80000    # 23.0f

    aput v3, v2, v5

    const/high16 v3, 0x42940000    # 74.0f

    aput v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0xf

    new-array v2, v7, [F

    const/high16 v3, 0x43020000    # 130.0f

    aput v3, v2, v4

    const/high16 v3, 0x42000000    # 32.0f

    aput v3, v2, v5

    const/high16 v3, 0x429a0000    # 77.0f

    aput v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x10

    new-array v2, v7, [F

    const/high16 v3, 0x431b0000    # 155.0f

    aput v3, v2, v4

    const/high16 v3, 0x41c00000    # 24.0f

    aput v3, v2, v5

    const/high16 v3, 0x428c0000    # 70.0f

    aput v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x11

    new-array v2, v7, [F

    const/high16 v3, 0x431b0000    # 155.0f

    aput v3, v2, v4

    const/high16 v3, 0x420c0000    # 35.0f

    aput v3, v2, v5

    const/high16 v3, 0x42940000    # 74.0f

    aput v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x12

    new-array v2, v7, [F

    const/high16 v3, 0x432f0000    # 175.0f

    aput v3, v2, v4

    const/high16 v3, 0x41c80000    # 25.0f

    aput v3, v2, v5

    const/high16 v3, 0x428c0000    # 70.0f

    aput v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x13

    new-array v2, v7, [F

    const/high16 v3, 0x43220000    # 162.0f

    aput v3, v2, v4

    const/high16 v3, 0x420c0000    # 35.0f

    aput v3, v2, v5

    const/high16 v3, 0x42940000    # 74.0f

    aput v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x14

    new-array v2, v7, [F

    const/high16 v3, 0x43320000    # 178.0f

    aput v3, v2, v4

    const/high16 v3, 0x420c0000    # 35.0f

    aput v3, v2, v5

    const/high16 v3, 0x42940000    # 74.0f

    aput v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x15

    new-array v2, v7, [F

    const/high16 v3, 0x43370000    # 183.0f

    aput v3, v2, v4

    const/high16 v3, 0x420c0000    # 35.0f

    aput v3, v2, v5

    const/high16 v3, 0x42960000    # 75.0f

    aput v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x16

    new-array v2, v7, [F

    const/high16 v3, 0x43450000    # 197.0f

    aput v3, v2, v4

    const/high16 v3, 0x420c0000    # 35.0f

    aput v3, v2, v5

    const/high16 v3, 0x42960000    # 75.0f

    aput v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x17

    new-array v2, v7, [F

    const/high16 v3, 0x434d0000    # 205.0f

    aput v3, v2, v4

    const/high16 v3, 0x420c0000    # 35.0f

    aput v3, v2, v5

    const/high16 v3, 0x42960000    # 75.0f

    aput v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x18

    new-array v2, v7, [F

    const/high16 v3, 0x43570000    # 215.0f

    aput v3, v2, v4

    aput v8, v2, v5

    const/high16 v3, 0x429c0000    # 78.0f

    aput v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x19

    new-array v2, v7, [F

    const/high16 v3, 0x435a0000    # 218.0f

    aput v3, v2, v4

    const/high16 v3, 0x41a00000    # 20.0f

    aput v3, v2, v5

    const/high16 v3, 0x42960000    # 75.0f

    aput v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    new-array v2, v7, [F

    const/high16 v3, 0x43610000    # 225.0f

    aput v3, v2, v4

    aput v8, v2, v5

    const/high16 v3, 0x42960000    # 75.0f

    aput v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    new-array v2, v7, [F

    const/high16 v3, 0x43750000    # 245.0f

    aput v3, v2, v4

    const/high16 v3, 0x41c80000    # 25.0f

    aput v3, v2, v5

    const/high16 v3, 0x428c0000    # 70.0f

    aput v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    new-array v2, v7, [F

    const/high16 v3, 0x43820000    # 260.0f

    aput v3, v2, v4

    const/high16 v3, 0x41c80000    # 25.0f

    aput v3, v2, v5

    const/high16 v3, 0x42960000    # 75.0f

    aput v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    new-array v2, v7, [F

    const/high16 v3, 0x43820000    # 260.0f

    aput v3, v2, v4

    aput v8, v2, v5

    const/high16 v3, 0x428c0000    # 70.0f

    aput v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    new-array v2, v7, [F

    const v3, 0x438e8000    # 285.0f

    aput v3, v2, v4

    const/high16 v3, 0x41980000    # 19.0f

    aput v3, v2, v5

    const/high16 v3, 0x428c0000    # 70.0f

    aput v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    new-array v2, v7, [F

    const v3, 0x43938000    # 295.0f

    aput v3, v2, v4

    const/high16 v3, 0x41700000    # 15.0f

    aput v3, v2, v5

    const/high16 v3, 0x428c0000    # 70.0f

    aput v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x20

    new-array v2, v7, [F

    const/high16 v3, 0x439b0000    # 310.0f

    aput v3, v2, v4

    const/high16 v3, 0x41c80000    # 25.0f

    aput v3, v2, v5

    const/high16 v3, 0x428c0000    # 70.0f

    aput v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x21

    new-array v2, v7, [F

    const v3, 0x439d8000    # 315.0f

    aput v3, v2, v4

    const/high16 v3, 0x41b80000    # 23.0f

    aput v3, v2, v5

    const/high16 v3, 0x429a0000    # 77.0f

    aput v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x22

    new-array v2, v7, [F

    const v3, 0x43a28000    # 325.0f

    aput v3, v2, v4

    const/high16 v3, 0x41b80000    # 23.0f

    aput v3, v2, v5

    const/high16 v3, 0x42960000    # 75.0f

    aput v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x23

    new-array v2, v7, [F

    const v3, 0x43a78000    # 335.0f

    aput v3, v2, v4

    const/high16 v3, 0x41e80000    # 29.0f

    aput v3, v2, v5

    const/high16 v3, 0x428c0000    # 70.0f

    aput v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x24

    new-array v2, v7, [F

    const v3, 0x43ac8000    # 345.0f

    aput v3, v2, v4

    const/high16 v3, 0x420c0000    # 35.0f

    aput v3, v2, v5

    const/high16 v3, 0x429a0000    # 77.0f

    aput v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x25

    new-array v2, v7, [F

    const v3, 0x43ac8000    # 345.0f

    aput v3, v2, v4

    const/high16 v3, 0x41b80000    # 23.0f

    aput v3, v2, v5

    const/high16 v3, 0x428c0000    # 70.0f

    aput v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x26

    new-array v2, v7, [F

    const v3, 0x43b28000    # 357.0f

    aput v3, v2, v4

    const/high16 v3, 0x42140000    # 37.0f

    aput v3, v2, v5

    const/high16 v3, 0x429a0000    # 77.0f

    aput v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x27

    new-array v2, v7, [F

    const v3, 0x43b28000    # 357.0f

    aput v3, v2, v4

    const/high16 v3, 0x41c80000    # 25.0f

    aput v3, v2, v5

    const/high16 v3, 0x42920000    # 73.0f

    aput v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x28

    new-array v2, v7, [F

    const/high16 v3, 0x40e00000    # 7.0f

    aput v3, v2, v4

    const/high16 v3, 0x42180000    # 38.0f

    aput v3, v2, v5

    const/high16 v3, 0x42880000    # 68.0f

    aput v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x29

    new-array v2, v7, [F

    const/high16 v3, 0x42680000    # 58.0f

    aput v3, v2, v4

    const/high16 v3, 0x420c0000    # 35.0f

    aput v3, v2, v5

    const/high16 v3, 0x42880000    # 68.0f

    aput v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x2a

    new-array v2, v7, [F

    const/high16 v3, 0x429c0000    # 78.0f

    aput v3, v2, v4

    const/high16 v3, 0x41f80000    # 31.0f

    aput v3, v2, v5

    const/high16 v3, 0x42880000    # 68.0f

    aput v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x2b

    new-array v2, v7, [F

    const/high16 v3, 0x42c20000    # 97.0f

    aput v3, v2, v4

    aput v8, v2, v5

    const/high16 v3, 0x42880000    # 68.0f

    aput v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x2c

    new-array v2, v7, [F

    const/high16 v3, 0x42d20000    # 105.0f

    aput v3, v2, v4

    const/high16 v3, 0x41c00000    # 24.0f

    aput v3, v2, v5

    const/high16 v3, 0x42800000    # 64.0f

    aput v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x2d

    new-array v2, v7, [F

    const/high16 v3, 0x43000000    # 128.0f

    aput v3, v2, v4

    const/high16 v3, 0x41b80000    # 23.0f

    aput v3, v2, v5

    const/high16 v3, 0x42800000    # 64.0f

    aput v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x2e

    new-array v2, v7, [F

    const/high16 v3, 0x430b0000    # 139.0f

    aput v3, v2, v4

    aput v8, v2, v5

    const/high16 v3, 0x428a0000    # 69.0f

    aput v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x2f

    new-array v2, v7, [F

    const/high16 v3, 0x43110000    # 145.0f

    aput v3, v2, v4

    const/high16 v3, 0x41b00000    # 22.0f

    aput v3, v2, v5

    const/high16 v3, 0x428a0000    # 69.0f

    aput v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x30

    new-array v2, v7, [F

    const/high16 v3, 0x431d0000    # 157.0f

    aput v3, v2, v4

    const/high16 v3, 0x42100000    # 36.0f

    aput v3, v2, v5

    const/high16 v3, 0x428a0000    # 69.0f

    aput v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x31

    new-array v2, v7, [F

    const/high16 v3, 0x43250000    # 165.0f

    aput v3, v2, v4

    const/high16 v3, 0x41d00000    # 26.0f

    aput v3, v2, v5

    const/high16 v3, 0x428a0000    # 69.0f

    aput v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x32

    new-array v2, v7, [F

    const/high16 v3, 0x432f0000    # 175.0f

    aput v3, v2, v4

    const/high16 v3, 0x420c0000    # 35.0f

    aput v3, v2, v5

    const/high16 v3, 0x42800000    # 64.0f

    aput v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x33

    new-array v2, v7, [F

    const/high16 v3, 0x43360000    # 182.0f

    aput v3, v2, v4

    const/high16 v3, 0x420c0000    # 35.0f

    aput v3, v2, v5

    const/high16 v3, 0x42880000    # 68.0f

    aput v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x34

    new-array v2, v7, [F

    const/high16 v3, 0x43430000    # 195.0f

    aput v3, v2, v4

    const/high16 v3, 0x42200000    # 40.0f

    aput v3, v2, v5

    const/high16 v3, 0x42880000    # 68.0f

    aput v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x35

    new-array v2, v7, [F

    const/high16 v3, 0x43570000    # 215.0f

    aput v3, v2, v4

    aput v8, v2, v5

    const/high16 v3, 0x42880000    # 68.0f

    aput v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x36

    new-array v2, v7, [F

    const/high16 v3, 0x43610000    # 225.0f

    aput v3, v2, v4

    aput v8, v2, v5

    const/high16 v3, 0x42880000    # 68.0f

    aput v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x37

    new-array v2, v7, [F

    const/high16 v3, 0x43700000    # 240.0f

    aput v3, v2, v4

    const/high16 v3, 0x41d00000    # 26.0f

    aput v3, v2, v5

    const/high16 v3, 0x42880000    # 68.0f

    aput v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x38

    new-array v2, v7, [F

    const/high16 v3, 0x437f0000    # 255.0f

    aput v3, v2, v4

    const/high16 v3, 0x41a00000    # 20.0f

    aput v3, v2, v5

    const/high16 v3, 0x42880000    # 68.0f

    aput v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x39

    new-array v2, v7, [F

    const/high16 v3, 0x43830000    # 262.0f

    aput v3, v2, v4

    aput v8, v2, v5

    const/high16 v3, 0x42880000    # 68.0f

    aput v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x3a

    new-array v2, v7, [F

    const v3, 0x438e8000    # 285.0f

    aput v3, v2, v4

    aput v8, v2, v5

    const/high16 v3, 0x42820000    # 65.0f

    aput v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x3b

    new-array v2, v7, [F

    const v3, 0x43948000    # 297.0f

    aput v3, v2, v4

    const/high16 v3, 0x41900000    # 18.0f

    aput v3, v2, v5

    const/high16 v3, 0x42880000    # 68.0f

    aput v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x3c

    new-array v2, v7, [F

    const v3, 0x439f8000    # 319.0f

    aput v3, v2, v4

    const/high16 v3, 0x41e00000    # 28.0f

    aput v3, v2, v5

    const/high16 v3, 0x42820000    # 65.0f

    aput v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x3d

    new-array v2, v7, [F

    const v3, 0x43988000    # 305.0f

    aput v3, v2, v4

    const/high16 v3, 0x41a00000    # 20.0f

    aput v3, v2, v5

    const/high16 v3, 0x42820000    # 65.0f

    aput v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x3e

    new-array v2, v7, [F

    const/high16 v3, 0x43a90000    # 338.0f

    aput v3, v2, v4

    aput v8, v2, v5

    const/high16 v3, 0x42880000    # 68.0f

    aput v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x3f

    new-array v2, v7, [F

    const v3, 0x43ac8000    # 345.0f

    aput v3, v2, v4

    aput v8, v2, v5

    const/high16 v3, 0x42880000    # 68.0f

    aput v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x40

    new-array v2, v7, [F

    const/high16 v3, 0x43b30000    # 358.0f

    aput v3, v2, v4

    const/high16 v3, 0x41e00000    # 28.0f

    aput v3, v2, v5

    const/high16 v3, 0x42880000    # 68.0f

    aput v3, v2, v6

    aput-object v2, v0, v1

    sput-object v0, Lcom/sec/android/gradient_color_extractor/CallGradient;->mColor_pallete:[[F

    const/16 v0, 0xd

    new-array v0, v0, [[F

    new-array v1, v7, [F

    const/4 v2, 0x0

    aput v2, v1, v4

    const/high16 v2, 0x421c0000    # 39.0f

    aput v2, v1, v5

    const/high16 v2, 0x41a00000    # 20.0f

    aput v2, v1, v6

    aput-object v1, v0, v4

    new-array v1, v7, [F

    const/high16 v2, 0x41a00000    # 20.0f

    aput v2, v1, v4

    const/high16 v2, 0x426c0000    # 59.0f

    aput v2, v1, v5

    const/high16 v2, 0x41a00000    # 20.0f

    aput v2, v1, v6

    aput-object v1, v0, v5

    new-array v1, v7, [F

    const/high16 v2, 0x42200000    # 40.0f

    aput v2, v1, v4

    const/high16 v2, 0x429e0000    # 79.0f

    aput v2, v1, v5

    const/high16 v2, 0x41a00000    # 20.0f

    aput v2, v1, v6

    aput-object v1, v0, v6

    new-array v1, v7, [F

    const/high16 v2, 0x42700000    # 60.0f

    aput v2, v1, v4

    const/high16 v2, 0x42c60000    # 99.0f

    aput v2, v1, v5

    const/high16 v2, 0x41c80000    # 25.0f

    aput v2, v1, v6

    aput-object v1, v0, v7

    const/4 v1, 0x4

    new-array v2, v7, [F

    const/high16 v3, 0x42a00000    # 80.0f

    aput v3, v2, v4

    const/high16 v3, 0x431f0000    # 159.0f

    aput v3, v2, v5

    aput v8, v2, v6

    aput-object v2, v0, v1

    const/4 v1, 0x5

    new-array v2, v7, [F

    const/high16 v3, 0x430c0000    # 140.0f

    aput v3, v2, v4

    const/high16 v3, 0x43330000    # 179.0f

    aput v3, v2, v5

    aput v8, v2, v6

    aput-object v2, v0, v1

    const/4 v1, 0x6

    new-array v2, v7, [F

    const/high16 v3, 0x43200000    # 160.0f

    aput v3, v2, v4

    const/high16 v3, 0x43470000    # 199.0f

    aput v3, v2, v5

    aput v8, v2, v6

    aput-object v2, v0, v1

    const/4 v1, 0x7

    new-array v2, v7, [F

    const/high16 v3, 0x43340000    # 180.0f

    aput v3, v2, v4

    const/high16 v3, 0x435b0000    # 219.0f

    aput v3, v2, v5

    aput v8, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x8

    new-array v2, v7, [F

    const/high16 v3, 0x43480000    # 200.0f

    aput v3, v2, v4

    const v3, 0x43818000    # 259.0f

    aput v3, v2, v5

    aput v8, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x9

    new-array v2, v7, [F

    const/high16 v3, 0x43700000    # 240.0f

    aput v3, v2, v4

    const v3, 0x43818000    # 259.0f

    aput v3, v2, v5

    aput v8, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0xa

    new-array v2, v7, [F

    const/high16 v3, 0x43700000    # 240.0f

    aput v3, v2, v4

    const v3, 0x438b8000    # 279.0f

    aput v3, v2, v5

    aput v8, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0xb

    new-array v2, v7, [F

    const/high16 v3, 0x43820000    # 260.0f

    aput v3, v2, v4

    const v3, 0x43a98000    # 339.0f

    aput v3, v2, v5

    aput v8, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0xc

    new-array v2, v7, [F

    const/high16 v3, 0x43960000    # 300.0f

    aput v3, v2, v4

    const/high16 v3, 0x43b40000    # 360.0f

    aput v3, v2, v5

    aput v8, v2, v6

    aput-object v2, v0, v1

    sput-object v0, Lcom/sec/android/gradient_color_extractor/CallGradient;->mColorGroup_pallete:[[F

    const/16 v0, 0x41

    new-array v0, v0, [[F

    new-array v1, v7, [F

    const/high16 v2, 0x40a00000    # 5.0f

    aput v2, v1, v4

    aput v8, v1, v5

    const/high16 v2, 0x42880000    # 68.0f

    aput v2, v1, v6

    aput-object v1, v0, v4

    new-array v1, v7, [F

    const/high16 v2, 0x41600000    # 14.0f

    aput v2, v1, v4

    aput v8, v1, v5

    const/high16 v2, 0x42820000    # 65.0f

    aput v2, v1, v6

    aput-object v1, v0, v5

    new-array v1, v7, [F

    const/high16 v2, 0x41000000    # 8.0f

    aput v2, v1, v4

    const/high16 v2, 0x42340000    # 45.0f

    aput v2, v1, v5

    const/high16 v2, 0x42860000    # 67.0f

    aput v2, v1, v6

    aput-object v1, v0, v6

    new-array v1, v7, [F

    const/high16 v2, 0x41880000    # 17.0f

    aput v2, v1, v4

    const/high16 v2, 0x423c0000    # 47.0f

    aput v2, v1, v5

    const/high16 v2, 0x42860000    # 67.0f

    aput v2, v1, v6

    aput-object v1, v0, v7

    const/4 v1, 0x4

    new-array v2, v7, [F

    const/high16 v3, 0x41c80000    # 25.0f

    aput v3, v2, v4

    aput v8, v2, v5

    const/high16 v3, 0x42780000    # 62.0f

    aput v3, v2, v6

    aput-object v2, v0, v1

    const/4 v1, 0x5

    new-array v2, v7, [F

    const/high16 v3, 0x420c0000    # 35.0f

    aput v3, v2, v4

    aput v8, v2, v5

    const/high16 v3, 0x42700000    # 60.0f

    aput v3, v2, v6

    aput-object v2, v0, v1

    const/4 v1, 0x6

    new-array v2, v7, [F

    const/high16 v3, 0x42100000    # 36.0f

    aput v3, v2, v4

    const/high16 v3, 0x42200000    # 40.0f

    aput v3, v2, v5

    const/high16 v3, 0x42860000    # 67.0f

    aput v3, v2, v6

    aput-object v2, v0, v1

    const/4 v1, 0x7

    new-array v2, v7, [F

    const/high16 v3, 0x42340000    # 45.0f

    aput v3, v2, v4

    const/high16 v3, 0x420c0000    # 35.0f

    aput v3, v2, v5

    const/high16 v3, 0x42780000    # 62.0f

    aput v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x8

    new-array v2, v7, [F

    const/high16 v3, 0x425c0000    # 55.0f

    aput v3, v2, v4

    const/high16 v3, 0x42200000    # 40.0f

    aput v3, v2, v5

    const/high16 v3, 0x42780000    # 62.0f

    aput v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x9

    new-array v2, v7, [F

    const/high16 v3, 0x42340000    # 45.0f

    aput v3, v2, v4

    const/high16 v3, 0x42340000    # 45.0f

    aput v3, v2, v5

    const/high16 v3, 0x42880000    # 68.0f

    aput v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0xa

    new-array v2, v7, [F

    const/high16 v3, 0x428a0000    # 69.0f

    aput v3, v2, v4

    const/high16 v3, 0x42140000    # 37.0f

    aput v3, v2, v5

    const/high16 v3, 0x42800000    # 64.0f

    aput v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0xb

    new-array v2, v7, [F

    const/high16 v3, 0x429c0000    # 78.0f

    aput v3, v2, v4

    const/high16 v3, 0x41e00000    # 28.0f

    aput v3, v2, v5

    const/high16 v3, 0x42700000    # 60.0f

    aput v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0xc

    new-array v2, v7, [F

    const/high16 v3, 0x42b20000    # 89.0f

    aput v3, v2, v4

    aput v8, v2, v5

    const/high16 v3, 0x42860000    # 67.0f

    aput v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0xd

    new-array v2, v7, [F

    const/high16 v3, 0x42ce0000    # 103.0f

    aput v3, v2, v4

    aput v8, v2, v5

    const/high16 v3, 0x42820000    # 65.0f

    aput v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0xe

    new-array v2, v7, [F

    const/high16 v3, 0x43070000    # 135.0f

    aput v3, v2, v4

    const/high16 v3, 0x41b80000    # 23.0f

    aput v3, v2, v5

    const/high16 v3, 0x42800000    # 64.0f

    aput v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0xf

    new-array v2, v7, [F

    const/high16 v3, 0x43020000    # 130.0f

    aput v3, v2, v4

    const/high16 v3, 0x42000000    # 32.0f

    aput v3, v2, v5

    const/high16 v3, 0x42860000    # 67.0f

    aput v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x10

    new-array v2, v7, [F

    const/high16 v3, 0x431b0000    # 155.0f

    aput v3, v2, v4

    const/high16 v3, 0x41c00000    # 24.0f

    aput v3, v2, v5

    const/high16 v3, 0x42700000    # 60.0f

    aput v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x11

    new-array v2, v7, [F

    const/high16 v3, 0x431b0000    # 155.0f

    aput v3, v2, v4

    const/high16 v3, 0x420c0000    # 35.0f

    aput v3, v2, v5

    const/high16 v3, 0x42800000    # 64.0f

    aput v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x12

    new-array v2, v7, [F

    const/high16 v3, 0x432f0000    # 175.0f

    aput v3, v2, v4

    const/high16 v3, 0x41c80000    # 25.0f

    aput v3, v2, v5

    const/high16 v3, 0x42700000    # 60.0f

    aput v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x13

    new-array v2, v7, [F

    const/high16 v3, 0x43220000    # 162.0f

    aput v3, v2, v4

    const/high16 v3, 0x420c0000    # 35.0f

    aput v3, v2, v5

    const/high16 v3, 0x42800000    # 64.0f

    aput v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x14

    new-array v2, v7, [F

    const/high16 v3, 0x43320000    # 178.0f

    aput v3, v2, v4

    const/high16 v3, 0x420c0000    # 35.0f

    aput v3, v2, v5

    const/high16 v3, 0x42800000    # 64.0f

    aput v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x15

    new-array v2, v7, [F

    const/high16 v3, 0x43370000    # 183.0f

    aput v3, v2, v4

    const/high16 v3, 0x420c0000    # 35.0f

    aput v3, v2, v5

    const/high16 v3, 0x42820000    # 65.0f

    aput v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x16

    new-array v2, v7, [F

    const/high16 v3, 0x43450000    # 197.0f

    aput v3, v2, v4

    const/high16 v3, 0x420c0000    # 35.0f

    aput v3, v2, v5

    const/high16 v3, 0x42820000    # 65.0f

    aput v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x17

    new-array v2, v7, [F

    const/high16 v3, 0x434d0000    # 205.0f

    aput v3, v2, v4

    const/high16 v3, 0x420c0000    # 35.0f

    aput v3, v2, v5

    const/high16 v3, 0x42820000    # 65.0f

    aput v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x18

    new-array v2, v7, [F

    const/high16 v3, 0x43570000    # 215.0f

    aput v3, v2, v4

    aput v8, v2, v5

    const/high16 v3, 0x42880000    # 68.0f

    aput v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x19

    new-array v2, v7, [F

    const/high16 v3, 0x435a0000    # 218.0f

    aput v3, v2, v4

    const/high16 v3, 0x41a00000    # 20.0f

    aput v3, v2, v5

    const/high16 v3, 0x42820000    # 65.0f

    aput v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    new-array v2, v7, [F

    const/high16 v3, 0x43610000    # 225.0f

    aput v3, v2, v4

    aput v8, v2, v5

    const/high16 v3, 0x42820000    # 65.0f

    aput v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    new-array v2, v7, [F

    const/high16 v3, 0x43750000    # 245.0f

    aput v3, v2, v4

    const/high16 v3, 0x41c80000    # 25.0f

    aput v3, v2, v5

    const/high16 v3, 0x42700000    # 60.0f

    aput v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    new-array v2, v7, [F

    const/high16 v3, 0x43820000    # 260.0f

    aput v3, v2, v4

    const/high16 v3, 0x41c80000    # 25.0f

    aput v3, v2, v5

    const/high16 v3, 0x42820000    # 65.0f

    aput v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    new-array v2, v7, [F

    const/high16 v3, 0x43820000    # 260.0f

    aput v3, v2, v4

    aput v8, v2, v5

    const/high16 v3, 0x42700000    # 60.0f

    aput v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    new-array v2, v7, [F

    const v3, 0x438e8000    # 285.0f

    aput v3, v2, v4

    const/high16 v3, 0x41980000    # 19.0f

    aput v3, v2, v5

    const/high16 v3, 0x42700000    # 60.0f

    aput v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    new-array v2, v7, [F

    const v3, 0x43938000    # 295.0f

    aput v3, v2, v4

    const/high16 v3, 0x41700000    # 15.0f

    aput v3, v2, v5

    const/high16 v3, 0x42700000    # 60.0f

    aput v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x20

    new-array v2, v7, [F

    const/high16 v3, 0x439b0000    # 310.0f

    aput v3, v2, v4

    const/high16 v3, 0x41c80000    # 25.0f

    aput v3, v2, v5

    const/high16 v3, 0x42700000    # 60.0f

    aput v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x21

    new-array v2, v7, [F

    const v3, 0x439d8000    # 315.0f

    aput v3, v2, v4

    const/high16 v3, 0x41b80000    # 23.0f

    aput v3, v2, v5

    const/high16 v3, 0x42860000    # 67.0f

    aput v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x22

    new-array v2, v7, [F

    const v3, 0x43a28000    # 325.0f

    aput v3, v2, v4

    const/high16 v3, 0x41b80000    # 23.0f

    aput v3, v2, v5

    const/high16 v3, 0x42820000    # 65.0f

    aput v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x23

    new-array v2, v7, [F

    const v3, 0x43a78000    # 335.0f

    aput v3, v2, v4

    const/high16 v3, 0x41e80000    # 29.0f

    aput v3, v2, v5

    const/high16 v3, 0x42700000    # 60.0f

    aput v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x24

    new-array v2, v7, [F

    const v3, 0x43ac8000    # 345.0f

    aput v3, v2, v4

    const/high16 v3, 0x420c0000    # 35.0f

    aput v3, v2, v5

    const/high16 v3, 0x42860000    # 67.0f

    aput v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x25

    new-array v2, v7, [F

    const v3, 0x43ac8000    # 345.0f

    aput v3, v2, v4

    const/high16 v3, 0x41b80000    # 23.0f

    aput v3, v2, v5

    const/high16 v3, 0x42700000    # 60.0f

    aput v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x26

    new-array v2, v7, [F

    const v3, 0x43b28000    # 357.0f

    aput v3, v2, v4

    const/high16 v3, 0x42140000    # 37.0f

    aput v3, v2, v5

    const/high16 v3, 0x42860000    # 67.0f

    aput v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x27

    new-array v2, v7, [F

    const v3, 0x43b28000    # 357.0f

    aput v3, v2, v4

    const/high16 v3, 0x41c80000    # 25.0f

    aput v3, v2, v5

    const/high16 v3, 0x427c0000    # 63.0f

    aput v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x28

    new-array v2, v7, [F

    const/high16 v3, 0x40e00000    # 7.0f

    aput v3, v2, v4

    const/high16 v3, 0x42180000    # 38.0f

    aput v3, v2, v5

    const/high16 v3, 0x42680000    # 58.0f

    aput v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x29

    new-array v2, v7, [F

    const/high16 v3, 0x42680000    # 58.0f

    aput v3, v2, v4

    const/high16 v3, 0x420c0000    # 35.0f

    aput v3, v2, v5

    const/high16 v3, 0x42680000    # 58.0f

    aput v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x2a

    new-array v2, v7, [F

    const/high16 v3, 0x429c0000    # 78.0f

    aput v3, v2, v4

    const/high16 v3, 0x41f80000    # 31.0f

    aput v3, v2, v5

    const/high16 v3, 0x42680000    # 58.0f

    aput v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x2b

    new-array v2, v7, [F

    const/high16 v3, 0x42c20000    # 97.0f

    aput v3, v2, v4

    aput v8, v2, v5

    const/high16 v3, 0x42680000    # 58.0f

    aput v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x2c

    new-array v2, v7, [F

    const/high16 v3, 0x42d20000    # 105.0f

    aput v3, v2, v4

    const/high16 v3, 0x41c00000    # 24.0f

    aput v3, v2, v5

    const/high16 v3, 0x42580000    # 54.0f

    aput v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x2d

    new-array v2, v7, [F

    const/high16 v3, 0x43000000    # 128.0f

    aput v3, v2, v4

    const/high16 v3, 0x41b80000    # 23.0f

    aput v3, v2, v5

    const/high16 v3, 0x42580000    # 54.0f

    aput v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x2e

    new-array v2, v7, [F

    const/high16 v3, 0x430b0000    # 139.0f

    aput v3, v2, v4

    aput v8, v2, v5

    const/high16 v3, 0x426c0000    # 59.0f

    aput v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x2f

    new-array v2, v7, [F

    const/high16 v3, 0x43110000    # 145.0f

    aput v3, v2, v4

    const/high16 v3, 0x41b00000    # 22.0f

    aput v3, v2, v5

    const/high16 v3, 0x426c0000    # 59.0f

    aput v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x30

    new-array v2, v7, [F

    const/high16 v3, 0x431d0000    # 157.0f

    aput v3, v2, v4

    const/high16 v3, 0x42100000    # 36.0f

    aput v3, v2, v5

    const/high16 v3, 0x426c0000    # 59.0f

    aput v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x31

    new-array v2, v7, [F

    const/high16 v3, 0x43250000    # 165.0f

    aput v3, v2, v4

    const/high16 v3, 0x41d00000    # 26.0f

    aput v3, v2, v5

    const/high16 v3, 0x426c0000    # 59.0f

    aput v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x32

    new-array v2, v7, [F

    const/high16 v3, 0x432f0000    # 175.0f

    aput v3, v2, v4

    const/high16 v3, 0x420c0000    # 35.0f

    aput v3, v2, v5

    const/high16 v3, 0x42580000    # 54.0f

    aput v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x33

    new-array v2, v7, [F

    const/high16 v3, 0x43360000    # 182.0f

    aput v3, v2, v4

    const/high16 v3, 0x420c0000    # 35.0f

    aput v3, v2, v5

    const/high16 v3, 0x42680000    # 58.0f

    aput v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x34

    new-array v2, v7, [F

    const/high16 v3, 0x43430000    # 195.0f

    aput v3, v2, v4

    const/high16 v3, 0x42200000    # 40.0f

    aput v3, v2, v5

    const/high16 v3, 0x42680000    # 58.0f

    aput v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x35

    new-array v2, v7, [F

    const/high16 v3, 0x43570000    # 215.0f

    aput v3, v2, v4

    aput v8, v2, v5

    const/high16 v3, 0x42680000    # 58.0f

    aput v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x36

    new-array v2, v7, [F

    const/high16 v3, 0x43610000    # 225.0f

    aput v3, v2, v4

    aput v8, v2, v5

    const/high16 v3, 0x42680000    # 58.0f

    aput v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x37

    new-array v2, v7, [F

    const/high16 v3, 0x43700000    # 240.0f

    aput v3, v2, v4

    const/high16 v3, 0x41d00000    # 26.0f

    aput v3, v2, v5

    const/high16 v3, 0x42680000    # 58.0f

    aput v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x38

    new-array v2, v7, [F

    const/high16 v3, 0x437f0000    # 255.0f

    aput v3, v2, v4

    const/high16 v3, 0x41a00000    # 20.0f

    aput v3, v2, v5

    const/high16 v3, 0x42680000    # 58.0f

    aput v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x39

    new-array v2, v7, [F

    const/high16 v3, 0x43830000    # 262.0f

    aput v3, v2, v4

    aput v8, v2, v5

    const/high16 v3, 0x42680000    # 58.0f

    aput v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x3a

    new-array v2, v7, [F

    const v3, 0x438e8000    # 285.0f

    aput v3, v2, v4

    aput v8, v2, v5

    const/high16 v3, 0x425c0000    # 55.0f

    aput v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x3b

    new-array v2, v7, [F

    const v3, 0x43948000    # 297.0f

    aput v3, v2, v4

    const/high16 v3, 0x41900000    # 18.0f

    aput v3, v2, v5

    const/high16 v3, 0x42680000    # 58.0f

    aput v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x3c

    new-array v2, v7, [F

    const v3, 0x439f8000    # 319.0f

    aput v3, v2, v4

    const/high16 v3, 0x41e00000    # 28.0f

    aput v3, v2, v5

    const/high16 v3, 0x425c0000    # 55.0f

    aput v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x3d

    new-array v2, v7, [F

    const v3, 0x43988000    # 305.0f

    aput v3, v2, v4

    const/high16 v3, 0x41a00000    # 20.0f

    aput v3, v2, v5

    const/high16 v3, 0x425c0000    # 55.0f

    aput v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x3e

    new-array v2, v7, [F

    const/high16 v3, 0x43a90000    # 338.0f

    aput v3, v2, v4

    aput v8, v2, v5

    const/high16 v3, 0x42680000    # 58.0f

    aput v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x3f

    new-array v2, v7, [F

    const v3, 0x43ac8000    # 345.0f

    aput v3, v2, v4

    aput v8, v2, v5

    const/high16 v3, 0x42680000    # 58.0f

    aput v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x40

    new-array v2, v7, [F

    const/high16 v3, 0x43b30000    # 358.0f

    aput v3, v2, v4

    const/high16 v3, 0x41e00000    # 28.0f

    aput v3, v2, v5

    const/high16 v3, 0x42680000    # 58.0f

    aput v3, v2, v6

    aput-object v2, v0, v1

    sput-object v0, Lcom/sec/android/gradient_color_extractor/CallGradient;->mColor_pallete_for_lockscreen:[[F

    const/16 v0, 0x26

    new-array v0, v0, [[F

    new-array v1, v7, [F

    const/high16 v2, 0x40000000    # 2.0f

    aput v2, v1, v4

    const/high16 v2, 0x42480000    # 50.0f

    aput v2, v1, v5

    const/high16 v2, 0x42700000    # 60.0f

    aput v2, v1, v6

    aput-object v1, v0, v4

    new-array v1, v7, [F

    const/high16 v2, 0x41700000    # 15.0f

    aput v2, v1, v4

    const/high16 v2, 0x41a00000    # 20.0f

    aput v2, v1, v5

    const/high16 v2, 0x41a00000    # 20.0f

    aput v2, v1, v6

    aput-object v1, v0, v5

    new-array v1, v7, [F

    const/high16 v2, 0x41880000    # 17.0f

    aput v2, v1, v4

    const/high16 v2, 0x42480000    # 50.0f

    aput v2, v1, v5

    const/high16 v2, 0x42820000    # 65.0f

    aput v2, v1, v6

    aput-object v1, v0, v6

    new-array v1, v7, [F

    const/high16 v2, 0x420c0000    # 35.0f

    aput v2, v1, v4

    const/high16 v2, 0x41c80000    # 25.0f

    aput v2, v1, v5

    const/high16 v2, 0x41a00000    # 20.0f

    aput v2, v1, v6

    aput-object v1, v0, v7

    const/4 v1, 0x4

    new-array v2, v7, [F

    const/high16 v3, 0x41880000    # 17.0f

    aput v3, v2, v4

    const/high16 v3, 0x42480000    # 50.0f

    aput v3, v2, v5

    const/high16 v3, 0x42820000    # 65.0f

    aput v3, v2, v6

    aput-object v2, v0, v1

    const/4 v1, 0x5

    new-array v2, v7, [F

    const/high16 v3, 0x420c0000    # 35.0f

    aput v3, v2, v4

    const/high16 v3, 0x41c80000    # 25.0f

    aput v3, v2, v5

    const/high16 v3, 0x41a00000    # 20.0f

    aput v3, v2, v6

    aput-object v2, v0, v1

    const/4 v1, 0x6

    new-array v2, v7, [F

    const/high16 v3, 0x42340000    # 45.0f

    aput v3, v2, v4

    const/high16 v3, 0x42700000    # 60.0f

    aput v3, v2, v5

    const/high16 v3, 0x42700000    # 60.0f

    aput v3, v2, v6

    aput-object v2, v0, v1

    const/4 v1, 0x7

    new-array v2, v7, [F

    const/high16 v3, 0x42960000    # 75.0f

    aput v3, v2, v4

    const/high16 v3, 0x41a00000    # 20.0f

    aput v3, v2, v5

    const/high16 v3, 0x41a00000    # 20.0f

    aput v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x8

    new-array v2, v7, [F

    const/high16 v3, 0x42340000    # 45.0f

    aput v3, v2, v4

    const/high16 v3, 0x42700000    # 60.0f

    aput v3, v2, v5

    const/high16 v3, 0x42700000    # 60.0f

    aput v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x9

    new-array v2, v7, [F

    const/high16 v3, 0x42960000    # 75.0f

    aput v3, v2, v4

    const/high16 v3, 0x41a00000    # 20.0f

    aput v3, v2, v5

    const/high16 v3, 0x41a00000    # 20.0f

    aput v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0xa

    new-array v2, v7, [F

    const/high16 v3, 0x42b40000    # 90.0f

    aput v3, v2, v4

    const/high16 v3, 0x42340000    # 45.0f

    aput v3, v2, v5

    const/high16 v3, 0x42480000    # 50.0f

    aput v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0xb

    new-array v2, v7, [F

    const/high16 v3, 0x42d20000    # 105.0f

    aput v3, v2, v4

    const/high16 v3, 0x41a00000    # 20.0f

    aput v3, v2, v5

    const/high16 v3, 0x41a00000    # 20.0f

    aput v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0xc

    new-array v2, v7, [F

    const/high16 v3, 0x42b40000    # 90.0f

    aput v3, v2, v4

    const/high16 v3, 0x42340000    # 45.0f

    aput v3, v2, v5

    const/high16 v3, 0x42480000    # 50.0f

    aput v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0xd

    new-array v2, v7, [F

    const/high16 v3, 0x42d20000    # 105.0f

    aput v3, v2, v4

    const/high16 v3, 0x41a00000    # 20.0f

    aput v3, v2, v5

    const/high16 v3, 0x41a00000    # 20.0f

    aput v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0xe

    new-array v2, v7, [F

    const/high16 v3, 0x43000000    # 128.0f

    aput v3, v2, v4

    const/high16 v3, 0x42340000    # 45.0f

    aput v3, v2, v5

    const/high16 v3, 0x42480000    # 50.0f

    aput v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0xf

    new-array v2, v7, [F

    const/high16 v3, 0x43160000    # 150.0f

    aput v3, v2, v4

    const/high16 v3, 0x41a00000    # 20.0f

    aput v3, v2, v5

    const/high16 v3, 0x41a00000    # 20.0f

    aput v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x10

    new-array v2, v7, [F

    const/high16 v3, 0x43000000    # 128.0f

    aput v3, v2, v4

    const/high16 v3, 0x42340000    # 45.0f

    aput v3, v2, v5

    const/high16 v3, 0x42480000    # 50.0f

    aput v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x11

    new-array v2, v7, [F

    const/high16 v3, 0x43160000    # 150.0f

    aput v3, v2, v4

    const/high16 v3, 0x41a00000    # 20.0f

    aput v3, v2, v5

    const/high16 v3, 0x41a00000    # 20.0f

    aput v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x12

    new-array v2, v7, [F

    const/high16 v3, 0x432a0000    # 170.0f

    aput v3, v2, v4

    const/high16 v3, 0x425c0000    # 55.0f

    aput v3, v2, v5

    const/high16 v3, 0x42480000    # 50.0f

    aput v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x13

    new-array v2, v7, [F

    const/high16 v3, 0x433e0000    # 190.0f

    aput v3, v2, v4

    aput v8, v2, v5

    const/high16 v3, 0x41a00000    # 20.0f

    aput v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x14

    new-array v2, v7, [F

    const/high16 v3, 0x432a0000    # 170.0f

    aput v3, v2, v4

    const/high16 v3, 0x425c0000    # 55.0f

    aput v3, v2, v5

    const/high16 v3, 0x42480000    # 50.0f

    aput v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x15

    new-array v2, v7, [F

    const/high16 v3, 0x433e0000    # 190.0f

    aput v3, v2, v4

    aput v8, v2, v5

    const/high16 v3, 0x41a00000    # 20.0f

    aput v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x16

    new-array v2, v7, [F

    const/high16 v3, 0x433c0000    # 188.0f

    aput v3, v2, v4

    const/high16 v3, 0x428c0000    # 70.0f

    aput v3, v2, v5

    const/high16 v3, 0x425c0000    # 55.0f

    aput v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x17

    new-array v2, v7, [F

    const/high16 v3, 0x43530000    # 211.0f

    aput v3, v2, v4

    const/high16 v3, 0x42200000    # 40.0f

    aput v3, v2, v5

    const/high16 v3, 0x420c0000    # 35.0f

    aput v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x18

    new-array v2, v7, [F

    const/high16 v3, 0x433c0000    # 188.0f

    aput v3, v2, v4

    const/high16 v3, 0x428c0000    # 70.0f

    aput v3, v2, v5

    const/high16 v3, 0x425c0000    # 55.0f

    aput v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x19

    new-array v2, v7, [F

    const/high16 v3, 0x43530000    # 211.0f

    aput v3, v2, v4

    const/high16 v3, 0x42200000    # 40.0f

    aput v3, v2, v5

    const/high16 v3, 0x420c0000    # 35.0f

    aput v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    new-array v2, v7, [F

    const/high16 v3, 0x437f0000    # 255.0f

    aput v3, v2, v4

    const/high16 v3, 0x425c0000    # 55.0f

    aput v3, v2, v5

    const/high16 v3, 0x42480000    # 50.0f

    aput v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    new-array v2, v7, [F

    const v3, 0x43898000    # 275.0f

    aput v3, v2, v4

    aput v8, v2, v5

    const/high16 v3, 0x41a00000    # 20.0f

    aput v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    new-array v2, v7, [F

    const/high16 v3, 0x437f0000    # 255.0f

    aput v3, v2, v4

    const/high16 v3, 0x425c0000    # 55.0f

    aput v3, v2, v5

    const/high16 v3, 0x42480000    # 50.0f

    aput v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    new-array v2, v7, [F

    const v3, 0x43898000    # 275.0f

    aput v3, v2, v4

    aput v8, v2, v5

    const/high16 v3, 0x41a00000    # 20.0f

    aput v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    new-array v2, v7, [F

    const v3, 0x43938000    # 295.0f

    aput v3, v2, v4

    const/high16 v3, 0x425c0000    # 55.0f

    aput v3, v2, v5

    const/high16 v3, 0x42480000    # 50.0f

    aput v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    new-array v2, v7, [F

    const v3, 0x439d8000    # 315.0f

    aput v3, v2, v4

    aput v8, v2, v5

    const/high16 v3, 0x41a00000    # 20.0f

    aput v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x20

    new-array v2, v7, [F

    const v3, 0x43938000    # 295.0f

    aput v3, v2, v4

    const/high16 v3, 0x425c0000    # 55.0f

    aput v3, v2, v5

    const/high16 v3, 0x42480000    # 50.0f

    aput v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x21

    new-array v2, v7, [F

    const v3, 0x439d8000    # 315.0f

    aput v3, v2, v4

    aput v8, v2, v5

    const/high16 v3, 0x41a00000    # 20.0f

    aput v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x22

    new-array v2, v7, [F

    const/high16 v3, 0x43a90000    # 338.0f

    aput v3, v2, v4

    const/high16 v3, 0x425c0000    # 55.0f

    aput v3, v2, v5

    const/high16 v3, 0x42540000    # 53.0f

    aput v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x23

    new-array v2, v7, [F

    const v3, 0x43b18000    # 355.0f

    aput v3, v2, v4

    const/high16 v3, 0x41c80000    # 25.0f

    aput v3, v2, v5

    const/high16 v3, 0x41a00000    # 20.0f

    aput v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x24

    new-array v2, v7, [F

    const/high16 v3, 0x43a90000    # 338.0f

    aput v3, v2, v4

    const/high16 v3, 0x425c0000    # 55.0f

    aput v3, v2, v5

    const/high16 v3, 0x42540000    # 53.0f

    aput v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x25

    new-array v2, v7, [F

    const v3, 0x43b18000    # 355.0f

    aput v3, v2, v4

    const/high16 v3, 0x41c80000    # 25.0f

    aput v3, v2, v5

    const/high16 v3, 0x41a00000    # 20.0f

    aput v3, v2, v6

    aput-object v2, v0, v1

    sput-object v0, Lcom/sec/android/gradient_color_extractor/CallGradient;->mWallPaperColor_highBrightness_pallete:[[F

    const/16 v0, 0x26

    new-array v0, v0, [[F

    new-array v1, v7, [F

    const/high16 v2, 0x40000000    # 2.0f

    aput v2, v1, v4

    aput v8, v1, v5

    const/high16 v2, 0x42700000    # 60.0f

    aput v2, v1, v6

    aput-object v1, v0, v4

    new-array v1, v7, [F

    const/high16 v2, 0x41700000    # 15.0f

    aput v2, v1, v4

    const/high16 v2, 0x41a00000    # 20.0f

    aput v2, v1, v5

    const/high16 v2, 0x41a00000    # 20.0f

    aput v2, v1, v6

    aput-object v1, v0, v5

    new-array v1, v7, [F

    const/high16 v2, 0x41880000    # 17.0f

    aput v2, v1, v4

    aput v8, v1, v5

    const/high16 v2, 0x42820000    # 65.0f

    aput v2, v1, v6

    aput-object v1, v0, v6

    new-array v1, v7, [F

    const/high16 v2, 0x420c0000    # 35.0f

    aput v2, v1, v4

    const/high16 v2, 0x41c80000    # 25.0f

    aput v2, v1, v5

    const/high16 v2, 0x41a00000    # 20.0f

    aput v2, v1, v6

    aput-object v1, v0, v7

    const/4 v1, 0x4

    new-array v2, v7, [F

    const/high16 v3, 0x41880000    # 17.0f

    aput v3, v2, v4

    aput v8, v2, v5

    const/high16 v3, 0x42820000    # 65.0f

    aput v3, v2, v6

    aput-object v2, v0, v1

    const/4 v1, 0x5

    new-array v2, v7, [F

    const/high16 v3, 0x420c0000    # 35.0f

    aput v3, v2, v4

    const/high16 v3, 0x41c80000    # 25.0f

    aput v3, v2, v5

    const/high16 v3, 0x41a00000    # 20.0f

    aput v3, v2, v6

    aput-object v2, v0, v1

    const/4 v1, 0x6

    new-array v2, v7, [F

    const/high16 v3, 0x42340000    # 45.0f

    aput v3, v2, v4

    aput v8, v2, v5

    const/high16 v3, 0x42700000    # 60.0f

    aput v3, v2, v6

    aput-object v2, v0, v1

    const/4 v1, 0x7

    new-array v2, v7, [F

    const/high16 v3, 0x42960000    # 75.0f

    aput v3, v2, v4

    const/high16 v3, 0x41a00000    # 20.0f

    aput v3, v2, v5

    const/high16 v3, 0x41a00000    # 20.0f

    aput v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x8

    new-array v2, v7, [F

    const/high16 v3, 0x42340000    # 45.0f

    aput v3, v2, v4

    aput v8, v2, v5

    const/high16 v3, 0x42700000    # 60.0f

    aput v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x9

    new-array v2, v7, [F

    const/high16 v3, 0x42960000    # 75.0f

    aput v3, v2, v4

    const/high16 v3, 0x41a00000    # 20.0f

    aput v3, v2, v5

    const/high16 v3, 0x41a00000    # 20.0f

    aput v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0xa

    new-array v2, v7, [F

    const/high16 v3, 0x42b40000    # 90.0f

    aput v3, v2, v4

    aput v8, v2, v5

    const/high16 v3, 0x42480000    # 50.0f

    aput v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0xb

    new-array v2, v7, [F

    const/high16 v3, 0x42d20000    # 105.0f

    aput v3, v2, v4

    const/high16 v3, 0x41a00000    # 20.0f

    aput v3, v2, v5

    const/high16 v3, 0x41a00000    # 20.0f

    aput v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0xc

    new-array v2, v7, [F

    const/high16 v3, 0x42b40000    # 90.0f

    aput v3, v2, v4

    aput v8, v2, v5

    const/high16 v3, 0x42480000    # 50.0f

    aput v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0xd

    new-array v2, v7, [F

    const/high16 v3, 0x42d20000    # 105.0f

    aput v3, v2, v4

    const/high16 v3, 0x41a00000    # 20.0f

    aput v3, v2, v5

    const/high16 v3, 0x41a00000    # 20.0f

    aput v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0xe

    new-array v2, v7, [F

    const/high16 v3, 0x43000000    # 128.0f

    aput v3, v2, v4

    aput v8, v2, v5

    const/high16 v3, 0x42480000    # 50.0f

    aput v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0xf

    new-array v2, v7, [F

    const/high16 v3, 0x43160000    # 150.0f

    aput v3, v2, v4

    const/high16 v3, 0x41a00000    # 20.0f

    aput v3, v2, v5

    const/high16 v3, 0x41a00000    # 20.0f

    aput v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x10

    new-array v2, v7, [F

    const/high16 v3, 0x43000000    # 128.0f

    aput v3, v2, v4

    aput v8, v2, v5

    const/high16 v3, 0x42480000    # 50.0f

    aput v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x11

    new-array v2, v7, [F

    const/high16 v3, 0x43160000    # 150.0f

    aput v3, v2, v4

    const/high16 v3, 0x41a00000    # 20.0f

    aput v3, v2, v5

    const/high16 v3, 0x41a00000    # 20.0f

    aput v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x12

    new-array v2, v7, [F

    const/high16 v3, 0x432a0000    # 170.0f

    aput v3, v2, v4

    aput v8, v2, v5

    const/high16 v3, 0x42480000    # 50.0f

    aput v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x13

    new-array v2, v7, [F

    const/high16 v3, 0x433e0000    # 190.0f

    aput v3, v2, v4

    aput v8, v2, v5

    const/high16 v3, 0x41a00000    # 20.0f

    aput v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x14

    new-array v2, v7, [F

    const/high16 v3, 0x432a0000    # 170.0f

    aput v3, v2, v4

    aput v8, v2, v5

    const/high16 v3, 0x42480000    # 50.0f

    aput v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x15

    new-array v2, v7, [F

    const/high16 v3, 0x433e0000    # 190.0f

    aput v3, v2, v4

    aput v8, v2, v5

    const/high16 v3, 0x41a00000    # 20.0f

    aput v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x16

    new-array v2, v7, [F

    const/high16 v3, 0x433c0000    # 188.0f

    aput v3, v2, v4

    const/high16 v3, 0x42200000    # 40.0f

    aput v3, v2, v5

    const/high16 v3, 0x425c0000    # 55.0f

    aput v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x17

    new-array v2, v7, [F

    const/high16 v3, 0x435d0000    # 221.0f

    aput v3, v2, v4

    const/high16 v3, 0x42200000    # 40.0f

    aput v3, v2, v5

    const/high16 v3, 0x420c0000    # 35.0f

    aput v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x18

    new-array v2, v7, [F

    const/high16 v3, 0x433c0000    # 188.0f

    aput v3, v2, v4

    const/high16 v3, 0x42200000    # 40.0f

    aput v3, v2, v5

    const/high16 v3, 0x425c0000    # 55.0f

    aput v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x19

    new-array v2, v7, [F

    const/high16 v3, 0x435d0000    # 221.0f

    aput v3, v2, v4

    const/high16 v3, 0x42200000    # 40.0f

    aput v3, v2, v5

    const/high16 v3, 0x420c0000    # 35.0f

    aput v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    new-array v2, v7, [F

    const/high16 v3, 0x437f0000    # 255.0f

    aput v3, v2, v4

    aput v8, v2, v5

    const/high16 v3, 0x42480000    # 50.0f

    aput v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    new-array v2, v7, [F

    const v3, 0x43898000    # 275.0f

    aput v3, v2, v4

    aput v8, v2, v5

    const/high16 v3, 0x41a00000    # 20.0f

    aput v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    new-array v2, v7, [F

    const/high16 v3, 0x437f0000    # 255.0f

    aput v3, v2, v4

    aput v8, v2, v5

    const/high16 v3, 0x42480000    # 50.0f

    aput v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    new-array v2, v7, [F

    const v3, 0x43898000    # 275.0f

    aput v3, v2, v4

    aput v8, v2, v5

    const/high16 v3, 0x41a00000    # 20.0f

    aput v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    new-array v2, v7, [F

    const v3, 0x43938000    # 295.0f

    aput v3, v2, v4

    aput v8, v2, v5

    const/high16 v3, 0x42480000    # 50.0f

    aput v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    new-array v2, v7, [F

    const v3, 0x439d8000    # 315.0f

    aput v3, v2, v4

    aput v8, v2, v5

    const/high16 v3, 0x41a00000    # 20.0f

    aput v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x20

    new-array v2, v7, [F

    const v3, 0x43938000    # 295.0f

    aput v3, v2, v4

    aput v8, v2, v5

    const/high16 v3, 0x42480000    # 50.0f

    aput v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x21

    new-array v2, v7, [F

    const v3, 0x439d8000    # 315.0f

    aput v3, v2, v4

    aput v8, v2, v5

    const/high16 v3, 0x41a00000    # 20.0f

    aput v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x22

    new-array v2, v7, [F

    const/high16 v3, 0x43a90000    # 338.0f

    aput v3, v2, v4

    aput v8, v2, v5

    const/high16 v3, 0x42540000    # 53.0f

    aput v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x23

    new-array v2, v7, [F

    const v3, 0x43b18000    # 355.0f

    aput v3, v2, v4

    const/high16 v3, 0x41c80000    # 25.0f

    aput v3, v2, v5

    const/high16 v3, 0x41a00000    # 20.0f

    aput v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x24

    new-array v2, v7, [F

    const/high16 v3, 0x43a90000    # 338.0f

    aput v3, v2, v4

    aput v8, v2, v5

    const/high16 v3, 0x42540000    # 53.0f

    aput v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x25

    new-array v2, v7, [F

    const v3, 0x43b18000    # 355.0f

    aput v3, v2, v4

    const/high16 v3, 0x41c80000    # 25.0f

    aput v3, v2, v5

    const/high16 v3, 0x41a00000    # 20.0f

    aput v3, v2, v6

    aput-object v2, v0, v1

    sput-object v0, Lcom/sec/android/gradient_color_extractor/CallGradient;->mWallPaperColor_lowBrightness_pallete:[[F

    new-array v0, v6, [[F

    new-array v1, v7, [F

    const/high16 v2, 0x434d0000    # 205.0f

    aput v2, v1, v4

    const/high16 v2, 0x41a00000    # 20.0f

    aput v2, v1, v5

    const/high16 v2, 0x42700000    # 60.0f

    aput v2, v1, v6

    aput-object v1, v0, v4

    new-array v1, v7, [F

    const/high16 v2, 0x434d0000    # 205.0f

    aput v2, v1, v4

    const/high16 v2, 0x41c80000    # 25.0f

    aput v2, v1, v5

    const/high16 v2, 0x41a00000    # 20.0f

    aput v2, v1, v6

    aput-object v1, v0, v5

    sput-object v0, Lcom/sec/android/gradient_color_extractor/CallGradient;->mWallpaperColor_monotone:[[F

    const/16 v0, 0x13

    new-array v0, v0, [I

    const/16 v1, 0x9

    aput v1, v0, v4

    const/16 v1, 0x1d

    aput v1, v0, v5

    const/16 v1, 0x27

    aput v1, v0, v6

    const/16 v1, 0x3b

    aput v1, v0, v7

    const/4 v1, 0x4

    const/16 v2, 0x4f

    aput v2, v0, v1

    const/4 v1, 0x5

    const/16 v2, 0x63

    aput v2, v0, v1

    const/4 v1, 0x6

    const/16 v2, 0x77

    aput v2, v0, v1

    const/4 v1, 0x7

    const/16 v2, 0x8b

    aput v2, v0, v1

    const/16 v1, 0x8

    const/16 v2, 0x9f

    aput v2, v0, v1

    const/16 v1, 0x9

    const/16 v2, 0xb3

    aput v2, v0, v1

    const/16 v1, 0xa

    const/16 v2, 0xc7

    aput v2, v0, v1

    const/16 v1, 0xb

    const/16 v2, 0xdb

    aput v2, v0, v1

    const/16 v1, 0xc

    const/16 v2, 0xef

    aput v2, v0, v1

    const/16 v1, 0xd

    const/16 v2, 0x103

    aput v2, v0, v1

    const/16 v1, 0xe

    const/16 v2, 0x117

    aput v2, v0, v1

    const/16 v1, 0xf

    const/16 v2, 0x12b

    aput v2, v0, v1

    const/16 v1, 0x10

    const/16 v2, 0x13f

    aput v2, v0, v1

    const/16 v1, 0x11

    const/16 v2, 0x153

    aput v2, v0, v1

    const/16 v1, 0x12

    const/16 v2, 0x168

    aput v2, v0, v1

    sput-object v0, Lcom/sec/android/gradient_color_extractor/CallGradient;->mWallPaperIndexTable:[I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/gradient_color_extractor/GradientColorExtractor;-><init>()V

    return-void
.end method

.method public static findClosestColorFromColorPallete([[FI)I
    .locals 6

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    move-object v0, p0

    move v1, p1

    move v4, v2

    move v5, v3

    invoke-static/range {v0 .. v5}, Lcom/sec/android/gradient_color_extractor/CallGradient;->findClosestColorFromColorPallete([[FIFFFF)I

    move-result v0

    return v0
.end method

.method public static findClosestColorFromColorPallete([[FIFFFF)I
    .locals 12

    const/4 v6, 0x3

    new-array v1, v6, [F

    const/4 v6, 0x0

    aget-object v0, p0, v6

    invoke-static {p1, v1}, Landroid/graphics/Color;->colorToHSV(I[F)V

    const v4, 0x7f7fffff    # Float.MAX_VALUE

    sget v6, Lcom/sec/android/gradient_color_extractor/CallGradient;->mGrayscale_limite_s:F

    sget v7, Lcom/sec/android/gradient_color_extractor/CallGradient;->mGrayscale_limite_b:F

    invoke-static {v1, v6, v7}, Lcom/sec/android/gradient_color_extractor/CallGradient;->checkGayScale_with_value([FFF)Z

    move-result v6

    if-nez v6, :cond_1

    const/4 v2, 0x0

    :goto_0
    array-length v6, p0

    if-lt v2, v6, :cond_3

    :cond_0
    invoke-static {v0}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result v6

    return v6

    :cond_1
    const/4 v2, 0x0

    :goto_1
    sget-object v6, Lcom/sec/android/gradient_color_extractor/CallGradient;->mGray_scale_pallete:[[F

    array-length v6, v6

    if-ge v2, v6, :cond_0

    const/4 v6, 0x3

    new-array v5, v6, [F

    const/4 v6, 0x0

    sget-object v7, Lcom/sec/android/gradient_color_extractor/CallGradient;->mGray_scale_pallete:[[F

    aget-object v7, v7, v2

    const/4 v8, 0x0

    aget v7, v7, v8

    aput v7, v5, v6

    const/4 v6, 0x1

    sget-object v7, Lcom/sec/android/gradient_color_extractor/CallGradient;->mGray_scale_pallete:[[F

    aget-object v7, v7, v2

    const/4 v8, 0x1

    aget v7, v7, v8

    const v8, 0x3c23d70a    # 0.01f

    mul-float/2addr v7, v8

    aput v7, v5, v6

    const/4 v6, 0x2

    sget-object v7, Lcom/sec/android/gradient_color_extractor/CallGradient;->mGray_scale_pallete:[[F

    aget-object v7, v7, v2

    const/4 v8, 0x2

    aget v7, v7, v8

    const v8, 0x3c23d70a    # 0.01f

    mul-float/2addr v7, v8

    aput v7, v5, v6

    const/4 v6, 0x1

    aget v6, v5, v6

    const/4 v7, 0x1

    aget v7, v1, v7

    sub-float/2addr v6, v7

    float-to-double v6, v6

    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    const/4 v8, 0x2

    aget v8, v5, v8

    const/4 v9, 0x2

    aget v9, v1, v9

    sub-float/2addr v8, v9

    float-to-double v8, v8

    const-wide/high16 v10, 0x4000000000000000L    # 2.0

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v8

    add-double/2addr v6, v8

    double-to-float v3, v6

    cmpg-float v6, v3, v4

    if-gez v6, :cond_2

    move-object v0, v5

    move v4, v3

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    const/4 v6, 0x3

    new-array v5, v6, [F

    const/4 v6, 0x0

    aget-object v7, p0, v2

    const/4 v8, 0x0

    aget v7, v7, v8

    aput v7, v5, v6

    const/4 v6, 0x1

    aget-object v7, p0, v2

    const/4 v8, 0x1

    aget v7, v7, v8

    const v8, 0x3c23d70a    # 0.01f

    mul-float/2addr v7, v8

    aput v7, v5, v6

    const/4 v6, 0x2

    aget-object v7, p0, v2

    const/4 v8, 0x2

    aget v7, v7, v8

    const v8, 0x3c23d70a    # 0.01f

    mul-float/2addr v7, v8

    aput v7, v5, v6

    const/4 v6, 0x3

    new-array v6, v6, [F

    const/4 v7, 0x0

    const/high16 v8, 0x3f800000    # 1.0f

    aput v8, v6, v7

    const/4 v7, 0x1

    const v8, 0x3dcccccd    # 0.1f

    aput v8, v6, v7

    const/4 v7, 0x2

    const v8, 0x3dcccccd    # 0.1f

    aput v8, v6, v7

    invoke-static {v5, v1, v6}, Lcom/sec/android/gradient_color_extractor/CallGradient;->colorDistance_hsv_square2([F[F[F)F

    move-result v6

    const/high16 v7, 0x3f800000    # 1.0f

    mul-float v3, v6, v7

    cmpg-float v6, v3, v4

    if-gez v6, :cond_4

    const/4 v6, 0x1

    aget v6, v5, v6

    cmpl-float v6, v6, p2

    if-lez v6, :cond_4

    const/4 v6, 0x1

    aget v6, v5, v6

    cmpg-float v6, v6, p3

    if-gez v6, :cond_4

    const/4 v6, 0x2

    aget v6, v5, v6

    cmpl-float v6, v6, p4

    if-lez v6, :cond_4

    const/4 v6, 0x2

    aget v6, v5, v6

    cmpg-float v6, v6, p5

    if-gez v6, :cond_4

    move-object v0, v5

    move v4, v3

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0
.end method

.method static findColorGroupIndices([F)[I
    .locals 9

    const/4 v8, 0x0

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    :goto_0
    sget-object v6, Lcom/sec/android/gradient_color_extractor/CallGradient;->mColorGroup_pallete:[[F

    array-length v6, v6

    if-lt v0, v6, :cond_0

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-eqz v6, :cond_2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v6

    new-array v5, v6, [I

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v0, 0x0

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_3

    :goto_2
    return-object v5

    :cond_0
    sget-object v6, Lcom/sec/android/gradient_color_extractor/CallGradient;->mColorGroup_pallete:[[F

    aget-object v6, v6, v0

    aget v4, v6, v8

    sget-object v6, Lcom/sec/android/gradient_color_extractor/CallGradient;->mColorGroup_pallete:[[F

    aget-object v6, v6, v0

    const/4 v7, 0x1

    aget v3, v6, v7

    aget v6, p0, v8

    cmpl-float v6, v6, v4

    if-ltz v6, :cond_1

    aget v6, p0, v8

    cmpg-float v6, v6, v3

    if-gez v6, :cond_1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v5, 0x0

    goto :goto_2

    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    aput v6, v5, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method static getAdjustedGradientColor([[F[I)[[I
    .locals 39

    const/4 v2, 0x0

    aget v32, p1, v2

    const/4 v2, 0x1

    aget v12, p1, v2

    const/4 v2, 0x3

    new-array v0, v2, [F

    move-object/from16 v36, v0

    const/4 v2, 0x3

    new-array v0, v2, [F

    move-object/from16 v16, v0

    move/from16 v0, v32

    move-object/from16 v1, v36

    invoke-static {v0, v1}, Landroid/graphics/Color;->colorToHSV(I[F)V

    move-object/from16 v0, v16

    invoke-static {v12, v0}, Landroid/graphics/Color;->colorToHSV(I[F)V

    sget v2, Lcom/sec/android/gradient_color_extractor/CallGradient;->mGrayscale_limite_s:F

    sget v3, Lcom/sec/android/gradient_color_extractor/CallGradient;->mGrayscale_limite_b:F

    move-object/from16 v0, v36

    invoke-static {v0, v2, v3}, Lcom/sec/android/gradient_color_extractor/CallGradient;->checkGayScale_with_value([FFF)Z

    move-result v25

    sget v2, Lcom/sec/android/gradient_color_extractor/CallGradient;->mGrayscale_limite_s:F

    sget v3, Lcom/sec/android/gradient_color_extractor/CallGradient;->mGrayscale_limite_b:F

    move-object/from16 v0, v16

    invoke-static {v0, v2, v3}, Lcom/sec/android/gradient_color_extractor/CallGradient;->checkGayScale_with_value([FFF)Z

    move-result v24

    if-nez v25, :cond_6

    :cond_0
    invoke-static/range {v36 .. v36}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result v2

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/sec/android/gradient_color_extractor/CallGradient;->findClosestColorFromColorPallete([[FI)I

    move-result v37

    invoke-static/range {v16 .. v16}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result v2

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/sec/android/gradient_color_extractor/CallGradient;->findClosestColorFromColorPallete([[FI)I

    move-result v17

    if-nez v24, :cond_b

    move/from16 v0, v37

    move-object/from16 v1, v36

    invoke-static {v0, v1}, Landroid/graphics/Color;->colorToHSV(I[F)V

    move/from16 v0, v17

    move-object/from16 v1, v16

    invoke-static {v0, v1}, Landroid/graphics/Color;->colorToHSV(I[F)V

    :goto_0
    const/4 v9, 0x0

    const/4 v8, 0x0

    const/4 v2, 0x1

    aget v2, v36, v2

    const/4 v3, 0x1

    aget v3, v16, v3

    sub-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v31

    const v2, 0x3e4ccccd    # 0.2f

    cmpg-float v2, v31, v2

    if-gtz v2, :cond_1

    const/4 v9, 0x1

    :cond_1
    const/4 v2, 0x2

    aget v2, v36, v2

    const/4 v3, 0x2

    aget v3, v16, v3

    sub-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v10

    const v2, 0x3e4ccccd    # 0.2f

    cmpg-float v2, v10, v2

    if-gtz v2, :cond_2

    const/4 v8, 0x1

    :cond_2
    if-nez v9, :cond_c

    :cond_3
    :goto_1
    if-nez v24, :cond_23

    invoke-static/range {v36 .. v36}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result v34

    invoke-static/range {v16 .. v16}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result v14

    :goto_2
    move/from16 v0, v34

    move-object/from16 v1, v36

    invoke-static {v0, v1}, Landroid/graphics/Color;->colorToHSV(I[F)V

    move-object/from16 v0, v16

    invoke-static {v14, v0}, Landroid/graphics/Color;->colorToHSV(I[F)V

    const/4 v2, 0x2

    aget v2, v36, v2

    const/4 v3, 0x2

    aget v3, v16, v3

    sub-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v10

    const v2, 0x3ee66666    # 0.45f

    cmpl-float v2, v10, v2

    if-ltz v2, :cond_5

    if-nez v25, :cond_24

    :cond_4
    if-nez v24, :cond_25

    move-object/from16 v21, v36

    move-object/from16 v22, v16

    :goto_3
    const/4 v2, 0x2

    aget v2, v21, v2

    const/4 v3, 0x2

    aget v3, v22, v3

    cmpl-float v2, v2, v3

    if-lez v2, :cond_26

    sget-object v2, Lcom/sec/android/gradient_color_extractor/CallGradient;->mColor_pallete:[[F

    invoke-static/range {v22 .. v22}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result v3

    const/4 v4, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v6, 0x2

    aget v6, v21, v6

    const v7, 0x3e570a3d    # 0.21f

    sub-float/2addr v6, v7

    const/4 v7, 0x2

    aget v7, v21, v7

    const v38, 0x3ee147ae    # 0.44f

    sub-float v7, v7, v38

    invoke-static/range {v2 .. v7}, Lcom/sec/android/gradient_color_extractor/CallGradient;->findClosestColorFromColorPallete([[FIFFFF)I

    move-result v2

    move-object/from16 v0, v22

    invoke-static {v2, v0}, Landroid/graphics/Color;->colorToHSV(I[F)V

    :goto_4
    invoke-static/range {v36 .. v36}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result v34

    invoke-static/range {v16 .. v16}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result v14

    :cond_5
    :goto_5
    const/4 v2, 0x2

    new-array v2, v2, [[I

    const/4 v3, 0x0

    const/4 v4, 0x2

    new-array v4, v4, [I

    const/4 v5, 0x0

    aput v34, v4, v5

    const/4 v5, 0x1

    aput v14, v4, v5

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const/4 v4, 0x2

    new-array v4, v4, [I

    const/4 v5, 0x0

    aput v37, v4, v5

    const/4 v5, 0x1

    aput v17, v4, v5

    aput-object v4, v2, v3

    return-object v2

    :cond_6
    if-eqz v24, :cond_0

    const/16 v35, 0x0

    const/4 v15, 0x0

    const/4 v2, 0x2

    aget v2, v36, v2

    sget-object v3, Lcom/sec/android/gradient_color_extractor/CallGradient;->mGray_scale_pallete:[[F

    const/4 v4, 0x1

    aget-object v3, v3, v4

    const/4 v4, 0x2

    aget v3, v3, v4

    const v4, 0x3c23d70a    # 0.01f

    mul-float/2addr v3, v4

    cmpl-float v2, v2, v3

    if-lez v2, :cond_7

    const/16 v35, 0x1

    :cond_7
    const/4 v2, 0x2

    aget v2, v16, v2

    sget-object v3, Lcom/sec/android/gradient_color_extractor/CallGradient;->mGray_scale_pallete:[[F

    const/4 v4, 0x1

    aget-object v3, v3, v4

    const/4 v4, 0x2

    aget v3, v3, v4

    const v4, 0x3c23d70a    # 0.01f

    mul-float/2addr v3, v4

    cmpl-float v2, v2, v3

    if-lez v2, :cond_8

    const/4 v15, 0x1

    :cond_8
    invoke-static/range {v36 .. v36}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result v2

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/sec/android/gradient_color_extractor/CallGradient;->findClosestColorFromColorPallete([[FI)I

    move-result v37

    invoke-static/range {v16 .. v16}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result v2

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/sec/android/gradient_color_extractor/CallGradient;->findClosestColorFromColorPallete([[FI)I

    move-result v17

    move/from16 v0, v35

    if-eq v0, v15, :cond_9

    move/from16 v34, v37

    move/from16 v14, v17

    goto/16 :goto_2

    :cond_9
    if-eqz v35, :cond_a

    const/4 v2, 0x3

    new-array v0, v2, [F

    move-object/from16 v36, v0

    const/4 v2, 0x0

    sget-object v3, Lcom/sec/android/gradient_color_extractor/CallGradient;->mGray_scale_pallete:[[F

    const/4 v4, 0x1

    aget-object v3, v3, v4

    const/4 v4, 0x0

    aget v3, v3, v4

    aput v3, v36, v2

    const/4 v2, 0x1

    sget-object v3, Lcom/sec/android/gradient_color_extractor/CallGradient;->mGray_scale_pallete:[[F

    const/4 v4, 0x1

    aget-object v3, v3, v4

    const/4 v4, 0x1

    aget v3, v3, v4

    const v4, 0x3c23d70a    # 0.01f

    mul-float/2addr v3, v4

    aput v3, v36, v2

    const/4 v2, 0x2

    sget-object v3, Lcom/sec/android/gradient_color_extractor/CallGradient;->mGray_scale_pallete:[[F

    const/4 v4, 0x1

    aget-object v3, v3, v4

    const/4 v4, 0x2

    aget v3, v3, v4

    const v4, 0x3c23d70a    # 0.01f

    mul-float/2addr v3, v4

    aput v3, v36, v2

    const/4 v2, 0x3

    new-array v0, v2, [F

    move-object/from16 v16, v0

    const/4 v2, 0x0

    sget-object v3, Lcom/sec/android/gradient_color_extractor/CallGradient;->mGray_scale_pallete:[[F

    const/4 v4, 0x2

    aget-object v3, v3, v4

    const/4 v4, 0x0

    aget v3, v3, v4

    aput v3, v16, v2

    const/4 v2, 0x1

    sget-object v3, Lcom/sec/android/gradient_color_extractor/CallGradient;->mGray_scale_pallete:[[F

    const/4 v4, 0x2

    aget-object v3, v3, v4

    const/4 v4, 0x1

    aget v3, v3, v4

    const v4, 0x3c23d70a    # 0.01f

    mul-float/2addr v3, v4

    aput v3, v16, v2

    const/4 v2, 0x2

    sget-object v3, Lcom/sec/android/gradient_color_extractor/CallGradient;->mGray_scale_pallete:[[F

    const/4 v4, 0x2

    aget-object v3, v3, v4

    const/4 v4, 0x2

    aget v3, v3, v4

    const v4, 0x3c23d70a    # 0.01f

    mul-float/2addr v3, v4

    aput v3, v16, v2

    :goto_6
    invoke-static/range {v36 .. v36}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result v34

    invoke-static/range {v16 .. v16}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result v14

    goto/16 :goto_2

    :cond_a
    const/4 v2, 0x3

    new-array v0, v2, [F

    move-object/from16 v36, v0

    const/4 v2, 0x0

    sget-object v3, Lcom/sec/android/gradient_color_extractor/CallGradient;->mGray_scale_pallete:[[F

    const/4 v4, 0x0

    aget-object v3, v3, v4

    const/4 v4, 0x0

    aget v3, v3, v4

    aput v3, v36, v2

    const/4 v2, 0x1

    sget-object v3, Lcom/sec/android/gradient_color_extractor/CallGradient;->mGray_scale_pallete:[[F

    const/4 v4, 0x0

    aget-object v3, v3, v4

    const/4 v4, 0x1

    aget v3, v3, v4

    const v4, 0x3c23d70a    # 0.01f

    mul-float/2addr v3, v4

    aput v3, v36, v2

    const/4 v2, 0x2

    sget-object v3, Lcom/sec/android/gradient_color_extractor/CallGradient;->mGray_scale_pallete:[[F

    const/4 v4, 0x0

    aget-object v3, v3, v4

    const/4 v4, 0x2

    aget v3, v3, v4

    const v4, 0x3c23d70a    # 0.01f

    mul-float/2addr v3, v4

    aput v3, v36, v2

    const/4 v2, 0x3

    new-array v0, v2, [F

    move-object/from16 v16, v0

    const/4 v2, 0x0

    sget-object v3, Lcom/sec/android/gradient_color_extractor/CallGradient;->mGray_scale_pallete:[[F

    const/4 v4, 0x1

    aget-object v3, v3, v4

    const/4 v4, 0x0

    aget v3, v3, v4

    aput v3, v16, v2

    const/4 v2, 0x1

    sget-object v3, Lcom/sec/android/gradient_color_extractor/CallGradient;->mGray_scale_pallete:[[F

    const/4 v4, 0x1

    aget-object v3, v3, v4

    const/4 v4, 0x1

    aget v3, v3, v4

    const v4, 0x3c23d70a    # 0.01f

    mul-float/2addr v3, v4

    aput v3, v16, v2

    const/4 v2, 0x2

    sget-object v3, Lcom/sec/android/gradient_color_extractor/CallGradient;->mGray_scale_pallete:[[F

    const/4 v4, 0x1

    aget-object v3, v3, v4

    const/4 v4, 0x2

    aget v3, v3, v4

    const v4, 0x3c23d70a    # 0.01f

    mul-float/2addr v3, v4

    aput v3, v16, v2

    goto :goto_6

    :cond_b
    move/from16 v0, v37

    move-object/from16 v1, v16

    invoke-static {v0, v1}, Landroid/graphics/Color;->colorToHSV(I[F)V

    move/from16 v0, v17

    move-object/from16 v1, v36

    invoke-static {v0, v1}, Landroid/graphics/Color;->colorToHSV(I[F)V

    goto/16 :goto_0

    :cond_c
    if-eqz v8, :cond_3

    invoke-static/range {v36 .. v36}, Lcom/sec/android/gradient_color_extractor/CallGradient;->findColorGroupIndices([F)[I

    move-result-object v33

    invoke-static/range {v16 .. v16}, Lcom/sec/android/gradient_color_extractor/CallGradient;->findColorGroupIndices([F)[I

    move-result-object v13

    const/4 v2, 0x0

    aget v18, v13, v2

    const/4 v2, 0x0

    aget v19, v13, v2

    sget-object v2, Lcom/sec/android/gradient_color_extractor/CallGradient;->mColorGroup_pallete:[[F

    aget-object v2, v2, v18

    const/4 v3, 0x0

    aget v28, v2, v3

    sget-object v2, Lcom/sec/android/gradient_color_extractor/CallGradient;->mColorGroup_pallete:[[F

    aget-object v2, v2, v19

    const/4 v3, 0x0

    aget v29, v2, v3

    const/16 v23, 0x1

    :goto_7
    array-length v2, v13

    move/from16 v0, v23

    if-lt v0, v2, :cond_10

    const/4 v2, 0x1

    aget v2, v36, v2

    const/4 v3, 0x1

    aget v3, v16, v3

    cmpl-float v2, v2, v3

    if-nez v2, :cond_18

    const/16 v20, 0x1

    sget-object v2, Lcom/sec/android/gradient_color_extractor/CallGradient;->mColorGroup_pallete:[[F

    const/4 v3, 0x0

    aget v3, v13, v3

    aget-object v2, v2, v3

    const/4 v3, 0x2

    aget v27, v2, v3

    const/16 v23, 0x1

    :goto_8
    array-length v2, v13

    move/from16 v0, v23

    if-lt v0, v2, :cond_13

    if-nez v20, :cond_16

    sget-object v2, Lcom/sec/android/gradient_color_extractor/CallGradient;->mColorGroup_pallete:[[F

    aget-object v2, v2, v18

    const/4 v3, 0x0

    aget v2, v2, v3

    sget-object v3, Lcom/sec/android/gradient_color_extractor/CallGradient;->mColorGroup_pallete:[[F

    aget-object v3, v3, v19

    const/4 v4, 0x0

    aget v3, v3, v4

    sub-float v11, v2, v3

    invoke-static {v11}, Ljava/lang/Math;->abs(F)F

    move-result v2

    const/high16 v3, 0x43340000    # 180.0f

    cmpl-float v2, v2, v3

    if-lez v2, :cond_d

    const/high16 v2, -0x40800000    # -1.0f

    mul-float/2addr v11, v2

    :cond_d
    const/4 v2, 0x0

    cmpl-float v2, v11, v2

    if-lez v2, :cond_17

    const/4 v2, 0x0

    const/4 v3, 0x0

    aget v3, v16, v3

    add-float v3, v3, v27

    aput v3, v16, v2

    :cond_e
    :goto_9
    const/4 v2, 0x0

    aget v2, v16, v2

    const/high16 v3, 0x43b40000    # 360.0f

    cmpl-float v2, v2, v3

    if-ltz v2, :cond_1f

    const/4 v2, 0x0

    const/4 v3, 0x0

    aget v3, v16, v3

    const/high16 v4, 0x43b40000    # 360.0f

    sub-float/2addr v3, v4

    aput v3, v16, v2

    :cond_f
    :goto_a
    const/4 v2, 0x2

    aget v2, v36, v2

    const/4 v3, 0x2

    aget v3, v16, v3

    cmpl-float v2, v2, v3

    if-nez v2, :cond_21

    const/4 v2, 0x1

    aget v2, v36, v2

    const/4 v3, 0x1

    aget v3, v16, v3

    cmpg-float v2, v2, v3

    if-gez v2, :cond_20

    const/4 v2, 0x2

    const/4 v3, 0x2

    aget v3, v36, v3

    const v4, 0x3e19999a    # 0.15f

    sub-float/2addr v3, v4

    aput v3, v36, v2

    goto/16 :goto_1

    :cond_10
    sget-object v2, Lcom/sec/android/gradient_color_extractor/CallGradient;->mColorGroup_pallete:[[F

    aget v3, v13, v23

    aget-object v2, v2, v3

    const/4 v3, 0x0

    aget v2, v2, v3

    cmpg-float v2, v28, v2

    if-gez v2, :cond_12

    sget-object v2, Lcom/sec/android/gradient_color_extractor/CallGradient;->mColorGroup_pallete:[[F

    aget v3, v13, v23

    aget-object v2, v2, v3

    const/4 v3, 0x0

    aget v28, v2, v3

    aget v18, v13, v23

    :cond_11
    :goto_b
    add-int/lit8 v23, v23, 0x1

    goto/16 :goto_7

    :cond_12
    sget-object v2, Lcom/sec/android/gradient_color_extractor/CallGradient;->mColorGroup_pallete:[[F

    aget v3, v13, v23

    aget-object v2, v2, v3

    const/4 v3, 0x0

    aget v2, v2, v3

    cmpl-float v2, v29, v2

    if-lez v2, :cond_11

    sget-object v2, Lcom/sec/android/gradient_color_extractor/CallGradient;->mColorGroup_pallete:[[F

    aget v3, v13, v23

    aget-object v2, v2, v3

    const/4 v3, 0x0

    aget v29, v2, v3

    aget v19, v13, v23

    goto :goto_b

    :cond_13
    sget-object v2, Lcom/sec/android/gradient_color_extractor/CallGradient;->mColorGroup_pallete:[[F

    aget v3, v13, v23

    aget-object v2, v2, v3

    const/4 v3, 0x2

    aget v2, v2, v3

    cmpg-float v2, v27, v2

    if-gez v2, :cond_14

    sget-object v2, Lcom/sec/android/gradient_color_extractor/CallGradient;->mColorGroup_pallete:[[F

    aget v3, v13, v23

    aget-object v2, v2, v3

    const/4 v3, 0x2

    aget v27, v2, v3

    :cond_14
    sget-object v2, Lcom/sec/android/gradient_color_extractor/CallGradient;->mColorGroup_pallete:[[F

    const/4 v3, 0x0

    aget v3, v13, v3

    aget-object v2, v2, v3

    const/4 v3, 0x2

    aget v2, v2, v3

    sget-object v3, Lcom/sec/android/gradient_color_extractor/CallGradient;->mColorGroup_pallete:[[F

    aget v4, v13, v23

    aget-object v3, v3, v4

    const/4 v4, 0x2

    aget v3, v3, v4

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_15

    const/16 v20, 0x0

    :cond_15
    add-int/lit8 v23, v23, 0x1

    goto/16 :goto_8

    :cond_16
    const/4 v2, 0x0

    const/4 v3, 0x0

    aget v3, v16, v3

    sget-object v4, Lcom/sec/android/gradient_color_extractor/CallGradient;->mColorGroup_pallete:[[F

    const/4 v5, 0x0

    aget v5, v13, v5

    aget-object v4, v4, v5

    const/4 v5, 0x2

    aget v4, v4, v5

    sub-float/2addr v3, v4

    aput v3, v16, v2

    goto/16 :goto_9

    :cond_17
    const/4 v2, 0x0

    const/4 v3, 0x0

    aget v3, v16, v3

    sub-float v3, v3, v27

    aput v3, v16, v2

    goto/16 :goto_9

    :cond_18
    const/16 v30, 0x0

    const/16 v23, 0x0

    :goto_c
    move-object/from16 v0, v33

    array-length v2, v0

    move/from16 v0, v23

    if-lt v0, v2, :cond_19

    const/4 v2, 0x1

    move/from16 v0, v30

    if-lt v0, v2, :cond_e

    const/4 v2, 0x0

    aget v2, v16, v2

    const/4 v3, 0x0

    aget v3, v36, v3

    sub-float v11, v2, v3

    invoke-static {v11}, Ljava/lang/Math;->abs(F)F

    move-result v2

    const/high16 v3, 0x43340000    # 180.0f

    cmpl-float v2, v2, v3

    if-lez v2, :cond_1d

    const/4 v2, 0x0

    cmpl-float v2, v11, v2

    if-lez v2, :cond_1c

    const/4 v2, 0x0

    const/4 v3, 0x0

    aget v3, v16, v3

    sget-object v4, Lcom/sec/android/gradient_color_extractor/CallGradient;->mColorGroup_pallete:[[F

    aget-object v4, v4, v19

    const/4 v5, 0x2

    aget v4, v4, v5

    add-float/2addr v3, v4

    aput v3, v16, v2

    goto/16 :goto_9

    :cond_19
    const/16 v26, 0x0

    :goto_d
    array-length v2, v13

    move/from16 v0, v26

    if-lt v0, v2, :cond_1a

    add-int/lit8 v23, v23, 0x1

    goto :goto_c

    :cond_1a
    aget v2, v33, v23

    aget v3, v13, v26

    if-eq v2, v3, :cond_1b

    :goto_e
    add-int/lit8 v26, v26, 0x1

    goto :goto_d

    :cond_1b
    add-int/lit8 v30, v30, 0x1

    goto :goto_e

    :cond_1c
    const/4 v2, 0x0

    const/4 v3, 0x0

    aget v3, v16, v3

    sget-object v4, Lcom/sec/android/gradient_color_extractor/CallGradient;->mColorGroup_pallete:[[F

    aget-object v4, v4, v18

    const/4 v5, 0x2

    aget v4, v4, v5

    sub-float/2addr v3, v4

    aput v3, v16, v2

    goto/16 :goto_9

    :cond_1d
    const/4 v2, 0x0

    cmpl-float v2, v11, v2

    if-lez v2, :cond_1e

    const/4 v2, 0x0

    const/4 v3, 0x0

    aget v3, v16, v3

    sget-object v4, Lcom/sec/android/gradient_color_extractor/CallGradient;->mColorGroup_pallete:[[F

    aget-object v4, v4, v18

    const/4 v5, 0x2

    aget v4, v4, v5

    add-float/2addr v3, v4

    aput v3, v16, v2

    goto/16 :goto_9

    :cond_1e
    const/4 v2, 0x0

    const/4 v3, 0x0

    aget v3, v16, v3

    sget-object v4, Lcom/sec/android/gradient_color_extractor/CallGradient;->mColorGroup_pallete:[[F

    aget-object v4, v4, v19

    const/4 v5, 0x2

    aget v4, v4, v5

    sub-float/2addr v3, v4

    aput v3, v16, v2

    goto/16 :goto_9

    :cond_1f
    const/4 v2, 0x0

    aget v2, v16, v2

    const/4 v3, 0x0

    cmpg-float v2, v2, v3

    if-gez v2, :cond_f

    const/4 v2, 0x0

    const/4 v3, 0x0

    aget v3, v16, v3

    const/high16 v4, 0x43b40000    # 360.0f

    add-float/2addr v3, v4

    aput v3, v16, v2

    goto/16 :goto_a

    :cond_20
    const/4 v2, 0x2

    const/4 v3, 0x2

    aget v3, v16, v3

    const v4, 0x3e19999a    # 0.15f

    sub-float/2addr v3, v4

    aput v3, v16, v2

    goto/16 :goto_1

    :cond_21
    const/4 v2, 0x2

    aget v2, v36, v2

    const/4 v3, 0x2

    aget v3, v16, v3

    cmpg-float v2, v2, v3

    if-gez v2, :cond_22

    const/4 v2, 0x2

    const/4 v3, 0x2

    aget v3, v36, v3

    const v4, 0x3e19999a    # 0.15f

    sub-float/2addr v3, v4

    aput v3, v36, v2

    goto/16 :goto_1

    :cond_22
    const/4 v2, 0x2

    const/4 v3, 0x2

    aget v3, v16, v3

    const v4, 0x3e19999a    # 0.15f

    sub-float/2addr v3, v4

    aput v3, v16, v2

    goto/16 :goto_1

    :cond_23
    invoke-static/range {v16 .. v16}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result v34

    invoke-static/range {v36 .. v36}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result v14

    goto/16 :goto_2

    :cond_24
    if-eqz v24, :cond_4

    goto/16 :goto_5

    :cond_25
    move-object/from16 v21, v16

    move-object/from16 v22, v36

    goto/16 :goto_3

    :cond_26
    sget-object v2, Lcom/sec/android/gradient_color_extractor/CallGradient;->mColor_pallete:[[F

    invoke-static/range {v22 .. v22}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result v3

    const/4 v4, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v6, 0x2

    aget v6, v21, v6

    const v7, 0x3e570a3d    # 0.21f

    add-float/2addr v6, v7

    const/4 v7, 0x2

    aget v7, v21, v7

    const v38, 0x3ee147ae    # 0.44f

    add-float v7, v7, v38

    invoke-static/range {v2 .. v7}, Lcom/sec/android/gradient_color_extractor/CallGradient;->findClosestColorFromColorPallete([[FIFFFF)I

    move-result v2

    move-object/from16 v0, v22

    invoke-static {v2, v0}, Landroid/graphics/Color;->colorToHSV(I[F)V

    goto/16 :goto_4
.end method

.method static getAdjustedGradientColor_wallpaper([Lcom/sec/android/gradient_color_extractor/Kmeans$DominantColorResult;)[[I
    .locals 23

    const/16 v19, 0x0

    aget-object v19, p0, v19

    move-object/from16 v0, v19

    iget v15, v0, Lcom/sec/android/gradient_color_extractor/Kmeans$DominantColorResult;->color:I

    const/16 v19, 0x1

    aget-object v19, p0, v19

    move-object/from16 v0, v19

    iget v6, v0, Lcom/sec/android/gradient_color_extractor/Kmeans$DominantColorResult;->color:I

    const/16 v19, 0x3

    move/from16 v0, v19

    new-array v0, v0, [F

    move-object/from16 v17, v0

    const/16 v19, 0x3

    move/from16 v0, v19

    new-array v8, v0, [F

    move-object/from16 v0, v17

    invoke-static {v15, v0}, Landroid/graphics/Color;->colorToHSV(I[F)V

    invoke-static {v6, v8}, Landroid/graphics/Color;->colorToHSV(I[F)V

    sget v19, Lcom/sec/android/gradient_color_extractor/CallGradient;->mGrayscale_limite_s:F

    sget v20, Lcom/sec/android/gradient_color_extractor/CallGradient;->mGrayscale_limite_b:F

    move-object/from16 v0, v17

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-static {v0, v1, v2}, Lcom/sec/android/gradient_color_extractor/CallGradient;->checkGayScale_with_value([FFF)Z

    move-result v14

    sget v19, Lcom/sec/android/gradient_color_extractor/CallGradient;->mGrayscale_limite_s:F

    sget v20, Lcom/sec/android/gradient_color_extractor/CallGradient;->mGrayscale_limite_b:F

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-static {v8, v0, v1}, Lcom/sec/android/gradient_color_extractor/CallGradient;->checkGayScale_with_value([FFF)Z

    move-result v13

    invoke-static/range {v17 .. v17}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result v18

    invoke-static {v8}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result v9

    if-nez v14, :cond_1

    :cond_0
    const/16 v19, 0x2

    aget v19, v17, v19

    const v20, 0x3e4ccccd    # 0.2f

    cmpl-float v19, v19, v20

    if-ltz v19, :cond_3

    move-object/from16 v3, v17

    const/4 v10, 0x1

    const/4 v4, 0x0

    :goto_0
    aget-object v19, p0, v10

    move-object/from16 v0, v19

    iget v0, v0, Lcom/sec/android/gradient_color_extractor/Kmeans$DominantColorResult;->percentage:F

    move/from16 v19, v0

    const v20, 0x3dcccccd    # 0.1f

    cmpg-float v19, v19, v20

    if-gez v19, :cond_4

    sget-object v19, Lcom/sec/android/gradient_color_extractor/CallGradient;->mColor_pallete_for_lockscreen:[[F

    const/16 v20, 0x2

    move/from16 v0, v20

    new-array v0, v0, [I

    move-object/from16 v20, v0

    const/16 v21, 0x0

    aget-object v22, p0, v4

    move-object/from16 v0, v22

    iget v0, v0, Lcom/sec/android/gradient_color_extractor/Kmeans$DominantColorResult;->color:I

    move/from16 v22, v0

    aput v22, v20, v21

    const/16 v21, 0x1

    aget-object v22, p0, v4

    move-object/from16 v0, v22

    iget v0, v0, Lcom/sec/android/gradient_color_extractor/Kmeans$DominantColorResult;->color:I

    move/from16 v22, v0

    aput v22, v20, v21

    invoke-static/range {v19 .. v20}, Lcom/sec/android/gradient_color_extractor/CallGradient;->getAdjustedGradientColor([[F[I)[[I

    move-result-object v19

    return-object v19

    :cond_1
    if-eqz v13, :cond_0

    const/16 v19, 0x3

    move/from16 v0, v19

    new-array v0, v0, [F

    move-object/from16 v17, v0

    const/16 v19, 0x0

    sget-object v20, Lcom/sec/android/gradient_color_extractor/CallGradient;->mWallpaperColor_monotone:[[F

    const/16 v21, 0x0

    aget-object v20, v20, v21

    const/16 v21, 0x0

    aget v20, v20, v21

    aput v20, v17, v19

    const/16 v19, 0x1

    sget-object v20, Lcom/sec/android/gradient_color_extractor/CallGradient;->mWallpaperColor_monotone:[[F

    const/16 v21, 0x0

    aget-object v20, v20, v21

    const/16 v21, 0x1

    aget v20, v20, v21

    const v21, 0x3c23d70a    # 0.01f

    mul-float v20, v20, v21

    aput v20, v17, v19

    const/16 v19, 0x2

    sget-object v20, Lcom/sec/android/gradient_color_extractor/CallGradient;->mWallpaperColor_monotone:[[F

    const/16 v21, 0x0

    aget-object v20, v20, v21

    const/16 v21, 0x2

    aget v20, v20, v21

    const v21, 0x3c23d70a    # 0.01f

    mul-float v20, v20, v21

    aput v20, v17, v19

    const/16 v19, 0x3

    move/from16 v0, v19

    new-array v8, v0, [F

    const/16 v19, 0x0

    sget-object v20, Lcom/sec/android/gradient_color_extractor/CallGradient;->mWallpaperColor_monotone:[[F

    const/16 v21, 0x1

    aget-object v20, v20, v21

    const/16 v21, 0x0

    aget v20, v20, v21

    aput v20, v8, v19

    const/16 v19, 0x1

    sget-object v20, Lcom/sec/android/gradient_color_extractor/CallGradient;->mWallpaperColor_monotone:[[F

    const/16 v21, 0x1

    aget-object v20, v20, v21

    const/16 v21, 0x1

    aget v20, v20, v21

    const v21, 0x3c23d70a    # 0.01f

    mul-float v20, v20, v21

    aput v20, v8, v19

    const/16 v19, 0x2

    sget-object v20, Lcom/sec/android/gradient_color_extractor/CallGradient;->mWallpaperColor_monotone:[[F

    const/16 v21, 0x1

    aget-object v20, v20, v21

    const/16 v21, 0x2

    aget v20, v20, v21

    const v21, 0x3c23d70a    # 0.01f

    mul-float v20, v20, v21

    aput v20, v8, v19

    :cond_2
    :goto_1
    invoke-static/range {v17 .. v17}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result v16

    invoke-static {v8}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result v7

    const/16 v19, 0x2

    move/from16 v0, v19

    new-array v0, v0, [[I

    move-object/from16 v19, v0

    const/16 v20, 0x0

    const/16 v21, 0x2

    move/from16 v0, v21

    new-array v0, v0, [I

    move-object/from16 v21, v0

    const/16 v22, 0x0

    aput v16, v21, v22

    const/16 v22, 0x1

    aput v7, v21, v22

    aput-object v21, v19, v20

    const/16 v20, 0x1

    const/16 v21, 0x2

    move/from16 v0, v21

    new-array v0, v0, [I

    move-object/from16 v21, v0

    const/16 v22, 0x0

    aput v18, v21, v22

    const/16 v22, 0x1

    aput v9, v21, v22

    aput-object v21, v19, v20

    return-object v19

    :cond_3
    move-object v3, v8

    const/4 v10, 0x0

    const/4 v4, 0x1

    move/from16 v5, v18

    move/from16 v18, v9

    move v9, v5

    goto/16 :goto_0

    :cond_4
    const/16 v19, 0x2

    aget v19, v17, v19

    const v20, 0x3e4ccccd    # 0.2f

    cmpl-float v19, v19, v20

    if-ltz v19, :cond_5

    const/16 v19, 0x2

    aget v19, v8, v19

    const v20, 0x3e4ccccd    # 0.2f

    cmpl-float v19, v19, v20

    if-ltz v19, :cond_6

    const/16 v19, 0x1

    :goto_2
    if-nez v19, :cond_9

    :cond_5
    const/4 v11, 0x0

    :goto_3
    sget-object v19, Lcom/sec/android/gradient_color_extractor/CallGradient;->mWallPaperIndexTable:[I

    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v19, v0

    move/from16 v0, v19

    if-ge v11, v0, :cond_2

    const/16 v19, 0x0

    aget v19, v3, v19

    sget-object v20, Lcom/sec/android/gradient_color_extractor/CallGradient;->mWallPaperIndexTable:[I

    aget v20, v20, v11

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    cmpg-float v19, v19, v20

    if-gtz v19, :cond_8

    mul-int/lit8 v12, v11, 0x2

    const/16 v19, 0x1

    aget v19, v3, v19

    const v20, 0x3ecccccd    # 0.4f

    cmpl-float v19, v19, v20

    if-ltz v19, :cond_7

    const/16 v19, 0x3

    move/from16 v0, v19

    new-array v0, v0, [F

    move-object/from16 v17, v0

    const/16 v19, 0x0

    sget-object v20, Lcom/sec/android/gradient_color_extractor/CallGradient;->mWallPaperColor_highBrightness_pallete:[[F

    aget-object v20, v20, v12

    const/16 v21, 0x0

    aget v20, v20, v21

    aput v20, v17, v19

    const/16 v19, 0x1

    sget-object v20, Lcom/sec/android/gradient_color_extractor/CallGradient;->mWallPaperColor_highBrightness_pallete:[[F

    aget-object v20, v20, v12

    const/16 v21, 0x1

    aget v20, v20, v21

    const v21, 0x3c23d70a    # 0.01f

    mul-float v20, v20, v21

    aput v20, v17, v19

    const/16 v19, 0x2

    sget-object v20, Lcom/sec/android/gradient_color_extractor/CallGradient;->mWallPaperColor_highBrightness_pallete:[[F

    aget-object v20, v20, v12

    const/16 v21, 0x2

    aget v20, v20, v21

    const v21, 0x3c23d70a    # 0.01f

    mul-float v20, v20, v21

    aput v20, v17, v19

    const/16 v19, 0x3

    move/from16 v0, v19

    new-array v8, v0, [F

    const/16 v19, 0x0

    sget-object v20, Lcom/sec/android/gradient_color_extractor/CallGradient;->mWallPaperColor_highBrightness_pallete:[[F

    add-int/lit8 v21, v12, 0x1

    aget-object v20, v20, v21

    const/16 v21, 0x0

    aget v20, v20, v21

    aput v20, v8, v19

    const/16 v19, 0x1

    sget-object v20, Lcom/sec/android/gradient_color_extractor/CallGradient;->mWallPaperColor_highBrightness_pallete:[[F

    add-int/lit8 v21, v12, 0x1

    aget-object v20, v20, v21

    const/16 v21, 0x1

    aget v20, v20, v21

    const v21, 0x3c23d70a    # 0.01f

    mul-float v20, v20, v21

    aput v20, v8, v19

    const/16 v19, 0x2

    sget-object v20, Lcom/sec/android/gradient_color_extractor/CallGradient;->mWallPaperColor_highBrightness_pallete:[[F

    add-int/lit8 v21, v12, 0x1

    aget-object v20, v20, v21

    const/16 v21, 0x2

    aget v20, v20, v21

    const v21, 0x3c23d70a    # 0.01f

    mul-float v20, v20, v21

    aput v20, v8, v19

    goto/16 :goto_1

    :cond_6
    const/16 v19, 0x0

    goto/16 :goto_2

    :cond_7
    const/16 v19, 0x3

    move/from16 v0, v19

    new-array v0, v0, [F

    move-object/from16 v17, v0

    const/16 v19, 0x0

    sget-object v20, Lcom/sec/android/gradient_color_extractor/CallGradient;->mWallPaperColor_lowBrightness_pallete:[[F

    aget-object v20, v20, v12

    const/16 v21, 0x0

    aget v20, v20, v21

    aput v20, v17, v19

    const/16 v19, 0x1

    sget-object v20, Lcom/sec/android/gradient_color_extractor/CallGradient;->mWallPaperColor_lowBrightness_pallete:[[F

    aget-object v20, v20, v12

    const/16 v21, 0x1

    aget v20, v20, v21

    const v21, 0x3c23d70a    # 0.01f

    mul-float v20, v20, v21

    aput v20, v17, v19

    const/16 v19, 0x2

    sget-object v20, Lcom/sec/android/gradient_color_extractor/CallGradient;->mWallPaperColor_lowBrightness_pallete:[[F

    aget-object v20, v20, v12

    const/16 v21, 0x2

    aget v20, v20, v21

    const v21, 0x3c23d70a    # 0.01f

    mul-float v20, v20, v21

    aput v20, v17, v19

    const/16 v19, 0x3

    move/from16 v0, v19

    new-array v8, v0, [F

    const/16 v19, 0x0

    sget-object v20, Lcom/sec/android/gradient_color_extractor/CallGradient;->mWallPaperColor_lowBrightness_pallete:[[F

    add-int/lit8 v21, v12, 0x1

    aget-object v20, v20, v21

    const/16 v21, 0x0

    aget v20, v20, v21

    aput v20, v8, v19

    const/16 v19, 0x1

    sget-object v20, Lcom/sec/android/gradient_color_extractor/CallGradient;->mWallPaperColor_lowBrightness_pallete:[[F

    add-int/lit8 v21, v12, 0x1

    aget-object v20, v20, v21

    const/16 v21, 0x1

    aget v20, v20, v21

    const v21, 0x3c23d70a    # 0.01f

    mul-float v20, v20, v21

    aput v20, v8, v19

    const/16 v19, 0x2

    sget-object v20, Lcom/sec/android/gradient_color_extractor/CallGradient;->mWallPaperColor_lowBrightness_pallete:[[F

    add-int/lit8 v21, v12, 0x1

    aget-object v20, v20, v21

    const/16 v21, 0x2

    aget v20, v20, v21

    const v21, 0x3c23d70a    # 0.01f

    mul-float v20, v20, v21

    aput v20, v8, v19

    goto/16 :goto_1

    :cond_8
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_3

    :cond_9
    sget-object v19, Lcom/sec/android/gradient_color_extractor/CallGradient;->mColor_pallete_for_lockscreen:[[F

    const/16 v20, 0x2

    move/from16 v0, v20

    new-array v0, v0, [I

    move-object/from16 v20, v0

    const/16 v21, 0x0

    const/16 v22, 0x0

    aget-object v22, p0, v22

    move-object/from16 v0, v22

    iget v0, v0, Lcom/sec/android/gradient_color_extractor/Kmeans$DominantColorResult;->color:I

    move/from16 v22, v0

    aput v22, v20, v21

    const/16 v21, 0x1

    const/16 v22, 0x1

    aget-object v22, p0, v22

    move-object/from16 v0, v22

    iget v0, v0, Lcom/sec/android/gradient_color_extractor/Kmeans$DominantColorResult;->color:I

    move/from16 v22, v0

    aput v22, v20, v21

    invoke-static/range {v19 .. v20}, Lcom/sec/android/gradient_color_extractor/CallGradient;->getAdjustedGradientColor([[F[I)[[I

    move-result-object v19

    return-object v19
.end method

.method public static getGradientColorForWallPaperFromBitmap(Landroid/graphics/Bitmap;I)Lcom/sec/android/gradient_color_extractor/CallGradient$GradientColorResult;
    .locals 11

    const/4 v10, 0x1

    const/4 v9, 0x0

    const v6, 0x3d4ccccd    # 0.05f

    const v5, 0x3eb33333    # 0.35f

    const v7, 0x3c1374bc    # 0.009f

    new-instance v1, Lcom/sec/android/gradient_color_extractor/CallGradient$GradientColorResult;

    invoke-direct {v1}, Lcom/sec/android/gradient_color_extractor/CallGradient$GradientColorResult;-><init>()V

    invoke-static {p1}, Lcom/sec/android/gradient_color_extractor/CallGradient;->makeClusterrGroup_preset1(I)[I

    move-result-object v8

    invoke-static {p0, v8}, Lcom/sec/android/gradient_color_extractor/CallGradient;->kMeans_hsv(Landroid/graphics/Bitmap;[I)[Lcom/sec/android/gradient_color_extractor/Kmeans$DominantColorResult;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/gradient_color_extractor/CallGradient;->getAdjustedGradientColor_wallpaper([Lcom/sec/android/gradient_color_extractor/Kmeans$DominantColorResult;)[[I

    move-result-object v4

    aget-object v2, v4, v9

    aget-object v3, v4, v10

    iput-object v0, v1, Lcom/sec/android/gradient_color_extractor/CallGradient$GradientColorResult;->dominantColorResult:[Lcom/sec/android/gradient_color_extractor/Kmeans$DominantColorResult;

    const/4 v8, 0x2

    new-array v8, v8, [I

    aput v9, v8, v9

    aput v10, v8, v10

    iput-object v8, v1, Lcom/sec/android/gradient_color_extractor/CallGradient$GradientColorResult;->gradientColorIndexForDominantColor:[I

    aget v8, v3, v9

    iput v8, v1, Lcom/sec/android/gradient_color_extractor/CallGradient$GradientColorResult;->gradientColor_a_original:I

    aget v8, v3, v10

    iput v8, v1, Lcom/sec/android/gradient_color_extractor/CallGradient$GradientColorResult;->gradientColor_b_original:I

    aget v8, v2, v9

    iput v8, v1, Lcom/sec/android/gradient_color_extractor/CallGradient$GradientColorResult;->gradientColor_a:I

    aget v8, v2, v10

    iput v8, v1, Lcom/sec/android/gradient_color_extractor/CallGradient$GradientColorResult;->gradientColor_b:I

    return-object v1
.end method
