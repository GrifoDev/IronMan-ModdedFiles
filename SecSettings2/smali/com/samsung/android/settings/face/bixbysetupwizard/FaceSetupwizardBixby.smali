.class public Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;
.super Landroid/app/Activity;
.source "FaceSetupwizardBixby.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby$1;,
        Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby$2;,
        Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby$3;,
        Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby$FaceBixbyHandler;,
        Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby$PAUSE_STATE;,
        Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby$VoiceCallback;
    }
.end annotation


# instance fields
.field private final BOUNCE_DOWN_EFFECT_DELAY:I

.field private final BOUNCE_UP_EFFECT_DELAY:I

.field private final RESULT_RETRY:I

.field private final START_VOICE_LISTENING_DELAY:I

.field completionCallback:Lcom/sec/android/app/suwscriptplayer/ISuwScriptPlayerCallback;

.field private mBackground4:Landroid/widget/FrameLayout;

.field private mBixbyIconViewLayout:Lcom/samsung/android/settings/face/bixbysetupwizard/BixbyIconViewLayout;

.field private mCancellationSignal:Landroid/os/CancellationSignal;

.field private mContext:Landroid/content/Context;

.field private mCurrentStage:Ljava/lang/String;

.field private mDescView:Landroid/view/View;

.field private mEnrollFragment:Lcom/samsung/android/settings/face/bixbysetupwizard/FaceEnrollSetupwizardFragment;

.field private mEnrollmentCallback:Lcom/samsung/android/bio/face/SemBioFaceManager$EnrollmentCallback;

.field private mFaceBixbyMsg:Landroid/widget/TextView;

.field private mFaceBottomContainer:Landroid/widget/RelativeLayout;

.field private mFaceGuideMsg:Landroid/widget/TextView;

.field private final mFaceHandler:Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby$FaceBixbyHandler;

.field private mFaceManager:Lcom/samsung/android/bio/face/SemBioFaceManager;

.field private mFaceMaskView:Lcom/samsung/android/settings/face/bixbysetupwizard/FaceCircleMaskView;

.field private mFacePreviewImage:Landroid/widget/ImageView;

.field private mFaceProgressText:Landroid/widget/TextView;

.field private mHandler:Landroid/os/Handler;

.field private mIsButtonClicked:Z

.field private mIsEnrolling:Z

.field private mIsNext:Z

.field private mIsRetry:Z

.field private mIsServiceBound:Z

.field private mIsServiceConnected:Z

.field private mMessageView:Landroid/view/View;

.field private mNextArrow:Landroid/widget/ImageView;

.field private mNextBtnArea:Landroid/view/View;

.field private mNextButton:Landroid/widget/TextView;

.field private mNormalModeText:Landroid/widget/TextView;

.field private mPauseState:Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby$PAUSE_STATE;

.field private mPrevArrow:Landroid/widget/ImageView;

.field private mPreviousBtnArea:Landroid/view/View;

.field private mPreviousButton:Landroid/widget/TextView;

.field private mProgressEffcetView:Lcom/samsung/android/settings/face/bixbysetupwizard/FaceEffectView;

.field private mScreenHeight:I

.field private mService:Lcom/sec/android/app/suwscriptplayer/ISuwScriptPlayer;

.field private final mServiceConnection:Landroid/content/ServiceConnection;

.field private mShowButtonBackground:I

.field private mSolidBounceEffect:Lcom/samsung/android/settings/face/bixbysetupwizard/SolidBounceEffect;

.field private mVoiceCallback:Lcom/samsung/android/settings/face/bixbysetupwizard/VoiceCommandHelper$VoiceCommandHelperCallback;

.field private mVoiceHelper:Lcom/samsung/android/settings/face/bixbysetupwizard/VoiceCommandHelper;


# direct methods
.method static synthetic -get0(Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;)Lcom/samsung/android/settings/face/bixbysetupwizard/BixbyIconViewLayout;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->mBixbyIconViewLayout:Lcom/samsung/android/settings/face/bixbysetupwizard/BixbyIconViewLayout;

    return-object v0
.end method

