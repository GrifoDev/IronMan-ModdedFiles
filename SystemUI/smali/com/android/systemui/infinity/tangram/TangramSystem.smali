.class public abstract Lcom/android/systemui/infinity/tangram/TangramSystem;
.super Ljava/lang/Object;
.source "TangramSystem.java"

# interfaces
.implements Lcom/android/systemui/infinity/GalaxyRenderLifeCycleListener;


# static fields
.field public static ONE_DIRECTION_TILT:Z


# instance fields
.field calculateHelper:Lcom/altamirasoft/glanimationutil/GLCalculateHelper;

.field context:Landroid/content/Context;

.field protected hideAnimator:Lcom/altamirasoft/glanimationutil/GLValueAnimator;

.field protected hideingProgress:F

.field ignoreGyro:Z

.field protected isLeft:Z

.field objectList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/infinity/tangram/TangramObjectInterface;",
            ">;"
        }
    .end annotation
.end field

.field protected overallAlpha:F

.field protected overallScale:F

.field renderer:Lcom/android/systemui/infinity/GalaxyRenderer;

.field screenHeight:F

.field screenWidth:F

.field protected showAnimator:Lcom/altamirasoft/glanimationutil/GLValueAnimator;

.field protected showingProgress:F

.field protected tangramList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/infinity/tangram/Tangram;",
            ">;"
        }
    .end annotation
.end field

.field protected tangramMapData:Lcom/android/systemui/infinity/tangram/TangramMapData;

.field protected targetGyroValue:F

