.class public abstract Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView;
.super Landroid/widget/FrameLayout;
.source "BixbyView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView$1;,
        Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView$AnimStates;,
        Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView$AnimationStateHandler;,
        Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView$VoiceCallback;
    }
.end annotation


# instance fields
.field public final mAnimationStateHandler:Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView$AnimationStateHandler;

.field private mBixbyBackgroundImageView:Landroid/view/View;

.field private mBixbyModeSwitcher:Landroid/view/View;

.field public mBixbyScriptPlayer:Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/util/BixbyScriptPlayer;

.field private mContext:Landroid/content/Context;

.field private mCurrentIntroState:Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView$AnimStates;

.field private mCurrentListeningState:Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView$AnimStates;

.field private mCurrentMessageInProcess:I

.field public mCurrentScreenNavigationStatus:Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView$AnimStates;

.field public mCurrentScriptPlayStatus:Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView$AnimStates;

.field private mCurrentWaveAnimState:Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView$AnimStates;

.field mIBixbyScriptPlayerListener:Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/IBixbyScriptPlayerStates;

.field private mIntroDesc:Landroid/widget/TextView;

.field private mIsActivityPaused:Z

.field private mLcdHeight:I

.field private mMainBodyLayout:Landroid/view/View;

.field private mMainButtonLayout:Landroid/view/View;

.field private mParticleViewLayout:Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/ParticleViewLayout;

.field private mScreenHeaderTitle:Landroid/widget/TextView;

.field mSoftKeyButtonsVoiceCommand:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mVoiceCallback:Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/VoiceCommandHelper$VoiceCommandHelperCallback;

.field private mVoiceHelper:Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/VoiceCommandHelper;

.field private mWaveAnimRootLayout:Landroid/view/View;

.field private mWaveAnimationView:Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/WaveAnimationView;


# direct methods
.method static synthetic -get0(Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView;)I
    .locals 1

    iget v0, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView;->mCurrentMessageInProcess:I

    return v0
.end method

