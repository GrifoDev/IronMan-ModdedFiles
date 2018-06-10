.class public Lcom/android/volley/toolbox/NetworkImageView;
.super Landroid/widget/ImageView;
.source "NetworkImageView.java"


# instance fields
.field private mDefaultImageId:I

.field private mErrorImageId:I

.field private mImageContainer:Lcom/android/volley/toolbox/ImageLoader$ImageContainer;

.field private mImageLoader:Lcom/android/volley/toolbox/ImageLoader;

.field private mUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/volley/toolbox/NetworkImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/volley/toolbox/NetworkImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method static synthetic access$000(Lcom/android/volley/toolbox/NetworkImageView;)I
    .locals 1

    iget v0, p0, Lcom/android/volley/toolbox/NetworkImageView;->mErrorImageId:I

    return v0
.end method

.method static synthetic access$100(Lcom/android/volley/toolbox/NetworkImageView;)I
    .locals 1

    iget v0, p0, Lcom/android/volley/toolbox/NetworkImageView;->mDefaultImageId:I

    return v0
.end method

.method private loadImageIfNecessary(Z)V
    .locals 7

    const/4 v6, -0x2

    const/4 v5, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/android/volley/toolbox/NetworkImageView;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Lcom/android/volley/toolbox/NetworkImageView;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/volley/toolbox/NetworkImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    if-nez v4, :cond_3

    :cond_0
    :goto_0
    if-eqz v3, :cond_4

    :cond_1
    iget-object v4, p0, Lcom/android/volley/toolbox/NetworkImageView;->mUrl:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_5

    iget-object v4, p0, Lcom/android/volley/toolbox/NetworkImageView;->mImageContainer:Lcom/android/volley/toolbox/ImageLoader$ImageContainer;

    if-nez v4, :cond_7

    :cond_2
    :goto_1
    iget-object v4, p0, Lcom/android/volley/toolbox/NetworkImageView;->mImageLoader:Lcom/android/volley/toolbox/ImageLoader;

    iget-object v5, p0, Lcom/android/volley/toolbox/NetworkImageView;->mUrl:Ljava/lang/String;

    new-instance v6, Lcom/android/volley/toolbox/NetworkImageView$1;

    invoke-direct {v6, p0, p1}, Lcom/android/volley/toolbox/NetworkImageView$1;-><init>(Lcom/android/volley/toolbox/NetworkImageView;Z)V

    invoke-virtual {v4, v5, v6}, Lcom/android/volley/toolbox/ImageLoader;->get(Ljava/lang/String;Lcom/android/volley/toolbox/ImageLoader$ImageListener;)Lcom/android/volley/toolbox/ImageLoader$ImageContainer;

    move-result-object v2

    iput-object v2, p0, Lcom/android/volley/toolbox/NetworkImageView;->mImageContainer:Lcom/android/volley/toolbox/ImageLoader$ImageContainer;

    return-void

    :cond_3
    invoke-virtual {p0}, Lcom/android/volley/toolbox/NetworkImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    iget v4, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-ne v4, v6, :cond_0

    invoke-virtual {p0}, Lcom/android/volley/toolbox/NetworkImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    iget v4, v4, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-ne v4, v6, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_4
    if-nez v0, :cond_1

    if-nez v1, :cond_1

    return-void

    :cond_5
    iget-object v4, p0, Lcom/android/volley/toolbox/NetworkImageView;->mImageContainer:Lcom/android/volley/toolbox/ImageLoader$ImageContainer;

    if-nez v4, :cond_6

    :goto_2
    invoke-direct {p0}, Lcom/android/volley/toolbox/NetworkImageView;->setDefaultImageOrNull()V

    return-void

    :cond_6
    iget-object v4, p0, Lcom/android/volley/toolbox/NetworkImageView;->mImageContainer:Lcom/android/volley/toolbox/ImageLoader$ImageContainer;

    invoke-virtual {v4}, Lcom/android/volley/toolbox/ImageLoader$ImageContainer;->cancelRequest()V

    iput-object v5, p0, Lcom/android/volley/toolbox/NetworkImageView;->mImageContainer:Lcom/android/volley/toolbox/ImageLoader$ImageContainer;

    goto :goto_2

    :cond_7
    iget-object v4, p0, Lcom/android/volley/toolbox/NetworkImageView;->mImageContainer:Lcom/android/volley/toolbox/ImageLoader$ImageContainer;

    invoke-virtual {v4}, Lcom/android/volley/toolbox/ImageLoader$ImageContainer;->getRequestUrl()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/android/volley/toolbox/NetworkImageView;->mImageContainer:Lcom/android/volley/toolbox/ImageLoader$ImageContainer;

    invoke-virtual {v4}, Lcom/android/volley/toolbox/ImageLoader$ImageContainer;->getRequestUrl()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/android/volley/toolbox/NetworkImageView;->mUrl:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_8

    iget-object v4, p0, Lcom/android/volley/toolbox/NetworkImageView;->mImageContainer:Lcom/android/volley/toolbox/ImageLoader$ImageContainer;

    invoke-virtual {v4}, Lcom/android/volley/toolbox/ImageLoader$ImageContainer;->cancelRequest()V

    invoke-direct {p0}, Lcom/android/volley/toolbox/NetworkImageView;->setDefaultImageOrNull()V

    goto :goto_1

    :cond_8
    return-void
