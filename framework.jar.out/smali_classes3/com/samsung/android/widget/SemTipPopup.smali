.class public Lcom/samsung/android/widget/SemTipPopup;
.super Ljava/lang/Object;
.source "SemTipPopup.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/widget/SemTipPopup$OnStateChangeListener;,
        Lcom/samsung/android/widget/SemTipPopup$TipWindow;
    }
.end annotation


# static fields
.field private static final ANIMATION_DURATION_BOUNCE_SCALE1:I = 0xa7

.field private static final ANIMATION_DURATION_BOUNCE_SCALE2:I = 0xfa

.field private static final ANIMATION_DURATION_DISMISS_ALPHA:I = 0xa6

.field private static final ANIMATION_DURATION_DISMISS_SCALE:I = 0xa6

.field private static final ANIMATION_DURATION_EXPAND_ALPHA:I = 0x53

.field private static final ANIMATION_DURATION_EXPAND_SCALE:I = 0x1f4

.field private static final ANIMATION_DURATION_EXPAND_TEXT:I = 0xa7

.field private static final ANIMATION_DURATION_SHOW_SCALE:I = 0x1f4

.field private static final ANIMATION_OFFSET_BOUNCE_SCALE:I = 0xbb8

.field private static final ANIMATION_OFFSET_EXPAND_TEXT:I = 0x64

.field public static final DIRECTION_BOTTOM_LEFT:I = 0x2

.field public static final DIRECTION_BOTTOM_RIGHT:I = 0x3

.field public static final DIRECTION_DEFAULT:I = -0x1

.field public static final DIRECTION_TOP_LEFT:I = 0x0

.field public static final DIRECTION_TOP_RIGHT:I = 0x1

.field private static INTERPOLATOR_ELASTIC_50:Landroid/view/animation/Interpolator; = null

.field private static INTERPOLATOR_ELASTIC_CUSTOM:Landroid/view/animation/Interpolator; = null

.field private static INTERPOLATOR_SINE_IN_OUT_33:Landroid/view/animation/Interpolator; = null

.field private static INTERPOLATOR_SINE_IN_OUT_70:Landroid/view/animation/Interpolator; = null

.field public static final MODE_NORMAL:I = 0x0

.field public static final MODE_TRANSLUCENT:I = 0x1

.field private static final MSG_DISMISS:I = 0x1

.field private static final MSG_SCALE_UP:I = 0x2

.field private static final MSG_TIMEOUT:I = 0x0

.field public static final STATE_DISMISSED:I = 0x0

.field public static final STATE_EXPANDED:I = 0x2

.field public static final STATE_HINT:I = 0x1

.field private static final TAG:Ljava/lang/String; = "SemTipPopup"

.field private static final TIMEOUT_DURATION_MS:I = 0x1bbc

.field private static final TYPE_BALLOON_ACTION:I = 0x1

.field private static final TYPE_BALLOON_CUSTOM:I = 0x2

.field private static final TYPE_BALLOON_SIMPLE:I = 0x0

.field private static final localLOGD:Z = true

.field private static mHandler:Landroid/os/Handler;


# instance fields
.field private mActionClickListener:Landroid/view/View$OnClickListener;

.field private mActionText:Ljava/lang/CharSequence;

.field private mActionTextColor:Ljava/lang/Integer;

.field private mActionView:Landroid/widget/Button;

.field private mArrowDirection:I

.field private mArrowPositionX:I

.field private mArrowPositionY:I

.field private mBackgroundColor:Ljava/lang/Integer;

.field private mBalloonBg1:Landroid/widget/ImageView;

.field private mBalloonBg2:Landroid/widget/ImageView;

.field private mBalloonBubble:Landroid/widget/FrameLayout;

.field private mBalloonContent:Landroid/widget/FrameLayout;

.field private mBalloonHeight:I

.field private mBalloonPanel:Landroid/widget/FrameLayout;

.field private mBalloonPopup:Lcom/samsung/android/widget/SemTipPopup$TipWindow;

.field private mBalloonPopupX:I

.field private mBalloonPopupY:I

.field private mBalloonShadow:Landroid/widget/ImageView;

.field private mBalloonStroke1:Landroid/widget/ImageView;

.field private mBalloonStroke2:Landroid/widget/ImageView;

.field private mBalloonView:Landroid/view/View;

.field private mBalloonWidth:I

.field private mBalloonX:I

.field private mBalloonY:I

.field private mBorderColor:Ljava/lang/Integer;

.field private mBubbleBackground:Landroid/widget/ImageView;

.field private mBubbleHeight:I

.field private mBubbleIcon:Landroid/widget/ImageView;

.field private mBubblePopup:Lcom/samsung/android/widget/SemTipPopup$TipWindow;

.field private mBubblePopupX:I

.field private mBubblePopupY:I

.field private mBubbleShadow:Landroid/widget/ImageView;

.field private mBubbleView:Landroid/view/View;

.field private mBubbleWidth:I

.field private mBubbleX:I

.field private mBubbleY:I

.field private final mContext:Landroid/content/Context;

.field private mDisplayFrame:Landroid/graphics/Rect;

.field private final mDisplayMetrics:Landroid/util/DisplayMetrics;

.field private mHintDescription:Ljava/lang/CharSequence;

.field private mIsDefaultPosition:Z

.field private mMessageText:Ljava/lang/CharSequence;

.field private mMessageTextColor:Ljava/lang/Integer;

.field private mMessageView:Landroid/widget/TextView;

.field private mMode:I

.field private mOnStateChangeListener:Lcom/samsung/android/widget/SemTipPopup$OnStateChangeListener;

.field private mParentView:Landroid/view/View;

.field private final mResources:Landroid/content/res/Resources;

.field private mShadowMarginBalloon:I

.field private mShadowMarginHintBottom:I

.field private mShadowMarginHintLeft:I

.field private mShadowMarginHintRight:I

.field private mShadowMarginHintTop:I

.field private mState:I

.field private mType:I

.field private final mWindowManager:Landroid/view/WindowManager;


# direct methods
.method static synthetic -get0()Landroid/view/animation/Interpolator;
    .locals 1

    sget-object v0, Lcom/samsung/android/widget/SemTipPopup;->INTERPOLATOR_ELASTIC_CUSTOM:Landroid/view/animation/Interpolator;

    return-object v0
.end method

.method static synthetic -get1()Landroid/view/animation/Interpolator;
    .locals 1

    sget-object v0, Lcom/samsung/android/widget/SemTipPopup;->INTERPOLATOR_SINE_IN_OUT_33:Landroid/view/animation/Interpolator;

    return-object v0
.end method

