.class public Lcom/android/systemui/infinity/background/LockTextureBackground;
.super Ljava/lang/Object;
.source "LockTextureBackground.java"


# static fields
.field private static final POSITION_COMPONENT_COUNT:I = 0x2

.field private static final STRIDE:I = 0x10

.field private static final TEXTURE_COORDINATES_COMPONENT_COUNT:I = 0x2


# instance fields
.field private final vertexArray:Lcom/android/systemui/infinity/common/VertexArray;


# direct methods
.method public constructor <init>(ZFFFFFF)V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_0

    move v2, p2

    move v1, p3

    const/16 v3, 0x18

    new-array v0, v3, [F

    const/4 v3, 0x0

    const/4 v4, 0x0

    aput v3, v0, v4

    const/4 v3, 0x0

    const/4 v4, 0x1

    aput v3, v0, v4

    const/high16 v3, 0x40000000    # 2.0f

    div-float v3, p2, v3

    add-float/2addr v3, p4

    div-float/2addr v3, p6

    const/4 v4, 0x2

    aput v3, v0, v4

    const/high16 v3, 0x40000000    # 2.0f

    div-float v3, p3, v3

    add-float/2addr v3, p5

    div-float/2addr v3, p7

    const/4 v4, 0x3

    aput v3, v0, v4

    const/high16 v3, -0x40800000    # -1.0f

    const/4 v4, 0x4

    aput v3, v0, v4

    const/high16 v3, -0x40800000    # -1.0f

    const/4 v4, 0x5

    aput v3, v0, v4

    div-float v3, p4, p6

    const/4 v4, 0x6

    aput v3, v0, v4

    add-float v3, p5, p3

    div-float/2addr v3, p7

    const/4 v4, 0x7

    aput v3, v0, v4

    const/high16 v3, 0x3f800000    # 1.0f

    const/16 v4, 0x8

    aput v3, v0, v4

    const/high16 v3, -0x40800000    # -1.0f

    const/16 v4, 0x9

    aput v3, v0, v4

    add-float v3, p2, p4

    div-float/2addr v3, p6

    const/16 v4, 0xa

    aput v3, v0, v4

    add-float v3, p5, p3

    div-float/2addr v3, p7

    const/16 v4, 0xb

    aput v3, v0, v4

    const/high16 v3, 0x3f800000    # 1.0f

    const/16 v4, 0xc

    aput v3, v0, v4

    const/high16 v3, 0x3f800000    # 1.0f

    const/16 v4, 0xd

    aput v3, v0, v4

    add-float v3, p2, p4

    div-float/2addr v3, p6

    const/16 v4, 0xe

    aput v3, v0, v4

    div-float v3, p5, p7

    const/16 v4, 0xf

    aput v3, v0, v4

    const/high16 v3, -0x40800000    # -1.0f

    const/16 v4, 0x10

    aput v3, v0, v4

    const/high16 v3, 0x3f800000    # 1.0f

    const/16 v4, 0x11

    aput v3, v0, v4

    div-float v3, p4, p6

    const/16 v4, 0x12

    aput v3, v0, v4

    div-float v3, p5, p7

    const/16 v4, 0x13

    aput v3, v0, v4

    const/high16 v3, -0x40800000    # -1.0f

    const/16 v4, 0x14

    aput v3, v0, v4

    const/high16 v3, -0x40800000    # -1.0f

    const/16 v4, 0x15

    aput v3, v0, v4

    div-float v3, p4, p6

    const/16 v4, 0x16

    aput v3, v0, v4

    add-float v3, p5, p3

    div-float/2addr v3, p7

    const/16 v4, 0x17

    aput v3, v0, v4

    new-instance v3, Lcom/android/systemui/infinity/common/VertexArray;

    invoke-direct {v3, v0}, Lcom/android/systemui/infinity/common/VertexArray;-><init>([F)V

    iput-object v3, p0, Lcom/android/systemui/infinity/background/LockTextureBackground;->vertexArray:Lcom/android/systemui/infinity/common/VertexArray;

    :goto_0
    return-void

    :cond_0
    move v2, p3

    move v1, p2

    const/16 v3, 0x18

    new-array v0, v3, [F

    const/4 v3, 0x0

    const/4 v4, 0x0

    aput v3, v0, v4

    const/4 v3, 0x0

    const/4 v4, 0x1

    aput v3, v0, v4

    const/high16 v3, 0x40000000    # 2.0f

    div-float v3, p3, v3

    add-float/2addr v3, p4

    div-float/2addr v3, p6

    const/4 v4, 0x2

    aput v3, v0, v4

    const/high16 v3, 0x40000000    # 2.0f

    div-float v3, p2, v3

    add-float/2addr v3, p5

    div-float/2addr v3, p7

    const/4 v4, 0x3

    aput v3, v0, v4

    const/high16 v3, -0x40800000    # -1.0f

    const/4 v4, 0x4

    aput v3, v0, v4

    const/high16 v3, -0x40800000    # -1.0f

    const/4 v4, 0x5

    aput v3, v0, v4

    div-float v3, p4, p6

    const/4 v4, 0x6

    aput v3, v0, v4

    div-float v3, p5, p7

    const/4 v4, 0x7

    aput v3, v0, v4

    const/high16 v3, 0x3f800000    # 1.0f

    const/16 v4, 0x8

    aput v3, v0, v4

    const/high16 v3, -0x40800000    # -1.0f

    const/16 v4, 0x9

    aput v3, v0, v4

    div-float v3, p4, p6

    const/16 v4, 0xa

    aput v3, v0, v4

    add-float v3, p5, p2

    div-float/2addr v3, p7

    const/16 v4, 0xb

    aput v3, v0, v4

    const/high16 v3, 0x3f800000    # 1.0f

    const/16 v4, 0xc

    aput v3, v0, v4

    const/high16 v3, 0x3f800000    # 1.0f

    const/16 v4, 0xd

    aput v3, v0, v4

    add-float v3, p3, p4

    div-float/2addr v3, p6

    const/16 v4, 0xe

    aput v3, v0, v4

    add-float v3, p5, p2

    div-float/2addr v3, p7

    const/16 v4, 0xf

    aput v3, v0, v4

    const/high16 v3, -0x40800000    # -1.0f

    const/16 v4, 0x10

    aput v3, v0, v4

    const/high16 v3, 0x3f800000    # 1.0f

    const/16 v4, 0x11

    aput v3, v0, v4

    add-float v3, p3, p4

    div-float/2addr v3, p6

    const/16 v4, 0x12

    aput v3, v0, v4

    div-float v3, p5, p7

    const/16 v4, 0x13

    aput v3, v0, v4

    const/high16 v3, -0x40800000    # -1.0f

    const/16 v4, 0x14

    aput v3, v0, v4

    const/high16 v3, -0x40800000    # -1.0f

    const/16 v4, 0x15

    aput v3, v0, v4

    div-float v3, p4, p6

    const/16 v4, 0x16

    aput v3, v0, v4

    div-float v3, p5, p7

    const/16 v4, 0x17

    aput v3, v0, v4

    new-instance v3, Lcom/android/systemui/infinity/common/VertexArray;

    invoke-direct {v3, v0}, Lcom/android/systemui/infinity/common/VertexArray;-><init>([F)V

    iput-object v3, p0, Lcom/android/systemui/infinity/background/LockTextureBackground;->vertexArray:Lcom/android/systemui/infinity/common/VertexArray;

    goto/16 :goto_0
.end method


# virtual methods
.method public bindData(Lcom/android/systemui/infinity/common/TextureShaderProgram;)V
    .locals 5

    const/16 v4, 0x10

    const/4 v3, 0x2

    iget-object v0, p0, Lcom/android/systemui/infinity/background/LockTextureBackground;->vertexArray:Lcom/android/systemui/infinity/common/VertexArray;

    invoke-virtual {p1}, Lcom/android/systemui/infinity/common/TextureShaderProgram;->getPositionAttributeLocation()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1, v3, v4}, Lcom/android/systemui/infinity/common/VertexArray;->setVertexAttribPointer(IIII)V

    iget-object v0, p0, Lcom/android/systemui/infinity/background/LockTextureBackground;->vertexArray:Lcom/android/systemui/infinity/common/VertexArray;

    invoke-virtual {p1}, Lcom/android/systemui/infinity/common/TextureShaderProgram;->getTextureCoordinatesAttributeLocation()I

    move-result v1

    invoke-virtual {v0, v3, v1, v3, v4}, Lcom/android/systemui/infinity/common/VertexArray;->setVertexAttribPointer(IIII)V

    return-void
.end method

.method public draw()V
    .locals 2

    const/4 v1, 0x6

    const/4 v0, 0x0

    invoke-static {v1, v0, v1}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    return-void
.end method
