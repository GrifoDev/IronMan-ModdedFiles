.class public Lcom/android/systemui/infinity/tangram/TangramSingleDrawLayer;
.super Ljava/lang/Object;
.source "TangramSingleDrawLayer.java"

# interfaces
.implements Lcom/android/systemui/infinity/tangram/TangramObjectInterface;


# instance fields
.field private aPositionLocation:I

.field private aTextureCoordinatesLocation:I

.field private aTextureCoordinatesLocationMask:I

.field alpha:F

.field beforeMoveX:F

.field beforeMoveY:F

.field canvasW:F

.field context:Landroid/content/Context;

.field hFix:F

.field hFixm:F

.field height:F

.field imageH:F

.field imageHm:F

.field imageMapRatioH:F

.field imageMapRatioW:F

.field imageW:F

.field imageWm:F

.field mapH:F

.field mapW:F

.field mask_imageH:F

.field mask_imageW:F

.field maskheight:F

.field maskwidth:F

.field minMove:F

.field moveXValue:F

.field moveYValue:F

.field private program:I

.field renderer:Lcom/android/systemui/infinity/GalaxyRenderer;

.field resourceId:I

.field sx:F

.field sy:F

.field textureId:I

.field tx:F

.field ty:F

.field tz:F

.field private uAlphaLocation:I

.field private uMaskMoveXLocation:I

.field private uMaskMoveYLocation:I

.field private uMatrixLocation:I

.field private uTextureUnitLocation:I

.field private final vertexArray:Lcom/android/systemui/infinity/common/VertexArray;

