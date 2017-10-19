.class public Lcom/samsung/android/srib/virtualtourRenderer/Mesh;
.super Ljava/lang/Object;
.source "Mesh.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x9
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/srib/virtualtourRenderer/Mesh$MeshType;
    }
.end annotation


# static fields
.field private static final BYTES_PER_FLOAT:I = 0x4

.field private static final BYTES_PER_SHORT:I = 0x2

.field private static final POSITION_DATA_SIZE_IN_ELEMENTS:I = 0x3

.field private static final STRIDE:I = 0x14

.field private static final TEX_COORD_DATA_SIZE_IN_ELEMENTS:I = 0x2

.field private static flatMesh:Lcom/samsung/android/srib/virtualtourRenderer/Mesh;


# instance fields
.field private final ASPECT_RATIO:F

.field private final MIN_POSITION:F

.field private final POSITION_RANGE:F

.field private final SIZE_PER_SIDE:I

.field private final SIZE_PER_SIDE_X:I

.field private final SIZE_PER_SIDE_Y:I

.field private TAG:Ljava/lang/String;

.field private final floatsPerVertex:I

.field private final ibo:[I

.field private indexCount:I

.field private mWireFrameMode:Z

.field private maPositionHandle:I

.field private maTextureHandle:I

.field private final meshVertexData:[F

.field private final vbo:[I

.field private final xLength:I

.field private final yLength:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/samsung/android/srib/virtualtourRenderer/Mesh;->flatMesh:Lcom/samsung/android/srib/virtualtourRenderer/Mesh;

    return-void
.end method

.method private constructor <init>(FLcom/samsung/android/srib/virtualtourRenderer/Mesh$MeshType;III)V
    .locals 14

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/samsung/android/srib/virtualtourRenderer/Mesh;->mWireFrameMode:Z

    const-string/jumbo v2, "Mesh"

    iput-object v2, p0, Lcom/samsung/android/srib/virtualtourRenderer/Mesh;->TAG:Ljava/lang/String;

    const/16 v2, 0x400

    iput v2, p0, Lcom/samsung/android/srib/virtualtourRenderer/Mesh;->SIZE_PER_SIDE_X:I

    const/4 v2, 0x2

    iput v2, p0, Lcom/samsung/android/srib/virtualtourRenderer/Mesh;->SIZE_PER_SIDE_Y:I

    const/16 v2, 0x100

    iput v2, p0, Lcom/samsung/android/srib/virtualtourRenderer/Mesh;->SIZE_PER_SIDE:I

    const/4 v2, 0x5

    iput v2, p0, Lcom/samsung/android/srib/virtualtourRenderer/Mesh;->floatsPerVertex:I

    const/4 v2, 0x1

    new-array v2, v2, [I

    iput-object v2, p0, Lcom/samsung/android/srib/virtualtourRenderer/Mesh;->vbo:[I

    const/4 v2, 0x1

    new-array v2, v2, [I

    iput-object v2, p0, Lcom/samsung/android/srib/virtualtourRenderer/Mesh;->ibo:[I

    move/from16 v0, p3

    int-to-float v2, v0

    move/from16 v0, p4

    int-to-float v3, v0

    div-float/2addr v2, v3

    iput v2, p0, Lcom/samsung/android/srib/virtualtourRenderer/Mesh;->ASPECT_RATIO:F

    neg-float v2, p1

    iput v2, p0, Lcom/samsung/android/srib/virtualtourRenderer/Mesh;->MIN_POSITION:F

    const/high16 v2, 0x40000000    # 2.0f

    mul-float/2addr v2, p1

    iput v2, p0, Lcom/samsung/android/srib/virtualtourRenderer/Mesh;->POSITION_RANGE:F

    const/16 v2, 0x400

    iput v2, p0, Lcom/samsung/android/srib/virtualtourRenderer/Mesh;->xLength:I

    const/4 v2, 0x2

    iput v2, p0, Lcom/samsung/android/srib/virtualtourRenderer/Mesh;->yLength:I

    iget v2, p0, Lcom/samsung/android/srib/virtualtourRenderer/Mesh;->xLength:I

    iget v3, p0, Lcom/samsung/android/srib/virtualtourRenderer/Mesh;->yLength:I

    mul-int/2addr v2, v3

    mul-int/lit8 v2, v2, 0x5

    new-array v2, v2, [F

    iput-object v2, p0, Lcom/samsung/android/srib/virtualtourRenderer/Mesh;->meshVertexData:[F

    :try_start_0
    iget v2, p0, Lcom/samsung/android/srib/virtualtourRenderer/Mesh;->yLength:I

    add-int/lit8 v2, v2, -0x1

    add-int/lit8 v3, v2, -0x1

    mul-int/lit8 v3, v3, 0x2

    iget v4, p0, Lcom/samsung/android/srib/virtualtourRenderer/Mesh;->xLength:I

    mul-int/lit8 v4, v4, 0x2

    mul-int/2addr v2, v4

    add-int/2addr v2, v3

    new-array v6, v2, [S

    const/4 v3, 0x0

    sget-object v2, Lcom/samsung/android/srib/virtualtourRenderer/Mesh$MeshType;->FLAT:Lcom/samsung/android/srib/virtualtourRenderer/Mesh$MeshType;

    move-object/from16 v0, p2

    if-eq v0, v2, :cond_2

    sget-object v2, Lcom/samsung/android/srib/virtualtourRenderer/Mesh$MeshType;->PYRAMIDAL:Lcom/samsung/android/srib/virtualtourRenderer/Mesh$MeshType;

    move-object/from16 v0, p2

    if-eq v0, v2, :cond_f

    sget-object v2, Lcom/samsung/android/srib/virtualtourRenderer/Mesh$MeshType;->CURVED:Lcom/samsung/android/srib/virtualtourRenderer/Mesh$MeshType;

    move-object/from16 v0, p2

    if-eq v0, v2, :cond_17

    :cond_0
    array-length v2, v6

    iput v2, p0, Lcom/samsung/android/srib/virtualtourRenderer/Mesh;->indexCount:I

    iget-object v2, p0, Lcom/samsung/android/srib/virtualtourRenderer/Mesh;->meshVertexData:[F

    array-length v2, v2

    mul-int/lit8 v2, v2, 0x4

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/srib/virtualtourRenderer/Mesh;->meshVertexData:[F

    invoke-virtual {v2, v3}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/nio/Buffer;->position(I)Ljava/nio/Buffer;

    array-length v3, v6

    mul-int/lit8 v3, v3, 0x2

    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->asShortBuffer()Ljava/nio/ShortBuffer;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/nio/ShortBuffer;->put([S)Ljava/nio/ShortBuffer;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/nio/Buffer;->position(I)Ljava/nio/Buffer;

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/samsung/android/srib/virtualtourRenderer/Mesh;->vbo:[I

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Landroid/opengl/GLES20;->glGenBuffers(I[II)V

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/samsung/android/srib/virtualtourRenderer/Mesh;->ibo:[I

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Landroid/opengl/GLES20;->glGenBuffers(I[II)V

    iget-object v4, p0, Lcom/samsung/android/srib/virtualtourRenderer/Mesh;->vbo:[I

    const/4 v5, 0x0

    aget v4, v4, v5

    if-gtz v4, :cond_1e

    :cond_1
    iget-object v2, p0, Lcom/samsung/android/srib/virtualtourRenderer/Mesh;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "BUFFER_CREATION_ERROR: glGenBuffers"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_2
    const/4 v2, 0x3

    move/from16 v0, p5

    if-eq v0, v2, :cond_4

    const/4 v2, 0x6

    move/from16 v0, p5

    if-eq v0, v2, :cond_6

    const/16 v2, 0x8

    move/from16 v0, p5

    if-eq v0, v2, :cond_8

    const/4 v2, 0x0

    move v4, v2

    :goto_1
    iget v2, p0, Lcom/samsung/android/srib/virtualtourRenderer/Mesh;->yLength:I

    if-lt v4, v2, :cond_a

    :cond_3
    const/4 v3, 0x0

    const/4 v2, 0x0

    move v5, v2

    move v2, v3

    :goto_2
    iget v3, p0, Lcom/samsung/android/srib/virtualtourRenderer/Mesh;->yLength:I

    add-int/lit8 v3, v3, -0x1

    if-ge v5, v3, :cond_0

    if-gtz v5, :cond_c

    :goto_3
    const/4 v3, 0x0

    :goto_4
    iget v4, p0, Lcom/samsung/android/srib/virtualtourRenderer/Mesh;->xLength:I

    if-lt v3, v4, :cond_d

    iget v3, p0, Lcom/samsung/android/srib/virtualtourRenderer/Mesh;->yLength:I

    add-int/lit8 v3, v3, -0x2

    if-lt v5, v3, :cond_e

    :goto_5
    add-int/lit8 v3, v5, 0x1

    move v5, v3

    goto :goto_2

    :cond_4
    const/4 v2, 0x0

    move v4, v2

    :goto_6
    iget v2, p0, Lcom/samsung/android/srib/virtualtourRenderer/Mesh;->yLength:I

    if-ge v4, v2, :cond_3

    int-to-float v2, v4

    iget v5, p0, Lcom/samsung/android/srib/virtualtourRenderer/Mesh;->yLength:I

    add-int/lit8 v5, v5, -0x1

    int-to-float v5, v5

    div-float/2addr v2, v5

    const/high16 v5, 0x3f800000    # 1.0f

    sub-float v2, v5, v2

    iget v5, p0, Lcom/samsung/android/srib/virtualtourRenderer/Mesh;->MIN_POSITION:F

    iget v7, p0, Lcom/samsung/android/srib/virtualtourRenderer/Mesh;->ASPECT_RATIO:F

    div-float/2addr v5, v7

    iget v7, p0, Lcom/samsung/android/srib/virtualtourRenderer/Mesh;->POSITION_RANGE:F

    mul-float/2addr v2, v7

    iget v7, p0, Lcom/samsung/android/srib/virtualtourRenderer/Mesh;->ASPECT_RATIO:F

    div-float/2addr v2, v7

    add-float/2addr v5, v2

    const/4 v2, 0x0

    :goto_7
    iget v7, p0, Lcom/samsung/android/srib/virtualtourRenderer/Mesh;->xLength:I

    if-lt v2, v7, :cond_5

    add-int/lit8 v2, v4, 0x1

    move v4, v2

    goto :goto_6

    :cond_5
    int-to-float v7, v2

    iget v8, p0, Lcom/samsung/android/srib/virtualtourRenderer/Mesh;->xLength:I

    add-int/lit8 v8, v8, -0x1

    int-to-float v8, v8

    div-float/2addr v7, v8

    iget v8, p0, Lcom/samsung/android/srib/virtualtourRenderer/Mesh;->MIN_POSITION:F

    iget v9, p0, Lcom/samsung/android/srib/virtualtourRenderer/Mesh;->POSITION_RANGE:F

    mul-float/2addr v7, v9

    add-float/2addr v7, v8

    iget-object v8, p0, Lcom/samsung/android/srib/virtualtourRenderer/Mesh;->meshVertexData:[F

    add-int/lit8 v9, v3, 0x1

    aput v7, v8, v3

    iget-object v3, p0, Lcom/samsung/android/srib/virtualtourRenderer/Mesh;->meshVertexData:[F

    add-int/lit8 v7, v9, 0x1

    aput v5, v3, v9

    iget-object v3, p0, Lcom/samsung/android/srib/virtualtourRenderer/Mesh;->meshVertexData:[F

    add-int/lit8 v8, v7, 0x1

    const/4 v9, 0x0

    aput v9, v3, v7

    int-to-float v3, v2

    iget v7, p0, Lcom/samsung/android/srib/virtualtourRenderer/Mesh;->xLength:I

    add-int/lit8 v7, v7, -0x1

    int-to-float v7, v7

    div-float/2addr v3, v7

    const/high16 v7, 0x3f800000    # 1.0f

    sub-float v3, v7, v3

    int-to-float v7, v4

    iget v9, p0, Lcom/samsung/android/srib/virtualtourRenderer/Mesh;->yLength:I

    add-int/lit8 v9, v9, -0x1

    int-to-float v9, v9

    div-float/2addr v7, v9

    iget-object v9, p0, Lcom/samsung/android/srib/virtualtourRenderer/Mesh;->meshVertexData:[F

    add-int/lit8 v10, v8, 0x1

    aput v3, v9, v8

    iget-object v8, p0, Lcom/samsung/android/srib/virtualtourRenderer/Mesh;->meshVertexData:[F

    add-int/lit8 v3, v10, 0x1

    aput v7, v8, v10

    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    :cond_6
    const/4 v2, 0x0

    move v4, v2

    :goto_8
    iget v2, p0, Lcom/samsung/android/srib/virtualtourRenderer/Mesh;->yLength:I

    if-ge v4, v2, :cond_3

    int-to-float v2, v4

    iget v5, p0, Lcom/samsung/android/srib/virtualtourRenderer/Mesh;->yLength:I

    add-int/lit8 v5, v5, -0x1

    int-to-float v5, v5

    div-float/2addr v2, v5

    const/high16 v5, 0x3f800000    # 1.0f

    sub-float v2, v5, v2

    iget v5, p0, Lcom/samsung/android/srib/virtualtourRenderer/Mesh;->MIN_POSITION:F

    iget v7, p0, Lcom/samsung/android/srib/virtualtourRenderer/Mesh;->ASPECT_RATIO:F

    div-float/2addr v5, v7

    iget v7, p0, Lcom/samsung/android/srib/virtualtourRenderer/Mesh;->POSITION_RANGE:F

    mul-float/2addr v2, v7

    iget v7, p0, Lcom/samsung/android/srib/virtualtourRenderer/Mesh;->ASPECT_RATIO:F

    div-float/2addr v2, v7

    add-float/2addr v5, v2

    const/4 v2, 0x0

    :goto_9
    iget v7, p0, Lcom/samsung/android/srib/virtualtourRenderer/Mesh;->xLength:I

    if-lt v2, v7, :cond_7

    add-int/lit8 v2, v4, 0x1

    move v4, v2

    goto :goto_8

    :cond_7
    int-to-float v7, v2

    iget v8, p0, Lcom/samsung/android/srib/virtualtourRenderer/Mesh;->xLength:I

    add-int/lit8 v8, v8, -0x1

    int-to-float v8, v8

    div-float/2addr v7, v8

    iget v8, p0, Lcom/samsung/android/srib/virtualtourRenderer/Mesh;->MIN_POSITION:F

    iget v9, p0, Lcom/samsung/android/srib/virtualtourRenderer/Mesh;->POSITION_RANGE:F

    mul-float/2addr v7, v9

    add-float/2addr v7, v8

    iget-object v8, p0, Lcom/samsung/android/srib/virtualtourRenderer/Mesh;->meshVertexData:[F

    add-int/lit8 v9, v3, 0x1

    aput v7, v8, v3

    iget-object v3, p0, Lcom/samsung/android/srib/virtualtourRenderer/Mesh;->meshVertexData:[F

    add-int/lit8 v7, v9, 0x1

    aput v5, v3, v9

    iget-object v3, p0, Lcom/samsung/android/srib/virtualtourRenderer/Mesh;->meshVertexData:[F

    add-int/lit8 v8, v7, 0x1

    const/4 v9, 0x0

    aput v9, v3, v7

    int-to-float v3, v4

    iget v7, p0, Lcom/samsung/android/srib/virtualtourRenderer/Mesh;->yLength:I

    add-int/lit8 v7, v7, -0x1

    int-to-float v7, v7

    div-float/2addr v3, v7

    const/high16 v7, 0x3f800000    # 1.0f

    sub-float v3, v7, v3

    int-to-float v7, v2

    iget v9, p0, Lcom/samsung/android/srib/virtualtourRenderer/Mesh;->xLength:I

    add-int/lit8 v9, v9, -0x1

    int-to-float v9, v9

    div-float/2addr v7, v9

    const/high16 v9, 0x3f800000    # 1.0f

    sub-float v7, v9, v7

    iget-object v9, p0, Lcom/samsung/android/srib/virtualtourRenderer/Mesh;->meshVertexData:[F

    add-int/lit8 v10, v8, 0x1

    aput v3, v9, v8

    iget-object v8, p0, Lcom/samsung/android/srib/virtualtourRenderer/Mesh;->meshVertexData:[F

    add-int/lit8 v3, v10, 0x1

    aput v7, v8, v10

    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    :cond_8
    const/4 v2, 0x0

    move v4, v2

    :goto_a
    iget v2, p0, Lcom/samsung/android/srib/virtualtourRenderer/Mesh;->yLength:I

    if-ge v4, v2, :cond_3

    int-to-float v2, v4

    iget v5, p0, Lcom/samsung/android/srib/virtualtourRenderer/Mesh;->yLength:I

    add-int/lit8 v5, v5, -0x1

    int-to-float v5, v5

    div-float/2addr v2, v5

    const/high16 v5, 0x3f800000    # 1.0f

    sub-float v2, v5, v2

    iget v5, p0, Lcom/samsung/android/srib/virtualtourRenderer/Mesh;->MIN_POSITION:F

    iget v7, p0, Lcom/samsung/android/srib/virtualtourRenderer/Mesh;->ASPECT_RATIO:F

    div-float/2addr v5, v7

    iget v7, p0, Lcom/samsung/android/srib/virtualtourRenderer/Mesh;->POSITION_RANGE:F

    mul-float/2addr v2, v7

    iget v7, p0, Lcom/samsung/android/srib/virtualtourRenderer/Mesh;->ASPECT_RATIO:F

    div-float/2addr v2, v7

    add-float/2addr v5, v2

    const/4 v2, 0x0

    :goto_b
    iget v7, p0, Lcom/samsung/android/srib/virtualtourRenderer/Mesh;->xLength:I

    if-lt v2, v7, :cond_9

    add-int/lit8 v2, v4, 0x1

    move v4, v2

    goto :goto_a

    :cond_9
    int-to-float v7, v2

    iget v8, p0, Lcom/samsung/android/srib/virtualtourRenderer/Mesh;->xLength:I

    add-int/lit8 v8, v8, -0x1

    int-to-float v8, v8

    div-float/2addr v7, v8

    iget v8, p0, Lcom/samsung/android/srib/virtualtourRenderer/Mesh;->MIN_POSITION:F

    iget v9, p0, Lcom/samsung/android/srib/virtualtourRenderer/Mesh;->POSITION_RANGE:F

    mul-float/2addr v7, v9

    add-float/2addr v7, v8

    iget-object v8, p0, Lcom/samsung/android/srib/virtualtourRenderer/Mesh;->meshVertexData:[F

    add-int/lit8 v9, v3, 0x1

    aput v7, v8, v3

    iget-object v3, p0, Lcom/samsung/android/srib/virtualtourRenderer/Mesh;->meshVertexData:[F

    add-int/lit8 v7, v9, 0x1

    aput v5, v3, v9

    iget-object v3, p0, Lcom/samsung/android/srib/virtualtourRenderer/Mesh;->meshVertexData:[F

    add-int/lit8 v8, v7, 0x1

    const/4 v9, 0x0

    aput v9, v3, v7

    int-to-float v3, v4

    iget v7, p0, Lcom/samsung/android/srib/virtualtourRenderer/Mesh;->yLength:I

    add-int/lit8 v7, v7, -0x1

    int-to-float v7, v7

    div-float/2addr v3, v7

    int-to-float v7, v2

    iget v9, p0, Lcom/samsung/android/srib/virtualtourRenderer/Mesh;->xLength:I

    add-int/lit8 v9, v9, -0x1

    int-to-float v9, v9

    div-float/2addr v7, v9

    iget-object v9, p0, Lcom/samsung/android/srib/virtualtourRenderer/Mesh;->meshVertexData:[F

    add-int/lit8 v10, v8, 0x1

    aput v3, v9, v8

    iget-object v8, p0, Lcom/samsung/android/srib/virtualtourRenderer/Mesh;->meshVertexData:[F

    add-int/lit8 v3, v10, 0x1

    aput v7, v8, v10

    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    :cond_a
    int-to-float v2, v4

    iget v5, p0, Lcom/samsung/android/srib/virtualtourRenderer/Mesh;->yLength:I

    add-int/lit8 v5, v5, -0x1

    int-to-float v5, v5

    div-float/2addr v2, v5

    const/high16 v5, 0x3f800000    # 1.0f

    sub-float/2addr v5, v2

    iget v2, p0, Lcom/samsung/android/srib/virtualtourRenderer/Mesh;->MIN_POSITION:F

    iget v7, p0, Lcom/samsung/android/srib/virtualtourRenderer/Mesh;->ASPECT_RATIO:F

    div-float/2addr v2, v7

    iget v7, p0, Lcom/samsung/android/srib/virtualtourRenderer/Mesh;->POSITION_RANGE:F

    mul-float/2addr v7, v5

    iget v8, p0, Lcom/samsung/android/srib/virtualtourRenderer/Mesh;->ASPECT_RATIO:F

    div-float/2addr v7, v8

    add-float/2addr v7, v2

    const/4 v2, 0x0

    :goto_c
    iget v8, p0, Lcom/samsung/android/srib/virtualtourRenderer/Mesh;->xLength:I

    if-lt v2, v8, :cond_b

    add-int/lit8 v2, v4, 0x1

    move v4, v2

    goto/16 :goto_1

    :cond_b
    int-to-float v8, v2

    iget v9, p0, Lcom/samsung/android/srib/virtualtourRenderer/Mesh;->xLength:I

    add-int/lit8 v9, v9, -0x1

    int-to-float v9, v9

    div-float/2addr v8, v9

    iget v9, p0, Lcom/samsung/android/srib/virtualtourRenderer/Mesh;->MIN_POSITION:F

    iget v10, p0, Lcom/samsung/android/srib/virtualtourRenderer/Mesh;->POSITION_RANGE:F

    mul-float/2addr v10, v8

    add-float/2addr v9, v10

    iget-object v10, p0, Lcom/samsung/android/srib/virtualtourRenderer/Mesh;->meshVertexData:[F

    add-int/lit8 v11, v3, 0x1

    aput v9, v10, v3

    iget-object v3, p0, Lcom/samsung/android/srib/virtualtourRenderer/Mesh;->meshVertexData:[F

    add-int/lit8 v9, v11, 0x1

    aput v7, v3, v11

    iget-object v3, p0, Lcom/samsung/android/srib/virtualtourRenderer/Mesh;->meshVertexData:[F

    add-int/lit8 v10, v9, 0x1

    const/4 v11, 0x0

    aput v11, v3, v9

    iget-object v3, p0, Lcom/samsung/android/srib/virtualtourRenderer/Mesh;->meshVertexData:[F

    add-int/lit8 v9, v10, 0x1

    aput v8, v3, v10

    iget-object v8, p0, Lcom/samsung/android/srib/virtualtourRenderer/Mesh;->meshVertexData:[F

    add-int/lit8 v3, v9, 0x1

    aput v5, v8, v9

    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    :cond_c
    add-int/lit8 v3, v2, 0x1

    iget v4, p0, Lcom/samsung/android/srib/virtualtourRenderer/Mesh;->xLength:I

    mul-int/2addr v4, v5

    int-to-short v4, v4

    int-to-short v4, v4

    aput-short v4, v6, v2

    move v2, v3

    goto/16 :goto_3

    :cond_d
    add-int/lit8 v7, v2, 0x1

    iget v4, p0, Lcom/samsung/android/srib/virtualtourRenderer/Mesh;->xLength:I

    mul-int/2addr v4, v5

    add-int/2addr v4, v3

    int-to-short v4, v4

    int-to-short v4, v4

    aput-short v4, v6, v2

    add-int/lit8 v4, v7, 0x1

    add-int/lit8 v2, v5, 0x1

    iget v8, p0, Lcom/samsung/android/srib/virtualtourRenderer/Mesh;->xLength:I

    mul-int/2addr v2, v8

    add-int/2addr v2, v3

    int-to-short v2, v2

    int-to-short v2, v2

    aput-short v2, v6, v7

    add-int/lit8 v2, v3, 0x1

    move v3, v2

    move v2, v4

    goto/16 :goto_4

    :cond_e
    add-int/lit8 v3, v2, 0x1

    add-int/lit8 v4, v5, 0x1

    iget v7, p0, Lcom/samsung/android/srib/virtualtourRenderer/Mesh;->xLength:I

    mul-int/2addr v4, v7

    iget v7, p0, Lcom/samsung/android/srib/virtualtourRenderer/Mesh;->xLength:I

    add-int/lit8 v7, v7, -0x1

    add-int/2addr v4, v7

    int-to-short v4, v4

    int-to-short v4, v4

    aput-short v4, v6, v2

    move v2, v3

    goto/16 :goto_5

    :cond_f
    const/16 v2, 0x200

    new-array v5, v2, [F

    const/4 v2, 0x0

    :goto_d
    array-length v4, v5

    if-lt v2, v4, :cond_10

    const/4 v2, 0x0

    move v4, v2

    :goto_e
    iget v2, p0, Lcom/samsung/android/srib/virtualtourRenderer/Mesh;->yLength:I

    if-lt v4, v2, :cond_11

    const/4 v3, 0x0

    const/4 v2, 0x0

    move v5, v2

    move v2, v3

    :goto_f
    iget v3, p0, Lcom/samsung/android/srib/virtualtourRenderer/Mesh;->yLength:I

    add-int/lit8 v3, v3, -0x1

    if-ge v5, v3, :cond_0

    if-gtz v5, :cond_14

    :goto_10
    const/4 v3, 0x0

    :goto_11
    iget v4, p0, Lcom/samsung/android/srib/virtualtourRenderer/Mesh;->xLength:I

    if-lt v3, v4, :cond_15

    iget v3, p0, Lcom/samsung/android/srib/virtualtourRenderer/Mesh;->yLength:I

    add-int/lit8 v3, v3, -0x2

    if-lt v5, v3, :cond_16

    :goto_12
    add-int/lit8 v3, v5, 0x1

    move v5, v3

    goto :goto_f

    :cond_10
    int-to-float v4, v2

    const/high16 v7, 0x43480000    # 200.0f

    div-float/2addr v4, v7

    const v7, 0x4023d70a    # 2.56f

    sub-float/2addr v4, v7

    aput v4, v5, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    :cond_11
    const/4 v2, 0x0

    :goto_13
    iget v7, p0, Lcom/samsung/android/srib/virtualtourRenderer/Mesh;->xLength:I

    if-lt v2, v7, :cond_12

    add-int/lit8 v2, v4, 0x1

    move v4, v2

    goto :goto_e

    :cond_12
    int-to-float v7, v2

    iget v8, p0, Lcom/samsung/android/srib/virtualtourRenderer/Mesh;->xLength:I

    add-int/lit8 v8, v8, -0x1

    int-to-float v8, v8

    div-float/2addr v7, v8

    int-to-float v8, v4

    iget v9, p0, Lcom/samsung/android/srib/virtualtourRenderer/Mesh;->yLength:I

    add-int/lit8 v9, v9, -0x1

    int-to-float v9, v9

    div-float/2addr v8, v9

    const/high16 v9, 0x3f800000    # 1.0f

    sub-float v8, v9, v8

    iget v9, p0, Lcom/samsung/android/srib/virtualtourRenderer/Mesh;->MIN_POSITION:F

    iget v10, p0, Lcom/samsung/android/srib/virtualtourRenderer/Mesh;->POSITION_RANGE:F

    mul-float/2addr v10, v7

    add-float/2addr v9, v10

    iget v10, p0, Lcom/samsung/android/srib/virtualtourRenderer/Mesh;->MIN_POSITION:F

    iget v11, p0, Lcom/samsung/android/srib/virtualtourRenderer/Mesh;->ASPECT_RATIO:F

    div-float/2addr v10, v11

    iget v11, p0, Lcom/samsung/android/srib/virtualtourRenderer/Mesh;->POSITION_RANGE:F

    mul-float/2addr v11, v8

    iget v12, p0, Lcom/samsung/android/srib/virtualtourRenderer/Mesh;->ASPECT_RATIO:F

    div-float/2addr v11, v12

    add-float/2addr v10, v11

    iget-object v11, p0, Lcom/samsung/android/srib/virtualtourRenderer/Mesh;->meshVertexData:[F

    add-int/lit8 v12, v3, 0x1

    aput v9, v11, v3

    iget-object v3, p0, Lcom/samsung/android/srib/virtualtourRenderer/Mesh;->meshVertexData:[F

    add-int/lit8 v9, v12, 0x1

    aput v10, v3, v12

    add-int v3, v2, v4

    const/16 v10, 0x3ff

    if-le v3, v10, :cond_13

    iget-object v3, p0, Lcom/samsung/android/srib/virtualtourRenderer/Mesh;->meshVertexData:[F

    invoke-static {v2, v4}, Ljava/lang/Math;->max(II)I

    move-result v10

    rsub-int v10, v10, 0x3ff

    aget v10, v5, v10

    aput v10, v3, v9

    :goto_14
    iget-object v3, p0, Lcom/samsung/android/srib/virtualtourRenderer/Mesh;->meshVertexData:[F

    add-int/lit8 v10, v9, 0x1

    aput v7, v3, v9

    iget-object v7, p0, Lcom/samsung/android/srib/virtualtourRenderer/Mesh;->meshVertexData:[F

    add-int/lit8 v3, v10, 0x1

    aput v8, v7, v10

    add-int/lit8 v2, v2, 0x1

    goto :goto_13

    :cond_13
    iget-object v3, p0, Lcom/samsung/android/srib/virtualtourRenderer/Mesh;->meshVertexData:[F

    invoke-static {v2, v4}, Ljava/lang/Math;->min(II)I

    move-result v10

    aget v10, v5, v10

    aput v10, v3, v9
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_14

    :catch_0
    move-exception v2

    iget-object v3, p0, Lcom/samsung/android/srib/virtualtourRenderer/Mesh;->TAG:Ljava/lang/String;

    invoke-static {v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    :cond_14
    add-int/lit8 v3, v2, 0x1

    :try_start_1
    iget v4, p0, Lcom/samsung/android/srib/virtualtourRenderer/Mesh;->xLength:I

    mul-int/2addr v4, v5

    int-to-short v4, v4

    int-to-short v4, v4

    aput-short v4, v6, v2

    move v2, v3

    goto/16 :goto_10

    :cond_15
    add-int/lit8 v7, v2, 0x1

    iget v4, p0, Lcom/samsung/android/srib/virtualtourRenderer/Mesh;->xLength:I

    mul-int/2addr v4, v5

    add-int/2addr v4, v3

    int-to-short v4, v4

    int-to-short v4, v4

    aput-short v4, v6, v2

    add-int/lit8 v4, v7, 0x1

    add-int/lit8 v2, v5, 0x1

    iget v8, p0, Lcom/samsung/android/srib/virtualtourRenderer/Mesh;->xLength:I

    mul-int/2addr v2, v8

    add-int/2addr v2, v3

    int-to-short v2, v2

    int-to-short v2, v2

    aput-short v2, v6, v7

    add-int/lit8 v2, v3, 0x1

    move v3, v2

    move v2, v4

    goto/16 :goto_11

    :cond_16
    add-int/lit8 v3, v2, 0x1

    add-int/lit8 v4, v5, 0x1

    iget v7, p0, Lcom/samsung/android/srib/virtualtourRenderer/Mesh;->xLength:I

    mul-int/2addr v4, v7

    iget v7, p0, Lcom/samsung/android/srib/virtualtourRenderer/Mesh;->xLength:I

    add-int/lit8 v7, v7, -0x1

    add-int/2addr v4, v7

    int-to-short v4, v4

    int-to-short v4, v4

    aput-short v4, v6, v2

    move v2, v3

    goto/16 :goto_12

    :cond_17
    const/16 v2, 0x400

    new-array v5, v2, [F

    const/4 v2, 0x0

    :goto_15
    array-length v4, v5

    if-lt v2, v4, :cond_18

    const/4 v2, 0x0

    move v4, v2

    :goto_16
    iget v2, p0, Lcom/samsung/android/srib/virtualtourRenderer/Mesh;->yLength:I

    if-lt v4, v2, :cond_19

    const/4 v3, 0x0

    const/4 v2, 0x0

    move v5, v2

    move v2, v3

    :goto_17
    iget v3, p0, Lcom/samsung/android/srib/virtualtourRenderer/Mesh;->yLength:I

    add-int/lit8 v3, v3, -0x1

    if-ge v5, v3, :cond_0

    if-gtz v5, :cond_1b

    :goto_18
    const/4 v3, 0x0

    :goto_19
    iget v4, p0, Lcom/samsung/android/srib/virtualtourRenderer/Mesh;->xLength:I

    if-lt v3, v4, :cond_1c

    iget v3, p0, Lcom/samsung/android/srib/virtualtourRenderer/Mesh;->yLength:I

    add-int/lit8 v3, v3, -0x2

    if-lt v5, v3, :cond_1d

    :goto_1a
    add-int/lit8 v3, v5, 0x1

    move v5, v3

    goto :goto_17

    :cond_18
    const/high16 v4, 0x41a00000    # 20.0f

    neg-float v4, v4

    const/high16 v7, 0x43c80000    # 400.0f

    float-to-double v8, v7

    int-to-float v7, v2

    const/high16 v10, 0x41200000    # 10.0f

    mul-float/2addr v7, v10

    const/high16 v10, 0x44800000    # 1024.0f

    div-float/2addr v7, v10

    const/high16 v10, -0x3f600000    # -5.0f

    add-float/2addr v7, v10

    float-to-double v10, v7

    const-wide/high16 v12, 0x4000000000000000L    # 2.0

    invoke-static {v10, v11, v12, v13}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v10

    sub-double/2addr v8, v10

    invoke-static {v8, v9}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v8

    double-to-float v7, v8

    add-float/2addr v4, v7

    aput v4, v5, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_15

    :cond_19
    const/4 v2, 0x0

    :goto_1b
    iget v7, p0, Lcom/samsung/android/srib/virtualtourRenderer/Mesh;->xLength:I

    if-lt v2, v7, :cond_1a

    add-int/lit8 v2, v4, 0x1

    move v4, v2

    goto :goto_16

    :cond_1a
    int-to-float v7, v2

    iget v8, p0, Lcom/samsung/android/srib/virtualtourRenderer/Mesh;->xLength:I

    add-int/lit8 v8, v8, -0x1

    int-to-float v8, v8

    div-float/2addr v7, v8

    int-to-float v8, v4

    iget v9, p0, Lcom/samsung/android/srib/virtualtourRenderer/Mesh;->yLength:I

    add-int/lit8 v9, v9, -0x1

    int-to-float v9, v9

    div-float/2addr v8, v9

    const/high16 v9, 0x3f800000    # 1.0f

    sub-float v8, v9, v8

    iget v9, p0, Lcom/samsung/android/srib/virtualtourRenderer/Mesh;->MIN_POSITION:F

    iget v10, p0, Lcom/samsung/android/srib/virtualtourRenderer/Mesh;->POSITION_RANGE:F

    mul-float/2addr v10, v7

    add-float/2addr v9, v10

    iget v10, p0, Lcom/samsung/android/srib/virtualtourRenderer/Mesh;->MIN_POSITION:F

    iget v11, p0, Lcom/samsung/android/srib/virtualtourRenderer/Mesh;->ASPECT_RATIO:F

    div-float/2addr v10, v11

    iget v11, p0, Lcom/samsung/android/srib/virtualtourRenderer/Mesh;->POSITION_RANGE:F

    mul-float/2addr v11, v8

    iget v12, p0, Lcom/samsung/android/srib/virtualtourRenderer/Mesh;->ASPECT_RATIO:F

    div-float/2addr v11, v12

    add-float/2addr v10, v11

    iget-object v11, p0, Lcom/samsung/android/srib/virtualtourRenderer/Mesh;->meshVertexData:[F

    add-int/lit8 v12, v3, 0x1

    aput v9, v11, v3

    iget-object v3, p0, Lcom/samsung/android/srib/virtualtourRenderer/Mesh;->meshVertexData:[F

    add-int/lit8 v9, v12, 0x1

    aput v10, v3, v12

    iget-object v3, p0, Lcom/samsung/android/srib/virtualtourRenderer/Mesh;->meshVertexData:[F

    add-int/lit8 v10, v9, 0x1

    aget v11, v5, v2

    aput v11, v3, v9

    iget-object v3, p0, Lcom/samsung/android/srib/virtualtourRenderer/Mesh;->meshVertexData:[F

    add-int/lit8 v9, v10, 0x1

    aput v7, v3, v10

    iget-object v7, p0, Lcom/samsung/android/srib/virtualtourRenderer/Mesh;->meshVertexData:[F

    add-int/lit8 v3, v9, 0x1

    aput v8, v7, v9

    add-int/lit8 v2, v2, 0x1

    goto :goto_1b

    :cond_1b
    add-int/lit8 v3, v2, 0x1

    iget v4, p0, Lcom/samsung/android/srib/virtualtourRenderer/Mesh;->xLength:I

    mul-int/2addr v4, v5

    int-to-short v4, v4

    int-to-short v4, v4

    aput-short v4, v6, v2

    move v2, v3

    goto/16 :goto_18

    :cond_1c
    add-int/lit8 v7, v2, 0x1

    iget v4, p0, Lcom/samsung/android/srib/virtualtourRenderer/Mesh;->xLength:I

    mul-int/2addr v4, v5

    add-int/2addr v4, v3

    int-to-short v4, v4

    int-to-short v4, v4

    aput-short v4, v6, v2

    add-int/lit8 v4, v7, 0x1

    add-int/lit8 v2, v5, 0x1

    iget v8, p0, Lcom/samsung/android/srib/virtualtourRenderer/Mesh;->xLength:I

    mul-int/2addr v2, v8

    add-int/2addr v2, v3

    int-to-short v2, v2

    int-to-short v2, v2

    aput-short v2, v6, v7

    add-int/lit8 v2, v3, 0x1

    move v3, v2

    move v2, v4

    goto/16 :goto_19

    :cond_1d
    add-int/lit8 v3, v2, 0x1

    add-int/lit8 v4, v5, 0x1

    iget v7, p0, Lcom/samsung/android/srib/virtualtourRenderer/Mesh;->xLength:I

    mul-int/2addr v4, v7

    iget v7, p0, Lcom/samsung/android/srib/virtualtourRenderer/Mesh;->xLength:I

    add-int/lit8 v7, v7, -0x1

    add-int/2addr v4, v7

    int-to-short v4, v4

    int-to-short v4, v4

    aput-short v4, v6, v2

    move v2, v3

    goto/16 :goto_1a

    :cond_1e
    iget-object v4, p0, Lcom/samsung/android/srib/virtualtourRenderer/Mesh;->ibo:[I

    const/4 v5, 0x0

    aget v4, v4, v5

    if-lez v4, :cond_1

    const v4, 0x8892

    iget-object v5, p0, Lcom/samsung/android/srib/virtualtourRenderer/Mesh;->vbo:[I

    const/4 v6, 0x0

    aget v5, v5, v6

    invoke-static {v4, v5}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    const v4, 0x8892

    invoke-virtual {v2}, Ljava/nio/Buffer;->capacity()I

    move-result v5

    mul-int/lit8 v5, v5, 0x4

    const v6, 0x88e4

    invoke-static {v4, v5, v2, v6}, Landroid/opengl/GLES20;->glBufferData(IILjava/nio/Buffer;I)V

    const v2, 0x8893

    iget-object v4, p0, Lcom/samsung/android/srib/virtualtourRenderer/Mesh;->ibo:[I

    const/4 v5, 0x0

    aget v4, v4, v5

    invoke-static {v2, v4}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    const v2, 0x8893

    invoke-virtual {v3}, Ljava/nio/Buffer;->capacity()I

    move-result v4

    mul-int/lit8 v4, v4, 0x2

    const v5, 0x88e4

    invoke-static {v2, v4, v3, v5}, Landroid/opengl/GLES20;->glBufferData(IILjava/nio/Buffer;I)V

    const v2, 0x8892

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    const v2, 0x8893

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/opengl/GLES20;->glBindBuffer(II)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.method constructor <init>(FLcom/samsung/android/srib/virtualtourRenderer/Mesh$MeshType;II[BFFI)V
    .locals 12

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/samsung/android/srib/virtualtourRenderer/Mesh;->mWireFrameMode:Z

    const-string/jumbo v1, "Mesh"

    iput-object v1, p0, Lcom/samsung/android/srib/virtualtourRenderer/Mesh;->TAG:Ljava/lang/String;

    const/16 v1, 0x400

    iput v1, p0, Lcom/samsung/android/srib/virtualtourRenderer/Mesh;->SIZE_PER_SIDE_X:I

    const/4 v1, 0x2

    iput v1, p0, Lcom/samsung/android/srib/virtualtourRenderer/Mesh;->SIZE_PER_SIDE_Y:I

    const/16 v1, 0x100

    iput v1, p0, Lcom/samsung/android/srib/virtualtourRenderer/Mesh;->SIZE_PER_SIDE:I

    const/4 v1, 0x5

    iput v1, p0, Lcom/samsung/android/srib/virtualtourRenderer/Mesh;->floatsPerVertex:I

    const/4 v1, 0x1

    new-array v1, v1, [I

    iput-object v1, p0, Lcom/samsung/android/srib/virtualtourRenderer/Mesh;->vbo:[I

    const/4 v1, 0x1

    new-array v1, v1, [I

    iput-object v1, p0, Lcom/samsung/android/srib/virtualtourRenderer/Mesh;->ibo:[I

    int-to-float v1, p3

    move/from16 v0, p4

    int-to-float v2, v0

    div-float/2addr v1, v2

    iput v1, p0, Lcom/samsung/android/srib/virtualtourRenderer/Mesh;->ASPECT_RATIO:F

    neg-float v1, p1

    iput v1, p0, Lcom/samsung/android/srib/virtualtourRenderer/Mesh;->MIN_POSITION:F

    const/high16 v1, 0x40000000    # 2.0f

    mul-float/2addr v1, p1

    iput v1, p0, Lcom/samsung/android/srib/virtualtourRenderer/Mesh;->POSITION_RANGE:F

    const/16 v1, 0x100

    iput v1, p0, Lcom/samsung/android/srib/virtualtourRenderer/Mesh;->xLength:I

    const/16 v1, 0x100

    iput v1, p0, Lcom/samsung/android/srib/virtualtourRenderer/Mesh;->yLength:I

    iget v1, p0, Lcom/samsung/android/srib/virtualtourRenderer/Mesh;->xLength:I

    iget v2, p0, Lcom/samsung/android/srib/virtualtourRenderer/Mesh;->yLength:I

    mul-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x5

    new-array v1, v1, [F

    iput-object v1, p0, Lcom/samsung/android/srib/virtualtourRenderer/Mesh;->meshVertexData:[F

    :try_start_0
    iget v1, p0, Lcom/samsung/android/srib/virtualtourRenderer/Mesh;->yLength:I

    add-int/lit8 v1, v1, -0x1

    add-int/lit8 v2, v1, -0x1

    mul-int/lit8 v2, v2, 0x2

    iget v3, p0, Lcom/samsung/android/srib/virtualtourRenderer/Mesh;->xLength:I

    mul-int/lit8 v3, v3, 0x2

    mul-int/2addr v1, v3

    add-int/2addr v1, v2

    new-array v5, v1, [S

    const/4 v2, 0x0

    sget-object v1, Lcom/samsung/android/srib/virtualtourRenderer/Mesh$MeshType;->DEPTHMAP:Lcom/samsung/android/srib/virtualtourRenderer/Mesh$MeshType;

    if-eq p2, v1, :cond_2

    :cond_0
    array-length v1, v5

    iput v1, p0, Lcom/samsung/android/srib/virtualtourRenderer/Mesh;->indexCount:I

    iget-object v1, p0, Lcom/samsung/android/srib/virtualtourRenderer/Mesh;->meshVertexData:[F

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x4

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/srib/virtualtourRenderer/Mesh;->meshVertexData:[F

    invoke-virtual {v1, v2}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/nio/Buffer;->position(I)Ljava/nio/Buffer;

    array-length v2, v5

    mul-int/lit8 v2, v2, 0x2

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->asShortBuffer()Ljava/nio/ShortBuffer;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/nio/ShortBuffer;->put([S)Ljava/nio/ShortBuffer;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/nio/Buffer;->position(I)Ljava/nio/Buffer;

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/samsung/android/srib/virtualtourRenderer/Mesh;->vbo:[I

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/opengl/GLES20;->glGenBuffers(I[II)V

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/samsung/android/srib/virtualtourRenderer/Mesh;->ibo:[I

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/opengl/GLES20;->glGenBuffers(I[II)V

    iget-object v3, p0, Lcom/samsung/android/srib/virtualtourRenderer/Mesh;->vbo:[I

    const/4 v4, 0x0

    aget v3, v3, v4

    if-gtz v3, :cond_f

    :cond_1
    iget-object v1, p0, Lcom/samsung/android/srib/virtualtourRenderer/Mesh;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "BUFFER_CREATION_ERROR: glGenBuffers"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_2
    const/4 v1, 0x3

    move/from16 v0, p8

    if-eq v0, v1, :cond_4

    const/4 v1, 0x6

    move/from16 v0, p8

    if-eq v0, v1, :cond_6

    const/16 v1, 0x8

    move/from16 v0, p8

    if-eq v0, v1, :cond_8

    const/4 v1, 0x0

    move v3, v1

    :goto_1
    iget v1, p0, Lcom/samsung/android/srib/virtualtourRenderer/Mesh;->yLength:I

    if-lt v3, v1, :cond_a

    :cond_3
    const/4 v2, 0x0

    const/4 v1, 0x0

    move v4, v1

    move v1, v2

    :goto_2
    iget v2, p0, Lcom/samsung/android/srib/virtualtourRenderer/Mesh;->yLength:I

    add-int/lit8 v2, v2, -0x1

    if-ge v4, v2, :cond_0

    if-gtz v4, :cond_c

    :goto_3
    const/4 v2, 0x0

    :goto_4
    iget v3, p0, Lcom/samsung/android/srib/virtualtourRenderer/Mesh;->xLength:I

    if-lt v2, v3, :cond_d

    iget v2, p0, Lcom/samsung/android/srib/virtualtourRenderer/Mesh;->yLength:I

    add-int/lit8 v2, v2, -0x2

    if-lt v4, v2, :cond_e

    :goto_5
    add-int/lit8 v2, v4, 0x1

    move v4, v2

    goto :goto_2

    :cond_4
    const/4 v1, 0x0

    move v3, v1

    :goto_6
    iget v1, p0, Lcom/samsung/android/srib/virtualtourRenderer/Mesh;->yLength:I

    if-ge v3, v1, :cond_3

    int-to-float v1, v3

    iget v4, p0, Lcom/samsung/android/srib/virtualtourRenderer/Mesh;->yLength:I

    add-int/lit8 v4, v4, -0x1

    int-to-float v4, v4

    div-float/2addr v1, v4

    const/high16 v4, 0x3f800000    # 1.0f

    sub-float v1, v4, v1

    iget v4, p0, Lcom/samsung/android/srib/virtualtourRenderer/Mesh;->MIN_POSITION:F

    iget v6, p0, Lcom/samsung/android/srib/virtualtourRenderer/Mesh;->ASPECT_RATIO:F

    div-float/2addr v4, v6

    iget v6, p0, Lcom/samsung/android/srib/virtualtourRenderer/Mesh;->POSITION_RANGE:F

    mul-float/2addr v1, v6

    iget v6, p0, Lcom/samsung/android/srib/virtualtourRenderer/Mesh;->ASPECT_RATIO:F

    div-float/2addr v1, v6

    add-float/2addr v4, v1

    const/4 v1, 0x0

    :goto_7
    iget v6, p0, Lcom/samsung/android/srib/virtualtourRenderer/Mesh;->xLength:I

    if-lt v1, v6, :cond_5

    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto :goto_6

    :cond_5
    int-to-float v6, v1

    iget v7, p0, Lcom/samsung/android/srib/virtualtourRenderer/Mesh;->xLength:I

    add-int/lit8 v7, v7, -0x1

    int-to-float v7, v7

    div-float/2addr v6, v7

    iget v7, p0, Lcom/samsung/android/srib/virtualtourRenderer/Mesh;->MIN_POSITION:F

    iget v8, p0, Lcom/samsung/android/srib/virtualtourRenderer/Mesh;->POSITION_RANGE:F

    mul-float/2addr v6, v8

    add-float/2addr v6, v7

    iget-object v7, p0, Lcom/samsung/android/srib/virtualtourRenderer/Mesh;->meshVertexData:[F

    add-int/lit8 v8, v2, 0x1

    aput v6, v7, v2

    iget-object v2, p0, Lcom/samsung/android/srib/virtualtourRenderer/Mesh;->meshVertexData:[F

    add-int/lit8 v6, v8, 0x1

    aput v4, v2, v8

    int-to-float v2, v1

    iget v7, p0, Lcom/samsung/android/srib/virtualtourRenderer/Mesh;->xLength:I

    add-int/lit8 v7, v7, -0x1

    int-to-float v7, v7

    div-float/2addr v2, v7

    const/high16 v7, 0x3f800000    # 1.0f

    sub-float v2, v7, v2

    int-to-float v7, v3

    iget v8, p0, Lcom/samsung/android/srib/virtualtourRenderer/Mesh;->yLength:I

    add-int/lit8 v8, v8, -0x1

    int-to-float v8, v8

    div-float/2addr v7, v8

    add-int/lit8 v8, p3, -0x1

    int-to-float v8, v8

    mul-float/2addr v8, v2

    float-to-int v8, v8

    add-int/lit8 v9, p4, -0x1

    int-to-float v9, v9

    mul-float/2addr v9, v7

    float-to-int v9, v9

    mul-int/2addr v9, p3

    add-int/2addr v8, v9

    aget-byte v8, p5, v8

    and-int/lit16 v8, v8, 0xff

    int-to-float v8, v8

    const/high16 v9, 0x437f0000    # 255.0f

    div-float/2addr v8, v9

    iget-object v9, p0, Lcom/samsung/android/srib/virtualtourRenderer/Mesh;->meshVertexData:[F

    add-int/lit8 v10, v6, 0x1

    neg-float v8, v8

    const/high16 v11, 0x40400000    # 3.0f

    mul-float/2addr v8, v11

    aput v8, v9, v6

    iget-object v6, p0, Lcom/samsung/android/srib/virtualtourRenderer/Mesh;->meshVertexData:[F

    add-int/lit8 v8, v10, 0x1

    aput v2, v6, v10

    iget-object v6, p0, Lcom/samsung/android/srib/virtualtourRenderer/Mesh;->meshVertexData:[F

    add-int/lit8 v2, v8, 0x1

    aput v7, v6, v8

    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_6
    const/4 v1, 0x0

    move v3, v1

    :goto_8
    iget v1, p0, Lcom/samsung/android/srib/virtualtourRenderer/Mesh;->yLength:I

    if-ge v3, v1, :cond_3

    int-to-float v1, v3

    iget v4, p0, Lcom/samsung/android/srib/virtualtourRenderer/Mesh;->yLength:I

    add-int/lit8 v4, v4, -0x1

    int-to-float v4, v4

    div-float/2addr v1, v4

    const/high16 v4, 0x3f800000    # 1.0f

    sub-float v1, v4, v1

    iget v4, p0, Lcom/samsung/android/srib/virtualtourRenderer/Mesh;->MIN_POSITION:F

    iget v6, p0, Lcom/samsung/android/srib/virtualtourRenderer/Mesh;->ASPECT_RATIO:F

    div-float/2addr v4, v6

    iget v6, p0, Lcom/samsung/android/srib/virtualtourRenderer/Mesh;->POSITION_RANGE:F

    mul-float/2addr v1, v6

    iget v6, p0, Lcom/samsung/android/srib/virtualtourRenderer/Mesh;->ASPECT_RATIO:F

    div-float/2addr v1, v6

    add-float/2addr v4, v1

    const/4 v1, 0x0

    :goto_9
    iget v6, p0, Lcom/samsung/android/srib/virtualtourRenderer/Mesh;->xLength:I

    if-lt v1, v6, :cond_7

    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto :goto_8

    :cond_7
    int-to-float v6, v1

    iget v7, p0, Lcom/samsung/android/srib/virtualtourRenderer/Mesh;->xLength:I

    add-int/lit8 v7, v7, -0x1

    int-to-float v7, v7

    div-float/2addr v6, v7

    iget v7, p0, Lcom/samsung/android/srib/virtualtourRenderer/Mesh;->MIN_POSITION:F

    iget v8, p0, Lcom/samsung/android/srib/virtualtourRenderer/Mesh;->POSITION_RANGE:F

    mul-float/2addr v6, v8

    add-float/2addr v6, v7

    iget-object v7, p0, Lcom/samsung/android/srib/virtualtourRenderer/Mesh;->meshVertexData:[F

    add-int/lit8 v8, v2, 0x1

    aput v6, v7, v2

    iget-object v2, p0, Lcom/samsung/android/srib/virtualtourRenderer/Mesh;->meshVertexData:[F

    add-int/lit8 v6, v8, 0x1

    aput v4, v2, v8

    int-to-float v2, v3

    iget v7, p0, Lcom/samsung/android/srib/virtualtourRenderer/Mesh;->yLength:I

    add-int/lit8 v7, v7, -0x1

    int-to-float v7, v7

    div-float/2addr v2, v7

    const/high16 v7, 0x3f800000    # 1.0f

    sub-float v2, v7, v2

    int-to-float v7, v1

    iget v8, p0, Lcom/samsung/android/srib/virtualtourRenderer/Mesh;->xLength:I

    add-int/lit8 v8, v8, -0x1

    int-to-float v8, v8

    div-float/2addr v7, v8

    const/high16 v8, 0x3f800000    # 1.0f

    sub-float v7, v8, v7

    add-int/lit8 v8, p3, -0x1

    int-to-float v8, v8

    mul-float/2addr v8, v2

    float-to-int v8, v8

    add-int/lit8 v9, p4, -0x1

    int-to-float v9, v9

    mul-float/2addr v9, v7

    float-to-int v9, v9

    mul-int/2addr v9, p3

    add-int/2addr v8, v9

    aget-byte v8, p5, v8

    and-int/lit16 v8, v8, 0xff

    int-to-float v8, v8

    const/high16 v9, 0x437f0000    # 255.0f

    div-float/2addr v8, v9

    iget-object v9, p0, Lcom/samsung/android/srib/virtualtourRenderer/Mesh;->meshVertexData:[F

    add-int/lit8 v10, v6, 0x1

    neg-float v8, v8

    const/high16 v11, 0x40400000    # 3.0f

    mul-float/2addr v8, v11

    aput v8, v9, v6

    iget-object v6, p0, Lcom/samsung/android/srib/virtualtourRenderer/Mesh;->meshVertexData:[F

    add-int/lit8 v8, v10, 0x1

    aput v2, v6, v10

    iget-object v6, p0, Lcom/samsung/android/srib/virtualtourRenderer/Mesh;->meshVertexData:[F

    add-int/lit8 v2, v8, 0x1

    aput v7, v6, v8

    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    :cond_8
    const/4 v1, 0x0

    move v3, v1

    :goto_a
    iget v1, p0, Lcom/samsung/android/srib/virtualtourRenderer/Mesh;->yLength:I

    if-ge v3, v1, :cond_3

    int-to-float v1, v3

    iget v4, p0, Lcom/samsung/android/srib/virtualtourRenderer/Mesh;->yLength:I

    add-int/lit8 v4, v4, -0x1

    int-to-float v4, v4

    div-float/2addr v1, v4

    const/high16 v4, 0x3f800000    # 1.0f

    sub-float v1, v4, v1

    iget v4, p0, Lcom/samsung/android/srib/virtualtourRenderer/Mesh;->MIN_POSITION:F

    iget v6, p0, Lcom/samsung/android/srib/virtualtourRenderer/Mesh;->ASPECT_RATIO:F

    div-float/2addr v4, v6

    iget v6, p0, Lcom/samsung/android/srib/virtualtourRenderer/Mesh;->POSITION_RANGE:F

    mul-float/2addr v1, v6

    iget v6, p0, Lcom/samsung/android/srib/virtualtourRenderer/Mesh;->ASPECT_RATIO:F

    div-float/2addr v1, v6

    add-float/2addr v4, v1

    const/4 v1, 0x0

    :goto_b
    iget v6, p0, Lcom/samsung/android/srib/virtualtourRenderer/Mesh;->xLength:I

    if-lt v1, v6, :cond_9

    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto :goto_a

    :cond_9
    int-to-float v6, v1

    iget v7, p0, Lcom/samsung/android/srib/virtualtourRenderer/Mesh;->xLength:I

    add-int/lit8 v7, v7, -0x1

    int-to-float v7, v7

    div-float/2addr v6, v7

    iget v7, p0, Lcom/samsung/android/srib/virtualtourRenderer/Mesh;->MIN_POSITION:F

    iget v8, p0, Lcom/samsung/android/srib/virtualtourRenderer/Mesh;->POSITION_RANGE:F

    mul-float/2addr v6, v8

    add-float/2addr v6, v7

    iget-object v7, p0, Lcom/samsung/android/srib/virtualtourRenderer/Mesh;->meshVertexData:[F

    add-int/lit8 v8, v2, 0x1

    aput v6, v7, v2

    iget-object v2, p0, Lcom/samsung/android/srib/virtualtourRenderer/Mesh;->meshVertexData:[F

    add-int/lit8 v6, v8, 0x1

    aput v4, v2, v8

    int-to-float v2, v3

    iget v7, p0, Lcom/samsung/android/srib/virtualtourRenderer/Mesh;->yLength:I

    add-int/lit8 v7, v7, -0x1

    int-to-float v7, v7

    div-float/2addr v2, v7

    int-to-float v7, v1

    iget v8, p0, Lcom/samsung/android/srib/virtualtourRenderer/Mesh;->xLength:I

    add-int/lit8 v8, v8, -0x1

    int-to-float v8, v8

    div-float/2addr v7, v8

    add-int/lit8 v8, p3, -0x1

    int-to-float v8, v8

    mul-float/2addr v8, v2

    float-to-int v8, v8

    add-int/lit8 v9, p4, -0x1

    int-to-float v9, v9

    mul-float/2addr v9, v7

    float-to-int v9, v9

    mul-int/2addr v9, p3

    add-int/2addr v8, v9

    aget-byte v8, p5, v8

    and-int/lit16 v8, v8, 0xff

    int-to-float v8, v8

    const/high16 v9, 0x437f0000    # 255.0f

    div-float/2addr v8, v9

    iget-object v9, p0, Lcom/samsung/android/srib/virtualtourRenderer/Mesh;->meshVertexData:[F

    add-int/lit8 v10, v6, 0x1

    neg-float v8, v8

    const/high16 v11, 0x40400000    # 3.0f

    mul-float/2addr v8, v11

    aput v8, v9, v6

    iget-object v6, p0, Lcom/samsung/android/srib/virtualtourRenderer/Mesh;->meshVertexData:[F

    add-int/lit8 v8, v10, 0x1

    aput v2, v6, v10

    iget-object v6, p0, Lcom/samsung/android/srib/virtualtourRenderer/Mesh;->meshVertexData:[F

    add-int/lit8 v2, v8, 0x1

    aput v7, v6, v8

    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    :cond_a
    int-to-float v1, v3

    iget v4, p0, Lcom/samsung/android/srib/virtualtourRenderer/Mesh;->yLength:I

    add-int/lit8 v4, v4, -0x1

    int-to-float v4, v4

    div-float/2addr v1, v4

    const/high16 v4, 0x3f800000    # 1.0f

    sub-float/2addr v4, v1

    iget v1, p0, Lcom/samsung/android/srib/virtualtourRenderer/Mesh;->MIN_POSITION:F

    iget v6, p0, Lcom/samsung/android/srib/virtualtourRenderer/Mesh;->ASPECT_RATIO:F

    div-float/2addr v1, v6

    iget v6, p0, Lcom/samsung/android/srib/virtualtourRenderer/Mesh;->POSITION_RANGE:F

    mul-float/2addr v6, v4

    iget v7, p0, Lcom/samsung/android/srib/virtualtourRenderer/Mesh;->ASPECT_RATIO:F

    div-float/2addr v6, v7

    add-float/2addr v6, v1

    const/4 v1, 0x0

    :goto_c
    iget v7, p0, Lcom/samsung/android/srib/virtualtourRenderer/Mesh;->xLength:I

    if-lt v1, v7, :cond_b

    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto/16 :goto_1

    :cond_b
    int-to-float v7, v1

    iget v8, p0, Lcom/samsung/android/srib/virtualtourRenderer/Mesh;->xLength:I

    add-int/lit8 v8, v8, -0x1

    int-to-float v8, v8

    div-float/2addr v7, v8

    iget v8, p0, Lcom/samsung/android/srib/virtualtourRenderer/Mesh;->MIN_POSITION:F

    iget v9, p0, Lcom/samsung/android/srib/virtualtourRenderer/Mesh;->POSITION_RANGE:F

    mul-float/2addr v9, v7

    add-float/2addr v8, v9

    iget-object v9, p0, Lcom/samsung/android/srib/virtualtourRenderer/Mesh;->meshVertexData:[F

    add-int/lit8 v10, v2, 0x1

    aput v8, v9, v2

    iget-object v2, p0, Lcom/samsung/android/srib/virtualtourRenderer/Mesh;->meshVertexData:[F

    add-int/lit8 v8, v10, 0x1

    aput v6, v2, v10

    add-int/lit8 v2, p3, -0x1

    int-to-float v2, v2

    mul-float/2addr v2, v7

    float-to-int v2, v2

    add-int/lit8 v9, p4, -0x1

    int-to-float v9, v9

    mul-float/2addr v9, v4

    float-to-int v9, v9

    mul-int/2addr v9, p3

    add-int/2addr v2, v9

    aget-byte v2, p5, v2

    and-int/lit16 v2, v2, 0xff

    int-to-float v2, v2

    const/high16 v9, 0x437f0000    # 255.0f

    div-float/2addr v2, v9

    iget-object v9, p0, Lcom/samsung/android/srib/virtualtourRenderer/Mesh;->meshVertexData:[F

    add-int/lit8 v10, v8, 0x1

    neg-float v2, v2

    const/high16 v11, 0x40400000    # 3.0f

    mul-float/2addr v2, v11

    aput v2, v9, v8

    iget-object v2, p0, Lcom/samsung/android/srib/virtualtourRenderer/Mesh;->meshVertexData:[F

    add-int/lit8 v8, v10, 0x1

    aput v7, v2, v10

    iget-object v7, p0, Lcom/samsung/android/srib/virtualtourRenderer/Mesh;->meshVertexData:[F

    add-int/lit8 v2, v8, 0x1

    aput v4, v7, v8

    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    :cond_c
    add-int/lit8 v2, v1, 0x1

    iget v3, p0, Lcom/samsung/android/srib/virtualtourRenderer/Mesh;->yLength:I

    mul-int/2addr v3, v4

    int-to-short v3, v3

    int-to-short v3, v3

    aput-short v3, v5, v1

    move v1, v2

    goto/16 :goto_3

    :cond_d
    add-int/lit8 v6, v1, 0x1

    iget v3, p0, Lcom/samsung/android/srib/virtualtourRenderer/Mesh;->yLength:I

    mul-int/2addr v3, v4

    add-int/2addr v3, v2

    int-to-short v3, v3

    int-to-short v3, v3

    aput-short v3, v5, v1

    add-int/lit8 v3, v6, 0x1

    add-int/lit8 v1, v4, 0x1

    iget v7, p0, Lcom/samsung/android/srib/virtualtourRenderer/Mesh;->yLength:I

    mul-int/2addr v1, v7

    add-int/2addr v1, v2

    int-to-short v1, v1

    int-to-short v1, v1

    aput-short v1, v5, v6

    add-int/lit8 v1, v2, 0x1

    move v2, v1

    move v1, v3

    goto/16 :goto_4

    :cond_e
    add-int/lit8 v2, v1, 0x1

    add-int/lit8 v3, v4, 0x1

    iget v6, p0, Lcom/samsung/android/srib/virtualtourRenderer/Mesh;->yLength:I

    mul-int/2addr v3, v6

    iget v6, p0, Lcom/samsung/android/srib/virtualtourRenderer/Mesh;->xLength:I

    add-int/lit8 v6, v6, -0x1

    add-int/2addr v3, v6

    int-to-short v3, v3

    int-to-short v3, v3

    aput-short v3, v5, v1

    move v1, v2

    goto/16 :goto_5

    :cond_f
    iget-object v3, p0, Lcom/samsung/android/srib/virtualtourRenderer/Mesh;->ibo:[I

    const/4 v4, 0x0

    aget v3, v3, v4

    if-lez v3, :cond_1

    const v3, 0x8892

    iget-object v4, p0, Lcom/samsung/android/srib/virtualtourRenderer/Mesh;->vbo:[I

    const/4 v5, 0x0

    aget v4, v4, v5

    invoke-static {v3, v4}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    const v3, 0x8892

    invoke-virtual {v1}, Ljava/nio/Buffer;->capacity()I

    move-result v4

    mul-int/lit8 v4, v4, 0x4

    const v5, 0x88e4

    invoke-static {v3, v4, v1, v5}, Landroid/opengl/GLES20;->glBufferData(IILjava/nio/Buffer;I)V

    const v1, 0x8893

    iget-object v3, p0, Lcom/samsung/android/srib/virtualtourRenderer/Mesh;->ibo:[I

    const/4 v4, 0x0

    aget v3, v3, v4

    invoke-static {v1, v3}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    const v1, 0x8893

    invoke-virtual {v2}, Ljava/nio/Buffer;->capacity()I

    move-result v3

    mul-int/lit8 v3, v3, 0x2

    const v4, 0x88e4

    invoke-static {v1, v3, v2, v4}, Landroid/opengl/GLES20;->glBufferData(IILjava/nio/Buffer;I)V

    const v1, 0x8892

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    const v1, 0x8893

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/opengl/GLES20;->glBindBuffer(II)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v1

    iget-object v2, p0, Lcom/samsung/android/srib/virtualtourRenderer/Mesh;->TAG:Ljava/lang/String;

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0
.end method

.method static createMesh(FLcom/samsung/android/srib/virtualtourRenderer/Mesh$MeshType;III)Lcom/samsung/android/srib/virtualtourRenderer/Mesh;
    .locals 6

    sget-object v0, Lcom/samsung/android/srib/virtualtourRenderer/Mesh;->flatMesh:Lcom/samsung/android/srib/virtualtourRenderer/Mesh;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/samsung/android/srib/virtualtourRenderer/Mesh;->flatMesh:Lcom/samsung/android/srib/virtualtourRenderer/Mesh;

    return-object v0

    :cond_0
    new-instance v0, Lcom/samsung/android/srib/virtualtourRenderer/Mesh;

    move v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/srib/virtualtourRenderer/Mesh;-><init>(FLcom/samsung/android/srib/virtualtourRenderer/Mesh$MeshType;III)V

    sput-object v0, Lcom/samsung/android/srib/virtualtourRenderer/Mesh;->flatMesh:Lcom/samsung/android/srib/virtualtourRenderer/Mesh;

    sget-object v0, Lcom/samsung/android/srib/virtualtourRenderer/Mesh;->flatMesh:Lcom/samsung/android/srib/virtualtourRenderer/Mesh;

    return-object v0
.end method


# virtual methods
.method release()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/samsung/android/srib/virtualtourRenderer/Mesh;->vbo:[I

    aget v0, v0, v2

    if-gtz v0, :cond_0

    :goto_0
    iget-object v0, p0, Lcom/samsung/android/srib/virtualtourRenderer/Mesh;->ibo:[I

    aget v0, v0, v2

    if-gtz v0, :cond_1

    :goto_1
    const/4 v0, 0x0

    sput-object v0, Lcom/samsung/android/srib/virtualtourRenderer/Mesh;->flatMesh:Lcom/samsung/android/srib/virtualtourRenderer/Mesh;

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/srib/virtualtourRenderer/Mesh;->vbo:[I

    array-length v0, v0

    iget-object v1, p0, Lcom/samsung/android/srib/virtualtourRenderer/Mesh;->vbo:[I

    invoke-static {v0, v1, v2}, Landroid/opengl/GLES20;->glDeleteBuffers(I[II)V

    iget-object v0, p0, Lcom/samsung/android/srib/virtualtourRenderer/Mesh;->vbo:[I

    aput v2, v0, v2

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/srib/virtualtourRenderer/Mesh;->ibo:[I

    array-length v0, v0

    iget-object v1, p0, Lcom/samsung/android/srib/virtualtourRenderer/Mesh;->ibo:[I

    invoke-static {v0, v1, v2}, Landroid/opengl/GLES20;->glDeleteBuffers(I[II)V

    iget-object v0, p0, Lcom/samsung/android/srib/virtualtourRenderer/Mesh;->ibo:[I

    aput v2, v0, v2

    goto :goto_1
.end method

.method render(I)V
    .locals 8

    const v7, 0x8893

    const v6, 0x8892

    const/16 v2, 0x1406

    const/16 v4, 0x14

    const/4 v3, 0x0

    const v0, 0x84c0

    invoke-static {v0}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    const/16 v0, 0xde1

    invoke-static {v0, p1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    iget-object v0, p0, Lcom/samsung/android/srib/virtualtourRenderer/Mesh;->vbo:[I

    aget v0, v0, v3

    if-gtz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/srib/virtualtourRenderer/Mesh;->ibo:[I

    aget v0, v0, v3

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/srib/virtualtourRenderer/Mesh;->vbo:[I

    aget v0, v0, v3

    invoke-static {v6, v0}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    iget v0, p0, Lcom/samsung/android/srib/virtualtourRenderer/Mesh;->maPositionHandle:I

    const/4 v1, 0x3

    move v5, v3

    invoke-static/range {v0 .. v5}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZII)V

    iget v0, p0, Lcom/samsung/android/srib/virtualtourRenderer/Mesh;->maPositionHandle:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    iget v0, p0, Lcom/samsung/android/srib/virtualtourRenderer/Mesh;->maTextureHandle:I

    const/4 v1, 0x2

    const/16 v5, 0xc

    invoke-static/range {v0 .. v5}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZII)V

    iget v0, p0, Lcom/samsung/android/srib/virtualtourRenderer/Mesh;->maTextureHandle:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    iget-object v0, p0, Lcom/samsung/android/srib/virtualtourRenderer/Mesh;->ibo:[I

    aget v0, v0, v3

    invoke-static {v7, v0}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    const/4 v0, 0x5

    iget v1, p0, Lcom/samsung/android/srib/virtualtourRenderer/Mesh;->indexCount:I

    const/16 v2, 0x1403

    invoke-static {v0, v1, v2, v3}, Landroid/opengl/GLES20;->glDrawElements(IIII)V

    invoke-static {v6, v3}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    invoke-static {v7, v3}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    goto :goto_0
.end method

.method setPositionHandle(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/srib/virtualtourRenderer/Mesh;->maPositionHandle:I

    return-void
.end method

.method setTextureHandle(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/srib/virtualtourRenderer/Mesh;->maTextureHandle:I

    return-void
.end method
