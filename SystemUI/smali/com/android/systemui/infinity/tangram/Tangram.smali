.class public Lcom/android/systemui/infinity/tangram/Tangram;
.super Ljava/lang/Object;
.source "Tangram.java"


# instance fields
.field public alpha:F

.field public centerImageAlpha:F

.field public doubleLayer:Lcom/android/systemui/infinity/tangram/TangramObjectInterface;

.field public endTx:F

.field public endTy:F

.field fixAlpha:F

.field public fixX:F

.field public fixY:F

.field public gyroAlpha:F

.field public gyroScale:F

.field public gyroTx:F

.field public gyroTy:F

.field public gyroValue:F

.field public hideingProgress:F

.field public initTx:F

.field public initTy:F

.field public layer:Lcom/android/systemui/infinity/tangram/TangramObjectInterface;

.field public leftImage:Lcom/android/systemui/infinity/tangram/TangramObjectInterface;

.field public leftImageAlpha:F

.field public mergedLayer:Lcom/android/systemui/infinity/tangram/TangramObjectInterface;

.field public name:Ljava/lang/String;

.field needDoubleBottomDraw:Z

.field public rightImage:Lcom/android/systemui/infinity/tangram/TangramObjectInterface;

.field public rightImageAlpha:F

.field screenH:F

.field screenW:F

.field public showingProgress:F

.field public sx:F

.field public sy:F

.field public sz:F

.field public tx:F

.field public ty:F

.field zValue:F


