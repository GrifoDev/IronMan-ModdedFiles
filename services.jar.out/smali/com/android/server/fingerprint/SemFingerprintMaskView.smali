.class public Lcom/android/server/fingerprint/SemFingerprintMaskView;
.super Ljava/lang/Object;
.source "SemFingerprintMaskView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/fingerprint/SemFingerprintMaskView$1;,
        Lcom/android/server/fingerprint/SemFingerprintMaskView$2;,
        Lcom/android/server/fingerprint/SemFingerprintMaskView$3;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "FingerprintService"


# instance fields
.field private final FILE_PATH_HBM_GPIO:Ljava/lang/String;

.field private final FILE_PATH_MASK_HBM_INFO:Ljava/lang/String;

.field private final FLAG_HBM_ON:I

.field private final FLAG_MASK_ON:I

.field private final HBM_GPIO_OFF:Ljava/lang/String;

.field private final HBM_GPIO_ON:Ljava/lang/String;

.field private final mAnimationRunnable:Ljava/lang/Runnable;

.field private mAnimationViewParams:Landroid/view/WindowManager$LayoutParams;

.field private mBinder:Landroid/os/Binder;

.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mContext:Landroid/content/Context;

.field private mCurrentMaskHbmInfo:I

.field private mEffect:Lcom/android/server/fingerprint/SemFingerUnlockEffect;

.field private mFingerGuideImg:Landroid/widget/ImageView;

.field private mFingerGuideText:Landroid/widget/TextView;

.field private mHandler:Landroid/os/Handler;

.field mIsVisible:Z

.field private mMaskOverlayView:Landroid/view/View;

.field private mMaskViewParams:Landroid/view/WindowManager$LayoutParams;

.field private mOrientation:Landroid/view/OrientationEventListener;

.field private mPowerManager:Landroid/os/PowerManager;

.field private mRotationView:Lcom/android/server/fingerprint/SemFingerprintRotationView;

.field private mSemDisplaySolutionManager:Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;

.field private mSensorAreaHeight:F

.field private mSensorAreaRectangle:Landroid/view/View;

.field private mSensorAreaViewParams:Landroid/view/WindowManager$LayoutParams;

.field private mSensorAreaWidth:F

.field private mSensorMarginBottom:F

.field private mSensorMarginLeft:F

.field private final mSetBrightnessRunnable:Ljava/lang/Runnable;

.field private mWindowManager:Landroid/view/WindowManager;

.field private orientationScreen:I

.field private preOrientationScreen:I


# direct methods
.method static synthetic -get0(Lcom/android/server/fingerprint/SemFingerprintMaskView;)Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lcom/android/server/fingerprint/SemFingerprintMaskView;->mAnimationRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/server/fingerprint/SemFingerprintMaskView;)Landroid/view/WindowManager$LayoutParams;
    .locals 1

    iget-object v0, p0, Lcom/android/server/fingerprint/SemFingerprintMaskView;->mAnimationViewParams:Landroid/view/WindowManager$LayoutParams;

    return-object v0
.end method

