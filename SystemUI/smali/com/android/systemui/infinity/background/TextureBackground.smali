.class public Lcom/android/systemui/infinity/background/TextureBackground;
.super Ljava/lang/Object;
.source "TextureBackground.java"


# static fields
.field private static final POSITION_COMPONENT_COUNT:I = 0x2

.field private static final STRIDE:I = 0x10

.field private static final TEXTURE_COORDINATES_COMPONENT_COUNT:I = 0x2

.field private static final VERTEX_DATA_L:[F

.field private static final VERTEX_DATA_P:[F

.field static imageH:F

.field static imageW:F

.field static mapH:F

.field static mapW:F

.field static x:F

.field static y:F


# instance fields
.field private final vertexArray:Lcom/android/systemui/infinity/common/VertexArray;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x0

    const/high16 v6, 0x40000000    # 2.0f

    const/4 v5, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    const/high16 v3, -0x40800000    # -1.0f

    const/high16 v0, 0x44870000    # 1080.0f

    sput v0, Lcom/android/systemui/infinity/background/TextureBackground;->imageW:F

    const v0, 0x450ac000    # 2220.0f

    sput v0, Lcom/android/systemui/infinity/background/TextureBackground;->imageH:F

    sput v4, Lcom/android/systemui/infinity/background/TextureBackground;->x:F

    const v0, 0x44e08000    # 1796.0f

    sput v0, Lcom/android/systemui/infinity/background/TextureBackground;->y:F

    const v0, 0x4576c000    # 3948.0f

    sput v0, Lcom/android/systemui/infinity/background/TextureBackground;->mapW:F

    const v0, 0x457b1000    # 4017.0f

    sput v0, Lcom/android/systemui/infinity/background/TextureBackground;->mapH:F

    const/16 v0, 0x18

    new-array v0, v0, [F

    aput v5, v0, v7

    const/4 v1, 0x1

    aput v5, v0, v1

    sget v1, Lcom/android/systemui/infinity/background/TextureBackground;->x:F

    sget v2, Lcom/android/systemui/infinity/background/TextureBackground;->imageW:F

    div-float/2addr v2, v6

    add-float/2addr v1, v2

    sget v2, Lcom/android/systemui/infinity/background/TextureBackground;->mapW:F

    div-float/2addr v1, v2

    const/4 v2, 0x2

    aput v1, v0, v2

    sget v1, Lcom/android/systemui/infinity/background/TextureBackground;->y:F

    sget v2, Lcom/android/systemui/infinity/background/TextureBackground;->imageH:F

    div-float/2addr v2, v6

    add-float/2addr v1, v2

    sget v2, Lcom/android/systemui/infinity/background/TextureBackground;->mapH:F

    div-float/2addr v1, v2

    const/4 v2, 0x3

    aput v1, v0, v2

    const/4 v1, 0x4

    aput v3, v0, v1

    const/4 v1, 0x5

    aput v3, v0, v1

    sget v1, Lcom/android/systemui/infinity/background/TextureBackground;->x:F

    sget v2, Lcom/android/systemui/infinity/background/TextureBackground;->mapW:F

    div-float/2addr v1, v2

    const/4 v2, 0x6

    aput v1, v0, v2

    sget v1, Lcom/android/systemui/infinity/background/TextureBackground;->y:F

    sget v2, Lcom/android/systemui/infinity/background/TextureBackground;->imageH:F

    add-float/2addr v1, v2

    sget v2, Lcom/android/systemui/infinity/background/TextureBackground;->mapH:F

    div-float/2addr v1, v2

    const/4 v2, 0x7

    aput v1, v0, v2

    const/16 v1, 0x8

    aput v4, v0, v1

    const/16 v1, 0x9

    aput v3, v0, v1

    sget v1, Lcom/android/systemui/infinity/background/TextureBackground;->imageW:F

    sget v2, Lcom/android/systemui/infinity/background/TextureBackground;->x:F

    add-float/2addr v1, v2

    sget v2, Lcom/android/systemui/infinity/background/TextureBackground;->mapW:F

    div-float/2addr v1, v2

    const/16 v2, 0xa

    aput v1, v0, v2

    sget v1, Lcom/android/systemui/infinity/background/TextureBackground;->y:F

    sget v2, Lcom/android/systemui/infinity/background/TextureBackground;->imageH:F

    add-float/2addr v1, v2

    sget v2, Lcom/android/systemui/infinity/background/TextureBackground;->mapH:F

    div-float/2addr v1, v2

    const/16 v2, 0xb

    aput v1, v0, v2

    const/16 v1, 0xc

    aput v4, v0, v1

    const/16 v1, 0xd

    aput v4, v0, v1

    sget v1, Lcom/android/systemui/infinity/background/TextureBackground;->imageW:F

    sget v2, Lcom/android/systemui/infinity/background/TextureBackground;->x:F

    add-float/2addr v1, v2

    sget v2, Lcom/android/systemui/infinity/background/TextureBackground;->mapW:F

    div-float/2addr v1, v2

    const/16 v2, 0xe

    aput v1, v0, v2

    sget v1, Lcom/android/systemui/infinity/background/TextureBackground;->y:F

    sget v2, Lcom/android/systemui/infinity/background/TextureBackground;->mapH:F

    div-float/2addr v1, v2

    const/16 v2, 0xf

    aput v1, v0, v2

    const/16 v1, 0x10

    aput v3, v0, v1

    const/16 v1, 0x11

    aput v4, v0, v1

    sget v1, Lcom/android/systemui/infinity/background/TextureBackground;->x:F

    sget v2, Lcom/android/systemui/infinity/background/TextureBackground;->mapW:F

    div-float/2addr v1, v2

    const/16 v2, 0x12

    aput v1, v0, v2

    sget v1, Lcom/android/systemui/infinity/background/TextureBackground;->y:F

    sget v2, Lcom/android/systemui/infinity/background/TextureBackground;->mapH:F

    div-float/2addr v1, v2

    const/16 v2, 0x13

    aput v1, v0, v2

    const/16 v1, 0x14

    aput v3, v0, v1

    const/16 v1, 0x15

    aput v3, v0, v1

    sget v1, Lcom/android/systemui/infinity/background/TextureBackground;->x:F

    sget v2, Lcom/android/systemui/infinity/background/TextureBackground;->mapW:F

    div-float/2addr v1, v2

    const/16 v2, 0x16

    aput v1, v0, v2

    sget v1, Lcom/android/systemui/infinity/background/TextureBackground;->y:F

    sget v2, Lcom/android/systemui/infinity/background/TextureBackground;->imageH:F

    add-float/2addr v1, v2

    sget v2, Lcom/android/systemui/infinity/background/TextureBackground;->mapH:F

    div-float/2addr v1, v2

    const/16 v2, 0x17

    aput v1, v0, v2

    sput-object v0, Lcom/android/systemui/infinity/background/TextureBackground;->VERTEX_DATA_P:[F

    const/16 v0, 0x18

    new-array v0, v0, [F

    aput v5, v0, v7

    const/4 v1, 0x1

    aput v5, v0, v1

    sget v1, Lcom/android/systemui/infinity/background/TextureBackground;->x:F

    sget v2, Lcom/android/systemui/infinity/background/TextureBackground;->imageW:F

    div-float/2addr v2, v6

    add-float/2addr v1, v2

    sget v2, Lcom/android/systemui/infinity/background/TextureBackground;->mapW:F

    div-float/2addr v1, v2

    const/4 v2, 0x2

    aput v1, v0, v2

    sget v1, Lcom/android/systemui/infinity/background/TextureBackground;->y:F

    sget v2, Lcom/android/systemui/infinity/background/TextureBackground;->imageH:F

    div-float/2addr v2, v6

    add-float/2addr v1, v2

    sget v2, Lcom/android/systemui/infinity/background/TextureBackground;->mapH:F

    div-float/2addr v1, v2

    const/4 v2, 0x3

    aput v1, v0, v2

    const/4 v1, 0x4

    aput v3, v0, v1

    const/4 v1, 0x5

    aput v3, v0, v1

    sget v1, Lcom/android/systemui/infinity/background/TextureBackground;->x:F

    sget v2, Lcom/android/systemui/infinity/background/TextureBackground;->mapW:F

    div-float/2addr v1, v2

    const/4 v2, 0x6

    aput v1, v0, v2

    sget v1, Lcom/android/systemui/infinity/background/TextureBackground;->y:F

    sget v2, Lcom/android/systemui/infinity/background/TextureBackground;->mapH:F

    div-float/2addr v1, v2

    const/4 v2, 0x7

    aput v1, v0, v2

    const/16 v1, 0x8

    aput v4, v0, v1

    const/16 v1, 0x9

    aput v3, v0, v1

    sget v1, Lcom/android/systemui/infinity/background/TextureBackground;->x:F

    sget v2, Lcom/android/systemui/infinity/background/TextureBackground;->mapW:F

    div-float/2addr v1, v2

    const/16 v2, 0xa

    aput v1, v0, v2

    sget v1, Lcom/android/systemui/infinity/background/TextureBackground;->y:F

    sget v2, Lcom/android/systemui/infinity/background/TextureBackground;->imageH:F

    add-float/2addr v1, v2

    sget v2, Lcom/android/systemui/infinity/background/TextureBackground;->mapH:F

    div-float/2addr v1, v2

    const/16 v2, 0xb

    aput v1, v0, v2

    const/16 v1, 0xc

    aput v4, v0, v1

    const/16 v1, 0xd

    aput v4, v0, v1

    sget v1, Lcom/android/systemui/infinity/background/TextureBackground;->imageW:F

    sget v2, Lcom/android/systemui/infinity/background/TextureBackground;->x:F

    add-float/2addr v1, v2

    sget v2, Lcom/android/systemui/infinity/background/TextureBackground;->mapW:F

    div-float/2addr v1, v2

    const/16 v2, 0xe

    aput v1, v0, v2

    sget v1, Lcom/android/systemui/infinity/background/TextureBackground;->y:F

    sget v2, Lcom/android/systemui/infinity/background/TextureBackground;->imageH:F

    add-float/2addr v1, v2

    sget v2, Lcom/android/systemui/infinity/background/TextureBackground;->mapH:F

    div-float/2addr v1, v2

    const/16 v2, 0xf

    aput v1, v0, v2

    const/16 v1, 0x10

    aput v3, v0, v1

    const/16 v1, 0x11

    aput v4, v0, v1

    sget v1, Lcom/android/systemui/infinity/background/TextureBackground;->imageW:F

    sget v2, Lcom/android/systemui/infinity/background/TextureBackground;->x:F

    add-float/2addr v1, v2

    sget v2, Lcom/android/systemui/infinity/background/TextureBackground;->mapW:F

    div-float/2addr v1, v2

    const/16 v2, 0x12

    aput v1, v0, v2

    sget v1, Lcom/android/systemui/infinity/background/TextureBackground;->y:F

    sget v2, Lcom/android/systemui/infinity/background/TextureBackground;->mapH:F

    div-float/2addr v1, v2

    const/16 v2, 0x13

    aput v1, v0, v2

    const/16 v1, 0x14

    aput v3, v0, v1

    const/16 v1, 0x15

    aput v3, v0, v1

    sget v1, Lcom/android/systemui/infinity/background/TextureBackground;->x:F

    sget v2, Lcom/android/systemui/infinity/background/TextureBackground;->mapW:F

    div-float/2addr v1, v2

    const/16 v2, 0x16

    aput v1, v0, v2

    sget v1, Lcom/android/systemui/infinity/background/TextureBackground;->y:F

    sget v2, Lcom/android/systemui/infinity/background/TextureBackground;->mapH:F

    div-float/2addr v1, v2

    const/16 v2, 0x17

    aput v1, v0, v2

    sput-object v0, Lcom/android/systemui/infinity/background/TextureBackground;->VERTEX_DATA_L:[F

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    new-instance v0, Lcom/android/systemui/infinity/common/VertexArray;

    sget-object v1, Lcom/android/systemui/infinity/background/TextureBackground;->VERTEX_DATA_P:[F

    invoke-direct {v0, v1}, Lcom/android/systemui/infinity/common/VertexArray;-><init>([F)V

    iput-object v0, p0, Lcom/android/systemui/infinity/background/TextureBackground;->vertexArray:Lcom/android/systemui/infinity/common/VertexArray;

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/android/systemui/infinity/common/VertexArray;

    sget-object v1, Lcom/android/systemui/infinity/background/TextureBackground;->VERTEX_DATA_L:[F

    invoke-direct {v0, v1}, Lcom/android/systemui/infinity/common/VertexArray;-><init>([F)V

    iput-object v0, p0, Lcom/android/systemui/infinity/background/TextureBackground;->vertexArray:Lcom/android/systemui/infinity/common/VertexArray;

    goto :goto_0
.end method


# virtual methods
.method public bindData(Lcom/android/systemui/infinity/common/TextureShaderProgram;)V
    .locals 5

    const/16 v4, 0x10

    const/4 v3, 0x2

    iget-object v0, p0, Lcom/android/systemui/infinity/background/TextureBackground;->vertexArray:Lcom/android/systemui/infinity/common/VertexArray;

    invoke-virtual {p1}, Lcom/android/systemui/infinity/common/TextureShaderProgram;->getPositionAttributeLocation()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1, v3, v4}, Lcom/android/systemui/infinity/common/VertexArray;->setVertexAttribPointer(IIII)V

    iget-object v0, p0, Lcom/android/systemui/infinity/background/TextureBackground;->vertexArray:Lcom/android/systemui/infinity/common/VertexArray;

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
