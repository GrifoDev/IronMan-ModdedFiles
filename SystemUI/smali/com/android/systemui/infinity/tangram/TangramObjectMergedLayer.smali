.class public Lcom/android/systemui/infinity/tangram/TangramObjectMergedLayer;
.super Ljava/lang/Object;
.source "TangramObjectMergedLayer.java"

# interfaces
.implements Lcom/android/systemui/infinity/tangram/TangramObjectInterface;


# static fields
.field protected static final A_POSITION:Ljava/lang/String; = "a_Position"

.field protected static final A_TEXTURE_COORDINATES:Ljava/lang/String; = "a_TextureCoordinates"

.field private static final POSITION_COMPONENT_COUNT:I = 0x2

.field private static final STRIDE:I = 0x10

.field private static final TEXTURE_COORDINATES_COMPONENT_COUNT:I = 0x2

.field private static final TOTAL_COMPONENT_COUNT:I = 0x4

.field protected static final U_ALPHA:Ljava/lang/String; = "u_Alpha"

.field protected static final U_MATRIX:Ljava/lang/String; = "u_Matrix"

.field protected static final U_TEXTURE_UNIT:Ljava/lang/String; = "u_TextureUnit"


# instance fields
.field private aPositionLocation:I

.field private aTextureCoordinatesLocation:I

.field alpha:F

.field context:Landroid/content/Context;

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

.field private uMatrixLocation:I

.field private uTextureUnitLocation:I

.field private final vertexArray:Lcom/android/systemui/infinity/common/VertexArray;

