.class public Lcom/samsung/android/settings/face/bixbysetupwizard/BixbyIconView;
.super Landroid/view/View;
.source "BixbyIconView.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mVIBixbyManager:Lvi/sec/com/bixbyvilibrary/VIBixbyManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/BixbyIconView;->mContext:Landroid/content/Context;

    new-instance v0, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;

    invoke-direct {v0, p1, p0}, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;-><init>(Landroid/content/Context;Landroid/view/View;)V

    iput-object v0, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/BixbyIconView;->mVIBixbyManager:Lvi/sec/com/bixbyvilibrary/VIBixbyManager;

    invoke-direct {p0}, Lcom/samsung/android/settings/face/bixbysetupwizard/BixbyIconView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object p1, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/BixbyIconView;->mContext:Landroid/content/Context;

    new-instance v0, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;

    invoke-direct {v0, p1, p0}, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;-><init>(Landroid/content/Context;Landroid/view/View;)V

    iput-object v0, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/BixbyIconView;->mVIBixbyManager:Lvi/sec/com/bixbyvilibrary/VIBixbyManager;

    invoke-direct {p0}, Lcom/samsung/android/settings/face/bixbysetupwizard/BixbyIconView;->init()V

    return-void
.end method

.method private init()V
    .locals 13

    iget-object v0, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/BixbyIconView;->mVIBixbyManager:Lvi/sec/com/bixbyvilibrary/VIBixbyManager;

    iget-object v1, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/BixbyIconView;->mContext:Landroid/content/Context;

    const v2, 0x7f0200c6

    invoke-virtual {v1, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/BixbyIconView;->mContext:Landroid/content/Context;

    const v3, 0x7f0200c7

    invoke-virtual {v2, v3}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->setInitBixbyBresource(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/BixbyIconView;->mVIBixbyManager:Lvi/sec/com/bixbyvilibrary/VIBixbyManager;

    const/16 v1, 0x18

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/face/bixbysetupwizard/BixbyIconView;->dpToPixel(I)F

    move-result v1

    invoke-virtual {v0, v1}, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->setInitBixbyCircleRadius(F)V

    iget-object v0, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/BixbyIconView;->mVIBixbyManager:Lvi/sec/com/bixbyvilibrary/VIBixbyManager;

    const/16 v1, 0x320

    const/16 v2, 0x2dd

    const/16 v3, 0x3e8

    const/16 v4, 0x320

    const/16 v5, 0x2dd

    const/16 v6, 0x3e8

    const/16 v7, 0xfa

    const/16 v8, 0xe9

    const/16 v9, 0x1d3

    const/16 v10, 0xfa

    const/16 v11, 0xe9

    const/16 v12, 0x1d3

    invoke-virtual/range {v0 .. v12}, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->setInitDurations(IIIIIIIIIIII)V

    iget-object v0, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/BixbyIconView;->mVIBixbyManager:Lvi/sec/com/bixbyvilibrary/VIBixbyManager;

    const/16 v1, 0x28

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/face/bixbysetupwizard/BixbyIconView;->dpToPixel(I)F

    move-result v1

    const/16 v2, 0x34

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/face/bixbysetupwizard/BixbyIconView;->dpToPixel(I)F

    move-result v2

    const/16 v3, 0x37

    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/face/bixbysetupwizard/BixbyIconView;->dpToPixel(I)F

    move-result v3

    const/16 v4, 0x46

    invoke-virtual {p0, v4}, Lcom/samsung/android/settings/face/bixbysetupwizard/BixbyIconView;->dpToPixel(I)F

    move-result v4

    const/16 v5, 0x40

    invoke-virtual {p0, v5}, Lcom/samsung/android/settings/face/bixbysetupwizard/BixbyIconView;->dpToPixel(I)F

    move-result v5

    const/16 v6, 0x7a

    invoke-virtual {p0, v6}, Lcom/samsung/android/settings/face/bixbysetupwizard/BixbyIconView;->dpToPixel(I)F

    move-result v6

    const/16 v7, 0x4c

    invoke-virtual {p0, v7}, Lcom/samsung/android/settings/face/bixbysetupwizard/BixbyIconView;->dpToPixel(I)F

    move-result v7

    const/16 v8, 0xce

    invoke-virtual {p0, v8}, Lcom/samsung/android/settings/face/bixbysetupwizard/BixbyIconView;->dpToPixel(I)F

    move-result v8

    invoke-virtual/range {v0 .. v8}, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->setDisappearDistances(FFFFFFFF)V

    iget-object v0, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/BixbyIconView;->mVIBixbyManager:Lvi/sec/com/bixbyvilibrary/VIBixbyManager;

    const/4 v1, 0x3

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/face/bixbysetupwizard/BixbyIconView;->dpToPixel(I)F

    move-result v1

    const/4 v2, 0x4

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/face/bixbysetupwizard/BixbyIconView;->dpToPixel(I)F

    move-result v2

    const/4 v3, 0x6

    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/face/bixbysetupwizard/BixbyIconView;->dpToPixel(I)F

    move-result v3

    const/16 v4, 0xa

    invoke-virtual {p0, v4}, Lcom/samsung/android/settings/face/bixbysetupwizard/BixbyIconView;->dpToPixel(I)F

    move-result v4

    const/16 v5, 0xa

    invoke-virtual {p0, v5}, Lcom/samsung/android/settings/face/bixbysetupwizard/BixbyIconView;->dpToPixel(I)F

    move-result v5

    const/16 v6, 0xe

    invoke-virtual {p0, v6}, Lcom/samsung/android/settings/face/bixbysetupwizard/BixbyIconView;->dpToPixel(I)F

    move-result v6

    invoke-virtual/range {v0 .. v6}, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->setInitSmaParticleSizes(FFFFFF)V

    iget-object v0, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/BixbyIconView;->mVIBixbyManager:Lvi/sec/com/bixbyvilibrary/VIBixbyManager;

    const/4 v1, 0x4

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/face/bixbysetupwizard/BixbyIconView;->dpToPixel(I)F

    move-result v1

    const/4 v2, 0x6

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/face/bixbysetupwizard/BixbyIconView;->dpToPixel(I)F

    move-result v2

    const/16 v3, 0x8

    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/face/bixbysetupwizard/BixbyIconView;->dpToPixel(I)F

    move-result v3

    const/16 v4, 0xc

    invoke-virtual {p0, v4}, Lcom/samsung/android/settings/face/bixbysetupwizard/BixbyIconView;->dpToPixel(I)F

    move-result v4

    const/16 v5, 0xe

    invoke-virtual {p0, v5}, Lcom/samsung/android/settings/face/bixbysetupwizard/BixbyIconView;->dpToPixel(I)F

    move-result v5

    const/16 v6, 0x12

    invoke-virtual {p0, v6}, Lcom/samsung/android/settings/face/bixbysetupwizard/BixbyIconView;->dpToPixel(I)F

    move-result v6

    invoke-virtual/range {v0 .. v6}, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->setInitMidParticleSizes(FFFFFF)V

    iget-object v0, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/BixbyIconView;->mVIBixbyManager:Lvi/sec/com/bixbyvilibrary/VIBixbyManager;

    const/4 v1, 0x4

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/face/bixbysetupwizard/BixbyIconView;->dpToPixel(I)F

    move-result v1

    const/16 v2, 0x8

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/face/bixbysetupwizard/BixbyIconView;->dpToPixel(I)F

    move-result v2

    const/16 v3, 0xa

    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/face/bixbysetupwizard/BixbyIconView;->dpToPixel(I)F

    move-result v3

    const/16 v4, 0xe

    invoke-virtual {p0, v4}, Lcom/samsung/android/settings/face/bixbysetupwizard/BixbyIconView;->dpToPixel(I)F

    move-result v4

    const/16 v5, 0x12

    invoke-virtual {p0, v5}, Lcom/samsung/android/settings/face/bixbysetupwizard/BixbyIconView;->dpToPixel(I)F

    move-result v5

    const/16 v6, 0x16

    invoke-virtual {p0, v6}, Lcom/samsung/android/settings/face/bixbysetupwizard/BixbyIconView;->dpToPixel(I)F

    move-result v6

    invoke-virtual/range {v0 .. v6}, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->setInitMaxParticleSizes(FFFFFF)V

    return-void
.end method


# virtual methods
.method public addMidCircleBig()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/BixbyIconView;->mVIBixbyManager:Lvi/sec/com/bixbyvilibrary/VIBixbyManager;

    invoke-virtual {v0}, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->addMidCircleBig()V

    return-void
.end method

.method public addMidCircleMid()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/BixbyIconView;->mVIBixbyManager:Lvi/sec/com/bixbyvilibrary/VIBixbyManager;

    invoke-virtual {v0}, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->addMidCircleMid()V

    return-void
.end method

.method public addMidCircleSmall()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/BixbyIconView;->mVIBixbyManager:Lvi/sec/com/bixbyvilibrary/VIBixbyManager;

    invoke-virtual {v0}, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->addMidCircleSmall()V

    return-void
.end method

.method public addSmallCircleBig()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/BixbyIconView;->mVIBixbyManager:Lvi/sec/com/bixbyvilibrary/VIBixbyManager;

    invoke-virtual {v0}, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->addSmaCircleBig()V

    return-void
.end method

.method public addSmallCircleMid()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/BixbyIconView;->mVIBixbyManager:Lvi/sec/com/bixbyvilibrary/VIBixbyManager;

    invoke-virtual {v0}, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->addSmaCircleMid()V

    return-void
.end method

.method public addSmallCircleSmall()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/BixbyIconView;->mVIBixbyManager:Lvi/sec/com/bixbyvilibrary/VIBixbyManager;

    invoke-virtual {v0}, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->addSmaCircleSmall()V

    return-void
.end method

.method public dpToPixel(I)F
    .locals 3

    int-to-float v0, p1

    iget-object v1, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/BixbyIconView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v2, v0, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/BixbyIconView;->mVIBixbyManager:Lvi/sec/com/bixbyvilibrary/VIBixbyManager;

    invoke-virtual {v0, p1}, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->onDraw(Landroid/graphics/Canvas;)Z

    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 1

    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    iget-object v0, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/BixbyIconView;->mVIBixbyManager:Lvi/sec/com/bixbyvilibrary/VIBixbyManager;

    invoke-virtual {v0, p1, p2, p3, p4}, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->onSizeChanged(IIII)V

    return-void
.end method

.method public setBixbySizeAnimation(FFLandroid/view/animation/Interpolator;)Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/BixbyIconView;->mVIBixbyManager:Lvi/sec/com/bixbyvilibrary/VIBixbyManager;

    invoke-virtual {v0, p1, p2, p3}, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->setBixbySizeAnimation(FFLandroid/view/animation/Interpolator;)Z

    move-result v0

    return v0
.end method

.method public setLogoView(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/BixbyIconView;->mVIBixbyManager:Lvi/sec/com/bixbyvilibrary/VIBixbyManager;

    invoke-virtual {v0, p1}, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->setInitBixbyLogoView(Landroid/view/View;)V

    return-void
.end method
