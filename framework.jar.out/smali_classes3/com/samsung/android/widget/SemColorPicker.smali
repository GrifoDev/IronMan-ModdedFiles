.class public Lcom/samsung/android/widget/SemColorPicker;
.super Landroid/widget/LinearLayout;
.source "SemColorPicker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/widget/SemColorPicker$1;,
        Lcom/samsung/android/widget/SemColorPicker$OnColorChangedListener;,
        Lcom/samsung/android/widget/SemColorPicker$PickedColor;
    }
.end annotation


# static fields
.field static final RECENT_COLOR_SLOT_COUNT:I = 0x6

.field private static final RIPPLE_EFFECT_OPACITY:I = 0x3d

.field private static final TAG:Ljava/lang/String; = "SemColorPicker"


# instance fields
.field private mColorDescription:[Ljava/lang/String;

.field private final mContext:Landroid/content/Context;

.field private mCurrentColorView:Landroid/widget/ImageView;

.field private mGradientColorSeekBar:Lcom/samsung/android/widget/SemGradientColorSeekBar;

.field private mGradientColorWheel:Lcom/samsung/android/widget/SemGradientColorWheel;

.field private final mImageButtonClickListener:Landroid/view/View$OnClickListener;

.field private mIsInputFromUser:Z

.field private mOnColorChangedListener:Lcom/samsung/android/widget/SemColorPicker$OnColorChangedListener;

.field private mPickedColor:Lcom/samsung/android/widget/SemColorPicker$PickedColor;

.field private mPickedColorView:Landroid/widget/ImageView;

.field private final mRecentColorInfo:Lcom/samsung/android/widget/SemRecentColorInfo;

.field private mRecentColorListLayout:Landroid/widget/LinearLayout;

.field private final mRecentColorValues:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mResources:Landroid/content/res/Resources;

.field private mSelectedColorBackground:Landroid/graphics/drawable/GradientDrawable;


# direct methods
.method static synthetic -get0(Lcom/samsung/android/widget/SemColorPicker;)Lcom/samsung/android/widget/SemGradientColorSeekBar;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/widget/SemColorPicker;->mGradientColorSeekBar:Lcom/samsung/android/widget/SemGradientColorSeekBar;

    return-object v0
.end method

.method static synthetic -get1(Lcom/samsung/android/widget/SemColorPicker;)Lcom/samsung/android/widget/SemColorPicker$OnColorChangedListener;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/widget/SemColorPicker;->mOnColorChangedListener:Lcom/samsung/android/widget/SemColorPicker$OnColorChangedListener;

    return-object v0
.end method

.method static synthetic -get2(Lcom/samsung/android/widget/SemColorPicker;)Lcom/samsung/android/widget/SemColorPicker$PickedColor;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/widget/SemColorPicker;->mPickedColor:Lcom/samsung/android/widget/SemColorPicker$PickedColor;

    return-object v0
.end method

.method static synthetic -get3(Lcom/samsung/android/widget/SemColorPicker;)Landroid/widget/LinearLayout;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/widget/SemColorPicker;->mRecentColorListLayout:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic -get4(Lcom/samsung/android/widget/SemColorPicker;)Ljava/util/LinkedList;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/widget/SemColorPicker;->mRecentColorValues:Ljava/util/LinkedList;

    return-object v0
.end method

.method static synthetic -get5(Lcom/samsung/android/widget/SemColorPicker;)Landroid/graphics/drawable/GradientDrawable;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/widget/SemColorPicker;->mSelectedColorBackground:Landroid/graphics/drawable/GradientDrawable;

    return-object v0
.end method

.method static synthetic -set0(Lcom/samsung/android/widget/SemColorPicker;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/widget/SemColorPicker;->mIsInputFromUser:Z

    return p1
.end method

.method static synthetic -wrap0(Lcom/samsung/android/widget/SemColorPicker;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/widget/SemColorPicker;->mapColorOnColorWheel(I)V

    return-void
.end method

.method static synthetic -wrap1(Lcom/samsung/android/widget/SemColorPicker;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/widget/SemColorPicker;->updateCurrentColor()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/widget/SemColorPicker;->mIsInputFromUser:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/widget/SemColorPicker;->mColorDescription:[Ljava/lang/String;

    new-instance v0, Lcom/samsung/android/widget/SemColorPicker$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/widget/SemColorPicker$1;-><init>(Lcom/samsung/android/widget/SemColorPicker;)V

    iput-object v0, p0, Lcom/samsung/android/widget/SemColorPicker;->mImageButtonClickListener:Landroid/view/View$OnClickListener;

    iput-object p1, p0, Lcom/samsung/android/widget/SemColorPicker;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/widget/SemColorPicker;->mResources:Landroid/content/res/Resources;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x10900fb

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    new-instance v0, Lcom/samsung/android/widget/SemRecentColorInfo;

    invoke-direct {v0}, Lcom/samsung/android/widget/SemRecentColorInfo;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/widget/SemColorPicker;->mRecentColorInfo:Lcom/samsung/android/widget/SemRecentColorInfo;

    iget-object v0, p0, Lcom/samsung/android/widget/SemColorPicker;->mRecentColorInfo:Lcom/samsung/android/widget/SemRecentColorInfo;

    invoke-virtual {v0}, Lcom/samsung/android/widget/SemRecentColorInfo;->getRecentColorInfo()Ljava/util/LinkedList;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/widget/SemColorPicker;->mRecentColorValues:Ljava/util/LinkedList;

    invoke-direct {p0}, Lcom/samsung/android/widget/SemColorPicker;->init()V

    return-void
.end method

.method private init()V
    .locals 1

    new-instance v0, Lcom/samsung/android/widget/SemColorPicker$PickedColor;

    invoke-direct {v0}, Lcom/samsung/android/widget/SemColorPicker$PickedColor;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/widget/SemColorPicker;->mPickedColor:Lcom/samsung/android/widget/SemColorPicker$PickedColor;

    invoke-direct {p0}, Lcom/samsung/android/widget/SemColorPicker;->initCurrentColorView()V

    invoke-direct {p0}, Lcom/samsung/android/widget/SemColorPicker;->initGradientColorSeekBar()V

    invoke-direct {p0}, Lcom/samsung/android/widget/SemColorPicker;->initGradientColorWheel()V

    invoke-direct {p0}, Lcom/samsung/android/widget/SemColorPicker;->initRecentColorLayout()V

    invoke-direct {p0}, Lcom/samsung/android/widget/SemColorPicker;->updateCurrentColor()V

    invoke-direct {p0}, Lcom/samsung/android/widget/SemColorPicker;->setInitialColors()V

    return-void
.end method

.method private initCurrentColorView()V
    .locals 6

    const v5, 0x1040431

    const v2, 0x10204ae

    invoke-virtual {p0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/samsung/android/widget/SemColorPicker;->mCurrentColorView:Landroid/widget/ImageView;

    const v2, 0x10204b2

    invoke-virtual {p0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/samsung/android/widget/SemColorPicker;->mPickedColorView:Landroid/widget/ImageView;

    const v2, 0x10204b0

    invoke-virtual {p0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const v2, 0x10204b1

    invoke-virtual {p0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/widget/SemColorPicker;->mPickedColorView:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    check-cast v2, Landroid/graphics/drawable/GradientDrawable;

    iput-object v2, p0, Lcom/samsung/android/widget/SemColorPicker;->mSelectedColorBackground:Landroid/graphics/drawable/GradientDrawable;

    iget-object v2, p0, Lcom/samsung/android/widget/SemColorPicker;->mSelectedColorBackground:Landroid/graphics/drawable/GradientDrawable;

    iget-object v3, p0, Lcom/samsung/android/widget/SemColorPicker;->mPickedColor:Lcom/samsung/android/widget/SemColorPicker$PickedColor;

    invoke-virtual {v3}, Lcom/samsung/android/widget/SemColorPicker$PickedColor;->getColor()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/samsung/android/widget/SemColorPicker;->mResources:Landroid/content/res/Resources;

    const v4, 0x104042a

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/widget/SemColorPicker;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/samsung/android/widget/SemColorPicker;->mResources:Landroid/content/res/Resources;

    const v4, 0x104042b

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/widget/SemColorPicker;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private initGradientColorSeekBar()V
    .locals 4

    const v1, 0x10204ad

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/widget/SemGradientColorSeekBar;

    iput-object v1, p0, Lcom/samsung/android/widget/SemColorPicker;->mGradientColorSeekBar:Lcom/samsung/android/widget/SemGradientColorSeekBar;

    const v1, 0x10204ac

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/samsung/android/widget/SemColorPicker;->mGradientColorSeekBar:Lcom/samsung/android/widget/SemGradientColorSeekBar;

    iget-object v2, p0, Lcom/samsung/android/widget/SemColorPicker;->mPickedColor:Lcom/samsung/android/widget/SemColorPicker$PickedColor;

    invoke-virtual {v2}, Lcom/samsung/android/widget/SemColorPicker$PickedColor;->getColor()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/widget/SemGradientColorSeekBar;->init(I)V

    iget-object v1, p0, Lcom/samsung/android/widget/SemColorPicker;->mGradientColorSeekBar:Lcom/samsung/android/widget/SemGradientColorSeekBar;

    new-instance v2, Lcom/samsung/android/widget/SemColorPicker$3;

    invoke-direct {v2, p0}, Lcom/samsung/android/widget/SemColorPicker$3;-><init>(Lcom/samsung/android/widget/SemColorPicker;)V

    invoke-virtual {v1, v2}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    iget-object v1, p0, Lcom/samsung/android/widget/SemColorPicker;->mGradientColorSeekBar:Lcom/samsung/android/widget/SemGradientColorSeekBar;

    new-instance v2, Lcom/samsung/android/widget/SemColorPicker$4;

    invoke-direct {v2, p0}, Lcom/samsung/android/widget/SemColorPicker$4;-><init>(Lcom/samsung/android/widget/SemColorPicker;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/samsung/android/widget/SemColorPicker;->mResources:Landroid/content/res/Resources;

    const v3, 0x104042f

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/widget/SemColorPicker;->mResources:Landroid/content/res/Resources;

    const v3, 0x104042e

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/widget/SemColorPicker;->mResources:Landroid/content/res/Resources;

    const v3, 0x1040433

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private initGradientColorWheel()V
    .locals 4

    const v0, 0x10204ab

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/widget/SemGradientColorWheel;

    iput-object v0, p0, Lcom/samsung/android/widget/SemColorPicker;->mGradientColorWheel:Lcom/samsung/android/widget/SemGradientColorWheel;

    iget-object v0, p0, Lcom/samsung/android/widget/SemColorPicker;->mGradientColorWheel:Lcom/samsung/android/widget/SemGradientColorWheel;

    iget-object v1, p0, Lcom/samsung/android/widget/SemColorPicker;->mPickedColor:Lcom/samsung/android/widget/SemColorPicker$PickedColor;

    invoke-virtual {v1}, Lcom/samsung/android/widget/SemColorPicker$PickedColor;->getColor()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/widget/SemGradientColorWheel;->setColor(I)V

    iget-object v0, p0, Lcom/samsung/android/widget/SemColorPicker;->mGradientColorWheel:Lcom/samsung/android/widget/SemGradientColorWheel;

    new-instance v1, Lcom/samsung/android/widget/SemColorPicker$2;

    invoke-direct {v1, p0}, Lcom/samsung/android/widget/SemColorPicker$2;-><init>(Lcom/samsung/android/widget/SemColorPicker;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/widget/SemGradientColorWheel;->setOnColorWheelInterface(Lcom/samsung/android/widget/SemGradientColorWheel$OnWheelColorChangedListener;)V

    iget-object v0, p0, Lcom/samsung/android/widget/SemColorPicker;->mGradientColorWheel:Lcom/samsung/android/widget/SemGradientColorWheel;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/samsung/android/widget/SemColorPicker;->mResources:Landroid/content/res/Resources;

    const v3, 0x104042d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/widget/SemColorPicker;->mResources:Landroid/content/res/Resources;

    const v3, 0x104042c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/widget/SemColorPicker;->mResources:Landroid/content/res/Resources;

    const v3, 0x1040433

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private initRecentColorLayout()V
    .locals 3

    const v0, 0x10204b3

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/samsung/android/widget/SemColorPicker;->mRecentColorListLayout:Landroid/widget/LinearLayout;

    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    iget-object v1, p0, Lcom/samsung/android/widget/SemColorPicker;->mResources:Landroid/content/res/Resources;

    const v2, 0x1040434

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/samsung/android/widget/SemColorPicker;->mResources:Landroid/content/res/Resources;

    const v2, 0x1040435

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/samsung/android/widget/SemColorPicker;->mResources:Landroid/content/res/Resources;

    const v2, 0x1040436

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/samsung/android/widget/SemColorPicker;->mResources:Landroid/content/res/Resources;

    const v2, 0x1040437

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/samsung/android/widget/SemColorPicker;->mResources:Landroid/content/res/Resources;

    const v2, 0x1040438

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/samsung/android/widget/SemColorPicker;->mResources:Landroid/content/res/Resources;

    const v2, 0x1040439

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    iput-object v0, p0, Lcom/samsung/android/widget/SemColorPicker;->mColorDescription:[Ljava/lang/String;

    return-void
.end method

.method private mapColorOnColorWheel(I)V
    .locals 3

    iget-object v1, p0, Lcom/samsung/android/widget/SemColorPicker;->mPickedColor:Lcom/samsung/android/widget/SemColorPicker$PickedColor;

    invoke-virtual {v1, p1}, Lcom/samsung/android/widget/SemColorPicker$PickedColor;->setColor(I)V

    iget-object v1, p0, Lcom/samsung/android/widget/SemColorPicker;->mGradientColorWheel:Lcom/samsung/android/widget/SemGradientColorWheel;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/widget/SemColorPicker;->mGradientColorWheel:Lcom/samsung/android/widget/SemGradientColorWheel;

    invoke-virtual {v1, p1}, Lcom/samsung/android/widget/SemGradientColorWheel;->setColor(I)V

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/widget/SemColorPicker;->mGradientColorSeekBar:Lcom/samsung/android/widget/SemGradientColorSeekBar;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/widget/SemColorPicker;->mGradientColorSeekBar:Lcom/samsung/android/widget/SemGradientColorSeekBar;

    invoke-virtual {v1, p1}, Lcom/samsung/android/widget/SemGradientColorSeekBar;->restoreColor(I)V

    :cond_1
    iget-object v1, p0, Lcom/samsung/android/widget/SemColorPicker;->mSelectedColorBackground:Landroid/graphics/drawable/GradientDrawable;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/samsung/android/widget/SemColorPicker;->mSelectedColorBackground:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    :cond_2
    iget-object v1, p0, Lcom/samsung/android/widget/SemColorPicker;->mGradientColorWheel:Lcom/samsung/android/widget/SemGradientColorWheel;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/samsung/android/widget/SemColorPicker;->mPickedColor:Lcom/samsung/android/widget/SemColorPicker$PickedColor;

    invoke-virtual {v1}, Lcom/samsung/android/widget/SemColorPicker$PickedColor;->getV()F

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/widget/SemColorPicker;->mPickedColor:Lcom/samsung/android/widget/SemColorPicker$PickedColor;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v1, v2}, Lcom/samsung/android/widget/SemColorPicker$PickedColor;->setV(F)V

    iget-object v1, p0, Lcom/samsung/android/widget/SemColorPicker;->mGradientColorWheel:Lcom/samsung/android/widget/SemGradientColorWheel;

    iget-object v2, p0, Lcom/samsung/android/widget/SemColorPicker;->mPickedColor:Lcom/samsung/android/widget/SemColorPicker$PickedColor;

    invoke-virtual {v2}, Lcom/samsung/android/widget/SemColorPicker$PickedColor;->getColor()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/widget/SemGradientColorWheel;->updateCursorColor(I)V

    iget-object v1, p0, Lcom/samsung/android/widget/SemColorPicker;->mPickedColor:Lcom/samsung/android/widget/SemColorPicker$PickedColor;

    invoke-virtual {v1, v0}, Lcom/samsung/android/widget/SemColorPicker$PickedColor;->setV(F)V

    :cond_3
    return-void
.end method

.method private setImageColor(Landroid/view/View;Ljava/lang/Integer;)V
    .locals 8

    const/4 v7, 0x0

    const/4 v6, 0x1

    const/4 v5, 0x0

    iget-object v3, p0, Lcom/samsung/android/widget/SemColorPicker;->mContext:Landroid/content/Context;

    const v4, 0x10807cb

    invoke-virtual {v3, v4}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/GradientDrawable;

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    :cond_0
    const/16 v3, 0x3d

    invoke-static {v3, v5, v5, v5}, Landroid/graphics/Color;->argb(IIII)I

    move-result v2

    new-instance v1, Landroid/content/res/ColorStateList;

    new-array v3, v6, [[I

    new-array v4, v5, [I

    aput-object v4, v3, v5

    new-array v4, v6, [I

    aput v2, v4, v5

    invoke-direct {v1, v3, v4}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    new-instance v3, Landroid/graphics/drawable/RippleDrawable;

    invoke-direct {v3, v1, v0, v7}, Landroid/graphics/drawable/RippleDrawable;-><init>(Landroid/content/res/ColorStateList;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p1, v3}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v3, p0, Lcom/samsung/android/widget/SemColorPicker;->mImageButtonClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private setInitialColors()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/widget/SemColorPicker;->mPickedColor:Lcom/samsung/android/widget/SemColorPicker$PickedColor;

    invoke-virtual {v0}, Lcom/samsung/android/widget/SemColorPicker$PickedColor;->getColor()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/samsung/android/widget/SemColorPicker;->mapColorOnColorWheel(I)V

    return-void
.end method

.method private updateCurrentColor()V
    .locals 2

    iget-object v1, p0, Lcom/samsung/android/widget/SemColorPicker;->mPickedColor:Lcom/samsung/android/widget/SemColorPicker$PickedColor;

    invoke-virtual {v1}, Lcom/samsung/android/widget/SemColorPicker$PickedColor;->getColor()I

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/widget/SemColorPicker;->mGradientColorSeekBar:Lcom/samsung/android/widget/SemGradientColorSeekBar;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/widget/SemColorPicker;->mGradientColorSeekBar:Lcom/samsung/android/widget/SemGradientColorSeekBar;

    invoke-virtual {v1, v0}, Lcom/samsung/android/widget/SemGradientColorSeekBar;->changeColorBase(I)V

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/widget/SemColorPicker;->mSelectedColorBackground:Landroid/graphics/drawable/GradientDrawable;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/widget/SemColorPicker;->mSelectedColorBackground:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    :cond_1
    iget-object v1, p0, Lcom/samsung/android/widget/SemColorPicker;->mGradientColorWheel:Lcom/samsung/android/widget/SemGradientColorWheel;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/samsung/android/widget/SemColorPicker;->mGradientColorWheel:Lcom/samsung/android/widget/SemGradientColorWheel;

    invoke-virtual {v1, v0}, Lcom/samsung/android/widget/SemGradientColorWheel;->updateCursorColor(I)V

    :cond_2
    iget-object v1, p0, Lcom/samsung/android/widget/SemColorPicker;->mOnColorChangedListener:Lcom/samsung/android/widget/SemColorPicker$OnColorChangedListener;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/samsung/android/widget/SemColorPicker;->mOnColorChangedListener:Lcom/samsung/android/widget/SemColorPicker$OnColorChangedListener;

    invoke-interface {v1, v0}, Lcom/samsung/android/widget/SemColorPicker$OnColorChangedListener;->onColorChanged(I)V

    :cond_3
    return-void
.end method


# virtual methods
.method public getRecentColorInfo()Lcom/samsung/android/widget/SemRecentColorInfo;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/widget/SemColorPicker;->mRecentColorInfo:Lcom/samsung/android/widget/SemRecentColorInfo;

    return-object v0
.end method

.method public isUserInputValid()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/widget/SemColorPicker;->mIsInputFromUser:Z

    return v0
.end method

.method public saveSelectedColor()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/widget/SemColorPicker;->mRecentColorInfo:Lcom/samsung/android/widget/SemRecentColorInfo;

    iget-object v1, p0, Lcom/samsung/android/widget/SemColorPicker;->mPickedColor:Lcom/samsung/android/widget/SemColorPicker$PickedColor;

    invoke-virtual {v1}, Lcom/samsung/android/widget/SemColorPicker$PickedColor;->getColor()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/widget/SemRecentColorInfo;->saveSelectedColor(I)V

    return-void
.end method

.method public setOnColorChangedListener(Lcom/samsung/android/widget/SemColorPicker$OnColorChangedListener;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/widget/SemColorPicker;->mOnColorChangedListener:Lcom/samsung/android/widget/SemColorPicker$OnColorChangedListener;

    return-void
.end method

.method public updateRecentColorLayout()V
    .locals 13

    const/4 v12, 0x1

    const/4 v11, 0x0

    iget-object v8, p0, Lcom/samsung/android/widget/SemColorPicker;->mRecentColorValues:Ljava/util/LinkedList;

    if-eqz v8, :cond_0

    iget-object v8, p0, Lcom/samsung/android/widget/SemColorPicker;->mRecentColorValues:Ljava/util/LinkedList;

    invoke-virtual {v8}, Ljava/util/LinkedList;->size()I

    move-result v7

    :goto_0
    iget-object v8, p0, Lcom/samsung/android/widget/SemColorPicker;->mContext:Landroid/content/Context;

    const v9, 0x10601ab

    invoke-virtual {v8, v9}, Landroid/content/Context;->getColor(I)I

    move-result v2

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, ", "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/samsung/android/widget/SemColorPicker;->mResources:Landroid/content/res/Resources;

    const v10, 0x1040432

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x0

    :goto_1
    const/4 v8, 0x6

    if-ge v4, v8, :cond_2

    iget-object v8, p0, Lcom/samsung/android/widget/SemColorPicker;->mRecentColorListLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v8, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    if-ge v4, v7, :cond_1

    iget-object v8, p0, Lcom/samsung/android/widget/SemColorPicker;->mRecentColorValues:Ljava/util/LinkedList;

    invoke-virtual {v8, v4}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-direct {p0, v6, v8}, Lcom/samsung/android/widget/SemColorPicker;->setImageColor(Landroid/view/View;Ljava/lang/Integer;)V

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, p0, Lcom/samsung/android/widget/SemColorPicker;->mColorDescription:[Ljava/lang/String;

    aget-object v9, v9, v4

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    invoke-virtual {v6, v12}, Landroid/view/View;->setFocusable(Z)V

    invoke-virtual {v6, v12}, Landroid/view/View;->setClickable(Z)V

    :goto_2
    invoke-virtual {v6, v11}, Landroid/view/View;->setVisibility(I)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_0
    const/4 v7, 0x0

    goto :goto_0

    :cond_1
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-direct {p0, v6, v8}, Lcom/samsung/android/widget/SemColorPicker;->setImageColor(Landroid/view/View;Ljava/lang/Integer;)V

    invoke-virtual {v6, v11}, Landroid/view/View;->setFocusable(Z)V

    invoke-virtual {v6, v11}, Landroid/view/View;->setClickable(Z)V

    goto :goto_2

    :cond_2
    iget-object v8, p0, Lcom/samsung/android/widget/SemColorPicker;->mRecentColorInfo:Lcom/samsung/android/widget/SemRecentColorInfo;

    invoke-virtual {v8}, Lcom/samsung/android/widget/SemRecentColorInfo;->getCurrentColor()Ljava/lang/Integer;

    move-result-object v8

    if-eqz v8, :cond_5

    iget-object v8, p0, Lcom/samsung/android/widget/SemColorPicker;->mRecentColorInfo:Lcom/samsung/android/widget/SemRecentColorInfo;

    invoke-virtual {v8}, Lcom/samsung/android/widget/SemRecentColorInfo;->getCurrentColor()Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v8, p0, Lcom/samsung/android/widget/SemColorPicker;->mCurrentColorView:Landroid/widget/ImageView;

    invoke-virtual {v8}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v8

    check-cast v8, Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v8, v0}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    iget-object v8, p0, Lcom/samsung/android/widget/SemColorPicker;->mPickedColorView:Landroid/widget/ImageView;

    invoke-virtual {v8}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v8

    check-cast v8, Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v8, v0}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    invoke-direct {p0, v0}, Lcom/samsung/android/widget/SemColorPicker;->mapColorOnColorWheel(I)V

    :cond_3
    :goto_3
    iget-object v8, p0, Lcom/samsung/android/widget/SemColorPicker;->mRecentColorInfo:Lcom/samsung/android/widget/SemRecentColorInfo;

    invoke-virtual {v8}, Lcom/samsung/android/widget/SemRecentColorInfo;->getNewColor()Ljava/lang/Integer;

    move-result-object v8

    if-eqz v8, :cond_4

    iget-object v8, p0, Lcom/samsung/android/widget/SemColorPicker;->mRecentColorInfo:Lcom/samsung/android/widget/SemRecentColorInfo;

    invoke-virtual {v8}, Lcom/samsung/android/widget/SemRecentColorInfo;->getNewColor()Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v5

    iget-object v8, p0, Lcom/samsung/android/widget/SemColorPicker;->mPickedColorView:Landroid/widget/ImageView;

    invoke-virtual {v8}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v8

    check-cast v8, Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v8, v5}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    invoke-direct {p0, v5}, Lcom/samsung/android/widget/SemColorPicker;->mapColorOnColorWheel(I)V

    :cond_4
    return-void

    :cond_5
    if-eqz v7, :cond_3

    iget-object v8, p0, Lcom/samsung/android/widget/SemColorPicker;->mRecentColorValues:Ljava/util/LinkedList;

    invoke-virtual {v8, v11}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget-object v8, p0, Lcom/samsung/android/widget/SemColorPicker;->mCurrentColorView:Landroid/widget/ImageView;

    invoke-virtual {v8}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v8

    check-cast v8, Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v8, v3}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    iget-object v8, p0, Lcom/samsung/android/widget/SemColorPicker;->mPickedColorView:Landroid/widget/ImageView;

    invoke-virtual {v8}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v8

    check-cast v8, Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v8, v3}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    invoke-direct {p0, v3}, Lcom/samsung/android/widget/SemColorPicker;->mapColorOnColorWheel(I)V

    goto :goto_3
.end method
