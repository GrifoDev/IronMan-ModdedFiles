.class public Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/WaveAnimationView;
.super Landroid/view/View;
.source "WaveAnimationView.java"


# instance fields
.field private mAnim1stBezierY:Landroid/animation/ValueAnimator;

.field private mAnim2ndBezierY:Landroid/animation/ValueAnimator;

.field private mAnimTargetY:Landroid/animation/ValueAnimator;

.field mDuration1stBezierY:J

.field mDuration2ndBezierY:J

.field mDurationTargetY:J

.field private mEndValue:F

.field private mMaximuBulge:F

.field private mPrevBulge:F

.field private mPrevTargetY:F

.field private mStartValue:F

.field private mTargetY:F

.field private mWavePath:Landroid/graphics/Path;

.field private mWavePathPnt:Landroid/graphics/Paint;

.field private waveBezierY:F

.field private waveBottom:F

.field private waveCenterX:F

.field private waveLeft:F

.field private waveRight:F

.field private waveTop:F


# direct methods
.method static synthetic -get0(Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/WaveAnimationView;)Landroid/animation/ValueAnimator;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/WaveAnimationView;->mAnim2ndBezierY:Landroid/animation/ValueAnimator;

    return-object v0
.end method

.method static synthetic -get1(Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/WaveAnimationView;)F
    .locals 1

    iget v0, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/WaveAnimationView;->mEndValue:F

    return v0
.end method

.method static synthetic -get2(Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/WaveAnimationView;)F
    .locals 1

    iget v0, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/WaveAnimationView;->mMaximuBulge:F

    return v0
.end method

.method static synthetic -get3(Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/WaveAnimationView;)F
    .locals 1

    iget v0, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/WaveAnimationView;->mPrevBulge:F

    return v0
.end method

.method static synthetic -get4(Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/WaveAnimationView;)F
    .locals 1

    iget v0, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/WaveAnimationView;->mPrevTargetY:F

    return v0
.end method

.method static synthetic -get5(Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/WaveAnimationView;)F
    .locals 1

    iget v0, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/WaveAnimationView;->mStartValue:F

    return v0
.end method

.method static synthetic -get6(Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/WaveAnimationView;)F
    .locals 1

    iget v0, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/WaveAnimationView;->waveBezierY:F

    return v0
.end method

.method static synthetic -get7(Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/WaveAnimationView;)F
    .locals 1

    iget v0, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/WaveAnimationView;->waveTop:F

    return v0
.end method

