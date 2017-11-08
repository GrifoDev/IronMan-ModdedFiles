.class public Lcom/android/incallui/fragment/view/EarlyMediaSurface;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/TextureView$SurfaceTextureListener;


# instance fields
.field private LOG_TAG:Ljava/lang/String;

.field private mCall:Lcom/android/incallui/Call;

.field private mInitialized:Z

.field private mSavedSurface:Landroid/view/Surface;

.field private mSavedSurfaceTexture:Landroid/graphics/SurfaceTexture;

.field private mTextureView:Landroid/view/TextureView;


# direct methods
.method public constructor <init>(Lcom/android/incallui/Call;Landroid/view/TextureView;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "EarlyMediaSurface"

    iput-object v0, p0, Lcom/android/incallui/fragment/view/EarlyMediaSurface;->LOG_TAG:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/android/incallui/fragment/view/EarlyMediaSurface;->mInitialized:Z

    iput-object p1, p0, Lcom/android/incallui/fragment/view/EarlyMediaSurface;->mCall:Lcom/android/incallui/Call;

    if-eqz p2, :cond_0

    iput-object p2, p0, Lcom/android/incallui/fragment/view/EarlyMediaSurface;->mTextureView:Landroid/view/TextureView;

    iget-object v0, p0, Lcom/android/incallui/fragment/view/EarlyMediaSurface;->mTextureView:Landroid/view/TextureView;

    invoke-virtual {v0, v1}, Landroid/view/TextureView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/incallui/fragment/view/EarlyMediaSurface;->mTextureView:Landroid/view/TextureView;

    invoke-virtual {v0}, Landroid/view/TextureView;->getSurfaceTextureListener()Landroid/view/TextureView$SurfaceTextureListener;

    move-result-object v0

    if-eq v0, p0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/fragment/view/EarlyMediaSurface;->mTextureView:Landroid/view/TextureView;

    invoke-virtual {v0, p0}, Landroid/view/TextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    :cond_0
    return-void
.end method

.method private hideEarlyMedia()V
    .locals 2

    iget-object v0, p0, Lcom/android/incallui/fragment/view/EarlyMediaSurface;->mTextureView:Landroid/view/TextureView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/fragment/view/EarlyMediaSurface;->mTextureView:Landroid/view/TextureView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/TextureView;->setVisibility(I)V

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/fragment/view/EarlyMediaSurface;->mCall:Lcom/android/incallui/Call;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/fragment/view/EarlyMediaSurface;->mCall:Lcom/android/incallui/Call;

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getVideoAdapter()Lcom/android/incallui/service/vt/VideoCallAdapter;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/incallui/service/vt/VideoCallAdapter;->setEarlyMediaSurface(Landroid/view/Surface;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/incallui/fragment/view/EarlyMediaSurface;->mInitialized:Z

    :cond_1
    return-void
.end method

.method private setDoneWithSurface()V
    .locals 2

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/android/incallui/fragment/view/EarlyMediaSurface;->clear()V

    iget-object v0, p0, Lcom/android/incallui/fragment/view/EarlyMediaSurface;->mSavedSurface:Landroid/view/Surface;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/fragment/view/EarlyMediaSurface;->mSavedSurface:Landroid/view/Surface;

    invoke-virtual {v0}, Landroid/view/Surface;->release()V

    iput-object v1, p0, Lcom/android/incallui/fragment/view/EarlyMediaSurface;->mSavedSurface:Landroid/view/Surface;

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/fragment/view/EarlyMediaSurface;->mSavedSurfaceTexture:Landroid/graphics/SurfaceTexture;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/fragment/view/EarlyMediaSurface;->mSavedSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0}, Landroid/graphics/SurfaceTexture;->release()V

    iput-object v1, p0, Lcom/android/incallui/fragment/view/EarlyMediaSurface;->mSavedSurfaceTexture:Landroid/graphics/SurfaceTexture;

    :cond_1
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    iget-boolean v0, p0, Lcom/android/incallui/fragment/view/EarlyMediaSurface;->mInitialized:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/incallui/fragment/view/EarlyMediaSurface;->hideEarlyMedia()V

    :cond_0
    return-void
.end method

.method public onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
    .locals 2

    iget-object v0, p0, Lcom/android/incallui/fragment/view/EarlyMediaSurface;->LOG_TAG:Ljava/lang/String;

    const-string v1, "onSurfaceTextureAvailable"

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/incallui/fragment/view/EarlyMediaSurface;->mSavedSurfaceTexture:Landroid/graphics/SurfaceTexture;

    if-eq v0, p1, :cond_0

    iput-object p1, p0, Lcom/android/incallui/fragment/view/EarlyMediaSurface;->mSavedSurfaceTexture:Landroid/graphics/SurfaceTexture;

    new-instance v0, Landroid/view/Surface;

    iget-object v1, p0, Lcom/android/incallui/fragment/view/EarlyMediaSurface;->mSavedSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-direct {v0, v1}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    iput-object v0, p0, Lcom/android/incallui/fragment/view/EarlyMediaSurface;->mSavedSurface:Landroid/view/Surface;

    :cond_0
    invoke-virtual {p0}, Lcom/android/incallui/fragment/view/EarlyMediaSurface;->showEarlyMedia()V

    return-void
.end method

.method public onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z
    .locals 2

    iget-object v0, p0, Lcom/android/incallui/fragment/view/EarlyMediaSurface;->LOG_TAG:Ljava/lang/String;

    const-string v1, "onSurfaceTextureDestroyed"

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/incallui/fragment/view/EarlyMediaSurface;->mSavedSurfaceTexture:Landroid/graphics/SurfaceTexture;

    if-ne v0, p1, :cond_0

    invoke-direct {p0}, Lcom/android/incallui/fragment/view/EarlyMediaSurface;->setDoneWithSurface()V

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/fragment/view/EarlyMediaSurface;->mSavedSurfaceTexture:Landroid/graphics/SurfaceTexture;

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V
    .locals 0

    return-void
.end method

.method public onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V
    .locals 0

    return-void
.end method

.method public showEarlyMedia()V
    .locals 2

    iget-boolean v0, p0, Lcom/android/incallui/fragment/view/EarlyMediaSurface;->mInitialized:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/fragment/view/EarlyMediaSurface;->mCall:Lcom/android/incallui/Call;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/fragment/view/EarlyMediaSurface;->mCall:Lcom/android/incallui/Call;

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getState()I

    move-result v0

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/incallui/fragment/view/EarlyMediaSurface;->mCall:Lcom/android/incallui/Call;

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getCallDetails()Lcom/android/incallui/CallDetails;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/CallDetails;->isEarlyMedia()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/fragment/view/EarlyMediaSurface;->mSavedSurface:Landroid/view/Surface;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/fragment/view/EarlyMediaSurface;->mCall:Lcom/android/incallui/Call;

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getVideoAdapter()Lcom/android/incallui/service/vt/VideoCallAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/fragment/view/EarlyMediaSurface;->mSavedSurface:Landroid/view/Surface;

    invoke-virtual {v0, v1}, Lcom/android/incallui/service/vt/VideoCallAdapter;->setEarlyMediaSurface(Landroid/view/Surface;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/incallui/fragment/view/EarlyMediaSurface;->mInitialized:Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/incallui/fragment/view/EarlyMediaSurface;->mTextureView:Landroid/view/TextureView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/fragment/view/EarlyMediaSurface;->mTextureView:Landroid/view/TextureView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/TextureView;->setVisibility(I)V

    goto :goto_0
.end method

.method public updateCall(Lcom/android/incallui/Call;)V
    .locals 2

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/incallui/fragment/view/EarlyMediaSurface;->mCall:Lcom/android/incallui/Call;

    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iput-object p1, p0, Lcom/android/incallui/fragment/view/EarlyMediaSurface;->mCall:Lcom/android/incallui/Call;

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/fragment/view/EarlyMediaSurface;->mSavedSurface:Landroid/view/Surface;

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/android/incallui/fragment/view/EarlyMediaSurface;->showEarlyMedia()V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lcom/android/incallui/fragment/view/EarlyMediaSurface;->LOG_TAG:Ljava/lang/String;

    const-string v1, "mSavedSurface is null,may need set Listener "

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/incallui/fragment/view/EarlyMediaSurface;->mTextureView:Landroid/view/TextureView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/TextureView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/incallui/fragment/view/EarlyMediaSurface;->mTextureView:Landroid/view/TextureView;

    invoke-virtual {v0}, Landroid/view/TextureView;->getSurfaceTextureListener()Landroid/view/TextureView$SurfaceTextureListener;

    move-result-object v0

    if-eq v0, p0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/fragment/view/EarlyMediaSurface;->LOG_TAG:Ljava/lang/String;

    const-string v1, "set Listener again "

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/incallui/fragment/view/EarlyMediaSurface;->mTextureView:Landroid/view/TextureView;

    invoke-virtual {v0, p0}, Landroid/view/TextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    goto :goto_0
.end method
