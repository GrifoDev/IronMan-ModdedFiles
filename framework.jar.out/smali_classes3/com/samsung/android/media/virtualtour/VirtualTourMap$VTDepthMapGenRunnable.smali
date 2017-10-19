.class Lcom/samsung/android/media/virtualtour/VirtualTourMap$VTDepthMapGenRunnable;
.super Ljava/lang/Object;
.source "VirtualTourMap.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/media/virtualtour/VirtualTourMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "VTDepthMapGenRunnable"
.end annotation


# instance fields
.field private mcCurWalkSet:Lcom/samsung/android/media/virtualtour/VirtualTourMap$VTWalkSet;

.field final synthetic this$0:Lcom/samsung/android/media/virtualtour/VirtualTourMap;


# direct methods
.method public constructor <init>(Lcom/samsung/android/media/virtualtour/VirtualTourMap;Lcom/samsung/android/media/virtualtour/VirtualTourMap$VTWalkSet;)V
    .locals 1

    iput-object p1, p0, Lcom/samsung/android/media/virtualtour/VirtualTourMap$VTDepthMapGenRunnable;->this$0:Lcom/samsung/android/media/virtualtour/VirtualTourMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/media/virtualtour/VirtualTourMap$VTDepthMapGenRunnable;->mcCurWalkSet:Lcom/samsung/android/media/virtualtour/VirtualTourMap$VTWalkSet;

    iput-object p2, p0, Lcom/samsung/android/media/virtualtour/VirtualTourMap$VTDepthMapGenRunnable;->mcCurWalkSet:Lcom/samsung/android/media/virtualtour/VirtualTourMap$VTWalkSet;

    return-void
.end method