.method static synthetic -get1(Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get10(Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->mIsServiceConnected:Z

    return v0
.end method

.method static synthetic -get11(Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;)Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby$PAUSE_STATE;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->mPauseState:Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby$PAUSE_STATE;

    return-object v0
.end method

.method static synthetic -get12(Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;)Lcom/samsung/android/settings/face/bixbysetupwizard/VoiceCommandHelper;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->mVoiceHelper:Lcom/samsung/android/settings/face/bixbysetupwizard/VoiceCommandHelper;

    return-object v0
.end method

.method static synthetic -get2(Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->mFaceBixbyMsg:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic -get3(Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;)Landroid/widget/RelativeLayout;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->mFaceBottomContainer:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic -get4(Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;)Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby$FaceBixbyHandler;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->mFaceHandler:Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby$FaceBixbyHandler;

    return-object v0
.end method

.method static synthetic -get5(Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;)Lcom/samsung/android/bio/face/SemBioFaceManager;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->mFaceManager:Lcom/samsung/android/bio/face/SemBioFaceManager;

    return-object v0
.end method

.method static synthetic -get6(Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->mFacePreviewImage:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic -get7(Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->mIsEnrolling:Z

    return v0
.end method

.method static synthetic -get8(Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->mIsNext:Z

    return v0
.end method

.method static synthetic -get9(Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->mIsRetry:Z

    return v0
.end method

.method static synthetic -set0(Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->mIsButtonClicked:Z

    return p1
.end method

.method static synthetic -set1(Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->mIsEnrolling:Z

    return p1
.end method

.method static synthetic -set2(Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->mIsRetry:Z

    return p1
.end method

.method static synthetic -set3(Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->mIsServiceConnected:Z

    return p1
.end method

.method static synthetic -set4(Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby$PAUSE_STATE;)Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby$PAUSE_STATE;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->mPauseState:Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby$PAUSE_STATE;

    return-object p1
.end method

.method static synthetic -set5(Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;Lcom/sec/android/app/suwscriptplayer/ISuwScriptPlayer;)Lcom/sec/android/app/suwscriptplayer/ISuwScriptPlayer;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->mService:Lcom/sec/android/app/suwscriptplayer/ISuwScriptPlayer;

    return-object p1
.end method

.method static synthetic -wrap0(Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;)Ljava/lang/String;
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->getCurrentStage()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->handleVoiceListeningEvent(I)V

    return-void
.end method

.method static synthetic -wrap10(Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->startCancelEffect(I)V

    return-void
.end method

.method static synthetic -wrap11(Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->startEnrollFinishEffect()V

    return-void
.end method

.method static synthetic -wrap12(Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->startFinishEffect(I)V

    return-void
.end method

.method static synthetic -wrap13(Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->startIntroAnimation()V

    return-void
.end method

.method static synthetic -wrap14(Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->startIntroCompleteAnimation()V

    return-void
.end method

.method static synthetic -wrap15(Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->startPreviewImageEffect()V

    return-void
.end method

.method static synthetic -wrap2(Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->removeFaceTemplate()V

    return-void
.end method

.method static synthetic -wrap3(Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->replaceFragment()V

    return-void
.end method

.method static synthetic -wrap4(Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->setBottomBarEnabled(Z)V

    return-void
.end method

.method static synthetic -wrap5(Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->setCurrentStage(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic -wrap6(Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->setIndicatorTransparency()V

    return-void
.end method

.method static synthetic -wrap7(Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;Ljava/lang/CharSequence;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->showFaceErrorDialog(Ljava/lang/CharSequence;)V

    return-void
.end method

.method static synthetic -wrap8(Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->showFaceRetryDialog()V

    return-void
.end method

.method static synthetic -wrap9(Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;Landroid/view/View;IFF)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->startAlphaViEffect(Landroid/view/View;IFF)V

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    iput v2, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->BOUNCE_UP_EFFECT_DELAY:I

    const/16 v0, 0x4f2

    iput v0, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->BOUNCE_DOWN_EFFECT_DELAY:I

    const/16 v0, 0x12c

    iput v0, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->START_VOICE_LISTENING_DELAY:I

    const/4 v0, 0x2

    iput v0, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->RESULT_RETRY:I

    iput-boolean v2, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->mIsServiceBound:Z

    iput-boolean v2, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->mIsServiceConnected:Z

    iput v2, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->mScreenHeight:I

    iput-object v1, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->mEnrollFragment:Lcom/samsung/android/settings/face/bixbysetupwizard/FaceEnrollSetupwizardFragment;

    iput-object v1, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->mFaceManager:Lcom/samsung/android/bio/face/SemBioFaceManager;

    iput-boolean v2, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->mIsEnrolling:Z

    iput-boolean v2, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->mIsButtonClicked:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->mIsNext:Z

    iput-boolean v2, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->mIsRetry:Z

    iput-object v1, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->mNormalModeText:Landroid/widget/TextView;

    iput-object v1, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->mFaceProgressText:Landroid/widget/TextView;

    iput-object v1, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->mFacePreviewImage:Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->mFaceMaskView:Lcom/samsung/android/settings/face/bixbysetupwizard/FaceCircleMaskView;

    iput-object v1, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->mProgressEffcetView:Lcom/samsung/android/settings/face/bixbysetupwizard/FaceEffectView;

    iput-object v1, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->mFaceGuideMsg:Landroid/widget/TextView;

    iput-object v1, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->mFaceBottomContainer:Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->mFaceBixbyMsg:Landroid/widget/TextView;

    iput-object v1, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->mPreviousButton:Landroid/widget/TextView;

    iput-object v1, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->mNextButton:Landroid/widget/TextView;

    iput-object v1, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->mPreviousBtnArea:Landroid/view/View;

    iput-object v1, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->mNextBtnArea:Landroid/view/View;

    iput-object v1, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->mPrevArrow:Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->mNextArrow:Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->mBackground4:Landroid/widget/FrameLayout;

    iput v2, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->mShowButtonBackground:I

    sget-object v0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby$PAUSE_STATE;->DEFAULT:Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby$PAUSE_STATE;

    iput-object v0, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->mPauseState:Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby$PAUSE_STATE;

    iput-object v1, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->mBixbyIconViewLayout:Lcom/samsung/android/settings/face/bixbysetupwizard/BixbyIconViewLayout;

    new-instance v0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby$FaceBixbyHandler;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby$FaceBixbyHandler;-><init>(Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;)V

    iput-object v0, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->mFaceHandler:Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby$FaceBixbyHandler;

    new-instance v0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby$1;-><init>(Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;)V

    iput-object v0, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->mEnrollmentCallback:Lcom/samsung/android/bio/face/SemBioFaceManager$EnrollmentCallback;

    new-instance v0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby$2;-><init>(Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;)V

    iput-object v0, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->mServiceConnection:Landroid/content/ServiceConnection;

    new-instance v0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby$3;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby$3;-><init>(Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;)V

    iput-object v0, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->completionCallback:Lcom/sec/android/app/suwscriptplayer/ISuwScriptPlayerCallback;

    return-void
.end method

.method private bindScriptPlayer()V
    .locals 3

    const/4 v2, 0x1

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.sec.android.app.suwscriptplayer.intent.action.SCRIPT_PLAYER_SERVICE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "com.sec.android.app.suwscriptplayer"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->mServiceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v0, v1, v2}, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    iput-boolean v2, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->mIsServiceBound:Z

    return-void
.end method

.method private getCurrentStage()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->mCurrentStage:Ljava/lang/String;

    return-object v0
.end method

.method private handleVoiceListeningEvent(I)V
    .locals 4

    const/16 v0, 0x3ef

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby$17;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby$17;-><init>(Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;)V

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/16 v0, 0x3f0

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->mBixbyIconViewLayout:Lcom/samsung/android/settings/face/bixbysetupwizard/BixbyIconViewLayout;

    invoke-virtual {v0}, Lcom/samsung/android/settings/face/bixbysetupwizard/BixbyIconViewLayout;->stopUserSayingAnimation()V

    iget-object v0, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->mVoiceHelper:Lcom/samsung/android/settings/face/bixbysetupwizard/VoiceCommandHelper;

    invoke-virtual {v0}, Lcom/samsung/android/settings/face/bixbysetupwizard/VoiceCommandHelper;->stopListenering()V

    goto :goto_0
.end method

.method private isUSA()Z
    .locals 3

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v1

    const-string/jumbo v2, "CountryISO"

    invoke-virtual {v1, v2}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "US"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    return v1
.end method

.method private releaseFaceManager()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->mFaceManager:Lcom/samsung/android/bio/face/SemBioFaceManager;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->mCancellationSignal:Landroid/os/CancellationSignal;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->mCancellationSignal:Landroid/os/CancellationSignal;

    invoke-virtual {v0}, Landroid/os/CancellationSignal;->cancel()V

    iput-object v1, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->mCancellationSignal:Landroid/os/CancellationSignal;

    :cond_0
    iput-object v1, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->mFaceManager:Lcom/samsung/android/bio/face/SemBioFaceManager;

    :cond_1
    return-void
.end method

.method private removeFaceTemplate()V
    .locals 2

    const-string/jumbo v0, "FcstFaceSetupwizardBixby"

    const-string/jumbo v1, "removeFaceTemplate"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->mFaceManager:Lcom/samsung/android/bio/face/SemBioFaceManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->mFaceManager:Lcom/samsung/android/bio/face/SemBioFaceManager;

    invoke-virtual {v0}, Lcom/samsung/android/bio/face/SemBioFaceManager;->hasEnrolledFaces()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->mFaceManager:Lcom/samsung/android/bio/face/SemBioFaceManager;

    const/4 v1, 0x0

    new-array v1, v1, [B

    invoke-virtual {v0, v1}, Lcom/samsung/android/bio/face/SemBioFaceManager;->updateSecureUserID([B)Z

    :cond_0
    return-void
.end method

.method private replaceFragment()V
    .locals 4

    invoke-virtual {p0}, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->mEnrollFragment:Lcom/samsung/android/settings/face/bixbysetupwizard/FaceEnrollSetupwizardFragment;

    const v3, 0x7f11076a

    invoke-virtual {v1, v3, v2}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    invoke-virtual {v1}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    return-void
.end method

.method private setBottomBarEnabled(Z)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->mPreviousBtnArea:Landroid/view/View;

    if-nez v0, :cond_0

    const v0, 0x7f1103f0

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->mPreviousBtnArea:Landroid/view/View;

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->mNextBtnArea:Landroid/view/View;

    if-nez v0, :cond_1

    const v0, 0x7f11076c

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->mNextBtnArea:Landroid/view/View;

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->mPreviousBtnArea:Landroid/view/View;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->mNextBtnArea:Landroid/view/View;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->mPreviousBtnArea:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->mNextBtnArea:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    :cond_2
    return-void
.end method

.method private setCurrentStage(Ljava/lang/String;)V
    .locals 3

    iput-object p1, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->mCurrentStage:Ljava/lang/String;

    const-string/jumbo v0, "FcstFaceSetupwizardBixby"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "CurrentStage is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->mCurrentStage:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private setIndicatorTransparency()V
    .locals 4

    const/16 v0, 0x1402

    invoke-virtual {p0}, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/View;->setSystemUiVisibility(I)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    const v3, -0x7ffff400

    or-int/2addr v2, v3

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    return-void
.end method

.method private showFaceErrorDialog()V
    .locals 6

    const v5, 0x7f0b08e5

    invoke-virtual {p0}, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->isScriptPlaying()Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->mFaceHandler:Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby$FaceBixbyHandler;

    const/16 v4, 0x3f0

    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby$FaceBixbyHandler;->sendEmptyMessage(I)Z

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b08e6

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-direct {v3, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, v5}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f0b04b4

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    new-instance v4, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby$12;

    invoke-direct {v4, p0}, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby$12;-><init>(Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;)V

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method private showFaceErrorDialog(Ljava/lang/CharSequence;)V
    .locals 5

    invoke-virtual {p0}, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->isScriptPlaying()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->mFaceHandler:Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby$FaceBixbyHandler;

    const/16 v3, 0x3f0

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby$FaceBixbyHandler;->sendEmptyMessage(I)Z

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b08bd

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0b04b4

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    new-instance v3, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby$13;

    invoke-direct {v3, p0}, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby$13;-><init>(Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;)V

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method private showFaceRetryDialog()V
    .locals 6

    const/4 v5, 0x0

    const-string/jumbo v2, "FcstFaceSetupwizardBixby"

    const-string/jumbo v3, "showFaceRetryDialog"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->mFaceManager:Lcom/samsung/android/bio/face/SemBioFaceManager;

    if-eqz v2, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->stopEnrollment()V

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->isScriptPlaying()Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->mFaceHandler:Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby$FaceBixbyHandler;

    const/16 v3, 0x3f0

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby$FaceBixbyHandler;->sendEmptyMessage(I)Z

    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b08bd

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b08be

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    new-instance v3, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby$10;

    invoke-direct {v3, p0}, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby$10;-><init>(Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;)V

    const v4, 0x7f0b08bf

    invoke-virtual {v2, v4, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0b1222

    invoke-virtual {v2, v3, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    new-instance v3, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby$11;

    invoke-direct {v3, p0}, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby$11;-><init>(Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;)V

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method private startAlphaViEffect(Landroid/view/View;IFF)V
    .locals 6

    const/4 v5, 0x0

    if-nez p1, :cond_0

    const-string/jumbo v1, "FcstFaceSetupwizardBixby"

    const-string/jumbo v2, "startTextTransitionEffect : view is null"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const/4 v0, 0x0

    new-instance v0, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v0, p3, p4}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    int-to-long v2, p2

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    new-instance v1, Landroid/view/animation/PathInterpolator;

    const v2, 0x3ea8f5c3    # 0.33f

    const v3, 0x3f2b851f    # 0.67f

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v1, v2, v5, v3, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setFillAfter(Z)V

    cmpl-float v1, p4, v5

    if-nez v1, :cond_1

    new-instance v1, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby$16;

    invoke-direct {v1, p0, p1}, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby$16;-><init>(Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    :cond_1
    invoke-virtual {p1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method private startBackgroundEffect(Landroid/view/View;IFF)V
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    if-nez p1, :cond_0

    const-string/jumbo v2, "FcstFaceSetupwizardBixby"

    const-string/jumbo v3, "startBackgroundEffect : view is null"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const-string/jumbo v2, "alpha"

    const/4 v3, 0x2

    new-array v3, v3, [F

    aput p3, v3, v4

    aput p4, v3, v5

    invoke-static {v2, v3}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    new-array v2, v5, [Landroid/animation/PropertyValuesHolder;

    aput-object v0, v2, v4

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofPropertyValuesHolder([Landroid/animation/PropertyValuesHolder;)Landroid/animation/ValueAnimator;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby$14;

    invoke-direct {v2, p0, p1}, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby$14;-><init>(Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;Landroid/view/View;)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance v2, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby$15;

    invoke-direct {v2, p0, p1, p4}, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby$15;-><init>(Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;Landroid/view/View;F)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    new-instance v2, Lcom/samsung/android/settings/face/bixbysetupwizard/SineInOut90;

    invoke-direct {v2}, Lcom/samsung/android/settings/face/bixbysetupwizard/SineInOut90;-><init>()V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    int-to-long v2, p2

    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    const/4 v2, 0x0

    cmpl-float v2, p4, v2

    if-nez v2, :cond_1

    const-wide/16 v2, 0x4f2

    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    :cond_1
    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method private startCancelEffect(I)V
    .locals 9

    const/16 v4, 0xa7

    const/4 v8, 0x1

    const/high16 v7, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    iget-object v2, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->mFacePreviewImage:Landroid/widget/ImageView;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->mProgressEffcetView:Lcom/samsung/android/settings/face/bixbysetupwizard/FaceEffectView;

    if-nez v2, :cond_1

    :cond_0
    const-string/jumbo v2, "FcstFaceSetupwizardBixby"

    const-string/jumbo v3, "start cancel effcet is fail : view is null"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    iget-object v2, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->mFaceMaskView:Lcom/samsung/android/settings/face/bixbysetupwizard/FaceCircleMaskView;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->mFaceProgressText:Landroid/widget/TextView;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->mFaceBottomContainer:Landroid/widget/RelativeLayout;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->mFaceGuideMsg:Landroid/widget/TextView;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->mFaceBixbyMsg:Landroid/widget/TextView;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->mFaceBixbyMsg:Landroid/widget/TextView;

    invoke-direct {p0, v2, v4, v7, v6}, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->startAlphaViEffect(Landroid/view/View;IFF)V

    iget-object v2, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->mSolidBounceEffect:Lcom/samsung/android/settings/face/bixbysetupwizard/SolidBounceEffect;

    if-eqz v2, :cond_3

    :goto_0
    iget-object v2, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->mSolidBounceEffect:Lcom/samsung/android/settings/face/bixbysetupwizard/SolidBounceEffect;

    invoke-virtual {v2}, Lcom/samsung/android/settings/face/bixbysetupwizard/SolidBounceEffect;->isRunning()Z

    move-result v2

    if-eqz v2, :cond_2

    const-string/jumbo v2, "FcstFaceSetupwizardBixby"

    const-string/jumbo v3, "SolidBounceEffect is running : do clear effect"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->mSolidBounceEffect:Lcom/samsung/android/settings/face/bixbysetupwizard/SolidBounceEffect;

    invoke-virtual {v2}, Lcom/samsung/android/settings/face/bixbysetupwizard/SolidBounceEffect;->clearSolidBounceEffect()V

    goto :goto_0

    :cond_2
    invoke-direct {p0, v8}, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->startSolidBounceEffect(I)V

    :cond_3
    iget-object v2, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->mFacePreviewImage:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getVisibility()I

    move-result v2

    const/16 v3, 0x8

    if-eq v2, v3, :cond_4

    iget-object v2, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->mFacePreviewImage:Landroid/widget/ImageView;

    invoke-direct {p0, v2, v4, v7, v6}, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->startAlphaViEffect(Landroid/view/View;IFF)V

    :cond_4
    const/4 v2, 0x5

    new-array v1, v2, [Landroid/view/View;

    iget-object v2, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->mFaceGuideMsg:Landroid/widget/TextView;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->mProgressEffcetView:Lcom/samsung/android/settings/face/bixbysetupwizard/FaceEffectView;

    aput-object v2, v1, v8

    iget-object v2, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->mFaceMaskView:Lcom/samsung/android/settings/face/bixbysetupwizard/FaceCircleMaskView;

    const/4 v3, 0x2

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->mFaceBottomContainer:Landroid/widget/RelativeLayout;

    const/4 v3, 0x3

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->mFaceProgressText:Landroid/widget/TextView;

    const/4 v3, 0x4

    aput-object v2, v1, v3

    const/4 v2, 0x0

    array-length v3, v1

    :goto_1
    if-ge v2, v3, :cond_5

    aget-object v0, v1, v2

    invoke-direct {p0, v0, v4, v7, v6}, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->startAlphaViEffect(Landroid/view/View;IFF)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_5
    iget-object v2, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->mBixbyIconViewLayout:Lcom/samsung/android/settings/face/bixbysetupwizard/BixbyIconViewLayout;

    invoke-virtual {v2, v8, v4}, Lcom/samsung/android/settings/face/bixbysetupwizard/BixbyIconViewLayout;->setBixbySizeAnimation(II)V

    iget-object v2, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->mBixbyIconViewLayout:Lcom/samsung/android/settings/face/bixbysetupwizard/BixbyIconViewLayout;

    const-wide/16 v4, 0x4f2

    invoke-virtual {v2, v8, v4, v5}, Lcom/samsung/android/settings/face/bixbysetupwizard/BixbyIconViewLayout;->startIconTransition(IJ)V

    iget-object v2, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->mBixbyIconViewLayout:Lcom/samsung/android/settings/face/bixbysetupwizard/BixbyIconViewLayout;

    invoke-virtual {v2}, Lcom/samsung/android/settings/face/bixbysetupwizard/BixbyIconViewLayout;->stopMovingAnimation()V

    iget-object v2, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->mBixbyIconViewLayout:Lcom/samsung/android/settings/face/bixbysetupwizard/BixbyIconViewLayout;

    invoke-virtual {v2}, Lcom/samsung/android/settings/face/bixbysetupwizard/BixbyIconViewLayout;->stopParticleAnimation()V

    iget-object v2, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->mBackground4:Landroid/widget/FrameLayout;

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->mBackground4:Landroid/widget/FrameLayout;

    const/16 v3, 0x14d

    invoke-direct {p0, v2, v3, v7, v6}, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->startBackgroundEffect(Landroid/view/View;IFF)V

    :cond_6
    iget-object v2, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->mHandler:Landroid/os/Handler;

    new-instance v3, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby$8;

    invoke-direct {v3, p0, p1}, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby$8;-><init>(Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;I)V

    const-wide/16 v4, 0x74a

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private startEnrollFinishEffect()V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->mBixbyIconViewLayout:Lcom/samsung/android/settings/face/bixbysetupwizard/BixbyIconViewLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/face/bixbysetupwizard/BixbyIconViewLayout;->setIsSpeakingEnd(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->mFaceHandler:Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby$FaceBixbyHandler;

    const/16 v1, 0x3f0

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby$FaceBixbyHandler;->sendEmptyMessage(I)Z

    const-string/jumbo v0, "1.2_face_3_M"

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->startScript(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->mBixbyIconViewLayout:Lcom/samsung/android/settings/face/bixbysetupwizard/BixbyIconViewLayout;

    const/16 v1, 0xc8

    const/16 v2, 0x64

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/settings/face/bixbysetupwizard/BixbyIconViewLayout;->startParticleAnimation(II)V

    iget-object v0, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->mNextButton:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->mNextButton:Landroid/widget/TextView;

    const v1, 0x7f0b051c

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->mFaceGuideMsg:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->mFaceGuideMsg:Landroid/widget/TextView;

    const v1, 0x7f0b08e4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->mFaceProgressText:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->mFaceProgressText:Landroid/widget/TextView;

    const/16 v1, 0xa7

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->startAlphaViEffect(Landroid/view/View;IFF)V

    :cond_2
    return-void
.end method

.method private startFinishEffect(I)V
    .locals 10

    const/16 v9, 0xa7

    const/high16 v8, 0x3f800000    # 1.0f

    const/4 v7, 0x0

    const/4 v6, 0x1

    iget-object v2, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->mFacePreviewImage:Landroid/widget/ImageView;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->mProgressEffcetView:Lcom/samsung/android/settings/face/bixbysetupwizard/FaceEffectView;

    if-nez v2, :cond_1

    :cond_0
    const-string/jumbo v2, "FcstFaceSetupwizardBixby"

    const-string/jumbo v3, "start finish effcet is fail : view is null"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    iget-object v2, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->mFaceMaskView:Lcom/samsung/android/settings/face/bixbysetupwizard/FaceCircleMaskView;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->mFaceProgressText:Landroid/widget/TextView;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->mFaceBottomContainer:Landroid/widget/RelativeLayout;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->mFaceGuideMsg:Landroid/widget/TextView;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->mFaceBixbyMsg:Landroid/widget/TextView;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->mSolidBounceEffect:Lcom/samsung/android/settings/face/bixbysetupwizard/SolidBounceEffect;

    if-eqz v2, :cond_3

    :goto_0
    iget-object v2, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->mSolidBounceEffect:Lcom/samsung/android/settings/face/bixbysetupwizard/SolidBounceEffect;

    invoke-virtual {v2}, Lcom/samsung/android/settings/face/bixbysetupwizard/SolidBounceEffect;->isRunning()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->mSolidBounceEffect:Lcom/samsung/android/settings/face/bixbysetupwizard/SolidBounceEffect;

    invoke-virtual {v2}, Lcom/samsung/android/settings/face/bixbysetupwizard/SolidBounceEffect;->clearSolidBounceEffect()V

    goto :goto_0

    :cond_2
    invoke-direct {p0, v6}, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->startSolidBounceEffect(I)V

    :cond_3
    iget-object v2, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->mBixbyIconViewLayout:Lcom/samsung/android/settings/face/bixbysetupwizard/BixbyIconViewLayout;

    invoke-virtual {v2}, Lcom/samsung/android/settings/face/bixbysetupwizard/BixbyIconViewLayout;->stopParticleAnimation()V

    iget-object v2, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->mBixbyIconViewLayout:Lcom/samsung/android/settings/face/bixbysetupwizard/BixbyIconViewLayout;

    invoke-virtual {v2}, Lcom/samsung/android/settings/face/bixbysetupwizard/BixbyIconViewLayout;->stopMovingAnimation()V

    iget-object v2, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->mBixbyIconViewLayout:Lcom/samsung/android/settings/face/bixbysetupwizard/BixbyIconViewLayout;

    invoke-virtual {v2, v6, v9}, Lcom/samsung/android/settings/face/bixbysetupwizard/BixbyIconViewLayout;->setBixbySizeAnimation(II)V

    iget-object v2, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->mBixbyIconViewLayout:Lcom/samsung/android/settings/face/bixbysetupwizard/BixbyIconViewLayout;

    const-wide/16 v4, 0x4f2

    invoke-virtual {v2, v6, v4, v5}, Lcom/samsung/android/settings/face/bixbysetupwizard/BixbyIconViewLayout;->startIconTransition(IJ)V

    iget-object v2, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->mFacePreviewImage:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getVisibility()I

    move-result v2

    const/16 v3, 0x8

    if-eq v2, v3, :cond_4

    iget-object v2, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->mFacePreviewImage:Landroid/widget/ImageView;

    invoke-direct {p0, v2, v9, v8, v7}, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->startAlphaViEffect(Landroid/view/View;IFF)V

    :cond_4
    const/4 v2, 0x6

    new-array v1, v2, [Landroid/view/View;

    iget-object v2, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->mFaceBixbyMsg:Landroid/widget/TextView;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->mFaceGuideMsg:Landroid/widget/TextView;

    aput-object v2, v1, v6

    iget-object v2, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->mProgressEffcetView:Lcom/samsung/android/settings/face/bixbysetupwizard/FaceEffectView;

    const/4 v3, 0x2

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->mFaceMaskView:Lcom/samsung/android/settings/face/bixbysetupwizard/FaceCircleMaskView;

    const/4 v3, 0x3

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->mFaceBottomContainer:Landroid/widget/RelativeLayout;

    const/4 v3, 0x4

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->mFaceProgressText:Landroid/widget/TextView;

    const/4 v3, 0x5

    aput-object v2, v1, v3

    const/4 v2, 0x0

    array-length v3, v1

    :goto_1
    if-ge v2, v3, :cond_5

    aget-object v0, v1, v2

    invoke-direct {p0, v0, v9, v8, v7}, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->startAlphaViEffect(Landroid/view/View;IFF)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_5
    iget-object v2, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->mBackground4:Landroid/widget/FrameLayout;

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->mBackground4:Landroid/widget/FrameLayout;

    const/16 v3, 0x14d

    invoke-direct {p0, v2, v3, v8, v7}, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->startBackgroundEffect(Landroid/view/View;IFF)V

    :cond_6
    iget-object v2, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->mHandler:Landroid/os/Handler;

    new-instance v3, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby$7;

    invoke-direct {v3, p0, p1}, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby$7;-><init>(Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;I)V

    const-wide/16 v4, 0x74a

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private startFinishEffectBeforeEnroll(I)V
    .locals 5

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    const/16 v2, 0xa7

    const-string/jumbo v0, "FcstFaceSetupwizardBixby"

    const-string/jumbo v1, "startFinishEffectBeforeEnroll"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->mBixbyIconViewLayout:Lcom/samsung/android/settings/face/bixbysetupwizard/BixbyIconViewLayout;

    invoke-virtual {v0}, Lcom/samsung/android/settings/face/bixbysetupwizard/BixbyIconViewLayout;->stopParticleAnimation()V

    iget-object v0, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->mBixbyIconViewLayout:Lcom/samsung/android/settings/face/bixbysetupwizard/BixbyIconViewLayout;

    invoke-virtual {v0}, Lcom/samsung/android/settings/face/bixbysetupwizard/BixbyIconViewLayout;->stopMovingAnimation()V

    iget-object v0, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->mBixbyIconViewLayout:Lcom/samsung/android/settings/face/bixbysetupwizard/BixbyIconViewLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/settings/face/bixbysetupwizard/BixbyIconViewLayout;->setBixbySizeAnimation(II)V

    iget-object v0, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->mMessageView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->mDescView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->mFaceBottomContainer:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->mMessageView:Landroid/view/View;

    invoke-direct {p0, v0, v2, v4, v3}, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->startAlphaViEffect(Landroid/view/View;IFF)V

    iget-object v0, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->mDescView:Landroid/view/View;

    invoke-direct {p0, v0, v2, v4, v3}, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->startAlphaViEffect(Landroid/view/View;IFF)V

    iget-object v0, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->mFaceBottomContainer:Landroid/widget/RelativeLayout;

    invoke-direct {p0, v0, v2, v4, v3}, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->startAlphaViEffect(Landroid/view/View;IFF)V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby$6;

    invoke-direct {v1, p0, p1}, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby$6;-><init>(Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;I)V

    const-wide/16 v2, 0x74a

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private startInitEffect()V
    .locals 9

    const/4 v8, 0x1

    const/4 v4, 0x0

    iget-object v3, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->mFacePreviewImage:Landroid/widget/ImageView;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->mProgressEffcetView:Lcom/samsung/android/settings/face/bixbysetupwizard/FaceEffectView;

    if-nez v3, :cond_1

    :cond_0
    const-string/jumbo v3, "FcstFaceSetupwizardBixby"

    const-string/jumbo v4, "start init effcet is fail : view is null"

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    iget-object v3, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->mFaceMaskView:Lcom/samsung/android/settings/face/bixbysetupwizard/FaceCircleMaskView;

    if-eqz v3, :cond_0

    const/4 v0, 0x0

    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/4 v3, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-direct {v0, v3, v5}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    const-wide/16 v6, 0x14d

    invoke-virtual {v0, v6, v7}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    invoke-virtual {v0, v8}, Landroid/view/animation/AlphaAnimation;->setFillAfter(Z)V

    const/4 v3, 0x4

    new-array v2, v3, [Landroid/view/View;

    iget-object v3, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->mFacePreviewImage:Landroid/widget/ImageView;

    aput-object v3, v2, v4

    iget-object v3, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->mProgressEffcetView:Lcom/samsung/android/settings/face/bixbysetupwizard/FaceEffectView;

    aput-object v3, v2, v8

    iget-object v3, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->mFaceMaskView:Lcom/samsung/android/settings/face/bixbysetupwizard/FaceCircleMaskView;

    const/4 v5, 0x2

    aput-object v3, v2, v5

    iget-object v3, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->mFaceGuideMsg:Landroid/widget/TextView;

    const/4 v5, 0x3

    aput-object v3, v2, v5

    array-length v5, v2

    move v3, v4

    :goto_0
    if-ge v3, v5, :cond_2

    aget-object v1, v2, v3

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    iget-object v3, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->mHandler:Landroid/os/Handler;

    new-instance v4, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby$5;

    invoke-direct {v4, p0}, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby$5;-><init>(Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;)V

    const-wide/16 v6, 0x53

    invoke-virtual {v3, v4, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private startIntroAnimation()V
    .locals 6

    const/16 v5, 0xa7

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    const/4 v2, 0x0

    const-string/jumbo v0, "FcstFaceSetupwizardBixby"

    const-string/jumbo v1, "startIntroAnimation"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->mBixbyIconViewLayout:Lcom/samsung/android/settings/face/bixbysetupwizard/BixbyIconViewLayout;

    invoke-virtual {v0, v2}, Lcom/samsung/android/settings/face/bixbysetupwizard/BixbyIconViewLayout;->setIsSpeakingEnd(Z)V

    const-string/jumbo v0, "1.2_face_1_M"

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->startScript(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->mBixbyIconViewLayout:Lcom/samsung/android/settings/face/bixbysetupwizard/BixbyIconViewLayout;

    invoke-virtual {v0}, Lcom/samsung/android/settings/face/bixbysetupwizard/BixbyIconViewLayout;->startMovingAnimation()V

    iget-object v0, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->mMessageView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->mDescView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->mFaceBottomContainer:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->mMessageView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->mDescView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->mFaceBottomContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->mMessageView:Landroid/view/View;

    invoke-direct {p0, v0, v5, v3, v4}, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->startAlphaViEffect(Landroid/view/View;IFF)V

    iget-object v0, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->mDescView:Landroid/view/View;

    invoke-direct {p0, v0, v5, v3, v4}, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->startAlphaViEffect(Landroid/view/View;IFF)V

    iget-object v0, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->mFaceBottomContainer:Landroid/widget/RelativeLayout;

    invoke-direct {p0, v0, v5, v3, v4}, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->startAlphaViEffect(Landroid/view/View;IFF)V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->mBixbyIconViewLayout:Lcom/samsung/android/settings/face/bixbysetupwizard/BixbyIconViewLayout;

    const/16 v1, 0xc8

    const/16 v2, 0x64

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/settings/face/bixbysetupwizard/BixbyIconViewLayout;->startParticleAnimation(II)V

    return-void
.end method

.method private startIntroCompleteAnimation()V
    .locals 8

    const/16 v7, 0xa7

    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v5, 0x0

    const/4 v4, 0x0

    invoke-direct {p0, v4}, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->setBottomBarEnabled(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->mBackground4:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->mBackground4:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v5}, Landroid/widget/FrameLayout;->setAlpha(F)V

    iget-object v0, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->mBackground4:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v4}, Landroid/widget/FrameLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->mBackground4:Landroid/widget/FrameLayout;

    const/16 v1, 0x14d

    invoke-direct {p0, v0, v1, v5, v6}, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->startBackgroundEffect(Landroid/view/View;IFF)V

    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->updateBottomBar()V

    iget-object v0, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->mBixbyIconViewLayout:Lcom/samsung/android/settings/face/bixbysetupwizard/BixbyIconViewLayout;

    invoke-virtual {v0, v4, v7}, Lcom/samsung/android/settings/face/bixbysetupwizard/BixbyIconViewLayout;->setBixbySizeAnimation(II)V

    iget-object v0, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->mBixbyIconViewLayout:Lcom/samsung/android/settings/face/bixbysetupwizard/BixbyIconViewLayout;

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v4, v2, v3}, Lcom/samsung/android/settings/face/bixbysetupwizard/BixbyIconViewLayout;->startIconTransition(IJ)V

    invoke-direct {p0, v4}, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->startSolidBounceEffect(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->mMessageView:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->mDescView:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->mMessageView:Landroid/view/View;

    invoke-direct {p0, v0, v7, v6, v5}, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->startAlphaViEffect(Landroid/view/View;IFF)V

    iget-object v0, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->mDescView:Landroid/view/View;

    invoke-direct {p0, v0, v7, v6, v5}, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->startAlphaViEffect(Landroid/view/View;IFF)V

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby$9;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby$9;-><init>(Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;)V

    const-wide/16 v2, 0xfa

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private startPreviewImageEffect()V
    .locals 9

    const/4 v8, 0x1

    const v7, 0x3ea8f5c3    # 0.33f

    const v6, 0x3e4ccccd    # 0.2f

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    iget-object v2, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->mFacePreviewImage:Landroid/widget/ImageView;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->mFaceProgressText:Landroid/widget/TextView;

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->mIsButtonClicked:Z

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v1, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v1, v4, v5}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    const-wide/16 v2, 0xe6

    invoke-virtual {v1, v2, v3}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    new-instance v2, Landroid/view/animation/PathInterpolator;

    invoke-direct {v2, v7, v4, v6, v5}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {v1, v2}, Landroid/view/animation/AlphaAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    invoke-virtual {v1, v8}, Landroid/view/animation/AlphaAnimation;->setFillAfter(Z)V

    iget-object v2, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->mFaceProgressText:Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v2, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->mFaceProgressText:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->startAnimation(Landroid/view/animation/Animation;)V

    new-instance v0, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v0, v5, v4}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    const-wide/16 v2, 0xe6

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    new-instance v2, Landroid/view/animation/PathInterpolator;

    invoke-direct {v2, v7, v4, v6, v5}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {v0, v2}, Landroid/view/animation/AlphaAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    invoke-virtual {v0, v8}, Landroid/view/animation/AlphaAnimation;->setFillAfter(Z)V

    new-instance v2, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby$4;

    invoke-direct {v2, p0}, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby$4;-><init>(Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;)V

    invoke-virtual {v0, v2}, Landroid/view/animation/AlphaAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    iget-object v2, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->mFacePreviewImage:Landroid/widget/ImageView;

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0
.end method

.method private startSolidBounceEffect(I)V
    .locals 13

    const/high16 v7, -0x3c510000    # -350.0f

    const-wide/16 v10, 0x2ee

    const-wide/16 v5, 0x14d

    const-wide/16 v8, 0xfa

    const/4 v12, 0x0

    iget-object v1, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->mSolidBounceEffect:Lcom/samsung/android/settings/face/bixbysetupwizard/SolidBounceEffect;

    if-nez v1, :cond_0

    const-string/jumbo v1, "FcstFaceSetupwizardBixby"

    const-string/jumbo v2, "startSolidBounceEffect : Effect is null"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    if-nez p1, :cond_2

    invoke-virtual {p0}, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a03d3

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->mSolidBounceEffect:Lcom/samsung/android/settings/face/bixbysetupwizard/SolidBounceEffect;

    const-wide/16 v2, 0x0

    int-to-float v4, v0

    const/high16 v7, 0x43af0000    # 350.0f

    invoke-virtual/range {v1 .. v11}, Lcom/samsung/android/settings/face/bixbysetupwizard/SolidBounceEffect;->moveToTraget(JFJFJJ)V

    iget-boolean v1, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->mIsNext:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->mBixbyIconViewLayout:Lcom/samsung/android/settings/face/bixbysetupwizard/BixbyIconViewLayout;

    invoke-virtual {v1, v12}, Lcom/samsung/android/settings/face/bixbysetupwizard/BixbyIconViewLayout;->setIsSpeakingEnd(Z)V

    const-string/jumbo v1, "1.2_face_2_S"

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->startScript(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->mBixbyIconViewLayout:Lcom/samsung/android/settings/face/bixbysetupwizard/BixbyIconViewLayout;

    const/16 v2, 0x64

    const/16 v3, 0x64

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/settings/face/bixbysetupwizard/BixbyIconViewLayout;->startParticleAnimation(II)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget v1, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->mScreenHeight:I

    if-lez v1, :cond_3

    const-string/jumbo v1, "FcstFaceSetupwizardBixby"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "mScreenHeight : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->mScreenHeight:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->mSolidBounceEffect:Lcom/samsung/android/settings/face/bixbysetupwizard/SolidBounceEffect;

    const-wide/16 v2, 0x4f2

    iget v4, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->mScreenHeight:I

    int-to-float v4, v4

    invoke-virtual/range {v1 .. v11}, Lcom/samsung/android/settings/face/bixbysetupwizard/SolidBounceEffect;->moveToTraget(JFJFJJ)V

    goto :goto_0

    :cond_3
    const-string/jumbo v1, "FcstFaceSetupwizardBixby"

    const-string/jumbo v2, "startSolidBounceEffect : ScreenHeight is 0"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->mSolidBounceEffect:Lcom/samsung/android/settings/face/bixbysetupwizard/SolidBounceEffect;

    const-wide/16 v2, 0x4f2

    const v4, -0x3ac48000    # -3000.0f

    invoke-virtual/range {v1 .. v11}, Lcom/samsung/android/settings/face/bixbysetupwizard/SolidBounceEffect;->moveToTraget(JFJFJJ)V

    goto :goto_0
.end method

.method private stopEnrollment()V
    .locals 3

    const/4 v2, 0x0

    const-string/jumbo v0, "FcstFaceSetupwizardBixby"

    const-string/jumbo v1, "stopEnrollment"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->mFaceManager:Lcom/samsung/android/bio/face/SemBioFaceManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->mCancellationSignal:Landroid/os/CancellationSignal;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->mCancellationSignal:Landroid/os/CancellationSignal;

    invoke-virtual {v0}, Landroid/os/CancellationSignal;->cancel()V

    iput-object v2, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->mCancellationSignal:Landroid/os/CancellationSignal;

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->mFaceManager:Lcom/samsung/android/bio/face/SemBioFaceManager;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->mFaceManager:Lcom/samsung/android/bio/face/SemBioFaceManager;

    invoke-virtual {v0}, Lcom/samsung/android/bio/face/SemBioFaceManager;->isEnrollSession()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->mFaceManager:Lcom/samsung/android/bio/face/SemBioFaceManager;

    invoke-virtual {v0}, Lcom/samsung/android/bio/face/SemBioFaceManager;->postEnroll()I

    :cond_1
    invoke-direct {p0}, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->releaseFaceManager()V

    return-void
.end method

.method private updateBottomBar()V
    .locals 5

    const v4, 0x7f0d016d

    const v3, 0x7f0d00ef

    const v1, 0x7f110225

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    const v1, 0x7f0d00f1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->mFaceBottomContainer:Landroid/widget/RelativeLayout;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->mFaceBottomContainer:Landroid/widget/RelativeLayout;

    const v2, 0x7f0d00f0

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    :cond_1
    iget-object v1, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->mPrevArrow:Landroid/widget/ImageView;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->mNextArrow:Landroid/widget/ImageView;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->mPrevArrow:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setColorFilter(I)V

    iget-object v1, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->mNextArrow:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setColorFilter(I)V

    :cond_2
    iget-object v1, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->mNextButton:Landroid/widget/TextView;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->mPreviousButton:Landroid/widget/TextView;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->mNextButton:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v1, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->mPreviousButton:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_3
    return-void
.end method


# virtual methods
.method protected initBixbyFaceEnroll(Landroid/view/View;)V
    .locals 6

    const v3, 0x7f02067f

    const/4 v5, 0x0

    const v1, 0x7f1103d3

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->mFaceProgressText:Landroid/widget/TextView;

    const v1, 0x7f11076e

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->mFaceGuideMsg:Landroid/widget/TextView;

    const v1, 0x7f110771

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->mFacePreviewImage:Landroid/widget/ImageView;

    const v1, 0x7f110772

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceEffectView;

    iput-object v1, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->mProgressEffcetView:Lcom/samsung/android/settings/face/bixbysetupwizard/FaceEffectView;

    const v1, 0x7f11076f

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceCircleMaskView;

    iput-object v1, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->mFaceMaskView:Lcom/samsung/android/settings/face/bixbysetupwizard/FaceCircleMaskView;

    iget-object v1, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->mPreviousBtnArea:Landroid/view/View;

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->mShowButtonBackground:I

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->mPreviousBtnArea:Landroid/view/View;

    invoke-virtual {p0}, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->mNextBtnArea:Landroid/view/View;

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->mShowButtonBackground:I

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->mNextBtnArea:Landroid/view/View;

    invoke-virtual {p0}, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    iget-object v1, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->mFaceGuideMsg:Landroid/widget/TextView;

    if-eqz v1, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->isUSA()Z

    move-result v1

    if-nez v1, :cond_4

    invoke-virtual {p0}, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/16 v3, 0x14

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    const/16 v3, 0x32

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v2, v4

    const v3, 0x7f0b08dd

    invoke-virtual {v1, v3, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b08e1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->mFaceGuideMsg:Landroid/widget/TextView;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    iget-object v1, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->mNextButton:Landroid/widget/TextView;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->mPreviousButton:Landroid/widget/TextView;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->mNextButton:Landroid/widget/TextView;

    const v2, 0x7f0b0f13

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    :cond_3
    invoke-virtual {p0, v5}, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->setEnrollProgressText(I)V

    invoke-direct {p0}, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->startInitEffect()V

    return-void

    :cond_4
    invoke-virtual {p0}, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b08e0

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method public isScriptPlaying()Z
    .locals 4

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->mService:Lcom/sec/android/app/suwscriptplayer/ISuwScriptPlayer;

    if-eqz v2, :cond_0

    const-string/jumbo v2, "FcstFaceSetupwizardBixby"

    const-string/jumbo v3, "isScriptPlaying"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->mService:Lcom/sec/android/app/suwscriptplayer/ISuwScriptPlayer;

    invoke-interface {v2}, Lcom/sec/android/app/suwscriptplayer/ISuwScriptPlayer;->isPlaying()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :cond_0
    :goto_0
    return v1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public onClickBixbyButton(Landroid/view/View;)V
    .locals 6

    const/16 v5, 0x3f0

    const/4 v4, -0x1

    const/4 v3, 0x0

    iget-boolean v1, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->mIsButtonClicked:Z

    if-eqz v1, :cond_0

    return-void

    :cond_0
    sget-object v1, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby$PAUSE_STATE;->NORMAL:Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby$PAUSE_STATE;

    iput-object v1, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->mPauseState:Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby$PAUSE_STATE;

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->mIsButtonClicked:Z

    iget-object v1, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->mNextBtnArea:Landroid/view/View;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->mPreviousBtnArea:Landroid/view/View;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->mNextBtnArea:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setEnabled(Z)V

    iget-object v1, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->mPreviousBtnArea:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setEnabled(Z)V

    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    invoke-virtual {p0}, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->isScriptPlaying()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->stopScript()V

    :cond_2
    const v1, 0x7f11076c

    if-ne v0, v1, :cond_4

    iget-object v1, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->mNextButton:Landroid/widget/TextView;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->mCurrentStage:Ljava/lang/String;

    const-string/jumbo v2, "face_bixby_suw_intro"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-direct {p0, v4}, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->startFinishEffectBeforeEnroll(I)V

    :goto_0
    return-void

    :cond_3
    invoke-direct {p0, v4}, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->startFinishEffect(I)V

    iget-object v1, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->mFaceHandler:Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby$FaceBixbyHandler;

    invoke-virtual {v1, v5}, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby$FaceBixbyHandler;->sendEmptyMessage(I)Z

    goto :goto_0

    :cond_4
    iget-object v1, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->mCurrentStage:Ljava/lang/String;

    const-string/jumbo v2, "face_bixby_suw_intro"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-direct {p0, v3}, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->startFinishEffectBeforeEnroll(I)V

    goto :goto_0

    :cond_5
    iget-object v1, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->mFaceHandler:Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby$FaceBixbyHandler;

    invoke-virtual {v1, v5}, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby$FaceBixbyHandler;->sendEmptyMessage(I)Z

    iget-object v1, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->mCurrentStage:Ljava/lang/String;

    const-string/jumbo v2, "face_bixby_suw_after_enroll"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-direct {p0}, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->removeFaceTemplate()V

    :cond_6
    invoke-direct {p0, v3}, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->startCancelEffect(I)V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8

    const/4 v2, -0x1

    const/4 v7, 0x0

    const/4 v3, 0x0

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const-string/jumbo v4, "FcstFaceSetupwizardBixby"

    const-string/jumbo v5, "onCreate"

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p0, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->mContext:Landroid/content/Context;

    const v4, 0x7f0402c4

    invoke-virtual {p0, v4}, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->setContentView(I)V

    invoke-static {p0}, Lcom/samsung/android/bio/face/SemBioFaceManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/bio/face/SemBioFaceManager;

    move-result-object v4

    iput-object v4, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->mFaceManager:Lcom/samsung/android/bio/face/SemBioFaceManager;

    iget-object v4, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->mFaceManager:Lcom/samsung/android/bio/face/SemBioFaceManager;

    if-nez v4, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->showFaceErrorDialog()V

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string/jumbo v5, "isNext"

    invoke-virtual {v4, v5, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    iput-boolean v4, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->mIsNext:Z

    const-string/jumbo v4, "FcstFaceSetupwizardBixby"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "mIsNext : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->mIsNext:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->mFaceManager:Lcom/samsung/android/bio/face/SemBioFaceManager;

    invoke-virtual {v4}, Lcom/samsung/android/bio/face/SemBioFaceManager;->hasEnrolledFaces()Z

    move-result v4

    if-eqz v4, :cond_2

    iget-boolean v4, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->mIsNext:Z

    if-eqz v4, :cond_1

    :goto_0
    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->setEnrollResult(I)V

    const-string/jumbo v2, "FcstFaceSetupwizardBixby"

    const-string/jumbo v3, "Face already registered! Skip this page!"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    move v2, v3

    goto :goto_0

    :cond_2
    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->setResult(I)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v4, "show_button_background"

    invoke-static {v2, v4, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->mShowButtonBackground:I

    const v2, 0x7f110763

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->mNormalModeText:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->mNormalModeText:Landroid/widget/TextView;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->mNormalModeText:Landroid/widget/TextView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setPaintFlags(I)V

    iget v2, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->mShowButtonBackground:I

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->mNormalModeText:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0204bd

    invoke-virtual {v3, v4, v7}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_3
    const v2, 0x7f110766

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->mMessageView:Landroid/view/View;

    const v2, 0x7f110767

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->mDescView:Landroid/view/View;

    const v2, 0x7f110769

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->mFaceBixbyMsg:Landroid/widget/TextView;

    const v2, 0x7f110762

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout;

    iput-object v2, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->mBackground4:Landroid/widget/FrameLayout;

    const v2, 0x7f1103ef

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    iput-object v2, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->mFaceBottomContainer:Landroid/widget/RelativeLayout;

    const v2, 0x7f11076b

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->mPreviousButton:Landroid/widget/TextView;

    const v2, 0x7f1103f3

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->mNextButton:Landroid/widget/TextView;

    const v2, 0x7f1103f0

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->mPreviousBtnArea:Landroid/view/View;

    const v2, 0x7f11076c

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->mNextBtnArea:Landroid/view/View;

    const v2, 0x7f1103f1

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->mPrevArrow:Landroid/widget/ImageView;

    const v2, 0x7f1103f4

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->mNextArrow:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const-string/jumbo v3, "navigation_bar_height"

    const-string/jumbo v4, "dimen"

    const-string/jumbo v5, "android"

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    const/4 v0, 0x0

    if-lez v1, :cond_4

    invoke-virtual {p0}, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    :cond_4
    const-string/jumbo v2, "FcstFaceSetupwizardBixby"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Height : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v4, v4, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " + "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    add-int/2addr v2, v0

    iput v2, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->mScreenHeight:I

    const v2, 0x7f110768

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/settings/face/bixbysetupwizard/SolidBounceEffect;

    iput-object v2, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->mSolidBounceEffect:Lcom/samsung/android/settings/face/bixbysetupwizard/SolidBounceEffect;

    iget-object v2, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->mSolidBounceEffect:Lcom/samsung/android/settings/face/bixbysetupwizard/SolidBounceEffect;

    iget v3, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->mScreenHeight:I

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/face/bixbysetupwizard/SolidBounceEffect;->setToTarget(F)V

    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    iput-object v2, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceEnrollSetupwizardFragment;

    invoke-direct {v2}, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceEnrollSetupwizardFragment;-><init>()V

    iput-object v2, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->mEnrollFragment:Lcom/samsung/android/settings/face/bixbysetupwizard/FaceEnrollSetupwizardFragment;

    const v2, 0x7f110765

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/settings/face/bixbysetupwizard/BixbyIconViewLayout;

    iput-object v2, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->mBixbyIconViewLayout:Lcom/samsung/android/settings/face/bixbysetupwizard/BixbyIconViewLayout;

    const-string/jumbo v2, "face_bixby_suw_intro"

    invoke-direct {p0, v2}, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->setCurrentStage(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->bindScriptPlayer()V

    new-instance v2, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby$VoiceCallback;

    invoke-direct {v2, p0}, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby$VoiceCallback;-><init>(Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;)V

    iput-object v2, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->mVoiceCallback:Lcom/samsung/android/settings/face/bixbysetupwizard/VoiceCommandHelper$VoiceCommandHelperCallback;

    return-void
.end method

.method public onDestroy()V
    .locals 3

    const/4 v2, 0x0

    const-string/jumbo v0, "FcstFaceSetupwizardBixby"

    const-string/jumbo v1, "onDestroy"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->mIsServiceBound:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->mServiceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->unbindService(Landroid/content/ServiceConnection;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->mIsServiceBound:Z

    :cond_0
    invoke-direct {p0, v2}, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->setCurrentStage(Ljava/lang/String;)V

    iput-object v2, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->mService:Lcom/sec/android/app/suwscriptplayer/ISuwScriptPlayer;

    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    return-void
.end method

.method protected onPause()V
    .locals 2

    const-string/jumbo v0, "FcstFaceSetupwizardBixby"

    const-string/jumbo v1, "onPause"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->isScriptPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->stopScript()V

    :cond_0
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->setRequestedOrientation(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->mFaceManager:Lcom/samsung/android/bio/face/SemBioFaceManager;

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->stopEnrollment()V

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->mVoiceHelper:Lcom/samsung/android/settings/face/bixbysetupwizard/VoiceCommandHelper;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->mVoiceHelper:Lcom/samsung/android/settings/face/bixbysetupwizard/VoiceCommandHelper;

    invoke-virtual {v0}, Lcom/samsung/android/settings/face/bixbysetupwizard/VoiceCommandHelper;->stopListenering()V

    iget-object v0, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->mVoiceHelper:Lcom/samsung/android/settings/face/bixbysetupwizard/VoiceCommandHelper;

    invoke-virtual {v0}, Lcom/samsung/android/settings/face/bixbysetupwizard/VoiceCommandHelper;->clear()V

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->mPauseState:Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby$PAUSE_STATE;

    sget-object v1, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby$PAUSE_STATE;->EXTERNAL:Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby$PAUSE_STATE;

    if-eq v0, v1, :cond_3

    invoke-virtual {p0}, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->finish()V

    :cond_3
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    return-void
.end method

.method protected onResume()V
    .locals 4

    const v2, 0x7f0d016b

    const/16 v3, 0x3ea

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    const-string/jumbo v0, "FcstFaceSetupwizardBixby"

    const-string/jumbo v1, "onResume"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->mPauseState:Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby$PAUSE_STATE;

    sget-object v1, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby$PAUSE_STATE;->EXTERNAL:Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby$PAUSE_STATE;

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->mFaceManager:Lcom/samsung/android/bio/face/SemBioFaceManager;

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/samsung/android/bio/face/SemBioFaceManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/bio/face/SemBioFaceManager;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->mFaceManager:Lcom/samsung/android/bio/face/SemBioFaceManager;

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->mFaceManager:Lcom/samsung/android/bio/face/SemBioFaceManager;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->mFaceManager:Lcom/samsung/android/bio/face/SemBioFaceManager;

    invoke-virtual {v0}, Lcom/samsung/android/bio/face/SemBioFaceManager;->hasEnrolledFaces()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "FcstFaceSetupwizardBixby"

    const-string/jumbo v1, "Screen off and face registered"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->setEnrollResult(I)V

    :goto_0
    return-void

    :cond_1
    const-string/jumbo v0, "FcstFaceSetupwizardBixby"

    const-string/jumbo v1, "Screen off and face doesn\'t registered"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->setEnrollResult(I)V

    goto :goto_0

    :cond_2
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->setRequestedOrientation(I)V

    invoke-direct {p0}, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->setIndicatorTransparency()V

    iget-object v0, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->mPrevArrow:Landroid/widget/ImageView;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->mNextArrow:Landroid/widget/ImageView;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->mPrevArrow:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setColorFilter(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->mNextArrow:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setColorFilter(I)V

    :cond_3
    new-instance v0, Lcom/samsung/android/settings/face/bixbysetupwizard/VoiceCommandHelper;

    iget-object v1, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->mVoiceCallback:Lcom/samsung/android/settings/face/bixbysetupwizard/VoiceCommandHelper$VoiceCommandHelperCallback;

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/settings/face/bixbysetupwizard/VoiceCommandHelper;-><init>(Landroid/content/Context;Lcom/samsung/android/settings/face/bixbysetupwizard/VoiceCommandHelper$VoiceCommandHelperCallback;)V

    iput-object v0, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->mVoiceHelper:Lcom/samsung/android/settings/face/bixbysetupwizard/VoiceCommandHelper;

    sget-object v0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby$PAUSE_STATE;->EXTERNAL:Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby$PAUSE_STATE;

    iput-object v0, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->mPauseState:Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby$PAUSE_STATE;

    iget-boolean v0, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->mIsNext:Z

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->mFaceHandler:Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby$FaceBixbyHandler;

    invoke-virtual {v0, v3}, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby$FaceBixbyHandler;->removeMessages(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->mFaceHandler:Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby$FaceBixbyHandler;

    invoke-virtual {v0, v3}, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby$FaceBixbyHandler;->sendEmptyMessage(I)Z

    :cond_4
    return-void
.end method

.method public setEnrollProgressText(I)V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->mFaceProgressText:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->mFaceProgressText:Landroid/widget/TextView;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const v2, 0x7f0b0811

    invoke-virtual {p0, v2, v1}, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->mProgressEffcetView:Lcom/samsung/android/settings/face/bixbysetupwizard/FaceEffectView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->mProgressEffcetView:Lcom/samsung/android/settings/face/bixbysetupwizard/FaceEffectView;

    int-to-float v1, p1

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceEffectView;->setPrecent(F)V

    :cond_1
    const/16 v0, 0x64

    if-ne p1, v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->mProgressEffcetView:Lcom/samsung/android/settings/face/bixbysetupwizard/FaceEffectView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->mProgressEffcetView:Lcom/samsung/android/settings/face/bixbysetupwizard/FaceEffectView;

    invoke-virtual {v0}, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceEffectView;->startCompleteEffect()V

    :cond_2
    return-void
.end method

.method public setEnrollResult(I)V
    .locals 3

    const-string/jumbo v0, "FcstFaceSetupwizardBixby"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setEnrollResult to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->setResult(I)V

    invoke-direct {p0}, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->stopEnrollment()V

    invoke-virtual {p0}, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->finish()V

    return-void
.end method

.method protected startEnrollment(Landroid/view/View;)V
    .locals 6

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->mFaceManager:Lcom/samsung/android/bio/face/SemBioFaceManager;

    if-eqz v0, :cond_1

    const-string/jumbo v0, "FcstFaceSetupwizardBixby"

    const-string/jumbo v2, "startEnrollment"

    invoke-static {v0, v2}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/os/CancellationSignal;

    invoke-direct {v0}, Landroid/os/CancellationSignal;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->mCancellationSignal:Landroid/os/CancellationSignal;

    iget-object v0, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->mFaceManager:Lcom/samsung/android/bio/face/SemBioFaceManager;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->mFaceManager:Lcom/samsung/android/bio/face/SemBioFaceManager;

    invoke-virtual {v0}, Lcom/samsung/android/bio/face/SemBioFaceManager;->isEnrollSession()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->mFaceManager:Lcom/samsung/android/bio/face/SemBioFaceManager;

    invoke-virtual {v0}, Lcom/samsung/android/bio/face/SemBioFaceManager;->preEnroll()J

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->mFaceManager:Lcom/samsung/android/bio/face/SemBioFaceManager;

    iget-object v2, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->mCancellationSignal:Landroid/os/CancellationSignal;

    iget-object v4, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->mEnrollmentCallback:Lcom/samsung/android/bio/face/SemBioFaceManager$EnrollmentCallback;

    const/4 v3, 0x1

    move-object v5, p1

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/bio/face/SemBioFaceManager;->enroll([BLandroid/os/CancellationSignal;ILcom/samsung/android/bio/face/SemBioFaceManager$EnrollmentCallback;Landroid/view/View;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    const-string/jumbo v0, "FcstFaceSetupwizardBixby"

    const-string/jumbo v1, "FaceManager is null or already preenrolled!"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public startScript(Ljava/lang/String;)V
    .locals 3

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->mService:Lcom/sec/android/app/suwscriptplayer/ISuwScriptPlayer;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->mService:Lcom/sec/android/app/suwscriptplayer/ISuwScriptPlayer;

    iget-object v2, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->completionCallback:Lcom/sec/android/app/suwscriptplayer/ISuwScriptPlayerCallback;

    invoke-interface {v1, p1, v2}, Lcom/sec/android/app/suwscriptplayer/ISuwScriptPlayer;->PlayScript(Ljava/lang/String;Lcom/sec/android/app/suwscriptplayer/ISuwScriptPlayerCallback;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public stopScript()V
    .locals 3

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->mService:Lcom/sec/android/app/suwscriptplayer/ISuwScriptPlayer;

    if-eqz v1, :cond_0

    const-string/jumbo v1, "FcstFaceSetupwizardBixby"

    const-string/jumbo v2, "stopScript"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->mService:Lcom/sec/android/app/suwscriptplayer/ISuwScriptPlayer;

    invoke-interface {v1}, Lcom/sec/android/app/suwscriptplayer/ISuwScriptPlayer;->StopScript()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method
