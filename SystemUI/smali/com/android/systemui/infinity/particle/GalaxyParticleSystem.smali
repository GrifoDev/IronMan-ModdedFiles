.class public Lcom/android/systemui/infinity/particle/GalaxyParticleSystem;
.super Ljava/lang/Object;
.source "GalaxyParticleSystem.java"

# interfaces
.implements Lcom/android/systemui/infinity/GalaxyRenderLifeCycleListener;


# static fields
.field private static final ALPHA_COMPONENT_COUNT:I = 0x1

.field protected static final A_LAYER_INDEX:Ljava/lang/String; = "a_LayerIndex"

.field protected static final A_PLUS_ALPHA:Ljava/lang/String; = "a_PlusAlpha"

.field protected static final A_POINT_ALPHA:Ljava/lang/String; = "a_PointAlpha"

.field protected static final A_POINT_SIZE:Ljava/lang/String; = "a_PointSize"

.field protected static final A_POSITION:Ljava/lang/String; = "a_Position"

.field private static final LAYER_INDEX_COMPONENT_COUNT:I = 0x1

.field private static final PLUS_ALPHA_COMPONENT_COUNT:I = 0x1

.field private static final POSITION_COMPONENT_COUNT:I = 0x3

.field private static final SIZE_COMPONENT_COUNT:I = 0x1

.field private static final STRIDE:I = 0x1c

.field private static final TOTAL_COMPONENT_COUNT:I = 0x7

.field protected static final U_ALPHA:Ljava/lang/String; = "u_Alpha"

.field protected static final U_GRADIENT_PROPERTY:Ljava/lang/String; = "u_GradientProperty"

.field protected static final U_MATRIX:Ljava/lang/String; = "u_Matrix"

.field protected static final U_MAX:Ljava/lang/String; = "u_Max"

.field protected static final U_MOVE:Ljava/lang/String; = "u_Move"

.field protected static final U_PLUS_ALPHA:Ljava/lang/String; = "u_PlusAlpha"

.field protected static final U_STATUS_BAR_ALPHA:Ljava/lang/String; = "u_StatusBarAlpha"


# instance fields
.field private DEFAULT_WIDTH:F

.field TOTAL_PARTICLE_COUNT:I

.field private aLayerIndexLocation:I

.field private aPlusAlphaLocation:I

.field private aPointAlphaLocation:I

.field private aPointSizeLocation:I

.field private aPositionLocation:I

.field animXValue:F

.field animZValue:F

.field autoResetAnimator:Lcom/altamirasoft/glanimationutil/GLValueAnimator;

.field context:Landroid/content/Context;

.field public currentAutoResetRotateValue:F

.field public currentDeviceUnlockRotateValue:F

.field public currentFlickValue:F

.field public currentGyroValue:F

.field public currentOffRotateValue:F

.field public currentOnRotateValue:F

.field public currentParticleAlphaValue:F

.field public currentParticlePlusAlphaValue:F

.field public currentPlusValue:F

.field deviceUnlockAnimator:Lcom/altamirasoft/glanimationutil/GLValueAnimator;

.field easingHelper:Lcom/altamirasoft/glanimationutil/GLEasingHelper;

.field fadeInDistance:F

.field flickRotationAnimator:Lcom/altamirasoft/glanimationutil/GLValueAnimator;

.field height:I

.field isNeedFadeStatus:F

.field public isRight:Z

.field public mScale:F

.field maxParticleCount:I

.field maxRotateDegree:F

.field maxX:F

.field maxY:F

.field maxZ:F

.field moveY:F

.field offRotationAnimator:Lcom/altamirasoft/glanimationutil/GLValueAnimator;

.field onRotationAnimator:Lcom/altamirasoft/glanimationutil/GLValueAnimator;

.field originAlphaHeight:F

.field particleAlphaAnimator:Lcom/altamirasoft/glanimationutil/GLValueAnimator;

.field particleList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/infinity/particle/ParticleData;",
            ">;"
        }
    .end annotation
.end field

.field particlePlusAlphaAnimator:Lcom/altamirasoft/glanimationutil/GLValueAnimator;

.field particleRadius:F

.field public particleSizeDegree:F

.field private program:I

.field random:Ljava/util/Random;

.field renderer:Lcom/android/systemui/infinity/GalaxyRenderer;

.field rotateX:F

.field statusBarAlpha:F

.field statusBarAlphaAnimator:Lcom/altamirasoft/glanimationutil/GLValueAnimator;

.field statusBarHeight:F

.field private uAlphaLocation:I

.field private uGradientPropertyLocation:I

.field private uMatrixLocation:I

.field private uMaxLocation:I

.field private uMoveLocation:I

.field private uPlusAlphaLocation:I

.field private uStatusBarAlphaLocation:I

.field private final vertexArray:Lcom/android/systemui/infinity/common/VertexArray;

