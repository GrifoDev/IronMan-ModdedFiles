.class public Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/ParticleViewLayout;
.super Landroid/widget/FrameLayout;
.source "ParticleViewLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/ParticleViewLayout$1;,
        Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/ParticleViewLayout$2;,
        Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/ParticleViewLayout$3;,
        Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/ParticleViewLayout$4;,
        Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/ParticleViewLayout$5;,
        Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/ParticleViewLayout$6;,
        Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/ParticleViewLayout$OnBixbyIconClickListener;
    }
.end annotation


# instance fields
.field private mAniSet:Landroid/animation/AnimatorSet;

.field private mContext:Landroid/content/Context;

.field private mCurrentParticleSize:I

.field private mIntroLogoView:Landroid/widget/ImageView;

.field private mLightView:Landroid/widget/ImageView;

.field private mListenView:Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/vi/BixbyUserSayingView;

.field mOnBixbyIconClickListener:Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/ParticleViewLayout$OnBixbyIconClickListener;

.field private mParticleFullLayout:Landroid/widget/FrameLayout;

.field private final mParticleHandler:Landroid/os/Handler;

.field private final mParticleRunnableFff:Ljava/lang/Runnable;

.field private final mParticleRunnableMax:Ljava/lang/Runnable;

.field private final mParticleRunnableMid:Ljava/lang/Runnable;

.field private final mParticleRunnableSss:Ljava/lang/Runnable;

.field private mParticleView:Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/ParticleView;

.field private mParticleViewAnimation:Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/ParticleViewAnimation;

.field private mProcessLogoLayout:Landroid/view/View;

.field private mProcessLogoView:Landroid/widget/ImageView;

.field private mProcessLogoViewBg:Landroid/widget/ImageView;

.field private mRandom:Ljava/util/Random;

.field private final mStopMovingRunnable:Ljava/lang/Runnable;


