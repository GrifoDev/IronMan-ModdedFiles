.class public Lcom/android/incallui/widget/SecVideoButton;
.super Landroid/widget/Button;


# static fields
.field private static final SHOW_BTN_BG:Z


# instance fields
.field private mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

.field private mContext:Landroid/content/Context;

.field private mMeasuredHeight:I

.field private mMeasuredWidth:I

.field private mRippleEffectHeight:I

.field private mRippleEffectWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    const-string v1, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_SHOW_BUTTON_BG"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/incallui/widget/SecVideoButton;->SHOW_BTN_BG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, p1}, Lcom/android/incallui/widget/SecVideoButton;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/Button;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-direct {p0, p1}, Lcom/android/incallui/widget/SecVideoButton;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/Button;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-direct {p0, p1}, Lcom/android/incallui/widget/SecVideoButton;->init(Landroid/content/Context;)V

    return-void
.end method

.method private init(Landroid/content/Context;)V
    .locals 3

    const/4 v2, 0x0

    iput-object p1, p0, Lcom/android/incallui/widget/SecVideoButton;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0108

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/incallui/widget/SecVideoButton;->mRippleEffectWidth:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0107

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/incallui/widget/SecVideoButton;->mRippleEffectHeight:I

    iput v2, p0, Lcom/android/incallui/widget/SecVideoButton;->mMeasuredWidth:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a000b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/incallui/widget/SecVideoButton;->mMeasuredHeight:I

    const/4 v0, 0x1

    new-array v0, v0, [I

    const v1, 0x101039c

    aput v1, v0, v2

    if-eqz v0, :cond_0

    invoke-virtual {p1, v0}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/incallui/widget/SecVideoButton;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/widget/SecVideoButton;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/android/incallui/widget/SecVideoButton;->updateButtonBackground()V

    :cond_1
    return-void
.end method

.method private updateButtonBackground()V
    .locals 1

    invoke-static {}, Lcom/android/incallui/InCallUISystemDB;->isEnabledShowButtonBackground()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/incallui/util/VideoCallUtils;->isQCIF()Z

    move-result v0

    if-eqz v0, :cond_1

    const v0, 0x7f0203a2

    invoke-virtual {p0, v0}, Lcom/android/incallui/widget/SecVideoButton;->setBackgroundResource(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const v0, 0x7f0203a6

    invoke-virtual {p0, v0}, Lcom/android/incallui/widget/SecVideoButton;->setBackgroundResource(I)V

    goto :goto_0
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 4

    invoke-static {}, Lcom/android/incallui/util/VideoCallUtils;->isQCIF()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Lcom/android/incallui/widget/SecVideoButton;->getMeasuredWidth()I

    move-result v1

    iget v0, p0, Lcom/android/incallui/widget/SecVideoButton;->mMeasuredWidth:I

    if-nez v0, :cond_3

    move v0, v1

    :goto_0
    iput v0, p0, Lcom/android/incallui/widget/SecVideoButton;->mMeasuredWidth:I

    iget v0, p0, Lcom/android/incallui/widget/SecVideoButton;->mMeasuredWidth:I

    if-le v0, v1, :cond_0

    iput v1, p0, Lcom/android/incallui/widget/SecVideoButton;->mMeasuredWidth:I

    :cond_0
    invoke-virtual {p0}, Lcom/android/incallui/widget/SecVideoButton;->getMeasuredHeight()I

    move-result v1

    iget v0, p0, Lcom/android/incallui/widget/SecVideoButton;->mMeasuredHeight:I

    if-nez v0, :cond_4

    move v0, v1

    :goto_1
    iput v0, p0, Lcom/android/incallui/widget/SecVideoButton;->mMeasuredHeight:I

    iget v0, p0, Lcom/android/incallui/widget/SecVideoButton;->mMeasuredHeight:I

    if-le v0, v1, :cond_1

    iput v1, p0, Lcom/android/incallui/widget/SecVideoButton;->mMeasuredHeight:I

    :cond_1
    iget v0, p0, Lcom/android/incallui/widget/SecVideoButton;->mMeasuredWidth:I

    iget v1, p0, Lcom/android/incallui/widget/SecVideoButton;->mMeasuredHeight:I

    iget v2, p0, Lcom/android/incallui/widget/SecVideoButton;->mRippleEffectWidth:I

    iget v3, p0, Lcom/android/incallui/widget/SecVideoButton;->mRippleEffectHeight:I

    invoke-static {p0, v0, v1, v2, v3}, Lcom/android/incallui/util/GraphicResourceUtils;->setRippleSize(Landroid/view/View;IIII)V

    :goto_2
    iget-object v0, p0, Lcom/android/incallui/widget/SecVideoButton;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/android/incallui/widget/SecVideoButton;->updateButtonBackground()V

    :cond_2
    invoke-super {p0, p1}, Landroid/widget/Button;->onDraw(Landroid/graphics/Canvas;)V

    return-void

    :cond_3
    iget v0, p0, Lcom/android/incallui/widget/SecVideoButton;->mMeasuredWidth:I

    goto :goto_0

    :cond_4
    iget v0, p0, Lcom/android/incallui/widget/SecVideoButton;->mMeasuredHeight:I

    goto :goto_1

    :cond_5
    invoke-virtual {p0}, Lcom/android/incallui/widget/SecVideoButton;->getMeasuredWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/incallui/widget/SecVideoButton;->getMeasuredHeight()I

    move-result v1

    iget v2, p0, Lcom/android/incallui/widget/SecVideoButton;->mRippleEffectWidth:I

    iget v3, p0, Lcom/android/incallui/widget/SecVideoButton;->mRippleEffectHeight:I

    invoke-static {p0, v0, v1, v2, v3}, Lcom/android/incallui/util/GraphicResourceUtils;->setRippleSize(Landroid/view/View;IIII)V

    goto :goto_2
.end method

.method public sendAccessibilityEvent(I)V
    .locals 5

    invoke-static {}, Lcom/android/incallui/InCallUISystemDB;->isUniversalSwitchEnable()Z

    move-result v0

    if-nez v0, :cond_1

    const v0, 0x8000

    if-ne v0, p1, :cond_1

    iget-object v0, p0, Lcom/android/incallui/widget/SecVideoButton;->mContext:Landroid/content/Context;

    const-string v1, "accessibility"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v1, 0x4000

    invoke-static {v1}, Landroid/view/accessibility/AccessibilityEvent;->obtain(I)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/incallui/widget/SecVideoButton;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v2

    iget-object v3, p0, Lcom/android/incallui/widget/SecVideoButton;->mContext:Landroid/content/Context;

    const v4, 0x7f0900df

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/android/incallui/widget/SecVideoButton;->isEnabled()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v2

    iget-object v3, p0, Lcom/android/incallui/widget/SecVideoButton;->mContext:Landroid/content/Context;

    const v4, 0x7f090334

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityManager;->sendAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    :goto_0
    return-void

    :cond_1
    invoke-super {p0, p1}, Landroid/widget/Button;->sendAccessibilityEvent(I)V

    goto :goto_0
.end method