.field private final viewMatrix:[F

.field private final viewProjectionMatrix:[F

.field wFix:F

.field wFixm:F

.field width:F


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/infinity/GalaxyRenderer;IFFFFZFFFFFFFFZFFFFFFFF)V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v2, 0x10

    new-array v2, v2, [F

    iput-object v2, p0, Lcom/android/systemui/infinity/tangram/TangramSingleDrawLayer;->viewMatrix:[F

    const/16 v2, 0x10

    new-array v2, v2, [F

    iput-object v2, p0, Lcom/android/systemui/infinity/tangram/TangramSingleDrawLayer;->viewProjectionMatrix:[F

    const/high16 v2, 0x3f800000    # 1.0f

    iput v2, p0, Lcom/android/systemui/infinity/tangram/TangramSingleDrawLayer;->sx:F

    const/high16 v2, 0x3f800000    # 1.0f

    iput v2, p0, Lcom/android/systemui/infinity/tangram/TangramSingleDrawLayer;->sy:F

    const/high16 v2, 0x3f800000    # 1.0f

    iput v2, p0, Lcom/android/systemui/infinity/tangram/TangramSingleDrawLayer;->alpha:F

    const/4 v2, 0x0

    iput v2, p0, Lcom/android/systemui/infinity/tangram/TangramSingleDrawLayer;->beforeMoveX:F

    const/4 v2, 0x0

    iput v2, p0, Lcom/android/systemui/infinity/tangram/TangramSingleDrawLayer;->beforeMoveY:F

    const v2, 0x3727c5ac    # 1.0E-5f

    iput v2, p0, Lcom/android/systemui/infinity/tangram/TangramSingleDrawLayer;->minMove:F

    iput-object p1, p0, Lcom/android/systemui/infinity/tangram/TangramSingleDrawLayer;->context:Landroid/content/Context;

    iput p3, p0, Lcom/android/systemui/infinity/tangram/TangramSingleDrawLayer;->resourceId:I

    iput-object p2, p0, Lcom/android/systemui/infinity/tangram/TangramSingleDrawLayer;->renderer:Lcom/android/systemui/infinity/GalaxyRenderer;

    iput p6, p0, Lcom/android/systemui/infinity/tangram/TangramSingleDrawLayer;->canvasW:F

    move/from16 v0, p22

    iput v0, p0, Lcom/android/systemui/infinity/tangram/TangramSingleDrawLayer;->mapW:F

    move/from16 v0, p23

    iput v0, p0, Lcom/android/systemui/infinity/tangram/TangramSingleDrawLayer;->mapH:F

    move/from16 v0, p13

    iput v0, p0, Lcom/android/systemui/infinity/tangram/TangramSingleDrawLayer;->maskwidth:F

    move/from16 v0, p14

    iput v0, p0, Lcom/android/systemui/infinity/tangram/TangramSingleDrawLayer;->maskheight:F

    move/from16 v0, p18

    iput v0, p0, Lcom/android/systemui/infinity/tangram/TangramSingleDrawLayer;->mask_imageW:F

    move/from16 v0, p19

    iput v0, p0, Lcom/android/systemui/infinity/tangram/TangramSingleDrawLayer;->mask_imageH:F

    iput p4, p0, Lcom/android/systemui/infinity/tangram/TangramSingleDrawLayer;->width:F

    iput p5, p0, Lcom/android/systemui/infinity/tangram/TangramSingleDrawLayer;->height:F

    div-float v2, p4, p6

    iput v2, p0, Lcom/android/systemui/infinity/tangram/TangramSingleDrawLayer;->wFix:F

    div-float v2, p5, p7

    iput v2, p0, Lcom/android/systemui/infinity/tangram/TangramSingleDrawLayer;->hFix:F

    iput p9, p0, Lcom/android/systemui/infinity/tangram/TangramSingleDrawLayer;->imageW:F

    iput p10, p0, Lcom/android/systemui/infinity/tangram/TangramSingleDrawLayer;->imageH:F

    div-float v2, p13, p15

    iput v2, p0, Lcom/android/systemui/infinity/tangram/TangramSingleDrawLayer;->wFixm:F

    div-float v2, p14, p16

    iput v2, p0, Lcom/android/systemui/infinity/tangram/TangramSingleDrawLayer;->hFixm:F

    move/from16 v0, p18

    iput v0, p0, Lcom/android/systemui/infinity/tangram/TangramSingleDrawLayer;->imageWm:F

    move/from16 v0, p19

    iput v0, p0, Lcom/android/systemui/infinity/tangram/TangramSingleDrawLayer;->imageHm:F

    div-float v2, p13, p18

    iput v2, p0, Lcom/android/systemui/infinity/tangram/TangramSingleDrawLayer;->imageMapRatioW:F

    div-float v2, p14, p19

    iput v2, p0, Lcom/android/systemui/infinity/tangram/TangramSingleDrawLayer;->imageMapRatioH:F

    move/from16 v0, p24

    iput v0, p0, Lcom/android/systemui/infinity/tangram/TangramSingleDrawLayer;->moveXValue:F

    move/from16 v0, p25

    iput v0, p0, Lcom/android/systemui/infinity/tangram/TangramSingleDrawLayer;->moveYValue:F

    if-nez p8, :cond_0

    if-eqz p17, :cond_1

    :cond_0
    if-nez p8, :cond_2

    if-eqz p17, :cond_2

    move/from16 v0, p19

    iput v0, p0, Lcom/android/systemui/infinity/tangram/TangramSingleDrawLayer;->imageWm:F

    move/from16 v0, p18

    iput v0, p0, Lcom/android/systemui/infinity/tangram/TangramSingleDrawLayer;->imageHm:F

    const/16 v2, 0x24

    new-array v1, v2, [F

    const/4 v2, 0x0

    const/4 v3, 0x0

    aput v2, v1, v3

    const/4 v2, 0x0

    const/4 v3, 0x1

    aput v2, v1, v3

    iget v2, p0, Lcom/android/systemui/infinity/tangram/TangramSingleDrawLayer;->imageW:F

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    add-float v2, v2, p11

    div-float v2, v2, p22

    const/4 v3, 0x2

    aput v2, v1, v3

    iget v2, p0, Lcom/android/systemui/infinity/tangram/TangramSingleDrawLayer;->imageH:F

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    add-float v2, v2, p12

    div-float v2, v2, p23

    const/4 v3, 0x3

    aput v2, v1, v3

    iget v2, p0, Lcom/android/systemui/infinity/tangram/TangramSingleDrawLayer;->imageWm:F

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    add-float v2, v2, p20

    div-float v2, v2, p22

    const/4 v3, 0x4

    aput v2, v1, v3

    iget v2, p0, Lcom/android/systemui/infinity/tangram/TangramSingleDrawLayer;->imageHm:F

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    add-float v2, v2, p21

    div-float v2, v2, p23

    const/4 v3, 0x5

    aput v2, v1, v3

    iget v2, p0, Lcom/android/systemui/infinity/tangram/TangramSingleDrawLayer;->wFix:F

    const/high16 v3, -0x40800000    # -1.0f

    mul-float/2addr v2, v3

    const/4 v3, 0x6

    aput v2, v1, v3

    iget v2, p0, Lcom/android/systemui/infinity/tangram/TangramSingleDrawLayer;->hFix:F

    const/high16 v3, -0x40800000    # -1.0f

    mul-float/2addr v2, v3

    const/4 v3, 0x7

    aput v2, v1, v3

    div-float v2, p11, p22

    const/16 v3, 0x8

    aput v2, v1, v3

    iget v2, p0, Lcom/android/systemui/infinity/tangram/TangramSingleDrawLayer;->imageH:F

    add-float v2, v2, p12

    div-float v2, v2, p23

    const/16 v3, 0x9

    aput v2, v1, v3

    div-float v2, p20, p22

    sub-float v3, p13, p4

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    iget v4, p0, Lcom/android/systemui/infinity/tangram/TangramSingleDrawLayer;->imageMapRatioW:F

    div-float/2addr v3, v4

    div-float v3, v3, p22

    add-float/2addr v2, v3

    const/16 v3, 0xa

    aput v2, v1, v3

    div-float v2, p21, p23

    sub-float v3, p14, p5

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    iget v4, p0, Lcom/android/systemui/infinity/tangram/TangramSingleDrawLayer;->imageMapRatioH:F

    div-float/2addr v3, v4

    div-float v3, v3, p23

    add-float/2addr v2, v3

    const/16 v3, 0xb

    aput v2, v1, v3

    iget v2, p0, Lcom/android/systemui/infinity/tangram/TangramSingleDrawLayer;->wFix:F

    const/high16 v3, 0x3f800000    # 1.0f

    mul-float/2addr v2, v3

    const/16 v3, 0xc

    aput v2, v1, v3

    iget v2, p0, Lcom/android/systemui/infinity/tangram/TangramSingleDrawLayer;->hFix:F

    const/high16 v3, -0x40800000    # -1.0f

    mul-float/2addr v2, v3

    const/16 v3, 0xd

    aput v2, v1, v3

    iget v2, p0, Lcom/android/systemui/infinity/tangram/TangramSingleDrawLayer;->imageW:F

    add-float v2, v2, p11

    div-float v2, v2, p22

    const/16 v3, 0xe

    aput v2, v1, v3

    iget v2, p0, Lcom/android/systemui/infinity/tangram/TangramSingleDrawLayer;->imageH:F

    add-float v2, v2, p12

    div-float v2, v2, p23

    const/16 v3, 0xf

    aput v2, v1, v3

    div-float v2, p20, p22

    sub-float v3, p13, p4

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    iget v4, p0, Lcom/android/systemui/infinity/tangram/TangramSingleDrawLayer;->imageMapRatioW:F

    div-float/2addr v3, v4

    div-float v3, v3, p22

    add-float/2addr v2, v3

    const/16 v3, 0x10

    aput v2, v1, v3

    iget v2, p0, Lcom/android/systemui/infinity/tangram/TangramSingleDrawLayer;->imageHm:F

    add-float v2, v2, p21

    div-float v2, v2, p23

    sub-float v3, p14, p5

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    iget v4, p0, Lcom/android/systemui/infinity/tangram/TangramSingleDrawLayer;->imageMapRatioH:F

    div-float/2addr v3, v4

    div-float v3, v3, p23

    sub-float/2addr v2, v3

    const/16 v3, 0x11

    aput v2, v1, v3

    iget v2, p0, Lcom/android/systemui/infinity/tangram/TangramSingleDrawLayer;->wFix:F

    const/high16 v3, 0x3f800000    # 1.0f

    mul-float/2addr v2, v3

    const/16 v3, 0x12

    aput v2, v1, v3

    iget v2, p0, Lcom/android/systemui/infinity/tangram/TangramSingleDrawLayer;->hFix:F

    const/high16 v3, 0x3f800000    # 1.0f

    mul-float/2addr v2, v3

    const/16 v3, 0x13

    aput v2, v1, v3

    iget v2, p0, Lcom/android/systemui/infinity/tangram/TangramSingleDrawLayer;->imageW:F

    add-float v2, v2, p11

    div-float v2, v2, p22

    const/16 v3, 0x14

    aput v2, v1, v3

    div-float v2, p12, p23

    const/16 v3, 0x15

    aput v2, v1, v3

    iget v2, p0, Lcom/android/systemui/infinity/tangram/TangramSingleDrawLayer;->imageWm:F

    add-float v2, v2, p20

    div-float v2, v2, p22

    sub-float v3, p13, p4

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    iget v4, p0, Lcom/android/systemui/infinity/tangram/TangramSingleDrawLayer;->imageMapRatioW:F

    div-float/2addr v3, v4

    div-float v3, v3, p22

    sub-float/2addr v2, v3

    const/16 v3, 0x16

    aput v2, v1, v3

    iget v2, p0, Lcom/android/systemui/infinity/tangram/TangramSingleDrawLayer;->imageHm:F

    add-float v2, v2, p21

    div-float v2, v2, p23

    sub-float v3, p14, p5

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    iget v4, p0, Lcom/android/systemui/infinity/tangram/TangramSingleDrawLayer;->imageMapRatioH:F

    div-float/2addr v3, v4

    div-float v3, v3, p23

    sub-float/2addr v2, v3

    const/16 v3, 0x17

    aput v2, v1, v3

    iget v2, p0, Lcom/android/systemui/infinity/tangram/TangramSingleDrawLayer;->wFix:F

    const/high16 v3, -0x40800000    # -1.0f

    mul-float/2addr v2, v3

    const/16 v3, 0x18

    aput v2, v1, v3

    iget v2, p0, Lcom/android/systemui/infinity/tangram/TangramSingleDrawLayer;->hFix:F

    const/high16 v3, 0x3f800000    # 1.0f

    mul-float/2addr v2, v3

    const/16 v3, 0x19

    aput v2, v1, v3

    div-float v2, p11, p22

    const/16 v3, 0x1a

    aput v2, v1, v3

    div-float v2, p12, p23

    const/16 v3, 0x1b

    aput v2, v1, v3

    iget v2, p0, Lcom/android/systemui/infinity/tangram/TangramSingleDrawLayer;->imageWm:F

    add-float v2, v2, p20

    div-float v2, v2, p22

    sub-float v3, p13, p4

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    iget v4, p0, Lcom/android/systemui/infinity/tangram/TangramSingleDrawLayer;->imageMapRatioW:F

    div-float/2addr v3, v4

    div-float v3, v3, p22

    sub-float/2addr v2, v3

    const/16 v3, 0x1c

    aput v2, v1, v3

    div-float v2, p21, p23

    sub-float v3, p14, p5

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    iget v4, p0, Lcom/android/systemui/infinity/tangram/TangramSingleDrawLayer;->imageMapRatioH:F

    div-float/2addr v3, v4

    div-float v3, v3, p23

    add-float/2addr v2, v3

    const/16 v3, 0x1d

    aput v2, v1, v3

    iget v2, p0, Lcom/android/systemui/infinity/tangram/TangramSingleDrawLayer;->wFix:F

    const/high16 v3, -0x40800000    # -1.0f

    mul-float/2addr v2, v3

    const/16 v3, 0x1e

    aput v2, v1, v3

    iget v2, p0, Lcom/android/systemui/infinity/tangram/TangramSingleDrawLayer;->hFix:F

    const/high16 v3, -0x40800000    # -1.0f

    mul-float/2addr v2, v3

    const/16 v3, 0x1f

    aput v2, v1, v3

    div-float v2, p11, p22

    const/16 v3, 0x20

    aput v2, v1, v3

    iget v2, p0, Lcom/android/systemui/infinity/tangram/TangramSingleDrawLayer;->imageH:F

    add-float v2, v2, p12

    div-float v2, v2, p23

    const/16 v3, 0x21

    aput v2, v1, v3

    div-float v2, p20, p22

    sub-float v3, p13, p4

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    iget v4, p0, Lcom/android/systemui/infinity/tangram/TangramSingleDrawLayer;->imageMapRatioW:F

    div-float/2addr v3, v4

    div-float v3, v3, p22

    add-float/2addr v2, v3

    const/16 v3, 0x22

    aput v2, v1, v3

    div-float v2, p21, p23

    sub-float v3, p14, p5

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    iget v4, p0, Lcom/android/systemui/infinity/tangram/TangramSingleDrawLayer;->imageMapRatioH:F

    div-float/2addr v3, v4

    div-float v3, v3, p23

    add-float/2addr v2, v3

    const/16 v3, 0x23

    aput v2, v1, v3

    new-instance v2, Lcom/android/systemui/infinity/common/VertexArray;

    invoke-direct {v2, v1}, Lcom/android/systemui/infinity/common/VertexArray;-><init>([F)V

    iput-object v2, p0, Lcom/android/systemui/infinity/tangram/TangramSingleDrawLayer;->vertexArray:Lcom/android/systemui/infinity/common/VertexArray;

    :goto_0
    return-void

    :cond_1
    const/16 v2, 0x24

    new-array v1, v2, [F

    const/4 v2, 0x0

    const/4 v3, 0x0

    aput v2, v1, v3

    const/4 v2, 0x0

    const/4 v3, 0x1

    aput v2, v1, v3

    iget v2, p0, Lcom/android/systemui/infinity/tangram/TangramSingleDrawLayer;->imageW:F

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    add-float v2, v2, p11

    div-float v2, v2, p22

    const/4 v3, 0x2

    aput v2, v1, v3

    iget v2, p0, Lcom/android/systemui/infinity/tangram/TangramSingleDrawLayer;->imageH:F

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    add-float v2, v2, p12

    div-float v2, v2, p23

    const/4 v3, 0x3

    aput v2, v1, v3

    iget v2, p0, Lcom/android/systemui/infinity/tangram/TangramSingleDrawLayer;->imageWm:F

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    add-float v2, v2, p20

    div-float v2, v2, p22

    const/4 v3, 0x4

    aput v2, v1, v3

    iget v2, p0, Lcom/android/systemui/infinity/tangram/TangramSingleDrawLayer;->imageHm:F

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    add-float v2, v2, p21

    div-float v2, v2, p23

    const/4 v3, 0x5

    aput v2, v1, v3

    iget v2, p0, Lcom/android/systemui/infinity/tangram/TangramSingleDrawLayer;->wFix:F

    const/high16 v3, -0x40800000    # -1.0f

    mul-float/2addr v2, v3

    const/4 v3, 0x6

    aput v2, v1, v3

    iget v2, p0, Lcom/android/systemui/infinity/tangram/TangramSingleDrawLayer;->hFix:F

    const/high16 v3, -0x40800000    # -1.0f

    mul-float/2addr v2, v3

    const/4 v3, 0x7

    aput v2, v1, v3

    div-float v2, p11, p22

    const/16 v3, 0x8

    aput v2, v1, v3

    iget v2, p0, Lcom/android/systemui/infinity/tangram/TangramSingleDrawLayer;->imageH:F

    add-float v2, v2, p12

    div-float v2, v2, p23

    const/16 v3, 0x9

    aput v2, v1, v3

    div-float v2, p20, p22

    sub-float v3, p13, p4

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    iget v4, p0, Lcom/android/systemui/infinity/tangram/TangramSingleDrawLayer;->imageMapRatioW:F

    div-float/2addr v3, v4

    div-float v3, v3, p22

    add-float/2addr v2, v3

    const/16 v3, 0xa

    aput v2, v1, v3

    iget v2, p0, Lcom/android/systemui/infinity/tangram/TangramSingleDrawLayer;->imageHm:F

    add-float v2, v2, p21

    div-float v2, v2, p23

    sub-float v3, p14, p5

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    iget v4, p0, Lcom/android/systemui/infinity/tangram/TangramSingleDrawLayer;->imageMapRatioH:F

    div-float/2addr v3, v4

    div-float v3, v3, p23

    sub-float/2addr v2, v3

    const/16 v3, 0xb

    aput v2, v1, v3

    iget v2, p0, Lcom/android/systemui/infinity/tangram/TangramSingleDrawLayer;->wFix:F

    const/high16 v3, 0x3f800000    # 1.0f

    mul-float/2addr v2, v3

    const/16 v3, 0xc

    aput v2, v1, v3

    iget v2, p0, Lcom/android/systemui/infinity/tangram/TangramSingleDrawLayer;->hFix:F

    const/high16 v3, -0x40800000    # -1.0f

    mul-float/2addr v2, v3

    const/16 v3, 0xd

    aput v2, v1, v3

    iget v2, p0, Lcom/android/systemui/infinity/tangram/TangramSingleDrawLayer;->imageW:F

    add-float v2, v2, p11

    div-float v2, v2, p22

    const/16 v3, 0xe

    aput v2, v1, v3

    iget v2, p0, Lcom/android/systemui/infinity/tangram/TangramSingleDrawLayer;->imageH:F

    add-float v2, v2, p12

    div-float v2, v2, p23

    const/16 v3, 0xf

    aput v2, v1, v3

    iget v2, p0, Lcom/android/systemui/infinity/tangram/TangramSingleDrawLayer;->imageWm:F

    add-float v2, v2, p20

    div-float v2, v2, p22

    sub-float v3, p13, p4

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    iget v4, p0, Lcom/android/systemui/infinity/tangram/TangramSingleDrawLayer;->imageMapRatioW:F

    div-float/2addr v3, v4

    div-float v3, v3, p22

    sub-float/2addr v2, v3

    const/16 v3, 0x10

    aput v2, v1, v3

    iget v2, p0, Lcom/android/systemui/infinity/tangram/TangramSingleDrawLayer;->imageHm:F

    add-float v2, v2, p21

    div-float v2, v2, p23

    sub-float v3, p14, p5

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    iget v4, p0, Lcom/android/systemui/infinity/tangram/TangramSingleDrawLayer;->imageMapRatioH:F

    div-float/2addr v3, v4

    div-float v3, v3, p23

    sub-float/2addr v2, v3

    const/16 v3, 0x11

    aput v2, v1, v3

    iget v2, p0, Lcom/android/systemui/infinity/tangram/TangramSingleDrawLayer;->wFix:F

    const/high16 v3, 0x3f800000    # 1.0f

    mul-float/2addr v2, v3

    const/16 v3, 0x12

    aput v2, v1, v3

    iget v2, p0, Lcom/android/systemui/infinity/tangram/TangramSingleDrawLayer;->hFix:F

    const/high16 v3, 0x3f800000    # 1.0f

    mul-float/2addr v2, v3

    const/16 v3, 0x13

    aput v2, v1, v3

    iget v2, p0, Lcom/android/systemui/infinity/tangram/TangramSingleDrawLayer;->imageW:F

    add-float v2, v2, p11

    div-float v2, v2, p22

    const/16 v3, 0x14

    aput v2, v1, v3

    div-float v2, p12, p23

    const/16 v3, 0x15

    aput v2, v1, v3

    iget v2, p0, Lcom/android/systemui/infinity/tangram/TangramSingleDrawLayer;->imageWm:F

    add-float v2, v2, p20

    div-float v2, v2, p22

    sub-float v3, p13, p4

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    iget v4, p0, Lcom/android/systemui/infinity/tangram/TangramSingleDrawLayer;->imageMapRatioW:F

    div-float/2addr v3, v4

    div-float v3, v3, p22

    sub-float/2addr v2, v3

    const/16 v3, 0x16

    aput v2, v1, v3

    div-float v2, p21, p23

    sub-float v3, p14, p5

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    iget v4, p0, Lcom/android/systemui/infinity/tangram/TangramSingleDrawLayer;->imageMapRatioH:F

    div-float/2addr v3, v4

    div-float v3, v3, p23

    add-float/2addr v2, v3

    const/16 v3, 0x17

    aput v2, v1, v3

    iget v2, p0, Lcom/android/systemui/infinity/tangram/TangramSingleDrawLayer;->wFix:F

    const/high16 v3, -0x40800000    # -1.0f

    mul-float/2addr v2, v3

    const/16 v3, 0x18

    aput v2, v1, v3

    iget v2, p0, Lcom/android/systemui/infinity/tangram/TangramSingleDrawLayer;->hFix:F

    const/high16 v3, 0x3f800000    # 1.0f

    mul-float/2addr v2, v3

    const/16 v3, 0x19

    aput v2, v1, v3

    div-float v2, p11, p22

    const/16 v3, 0x1a

    aput v2, v1, v3

    div-float v2, p12, p23

    const/16 v3, 0x1b

    aput v2, v1, v3

    div-float v2, p20, p22

    sub-float v3, p13, p4

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    iget v4, p0, Lcom/android/systemui/infinity/tangram/TangramSingleDrawLayer;->imageMapRatioW:F

    div-float/2addr v3, v4

    div-float v3, v3, p22

    add-float/2addr v2, v3

    const/16 v3, 0x1c

    aput v2, v1, v3

    div-float v2, p21, p23

    sub-float v3, p14, p5

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    iget v4, p0, Lcom/android/systemui/infinity/tangram/TangramSingleDrawLayer;->imageMapRatioH:F

    div-float/2addr v3, v4

    div-float v3, v3, p23

    add-float/2addr v2, v3

    const/16 v3, 0x1d

    aput v2, v1, v3

    iget v2, p0, Lcom/android/systemui/infinity/tangram/TangramSingleDrawLayer;->wFix:F

    const/high16 v3, -0x40800000    # -1.0f

    mul-float/2addr v2, v3

    const/16 v3, 0x1e

    aput v2, v1, v3

    iget v2, p0, Lcom/android/systemui/infinity/tangram/TangramSingleDrawLayer;->hFix:F

    const/high16 v3, -0x40800000    # -1.0f

    mul-float/2addr v2, v3

    const/16 v3, 0x1f

    aput v2, v1, v3

    div-float v2, p11, p22

    const/16 v3, 0x20

    aput v2, v1, v3

    iget v2, p0, Lcom/android/systemui/infinity/tangram/TangramSingleDrawLayer;->imageH:F

    add-float v2, v2, p12

    div-float v2, v2, p23

    const/16 v3, 0x21

    aput v2, v1, v3

    div-float v2, p20, p22

    sub-float v3, p13, p4

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    iget v4, p0, Lcom/android/systemui/infinity/tangram/TangramSingleDrawLayer;->imageMapRatioW:F

    div-float/2addr v3, v4

    div-float v3, v3, p22

    add-float/2addr v2, v3

    const/16 v3, 0x22

    aput v2, v1, v3

    iget v2, p0, Lcom/android/systemui/infinity/tangram/TangramSingleDrawLayer;->imageHm:F

    add-float v2, v2, p21

    div-float v2, v2, p23

    sub-float v3, p14, p5

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    iget v4, p0, Lcom/android/systemui/infinity/tangram/TangramSingleDrawLayer;->imageMapRatioH:F

    div-float/2addr v3, v4

    div-float v3, v3, p23

    sub-float/2addr v2, v3

    const/16 v3, 0x23

    aput v2, v1, v3

    new-instance v2, Lcom/android/systemui/infinity/common/VertexArray;

    invoke-direct {v2, v1}, Lcom/android/systemui/infinity/common/VertexArray;-><init>([F)V

    iput-object v2, p0, Lcom/android/systemui/infinity/tangram/TangramSingleDrawLayer;->vertexArray:Lcom/android/systemui/infinity/common/VertexArray;

    goto/16 :goto_0

    :cond_2
    if-eqz p8, :cond_3

    if-eqz p17, :cond_4

    :cond_3
    iput p10, p0, Lcom/android/systemui/infinity/tangram/TangramSingleDrawLayer;->imageW:F

    iput p9, p0, Lcom/android/systemui/infinity/tangram/TangramSingleDrawLayer;->imageH:F

    move/from16 v0, p19

    iput v0, p0, Lcom/android/systemui/infinity/tangram/TangramSingleDrawLayer;->imageWm:F

    move/from16 v0, p18

    iput v0, p0, Lcom/android/systemui/infinity/tangram/TangramSingleDrawLayer;->imageHm:F

    const/16 v2, 0x24

    new-array v1, v2, [F

    const/4 v2, 0x0

    const/4 v3, 0x0

    aput v2, v1, v3

    const/4 v2, 0x0

    const/4 v3, 0x1

    aput v2, v1, v3

    iget v2, p0, Lcom/android/systemui/infinity/tangram/TangramSingleDrawLayer;->imageW:F

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    add-float v2, v2, p11

    div-float v2, v2, p22

    const/4 v3, 0x2

    aput v2, v1, v3

    iget v2, p0, Lcom/android/systemui/infinity/tangram/TangramSingleDrawLayer;->imageH:F

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    add-float v2, v2, p12

    div-float v2, v2, p23

    const/4 v3, 0x3

    aput v2, v1, v3

    iget v2, p0, Lcom/android/systemui/infinity/tangram/TangramSingleDrawLayer;->imageWm:F

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    add-float v2, v2, p20

    div-float v2, v2, p22

    const/4 v3, 0x4

    aput v2, v1, v3

    iget v2, p0, Lcom/android/systemui/infinity/tangram/TangramSingleDrawLayer;->imageHm:F

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    add-float v2, v2, p21

    div-float v2, v2, p23

    const/4 v3, 0x5

    aput v2, v1, v3

    iget v2, p0, Lcom/android/systemui/infinity/tangram/TangramSingleDrawLayer;->wFix:F

    const/high16 v3, -0x40800000    # -1.0f

    mul-float/2addr v2, v3

    const/4 v3, 0x6

    aput v2, v1, v3

    iget v2, p0, Lcom/android/systemui/infinity/tangram/TangramSingleDrawLayer;->hFix:F

    const/high16 v3, -0x40800000    # -1.0f

    mul-float/2addr v2, v3

    const/4 v3, 0x7

    aput v2, v1, v3

    div-float v2, p11, p22

    const/16 v3, 0x8

    aput v2, v1, v3

    iget v2, p0, Lcom/android/systemui/infinity/tangram/TangramSingleDrawLayer;->imageH:F

    add-float v2, v2, p12

    div-float v2, v2, p23

    const/16 v3, 0x9

    aput v2, v1, v3

    div-float v2, p20, p22

    sub-float v3, p13, p4

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    iget v4, p0, Lcom/android/systemui/infinity/tangram/TangramSingleDrawLayer;->imageMapRatioW:F

    div-float/2addr v3, v4

    div-float v3, v3, p22

    add-float/2addr v2, v3

    const/16 v3, 0xa

    aput v2, v1, v3

    div-float v2, p21, p23

    sub-float v3, p14, p5

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    iget v4, p0, Lcom/android/systemui/infinity/tangram/TangramSingleDrawLayer;->imageMapRatioH:F

    div-float/2addr v3, v4

    div-float v3, v3, p23

    add-float/2addr v2, v3

    const/16 v3, 0xb

    aput v2, v1, v3

    iget v2, p0, Lcom/android/systemui/infinity/tangram/TangramSingleDrawLayer;->wFix:F

    const/high16 v3, 0x3f800000    # 1.0f

    mul-float/2addr v2, v3

    const/16 v3, 0xc

    aput v2, v1, v3

    iget v2, p0, Lcom/android/systemui/infinity/tangram/TangramSingleDrawLayer;->hFix:F

    const/high16 v3, -0x40800000    # -1.0f

    mul-float/2addr v2, v3

    const/16 v3, 0xd

    aput v2, v1, v3

    iget v2, p0, Lcom/android/systemui/infinity/tangram/TangramSingleDrawLayer;->imageW:F

    add-float v2, v2, p11

    div-float v2, v2, p22

    const/16 v3, 0xe

    aput v2, v1, v3

    iget v2, p0, Lcom/android/systemui/infinity/tangram/TangramSingleDrawLayer;->imageH:F

    add-float v2, v2, p12

    div-float v2, v2, p23

    const/16 v3, 0xf

    aput v2, v1, v3

    div-float v2, p20, p22

    sub-float v3, p13, p4

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    iget v4, p0, Lcom/android/systemui/infinity/tangram/TangramSingleDrawLayer;->imageMapRatioW:F

    div-float/2addr v3, v4

    div-float v3, v3, p22

    add-float/2addr v2, v3

    const/16 v3, 0x10

    aput v2, v1, v3

    iget v2, p0, Lcom/android/systemui/infinity/tangram/TangramSingleDrawLayer;->imageHm:F

    add-float v2, v2, p21

    div-float v2, v2, p23

    sub-float v3, p14, p5

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    iget v4, p0, Lcom/android/systemui/infinity/tangram/TangramSingleDrawLayer;->imageMapRatioH:F

    div-float/2addr v3, v4

    div-float v3, v3, p23

    sub-float/2addr v2, v3

    const/16 v3, 0x11

    aput v2, v1, v3

    iget v2, p0, Lcom/android/systemui/infinity/tangram/TangramSingleDrawLayer;->wFix:F

    const/high16 v3, 0x3f800000    # 1.0f

    mul-float/2addr v2, v3

    const/16 v3, 0x12

    aput v2, v1, v3

    iget v2, p0, Lcom/android/systemui/infinity/tangram/TangramSingleDrawLayer;->hFix:F

    const/high16 v3, 0x3f800000    # 1.0f

    mul-float/2addr v2, v3

    const/16 v3, 0x13

    aput v2, v1, v3

    iget v2, p0, Lcom/android/systemui/infinity/tangram/TangramSingleDrawLayer;->imageW:F

    add-float v2, v2, p11

    div-float v2, v2, p22

    const/16 v3, 0x14

    aput v2, v1, v3

    div-float v2, p12, p23

    const/16 v3, 0x15

    aput v2, v1, v3

    iget v2, p0, Lcom/android/systemui/infinity/tangram/TangramSingleDrawLayer;->imageWm:F

    add-float v2, v2, p20

    div-float v2, v2, p22

    sub-float v3, p13, p4

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    iget v4, p0, Lcom/android/systemui/infinity/tangram/TangramSingleDrawLayer;->imageMapRatioW:F

    div-float/2addr v3, v4

    div-float v3, v3, p22

    sub-float/2addr v2, v3

    const/16 v3, 0x16

    aput v2, v1, v3

    iget v2, p0, Lcom/android/systemui/infinity/tangram/TangramSingleDrawLayer;->imageHm:F

    add-float v2, v2, p21

    div-float v2, v2, p23

    sub-float v3, p14, p5

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    iget v4, p0, Lcom/android/systemui/infinity/tangram/TangramSingleDrawLayer;->imageMapRatioH:F

    div-float/2addr v3, v4

    div-float v3, v3, p23

    sub-float/2addr v2, v3

    const/16 v3, 0x17

    aput v2, v1, v3

    iget v2, p0, Lcom/android/systemui/infinity/tangram/TangramSingleDrawLayer;->wFix:F

    const/high16 v3, -0x40800000    # -1.0f

    mul-float/2addr v2, v3

    const/16 v3, 0x18

    aput v2, v1, v3

    iget v2, p0, Lcom/android/systemui/infinity/tangram/TangramSingleDrawLayer;->hFix:F

    const/high16 v3, 0x3f800000    # 1.0f

    mul-float/2addr v2, v3

    const/16 v3, 0x19

    aput v2, v1, v3

    div-float v2, p11, p22

    const/16 v3, 0x1a

    aput v2, v1, v3

    div-float v2, p12, p23

    const/16 v3, 0x1b

    aput v2, v1, v3

    iget v2, p0, Lcom/android/systemui/infinity/tangram/TangramSingleDrawLayer;->imageWm:F

    add-float v2, v2, p20

    div-float v2, v2, p22

    sub-float v3, p13, p4

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    iget v4, p0, Lcom/android/systemui/infinity/tangram/TangramSingleDrawLayer;->imageMapRatioW:F

    div-float/2addr v3, v4

    div-float v3, v3, p22

    sub-float/2addr v2, v3

    const/16 v3, 0x1c

    aput v2, v1, v3

    div-float v2, p21, p23

    sub-float v3, p14, p5

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    iget v4, p0, Lcom/android/systemui/infinity/tangram/TangramSingleDrawLayer;->imageMapRatioH:F

    div-float/2addr v3, v4

    div-float v3, v3, p23

    add-float/2addr v2, v3

    const/16 v3, 0x1d

    aput v2, v1, v3

    iget v2, p0, Lcom/android/systemui/infinity/tangram/TangramSingleDrawLayer;->wFix:F

    const/high16 v3, -0x40800000    # -1.0f

    mul-float/2addr v2, v3

    const/16 v3, 0x1e

    aput v2, v1, v3

    iget v2, p0, Lcom/android/systemui/infinity/tangram/TangramSingleDrawLayer;->hFix:F

    const/high16 v3, -0x40800000    # -1.0f

    mul-float/2addr v2, v3

    const/16 v3, 0x1f

    aput v2, v1, v3

    div-float v2, p11, p22

    const/16 v3, 0x20

    aput v2, v1, v3

    iget v2, p0, Lcom/android/systemui/infinity/tangram/TangramSingleDrawLayer;->imageH:F

    add-float v2, v2, p12

    div-float v2, v2, p23

    const/16 v3, 0x21

    aput v2, v1, v3

    div-float v2, p20, p22

    sub-float v3, p13, p4

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    iget v4, p0, Lcom/android/systemui/infinity/tangram/TangramSingleDrawLayer;->imageMapRatioW:F

    div-float/2addr v3, v4

    div-float v3, v3, p22

    add-float/2addr v2, v3

    const/16 v3, 0x22

    aput v2, v1, v3

    div-float v2, p21, p23

    sub-float v3, p14, p5

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    iget v4, p0, Lcom/android/systemui/infinity/tangram/TangramSingleDrawLayer;->imageMapRatioH:F

    div-float/2addr v3, v4

    div-float v3, v3, p23

    add-float/2addr v2, v3

    const/16 v3, 0x23

    aput v2, v1, v3

    new-instance v2, Lcom/android/systemui/infinity/common/VertexArray;

    invoke-direct {v2, v1}, Lcom/android/systemui/infinity/common/VertexArray;-><init>([F)V

    iput-object v2, p0, Lcom/android/systemui/infinity/tangram/TangramSingleDrawLayer;->vertexArray:Lcom/android/systemui/infinity/common/VertexArray;

    goto/16 :goto_0

    :cond_4
    iput p10, p0, Lcom/android/systemui/infinity/tangram/TangramSingleDrawLayer;->imageW:F

    iput p9, p0, Lcom/android/systemui/infinity/tangram/TangramSingleDrawLayer;->imageH:F

    const/16 v2, 0x24

    new-array v1, v2, [F

    const/4 v2, 0x0

    const/4 v3, 0x0

    aput v2, v1, v3

    const/4 v2, 0x0

    const/4 v3, 0x1

    aput v2, v1, v3

    iget v2, p0, Lcom/android/systemui/infinity/tangram/TangramSingleDrawLayer;->imageW:F

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    add-float v2, v2, p11

    div-float v2, v2, p22

    const/4 v3, 0x2

    aput v2, v1, v3

    iget v2, p0, Lcom/android/systemui/infinity/tangram/TangramSingleDrawLayer;->imageH:F

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    add-float v2, v2, p12

    div-float v2, v2, p23

    const/4 v3, 0x3

    aput v2, v1, v3

    iget v2, p0, Lcom/android/systemui/infinity/tangram/TangramSingleDrawLayer;->imageWm:F

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    add-float v2, v2, p20

    div-float v2, v2, p22

    const/4 v3, 0x4

    aput v2, v1, v3

    iget v2, p0, Lcom/android/systemui/infinity/tangram/TangramSingleDrawLayer;->imageHm:F

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    add-float v2, v2, p21

    div-float v2, v2, p23

    const/4 v3, 0x5

    aput v2, v1, v3

    iget v2, p0, Lcom/android/systemui/infinity/tangram/TangramSingleDrawLayer;->wFix:F

    const/high16 v3, -0x40800000    # -1.0f

    mul-float/2addr v2, v3

    const/4 v3, 0x6

    aput v2, v1, v3

    iget v2, p0, Lcom/android/systemui/infinity/tangram/TangramSingleDrawLayer;->hFix:F

    const/high16 v3, -0x40800000    # -1.0f

    mul-float/2addr v2, v3

    const/4 v3, 0x7

    aput v2, v1, v3

    div-float v2, p11, p22

    const/16 v3, 0x8

    aput v2, v1, v3

    div-float v2, p12, p23

    const/16 v3, 0x9

    aput v2, v1, v3

    div-float v2, p20, p22

    sub-float v3, p13, p4

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    iget v4, p0, Lcom/android/systemui/infinity/tangram/TangramSingleDrawLayer;->imageMapRatioW:F

    div-float/2addr v3, v4

    div-float v3, v3, p22

    add-float/2addr v2, v3

    const/16 v3, 0xa

    aput v2, v1, v3

    iget v2, p0, Lcom/android/systemui/infinity/tangram/TangramSingleDrawLayer;->imageHm:F

    add-float v2, v2, p21

    div-float v2, v2, p23

    sub-float v3, p14, p5

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    iget v4, p0, Lcom/android/systemui/infinity/tangram/TangramSingleDrawLayer;->imageMapRatioH:F

    div-float/2addr v3, v4

    div-float v3, v3, p23

    sub-float/2addr v2, v3

    const/16 v3, 0xb

    aput v2, v1, v3

    iget v2, p0, Lcom/android/systemui/infinity/tangram/TangramSingleDrawLayer;->wFix:F

    const/high16 v3, 0x3f800000    # 1.0f

    mul-float/2addr v2, v3

    const/16 v3, 0xc

    aput v2, v1, v3

    iget v2, p0, Lcom/android/systemui/infinity/tangram/TangramSingleDrawLayer;->hFix:F

    const/high16 v3, -0x40800000    # -1.0f

    mul-float/2addr v2, v3

    const/16 v3, 0xd

    aput v2, v1, v3

    div-float v2, p11, p22

    const/16 v3, 0xe

    aput v2, v1, v3

    iget v2, p0, Lcom/android/systemui/infinity/tangram/TangramSingleDrawLayer;->imageH:F

    add-float v2, v2, p12

    div-float v2, v2, p23

    const/16 v3, 0xf

    aput v2, v1, v3

    iget v2, p0, Lcom/android/systemui/infinity/tangram/TangramSingleDrawLayer;->imageWm:F

    add-float v2, v2, p20

    div-float v2, v2, p22

    sub-float v3, p13, p4

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    iget v4, p0, Lcom/android/systemui/infinity/tangram/TangramSingleDrawLayer;->imageMapRatioW:F

    div-float/2addr v3, v4

    div-float v3, v3, p22

    sub-float/2addr v2, v3

    const/16 v3, 0x10

    aput v2, v1, v3

    iget v2, p0, Lcom/android/systemui/infinity/tangram/TangramSingleDrawLayer;->imageHm:F

    add-float v2, v2, p21

    div-float v2, v2, p23

    sub-float v3, p14, p5

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    iget v4, p0, Lcom/android/systemui/infinity/tangram/TangramSingleDrawLayer;->imageMapRatioH:F

    div-float/2addr v3, v4

    div-float v3, v3, p23

    sub-float/2addr v2, v3

    const/16 v3, 0x11

    aput v2, v1, v3

    iget v2, p0, Lcom/android/systemui/infinity/tangram/TangramSingleDrawLayer;->wFix:F

    const/high16 v3, 0x3f800000    # 1.0f

    mul-float/2addr v2, v3

    const/16 v3, 0x12

    aput v2, v1, v3

    iget v2, p0, Lcom/android/systemui/infinity/tangram/TangramSingleDrawLayer;->hFix:F

    const/high16 v3, 0x3f800000    # 1.0f

    mul-float/2addr v2, v3

    const/16 v3, 0x13

    aput v2, v1, v3

    iget v2, p0, Lcom/android/systemui/infinity/tangram/TangramSingleDrawLayer;->imageW:F

    add-float v2, v2, p11

    div-float v2, v2, p22

    const/16 v3, 0x14

    aput v2, v1, v3

    iget v2, p0, Lcom/android/systemui/infinity/tangram/TangramSingleDrawLayer;->imageH:F

    add-float v2, v2, p12

    div-float v2, v2, p23

    const/16 v3, 0x15

    aput v2, v1, v3

    iget v2, p0, Lcom/android/systemui/infinity/tangram/TangramSingleDrawLayer;->imageWm:F

    add-float v2, v2, p20

    div-float v2, v2, p22

    sub-float v3, p13, p4

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    iget v4, p0, Lcom/android/systemui/infinity/tangram/TangramSingleDrawLayer;->imageMapRatioW:F

    div-float/2addr v3, v4

    div-float v3, v3, p22

    sub-float/2addr v2, v3

    const/16 v3, 0x16

    aput v2, v1, v3

    div-float v2, p21, p23

    sub-float v3, p14, p5

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    iget v4, p0, Lcom/android/systemui/infinity/tangram/TangramSingleDrawLayer;->imageMapRatioH:F

    div-float/2addr v3, v4

    div-float v3, v3, p23

    add-float/2addr v2, v3

    const/16 v3, 0x17

    aput v2, v1, v3

    iget v2, p0, Lcom/android/systemui/infinity/tangram/TangramSingleDrawLayer;->wFix:F

    const/high16 v3, -0x40800000    # -1.0f

    mul-float/2addr v2, v3

    const/16 v3, 0x18

    aput v2, v1, v3

    iget v2, p0, Lcom/android/systemui/infinity/tangram/TangramSingleDrawLayer;->hFix:F

    const/high16 v3, 0x3f800000    # 1.0f

    mul-float/2addr v2, v3

    const/16 v3, 0x19

    aput v2, v1, v3

    iget v2, p0, Lcom/android/systemui/infinity/tangram/TangramSingleDrawLayer;->imageW:F

    add-float v2, v2, p11

    div-float v2, v2, p22

    const/16 v3, 0x1a

    aput v2, v1, v3

    div-float v2, p12, p23

    const/16 v3, 0x1b

    aput v2, v1, v3

    div-float v2, p20, p22

    sub-float v3, p13, p4

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    iget v4, p0, Lcom/android/systemui/infinity/tangram/TangramSingleDrawLayer;->imageMapRatioW:F

    div-float/2addr v3, v4

    div-float v3, v3, p22

    add-float/2addr v2, v3

    const/16 v3, 0x1c

    aput v2, v1, v3

    div-float v2, p21, p23

    sub-float v3, p14, p5

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    iget v4, p0, Lcom/android/systemui/infinity/tangram/TangramSingleDrawLayer;->imageMapRatioH:F

    div-float/2addr v3, v4

    div-float v3, v3, p23

    add-float/2addr v2, v3

    const/16 v3, 0x1d

    aput v2, v1, v3

    iget v2, p0, Lcom/android/systemui/infinity/tangram/TangramSingleDrawLayer;->wFix:F

    const/high16 v3, -0x40800000    # -1.0f

    mul-float/2addr v2, v3

    const/16 v3, 0x1e

    aput v2, v1, v3

    iget v2, p0, Lcom/android/systemui/infinity/tangram/TangramSingleDrawLayer;->hFix:F

    const/high16 v3, -0x40800000    # -1.0f

    mul-float/2addr v2, v3

    const/16 v3, 0x1f

    aput v2, v1, v3

    div-float v2, p11, p22

    const/16 v3, 0x20

    aput v2, v1, v3

    div-float v2, p12, p23

    const/16 v3, 0x21

    aput v2, v1, v3

    div-float v2, p20, p22

    sub-float v3, p13, p4

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    iget v4, p0, Lcom/android/systemui/infinity/tangram/TangramSingleDrawLayer;->imageMapRatioW:F

    div-float/2addr v3, v4

    div-float v3, v3, p22

    add-float/2addr v2, v3

    const/16 v3, 0x22

    aput v2, v1, v3

    iget v2, p0, Lcom/android/systemui/infinity/tangram/TangramSingleDrawLayer;->imageHm:F

    add-float v2, v2, p21

    div-float v2, v2, p23

    sub-float v3, p14, p5

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    iget v4, p0, Lcom/android/systemui/infinity/tangram/TangramSingleDrawLayer;->imageMapRatioH:F

    div-float/2addr v3, v4

    div-float v3, v3, p23

    sub-float/2addr v2, v3

    const/16 v3, 0x23

    aput v2, v1, v3

    new-instance v2, Lcom/android/systemui/infinity/common/VertexArray;

    invoke-direct {v2, v1}, Lcom/android/systemui/infinity/common/VertexArray;-><init>([F)V

    iput-object v2, p0, Lcom/android/systemui/infinity/tangram/TangramSingleDrawLayer;->vertexArray:Lcom/android/systemui/infinity/common/VertexArray;

    goto/16 :goto_0
.end method


# virtual methods
.method public createProgram()V
    .locals 5

    const/16 v4, 0x18

    const/4 v3, 0x2

    iget-object v0, p0, Lcom/android/systemui/infinity/tangram/TangramSingleDrawLayer;->renderer:Lcom/android/systemui/infinity/GalaxyRenderer;

    invoke-virtual {v0}, Lcom/android/systemui/infinity/GalaxyRenderer;->getResourceManager()Lcom/android/systemui/infinity/common/GLResourceManager;

    move-result-object v0

    iget v1, p0, Lcom/android/systemui/infinity/tangram/TangramSingleDrawLayer;->resourceId:I

    invoke-virtual {v0, v1}, Lcom/android/systemui/infinity/common/GLResourceManager;->loadTexture(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/infinity/tangram/TangramSingleDrawLayer;->textureId:I

    iget-object v0, p0, Lcom/android/systemui/infinity/tangram/TangramSingleDrawLayer;->renderer:Lcom/android/systemui/infinity/GalaxyRenderer;

    invoke-virtual {v0}, Lcom/android/systemui/infinity/GalaxyRenderer;->getResourceManager()Lcom/android/systemui/infinity/common/GLResourceManager;

    move-result-object v0

    const v1, 0x7f0a0019

    const v2, 0x7f0a0018

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/infinity/common/GLResourceManager;->loadProgram(II)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/infinity/tangram/TangramSingleDrawLayer;->program:I

    iget v0, p0, Lcom/android/systemui/infinity/tangram/TangramSingleDrawLayer;->program:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glUseProgram(I)V

    iget v0, p0, Lcom/android/systemui/infinity/tangram/TangramSingleDrawLayer;->program:I

    const-string/jumbo v1, "u_TextureUnit"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/infinity/tangram/TangramSingleDrawLayer;->uTextureUnitLocation:I

    iget v0, p0, Lcom/android/systemui/infinity/tangram/TangramSingleDrawLayer;->program:I

    const-string/jumbo v1, "u_Alpha"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/infinity/tangram/TangramSingleDrawLayer;->uAlphaLocation:I

    iget v0, p0, Lcom/android/systemui/infinity/tangram/TangramSingleDrawLayer;->program:I

    const-string/jumbo v1, "u_Matrix"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/infinity/tangram/TangramSingleDrawLayer;->uMatrixLocation:I

    iget v0, p0, Lcom/android/systemui/infinity/tangram/TangramSingleDrawLayer;->program:I

    const-string/jumbo v1, "a_Position"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/infinity/tangram/TangramSingleDrawLayer;->aPositionLocation:I

    iget v0, p0, Lcom/android/systemui/infinity/tangram/TangramSingleDrawLayer;->program:I

    const-string/jumbo v1, "a_TextureCoordinates"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/infinity/tangram/TangramSingleDrawLayer;->aTextureCoordinatesLocation:I

    iget v0, p0, Lcom/android/systemui/infinity/tangram/TangramSingleDrawLayer;->program:I

    const-string/jumbo v1, "a_TextureCoordinatesMask"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/infinity/tangram/TangramSingleDrawLayer;->aTextureCoordinatesLocationMask:I

    iget v0, p0, Lcom/android/systemui/infinity/tangram/TangramSingleDrawLayer;->program:I

    const-string/jumbo v1, "u_MaskMoveX"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/infinity/tangram/TangramSingleDrawLayer;->uMaskMoveXLocation:I

    iget v0, p0, Lcom/android/systemui/infinity/tangram/TangramSingleDrawLayer;->program:I

    const-string/jumbo v1, "u_MaskMoveY"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/infinity/tangram/TangramSingleDrawLayer;->uMaskMoveYLocation:I

    iget-object v0, p0, Lcom/android/systemui/infinity/tangram/TangramSingleDrawLayer;->vertexArray:Lcom/android/systemui/infinity/common/VertexArray;

    iget v1, p0, Lcom/android/systemui/infinity/tangram/TangramSingleDrawLayer;->aPositionLocation:I

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1, v3, v4}, Lcom/android/systemui/infinity/common/VertexArray;->setVertexAttribPointer(IIII)V

    iget-object v0, p0, Lcom/android/systemui/infinity/tangram/TangramSingleDrawLayer;->vertexArray:Lcom/android/systemui/infinity/common/VertexArray;

    iget v1, p0, Lcom/android/systemui/infinity/tangram/TangramSingleDrawLayer;->aTextureCoordinatesLocation:I

    invoke-virtual {v0, v3, v1, v3, v4}, Lcom/android/systemui/infinity/common/VertexArray;->setVertexAttribPointer(IIII)V

    iget-object v0, p0, Lcom/android/systemui/infinity/tangram/TangramSingleDrawLayer;->vertexArray:Lcom/android/systemui/infinity/common/VertexArray;

    iget v1, p0, Lcom/android/systemui/infinity/tangram/TangramSingleDrawLayer;->aTextureCoordinatesLocationMask:I

    const/4 v2, 0x4

    invoke-virtual {v0, v2, v1, v3, v4}, Lcom/android/systemui/infinity/common/VertexArray;->setVertexAttribPointer(IIII)V

    return-void
.end method

.method public draw([F)V
    .locals 9

    const/4 v8, 0x6

    const/16 v5, 0x18

    const/4 v4, 0x2

    const/4 v1, 0x0

    iget v0, p0, Lcom/android/systemui/infinity/tangram/TangramSingleDrawLayer;->program:I

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget v0, p0, Lcom/android/systemui/infinity/tangram/TangramSingleDrawLayer;->program:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glUseProgram(I)V

    const v0, 0x84c0

    invoke-static {v0}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    iget v0, p0, Lcom/android/systemui/infinity/tangram/TangramSingleDrawLayer;->textureId:I

    const/16 v2, 0xde1

    invoke-static {v2, v0}, Landroid/opengl/GLES20;->glBindTexture(II)V

    iget v0, p0, Lcom/android/systemui/infinity/tangram/TangramSingleDrawLayer;->uTextureUnitLocation:I

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glUniform1i(II)V

    iget v0, p0, Lcom/android/systemui/infinity/tangram/TangramSingleDrawLayer;->uAlphaLocation:I

    iget v2, p0, Lcom/android/systemui/infinity/tangram/TangramSingleDrawLayer;->alpha:F

    invoke-static {v0, v2}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    iget v0, p0, Lcom/android/systemui/infinity/tangram/TangramSingleDrawLayer;->tx:F

    iget v2, p0, Lcom/android/systemui/infinity/tangram/TangramSingleDrawLayer;->moveXValue:F

    mul-float v6, v0, v2

    iget v0, p0, Lcom/android/systemui/infinity/tangram/TangramSingleDrawLayer;->ty:F

    iget v2, p0, Lcom/android/systemui/infinity/tangram/TangramSingleDrawLayer;->moveYValue:F

    mul-float v7, v0, v2

    iget v0, p0, Lcom/android/systemui/infinity/tangram/TangramSingleDrawLayer;->uMaskMoveXLocation:I

    invoke-static {v0, v6}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    iget v0, p0, Lcom/android/systemui/infinity/tangram/TangramSingleDrawLayer;->uMaskMoveYLocation:I

    invoke-static {v0, v7}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    iput v6, p0, Lcom/android/systemui/infinity/tangram/TangramSingleDrawLayer;->beforeMoveX:F

    iput v7, p0, Lcom/android/systemui/infinity/tangram/TangramSingleDrawLayer;->beforeMoveY:F

    iget-object v0, p0, Lcom/android/systemui/infinity/tangram/TangramSingleDrawLayer;->vertexArray:Lcom/android/systemui/infinity/common/VertexArray;

    iget v2, p0, Lcom/android/systemui/infinity/tangram/TangramSingleDrawLayer;->aPositionLocation:I

    invoke-virtual {v0, v1, v2, v4, v5}, Lcom/android/systemui/infinity/common/VertexArray;->setVertexAttribPointer(IIII)V

    iget-object v0, p0, Lcom/android/systemui/infinity/tangram/TangramSingleDrawLayer;->vertexArray:Lcom/android/systemui/infinity/common/VertexArray;

    iget v2, p0, Lcom/android/systemui/infinity/tangram/TangramSingleDrawLayer;->aTextureCoordinatesLocation:I

    invoke-virtual {v0, v4, v2, v4, v5}, Lcom/android/systemui/infinity/common/VertexArray;->setVertexAttribPointer(IIII)V

    iget-object v0, p0, Lcom/android/systemui/infinity/tangram/TangramSingleDrawLayer;->vertexArray:Lcom/android/systemui/infinity/common/VertexArray;

    iget v2, p0, Lcom/android/systemui/infinity/tangram/TangramSingleDrawLayer;->aTextureCoordinatesLocationMask:I

    const/4 v3, 0x4

    invoke-virtual {v0, v3, v2, v4, v5}, Lcom/android/systemui/infinity/common/VertexArray;->setVertexAttribPointer(IIII)V

    iget-object v0, p0, Lcom/android/systemui/infinity/tangram/TangramSingleDrawLayer;->viewMatrix:[F

    invoke-static {v0, v1}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    iget-object v0, p0, Lcom/android/systemui/infinity/tangram/TangramSingleDrawLayer;->viewMatrix:[F

    iget v2, p0, Lcom/android/systemui/infinity/tangram/TangramSingleDrawLayer;->tx:F

    iget v3, p0, Lcom/android/systemui/infinity/tangram/TangramSingleDrawLayer;->ty:F

    neg-float v3, v3

    iget v4, p0, Lcom/android/systemui/infinity/tangram/TangramSingleDrawLayer;->tz:F

    invoke-static {v0, v1, v2, v3, v4}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    iget-object v0, p0, Lcom/android/systemui/infinity/tangram/TangramSingleDrawLayer;->viewMatrix:[F

    iget v2, p0, Lcom/android/systemui/infinity/tangram/TangramSingleDrawLayer;->sx:F

    iget v3, p0, Lcom/android/systemui/infinity/tangram/TangramSingleDrawLayer;->sy:F

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-static {v0, v1, v2, v3, v4}, Landroid/opengl/Matrix;->scaleM([FIFFF)V

    iget-object v0, p0, Lcom/android/systemui/infinity/tangram/TangramSingleDrawLayer;->viewProjectionMatrix:[F

    iget-object v4, p0, Lcom/android/systemui/infinity/tangram/TangramSingleDrawLayer;->viewMatrix:[F

    move-object v2, p1

    move v3, v1

    move v5, v1

    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    iget v0, p0, Lcom/android/systemui/infinity/tangram/TangramSingleDrawLayer;->uMatrixLocation:I

    iget-object v2, p0, Lcom/android/systemui/infinity/tangram/TangramSingleDrawLayer;->viewProjectionMatrix:[F

    const/4 v3, 0x1

    invoke-static {v0, v3, v1, v2, v1}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    invoke-static {v8, v1, v8}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    return-void
.end method

.method public setAlpha(F)V
    .locals 0

    iput p1, p0, Lcom/android/systemui/infinity/tangram/TangramSingleDrawLayer;->alpha:F

    return-void
.end method

.method public setScale(FF)V
    .locals 0

    iput p1, p0, Lcom/android/systemui/infinity/tangram/TangramSingleDrawLayer;->sx:F

    iput p2, p0, Lcom/android/systemui/infinity/tangram/TangramSingleDrawLayer;->sy:F

    return-void
.end method

.method public setTranslation(FFF)V
    .locals 0

    iput p1, p0, Lcom/android/systemui/infinity/tangram/TangramSingleDrawLayer;->tx:F

    iput p2, p0, Lcom/android/systemui/infinity/tangram/TangramSingleDrawLayer;->ty:F

    iput p3, p0, Lcom/android/systemui/infinity/tangram/TangramSingleDrawLayer;->tz:F

    return-void
.end method