.field width:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/infinity/GalaxyRenderer;)V
    .locals 7

    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v5, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v4, 0x44b40000    # 1440.0f

    iput v4, p0, Lcom/android/systemui/infinity/particle/GalaxyParticleSystem;->DEFAULT_WIDTH:F

    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/android/systemui/infinity/particle/GalaxyParticleSystem;->isRight:Z

    iput v5, p0, Lcom/android/systemui/infinity/particle/GalaxyParticleSystem;->currentGyroValue:F

    iput v5, p0, Lcom/android/systemui/infinity/particle/GalaxyParticleSystem;->currentPlusValue:F

    iput v5, p0, Lcom/android/systemui/infinity/particle/GalaxyParticleSystem;->currentFlickValue:F

    iput v5, p0, Lcom/android/systemui/infinity/particle/GalaxyParticleSystem;->currentOnRotateValue:F

    iput v5, p0, Lcom/android/systemui/infinity/particle/GalaxyParticleSystem;->currentOffRotateValue:F

    iput v5, p0, Lcom/android/systemui/infinity/particle/GalaxyParticleSystem;->currentAutoResetRotateValue:F

    iput v5, p0, Lcom/android/systemui/infinity/particle/GalaxyParticleSystem;->currentDeviceUnlockRotateValue:F

    iput v5, p0, Lcom/android/systemui/infinity/particle/GalaxyParticleSystem;->currentParticleAlphaValue:F

    iput v5, p0, Lcom/android/systemui/infinity/particle/GalaxyParticleSystem;->currentParticlePlusAlphaValue:F

    iput v6, p0, Lcom/android/systemui/infinity/particle/GalaxyParticleSystem;->particleSizeDegree:F

    iput v6, p0, Lcom/android/systemui/infinity/particle/GalaxyParticleSystem;->isNeedFadeStatus:F

    iput v6, p0, Lcom/android/systemui/infinity/particle/GalaxyParticleSystem;->maxRotateDegree:F

    iput v6, p0, Lcom/android/systemui/infinity/particle/GalaxyParticleSystem;->mScale:F

    const/high16 v4, 0x42200000    # 40.0f

    iput v4, p0, Lcom/android/systemui/infinity/particle/GalaxyParticleSystem;->statusBarHeight:F

    iput v6, p0, Lcom/android/systemui/infinity/particle/GalaxyParticleSystem;->statusBarAlpha:F

    const/high16 v4, 0x43c80000    # 400.0f

    iput v4, p0, Lcom/android/systemui/infinity/particle/GalaxyParticleSystem;->originAlphaHeight:F

    const/high16 v4, 0x43480000    # 200.0f

    iput v4, p0, Lcom/android/systemui/infinity/particle/GalaxyParticleSystem;->fadeInDistance:F

    const/high16 v4, 0x3fc00000    # 1.5f

    iput v4, p0, Lcom/android/systemui/infinity/particle/GalaxyParticleSystem;->moveY:F

    const/high16 v4, 0x41900000    # 18.0f

    iput v4, p0, Lcom/android/systemui/infinity/particle/GalaxyParticleSystem;->rotateX:F

    const v4, 0x4019999a    # 2.4f

    iput v4, p0, Lcom/android/systemui/infinity/particle/GalaxyParticleSystem;->maxX:F

    const v4, 0x3fa3d70a    # 1.28f

    iput v4, p0, Lcom/android/systemui/infinity/particle/GalaxyParticleSystem;->maxY:F

    const/high16 v4, 0x40c00000    # 6.0f

    iput v4, p0, Lcom/android/systemui/infinity/particle/GalaxyParticleSystem;->maxZ:F

    new-instance v4, Ljava/util/Random;

    invoke-direct {v4}, Ljava/util/Random;-><init>()V

    iput-object v4, p0, Lcom/android/systemui/infinity/particle/GalaxyParticleSystem;->random:Ljava/util/Random;

    const/16 v4, 0xbb8

    iput v4, p0, Lcom/android/systemui/infinity/particle/GalaxyParticleSystem;->TOTAL_PARTICLE_COUNT:I

    const/high16 v4, 0x40a00000    # 5.0f

    iput v4, p0, Lcom/android/systemui/infinity/particle/GalaxyParticleSystem;->particleRadius:F

    iput-object p1, p0, Lcom/android/systemui/infinity/particle/GalaxyParticleSystem;->context:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/systemui/infinity/particle/GalaxyParticleSystem;->renderer:Lcom/android/systemui/infinity/GalaxyRenderer;

    iget v4, p0, Lcom/android/systemui/infinity/particle/GalaxyParticleSystem;->TOTAL_PARTICLE_COUNT:I

    iput v4, p0, Lcom/android/systemui/infinity/particle/GalaxyParticleSystem;->maxParticleCount:I

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/android/systemui/infinity/particle/GalaxyParticleSystem;->particleList:Ljava/util/ArrayList;

    invoke-direct {p0}, Lcom/android/systemui/infinity/particle/GalaxyParticleSystem;->makeParticlePosition()V

    iget-object v4, p0, Lcom/android/systemui/infinity/particle/GalaxyParticleSystem;->particleList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    mul-int/lit8 v4, v4, 0x7

    new-array v1, v4, [F

    const/4 v2, 0x0

    :goto_0
    iget-object v4, p0, Lcom/android/systemui/infinity/particle/GalaxyParticleSystem;->particleList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v2, v4, :cond_0

    mul-int/lit8 v3, v2, 0x7

    iget-object v4, p0, Lcom/android/systemui/infinity/particle/GalaxyParticleSystem;->particleList:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/infinity/particle/ParticleData;

    iget v4, v0, Lcom/android/systemui/infinity/particle/ParticleData;->x:F

    aput v4, v1, v3

    add-int/lit8 v4, v3, 0x1

    iget v5, v0, Lcom/android/systemui/infinity/particle/ParticleData;->y:F

    aput v5, v1, v4

    add-int/lit8 v4, v3, 0x2

    iget v5, v0, Lcom/android/systemui/infinity/particle/ParticleData;->z:F

    aput v5, v1, v4

    add-int/lit8 v4, v3, 0x3

    iget v5, v0, Lcom/android/systemui/infinity/particle/ParticleData;->radius:F

    aput v5, v1, v4

    add-int/lit8 v4, v3, 0x4

    iget v5, v0, Lcom/android/systemui/infinity/particle/ParticleData;->alpha:F

    aput v5, v1, v4

    add-int/lit8 v4, v3, 0x5

    iget v5, v0, Lcom/android/systemui/infinity/particle/ParticleData;->plusAlpha:F

    aput v5, v1, v4

    add-int/lit8 v4, v3, 0x6

    iget v5, v0, Lcom/android/systemui/infinity/particle/ParticleData;->layer:F

    aput v5, v1, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    new-instance v4, Lcom/android/systemui/infinity/common/VertexArray;

    invoke-direct {v4, v1}, Lcom/android/systemui/infinity/common/VertexArray;-><init>([F)V

    iput-object v4, p0, Lcom/android/systemui/infinity/particle/GalaxyParticleSystem;->vertexArray:Lcom/android/systemui/infinity/common/VertexArray;

    invoke-virtual {p2}, Lcom/android/systemui/infinity/GalaxyRenderer;->getAnimatorManager()Lcom/altamirasoft/glanimationutil/GLAnimatorManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/altamirasoft/glanimationutil/GLAnimatorManager;->createEasingHelper()Lcom/altamirasoft/glanimationutil/GLEasingHelper;

    move-result-object v4

    iput-object v4, p0, Lcom/android/systemui/infinity/particle/GalaxyParticleSystem;->easingHelper:Lcom/altamirasoft/glanimationutil/GLEasingHelper;

    iget-object v4, p0, Lcom/android/systemui/infinity/particle/GalaxyParticleSystem;->easingHelper:Lcom/altamirasoft/glanimationutil/GLEasingHelper;

    const v5, 0x3ca3d70a    # 0.02f

    invoke-virtual {v4, v5}, Lcom/altamirasoft/glanimationutil/GLEasingHelper;->setEasing(F)Lcom/altamirasoft/glanimationutil/GLEasingHelper;

    iget-object v4, p0, Lcom/android/systemui/infinity/particle/GalaxyParticleSystem;->easingHelper:Lcom/altamirasoft/glanimationutil/GLEasingHelper;

    const v5, 0x3a51b717    # 8.0E-4f

    invoke-virtual {v4, v5}, Lcom/altamirasoft/glanimationutil/GLEasingHelper;->setMinDiffer(F)Lcom/altamirasoft/glanimationutil/GLEasingHelper;

    iget-object v4, p0, Lcom/android/systemui/infinity/particle/GalaxyParticleSystem;->easingHelper:Lcom/altamirasoft/glanimationutil/GLEasingHelper;

    new-instance v5, Lcom/android/systemui/infinity/particle/GalaxyParticleSystem$1;

    invoke-direct {v5, p0}, Lcom/android/systemui/infinity/particle/GalaxyParticleSystem$1;-><init>(Lcom/android/systemui/infinity/particle/GalaxyParticleSystem;)V

    invoke-virtual {v4, v5}, Lcom/altamirasoft/glanimationutil/GLEasingHelper;->addUpdateListener(Lcom/altamirasoft/glanimationutil/GLEasingUpdateListener;)Lcom/altamirasoft/glanimationutil/GLEasingHelper;

    iget-object v4, p0, Lcom/android/systemui/infinity/particle/GalaxyParticleSystem;->easingHelper:Lcom/altamirasoft/glanimationutil/GLEasingHelper;

    invoke-virtual {v4}, Lcom/altamirasoft/glanimationutil/GLEasingHelper;->start()V

    return-void
.end method

.method private makeParticlePosition()V
    .locals 11

    const v10, 0x3f333333    # 0.7f

    const v9, 0x3e99999a    # 0.3f

    const v8, 0x3e4ccccd    # 0.2f

    const v7, 0x3dcccccd    # 0.1f

    const/high16 v6, 0x3f000000    # 0.5f

    const/4 v2, 0x0

    :goto_0
    iget v3, p0, Lcom/android/systemui/infinity/particle/GalaxyParticleSystem;->TOTAL_PARTICLE_COUNT:I

    if-ge v2, v3, :cond_6

    new-instance v0, Lcom/android/systemui/infinity/particle/ParticleData;

    invoke-direct {v0}, Lcom/android/systemui/infinity/particle/ParticleData;-><init>()V

    iget-object v3, p0, Lcom/android/systemui/infinity/particle/GalaxyParticleSystem;->random:Ljava/util/Random;

    invoke-virtual {v3}, Ljava/util/Random;->nextFloat()F

    move-result v3

    iget v4, p0, Lcom/android/systemui/infinity/particle/GalaxyParticleSystem;->maxX:F

    mul-float/2addr v3, v4

    const/high16 v4, 0x447a0000    # 1000.0f

    add-float/2addr v3, v4

    iput v3, v0, Lcom/android/systemui/infinity/particle/ParticleData;->x:F

    int-to-float v3, v2

    iget v4, p0, Lcom/android/systemui/infinity/particle/GalaxyParticleSystem;->TOTAL_PARTICLE_COUNT:I

    int-to-float v4, v4

    mul-float/2addr v4, v10

    cmpl-float v3, v3, v4

    if-lez v3, :cond_0

    iget-object v3, p0, Lcom/android/systemui/infinity/particle/GalaxyParticleSystem;->random:Ljava/util/Random;

    invoke-virtual {v3}, Ljava/util/Random;->nextFloat()F

    move-result v3

    iget v4, p0, Lcom/android/systemui/infinity/particle/GalaxyParticleSystem;->maxY:F

    mul-float/2addr v3, v4

    mul-float/2addr v3, v8

    iget v4, p0, Lcom/android/systemui/infinity/particle/GalaxyParticleSystem;->maxY:F

    const v5, 0x3f4ccccd    # 0.8f

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    iput v3, v0, Lcom/android/systemui/infinity/particle/ParticleData;->y:F

    :goto_1
    iget-object v3, p0, Lcom/android/systemui/infinity/particle/GalaxyParticleSystem;->random:Ljava/util/Random;

    invoke-virtual {v3}, Ljava/util/Random;->nextFloat()F

    move-result v3

    iget v4, p0, Lcom/android/systemui/infinity/particle/GalaxyParticleSystem;->maxZ:F

    mul-float/2addr v3, v4

    const/high16 v4, 0x447a0000    # 1000.0f

    add-float/2addr v3, v4

    iput v3, v0, Lcom/android/systemui/infinity/particle/ParticleData;->z:F

    const/16 v3, 0x3e8

    if-le v2, v3, :cond_3

    iget-object v3, p0, Lcom/android/systemui/infinity/particle/GalaxyParticleSystem;->random:Ljava/util/Random;

    invoke-virtual {v3}, Ljava/util/Random;->nextFloat()F

    move-result v3

    add-float/2addr v3, v7

    iget v4, p0, Lcom/android/systemui/infinity/particle/GalaxyParticleSystem;->particleRadius:F

    mul-float/2addr v3, v4

    const v4, 0x3f19999a    # 0.6f

    mul-float/2addr v3, v4

    iput v3, v0, Lcom/android/systemui/infinity/particle/ParticleData;->radius:F

    :goto_2
    const/high16 v3, 0x3f800000    # 1.0f

    iput v3, v0, Lcom/android/systemui/infinity/particle/ParticleData;->layer:F

    iget-object v3, p0, Lcom/android/systemui/infinity/particle/GalaxyParticleSystem;->random:Ljava/util/Random;

    invoke-virtual {v3}, Ljava/util/Random;->nextFloat()F

    move-result v3

    mul-float/2addr v3, v8

    const v4, 0x3f4ccccd    # 0.8f

    add-float v1, v3, v4

    iput v1, v0, Lcom/android/systemui/infinity/particle/ParticleData;->alpha:F

    rem-int/lit8 v3, v2, 0x2

    if-nez v3, :cond_5

    const/high16 v3, 0x3f800000    # 1.0f

    :goto_3
    iput v3, v0, Lcom/android/systemui/infinity/particle/ParticleData;->plusAlpha:F

    iget-object v3, p0, Lcom/android/systemui/infinity/particle/GalaxyParticleSystem;->particleList:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    int-to-float v3, v2

    iget v4, p0, Lcom/android/systemui/infinity/particle/GalaxyParticleSystem;->TOTAL_PARTICLE_COUNT:I

    int-to-float v4, v4

    mul-float/2addr v4, v6

    cmpl-float v3, v3, v4

    if-lez v3, :cond_1

    iget-object v3, p0, Lcom/android/systemui/infinity/particle/GalaxyParticleSystem;->random:Ljava/util/Random;

    invoke-virtual {v3}, Ljava/util/Random;->nextFloat()F

    move-result v3

    iget v4, p0, Lcom/android/systemui/infinity/particle/GalaxyParticleSystem;->maxY:F

    mul-float/2addr v3, v4

    mul-float/2addr v3, v6

    iget v4, p0, Lcom/android/systemui/infinity/particle/GalaxyParticleSystem;->maxY:F

    mul-float/2addr v4, v6

    add-float/2addr v3, v4

    iput v3, v0, Lcom/android/systemui/infinity/particle/ParticleData;->y:F

    goto :goto_1

    :cond_1
    int-to-float v3, v2

    iget v4, p0, Lcom/android/systemui/infinity/particle/GalaxyParticleSystem;->TOTAL_PARTICLE_COUNT:I

    int-to-float v4, v4

    mul-float/2addr v4, v9

    cmpl-float v3, v3, v4

    if-lez v3, :cond_2

    iget-object v3, p0, Lcom/android/systemui/infinity/particle/GalaxyParticleSystem;->random:Ljava/util/Random;

    invoke-virtual {v3}, Ljava/util/Random;->nextFloat()F

    move-result v3

    iget v4, p0, Lcom/android/systemui/infinity/particle/GalaxyParticleSystem;->maxY:F

    mul-float/2addr v3, v4

    mul-float/2addr v3, v10

    iget v4, p0, Lcom/android/systemui/infinity/particle/GalaxyParticleSystem;->maxY:F

    mul-float/2addr v4, v9

    add-float/2addr v3, v4

    iput v3, v0, Lcom/android/systemui/infinity/particle/ParticleData;->y:F

    goto :goto_1

    :cond_2
    iget-object v3, p0, Lcom/android/systemui/infinity/particle/GalaxyParticleSystem;->random:Ljava/util/Random;

    invoke-virtual {v3}, Ljava/util/Random;->nextFloat()F

    move-result v3

    iget v4, p0, Lcom/android/systemui/infinity/particle/GalaxyParticleSystem;->maxY:F

    mul-float/2addr v3, v4

    iput v3, v0, Lcom/android/systemui/infinity/particle/ParticleData;->y:F

    goto/16 :goto_1

    :cond_3
    rem-int/lit16 v3, v2, 0xc8

    if-nez v3, :cond_4

    iget v3, p0, Lcom/android/systemui/infinity/particle/GalaxyParticleSystem;->particleRadius:F

    const v4, 0x3fb33333    # 1.4f

    mul-float/2addr v3, v4

    iput v3, v0, Lcom/android/systemui/infinity/particle/ParticleData;->radius:F

    goto :goto_2

    :cond_4
    iget-object v3, p0, Lcom/android/systemui/infinity/particle/GalaxyParticleSystem;->random:Ljava/util/Random;

    invoke-virtual {v3}, Ljava/util/Random;->nextFloat()F

    move-result v3

    add-float/2addr v3, v7

    iget v4, p0, Lcom/android/systemui/infinity/particle/GalaxyParticleSystem;->particleRadius:F

    mul-float/2addr v3, v4

    iput v3, v0, Lcom/android/systemui/infinity/particle/ParticleData;->radius:F

    goto :goto_2

    :cond_5
    const/4 v3, 0x0

    goto :goto_3

    :cond_6
    return-void
.end method


# virtual methods
.method public calculatePosition()V
    .locals 4

    const v3, 0x3f4ccccd    # 0.8f

    iget v0, p0, Lcom/android/systemui/infinity/particle/GalaxyParticleSystem;->currentGyroValue:F

    iget v1, p0, Lcom/android/systemui/infinity/particle/GalaxyParticleSystem;->currentPlusValue:F

    add-float/2addr v0, v1

    iget v1, p0, Lcom/android/systemui/infinity/particle/GalaxyParticleSystem;->currentFlickValue:F

    const/high16 v2, 0x3f000000    # 0.5f

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lcom/android/systemui/infinity/particle/GalaxyParticleSystem;->currentOnRotateValue:F

    mul-float/2addr v1, v3

    add-float/2addr v0, v1

    iget v1, p0, Lcom/android/systemui/infinity/particle/GalaxyParticleSystem;->currentOffRotateValue:F

    mul-float/2addr v1, v3

    add-float/2addr v0, v1

    iget v1, p0, Lcom/android/systemui/infinity/particle/GalaxyParticleSystem;->currentAutoResetRotateValue:F

    mul-float/2addr v1, v3

    add-float/2addr v0, v1

    iget v1, p0, Lcom/android/systemui/infinity/particle/GalaxyParticleSystem;->currentDeviceUnlockRotateValue:F

    mul-float/2addr v1, v3

    add-float/2addr v0, v1

    iput v0, p0, Lcom/android/systemui/infinity/particle/GalaxyParticleSystem;->animXValue:F

    iget v0, p0, Lcom/android/systemui/infinity/particle/GalaxyParticleSystem;->animXValue:F

    const v1, -0x40b33333    # -0.8f

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/android/systemui/infinity/particle/GalaxyParticleSystem;->animZValue:F

    return-void
.end method

.method public changeAutoResetRotateValue(FFJ)V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/infinity/particle/GalaxyParticleSystem;->autoResetAnimator:Lcom/altamirasoft/glanimationutil/GLValueAnimator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/infinity/particle/GalaxyParticleSystem;->autoResetAnimator:Lcom/altamirasoft/glanimationutil/GLValueAnimator;

    invoke-virtual {v0}, Lcom/altamirasoft/glanimationutil/GLValueAnimator;->end()V

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/infinity/particle/GalaxyParticleSystem;->renderer:Lcom/android/systemui/infinity/GalaxyRenderer;

    invoke-virtual {v0}, Lcom/android/systemui/infinity/GalaxyRenderer;->getAnimatorManager()Lcom/altamirasoft/glanimationutil/GLAnimatorManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/altamirasoft/glanimationutil/GLAnimatorManager;->createValueAnimator(FF)Lcom/altamirasoft/glanimationutil/GLValueAnimator;

    move-result-object v0

    invoke-virtual {v0, p3, p4}, Lcom/altamirasoft/glanimationutil/GLValueAnimator;->setDuration(J)Lcom/altamirasoft/glanimationutil/GLValueAnimator;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/infinity/particle/GalaxyParticleSystem$5;

    invoke-direct {v1, p0}, Lcom/android/systemui/infinity/particle/GalaxyParticleSystem$5;-><init>(Lcom/android/systemui/infinity/particle/GalaxyParticleSystem;)V

    invoke-virtual {v0, v1}, Lcom/altamirasoft/glanimationutil/GLValueAnimator;->addUpdateListener(Lcom/altamirasoft/glanimationutil/GLValueAnimator$AnimatorUpdateListener;)Lcom/altamirasoft/glanimationutil/GLValueAnimator;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/view/animation/SineInOut90;

    invoke-direct {v1}, Lcom/samsung/android/view/animation/SineInOut90;-><init>()V

    invoke-virtual {v0, v1}, Lcom/altamirasoft/glanimationutil/GLValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Lcom/altamirasoft/glanimationutil/GLValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/infinity/particle/GalaxyParticleSystem;->autoResetAnimator:Lcom/altamirasoft/glanimationutil/GLValueAnimator;

    iget-object v0, p0, Lcom/android/systemui/infinity/particle/GalaxyParticleSystem;->autoResetAnimator:Lcom/altamirasoft/glanimationutil/GLValueAnimator;

    invoke-virtual {v0}, Lcom/altamirasoft/glanimationutil/GLValueAnimator;->start()V

    return-void
.end method

.method public changeDeviceUnlockRotateValue(FFJ)V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/infinity/particle/GalaxyParticleSystem;->deviceUnlockAnimator:Lcom/altamirasoft/glanimationutil/GLValueAnimator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/infinity/particle/GalaxyParticleSystem;->deviceUnlockAnimator:Lcom/altamirasoft/glanimationutil/GLValueAnimator;

    invoke-virtual {v0}, Lcom/altamirasoft/glanimationutil/GLValueAnimator;->end()V

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/infinity/particle/GalaxyParticleSystem;->renderer:Lcom/android/systemui/infinity/GalaxyRenderer;

    invoke-virtual {v0}, Lcom/android/systemui/infinity/GalaxyRenderer;->getAnimatorManager()Lcom/altamirasoft/glanimationutil/GLAnimatorManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/altamirasoft/glanimationutil/GLAnimatorManager;->createValueAnimator(FF)Lcom/altamirasoft/glanimationutil/GLValueAnimator;

    move-result-object v0

    invoke-virtual {v0, p3, p4}, Lcom/altamirasoft/glanimationutil/GLValueAnimator;->setDuration(J)Lcom/altamirasoft/glanimationutil/GLValueAnimator;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/infinity/particle/GalaxyParticleSystem$6;

    invoke-direct {v1, p0}, Lcom/android/systemui/infinity/particle/GalaxyParticleSystem$6;-><init>(Lcom/android/systemui/infinity/particle/GalaxyParticleSystem;)V

    invoke-virtual {v0, v1}, Lcom/altamirasoft/glanimationutil/GLValueAnimator;->addUpdateListener(Lcom/altamirasoft/glanimationutil/GLValueAnimator$AnimatorUpdateListener;)Lcom/altamirasoft/glanimationutil/GLValueAnimator;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/view/animation/SineInOut90;

    invoke-direct {v1}, Lcom/samsung/android/view/animation/SineInOut90;-><init>()V

    invoke-virtual {v0, v1}, Lcom/altamirasoft/glanimationutil/GLValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Lcom/altamirasoft/glanimationutil/GLValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/infinity/particle/GalaxyParticleSystem;->deviceUnlockAnimator:Lcom/altamirasoft/glanimationutil/GLValueAnimator;

    iget-object v0, p0, Lcom/android/systemui/infinity/particle/GalaxyParticleSystem;->deviceUnlockAnimator:Lcom/altamirasoft/glanimationutil/GLValueAnimator;

    invoke-virtual {v0}, Lcom/altamirasoft/glanimationutil/GLValueAnimator;->start()V

    return-void
.end method

.method public changeFlickValue(FFJ)V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/infinity/particle/GalaxyParticleSystem;->flickRotationAnimator:Lcom/altamirasoft/glanimationutil/GLValueAnimator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/infinity/particle/GalaxyParticleSystem;->flickRotationAnimator:Lcom/altamirasoft/glanimationutil/GLValueAnimator;

    invoke-virtual {v0}, Lcom/altamirasoft/glanimationutil/GLValueAnimator;->end()V

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/infinity/particle/GalaxyParticleSystem;->renderer:Lcom/android/systemui/infinity/GalaxyRenderer;

    invoke-virtual {v0}, Lcom/android/systemui/infinity/GalaxyRenderer;->getAnimatorManager()Lcom/altamirasoft/glanimationutil/GLAnimatorManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/altamirasoft/glanimationutil/GLAnimatorManager;->createValueAnimator(FF)Lcom/altamirasoft/glanimationutil/GLValueAnimator;

    move-result-object v0

    invoke-virtual {v0, p3, p4}, Lcom/altamirasoft/glanimationutil/GLValueAnimator;->setDuration(J)Lcom/altamirasoft/glanimationutil/GLValueAnimator;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/infinity/particle/GalaxyParticleSystem$2;

    invoke-direct {v1, p0}, Lcom/android/systemui/infinity/particle/GalaxyParticleSystem$2;-><init>(Lcom/android/systemui/infinity/particle/GalaxyParticleSystem;)V

    invoke-virtual {v0, v1}, Lcom/altamirasoft/glanimationutil/GLValueAnimator;->addUpdateListener(Lcom/altamirasoft/glanimationutil/GLValueAnimator$AnimatorUpdateListener;)Lcom/altamirasoft/glanimationutil/GLValueAnimator;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/view/animation/SineInOut90;

    invoke-direct {v1}, Lcom/samsung/android/view/animation/SineInOut90;-><init>()V

    invoke-virtual {v0, v1}, Lcom/altamirasoft/glanimationutil/GLValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Lcom/altamirasoft/glanimationutil/GLValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/infinity/particle/GalaxyParticleSystem;->flickRotationAnimator:Lcom/altamirasoft/glanimationutil/GLValueAnimator;

    iget-object v0, p0, Lcom/android/systemui/infinity/particle/GalaxyParticleSystem;->flickRotationAnimator:Lcom/altamirasoft/glanimationutil/GLValueAnimator;

    invoke-virtual {v0}, Lcom/altamirasoft/glanimationutil/GLValueAnimator;->start()V

    return-void
.end method

.method public changeOffRotateValue(FFJ)V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/infinity/particle/GalaxyParticleSystem;->offRotationAnimator:Lcom/altamirasoft/glanimationutil/GLValueAnimator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/infinity/particle/GalaxyParticleSystem;->offRotationAnimator:Lcom/altamirasoft/glanimationutil/GLValueAnimator;

    invoke-virtual {v0}, Lcom/altamirasoft/glanimationutil/GLValueAnimator;->end()V

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/infinity/particle/GalaxyParticleSystem;->renderer:Lcom/android/systemui/infinity/GalaxyRenderer;

    invoke-virtual {v0}, Lcom/android/systemui/infinity/GalaxyRenderer;->getAnimatorManager()Lcom/altamirasoft/glanimationutil/GLAnimatorManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/altamirasoft/glanimationutil/GLAnimatorManager;->createValueAnimator(FF)Lcom/altamirasoft/glanimationutil/GLValueAnimator;

    move-result-object v0

    invoke-virtual {v0, p3, p4}, Lcom/altamirasoft/glanimationutil/GLValueAnimator;->setDuration(J)Lcom/altamirasoft/glanimationutil/GLValueAnimator;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/infinity/particle/GalaxyParticleSystem$7;

    invoke-direct {v1, p0}, Lcom/android/systemui/infinity/particle/GalaxyParticleSystem$7;-><init>(Lcom/android/systemui/infinity/particle/GalaxyParticleSystem;)V

    invoke-virtual {v0, v1}, Lcom/altamirasoft/glanimationutil/GLValueAnimator;->addUpdateListener(Lcom/altamirasoft/glanimationutil/GLValueAnimator$AnimatorUpdateListener;)Lcom/altamirasoft/glanimationutil/GLValueAnimator;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/view/animation/SineInOut90;

    invoke-direct {v1}, Lcom/samsung/android/view/animation/SineInOut90;-><init>()V

    invoke-virtual {v0, v1}, Lcom/altamirasoft/glanimationutil/GLValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Lcom/altamirasoft/glanimationutil/GLValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/infinity/particle/GalaxyParticleSystem;->offRotationAnimator:Lcom/altamirasoft/glanimationutil/GLValueAnimator;

    iget-object v0, p0, Lcom/android/systemui/infinity/particle/GalaxyParticleSystem;->offRotationAnimator:Lcom/altamirasoft/glanimationutil/GLValueAnimator;

    invoke-virtual {v0}, Lcom/altamirasoft/glanimationutil/GLValueAnimator;->start()V

    return-void
.end method

.method public changeOnRotateValue(FFJ)V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/infinity/particle/GalaxyParticleSystem;->onRotationAnimator:Lcom/altamirasoft/glanimationutil/GLValueAnimator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/infinity/particle/GalaxyParticleSystem;->onRotationAnimator:Lcom/altamirasoft/glanimationutil/GLValueAnimator;

    invoke-virtual {v0}, Lcom/altamirasoft/glanimationutil/GLValueAnimator;->end()V

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/infinity/particle/GalaxyParticleSystem;->renderer:Lcom/android/systemui/infinity/GalaxyRenderer;

    invoke-virtual {v0}, Lcom/android/systemui/infinity/GalaxyRenderer;->getAnimatorManager()Lcom/altamirasoft/glanimationutil/GLAnimatorManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/altamirasoft/glanimationutil/GLAnimatorManager;->createValueAnimator(FF)Lcom/altamirasoft/glanimationutil/GLValueAnimator;

    move-result-object v0

    invoke-virtual {v0, p3, p4}, Lcom/altamirasoft/glanimationutil/GLValueAnimator;->setDuration(J)Lcom/altamirasoft/glanimationutil/GLValueAnimator;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/infinity/particle/GalaxyParticleSystem$4;

    invoke-direct {v1, p0}, Lcom/android/systemui/infinity/particle/GalaxyParticleSystem$4;-><init>(Lcom/android/systemui/infinity/particle/GalaxyParticleSystem;)V

    invoke-virtual {v0, v1}, Lcom/altamirasoft/glanimationutil/GLValueAnimator;->addUpdateListener(Lcom/altamirasoft/glanimationutil/GLValueAnimator$AnimatorUpdateListener;)Lcom/altamirasoft/glanimationutil/GLValueAnimator;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/view/animation/SineInOut90;

    invoke-direct {v1}, Lcom/samsung/android/view/animation/SineInOut90;-><init>()V

    invoke-virtual {v0, v1}, Lcom/altamirasoft/glanimationutil/GLValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Lcom/altamirasoft/glanimationutil/GLValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/infinity/particle/GalaxyParticleSystem;->onRotationAnimator:Lcom/altamirasoft/glanimationutil/GLValueAnimator;

    iget-object v0, p0, Lcom/android/systemui/infinity/particle/GalaxyParticleSystem;->onRotationAnimator:Lcom/altamirasoft/glanimationutil/GLValueAnimator;

    invoke-virtual {v0}, Lcom/altamirasoft/glanimationutil/GLValueAnimator;->start()V

    return-void
.end method

.method public changeParticleAlpha(FFJ)V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/infinity/particle/GalaxyParticleSystem;->particleAlphaAnimator:Lcom/altamirasoft/glanimationutil/GLValueAnimator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/infinity/particle/GalaxyParticleSystem;->particleAlphaAnimator:Lcom/altamirasoft/glanimationutil/GLValueAnimator;

    invoke-virtual {v0}, Lcom/altamirasoft/glanimationutil/GLValueAnimator;->end()V

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/infinity/particle/GalaxyParticleSystem;->renderer:Lcom/android/systemui/infinity/GalaxyRenderer;

    invoke-virtual {v0}, Lcom/android/systemui/infinity/GalaxyRenderer;->getAnimatorManager()Lcom/altamirasoft/glanimationutil/GLAnimatorManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/altamirasoft/glanimationutil/GLAnimatorManager;->createValueAnimator(FF)Lcom/altamirasoft/glanimationutil/GLValueAnimator;

    move-result-object v0

    invoke-virtual {v0, p3, p4}, Lcom/altamirasoft/glanimationutil/GLValueAnimator;->setDuration(J)Lcom/altamirasoft/glanimationutil/GLValueAnimator;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/infinity/particle/GalaxyParticleSystem$8;

    invoke-direct {v1, p0}, Lcom/android/systemui/infinity/particle/GalaxyParticleSystem$8;-><init>(Lcom/android/systemui/infinity/particle/GalaxyParticleSystem;)V

    invoke-virtual {v0, v1}, Lcom/altamirasoft/glanimationutil/GLValueAnimator;->addUpdateListener(Lcom/altamirasoft/glanimationutil/GLValueAnimator$AnimatorUpdateListener;)Lcom/altamirasoft/glanimationutil/GLValueAnimator;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/view/animation/SineInOut90;

    invoke-direct {v1}, Lcom/samsung/android/view/animation/SineInOut90;-><init>()V

    invoke-virtual {v0, v1}, Lcom/altamirasoft/glanimationutil/GLValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Lcom/altamirasoft/glanimationutil/GLValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/infinity/particle/GalaxyParticleSystem;->particleAlphaAnimator:Lcom/altamirasoft/glanimationutil/GLValueAnimator;

    iget-object v0, p0, Lcom/android/systemui/infinity/particle/GalaxyParticleSystem;->particleAlphaAnimator:Lcom/altamirasoft/glanimationutil/GLValueAnimator;

    invoke-virtual {v0}, Lcom/altamirasoft/glanimationutil/GLValueAnimator;->start()V

    return-void
.end method

.method public changeParticlePlusAlpha(FFJ)V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/infinity/particle/GalaxyParticleSystem;->particlePlusAlphaAnimator:Lcom/altamirasoft/glanimationutil/GLValueAnimator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/infinity/particle/GalaxyParticleSystem;->particlePlusAlphaAnimator:Lcom/altamirasoft/glanimationutil/GLValueAnimator;

    invoke-virtual {v0}, Lcom/altamirasoft/glanimationutil/GLValueAnimator;->end()V

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/infinity/particle/GalaxyParticleSystem;->renderer:Lcom/android/systemui/infinity/GalaxyRenderer;

    invoke-virtual {v0}, Lcom/android/systemui/infinity/GalaxyRenderer;->getAnimatorManager()Lcom/altamirasoft/glanimationutil/GLAnimatorManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/altamirasoft/glanimationutil/GLAnimatorManager;->createValueAnimator(FF)Lcom/altamirasoft/glanimationutil/GLValueAnimator;

    move-result-object v0

    invoke-virtual {v0, p3, p4}, Lcom/altamirasoft/glanimationutil/GLValueAnimator;->setDuration(J)Lcom/altamirasoft/glanimationutil/GLValueAnimator;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/infinity/particle/GalaxyParticleSystem$9;

    invoke-direct {v1, p0}, Lcom/android/systemui/infinity/particle/GalaxyParticleSystem$9;-><init>(Lcom/android/systemui/infinity/particle/GalaxyParticleSystem;)V

    invoke-virtual {v0, v1}, Lcom/altamirasoft/glanimationutil/GLValueAnimator;->addUpdateListener(Lcom/altamirasoft/glanimationutil/GLValueAnimator$AnimatorUpdateListener;)Lcom/altamirasoft/glanimationutil/GLValueAnimator;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/view/animation/SineInOut90;

    invoke-direct {v1}, Lcom/samsung/android/view/animation/SineInOut90;-><init>()V

    invoke-virtual {v0, v1}, Lcom/altamirasoft/glanimationutil/GLValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Lcom/altamirasoft/glanimationutil/GLValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/infinity/particle/GalaxyParticleSystem;->particlePlusAlphaAnimator:Lcom/altamirasoft/glanimationutil/GLValueAnimator;

    iget-object v0, p0, Lcom/android/systemui/infinity/particle/GalaxyParticleSystem;->particlePlusAlphaAnimator:Lcom/altamirasoft/glanimationutil/GLValueAnimator;

    invoke-virtual {v0}, Lcom/altamirasoft/glanimationutil/GLValueAnimator;->start()V

    return-void
.end method

.method public draw([F[F[F)V
    .locals 8

    const/4 v3, 0x3

    const/4 v4, 0x0

    const/16 v5, 0x1c

    const/4 v7, 0x1

    const/4 v1, 0x0

    iget v0, p0, Lcom/android/systemui/infinity/particle/GalaxyParticleSystem;->program:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glUseProgram(I)V

    const/16 v0, 0xbe2

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnable(I)V

    const/16 v0, 0x302

    const/16 v2, 0x303

    invoke-static {v0, v2}, Landroid/opengl/GLES20;->glBlendFunc(II)V

    iget-object v0, p0, Lcom/android/systemui/infinity/particle/GalaxyParticleSystem;->vertexArray:Lcom/android/systemui/infinity/common/VertexArray;

    iget v2, p0, Lcom/android/systemui/infinity/particle/GalaxyParticleSystem;->aPositionLocation:I

    invoke-virtual {v0, v1, v2, v3, v5}, Lcom/android/systemui/infinity/common/VertexArray;->setVertexAttribPointer(IIII)V

    iget-object v0, p0, Lcom/android/systemui/infinity/particle/GalaxyParticleSystem;->vertexArray:Lcom/android/systemui/infinity/common/VertexArray;

    iget v2, p0, Lcom/android/systemui/infinity/particle/GalaxyParticleSystem;->aPointSizeLocation:I

    invoke-virtual {v0, v3, v2, v7, v5}, Lcom/android/systemui/infinity/common/VertexArray;->setVertexAttribPointer(IIII)V

    iget-object v0, p0, Lcom/android/systemui/infinity/particle/GalaxyParticleSystem;->vertexArray:Lcom/android/systemui/infinity/common/VertexArray;

    iget v2, p0, Lcom/android/systemui/infinity/particle/GalaxyParticleSystem;->aPointAlphaLocation:I

    const/4 v3, 0x4

    invoke-virtual {v0, v3, v2, v7, v5}, Lcom/android/systemui/infinity/common/VertexArray;->setVertexAttribPointer(IIII)V

    iget-object v0, p0, Lcom/android/systemui/infinity/particle/GalaxyParticleSystem;->vertexArray:Lcom/android/systemui/infinity/common/VertexArray;

    iget v2, p0, Lcom/android/systemui/infinity/particle/GalaxyParticleSystem;->aPlusAlphaLocation:I

    const/4 v3, 0x5

    invoke-virtual {v0, v3, v2, v7, v5}, Lcom/android/systemui/infinity/common/VertexArray;->setVertexAttribPointer(IIII)V

    iget-object v0, p0, Lcom/android/systemui/infinity/particle/GalaxyParticleSystem;->vertexArray:Lcom/android/systemui/infinity/common/VertexArray;

    iget v2, p0, Lcom/android/systemui/infinity/particle/GalaxyParticleSystem;->aLayerIndexLocation:I

    const/4 v3, 0x6

    invoke-virtual {v0, v3, v2, v7, v5}, Lcom/android/systemui/infinity/common/VertexArray;->setVertexAttribPointer(IIII)V

    iget v0, p0, Lcom/android/systemui/infinity/particle/GalaxyParticleSystem;->uStatusBarAlphaLocation:I

    iget v2, p0, Lcom/android/systemui/infinity/particle/GalaxyParticleSystem;->statusBarAlpha:F

    invoke-static {v0, v2}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    iget v0, p0, Lcom/android/systemui/infinity/particle/GalaxyParticleSystem;->uGradientPropertyLocation:I

    iget v2, p0, Lcom/android/systemui/infinity/particle/GalaxyParticleSystem;->height:I

    int-to-float v2, v2

    iget v3, p0, Lcom/android/systemui/infinity/particle/GalaxyParticleSystem;->statusBarHeight:F

    iget v5, p0, Lcom/android/systemui/infinity/particle/GalaxyParticleSystem;->originAlphaHeight:F

    iget v6, p0, Lcom/android/systemui/infinity/particle/GalaxyParticleSystem;->fadeInDistance:F

    invoke-static {v0, v2, v3, v5, v6}, Landroid/opengl/GLES20;->glUniform4f(IFFFF)V

    iget v0, p0, Lcom/android/systemui/infinity/particle/GalaxyParticleSystem;->uAlphaLocation:I

    iget v2, p0, Lcom/android/systemui/infinity/particle/GalaxyParticleSystem;->currentParticleAlphaValue:F

    invoke-static {v0, v2}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    iget v0, p0, Lcom/android/systemui/infinity/particle/GalaxyParticleSystem;->uPlusAlphaLocation:I

    iget v2, p0, Lcom/android/systemui/infinity/particle/GalaxyParticleSystem;->currentParticlePlusAlphaValue:F

    invoke-static {v0, v2}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    iget v0, p0, Lcom/android/systemui/infinity/particle/GalaxyParticleSystem;->uMoveLocation:I

    iget v2, p0, Lcom/android/systemui/infinity/particle/GalaxyParticleSystem;->animXValue:F

    iget v3, p0, Lcom/android/systemui/infinity/particle/GalaxyParticleSystem;->animZValue:F

    invoke-static {v0, v2, v4, v3}, Landroid/opengl/GLES20;->glUniform3f(IFFF)V

    iget v0, p0, Lcom/android/systemui/infinity/particle/GalaxyParticleSystem;->uMaxLocation:I

    iget v2, p0, Lcom/android/systemui/infinity/particle/GalaxyParticleSystem;->maxX:F

    iget v3, p0, Lcom/android/systemui/infinity/particle/GalaxyParticleSystem;->maxY:F

    iget v5, p0, Lcom/android/systemui/infinity/particle/GalaxyParticleSystem;->maxZ:F

    iget v6, p0, Lcom/android/systemui/infinity/particle/GalaxyParticleSystem;->isNeedFadeStatus:F

    invoke-static {v0, v2, v3, v5, v6}, Landroid/opengl/GLES20;->glUniform4f(IFFFF)V

    iget v0, p0, Lcom/android/systemui/infinity/particle/GalaxyParticleSystem;->maxX:F

    neg-float v0, v0

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v0, v2

    iget v2, p0, Lcom/android/systemui/infinity/particle/GalaxyParticleSystem;->moveY:F

    iget v3, p0, Lcom/android/systemui/infinity/particle/GalaxyParticleSystem;->maxZ:F

    neg-float v3, v3

    const/high16 v5, 0x40400000    # 3.0f

    sub-float/2addr v3, v5

    invoke-static {p2, v1, v0, v2, v3}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    iget v0, p0, Lcom/android/systemui/infinity/particle/GalaxyParticleSystem;->mScale:F

    iget v2, p0, Lcom/android/systemui/infinity/particle/GalaxyParticleSystem;->mScale:F

    iget v3, p0, Lcom/android/systemui/infinity/particle/GalaxyParticleSystem;->mScale:F

    const/high16 v5, 0x3f000000    # 0.5f

    add-float/2addr v3, v5

    invoke-static {p2, v1, v0, v2, v3}, Landroid/opengl/Matrix;->scaleM([FIFFF)V

    iget v2, p0, Lcom/android/systemui/infinity/particle/GalaxyParticleSystem;->rotateX:F

    const/high16 v3, 0x3f800000    # 1.0f

    move-object v0, p2

    move v5, v4

    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->rotateM([FIFFFF)V

    move-object v0, p1

    move-object v2, p3

    move v3, v1

    move-object v4, p2

    move v5, v1

    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    iget v0, p0, Lcom/android/systemui/infinity/particle/GalaxyParticleSystem;->uMatrixLocation:I

    invoke-static {v0, v7, v1, p1, v1}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    iget v0, p0, Lcom/android/systemui/infinity/particle/GalaxyParticleSystem;->TOTAL_PARTICLE_COUNT:I

    invoke-static {v1, v1, v0}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    return-void
.end method

.method public getEasingHelper()Lcom/altamirasoft/glanimationutil/GLEasingHelper;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/infinity/particle/GalaxyParticleSystem;->easingHelper:Lcom/altamirasoft/glanimationutil/GLEasingHelper;

    return-object v0
.end method

.method public hideParticles()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/systemui/infinity/particle/GalaxyParticleSystem;->particlePlusAlphaAnimator:Lcom/altamirasoft/glanimationutil/GLValueAnimator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/infinity/particle/GalaxyParticleSystem;->particlePlusAlphaAnimator:Lcom/altamirasoft/glanimationutil/GLValueAnimator;

    invoke-virtual {v0}, Lcom/altamirasoft/glanimationutil/GLValueAnimator;->end()V

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/infinity/particle/GalaxyParticleSystem;->particleAlphaAnimator:Lcom/altamirasoft/glanimationutil/GLValueAnimator;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/infinity/particle/GalaxyParticleSystem;->particleAlphaAnimator:Lcom/altamirasoft/glanimationutil/GLValueAnimator;

    invoke-virtual {v0}, Lcom/altamirasoft/glanimationutil/GLValueAnimator;->end()V

    :cond_1
    iput v1, p0, Lcom/android/systemui/infinity/particle/GalaxyParticleSystem;->currentParticleAlphaValue:F

    iput v1, p0, Lcom/android/systemui/infinity/particle/GalaxyParticleSystem;->currentParticlePlusAlphaValue:F

    return-void
.end method

.method public makePaticleBig()V
    .locals 0

    return-void
.end method

.method public makePaticleSmall()V
    .locals 0

    return-void
.end method

.method public onSurfaceChanged(II)V
    .locals 2

    iput p1, p0, Lcom/android/systemui/infinity/particle/GalaxyParticleSystem;->width:I

    iput p2, p0, Lcom/android/systemui/infinity/particle/GalaxyParticleSystem;->height:I

    int-to-float v0, p2

    const v1, 0x3eb851ec    # 0.36f

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/android/systemui/infinity/particle/GalaxyParticleSystem;->originAlphaHeight:F

    int-to-float v0, p2

    const v1, 0x3d23d70a    # 0.04f

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/android/systemui/infinity/particle/GalaxyParticleSystem;->fadeInDistance:F

    return-void
.end method

.method public onSurfaceCreated()V
    .locals 6

    iget-object v4, p0, Lcom/android/systemui/infinity/particle/GalaxyParticleSystem;->context:Landroid/content/Context;

    const v5, 0x7f110014

    invoke-static {v4, v5}, Lcom/android/systemui/infinity/common/TextResourceReader;->readTextFileFromResource(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/infinity/particle/GalaxyParticleSystem;->context:Landroid/content/Context;

    const v5, 0x7f110013

    invoke-static {v4, v5}, Lcom/android/systemui/infinity/common/TextResourceReader;->readTextFileFromResource(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v3}, Lcom/android/systemui/infinity/common/ShaderHelper;->compileVertexShader(Ljava/lang/String;)I

    move-result v2

    invoke-static {v1}, Lcom/android/systemui/infinity/common/ShaderHelper;->compileFragmentShader(Ljava/lang/String;)I

    move-result v0

    invoke-static {v2, v0}, Lcom/android/systemui/infinity/common/ShaderHelper;->linkProgram(II)I

    move-result v4

    iput v4, p0, Lcom/android/systemui/infinity/particle/GalaxyParticleSystem;->program:I

    iget v4, p0, Lcom/android/systemui/infinity/particle/GalaxyParticleSystem;->program:I

    invoke-static {v4}, Landroid/opengl/GLES20;->glUseProgram(I)V

    iget v4, p0, Lcom/android/systemui/infinity/particle/GalaxyParticleSystem;->program:I

    const-string/jumbo v5, "a_Position"

    invoke-static {v4, v5}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/android/systemui/infinity/particle/GalaxyParticleSystem;->aPositionLocation:I

    iget v4, p0, Lcom/android/systemui/infinity/particle/GalaxyParticleSystem;->program:I

    const-string/jumbo v5, "a_PointSize"

    invoke-static {v4, v5}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/android/systemui/infinity/particle/GalaxyParticleSystem;->aPointSizeLocation:I

    iget v4, p0, Lcom/android/systemui/infinity/particle/GalaxyParticleSystem;->program:I

    const-string/jumbo v5, "a_PointAlpha"

    invoke-static {v4, v5}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/android/systemui/infinity/particle/GalaxyParticleSystem;->aPointAlphaLocation:I

    iget v4, p0, Lcom/android/systemui/infinity/particle/GalaxyParticleSystem;->program:I

    const-string/jumbo v5, "a_PlusAlpha"

    invoke-static {v4, v5}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/android/systemui/infinity/particle/GalaxyParticleSystem;->aPlusAlphaLocation:I

    iget v4, p0, Lcom/android/systemui/infinity/particle/GalaxyParticleSystem;->program:I

    const-string/jumbo v5, "a_LayerIndex"

    invoke-static {v4, v5}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/android/systemui/infinity/particle/GalaxyParticleSystem;->aLayerIndexLocation:I

    iget v4, p0, Lcom/android/systemui/infinity/particle/GalaxyParticleSystem;->program:I

    const-string/jumbo v5, "u_Matrix"

    invoke-static {v4, v5}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/android/systemui/infinity/particle/GalaxyParticleSystem;->uMatrixLocation:I

    iget v4, p0, Lcom/android/systemui/infinity/particle/GalaxyParticleSystem;->program:I

    const-string/jumbo v5, "u_Alpha"

    invoke-static {v4, v5}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/android/systemui/infinity/particle/GalaxyParticleSystem;->uAlphaLocation:I

    iget v4, p0, Lcom/android/systemui/infinity/particle/GalaxyParticleSystem;->program:I

    const-string/jumbo v5, "u_PlusAlpha"

    invoke-static {v4, v5}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/android/systemui/infinity/particle/GalaxyParticleSystem;->uPlusAlphaLocation:I

    iget v4, p0, Lcom/android/systemui/infinity/particle/GalaxyParticleSystem;->program:I

    const-string/jumbo v5, "u_Move"

    invoke-static {v4, v5}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/android/systemui/infinity/particle/GalaxyParticleSystem;->uMoveLocation:I

    iget v4, p0, Lcom/android/systemui/infinity/particle/GalaxyParticleSystem;->program:I

    const-string/jumbo v5, "u_Max"

    invoke-static {v4, v5}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/android/systemui/infinity/particle/GalaxyParticleSystem;->uMaxLocation:I

    iget v4, p0, Lcom/android/systemui/infinity/particle/GalaxyParticleSystem;->program:I

    const-string/jumbo v5, "u_GradientProperty"

    invoke-static {v4, v5}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/android/systemui/infinity/particle/GalaxyParticleSystem;->uGradientPropertyLocation:I

    iget v4, p0, Lcom/android/systemui/infinity/particle/GalaxyParticleSystem;->program:I

    const-string/jumbo v5, "u_StatusBarAlpha"

    invoke-static {v4, v5}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/android/systemui/infinity/particle/GalaxyParticleSystem;->uStatusBarAlphaLocation:I

    invoke-virtual {p0}, Lcom/android/systemui/infinity/particle/GalaxyParticleSystem;->calculatePosition()V

    return-void
.end method

.method public setCurrentGyroValue(F)V
    .locals 3

    iget v1, p0, Lcom/android/systemui/infinity/particle/GalaxyParticleSystem;->maxRotateDegree:F

    mul-float v0, p1, v1

    iget-object v1, p0, Lcom/android/systemui/infinity/particle/GalaxyParticleSystem;->easingHelper:Lcom/altamirasoft/glanimationutil/GLEasingHelper;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lcom/altamirasoft/glanimationutil/GLEasingHelper;->setTargetValue(FZ)Lcom/altamirasoft/glanimationutil/GLEasingHelper;

    return-void
.end method

.method public setMaxRotateDegreeValue(F)V
    .locals 0

    iput p1, p0, Lcom/android/systemui/infinity/particle/GalaxyParticleSystem;->maxRotateDegree:F

    return-void
.end method

.method public setParticleAlpha(F)V
    .locals 0

    iput p1, p0, Lcom/android/systemui/infinity/particle/GalaxyParticleSystem;->currentParticleAlphaValue:F

    return-void
.end method

.method public setParticlePlusAlpha(F)V
    .locals 0

    iput p1, p0, Lcom/android/systemui/infinity/particle/GalaxyParticleSystem;->currentParticlePlusAlphaValue:F

    return-void
.end method

.method public setParticleSizeDegree(I)V
    .locals 2

    int-to-float v0, p1

    iget v1, p0, Lcom/android/systemui/infinity/particle/GalaxyParticleSystem;->DEFAULT_WIDTH:F

    div-float/2addr v0, v1

    iput v0, p0, Lcom/android/systemui/infinity/particle/GalaxyParticleSystem;->particleSizeDegree:F

    return-void
.end method

.method public setStatusBarFadeEnable(Z)V
    .locals 6

    iget v0, p0, Lcom/android/systemui/infinity/particle/GalaxyParticleSystem;->statusBarAlpha:F

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    const/high16 v1, 0x3f800000    # 1.0f

    :cond_0
    iget-object v2, p0, Lcom/android/systemui/infinity/particle/GalaxyParticleSystem;->statusBarAlphaAnimator:Lcom/altamirasoft/glanimationutil/GLValueAnimator;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/systemui/infinity/particle/GalaxyParticleSystem;->statusBarAlphaAnimator:Lcom/altamirasoft/glanimationutil/GLValueAnimator;

    invoke-virtual {v2}, Lcom/altamirasoft/glanimationutil/GLValueAnimator;->end()V

    :cond_1
    iget-object v2, p0, Lcom/android/systemui/infinity/particle/GalaxyParticleSystem;->renderer:Lcom/android/systemui/infinity/GalaxyRenderer;

    invoke-virtual {v2}, Lcom/android/systemui/infinity/GalaxyRenderer;->getAnimatorManager()Lcom/altamirasoft/glanimationutil/GLAnimatorManager;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lcom/altamirasoft/glanimationutil/GLAnimatorManager;->createValueAnimator(FF)Lcom/altamirasoft/glanimationutil/GLValueAnimator;

    move-result-object v2

    const-wide/16 v4, 0x3e8

    invoke-virtual {v2, v4, v5}, Lcom/altamirasoft/glanimationutil/GLValueAnimator;->setDuration(J)Lcom/altamirasoft/glanimationutil/GLValueAnimator;

    move-result-object v2

    new-instance v3, Lcom/android/systemui/infinity/particle/GalaxyParticleSystem$3;

    invoke-direct {v3, p0}, Lcom/android/systemui/infinity/particle/GalaxyParticleSystem$3;-><init>(Lcom/android/systemui/infinity/particle/GalaxyParticleSystem;)V

    invoke-virtual {v2, v3}, Lcom/altamirasoft/glanimationutil/GLValueAnimator;->addUpdateListener(Lcom/altamirasoft/glanimationutil/GLValueAnimator$AnimatorUpdateListener;)Lcom/altamirasoft/glanimationutil/GLValueAnimator;

    move-result-object v2

    new-instance v3, Lcom/samsung/android/view/animation/SineInOut90;

    invoke-direct {v3}, Lcom/samsung/android/view/animation/SineInOut90;-><init>()V

    invoke-virtual {v2, v3}, Lcom/altamirasoft/glanimationutil/GLValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Lcom/altamirasoft/glanimationutil/GLValueAnimator;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/infinity/particle/GalaxyParticleSystem;->statusBarAlphaAnimator:Lcom/altamirasoft/glanimationutil/GLValueAnimator;

    iget-object v2, p0, Lcom/android/systemui/infinity/particle/GalaxyParticleSystem;->statusBarAlphaAnimator:Lcom/altamirasoft/glanimationutil/GLValueAnimator;

    invoke-virtual {v2}, Lcom/altamirasoft/glanimationutil/GLValueAnimator;->start()V

    return-void
.end method