# direct methods
.method static synthetic -get0(Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/ParticleViewLayout;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/ParticleViewLayout;->mParticleHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -get1(Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/ParticleViewLayout;)Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/ParticleViewLayout;->mParticleRunnableFff:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic -get2(Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/ParticleViewLayout;)Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/ParticleViewLayout;->mParticleRunnableMax:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic -get3(Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/ParticleViewLayout;)Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/ParticleViewLayout;->mParticleRunnableMid:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic -get4(Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/ParticleViewLayout;)Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/ParticleViewLayout;->mParticleRunnableSss:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic -get5(Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/ParticleViewLayout;)Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/ParticleView;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/ParticleViewLayout;->mParticleView:Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/ParticleView;

    return-object v0
.end method

.method static synthetic -get6(Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/ParticleViewLayout;)Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/ParticleViewAnimation;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/ParticleViewLayout;->mParticleViewAnimation:Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/ParticleViewAnimation;

    return-object v0
.end method

.method static synthetic -get7(Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/ParticleViewLayout;)Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/ParticleViewLayout;->mStopMovingRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic -set0(Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/ParticleViewLayout;I)I
    .locals 0

    iput p1, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/ParticleViewLayout;->mCurrentParticleSize:I

    return p1
.end method

.method static synthetic -wrap0(Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/ParticleViewLayout;II)I
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/ParticleViewLayout;->getRandom(II)I

    move-result v0

    return v0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0, p1, v1, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v1, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/ParticleViewLayout;->mOnBixbyIconClickListener:Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/ParticleViewLayout$OnBixbyIconClickListener;

    new-instance v0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/ParticleViewLayout$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/ParticleViewLayout$1;-><init>(Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/ParticleViewLayout;)V

    iput-object v0, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/ParticleViewLayout;->mParticleHandler:Landroid/os/Handler;

    new-instance v0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/ParticleViewLayout$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/ParticleViewLayout$2;-><init>(Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/ParticleViewLayout;)V

    iput-object v0, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/ParticleViewLayout;->mStopMovingRunnable:Ljava/lang/Runnable;

    new-instance v0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/ParticleViewLayout$3;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/ParticleViewLayout$3;-><init>(Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/ParticleViewLayout;)V

    iput-object v0, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/ParticleViewLayout;->mParticleRunnableSss:Ljava/lang/Runnable;

    new-instance v0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/ParticleViewLayout$4;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/ParticleViewLayout$4;-><init>(Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/ParticleViewLayout;)V

    iput-object v0, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/ParticleViewLayout;->mParticleRunnableMid:Ljava/lang/Runnable;

    new-instance v0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/ParticleViewLayout$5;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/ParticleViewLayout$5;-><init>(Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/ParticleViewLayout;)V

    iput-object v0, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/ParticleViewLayout;->mParticleRunnableMax:Ljava/lang/Runnable;

    new-instance v0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/ParticleViewLayout$6;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/ParticleViewLayout$6;-><init>(Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/ParticleViewLayout;)V

    iput-object v0, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/ParticleViewLayout;->mParticleRunnableFff:Ljava/lang/Runnable;

    iput-object p1, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/ParticleViewLayout;->mContext:Landroid/content/Context;

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/ParticleViewLayout;->initView(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/ParticleViewLayout;->mOnBixbyIconClickListener:Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/ParticleViewLayout$OnBixbyIconClickListener;

    new-instance v0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/ParticleViewLayout$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/ParticleViewLayout$1;-><init>(Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/ParticleViewLayout;)V

    iput-object v0, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/ParticleViewLayout;->mParticleHandler:Landroid/os/Handler;

    new-instance v0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/ParticleViewLayout$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/ParticleViewLayout$2;-><init>(Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/ParticleViewLayout;)V

    iput-object v0, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/ParticleViewLayout;->mStopMovingRunnable:Ljava/lang/Runnable;

    new-instance v0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/ParticleViewLayout$3;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/ParticleViewLayout$3;-><init>(Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/ParticleViewLayout;)V

    iput-object v0, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/ParticleViewLayout;->mParticleRunnableSss:Ljava/lang/Runnable;

    new-instance v0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/ParticleViewLayout$4;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/ParticleViewLayout$4;-><init>(Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/ParticleViewLayout;)V

    iput-object v0, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/ParticleViewLayout;->mParticleRunnableMid:Ljava/lang/Runnable;

    new-instance v0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/ParticleViewLayout$5;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/ParticleViewLayout$5;-><init>(Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/ParticleViewLayout;)V

    iput-object v0, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/ParticleViewLayout;->mParticleRunnableMax:Ljava/lang/Runnable;

    new-instance v0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/ParticleViewLayout$6;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/ParticleViewLayout$6;-><init>(Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/ParticleViewLayout;)V

    iput-object v0, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/ParticleViewLayout;->mParticleRunnableFff:Ljava/lang/Runnable;

    iput-object p1, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/ParticleViewLayout;->mContext:Landroid/content/Context;

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/ParticleViewLayout;->initView(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/ParticleViewLayout;->mOnBixbyIconClickListener:Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/ParticleViewLayout$OnBixbyIconClickListener;

    new-instance v0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/ParticleViewLayout$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/ParticleViewLayout$1;-><init>(Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/ParticleViewLayout;)V

    iput-object v0, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/ParticleViewLayout;->mParticleHandler:Landroid/os/Handler;

    new-instance v0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/ParticleViewLayout$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/ParticleViewLayout$2;-><init>(Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/ParticleViewLayout;)V

    iput-object v0, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/ParticleViewLayout;->mStopMovingRunnable:Ljava/lang/Runnable;

    new-instance v0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/ParticleViewLayout$3;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/ParticleViewLayout$3;-><init>(Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/ParticleViewLayout;)V

    iput-object v0, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/ParticleViewLayout;->mParticleRunnableSss:Ljava/lang/Runnable;

    new-instance v0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/ParticleViewLayout$4;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/ParticleViewLayout$4;-><init>(Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/ParticleViewLayout;)V

    iput-object v0, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/ParticleViewLayout;->mParticleRunnableMid:Ljava/lang/Runnable;

    new-instance v0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/ParticleViewLayout$5;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/ParticleViewLayout$5;-><init>(Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/ParticleViewLayout;)V

    iput-object v0, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/ParticleViewLayout;->mParticleRunnableMax:Ljava/lang/Runnable;

    new-instance v0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/ParticleViewLayout$6;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/ParticleViewLayout$6;-><init>(Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/ParticleViewLayout;)V

    iput-object v0, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/ParticleViewLayout;->mParticleRunnableFff:Ljava/lang/Runnable;

    iput-object p1, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/ParticleViewLayout;->mContext:Landroid/content/Context;

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/ParticleViewLayout;->initView(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 1

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/ParticleViewLayout;->mOnBixbyIconClickListener:Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/ParticleViewLayout$OnBixbyIconClickListener;

    new-instance v0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/ParticleViewLayout$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/ParticleViewLayout$1;-><init>(Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/ParticleViewLayout;)V

    iput-object v0, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/ParticleViewLayout;->mParticleHandler:Landroid/os/Handler;

    new-instance v0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/ParticleViewLayout$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/ParticleViewLayout$2;-><init>(Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/ParticleViewLayout;)V

    iput-object v0, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/ParticleViewLayout;->mStopMovingRunnable:Ljava/lang/Runnable;

    new-instance v0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/ParticleViewLayout$3;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/ParticleViewLayout$3;-><init>(Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/ParticleViewLayout;)V

    iput-object v0, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/ParticleViewLayout;->mParticleRunnableSss:Ljava/lang/Runnable;

    new-instance v0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/ParticleViewLayout$4;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/ParticleViewLayout$4;-><init>(Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/ParticleViewLayout;)V

    iput-object v0, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/ParticleViewLayout;->mParticleRunnableMid:Ljava/lang/Runnable;

    new-instance v0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/ParticleViewLayout$5;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/ParticleViewLayout$5;-><init>(Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/ParticleViewLayout;)V

    iput-object v0, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/ParticleViewLayout;->mParticleRunnableMax:Ljava/lang/Runnable;

    new-instance v0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/ParticleViewLayout$6;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/ParticleViewLayout$6;-><init>(Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/ParticleViewLayout;)V

    iput-object v0, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/ParticleViewLayout;->mParticleRunnableFff:Ljava/lang/Runnable;

    iput-object p1, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/ParticleViewLayout;->mContext:Landroid/content/Context;

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/ParticleViewLayout;->initView(Landroid/content/Context;)V

    return-void
.end method

.method private getRandom(II)I
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/ParticleViewLayout;->mRandom:Ljava/util/Random;

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

    const v2, 0x7f040051

    const/4 v3, 0x0

    invoke-virtual {v0, v2, p0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/ParticleViewLayout;->addView(Landroid/view/View;)V

    const v2, 0x7f11018f

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/ParticleViewLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout;

    iput-object v2, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/ParticleViewLayout;->mParticleFullLayout:Landroid/widget/FrameLayout;

    const v2, 0x7f110192

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/ParticleViewLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/ParticleView;

    iput-object v2, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/ParticleViewLayout;->mParticleView:Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/ParticleView;

    new-instance v2, Ljava/util/Random;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-direct {v2, v4, v5}, Ljava/util/Random;-><init>(J)V

    iput-object v2, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/ParticleViewLayout;->mRandom:Ljava/util/Random;

    const v2, 0x7f110191

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/ParticleViewLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/ParticleViewLayout;->mIntroLogoView:Landroid/widget/ImageView;

    const v2, 0x7f110196

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/ParticleViewLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/ParticleViewLayout;->mProcessLogoView:Landroid/widget/ImageView;

    const v2, 0x7f110195

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/ParticleViewLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/ParticleViewLayout;->mProcessLogoViewBg:Landroid/widget/ImageView;

    const v2, 0x7f110194

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/ParticleViewLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/ParticleViewLayout;->mProcessLogoLayout:Landroid/view/View;

    const v2, 0x7f110193

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/ParticleViewLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/ParticleViewLayout;->mLightView:Landroid/widget/ImageView;

    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v2, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/ParticleViewLayout;->mAniSet:Landroid/animation/AnimatorSet;

    iget-object v2, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/ParticleViewLayout;->mParticleView:Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/ParticleView;

    iget-object v3, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/ParticleViewLayout;->mProcessLogoLayout:Landroid/view/View;

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/ParticleView;->setLogoView(Landroid/view/View;)V

    iget-object v2, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/ParticleViewLayout;->mProcessLogoView:Landroid/widget/ImageView;

    const v3, 0x7f0200f4

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    const v2, 0x7f110190

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/ParticleViewLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/vi/BixbyUserSayingView;

    iput-object v2, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/ParticleViewLayout;->mListenView:Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/vi/BixbyUserSayingView;

    return-void
.end method


# virtual methods
.method public changeScale(FFFF)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/ParticleViewLayout;->mParticleView:Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/ParticleView;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/ParticleView;->startBixbyScaleAnimation(FFFF)Z

    iget-object v0, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/ParticleViewLayout;->mParticleView:Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/ParticleView;

    invoke-virtual {v0}, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/ParticleView;->invalidate()V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    return-void
.end method

.method public setOnBixbyIconClickListener(Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/ParticleViewLayout$OnBixbyIconClickListener;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/ParticleViewLayout;->mOnBixbyIconClickListener:Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/ParticleViewLayout$OnBixbyIconClickListener;

    return-void
.end method

.method public startMovingAnimation()V
    .locals 5

    const/4 v4, 0x1

    new-instance v0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/ParticleViewAnimation;

    iget-object v1, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/ParticleViewLayout;->mParticleFullLayout:Landroid/widget/FrameLayout;

    const/high16 v2, 0x41a80000    # 21.0f

    invoke-virtual {p0}, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/ParticleViewLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    invoke-static {v4, v2, v3}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/ParticleViewAnimation;-><init>(Landroid/view/View;F)V

    iput-object v0, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/ParticleViewLayout;->mParticleViewAnimation:Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/ParticleViewAnimation;

    iget-object v0, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/ParticleViewLayout;->mParticleViewAnimation:Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/ParticleViewAnimation;

    invoke-virtual {v0, v4}, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/ParticleViewAnimation;->setAnimationState(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/ParticleViewLayout;->mParticleFullLayout:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/ParticleViewLayout;->mParticleViewAnimation:Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/ParticleViewAnimation;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method public startParticleAnimation(II)V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/ParticleViewLayout;->mParticleHandler:Landroid/os/Handler;

    int-to-long v2, p2

    invoke-virtual {v0, p1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method public startUserSayingAnimation()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/ParticleViewLayout;->mListenView:Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/vi/BixbyUserSayingView;

    invoke-virtual {v0}, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/vi/BixbyUserSayingView;->startDefaultListeningAnimation()V

    return-void
.end method

.method public stopMovingAnimation()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/ParticleViewLayout;->mParticleViewAnimation:Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/ParticleViewAnimation;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/ParticleViewLayout;->mParticleViewAnimation:Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/ParticleViewAnimation;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/ParticleViewAnimation;->setAnimationState(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/ParticleViewLayout;->mParticleHandler:Landroid/os/Handler;

    const/16 v1, 0xc8

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_0
    return-void
.end method

.method public stopParticleAnimaion()V
    .locals 3

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/ParticleViewLayout;->mParticleHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/ParticleViewLayout;->mParticleRunnableSss:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    :goto_0
    :try_start_1
    iget-object v1, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/ParticleViewLayout;->mParticleHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/ParticleViewLayout;->mParticleRunnableMid:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    :goto_1
    :try_start_2
    iget-object v1, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/ParticleViewLayout;->mParticleHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/ParticleViewLayout;->mParticleRunnableMax:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    :goto_2
    :try_start_3
    iget-object v1, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/ParticleViewLayout;->mParticleHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/ParticleViewLayout;->mParticleRunnableFff:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    :goto_3
    return-void

    :catch_0
    move-exception v0

    goto :goto_3

    :catch_1
    move-exception v0

    goto :goto_2

    :catch_2
    move-exception v0

    goto :goto_1

    :catch_3
    move-exception v0

    goto :goto_0
.end method

.method public stopUserSayingAnimation()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/ParticleViewLayout;->mListenView:Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/vi/BixbyUserSayingView;

    invoke-virtual {v0}, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/vi/BixbyUserSayingView;->stopUserSaying()V

    return-void
.end method