.method static synthetic -get10(Lcom/samsung/android/widget/SemTipPopup;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/widget/SemTipPopup;->mMessageView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic -get11(Lcom/samsung/android/widget/SemTipPopup;)Lcom/samsung/android/widget/SemTipPopup$OnStateChangeListener;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/widget/SemTipPopup;->mOnStateChangeListener:Lcom/samsung/android/widget/SemTipPopup$OnStateChangeListener;

    return-object v0
.end method

.method static synthetic -get12(Lcom/samsung/android/widget/SemTipPopup;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/widget/SemTipPopup;->mParentView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic -get13(Lcom/samsung/android/widget/SemTipPopup;)I
    .locals 1

    iget v0, p0, Lcom/samsung/android/widget/SemTipPopup;->mState:I

    return v0
.end method

.method static synthetic -get14(Lcom/samsung/android/widget/SemTipPopup;)I
    .locals 1

    iget v0, p0, Lcom/samsung/android/widget/SemTipPopup;->mType:I

    return v0
.end method

.method static synthetic -get2(Lcom/samsung/android/widget/SemTipPopup;)Landroid/view/View$OnClickListener;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/widget/SemTipPopup;->mActionClickListener:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method static synthetic -get3(Lcom/samsung/android/widget/SemTipPopup;)Landroid/widget/FrameLayout;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/widget/SemTipPopup;->mBalloonBubble:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method static synthetic -get4(Lcom/samsung/android/widget/SemTipPopup;)Landroid/widget/FrameLayout;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/widget/SemTipPopup;->mBalloonPanel:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method static synthetic -get5(Lcom/samsung/android/widget/SemTipPopup;)Lcom/samsung/android/widget/SemTipPopup$TipWindow;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/widget/SemTipPopup;->mBalloonPopup:Lcom/samsung/android/widget/SemTipPopup$TipWindow;

    return-object v0
.end method

.method static synthetic -get6(Lcom/samsung/android/widget/SemTipPopup;)I
    .locals 1

    iget v0, p0, Lcom/samsung/android/widget/SemTipPopup;->mBalloonPopupX:I

    return v0
.end method

.method static synthetic -get7(Lcom/samsung/android/widget/SemTipPopup;)I
    .locals 1

    iget v0, p0, Lcom/samsung/android/widget/SemTipPopup;->mBalloonPopupY:I

    return v0
.end method

.method static synthetic -get8(Lcom/samsung/android/widget/SemTipPopup;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/widget/SemTipPopup;->mBubbleView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic -get9()Landroid/os/Handler;
    .locals 1

    sget-object v0, Lcom/samsung/android/widget/SemTipPopup;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -set0(Lcom/samsung/android/widget/SemTipPopup;I)I
    .locals 0

    iput p1, p0, Lcom/samsung/android/widget/SemTipPopup;->mState:I

    return p1
.end method

.method static synthetic -wrap0(Lcom/samsung/android/widget/SemTipPopup;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/widget/SemTipPopup;->animateBounce()V

    return-void
.end method

.method static synthetic -wrap1(Lcom/samsung/android/widget/SemTipPopup;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/widget/SemTipPopup;->animateScaleUp()V

    return-void
.end method

.method static synthetic -wrap2(Lcom/samsung/android/widget/SemTipPopup;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/widget/SemTipPopup;->debugLog(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic -wrap3(Lcom/samsung/android/widget/SemTipPopup;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/widget/SemTipPopup;->dismissBubble(Z)V

    return-void
.end method

.method static synthetic -wrap4(Lcom/samsung/android/widget/SemTipPopup;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/widget/SemTipPopup;->scheduleTimeout()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/samsung/android/widget/SemTipPopup;->INTERPOLATOR_SINE_IN_OUT_33:Landroid/view/animation/Interpolator;

    sput-object v0, Lcom/samsung/android/widget/SemTipPopup;->INTERPOLATOR_SINE_IN_OUT_70:Landroid/view/animation/Interpolator;

    sput-object v0, Lcom/samsung/android/widget/SemTipPopup;->INTERPOLATOR_ELASTIC_50:Landroid/view/animation/Interpolator;

    sput-object v0, Lcom/samsung/android/widget/SemTipPopup;->INTERPOLATOR_ELASTIC_CUSTOM:Landroid/view/animation/Interpolator;

    return-void
.end method

.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/widget/SemTipPopup;-><init>(Landroid/view/View;I)V

    return-void
.end method

.method public constructor <init>(Landroid/view/View;I)V
    .locals 8

    const/16 v7, 0x8

    const/4 v6, 0x1

    const/4 v5, -0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v6, p0, Lcom/samsung/android/widget/SemTipPopup;->mIsDefaultPosition:Z

    iput-object v4, p0, Lcom/samsung/android/widget/SemTipPopup;->mMessageText:Ljava/lang/CharSequence;

    iput-object v4, p0, Lcom/samsung/android/widget/SemTipPopup;->mActionText:Ljava/lang/CharSequence;

    iput-object v4, p0, Lcom/samsung/android/widget/SemTipPopup;->mHintDescription:Ljava/lang/CharSequence;

    iput-object v4, p0, Lcom/samsung/android/widget/SemTipPopup;->mActionClickListener:Landroid/view/View$OnClickListener;

    iput-object v4, p0, Lcom/samsung/android/widget/SemTipPopup;->mMessageTextColor:Ljava/lang/Integer;

    iput-object v4, p0, Lcom/samsung/android/widget/SemTipPopup;->mActionTextColor:Ljava/lang/Integer;

    iput-object v4, p0, Lcom/samsung/android/widget/SemTipPopup;->mBackgroundColor:Ljava/lang/Integer;

    iput-object v4, p0, Lcom/samsung/android/widget/SemTipPopup;->mBorderColor:Ljava/lang/Integer;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/widget/SemTipPopup;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/widget/SemTipPopup;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/widget/SemTipPopup;->mResources:Landroid/content/res/Resources;

    iput-object p1, p0, Lcom/samsung/android/widget/SemTipPopup;->mParentView:Landroid/view/View;

    iget-object v1, p0, Lcom/samsung/android/widget/SemTipPopup;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "window"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    iput-object v1, p0, Lcom/samsung/android/widget/SemTipPopup;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/samsung/android/widget/SemTipPopup;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/widget/SemTipPopup;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mDisplayMetrics = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/widget/SemTipPopup;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/samsung/android/widget/SemTipPopup;->debugLog(Ljava/lang/String;)V

    iput v6, p0, Lcom/samsung/android/widget/SemTipPopup;->mState:I

    iput v3, p0, Lcom/samsung/android/widget/SemTipPopup;->mType:I

    iput p2, p0, Lcom/samsung/android/widget/SemTipPopup;->mMode:I

    invoke-direct {p0}, Lcom/samsung/android/widget/SemTipPopup;->initInterpolator()V

    iget-object v1, p0, Lcom/samsung/android/widget/SemTipPopup;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x1090120

    invoke-virtual {v0, v1, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/widget/SemTipPopup;->mBubbleView:Landroid/view/View;

    const v1, 0x109011f

    invoke-virtual {v0, v1, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/widget/SemTipPopup;->mBalloonView:Landroid/view/View;

    invoke-direct {p0, p2}, Lcom/samsung/android/widget/SemTipPopup;->initBubblePopup(I)V

    invoke-direct {p0, p2}, Lcom/samsung/android/widget/SemTipPopup;->initBalloonPopup(I)V

    iget-object v1, p0, Lcom/samsung/android/widget/SemTipPopup;->mBalloonView:Landroid/view/View;

    const v2, 0x10204f8

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/samsung/android/widget/SemTipPopup;->mMessageView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/samsung/android/widget/SemTipPopup;->mBalloonView:Landroid/view/View;

    const v2, 0x10204f9

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/samsung/android/widget/SemTipPopup;->mActionView:Landroid/widget/Button;

    iget-object v1, p0, Lcom/samsung/android/widget/SemTipPopup;->mMessageView:Landroid/widget/TextView;

    invoke-virtual {v1, v7}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lcom/samsung/android/widget/SemTipPopup;->mActionView:Landroid/widget/Button;

    invoke-virtual {v1, v7}, Landroid/view/View;->setVisibility(I)V

    iput v5, p0, Lcom/samsung/android/widget/SemTipPopup;->mArrowPositionX:I

    iput v5, p0, Lcom/samsung/android/widget/SemTipPopup;->mArrowPositionY:I

    iput v5, p0, Lcom/samsung/android/widget/SemTipPopup;->mArrowDirection:I

    iput v5, p0, Lcom/samsung/android/widget/SemTipPopup;->mBalloonX:I

    iget v1, p0, Lcom/samsung/android/widget/SemTipPopup;->mMode:I

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/widget/SemTipPopup;->mResources:Landroid/content/res/Resources;

    const v2, 0x1050398

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/samsung/android/widget/SemTipPopup;->mShadowMarginHintLeft:I

    iget-object v1, p0, Lcom/samsung/android/widget/SemTipPopup;->mResources:Landroid/content/res/Resources;

    const v2, 0x1050399

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/samsung/android/widget/SemTipPopup;->mShadowMarginHintRight:I

    iget-object v1, p0, Lcom/samsung/android/widget/SemTipPopup;->mResources:Landroid/content/res/Resources;

    const v2, 0x105039a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/samsung/android/widget/SemTipPopup;->mShadowMarginHintTop:I

    iget-object v1, p0, Lcom/samsung/android/widget/SemTipPopup;->mResources:Landroid/content/res/Resources;

    const v2, 0x105039b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/samsung/android/widget/SemTipPopup;->mShadowMarginHintBottom:I

    :goto_0
    iget-object v1, p0, Lcom/samsung/android/widget/SemTipPopup;->mResources:Landroid/content/res/Resources;

    const v2, 0x105039c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/samsung/android/widget/SemTipPopup;->mShadowMarginBalloon:I

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/widget/SemTipPopup;->mDisplayFrame:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/samsung/android/widget/SemTipPopup;->mBubblePopup:Lcom/samsung/android/widget/SemTipPopup$TipWindow;

    new-instance v2, Lcom/samsung/android/widget/SemTipPopup$1;

    invoke-direct {v2, p0}, Lcom/samsung/android/widget/SemTipPopup$1;-><init>(Lcom/samsung/android/widget/SemTipPopup;)V

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    iget-object v1, p0, Lcom/samsung/android/widget/SemTipPopup;->mBalloonPopup:Lcom/samsung/android/widget/SemTipPopup$TipWindow;

    new-instance v2, Lcom/samsung/android/widget/SemTipPopup$2;

    invoke-direct {v2, p0}, Lcom/samsung/android/widget/SemTipPopup$2;-><init>(Lcom/samsung/android/widget/SemTipPopup;)V

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    new-instance v3, Lcom/samsung/android/widget/SemTipPopup$3;

    invoke-direct {v3, p0}, Lcom/samsung/android/widget/SemTipPopup$3;-><init>(Lcom/samsung/android/widget/SemTipPopup;)V

    invoke-direct {v1, v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    sput-object v1, Lcom/samsung/android/widget/SemTipPopup;->mHandler:Landroid/os/Handler;

    return-void

    :cond_0
    iput v3, p0, Lcom/samsung/android/widget/SemTipPopup;->mShadowMarginHintLeft:I

    iput v3, p0, Lcom/samsung/android/widget/SemTipPopup;->mShadowMarginHintRight:I

    iput v3, p0, Lcom/samsung/android/widget/SemTipPopup;->mShadowMarginHintTop:I

    iput v3, p0, Lcom/samsung/android/widget/SemTipPopup;->mShadowMarginHintBottom:I

    iget-object v1, p0, Lcom/samsung/android/widget/SemTipPopup;->mMessageView:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/samsung/android/widget/SemTipPopup;->mResources:Landroid/content/res/Resources;

    const v3, 0x10601ae

    invoke-virtual {v2, v3, v4}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v1, p0, Lcom/samsung/android/widget/SemTipPopup;->mActionView:Landroid/widget/Button;

    iget-object v2, p0, Lcom/samsung/android/widget/SemTipPopup;->mResources:Landroid/content/res/Resources;

    const v3, 0x10601ae

    invoke-virtual {v2, v3, v4}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0
.end method

.method private animateBounce()V
    .locals 21

    const/4 v8, 0x0

    const/4 v10, 0x0

    move-object/from16 v0, p0

    iget v3, v0, Lcom/samsung/android/widget/SemTipPopup;->mArrowDirection:I

    packed-switch v3, :pswitch_data_0

    :goto_0
    new-instance v20, Landroid/view/animation/AnimationSet;

    const/4 v3, 0x0

    move-object/from16 v0, v20

    invoke-direct {v0, v3}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    new-instance v2, Landroid/view/animation/ScaleAnimation;

    const/high16 v3, 0x3f800000    # 1.0f

    const v4, 0x3f99999a    # 1.2f

    const/high16 v5, 0x3f800000    # 1.0f

    const v6, 0x3f99999a    # 1.2f

    const/4 v7, 0x0

    const/4 v9, 0x0

    invoke-direct/range {v2 .. v10}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    const-wide/16 v4, 0xa7

    invoke-virtual {v2, v4, v5}, Landroid/view/animation/Animation;->setDuration(J)V

    sget-object v3, Lcom/samsung/android/widget/SemTipPopup;->INTERPOLATOR_SINE_IN_OUT_70:Landroid/view/animation/Interpolator;

    invoke-virtual {v2, v3}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    new-instance v11, Landroid/view/animation/ScaleAnimation;

    const/high16 v12, 0x3f800000    # 1.0f

    const v13, 0x3f553f7d    # 0.833f

    const/high16 v14, 0x3f800000    # 1.0f

    const v15, 0x3f553f7d    # 0.833f

    const/16 v16, 0x0

    const/16 v18, 0x0

    move/from16 v17, v8

    move/from16 v19, v10

    invoke-direct/range {v11 .. v19}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    const-wide/16 v4, 0xa7

    invoke-virtual {v11, v4, v5}, Landroid/view/animation/Animation;->setStartOffset(J)V

    const-wide/16 v4, 0xfa

    invoke-virtual {v11, v4, v5}, Landroid/view/animation/Animation;->setDuration(J)V

    sget-object v3, Lcom/samsung/android/widget/SemTipPopup;->INTERPOLATOR_SINE_IN_OUT_33:Landroid/view/animation/Interpolator;

    invoke-virtual {v11, v3}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    new-instance v3, Lcom/samsung/android/widget/SemTipPopup$8;

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v3, v0, v1}, Lcom/samsung/android/widget/SemTipPopup$8;-><init>(Lcom/samsung/android/widget/SemTipPopup;Landroid/view/animation/AnimationSet;)V

    invoke-virtual {v11, v3}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    move-object/from16 v0, v20

    invoke-virtual {v0, v11}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    const-wide/16 v4, 0xbb8

    move-object/from16 v0, v20

    invoke-virtual {v0, v4, v5}, Landroid/view/animation/AnimationSet;->setStartOffset(J)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/widget/SemTipPopup;->mBubbleView:Landroid/view/View;

    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    return-void

    :pswitch_0
    move-object/from16 v0, p0

    iget v3, v0, Lcom/samsung/android/widget/SemTipPopup;->mShadowMarginHintLeft:I

    int-to-float v8, v3

    move-object/from16 v0, p0

    iget v3, v0, Lcom/samsung/android/widget/SemTipPopup;->mShadowMarginHintTop:I

    int-to-float v10, v3

    goto :goto_0

    :pswitch_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/widget/SemTipPopup;->mBubblePopup:Lcom/samsung/android/widget/SemTipPopup$TipWindow;

    invoke-virtual {v3}, Landroid/widget/PopupWindow;->getWidth()I

    move-result v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/samsung/android/widget/SemTipPopup;->mShadowMarginHintRight:I

    sub-int/2addr v3, v4

    int-to-float v8, v3

    move-object/from16 v0, p0

    iget v3, v0, Lcom/samsung/android/widget/SemTipPopup;->mShadowMarginHintTop:I

    int-to-float v10, v3

    goto/16 :goto_0

    :pswitch_2
    move-object/from16 v0, p0

    iget v3, v0, Lcom/samsung/android/widget/SemTipPopup;->mShadowMarginHintLeft:I

    int-to-float v8, v3

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/widget/SemTipPopup;->mBubblePopup:Lcom/samsung/android/widget/SemTipPopup$TipWindow;

    invoke-virtual {v3}, Landroid/widget/PopupWindow;->getHeight()I

    move-result v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/samsung/android/widget/SemTipPopup;->mShadowMarginHintBottom:I

    sub-int/2addr v3, v4

    int-to-float v10, v3

    goto/16 :goto_0

    :pswitch_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/widget/SemTipPopup;->mBubblePopup:Lcom/samsung/android/widget/SemTipPopup$TipWindow;

    invoke-virtual {v3}, Landroid/widget/PopupWindow;->getWidth()I

    move-result v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/samsung/android/widget/SemTipPopup;->mShadowMarginHintRight:I

    sub-int/2addr v3, v4

    int-to-float v8, v3

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/widget/SemTipPopup;->mBubblePopup:Lcom/samsung/android/widget/SemTipPopup$TipWindow;

    invoke-virtual {v3}, Landroid/widget/PopupWindow;->getHeight()I

    move-result v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/samsung/android/widget/SemTipPopup;->mShadowMarginHintBottom:I

    sub-int/2addr v3, v4

    int-to-float v10, v3

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private animateScaleUp()V
    .locals 37

    const/4 v10, 0x0

    const/16 v17, 0x0

    const/16 v19, 0x0

    const/16 v26, 0x0

    const/16 v28, 0x0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/widget/SemTipPopup;->mResources:Landroid/content/res/Resources;

    const v4, 0x105038f

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v36

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/widget/SemTipPopup;->mResources:Landroid/content/res/Resources;

    const v4, 0x105038b

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v35

    const v34, 0x3fd9999a    # 1.7f

    move-object/from16 v0, p0

    iget v3, v0, Lcom/samsung/android/widget/SemTipPopup;->mShadowMarginHintTop:I

    sub-int v3, v35, v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/samsung/android/widget/SemTipPopup;->mShadowMarginHintBottom:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/samsung/android/widget/SemTipPopup;->mBalloonHeight:I

    int-to-float v4, v4

    div-float v23, v3, v4

    move-object/from16 v0, p0

    iget v3, v0, Lcom/samsung/android/widget/SemTipPopup;->mArrowDirection:I

    packed-switch v3, :pswitch_data_0

    :goto_0
    new-instance v29, Landroid/view/animation/AnimationSet;

    const/4 v3, 0x0

    move-object/from16 v0, v29

    invoke-direct {v0, v3}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    new-instance v2, Landroid/view/animation/TranslateAnimation;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-direct/range {v2 .. v10}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    const-wide/16 v4, 0x1f4

    invoke-virtual {v2, v4, v5}, Landroid/view/animation/Animation;->setDuration(J)V

    sget-object v3, Lcom/samsung/android/widget/SemTipPopup;->INTERPOLATOR_ELASTIC_CUSTOM:Landroid/view/animation/Interpolator;

    invoke-virtual {v2, v3}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    new-instance v11, Landroid/view/animation/ScaleAnimation;

    const/high16 v12, 0x3f800000    # 1.0f

    const v13, 0x3fd9999a    # 1.7f

    const/high16 v14, 0x3f800000    # 1.0f

    const v15, 0x3fd9999a    # 1.7f

    const/16 v16, 0x0

    const/16 v18, 0x0

    invoke-direct/range {v11 .. v19}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    const-wide/16 v4, 0x1f4

    invoke-virtual {v11, v4, v5}, Landroid/view/animation/Animation;->setDuration(J)V

    sget-object v3, Lcom/samsung/android/widget/SemTipPopup;->INTERPOLATOR_ELASTIC_CUSTOM:Landroid/view/animation/Interpolator;

    invoke-virtual {v11, v3}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    new-instance v30, Landroid/view/animation/AlphaAnimation;

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    move-object/from16 v0, v30

    invoke-direct {v0, v3, v4}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    const-wide/16 v4, 0xa6

    move-object/from16 v0, v30

    invoke-virtual {v0, v4, v5}, Landroid/view/animation/Animation;->setDuration(J)V

    sget-object v3, Lcom/samsung/android/widget/SemTipPopup;->INTERPOLATOR_SINE_IN_OUT_33:Landroid/view/animation/Interpolator;

    move-object/from16 v0, v30

    invoke-virtual {v0, v3}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    move-object/from16 v0, v29

    invoke-virtual {v0, v2}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    move-object/from16 v0, v29

    invoke-virtual {v0, v11}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    invoke-virtual/range {v29 .. v30}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    new-instance v3, Lcom/samsung/android/widget/SemTipPopup$9;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/samsung/android/widget/SemTipPopup$9;-><init>(Lcom/samsung/android/widget/SemTipPopup;)V

    move-object/from16 v0, v29

    invoke-virtual {v0, v3}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/widget/SemTipPopup;->mBalloonBubble:Landroid/widget/FrameLayout;

    move-object/from16 v0, v29

    invoke-virtual {v3, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    new-instance v31, Landroid/view/animation/AnimationSet;

    const/4 v3, 0x0

    move-object/from16 v0, v31

    invoke-direct {v0, v3}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    new-instance v20, Landroid/view/animation/ScaleAnimation;

    const v21, 0x3e8a3d71    # 0.27f

    const/high16 v22, 0x3f800000    # 1.0f

    const/high16 v24, 0x3f800000    # 1.0f

    const/16 v25, 0x0

    const/16 v27, 0x0

    invoke-direct/range {v20 .. v28}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    sget-object v3, Lcom/samsung/android/widget/SemTipPopup;->INTERPOLATOR_ELASTIC_CUSTOM:Landroid/view/animation/Interpolator;

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    const-wide/16 v4, 0x1f4

    move-object/from16 v0, v20

    invoke-virtual {v0, v4, v5}, Landroid/view/animation/Animation;->setDuration(J)V

    new-instance v32, Landroid/view/animation/AlphaAnimation;

    const/4 v3, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    move-object/from16 v0, v32

    invoke-direct {v0, v3, v4}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    sget-object v3, Lcom/samsung/android/widget/SemTipPopup;->INTERPOLATOR_SINE_IN_OUT_33:Landroid/view/animation/Interpolator;

    move-object/from16 v0, v32

    invoke-virtual {v0, v3}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    const-wide/16 v4, 0x53

    move-object/from16 v0, v32

    invoke-virtual {v0, v4, v5}, Landroid/view/animation/Animation;->setDuration(J)V

    move-object/from16 v0, v31

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    invoke-virtual/range {v31 .. v32}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/widget/SemTipPopup;->mBalloonPanel:Landroid/widget/FrameLayout;

    move-object/from16 v0, v31

    invoke-virtual {v3, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    new-instance v33, Landroid/view/animation/AlphaAnimation;

    const/4 v3, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    move-object/from16 v0, v33

    invoke-direct {v0, v3, v4}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    sget-object v3, Lcom/samsung/android/widget/SemTipPopup;->INTERPOLATOR_SINE_IN_OUT_33:Landroid/view/animation/Interpolator;

    move-object/from16 v0, v33

    invoke-virtual {v0, v3}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    const-wide/16 v4, 0x64

    move-object/from16 v0, v33

    invoke-virtual {v0, v4, v5}, Landroid/view/animation/Animation;->setStartOffset(J)V

    const-wide/16 v4, 0xa7

    move-object/from16 v0, v33

    invoke-virtual {v0, v4, v5}, Landroid/view/animation/Animation;->setDuration(J)V

    new-instance v3, Lcom/samsung/android/widget/SemTipPopup$10;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/samsung/android/widget/SemTipPopup$10;-><init>(Lcom/samsung/android/widget/SemTipPopup;)V

    move-object/from16 v0, v33

    invoke-virtual {v0, v3}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/widget/SemTipPopup;->mMessageView:Landroid/widget/TextView;

    move-object/from16 v0, v33

    invoke-virtual {v3, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/widget/SemTipPopup;->mActionView:Landroid/widget/Button;

    move-object/from16 v0, v33

    invoke-virtual {v3, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    return-void

    :pswitch_0
    move-object/from16 v0, p0

    iget v3, v0, Lcom/samsung/android/widget/SemTipPopup;->mShadowMarginHintLeft:I

    int-to-float v0, v3

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v3, v0, Lcom/samsung/android/widget/SemTipPopup;->mShadowMarginHintTop:I

    int-to-float v0, v3

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v3, v0, Lcom/samsung/android/widget/SemTipPopup;->mBubbleX:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/samsung/android/widget/SemTipPopup;->mBalloonX:I

    sub-int/2addr v3, v4

    int-to-float v0, v3

    move/from16 v26, v0

    const/16 v28, 0x0

    move/from16 v0, v36

    int-to-float v3, v0

    const/high16 v4, 0x40000000    # 2.0f

    div-float v10, v3, v4

    goto/16 :goto_0

    :pswitch_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/widget/SemTipPopup;->mBalloonBubble:Landroid/widget/FrameLayout;

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/samsung/android/widget/SemTipPopup;->mShadowMarginHintRight:I

    sub-int/2addr v3, v4

    int-to-float v0, v3

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v3, v0, Lcom/samsung/android/widget/SemTipPopup;->mShadowMarginHintTop:I

    int-to-float v0, v3

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v3, v0, Lcom/samsung/android/widget/SemTipPopup;->mArrowPositionX:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/samsung/android/widget/SemTipPopup;->mBalloonX:I

    sub-int/2addr v3, v4

    int-to-float v0, v3

    move/from16 v26, v0

    const/16 v28, 0x0

    move/from16 v0, v36

    int-to-float v3, v0

    const/high16 v4, 0x40000000    # 2.0f

    div-float v10, v3, v4

    goto/16 :goto_0

    :pswitch_2
    move-object/from16 v0, p0

    iget v3, v0, Lcom/samsung/android/widget/SemTipPopup;->mShadowMarginHintLeft:I

    int-to-float v0, v3

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/widget/SemTipPopup;->mBalloonBubble:Landroid/widget/FrameLayout;

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/samsung/android/widget/SemTipPopup;->mShadowMarginHintBottom:I

    sub-int/2addr v3, v4

    int-to-float v0, v3

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v3, v0, Lcom/samsung/android/widget/SemTipPopup;->mArrowPositionX:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/samsung/android/widget/SemTipPopup;->mBalloonX:I

    sub-int/2addr v3, v4

    int-to-float v0, v3

    move/from16 v26, v0

    move-object/from16 v0, p0

    iget v3, v0, Lcom/samsung/android/widget/SemTipPopup;->mBalloonHeight:I

    int-to-float v0, v3

    move/from16 v28, v0

    move/from16 v0, v36

    int-to-float v3, v0

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    const/4 v4, 0x0

    sub-float v10, v4, v3

    goto/16 :goto_0

    :pswitch_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/widget/SemTipPopup;->mBalloonBubble:Landroid/widget/FrameLayout;

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/samsung/android/widget/SemTipPopup;->mShadowMarginHintRight:I

    sub-int/2addr v3, v4

    int-to-float v0, v3

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/widget/SemTipPopup;->mBalloonBubble:Landroid/widget/FrameLayout;

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/samsung/android/widget/SemTipPopup;->mShadowMarginHintBottom:I

    sub-int/2addr v3, v4

    int-to-float v0, v3

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v3, v0, Lcom/samsung/android/widget/SemTipPopup;->mArrowPositionX:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/samsung/android/widget/SemTipPopup;->mBalloonX:I

    sub-int/2addr v3, v4

    int-to-float v0, v3

    move/from16 v26, v0

    move-object/from16 v0, p0

    iget v3, v0, Lcom/samsung/android/widget/SemTipPopup;->mBalloonHeight:I

    int-to-float v0, v3

    move/from16 v28, v0

    move/from16 v0, v36

    int-to-float v3, v0

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    const/4 v4, 0x0

    sub-float v10, v4, v3

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private animateViewIn()V
    .locals 9

    const/4 v5, 0x1

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x0

    iget v3, p0, Lcom/samsung/android/widget/SemTipPopup;->mArrowDirection:I

    packed-switch v3, :pswitch_data_0

    :goto_0
    new-instance v0, Landroid/view/animation/ScaleAnimation;

    move v3, v1

    move v4, v2

    move v7, v5

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    sget-object v1, Lcom/samsung/android/widget/SemTipPopup;->INTERPOLATOR_ELASTIC_50:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    new-instance v1, Lcom/samsung/android/widget/SemTipPopup$7;

    invoke-direct {v1, p0}, Lcom/samsung/android/widget/SemTipPopup$7;-><init>(Lcom/samsung/android/widget/SemTipPopup;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    iget-object v1, p0, Lcom/samsung/android/widget/SemTipPopup;->mBubbleView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    return-void

    :pswitch_0
    const/4 v6, 0x0

    const/4 v8, 0x0

    goto :goto_0

    :pswitch_1
    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v8, 0x0

    goto :goto_0

    :pswitch_2
    const/4 v6, 0x0

    const/high16 v8, 0x3f800000    # 1.0f

    goto :goto_0

    :pswitch_3
    const/high16 v6, 0x3f800000    # 1.0f

    const/high16 v8, 0x3f800000    # 1.0f

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private calculateArrowDirection(II)V
    .locals 9

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    iget-object v3, p0, Lcom/samsung/android/widget/SemTipPopup;->mParentView:Landroid/view/View;

    if-eqz v3, :cond_4

    iget-boolean v3, p0, Lcom/samsung/android/widget/SemTipPopup;->mIsDefaultPosition:Z

    if-eqz v3, :cond_4

    new-array v0, v7, [I

    iget-object v3, p0, Lcom/samsung/android/widget/SemTipPopup;->mParentView:Landroid/view/View;

    invoke-virtual {v3, v0}, Landroid/view/View;->getLocationInWindow([I)V

    aget v3, v0, v5

    iget-object v4, p0, Lcom/samsung/android/widget/SemTipPopup;->mParentView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    add-int v1, v3, v4

    aget v3, v0, v6

    iget-object v4, p0, Lcom/samsung/android/widget/SemTipPopup;->mParentView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    add-int v2, v3, v4

    iget-object v3, p0, Lcom/samsung/android/widget/SemTipPopup;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v3, v3, Landroid/util/DisplayMetrics;->widthPixels:I

    div-int/lit8 v3, v3, 0x2

    if-gt p1, v3, :cond_2

    if-gt p2, v2, :cond_1

    iput v6, p0, Lcom/samsung/android/widget/SemTipPopup;->mArrowDirection:I

    :cond_0
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "calculateArrowDirection : arrow position ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ") / mArrowDirection = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/samsung/android/widget/SemTipPopup;->mArrowDirection:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/samsung/android/widget/SemTipPopup;->debugLog(Ljava/lang/String;)V

    return-void

    :cond_1
    iput v8, p0, Lcom/samsung/android/widget/SemTipPopup;->mArrowDirection:I

    goto :goto_0

    :cond_2
    if-gt p2, v2, :cond_3

    iput v5, p0, Lcom/samsung/android/widget/SemTipPopup;->mArrowDirection:I

    goto :goto_0

    :cond_3
    iput v7, p0, Lcom/samsung/android/widget/SemTipPopup;->mArrowDirection:I

    goto :goto_0

    :cond_4
    iget-object v3, p0, Lcom/samsung/android/widget/SemTipPopup;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v3, v3, Landroid/util/DisplayMetrics;->widthPixels:I

    div-int/lit8 v3, v3, 0x2

    if-gt p1, v3, :cond_5

    iget-object v3, p0, Lcom/samsung/android/widget/SemTipPopup;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v3, v3, Landroid/util/DisplayMetrics;->heightPixels:I

    div-int/lit8 v3, v3, 0x2

    if-gt p2, v3, :cond_5

    iput v8, p0, Lcom/samsung/android/widget/SemTipPopup;->mArrowDirection:I

    goto :goto_0

    :cond_5
    iget-object v3, p0, Lcom/samsung/android/widget/SemTipPopup;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v3, v3, Landroid/util/DisplayMetrics;->widthPixels:I

    div-int/lit8 v3, v3, 0x2

    if-le p1, v3, :cond_6

    iget-object v3, p0, Lcom/samsung/android/widget/SemTipPopup;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v3, v3, Landroid/util/DisplayMetrics;->heightPixels:I

    div-int/lit8 v3, v3, 0x2

    if-gt p2, v3, :cond_6

    iput v7, p0, Lcom/samsung/android/widget/SemTipPopup;->mArrowDirection:I

    goto :goto_0

    :cond_6
    iget-object v3, p0, Lcom/samsung/android/widget/SemTipPopup;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v3, v3, Landroid/util/DisplayMetrics;->widthPixels:I

    div-int/lit8 v3, v3, 0x2

    if-gt p1, v3, :cond_7

    iget-object v3, p0, Lcom/samsung/android/widget/SemTipPopup;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v3, v3, Landroid/util/DisplayMetrics;->heightPixels:I

    div-int/lit8 v3, v3, 0x2

    if-le p2, v3, :cond_7

    iput v6, p0, Lcom/samsung/android/widget/SemTipPopup;->mArrowDirection:I

    goto :goto_0

    :cond_7
    iget-object v3, p0, Lcom/samsung/android/widget/SemTipPopup;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v3, v3, Landroid/util/DisplayMetrics;->widthPixels:I

    div-int/lit8 v3, v3, 0x2

    if-le p1, v3, :cond_0

    iget-object v3, p0, Lcom/samsung/android/widget/SemTipPopup;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v3, v3, Landroid/util/DisplayMetrics;->heightPixels:I

    div-int/lit8 v3, v3, 0x2

    if-le p2, v3, :cond_0

    iput v5, p0, Lcom/samsung/android/widget/SemTipPopup;->mArrowDirection:I

    goto/16 :goto_0
.end method

.method private calculateArrowPosition()V
    .locals 7

    const/4 v6, 0x1

    const/4 v5, 0x0

    iget-object v3, p0, Lcom/samsung/android/widget/SemTipPopup;->mParentView:Landroid/view/View;

    if-eqz v3, :cond_0

    const/4 v3, 0x2

    new-array v0, v3, [I

    iget-object v3, p0, Lcom/samsung/android/widget/SemTipPopup;->mParentView:Landroid/view/View;

    invoke-virtual {v3, v0}, Landroid/view/View;->getLocationInWindow([I)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "calculateArrowPosition anchor location : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget v4, v0, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget v4, v0, v6

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/samsung/android/widget/SemTipPopup;->debugLog(Ljava/lang/String;)V

    aget v3, v0, v5

    iget-object v4, p0, Lcom/samsung/android/widget/SemTipPopup;->mParentView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    add-int v1, v3, v4

    aget v3, v0, v6

    iget-object v4, p0, Lcom/samsung/android/widget/SemTipPopup;->mParentView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    add-int v2, v3, v4

    iget-object v3, p0, Lcom/samsung/android/widget/SemTipPopup;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v3, v3, Landroid/util/DisplayMetrics;->heightPixels:I

    div-int/lit8 v3, v3, 0x2

    if-gt v2, v3, :cond_1

    iget-object v3, p0, Lcom/samsung/android/widget/SemTipPopup;->mParentView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v3, v2

    iput v3, p0, Lcom/samsung/android/widget/SemTipPopup;->mArrowPositionY:I

    :goto_0
    iput v1, p0, Lcom/samsung/android/widget/SemTipPopup;->mArrowPositionX:I

    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "calculateArrowPosition mArrowPosition : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/samsung/android/widget/SemTipPopup;->mArrowPositionX:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/samsung/android/widget/SemTipPopup;->mArrowPositionY:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/samsung/android/widget/SemTipPopup;->debugLog(Ljava/lang/String;)V

    return-void

    :cond_1
    iget-object v3, p0, Lcom/samsung/android/widget/SemTipPopup;->mParentView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    sub-int v3, v2, v3

    iput v3, p0, Lcom/samsung/android/widget/SemTipPopup;->mArrowPositionY:I

    goto :goto_0
.end method

.method private calculatePopupPosition()V
    .locals 7

    const/4 v6, 0x3

    const/4 v5, 0x1

    iget-object v3, p0, Lcom/samsung/android/widget/SemTipPopup;->mResources:Landroid/content/res/Resources;

    const v4, 0x1050397

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iget-object v3, p0, Lcom/samsung/android/widget/SemTipPopup;->mResources:Landroid/content/res/Resources;

    const v4, 0x105038e

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iget-object v3, p0, Lcom/samsung/android/widget/SemTipPopup;->mResources:Landroid/content/res/Resources;

    const v4, 0x1050394

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iget-object v3, p0, Lcom/samsung/android/widget/SemTipPopup;->mDisplayFrame:Landroid/graphics/Rect;

    invoke-direct {p0, v3}, Lcom/samsung/android/widget/SemTipPopup;->getDisplayFrame(Landroid/graphics/Rect;)V

    iget v3, p0, Lcom/samsung/android/widget/SemTipPopup;->mBalloonX:I

    if-gez v3, :cond_1

    iget v3, p0, Lcom/samsung/android/widget/SemTipPopup;->mArrowDirection:I

    if-eq v3, v6, :cond_0

    iget v3, p0, Lcom/samsung/android/widget/SemTipPopup;->mArrowDirection:I

    if-ne v3, v5, :cond_5

    :cond_0
    iget v3, p0, Lcom/samsung/android/widget/SemTipPopup;->mArrowPositionX:I

    add-int/2addr v3, v0

    iget v4, p0, Lcom/samsung/android/widget/SemTipPopup;->mBalloonWidth:I

    div-int/lit8 v4, v4, 0x2

    sub-int/2addr v3, v4

    iput v3, p0, Lcom/samsung/android/widget/SemTipPopup;->mBalloonX:I

    :cond_1
    :goto_0
    iget v3, p0, Lcom/samsung/android/widget/SemTipPopup;->mArrowDirection:I

    if-eq v3, v6, :cond_2

    iget v3, p0, Lcom/samsung/android/widget/SemTipPopup;->mArrowDirection:I

    if-ne v3, v5, :cond_7

    :cond_2
    iget v3, p0, Lcom/samsung/android/widget/SemTipPopup;->mArrowPositionX:I

    iget-object v4, p0, Lcom/samsung/android/widget/SemTipPopup;->mDisplayFrame:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    add-int/2addr v4, v1

    add-int/2addr v4, v2

    if-ge v3, v4, :cond_6

    const-string/jumbo v3, "Target position is too far to the left!"

    invoke-direct {p0, v3}, Lcom/samsung/android/widget/SemTipPopup;->debugLog(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/samsung/android/widget/SemTipPopup;->mDisplayFrame:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    add-int/2addr v3, v1

    add-int/2addr v3, v2

    iput v3, p0, Lcom/samsung/android/widget/SemTipPopup;->mArrowPositionX:I

    :cond_3
    :goto_1
    iget v3, p0, Lcom/samsung/android/widget/SemTipPopup;->mBalloonX:I

    iget-object v4, p0, Lcom/samsung/android/widget/SemTipPopup;->mDisplayFrame:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    add-int/2addr v4, v1

    if-ge v3, v4, :cond_9

    iget-object v3, p0, Lcom/samsung/android/widget/SemTipPopup;->mDisplayFrame:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    add-int/2addr v3, v1

    iput v3, p0, Lcom/samsung/android/widget/SemTipPopup;->mBalloonX:I

    :cond_4
    :goto_2
    iget v3, p0, Lcom/samsung/android/widget/SemTipPopup;->mArrowDirection:I

    packed-switch v3, :pswitch_data_0

    :goto_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "QuestionPopup : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/samsung/android/widget/SemTipPopup;->mBubbleX:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/samsung/android/widget/SemTipPopup;->mBubbleY:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/samsung/android/widget/SemTipPopup;->mBubbleWidth:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/samsung/android/widget/SemTipPopup;->mBubbleHeight:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/samsung/android/widget/SemTipPopup;->debugLog(Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "BalloonPopup : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/samsung/android/widget/SemTipPopup;->mBalloonX:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/samsung/android/widget/SemTipPopup;->mBalloonY:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/samsung/android/widget/SemTipPopup;->mBalloonWidth:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/samsung/android/widget/SemTipPopup;->mBalloonHeight:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/samsung/android/widget/SemTipPopup;->debugLog(Ljava/lang/String;)V

    return-void

    :cond_5
    iget v3, p0, Lcom/samsung/android/widget/SemTipPopup;->mArrowPositionX:I

    sub-int/2addr v3, v0

    iget v4, p0, Lcom/samsung/android/widget/SemTipPopup;->mBalloonWidth:I

    div-int/lit8 v4, v4, 0x2

    sub-int/2addr v3, v4

    iput v3, p0, Lcom/samsung/android/widget/SemTipPopup;->mBalloonX:I

    goto/16 :goto_0

    :cond_6
    iget v3, p0, Lcom/samsung/android/widget/SemTipPopup;->mArrowPositionX:I

    iget-object v4, p0, Lcom/samsung/android/widget/SemTipPopup;->mDisplayFrame:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->right:I

    sub-int/2addr v4, v1

    sub-int/2addr v4, v2

    sub-int/2addr v4, v0

    if-le v3, v4, :cond_3

    const-string/jumbo v3, "Target position is too far to the right!"

    invoke-direct {p0, v3}, Lcom/samsung/android/widget/SemTipPopup;->debugLog(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/samsung/android/widget/SemTipPopup;->mDisplayFrame:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    sub-int/2addr v3, v1

    sub-int/2addr v3, v2

    sub-int/2addr v3, v0

    iput v3, p0, Lcom/samsung/android/widget/SemTipPopup;->mArrowPositionX:I

    goto/16 :goto_1

    :cond_7
    iget v3, p0, Lcom/samsung/android/widget/SemTipPopup;->mArrowPositionX:I

    iget-object v4, p0, Lcom/samsung/android/widget/SemTipPopup;->mDisplayFrame:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    add-int/2addr v4, v1

    add-int/2addr v4, v2

    add-int/2addr v4, v0

    if-ge v3, v4, :cond_8

    const-string/jumbo v3, "Target position is too far to the left!"

    invoke-direct {p0, v3}, Lcom/samsung/android/widget/SemTipPopup;->debugLog(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/samsung/android/widget/SemTipPopup;->mDisplayFrame:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    add-int/2addr v3, v1

    add-int/2addr v3, v2

    add-int/2addr v3, v0

    iput v3, p0, Lcom/samsung/android/widget/SemTipPopup;->mArrowPositionX:I

    goto/16 :goto_1

    :cond_8
    iget v3, p0, Lcom/samsung/android/widget/SemTipPopup;->mArrowPositionX:I

    iget-object v4, p0, Lcom/samsung/android/widget/SemTipPopup;->mDisplayFrame:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->right:I

    sub-int/2addr v4, v1

    sub-int/2addr v4, v2

    if-le v3, v4, :cond_3

    const-string/jumbo v3, "Target position is too far to the right!"

    invoke-direct {p0, v3}, Lcom/samsung/android/widget/SemTipPopup;->debugLog(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/samsung/android/widget/SemTipPopup;->mDisplayFrame:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    sub-int/2addr v3, v1

    sub-int/2addr v3, v2

    iput v3, p0, Lcom/samsung/android/widget/SemTipPopup;->mArrowPositionX:I

    goto/16 :goto_1

    :cond_9
    iget v3, p0, Lcom/samsung/android/widget/SemTipPopup;->mBalloonX:I

    iget v4, p0, Lcom/samsung/android/widget/SemTipPopup;->mBalloonWidth:I

    add-int/2addr v3, v4

    iget-object v4, p0, Lcom/samsung/android/widget/SemTipPopup;->mDisplayFrame:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->right:I

    sub-int/2addr v4, v1

    if-le v3, v4, :cond_4

    iget-object v3, p0, Lcom/samsung/android/widget/SemTipPopup;->mDisplayFrame:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    sub-int/2addr v3, v1

    iget v4, p0, Lcom/samsung/android/widget/SemTipPopup;->mBalloonWidth:I

    sub-int/2addr v3, v4

    iput v3, p0, Lcom/samsung/android/widget/SemTipPopup;->mBalloonX:I

    goto/16 :goto_2

    :pswitch_0
    iget v3, p0, Lcom/samsung/android/widget/SemTipPopup;->mArrowPositionX:I

    iput v3, p0, Lcom/samsung/android/widget/SemTipPopup;->mBubbleX:I

    iget v3, p0, Lcom/samsung/android/widget/SemTipPopup;->mArrowPositionY:I

    iput v3, p0, Lcom/samsung/android/widget/SemTipPopup;->mBubbleY:I

    iget v3, p0, Lcom/samsung/android/widget/SemTipPopup;->mArrowPositionY:I

    iput v3, p0, Lcom/samsung/android/widget/SemTipPopup;->mBalloonY:I

    goto/16 :goto_3

    :pswitch_1
    iget v3, p0, Lcom/samsung/android/widget/SemTipPopup;->mArrowPositionX:I

    iget v4, p0, Lcom/samsung/android/widget/SemTipPopup;->mBubbleWidth:I

    sub-int/2addr v3, v4

    iput v3, p0, Lcom/samsung/android/widget/SemTipPopup;->mBubbleX:I

    iget v3, p0, Lcom/samsung/android/widget/SemTipPopup;->mArrowPositionY:I

    iput v3, p0, Lcom/samsung/android/widget/SemTipPopup;->mBubbleY:I

    iget v3, p0, Lcom/samsung/android/widget/SemTipPopup;->mArrowPositionY:I

    iput v3, p0, Lcom/samsung/android/widget/SemTipPopup;->mBalloonY:I

    goto/16 :goto_3

    :pswitch_2
    iget v3, p0, Lcom/samsung/android/widget/SemTipPopup;->mArrowPositionX:I

    iput v3, p0, Lcom/samsung/android/widget/SemTipPopup;->mBubbleX:I

    iget v3, p0, Lcom/samsung/android/widget/SemTipPopup;->mArrowPositionY:I

    iget v4, p0, Lcom/samsung/android/widget/SemTipPopup;->mBubbleHeight:I

    sub-int/2addr v3, v4

    iput v3, p0, Lcom/samsung/android/widget/SemTipPopup;->mBubbleY:I

    iget v3, p0, Lcom/samsung/android/widget/SemTipPopup;->mArrowPositionY:I

    iget v4, p0, Lcom/samsung/android/widget/SemTipPopup;->mBalloonHeight:I

    sub-int/2addr v3, v4

    iput v3, p0, Lcom/samsung/android/widget/SemTipPopup;->mBalloonY:I

    goto/16 :goto_3

    :pswitch_3
    iget v3, p0, Lcom/samsung/android/widget/SemTipPopup;->mArrowPositionX:I

    iget v4, p0, Lcom/samsung/android/widget/SemTipPopup;->mBubbleWidth:I

    sub-int/2addr v3, v4

    iput v3, p0, Lcom/samsung/android/widget/SemTipPopup;->mBubbleX:I

    iget v3, p0, Lcom/samsung/android/widget/SemTipPopup;->mArrowPositionY:I

    iget v4, p0, Lcom/samsung/android/widget/SemTipPopup;->mBubbleHeight:I

    sub-int/2addr v3, v4

    iput v3, p0, Lcom/samsung/android/widget/SemTipPopup;->mBubbleY:I

    iget v3, p0, Lcom/samsung/android/widget/SemTipPopup;->mArrowPositionY:I

    iget v4, p0, Lcom/samsung/android/widget/SemTipPopup;->mBalloonHeight:I

    sub-int/2addr v3, v4

    iput v3, p0, Lcom/samsung/android/widget/SemTipPopup;->mBalloonY:I

    goto/16 :goto_3

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private calculatePopupSize()V
    .locals 9

    const/4 v8, 0x0

    iget-object v5, p0, Lcom/samsung/android/widget/SemTipPopup;->mResources:Landroid/content/res/Resources;

    const v6, 0x105038f

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iget-object v5, p0, Lcom/samsung/android/widget/SemTipPopup;->mResources:Landroid/content/res/Resources;

    const v6, 0x1050394

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iget-object v5, p0, Lcom/samsung/android/widget/SemTipPopup;->mResources:Landroid/content/res/Resources;

    const v6, 0x1050395

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iget-object v5, p0, Lcom/samsung/android/widget/SemTipPopup;->mResources:Landroid/content/res/Resources;

    const v6, 0x10503a0

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iget-object v5, p0, Lcom/samsung/android/widget/SemTipPopup;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    iget v1, v5, Landroid/content/res/Configuration;->screenWidthDp:I

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "screen width DP "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/samsung/android/widget/SemTipPopup;->debugLog(Ljava/lang/String;)V

    const/16 v5, 0x1e0

    if-gt v1, v5, :cond_2

    iget-object v5, p0, Lcom/samsung/android/widget/SemTipPopup;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v5, v5, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v5, v5

    const v6, 0x3f547ae1    # 0.83f

    mul-float/2addr v5, v6

    float-to-int v5, v5

    iput v5, p0, Lcom/samsung/android/widget/SemTipPopup;->mBalloonWidth:I

    :goto_0
    iget-object v5, p0, Lcom/samsung/android/widget/SemTipPopup;->mMessageView:Landroid/widget/TextView;

    iget v6, p0, Lcom/samsung/android/widget/SemTipPopup;->mBalloonWidth:I

    mul-int/lit8 v7, v0, 0x2

    sub-int/2addr v6, v7

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setWidth(I)V

    iget-object v5, p0, Lcom/samsung/android/widget/SemTipPopup;->mMessageView:Landroid/widget/TextView;

    invoke-virtual {v5, v8, v8}, Landroid/view/View;->measure(II)V

    iget-object v5, p0, Lcom/samsung/android/widget/SemTipPopup;->mMessageView:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    mul-int/lit8 v6, v4, 0x2

    add-int/2addr v5, v6

    add-int/2addr v5, v2

    iput v5, p0, Lcom/samsung/android/widget/SemTipPopup;->mBalloonHeight:I

    iget v5, p0, Lcom/samsung/android/widget/SemTipPopup;->mType:I

    const/4 v6, 0x1

    if-ne v5, v6, :cond_1

    iget-object v5, p0, Lcom/samsung/android/widget/SemTipPopup;->mActionView:Landroid/widget/Button;

    invoke-virtual {v5, v8, v8}, Landroid/view/View;->measure(II)V

    iget v5, p0, Lcom/samsung/android/widget/SemTipPopup;->mBalloonWidth:I

    iget-object v6, p0, Lcom/samsung/android/widget/SemTipPopup;->mActionView:Landroid/widget/Button;

    invoke-virtual {v6}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    if-ge v5, v6, :cond_0

    iget-object v5, p0, Lcom/samsung/android/widget/SemTipPopup;->mActionView:Landroid/widget/Button;

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    iput v5, p0, Lcom/samsung/android/widget/SemTipPopup;->mBalloonWidth:I

    :cond_0
    iget v5, p0, Lcom/samsung/android/widget/SemTipPopup;->mBalloonHeight:I

    iget-object v6, p0, Lcom/samsung/android/widget/SemTipPopup;->mActionView:Landroid/widget/Button;

    invoke-virtual {v6}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    sub-int/2addr v6, v3

    add-int/2addr v5, v6

    iput v5, p0, Lcom/samsung/android/widget/SemTipPopup;->mBalloonHeight:I

    :cond_1
    return-void

    :cond_2
    const/16 v5, 0x3c0

    if-gt v1, v5, :cond_3

    iget-object v5, p0, Lcom/samsung/android/widget/SemTipPopup;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v5, v5, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v5, v5

    const v6, 0x3f19999a    # 0.6f

    mul-float/2addr v5, v6

    float-to-int v5, v5

    iput v5, p0, Lcom/samsung/android/widget/SemTipPopup;->mBalloonWidth:I

    goto :goto_0

    :cond_3
    const/16 v5, 0x500

    if-gt v1, v5, :cond_4

    iget-object v5, p0, Lcom/samsung/android/widget/SemTipPopup;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v5, v5, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v5, v5

    const v6, 0x3ee66666    # 0.45f

    mul-float/2addr v5, v6

    float-to-int v5, v5

    iput v5, p0, Lcom/samsung/android/widget/SemTipPopup;->mBalloonWidth:I

    goto :goto_0

    :cond_4
    iget-object v5, p0, Lcom/samsung/android/widget/SemTipPopup;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v5, v5, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v5, v5

    const/high16 v6, 0x3e800000    # 0.25f

    mul-float/2addr v5, v6

    float-to-int v5, v5

    iput v5, p0, Lcom/samsung/android/widget/SemTipPopup;->mBalloonWidth:I

    goto :goto_0
.end method

.method private debugLog(Ljava/lang/String;)V
    .locals 3

    const-string/jumbo v0, "SemTipPopup"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, " #### "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private dismissBubble(Z)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/widget/SemTipPopup;->mBubblePopup:Lcom/samsung/android/widget/SemTipPopup$TipWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/widget/SemTipPopup;->mBubblePopup:Lcom/samsung/android/widget/SemTipPopup$TipWindow;

    invoke-static {v0, p1}, Lcom/samsung/android/widget/SemTipPopup$TipWindow;->-wrap2(Lcom/samsung/android/widget/SemTipPopup$TipWindow;Z)V

    iget-object v0, p0, Lcom/samsung/android/widget/SemTipPopup;->mBubblePopup:Lcom/samsung/android/widget/SemTipPopup$TipWindow;

    invoke-virtual {v0}, Lcom/samsung/android/widget/SemTipPopup$TipWindow;->dismiss()V

    :cond_0
    return-void
.end method

.method private getDisplayFrame(Landroid/graphics/Rect;)V
    .locals 6

    const/4 v5, 0x0

    const/4 v1, 0x0

    iget-object v3, p0, Lcom/samsung/android/widget/SemTipPopup;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Display;->getRotation()I

    move-result v0

    new-instance v2, Landroid/util/DisplayMetrics;

    invoke-direct {v2}, Landroid/util/DisplayMetrics;-><init>()V

    iget-object v3, p0, Lcom/samsung/android/widget/SemTipPopup;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "realMetrics = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/samsung/android/widget/SemTipPopup;->debugLog(Ljava/lang/String;)V

    iput v5, p1, Landroid/graphics/Rect;->left:I

    iput v5, p1, Landroid/graphics/Rect;->top:I

    iget-object v3, p0, Lcom/samsung/android/widget/SemTipPopup;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v3, v3, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v3, p1, Landroid/graphics/Rect;->right:I

    iget-object v3, p0, Lcom/samsung/android/widget/SemTipPopup;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v3, v3, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v3, p1, Landroid/graphics/Rect;->bottom:I

    iget v3, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    iget-object v4, p0, Lcom/samsung/android/widget/SemTipPopup;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v4, v4, Landroid/util/DisplayMetrics;->heightPixels:I

    if-ne v3, v4, :cond_2

    iget v3, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    iget-object v4, p0, Lcom/samsung/android/widget/SemTipPopup;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v4, v4, Landroid/util/DisplayMetrics;->widthPixels:I

    sub-int v1, v3, v4

    const/4 v3, 0x1

    if-ne v0, v3, :cond_1

    invoke-direct {p0}, Lcom/samsung/android/widget/SemTipPopup;->isNavigationbarHide()Z

    move-result v3

    if-eqz v3, :cond_1

    iget v3, p1, Landroid/graphics/Rect;->right:I

    add-int/2addr v3, v1

    iput v3, p1, Landroid/graphics/Rect;->right:I

    :cond_0
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Screen Rect = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/samsung/android/widget/SemTipPopup;->debugLog(Ljava/lang/String;)V

    return-void

    :cond_1
    const/4 v3, 0x3

    if-ne v0, v3, :cond_0

    iget v3, p1, Landroid/graphics/Rect;->right:I

    add-int/2addr v3, v1

    iput v3, p1, Landroid/graphics/Rect;->right:I

    invoke-direct {p0}, Lcom/samsung/android/widget/SemTipPopup;->isNavigationbarHide()Z

    move-result v3

    if-nez v3, :cond_0

    iget v3, p1, Landroid/graphics/Rect;->left:I

    add-int/2addr v3, v1

    iput v3, p1, Landroid/graphics/Rect;->left:I

    goto :goto_0

    :cond_2
    iget v3, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    iget-object v4, p0, Lcom/samsung/android/widget/SemTipPopup;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v4, v4, Landroid/util/DisplayMetrics;->widthPixels:I

    if-ne v3, v4, :cond_0

    iget v3, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    iget-object v4, p0, Lcom/samsung/android/widget/SemTipPopup;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v4, v4, Landroid/util/DisplayMetrics;->heightPixels:I

    sub-int v1, v3, v4

    if-nez v0, :cond_3

    invoke-direct {p0}, Lcom/samsung/android/widget/SemTipPopup;->isNavigationbarHide()Z

    move-result v3

    if-eqz v3, :cond_3

    iget v3, p1, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v3, v1

    iput v3, p1, Landroid/graphics/Rect;->bottom:I

    goto :goto_0

    :cond_3
    const/4 v3, 0x2

    if-ne v0, v3, :cond_0

    iget v3, p1, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v3, v1

    iput v3, p1, Landroid/graphics/Rect;->bottom:I

    invoke-direct {p0}, Lcom/samsung/android/widget/SemTipPopup;->isNavigationbarHide()Z

    move-result v3

    if-nez v3, :cond_0

    iget v3, p1, Landroid/graphics/Rect;->top:I

    add-int/2addr v3, v1

    iput v3, p1, Landroid/graphics/Rect;->top:I

    goto :goto_0
.end method

.method private initBalloonPopup(I)V
    .locals 7

    const/4 v6, 0x0

    const/4 v5, 0x0

    const/16 v2, 0x8

    const/4 v4, 0x1

    iget-object v0, p0, Lcom/samsung/android/widget/SemTipPopup;->mBalloonView:Landroid/view/View;

    const v1, 0x10204ee

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/samsung/android/widget/SemTipPopup;->mBalloonBubble:Landroid/widget/FrameLayout;

    iget-object v0, p0, Lcom/samsung/android/widget/SemTipPopup;->mBalloonView:Landroid/view/View;

    const v1, 0x10204f1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/samsung/android/widget/SemTipPopup;->mBalloonPanel:Landroid/widget/FrameLayout;

    iget-object v0, p0, Lcom/samsung/android/widget/SemTipPopup;->mBalloonView:Landroid/view/View;

    const v1, 0x10204f7

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/samsung/android/widget/SemTipPopup;->mBalloonContent:Landroid/widget/FrameLayout;

    iget-object v0, p0, Lcom/samsung/android/widget/SemTipPopup;->mBalloonView:Landroid/view/View;

    const v1, 0x10204f2

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/samsung/android/widget/SemTipPopup;->mBalloonShadow:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/samsung/android/widget/SemTipPopup;->mBalloonView:Landroid/view/View;

    const v1, 0x10204f3

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/samsung/android/widget/SemTipPopup;->mBalloonBg1:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/samsung/android/widget/SemTipPopup;->mBalloonView:Landroid/view/View;

    const v1, 0x10204f4

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/samsung/android/widget/SemTipPopup;->mBalloonBg2:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/samsung/android/widget/SemTipPopup;->mBalloonView:Landroid/view/View;

    const v1, 0x10204f5

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/samsung/android/widget/SemTipPopup;->mBalloonStroke1:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/samsung/android/widget/SemTipPopup;->mBalloonView:Landroid/view/View;

    const v1, 0x10204f6

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/samsung/android/widget/SemTipPopup;->mBalloonStroke2:Landroid/widget/ImageView;

    if-ne p1, v4, :cond_0

    iget-object v0, p0, Lcom/samsung/android/widget/SemTipPopup;->mBalloonBg1:Landroid/widget/ImageView;

    const v1, 0x108082e

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/samsung/android/widget/SemTipPopup;->mBalloonBg1:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/view/View;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    iget-object v0, p0, Lcom/samsung/android/widget/SemTipPopup;->mBalloonBg2:Landroid/widget/ImageView;

    const v1, 0x1080830

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/samsung/android/widget/SemTipPopup;->mBalloonBg2:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/view/View;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    iget-object v0, p0, Lcom/samsung/android/widget/SemTipPopup;->mBalloonShadow:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/samsung/android/widget/SemTipPopup;->mBalloonStroke1:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/samsung/android/widget/SemTipPopup;->mBalloonStroke2:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/widget/SemTipPopup;->mBalloonBubble:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/samsung/android/widget/SemTipPopup;->mBalloonPanel:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    new-instance v0, Lcom/samsung/android/widget/SemTipPopup$TipWindow;

    iget-object v1, p0, Lcom/samsung/android/widget/SemTipPopup;->mBalloonView:Landroid/view/View;

    iget v2, p0, Lcom/samsung/android/widget/SemTipPopup;->mBalloonWidth:I

    iget v3, p0, Lcom/samsung/android/widget/SemTipPopup;->mBalloonHeight:I

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/widget/SemTipPopup$TipWindow;-><init>(Landroid/view/View;IIZLcom/samsung/android/widget/SemTipPopup$TipWindow;)V

    iput-object v0, p0, Lcom/samsung/android/widget/SemTipPopup;->mBalloonPopup:Lcom/samsung/android/widget/SemTipPopup$TipWindow;

    iget-object v0, p0, Lcom/samsung/android/widget/SemTipPopup;->mBalloonPopup:Lcom/samsung/android/widget/SemTipPopup$TipWindow;

    invoke-virtual {v0, v4}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    iget-object v0, p0, Lcom/samsung/android/widget/SemTipPopup;->mBalloonPopup:Lcom/samsung/android/widget/SemTipPopup$TipWindow;

    invoke-virtual {v0, v4}, Landroid/widget/PopupWindow;->setTouchable(Z)V

    iget-object v0, p0, Lcom/samsung/android/widget/SemTipPopup;->mBalloonPopup:Lcom/samsung/android/widget/SemTipPopup$TipWindow;

    invoke-virtual {v0, v4}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    iget-object v0, p0, Lcom/samsung/android/widget/SemTipPopup;->mBalloonPopup:Lcom/samsung/android/widget/SemTipPopup$TipWindow;

    invoke-virtual {v0, v6}, Landroid/widget/PopupWindow;->setAttachedInDecor(Z)V

    return-void
.end method

.method private initBubblePopup(I)V
    .locals 7

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    iget-object v0, p0, Lcom/samsung/android/widget/SemTipPopup;->mBubbleView:Landroid/view/View;

    const v1, 0x10204fa

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/samsung/android/widget/SemTipPopup;->mBubbleShadow:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/samsung/android/widget/SemTipPopup;->mBubbleView:Landroid/view/View;

    const v1, 0x10204fb

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/samsung/android/widget/SemTipPopup;->mBubbleBackground:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/samsung/android/widget/SemTipPopup;->mBubbleView:Landroid/view/View;

    const v1, 0x10204fc

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/samsung/android/widget/SemTipPopup;->mBubbleIcon:Landroid/widget/ImageView;

    if-ne p1, v6, :cond_0

    iget-object v0, p0, Lcom/samsung/android/widget/SemTipPopup;->mBubbleBackground:Landroid/widget/ImageView;

    const v1, 0x108083a

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lcom/samsung/android/widget/SemTipPopup;->mBubbleBackground:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    iget-object v0, p0, Lcom/samsung/android/widget/SemTipPopup;->mBubbleIcon:Landroid/widget/ImageView;

    const v1, 0x108083f

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lcom/samsung/android/widget/SemTipPopup;->mBubbleIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    iget-object v0, p0, Lcom/samsung/android/widget/SemTipPopup;->mBubbleShadow:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/samsung/android/widget/SemTipPopup;->mResources:Landroid/content/res/Resources;

    const v1, 0x105038c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/widget/SemTipPopup;->mBubbleWidth:I

    iget-object v0, p0, Lcom/samsung/android/widget/SemTipPopup;->mResources:Landroid/content/res/Resources;

    const v1, 0x105038d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/widget/SemTipPopup;->mBubbleHeight:I

    :goto_0
    new-instance v0, Lcom/samsung/android/widget/SemTipPopup$TipWindow;

    iget-object v1, p0, Lcom/samsung/android/widget/SemTipPopup;->mBubbleView:Landroid/view/View;

    iget v2, p0, Lcom/samsung/android/widget/SemTipPopup;->mBubbleWidth:I

    iget v3, p0, Lcom/samsung/android/widget/SemTipPopup;->mBubbleHeight:I

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/widget/SemTipPopup$TipWindow;-><init>(Landroid/view/View;IIZLcom/samsung/android/widget/SemTipPopup$TipWindow;)V

    iput-object v0, p0, Lcom/samsung/android/widget/SemTipPopup;->mBubblePopup:Lcom/samsung/android/widget/SemTipPopup$TipWindow;

    iget-object v0, p0, Lcom/samsung/android/widget/SemTipPopup;->mBubblePopup:Lcom/samsung/android/widget/SemTipPopup$TipWindow;

    invoke-virtual {v0, v6}, Landroid/widget/PopupWindow;->setTouchable(Z)V

    iget-object v0, p0, Lcom/samsung/android/widget/SemTipPopup;->mBubblePopup:Lcom/samsung/android/widget/SemTipPopup$TipWindow;

    invoke-virtual {v0, v6}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    iget-object v0, p0, Lcom/samsung/android/widget/SemTipPopup;->mBubblePopup:Lcom/samsung/android/widget/SemTipPopup$TipWindow;

    invoke-virtual {v0, v4}, Landroid/widget/PopupWindow;->setAttachedInDecor(Z)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/widget/SemTipPopup;->mResources:Landroid/content/res/Resources;

    const v1, 0x105038a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/widget/SemTipPopup;->mBubbleWidth:I

    iget-object v0, p0, Lcom/samsung/android/widget/SemTipPopup;->mResources:Landroid/content/res/Resources;

    const v1, 0x105038b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/widget/SemTipPopup;->mBubbleHeight:I

    goto :goto_0
.end method

.method private initInterpolator()V
    .locals 3

    const/high16 v2, 0x3f800000    # 1.0f

    sget-object v0, Lcom/samsung/android/widget/SemTipPopup;->INTERPOLATOR_SINE_IN_OUT_33:Landroid/view/animation/Interpolator;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/widget/SemTipPopup;->mContext:Landroid/content/Context;

    const v1, 0x10c0053

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/widget/SemTipPopup;->INTERPOLATOR_SINE_IN_OUT_33:Landroid/view/animation/Interpolator;

    :cond_0
    sget-object v0, Lcom/samsung/android/widget/SemTipPopup;->INTERPOLATOR_SINE_IN_OUT_70:Landroid/view/animation/Interpolator;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/widget/SemTipPopup;->mContext:Landroid/content/Context;

    const v1, 0x10c0056

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/widget/SemTipPopup;->INTERPOLATOR_SINE_IN_OUT_70:Landroid/view/animation/Interpolator;

    :cond_1
    sget-object v0, Lcom/samsung/android/widget/SemTipPopup;->INTERPOLATOR_ELASTIC_50:Landroid/view/animation/Interpolator;

    if-nez v0, :cond_2

    new-instance v0, Landroid/view/animation/ElasticCustom;

    const v1, 0x3f333333    # 0.7f

    invoke-direct {v0, v2, v1}, Landroid/view/animation/ElasticCustom;-><init>(FF)V

    sput-object v0, Lcom/samsung/android/widget/SemTipPopup;->INTERPOLATOR_ELASTIC_50:Landroid/view/animation/Interpolator;

    :cond_2
    sget-object v0, Lcom/samsung/android/widget/SemTipPopup;->INTERPOLATOR_ELASTIC_CUSTOM:Landroid/view/animation/Interpolator;

    if-nez v0, :cond_3

    new-instance v0, Landroid/view/animation/ElasticCustom;

    const v1, 0x3fa66666    # 1.3f

    invoke-direct {v0, v2, v1}, Landroid/view/animation/ElasticCustom;-><init>(FF)V

    sput-object v0, Lcom/samsung/android/widget/SemTipPopup;->INTERPOLATOR_ELASTIC_CUSTOM:Landroid/view/animation/Interpolator;

    :cond_3
    return-void
.end method

.method private isNavigationbarHide()Z
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/samsung/android/widget/SemTipPopup;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/widget/SemTipPopup;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "navigationbar_hide_bar_enabled"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v3, :cond_0

    return v3

    :cond_0
    return v2
.end method

.method private scheduleTimeout()V
    .locals 4

    const/4 v2, 0x0

    sget-object v0, Lcom/samsung/android/widget/SemTipPopup;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    sget-object v0, Lcom/samsung/android/widget/SemTipPopup;->mHandler:Landroid/os/Handler;

    sget-object v1, Lcom/samsung/android/widget/SemTipPopup;->mHandler:Landroid/os/Handler;

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x1bbc

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method private setBalloonPanel()V
    .locals 25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemTipPopup;->mBalloonPopup:Lcom/samsung/android/widget/SemTipPopup$TipWindow;

    move-object/from16 v20, v0

    if-nez v20, :cond_0

    return-void

    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemTipPopup;->mResources:Landroid/content/res/Resources;

    move-object/from16 v20, v0

    const v21, 0x1050396

    invoke-virtual/range {v20 .. v21}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemTipPopup;->mResources:Landroid/content/res/Resources;

    move-object/from16 v20, v0

    const v21, 0x105038f

    invoke-virtual/range {v20 .. v21}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemTipPopup;->mResources:Landroid/content/res/Resources;

    move-object/from16 v20, v0

    const v21, 0x1050394

    invoke-virtual/range {v20 .. v21}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemTipPopup;->mResources:Landroid/content/res/Resources;

    move-object/from16 v20, v0

    const v21, 0x1050395

    invoke-virtual/range {v20 .. v21}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/widget/SemTipPopup;->mBubbleX:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/widget/SemTipPopup;->mBalloonX:I

    move/from16 v21, v0

    sub-int v8, v20, v21

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/widget/SemTipPopup;->mBalloonX:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/widget/SemTipPopup;->mBalloonWidth:I

    move/from16 v21, v0

    add-int v20, v20, v21

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/widget/SemTipPopup;->mBubbleX:I

    move/from16 v21, v0

    sub-int v15, v20, v21

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/widget/SemTipPopup;->mBubbleY:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/widget/SemTipPopup;->mBalloonY:I

    move/from16 v21, v0

    sub-int v17, v20, v21

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/widget/SemTipPopup;->mBalloonY:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/widget/SemTipPopup;->mBalloonHeight:I

    move/from16 v21, v0

    add-int v20, v20, v21

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/widget/SemTipPopup;->mBubbleY:I

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/widget/SemTipPopup;->mBubbleHeight:I

    move/from16 v22, v0

    add-int v21, v21, v22

    sub-int v5, v20, v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemTipPopup;->mResources:Landroid/content/res/Resources;

    move-object/from16 v20, v0

    const v21, 0x105039f

    invoke-virtual/range {v20 .. v21}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemTipPopup;->mActionView:Landroid/widget/Button;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getVisibility()I

    move-result v20

    if-nez v20, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemTipPopup;->mResources:Landroid/content/res/Resources;

    move-object/from16 v20, v0

    const v21, 0x10503a0

    invoke-virtual/range {v20 .. v21}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v18

    :goto_0
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, "setBalloonPanel "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string/jumbo v21, ", "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string/jumbo v21, ", "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string/jumbo v21, ", "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/samsung/android/widget/SemTipPopup;->debugLog(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemTipPopup;->mBalloonBubble:Landroid/widget/FrameLayout;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v11

    check-cast v11, Landroid/widget/FrameLayout$LayoutParams;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemTipPopup;->mBalloonPanel:Landroid/widget/FrameLayout;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v13

    check-cast v13, Landroid/widget/FrameLayout$LayoutParams;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemTipPopup;->mBalloonContent:Landroid/widget/FrameLayout;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v12

    check-cast v12, Landroid/widget/FrameLayout$LayoutParams;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemTipPopup;->mBalloonBg1:Landroid/widget/ImageView;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    check-cast v9, Landroid/widget/FrameLayout$LayoutParams;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemTipPopup;->mBalloonBg2:Landroid/widget/ImageView;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v10

    check-cast v10, Landroid/widget/FrameLayout$LayoutParams;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemTipPopup;->mBalloonShadow:Landroid/widget/ImageView;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v14

    check-cast v14, Landroid/widget/FrameLayout$LayoutParams;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/widget/SemTipPopup;->mMode:I

    move/from16 v20, v0

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemTipPopup;->mBalloonBubble:Landroid/widget/FrameLayout;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v20

    check-cast v20, Landroid/widget/ImageView;

    const v21, 0x108083a

    invoke-virtual/range {v20 .. v21}, Landroid/widget/ImageView;->setImageResource(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemTipPopup;->mBalloonBubble:Landroid/widget/FrameLayout;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v20

    check-cast v20, Landroid/widget/ImageView;

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemTipPopup;->mBalloonBubble:Landroid/widget/FrameLayout;

    move-object/from16 v20, v0

    const/16 v21, 0x1

    invoke-virtual/range {v20 .. v21}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v20

    check-cast v20, Landroid/widget/ImageView;

    const v21, 0x108083f

    invoke-virtual/range {v20 .. v21}, Landroid/widget/ImageView;->setImageResource(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemTipPopup;->mBalloonBubble:Landroid/widget/FrameLayout;

    move-object/from16 v20, v0

    const/16 v21, 0x1

    invoke-virtual/range {v20 .. v21}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v20

    check-cast v20, Landroid/widget/ImageView;

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemTipPopup;->mResources:Landroid/content/res/Resources;

    move-object/from16 v20, v0

    const v21, 0x105038c

    invoke-virtual/range {v20 .. v21}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v20

    move/from16 v0, v20

    iput v0, v11, Landroid/view/ViewGroup$LayoutParams;->width:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemTipPopup;->mResources:Landroid/content/res/Resources;

    move-object/from16 v20, v0

    const v21, 0x105038d

    invoke-virtual/range {v20 .. v21}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v20

    move/from16 v0, v20

    iput v0, v11, Landroid/view/ViewGroup$LayoutParams;->height:I

    :cond_1
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/widget/SemTipPopup;->mArrowDirection:I

    move/from16 v20, v0

    packed-switch v20, :pswitch_data_0

    :goto_1
    add-int v20, v8, v16

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/widget/SemTipPopup;->mShadowMarginHintLeft:I

    move/from16 v21, v0

    sub-int v20, v20, v21

    add-int v21, v17, v16

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/widget/SemTipPopup;->mShadowMarginHintTop:I

    move/from16 v22, v0

    sub-int v21, v21, v22

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/widget/SemTipPopup;->mBubbleWidth:I

    move/from16 v22, v0

    sub-int v22, v15, v22

    add-int v22, v22, v16

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/widget/SemTipPopup;->mShadowMarginHintRight:I

    move/from16 v23, v0

    sub-int v22, v22, v23

    add-int v23, v5, v16

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/widget/SemTipPopup;->mShadowMarginHintBottom:I

    move/from16 v24, v0

    sub-int v23, v23, v24

    move/from16 v0, v20

    move/from16 v1, v21

    move/from16 v2, v22

    move/from16 v3, v23

    invoke-virtual {v11, v0, v1, v2, v3}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/widget/SemTipPopup;->mShadowMarginBalloon:I

    move/from16 v20, v0

    sub-int v20, v16, v20

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/widget/SemTipPopup;->mShadowMarginBalloon:I

    move/from16 v21, v0

    sub-int v21, v16, v21

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/widget/SemTipPopup;->mShadowMarginBalloon:I

    move/from16 v22, v0

    sub-int v22, v16, v22

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/widget/SemTipPopup;->mShadowMarginBalloon:I

    move/from16 v23, v0

    sub-int v23, v16, v23

    move/from16 v0, v20

    move/from16 v1, v21

    move/from16 v2, v22

    move/from16 v3, v23

    invoke-virtual {v13, v0, v1, v2, v3}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/widget/SemTipPopup;->mBalloonX:I

    move/from16 v20, v0

    sub-int v20, v20, v16

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/widget/SemTipPopup;->mBalloonPopupX:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/widget/SemTipPopup;->mBalloonY:I

    move/from16 v20, v0

    sub-int v20, v20, v16

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/widget/SemTipPopup;->mBalloonPopupY:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemTipPopup;->mBalloonBubble:Landroid/widget/FrameLayout;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v11}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemTipPopup;->mBalloonPanel:Landroid/widget/FrameLayout;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v13}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemTipPopup;->mBalloonBg1:Landroid/widget/ImageView;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v9}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemTipPopup;->mBalloonBg2:Landroid/widget/ImageView;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v10}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemTipPopup;->mBalloonStroke1:Landroid/widget/ImageView;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v9}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemTipPopup;->mBalloonStroke2:Landroid/widget/ImageView;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v10}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemTipPopup;->mBalloonShadow:Landroid/widget/ImageView;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v14}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemTipPopup;->mBalloonContent:Landroid/widget/FrameLayout;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v12}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemTipPopup;->mBalloonPopup:Lcom/samsung/android/widget/SemTipPopup$TipWindow;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/widget/SemTipPopup;->mBalloonWidth:I

    move/from16 v21, v0

    mul-int/lit8 v22, v16, 0x2

    add-int v21, v21, v22

    invoke-virtual/range {v20 .. v21}, Landroid/widget/PopupWindow;->setWidth(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemTipPopup;->mBalloonPopup:Lcom/samsung/android/widget/SemTipPopup$TipWindow;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/widget/SemTipPopup;->mBalloonHeight:I

    move/from16 v21, v0

    mul-int/lit8 v22, v16, 0x2

    add-int v21, v21, v22

    invoke-virtual/range {v20 .. v21}, Landroid/widget/PopupWindow;->setHeight(I)V

    return-void

    :cond_2
    const/16 v18, 0x0

    goto/16 :goto_0

    :pswitch_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemTipPopup;->mBalloonPopup:Lcom/samsung/android/widget/SemTipPopup$TipWindow;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/widget/SemTipPopup;->mArrowPositionX:I

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/widget/SemTipPopup;->mBalloonX:I

    move/from16 v22, v0

    sub-int v21, v21, v22

    add-int v21, v21, v16

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v22, v0

    invoke-static/range {v20 .. v22}, Lcom/samsung/android/widget/SemTipPopup$TipWindow;->-wrap1(Lcom/samsung/android/widget/SemTipPopup$TipWindow;FF)V

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/widget/SemTipPopup;->mMode:I

    move/from16 v20, v0

    if-nez v20, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemTipPopup;->mBalloonBubble:Landroid/widget/FrameLayout;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v20

    check-cast v20, Landroid/widget/ImageView;

    const v21, 0x1080837

    invoke-virtual/range {v20 .. v21}, Landroid/widget/ImageView;->setImageResource(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemTipPopup;->mBalloonBubble:Landroid/widget/FrameLayout;

    move-object/from16 v20, v0

    const/16 v21, 0x1

    invoke-virtual/range {v20 .. v21}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v20

    check-cast v20, Landroid/widget/ImageView;

    const v21, 0x108083c

    invoke-virtual/range {v20 .. v21}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemTipPopup;->mBalloonBg1:Landroid/widget/ImageView;

    move-object/from16 v20, v0

    const/high16 v21, 0x43340000    # 180.0f

    invoke-virtual/range {v20 .. v21}, Landroid/view/View;->setRotationY(F)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemTipPopup;->mBalloonBg2:Landroid/widget/ImageView;

    move-object/from16 v20, v0

    const/high16 v21, 0x43340000    # 180.0f

    invoke-virtual/range {v20 .. v21}, Landroid/view/View;->setRotationY(F)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemTipPopup;->mBalloonStroke1:Landroid/widget/ImageView;

    move-object/from16 v20, v0

    const/high16 v21, 0x43340000    # 180.0f

    invoke-virtual/range {v20 .. v21}, Landroid/view/View;->setRotationY(F)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemTipPopup;->mBalloonStroke2:Landroid/widget/ImageView;

    move-object/from16 v20, v0

    const/high16 v21, 0x43340000    # 180.0f

    invoke-virtual/range {v20 .. v21}, Landroid/view/View;->setRotationY(F)V

    const/16 v20, 0x33

    move/from16 v0, v20

    iput v0, v11, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/widget/SemTipPopup;->mShadowMarginBalloon:I

    move/from16 v20, v0

    add-int v20, v20, v8

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/widget/SemTipPopup;->mShadowMarginBalloon:I

    move/from16 v21, v0

    const/16 v22, 0x0

    const/16 v23, 0x0

    move/from16 v0, v20

    move/from16 v1, v21

    move/from16 v2, v22

    move/from16 v3, v23

    invoke-virtual {v9, v0, v1, v2, v3}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/widget/SemTipPopup;->mShadowMarginBalloon:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/widget/SemTipPopup;->mShadowMarginBalloon:I

    move/from16 v21, v0

    add-int v21, v21, v15

    const/16 v22, 0x0

    const/16 v23, 0x0

    move/from16 v0, v22

    move/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, v23

    invoke-virtual {v10, v0, v1, v2, v3}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    sub-int v20, v7, v6

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/widget/SemTipPopup;->mShadowMarginBalloon:I

    move/from16 v21, v0

    add-int v20, v20, v21

    add-int v21, v4, v19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/widget/SemTipPopup;->mShadowMarginBalloon:I

    move/from16 v22, v0

    add-int v21, v21, v22

    sub-int v22, v7, v6

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/widget/SemTipPopup;->mShadowMarginBalloon:I

    move/from16 v23, v0

    add-int v22, v22, v23

    sub-int v23, v19, v18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/widget/SemTipPopup;->mShadowMarginBalloon:I

    move/from16 v24, v0

    add-int v23, v23, v24

    move/from16 v0, v20

    move/from16 v1, v21

    move/from16 v2, v22

    move/from16 v3, v23

    invoke-virtual {v12, v0, v1, v2, v3}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    move/from16 v0, v20

    move/from16 v1, v21

    move/from16 v2, v22

    move/from16 v3, v23

    invoke-virtual {v14, v0, v1, v2, v3}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    goto/16 :goto_1

    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemTipPopup;->mBalloonBubble:Landroid/widget/FrameLayout;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v20

    check-cast v20, Landroid/widget/ImageView;

    const/high16 v21, 0x43340000    # 180.0f

    invoke-virtual/range {v20 .. v21}, Landroid/view/View;->setRotationY(F)V

    goto/16 :goto_2

    :pswitch_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemTipPopup;->mBalloonPopup:Lcom/samsung/android/widget/SemTipPopup$TipWindow;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/widget/SemTipPopup;->mArrowPositionX:I

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/widget/SemTipPopup;->mBalloonX:I

    move/from16 v22, v0

    sub-int v21, v21, v22

    add-int v21, v21, v16

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v22, v0

    invoke-static/range {v20 .. v22}, Lcom/samsung/android/widget/SemTipPopup$TipWindow;->-wrap1(Lcom/samsung/android/widget/SemTipPopup$TipWindow;FF)V

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/widget/SemTipPopup;->mMode:I

    move/from16 v20, v0

    if-nez v20, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemTipPopup;->mBalloonBubble:Landroid/widget/FrameLayout;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v20

    check-cast v20, Landroid/widget/ImageView;

    const v21, 0x1080836

    invoke-virtual/range {v20 .. v21}, Landroid/widget/ImageView;->setImageResource(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemTipPopup;->mBalloonBubble:Landroid/widget/FrameLayout;

    move-object/from16 v20, v0

    const/16 v21, 0x1

    invoke-virtual/range {v20 .. v21}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v20

    check-cast v20, Landroid/widget/ImageView;

    const v21, 0x108083b

    invoke-virtual/range {v20 .. v21}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_4
    const/16 v20, 0x35

    move/from16 v0, v20

    iput v0, v11, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/widget/SemTipPopup;->mShadowMarginBalloon:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/widget/SemTipPopup;->mShadowMarginBalloon:I

    move/from16 v21, v0

    add-int v21, v21, v15

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/widget/SemTipPopup;->mBubbleWidth:I

    move/from16 v22, v0

    sub-int v21, v21, v22

    const/16 v22, 0x0

    const/16 v23, 0x0

    move/from16 v0, v22

    move/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, v23

    invoke-virtual {v9, v0, v1, v2, v3}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/widget/SemTipPopup;->mShadowMarginBalloon:I

    move/from16 v20, v0

    add-int v20, v20, v8

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/widget/SemTipPopup;->mBubbleWidth:I

    move/from16 v21, v0

    add-int v20, v20, v21

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/widget/SemTipPopup;->mShadowMarginBalloon:I

    move/from16 v21, v0

    const/16 v22, 0x0

    const/16 v23, 0x0

    move/from16 v0, v20

    move/from16 v1, v21

    move/from16 v2, v22

    move/from16 v3, v23

    invoke-virtual {v10, v0, v1, v2, v3}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    sub-int v20, v7, v6

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/widget/SemTipPopup;->mShadowMarginBalloon:I

    move/from16 v21, v0

    add-int v20, v20, v21

    add-int v21, v4, v19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/widget/SemTipPopup;->mShadowMarginBalloon:I

    move/from16 v22, v0

    add-int v21, v21, v22

    sub-int v22, v7, v6

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/widget/SemTipPopup;->mShadowMarginBalloon:I

    move/from16 v23, v0

    add-int v22, v22, v23

    sub-int v23, v19, v18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/widget/SemTipPopup;->mShadowMarginBalloon:I

    move/from16 v24, v0

    add-int v23, v23, v24

    move/from16 v0, v20

    move/from16 v1, v21

    move/from16 v2, v22

    move/from16 v3, v23

    invoke-virtual {v12, v0, v1, v2, v3}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    move/from16 v0, v20

    move/from16 v1, v21

    move/from16 v2, v22

    move/from16 v3, v23

    invoke-virtual {v14, v0, v1, v2, v3}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    goto/16 :goto_1

    :pswitch_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemTipPopup;->mBalloonPopup:Lcom/samsung/android/widget/SemTipPopup$TipWindow;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/widget/SemTipPopup;->mArrowPositionX:I

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/widget/SemTipPopup;->mBalloonX:I

    move/from16 v22, v0

    sub-int v21, v21, v22

    add-int v21, v21, v16

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/widget/SemTipPopup;->mBalloonHeight:I

    move/from16 v22, v0

    add-int v22, v22, v16

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    invoke-static/range {v20 .. v22}, Lcom/samsung/android/widget/SemTipPopup$TipWindow;->-wrap1(Lcom/samsung/android/widget/SemTipPopup$TipWindow;FF)V

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/widget/SemTipPopup;->mMode:I

    move/from16 v20, v0

    if-nez v20, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemTipPopup;->mBalloonBubble:Landroid/widget/FrameLayout;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v20

    check-cast v20, Landroid/widget/ImageView;

    const v21, 0x1080839

    invoke-virtual/range {v20 .. v21}, Landroid/widget/ImageView;->setImageResource(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemTipPopup;->mBalloonBubble:Landroid/widget/FrameLayout;

    move-object/from16 v20, v0

    const/16 v21, 0x1

    invoke-virtual/range {v20 .. v21}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v20

    check-cast v20, Landroid/widget/ImageView;

    const v21, 0x108083e

    invoke-virtual/range {v20 .. v21}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemTipPopup;->mBalloonBg1:Landroid/widget/ImageView;

    move-object/from16 v20, v0

    const/high16 v21, 0x43340000    # 180.0f

    invoke-virtual/range {v20 .. v21}, Landroid/view/View;->setRotation(F)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemTipPopup;->mBalloonBg2:Landroid/widget/ImageView;

    move-object/from16 v20, v0

    const/high16 v21, 0x43340000    # 180.0f

    invoke-virtual/range {v20 .. v21}, Landroid/view/View;->setRotation(F)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemTipPopup;->mBalloonStroke1:Landroid/widget/ImageView;

    move-object/from16 v20, v0

    const/high16 v21, 0x43340000    # 180.0f

    invoke-virtual/range {v20 .. v21}, Landroid/view/View;->setRotation(F)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemTipPopup;->mBalloonStroke2:Landroid/widget/ImageView;

    move-object/from16 v20, v0

    const/high16 v21, 0x43340000    # 180.0f

    invoke-virtual/range {v20 .. v21}, Landroid/view/View;->setRotation(F)V

    const/16 v20, 0x53

    move/from16 v0, v20

    iput v0, v11, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/widget/SemTipPopup;->mShadowMarginBalloon:I

    move/from16 v20, v0

    add-int v20, v20, v8

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/widget/SemTipPopup;->mShadowMarginBalloon:I

    move/from16 v21, v0

    const/16 v22, 0x0

    const/16 v23, 0x0

    move/from16 v0, v20

    move/from16 v1, v22

    move/from16 v2, v23

    move/from16 v3, v21

    invoke-virtual {v9, v0, v1, v2, v3}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/widget/SemTipPopup;->mShadowMarginBalloon:I

    move/from16 v20, v0

    add-int v20, v20, v15

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/widget/SemTipPopup;->mShadowMarginBalloon:I

    move/from16 v21, v0

    const/16 v22, 0x0

    const/16 v23, 0x0

    move/from16 v0, v22

    move/from16 v1, v23

    move/from16 v2, v20

    move/from16 v3, v21

    invoke-virtual {v10, v0, v1, v2, v3}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    sub-int v20, v7, v6

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/widget/SemTipPopup;->mShadowMarginBalloon:I

    move/from16 v21, v0

    add-int v20, v20, v21

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/widget/SemTipPopup;->mShadowMarginBalloon:I

    move/from16 v21, v0

    add-int v21, v21, v19

    sub-int v22, v7, v6

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/widget/SemTipPopup;->mShadowMarginBalloon:I

    move/from16 v23, v0

    add-int v22, v22, v23

    add-int v23, v4, v19

    sub-int v23, v23, v18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/widget/SemTipPopup;->mShadowMarginBalloon:I

    move/from16 v24, v0

    add-int v23, v23, v24

    move/from16 v0, v20

    move/from16 v1, v21

    move/from16 v2, v22

    move/from16 v3, v23

    invoke-virtual {v12, v0, v1, v2, v3}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    move/from16 v0, v20

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v14, v0, v1, v2, v4}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    goto/16 :goto_1

    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemTipPopup;->mBalloonBubble:Landroid/widget/FrameLayout;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v20

    check-cast v20, Landroid/widget/ImageView;

    const/high16 v21, 0x43340000    # 180.0f

    invoke-virtual/range {v20 .. v21}, Landroid/view/View;->setRotation(F)V

    goto/16 :goto_3

    :pswitch_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemTipPopup;->mBalloonPopup:Lcom/samsung/android/widget/SemTipPopup$TipWindow;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/widget/SemTipPopup;->mArrowPositionX:I

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/widget/SemTipPopup;->mBalloonX:I

    move/from16 v22, v0

    sub-int v21, v21, v22

    add-int v21, v21, v16

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/widget/SemTipPopup;->mBalloonHeight:I

    move/from16 v22, v0

    add-int v22, v22, v16

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    invoke-static/range {v20 .. v22}, Lcom/samsung/android/widget/SemTipPopup$TipWindow;->-wrap1(Lcom/samsung/android/widget/SemTipPopup$TipWindow;FF)V

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/widget/SemTipPopup;->mMode:I

    move/from16 v20, v0

    if-nez v20, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemTipPopup;->mBalloonBubble:Landroid/widget/FrameLayout;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v20

    check-cast v20, Landroid/widget/ImageView;

    const v21, 0x1080838

    invoke-virtual/range {v20 .. v21}, Landroid/widget/ImageView;->setImageResource(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemTipPopup;->mBalloonBubble:Landroid/widget/FrameLayout;

    move-object/from16 v20, v0

    const/16 v21, 0x1

    invoke-virtual/range {v20 .. v21}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v20

    check-cast v20, Landroid/widget/ImageView;

    const v21, 0x108083d

    invoke-virtual/range {v20 .. v21}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemTipPopup;->mBalloonBg1:Landroid/widget/ImageView;

    move-object/from16 v20, v0

    const/high16 v21, 0x43340000    # 180.0f

    invoke-virtual/range {v20 .. v21}, Landroid/view/View;->setRotationX(F)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemTipPopup;->mBalloonBg2:Landroid/widget/ImageView;

    move-object/from16 v20, v0

    const/high16 v21, 0x43340000    # 180.0f

    invoke-virtual/range {v20 .. v21}, Landroid/view/View;->setRotationX(F)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemTipPopup;->mBalloonStroke1:Landroid/widget/ImageView;

    move-object/from16 v20, v0

    const/high16 v21, 0x43340000    # 180.0f

    invoke-virtual/range {v20 .. v21}, Landroid/view/View;->setRotationX(F)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemTipPopup;->mBalloonStroke2:Landroid/widget/ImageView;

    move-object/from16 v20, v0

    const/high16 v21, 0x43340000    # 180.0f

    invoke-virtual/range {v20 .. v21}, Landroid/view/View;->setRotationX(F)V

    const/16 v20, 0x55

    move/from16 v0, v20

    iput v0, v11, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/widget/SemTipPopup;->mShadowMarginBalloon:I

    move/from16 v20, v0

    add-int v20, v20, v15

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/widget/SemTipPopup;->mBubbleWidth:I

    move/from16 v21, v0

    sub-int v20, v20, v21

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/widget/SemTipPopup;->mShadowMarginBalloon:I

    move/from16 v21, v0

    const/16 v22, 0x0

    const/16 v23, 0x0

    move/from16 v0, v22

    move/from16 v1, v23

    move/from16 v2, v20

    move/from16 v3, v21

    invoke-virtual {v9, v0, v1, v2, v3}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/widget/SemTipPopup;->mShadowMarginBalloon:I

    move/from16 v20, v0

    add-int v20, v20, v8

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/widget/SemTipPopup;->mBubbleWidth:I

    move/from16 v21, v0

    add-int v20, v20, v21

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/widget/SemTipPopup;->mShadowMarginBalloon:I

    move/from16 v21, v0

    const/16 v22, 0x0

    const/16 v23, 0x0

    move/from16 v0, v20

    move/from16 v1, v22

    move/from16 v2, v23

    move/from16 v3, v21

    invoke-virtual {v10, v0, v1, v2, v3}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    sub-int v20, v7, v6

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/widget/SemTipPopup;->mShadowMarginBalloon:I

    move/from16 v21, v0

    add-int v20, v20, v21

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/widget/SemTipPopup;->mShadowMarginBalloon:I

    move/from16 v21, v0

    add-int v21, v21, v19

    sub-int v22, v7, v6

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/widget/SemTipPopup;->mShadowMarginBalloon:I

    move/from16 v23, v0

    add-int v22, v22, v23

    add-int v23, v4, v19

    sub-int v23, v23, v18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/widget/SemTipPopup;->mShadowMarginBalloon:I

    move/from16 v24, v0

    add-int v23, v23, v24

    move/from16 v0, v20

    move/from16 v1, v21

    move/from16 v2, v22

    move/from16 v3, v23

    invoke-virtual {v12, v0, v1, v2, v3}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    move/from16 v0, v20

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v14, v0, v1, v2, v4}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    goto/16 :goto_1

    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemTipPopup;->mBalloonBubble:Landroid/widget/FrameLayout;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v20

    check-cast v20, Landroid/widget/ImageView;

    const/high16 v21, 0x43340000    # 180.0f

    invoke-virtual/range {v20 .. v21}, Landroid/view/View;->setRotationX(F)V

    goto/16 :goto_4

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private setBubblePanel()V
    .locals 7

    const/high16 v6, 0x43340000    # 180.0f

    iget-object v2, p0, Lcom/samsung/android/widget/SemTipPopup;->mBubblePopup:Lcom/samsung/android/widget/SemTipPopup$TipWindow;

    if-nez v2, :cond_0

    return-void

    :cond_0
    iget-object v2, p0, Lcom/samsung/android/widget/SemTipPopup;->mResources:Landroid/content/res/Resources;

    const v3, 0x1050396

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iget-object v2, p0, Lcom/samsung/android/widget/SemTipPopup;->mBubbleBackground:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    iget v2, p0, Lcom/samsung/android/widget/SemTipPopup;->mMode:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    iget-object v2, p0, Lcom/samsung/android/widget/SemTipPopup;->mResources:Landroid/content/res/Resources;

    const v3, 0x105038c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget-object v2, p0, Lcom/samsung/android/widget/SemTipPopup;->mResources:Landroid/content/res/Resources;

    const v3, 0x105038d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    :cond_1
    iget v2, p0, Lcom/samsung/android/widget/SemTipPopup;->mArrowDirection:I

    packed-switch v2, :pswitch_data_0

    :cond_2
    :goto_0
    iget-object v2, p0, Lcom/samsung/android/widget/SemTipPopup;->mBubbleShadow:Landroid/widget/ImageView;

    invoke-virtual {v2, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v2, p0, Lcom/samsung/android/widget/SemTipPopup;->mBubbleBackground:Landroid/widget/ImageView;

    invoke-virtual {v2, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v2, p0, Lcom/samsung/android/widget/SemTipPopup;->mBubbleIcon:Landroid/widget/ImageView;

    invoke-virtual {v2, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v2, p0, Lcom/samsung/android/widget/SemTipPopup;->mBubblePopup:Lcom/samsung/android/widget/SemTipPopup$TipWindow;

    iget v3, p0, Lcom/samsung/android/widget/SemTipPopup;->mBubbleWidth:I

    mul-int/lit8 v4, v1, 0x2

    add-int/2addr v3, v4

    invoke-virtual {v2, v3}, Landroid/widget/PopupWindow;->setWidth(I)V

    iget-object v2, p0, Lcom/samsung/android/widget/SemTipPopup;->mBubblePopup:Lcom/samsung/android/widget/SemTipPopup$TipWindow;

    iget v3, p0, Lcom/samsung/android/widget/SemTipPopup;->mBubbleHeight:I

    mul-int/lit8 v4, v1, 0x2

    add-int/2addr v3, v4

    invoke-virtual {v2, v3}, Landroid/widget/PopupWindow;->setHeight(I)V

    return-void

    :pswitch_0
    iget-object v2, p0, Lcom/samsung/android/widget/SemTipPopup;->mBubblePopup:Lcom/samsung/android/widget/SemTipPopup$TipWindow;

    iget v3, p0, Lcom/samsung/android/widget/SemTipPopup;->mShadowMarginHintLeft:I

    int-to-float v3, v3

    iget v4, p0, Lcom/samsung/android/widget/SemTipPopup;->mShadowMarginHintTop:I

    int-to-float v4, v4

    invoke-static {v2, v3, v4}, Lcom/samsung/android/widget/SemTipPopup$TipWindow;->-wrap1(Lcom/samsung/android/widget/SemTipPopup$TipWindow;FF)V

    const/16 v2, 0x33

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    iget v2, p0, Lcom/samsung/android/widget/SemTipPopup;->mBubbleX:I

    iget v3, p0, Lcom/samsung/android/widget/SemTipPopup;->mShadowMarginHintLeft:I

    sub-int/2addr v2, v3

    iput v2, p0, Lcom/samsung/android/widget/SemTipPopup;->mBubblePopupX:I

    iget v2, p0, Lcom/samsung/android/widget/SemTipPopup;->mBubbleY:I

    iget v3, p0, Lcom/samsung/android/widget/SemTipPopup;->mShadowMarginHintTop:I

    sub-int/2addr v2, v3

    iput v2, p0, Lcom/samsung/android/widget/SemTipPopup;->mBubblePopupY:I

    iget v2, p0, Lcom/samsung/android/widget/SemTipPopup;->mMode:I

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/samsung/android/widget/SemTipPopup;->mBubbleShadow:Landroid/widget/ImageView;

    const v3, 0x1080841

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v2, p0, Lcom/samsung/android/widget/SemTipPopup;->mBubbleBackground:Landroid/widget/ImageView;

    const v3, 0x1080837

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v2, p0, Lcom/samsung/android/widget/SemTipPopup;->mBubbleIcon:Landroid/widget/ImageView;

    const v3, 0x108083c

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    :cond_3
    iget-object v2, p0, Lcom/samsung/android/widget/SemTipPopup;->mBubbleBackground:Landroid/widget/ImageView;

    invoke-virtual {v2, v6}, Landroid/view/View;->setRotationY(F)V

    goto :goto_0

    :pswitch_1
    iget-object v2, p0, Lcom/samsung/android/widget/SemTipPopup;->mBubblePopup:Lcom/samsung/android/widget/SemTipPopup$TipWindow;

    iget-object v3, p0, Lcom/samsung/android/widget/SemTipPopup;->mBubblePopup:Lcom/samsung/android/widget/SemTipPopup$TipWindow;

    invoke-virtual {v3}, Landroid/widget/PopupWindow;->getWidth()I

    move-result v3

    iget v4, p0, Lcom/samsung/android/widget/SemTipPopup;->mShadowMarginHintRight:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    iget v4, p0, Lcom/samsung/android/widget/SemTipPopup;->mShadowMarginHintTop:I

    int-to-float v4, v4

    invoke-static {v2, v3, v4}, Lcom/samsung/android/widget/SemTipPopup$TipWindow;->-wrap1(Lcom/samsung/android/widget/SemTipPopup$TipWindow;FF)V

    const/16 v2, 0x35

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    iget v2, p0, Lcom/samsung/android/widget/SemTipPopup;->mBubbleX:I

    mul-int/lit8 v3, v1, 0x2

    sub-int/2addr v2, v3

    iget v3, p0, Lcom/samsung/android/widget/SemTipPopup;->mShadowMarginHintRight:I

    add-int/2addr v2, v3

    iput v2, p0, Lcom/samsung/android/widget/SemTipPopup;->mBubblePopupX:I

    iget v2, p0, Lcom/samsung/android/widget/SemTipPopup;->mBubbleY:I

    iget v3, p0, Lcom/samsung/android/widget/SemTipPopup;->mShadowMarginHintTop:I

    sub-int/2addr v2, v3

    iput v2, p0, Lcom/samsung/android/widget/SemTipPopup;->mBubblePopupY:I

    iget v2, p0, Lcom/samsung/android/widget/SemTipPopup;->mMode:I

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/samsung/android/widget/SemTipPopup;->mBubbleShadow:Landroid/widget/ImageView;

    const v3, 0x1080840

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v2, p0, Lcom/samsung/android/widget/SemTipPopup;->mBubbleBackground:Landroid/widget/ImageView;

    const v3, 0x1080836

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v2, p0, Lcom/samsung/android/widget/SemTipPopup;->mBubbleIcon:Landroid/widget/ImageView;

    const v3, 0x108083b

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_0

    :pswitch_2
    iget-object v2, p0, Lcom/samsung/android/widget/SemTipPopup;->mBubblePopup:Lcom/samsung/android/widget/SemTipPopup$TipWindow;

    iget v3, p0, Lcom/samsung/android/widget/SemTipPopup;->mShadowMarginHintLeft:I

    int-to-float v3, v3

    iget-object v4, p0, Lcom/samsung/android/widget/SemTipPopup;->mBubblePopup:Lcom/samsung/android/widget/SemTipPopup$TipWindow;

    invoke-virtual {v4}, Landroid/widget/PopupWindow;->getHeight()I

    move-result v4

    iget v5, p0, Lcom/samsung/android/widget/SemTipPopup;->mShadowMarginHintBottom:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    invoke-static {v2, v3, v4}, Lcom/samsung/android/widget/SemTipPopup$TipWindow;->-wrap1(Lcom/samsung/android/widget/SemTipPopup$TipWindow;FF)V

    const/16 v2, 0x53

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    iget v2, p0, Lcom/samsung/android/widget/SemTipPopup;->mBubbleX:I

    iget v3, p0, Lcom/samsung/android/widget/SemTipPopup;->mShadowMarginHintLeft:I

    sub-int/2addr v2, v3

    iput v2, p0, Lcom/samsung/android/widget/SemTipPopup;->mBubblePopupX:I

    iget v2, p0, Lcom/samsung/android/widget/SemTipPopup;->mBubbleY:I

    mul-int/lit8 v3, v1, 0x2

    sub-int/2addr v2, v3

    iget v3, p0, Lcom/samsung/android/widget/SemTipPopup;->mShadowMarginHintBottom:I

    add-int/2addr v2, v3

    iput v2, p0, Lcom/samsung/android/widget/SemTipPopup;->mBubblePopupY:I

    iget v2, p0, Lcom/samsung/android/widget/SemTipPopup;->mMode:I

    if-nez v2, :cond_4

    iget-object v2, p0, Lcom/samsung/android/widget/SemTipPopup;->mBubbleShadow:Landroid/widget/ImageView;

    const v3, 0x1080843

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v2, p0, Lcom/samsung/android/widget/SemTipPopup;->mBubbleBackground:Landroid/widget/ImageView;

    const v3, 0x1080839

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v2, p0, Lcom/samsung/android/widget/SemTipPopup;->mBubbleIcon:Landroid/widget/ImageView;

    const v3, 0x108083e

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_0

    :cond_4
    iget-object v2, p0, Lcom/samsung/android/widget/SemTipPopup;->mBubbleBackground:Landroid/widget/ImageView;

    invoke-virtual {v2, v6}, Landroid/view/View;->setRotation(F)V

    goto/16 :goto_0

    :pswitch_3
    iget-object v2, p0, Lcom/samsung/android/widget/SemTipPopup;->mBubblePopup:Lcom/samsung/android/widget/SemTipPopup$TipWindow;

    iget-object v3, p0, Lcom/samsung/android/widget/SemTipPopup;->mBubblePopup:Lcom/samsung/android/widget/SemTipPopup$TipWindow;

    invoke-virtual {v3}, Landroid/widget/PopupWindow;->getWidth()I

    move-result v3

    iget v4, p0, Lcom/samsung/android/widget/SemTipPopup;->mShadowMarginHintRight:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    iget-object v4, p0, Lcom/samsung/android/widget/SemTipPopup;->mBubblePopup:Lcom/samsung/android/widget/SemTipPopup$TipWindow;

    invoke-virtual {v4}, Landroid/widget/PopupWindow;->getHeight()I

    move-result v4

    iget v5, p0, Lcom/samsung/android/widget/SemTipPopup;->mShadowMarginHintBottom:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    invoke-static {v2, v3, v4}, Lcom/samsung/android/widget/SemTipPopup$TipWindow;->-wrap1(Lcom/samsung/android/widget/SemTipPopup$TipWindow;FF)V

    const/16 v2, 0x55

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    iget v2, p0, Lcom/samsung/android/widget/SemTipPopup;->mBubbleX:I

    mul-int/lit8 v3, v1, 0x2

    sub-int/2addr v2, v3

    iget v3, p0, Lcom/samsung/android/widget/SemTipPopup;->mShadowMarginHintRight:I

    add-int/2addr v2, v3

    iput v2, p0, Lcom/samsung/android/widget/SemTipPopup;->mBubblePopupX:I

    iget v2, p0, Lcom/samsung/android/widget/SemTipPopup;->mBubbleY:I

    mul-int/lit8 v3, v1, 0x2

    sub-int/2addr v2, v3

    iget v3, p0, Lcom/samsung/android/widget/SemTipPopup;->mShadowMarginHintBottom:I

    add-int/2addr v2, v3

    iput v2, p0, Lcom/samsung/android/widget/SemTipPopup;->mBubblePopupY:I

    iget v2, p0, Lcom/samsung/android/widget/SemTipPopup;->mMode:I

    if-nez v2, :cond_5

    iget-object v2, p0, Lcom/samsung/android/widget/SemTipPopup;->mBubbleShadow:Landroid/widget/ImageView;

    const v3, 0x1080842

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v2, p0, Lcom/samsung/android/widget/SemTipPopup;->mBubbleBackground:Landroid/widget/ImageView;

    const v3, 0x1080838

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v2, p0, Lcom/samsung/android/widget/SemTipPopup;->mBubbleIcon:Landroid/widget/ImageView;

    const v3, 0x108083d

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_0

    :cond_5
    iget-object v2, p0, Lcom/samsung/android/widget/SemTipPopup;->mBubbleBackground:Landroid/widget/ImageView;

    invoke-virtual {v2, v6}, Landroid/view/View;->setRotationX(F)V

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private setExpandedPosition(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/widget/SemTipPopup;->mBalloonX:I

    return-void
.end method

.method private setInternal()V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/samsung/android/widget/SemTipPopup;->mMessageView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/widget/SemTipPopup;->mActionView:Landroid/widget/Button;

    if-nez v0, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/widget/SemTipPopup;->mMessageView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/samsung/android/widget/SemTipPopup;->mMessageText:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/samsung/android/widget/SemTipPopup;->mActionText:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/widget/SemTipPopup;->mActionClickListener:Landroid/view/View$OnClickListener;

    if-nez v0, :cond_5

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/widget/SemTipPopup;->mActionView:Landroid/widget/Button;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/samsung/android/widget/SemTipPopup;->mActionView:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iput v3, p0, Lcom/samsung/android/widget/SemTipPopup;->mType:I

    :goto_0
    iget-object v0, p0, Lcom/samsung/android/widget/SemTipPopup;->mBubbleIcon:Landroid/widget/ImageView;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/widget/SemTipPopup;->mHintDescription:Ljava/lang/CharSequence;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/widget/SemTipPopup;->mBubbleIcon:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/samsung/android/widget/SemTipPopup;->mHintDescription:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_3
    iget v0, p0, Lcom/samsung/android/widget/SemTipPopup;->mMode:I

    if-eq v0, v4, :cond_4

    iget-object v0, p0, Lcom/samsung/android/widget/SemTipPopup;->mBubbleIcon:Landroid/widget/ImageView;

    if-nez v0, :cond_6

    :cond_4
    return-void

    :cond_5
    iget-object v0, p0, Lcom/samsung/android/widget/SemTipPopup;->mActionView:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/samsung/android/widget/SemTipPopup;->mActionView:Landroid/widget/Button;

    iget-object v1, p0, Lcom/samsung/android/widget/SemTipPopup;->mActionText:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/samsung/android/widget/SemTipPopup;->mActionView:Landroid/widget/Button;

    new-instance v1, Lcom/samsung/android/widget/SemTipPopup$4;

    invoke-direct {v1, p0}, Lcom/samsung/android/widget/SemTipPopup$4;-><init>(Lcom/samsung/android/widget/SemTipPopup;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iput v4, p0, Lcom/samsung/android/widget/SemTipPopup;->mType:I

    goto :goto_0

    :cond_6
    iget-object v0, p0, Lcom/samsung/android/widget/SemTipPopup;->mBubbleBackground:Landroid/widget/ImageView;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/samsung/android/widget/SemTipPopup;->mBalloonBubble:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/samsung/android/widget/SemTipPopup;->mBalloonBg1:Landroid/widget/ImageView;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/samsung/android/widget/SemTipPopup;->mBalloonBg2:Landroid/widget/ImageView;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/samsung/android/widget/SemTipPopup;->mBalloonStroke1:Landroid/widget/ImageView;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/samsung/android/widget/SemTipPopup;->mBalloonStroke2:Landroid/widget/ImageView;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/samsung/android/widget/SemTipPopup;->mMessageTextColor:Ljava/lang/Integer;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/samsung/android/widget/SemTipPopup;->mMessageView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/samsung/android/widget/SemTipPopup;->mMessageTextColor:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_7
    iget-object v0, p0, Lcom/samsung/android/widget/SemTipPopup;->mActionTextColor:Ljava/lang/Integer;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/samsung/android/widget/SemTipPopup;->mActionView:Landroid/widget/Button;

    iget-object v1, p0, Lcom/samsung/android/widget/SemTipPopup;->mActionTextColor:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_8
    iget-object v0, p0, Lcom/samsung/android/widget/SemTipPopup;->mBackgroundColor:Ljava/lang/Integer;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/samsung/android/widget/SemTipPopup;->mBubbleBackground:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/samsung/android/widget/SemTipPopup;->mBackgroundColor:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setColorFilter(I)V

    iget-object v0, p0, Lcom/samsung/android/widget/SemTipPopup;->mBalloonBubble:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/samsung/android/widget/SemTipPopup;->mBackgroundColor:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setColorFilter(I)V

    iget-object v0, p0, Lcom/samsung/android/widget/SemTipPopup;->mBalloonBg1:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/samsung/android/widget/SemTipPopup;->mBackgroundColor:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    iget-object v0, p0, Lcom/samsung/android/widget/SemTipPopup;->mBalloonBg2:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/samsung/android/widget/SemTipPopup;->mBackgroundColor:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    :cond_9
    iget-object v0, p0, Lcom/samsung/android/widget/SemTipPopup;->mBorderColor:Ljava/lang/Integer;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/samsung/android/widget/SemTipPopup;->mBubbleIcon:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/samsung/android/widget/SemTipPopup;->mBorderColor:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setColorFilter(I)V

    iget-object v0, p0, Lcom/samsung/android/widget/SemTipPopup;->mBalloonBubble:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/samsung/android/widget/SemTipPopup;->mBorderColor:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setColorFilter(I)V

    iget-object v0, p0, Lcom/samsung/android/widget/SemTipPopup;->mBalloonStroke1:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/samsung/android/widget/SemTipPopup;->mBorderColor:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    iget-object v0, p0, Lcom/samsung/android/widget/SemTipPopup;->mBalloonStroke2:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/samsung/android/widget/SemTipPopup;->mBorderColor:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    :cond_a
    return-void
.end method

.method private setMessageTextSize(F)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/widget/SemTipPopup;->mMessageView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/widget/SemTipPopup;->mMessageView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextSize(F)V

    :cond_0
    return-void
.end method

.method private showInternal()V
    .locals 5

    const/4 v4, 0x0

    iget v0, p0, Lcom/samsung/android/widget/SemTipPopup;->mState:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3

    const/4 v0, 0x1

    iput v0, p0, Lcom/samsung/android/widget/SemTipPopup;->mState:I

    iget-object v0, p0, Lcom/samsung/android/widget/SemTipPopup;->mOnStateChangeListener:Lcom/samsung/android/widget/SemTipPopup$OnStateChangeListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/widget/SemTipPopup;->mOnStateChangeListener:Lcom/samsung/android/widget/SemTipPopup$OnStateChangeListener;

    iget v1, p0, Lcom/samsung/android/widget/SemTipPopup;->mState:I

    invoke-interface {v0, v1}, Lcom/samsung/android/widget/SemTipPopup$OnStateChangeListener;->onStateChanged(I)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mIsShowing : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/android/widget/SemTipPopup;->isShowing()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/android/widget/SemTipPopup;->debugLog(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/widget/SemTipPopup;->mBubblePopup:Lcom/samsung/android/widget/SemTipPopup$TipWindow;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/widget/SemTipPopup;->mBubblePopup:Lcom/samsung/android/widget/SemTipPopup$TipWindow;

    iget-object v1, p0, Lcom/samsung/android/widget/SemTipPopup;->mParentView:Landroid/view/View;

    iget v2, p0, Lcom/samsung/android/widget/SemTipPopup;->mBubblePopupX:I

    iget v3, p0, Lcom/samsung/android/widget/SemTipPopup;->mBubblePopupY:I

    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    invoke-direct {p0}, Lcom/samsung/android/widget/SemTipPopup;->animateViewIn()V

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/widget/SemTipPopup;->mBubbleView:Landroid/view/View;

    new-instance v1, Lcom/samsung/android/widget/SemTipPopup$5;

    invoke-direct {v1, p0}, Lcom/samsung/android/widget/SemTipPopup$5;-><init>(Lcom/samsung/android/widget/SemTipPopup;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/widget/SemTipPopup;->mBalloonView:Landroid/view/View;

    new-instance v1, Lcom/samsung/android/widget/SemTipPopup$6;

    invoke-direct {v1, p0}, Lcom/samsung/android/widget/SemTipPopup$6;-><init>(Lcom/samsung/android/widget/SemTipPopup;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void

    :cond_3
    iget-object v0, p0, Lcom/samsung/android/widget/SemTipPopup;->mBalloonBubble:Landroid/widget/FrameLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/samsung/android/widget/SemTipPopup;->mBalloonPanel:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/samsung/android/widget/SemTipPopup;->mMessageView:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/samsung/android/widget/SemTipPopup;->mOnStateChangeListener:Lcom/samsung/android/widget/SemTipPopup$OnStateChangeListener;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/samsung/android/widget/SemTipPopup;->mOnStateChangeListener:Lcom/samsung/android/widget/SemTipPopup$OnStateChangeListener;

    iget v1, p0, Lcom/samsung/android/widget/SemTipPopup;->mState:I

    invoke-interface {v0, v1}, Lcom/samsung/android/widget/SemTipPopup$OnStateChangeListener;->onStateChanged(I)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mIsShowing : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/android/widget/SemTipPopup;->isShowing()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/android/widget/SemTipPopup;->debugLog(Ljava/lang/String;)V

    :cond_4
    iget-object v0, p0, Lcom/samsung/android/widget/SemTipPopup;->mBalloonPopup:Lcom/samsung/android/widget/SemTipPopup$TipWindow;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/widget/SemTipPopup;->mBalloonPopup:Lcom/samsung/android/widget/SemTipPopup$TipWindow;

    iget-object v1, p0, Lcom/samsung/android/widget/SemTipPopup;->mParentView:Landroid/view/View;

    iget v2, p0, Lcom/samsung/android/widget/SemTipPopup;->mBalloonPopupX:I

    iget v3, p0, Lcom/samsung/android/widget/SemTipPopup;->mBalloonPopupY:I

    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    goto :goto_0
.end method


# virtual methods
.method public dismiss(Z)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/widget/SemTipPopup;->mBubblePopup:Lcom/samsung/android/widget/SemTipPopup$TipWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/widget/SemTipPopup;->mBubblePopup:Lcom/samsung/android/widget/SemTipPopup$TipWindow;

    invoke-static {v0, p1}, Lcom/samsung/android/widget/SemTipPopup$TipWindow;->-wrap2(Lcom/samsung/android/widget/SemTipPopup$TipWindow;Z)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mBubblePopup.mIsDismissing = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/widget/SemTipPopup;->mBubblePopup:Lcom/samsung/android/widget/SemTipPopup$TipWindow;

    invoke-static {v1}, Lcom/samsung/android/widget/SemTipPopup$TipWindow;->-get0(Lcom/samsung/android/widget/SemTipPopup$TipWindow;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/android/widget/SemTipPopup;->debugLog(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/widget/SemTipPopup;->mBubblePopup:Lcom/samsung/android/widget/SemTipPopup$TipWindow;

    invoke-virtual {v0}, Lcom/samsung/android/widget/SemTipPopup$TipWindow;->dismiss()V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/widget/SemTipPopup;->mBalloonPopup:Lcom/samsung/android/widget/SemTipPopup$TipWindow;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/widget/SemTipPopup;->mBalloonPopup:Lcom/samsung/android/widget/SemTipPopup$TipWindow;

    invoke-static {v0, p1}, Lcom/samsung/android/widget/SemTipPopup$TipWindow;->-wrap2(Lcom/samsung/android/widget/SemTipPopup$TipWindow;Z)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mBalloonPopup.mIsDismissing = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/widget/SemTipPopup;->mBalloonPopup:Lcom/samsung/android/widget/SemTipPopup$TipWindow;

    invoke-static {v1}, Lcom/samsung/android/widget/SemTipPopup$TipWindow;->-get0(Lcom/samsung/android/widget/SemTipPopup$TipWindow;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/android/widget/SemTipPopup;->debugLog(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/widget/SemTipPopup;->mBalloonPopup:Lcom/samsung/android/widget/SemTipPopup$TipWindow;

    invoke-virtual {v0}, Lcom/samsung/android/widget/SemTipPopup$TipWindow;->dismiss()V

    :cond_1
    return-void
.end method

.method public isShowing()Z
    .locals 3

    const/4 v1, 0x0

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/samsung/android/widget/SemTipPopup;->mBubblePopup:Lcom/samsung/android/widget/SemTipPopup$TipWindow;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/samsung/android/widget/SemTipPopup;->mBubblePopup:Lcom/samsung/android/widget/SemTipPopup$TipWindow;

    invoke-virtual {v2}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v1

    :cond_0
    iget-object v2, p0, Lcom/samsung/android/widget/SemTipPopup;->mBalloonPopup:Lcom/samsung/android/widget/SemTipPopup$TipWindow;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/samsung/android/widget/SemTipPopup;->mBalloonPopup:Lcom/samsung/android/widget/SemTipPopup$TipWindow;

    invoke-virtual {v2}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    :cond_1
    if-nez v1, :cond_2

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public setAction(Ljava/lang/CharSequence;Landroid/view/View$OnClickListener;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/widget/SemTipPopup;->mActionText:Ljava/lang/CharSequence;

    iput-object p2, p0, Lcom/samsung/android/widget/SemTipPopup;->mActionClickListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method public setActionTextColor(I)V
    .locals 1

    const/high16 v0, -0x1000000

    or-int/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/widget/SemTipPopup;->mActionTextColor:Ljava/lang/Integer;

    return-void
.end method

.method public setBackgroundColor(I)V
    .locals 1

    const/high16 v0, -0x1000000

    or-int/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/widget/SemTipPopup;->mBackgroundColor:Ljava/lang/Integer;

    return-void
.end method

.method public setBorderColor(I)V
    .locals 1

    const/high16 v0, -0x1000000

    or-int/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/widget/SemTipPopup;->mBorderColor:Ljava/lang/Integer;

    return-void
.end method

.method public setExpanded(Z)V
    .locals 1

    if-eqz p1, :cond_0

    const/4 v0, 0x2

    iput v0, p0, Lcom/samsung/android/widget/SemTipPopup;->mState:I

    :cond_0
    return-void
.end method

.method public setHintDescription(Ljava/lang/CharSequence;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/widget/SemTipPopup;->mHintDescription:Ljava/lang/CharSequence;

    return-void
.end method

.method public setMessage(Ljava/lang/CharSequence;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/widget/SemTipPopup;->mMessageText:Ljava/lang/CharSequence;

    return-void
.end method

.method public setMessageTextColor(I)V
    .locals 1

    const/high16 v0, -0x1000000

    or-int/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/widget/SemTipPopup;->mMessageTextColor:Ljava/lang/Integer;

    return-void
.end method

.method public setOnStateChangeListener(Lcom/samsung/android/widget/SemTipPopup$OnStateChangeListener;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/widget/SemTipPopup;->mOnStateChangeListener:Lcom/samsung/android/widget/SemTipPopup$OnStateChangeListener;

    return-void
.end method

.method public setTargetPosition(II)V
    .locals 1

    const/4 v0, 0x0

    if-ltz p1, :cond_0

    if-gez p2, :cond_1

    :cond_0
    return-void

    :cond_1
    iput-boolean v0, p0, Lcom/samsung/android/widget/SemTipPopup;->mIsDefaultPosition:Z

    iput p1, p0, Lcom/samsung/android/widget/SemTipPopup;->mArrowPositionX:I

    iput p2, p0, Lcom/samsung/android/widget/SemTipPopup;->mArrowPositionY:I

    return-void
.end method

.method public show(I)V
    .locals 2

    const/4 v1, -0x1

    invoke-direct {p0}, Lcom/samsung/android/widget/SemTipPopup;->setInternal()V

    iget v0, p0, Lcom/samsung/android/widget/SemTipPopup;->mArrowPositionX:I

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/samsung/android/widget/SemTipPopup;->mArrowPositionY:I

    if-ne v0, v1, :cond_1

    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/widget/SemTipPopup;->calculateArrowPosition()V

    :cond_1
    if-ne p1, v1, :cond_2

    iget v0, p0, Lcom/samsung/android/widget/SemTipPopup;->mArrowPositionX:I

    iget v1, p0, Lcom/samsung/android/widget/SemTipPopup;->mArrowPositionY:I

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/widget/SemTipPopup;->calculateArrowDirection(II)V

    :goto_0
    invoke-direct {p0}, Lcom/samsung/android/widget/SemTipPopup;->calculatePopupSize()V

    invoke-direct {p0}, Lcom/samsung/android/widget/SemTipPopup;->calculatePopupPosition()V

    invoke-direct {p0}, Lcom/samsung/android/widget/SemTipPopup;->setBubblePanel()V

    invoke-direct {p0}, Lcom/samsung/android/widget/SemTipPopup;->setBalloonPanel()V

    invoke-direct {p0}, Lcom/samsung/android/widget/SemTipPopup;->showInternal()V

    return-void

    :cond_2
    iput p1, p0, Lcom/samsung/android/widget/SemTipPopup;->mArrowDirection:I

    goto :goto_0
.end method

.method public update()V
    .locals 2

    iget v0, p0, Lcom/samsung/android/widget/SemTipPopup;->mArrowDirection:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/widget/SemTipPopup;->update(IZ)V

    return-void
.end method

.method public update(IZ)V
    .locals 5

    const/4 v1, -0x1

    invoke-virtual {p0}, Lcom/samsung/android/widget/SemTipPopup;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/widget/SemTipPopup;->mParentView:Landroid/view/View;

    if-nez v0, :cond_1

    :cond_0
    return-void

    :cond_1
    invoke-direct {p0}, Lcom/samsung/android/widget/SemTipPopup;->setInternal()V

    iput v1, p0, Lcom/samsung/android/widget/SemTipPopup;->mBalloonX:I

    iput v1, p0, Lcom/samsung/android/widget/SemTipPopup;->mBalloonY:I

    iget-boolean v0, p0, Lcom/samsung/android/widget/SemTipPopup;->mIsDefaultPosition:Z

    if-eqz v0, :cond_2

    const-string/jumbo v0, "update - default position"

    invoke-direct {p0, v0}, Lcom/samsung/android/widget/SemTipPopup;->debugLog(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/widget/SemTipPopup;->calculateArrowPosition()V

    :cond_2
    if-ne p1, v1, :cond_4

    iget v0, p0, Lcom/samsung/android/widget/SemTipPopup;->mArrowPositionX:I

    iget v1, p0, Lcom/samsung/android/widget/SemTipPopup;->mArrowPositionY:I

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/widget/SemTipPopup;->calculateArrowDirection(II)V

    :goto_0
    invoke-direct {p0}, Lcom/samsung/android/widget/SemTipPopup;->calculatePopupSize()V

    invoke-direct {p0}, Lcom/samsung/android/widget/SemTipPopup;->calculatePopupPosition()V

    invoke-direct {p0}, Lcom/samsung/android/widget/SemTipPopup;->setBubblePanel()V

    invoke-direct {p0}, Lcom/samsung/android/widget/SemTipPopup;->setBalloonPanel()V

    iget v0, p0, Lcom/samsung/android/widget/SemTipPopup;->mState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_5

    iget-object v0, p0, Lcom/samsung/android/widget/SemTipPopup;->mBubblePopup:Lcom/samsung/android/widget/SemTipPopup$TipWindow;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/widget/SemTipPopup;->mBubblePopup:Lcom/samsung/android/widget/SemTipPopup$TipWindow;

    iget v1, p0, Lcom/samsung/android/widget/SemTipPopup;->mBubblePopupX:I

    iget v2, p0, Lcom/samsung/android/widget/SemTipPopup;->mBubblePopupY:I

    iget-object v3, p0, Lcom/samsung/android/widget/SemTipPopup;->mBubblePopup:Lcom/samsung/android/widget/SemTipPopup$TipWindow;

    invoke-virtual {v3}, Landroid/widget/PopupWindow;->getWidth()I

    move-result v3

    iget-object v4, p0, Lcom/samsung/android/widget/SemTipPopup;->mBubblePopup:Lcom/samsung/android/widget/SemTipPopup$TipWindow;

    invoke-virtual {v4}, Landroid/widget/PopupWindow;->getHeight()I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/PopupWindow;->update(IIII)V

    if-eqz p2, :cond_3

    const-string/jumbo v0, "Timer Reset!"

    invoke-direct {p0, v0}, Lcom/samsung/android/widget/SemTipPopup;->debugLog(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/widget/SemTipPopup;->scheduleTimeout()V

    :cond_3
    :goto_1
    return-void

    :cond_4
    iput p1, p0, Lcom/samsung/android/widget/SemTipPopup;->mArrowDirection:I

    goto :goto_0

    :cond_5
    iget v0, p0, Lcom/samsung/android/widget/SemTipPopup;->mState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lcom/samsung/android/widget/SemTipPopup;->mBalloonPopup:Lcom/samsung/android/widget/SemTipPopup$TipWindow;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/widget/SemTipPopup;->mBalloonPopup:Lcom/samsung/android/widget/SemTipPopup$TipWindow;

    iget v1, p0, Lcom/samsung/android/widget/SemTipPopup;->mBalloonPopupX:I

    iget v2, p0, Lcom/samsung/android/widget/SemTipPopup;->mBalloonPopupY:I

    iget-object v3, p0, Lcom/samsung/android/widget/SemTipPopup;->mBalloonPopup:Lcom/samsung/android/widget/SemTipPopup$TipWindow;

    invoke-virtual {v3}, Landroid/widget/PopupWindow;->getWidth()I

    move-result v3

    iget-object v4, p0, Lcom/samsung/android/widget/SemTipPopup;->mBalloonPopup:Lcom/samsung/android/widget/SemTipPopup$TipWindow;

    invoke-virtual {v4}, Landroid/widget/PopupWindow;->getHeight()I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/PopupWindow;->update(IIII)V

    goto :goto_1
.end method