.method static synthetic -get1(Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView;->mIsActivityPaused:Z

    return v0
.end method

.method static synthetic -get2(Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView;)Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/ParticleViewLayout;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView;->mParticleViewLayout:Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/ParticleViewLayout;

    return-object v0
.end method

.method static synthetic -get3(Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView;)Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/VoiceCommandHelper;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView;->mVoiceHelper:Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/VoiceCommandHelper;

    return-object v0
.end method

.method static synthetic -set0(Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView;Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView$AnimStates;)Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView$AnimStates;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView;->mCurrentIntroState:Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView$AnimStates;

    return-object p1
.end method

.method static synthetic -set1(Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView;I)I
    .locals 0

    iput p1, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView;->mCurrentMessageInProcess:I

    return p1
.end method

.method static synthetic -wrap0(Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView;Ljava/lang/String;)Ljava/lang/Integer;
    .locals 1

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView;->getButtonID(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView;Landroid/view/View;)Ljava/lang/String;
    .locals 1

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView;->getTextFromView(Landroid/view/View;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap2(Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView;->closeAnimation(I)V

    return-void
.end method

.method static synthetic -wrap3(Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView;->endIntroAnimation()V

    return-void
.end method

.method static synthetic -wrap4(Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView;->scriptPlayCompleted()V

    return-void
.end method

.method static synthetic -wrap5(Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView;->startIntroAnimation()V

    return-void
.end method

.method static synthetic -wrap6(Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView;->startWaveAnimation()V

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView;->mSoftKeyButtonsVoiceCommand:Ljava/util/HashMap;

    new-instance v0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView$AnimationStateHandler;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView$AnimationStateHandler;-><init>(Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView;)V

    iput-object v0, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView;->mAnimationStateHandler:Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView$AnimationStateHandler;

    sget-object v0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView$AnimStates;->NONE:Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView$AnimStates;

    iput-object v0, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView;->mCurrentIntroState:Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView$AnimStates;

    sget-object v0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView$AnimStates;->NONE:Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView$AnimStates;

    iput-object v0, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView;->mCurrentWaveAnimState:Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView$AnimStates;

    sget-object v0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView$AnimStates;->NONE:Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView$AnimStates;

    iput-object v0, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView;->mCurrentListeningState:Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView$AnimStates;

    sget-object v0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView$AnimStates;->NONE:Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView$AnimStates;

    iput-object v0, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView;->mCurrentScriptPlayStatus:Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView$AnimStates;

    sget-object v0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView$AnimStates;->NONE:Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView$AnimStates;

    iput-object v0, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView;->mCurrentScreenNavigationStatus:Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView$AnimStates;

    new-instance v0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView$1;-><init>(Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView;)V

    iput-object v0, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView;->mIBixbyScriptPlayerListener:Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/IBixbyScriptPlayerStates;

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView;->mSoftKeyButtonsVoiceCommand:Ljava/util/HashMap;

    new-instance v0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView$AnimationStateHandler;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView$AnimationStateHandler;-><init>(Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView;)V

    iput-object v0, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView;->mAnimationStateHandler:Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView$AnimationStateHandler;

    sget-object v0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView$AnimStates;->NONE:Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView$AnimStates;

    iput-object v0, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView;->mCurrentIntroState:Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView$AnimStates;

    sget-object v0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView$AnimStates;->NONE:Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView$AnimStates;

    iput-object v0, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView;->mCurrentWaveAnimState:Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView$AnimStates;

    sget-object v0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView$AnimStates;->NONE:Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView$AnimStates;

    iput-object v0, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView;->mCurrentListeningState:Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView$AnimStates;

    sget-object v0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView$AnimStates;->NONE:Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView$AnimStates;

    iput-object v0, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView;->mCurrentScriptPlayStatus:Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView$AnimStates;

    sget-object v0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView$AnimStates;->NONE:Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView$AnimStates;

    iput-object v0, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView;->mCurrentScreenNavigationStatus:Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView$AnimStates;

    new-instance v0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView$1;-><init>(Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView;)V

    iput-object v0, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView;->mIBixbyScriptPlayerListener:Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/IBixbyScriptPlayerStates;

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView;->mSoftKeyButtonsVoiceCommand:Ljava/util/HashMap;

    new-instance v0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView$AnimationStateHandler;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView$AnimationStateHandler;-><init>(Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView;)V

    iput-object v0, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView;->mAnimationStateHandler:Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView$AnimationStateHandler;

    sget-object v0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView$AnimStates;->NONE:Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView$AnimStates;

    iput-object v0, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView;->mCurrentIntroState:Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView$AnimStates;

    sget-object v0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView$AnimStates;->NONE:Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView$AnimStates;

    iput-object v0, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView;->mCurrentWaveAnimState:Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView$AnimStates;

    sget-object v0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView$AnimStates;->NONE:Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView$AnimStates;

    iput-object v0, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView;->mCurrentListeningState:Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView$AnimStates;

    sget-object v0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView$AnimStates;->NONE:Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView$AnimStates;

    iput-object v0, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView;->mCurrentScriptPlayStatus:Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView$AnimStates;

    sget-object v0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView$AnimStates;->NONE:Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView$AnimStates;

    iput-object v0, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView;->mCurrentScreenNavigationStatus:Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView$AnimStates;

    new-instance v0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView$1;-><init>(Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView;)V

    iput-object v0, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView;->mIBixbyScriptPlayerListener:Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/IBixbyScriptPlayerStates;

    return-void
.end method

.method private closeAnimation(I)V
    .locals 12

    sget-object v0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView$AnimStates;->END:Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView$AnimStates;

    iput-object v0, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView;->mCurrentScreenNavigationStatus:Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView$AnimStates;

    invoke-direct {p0}, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView;->disableAllButtons()V

    iget-object v0, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView;->mParticleViewLayout:Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/ParticleViewLayout;

    invoke-virtual {v0}, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/ParticleViewLayout;->stopUserSayingAnimation()V

    invoke-virtual {p0}, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView;->clean()V

    iget-object v0, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView;->mBixbyModeSwitcher:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView;->mBixbyModeSwitcher:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView;->mParticleViewLayout:Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/ParticleViewLayout;

    invoke-virtual {v0}, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/ParticleViewLayout;->stopMovingAnimation()V

    iget-object v0, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView;->mParticleViewLayout:Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/ParticleViewLayout;

    invoke-virtual {v0}, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/ParticleViewLayout;->stopParticleAnimaion()V

    iget-object v1, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView;->mParticleViewLayout:Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/ParticleViewLayout;

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x14d

    invoke-direct {p0}, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView;->getIntroHeight()F

    move-result v0

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v0, v6

    invoke-virtual {p0}, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView;->getBixbyPositionInHeader()F

    move-result v6

    sub-float/2addr v0, v6

    neg-float v6, v0

    new-instance v8, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/vi/interpolator/SineInOut33;

    invoke-direct {v8}, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/vi/interpolator/SineInOut33;-><init>()V

    const/4 v7, 0x0

    invoke-static/range {v1 .. v8}, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/vi/BixbyAnimationHelper;->animTextVerticalTransAtoB(Landroid/view/View;JJFFLandroid/animation/TimeInterpolator;)V

    iget-object v0, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView;->mWaveAnimationView:Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/WaveAnimationView;

    invoke-virtual {v0}, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/WaveAnimationView;->clearAnim()V

    iget-object v0, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView;->mWaveAnimationView:Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/WaveAnimationView;

    invoke-virtual {p0}, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView;->getHeaderHeight()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/WaveAnimationView;->setToTarget(F)V

    iget-object v1, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView;->mWaveAnimationView:Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/WaveAnimationView;

    const-wide/16 v2, 0x0

    iget v0, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView;->mLcdHeight:I

    int-to-float v4, v0

    const-wide/16 v5, 0x14d

    const/high16 v7, 0x43840000    # 264.0f

    const-wide/16 v8, 0xfa

    const-wide/16 v10, 0x2ee

    invoke-virtual/range {v1 .. v11}, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/WaveAnimationView;->moveToTraget(JFJFJJ)V

    iget-object v0, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView;->mScreenHeaderTitle:Landroid/widget/TextView;

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0xa7

    invoke-static {v0, v2, v3, v4, v5}, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/vi/BixbyAnimationHelper;->animCommonAlphaEnd(Landroid/view/View;JJ)Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView;->mMainButtonLayout:Landroid/view/View;

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0xa7

    invoke-static {v0, v2, v3, v4, v5}, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/vi/BixbyAnimationHelper;->animCommonAlphaEnd(Landroid/view/View;JJ)Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView;->mMainBodyLayout:Landroid/view/View;

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0xa7

    invoke-static {v0, v2, v3, v4, v5}, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/vi/BixbyAnimationHelper;->animCommonAlphaEnd(Landroid/view/View;JJ)Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView;->mBixbyBackgroundImageView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    iget-object v0, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView;->mBixbyBackgroundImageView:Landroid/view/View;

    const v1, 0x7f0205c7

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView;->mBixbyBackgroundImageView:Landroid/view/View;

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x14d

    invoke-static {v0, v2, v3, v4, v5}, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/vi/BixbyAnimationHelper;->animCommonAlphaStart(Landroid/view/View;JJ)Landroid/animation/ValueAnimator;

    return-void
.end method

.method private disableAllButtons()V
    .locals 4

    iget-object v3, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView;->mSoftKeyButtonsVoiceCommand:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_0

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setEnabled(Z)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private endIntroAnimation()V
    .locals 2

    const-string/jumbo v0, "Settings -> BixbyView"

    const-string/jumbo v1, "endIntroAnimation"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView$AnimStates;->END:Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView$AnimStates;

    iput-object v0, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView;->mCurrentIntroState:Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView$AnimStates;

    invoke-virtual {p0}, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView;->onEndIntroAnimation()V

    return-void
.end method

.method private getButtonID(Ljava/lang/String;)Ljava/lang/Integer;
    .locals 4

    const-string/jumbo v1, "Settings -> BixbyView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, " serverReturnString "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView;->mSoftKeyButtonsVoiceCommand:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljava/util/Locale;->KOREAN:Ljava/util/Locale;

    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    if-nez v0, :cond_0

    iget-object v1, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView;->mSoftKeyButtonsVoiceCommand:Ljava/util/HashMap;

    const-string/jumbo v2, " "

    const-string/jumbo v3, ""

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    return-object v1

    :cond_0
    return-object v0
.end method

.method private getHeaderMarginBottom()F
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a01df

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    return v0
.end method

.method private getIntroHeight()F
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a01dc

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    return v0
.end method

.method private getLcdHeight()I
    .locals 4

    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    iget-object v2, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "window"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager;

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    iget v2, v1, Landroid/graphics/Point;->y:I

    return v2
.end method

.method private getTextFromView(Landroid/view/View;)Ljava/lang/String;
    .locals 5

    const-string/jumbo v0, ""

    instance-of v4, p1, Landroid/view/ViewGroup;

    if-eqz v4, :cond_3

    move-object v3, p1

    check-cast v3, Landroid/view/ViewGroup;

    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    if-ge v2, v4, :cond_0

    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView;->getTextFromView(Landroid/view/View;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    :cond_0
    :goto_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    const-string/jumbo v0, ""

    :cond_1
    return-object v0

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    instance-of v4, p1, Landroid/widget/TextView;

    if-nez v4, :cond_4

    instance-of v4, p1, Landroid/widget/Button;

    if-eqz v4, :cond_0

    :cond_4
    check-cast p1, Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method private isScriptPlaying()Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView;->mBixbyScriptPlayer:Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/util/BixbyScriptPlayer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView;->mBixbyScriptPlayer:Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/util/BixbyScriptPlayer;

    invoke-virtual {v0}, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/util/BixbyScriptPlayer;->isPlaying()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private resetAnimationStates()V
    .locals 1

    sget-object v0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView$AnimStates;->NONE:Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView$AnimStates;

    iput-object v0, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView;->mCurrentIntroState:Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView$AnimStates;

    sget-object v0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView$AnimStates;->NONE:Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView$AnimStates;

    iput-object v0, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView;->mCurrentWaveAnimState:Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView$AnimStates;

    sget-object v0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView$AnimStates;->NONE:Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView$AnimStates;

    iput-object v0, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView;->mCurrentListeningState:Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView$AnimStates;

    sget-object v0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView$AnimStates;->NONE:Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView$AnimStates;

    iput-object v0, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView;->mCurrentScriptPlayStatus:Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView$AnimStates;

    return-void
.end method

.method private declared-synchronized scriptPlayCompleted()V
    .locals 3

    monitor-enter p0

    :try_start_0
    const-string/jumbo v0, "Settings -> BixbyView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "scriptPlayCompleted : mCurrentMessageInProcess -> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView;->mCurrentMessageInProcess:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " mCurrentIntroState : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView;->mCurrentIntroState:Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView$AnimStates;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView$AnimStates;->END:Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView$AnimStates;

    iput-object v0, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView;->mCurrentScriptPlayStatus:Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView$AnimStates;

    iget v0, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView;->mCurrentMessageInProcess:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView;->mCurrentIntroState:Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView$AnimStates;

    sget-object v1, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView$AnimStates;->STARTED:Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView$AnimStates;

    if-ne v0, v1, :cond_1

    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView;->endIntroAnimation()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    invoke-virtual {p0}, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView;->onScriptPlayCompleted()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private startIntroAnimation()V
    .locals 9

    const-wide/16 v2, 0x64

    const/4 v7, 0x0

    invoke-virtual {p0}, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView;->onStartIntroAnimation()V

    iget-object v0, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView;->mIntroDesc:Landroid/widget/TextView;

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setAlpha(F)V

    iget-object v0, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView;->mIntroDesc:Landroid/widget/TextView;

    const-wide/16 v4, 0xa7

    invoke-static {v0, v2, v3, v4, v5}, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/vi/BixbyAnimationHelper;->animCommonAlphaStart(Landroid/view/View;JJ)Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView;->mIntroDesc:Landroid/widget/TextView;

    const-wide/16 v4, 0x29a

    new-instance v8, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/vi/interpolator/Elastic60;

    invoke-direct {v8}, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/vi/interpolator/Elastic60;-><init>()V

    const/high16 v6, 0x43480000    # 200.0f

    invoke-static/range {v1 .. v8}, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/vi/BixbyAnimationHelper;->animTextVerticalTransAtoB(Landroid/view/View;JJFFLandroid/animation/TimeInterpolator;)V

    iget-object v0, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView;->mParticleViewLayout:Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/ParticleViewLayout;

    invoke-virtual {v0}, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/ParticleViewLayout;->startMovingAnimation()V

    iget-object v0, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView;->mParticleViewLayout:Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/ParticleViewLayout;

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/ParticleViewLayout;->startParticleAnimation(II)V

    const/16 v0, 0xad7

    invoke-direct {p0, v0}, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView;->stopParticleAnimation(I)V

    return-void
.end method

.method private startWaveAnimation()V
    .locals 12

    invoke-virtual {p0}, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView;->initViewsForWaveAnimation()V

    iget-object v0, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView;->mWaveAnimationView:Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/WaveAnimationView;

    invoke-direct {p0}, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView;->getLcdHeight()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView;->getHeaderHeight()F

    move-result v2

    sub-float/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/WaveAnimationView;->setToTarget(F)V

    iget-object v0, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView;->mMainBodyLayout:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    iget-object v0, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView;->mMainButtonLayout:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    iget-object v0, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView;->mIntroDesc:Landroid/widget/TextView;

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0xa7

    invoke-static {v0, v2, v3, v4, v5}, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/vi/BixbyAnimationHelper;->animCommonAlphaEnd(Landroid/view/View;JJ)Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView;->mBixbyBackgroundImageView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    iget-object v0, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView;->mBixbyBackgroundImageView:Landroid/view/View;

    invoke-virtual {p0}, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView;->getGradientBackgroundColorID()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView;->mBixbyBackgroundImageView:Landroid/view/View;

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x14d

    invoke-static {v0, v2, v3, v4, v5}, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/vi/BixbyAnimationHelper;->animCommonAlphaStart(Landroid/view/View;JJ)Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView;->mWaveAnimRootLayout:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView;->mParticleViewLayout:Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/ParticleViewLayout;

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/ParticleViewLayout;->startParticleAnimation(II)V

    const/16 v0, 0xad7

    invoke-direct {p0, v0}, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView;->stopParticleAnimation(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView;->mParticleViewLayout:Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/ParticleViewLayout;

    const/high16 v1, 0x42b40000    # 90.0f

    const/4 v2, 0x0

    const/high16 v3, 0x42b40000    # 90.0f

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/ParticleViewLayout;->changeScale(FFFF)V

    iget-object v1, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView;->mParticleViewLayout:Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/ParticleViewLayout;

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x14d

    const/4 v6, 0x0

    invoke-direct {p0}, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView;->getIntroHeight()F

    move-result v0

    const/high16 v7, 0x40000000    # 2.0f

    div-float/2addr v0, v7

    invoke-virtual {p0}, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView;->getBixbyPositionInHeader()F

    move-result v7

    sub-float/2addr v0, v7

    neg-float v7, v0

    new-instance v8, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/vi/interpolator/SineInOut33;

    invoke-direct {v8}, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/vi/interpolator/SineInOut33;-><init>()V

    invoke-static/range {v1 .. v8}, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/vi/BixbyAnimationHelper;->animTextVerticalTransAtoB(Landroid/view/View;JJFFLandroid/animation/TimeInterpolator;)V

    iget-object v1, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView;->mWaveAnimationView:Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/WaveAnimationView;

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    const-wide/16 v5, 0x14d

    const/high16 v7, 0x43af0000    # 350.0f

    const-wide/16 v8, 0xfa

    const-wide/16 v10, 0x2ee

    invoke-virtual/range {v1 .. v11}, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/WaveAnimationView;->moveToTraget(JFJFJJ)V

    iget-object v0, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView;->mMainButtonLayout:Landroid/view/View;

    const-wide/16 v2, 0xfa

    const-wide/16 v4, 0x14d

    invoke-static {v0, v2, v3, v4, v5}, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/vi/BixbyAnimationHelper;->animCommonAlphaStart(Landroid/view/View;JJ)Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView;->mMainBodyLayout:Landroid/view/View;

    const-wide/16 v2, 0xfa

    const-wide/16 v4, 0x14d

    invoke-static {v0, v2, v3, v4, v5}, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/vi/BixbyAnimationHelper;->animCommonAlphaStart(Landroid/view/View;JJ)Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView;->mScreenHeaderTitle:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView;->mScreenHeaderTitle:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAlpha(F)V

    iget-object v1, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView;->mScreenHeaderTitle:Landroid/widget/TextView;

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x14d

    const/4 v6, 0x0

    invoke-direct {p0}, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView;->getIntroHeight()F

    move-result v0

    invoke-virtual {p0}, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView;->getHeaderHeight()F

    move-result v7

    invoke-direct {p0}, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView;->getHeaderMarginBottom()F

    move-result v8

    sub-float/2addr v7, v8

    sub-float/2addr v0, v7

    neg-float v7, v0

    new-instance v8, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/vi/interpolator/SineInOut33;

    invoke-direct {v8}, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/vi/interpolator/SineInOut33;-><init>()V

    invoke-static/range {v1 .. v8}, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/vi/BixbyAnimationHelper;->animTextVerticalTransAtoB(Landroid/view/View;JJFFLandroid/animation/TimeInterpolator;)V

    iget-object v0, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView;->mScreenHeaderTitle:Landroid/widget/TextView;

    const-wide/16 v2, 0x14d

    const-wide/16 v4, 0xa7

    invoke-static {v0, v2, v3, v4, v5}, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/vi/BixbyAnimationHelper;->animCommonAlphaStart(Landroid/view/View;JJ)Landroid/animation/ValueAnimator;

    return-void
.end method

.method private stopParticleAnimation(I)V
    .locals 4

    new-instance v0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView$4;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView$4;-><init>(Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView;)V

    int-to-long v2, p1

    invoke-virtual {p0, v0, v2, v3}, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private stopScriptPlay()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView;->mBixbyScriptPlayer:Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/util/BixbyScriptPlayer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView;->mCurrentScriptPlayStatus:Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView$AnimStates;

    sget-object v1, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView$AnimStates;->STARTED:Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView$AnimStates;

    if-ne v0, v1, :cond_0

    const-string/jumbo v0, "Settings -> BixbyView"

    const-string/jumbo v1, "stopScriptPlay"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView$AnimStates;->END:Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView$AnimStates;

    iput-object v0, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView;->mCurrentScriptPlayStatus:Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView$AnimStates;

    iget-object v0, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView;->mBixbyScriptPlayer:Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/util/BixbyScriptPlayer;

    invoke-virtual {v0}, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/util/BixbyScriptPlayer;->stopScriptPlay()V

    :cond_0
    return-void
.end method


# virtual methods
.method protected declared-synchronized clean()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView;->mAnimationStateHandler:Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView$AnimationStateHandler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView$AnimationStateHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView;->mVoiceHelper:Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/VoiceCommandHelper;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView;->mVoiceHelper:Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/VoiceCommandHelper;

    invoke-virtual {v0}, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/VoiceCommandHelper;->clear()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView;->mVoiceHelper:Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/VoiceCommandHelper;

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView;->mVoiceCallback:Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/VoiceCommandHelper$VoiceCommandHelperCallback;

    iget-object v0, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView;->mBixbyScriptPlayer:Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/util/BixbyScriptPlayer;

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView;->stopScriptPlay()V

    iget-object v0, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView;->mBixbyScriptPlayer:Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/util/BixbyScriptPlayer;

    invoke-virtual {v0}, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/util/BixbyScriptPlayer;->clean()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView;->mBixbyScriptPlayer:Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/util/BixbyScriptPlayer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected abstract getBixbyHeaderTitle()Ljava/lang/String;
.end method

.method protected abstract getBixbyIntroDescription()Ljava/lang/String;
.end method

.method protected getBixbyPositionInHeader()F
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a01de

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    return v0
.end method

.method protected getGradientBackgroundColorID()I
    .locals 1

    const v0, 0x7f0205c9

    return v0
.end method

.method protected getHeaderHeight()F
    .locals 2

    invoke-virtual {p0}, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a01d0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    return v0
.end method

.method protected abstract getIntroAudioName()Ljava/lang/String;
.end method

.method protected getMainBodyLayoutView()I
    .locals 1

    const v0, 0x7f1109bf

    return v0
.end method

.method protected getMainButtonlayoutView()I
    .locals 1

    const v0, 0x7f1109c1

    return v0
.end method

.method protected abstract getSoftKeyButtonVoiceCommands()Ljava/util/HashMap;
.end method

.method protected getWaveAnimRootLayoutView()I
    .locals 1

    const v0, 0x7f1109c9

    return v0
.end method

.method protected init(Landroid/content/Context;)V
    .locals 3

    iput-object p1, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView;->mContext:Landroid/content/Context;

    invoke-direct {p0}, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView;->getLcdHeight()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView;->mLcdHeight:I

    invoke-direct {p0}, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView;->resetAnimationStates()V

    invoke-virtual {p0}, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView;->startFromThisMessage()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView;->mCurrentMessageInProcess:I

    invoke-virtual {p0}, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView;->getSoftKeyButtonVoiceCommands()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView;->mSoftKeyButtonsVoiceCommand:Ljava/util/HashMap;

    const v0, 0x7f110598

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView;->mBixbyModeSwitcher:Landroid/view/View;

    const v0, 0x7f11018d

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView;->mScreenHeaderTitle:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView;->mScreenHeaderTitle:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView;->getBixbyHeaderTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f11018e

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView;->mIntroDesc:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView;->mIntroDesc:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView;->getBixbyIntroDescription()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f11018a

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView;->mBixbyBackgroundImageView:Landroid/view/View;

    invoke-virtual {p0}, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView;->getWaveAnimRootLayoutView()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView;->mWaveAnimRootLayout:Landroid/view/View;

    invoke-virtual {p0}, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView;->initViewsForWaveAnimation()V

    iget-object v0, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView;->mWaveAnimRootLayout:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView;->mWaveAnimRootLayout:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    const v0, 0x7f11018c

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/ParticleViewLayout;

    iput-object v0, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView;->mParticleViewLayout:Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/ParticleViewLayout;

    iget-object v0, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView;->mParticleViewLayout:Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/ParticleViewLayout;

    new-instance v1, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView$2;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView$2;-><init>(Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/ParticleViewLayout;->setOnBixbyIconClickListener(Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/ParticleViewLayout$OnBixbyIconClickListener;)V

    new-instance v0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/util/BixbyScriptPlayer;

    iget-object v1, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/util/BixbyScriptPlayer;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView;->mBixbyScriptPlayer:Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/util/BixbyScriptPlayer;

    iget-object v0, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView;->mBixbyScriptPlayer:Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/util/BixbyScriptPlayer;

    iget-object v1, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView;->mIBixbyScriptPlayerListener:Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/IBixbyScriptPlayerStates;

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/util/BixbyScriptPlayer;->setBixbyScriptPlayerListener(Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/IBixbyScriptPlayerStates;)V

    iget-object v0, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView;->mBixbyScriptPlayer:Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/util/BixbyScriptPlayer;

    invoke-virtual {v0}, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/util/BixbyScriptPlayer;->buildBixbyScriptPlayer()V

    new-instance v0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView$VoiceCallback;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView$VoiceCallback;-><init>(Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView;)V

    iput-object v0, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView;->mVoiceCallback:Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/VoiceCommandHelper$VoiceCommandHelperCallback;

    new-instance v0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/VoiceCommandHelper;

    iget-object v1, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView;->mVoiceCallback:Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/VoiceCommandHelper$VoiceCommandHelperCallback;

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/VoiceCommandHelper;-><init>(Landroid/content/Context;Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/VoiceCommandHelper$VoiceCommandHelperCallback;)V

    iput-object v0, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView;->mVoiceHelper:Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/VoiceCommandHelper;

    return-void
.end method

.method protected initViewsForWaveAnimation()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView;->mWaveAnimationView:Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/WaveAnimationView;

    if-nez v0, :cond_0

    const v0, 0x7f110768

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/WaveAnimationView;

    iput-object v0, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView;->mWaveAnimationView:Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/WaveAnimationView;

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView;->mMainBodyLayout:Landroid/view/View;

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView;->getMainBodyLayoutView()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView;->mMainBodyLayout:Landroid/view/View;

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView;->mMainButtonLayout:Landroid/view/View;

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView;->getMainButtonlayoutView()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView;->mMainButtonLayout:Landroid/view/View;

    :cond_2
    return-void
.end method

.method public onDestroy()V
    .locals 2

    const-string/jumbo v0, "Settings -> BixbyView"

    const-string/jumbo v1, "BixbyView : onDestroy"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView;->clean()V

    return-void
.end method

.method protected onEndIntroAnimation()V
    .locals 4

    const-string/jumbo v0, "Settings -> BixbyView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onEndIntroAnimation : currentWaveAnimState "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView;->mCurrentWaveAnimState:Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView$AnimStates;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView;->mCurrentWaveAnimState:Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView$AnimStates;

    sget-object v1, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView$AnimStates;->STARTED:Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView$AnimStates;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView;->mAnimationStateHandler:Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView$AnimationStateHandler;

    const-wide/16 v2, 0x0

    const/4 v1, 0x3

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView$AnimationStateHandler;->sendEmptyMessageDelayed(IJ)Z

    :cond_0
    return-void
.end method

.method protected onEndWaveAnimation()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView;->startListening(I)V

    return-void
.end method

.method protected onMoveToNextScreen()V
    .locals 4

    const-string/jumbo v1, "Settings -> BixbyView"

    const-string/jumbo v2, "Move to Next Screen"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView;->mAnimationStateHandler:Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView$AnimationStateHandler;

    const/4 v2, 0x7

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView$AnimationStateHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    const/4 v1, 0x0

    iput v1, v0, Landroid/os/Message;->arg1:I

    iget-object v1, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView;->mAnimationStateHandler:Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView$AnimationStateHandler;

    const-wide/16 v2, 0x0

    invoke-virtual {v1, v0, v2, v3}, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView$AnimationStateHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method protected onMoveToPreviousScreen()V
    .locals 4

    const-string/jumbo v1, "Settings -> BixbyView"

    const-string/jumbo v2, "Move to Previous Screen"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView;->mAnimationStateHandler:Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView$AnimationStateHandler;

    const/4 v2, 0x7

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView$AnimationStateHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    const/4 v1, 0x1

    iput v1, v0, Landroid/os/Message;->arg1:I

    iget-object v1, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView;->mAnimationStateHandler:Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView$AnimationStateHandler;

    const-wide/16 v2, 0x0

    invoke-virtual {v1, v0, v2, v3}, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView$AnimationStateHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method public onPause()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView;->mIsActivityPaused:Z

    invoke-direct {p0}, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView;->stopScriptPlay()V

    invoke-virtual {p0}, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView;->stopListening()V

    return-void
.end method

.method protected onResume()V
    .locals 6

    const-wide/16 v4, 0x0

    const/4 v3, 0x0

    const-string/jumbo v0, "Settings -> BixbyView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onResume : CurrentMessageInProcess "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView;->mCurrentMessageInProcess:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " mCurrentIntroState -> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView;->mCurrentIntroState:Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView$AnimStates;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView;->mCurrentScreenNavigationStatus:Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView$AnimStates;

    sget-object v1, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView$AnimStates;->END:Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView$AnimStates;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->recreate()V

    return-void

    :cond_0
    iget v0, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView;->mCurrentMessageInProcess:I

    packed-switch v0, :pswitch_data_0

    :cond_1
    :goto_0
    iget-boolean v0, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView;->mIsActivityPaused:Z

    if-nez v0, :cond_2

    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView;->mAnimationStateHandler:Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView$AnimationStateHandler;

    invoke-virtual {v0, v3, v4, v5}, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView$AnimationStateHandler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView;->mCurrentIntroState:Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView$AnimStates;

    sget-object v1, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView$AnimStates;->STARTED:Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView$AnimStates;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView;->mAnimationStateHandler:Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView$AnimationStateHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, v4, v5}, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView$AnimationStateHandler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView;->mCurrentIntroState:Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView$AnimStates;

    sget-object v1, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView$AnimStates;->STARTED:Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView$AnimStates;

    if-ne v0, v1, :cond_4

    invoke-direct {p0}, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView;->endIntroAnimation()V

    :cond_3
    :goto_1
    iput-boolean v3, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView;->mIsActivityPaused:Z

    return-void

    :cond_4
    iget-object v0, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView;->mCurrentListeningState:Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView$AnimStates;

    sget-object v1, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView$AnimStates;->END:Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView$AnimStates;

    if-eq v0, v1, :cond_5

    iget-object v0, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView;->mCurrentScriptPlayStatus:Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView$AnimStates;

    sget-object v1, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView$AnimStates;->END:Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView$AnimStates;

    if-ne v0, v1, :cond_3

    :cond_5
    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView;->startListening(I)V

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onScriptPlayCompleted()V
    .locals 0

    return-void
.end method

.method protected onStartIntroAnimation()V
    .locals 0

    return-void
.end method

.method protected startFromThisMessage()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public startListening(I)V
    .locals 4

    const-string/jumbo v0, "Settings -> BixbyView"

    const-string/jumbo v1, "startListening : "

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView;->mVoiceHelper:Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/VoiceCommandHelper;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/util/BixbyUtils;->isNetworkConnected(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView;->mCurrentListeningState:Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView$AnimStates;

    sget-object v1, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView$AnimStates;->STARTED:Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView$AnimStates;

    if-eq v0, v1, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView;->isScriptPlaying()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string/jumbo v0, "Settings -> BixbyView"

    const-string/jumbo v1, "startListening : Network connected | Listening state is Not Started and Script is not playing"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView$AnimStates;->STARTED:Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView$AnimStates;

    iput-object v0, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView;->mCurrentListeningState:Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView$AnimStates;

    iget-object v0, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView;->mAnimationStateHandler:Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView$AnimationStateHandler;

    int-to-long v2, p1

    const/4 v1, 0x5

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView$AnimationStateHandler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method

.method public declared-synchronized startScriptPlay(Ljava/lang/String;)V
    .locals 3

    monitor-enter p0

    :try_start_0
    const-string/jumbo v0, "Settings -> BixbyView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "startScriptPlay : scriptName -> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView;->mBixbyScriptPlayer:Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/util/BixbyScriptPlayer;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    sget-object v0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView$AnimStates;->STARTED:Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView$AnimStates;

    iput-object v0, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView;->mCurrentScriptPlayStatus:Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView$AnimStates;

    iget-object v0, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView;->mBixbyScriptPlayer:Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/util/BixbyScriptPlayer;

    invoke-virtual {v0, p1}, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/util/BixbyScriptPlayer;->startScriptPlay(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public stopListening()V
    .locals 4

    const-string/jumbo v0, "Settings -> BixbyView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "stopListening : mCurrentListeningState "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView;->mCurrentListeningState:Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView$AnimStates;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView;->mCurrentListeningState:Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView$AnimStates;

    sget-object v1, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView$AnimStates;->STARTED:Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView$AnimStates;

    if-ne v0, v1, :cond_0

    sget-object v0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView$AnimStates;->END:Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView$AnimStates;

    iput-object v0, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView;->mCurrentListeningState:Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView$AnimStates;

    iget-object v0, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView;->mVoiceHelper:Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/VoiceCommandHelper;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView;->mAnimationStateHandler:Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView$AnimationStateHandler;

    const-wide/16 v2, 0x0

    const/4 v1, 0x6

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView$AnimationStateHandler;->sendEmptyMessageDelayed(IJ)Z

    :cond_0
    return-void
.end method

.method protected suppressAnimation()V
    .locals 5

    const/high16 v4, 0x42b40000    # 90.0f

    const/4 v3, 0x0

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView;->mBixbyBackgroundImageView:Landroid/view/View;

    invoke-virtual {p0}, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView;->getGradientBackgroundColorID()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView;->mWaveAnimRootLayout:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView;->mParticleViewLayout:Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/ParticleViewLayout;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, v3}, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/ParticleViewLayout;->startParticleAnimation(II)V

    const/16 v0, 0xad7

    invoke-direct {p0, v0}, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView;->stopParticleAnimation(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView;->mParticleViewLayout:Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/ParticleViewLayout;

    invoke-virtual {v0, v4, v2, v4, v2}, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/ParticleViewLayout;->changeScale(FFFF)V

    iget-object v0, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView;->mWaveAnimationView:Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/WaveAnimationView;

    invoke-virtual {v0, v2}, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/WaveAnimationView;->setToTarget(F)V

    iget-object v0, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView;->mParticleViewLayout:Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/ParticleViewLayout;

    invoke-direct {p0}, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView;->getIntroHeight()F

    move-result v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    invoke-virtual {p0}, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView;->getBixbyPositionInHeader()F

    move-result v2

    sub-float/2addr v1, v2

    neg-float v1, v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/ParticleViewLayout;->setTranslationY(F)V

    iget-object v0, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView;->mParticleViewLayout:Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/ParticleViewLayout;

    invoke-virtual {v0}, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/ParticleViewLayout;->startMovingAnimation()V

    iget-object v0, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView;->mScreenHeaderTitle:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView;->mScreenHeaderTitle:Landroid/widget/TextView;

    invoke-direct {p0}, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView;->getIntroHeight()F

    move-result v1

    invoke-virtual {p0}, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView;->getHeaderHeight()F

    move-result v2

    invoke-direct {p0}, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView;->getHeaderMarginBottom()F

    move-result v3

    sub-float/2addr v2, v3

    sub-float/2addr v1, v2

    neg-float v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTranslationY(F)V

    return-void
.end method
