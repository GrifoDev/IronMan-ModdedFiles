.class public Lcom/samsung/android/settings/face/bixbysetupwizard/BixbyIconViewLayout;
.super Landroid/widget/FrameLayout;
.source "BixbyIconViewLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/face/bixbysetupwizard/BixbyIconViewLayout$1;,
        Lcom/samsung/android/settings/face/bixbysetupwizard/BixbyIconViewLayout$2;,
        Lcom/samsung/android/settings/face/bixbysetupwizard/BixbyIconViewLayout$3;,
        Lcom/samsung/android/settings/face/bixbysetupwizard/BixbyIconViewLayout$4;
    }
.end annotation


# instance fields
.field private mBixbyIconFullLayout:Landroid/widget/FrameLayout;

.field private mBixbyIconView:Lcom/samsung/android/settings/face/bixbysetupwizard/BixbyIconView;

.field private mBixbyIconViewAnimation:Lcom/samsung/android/settings/face/bixbysetupwizard/BixbyIconViewAnimation;

.field private mBixbyIconViewLayout:Lcom/samsung/android/settings/face/bixbysetupwizard/BixbyIconViewLayout;

.field private mContext:Landroid/content/Context;

.field private mElasticEastOutInterpolator:Lcom/samsung/android/graphics/spr/animation/interpolator/ElasticEaseOut;

.field private mIsSpeakingEnd:Z

.field private mListenView:Lcom/samsung/android/settings/face/bixbysetupwizard/BixbyUserSayingView;

.field private final mParticleHandler:Landroid/os/Handler;

.field private final mParticleRunnableMid:Ljava/lang/Runnable;

.field private final mParticleRunnableSmall:Ljava/lang/Runnable;

.field private mProcessLogoLayout:Landroid/view/View;

.field private mProcessLogoView:Landroid/widget/ImageView;

.field private mRandom:Ljava/util/Random;

.field private mSineInterpolator:Lcom/samsung/android/settings/face/bixbysetupwizard/SineInOut90;

.field private final mStopMovingRunnable:Ljava/lang/Runnable;


# direct methods
.method static synthetic -get0(Lcom/samsung/android/settings/face/bixbysetupwizard/BixbyIconViewLayout;)Lcom/samsung/android/settings/face/bixbysetupwizard/BixbyIconView;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/BixbyIconViewLayout;->mBixbyIconView:Lcom/samsung/android/settings/face/bixbysetupwizard/BixbyIconView;

    return-object v0
.end method

.method static synthetic -get1(Lcom/samsung/android/settings/face/bixbysetupwizard/BixbyIconViewLayout;)Lcom/samsung/android/settings/face/bixbysetupwizard/BixbyIconViewAnimation;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/BixbyIconViewLayout;->mBixbyIconViewAnimation:Lcom/samsung/android/settings/face/bixbysetupwizard/BixbyIconViewAnimation;

    return-object v0
.end method

.method static synthetic -get2(Lcom/samsung/android/settings/face/bixbysetupwizard/BixbyIconViewLayout;)Lcom/samsung/android/settings/face/bixbysetupwizard/BixbyIconViewLayout;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/BixbyIconViewLayout;->mBixbyIconViewLayout:Lcom/samsung/android/settings/face/bixbysetupwizard/BixbyIconViewLayout;

    return-object v0
.end method

.method static synthetic -get3(Lcom/samsung/android/settings/face/bixbysetupwizard/BixbyIconViewLayout;)Lcom/samsung/android/graphics/spr/animation/interpolator/ElasticEaseOut;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/BixbyIconViewLayout;->mElasticEastOutInterpolator:Lcom/samsung/android/graphics/spr/animation/interpolator/ElasticEaseOut;

    return-object v0
.end method