.field private final viewMatrix:[F

.field private final viewProjectionMatrix:[F


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/infinity/GalaxyRenderer;IFFFFZFFFFFF)V
    .locals 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v5, 0x10

    new-array v5, v5, [F

    iput-object v5, p0, Lcom/android/systemui/infinity/tangram/TangramObjectMergedLayer;->viewMatrix:[F

    const/16 v5, 0x10

    new-array v5, v5, [F

    iput-object v5, p0, Lcom/android/systemui/infinity/tangram/TangramObjectMergedLayer;->viewProjectionMatrix:[F

    const/high16 v5, 0x3f800000    # 1.0f

    iput v5, p0, Lcom/android/systemui/infinity/tangram/TangramObjectMergedLayer;->sx:F

    const/high16 v5, 0x3f800000    # 1.0f

    iput v5, p0, Lcom/android/systemui/infinity/tangram/TangramObjectMergedLayer;->sy:F

    const/high16 v5, 0x3f800000    # 1.0f

    iput v5, p0, Lcom/android/systemui/infinity/tangram/TangramObjectMergedLayer;->alpha:F

    iput-object p1, p0, Lcom/android/systemui/infinity/tangram/TangramObjectMergedLayer;->context:Landroid/content/Context;

    iput p3, p0, Lcom/android/systemui/infinity/tangram/TangramObjectMergedLayer;->resourceId:I

    iput-object p2, p0, Lcom/android/systemui/infinity/tangram/TangramObjectMergedLayer;->renderer:Lcom/android/systemui/infinity/GalaxyRenderer;

    div-float v4, p4, p6

    div-float v1, p5, p7

    move/from16 v3, p9

    move/from16 v2, p10

    if-nez p8, :cond_0

    const/16 v5, 0x18

    new-array v0, v5, [F

    const/4 v5, 0x0

    const/4 v6, 0x0

    aput v5, v0, v6

    const/4 v5, 0x0

    const/4 v6, 0x1

    aput v5, v0, v6

    const/high16 v5, 0x40000000    # 2.0f

    div-float v5, p9, v5

    add-float v5, v5, p11

    div-float v5, v5, p13

    const/4 v6, 0x2

    aput v5, v0, v6

    const/high16 v5, 0x40000000    # 2.0f

    div-float v5, p10, v5

    add-float v5, v5, p12

    div-float v5, v5, p14

    const/4 v6, 0x3

    aput v5, v0, v6

    const/high16 v5, -0x40800000    # -1.0f

    mul-float/2addr v5, v4

    const/4 v6, 0x4

    aput v5, v0, v6

    const/high16 v5, -0x40800000    # -1.0f

    mul-float/2addr v5, v1

    const/4 v6, 0x5

    aput v5, v0, v6

    div-float v5, p11, p13

    const/4 v6, 0x6

    aput v5, v0, v6

    add-float v5, p12, p10

    div-float v5, v5, p14

    const/4 v6, 0x7

    aput v5, v0, v6

    const/high16 v5, 0x3f800000    # 1.0f

    mul-float/2addr v5, v4

    const/16 v6, 0x8

    aput v5, v0, v6

    const/high16 v5, -0x40800000    # -1.0f

    mul-float/2addr v5, v1

    const/16 v6, 0x9

    aput v5, v0, v6

    add-float v5, p9, p11

    div-float v5, v5, p13

    const/16 v6, 0xa

    aput v5, v0, v6

    add-float v5, p12, p10

    div-float v5, v5, p14

    const/16 v6, 0xb

    aput v5, v0, v6

    const/high16 v5, 0x3f800000    # 1.0f

    mul-float/2addr v5, v4

    const/16 v6, 0xc

    aput v5, v0, v6

    const/high16 v5, 0x3f800000    # 1.0f

    mul-float/2addr v5, v1

    const/16 v6, 0xd

    aput v5, v0, v6

    add-float v5, p9, p11

    div-float v5, v5, p13

    const/16 v6, 0xe

    aput v5, v0, v6

    div-float v5, p12, p14

    const/16 v6, 0xf

    aput v5, v0, v6

    const/high16 v5, -0x40800000    # -1.0f

    mul-float/2addr v5, v4

    const/16 v6, 0x10

    aput v5, v0, v6

    const/high16 v5, 0x3f800000    # 1.0f

    mul-float/2addr v5, v1

    const/16 v6, 0x11

    aput v5, v0, v6

    div-float v5, p11, p13

    const/16 v6, 0x12

    aput v5, v0, v6

    div-float v5, p12, p14

    const/16 v6, 0x13

    aput v5, v0, v6

    const/high16 v5, -0x40800000    # -1.0f

    mul-float/2addr v5, v4

    const/16 v6, 0x14

    aput v5, v0, v6

    const/high16 v5, -0x40800000    # -1.0f

    mul-float/2addr v5, v1

    const/16 v6, 0x15

    aput v5, v0, v6

    div-float v5, p11, p13

    const/16 v6, 0x16

    aput v5, v0, v6

    add-float v5, p12, p10

    div-float v5, v5, p14

    const/16 v6, 0x17

    aput v5, v0, v6

    new-instance v5, Lcom/android/systemui/infinity/common/VertexArray;

    invoke-direct {v5, v0}, Lcom/android/systemui/infinity/common/VertexArray;-><init>([F)V

    iput-object v5, p0, Lcom/android/systemui/infinity/tangram/TangramObjectMergedLayer;->vertexArray:Lcom/android/systemui/infinity/common/VertexArray;

    :goto_0
    return-void

    :cond_0
    move/from16 v3, p10

    move/from16 v2, p9

    const/16 v5, 0x18

    new-array v0, v5, [F

    const/4 v5, 0x0

    const/4 v6, 0x0

    aput v5, v0, v6

    const/4 v5, 0x0

    const/4 v6, 0x1

    aput v5, v0, v6

    const/high16 v5, 0x40000000    # 2.0f

    div-float v5, p10, v5

    add-float v5, v5, p11

    div-float v5, v5, p13

    const/4 v6, 0x2

    aput v5, v0, v6

    const/high16 v5, 0x40000000    # 2.0f

    div-float v5, p9, v5

    add-float v5, v5, p12

    div-float v5, v5, p14

    const/4 v6, 0x3

    aput v5, v0, v6

    const/high16 v5, -0x40800000    # -1.0f

    mul-float/2addr v5, v4

    const/4 v6, 0x4

    aput v5, v0, v6

    const/high16 v5, -0x40800000    # -1.0f

    mul-float/2addr v5, v1

    const/4 v6, 0x5

    aput v5, v0, v6

    div-float v5, p11, p13

    const/4 v6, 0x6

    aput v5, v0, v6

    div-float v5, p12, p14

    const/4 v6, 0x7

    aput v5, v0, v6

    const/high16 v5, 0x3f800000    # 1.0f

    mul-float/2addr v5, v4

    const/16 v6, 0x8

    aput v5, v0, v6

    const/high16 v5, -0x40800000    # -1.0f

    mul-float/2addr v5, v1

    const/16 v6, 0x9

    aput v5, v0, v6

    div-float v5, p11, p13

    const/16 v6, 0xa

    aput v5, v0, v6

    add-float v5, p12, p9

    div-float v5, v5, p14

    const/16 v6, 0xb

    aput v5, v0, v6

    const/high16 v5, 0x3f800000    # 1.0f

    mul-float/2addr v5, v4

    const/16 v6, 0xc

    aput v5, v0, v6

    const/high16 v5, 0x3f800000    # 1.0f

    mul-float/2addr v5, v1

    const/16 v6, 0xd

    aput v5, v0, v6

    add-float v5, p10, p11

    div-float v5, v5, p13

    const/16 v6, 0xe

    aput v5, v0, v6

    add-float v5, p12, p9

    div-float v5, v5, p14

    const/16 v6, 0xf

    aput v5, v0, v6

    const/high16 v5, -0x40800000    # -1.0f

    mul-float/2addr v5, v4

    const/16 v6, 0x10

    aput v5, v0, v6

    const/high16 v5, 0x3f800000    # 1.0f

    mul-float/2addr v5, v1

    const/16 v6, 0x11

    aput v5, v0, v6

    add-float v5, p10, p11

    div-float v5, v5, p13

    const/16 v6, 0x12

    aput v5, v0, v6

    div-float v5, p12, p14

    const/16 v6, 0x13

    aput v5, v0, v6

    const/high16 v5, -0x40800000    # -1.0f

    mul-float/2addr v5, v4

    const/16 v6, 0x14

    aput v5, v0, v6

    const/high16 v5, -0x40800000    # -1.0f

    mul-float/2addr v5, v1

    const/16 v6, 0x15

    aput v5, v0, v6

    div-float v5, p11, p13

    const/16 v6, 0x16

    aput v5, v0, v6

    div-float v5, p12, p14

    const/16 v6, 0x17

    aput v5, v0, v6

    new-instance v5, Lcom/android/systemui/infinity/common/VertexArray;

    invoke-direct {v5, v0}, Lcom/android/systemui/infinity/common/VertexArray;-><init>([F)V

    iput-object v5, p0, Lcom/android/systemui/infinity/tangram/TangramObjectMergedLayer;->vertexArray:Lcom/android/systemui/infinity/common/VertexArray;

    goto/16 :goto_0
.end method


# virtual methods
.method public changeSize(FF)V
    .locals 0

    return-void
.end method

.method public createProgram()V
    .locals 5

    const/16 v4, 0x10

    const/4 v3, 0x2

    iget-object v0, p0, Lcom/android/systemui/infinity/tangram/TangramObjectMergedLayer;->renderer:Lcom/android/systemui/infinity/GalaxyRenderer;

    invoke-virtual {v0}, Lcom/android/systemui/infinity/GalaxyRenderer;->getResourceManager()Lcom/android/systemui/infinity/common/GLResourceManager;

    move-result-object v0

    iget v1, p0, Lcom/android/systemui/infinity/tangram/TangramObjectMergedLayer;->resourceId:I

    invoke-virtual {v0, v1}, Lcom/android/systemui/infinity/common/GLResourceManager;->loadTexture(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/infinity/tangram/TangramObjectMergedLayer;->textureId:I

    iget-object v0, p0, Lcom/android/systemui/infinity/tangram/TangramObjectMergedLayer;->renderer:Lcom/android/systemui/infinity/GalaxyRenderer;

    invoke-virtual {v0}, Lcom/android/systemui/infinity/GalaxyRenderer;->getResourceManager()Lcom/android/systemui/infinity/common/GLResourceManager;

    move-result-object v0

    const v1, 0x7f110003

    const v2, 0x7f110002

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/infinity/common/GLResourceManager;->loadProgram(II)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/infinity/tangram/TangramObjectMergedLayer;->program:I

    iget v0, p0, Lcom/android/systemui/infinity/tangram/TangramObjectMergedLayer;->program:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glUseProgram(I)V

    iget v0, p0, Lcom/android/systemui/infinity/tangram/TangramObjectMergedLayer;->program:I

    const-string/jumbo v1, "u_TextureUnit"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/infinity/tangram/TangramObjectMergedLayer;->uTextureUnitLocation:I

    iget v0, p0, Lcom/android/systemui/infinity/tangram/TangramObjectMergedLayer;->program:I

    const-string/jumbo v1, "u_Alpha"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/infinity/tangram/TangramObjectMergedLayer;->uAlphaLocation:I

    iget v0, p0, Lcom/android/systemui/infinity/tangram/TangramObjectMergedLayer;->program:I

    const-string/jumbo v1, "u_Matrix"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/infinity/tangram/TangramObjectMergedLayer;->uMatrixLocation:I

    iget v0, p0, Lcom/android/systemui/infinity/tangram/TangramObjectMergedLayer;->program:I

    const-string/jumbo v1, "a_Position"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/infinity/tangram/TangramObjectMergedLayer;->aPositionLocation:I

    iget v0, p0, Lcom/android/systemui/infinity/tangram/TangramObjectMergedLayer;->program:I

    const-string/jumbo v1, "a_TextureCoordinates"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/infinity/tangram/TangramObjectMergedLayer;->aTextureCoordinatesLocation:I

    iget-object v0, p0, Lcom/android/systemui/infinity/tangram/TangramObjectMergedLayer;->vertexArray:Lcom/android/systemui/infinity/common/VertexArray;

    iget v1, p0, Lcom/android/systemui/infinity/tangram/TangramObjectMergedLayer;->aPositionLocation:I

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1, v3, v4}, Lcom/android/systemui/infinity/common/VertexArray;->setVertexAttribPointer(IIII)V

    iget-object v0, p0, Lcom/android/systemui/infinity/tangram/TangramObjectMergedLayer;->vertexArray:Lcom/android/systemui/infinity/common/VertexArray;

    iget v1, p0, Lcom/android/systemui/infinity/tangram/TangramObjectMergedLayer;->aTextureCoordinatesLocation:I

    invoke-virtual {v0, v3, v1, v3, v4}, Lcom/android/systemui/infinity/common/VertexArray;->setVertexAttribPointer(IIII)V

    return-void
.end method

.method public destroyProgram()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-array v0, v3, [I

    iget v1, p0, Lcom/android/systemui/infinity/tangram/TangramObjectMergedLayer;->textureId:I

    aput v1, v0, v2

    invoke-static {v3, v0, v2}, Landroid/opengl/GLES20;->glDeleteTextures(I[II)V

    iget v1, p0, Lcom/android/systemui/infinity/tangram/TangramObjectMergedLayer;->program:I

    invoke-static {v1}, Landroid/opengl/GLES20;->glDeleteProgram(I)V

    iput v2, p0, Lcom/android/systemui/infinity/tangram/TangramObjectMergedLayer;->program:I

    iput v2, p0, Lcom/android/systemui/infinity/tangram/TangramObjectMergedLayer;->textureId:I

    return-void
.end method

.method public draw([F)V
    .locals 7

    const/16 v4, 0x10

    const/4 v6, 0x6

    const/4 v3, 0x2

    const/4 v1, 0x0

    iget v0, p0, Lcom/android/systemui/infinity/tangram/TangramObjectMergedLayer;->program:I

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget v0, p0, Lcom/android/systemui/infinity/tangram/TangramObjectMergedLayer;->program:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glUseProgram(I)V

    const v0, 0x84c0

    invoke-static {v0}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    iget v0, p0, Lcom/android/systemui/infinity/tangram/TangramObjectMergedLayer;->textureId:I

    const/16 v2, 0xde1

    invoke-static {v2, v0}, Landroid/opengl/GLES20;->glBindTexture(II)V

    iget v0, p0, Lcom/android/systemui/infinity/tangram/TangramObjectMergedLayer;->uTextureUnitLocation:I

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glUniform1i(II)V

    iget v0, p0, Lcom/android/systemui/infinity/tangram/TangramObjectMergedLayer;->uAlphaLocation:I

    iget v2, p0, Lcom/android/systemui/infinity/tangram/TangramObjectMergedLayer;->alpha:F

    invoke-static {v0, v2}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    iget-object v0, p0, Lcom/android/systemui/infinity/tangram/TangramObjectMergedLayer;->vertexArray:Lcom/android/systemui/infinity/common/VertexArray;

    iget v2, p0, Lcom/android/systemui/infinity/tangram/TangramObjectMergedLayer;->aPositionLocation:I

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/systemui/infinity/common/VertexArray;->setVertexAttribPointer(IIII)V

    iget-object v0, p0, Lcom/android/systemui/infinity/tangram/TangramObjectMergedLayer;->vertexArray:Lcom/android/systemui/infinity/common/VertexArray;

    iget v2, p0, Lcom/android/systemui/infinity/tangram/TangramObjectMergedLayer;->aTextureCoordinatesLocation:I

    invoke-virtual {v0, v3, v2, v3, v4}, Lcom/android/systemui/infinity/common/VertexArray;->setVertexAttribPointer(IIII)V

    iget-object v0, p0, Lcom/android/systemui/infinity/tangram/TangramObjectMergedLayer;->viewMatrix:[F

    invoke-static {v0, v1}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    iget-object v0, p0, Lcom/android/systemui/infinity/tangram/TangramObjectMergedLayer;->viewMatrix:[F

    iget v2, p0, Lcom/android/systemui/infinity/tangram/TangramObjectMergedLayer;->tx:F

    iget v3, p0, Lcom/android/systemui/infinity/tangram/TangramObjectMergedLayer;->ty:F

    neg-float v3, v3

    iget v4, p0, Lcom/android/systemui/infinity/tangram/TangramObjectMergedLayer;->tz:F

    invoke-static {v0, v1, v2, v3, v4}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    iget-object v0, p0, Lcom/android/systemui/infinity/tangram/TangramObjectMergedLayer;->viewMatrix:[F

    iget v2, p0, Lcom/android/systemui/infinity/tangram/TangramObjectMergedLayer;->sx:F

    iget v3, p0, Lcom/android/systemui/infinity/tangram/TangramObjectMergedLayer;->sy:F

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-static {v0, v1, v2, v3, v4}, Landroid/opengl/Matrix;->scaleM([FIFFF)V

    iget-object v0, p0, Lcom/android/systemui/infinity/tangram/TangramObjectMergedLayer;->viewProjectionMatrix:[F

    iget-object v4, p0, Lcom/android/systemui/infinity/tangram/TangramObjectMergedLayer;->viewMatrix:[F

    move-object v2, p1

    move v3, v1

    move v5, v1

    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    iget v0, p0, Lcom/android/systemui/infinity/tangram/TangramObjectMergedLayer;->uMatrixLocation:I

    iget-object v2, p0, Lcom/android/systemui/infinity/tangram/TangramObjectMergedLayer;->viewProjectionMatrix:[F

    const/4 v3, 0x1

    invoke-static {v0, v3, v1, v2, v1}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    invoke-static {v6, v1, v6}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    return-void
.end method

.method public draw([FI)V
    .locals 7

    const/16 v4, 0x10

    const/4 v6, 0x6

    const/4 v3, 0x2

    const/4 v1, 0x0

    iget v0, p0, Lcom/android/systemui/infinity/tangram/TangramObjectMergedLayer;->program:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glUseProgram(I)V

    const v0, 0x84c0

    invoke-static {v0}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    const/16 v0, 0xde1

    invoke-static {v0, p2}, Landroid/opengl/GLES20;->glBindTexture(II)V

    iget v0, p0, Lcom/android/systemui/infinity/tangram/TangramObjectMergedLayer;->uTextureUnitLocation:I

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glUniform1i(II)V

    iget v0, p0, Lcom/android/systemui/infinity/tangram/TangramObjectMergedLayer;->uAlphaLocation:I

    iget v2, p0, Lcom/android/systemui/infinity/tangram/TangramObjectMergedLayer;->alpha:F

    invoke-static {v0, v2}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    iget-object v0, p0, Lcom/android/systemui/infinity/tangram/TangramObjectMergedLayer;->vertexArray:Lcom/android/systemui/infinity/common/VertexArray;

    iget v2, p0, Lcom/android/systemui/infinity/tangram/TangramObjectMergedLayer;->aPositionLocation:I

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/systemui/infinity/common/VertexArray;->setVertexAttribPointer(IIII)V

    iget-object v0, p0, Lcom/android/systemui/infinity/tangram/TangramObjectMergedLayer;->vertexArray:Lcom/android/systemui/infinity/common/VertexArray;

    iget v2, p0, Lcom/android/systemui/infinity/tangram/TangramObjectMergedLayer;->aTextureCoordinatesLocation:I

    invoke-virtual {v0, v3, v2, v3, v4}, Lcom/android/systemui/infinity/common/VertexArray;->setVertexAttribPointer(IIII)V

    iget-object v0, p0, Lcom/android/systemui/infinity/tangram/TangramObjectMergedLayer;->viewMatrix:[F

    invoke-static {v0, v1}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    iget-object v0, p0, Lcom/android/systemui/infinity/tangram/TangramObjectMergedLayer;->viewMatrix:[F

    iget v2, p0, Lcom/android/systemui/infinity/tangram/TangramObjectMergedLayer;->tx:F

    iget v3, p0, Lcom/android/systemui/infinity/tangram/TangramObjectMergedLayer;->ty:F

    neg-float v3, v3

    iget v4, p0, Lcom/android/systemui/infinity/tangram/TangramObjectMergedLayer;->tz:F

    invoke-static {v0, v1, v2, v3, v4}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    iget-object v0, p0, Lcom/android/systemui/infinity/tangram/TangramObjectMergedLayer;->viewMatrix:[F

    iget v2, p0, Lcom/android/systemui/infinity/tangram/TangramObjectMergedLayer;->sx:F

    iget v3, p0, Lcom/android/systemui/infinity/tangram/TangramObjectMergedLayer;->sy:F

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-static {v0, v1, v2, v3, v4}, Landroid/opengl/Matrix;->scaleM([FIFFF)V

    iget-object v0, p0, Lcom/android/systemui/infinity/tangram/TangramObjectMergedLayer;->viewProjectionMatrix:[F

    iget-object v4, p0, Lcom/android/systemui/infinity/tangram/TangramObjectMergedLayer;->viewMatrix:[F

    move-object v2, p1

    move v3, v1

    move v5, v1

    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    iget v0, p0, Lcom/android/systemui/infinity/tangram/TangramObjectMergedLayer;->uMatrixLocation:I

    iget-object v2, p0, Lcom/android/systemui/infinity/tangram/TangramObjectMergedLayer;->viewProjectionMatrix:[F

    const/4 v3, 0x1

    invoke-static {v0, v3, v1, v2, v1}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    invoke-static {v6, v1, v6}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    return-void
.end method

.method public setAlpha(F)V
    .locals 0

    iput p1, p0, Lcom/android/systemui/infinity/tangram/TangramObjectMergedLayer;->alpha:F

    return-void
.end method

.method public setScale(FF)V
    .locals 0

    iput p1, p0, Lcom/android/systemui/infinity/tangram/TangramObjectMergedLayer;->sx:F

    iput p2, p0, Lcom/android/systemui/infinity/tangram/TangramObjectMergedLayer;->sy:F

    return-void
.end method

.method public setTranslation(FFF)V
    .locals 0

    iput p1, p0, Lcom/android/systemui/infinity/tangram/TangramObjectMergedLayer;->tx:F

    iput p2, p0, Lcom/android/systemui/infinity/tangram/TangramObjectMergedLayer;->ty:F

    iput p3, p0, Lcom/android/systemui/infinity/tangram/TangramObjectMergedLayer;->tz:F

    return-void
.end method