# direct methods
.method public constructor <init>(Ljava/lang/String;ZFFFFFFFLcom/android/systemui/infinity/tangram/TangramObjectInterface;Lcom/android/systemui/infinity/tangram/TangramObjectInterface;Lcom/android/systemui/infinity/tangram/TangramObjectInterface;Lcom/android/systemui/infinity/tangram/TangramObjectInterface;Lcom/android/systemui/infinity/tangram/TangramObjectInterface;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/infinity/tangram/Tangram;->showingProgress:F

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/infinity/tangram/Tangram;->hideingProgress:F

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/infinity/tangram/Tangram;->gyroValue:F

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/android/systemui/infinity/tangram/Tangram;->alpha:F

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/android/systemui/infinity/tangram/Tangram;->sx:F

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/android/systemui/infinity/tangram/Tangram;->sy:F

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/android/systemui/infinity/tangram/Tangram;->sz:F

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/infinity/tangram/Tangram;->leftImageAlpha:F

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/infinity/tangram/Tangram;->rightImageAlpha:F

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/infinity/tangram/Tangram;->centerImageAlpha:F

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/infinity/tangram/Tangram;->gyroTx:F

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/infinity/tangram/Tangram;->gyroTy:F

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/android/systemui/infinity/tangram/Tangram;->gyroScale:F

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/android/systemui/infinity/tangram/Tangram;->gyroAlpha:F

    const v0, -0x3f61999a    # -4.95f

    iput v0, p0, Lcom/android/systemui/infinity/tangram/Tangram;->zValue:F

    iput-object p1, p0, Lcom/android/systemui/infinity/tangram/Tangram;->name:Ljava/lang/String;

    iput-object p10, p0, Lcom/android/systemui/infinity/tangram/Tangram;->layer:Lcom/android/systemui/infinity/tangram/TangramObjectInterface;

    iput-object p11, p0, Lcom/android/systemui/infinity/tangram/Tangram;->mergedLayer:Lcom/android/systemui/infinity/tangram/TangramObjectInterface;

    iput p3, p0, Lcom/android/systemui/infinity/tangram/Tangram;->fixAlpha:F

    iput-boolean p2, p0, Lcom/android/systemui/infinity/tangram/Tangram;->needDoubleBottomDraw:Z

    iput-object p12, p0, Lcom/android/systemui/infinity/tangram/Tangram;->doubleLayer:Lcom/android/systemui/infinity/tangram/TangramObjectInterface;

    iput-object p13, p0, Lcom/android/systemui/infinity/tangram/Tangram;->leftImage:Lcom/android/systemui/infinity/tangram/TangramObjectInterface;

    iput-object p14, p0, Lcom/android/systemui/infinity/tangram/Tangram;->rightImage:Lcom/android/systemui/infinity/tangram/TangramObjectInterface;

    iput p4, p0, Lcom/android/systemui/infinity/tangram/Tangram;->fixX:F

    iput p5, p0, Lcom/android/systemui/infinity/tangram/Tangram;->fixY:F

    iput p6, p0, Lcom/android/systemui/infinity/tangram/Tangram;->initTx:F

    iput p7, p0, Lcom/android/systemui/infinity/tangram/Tangram;->initTy:F

    iput p8, p0, Lcom/android/systemui/infinity/tangram/Tangram;->endTx:F

    iput p9, p0, Lcom/android/systemui/infinity/tangram/Tangram;->endTy:F

    return-void
.end method


# virtual methods
.method public changeViewPort(FF)V
    .locals 0

    iput p1, p0, Lcom/android/systemui/infinity/tangram/Tangram;->screenW:F

    iput p2, p0, Lcom/android/systemui/infinity/tangram/Tangram;->screenH:F

    return-void
.end method

.method public draw([FF)V
    .locals 4

    const/4 v0, 0x1

    const/16 v1, 0x303

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glBlendFunc(II)V

    iget-object v0, p0, Lcom/android/systemui/infinity/tangram/Tangram;->layer:Lcom/android/systemui/infinity/tangram/TangramObjectInterface;

    invoke-virtual {p0}, Lcom/android/systemui/infinity/tangram/Tangram;->getAlpha()F

    move-result v1

    invoke-interface {v0, v1}, Lcom/android/systemui/infinity/tangram/TangramObjectInterface;->setAlpha(F)V

    iget-object v0, p0, Lcom/android/systemui/infinity/tangram/Tangram;->layer:Lcom/android/systemui/infinity/tangram/TangramObjectInterface;

    invoke-virtual {p0}, Lcom/android/systemui/infinity/tangram/Tangram;->getScale()F

    move-result v1

    mul-float/2addr v1, p2

    invoke-virtual {p0}, Lcom/android/systemui/infinity/tangram/Tangram;->getScale()F

    move-result v2

    mul-float/2addr v2, p2

    invoke-interface {v0, v1, v2}, Lcom/android/systemui/infinity/tangram/TangramObjectInterface;->setScale(FF)V

    iget-object v0, p0, Lcom/android/systemui/infinity/tangram/Tangram;->layer:Lcom/android/systemui/infinity/tangram/TangramObjectInterface;

    invoke-virtual {p0}, Lcom/android/systemui/infinity/tangram/Tangram;->getTx()F

    move-result v1

    invoke-virtual {p0}, Lcom/android/systemui/infinity/tangram/Tangram;->getTy()F

    move-result v2

    iget v3, p0, Lcom/android/systemui/infinity/tangram/Tangram;->zValue:F

    invoke-interface {v0, v1, v2, v3}, Lcom/android/systemui/infinity/tangram/TangramObjectInterface;->setTranslation(FFF)V

    iget-object v0, p0, Lcom/android/systemui/infinity/tangram/Tangram;->layer:Lcom/android/systemui/infinity/tangram/TangramObjectInterface;

    invoke-interface {v0, p1}, Lcom/android/systemui/infinity/tangram/TangramObjectInterface;->draw([F)V

    iget-object v0, p0, Lcom/android/systemui/infinity/tangram/Tangram;->doubleLayer:Lcom/android/systemui/infinity/tangram/TangramObjectInterface;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/infinity/tangram/Tangram;->doubleLayer:Lcom/android/systemui/infinity/tangram/TangramObjectInterface;

    invoke-virtual {p0}, Lcom/android/systemui/infinity/tangram/Tangram;->getCenterImageAlpha()F

    move-result v1

    invoke-interface {v0, v1}, Lcom/android/systemui/infinity/tangram/TangramObjectInterface;->setAlpha(F)V

    iget-object v0, p0, Lcom/android/systemui/infinity/tangram/Tangram;->doubleLayer:Lcom/android/systemui/infinity/tangram/TangramObjectInterface;

    invoke-virtual {p0}, Lcom/android/systemui/infinity/tangram/Tangram;->getScale()F

    move-result v1

    mul-float/2addr v1, p2

    invoke-virtual {p0}, Lcom/android/systemui/infinity/tangram/Tangram;->getScale()F

    move-result v2

    mul-float/2addr v2, p2

    invoke-interface {v0, v1, v2}, Lcom/android/systemui/infinity/tangram/TangramObjectInterface;->setScale(FF)V

    iget-object v0, p0, Lcom/android/systemui/infinity/tangram/Tangram;->doubleLayer:Lcom/android/systemui/infinity/tangram/TangramObjectInterface;

    invoke-virtual {p0}, Lcom/android/systemui/infinity/tangram/Tangram;->getTx()F

    move-result v1

    invoke-virtual {p0}, Lcom/android/systemui/infinity/tangram/Tangram;->getTy()F

    move-result v2

    iget v3, p0, Lcom/android/systemui/infinity/tangram/Tangram;->zValue:F

    invoke-interface {v0, v1, v2, v3}, Lcom/android/systemui/infinity/tangram/TangramObjectInterface;->setTranslation(FFF)V

    iget-object v0, p0, Lcom/android/systemui/infinity/tangram/Tangram;->doubleLayer:Lcom/android/systemui/infinity/tangram/TangramObjectInterface;

    invoke-interface {v0, p1}, Lcom/android/systemui/infinity/tangram/TangramObjectInterface;->draw([F)V

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/infinity/tangram/Tangram;->leftImage:Lcom/android/systemui/infinity/tangram/TangramObjectInterface;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/infinity/tangram/Tangram;->leftImage:Lcom/android/systemui/infinity/tangram/TangramObjectInterface;

    invoke-virtual {p0}, Lcom/android/systemui/infinity/tangram/Tangram;->getLeftImageAlpha()F

    move-result v1

    invoke-interface {v0, v1}, Lcom/android/systemui/infinity/tangram/TangramObjectInterface;->setAlpha(F)V

    iget-object v0, p0, Lcom/android/systemui/infinity/tangram/Tangram;->leftImage:Lcom/android/systemui/infinity/tangram/TangramObjectInterface;

    invoke-virtual {p0}, Lcom/android/systemui/infinity/tangram/Tangram;->getScale()F

    move-result v1

    mul-float/2addr v1, p2

    invoke-virtual {p0}, Lcom/android/systemui/infinity/tangram/Tangram;->getScale()F

    move-result v2

    mul-float/2addr v2, p2

    invoke-interface {v0, v1, v2}, Lcom/android/systemui/infinity/tangram/TangramObjectInterface;->setScale(FF)V

    iget-object v0, p0, Lcom/android/systemui/infinity/tangram/Tangram;->leftImage:Lcom/android/systemui/infinity/tangram/TangramObjectInterface;

    invoke-virtual {p0}, Lcom/android/systemui/infinity/tangram/Tangram;->getTx()F

    move-result v1

    invoke-virtual {p0}, Lcom/android/systemui/infinity/tangram/Tangram;->getTy()F

    move-result v2

    iget v3, p0, Lcom/android/systemui/infinity/tangram/Tangram;->zValue:F

    invoke-interface {v0, v1, v2, v3}, Lcom/android/systemui/infinity/tangram/TangramObjectInterface;->setTranslation(FFF)V

    iget-object v0, p0, Lcom/android/systemui/infinity/tangram/Tangram;->leftImage:Lcom/android/systemui/infinity/tangram/TangramObjectInterface;

    invoke-interface {v0, p1}, Lcom/android/systemui/infinity/tangram/TangramObjectInterface;->draw([F)V

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/infinity/tangram/Tangram;->rightImage:Lcom/android/systemui/infinity/tangram/TangramObjectInterface;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/infinity/tangram/Tangram;->rightImage:Lcom/android/systemui/infinity/tangram/TangramObjectInterface;

    invoke-virtual {p0}, Lcom/android/systemui/infinity/tangram/Tangram;->getRightImageAlpha()F

    move-result v1

    invoke-interface {v0, v1}, Lcom/android/systemui/infinity/tangram/TangramObjectInterface;->setAlpha(F)V

    iget-object v0, p0, Lcom/android/systemui/infinity/tangram/Tangram;->rightImage:Lcom/android/systemui/infinity/tangram/TangramObjectInterface;

    invoke-virtual {p0}, Lcom/android/systemui/infinity/tangram/Tangram;->getScale()F

    move-result v1

    mul-float/2addr v1, p2

    invoke-virtual {p0}, Lcom/android/systemui/infinity/tangram/Tangram;->getScale()F

    move-result v2

    mul-float/2addr v2, p2

    invoke-interface {v0, v1, v2}, Lcom/android/systemui/infinity/tangram/TangramObjectInterface;->setScale(FF)V

    iget-object v0, p0, Lcom/android/systemui/infinity/tangram/Tangram;->rightImage:Lcom/android/systemui/infinity/tangram/TangramObjectInterface;

    invoke-virtual {p0}, Lcom/android/systemui/infinity/tangram/Tangram;->getTx()F

    move-result v1

    invoke-virtual {p0}, Lcom/android/systemui/infinity/tangram/Tangram;->getTy()F

    move-result v2

    iget v3, p0, Lcom/android/systemui/infinity/tangram/Tangram;->zValue:F

    invoke-interface {v0, v1, v2, v3}, Lcom/android/systemui/infinity/tangram/TangramObjectInterface;->setTranslation(FFF)V

    iget-object v0, p0, Lcom/android/systemui/infinity/tangram/Tangram;->rightImage:Lcom/android/systemui/infinity/tangram/TangramObjectInterface;

    invoke-interface {v0, p1}, Lcom/android/systemui/infinity/tangram/TangramObjectInterface;->draw([F)V

    :cond_2
    return-void
.end method

.method public getAlpha()F
    .locals 3

    iget v1, p0, Lcom/android/systemui/infinity/tangram/Tangram;->hideingProgress:F

    const/high16 v2, 0x40000000    # 2.0f

    mul-float/2addr v1, v2

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float v0, v2, v1

    iget v1, p0, Lcom/android/systemui/infinity/tangram/Tangram;->showingProgress:F

    mul-float/2addr v1, v0

    iget v2, p0, Lcom/android/systemui/infinity/tangram/Tangram;->fixAlpha:F

    mul-float/2addr v1, v2

    iget v2, p0, Lcom/android/systemui/infinity/tangram/Tangram;->gyroAlpha:F

    mul-float/2addr v1, v2

    return v1
.end method

.method public getCenterImageAlpha()F
    .locals 3

    iget v1, p0, Lcom/android/systemui/infinity/tangram/Tangram;->hideingProgress:F

    const/high16 v2, 0x40000000    # 2.0f

    mul-float/2addr v1, v2

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float v0, v2, v1

    iget v1, p0, Lcom/android/systemui/infinity/tangram/Tangram;->centerImageAlpha:F

    iget v2, p0, Lcom/android/systemui/infinity/tangram/Tangram;->showingProgress:F

    mul-float/2addr v1, v2

    mul-float/2addr v1, v0

    iget v2, p0, Lcom/android/systemui/infinity/tangram/Tangram;->fixAlpha:F

    mul-float/2addr v1, v2

    return v1
.end method

.method public getLeftImageAlpha()F
    .locals 3

    iget v1, p0, Lcom/android/systemui/infinity/tangram/Tangram;->hideingProgress:F

    const/high16 v2, 0x40000000    # 2.0f

    mul-float/2addr v1, v2

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float v0, v2, v1

    iget v1, p0, Lcom/android/systemui/infinity/tangram/Tangram;->leftImageAlpha:F

    iget v2, p0, Lcom/android/systemui/infinity/tangram/Tangram;->showingProgress:F

    mul-float/2addr v1, v2

    mul-float/2addr v1, v0

    return v1
.end method

.method public getRightImageAlpha()F
    .locals 3

    iget v1, p0, Lcom/android/systemui/infinity/tangram/Tangram;->hideingProgress:F

    const/high16 v2, 0x40000000    # 2.0f

    mul-float/2addr v1, v2

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float v0, v2, v1

    iget v1, p0, Lcom/android/systemui/infinity/tangram/Tangram;->rightImageAlpha:F

    iget v2, p0, Lcom/android/systemui/infinity/tangram/Tangram;->showingProgress:F

    mul-float/2addr v1, v2

    mul-float/2addr v1, v0

    return v1
.end method

.method public getScale()F
    .locals 3

    iget v0, p0, Lcom/android/systemui/infinity/tangram/Tangram;->gyroScale:F

    iget v1, p0, Lcom/android/systemui/infinity/tangram/Tangram;->sx:F

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/android/systemui/infinity/tangram/Tangram;->hideingProgress:F

    const/high16 v2, 0x3f800000    # 1.0f

    add-float/2addr v1, v2

    mul-float/2addr v0, v1

    return v0
.end method

.method public getTx()F
    .locals 4

    iget v0, p0, Lcom/android/systemui/infinity/tangram/Tangram;->fixX:F

    iget v1, p0, Lcom/android/systemui/infinity/tangram/Tangram;->initTx:F

    iget v2, p0, Lcom/android/systemui/infinity/tangram/Tangram;->showingProgress:F

    const/high16 v3, 0x3f800000    # 1.0f

    sub-float v2, v3, v2

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lcom/android/systemui/infinity/tangram/Tangram;->tx:F

    add-float/2addr v0, v1

    iget v1, p0, Lcom/android/systemui/infinity/tangram/Tangram;->gyroTx:F

    add-float/2addr v0, v1

    iget v1, p0, Lcom/android/systemui/infinity/tangram/Tangram;->endTx:F

    iget v2, p0, Lcom/android/systemui/infinity/tangram/Tangram;->hideingProgress:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    return v0
.end method

.method public getTy()F
    .locals 4

    iget v0, p0, Lcom/android/systemui/infinity/tangram/Tangram;->fixY:F

    iget v1, p0, Lcom/android/systemui/infinity/tangram/Tangram;->initTy:F

    iget v2, p0, Lcom/android/systemui/infinity/tangram/Tangram;->showingProgress:F

    const/high16 v3, 0x3f800000    # 1.0f

    sub-float v2, v3, v2

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lcom/android/systemui/infinity/tangram/Tangram;->ty:F

    add-float/2addr v0, v1

    iget v1, p0, Lcom/android/systemui/infinity/tangram/Tangram;->gyroTy:F

    add-float/2addr v0, v1

    iget v1, p0, Lcom/android/systemui/infinity/tangram/Tangram;->endTy:F

    iget v2, p0, Lcom/android/systemui/infinity/tangram/Tangram;->hideingProgress:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    return v0
.end method