.field protected vertexData:[[F


# direct methods
.method static synthetic -wrap0(Lcom/android/systemui/infinity/tangram/TangramSystem;F)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/infinity/tangram/TangramSystem;->setHidingProgress(F)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/systemui/infinity/tangram/TangramSystem;->ONE_DIRECTION_TILT:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/infinity/GalaxyRenderer;II)V
    .locals 37

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/high16 v7, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    iput v7, v0, Lcom/android/systemui/infinity/tangram/TangramSystem;->overallAlpha:F

    const/high16 v7, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    iput v7, v0, Lcom/android/systemui/infinity/tangram/TangramSystem;->overallScale:F

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iput v7, v0, Lcom/android/systemui/infinity/tangram/TangramSystem;->showingProgress:F

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iput v7, v0, Lcom/android/systemui/infinity/tangram/TangramSystem;->hideingProgress:F

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iput-boolean v7, v0, Lcom/android/systemui/infinity/tangram/TangramSystem;->isLeft:Z

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iput v7, v0, Lcom/android/systemui/infinity/tangram/TangramSystem;->targetGyroValue:F

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v7, v0, Lcom/android/systemui/infinity/tangram/TangramSystem;->tangramList:Ljava/util/ArrayList;

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v7, v0, Lcom/android/systemui/infinity/tangram/TangramSystem;->objectList:Ljava/util/ArrayList;

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iput-boolean v7, v0, Lcom/android/systemui/infinity/tangram/TangramSystem;->ignoreGyro:Z

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/infinity/tangram/TangramSystem;->context:Landroid/content/Context;

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/infinity/tangram/TangramSystem;->getTextureMapData()Lcom/android/systemui/infinity/tangram/TangramMapData;

    move-result-object v7

    move-object/from16 v0, p0

    iput-object v7, v0, Lcom/android/systemui/infinity/tangram/TangramSystem;->tangramMapData:Lcom/android/systemui/infinity/tangram/TangramMapData;

    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/infinity/tangram/TangramSystem;->renderer:Lcom/android/systemui/infinity/GalaxyRenderer;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/systemui/infinity/tangram/TangramSystem;->tangramMapData:Lcom/android/systemui/infinity/tangram/TangramMapData;

    iget-object v7, v7, Lcom/android/systemui/infinity/tangram/TangramMapData;->VERTEX_DATA:[[F

    move-object/from16 v0, p0

    iput-object v7, v0, Lcom/android/systemui/infinity/tangram/TangramSystem;->vertexData:[[F

    invoke-virtual/range {p2 .. p2}, Lcom/android/systemui/infinity/GalaxyRenderer;->getAnimatorManager()Lcom/altamirasoft/glanimationutil/GLAnimatorManager;

    move-result-object v7

    invoke-virtual {v7}, Lcom/altamirasoft/glanimationutil/GLAnimatorManager;->createCalculateHelper()Lcom/altamirasoft/glanimationutil/GLCalculateHelper;

    move-result-object v7

    move-object/from16 v0, p0

    iput-object v7, v0, Lcom/android/systemui/infinity/tangram/TangramSystem;->calculateHelper:Lcom/altamirasoft/glanimationutil/GLCalculateHelper;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/systemui/infinity/tangram/TangramSystem;->calculateHelper:Lcom/altamirasoft/glanimationutil/GLCalculateHelper;

    new-instance v8, Lcom/android/systemui/infinity/tangram/TangramSystem$1;

    move-object/from16 v0, p0

    invoke-direct {v8, v0}, Lcom/android/systemui/infinity/tangram/TangramSystem$1;-><init>(Lcom/android/systemui/infinity/tangram/TangramSystem;)V

    invoke-virtual {v7, v8}, Lcom/altamirasoft/glanimationutil/GLCalculateHelper;->addUpdateListener(Lcom/altamirasoft/glanimationutil/GLCalculateUpdateListener;)Lcom/altamirasoft/glanimationutil/GLCalculateHelper;

    const/high16 v7, 0x44b40000    # 1440.0f

    move-object/from16 v0, p0

    iput v7, v0, Lcom/android/systemui/infinity/tangram/TangramSystem;->screenWidth:F

    const/high16 v7, 0x45390000    # 2960.0f

    move-object/from16 v0, p0

    iput v7, v0, Lcom/android/systemui/infinity/tangram/TangramSystem;->screenHeight:F

    invoke-virtual/range {p2 .. p2}, Lcom/android/systemui/infinity/GalaxyRenderer;->getMapDataManager()Lcom/android/systemui/infinity/tangram/TangramMapDataManager;

    move-result-object v7

    move/from16 v0, p4

    invoke-virtual {v7, v0}, Lcom/android/systemui/infinity/tangram/TangramMapDataManager;->loadData(I)Lcom/android/systemui/infinity/tangram/TangramMapJsonModel;

    move-result-object v34

    const/16 v29, 0x0

    :goto_0
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/systemui/infinity/tangram/TangramSystem;->tangramMapData:Lcom/android/systemui/infinity/tangram/TangramMapData;

    iget-object v7, v7, Lcom/android/systemui/infinity/tangram/TangramMapData;->layerName:[Ljava/lang/String;

    array-length v7, v7

    move/from16 v0, v29

    if-ge v0, v7, :cond_1

    const/16 v32, 0x0

    const/16 v31, 0x0

    const/16 v33, 0x0

    const/16 v36, 0x0

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/systemui/infinity/tangram/TangramSystem;->tangramMapData:Lcom/android/systemui/infinity/tangram/TangramMapData;

    iget-object v7, v7, Lcom/android/systemui/infinity/tangram/TangramMapData;->mapMaskFileName:[Ljava/lang/String;

    aget-object v7, v7, v29

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_0

    invoke-virtual/range {p2 .. p2}, Lcom/android/systemui/infinity/GalaxyRenderer;->getMapDataManager()Lcom/android/systemui/infinity/tangram/TangramMapDataManager;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/systemui/infinity/tangram/TangramSystem;->tangramMapData:Lcom/android/systemui/infinity/tangram/TangramMapData;

    iget-object v8, v8, Lcom/android/systemui/infinity/tangram/TangramMapData;->mapLayerFileName:[Ljava/lang/String;

    aget-object v8, v8, v29

    invoke-virtual {v7, v8}, Lcom/android/systemui/infinity/tangram/TangramMapDataManager;->getFrame(Ljava/lang/String;)Lcom/android/systemui/infinity/tangram/TangramMapModel;

    move-result-object v30

    invoke-virtual/range {p2 .. p2}, Lcom/android/systemui/infinity/GalaxyRenderer;->getMapDataManager()Lcom/android/systemui/infinity/tangram/TangramMapDataManager;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/systemui/infinity/tangram/TangramSystem;->tangramMapData:Lcom/android/systemui/infinity/tangram/TangramMapData;

    iget-object v8, v8, Lcom/android/systemui/infinity/tangram/TangramMapData;->mapMaskFileName:[Ljava/lang/String;

    aget-object v8, v8, v29

    invoke-virtual {v7, v8}, Lcom/android/systemui/infinity/tangram/TangramMapDataManager;->getFrame(Ljava/lang/String;)Lcom/android/systemui/infinity/tangram/TangramMapModel;

    move-result-object v35

    new-instance v2, Lcom/android/systemui/infinity/tangram/TangramSingleDrawLayer;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/systemui/infinity/tangram/TangramSystem;->tangramMapData:Lcom/android/systemui/infinity/tangram/TangramMapData;

    iget-object v7, v7, Lcom/android/systemui/infinity/tangram/TangramMapData;->layerSize:[[F

    aget-object v7, v7, v29

    const/4 v8, 0x0

    aget v6, v7, v8

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/systemui/infinity/tangram/TangramSystem;->tangramMapData:Lcom/android/systemui/infinity/tangram/TangramMapData;

    iget-object v7, v7, Lcom/android/systemui/infinity/tangram/TangramMapData;->layerSize:[[F

    aget-object v7, v7, v29

    const/4 v8, 0x1

    aget v7, v7, v8

    move-object/from16 v0, v30

    iget-boolean v10, v0, Lcom/android/systemui/infinity/tangram/TangramMapModel;->rotated:Z

    move-object/from16 v0, v30

    iget-object v8, v0, Lcom/android/systemui/infinity/tangram/TangramMapModel;->frame:Lcom/android/systemui/infinity/tangram/TangramMapFrameModel;

    iget v11, v8, Lcom/android/systemui/infinity/tangram/TangramMapFrameModel;->w:F

    move-object/from16 v0, v30

    iget-object v8, v0, Lcom/android/systemui/infinity/tangram/TangramMapModel;->frame:Lcom/android/systemui/infinity/tangram/TangramMapFrameModel;

    iget v12, v8, Lcom/android/systemui/infinity/tangram/TangramMapFrameModel;->h:F

    move-object/from16 v0, v30

    iget-object v8, v0, Lcom/android/systemui/infinity/tangram/TangramMapModel;->frame:Lcom/android/systemui/infinity/tangram/TangramMapFrameModel;

    iget v13, v8, Lcom/android/systemui/infinity/tangram/TangramMapFrameModel;->x:F

    move-object/from16 v0, v30

    iget-object v8, v0, Lcom/android/systemui/infinity/tangram/TangramMapModel;->frame:Lcom/android/systemui/infinity/tangram/TangramMapFrameModel;

    iget v14, v8, Lcom/android/systemui/infinity/tangram/TangramMapFrameModel;->y:F

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/systemui/infinity/tangram/TangramSystem;->tangramMapData:Lcom/android/systemui/infinity/tangram/TangramMapData;

    iget-object v8, v8, Lcom/android/systemui/infinity/tangram/TangramMapData;->maskSize:[[F

    aget-object v8, v8, v29

    const/4 v9, 0x0

    aget v15, v8, v9

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/systemui/infinity/tangram/TangramSystem;->tangramMapData:Lcom/android/systemui/infinity/tangram/TangramMapData;

    iget-object v8, v8, Lcom/android/systemui/infinity/tangram/TangramMapData;->maskSize:[[F

    aget-object v8, v8, v29

    const/4 v9, 0x1

    aget v16, v8, v9

    move-object/from16 v0, v35

    iget-boolean v0, v0, Lcom/android/systemui/infinity/tangram/TangramMapModel;->rotated:Z

    move/from16 v19, v0

    move-object/from16 v0, v35

    iget-object v8, v0, Lcom/android/systemui/infinity/tangram/TangramMapModel;->frame:Lcom/android/systemui/infinity/tangram/TangramMapFrameModel;

    iget v0, v8, Lcom/android/systemui/infinity/tangram/TangramMapFrameModel;->w:F

    move/from16 v20, v0

    move-object/from16 v0, v35

    iget-object v8, v0, Lcom/android/systemui/infinity/tangram/TangramMapModel;->frame:Lcom/android/systemui/infinity/tangram/TangramMapFrameModel;

    iget v0, v8, Lcom/android/systemui/infinity/tangram/TangramMapFrameModel;->h:F

    move/from16 v21, v0

    move-object/from16 v0, v35

    iget-object v8, v0, Lcom/android/systemui/infinity/tangram/TangramMapModel;->frame:Lcom/android/systemui/infinity/tangram/TangramMapFrameModel;

    iget v0, v8, Lcom/android/systemui/infinity/tangram/TangramMapFrameModel;->x:F

    move/from16 v22, v0

    move-object/from16 v0, v35

    iget-object v8, v0, Lcom/android/systemui/infinity/tangram/TangramMapModel;->frame:Lcom/android/systemui/infinity/tangram/TangramMapFrameModel;

    iget v0, v8, Lcom/android/systemui/infinity/tangram/TangramMapFrameModel;->y:F

    move/from16 v23, v0

    move-object/from16 v0, v34

    iget-object v8, v0, Lcom/android/systemui/infinity/tangram/TangramMapJsonModel;->meta:Lcom/android/systemui/infinity/tangram/TangramMapMetaModel;

    iget-object v8, v8, Lcom/android/systemui/infinity/tangram/TangramMapMetaModel;->size:Lcom/android/systemui/infinity/tangram/TangramMapFrameModel;

    iget v0, v8, Lcom/android/systemui/infinity/tangram/TangramMapFrameModel;->w:F

    move/from16 v24, v0

    move-object/from16 v0, v34

    iget-object v8, v0, Lcom/android/systemui/infinity/tangram/TangramMapJsonModel;->meta:Lcom/android/systemui/infinity/tangram/TangramMapMetaModel;

    iget-object v8, v8, Lcom/android/systemui/infinity/tangram/TangramMapMetaModel;->size:Lcom/android/systemui/infinity/tangram/TangramMapFrameModel;

    iget v0, v8, Lcom/android/systemui/infinity/tangram/TangramMapFrameModel;->h:F

    move/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/systemui/infinity/tangram/TangramSystem;->tangramMapData:Lcom/android/systemui/infinity/tangram/TangramMapData;

    iget-object v8, v8, Lcom/android/systemui/infinity/tangram/TangramMapData;->maskMoveDistance:[[F

    aget-object v8, v8, v29

    const/4 v9, 0x0

    aget v26, v8, v9

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/systemui/infinity/tangram/TangramSystem;->tangramMapData:Lcom/android/systemui/infinity/tangram/TangramMapData;

    iget-object v8, v8, Lcom/android/systemui/infinity/tangram/TangramMapData;->maskMoveDistance:[[F

    aget-object v8, v8, v29

    const/4 v9, 0x1

    aget v27, v8, v9

    const/high16 v8, 0x44b40000    # 1440.0f

    const/high16 v9, 0x44b40000    # 1440.0f

    const/high16 v17, 0x44b40000    # 1440.0f

    const/high16 v18, 0x44b40000    # 1440.0f

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move/from16 v5, p3

    invoke-direct/range {v2 .. v27}, Lcom/android/systemui/infinity/tangram/TangramSingleDrawLayer;-><init>(Landroid/content/Context;Lcom/android/systemui/infinity/GalaxyRenderer;IFFFFZFFFFFFFFZFFFFFFFF)V

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/systemui/infinity/tangram/TangramSystem;->objectList:Ljava/util/ArrayList;

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_1
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/systemui/infinity/tangram/TangramSystem;->tangramMapData:Lcom/android/systemui/infinity/tangram/TangramMapData;

    iget-object v7, v7, Lcom/android/systemui/infinity/tangram/TangramMapData;->bottomLayerImage:[Z

    aget-boolean v7, v7, v29

    if-eqz v7, :cond_4

    invoke-virtual/range {p2 .. p2}, Lcom/android/systemui/infinity/GalaxyRenderer;->getMapDataManager()Lcom/android/systemui/infinity/tangram/TangramMapDataManager;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/systemui/infinity/tangram/TangramSystem;->tangramMapData:Lcom/android/systemui/infinity/tangram/TangramMapData;

    iget-object v8, v8, Lcom/android/systemui/infinity/tangram/TangramMapData;->mapLayerFileName:[Ljava/lang/String;

    aget-object v8, v8, v29

    invoke-virtual {v7, v8}, Lcom/android/systemui/infinity/tangram/TangramMapDataManager;->getFrame(Ljava/lang/String;)Lcom/android/systemui/infinity/tangram/TangramMapModel;

    move-result-object v28

    new-instance v3, Lcom/android/systemui/infinity/tangram/TangramObjectMergedLayer;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/systemui/infinity/tangram/TangramSystem;->tangramMapData:Lcom/android/systemui/infinity/tangram/TangramMapData;

    iget-object v7, v7, Lcom/android/systemui/infinity/tangram/TangramMapData;->layerSize:[[F

    aget-object v7, v7, v29

    const/4 v8, 0x0

    aget v7, v7, v8

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/systemui/infinity/tangram/TangramSystem;->tangramMapData:Lcom/android/systemui/infinity/tangram/TangramMapData;

    iget-object v8, v8, Lcom/android/systemui/infinity/tangram/TangramMapData;->layerSize:[[F

    aget-object v8, v8, v29

    const/4 v9, 0x1

    aget v8, v8, v9

    move-object/from16 v0, v28

    iget-boolean v11, v0, Lcom/android/systemui/infinity/tangram/TangramMapModel;->rotated:Z

    move-object/from16 v0, v28

    iget-object v9, v0, Lcom/android/systemui/infinity/tangram/TangramMapModel;->frame:Lcom/android/systemui/infinity/tangram/TangramMapFrameModel;

    iget v12, v9, Lcom/android/systemui/infinity/tangram/TangramMapFrameModel;->w:F

    move-object/from16 v0, v28

    iget-object v9, v0, Lcom/android/systemui/infinity/tangram/TangramMapModel;->frame:Lcom/android/systemui/infinity/tangram/TangramMapFrameModel;

    iget v13, v9, Lcom/android/systemui/infinity/tangram/TangramMapFrameModel;->h:F

    move-object/from16 v0, v28

    iget-object v9, v0, Lcom/android/systemui/infinity/tangram/TangramMapModel;->frame:Lcom/android/systemui/infinity/tangram/TangramMapFrameModel;

    iget v14, v9, Lcom/android/systemui/infinity/tangram/TangramMapFrameModel;->x:F

    move-object/from16 v0, v28

    iget-object v9, v0, Lcom/android/systemui/infinity/tangram/TangramMapModel;->frame:Lcom/android/systemui/infinity/tangram/TangramMapFrameModel;

    iget v15, v9, Lcom/android/systemui/infinity/tangram/TangramMapFrameModel;->y:F

    move-object/from16 v0, v34

    iget-object v9, v0, Lcom/android/systemui/infinity/tangram/TangramMapJsonModel;->meta:Lcom/android/systemui/infinity/tangram/TangramMapMetaModel;

    iget-object v9, v9, Lcom/android/systemui/infinity/tangram/TangramMapMetaModel;->size:Lcom/android/systemui/infinity/tangram/TangramMapFrameModel;

    iget v0, v9, Lcom/android/systemui/infinity/tangram/TangramMapFrameModel;->w:F

    move/from16 v16, v0

    move-object/from16 v0, v34

    iget-object v9, v0, Lcom/android/systemui/infinity/tangram/TangramMapJsonModel;->meta:Lcom/android/systemui/infinity/tangram/TangramMapMetaModel;

    iget-object v9, v9, Lcom/android/systemui/infinity/tangram/TangramMapMetaModel;->size:Lcom/android/systemui/infinity/tangram/TangramMapFrameModel;

    iget v0, v9, Lcom/android/systemui/infinity/tangram/TangramMapFrameModel;->h:F

    move/from16 v17, v0

    const/high16 v9, 0x44b40000    # 1440.0f

    const/high16 v10, 0x44b40000    # 1440.0f

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move/from16 v6, p3

    invoke-direct/range {v3 .. v17}, Lcom/android/systemui/infinity/tangram/TangramObjectMergedLayer;-><init>(Landroid/content/Context;Lcom/android/systemui/infinity/GalaxyRenderer;IFFFFZFFFFFF)V

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/systemui/infinity/tangram/TangramSystem;->objectList:Ljava/util/ArrayList;

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_2
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/systemui/infinity/tangram/TangramSystem;->tangramMapData:Lcom/android/systemui/infinity/tangram/TangramMapData;

    iget-object v7, v7, Lcom/android/systemui/infinity/tangram/TangramMapData;->mapLeftFileName:[Ljava/lang/String;

    aget-object v7, v7, v29

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_3

    invoke-virtual/range {p2 .. p2}, Lcom/android/systemui/infinity/GalaxyRenderer;->getMapDataManager()Lcom/android/systemui/infinity/tangram/TangramMapDataManager;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/systemui/infinity/tangram/TangramSystem;->tangramMapData:Lcom/android/systemui/infinity/tangram/TangramMapData;

    iget-object v8, v8, Lcom/android/systemui/infinity/tangram/TangramMapData;->mapLeftFileName:[Ljava/lang/String;

    aget-object v8, v8, v29

    invoke-virtual {v7, v8}, Lcom/android/systemui/infinity/tangram/TangramMapDataManager;->getFrame(Ljava/lang/String;)Lcom/android/systemui/infinity/tangram/TangramMapModel;

    move-result-object v28

    new-instance v4, Lcom/android/systemui/infinity/tangram/TangramObjectMergedLayer;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/systemui/infinity/tangram/TangramSystem;->tangramMapData:Lcom/android/systemui/infinity/tangram/TangramMapData;

    iget-object v7, v7, Lcom/android/systemui/infinity/tangram/TangramMapData;->layerSize:[[F

    aget-object v7, v7, v29

    const/4 v8, 0x0

    aget v8, v7, v8

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/systemui/infinity/tangram/TangramSystem;->tangramMapData:Lcom/android/systemui/infinity/tangram/TangramMapData;

    iget-object v7, v7, Lcom/android/systemui/infinity/tangram/TangramMapData;->layerSize:[[F

    aget-object v7, v7, v29

    const/4 v9, 0x1

    aget v9, v7, v9

    move-object/from16 v0, v28

    iget-boolean v12, v0, Lcom/android/systemui/infinity/tangram/TangramMapModel;->rotated:Z

    move-object/from16 v0, v28

    iget-object v7, v0, Lcom/android/systemui/infinity/tangram/TangramMapModel;->frame:Lcom/android/systemui/infinity/tangram/TangramMapFrameModel;

    iget v13, v7, Lcom/android/systemui/infinity/tangram/TangramMapFrameModel;->w:F

    move-object/from16 v0, v28

    iget-object v7, v0, Lcom/android/systemui/infinity/tangram/TangramMapModel;->frame:Lcom/android/systemui/infinity/tangram/TangramMapFrameModel;

    iget v14, v7, Lcom/android/systemui/infinity/tangram/TangramMapFrameModel;->h:F

    move-object/from16 v0, v28

    iget-object v7, v0, Lcom/android/systemui/infinity/tangram/TangramMapModel;->frame:Lcom/android/systemui/infinity/tangram/TangramMapFrameModel;

    iget v15, v7, Lcom/android/systemui/infinity/tangram/TangramMapFrameModel;->x:F

    move-object/from16 v0, v28

    iget-object v7, v0, Lcom/android/systemui/infinity/tangram/TangramMapModel;->frame:Lcom/android/systemui/infinity/tangram/TangramMapFrameModel;

    iget v0, v7, Lcom/android/systemui/infinity/tangram/TangramMapFrameModel;->y:F

    move/from16 v16, v0

    move-object/from16 v0, v34

    iget-object v7, v0, Lcom/android/systemui/infinity/tangram/TangramMapJsonModel;->meta:Lcom/android/systemui/infinity/tangram/TangramMapMetaModel;

    iget-object v7, v7, Lcom/android/systemui/infinity/tangram/TangramMapMetaModel;->size:Lcom/android/systemui/infinity/tangram/TangramMapFrameModel;

    iget v0, v7, Lcom/android/systemui/infinity/tangram/TangramMapFrameModel;->w:F

    move/from16 v17, v0

    move-object/from16 v0, v34

    iget-object v7, v0, Lcom/android/systemui/infinity/tangram/TangramMapJsonModel;->meta:Lcom/android/systemui/infinity/tangram/TangramMapMetaModel;

    iget-object v7, v7, Lcom/android/systemui/infinity/tangram/TangramMapMetaModel;->size:Lcom/android/systemui/infinity/tangram/TangramMapFrameModel;

    iget v0, v7, Lcom/android/systemui/infinity/tangram/TangramMapFrameModel;->h:F

    move/from16 v18, v0

    const/high16 v10, 0x44b40000    # 1440.0f

    const/high16 v11, 0x44b40000    # 1440.0f

    move-object/from16 v5, p1

    move-object/from16 v6, p2

    move/from16 v7, p3

    invoke-direct/range {v4 .. v18}, Lcom/android/systemui/infinity/tangram/TangramObjectMergedLayer;-><init>(Landroid/content/Context;Lcom/android/systemui/infinity/GalaxyRenderer;IFFFFZFFFFFF)V

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/systemui/infinity/tangram/TangramSystem;->objectList:Ljava/util/ArrayList;

    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_3
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/systemui/infinity/tangram/TangramSystem;->tangramMapData:Lcom/android/systemui/infinity/tangram/TangramMapData;

    iget-object v7, v7, Lcom/android/systemui/infinity/tangram/TangramMapData;->mapRightFileName:[Ljava/lang/String;

    aget-object v7, v7, v29

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_2

    invoke-virtual/range {p2 .. p2}, Lcom/android/systemui/infinity/GalaxyRenderer;->getMapDataManager()Lcom/android/systemui/infinity/tangram/TangramMapDataManager;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/systemui/infinity/tangram/TangramSystem;->tangramMapData:Lcom/android/systemui/infinity/tangram/TangramMapData;

    iget-object v8, v8, Lcom/android/systemui/infinity/tangram/TangramMapData;->mapRightFileName:[Ljava/lang/String;

    aget-object v8, v8, v29

    invoke-virtual {v7, v8}, Lcom/android/systemui/infinity/tangram/TangramMapDataManager;->getFrame(Ljava/lang/String;)Lcom/android/systemui/infinity/tangram/TangramMapModel;

    move-result-object v28

    new-instance v5, Lcom/android/systemui/infinity/tangram/TangramObjectMergedLayer;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/systemui/infinity/tangram/TangramSystem;->tangramMapData:Lcom/android/systemui/infinity/tangram/TangramMapData;

    iget-object v7, v7, Lcom/android/systemui/infinity/tangram/TangramMapData;->layerSize:[[F

    aget-object v7, v7, v29

    const/4 v8, 0x0

    aget v9, v7, v8

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/systemui/infinity/tangram/TangramSystem;->tangramMapData:Lcom/android/systemui/infinity/tangram/TangramMapData;

    iget-object v7, v7, Lcom/android/systemui/infinity/tangram/TangramMapData;->layerSize:[[F

    aget-object v7, v7, v29

    const/4 v8, 0x1

    aget v10, v7, v8

    move-object/from16 v0, v28

    iget-boolean v13, v0, Lcom/android/systemui/infinity/tangram/TangramMapModel;->rotated:Z

    move-object/from16 v0, v28

    iget-object v7, v0, Lcom/android/systemui/infinity/tangram/TangramMapModel;->frame:Lcom/android/systemui/infinity/tangram/TangramMapFrameModel;

    iget v14, v7, Lcom/android/systemui/infinity/tangram/TangramMapFrameModel;->w:F

    move-object/from16 v0, v28

    iget-object v7, v0, Lcom/android/systemui/infinity/tangram/TangramMapModel;->frame:Lcom/android/systemui/infinity/tangram/TangramMapFrameModel;

    iget v15, v7, Lcom/android/systemui/infinity/tangram/TangramMapFrameModel;->h:F

    move-object/from16 v0, v28

    iget-object v7, v0, Lcom/android/systemui/infinity/tangram/TangramMapModel;->frame:Lcom/android/systemui/infinity/tangram/TangramMapFrameModel;

    iget v0, v7, Lcom/android/systemui/infinity/tangram/TangramMapFrameModel;->x:F

    move/from16 v16, v0

    move-object/from16 v0, v28

    iget-object v7, v0, Lcom/android/systemui/infinity/tangram/TangramMapModel;->frame:Lcom/android/systemui/infinity/tangram/TangramMapFrameModel;

    iget v0, v7, Lcom/android/systemui/infinity/tangram/TangramMapFrameModel;->y:F

    move/from16 v17, v0

    move-object/from16 v0, v34

    iget-object v7, v0, Lcom/android/systemui/infinity/tangram/TangramMapJsonModel;->meta:Lcom/android/systemui/infinity/tangram/TangramMapMetaModel;

    iget-object v7, v7, Lcom/android/systemui/infinity/tangram/TangramMapMetaModel;->size:Lcom/android/systemui/infinity/tangram/TangramMapFrameModel;

    iget v0, v7, Lcom/android/systemui/infinity/tangram/TangramMapFrameModel;->w:F

    move/from16 v18, v0

    move-object/from16 v0, v34

    iget-object v7, v0, Lcom/android/systemui/infinity/tangram/TangramMapJsonModel;->meta:Lcom/android/systemui/infinity/tangram/TangramMapMetaModel;

    iget-object v7, v7, Lcom/android/systemui/infinity/tangram/TangramMapMetaModel;->size:Lcom/android/systemui/infinity/tangram/TangramMapFrameModel;

    iget v0, v7, Lcom/android/systemui/infinity/tangram/TangramMapFrameModel;->h:F

    move/from16 v19, v0

    const/high16 v11, 0x44b40000    # 1440.0f

    const/high16 v12, 0x44b40000    # 1440.0f

    move-object/from16 v6, p1

    move-object/from16 v7, p2

    move/from16 v8, p3

    invoke-direct/range {v5 .. v19}, Lcom/android/systemui/infinity/tangram/TangramObjectMergedLayer;-><init>(Landroid/content/Context;Lcom/android/systemui/infinity/GalaxyRenderer;IFFFFZFFFFFF)V

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/systemui/infinity/tangram/TangramSystem;->objectList:Ljava/util/ArrayList;

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_4
    new-instance v6, Lcom/android/systemui/infinity/tangram/Tangram;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/systemui/infinity/tangram/TangramSystem;->tangramMapData:Lcom/android/systemui/infinity/tangram/TangramMapData;

    iget-object v7, v7, Lcom/android/systemui/infinity/tangram/TangramMapData;->layerName:[Ljava/lang/String;

    aget-object v7, v7, v29

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/systemui/infinity/tangram/TangramSystem;->tangramMapData:Lcom/android/systemui/infinity/tangram/TangramMapData;

    iget-object v8, v8, Lcom/android/systemui/infinity/tangram/TangramMapData;->bottomLayerImage:[Z

    aget-boolean v8, v8, v29

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/systemui/infinity/tangram/TangramSystem;->tangramMapData:Lcom/android/systemui/infinity/tangram/TangramMapData;

    iget-object v9, v9, Lcom/android/systemui/infinity/tangram/TangramMapData;->layerFixAlpha:[F

    aget v9, v9, v29

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/systemui/infinity/tangram/TangramSystem;->tangramMapData:Lcom/android/systemui/infinity/tangram/TangramMapData;

    iget-object v10, v10, Lcom/android/systemui/infinity/tangram/TangramMapData;->layerPosition:[[F

    aget-object v10, v10, v29

    const/4 v11, 0x0

    aget v10, v10, v11

    const/high16 v11, 0x45390000    # 2960.0f

    const/high16 v12, 0x44b40000    # 1440.0f

    invoke-static {v10, v12, v11}, Lcom/android/systemui/infinity/util/DPUtil;->absolutToRelativeX(FFF)F

    move-result v10

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/systemui/infinity/tangram/TangramSystem;->tangramMapData:Lcom/android/systemui/infinity/tangram/TangramMapData;

    iget-object v11, v11, Lcom/android/systemui/infinity/tangram/TangramMapData;->layerPosition:[[F

    aget-object v11, v11, v29

    const/4 v12, 0x1

    aget v11, v11, v12

    const/high16 v12, 0x44b40000    # 1440.0f

    const/high16 v13, 0x45390000    # 2960.0f

    invoke-static {v11, v12, v13}, Lcom/android/systemui/infinity/util/DPUtil;->absolutToRelativeY(FFF)F

    move-result v11

    neg-float v11, v11

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/infinity/tangram/TangramSystem;->tangramMapData:Lcom/android/systemui/infinity/tangram/TangramMapData;

    iget-object v12, v12, Lcom/android/systemui/infinity/tangram/TangramMapData;->initTranslation:[[F

    aget-object v12, v12, v29

    const/4 v13, 0x0

    aget v12, v12, v13

    move-object/from16 v0, p1

    invoke-static {v0, v12}, Lcom/android/systemui/infinity/util/DPUtil;->dpToPx(Landroid/content/Context;F)I

    move-result v12

    int-to-float v12, v12

    const/high16 v13, 0x44b40000    # 1440.0f

    div-float/2addr v12, v13

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/infinity/tangram/TangramSystem;->tangramMapData:Lcom/android/systemui/infinity/tangram/TangramMapData;

    iget-object v13, v13, Lcom/android/systemui/infinity/tangram/TangramMapData;->initTranslation:[[F

    aget-object v13, v13, v29

    const/4 v14, 0x1

    aget v13, v13, v14

    move-object/from16 v0, p1

    invoke-static {v0, v13}, Lcom/android/systemui/infinity/util/DPUtil;->dpToPx(Landroid/content/Context;F)I

    move-result v13

    int-to-float v13, v13

    const/high16 v14, 0x44b40000    # 1440.0f

    div-float/2addr v13, v14

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/infinity/tangram/TangramSystem;->tangramMapData:Lcom/android/systemui/infinity/tangram/TangramMapData;

    iget-object v14, v14, Lcom/android/systemui/infinity/tangram/TangramMapData;->endTranslation:[[F

    aget-object v14, v14, v29

    const/4 v15, 0x1

    aget v14, v14, v15

    move-object/from16 v0, p1

    invoke-static {v0, v14}, Lcom/android/systemui/infinity/util/DPUtil;->dpToPx(Landroid/content/Context;F)I

    move-result v14

    int-to-float v14, v14

    const/high16 v15, 0x44b40000    # 1440.0f

    div-float/2addr v14, v15

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/infinity/tangram/TangramSystem;->tangramMapData:Lcom/android/systemui/infinity/tangram/TangramMapData;

    iget-object v15, v15, Lcom/android/systemui/infinity/tangram/TangramMapData;->endTranslation:[[F

    aget-object v15, v15, v29

    const/16 v16, 0x1

    aget v15, v15, v16

    move-object/from16 v0, p1

    invoke-static {v0, v15}, Lcom/android/systemui/infinity/util/DPUtil;->dpToPx(Landroid/content/Context;F)I

    move-result v15

    int-to-float v15, v15

    const/high16 v16, 0x44b40000    # 1440.0f

    div-float v15, v15, v16

    move-object/from16 v16, v2

    move-object/from16 v17, v32

    move-object/from16 v18, v3

    move-object/from16 v19, v4

    move-object/from16 v20, v5

    invoke-direct/range {v6 .. v20}, Lcom/android/systemui/infinity/tangram/Tangram;-><init>(Ljava/lang/String;ZFFFFFFFLcom/android/systemui/infinity/tangram/TangramObjectInterface;Lcom/android/systemui/infinity/tangram/TangramObjectInterface;Lcom/android/systemui/infinity/tangram/TangramObjectInterface;Lcom/android/systemui/infinity/tangram/TangramObjectInterface;Lcom/android/systemui/infinity/tangram/TangramObjectInterface;)V

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/systemui/infinity/tangram/TangramSystem;->tangramList:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v29, v29, 0x1

    goto/16 :goto_0

    :cond_0
    invoke-virtual/range {p2 .. p2}, Lcom/android/systemui/infinity/GalaxyRenderer;->getMapDataManager()Lcom/android/systemui/infinity/tangram/TangramMapDataManager;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/systemui/infinity/tangram/TangramSystem;->tangramMapData:Lcom/android/systemui/infinity/tangram/TangramMapData;

    iget-object v8, v8, Lcom/android/systemui/infinity/tangram/TangramMapData;->mapLayerFileName:[Ljava/lang/String;

    aget-object v8, v8, v29

    invoke-virtual {v7, v8}, Lcom/android/systemui/infinity/tangram/TangramMapDataManager;->getFrame(Ljava/lang/String;)Lcom/android/systemui/infinity/tangram/TangramMapModel;

    move-result-object v28

    new-instance v2, Lcom/android/systemui/infinity/tangram/TangramObjectMergedLayer;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/systemui/infinity/tangram/TangramSystem;->tangramMapData:Lcom/android/systemui/infinity/tangram/TangramMapData;

    iget-object v7, v7, Lcom/android/systemui/infinity/tangram/TangramMapData;->layerSize:[[F

    aget-object v7, v7, v29

    const/4 v8, 0x0

    aget v6, v7, v8

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/systemui/infinity/tangram/TangramSystem;->tangramMapData:Lcom/android/systemui/infinity/tangram/TangramMapData;

    iget-object v7, v7, Lcom/android/systemui/infinity/tangram/TangramMapData;->layerSize:[[F

    aget-object v7, v7, v29

    const/4 v8, 0x1

    aget v7, v7, v8

    move-object/from16 v0, v28

    iget-boolean v10, v0, Lcom/android/systemui/infinity/tangram/TangramMapModel;->rotated:Z

    move-object/from16 v0, v28

    iget-object v8, v0, Lcom/android/systemui/infinity/tangram/TangramMapModel;->frame:Lcom/android/systemui/infinity/tangram/TangramMapFrameModel;

    iget v11, v8, Lcom/android/systemui/infinity/tangram/TangramMapFrameModel;->w:F

    move-object/from16 v0, v28

    iget-object v8, v0, Lcom/android/systemui/infinity/tangram/TangramMapModel;->frame:Lcom/android/systemui/infinity/tangram/TangramMapFrameModel;

    iget v12, v8, Lcom/android/systemui/infinity/tangram/TangramMapFrameModel;->h:F

    move-object/from16 v0, v28

    iget-object v8, v0, Lcom/android/systemui/infinity/tangram/TangramMapModel;->frame:Lcom/android/systemui/infinity/tangram/TangramMapFrameModel;

    iget v13, v8, Lcom/android/systemui/infinity/tangram/TangramMapFrameModel;->x:F

    move-object/from16 v0, v28

    iget-object v8, v0, Lcom/android/systemui/infinity/tangram/TangramMapModel;->frame:Lcom/android/systemui/infinity/tangram/TangramMapFrameModel;

    iget v14, v8, Lcom/android/systemui/infinity/tangram/TangramMapFrameModel;->y:F

    move-object/from16 v0, v34

    iget-object v8, v0, Lcom/android/systemui/infinity/tangram/TangramMapJsonModel;->meta:Lcom/android/systemui/infinity/tangram/TangramMapMetaModel;

    iget-object v8, v8, Lcom/android/systemui/infinity/tangram/TangramMapMetaModel;->size:Lcom/android/systemui/infinity/tangram/TangramMapFrameModel;

    iget v15, v8, Lcom/android/systemui/infinity/tangram/TangramMapFrameModel;->w:F

    move-object/from16 v0, v34

    iget-object v8, v0, Lcom/android/systemui/infinity/tangram/TangramMapJsonModel;->meta:Lcom/android/systemui/infinity/tangram/TangramMapMetaModel;

    iget-object v8, v8, Lcom/android/systemui/infinity/tangram/TangramMapMetaModel;->size:Lcom/android/systemui/infinity/tangram/TangramMapFrameModel;

    iget v0, v8, Lcom/android/systemui/infinity/tangram/TangramMapFrameModel;->h:F

    move/from16 v16, v0

    const/high16 v8, 0x44b40000    # 1440.0f

    const/high16 v9, 0x44b40000    # 1440.0f

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move/from16 v5, p3

    invoke-direct/range {v2 .. v16}, Lcom/android/systemui/infinity/tangram/TangramObjectMergedLayer;-><init>(Landroid/content/Context;Lcom/android/systemui/infinity/GalaxyRenderer;IFFFFZFFFFFF)V

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/systemui/infinity/tangram/TangramSystem;->objectList:Ljava/util/ArrayList;

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :cond_1
    return-void

    :cond_2
    move-object/from16 v5, v36

    goto/16 :goto_4

    :cond_3
    move-object/from16 v4, v33

    goto/16 :goto_3

    :cond_4
    move-object/from16 v3, v31

    goto/16 :goto_2
.end method

.method private resetHiding()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/systemui/infinity/tangram/TangramSystem;->setHidingProgress(F)V

    return-void
.end method

.method private resetShowing()V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/systemui/infinity/tangram/TangramSystem;->tangramList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/infinity/tangram/TangramSystem;->tangramList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/infinity/tangram/Tangram;

    const/4 v2, 0x0

    iput v2, v1, Lcom/android/systemui/infinity/tangram/Tangram;->showingProgress:F

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private setHidingProgress(F)V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/systemui/infinity/tangram/TangramSystem;->tangramList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/infinity/tangram/TangramSystem;->tangramList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/infinity/tangram/Tangram;

    iput p1, v1, Lcom/android/systemui/infinity/tangram/Tangram;->hideingProgress:F

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public checkFinishTiltEasing(Lcom/android/systemui/infinity/tangram/Tangram;Lcom/android/systemui/infinity/tangram/Tangram;)V
    .locals 3

    iget v1, p1, Lcom/android/systemui/infinity/tangram/Tangram;->gyroValue:F

    iget v2, p2, Lcom/android/systemui/infinity/tangram/Tangram;->gyroValue:F

    sub-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const v1, 0x3a83126f    # 0.001f

    cmpg-float v1, v0, v1

    if-gez v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/infinity/tangram/TangramSystem;->calculateHelper:Lcom/altamirasoft/glanimationutil/GLCalculateHelper;

    invoke-virtual {v1}, Lcom/altamirasoft/glanimationutil/GLCalculateHelper;->pause()V

    iget-object v1, p0, Lcom/android/systemui/infinity/tangram/TangramSystem;->renderer:Lcom/android/systemui/infinity/GalaxyRenderer;

    invoke-virtual {v1}, Lcom/android/systemui/infinity/GalaxyRenderer;->getAnimatorManager()Lcom/altamirasoft/glanimationutil/GLAnimatorManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/altamirasoft/glanimationutil/GLAnimatorManager;->stopIfNoNeedUpdate()V

    :cond_0
    return-void
.end method

.method protected checkIsDoneShowing()Z
    .locals 4

    const/4 v1, 0x1

    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lcom/android/systemui/infinity/tangram/TangramSystem;->tangramList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    iget-object v2, p0, Lcom/android/systemui/infinity/tangram/TangramSystem;->tangramList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/infinity/tangram/Tangram;

    iget v2, v2, Lcom/android/systemui/infinity/tangram/Tangram;->showingProgress:F

    const/high16 v3, 0x3f800000    # 1.0f

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_1

    const/4 v1, 0x0

    :cond_0
    return v1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public createProgram()V
    .locals 2

    iget-object v1, p0, Lcom/android/systemui/infinity/tangram/TangramSystem;->renderer:Lcom/android/systemui/infinity/GalaxyRenderer;

    invoke-virtual {v1}, Lcom/android/systemui/infinity/GalaxyRenderer;->getResourceManager()Lcom/android/systemui/infinity/common/GLResourceManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/infinity/common/GLResourceManager;->reset()V

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/systemui/infinity/tangram/TangramSystem;->objectList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/infinity/tangram/TangramSystem;->objectList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/infinity/tangram/TangramObjectInterface;

    invoke-interface {v1}, Lcom/android/systemui/infinity/tangram/TangramObjectInterface;->createProgram()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected doFrame()V
    .locals 1

    invoke-virtual {p0}, Lcom/android/systemui/infinity/tangram/TangramSystem;->checkIsDoneShowing()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/infinity/tangram/TangramSystem;->showingProcess()V

    :goto_0
    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/infinity/tangram/TangramSystem;->isLeft:Z

    invoke-virtual {p0, v0}, Lcom/android/systemui/infinity/tangram/TangramSystem;->tiltProcess(Z)V

    goto :goto_0
.end method

.method public draw([F)V
    .locals 5

    const/high16 v4, 0x3f800000    # 1.0f

    iget v2, p0, Lcom/android/systemui/infinity/tangram/TangramSystem;->showingProgress:F

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/android/systemui/infinity/tangram/TangramSystem;->hideingProgress:F

    cmpl-float v2, v2, v4

    if-nez v2, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-object v2, p0, Lcom/android/systemui/infinity/tangram/TangramSystem;->tangramList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    :goto_0
    if-ltz v0, :cond_2

    iget-object v2, p0, Lcom/android/systemui/infinity/tangram/TangramSystem;->tangramList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/infinity/tangram/Tangram;

    invoke-virtual {v1, p1, v4}, Lcom/android/systemui/infinity/tangram/Tangram;->draw([FF)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public getLinearTargetPosition(FFF)F
    .locals 3

    sub-float v2, p1, p2

    mul-float v0, v2, p3

    add-float v1, p2, v0

    return v1
.end method

.method protected abstract getTextureMapData()Lcom/android/systemui/infinity/tangram/TangramMapData;
.end method

.method public hide()V
    .locals 5

    const/high16 v4, 0x3f800000    # 1.0f

    iget-object v0, p0, Lcom/android/systemui/infinity/tangram/TangramSystem;->showAnimator:Lcom/altamirasoft/glanimationutil/GLValueAnimator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/infinity/tangram/TangramSystem;->showAnimator:Lcom/altamirasoft/glanimationutil/GLValueAnimator;

    invoke-virtual {v0}, Lcom/altamirasoft/glanimationutil/GLValueAnimator;->end()V

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/infinity/tangram/TangramSystem;->hideAnimator:Lcom/altamirasoft/glanimationutil/GLValueAnimator;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/infinity/tangram/TangramSystem;->hideAnimator:Lcom/altamirasoft/glanimationutil/GLValueAnimator;

    invoke-virtual {v0}, Lcom/altamirasoft/glanimationutil/GLValueAnimator;->end()V

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/infinity/tangram/TangramSystem;->ignoreGyro:Z

    iget-object v0, p0, Lcom/android/systemui/infinity/tangram/TangramSystem;->calculateHelper:Lcom/altamirasoft/glanimationutil/GLCalculateHelper;

    invoke-virtual {v0}, Lcom/altamirasoft/glanimationutil/GLCalculateHelper;->pause()V

    iget-object v0, p0, Lcom/android/systemui/infinity/tangram/TangramSystem;->renderer:Lcom/android/systemui/infinity/GalaxyRenderer;

    invoke-virtual {v0}, Lcom/android/systemui/infinity/GalaxyRenderer;->getAnimatorManager()Lcom/altamirasoft/glanimationutil/GLAnimatorManager;

    move-result-object v0

    iget v1, p0, Lcom/android/systemui/infinity/tangram/TangramSystem;->hideingProgress:F

    invoke-virtual {v0, v1, v4}, Lcom/altamirasoft/glanimationutil/GLAnimatorManager;->createValueAnimator(FF)Lcom/altamirasoft/glanimationutil/GLValueAnimator;

    move-result-object v0

    const-wide/16 v2, 0x2ee

    invoke-virtual {v0, v2, v3}, Lcom/altamirasoft/glanimationutil/GLValueAnimator;->setDuration(J)Lcom/altamirasoft/glanimationutil/GLValueAnimator;

    move-result-object v0

    const v1, 0x3e4ccccd    # 0.2f

    const/4 v2, 0x0

    const/high16 v3, 0x3f000000    # 0.5f

    invoke-static {v1, v2, v3, v4}, Landroid/support/v4/view/animation/PathInterpolatorCompat;->create(FFFF)Landroid/view/animation/Interpolator;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/altamirasoft/glanimationutil/GLValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Lcom/altamirasoft/glanimationutil/GLValueAnimator;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/infinity/tangram/TangramSystem$3;

    invoke-direct {v1, p0}, Lcom/android/systemui/infinity/tangram/TangramSystem$3;-><init>(Lcom/android/systemui/infinity/tangram/TangramSystem;)V

    invoke-virtual {v0, v1}, Lcom/altamirasoft/glanimationutil/GLValueAnimator;->addUpdateListener(Lcom/altamirasoft/glanimationutil/GLValueAnimator$AnimatorUpdateListener;)Lcom/altamirasoft/glanimationutil/GLValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/infinity/tangram/TangramSystem;->hideAnimator:Lcom/altamirasoft/glanimationutil/GLValueAnimator;

    iget-object v0, p0, Lcom/android/systemui/infinity/tangram/TangramSystem;->hideAnimator:Lcom/altamirasoft/glanimationutil/GLValueAnimator;

    invoke-virtual {v0}, Lcom/altamirasoft/glanimationutil/GLValueAnimator;->start()V

    return-void
.end method

.method public onSurfaceChanged(II)V
    .locals 4

    int-to-float v2, p1

    iput v2, p0, Lcom/android/systemui/infinity/tangram/TangramSystem;->screenWidth:F

    int-to-float v2, p2

    iput v2, p0, Lcom/android/systemui/infinity/tangram/TangramSystem;->screenHeight:F

    iget-object v2, p0, Lcom/android/systemui/infinity/tangram/TangramSystem;->tangramList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    :goto_0
    if-ltz v0, :cond_0

    iget-object v2, p0, Lcom/android/systemui/infinity/tangram/TangramSystem;->tangramList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/infinity/tangram/Tangram;

    iget v2, p0, Lcom/android/systemui/infinity/tangram/TangramSystem;->screenWidth:F

    iget v3, p0, Lcom/android/systemui/infinity/tangram/TangramSystem;->screenHeight:F

    invoke-virtual {v1, v2, v3}, Lcom/android/systemui/infinity/tangram/Tangram;->changeViewPort(FF)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onSurfaceCreated()V
    .locals 0

    invoke-virtual {p0}, Lcom/android/systemui/infinity/tangram/TangramSystem;->createProgram()V

    return-void
.end method

.method public setGyroMovement(F)V
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/systemui/infinity/tangram/TangramSystem;->tangramList:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/infinity/tangram/TangramSystem;->tangramList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/infinity/tangram/TangramSystem;->checkIsDoneShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/systemui/infinity/tangram/TangramSystem;->ignoreGyro:Z

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iput p1, p0, Lcom/android/systemui/infinity/tangram/TangramSystem;->targetGyroValue:F

    const/4 v1, 0x0

    cmpg-float v1, p1, v1

    if-gez v1, :cond_2

    const/4 v0, 0x1

    :cond_2
    iput-boolean v0, p0, Lcom/android/systemui/infinity/tangram/TangramSystem;->isLeft:Z

    iget-object v0, p0, Lcom/android/systemui/infinity/tangram/TangramSystem;->calculateHelper:Lcom/altamirasoft/glanimationutil/GLCalculateHelper;

    invoke-virtual {v0}, Lcom/altamirasoft/glanimationutil/GLCalculateHelper;->start()V

    goto :goto_0
.end method

.method public show()V
    .locals 4

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/infinity/tangram/TangramSystem;->hideingProgress:F

    iput v0, p0, Lcom/android/systemui/infinity/tangram/TangramSystem;->showingProgress:F

    iput v2, p0, Lcom/android/systemui/infinity/tangram/TangramSystem;->overallScale:F

    iput v2, p0, Lcom/android/systemui/infinity/tangram/TangramSystem;->overallAlpha:F

    iput v0, p0, Lcom/android/systemui/infinity/tangram/TangramSystem;->targetGyroValue:F

    iget-object v0, p0, Lcom/android/systemui/infinity/tangram/TangramSystem;->showAnimator:Lcom/altamirasoft/glanimationutil/GLValueAnimator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/infinity/tangram/TangramSystem;->showAnimator:Lcom/altamirasoft/glanimationutil/GLValueAnimator;

    invoke-virtual {v0}, Lcom/altamirasoft/glanimationutil/GLValueAnimator;->end()V

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/infinity/tangram/TangramSystem;->hideAnimator:Lcom/altamirasoft/glanimationutil/GLValueAnimator;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/infinity/tangram/TangramSystem;->hideAnimator:Lcom/altamirasoft/glanimationutil/GLValueAnimator;

    invoke-virtual {v0}, Lcom/altamirasoft/glanimationutil/GLValueAnimator;->end()V

    :cond_1
    invoke-direct {p0}, Lcom/android/systemui/infinity/tangram/TangramSystem;->resetHiding()V

    invoke-direct {p0}, Lcom/android/systemui/infinity/tangram/TangramSystem;->resetShowing()V

    iget-object v0, p0, Lcom/android/systemui/infinity/tangram/TangramSystem;->renderer:Lcom/android/systemui/infinity/GalaxyRenderer;

    invoke-virtual {v0}, Lcom/android/systemui/infinity/GalaxyRenderer;->getAnimatorManager()Lcom/altamirasoft/glanimationutil/GLAnimatorManager;

    move-result-object v0

    iget v1, p0, Lcom/android/systemui/infinity/tangram/TangramSystem;->showingProgress:F

    invoke-virtual {v0, v1, v2}, Lcom/altamirasoft/glanimationutil/GLAnimatorManager;->createValueAnimator(FF)Lcom/altamirasoft/glanimationutil/GLValueAnimator;

    move-result-object v0

    const-wide/16 v2, 0x409

    invoke-virtual {v0, v2, v3}, Lcom/altamirasoft/glanimationutil/GLValueAnimator;->setDuration(J)Lcom/altamirasoft/glanimationutil/GLValueAnimator;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/view/animation/SineOut90;

    invoke-direct {v1}, Lcom/samsung/android/view/animation/SineOut90;-><init>()V

    invoke-virtual {v0, v1}, Lcom/altamirasoft/glanimationutil/GLValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Lcom/altamirasoft/glanimationutil/GLValueAnimator;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/infinity/tangram/TangramSystem$2;

    invoke-direct {v1, p0}, Lcom/android/systemui/infinity/tangram/TangramSystem$2;-><init>(Lcom/android/systemui/infinity/tangram/TangramSystem;)V

    invoke-virtual {v0, v1}, Lcom/altamirasoft/glanimationutil/GLValueAnimator;->addUpdateListener(Lcom/altamirasoft/glanimationutil/GLValueAnimator$AnimatorUpdateListener;)Lcom/altamirasoft/glanimationutil/GLValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/infinity/tangram/TangramSystem;->showAnimator:Lcom/altamirasoft/glanimationutil/GLValueAnimator;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/infinity/tangram/TangramSystem;->ignoreGyro:Z

    iget-object v0, p0, Lcom/android/systemui/infinity/tangram/TangramSystem;->calculateHelper:Lcom/altamirasoft/glanimationutil/GLCalculateHelper;

    invoke-virtual {v0}, Lcom/altamirasoft/glanimationutil/GLCalculateHelper;->start()V

    iget-object v0, p0, Lcom/android/systemui/infinity/tangram/TangramSystem;->showAnimator:Lcom/altamirasoft/glanimationutil/GLValueAnimator;

    invoke-virtual {v0}, Lcom/altamirasoft/glanimationutil/GLValueAnimator;->start()V

    return-void
.end method

.method protected abstract showingProcess()V
.end method

.method protected abstract tiltProcess(Z)V
.end method
