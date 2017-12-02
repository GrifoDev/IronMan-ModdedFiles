.class public Lcom/android/incallui/agif/AgifImageManager;
.super Ljava/lang/Object;


# static fields
.field private static final DEFAULT_PANEL_ALPHA:F = 1.0f

.field private static final TAG:Ljava/lang/String; = "AgifImageManager"


# instance fields
.field private EXPAND_NOTIFICATIONS_PANEL_THRESHOLD:I

.field private handler:Landroid/os/Handler;

.field private mBitmap:Landroid/graphics/Bitmap;

.field private mCanvas:Landroid/graphics/Canvas;

.field private mContainer:Landroid/view/View;

.field private mContext:Landroid/content/Context;

.field private mDuration:I

.field private mFile:Ljava/io/File;

.field private mHeight:I

.field private mImageView:Landroid/widget/ImageView;

.field private mIsAnimate:Z

.field private mIsHideAnimationRunning:Z

.field private mIsSetBackground:Z

.field private mMovie:Landroid/graphics/Movie;

.field private mPosition:Landroid/graphics/PointF;

.field private mUri:Landroid/net/Uri;

.field private mViewTouchListener:Landroid/view/View$OnTouchListener;

.field private mWidth:I


# direct methods
.method public constructor <init>(Landroid/widget/ImageView;Landroid/view/View;Landroid/content/Context;Landroid/net/Uri;Ljava/io/File;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/android/incallui/agif/AgifImageManager;->mPosition:Landroid/graphics/PointF;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/incallui/agif/AgifImageManager;->handler:Landroid/os/Handler;

    new-instance v0, Lcom/android/incallui/agif/AgifImageManager$2;

    invoke-direct {v0, p0}, Lcom/android/incallui/agif/AgifImageManager$2;-><init>(Lcom/android/incallui/agif/AgifImageManager;)V

    iput-object v0, p0, Lcom/android/incallui/agif/AgifImageManager;->mViewTouchListener:Landroid/view/View$OnTouchListener;

    iput-object p3, p0, Lcom/android/incallui/agif/AgifImageManager;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/incallui/agif/AgifImageManager;->mContainer:Landroid/view/View;

    iput-object p1, p0, Lcom/android/incallui/agif/AgifImageManager;->mImageView:Landroid/widget/ImageView;

    iput-object p4, p0, Lcom/android/incallui/agif/AgifImageManager;->mUri:Landroid/net/Uri;

    iput-object p5, p0, Lcom/android/incallui/agif/AgifImageManager;->mFile:Ljava/io/File;

    invoke-static {}, Lcom/android/incallui/UiAdapter;->getInstance()Lcom/android/incallui/UiAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/UiAdapter;->getContentViewSize()Landroid/graphics/Point;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/android/incallui/UiAdapter;->getInstance()Lcom/android/incallui/UiAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/UiAdapter;->getContentViewSize()Landroid/graphics/Point;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Point;->x:I

    iput v0, p0, Lcom/android/incallui/agif/AgifImageManager;->EXPAND_NOTIFICATIONS_PANEL_THRESHOLD:I

    :goto_0
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/InCallPresenter;->getCallPopupService()Lcom/android/incallui/service/SecCallPopupService;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/agif/AgifImageManager;->mContainer:Landroid/view/View;

    iget-object v1, p0, Lcom/android/incallui/agif/AgifImageManager;->mViewTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :cond_0
    if-eqz p5, :cond_2

    invoke-static {p3, p5}, Lcom/android/incallui/gif/GifDrawable;->getMovie(Landroid/content/Context;Ljava/io/File;)Landroid/graphics/Movie;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/agif/AgifImageManager;->mMovie:Landroid/graphics/Movie;

    :goto_1
    iget-object v0, p0, Lcom/android/incallui/agif/AgifImageManager;->mMovie:Landroid/graphics/Movie;

    invoke-virtual {p0, v0}, Lcom/android/incallui/agif/AgifImageManager;->setImagePath(Landroid/graphics/Movie;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/incallui/agif/AgifImageManager;->setStrangeMovieHeight(I)V

    invoke-virtual {p0, p3, p2}, Lcom/android/incallui/agif/AgifImageManager;->setAgifBackground(Landroid/content/Context;Landroid/view/View;)V

    invoke-virtual {p0}, Lcom/android/incallui/agif/AgifImageManager;->startAgifAnimate()V

    return-void

    :cond_1
    const/16 v0, 0x320

    iput v0, p0, Lcom/android/incallui/agif/AgifImageManager;->EXPAND_NOTIFICATIONS_PANEL_THRESHOLD:I

    goto :goto_0

    :cond_2
    invoke-static {p3, p4}, Lcom/android/incallui/gif/GifDrawable;->getMovie(Landroid/content/Context;Landroid/net/Uri;)Landroid/graphics/Movie;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/agif/AgifImageManager;->mMovie:Landroid/graphics/Movie;

    goto :goto_1
.end method

.method static synthetic access$000(Lcom/android/incallui/agif/AgifImageManager;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/incallui/agif/AgifImageManager;->mIsAnimate:Z

    return v0
.end method

.method static synthetic access$100(Lcom/android/incallui/agif/AgifImageManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/incallui/agif/AgifImageManager;->updateAgifView()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/incallui/agif/AgifImageManager;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/agif/AgifImageManager;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/incallui/agif/AgifImageManager;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/agif/AgifImageManager;->mContainer:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/incallui/agif/AgifImageManager;Landroid/view/View;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/incallui/agif/AgifImageManager;->animateForSlideOut(Landroid/view/View;Z)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/incallui/agif/AgifImageManager;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/incallui/agif/AgifImageManager;->animateForDefaultPosition(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/incallui/agif/AgifImageManager;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/incallui/agif/AgifImageManager;->setIsHideAnimationRunning(Z)V

    return-void
.end method

.method private animateForDefaultPosition(Landroid/view/View;)V
    .locals 5

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/incallui/agif/AgifImageManager;->isHideAnimationRunning()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "AgifImageManager"

    const-string v1, "animateForDefaultPosition:"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/incallui/agif/AgifImageManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0f0011

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    const/4 v1, 0x0

    sget-object v2, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    const/4 v3, 0x1

    new-array v3, v3, [F

    const/4 v4, 0x0

    aput v1, v3, v4

    invoke-static {p1, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    invoke-virtual {v2, v1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    int-to-long v0, v0

    invoke-virtual {v2, v0, v1}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    move-result-object v0

    new-instance v1, Lcom/android/incallui/agif/AgifImageManager$3;

    invoke-direct {v1, p0, p1}, Lcom/android/incallui/agif/AgifImageManager$3;-><init>(Lcom/android/incallui/agif/AgifImageManager;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->start()V

    :cond_0
    return-void
.end method

.method private animateForSlideOut(Landroid/view/View;Z)V
    .locals 6

    const/4 v5, 0x0

    const/4 v4, 0x1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/incallui/agif/AgifImageManager;->isHideAnimationRunning()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0, v4}, Lcom/android/incallui/agif/AgifImageManager;->setIsHideAnimationRunning(Z)V

    const-string v0, "AgifImageManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "animateForSlideOut:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/incallui/agif/AgifImageManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0f0011

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    if-eqz p2, :cond_1

    invoke-direct {p0}, Lcom/android/incallui/agif/AgifImageManager;->getMaxX()I

    move-result v0

    int-to-float v0, v0

    neg-float v0, v0

    :goto_0
    sget-object v2, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    new-array v3, v4, [F

    aput v0, v3, v5

    invoke-static {p1, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    sget-object v2, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v3, v4, [F

    const/4 v4, 0x0

    aput v4, v3, v5

    invoke-static {p1, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    new-instance v3, Landroid/animation/AnimatorSet;

    invoke-direct {v3}, Landroid/animation/AnimatorSet;-><init>()V

    invoke-virtual {v3, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    int-to-long v0, v1

    invoke-virtual {v3, v0, v1}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    move-result-object v0

    new-instance v1, Lcom/android/incallui/agif/AgifImageManager$4;

    invoke-direct {v1, p0, p1}, Lcom/android/incallui/agif/AgifImageManager$4;-><init>(Lcom/android/incallui/agif/AgifImageManager;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v3}, Landroid/animation/AnimatorSet;->start()V

    :cond_0
    return-void

    :cond_1
    invoke-direct {p0}, Lcom/android/incallui/agif/AgifImageManager;->getMaxX()I

    move-result v0

    int-to-float v0, v0

    goto :goto_0
.end method

.method private getMaxX()I
    .locals 3

    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    iget-object v0, p0, Lcom/android/incallui/agif/AgifImageManager;->mContext:Landroid/content/Context;

    const-string v2, "window"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    iget v0, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    return v0
.end method

.method private init()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/incallui/agif/AgifImageManager;->mMovie:Landroid/graphics/Movie;

    if-eqz v0, :cond_0

    iput-object v1, p0, Lcom/android/incallui/agif/AgifImageManager;->mMovie:Landroid/graphics/Movie;

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/agif/AgifImageManager;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/agif/AgifImageManager;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/agif/AgifImageManager;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    iput-object v1, p0, Lcom/android/incallui/agif/AgifImageManager;->mBitmap:Landroid/graphics/Bitmap;

    :cond_1
    return-void
.end method

.method private isHideAnimationRunning()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/incallui/agif/AgifImageManager;->mIsHideAnimationRunning:Z

    return v0
.end method

.method private setIsHideAnimationRunning(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/incallui/agif/AgifImageManager;->mIsHideAnimationRunning:Z

    return-void
.end method

.method private updateAgifView()V
    .locals 7

    const/high16 v5, 0x40000000    # 2.0f

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/incallui/agif/AgifImageManager;->mMovie:Landroid/graphics/Movie;

    if-eqz v1, :cond_4

    iget v1, p0, Lcom/android/incallui/agif/AgifImageManager;->mWidth:I

    int-to-float v1, v1

    iget-object v2, p0, Lcom/android/incallui/agif/AgifImageManager;->mMovie:Landroid/graphics/Movie;

    invoke-virtual {v2}, Landroid/graphics/Movie;->width()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    iget v2, p0, Lcom/android/incallui/agif/AgifImageManager;->mHeight:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/android/incallui/agif/AgifImageManager;->mMovie:Landroid/graphics/Movie;

    invoke-virtual {v3}, Landroid/graphics/Movie;->height()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    iget-object v2, p0, Lcom/android/incallui/agif/AgifImageManager;->mPosition:Landroid/graphics/PointF;

    iget v3, p0, Lcom/android/incallui/agif/AgifImageManager;->mWidth:I

    int-to-float v3, v3

    iget-object v4, p0, Lcom/android/incallui/agif/AgifImageManager;->mMovie:Landroid/graphics/Movie;

    invoke-virtual {v4}, Landroid/graphics/Movie;->width()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v4, v1

    sub-float/2addr v3, v4

    mul-float v4, v1, v5

    div-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/PointF;->x:F

    iget-object v2, p0, Lcom/android/incallui/agif/AgifImageManager;->mPosition:Landroid/graphics/PointF;

    iget v3, p0, Lcom/android/incallui/agif/AgifImageManager;->mHeight:I

    int-to-float v3, v3

    iget-object v4, p0, Lcom/android/incallui/agif/AgifImageManager;->mMovie:Landroid/graphics/Movie;

    invoke-virtual {v4}, Landroid/graphics/Movie;->height()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v4, v1

    sub-float/2addr v3, v4

    mul-float v4, v1, v5

    div-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/PointF;->y:F

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iget v4, p0, Lcom/android/incallui/agif/AgifImageManager;->mDuration:I

    if-lez v4, :cond_0

    iget v0, p0, Lcom/android/incallui/agif/AgifImageManager;->mDuration:I

    int-to-long v4, v0

    rem-long/2addr v2, v4

    long-to-int v0, v2

    :cond_0
    iget-object v2, p0, Lcom/android/incallui/agif/AgifImageManager;->mMovie:Landroid/graphics/Movie;

    invoke-virtual {v2, v0}, Landroid/graphics/Movie;->setTime(I)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/incallui/agif/AgifImageManager;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/agif/AgifImageManager;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/agif/AgifImageManager;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_1
    :try_start_0
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iget v2, p0, Lcom/android/incallui/agif/AgifImageManager;->mWidth:I

    iget v3, p0, Lcom/android/incallui/agif/AgifImageManager;->mHeight:I

    invoke-static {v2, v3, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/agif/AgifImageManager;->mBitmap:Landroid/graphics/Bitmap;

    new-instance v0, Landroid/graphics/Canvas;

    iget-object v2, p0, Lcom/android/incallui/agif/AgifImageManager;->mBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v0, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lcom/android/incallui/agif/AgifImageManager;->mCanvas:Landroid/graphics/Canvas;

    iget-object v0, p0, Lcom/android/incallui/agif/AgifImageManager;->mCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v0, v1, v1}, Landroid/graphics/Canvas;->scale(FF)V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    new-instance v1, Landroid/graphics/Rect;

    const/4 v2, 0x0

    const/4 v3, 0x0

    iget v4, p0, Lcom/android/incallui/agif/AgifImageManager;->mWidth:I

    iget v5, p0, Lcom/android/incallui/agif/AgifImageManager;->mHeight:I

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v2, p0, Lcom/android/incallui/agif/AgifImageManager;->mCanvas:Landroid/graphics/Canvas;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/graphics/Canvas;->drawARGB(IIII)V

    new-instance v2, Landroid/graphics/PorterDuffXfermode;

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v3}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    iget-object v2, p0, Lcom/android/incallui/agif/AgifImageManager;->mCanvas:Landroid/graphics/Canvas;

    iget-object v3, p0, Lcom/android/incallui/agif/AgifImageManager;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2, v3, v1, v1, v0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/android/incallui/agif/AgifImageManager;->mMovie:Landroid/graphics/Movie;

    iget-object v1, p0, Lcom/android/incallui/agif/AgifImageManager;->mCanvas:Landroid/graphics/Canvas;

    iget-object v2, p0, Lcom/android/incallui/agif/AgifImageManager;->mPosition:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->x:F

    iget-object v3, p0, Lcom/android/incallui/agif/AgifImageManager;->mPosition:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->y:F

    invoke-virtual {v0, v1, v2, v3}, Landroid/graphics/Movie;->draw(Landroid/graphics/Canvas;FF)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/incallui/agif/AgifImageManager;->mCanvas:Landroid/graphics/Canvas;

    iget-object v0, p0, Lcom/android/incallui/agif/AgifImageManager;->mImageView:Landroid/widget/ImageView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/incallui/agif/AgifImageManager;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/incallui/agif/AgifImageManager;->mImageView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/incallui/agif/AgifImageManager;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :cond_2
    iget-boolean v0, p0, Lcom/android/incallui/agif/AgifImageManager;->mIsSetBackground:Z

    if-nez v0, :cond_4

    invoke-static {}, Lcom/android/incallui/util/DesktopModeManager;->getInstance()Lcom/android/incallui/util/DesktopModeManager;

    invoke-static {}, Lcom/android/incallui/util/DesktopModeManager;->isDesktopMode()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-static {}, Lcom/android/incallui/InCallUISystemDB;->isShowCallStickersEnabled()Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/incallui/agif/AgifImageManager;->mIsSetBackground:Z

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/InCallPresenter;->getActivity()Lcom/android/incallui/InCallActivity;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/android/incallui/agif/AgifImageManager;->mImageView:Landroid/widget/ImageView;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/incallui/agif/AgifImageManager;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/incallui/InCallActivity;->updateGradientColor(Landroid/graphics/drawable/Drawable;)V

    :cond_3
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/InCallPresenter;->getCallPopupService()Lcom/android/incallui/service/SecCallPopupService;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/incallui/agif/AgifImageManager;->mImageView:Landroid/widget/ImageView;

    if-eqz v0, :cond_4

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/InCallPresenter;->getCallPopupService()Lcom/android/incallui/service/SecCallPopupService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/service/SecCallPopupService;->getPopupContainer()Lcom/android/incallui/service/SecCallPopupContainer;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/agif/AgifImageManager;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/incallui/service/SecCallPopupContainer;->updateGradientView(Landroid/graphics/drawable/Drawable;)V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    :cond_4
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v0, "AgifImageManager"

    const-string v1, "updateAgifView OutOfMemoryError"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public clear()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/incallui/agif/AgifImageManager;->mIsAnimate:Z

    invoke-direct {p0}, Lcom/android/incallui/agif/AgifImageManager;->init()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/incallui/agif/AgifImageManager;->mImageView:Landroid/widget/ImageView;

    return-void
.end method

.method public getFile()Ljava/io/File;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/agif/AgifImageManager;->mFile:Ljava/io/File;

    return-object v0
.end method

.method public getHeight()I
    .locals 1

    iget v0, p0, Lcom/android/incallui/agif/AgifImageManager;->mHeight:I

    return v0
.end method

.method public getUri()Landroid/net/Uri;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/agif/AgifImageManager;->mUri:Landroid/net/Uri;

    return-object v0
.end method

.method public getWidth()I
    .locals 1

    iget v0, p0, Lcom/android/incallui/agif/AgifImageManager;->mWidth:I

    return v0
.end method

.method public setAgifBackground(Landroid/content/Context;Landroid/view/View;)V
    .locals 2

    if-nez p2, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/InCallPresenter;->getCallPopupService()Lcom/android/incallui/service/SecCallPopupService;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020221

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020220

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method public setImagePath(Landroid/graphics/Movie;)V
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/agif/AgifImageManager;->mMovie:Landroid/graphics/Movie;

    return-void
.end method

.method public setStrangeMovieHeight(I)V
    .locals 5

    iget-object v0, p0, Lcom/android/incallui/agif/AgifImageManager;->mMovie:Landroid/graphics/Movie;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/incallui/agif/AgifImageManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a04f7

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    if-lez p1, :cond_3

    :goto_0
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/InCallPresenter;->getCallPopupService()Lcom/android/incallui/service/SecCallPopupService;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/android/incallui/agif/AgifImageManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a04f8

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iget-object v1, p0, Lcom/android/incallui/agif/AgifImageManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a04f5

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int p1, v1

    :cond_0
    iget-object v1, p0, Lcom/android/incallui/agif/AgifImageManager;->mMovie:Landroid/graphics/Movie;

    invoke-virtual {v1}, Landroid/graphics/Movie;->duration()I

    move-result v1

    iput v1, p0, Lcom/android/incallui/agif/AgifImageManager;->mDuration:I

    iget-object v1, p0, Lcom/android/incallui/agif/AgifImageManager;->mMovie:Landroid/graphics/Movie;

    invoke-virtual {v1}, Landroid/graphics/Movie;->width()I

    move-result v1

    iput v1, p0, Lcom/android/incallui/agif/AgifImageManager;->mWidth:I

    iget-object v1, p0, Lcom/android/incallui/agif/AgifImageManager;->mMovie:Landroid/graphics/Movie;

    invoke-virtual {v1}, Landroid/graphics/Movie;->height()I

    move-result v1

    iput v1, p0, Lcom/android/incallui/agif/AgifImageManager;->mHeight:I

    const-string v1, "AgifImageManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Movie : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/incallui/agif/AgifImageManager;->mMovie:Landroid/graphics/Movie;

    invoke-virtual {v3}, Landroid/graphics/Movie;->width()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/incallui/agif/AgifImageManager;->mMovie:Landroid/graphics/Movie;

    invoke-virtual {v3}, Landroid/graphics/Movie;->height()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/InCallPresenter;->getCallPopupService()Lcom/android/incallui/service/SecCallPopupService;

    move-result-object v1

    if-eqz v1, :cond_7

    iget v1, p0, Lcom/android/incallui/agif/AgifImageManager;->mWidth:I

    iget v2, p0, Lcom/android/incallui/agif/AgifImageManager;->mHeight:I

    if-le v1, v2, :cond_5

    iget v1, p0, Lcom/android/incallui/agif/AgifImageManager;->mWidth:I

    if-ge v0, v1, :cond_4

    int-to-float v1, v0

    iget v2, p0, Lcom/android/incallui/agif/AgifImageManager;->mWidth:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    iget v2, p0, Lcom/android/incallui/agif/AgifImageManager;->mHeight:I

    int-to-float v2, v2

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p0, Lcom/android/incallui/agif/AgifImageManager;->mHeight:I

    iput v0, p0, Lcom/android/incallui/agif/AgifImageManager;->mWidth:I

    :cond_1
    :goto_1
    const-string v0, "AgifImageManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mDuration : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/incallui/agif/AgifImageManager;->mDuration:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/incallui/agif/AgifImageManager;->mWidth:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/incallui/agif/AgifImageManager;->mHeight:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-void

    :cond_3
    iget-object v1, p0, Lcom/android/incallui/agif/AgifImageManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a04f4

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int p1, v1

    goto/16 :goto_0

    :cond_4
    iget v0, p0, Lcom/android/incallui/agif/AgifImageManager;->mHeight:I

    if-ge p1, v0, :cond_1

    int-to-float v0, p1

    iget v1, p0, Lcom/android/incallui/agif/AgifImageManager;->mHeight:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    iget v1, p0, Lcom/android/incallui/agif/AgifImageManager;->mWidth:I

    int-to-float v1, v1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/android/incallui/agif/AgifImageManager;->mWidth:I

    iput p1, p0, Lcom/android/incallui/agif/AgifImageManager;->mHeight:I

    goto :goto_1

    :cond_5
    iget v1, p0, Lcom/android/incallui/agif/AgifImageManager;->mHeight:I

    if-ge p1, v1, :cond_6

    int-to-float v0, p1

    iget v1, p0, Lcom/android/incallui/agif/AgifImageManager;->mHeight:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    iget v1, p0, Lcom/android/incallui/agif/AgifImageManager;->mWidth:I

    int-to-float v1, v1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/android/incallui/agif/AgifImageManager;->mWidth:I

    iput p1, p0, Lcom/android/incallui/agif/AgifImageManager;->mHeight:I

    goto :goto_1

    :cond_6
    iget v1, p0, Lcom/android/incallui/agif/AgifImageManager;->mWidth:I

    if-ge v0, v1, :cond_1

    int-to-float v1, v0

    iget v2, p0, Lcom/android/incallui/agif/AgifImageManager;->mWidth:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    iget v2, p0, Lcom/android/incallui/agif/AgifImageManager;->mHeight:I

    int-to-float v2, v2

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p0, Lcom/android/incallui/agif/AgifImageManager;->mHeight:I

    iput v0, p0, Lcom/android/incallui/agif/AgifImageManager;->mWidth:I

    goto/16 :goto_1

    :cond_7
    iget v1, p0, Lcom/android/incallui/agif/AgifImageManager;->mWidth:I

    iget v2, p0, Lcom/android/incallui/agif/AgifImageManager;->mHeight:I

    if-le v1, v2, :cond_9

    int-to-float v1, v0

    iget v2, p0, Lcom/android/incallui/agif/AgifImageManager;->mWidth:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    int-to-float v2, p1

    iget v3, p0, Lcom/android/incallui/agif/AgifImageManager;->mHeight:I

    int-to-float v3, v3

    mul-float/2addr v3, v1

    cmpg-float v2, v2, v3

    if-gez v2, :cond_8

    int-to-float v1, p1

    iget v2, p0, Lcom/android/incallui/agif/AgifImageManager;->mHeight:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    iget v2, p0, Lcom/android/incallui/agif/AgifImageManager;->mWidth:I

    int-to-float v2, v2

    mul-float/2addr v2, v1

    float-to-int v2, v2

    iput v2, p0, Lcom/android/incallui/agif/AgifImageManager;->mWidth:I

    iput p1, p0, Lcom/android/incallui/agif/AgifImageManager;->mHeight:I

    :goto_2
    const-string v2, "AgifImageManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "maxWidth : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " maxHeight : "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " ratio: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :cond_8
    iget v2, p0, Lcom/android/incallui/agif/AgifImageManager;->mWidth:I

    int-to-float v2, v2

    mul-float/2addr v2, v1

    float-to-int v2, v2

    iput v2, p0, Lcom/android/incallui/agif/AgifImageManager;->mWidth:I

    iget v2, p0, Lcom/android/incallui/agif/AgifImageManager;->mHeight:I

    int-to-float v2, v2

    mul-float/2addr v2, v1

    float-to-int v2, v2

    iput v2, p0, Lcom/android/incallui/agif/AgifImageManager;->mHeight:I

    goto :goto_2

    :cond_9
    int-to-float v1, p1

    iget v2, p0, Lcom/android/incallui/agif/AgifImageManager;->mHeight:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    int-to-float v2, v0

    iget v3, p0, Lcom/android/incallui/agif/AgifImageManager;->mWidth:I

    int-to-float v3, v3

    mul-float/2addr v3, v1

    cmpg-float v2, v2, v3

    if-gez v2, :cond_a

    int-to-float v1, v0

    iget v2, p0, Lcom/android/incallui/agif/AgifImageManager;->mWidth:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    iput v0, p0, Lcom/android/incallui/agif/AgifImageManager;->mWidth:I

    iget v2, p0, Lcom/android/incallui/agif/AgifImageManager;->mHeight:I

    int-to-float v2, v2

    mul-float/2addr v2, v1

    float-to-int v2, v2

    iput v2, p0, Lcom/android/incallui/agif/AgifImageManager;->mHeight:I

    goto :goto_2

    :cond_a
    iget v2, p0, Lcom/android/incallui/agif/AgifImageManager;->mWidth:I

    int-to-float v2, v2

    mul-float/2addr v2, v1

    float-to-int v2, v2

    iput v2, p0, Lcom/android/incallui/agif/AgifImageManager;->mWidth:I

    iget v2, p0, Lcom/android/incallui/agif/AgifImageManager;->mHeight:I

    int-to-float v2, v2

    mul-float/2addr v2, v1

    float-to-int v2, v2

    iput v2, p0, Lcom/android/incallui/agif/AgifImageManager;->mHeight:I

    goto :goto_2
.end method

.method public startAgifAnimate()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/incallui/agif/AgifImageManager;->mIsAnimate:Z

    iget v0, p0, Lcom/android/incallui/agif/AgifImageManager;->mDuration:I

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/incallui/agif/AgifImageManager;->updateAgifView()V

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/android/incallui/agif/AgifImageManager$1;

    invoke-direct {v0, p0}, Lcom/android/incallui/agif/AgifImageManager$1;-><init>(Lcom/android/incallui/agif/AgifImageManager;)V

    invoke-virtual {v0}, Lcom/android/incallui/agif/AgifImageManager$1;->start()V

    goto :goto_0
.end method

.method public stopAgifAnimate()V
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/incallui/agif/AgifImageManager;->mIsAnimate:Z

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/agif/AgifImageManager;->mImageView:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/agif/AgifImageManager;->mImageView:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :cond_1
    return-void
.end method