.method static synthetic -get4(Lcom/samsung/android/settings/face/bixbysetupwizard/BixbyIconViewLayout;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/BixbyIconViewLayout;->mIsSpeakingEnd:Z

    return v0
.end method

.method static synthetic -get5(Lcom/samsung/android/settings/face/bixbysetupwizard/BixbyIconViewLayout;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/BixbyIconViewLayout;->mParticleHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -get6(Lcom/samsung/android/settings/face/bixbysetupwizard/BixbyIconViewLayout;)Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/BixbyIconViewLayout;->mParticleRunnableMid:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic -get7(Lcom/samsung/android/settings/face/bixbysetupwizard/BixbyIconViewLayout;)Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/BixbyIconViewLayout;->mParticleRunnableSmall:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic -get8(Lcom/samsung/android/settings/face/bixbysetupwizard/BixbyIconViewLayout;)Lcom/samsung/android/settings/face/bixbysetupwizard/SineInOut90;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/BixbyIconViewLayout;->mSineInterpolator:Lcom/samsung/android/settings/face/bixbysetupwizard/SineInOut90;

    return-object v0
.end method

.method static synthetic -get9(Lcom/samsung/android/settings/face/bixbysetupwizard/BixbyIconViewLayout;)Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/BixbyIconViewLayout;->mStopMovingRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/samsung/android/settings/face/bixbysetupwizard/BixbyIconViewLayout;II)I
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/settings/face/bixbysetupwizard/BixbyIconViewLayout;->getRandom(II)I

    move-result v0

    return v0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-boolean v1, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/BixbyIconViewLayout;->mIsSpeakingEnd:Z

    new-instance v0, Lcom/samsung/android/settings/face/bixbysetupwizard/BixbyIconViewLayout$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/face/bixbysetupwizard/BixbyIconViewLayout$1;-><init>(Lcom/samsung/android/settings/face/bixbysetupwizard/BixbyIconViewLayout;)V

    iput-object v0, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/BixbyIconViewLayout;->mParticleHandler:Landroid/os/Handler;

    new-instance v0, Lcom/samsung/android/settings/face/bixbysetupwizard/BixbyIconViewLayout$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/face/bixbysetupwizard/BixbyIconViewLayout$2;-><init>(Lcom/samsung/android/settings/face/bixbysetupwizard/BixbyIconViewLayout;)V

    iput-object v0, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/BixbyIconViewLayout;->mStopMovingRunnable:Ljava/lang/Runnable;

    new-instance v0, Lcom/samsung/android/settings/face/bixbysetupwizard/BixbyIconViewLayout$3;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/face/bixbysetupwizard/BixbyIconViewLayout$3;-><init>(Lcom/samsung/android/settings/face/bixbysetupwizard/BixbyIconViewLayout;)V

    iput-object v0, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/BixbyIconViewLayout;->mParticleRunnableMid:Ljava/lang/Runnable;

    new-instance v0, Lcom/samsung/android/settings/face/bixbysetupwizard/BixbyIconViewLayout$4;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/face/bixbysetupwizard/BixbyIconViewLayout$4;-><init>(Lcom/samsung/android/settings/face/bixbysetupwizard/BixbyIconViewLayout;)V

    iput-object v0, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/BixbyIconViewLayout;->mParticleRunnableSmall:Ljava/lang/Runnable;

    iput-object p1, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/BixbyIconViewLayout;->mContext:Landroid/content/Context;

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/face/bixbysetupwizard/BixbyIconViewLayout;->initView(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-boolean v0, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/BixbyIconViewLayout;->mIsSpeakingEnd:Z

    new-instance v0, Lcom/samsung/android/settings/face/bixbysetupwizard/BixbyIconViewLayout$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/face/bixbysetupwizard/BixbyIconViewLayout$1;-><init>(Lcom/samsung/android/settings/face/bixbysetupwizard/BixbyIconViewLayout;)V

    iput-object v0, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/BixbyIconViewLayout;->mParticleHandler:Landroid/os/Handler;

    new-instance v0, Lcom/samsung/android/settings/face/bixbysetupwizard/BixbyIconViewLayout$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/face/bixbysetupwizard/BixbyIconViewLayout$2;-><init>(Lcom/samsung/android/settings/face/bixbysetupwizard/BixbyIconViewLayout;)V

    iput-object v0, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/BixbyIconViewLayout;->mStopMovingRunnable:Ljava/lang/Runnable;

    new-instance v0, Lcom/samsung/android/settings/face/bixbysetupwizard/BixbyIconViewLayout$3;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/face/bixbysetupwizard/BixbyIconViewLayout$3;-><init>(Lcom/samsung/android/settings/face/bixbysetupwizard/BixbyIconViewLayout;)V

    iput-object v0, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/BixbyIconViewLayout;->mParticleRunnableMid:Ljava/lang/Runnable;

    new-instance v0, Lcom/samsung/android/settings/face/bixbysetupwizard/BixbyIconViewLayout$4;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/face/bixbysetupwizard/BixbyIconViewLayout$4;-><init>(Lcom/samsung/android/settings/face/bixbysetupwizard/BixbyIconViewLayout;)V

    iput-object v0, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/BixbyIconViewLayout;->mParticleRunnableSmall:Ljava/lang/Runnable;

    iput-object p1, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/BixbyIconViewLayout;->mContext:Landroid/content/Context;

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/face/bixbysetupwizard/BixbyIconViewLayout;->initView(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/BixbyIconViewLayout;->mIsSpeakingEnd:Z

    new-instance v0, Lcom/samsung/android/settings/face/bixbysetupwizard/BixbyIconViewLayout$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/face/bixbysetupwizard/BixbyIconViewLayout$1;-><init>(Lcom/samsung/android/settings/face/bixbysetupwizard/BixbyIconViewLayout;)V

    iput-object v0, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/BixbyIconViewLayout;->mParticleHandler:Landroid/os/Handler;

    new-instance v0, Lcom/samsung/android/settings/face/bixbysetupwizard/BixbyIconViewLayout$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/face/bixbysetupwizard/BixbyIconViewLayout$2;-><init>(Lcom/samsung/android/settings/face/bixbysetupwizard/BixbyIconViewLayout;)V

    iput-object v0, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/BixbyIconViewLayout;->mStopMovingRunnable:Ljava/lang/Runnable;

    new-instance v0, Lcom/samsung/android/settings/face/bixbysetupwizard/BixbyIconViewLayout$3;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/face/bixbysetupwizard/BixbyIconViewLayout$3;-><init>(Lcom/samsung/android/settings/face/bixbysetupwizard/BixbyIconViewLayout;)V

    iput-object v0, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/BixbyIconViewLayout;->mParticleRunnableMid:Ljava/lang/Runnable;

    new-instance v0, Lcom/samsung/android/settings/face/bixbysetupwizard/BixbyIconViewLayout$4;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/face/bixbysetupwizard/BixbyIconViewLayout$4;-><init>(Lcom/samsung/android/settings/face/bixbysetupwizard/BixbyIconViewLayout;)V

    iput-object v0, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/BixbyIconViewLayout;->mParticleRunnableSmall:Ljava/lang/Runnable;

    iput-object p1, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/BixbyIconViewLayout;->mContext:Landroid/content/Context;

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/face/bixbysetupwizard/BixbyIconViewLayout;->initView(Landroid/content/Context;)V

    return-void
.end method

.method private getRandom(II)I
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/BixbyIconViewLayout;->mRandom:Ljava/util/Random;

    sub-int v1, p2, p1

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    add-int/2addr v0, p1

    return v0
.end method

.method private initView(Landroid/content/Context;)V
    .locals 6

    const-string/jumbo v2, "layout_inflater"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    const v2, 0x7f0402c9

    const/4 v3, 0x0

    invoke-virtual {v0, v2, p0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/face/bixbysetupwizard/BixbyIconViewLayout;->addView(Landroid/view/View;)V

    const v2, 0x7f11018f

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/face/bixbysetupwizard/BixbyIconViewLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout;

    iput-object v2, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/BixbyIconViewLayout;->mBixbyIconFullLayout:Landroid/widget/FrameLayout;

    const v2, 0x7f110775

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/face/bixbysetupwizard/BixbyIconViewLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/settings/face/bixbysetupwizard/BixbyIconView;

    iput-object v2, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/BixbyIconViewLayout;->mBixbyIconView:Lcom/samsung/android/settings/face/bixbysetupwizard/BixbyIconView;

    new-instance v2, Lcom/samsung/android/graphics/spr/animation/interpolator/ElasticEaseOut;

    const/high16 v3, 0x3f800000    # 1.0f

    const v4, 0x3f19999a    # 0.6f

    invoke-direct {v2, v3, v4}, Lcom/samsung/android/graphics/spr/animation/interpolator/ElasticEaseOut;-><init>(FF)V

    iput-object v2, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/BixbyIconViewLayout;->mElasticEastOutInterpolator:Lcom/samsung/android/graphics/spr/animation/interpolator/ElasticEaseOut;

    new-instance v2, Lcom/samsung/android/settings/face/bixbysetupwizard/SineInOut90;

    invoke-direct {v2}, Lcom/samsung/android/settings/face/bixbysetupwizard/SineInOut90;-><init>()V

    iput-object v2, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/BixbyIconViewLayout;->mSineInterpolator:Lcom/samsung/android/settings/face/bixbysetupwizard/SineInOut90;

    const v2, 0x7f110767

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/face/bixbysetupwizard/BixbyIconViewLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/settings/face/bixbysetupwizard/BixbyIconViewLayout;

    iput-object v2, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/BixbyIconViewLayout;->mBixbyIconViewLayout:Lcom/samsung/android/settings/face/bixbysetupwizard/BixbyIconViewLayout;

    const v2, 0x7f110196

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/face/bixbysetupwizard/BixbyIconViewLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/BixbyIconViewLayout;->mProcessLogoView:Landroid/widget/ImageView;

    const v2, 0x7f110194

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/face/bixbysetupwizard/BixbyIconViewLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/BixbyIconViewLayout;->mProcessLogoLayout:Landroid/view/View;

    iget-object v2, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/BixbyIconViewLayout;->mBixbyIconView:Lcom/samsung/android/settings/face/bixbysetupwizard/BixbyIconView;

    iget-object v3, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/BixbyIconViewLayout;->mProcessLogoLayout:Landroid/view/View;

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/face/bixbysetupwizard/BixbyIconView;->setLogoView(Landroid/view/View;)V

    iget-object v2, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/BixbyIconViewLayout;->mProcessLogoView:Landroid/widget/ImageView;

    const v3, 0x7f0200f4

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    const v2, 0x7f110190

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/face/bixbysetupwizard/BixbyIconViewLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/settings/face/bixbysetupwizard/BixbyUserSayingView;

    iput-object v2, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/BixbyIconViewLayout;->mListenView:Lcom/samsung/android/settings/face/bixbysetupwizard/BixbyUserSayingView;

    new-instance v2, Ljava/util/Random;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-direct {v2, v4, v5}, Ljava/util/Random;-><init>(J)V

    iput-object v2, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/BixbyIconViewLayout;->mRandom:Ljava/util/Random;

    return-void
.end method


# virtual methods
.method public dpToPixel(F)F
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/BixbyIconViewLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v1, p1, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    return v0
.end method

.method protected onMeasure(II)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    return-void
.end method

.method public setBixbySizeAnimation(II)V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/BixbyIconViewLayout;->mParticleHandler:Landroid/os/Handler;

    new-instance v1, Lcom/samsung/android/settings/face/bixbysetupwizard/BixbyIconViewLayout$5;

    invoke-direct {v1, p0, p1}, Lcom/samsung/android/settings/face/bixbysetupwizard/BixbyIconViewLayout$5;-><init>(Lcom/samsung/android/settings/face/bixbysetupwizard/BixbyIconViewLayout;I)V

    int-to-long v2, p2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public setIsSpeakingEnd(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/BixbyIconViewLayout;->mIsSpeakingEnd:Z

    return-void
.end method

.method public startIconTransition(IJ)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/BixbyIconViewLayout;->mParticleHandler:Landroid/os/Handler;

    new-instance v1, Lcom/samsung/android/settings/face/bixbysetupwizard/BixbyIconViewLayout$6;

    invoke-direct {v1, p0, p1}, Lcom/samsung/android/settings/face/bixbysetupwizard/BixbyIconViewLayout$6;-><init>(Lcom/samsung/android/settings/face/bixbysetupwizard/BixbyIconViewLayout;I)V

    invoke-virtual {v0, v1, p2, p3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public startMovingAnimation()V
    .locals 5

    const/4 v4, 0x1

    new-instance v0, Lcom/samsung/android/settings/face/bixbysetupwizard/BixbyIconViewAnimation;

    iget-object v1, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/BixbyIconViewLayout;->mBixbyIconFullLayout:Landroid/widget/FrameLayout;

    const/high16 v2, 0x41a80000    # 21.0f

    invoke-virtual {p0}, Lcom/samsung/android/settings/face/bixbysetupwizard/BixbyIconViewLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    invoke-static {v4, v2, v3}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/settings/face/bixbysetupwizard/BixbyIconViewAnimation;-><init>(Landroid/view/View;F)V

    iput-object v0, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/BixbyIconViewLayout;->mBixbyIconViewAnimation:Lcom/samsung/android/settings/face/bixbysetupwizard/BixbyIconViewAnimation;

    iget-object v0, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/BixbyIconViewLayout;->mBixbyIconViewAnimation:Lcom/samsung/android/settings/face/bixbysetupwizard/BixbyIconViewAnimation;

    invoke-virtual {v0, v4}, Lcom/samsung/android/settings/face/bixbysetupwizard/BixbyIconViewAnimation;->setAnimationState(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/BixbyIconViewLayout;->mBixbyIconFullLayout:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/BixbyIconViewLayout;->mBixbyIconViewAnimation:Lcom/samsung/android/settings/face/bixbysetupwizard/BixbyIconViewAnimation;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method public startParticleAnimation(II)V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/BixbyIconViewLayout;->mParticleHandler:Landroid/os/Handler;

    int-to-long v2, p2

    invoke-virtual {v0, p1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method public startUserSayingAnimation()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/BixbyIconViewLayout;->mListenView:Lcom/samsung/android/settings/face/bixbysetupwizard/BixbyUserSayingView;

    invoke-virtual {v0}, Lcom/samsung/android/settings/face/bixbysetupwizard/BixbyUserSayingView;->startDefaultListeningAnimation()V

    return-void
.end method

.method public stopMovingAnimation()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/BixbyIconViewLayout;->mBixbyIconViewAnimation:Lcom/samsung/android/settings/face/bixbysetupwizard/BixbyIconViewAnimation;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/BixbyIconViewLayout;->mBixbyIconViewAnimation:Lcom/samsung/android/settings/face/bixbysetupwizard/BixbyIconViewAnimation;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/face/bixbysetupwizard/BixbyIconViewAnimation;->setAnimationState(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/BixbyIconViewLayout;->mParticleHandler:Landroid/os/Handler;

    const/16 v1, 0x12c

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_0
    return-void
.end method

.method public stopParticleAnimation()V
    .locals 3

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/BixbyIconViewLayout;->mParticleHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/BixbyIconViewLayout;->mParticleRunnableMid:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    :try_start_1
    iget-object v1, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/BixbyIconViewLayout;->mParticleHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/BixbyIconViewLayout;->mParticleRunnableSmall:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :goto_1
    return-void

    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method public stopUserSayingAnimation()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/BixbyIconViewLayout;->mListenView:Lcom/samsung/android/settings/face/bixbysetupwizard/BixbyUserSayingView;

    invoke-virtual {v0}, Lcom/samsung/android/settings/face/bixbysetupwizard/BixbyUserSayingView;->stopUserSaying()V

    return-void
.end method
