.class public Lcom/android/systemui/infinity/tangram/TangramObjectFBO;
.super Ljava/lang/Object;
.source "TangramObjectFBO.java"

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

.field beforeH:F

.field beforeW:F

.field colour_texture:[I

.field context:Landroid/content/Context;

.field fboH:I

.field public final fboViewProjectionMatrix:[F

.field fboW:I

.field frame_buffer:[I

.field plusScaleX:F

.field plusScaleY:F

.field private program:I

.field renderer:Lcom/android/systemui/infinity/GalaxyRenderer;

.field sx:F

.field sy:F

.field private textureId:I

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
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/infinity/GalaxyRenderer;FFFF)V
    .locals 9

    const/4 v4, 0x1

    const/16 v8, 0x10

    const/high16 v7, -0x40800000    # -1.0f

    const/4 v6, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-array v3, v8, [F

    iput-object v3, p0, Lcom/android/systemui/infinity/tangram/TangramObjectFBO;->viewMatrix:[F

    new-array v3, v8, [F

    iput-object v3, p0, Lcom/android/systemui/infinity/tangram/TangramObjectFBO;->viewProjectionMatrix:[F

    new-array v3, v8, [F

    iput-object v3, p0, Lcom/android/systemui/infinity/tangram/TangramObjectFBO;->fboViewProjectionMatrix:[F

    iput v5, p0, Lcom/android/systemui/infinity/tangram/TangramObjectFBO;->sx:F

    iput v5, p0, Lcom/android/systemui/infinity/tangram/TangramObjectFBO;->sy:F

    iput v5, p0, Lcom/android/systemui/infinity/tangram/TangramObjectFBO;->alpha:F

    new-array v3, v4, [I

    iput-object v3, p0, Lcom/android/systemui/infinity/tangram/TangramObjectFBO;->frame_buffer:[I

    new-array v3, v4, [I

    iput-object v3, p0, Lcom/android/systemui/infinity/tangram/TangramObjectFBO;->colour_texture:[I

    iput v5, p0, Lcom/android/systemui/infinity/tangram/TangramObjectFBO;->plusScaleX:F

    iput v5, p0, Lcom/android/systemui/infinity/tangram/TangramObjectFBO;->plusScaleY:F

    iput-object p1, p0, Lcom/android/systemui/infinity/tangram/TangramObjectFBO;->context:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/systemui/infinity/tangram/TangramObjectFBO;->renderer:Lcom/android/systemui/infinity/GalaxyRenderer;

    div-float v2, p3, p5

    div-float v1, p4, p6

    iput p3, p0, Lcom/android/systemui/infinity/tangram/TangramObjectFBO;->beforeW:F

    iput p4, p0, Lcom/android/systemui/infinity/tangram/TangramObjectFBO;->beforeH:F

    const/16 v3, 0x18

    new-array v0, v3, [F

    const/4 v3, 0x0

    aput v6, v0, v3

    aput v6, v0, v4

    const/high16 v3, 0x3f000000    # 0.5f

    const/4 v4, 0x2

    aput v3, v0, v4

    const/high16 v3, 0x3f000000    # 0.5f

    const/4 v4, 0x3

    aput v3, v0, v4

    mul-float v3, v7, v2

    const/4 v4, 0x4

    aput v3, v0, v4

    mul-float v3, v7, v1

    const/4 v4, 0x5

    aput v3, v0, v4

    const/4 v3, 0x6

    aput v6, v0, v3

    const/4 v3, 0x7

    aput v5, v0, v3

    mul-float v3, v5, v2

    const/16 v4, 0x8

    aput v3, v0, v4

    mul-float v3, v7, v1

    const/16 v4, 0x9

    aput v3, v0, v4

    const/16 v3, 0xa

    aput v5, v0, v3

    const/16 v3, 0xb

    aput v5, v0, v3

    mul-float v3, v5, v2

    const/16 v4, 0xc

    aput v3, v0, v4

    mul-float v3, v5, v1

    const/16 v4, 0xd

    aput v3, v0, v4

    const/16 v3, 0xe

    aput v5, v0, v3

    const/16 v3, 0xf

    aput v6, v0, v3

    mul-float v3, v7, v2

    aput v3, v0, v8

    mul-float v3, v5, v1

    const/16 v4, 0x11

    aput v3, v0, v4

    const/16 v3, 0x12

    aput v6, v0, v3

    const/16 v3, 0x13

    aput v6, v0, v3

    mul-float v3, v7, v2

    const/16 v4, 0x14

    aput v3, v0, v4

    mul-float v3, v7, v1

    const/16 v4, 0x15

    aput v3, v0, v4

    const/16 v3, 0x16

    aput v6, v0, v3

    const/16 v3, 0x17

    aput v5, v0, v3

    new-instance v3, Lcom/android/systemui/infinity/common/VertexArray;

    invoke-direct {v3, v0}, Lcom/android/systemui/infinity/common/VertexArray;-><init>([F)V

    iput-object v3, p0, Lcom/android/systemui/infinity/tangram/TangramObjectFBO;->vertexArray:Lcom/android/systemui/infinity/common/VertexArray;

    return-void
.end method


# virtual methods
.method public changeSize(FF)V
    .locals 0

    return-void
.end method

.method createFrameBuffer(II)I
    .locals 12

    const/4 v7, 0x1

    const v11, 0x8d40

    const/16 v10, 0x2601

    const/16 v0, 0xde1

    const/4 v1, 0x0

    iput p1, p0, Lcom/android/systemui/infinity/tangram/TangramObjectFBO;->fboW:I

    iput p2, p0, Lcom/android/systemui/infinity/tangram/TangramObjectFBO;->fboH:I

    iget-object v2, p0, Lcom/android/systemui/infinity/tangram/TangramObjectFBO;->fboViewProjectionMatrix:[F

    const/high16 v3, 0x42340000    # 45.0f

    int-to-float v4, p1

    int-to-float v5, p2

    div-float/2addr v4, v5

    const v5, 0x409ccccd    # 4.9f

    const/high16 v6, 0x40a00000    # 5.0f

    invoke-static {v2, v3, v4, v5, v6}, Lcom/android/systemui/infinity/common/MatrixHelper;->perspectiveM([FFFFF)V

    iget-object v2, p0, Lcom/android/systemui/infinity/tangram/TangramObjectFBO;->frame_buffer:[I

    invoke-static {v7, v2, v1}, Landroid/opengl/GLES20;->glGenFramebuffers(I[II)V

    iget-object v2, p0, Lcom/android/systemui/infinity/tangram/TangramObjectFBO;->colour_texture:[I

    invoke-static {v7, v2, v1}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    iget-object v2, p0, Lcom/android/systemui/infinity/tangram/TangramObjectFBO;->colour_texture:[I

    aget v2, v2, v1

    invoke-static {v0, v2}, Landroid/opengl/GLES20;->glBindTexture(II)V

    const/16 v2, 0x1908

    const/16 v6, 0x1908

    const/16 v7, 0x1401

    const/4 v8, 0x0

    move v3, p1

    move v4, p2

    move v5, v1

    invoke-static/range {v0 .. v8}, Landroid/opengl/GLES20;->glTexImage2D(IIIIIIIILjava/nio/Buffer;)V

    const/16 v2, 0x2801

    invoke-static {v0, v2, v10}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    const/16 v2, 0x2800

    invoke-static {v0, v2, v10}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    const/16 v2, 0x1902

    const/16 v6, 0x1902

    const/16 v7, 0x1403

    const/4 v8, 0x0

    move v3, p1

    move v4, p2

    move v5, v1

    invoke-static/range {v0 .. v8}, Landroid/opengl/GLES20;->glTexImage2D(IIIIIIIILjava/nio/Buffer;)V

    const/16 v2, 0x2801

    invoke-static {v0, v2, v10}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    const/16 v2, 0x2800

    invoke-static {v0, v2, v10}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    iget-object v2, p0, Lcom/android/systemui/infinity/tangram/TangramObjectFBO;->frame_buffer:[I

    aget v2, v2, v1

    invoke-static {v11, v2}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    iget-object v2, p0, Lcom/android/systemui/infinity/tangram/TangramObjectFBO;->colour_texture:[I

    aget v2, v2, v1

    const v3, 0x8ce0

    invoke-static {v11, v3, v0, v2, v1}, Landroid/opengl/GLES20;->glFramebufferTexture2D(IIIII)V

    invoke-static {v11}, Landroid/opengl/GLES20;->glCheckFramebufferStatus(I)I

    move-result v9

    const v0, 0x8cd5

    if-ne v9, v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/infinity/tangram/TangramObjectFBO;->frame_buffer:[I

    aget v0, v0, v1

    return v0

    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method public createProgram()V
    .locals 5

    const/16 v4, 0x10

    const/4 v3, 0x2

    iget-object v0, p0, Lcom/android/systemui/infinity/tangram/TangramObjectFBO;->renderer:Lcom/android/systemui/infinity/GalaxyRenderer;

    invoke-virtual {v0}, Lcom/android/systemui/infinity/GalaxyRenderer;->getResourceManager()Lcom/android/systemui/infinity/common/GLResourceManager;

    move-result-object v0

    const v1, 0x7f110003

    const v2, 0x7f110002

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/infinity/common/GLResourceManager;->loadProgram(II)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/infinity/tangram/TangramObjectFBO;->program:I

    iget v0, p0, Lcom/android/systemui/infinity/tangram/TangramObjectFBO;->program:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glUseProgram(I)V

    iget v0, p0, Lcom/android/systemui/infinity/tangram/TangramObjectFBO;->program:I

    const-string/jumbo v1, "u_TextureUnit"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/infinity/tangram/TangramObjectFBO;->uTextureUnitLocation:I

    iget v0, p0, Lcom/android/systemui/infinity/tangram/TangramObjectFBO;->program:I

    const-string/jumbo v1, "u_Alpha"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/infinity/tangram/TangramObjectFBO;->uAlphaLocation:I

    iget v0, p0, Lcom/android/systemui/infinity/tangram/TangramObjectFBO;->program:I

    const-string/jumbo v1, "u_Matrix"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/infinity/tangram/TangramObjectFBO;->uMatrixLocation:I

    iget v0, p0, Lcom/android/systemui/infinity/tangram/TangramObjectFBO;->program:I

    const-string/jumbo v1, "a_Position"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/infinity/tangram/TangramObjectFBO;->aPositionLocation:I

    iget v0, p0, Lcom/android/systemui/infinity/tangram/TangramObjectFBO;->program:I

    const-string/jumbo v1, "a_TextureCoordinates"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/infinity/tangram/TangramObjectFBO;->aTextureCoordinatesLocation:I

    iget-object v0, p0, Lcom/android/systemui/infinity/tangram/TangramObjectFBO;->vertexArray:Lcom/android/systemui/infinity/common/VertexArray;

    iget v1, p0, Lcom/android/systemui/infinity/tangram/TangramObjectFBO;->aPositionLocation:I

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1, v3, v4}, Lcom/android/systemui/infinity/common/VertexArray;->setVertexAttribPointer(IIII)V

    iget-object v0, p0, Lcom/android/systemui/infinity/tangram/TangramObjectFBO;->vertexArray:Lcom/android/systemui/infinity/common/VertexArray;

    iget v1, p0, Lcom/android/systemui/infinity/tangram/TangramObjectFBO;->aTextureCoordinatesLocation:I

    invoke-virtual {v0, v3, v1, v3, v4}, Lcom/android/systemui/infinity/common/VertexArray;->setVertexAttribPointer(IIII)V

    return-void
.end method

.method public destroyProgram()V
    .locals 0

    return-void
.end method

.method public draw([F)V
    .locals 1

    iget v0, p0, Lcom/android/systemui/infinity/tangram/TangramObjectFBO;->textureId:I

    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/infinity/tangram/TangramObjectFBO;->draw([FI)V

    return-void
.end method

.method public draw([FI)V
    .locals 7

    const/16 v4, 0x10

    const/4 v6, 0x6

    const/4 v3, 0x2

    const/4 v1, 0x0

    iget v0, p0, Lcom/android/systemui/infinity/tangram/TangramObjectFBO;->program:I

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget v0, p0, Lcom/android/systemui/infinity/tangram/TangramObjectFBO;->program:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glUseProgram(I)V

    const v0, 0x84c0

    invoke-static {v0}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    const/16 v0, 0xde1

    invoke-static {v0, p2}, Landroid/opengl/GLES20;->glBindTexture(II)V

    iget v0, p0, Lcom/android/systemui/infinity/tangram/TangramObjectFBO;->uTextureUnitLocation:I

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glUniform1i(II)V

    iget v0, p0, Lcom/android/systemui/infinity/tangram/TangramObjectFBO;->uAlphaLocation:I

    iget v2, p0, Lcom/android/systemui/infinity/tangram/TangramObjectFBO;->alpha:F

    invoke-static {v0, v2}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    iget-object v0, p0, Lcom/android/systemui/infinity/tangram/TangramObjectFBO;->vertexArray:Lcom/android/systemui/infinity/common/VertexArray;

    iget v2, p0, Lcom/android/systemui/infinity/tangram/TangramObjectFBO;->aPositionLocation:I

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/systemui/infinity/common/VertexArray;->setVertexAttribPointer(IIII)V

    iget-object v0, p0, Lcom/android/systemui/infinity/tangram/TangramObjectFBO;->vertexArray:Lcom/android/systemui/infinity/common/VertexArray;

    iget v2, p0, Lcom/android/systemui/infinity/tangram/TangramObjectFBO;->aTextureCoordinatesLocation:I

    invoke-virtual {v0, v3, v2, v3, v4}, Lcom/android/systemui/infinity/common/VertexArray;->setVertexAttribPointer(IIII)V

    iget-object v0, p0, Lcom/android/systemui/infinity/tangram/TangramObjectFBO;->viewMatrix:[F

    invoke-static {v0, v1}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    iget-object v0, p0, Lcom/android/systemui/infinity/tangram/TangramObjectFBO;->viewMatrix:[F

    iget v2, p0, Lcom/android/systemui/infinity/tangram/TangramObjectFBO;->tx:F

    iget v3, p0, Lcom/android/systemui/infinity/tangram/TangramObjectFBO;->ty:F

    iget v4, p0, Lcom/android/systemui/infinity/tangram/TangramObjectFBO;->tz:F

    invoke-static {v0, v1, v2, v3, v4}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    iget-object v0, p0, Lcom/android/systemui/infinity/tangram/TangramObjectFBO;->viewMatrix:[F

    iget v2, p0, Lcom/android/systemui/infinity/tangram/TangramObjectFBO;->plusScaleX:F

    iget v3, p0, Lcom/android/systemui/infinity/tangram/TangramObjectFBO;->plusScaleY:F

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-static {v0, v1, v2, v3, v4}, Landroid/opengl/Matrix;->scaleM([FIFFF)V

    iget-object v0, p0, Lcom/android/systemui/infinity/tangram/TangramObjectFBO;->viewProjectionMatrix:[F

    iget-object v4, p0, Lcom/android/systemui/infinity/tangram/TangramObjectFBO;->viewMatrix:[F

    move-object v2, p1

    move v3, v1

    move v5, v1

    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    iget v0, p0, Lcom/android/systemui/infinity/tangram/TangramObjectFBO;->uMatrixLocation:I

    iget-object v2, p0, Lcom/android/systemui/infinity/tangram/TangramObjectFBO;->viewProjectionMatrix:[F

    const/4 v3, 0x1

    invoke-static {v0, v3, v1, v2, v1}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    invoke-static {v6, v1, v6}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    return-void
.end method

.method public getFboH()I
    .locals 1

    iget v0, p0, Lcom/android/systemui/infinity/tangram/TangramObjectFBO;->fboH:I

    return v0
.end method

.method public getFboW()I
    .locals 1

    iget v0, p0, Lcom/android/systemui/infinity/tangram/TangramObjectFBO;->fboW:I

    return v0
.end method

.method public setAlpha(F)V
    .locals 0

    iput p1, p0, Lcom/android/systemui/infinity/tangram/TangramObjectFBO;->alpha:F

    return-void
.end method

.method public setScale(FF)V
    .locals 0

    iput p1, p0, Lcom/android/systemui/infinity/tangram/TangramObjectFBO;->sx:F

    iput p2, p0, Lcom/android/systemui/infinity/tangram/TangramObjectFBO;->sy:F

    return-void
.end method

.method public setTextureId(I)V
    .locals 0

    iput p1, p0, Lcom/android/systemui/infinity/tangram/TangramObjectFBO;->textureId:I

    return-void
.end method

.method public setTranslation(FFF)V
    .locals 0

    iput p1, p0, Lcom/android/systemui/infinity/tangram/TangramObjectFBO;->tx:F

    iput p2, p0, Lcom/android/systemui/infinity/tangram/TangramObjectFBO;->ty:F

    iput p3, p0, Lcom/android/systemui/infinity/tangram/TangramObjectFBO;->tz:F

    return-void
.end method