.end method

.method private setDefaultImageOrNull()V
    .locals 1

    iget v0, p0, Lcom/android/volley/toolbox/NetworkImageView;->mDefaultImageId:I

    if-nez v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/volley/toolbox/NetworkImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :goto_0
    return-void

    :cond_0
    iget v0, p0, Lcom/android/volley/toolbox/NetworkImageView;->mDefaultImageId:I

    invoke-virtual {p0, v0}, Lcom/android/volley/toolbox/NetworkImageView;->setImageResource(I)V

    goto :goto_0
.end method


# virtual methods
.method protected drawableStateChanged()V
    .locals 0

    invoke-super {p0}, Landroid/widget/ImageView;->drawableStateChanged()V

    invoke-virtual {p0}, Lcom/android/volley/toolbox/NetworkImageView;->invalidate()V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/volley/toolbox/NetworkImageView;->mImageContainer:Lcom/android/volley/toolbox/ImageLoader$ImageContainer;

    if-nez v0, :cond_0

    :goto_0
    invoke-super {p0}, Landroid/widget/ImageView;->onDetachedFromWindow()V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/volley/toolbox/NetworkImageView;->mImageContainer:Lcom/android/volley/toolbox/ImageLoader$ImageContainer;

    invoke-virtual {v0}, Lcom/android/volley/toolbox/ImageLoader$ImageContainer;->cancelRequest()V

    invoke-virtual {p0, v1}, Lcom/android/volley/toolbox/NetworkImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    iput-object v1, p0, Lcom/android/volley/toolbox/NetworkImageView;->mImageContainer:Lcom/android/volley/toolbox/ImageLoader$ImageContainer;

    goto :goto_0
.end method

.method protected onLayout(ZIIII)V
    .locals 1

    invoke-super/range {p0 .. p5}, Landroid/widget/ImageView;->onLayout(ZIIII)V

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/volley/toolbox/NetworkImageView;->loadImageIfNecessary(Z)V

    return-void
.end method

.method public setDefaultImageResId(I)V
    .locals 0

    iput p1, p0, Lcom/android/volley/toolbox/NetworkImageView;->mDefaultImageId:I

    return-void
.end method

.method public setErrorImageResId(I)V
    .locals 0

    iput p1, p0, Lcom/android/volley/toolbox/NetworkImageView;->mErrorImageId:I

    return-void
.end method

.method public setImageUrl(Ljava/lang/String;Lcom/android/volley/toolbox/ImageLoader;)V
    .locals 1

    iput-object p1, p0, Lcom/android/volley/toolbox/NetworkImageView;->mUrl:Ljava/lang/String;

    iput-object p2, p0, Lcom/android/volley/toolbox/NetworkImageView;->mImageLoader:Lcom/android/volley/toolbox/ImageLoader;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/volley/toolbox/NetworkImageView;->loadImageIfNecessary(Z)V

    return-void
.end method