.method private generateDepthMap(Lcom/samsung/android/media/virtualtour/VirtualTourMap$VTWalkSet;)Z
    .locals 25

    const-string/jumbo v2, "VirtualTourMap"

    const-string/jumbo v3, "generateDepthMap >>"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p1

    iget v3, v0, Lcom/samsung/android/media/virtualtour/VirtualTourMap$VTWalkSet;->m_nStartID:I

    const/4 v2, 0x1

    new-array v7, v2, [I

    const-wide/16 v8, 0x0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/media/virtualtour/VirtualTourMap$VTDepthMapGenRunnable;->this$0:Lcom/samsung/android/media/virtualtour/VirtualTourMap;

    move-object/from16 v0, p1

    iget v4, v0, Lcom/samsung/android/media/virtualtour/VirtualTourMap$VTWalkSet;->m_nCount:I

    mul-int/lit8 v4, v4, 0x9

    invoke-static {v2, v4}, Lcom/samsung/android/media/virtualtour/VirtualTourMap;->access$000(Lcom/samsung/android/media/virtualtour/VirtualTourMap;I)[F

    move-result-object v6

    const/4 v2, 0x0

    nop

    nop

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/media/virtualtour/VirtualTourMap$VTDepthMapGenRunnable;->this$0:Lcom/samsung/android/media/virtualtour/VirtualTourMap;

    move-object/from16 v0, p1

    iget v4, v0, Lcom/samsung/android/media/virtualtour/VirtualTourMap$VTWalkSet;->m_nCount:I

    add-int/lit8 v4, v4, -0x1

    mul-int/lit8 v4, v4, 0x6

    invoke-static {v2, v4}, Lcom/samsung/android/media/virtualtour/VirtualTourMap;->access$000(Lcom/samsung/android/media/virtualtour/VirtualTourMap;I)[F

    move-result-object v5

    const/4 v2, 0x0

    move/from16 v24, v2

    move v2, v3

    move/from16 v3, v24

    :goto_0
    move-object/from16 v0, p1

    iget v4, v0, Lcom/samsung/android/media/virtualtour/VirtualTourMap$VTWalkSet;->m_nCount:I

    if-lt v3, v4, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    move-object/from16 v0, p1

    iget v2, v0, Lcom/samsung/android/media/virtualtour/VirtualTourMap$VTWalkSet;->m_nCount:I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/media/virtualtour/VirtualTourMap$VTDepthMapGenRunnable;->this$0:Lcom/samsung/android/media/virtualtour/VirtualTourMap;

    invoke-static {v3}, Lcom/samsung/android/media/virtualtour/VirtualTourMap;->access$200(Lcom/samsung/android/media/virtualtour/VirtualTourMap;)I

    move-result v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/media/virtualtour/VirtualTourMap$VTDepthMapGenRunnable;->this$0:Lcom/samsung/android/media/virtualtour/VirtualTourMap;

    invoke-static {v4}, Lcom/samsung/android/media/virtualtour/VirtualTourMap;->access$300(Lcom/samsung/android/media/virtualtour/VirtualTourMap;)I

    move-result v4

    invoke-static/range {v2 .. v7}, Lcom/samsung/android/media/virtualtour/CCreateSceneMapNative;->SNVTVInitScene(III[F[F[I)I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v10

    const-wide/16 v4, 0x0

    add-long v10, v4, v2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/media/virtualtour/VirtualTourMap$VTDepthMapGenRunnable;->this$0:Lcom/samsung/android/media/virtualtour/VirtualTourMap;

    invoke-static {v2}, Lcom/samsung/android/media/virtualtour/VirtualTourMap;->access$200(Lcom/samsung/android/media/virtualtour/VirtualTourMap;)I

    move-result v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/media/virtualtour/VirtualTourMap$VTDepthMapGenRunnable;->this$0:Lcom/samsung/android/media/virtualtour/VirtualTourMap;

    invoke-static {v3}, Lcom/samsung/android/media/virtualtour/VirtualTourMap;->access$300(Lcom/samsung/android/media/virtualtour/VirtualTourMap;)I

    move-result v3

    mul-int/2addr v2, v3

    const/4 v3, 0x0

    aget v3, v7, v3

    mul-int/2addr v2, v3

    new-array v2, v2, [B

    const/4 v3, 0x0

    aget v3, v7, v3

    new-array v0, v3, [[B

    move-object/from16 v17, v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    move-object/from16 v0, p1

    iget v3, v0, Lcom/samsung/android/media/virtualtour/VirtualTourMap$VTWalkSet;->m_nCount:I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/media/virtualtour/VirtualTourMap$VTDepthMapGenRunnable;->this$0:Lcom/samsung/android/media/virtualtour/VirtualTourMap;

    invoke-static {v4}, Lcom/samsung/android/media/virtualtour/VirtualTourMap;->access$200(Lcom/samsung/android/media/virtualtour/VirtualTourMap;)I

    move-result v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/android/media/virtualtour/VirtualTourMap$VTDepthMapGenRunnable;->this$0:Lcom/samsung/android/media/virtualtour/VirtualTourMap;

    invoke-static {v5}, Lcom/samsung/android/media/virtualtour/VirtualTourMap;->access$300(Lcom/samsung/android/media/virtualtour/VirtualTourMap;)I

    move-result v5

    invoke-static/range {v2 .. v7}, Lcom/samsung/android/media/virtualtour/CCreateSceneMapNative;->SNVTVFetchSceneDepths([BIII[F[I)I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v12

    add-long v18, v10, v4

    invoke-static {v2}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/media/virtualtour/VirtualTourMap$VTDepthMapGenRunnable;->this$0:Lcom/samsung/android/media/virtualtour/VirtualTourMap;

    invoke-static {v2}, Lcom/samsung/android/media/virtualtour/VirtualTourMap;->access$200(Lcom/samsung/android/media/virtualtour/VirtualTourMap;)I

    move-result v2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/media/virtualtour/VirtualTourMap$VTDepthMapGenRunnable;->this$0:Lcom/samsung/android/media/virtualtour/VirtualTourMap;

    invoke-static {v4}, Lcom/samsung/android/media/virtualtour/VirtualTourMap;->access$300(Lcom/samsung/android/media/virtualtour/VirtualTourMap;)I

    move-result v4

    mul-int/2addr v4, v2

    const/4 v2, 0x0

    :goto_1
    const/4 v5, 0x0

    aget v5, v7, v5

    if-lt v2, v5, :cond_3

    move-object/from16 v0, p1

    iget v3, v0, Lcom/samsung/android/media/virtualtour/VirtualTourMap$VTWalkSet;->m_nStartID:I

    const/4 v2, 0x0

    move-wide v4, v8

    move/from16 v24, v2

    move v2, v3

    move/from16 v3, v24

    :goto_2
    move-object/from16 v0, p1

    iget v8, v0, Lcom/samsung/android/media/virtualtour/VirtualTourMap$VTWalkSet;->m_nCount:I

    if-lt v3, v8, :cond_4

    const/4 v2, 0x0

    :goto_3
    const/4 v3, 0x0

    aget v3, v7, v3

    if-lt v2, v3, :cond_8

    const/4 v2, 0x0

    nop

    nop

    const-string/jumbo v2, "VirtualTourMap"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "[TIME] DepthMapGeneration "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, v18

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v6, " ms"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v2, "VirtualTourMap"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "[TIME] DepthMapCropNResize "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " ms"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v2, "VirtualTourMap"

    const-string/jumbo v3, "generateDepthMap <<"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x1

    return v2

    :cond_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/media/virtualtour/VirtualTourMap$VTDepthMapGenRunnable;->this$0:Lcom/samsung/android/media/virtualtour/VirtualTourMap;

    invoke-static {v4}, Lcom/samsung/android/media/virtualtour/VirtualTourMap;->access$100(Lcom/samsung/android/media/virtualtour/VirtualTourMap;)Ljava/util/LinkedList;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/media/virtualtour/VirtualTourMap$VirtualTourTile;

    invoke-virtual {v2}, Lcom/samsung/android/media/virtualtour/VirtualTourMap$VirtualTourTile;->getNextTransition()Lcom/samsung/android/media/virtualtour/VirtualTourMap$VirtualTourTransition;

    move-result-object v4

    move-object/from16 v0, p1

    iget v2, v0, Lcom/samsung/android/media/virtualtour/VirtualTourMap$VTWalkSet;->m_nCount:I

    add-int/lit8 v2, v2, -0x1

    if-lt v3, v2, :cond_2

    :cond_1
    invoke-virtual {v4}, Lcom/samsung/android/media/virtualtour/VirtualTourMap$VirtualTourTransition;->getDestTileID()I

    move-result v4

    add-int/lit8 v2, v3, 0x1

    move v3, v2

    move v2, v4

    goto/16 :goto_0

    :cond_2
    invoke-virtual {v4}, Lcom/samsung/android/media/virtualtour/VirtualTourMap$VirtualTourTransition;->getAffine()[F

    move-result-object v10

    if-eqz v10, :cond_1

    mul-int/lit8 v11, v3, 0x6

    const/4 v2, 0x0

    :goto_4
    const/4 v12, 0x6

    if-ge v2, v12, :cond_1

    add-int v12, v11, v2

    add-int/lit8 v13, v2, 0x4

    aget v13, v10, v13

    aput v13, v5, v12

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_3
    new-array v5, v4, [B

    aput-object v5, v17, v2

    aget-object v5, v17, v2

    const/4 v10, 0x0

    invoke-virtual {v3, v5, v10, v4}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_1

    :cond_4
    mul-int/lit8 v8, v3, 0x9

    aget v9, v6, v8

    float-to-int v10, v9

    const/4 v9, 0x0

    aget v9, v7, v9

    if-gt v10, v9, :cond_7

    add-int/lit8 v9, v8, 0x1

    aget v15, v6, v9

    add-int/lit8 v9, v8, 0x2

    aget v16, v6, v9

    add-int/lit8 v9, v8, 0x5

    aget v9, v6, v9

    add-int/lit8 v8, v8, 0x6

    aget v8, v6, v8

    new-instance v20, Lcom/samsung/android/media/virtualtour/CRect;

    sub-float/2addr v9, v15

    const/high16 v11, 0x3f800000    # 1.0f

    add-float/2addr v9, v11

    sub-float v8, v8, v16

    const/high16 v11, 0x3f800000    # 1.0f

    add-float/2addr v8, v11

    move-object/from16 v0, v20

    move/from16 v1, v16

    invoke-direct {v0, v15, v1, v9, v8}, Lcom/samsung/android/media/virtualtour/CRect;-><init>(FFFF)V

    move-object/from16 v0, v20

    iget v8, v0, Lcom/samsung/android/media/virtualtour/CRect;->width:F

    const/4 v9, 0x0

    cmpl-float v8, v8, v9

    if-nez v8, :cond_5

    const/high16 v8, 0x41200000    # 10.0f

    move-object/from16 v0, v20

    iput v8, v0, Lcom/samsung/android/media/virtualtour/CRect;->width:F

    :cond_5
    move-object/from16 v0, v20

    iget v8, v0, Lcom/samsung/android/media/virtualtour/CRect;->height:F

    const/4 v9, 0x0

    cmpl-float v8, v8, v9

    if-nez v8, :cond_6

    const/high16 v8, 0x41200000    # 10.0f

    move-object/from16 v0, v20

    iput v8, v0, Lcom/samsung/android/media/virtualtour/CRect;->height:F

    :cond_6
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/samsung/android/media/virtualtour/VirtualTourMap$VTDepthMapGenRunnable;->this$0:Lcom/samsung/android/media/virtualtour/VirtualTourMap;

    invoke-static {v8}, Lcom/samsung/android/media/virtualtour/VirtualTourMap;->access$300(Lcom/samsung/android/media/virtualtour/VirtualTourMap;)I

    move-result v8

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/samsung/android/media/virtualtour/VirtualTourMap$VTDepthMapGenRunnable;->this$0:Lcom/samsung/android/media/virtualtour/VirtualTourMap;

    invoke-static {v9}, Lcom/samsung/android/media/virtualtour/VirtualTourMap;->access$200(Lcom/samsung/android/media/virtualtour/VirtualTourMap;)I

    move-result v9

    mul-int/2addr v8, v9

    new-array v14, v8, [B

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v22

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/samsung/android/media/virtualtour/VirtualTourMap$VTDepthMapGenRunnable;->this$0:Lcom/samsung/android/media/virtualtour/VirtualTourMap;

    invoke-static {v8}, Lcom/samsung/android/media/virtualtour/VirtualTourMap;->access$300(Lcom/samsung/android/media/virtualtour/VirtualTourMap;)I

    move-result v8

    int-to-float v8, v8

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/samsung/android/media/virtualtour/VirtualTourMap$VTDepthMapGenRunnable;->this$0:Lcom/samsung/android/media/virtualtour/VirtualTourMap;

    invoke-static {v9}, Lcom/samsung/android/media/virtualtour/VirtualTourMap;->access$200(Lcom/samsung/android/media/virtualtour/VirtualTourMap;)I

    move-result v9

    int-to-float v9, v9

    add-int/lit8 v10, v10, -0x1

    aget-object v10, v17, v10

    const/4 v11, 0x1

    move-object/from16 v0, v20

    iget v12, v0, Lcom/samsung/android/media/virtualtour/CRect;->width:F

    move-object/from16 v0, v20

    iget v13, v0, Lcom/samsung/android/media/virtualtour/CRect;->height:F

    invoke-static/range {v8 .. v16}, Lcom/samsung/android/media/virtualtour/CCreateSceneMapNative;->SNVTVCropNResizeImage(FF[BIFF[BFF)I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sub-long v8, v8, v22

    add-long/2addr v4, v8

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/samsung/android/media/virtualtour/VirtualTourMap$VTDepthMapGenRunnable;->this$0:Lcom/samsung/android/media/virtualtour/VirtualTourMap;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/samsung/android/media/virtualtour/VirtualTourMap$VTDepthMapGenRunnable;->this$0:Lcom/samsung/android/media/virtualtour/VirtualTourMap;

    invoke-static {v9}, Lcom/samsung/android/media/virtualtour/VirtualTourMap;->access$300(Lcom/samsung/android/media/virtualtour/VirtualTourMap;)I

    move-result v9

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/samsung/android/media/virtualtour/VirtualTourMap$VTDepthMapGenRunnable;->this$0:Lcom/samsung/android/media/virtualtour/VirtualTourMap;

    invoke-static {v10}, Lcom/samsung/android/media/virtualtour/VirtualTourMap;->access$200(Lcom/samsung/android/media/virtualtour/VirtualTourMap;)I

    move-result v10

    invoke-static {v8, v9, v10, v14}, Lcom/samsung/android/media/virtualtour/VirtualTourMap;->access$400(Lcom/samsung/android/media/virtualtour/VirtualTourMap;II[B)Lcom/samsung/android/media/virtualtour/VirtualTourMap$VirtualTourDepthMap;

    move-result-object v8

    move-object/from16 v0, v20

    invoke-virtual {v8, v0}, Lcom/samsung/android/media/virtualtour/VirtualTourMap$VirtualTourDepthMap;->setROI(Lcom/samsung/android/media/virtualtour/CRect;)V

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/samsung/android/media/virtualtour/VirtualTourMap$VTDepthMapGenRunnable;->this$0:Lcom/samsung/android/media/virtualtour/VirtualTourMap;

    invoke-static {v9}, Lcom/samsung/android/media/virtualtour/VirtualTourMap;->access$100(Lcom/samsung/android/media/virtualtour/VirtualTourMap;)Ljava/util/LinkedList;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/media/virtualtour/VirtualTourMap$VirtualTourTile;

    invoke-virtual {v2, v8}, Lcom/samsung/android/media/virtualtour/VirtualTourMap$VirtualTourTile;->setDepthMap(Lcom/samsung/android/media/virtualtour/VirtualTourMap$VirtualTourDepthMap;)V

    invoke-virtual {v2}, Lcom/samsung/android/media/virtualtour/VirtualTourMap$VirtualTourTile;->getNextTransition()Lcom/samsung/android/media/virtualtour/VirtualTourMap$VirtualTourTransition;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/media/virtualtour/VirtualTourMap$VirtualTourTransition;->getDestTileID()I

    move-result v8

    add-int/lit8 v2, v3, 0x1

    move v3, v2

    move v2, v8

    goto/16 :goto_2

    :cond_7
    const/4 v2, 0x0

    return v2

    :cond_8
    const/4 v3, 0x0

    aput-object v3, v17, v2

    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_3
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/media/virtualtour/VirtualTourMap$VTDepthMapGenRunnable;->mcCurWalkSet:Lcom/samsung/android/media/virtualtour/VirtualTourMap$VTWalkSet;

    invoke-direct {p0, v0}, Lcom/samsung/android/media/virtualtour/VirtualTourMap$VTDepthMapGenRunnable;->generateDepthMap(Lcom/samsung/android/media/virtualtour/VirtualTourMap$VTWalkSet;)Z

    return-void
.end method