.method static synthetic -set0(Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/WaveAnimationView;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/WaveAnimationView;->mAnim2ndBezierY:Landroid/animation/ValueAnimator;

    return-object p1
.end method

.method static synthetic -set1(Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/WaveAnimationView;F)F
    .locals 0

    iput p1, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/WaveAnimationView;->mEndValue:F

    return p1
.end method

.method static synthetic -set2(Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/WaveAnimationView;F)F
    .locals 0

    iput p1, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/WaveAnimationView;->mPrevBulge:F

    return p1
.end method

.method static synthetic -set3(Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/WaveAnimationView;F)F
    .locals 0

    iput p1, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/WaveAnimationView;->mPrevTargetY:F

    return p1
.end method

.method static synthetic -set4(Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/WaveAnimationView;F)F
    .locals 0

    iput p1, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/WaveAnimationView;->mStartValue:F

    return p1
.end method

.method static synthetic -set5(Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/WaveAnimationView;F)F
    .locals 0

    iput p1, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/WaveAnimationView;->waveBezierY:F

    return p1
.end method

.method static synthetic -set6(Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/WaveAnimationView;F)F
    .locals 0

    iput p1, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/WaveAnimationView;->waveTop:F

    return p1
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput v0, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/WaveAnimationView;->waveLeft:F

    iput v0, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/WaveAnimationView;->waveRight:F

    iput v0, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/WaveAnimationView;->waveCenterX:F

    iput v0, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/WaveAnimationView;->waveTop:F

    iput v0, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/WaveAnimationView;->waveBottom:F

    iput v0, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/WaveAnimationView;->waveBezierY:F

    invoke-direct {p0}, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/WaveAnimationView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput v0, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/WaveAnimationView;->waveLeft:F

    iput v0, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/WaveAnimationView;->waveRight:F

    iput v0, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/WaveAnimationView;->waveCenterX:F

    iput v0, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/WaveAnimationView;->waveTop:F

    iput v0, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/WaveAnimationView;->waveBottom:F

    iput v0, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/WaveAnimationView;->waveBezierY:F

    invoke-direct {p0}, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/WaveAnimationView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput v0, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/WaveAnimationView;->waveLeft:F

    iput v0, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/WaveAnimationView;->waveRight:F

    iput v0, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/WaveAnimationView;->waveCenterX:F

    iput v0, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/WaveAnimationView;->waveTop:F

    iput v0, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/WaveAnimationView;->waveBottom:F

    iput v0, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/WaveAnimationView;->waveBezierY:F

    invoke-direct {p0}, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/WaveAnimationView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    iput v0, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/WaveAnimationView;->waveLeft:F

    iput v0, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/WaveAnimationView;->waveRight:F

    iput v0, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/WaveAnimationView;->waveCenterX:F

    iput v0, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/WaveAnimationView;->waveTop:F

    iput v0, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/WaveAnimationView;->waveBottom:F

    iput v0, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/WaveAnimationView;->waveBezierY:F

    invoke-direct {p0}, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/WaveAnimationView;->init()V

    return-void
.end method

.method private init()V
    .locals 0

    return-void
.end method


# virtual methods
.method public clearAnim()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/WaveAnimationView;->mAnimTargetY:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/WaveAnimationView;->mAnimTargetY:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    iput-object v1, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/WaveAnimationView;->mAnimTargetY:Landroid/animation/ValueAnimator;

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/WaveAnimationView;->mAnim1stBezierY:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/WaveAnimationView;->mAnim1stBezierY:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    iput-object v1, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/WaveAnimationView;->mAnim1stBezierY:Landroid/animation/ValueAnimator;

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/WaveAnimationView;->mAnim2ndBezierY:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/WaveAnimationView;->mAnim2ndBezierY:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    iput-object v1, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/WaveAnimationView;->mAnim2ndBezierY:Landroid/animation/ValueAnimator;

    :cond_2
    return-void
.end method

.method public moveToTraget(JFJFJJ)V
    .locals 5

    iget-object v0, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/WaveAnimationView;->mAnimTargetY:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/WaveAnimationView;->mAnimTargetY:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/WaveAnimationView;->mAnim1stBezierY:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/WaveAnimationView;->mAnim1stBezierY:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/WaveAnimationView;->mAnim2ndBezierY:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/WaveAnimationView;->mAnim2ndBezierY:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    return-void

    :cond_3
    iput p3, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/WaveAnimationView;->mTargetY:F

    iput-wide p4, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/WaveAnimationView;->mDurationTargetY:J

    iput-wide p7, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/WaveAnimationView;->mDuration1stBezierY:J

    iput-wide p9, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/WaveAnimationView;->mDuration2ndBezierY:J

    iget v0, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/WaveAnimationView;->waveTop:F

    iget v1, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/WaveAnimationView;->mTargetY:F

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_4

    neg-float v0, p6

    iput v0, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/WaveAnimationView;->mMaximuBulge:F

    :goto_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/WaveAnimationView;->mStartValue:F

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/WaveAnimationView;->mPrevBulge:F

    iget v0, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/WaveAnimationView;->mMaximuBulge:F

    iput v0, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/WaveAnimationView;->mEndValue:F

    const/4 v0, 0x2

    new-array v0, v0, [F

    iget v1, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/WaveAnimationView;->mStartValue:F

    const/4 v2, 0x0

    aput v1, v0, v2

    iget v1, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/WaveAnimationView;->mEndValue:F

    const/4 v2, 0x1

    aput v1, v0, v2

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/WaveAnimationView;->mAnim1stBezierY:Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/WaveAnimationView;->mAnim1stBezierY:Landroid/animation/ValueAnimator;

    iget-wide v2, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/WaveAnimationView;->mDuration1stBezierY:J

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/WaveAnimationView;->mAnim1stBezierY:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/vi/interpolator/SineIn33;

    invoke-direct {v1}, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/vi/interpolator/SineIn33;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v0, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/WaveAnimationView;->mAnim1stBezierY:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/WaveAnimationView$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/WaveAnimationView$1;-><init>(Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/WaveAnimationView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v0, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/WaveAnimationView;->mAnim1stBezierY:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/WaveAnimationView$2;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/WaveAnimationView$2;-><init>(Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/WaveAnimationView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v0, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/WaveAnimationView;->mAnim1stBezierY:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, p1, p2}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    iget-object v0, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/WaveAnimationView;->mAnim1stBezierY:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    iget v0, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/WaveAnimationView;->waveTop:F

    iput v0, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/WaveAnimationView;->mStartValue:F

    iput v0, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/WaveAnimationView;->mPrevTargetY:F

    iget v0, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/WaveAnimationView;->mTargetY:F

    iput v0, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/WaveAnimationView;->mEndValue:F

    const/4 v0, 0x2

    new-array v0, v0, [F

    iget v1, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/WaveAnimationView;->mStartValue:F

    const/4 v2, 0x0

    aput v1, v0, v2

    iget v1, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/WaveAnimationView;->mEndValue:F

    const/4 v2, 0x1

    aput v1, v0, v2

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/WaveAnimationView;->mAnimTargetY:Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/WaveAnimationView;->mAnimTargetY:Landroid/animation/ValueAnimator;

    iget-wide v2, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/WaveAnimationView;->mDurationTargetY:J

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/WaveAnimationView;->mAnimTargetY:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/vi/interpolator/SineInOut33;

    invoke-direct {v1}, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/vi/interpolator/SineInOut33;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v0, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/WaveAnimationView;->mAnimTargetY:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/WaveAnimationView$3;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/WaveAnimationView$3;-><init>(Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/WaveAnimationView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v0, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/WaveAnimationView;->mAnimTargetY:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, p1, p2}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    iget-object v0, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/WaveAnimationView;->mAnimTargetY:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    return-void

    :cond_4
    iput p6, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/WaveAnimationView;->mMaximuBulge:F

    goto/16 :goto_0
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    invoke-virtual {p0}, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/WaveAnimationView;->clearAnim()V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 5

    iget-object v0, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/WaveAnimationView;->mWavePath:Landroid/graphics/Path;

    if-nez v0, :cond_0

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/WaveAnimationView;->mWavePath:Landroid/graphics/Path;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/WaveAnimationView;->mWavePathPnt:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/WaveAnimationView;->mWavePathPnt:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/WaveAnimationView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d00b6

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/WaveAnimationView;->mWavePathPnt:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/WaveAnimationView;->mWavePathPnt:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/WaveAnimationView;->getWidth()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/WaveAnimationView;->waveRight:F

    invoke-virtual {p0}, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/WaveAnimationView;->getHeight()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/WaveAnimationView;->waveBottom:F

    iget v0, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/WaveAnimationView;->waveRight:F

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    iput v0, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/WaveAnimationView;->waveCenterX:F

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/WaveAnimationView;->mWavePath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    iget-object v0, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/WaveAnimationView;->mWavePath:Landroid/graphics/Path;

    iget v1, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/WaveAnimationView;->waveLeft:F

    iget v2, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/WaveAnimationView;->waveTop:F

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->moveTo(FF)V

    iget-object v0, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/WaveAnimationView;->mWavePath:Landroid/graphics/Path;

    iget v1, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/WaveAnimationView;->waveLeft:F

    iget v2, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/WaveAnimationView;->waveBottom:F

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v0, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/WaveAnimationView;->mWavePath:Landroid/graphics/Path;

    iget v1, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/WaveAnimationView;->waveRight:F

    iget v2, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/WaveAnimationView;->waveBottom:F

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v0, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/WaveAnimationView;->mWavePath:Landroid/graphics/Path;

    iget v1, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/WaveAnimationView;->waveRight:F

    iget v2, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/WaveAnimationView;->waveTop:F

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v0, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/WaveAnimationView;->mWavePath:Landroid/graphics/Path;

    iget v1, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/WaveAnimationView;->waveCenterX:F

    iget v2, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/WaveAnimationView;->waveBezierY:F

    iget v3, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/WaveAnimationView;->waveLeft:F

    iget v4, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/WaveAnimationView;->waveTop:F

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Path;->quadTo(FFFF)V

    iget-object v0, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/WaveAnimationView;->mWavePath:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/WaveAnimationView;->mWavePathPnt:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    return-void
.end method

.method public setToTarget(F)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/WaveAnimationView;->waveBezierY:F

    iput p1, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/WaveAnimationView;->waveTop:F

    return-void
.end method