.method static synthetic -get10(Lcom/android/server/fingerprint/SemFingerprintMaskView;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/android/server/fingerprint/SemFingerprintMaskView;->mSensorAreaRectangle:Landroid/view/View;

    return-object v0
.end method

.method static synthetic -get11(Lcom/android/server/fingerprint/SemFingerprintMaskView;)F
    .locals 1

    iget v0, p0, Lcom/android/server/fingerprint/SemFingerprintMaskView;->mSensorMarginBottom:F

    return v0
.end method

.method static synthetic -get12(Lcom/android/server/fingerprint/SemFingerprintMaskView;)Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lcom/android/server/fingerprint/SemFingerprintMaskView;->mSetBrightnessRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic -get13(Lcom/android/server/fingerprint/SemFingerprintMaskView;)Landroid/view/WindowManager;
    .locals 1

    iget-object v0, p0, Lcom/android/server/fingerprint/SemFingerprintMaskView;->mWindowManager:Landroid/view/WindowManager;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/server/fingerprint/SemFingerprintMaskView;)Lcom/android/server/fingerprint/SemFingerUnlockEffect;
    .locals 1

    iget-object v0, p0, Lcom/android/server/fingerprint/SemFingerprintMaskView;->mEffect:Lcom/android/server/fingerprint/SemFingerUnlockEffect;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/server/fingerprint/SemFingerprintMaskView;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/android/server/fingerprint/SemFingerprintMaskView;->mFingerGuideImg:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/server/fingerprint/SemFingerprintMaskView;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/android/server/fingerprint/SemFingerprintMaskView;->mFingerGuideText:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic -get5(Lcom/android/server/fingerprint/SemFingerprintMaskView;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/server/fingerprint/SemFingerprintMaskView;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -get6(Lcom/android/server/fingerprint/SemFingerprintMaskView;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/android/server/fingerprint/SemFingerprintMaskView;->mMaskOverlayView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic -get7(Lcom/android/server/fingerprint/SemFingerprintMaskView;)Landroid/os/PowerManager;
    .locals 1

    iget-object v0, p0, Lcom/android/server/fingerprint/SemFingerprintMaskView;->mPowerManager:Landroid/os/PowerManager;

    return-object v0
.end method

.method static synthetic -get8(Lcom/android/server/fingerprint/SemFingerprintMaskView;)Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;
    .locals 1

    iget-object v0, p0, Lcom/android/server/fingerprint/SemFingerprintMaskView;->mSemDisplaySolutionManager:Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;

    return-object v0
.end method

.method static synthetic -get9(Lcom/android/server/fingerprint/SemFingerprintMaskView;)F
    .locals 1

    iget v0, p0, Lcom/android/server/fingerprint/SemFingerprintMaskView;->mSensorAreaHeight:F

    return v0
.end method

.method static synthetic -set0(Lcom/android/server/fingerprint/SemFingerprintMaskView;Lcom/android/server/fingerprint/SemFingerUnlockEffect;)Lcom/android/server/fingerprint/SemFingerUnlockEffect;
    .locals 0

    iput-object p1, p0, Lcom/android/server/fingerprint/SemFingerprintMaskView;->mEffect:Lcom/android/server/fingerprint/SemFingerUnlockEffect;

    return-object p1
.end method

.method static synthetic -wrap0(Lcom/android/server/fingerprint/SemFingerprintMaskView;Ljava/io/File;[B)Z
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/android/server/fingerprint/SemFingerprintMaskView;->writeFile(Ljava/io/File;[B)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/android/server/fingerprint/SemFingerprintMaskView;IF)I
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/android/server/fingerprint/SemFingerprintMaskView;->adjustAlpha(IF)I

    move-result v0

    return v0
.end method

.method static synthetic -wrap2(Lcom/android/server/fingerprint/SemFingerprintMaskView;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/fingerprint/SemFingerprintMaskView;->onConfigurationChanged()V

    return-void
.end method

.method static synthetic -wrap3(Lcom/android/server/fingerprint/SemFingerprintMaskView;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/fingerprint/SemFingerprintMaskView;->restoreBrightness()V

    return-void
.end method

.method static synthetic -wrap4(Lcom/android/server/fingerprint/SemFingerprintMaskView;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/fingerprint/SemFingerprintMaskView;->showAnimationView()V

    return-void
.end method

.method static synthetic -wrap5(Lcom/android/server/fingerprint/SemFingerprintMaskView;IZ)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/server/fingerprint/SemFingerprintMaskView;->writeMaskHbmStatus(IZ)V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 10

    const/16 v3, 0x7f4

    const/4 v5, -0x3

    const/4 v9, -0x2

    const/4 v8, 0x0

    const/4 v7, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string/jumbo v0, "1"

    iput-object v0, p0, Lcom/android/server/fingerprint/SemFingerprintMaskView;->HBM_GPIO_ON:Ljava/lang/String;

    const-string/jumbo v0, "0"

    iput-object v0, p0, Lcom/android/server/fingerprint/SemFingerprintMaskView;->HBM_GPIO_OFF:Ljava/lang/String;

    const-string/jumbo v0, "/sys/class/lcd/panel/fingerprint"

    iput-object v0, p0, Lcom/android/server/fingerprint/SemFingerprintMaskView;->FILE_PATH_MASK_HBM_INFO:Ljava/lang/String;

    const-string/jumbo v0, "/sys/class/fingerprint/fingerprint/hbm"

    iput-object v0, p0, Lcom/android/server/fingerprint/SemFingerprintMaskView;->FILE_PATH_HBM_GPIO:Ljava/lang/String;

    const/4 v0, 0x4

    iput v0, p0, Lcom/android/server/fingerprint/SemFingerprintMaskView;->FLAG_HBM_ON:I

    const/4 v0, 0x2

    iput v0, p0, Lcom/android/server/fingerprint/SemFingerprintMaskView;->FLAG_MASK_ON:I

    iput-object v7, p0, Lcom/android/server/fingerprint/SemFingerprintMaskView;->mPowerManager:Landroid/os/PowerManager;

    const v0, 0x431a47ae    # 154.28f

    iput v0, p0, Lcom/android/server/fingerprint/SemFingerprintMaskView;->mSensorAreaWidth:F

    const v0, 0x42b923d7    # 92.57f

    iput v0, p0, Lcom/android/server/fingerprint/SemFingerprintMaskView;->mSensorAreaHeight:F

    const v0, 0x433c7d71    # 188.49f

    iput v0, p0, Lcom/android/server/fingerprint/SemFingerprintMaskView;->mSensorMarginBottom:F

    const v0, 0x4093d70a    # 4.62f

    iput v0, p0, Lcom/android/server/fingerprint/SemFingerprintMaskView;->mSensorMarginLeft:F

    iput-object v7, p0, Lcom/android/server/fingerprint/SemFingerprintMaskView;->mMaskOverlayView:Landroid/view/View;

    iput-object v7, p0, Lcom/android/server/fingerprint/SemFingerprintMaskView;->mSensorAreaRectangle:Landroid/view/View;

    iput-object v7, p0, Lcom/android/server/fingerprint/SemFingerprintMaskView;->mFingerGuideText:Landroid/widget/TextView;

    iput-object v7, p0, Lcom/android/server/fingerprint/SemFingerprintMaskView;->mFingerGuideImg:Landroid/widget/ImageView;

    iput v8, p0, Lcom/android/server/fingerprint/SemFingerprintMaskView;->mCurrentMaskHbmInfo:I

    iput-boolean v8, p0, Lcom/android/server/fingerprint/SemFingerprintMaskView;->mIsVisible:Z

    iput v8, p0, Lcom/android/server/fingerprint/SemFingerprintMaskView;->preOrientationScreen:I

    iput v8, p0, Lcom/android/server/fingerprint/SemFingerprintMaskView;->orientationScreen:I

    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x1

    const v4, 0x8000d18

    invoke-direct/range {v0 .. v5}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    iput-object v0, p0, Lcom/android/server/fingerprint/SemFingerprintMaskView;->mMaskViewParams:Landroid/view/WindowManager$LayoutParams;

    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    const v4, 0x8000d08

    move v1, v9

    move v2, v9

    invoke-direct/range {v0 .. v5}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    iput-object v0, p0, Lcom/android/server/fingerprint/SemFingerprintMaskView;->mSensorAreaViewParams:Landroid/view/WindowManager$LayoutParams;

    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    const v4, 0x8000d18

    move v1, v9

    move v2, v9

    invoke-direct/range {v0 .. v5}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    iput-object v0, p0, Lcom/android/server/fingerprint/SemFingerprintMaskView;->mAnimationViewParams:Landroid/view/WindowManager$LayoutParams;

    new-instance v0, Lcom/android/server/fingerprint/SemFingerprintMaskView$1;

    invoke-direct {v0, p0}, Lcom/android/server/fingerprint/SemFingerprintMaskView$1;-><init>(Lcom/android/server/fingerprint/SemFingerprintMaskView;)V

    iput-object v0, p0, Lcom/android/server/fingerprint/SemFingerprintMaskView;->mSetBrightnessRunnable:Ljava/lang/Runnable;

    new-instance v0, Lcom/android/server/fingerprint/SemFingerprintMaskView$2;

    invoke-direct {v0, p0}, Lcom/android/server/fingerprint/SemFingerprintMaskView$2;-><init>(Lcom/android/server/fingerprint/SemFingerprintMaskView;)V

    iput-object v0, p0, Lcom/android/server/fingerprint/SemFingerprintMaskView;->mAnimationRunnable:Ljava/lang/Runnable;

    new-instance v0, Lcom/android/server/fingerprint/SemFingerprintMaskView$3;

    invoke-direct {v0, p0}, Lcom/android/server/fingerprint/SemFingerprintMaskView$3;-><init>(Lcom/android/server/fingerprint/SemFingerprintMaskView;)V

    iput-object v0, p0, Lcom/android/server/fingerprint/SemFingerprintMaskView;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    iput-object p1, p0, Lcom/android/server/fingerprint/SemFingerprintMaskView;->mContext:Landroid/content/Context;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/server/fingerprint/SemFingerprintMaskView;->mHandler:Landroid/os/Handler;

    const-string/jumbo v0, "power"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/android/server/fingerprint/SemFingerprintMaskView;->mPowerManager:Landroid/os/PowerManager;

    const-string/jumbo v0, "window"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/android/server/fingerprint/SemFingerprintMaskView;->mWindowManager:Landroid/view/WindowManager;

    const-string/jumbo v0, "DisplaySolution"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;

    iput-object v0, p0, Lcom/android/server/fingerprint/SemFingerprintMaskView;->mSemDisplaySolutionManager:Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;

    iget-object v0, p0, Lcom/android/server/fingerprint/SemFingerprintMaskView;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/LayoutInflater;

    const v0, 0x1090101

    invoke-virtual {v6, v0, v7, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/fingerprint/SemFingerprintMaskView;->mMaskOverlayView:Landroid/view/View;

    invoke-direct {p0}, Lcom/android/server/fingerprint/SemFingerprintMaskView;->readSensorConfig()V

    iget v0, p0, Lcom/android/server/fingerprint/SemFingerprintMaskView;->mSensorAreaWidth:F

    iget v1, p0, Lcom/android/server/fingerprint/SemFingerprintMaskView;->mSensorAreaHeight:F

    iget v2, p0, Lcom/android/server/fingerprint/SemFingerprintMaskView;->mSensorMarginBottom:F

    iget v3, p0, Lcom/android/server/fingerprint/SemFingerprintMaskView;->mSensorMarginLeft:F

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/android/server/fingerprint/SemFingerprintMaskView;->setSensorLayoutSpec(FFFF)V

    iget-object v0, p0, Lcom/android/server/fingerprint/SemFingerprintMaskView;->mMaskViewParams:Landroid/view/WindowManager$LayoutParams;

    const-string/jumbo v1, "com.android.server.fingerprint.FingerprintMaskView.maskOverlayView"

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/server/fingerprint/SemFingerprintMaskView;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/android/server/fingerprint/SemFingerprintMaskView;->mMaskOverlayView:Landroid/view/View;

    iget-object v2, p0, Lcom/android/server/fingerprint/SemFingerprintMaskView;->mMaskViewParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/android/server/fingerprint/SemFingerprintMaskView;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/android/server/fingerprint/SemFingerprintMaskView;->mRotationView:Lcom/android/server/fingerprint/SemFingerprintRotationView;

    iget-object v2, p0, Lcom/android/server/fingerprint/SemFingerprintMaskView;->mSensorAreaViewParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/android/server/fingerprint/SemFingerprintMaskView;->mMaskOverlayView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/server/fingerprint/SemFingerprintMaskView;->mRotationView:Lcom/android/server/fingerprint/SemFingerprintRotationView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/server/fingerprint/SemFingerprintRotationView;->setVisibility(I)V

    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    iput-object v0, p0, Lcom/android/server/fingerprint/SemFingerprintMaskView;->mBinder:Landroid/os/Binder;

    return-void
.end method

.method private adjustAlpha(IF)I
    .locals 5

    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v4, p2

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v0

    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v3

    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v2

    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result v1

    invoke-static {v0, v3, v2, v1}, Landroid/graphics/Color;->argb(IIII)I

    move-result v4

    return v4
.end method

.method private static getPxValue(DLandroid/content/Context;)I
    .locals 4

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v1, v0, Landroid/util/DisplayMetrics;->density:F

    float-to-double v2, v1

    mul-double/2addr v2, p0

    double-to-int v1, v2

    int-to-float v1, v1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    return v1
.end method

.method private onConfigurationChanged()V
    .locals 4

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/server/fingerprint/SemFingerprintMaskView;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v0

    iput v0, p0, Lcom/android/server/fingerprint/SemFingerprintMaskView;->orientationScreen:I

    iget v0, p0, Lcom/android/server/fingerprint/SemFingerprintMaskView;->preOrientationScreen:I

    iget v1, p0, Lcom/android/server/fingerprint/SemFingerprintMaskView;->orientationScreen:I

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    iget v0, p0, Lcom/android/server/fingerprint/SemFingerprintMaskView;->orientationScreen:I

    iput v0, p0, Lcom/android/server/fingerprint/SemFingerprintMaskView;->preOrientationScreen:I

    iget-object v0, p0, Lcom/android/server/fingerprint/SemFingerprintMaskView;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/android/server/fingerprint/SemFingerprintMaskView;->mRotationView:Lcom/android/server/fingerprint/SemFingerprintRotationView;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/android/server/fingerprint/SemFingerprintMaskView;->mRotationView:Lcom/android/server/fingerprint/SemFingerprintRotationView;

    if-eqz v0, :cond_1

    iput-object v2, p0, Lcom/android/server/fingerprint/SemFingerprintMaskView;->mRotationView:Lcom/android/server/fingerprint/SemFingerprintRotationView;

    :cond_1
    iget v0, p0, Lcom/android/server/fingerprint/SemFingerprintMaskView;->mSensorAreaWidth:F

    iget v1, p0, Lcom/android/server/fingerprint/SemFingerprintMaskView;->mSensorAreaHeight:F

    iget v2, p0, Lcom/android/server/fingerprint/SemFingerprintMaskView;->mSensorMarginBottom:F

    iget v3, p0, Lcom/android/server/fingerprint/SemFingerprintMaskView;->mSensorMarginLeft:F

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/android/server/fingerprint/SemFingerprintMaskView;->setSensorLayoutSpec(FFFF)V

    iget-object v0, p0, Lcom/android/server/fingerprint/SemFingerprintMaskView;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/android/server/fingerprint/SemFingerprintMaskView;->mRotationView:Lcom/android/server/fingerprint/SemFingerprintRotationView;

    iget-object v2, p0, Lcom/android/server/fingerprint/SemFingerprintMaskView;->mSensorAreaViewParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private readBrightness(Ljava/io/File;)[B
    .locals 8

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_2

    const/4 v4, 0x0

    const/4 v2, 0x0

    :try_start_0
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v6

    long-to-int v4, v6

    new-array v0, v4, [B

    invoke-virtual {v3, v0}, Ljava/io/FileInputStream;->read([B)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v3, :cond_0

    :try_start_2
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :cond_0
    :goto_0
    move-object v2, v3

    :cond_1
    :goto_1
    return-object v0

    :cond_2
    return-object v0

    :catch_0
    move-exception v1

    const-string/jumbo v5, "FingerprintService"

    const-string/jumbo v6, "readBrightness : failed to close file"

    invoke-static {v5, v6, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :catch_1
    move-exception v1

    :goto_2
    :try_start_3
    const-string/jumbo v5, "FingerprintService"

    const-string/jumbo v6, "readBrightness : failed to read file"

    invoke-static {v5, v6, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v2, :cond_1

    :try_start_4
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_1

    :catch_2
    move-exception v1

    const-string/jumbo v5, "FingerprintService"

    const-string/jumbo v6, "readBrightness : failed to close file"

    invoke-static {v5, v6, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    :catchall_0
    move-exception v5

    :goto_3
    if-eqz v2, :cond_3

    :try_start_5
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    :cond_3
    :goto_4
    throw v5

    :catch_3
    move-exception v1

    const-string/jumbo v6, "FingerprintService"

    const-string/jumbo v7, "readBrightness : failed to close file"

    invoke-static {v6, v7, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4

    :catchall_1
    move-exception v5

    move-object v2, v3

    goto :goto_3

    :catch_4
    move-exception v1

    move-object v2, v3

    goto :goto_2
.end method

.method private readSensorConfig()V
    .locals 12

    const/4 v8, 0x0

    const-string/jumbo v0, "google_touch_rear,navi=1"

    iget-object v9, p0, Lcom/android/server/fingerprint/SemFingerprintMaskView;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    if-eqz v0, :cond_3

    const-string/jumbo v9, ","

    invoke-virtual {v0, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    array-length v9, v5

    :goto_0
    if-ge v8, v9, :cond_3

    aget-object v4, v5, v8

    const-string/jumbo v10, "sensor_size="

    invoke-virtual {v4, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_1

    :try_start_0
    const-string/jumbo v10, "sensor_size="

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    invoke-virtual {v4, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_0

    const-string/jumbo v10, "x"

    invoke-virtual {v6, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    const/4 v10, 0x0

    aget-object v10, v7, v10

    invoke-static {v10}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v10

    const/4 v11, 0x5

    invoke-static {v11, v10, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v10

    iput v10, p0, Lcom/android/server/fingerprint/SemFingerprintMaskView;->mSensorAreaWidth:F

    const/4 v10, 0x1

    aget-object v10, v7, v10

    invoke-static {v10}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v10

    const/4 v11, 0x5

    invoke-static {v11, v10, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v10

    iput v10, p0, Lcom/android/server/fingerprint/SemFingerprintMaskView;->mSensorAreaHeight:F
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :catch_0
    move-exception v2

    const-string/jumbo v10, "FingerprintService"

    const-string/jumbo v11, "readSensorConfig : failed to read sensor config"

    invoke-static {v10, v11, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    :cond_1
    const-string/jumbo v10, "sensor_margin_bottom="

    invoke-virtual {v4, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_2

    :try_start_1
    const-string/jumbo v10, "sensor_margin_bottom="

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    invoke-virtual {v4, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v10

    const/4 v11, 0x5

    invoke-static {v11, v10, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v10

    iput v10, p0, Lcom/android/server/fingerprint/SemFingerprintMaskView;->mSensorMarginBottom:F
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v2

    const-string/jumbo v10, "FingerprintService"

    const-string/jumbo v11, "readSensorConfig : failed to read sensor config"

    invoke-static {v10, v11, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    :cond_2
    const-string/jumbo v10, "sensor_margin_left="

    invoke-virtual {v4, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_0

    :try_start_2
    const-string/jumbo v10, "sensor_margin_left="

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    invoke-virtual {v4, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v10

    const/4 v11, 0x5

    invoke-static {v11, v10, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v10

    iput v10, p0, Lcom/android/server/fingerprint/SemFingerprintMaskView;->mSensorMarginLeft:F
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_1

    :catch_2
    move-exception v2

    const-string/jumbo v10, "FingerprintService"

    const-string/jumbo v11, "readSensorConfig : failed to read sensor config"

    invoke-static {v10, v11, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    :cond_3
    sget-boolean v8, Lcom/android/server/fingerprint/FingerprintService;->DEBUG:Z

    if-eqz v8, :cond_4

    const-string/jumbo v8, "FingerprintService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Sensor Config : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Lcom/android/server/fingerprint/SemFingerprintMaskView;->mSensorAreaWidth:F

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, " x "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Lcom/android/server/fingerprint/SemFingerprintMaskView;->mSensorAreaHeight:F

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, ", "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Lcom/android/server/fingerprint/SemFingerprintMaskView;->mSensorMarginBottom:F

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, ", "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Lcom/android/server/fingerprint/SemFingerprintMaskView;->mSensorMarginLeft:F

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    return-void
.end method

.method private declared-synchronized restoreBrightness()V
    .locals 2

    monitor-enter p0

    const/4 v0, 0x4

    const/4 v1, 0x0

    :try_start_0
    invoke-direct {p0, v0, v1}, Lcom/android/server/fingerprint/SemFingerprintMaskView;->writeMaskHbmStatus(IZ)V

    new-instance v0, Ljava/io/File;

    const-string/jumbo v1, "/sys/class/fingerprint/fingerprint/hbm"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "0"

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/server/fingerprint/SemFingerprintMaskView;->writeFile(Ljava/io/File;[B)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private setFingerImageAnimation()V
    .locals 5

    const/4 v4, 0x2

    const-string/jumbo v2, "#23000000"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    new-array v2, v4, [F

    fill-array-data v2, :array_0

    invoke-static {v2}, Landroid/animation/ObjectAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    new-instance v2, Lcom/android/server/fingerprint/SemFingerprintMaskView$5;

    invoke-direct {v2, p0, v1}, Lcom/android/server/fingerprint/SemFingerprintMaskView$5;-><init>(Lcom/android/server/fingerprint/SemFingerprintMaskView;I)V

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    const-wide/16 v2, 0x2ee

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    invoke-virtual {v0, v4}, Landroid/animation/ValueAnimator;->setRepeatMode(I)V

    const/4 v2, -0x1

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private setSensorAreaLayout(I)V
    .locals 10

    const/4 v4, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v7, 0x0

    iget-object v1, p0, Lcom/android/server/fingerprint/SemFingerprintMaskView;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "layout_inflater"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    const v1, 0x1090102

    invoke-virtual {v0, v1, v4, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/server/fingerprint/SemFingerprintRotationView;

    iput-object v1, p0, Lcom/android/server/fingerprint/SemFingerprintMaskView;->mRotationView:Lcom/android/server/fingerprint/SemFingerprintRotationView;

    iget-object v1, p0, Lcom/android/server/fingerprint/SemFingerprintMaskView;->mRotationView:Lcom/android/server/fingerprint/SemFingerprintRotationView;

    const v2, 0x1090103

    invoke-virtual {v0, v2, v4, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/fingerprint/SemFingerprintRotationView;->addView(Landroid/view/View;)V

    iget-object v1, p0, Lcom/android/server/fingerprint/SemFingerprintMaskView;->mRotationView:Lcom/android/server/fingerprint/SemFingerprintRotationView;

    const v2, 0x10204cc

    invoke-virtual {v1, v2}, Lcom/android/server/fingerprint/SemFingerprintRotationView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/server/fingerprint/SemFingerprintMaskView;->mFingerGuideImg:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/server/fingerprint/SemFingerprintMaskView;->mRotationView:Lcom/android/server/fingerprint/SemFingerprintRotationView;

    const v2, 0x10204cb

    invoke-virtual {v1, v2}, Lcom/android/server/fingerprint/SemFingerprintRotationView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/fingerprint/SemFingerprintMaskView;->mSensorAreaRectangle:Landroid/view/View;

    iget-object v1, p0, Lcom/android/server/fingerprint/SemFingerprintMaskView;->mRotationView:Lcom/android/server/fingerprint/SemFingerprintRotationView;

    const v2, 0x10204cd

    invoke-virtual {v1, v2}, Lcom/android/server/fingerprint/SemFingerprintRotationView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/server/fingerprint/SemFingerprintMaskView;->mFingerGuideText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/server/fingerprint/SemFingerprintMaskView;->mFingerGuideImg:Landroid/widget/ImageView;

    const v2, 0x1080860

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    packed-switch p1, :pswitch_data_0

    :goto_0
    iget-object v1, p0, Lcom/android/server/fingerprint/SemFingerprintMaskView;->mSensorAreaRectangle:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setAlpha(F)V

    iget-object v1, p0, Lcom/android/server/fingerprint/SemFingerprintMaskView;->mFingerGuideText:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setAlpha(F)V

    iget-object v1, p0, Lcom/android/server/fingerprint/SemFingerprintMaskView;->mFingerGuideImg:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setAlpha(F)V

    iget-object v1, p0, Lcom/android/server/fingerprint/SemFingerprintMaskView;->mFingerGuideText:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/server/fingerprint/SemFingerprintMaskView;->mContext:Landroid/content/Context;

    const v3, 0x1040b0a

    invoke-virtual {v2, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/android/server/fingerprint/SemFingerprintMaskView;->mSensorAreaRectangle:Landroid/view/View;

    new-instance v2, Lcom/android/server/fingerprint/SemFingerprintMaskView$7;

    invoke-direct {v2, p0}, Lcom/android/server/fingerprint/SemFingerprintMaskView$7;-><init>(Lcom/android/server/fingerprint/SemFingerprintMaskView;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v1, p0, Lcom/android/server/fingerprint/SemFingerprintMaskView;->mRotationView:Lcom/android/server/fingerprint/SemFingerprintRotationView;

    new-instance v2, Landroid/view/TouchDelegate;

    new-instance v3, Landroid/graphics/Rect;

    iget-object v4, p0, Lcom/android/server/fingerprint/SemFingerprintMaskView;->mSensorAreaViewParams:Landroid/view/WindowManager$LayoutParams;

    iget v4, v4, Landroid/view/WindowManager$LayoutParams;->width:I

    iget v5, p0, Lcom/android/server/fingerprint/SemFingerprintMaskView;->mSensorAreaHeight:F

    float-to-int v5, v5

    iget-object v6, p0, Lcom/android/server/fingerprint/SemFingerprintMaskView;->mContext:Landroid/content/Context;

    const-wide v8, 0x4034c00000000000L    # 20.75

    invoke-static {v8, v9, v6}, Lcom/android/server/fingerprint/SemFingerprintMaskView;->getPxValue(DLandroid/content/Context;)I

    move-result v6

    add-int/2addr v5, v6

    invoke-direct {v3, v7, v7, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    iget-object v4, p0, Lcom/android/server/fingerprint/SemFingerprintMaskView;->mSensorAreaRectangle:Landroid/view/View;

    invoke-direct {v2, v3, v4}, Landroid/view/TouchDelegate;-><init>(Landroid/graphics/Rect;Landroid/view/View;)V

    invoke-virtual {v1, v2}, Lcom/android/server/fingerprint/SemFingerprintRotationView;->setTouchDelegate(Landroid/view/TouchDelegate;)V

    invoke-direct {p0}, Lcom/android/server/fingerprint/SemFingerprintMaskView;->setFingerImageAnimation()V

    return-void

    :pswitch_0
    iget-object v1, p0, Lcom/android/server/fingerprint/SemFingerprintMaskView;->mRotationView:Lcom/android/server/fingerprint/SemFingerprintRotationView;

    invoke-virtual {v1, v7}, Lcom/android/server/fingerprint/SemFingerprintRotationView;->setRotation(I)V

    iget-object v1, p0, Lcom/android/server/fingerprint/SemFingerprintMaskView;->mSensorAreaViewParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v2, 0x51

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    goto :goto_0

    :pswitch_1
    iget-object v1, p0, Lcom/android/server/fingerprint/SemFingerprintMaskView;->mRotationView:Lcom/android/server/fingerprint/SemFingerprintRotationView;

    const/16 v2, 0x5a

    invoke-virtual {v1, v2}, Lcom/android/server/fingerprint/SemFingerprintRotationView;->setRotation(I)V

    iget-object v1, p0, Lcom/android/server/fingerprint/SemFingerprintMaskView;->mSensorAreaViewParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v2, 0x15

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    goto :goto_0

    :pswitch_2
    iget-object v1, p0, Lcom/android/server/fingerprint/SemFingerprintMaskView;->mRotationView:Lcom/android/server/fingerprint/SemFingerprintRotationView;

    const/16 v2, 0x10e

    invoke-virtual {v1, v2}, Lcom/android/server/fingerprint/SemFingerprintRotationView;->setRotation(I)V

    iget-object v1, p0, Lcom/android/server/fingerprint/SemFingerprintMaskView;->mSensorAreaViewParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v2, 0x13

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private setSensorLayoutSpec(FFFF)V
    .locals 5

    :try_start_0
    iget-object v2, p0, Lcom/android/server/fingerprint/SemFingerprintMaskView;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Display;->getRotation()I

    move-result v2

    iput v2, p0, Lcom/android/server/fingerprint/SemFingerprintMaskView;->preOrientationScreen:I

    iget v2, p0, Lcom/android/server/fingerprint/SemFingerprintMaskView;->preOrientationScreen:I

    invoke-direct {p0, v2}, Lcom/android/server/fingerprint/SemFingerprintMaskView;->setSensorAreaLayout(I)V

    iget-object v2, p0, Lcom/android/server/fingerprint/SemFingerprintMaskView;->mSensorAreaRectangle:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    float-to-int v2, p3

    iput v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    float-to-int v2, p4

    iput v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    float-to-int v2, p1

    iput v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    float-to-int v2, p2

    iput v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    iget-object v2, p0, Lcom/android/server/fingerprint/SemFingerprintMaskView;->mSensorAreaRectangle:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v2, p0, Lcom/android/server/fingerprint/SemFingerprintMaskView;->mFingerGuideText:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/server/fingerprint/SemFingerprintMaskView;->mContext:Landroid/content/Context;

    const v4, 0x1040b0a

    invoke-virtual {v3, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v2, "FingerprintService"

    const-string/jumbo v3, "failed to set layout resource"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private showAnimationView()V
    .locals 2

    new-instance v0, Lcom/android/server/fingerprint/SemFingerUnlockEffect;

    iget-object v1, p0, Lcom/android/server/fingerprint/SemFingerprintMaskView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/server/fingerprint/SemFingerUnlockEffect;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/fingerprint/SemFingerprintMaskView;->mEffect:Lcom/android/server/fingerprint/SemFingerUnlockEffect;

    iget-object v0, p0, Lcom/android/server/fingerprint/SemFingerprintMaskView;->mEffect:Lcom/android/server/fingerprint/SemFingerUnlockEffect;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/server/fingerprint/SemFingerUnlockEffect;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/server/fingerprint/SemFingerprintMaskView;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/fingerprint/SemFingerprintMaskView;->mAnimationRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/android/server/fingerprint/SemFingerprintMaskView;->mEffect:Lcom/android/server/fingerprint/SemFingerUnlockEffect;

    invoke-virtual {v0}, Lcom/android/server/fingerprint/SemFingerUnlockEffect;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/android/server/fingerprint/SemFingerprintMaskView$6;

    invoke-direct {v1, p0}, Lcom/android/server/fingerprint/SemFingerprintMaskView$6;-><init>(Lcom/android/server/fingerprint/SemFingerprintMaskView;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void
.end method

.method private writeFile(Ljava/io/File;[B)Z
    .locals 7

    const/4 v1, 0x0

    const/4 v3, 0x0

    :try_start_0
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {v2, p2}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    :try_start_2
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :cond_0
    :goto_0
    move-object v1, v2

    :cond_1
    :goto_1
    return v3

    :catch_0
    move-exception v0

    const-string/jumbo v4, "FingerprintService"

    const-string/jumbo v5, "writeFile : failed to close file"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :catch_1
    move-exception v0

    :goto_2
    :try_start_3
    const-string/jumbo v4, "FingerprintService"

    const-string/jumbo v5, "writeFile : failed to write file"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v1, :cond_1

    :try_start_4
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_1

    :catch_2
    move-exception v0

    const-string/jumbo v4, "FingerprintService"

    const-string/jumbo v5, "writeFile : failed to close file"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    :catchall_0
    move-exception v4

    :goto_3
    if-eqz v1, :cond_2

    :try_start_5
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    :cond_2
    :goto_4
    throw v4

    :catch_3
    move-exception v0

    const-string/jumbo v5, "FingerprintService"

    const-string/jumbo v6, "writeFile : failed to close file"

    invoke-static {v5, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4

    :catchall_1
    move-exception v4

    move-object v1, v2

    goto :goto_3

    :catch_4
    move-exception v0

    move-object v1, v2

    goto :goto_2
.end method

.method private declared-synchronized writeMaskHbmStatus(IZ)V
    .locals 3

    monitor-enter p0

    :try_start_0
    sget-boolean v0, Lcom/android/server/fingerprint/FingerprintService;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "FingerprintService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "writeMaskHbmStatus : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/fingerprint/SemFingerprintMaskView;->mCurrentMaskHbmInfo:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-eqz p2, :cond_2

    iget v0, p0, Lcom/android/server/fingerprint/SemFingerprintMaskView;->mCurrentMaskHbmInfo:I

    and-int/2addr v0, p1

    if-eq v0, p1, :cond_1

    iget v0, p0, Lcom/android/server/fingerprint/SemFingerprintMaskView;->mCurrentMaskHbmInfo:I

    or-int/2addr v0, p1

    iput v0, p0, Lcom/android/server/fingerprint/SemFingerprintMaskView;->mCurrentMaskHbmInfo:I

    new-instance v0, Ljava/io/File;

    const-string/jumbo v1, "/sys/class/lcd/panel/fingerprint"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/server/fingerprint/SemFingerprintMaskView;->mCurrentMaskHbmInfo:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/server/fingerprint/SemFingerprintMaskView;->writeFile(Ljava/io/File;[B)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    :cond_2
    :try_start_1
    iget v0, p0, Lcom/android/server/fingerprint/SemFingerprintMaskView;->mCurrentMaskHbmInfo:I

    and-int/2addr v0, p1

    if-ne v0, p1, :cond_1

    iget v0, p0, Lcom/android/server/fingerprint/SemFingerprintMaskView;->mCurrentMaskHbmInfo:I

    not-int v1, p1

    and-int/2addr v0, v1

    iput v0, p0, Lcom/android/server/fingerprint/SemFingerprintMaskView;->mCurrentMaskHbmInfo:I

    new-instance v0, Ljava/io/File;

    const-string/jumbo v1, "/sys/class/lcd/panel/fingerprint"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/server/fingerprint/SemFingerprintMaskView;->mCurrentMaskHbmInfo:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/server/fingerprint/SemFingerprintMaskView;->writeFile(Ljava/io/File;[B)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method dismiss()V
    .locals 6

    :try_start_0
    const-string/jumbo v1, "FingerprintService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "dismiss : REMOVE MASK VIEW : INVISIBLE = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/server/fingerprint/SemFingerprintMaskView;->mIsVisible:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v1, p0, Lcom/android/server/fingerprint/SemFingerprintMaskView;->mIsVisible:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/server/fingerprint/SemFingerprintMaskView;->mMaskOverlayView:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/server/fingerprint/SemFingerprintMaskView;->mRotationView:Lcom/android/server/fingerprint/SemFingerprintRotationView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/android/server/fingerprint/SemFingerprintRotationView;->setVisibility(I)V

    invoke-direct {p0}, Lcom/android/server/fingerprint/SemFingerprintMaskView;->restoreBrightness()V

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/android/server/fingerprint/SemFingerprintMaskView;->writeMaskHbmStatus(IZ)V

    iget-object v1, p0, Lcom/android/server/fingerprint/SemFingerprintMaskView;->mOrientation:Landroid/view/OrientationEventListener;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/fingerprint/SemFingerprintMaskView;->mOrientation:Landroid/view/OrientationEventListener;

    invoke-virtual {v1}, Landroid/view/OrientationEventListener;->disable()V

    :cond_0
    iget-object v1, p0, Lcom/android/server/fingerprint/SemFingerprintMaskView;->mEffect:Lcom/android/server/fingerprint/SemFingerUnlockEffect;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/fingerprint/SemFingerprintMaskView;->mEffect:Lcom/android/server/fingerprint/SemFingerUnlockEffect;

    invoke-virtual {v1}, Lcom/android/server/fingerprint/SemFingerUnlockEffect;->runUnlockAnimation()Z

    :cond_1
    iget-object v1, p0, Lcom/android/server/fingerprint/SemFingerprintMaskView;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/fingerprint/SemFingerprintMaskView;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iget-object v1, p0, Lcom/android/server/fingerprint/SemFingerprintMaskView;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/server/fingerprint/SemFingerprintMaskView;->mAnimationRunnable:Ljava/lang/Runnable;

    const-wide/16 v4, 0x2ee

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/fingerprint/SemFingerprintMaskView;->mIsVisible:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "FingerprintService"

    const-string/jumbo v2, "dismiss : failed to dismiss mask view"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method show()V
    .locals 5

    :try_start_0
    iget-boolean v2, p0, Lcom/android/server/fingerprint/SemFingerprintMaskView;->mIsVisible:Z

    if-nez v2, :cond_1

    const-string/jumbo v2, "FingerprintService"

    const-string/jumbo v3, "SHOW : ADD MASK VIEW : VISIBLE"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/server/fingerprint/SemFingerprintMaskView;->mRotationView:Lcom/android/server/fingerprint/SemFingerprintRotationView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/server/fingerprint/SemFingerprintRotationView;->setVisibility(I)V

    monitor-enter p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v2, 0x0

    :try_start_1
    iput v2, p0, Lcom/android/server/fingerprint/SemFingerprintMaskView;->mCurrentMaskHbmInfo:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit p0

    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v2, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/fingerprint/SemFingerprintMaskView;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/fingerprint/SemFingerprintMaskView;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/server/fingerprint/SemFingerprintMaskView;->mFingerGuideText:Landroid/widget/TextView;

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setAlpha(F)V

    iget-object v2, p0, Lcom/android/server/fingerprint/SemFingerprintMaskView;->mSensorAreaRectangle:Landroid/view/View;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setAlpha(F)V

    iget-object v2, p0, Lcom/android/server/fingerprint/SemFingerprintMaskView;->mFingerGuideImg:Landroid/widget/ImageView;

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setAlpha(F)V

    iget-object v2, p0, Lcom/android/server/fingerprint/SemFingerprintMaskView;->mFingerGuideText:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/server/fingerprint/SemFingerprintMaskView;->mContext:Landroid/content/Context;

    const v4, 0x1040b0a

    invoke-virtual {v3, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/server/fingerprint/SemFingerprintMaskView;->mIsVisible:Z

    new-instance v2, Lcom/android/server/fingerprint/SemFingerprintMaskView$4;

    iget-object v3, p0, Lcom/android/server/fingerprint/SemFingerprintMaskView;->mContext:Landroid/content/Context;

    invoke-direct {v2, p0, v3}, Lcom/android/server/fingerprint/SemFingerprintMaskView$4;-><init>(Lcom/android/server/fingerprint/SemFingerprintMaskView;Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/server/fingerprint/SemFingerprintMaskView;->mOrientation:Landroid/view/OrientationEventListener;

    iget-object v2, p0, Lcom/android/server/fingerprint/SemFingerprintMaskView;->mOrientation:Landroid/view/OrientationEventListener;

    invoke-virtual {v2}, Landroid/view/OrientationEventListener;->enable()V

    invoke-direct {p0}, Lcom/android/server/fingerprint/SemFingerprintMaskView;->onConfigurationChanged()V

    iget-object v2, p0, Lcom/android/server/fingerprint/SemFingerprintMaskView;->mAnimationRunnable:Ljava/lang/Runnable;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/server/fingerprint/SemFingerprintMaskView;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/server/fingerprint/SemFingerprintMaskView;->mAnimationRunnable:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_0
    :goto_0
    return-void

    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v0

    const-string/jumbo v2, "FingerprintService"

    const-string/jumbo v3, "show : failed to show mask view"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    :try_start_3
    const-string/jumbo v2, "FingerprintService"

    const-string/jumbo v3, "SHOW : UPDATE MASK VIEW"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/server/fingerprint/SemFingerprintMaskView;->mMaskOverlayView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->invalidate()V

    iget-object v2, p0, Lcom/android/server/fingerprint/SemFingerprintMaskView;->mRotationView:Lcom/android/server/fingerprint/SemFingerprintRotationView;

    invoke-virtual {v2}, Lcom/android/server/fingerprint/SemFingerprintRotationView;->invalidate()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0
.end method
