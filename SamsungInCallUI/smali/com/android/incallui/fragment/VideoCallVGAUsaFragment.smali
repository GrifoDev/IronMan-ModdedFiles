.class public Lcom/android/incallui/fragment/VideoCallVGAUsaFragment;
.super Lcom/android/incallui/fragment/VideoCallBaseFragment;


# instance fields
.field private mDisplayImage:Landroid/widget/ImageView;

.field private mDisplayImageReady:Z

.field private mIsShowingUi:Z

.field private mPreviewImage:Landroid/widget/ImageView;

.field private mPreviewImageReady:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/incallui/fragment/VideoCallBaseFragment;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/incallui/fragment/VideoCallVGAUsaFragment;->mIsShowingUi:Z

    return-void
.end method


# virtual methods
.method public canSaveBitmap(Lcom/android/incallui/Call;)Z
    .locals 3

    const/4 v0, 0x0

    sget v1, Lcom/android/incallui/service/vt/VideoCallCapability;->RX_HELD:I

    invoke-static {v1}, Lcom/android/incallui/service/vt/VideoCallCapability;->can(I)Z

    move-result v1

    if-eqz v1, :cond_1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/android/incallui/Call;->isVideoCall()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Lcom/android/incallui/Call;->getState()I

    move-result v1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_0

    invoke-virtual {p1}, Lcom/android/incallui/Call;->getState()I

    move-result v1

    const/16 v2, 0x8

    if-ne v1, v2, :cond_1

    :cond_0
    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method public canUseLocalPeerDimension()Z
    .locals 2

    invoke-super {p0}, Lcom/android/incallui/fragment/VideoCallBaseFragment;->canUseLocalPeerDimension()Z

    move-result v0

    sget v1, Lcom/android/incallui/service/vt/VideoCallCapability;->RX_HELD:I

    invoke-static {v1}, Lcom/android/incallui/service/vt/VideoCallCapability;->can(I)Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallVGAUsaFragment;->getSecVideoState()I

    move-result v0

    invoke-static {v0}, Lcom/android/incallui/service/vt/SecVideoState;->hasPausedDisplayState(I)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public canUseLocalPreviewDimension()Z
    .locals 4

    invoke-super {p0}, Lcom/android/incallui/fragment/VideoCallBaseFragment;->canUseLocalPreviewDimension()Z

    move-result v0

    sget v1, Lcom/android/incallui/service/vt/VideoCallCapability;->RX_HELD:I

    invoke-static {v1}, Lcom/android/incallui/service/vt/VideoCallCapability;->can(I)Z

    move-result v1

    if-eqz v1, :cond_2

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallVGAUsaFragment;->getSecVideoState()I

    move-result v0

    invoke-static {v0}, Lcom/android/incallui/service/vt/SecVideoState;->hasPausePreviewState(I)Z

    move-result v0

    if-nez v0, :cond_3

    const/4 v0, 0x1

    :cond_0
    :goto_0
    if-nez v0, :cond_2

    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallVGAUsaFragment;->mPrimaryCall:Lcom/android/incallui/Call;

    invoke-virtual {p0, v1}, Lcom/android/incallui/fragment/VideoCallVGAUsaFragment;->getSavedPreviewImage(Lcom/android/incallui/Call;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/incallui/util/VideoCallUtils;->getBitmapFromFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v2, p0, Lcom/android/incallui/fragment/VideoCallVGAUsaFragment;->mVideoCallMetrics:Lcom/android/incallui/service/vt/VideoCallMetrics;

    if-eqz v2, :cond_2

    new-instance v2, Lcom/android/incallui/service/vt/VideoDimension;

    invoke-direct {v2}, Lcom/android/incallui/service/vt/VideoDimension;-><init>()V

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    if-le v3, v1, :cond_1

    invoke-virtual {v2}, Lcom/android/incallui/service/vt/VideoDimension;->swap()V

    :cond_1
    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallVGAUsaFragment;->mVideoCallMetrics:Lcom/android/incallui/service/vt/VideoCallMetrics;

    invoke-virtual {v1}, Lcom/android/incallui/service/vt/VideoCallMetrics;->getPreviewDimension()Lcom/android/incallui/service/vt/VideoDimension;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/service/vt/VideoDimension;->isLandscape()Z

    move-result v1

    invoke-virtual {v2}, Lcom/android/incallui/service/vt/VideoDimension;->isLandscape()Z

    move-result v3

    if-eq v1, v3, :cond_2

    const-string v1, "Preview : setPreviewDimension as bitmapDimension"

    invoke-static {v1}, Lcom/android/incallui/service/vt/VideoCallLog;->image(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallVGAUsaFragment;->mVideoCallMetrics:Lcom/android/incallui/service/vt/VideoCallMetrics;

    invoke-virtual {v1, v2}, Lcom/android/incallui/service/vt/VideoCallMetrics;->setPreviewDimension(Lcom/android/incallui/service/vt/VideoDimension;)V

    :cond_2
    return v0

    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public changeOrientation()V
    .locals 1

    invoke-super {p0}, Lcom/android/incallui/fragment/VideoCallBaseFragment;->changeOrientation()V

    invoke-static {}, Lcom/android/incallui/VideoBanner;->getInstance()Lcom/android/incallui/VideoBanner;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/VideoBanner;->isModifyVideoBannerType()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/incallui/VideoBanner;->getInstance()Lcom/android/incallui/VideoBanner;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/VideoBanner;->restartVideoBanner()V

    :cond_0
    return-void
.end method

.method public clearDisplayBitmap()V
    .locals 3

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallVGAUsaFragment;->mDisplayImage:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/incallui/fragment/VideoCallVGAUsaFragment;->mDisplayImageReady:Z

    if-eqz v0, :cond_0

    const-string v0, "Display : clearDisplayBitmap"

    invoke-static {v0}, Lcom/android/incallui/service/vt/VideoCallLog;->image(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallVGAUsaFragment;->mDisplayImage:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallVGAUsaFragment;->mDisplayImage:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallVGAUsaFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e021c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/incallui/fragment/VideoCallVGAUsaFragment;->mDisplayImageReady:Z

    :cond_0
    return-void
.end method

.method public clearPreviewBitmap()V
    .locals 3

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallVGAUsaFragment;->mPreviewImage:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/incallui/fragment/VideoCallVGAUsaFragment;->mPreviewImageReady:Z

    if-eqz v0, :cond_0

    const-string v0, "Preview : clearPreviewBitmap"

    invoke-static {v0}, Lcom/android/incallui/service/vt/VideoCallLog;->image(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallVGAUsaFragment;->mPreviewImage:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallVGAUsaFragment;->mPreviewImage:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallVGAUsaFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e021c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/incallui/fragment/VideoCallVGAUsaFragment;->mPreviewImageReady:Z

    :cond_0
    return-void
.end method

.method public deleteCapturedImage(Lcom/android/incallui/Call;Z)V
    .locals 3

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    if-eqz p2, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "captured_preview_image.tmp"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-static {v0}, Lcom/android/incallui/util/VideoCallUtils;->isExistFileName(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "deleteCapturedImage, isPreview : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/incallui/service/vt/VideoCallLog;->image(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/android/incallui/util/VideoCallUtils;->deleteFileInFilesDir(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "captured_display_image.tmp"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method protected getDisplayLocation()I
    .locals 5

    const/4 v2, 0x4

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallVGAUsaFragment;->mPrimaryCall:Lcom/android/incallui/Call;

    invoke-virtual {v1}, Lcom/android/incallui/Call;->getState()I

    move-result v3

    const/4 v1, 0x3

    invoke-static {v3}, Lcom/android/incallui/Call$State;->isIncoming(I)Z

    move-result v4

    if-eqz v4, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-static {v3}, Lcom/android/incallui/Call$State;->isOutgoing(I)Z

    move-result v3

    if-nez v3, :cond_0

    iget v3, p0, Lcom/android/incallui/fragment/VideoCallVGAUsaFragment;->mSecVideoState:I

    invoke-static {v3}, Lcom/android/incallui/service/vt/SecVideoState;->hasModifyProgressing(I)Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallConfig;->CONCEPT_USA_CDMA()Z

    move-result v3

    if-eqz v3, :cond_3

    iget v0, p0, Lcom/android/incallui/fragment/VideoCallVGAUsaFragment;->mSecVideoState:I

    invoke-static {v0}, Lcom/android/incallui/service/vt/SecVideoState;->hasModifyReceive(I)Z

    move-result v0

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/android/incallui/fragment/VideoCallVGAUsaFragment;->mSecVideoState:I

    invoke-static {v0}, Lcom/android/incallui/service/vt/SecVideoState;->modifyingToOneWay(I)Z

    move-result v0

    if-nez v0, :cond_7

    :cond_2
    move v0, v2

    goto :goto_0

    :cond_3
    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallConfig;->CONCEPT_USA_CAN_GSM()Z

    move-result v1

    if-eqz v1, :cond_0

    move v0, v2

    goto :goto_0

    :cond_4
    iget-object v3, p0, Lcom/android/incallui/fragment/VideoCallVGAUsaFragment;->mPrimaryCall:Lcom/android/incallui/Call;

    invoke-static {v3}, Lcom/android/incallui/util/CallTypeUtils;->isVideoTwoWay(Lcom/android/incallui/Call;)Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallConfig;->CONCEPT_USA_CDMA()Z

    move-result v0

    if-eqz v0, :cond_7

    iget v0, p0, Lcom/android/incallui/fragment/VideoCallVGAUsaFragment;->mSecVideoState:I

    invoke-static {v0}, Lcom/android/incallui/service/vt/SecVideoState;->hasHoldingTheOtherParty(I)Z

    move-result v0

    if-nez v0, :cond_5

    iget v0, p0, Lcom/android/incallui/fragment/VideoCallVGAUsaFragment;->mSecVideoState:I

    invoke-static {v0}, Lcom/android/incallui/service/vt/SecVideoState;->hasHeldVideo(I)Z

    move-result v0

    if-eqz v0, :cond_7

    :cond_5
    move v0, v2

    goto :goto_0

    :cond_6
    iget-object v3, p0, Lcom/android/incallui/fragment/VideoCallVGAUsaFragment;->mPrimaryCall:Lcom/android/incallui/Call;

    invoke-static {v3}, Lcom/android/incallui/util/CallTypeUtils;->isVideoOneWayTx(Lcom/android/incallui/Call;)Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallConfig;->CONCEPT_USA_CDMA()Z

    move-result v3

    if-eqz v3, :cond_7

    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallVGAUsaFragment;->mPrimaryCall:Lcom/android/incallui/Call;

    invoke-virtual {v1}, Lcom/android/incallui/Call;->getSecCall()Lcom/android/incallui/SecCall;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/SecCall;->canShowGrayImage()Z

    move-result v1

    if-eqz v1, :cond_0

    move v0, v2

    goto :goto_0

    :cond_7
    move v0, v1

    goto :goto_0
.end method

.method protected getPreviewLocation()I
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/android/incallui/fragment/VideoCallVGAUsaFragment;->mPrimaryCall:Lcom/android/incallui/Call;

    invoke-virtual {v2}, Lcom/android/incallui/Call;->getState()I

    move-result v3

    const/4 v2, 0x4

    invoke-static {v3}, Lcom/android/incallui/Call$State;->isIncoming(I)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v0, 0x1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-static {v3}, Lcom/android/incallui/Call$State;->isOutgoing(I)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v0, 0x2

    goto :goto_0

    :cond_2
    iget-object v3, p0, Lcom/android/incallui/fragment/VideoCallVGAUsaFragment;->mPrimaryCall:Lcom/android/incallui/Call;

    invoke-static {v3}, Lcom/android/incallui/util/CallTypeUtils;->isModifyProgressing(Lcom/android/incallui/Call;)Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallConfig;->CONCEPT_USA_CDMA()Z

    move-result v2

    if-eqz v2, :cond_3

    iget v2, p0, Lcom/android/incallui/fragment/VideoCallVGAUsaFragment;->mSecVideoState:I

    invoke-static {v2}, Lcom/android/incallui/service/vt/SecVideoState;->hasModifyReceive(I)Z

    move-result v2

    if-eqz v2, :cond_3

    iget v2, p0, Lcom/android/incallui/fragment/VideoCallVGAUsaFragment;->mSecVideoState:I

    invoke-static {v2}, Lcom/android/incallui/service/vt/SecVideoState;->modifyingToOneWay(I)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0

    :cond_4
    iget-object v3, p0, Lcom/android/incallui/fragment/VideoCallVGAUsaFragment;->mPrimaryCall:Lcom/android/incallui/Call;

    invoke-static {v3}, Lcom/android/incallui/util/CallTypeUtils;->isVideoTwoWay(Lcom/android/incallui/Call;)Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallConfig;->CONCEPT_USA_CDMA()Z

    move-result v0

    if-eqz v0, :cond_8

    iget v0, p0, Lcom/android/incallui/fragment/VideoCallVGAUsaFragment;->mSecVideoState:I

    invoke-static {v0}, Lcom/android/incallui/service/vt/SecVideoState;->hasHoldingTheOtherParty(I)Z

    move-result v0

    if-nez v0, :cond_5

    iget v0, p0, Lcom/android/incallui/fragment/VideoCallVGAUsaFragment;->mSecVideoState:I

    invoke-static {v0}, Lcom/android/incallui/service/vt/SecVideoState;->hasHeldVideo(I)Z

    move-result v0

    if-eqz v0, :cond_8

    :cond_5
    move v0, v1

    goto :goto_0

    :cond_6
    iget-object v3, p0, Lcom/android/incallui/fragment/VideoCallVGAUsaFragment;->mPrimaryCall:Lcom/android/incallui/Call;

    invoke-static {v3}, Lcom/android/incallui/util/CallTypeUtils;->isVideoOneWayTx(Lcom/android/incallui/Call;)Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallConfig;->CONCEPT_USA_CDMA()Z

    move-result v0

    if-eqz v0, :cond_8

    move v0, v1

    goto :goto_0

    :cond_7
    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallVGAUsaFragment;->mPrimaryCall:Lcom/android/incallui/Call;

    invoke-static {v1}, Lcom/android/incallui/util/CallTypeUtils;->isVideoOneWayRx(Lcom/android/incallui/Call;)Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallConfig;->CONCEPT_USA_CDMA()Z

    move-result v1

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallVGAUsaFragment;->mPrimaryCall:Lcom/android/incallui/Call;

    invoke-virtual {v1}, Lcom/android/incallui/Call;->getSecCall()Lcom/android/incallui/SecCall;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/SecCall;->canShowGrayImage()Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_8
    move v0, v2

    goto :goto_0
.end method

.method public getSavedDisplayImage(Lcom/android/incallui/Call;)Ljava/lang/String;
    .locals 2

    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "captured_display_image.tmp"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/incallui/util/VideoCallUtils;->getExistFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getSavedPreviewImage(Lcom/android/incallui/Call;)Ljava/lang/String;
    .locals 2

    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "captured_preview_image.tmp"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/incallui/util/VideoCallUtils;->getExistFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method protected getVideoStateMessage()I
    .locals 6

    const/16 v1, 0xa

    const/16 v0, 0x9

    const/4 v4, 0x3

    const/4 v3, 0x0

    invoke-static {}, Lcom/android/incallui/VideoBanner;->getInstance()Lcom/android/incallui/VideoBanner;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/VideoBanner;->getVideoBannerType()I

    move-result v2

    iget v5, p0, Lcom/android/incallui/fragment/VideoCallVGAUsaFragment;->mSecVideoState:I

    invoke-static {v5}, Lcom/android/incallui/service/vt/SecVideoState;->hasHolding(I)Z

    move-result v5

    if-eqz v5, :cond_1

    :cond_0
    :goto_0
    return v2

    :cond_1
    iget v5, p0, Lcom/android/incallui/fragment/VideoCallVGAUsaFragment;->mSecVideoState:I

    invoke-static {v5}, Lcom/android/incallui/service/vt/SecVideoState;->hasHoldingTheOtherParty(I)Z

    move-result v5

    if-eqz v5, :cond_2

    iget v0, p0, Lcom/android/incallui/fragment/VideoCallVGAUsaFragment;->mOldSecVideoState:I

    invoke-static {v0}, Lcom/android/incallui/service/vt/SecVideoState;->isNoVideo(I)Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/incallui/fragment/VideoCallVGAUsaFragment;->mOldSecVideoState:I

    invoke-static {v0}, Lcom/android/incallui/service/vt/SecVideoState;->hasHoldingTheOtherParty(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/16 v2, 0xf

    goto :goto_0

    :cond_2
    iget v5, p0, Lcom/android/incallui/fragment/VideoCallVGAUsaFragment;->mSecVideoState:I

    invoke-static {v5}, Lcom/android/incallui/service/vt/SecVideoState;->isTwoWayVideo(I)Z

    move-result v5

    if-eqz v5, :cond_9

    iget v4, p0, Lcom/android/incallui/fragment/VideoCallVGAUsaFragment;->mSecVideoState:I

    invoke-static {v4}, Lcom/android/incallui/service/vt/SecVideoState;->isActiveTwoWayVideo(I)Z

    move-result v4

    if-eqz v4, :cond_18

    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallConfig;->CONCEPT_USA_CDMA()Z

    move-result v4

    if-eqz v4, :cond_18

    iget v4, p0, Lcom/android/incallui/fragment/VideoCallVGAUsaFragment;->mSecVideoState:I

    invoke-static {v4}, Lcom/android/incallui/service/vt/SecVideoState;->isTwoWayVideo(I)Z

    move-result v4

    if-eqz v4, :cond_8

    iget v4, p0, Lcom/android/incallui/fragment/VideoCallVGAUsaFragment;->mOldSecVideoState:I

    invoke-static {v4}, Lcom/android/incallui/service/vt/SecVideoState;->isOneWayTx(I)Z

    move-result v4

    if-eqz v4, :cond_8

    :goto_1
    iget v1, p0, Lcom/android/incallui/fragment/VideoCallVGAUsaFragment;->mOldSecVideoState:I

    invoke-static {v1}, Lcom/android/incallui/service/vt/SecVideoState;->hasModifyRequest(I)Z

    move-result v1

    if-nez v1, :cond_3

    iget v1, p0, Lcom/android/incallui/fragment/VideoCallVGAUsaFragment;->mOldSecVideoState:I

    invoke-static {v1}, Lcom/android/incallui/service/vt/SecVideoState;->hasModifyReceive(I)Z

    move-result v1

    if-eqz v1, :cond_17

    :cond_3
    move v2, v3

    :cond_4
    :goto_2
    iget v0, p0, Lcom/android/incallui/fragment/VideoCallVGAUsaFragment;->mOldSecVideoState:I

    invoke-static {v0}, Lcom/android/incallui/service/vt/SecVideoState;->hasHoldingTheOtherParty(I)Z

    move-result v0

    if-eqz v0, :cond_5

    const/16 v2, 0x10

    :cond_5
    iget v0, p0, Lcom/android/incallui/fragment/VideoCallVGAUsaFragment;->mSecVideoState:I

    invoke-static {v0}, Lcom/android/incallui/service/vt/SecVideoState;->hasHeldVideo(I)Z

    move-result v0

    if-eqz v0, :cond_16

    iget v0, p0, Lcom/android/incallui/fragment/VideoCallVGAUsaFragment;->mOldSecVideoState:I

    invoke-static {v0}, Lcom/android/incallui/service/vt/SecVideoState;->hasHeldVideo(I)Z

    move-result v0

    if-nez v0, :cond_6

    iget v0, p0, Lcom/android/incallui/fragment/VideoCallVGAUsaFragment;->mOldSecVideoState:I

    invoke-static {v0}, Lcom/android/incallui/service/vt/SecVideoState;->isNoVideo(I)Z

    move-result v0

    if-nez v0, :cond_6

    const/4 v2, 0x7

    :cond_6
    :goto_3
    iget v0, p0, Lcom/android/incallui/fragment/VideoCallVGAUsaFragment;->mSecVideoState:I

    invoke-static {v0}, Lcom/android/incallui/service/vt/SecVideoState;->hasIncoming(I)Z

    move-result v0

    if-nez v0, :cond_7

    iget v0, p0, Lcom/android/incallui/fragment/VideoCallVGAUsaFragment;->mSecVideoState:I

    invoke-static {v0}, Lcom/android/incallui/service/vt/SecVideoState;->hasOutgoing(I)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_7
    move v2, v3

    goto/16 :goto_0

    :cond_8
    iget v0, p0, Lcom/android/incallui/fragment/VideoCallVGAUsaFragment;->mSecVideoState:I

    invoke-static {v0}, Lcom/android/incallui/service/vt/SecVideoState;->isOneWayTx(I)Z

    move-result v0

    if-eqz v0, :cond_18

    iget v0, p0, Lcom/android/incallui/fragment/VideoCallVGAUsaFragment;->mOldSecVideoState:I

    invoke-static {v0}, Lcom/android/incallui/service/vt/SecVideoState;->isTwoWayVideo(I)Z

    move-result v0

    if-eqz v0, :cond_18

    move v0, v1

    goto :goto_1

    :cond_9
    iget v5, p0, Lcom/android/incallui/fragment/VideoCallVGAUsaFragment;->mSecVideoState:I

    invoke-static {v5}, Lcom/android/incallui/service/vt/SecVideoState;->isOneWayTx(I)Z

    move-result v5

    if-eqz v5, :cond_e

    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallConfig;->CONCEPT_USA_CDMA()Z

    move-result v4

    if-eqz v4, :cond_d

    iget v4, p0, Lcom/android/incallui/fragment/VideoCallVGAUsaFragment;->mSecVideoState:I

    invoke-static {v4}, Lcom/android/incallui/service/vt/SecVideoState;->isTwoWayVideo(I)Z

    move-result v4

    if-eqz v4, :cond_c

    iget v4, p0, Lcom/android/incallui/fragment/VideoCallVGAUsaFragment;->mOldSecVideoState:I

    invoke-static {v4}, Lcom/android/incallui/service/vt/SecVideoState;->isOneWayTx(I)Z

    move-result v4

    if-eqz v4, :cond_c

    move v2, v0

    :cond_a
    :goto_4
    iget v0, p0, Lcom/android/incallui/fragment/VideoCallVGAUsaFragment;->mOldSecVideoState:I

    invoke-static {v0}, Lcom/android/incallui/service/vt/SecVideoState;->hasModifyRequest(I)Z

    move-result v0

    if-nez v0, :cond_b

    iget v0, p0, Lcom/android/incallui/fragment/VideoCallVGAUsaFragment;->mOldSecVideoState:I

    invoke-static {v0}, Lcom/android/incallui/service/vt/SecVideoState;->hasModifyReceive(I)Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_b
    move v2, v3

    goto :goto_2

    :cond_c
    iget v0, p0, Lcom/android/incallui/fragment/VideoCallVGAUsaFragment;->mSecVideoState:I

    invoke-static {v0}, Lcom/android/incallui/service/vt/SecVideoState;->isOneWayTx(I)Z

    move-result v0

    if-eqz v0, :cond_a

    iget v0, p0, Lcom/android/incallui/fragment/VideoCallVGAUsaFragment;->mOldSecVideoState:I

    invoke-static {v0}, Lcom/android/incallui/service/vt/SecVideoState;->isTwoWayVideo(I)Z

    move-result v0

    if-eqz v0, :cond_a

    move v2, v1

    goto :goto_4

    :cond_d
    iget v0, p0, Lcom/android/incallui/fragment/VideoCallVGAUsaFragment;->mOldSecVideoState:I

    invoke-static {v0}, Lcom/android/incallui/service/vt/SecVideoState;->isActiveTwoWayVideo(I)Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 v2, 0x6

    goto :goto_4

    :cond_e
    iget v0, p0, Lcom/android/incallui/fragment/VideoCallVGAUsaFragment;->mSecVideoState:I

    invoke-static {v0}, Lcom/android/incallui/service/vt/SecVideoState;->isOneWayRx(I)Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-static {}, Lcom/android/incallui/VideoBanner;->getInstance()Lcom/android/incallui/VideoBanner;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/VideoBanner;->hasTimerToHideBanner()Z

    move-result v0

    if-nez v0, :cond_4

    move v2, v3

    goto/16 :goto_2

    :cond_f
    iget v0, p0, Lcom/android/incallui/fragment/VideoCallVGAUsaFragment;->mSecVideoState:I

    invoke-static {v0}, Lcom/android/incallui/service/vt/SecVideoState;->hasModifyRequest(I)Z

    move-result v0

    if-eqz v0, :cond_13

    iget v0, p0, Lcom/android/incallui/fragment/VideoCallVGAUsaFragment;->mSecVideoState:I

    invoke-static {v0}, Lcom/android/incallui/service/vt/SecVideoState;->modifyingToDummy(I)Z

    move-result v0

    if-eqz v0, :cond_10

    const/4 v2, 0x5

    goto/16 :goto_2

    :cond_10
    iget v0, p0, Lcom/android/incallui/fragment/VideoCallVGAUsaFragment;->mSecVideoState:I

    invoke-static {v0}, Lcom/android/incallui/service/vt/SecVideoState;->modifyingVoiceToTwoWay(I)Z

    move-result v0

    if-eqz v0, :cond_11

    move v2, v4

    goto/16 :goto_2

    :cond_11
    iget v0, p0, Lcom/android/incallui/fragment/VideoCallVGAUsaFragment;->mSecVideoState:I

    invoke-static {v0}, Lcom/android/incallui/service/vt/SecVideoState;->modifyingVoiceToOneWay(I)Z

    move-result v0

    if-eqz v0, :cond_12

    const/4 v2, 0x4

    goto/16 :goto_2

    :cond_12
    iget v0, p0, Lcom/android/incallui/fragment/VideoCallVGAUsaFragment;->mSecVideoState:I

    invoke-static {v0}, Lcom/android/incallui/service/vt/SecVideoState;->modifyingOneWayToTwoWay(I)Z

    move-result v0

    if-eqz v0, :cond_4

    move v2, v4

    goto/16 :goto_2

    :cond_13
    iget v0, p0, Lcom/android/incallui/fragment/VideoCallVGAUsaFragment;->mSecVideoState:I

    invoke-static {v0}, Lcom/android/incallui/service/vt/SecVideoState;->hasModifyReceive(I)Z

    move-result v0

    if-eqz v0, :cond_4

    iget v0, p0, Lcom/android/incallui/fragment/VideoCallVGAUsaFragment;->mSecVideoState:I

    invoke-static {v0}, Lcom/android/incallui/service/vt/SecVideoState;->modifyingVoiceToTwoWay(I)Z

    move-result v0

    if-eqz v0, :cond_14

    const/16 v2, 0x11

    goto/16 :goto_2

    :cond_14
    iget v0, p0, Lcom/android/incallui/fragment/VideoCallVGAUsaFragment;->mSecVideoState:I

    invoke-static {v0}, Lcom/android/incallui/service/vt/SecVideoState;->modifyingVoiceToOneWay(I)Z

    move-result v0

    if-eqz v0, :cond_15

    const/4 v2, 0x2

    goto/16 :goto_2

    :cond_15
    iget v0, p0, Lcom/android/incallui/fragment/VideoCallVGAUsaFragment;->mSecVideoState:I

    invoke-static {v0}, Lcom/android/incallui/service/vt/SecVideoState;->modifyingOneWayToTwoWay(I)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v2, 0x1

    goto/16 :goto_2

    :cond_16
    iget v0, p0, Lcom/android/incallui/fragment/VideoCallVGAUsaFragment;->mOldSecVideoState:I

    invoke-static {v0}, Lcom/android/incallui/service/vt/SecVideoState;->hasHeldVideo(I)Z

    move-result v0

    if-eqz v0, :cond_6

    const/16 v2, 0x8

    goto/16 :goto_3

    :cond_17
    move v2, v0

    goto/16 :goto_2

    :cond_18
    move v0, v2

    goto/16 :goto_1
.end method

.method protected needToHideSmallView()Z
    .locals 1

    invoke-super {p0}, Lcom/android/incallui/fragment/VideoCallBaseFragment;->needToHideSmallView()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallConfig;->CONCEPT_USA_ATT()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/android/incallui/InCallUISystemDB;->getPIPVisiblity()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected needToShowDisplayImage()Z
    .locals 1

    iget v0, p0, Lcom/android/incallui/fragment/VideoCallVGAUsaFragment;->mSecVideoState:I

    invoke-static {v0}, Lcom/android/incallui/service/vt/SecVideoState;->hasHolding(I)Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/incallui/fragment/VideoCallVGAUsaFragment;->mSecVideoState:I

    invoke-static {v0}, Lcom/android/incallui/service/vt/SecVideoState;->hasPausedDisplayState(I)Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/incallui/fragment/VideoCallVGAUsaFragment;->mSecVideoState:I

    invoke-static {v0}, Lcom/android/incallui/service/vt/SecVideoState;->hasModifyReceive(I)Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/incallui/fragment/VideoCallVGAUsaFragment;->mSecVideoState:I

    invoke-static {v0}, Lcom/android/incallui/service/vt/SecVideoState;->hasModifyRequest(I)Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/android/incallui/fragment/VideoCallVGAUsaFragment;->mSecVideoState:I

    invoke-static {v0}, Lcom/android/incallui/service/vt/SecVideoState;->modifyingToDummy(I)Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/incallui/fragment/VideoCallVGAUsaFragment;->mSecVideoState:I

    invoke-static {v0}, Lcom/android/incallui/service/vt/SecVideoState;->modifyingVoiceToTwoWay(I)Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/incallui/fragment/VideoCallVGAUsaFragment;->mSecVideoState:I

    invoke-static {v0}, Lcom/android/incallui/service/vt/SecVideoState;->modifyingVoiceToOneWay(I)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected needToShowPreviewImage()Z
    .locals 4

    const/4 v1, 0x1

    const/4 v0, 0x0

    iget v2, p0, Lcom/android/incallui/fragment/VideoCallVGAUsaFragment;->mSecVideoState:I

    invoke-static {v2}, Lcom/android/incallui/service/vt/SecVideoState;->hasHolding(I)Z

    move-result v2

    if-nez v2, :cond_0

    iget v2, p0, Lcom/android/incallui/fragment/VideoCallVGAUsaFragment;->mSecVideoState:I

    invoke-static {v2}, Lcom/android/incallui/service/vt/SecVideoState;->isOneWayRx(I)Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_0
    move v2, v1

    :goto_0
    if-nez v2, :cond_4

    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallConfig;->CONCEPT_USA_CAN_GSM()Z

    move-result v3

    if-eqz v3, :cond_4

    iget v2, p0, Lcom/android/incallui/fragment/VideoCallVGAUsaFragment;->mSecVideoState:I

    invoke-static {v2}, Lcom/android/incallui/service/vt/SecVideoState;->hasHoldingTheOtherParty(I)Z

    move-result v2

    if-nez v2, :cond_1

    iget v2, p0, Lcom/android/incallui/fragment/VideoCallVGAUsaFragment;->mSecVideoState:I

    invoke-static {v2}, Lcom/android/incallui/service/vt/SecVideoState;->hasModifyRequest(I)Z

    move-result v2

    if-eqz v2, :cond_2

    iget v2, p0, Lcom/android/incallui/fragment/VideoCallVGAUsaFragment;->mSecVideoState:I

    invoke-static {v2}, Lcom/android/incallui/service/vt/SecVideoState;->modifyingOneWayToTwoWay(I)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_1
    move v0, v1

    :cond_2
    :goto_1
    return v0

    :cond_3
    move v2, v0

    goto :goto_0

    :cond_4
    move v0, v2

    goto :goto_1
.end method

.method public onCallObjectChanged(Lcom/android/incallui/Call;)V
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallVGAUsaFragment;->mPrimaryCall:Lcom/android/incallui/Call;

    if-eqz v0, :cond_0

    const-string v0, "onCallObjectChanged"

    invoke-virtual {p0, v0}, Lcom/android/incallui/fragment/VideoCallVGAUsaFragment;->saveLastBitmapToFile(Ljava/lang/String;)V

    :cond_0
    invoke-super {p0, p1}, Lcom/android/incallui/fragment/VideoCallBaseFragment;->onCallObjectChanged(Lcom/android/incallui/Call;)V

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallVGAUsaFragment;->mPrimaryCall:Lcom/android/incallui/Call;

    invoke-virtual {p0, v0}, Lcom/android/incallui/fragment/VideoCallVGAUsaFragment;->restoreLastBitmap(Lcom/android/incallui/Call;)V

    return-void
.end method

.method public onDestroyView()V
    .locals 2

    invoke-super {p0}, Lcom/android/incallui/fragment/VideoCallBaseFragment;->onDestroyView()V

    invoke-static {}, Lcom/android/incallui/VideoBanner;->getInstance()Lcom/android/incallui/VideoBanner;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/incallui/VideoBanner;->setVideoCallBanner(I)V

    return-void
.end method

.method public onPause()V
    .locals 1

    invoke-super {p0}, Lcom/android/incallui/fragment/VideoCallBaseFragment;->onPause()V

    const-string v0, "onPause"

    invoke-virtual {p0, v0}, Lcom/android/incallui/fragment/VideoCallVGAUsaFragment;->saveLastBitmapToFile(Ljava/lang/String;)V

    return-void
.end method

.method public onResume()V
    .locals 1

    invoke-super {p0}, Lcom/android/incallui/fragment/VideoCallBaseFragment;->onResume()V

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallVGAUsaFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/VideoCallPresenter;

    invoke-virtual {v0}, Lcom/android/incallui/VideoCallPresenter;->getPrimaryCall()Lcom/android/incallui/Call;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/incallui/fragment/VideoCallVGAUsaFragment;->restoreLastBitmap(Lcom/android/incallui/Call;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/incallui/fragment/VideoCallVGAUsaFragment;->mIsShowingUi:Z

    return-void
.end method

.method public onStop()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/incallui/fragment/VideoCallVGAUsaFragment;->mIsShowingUi:Z

    invoke-super {p0}, Lcom/android/incallui/fragment/VideoCallBaseFragment;->onStop()V

    return-void
.end method

.method public restoreLastBitmap(Lcom/android/incallui/Call;)V
    .locals 1

    sget v0, Lcom/android/incallui/service/vt/VideoCallCapability;->RX_HELD:I

    invoke-static {v0}, Lcom/android/incallui/service/vt/VideoCallCapability;->can(I)Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/incallui/fragment/VideoCallVGAUsaFragment;->restoreLastPreviewBitmap(Lcom/android/incallui/Call;)V

    invoke-virtual {p0, p1}, Lcom/android/incallui/fragment/VideoCallVGAUsaFragment;->restoreLastDisplayBitmap(Lcom/android/incallui/Call;)V

    :cond_0
    return-void
.end method

.method public restoreLastDisplayBitmap(Lcom/android/incallui/Call;)V
    .locals 2

    sget v0, Lcom/android/incallui/service/vt/VideoCallCapability;->RX_HELD:I

    invoke-static {v0}, Lcom/android/incallui/service/vt/VideoCallCapability;->can(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/incallui/fragment/VideoCallVGAUsaFragment;->getSavedDisplayImage(Lcom/android/incallui/Call;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/incallui/util/VideoCallUtils;->getBitmapFromFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/incallui/fragment/VideoCallVGAUsaFragment;->updateLastDisplayBitmap(Lcom/android/incallui/Call;Landroid/graphics/Bitmap;Z)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallVGAUsaFragment;->clearDisplayBitmap()V

    goto :goto_0
.end method

.method public restoreLastPreviewBitmap(Lcom/android/incallui/Call;)V
    .locals 2

    sget v0, Lcom/android/incallui/service/vt/VideoCallCapability;->RX_HELD:I

    invoke-static {v0}, Lcom/android/incallui/service/vt/VideoCallCapability;->can(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/incallui/fragment/VideoCallVGAUsaFragment;->getSavedPreviewImage(Lcom/android/incallui/Call;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/incallui/util/VideoCallUtils;->getBitmapFromFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/incallui/fragment/VideoCallVGAUsaFragment;->updateLastPreviewBitmap(Lcom/android/incallui/Call;Landroid/graphics/Bitmap;Z)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallVGAUsaFragment;->clearPreviewBitmap()V

    goto :goto_0
.end method

.method public saveCapturedDisplayImage(Lcom/android/incallui/Call;Landroid/graphics/Bitmap;)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/incallui/CallList;->isAlive(Lcom/android/incallui/Call;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "captured_display_image.tmp"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/android/incallui/util/VideoCallUtils;->saveBitmapToFile(Landroid/graphics/Bitmap;Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Display : update - success, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/incallui/service/vt/VideoCallLog;->image(Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method public saveCapturedPreviewImage(Lcom/android/incallui/Call;Landroid/graphics/Bitmap;)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/incallui/CallList;->isAlive(Lcom/android/incallui/Call;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "captured_preview_image.tmp"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/android/incallui/util/VideoCallUtils;->saveBitmapToFile(Landroid/graphics/Bitmap;Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Preview : update - success, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/incallui/service/vt/VideoCallLog;->image(Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method public saveLastBitmapToFile(Ljava/lang/String;)V
    .locals 3

    const/4 v2, 0x1

    sget v0, Lcom/android/incallui/service/vt/VideoCallCapability;->RX_HELD:I

    invoke-static {v0}, Lcom/android/incallui/service/vt/VideoCallCapability;->can(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallVGAUsaFragment;->mPrimaryCall:Lcom/android/incallui/Call;

    invoke-virtual {p0, v0}, Lcom/android/incallui/fragment/VideoCallVGAUsaFragment;->canSaveBitmap(Lcom/android/incallui/Call;)Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " - saveLastBitmapToFile : blocked"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/incallui/service/vt/VideoCallLog;->image(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " - saveLastBitmapToFile : start"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/incallui/service/vt/VideoCallLog;->image(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallVGAUsaFragment;->getPreviewBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallVGAUsaFragment;->mPrimaryCall:Lcom/android/incallui/Call;

    invoke-virtual {p0, v1, v0, v2}, Lcom/android/incallui/fragment/VideoCallVGAUsaFragment;->updateLastPreviewBitmap(Lcom/android/incallui/Call;Landroid/graphics/Bitmap;Z)V

    :cond_2
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallVGAUsaFragment;->getDisplayBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallVGAUsaFragment;->mPrimaryCall:Lcom/android/incallui/Call;

    invoke-virtual {p0, v1, v0, v2}, Lcom/android/incallui/fragment/VideoCallVGAUsaFragment;->updateLastDisplayBitmap(Lcom/android/incallui/Call;Landroid/graphics/Bitmap;Z)V

    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " - saveLastBitmapToFile : end"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/incallui/service/vt/VideoCallLog;->image(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setDisplayReady(Z)V
    .locals 3

    sget v0, Lcom/android/incallui/service/vt/VideoCallCapability;->RX_HELD:I

    invoke-static {v0}, Lcom/android/incallui/service/vt/VideoCallCapability;->can(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/incallui/fragment/VideoCallVGAUsaFragment;->mIsDisplayReady:Z

    if-eq v0, p1, :cond_0

    iget-boolean v0, p0, Lcom/android/incallui/fragment/VideoCallVGAUsaFragment;->mIsShowingUi:Z

    if-eqz v0, :cond_0

    if-nez p1, :cond_1

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallVGAUsaFragment;->mPrimaryCall:Lcom/android/incallui/Call;

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallVGAUsaFragment;->getDisplayBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/incallui/fragment/VideoCallVGAUsaFragment;->updateLastDisplayBitmap(Lcom/android/incallui/Call;Landroid/graphics/Bitmap;Z)V

    :cond_0
    :goto_0
    invoke-super {p0, p1}, Lcom/android/incallui/fragment/VideoCallBaseFragment;->setDisplayReady(Z)V

    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallVGAUsaFragment;->isPeerVideoVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallVGAUsaFragment;->mPrimaryCall:Lcom/android/incallui/Call;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/incallui/fragment/VideoCallVGAUsaFragment;->deleteCapturedImage(Lcom/android/incallui/Call;Z)V

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallVGAUsaFragment;->clearDisplayBitmap()V

    goto :goto_0
.end method

.method public setPreviewReady(Z)V
    .locals 3

    const/4 v2, 0x1

    sget v0, Lcom/android/incallui/service/vt/VideoCallCapability;->RX_HELD:I

    invoke-static {v0}, Lcom/android/incallui/service/vt/VideoCallCapability;->can(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/incallui/fragment/VideoCallVGAUsaFragment;->mIsPreviewReady:Z

    if-eq v0, p1, :cond_0

    iget-boolean v0, p0, Lcom/android/incallui/fragment/VideoCallVGAUsaFragment;->mIsShowingUi:Z

    if-eqz v0, :cond_0

    if-nez p1, :cond_1

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallVGAUsaFragment;->mPrimaryCall:Lcom/android/incallui/Call;

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallVGAUsaFragment;->getPreviewBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/incallui/fragment/VideoCallVGAUsaFragment;->updateLastPreviewBitmap(Lcom/android/incallui/Call;Landroid/graphics/Bitmap;Z)V

    :cond_0
    :goto_0
    invoke-super {p0, p1}, Lcom/android/incallui/fragment/VideoCallBaseFragment;->setPreviewReady(Z)V

    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallVGAUsaFragment;->isPreviewVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallVGAUsaFragment;->mPrimaryCall:Lcom/android/incallui/Call;

    invoke-virtual {p0, v0, v2}, Lcom/android/incallui/fragment/VideoCallVGAUsaFragment;->deleteCapturedImage(Lcom/android/incallui/Call;Z)V

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallVGAUsaFragment;->clearPreviewBitmap()V

    goto :goto_0
.end method

.method protected showView()V
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallVGAUsaFragment;->mPrimaryCall:Lcom/android/incallui/Call;

    invoke-virtual {p0, v0}, Lcom/android/incallui/fragment/VideoCallVGAUsaFragment;->restoreLastBitmap(Lcom/android/incallui/Call;)V

    invoke-super {p0}, Lcom/android/incallui/fragment/VideoCallBaseFragment;->showView()V

    return-void
.end method

.method public updateLastDisplayBitmap(Lcom/android/incallui/Call;Landroid/graphics/Bitmap;Z)V
    .locals 3

    sget v0, Lcom/android/incallui/service/vt/VideoCallCapability;->RX_HELD:I

    invoke-static {v0}, Lcom/android/incallui/service/vt/VideoCallCapability;->can(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/incallui/fragment/VideoCallVGAUsaFragment;->canSaveBitmap(Lcom/android/incallui/Call;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "Display : update - blocked"

    invoke-static {v0}, Lcom/android/incallui/service/vt/VideoCallLog;->image(Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/incallui/fragment/VideoCallVGAUsaFragment;->deleteCapturedImage(Lcom/android/incallui/Call;Z)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallVGAUsaFragment;->mDisplayImage:Landroid/widget/ImageView;

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallVGAUsaFragment;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallVGAUsaFragment;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f1004d8

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/incallui/fragment/VideoCallVGAUsaFragment;->mDisplayImage:Landroid/widget/ImageView;

    :cond_2
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallVGAUsaFragment;->mDisplayImage:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    if-eqz p2, :cond_4

    if-eqz p3, :cond_3

    invoke-virtual {p0, p1, p2}, Lcom/android/incallui/fragment/VideoCallVGAUsaFragment;->saveCapturedDisplayImage(Lcom/android/incallui/Call;Landroid/graphics/Bitmap;)Ljava/lang/String;

    :goto_1
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallVGAUsaFragment;->mDisplayImage:Landroid/widget/ImageView;

    invoke-static {p2}, Lcom/android/incallui/util/VideoCallUtils;->toGrayscale(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallVGAUsaFragment;->mDisplayImage:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallVGAUsaFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e020d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/incallui/fragment/VideoCallVGAUsaFragment;->mDisplayImageReady:Z

    goto :goto_0

    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Display : update - success, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/incallui/service/vt/VideoCallLog;->image(Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Display : update - failed, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/incallui/service/vt/VideoCallLog;->image(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public updateLastPreviewBitmap(Lcom/android/incallui/Call;Landroid/graphics/Bitmap;Z)V
    .locals 4

    const/4 v3, 0x1

    sget v0, Lcom/android/incallui/service/vt/VideoCallCapability;->RX_HELD:I

    invoke-static {v0}, Lcom/android/incallui/service/vt/VideoCallCapability;->can(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/incallui/fragment/VideoCallVGAUsaFragment;->canSaveBitmap(Lcom/android/incallui/Call;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "Preview : update - blocked"

    invoke-static {v0}, Lcom/android/incallui/service/vt/VideoCallLog;->image(Ljava/lang/String;)V

    invoke-virtual {p0, p1, v3}, Lcom/android/incallui/fragment/VideoCallVGAUsaFragment;->deleteCapturedImage(Lcom/android/incallui/Call;Z)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallVGAUsaFragment;->mPreviewImage:Landroid/widget/ImageView;

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallVGAUsaFragment;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallVGAUsaFragment;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f1004dd

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/incallui/fragment/VideoCallVGAUsaFragment;->mPreviewImage:Landroid/widget/ImageView;

    :cond_2
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallVGAUsaFragment;->mPreviewImage:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    if-eqz p2, :cond_4

    if-eqz p3, :cond_3

    invoke-virtual {p0, p1, p2}, Lcom/android/incallui/fragment/VideoCallVGAUsaFragment;->saveCapturedPreviewImage(Lcom/android/incallui/Call;Landroid/graphics/Bitmap;)Ljava/lang/String;

    :goto_1
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallVGAUsaFragment;->mPreviewImage:Landroid/widget/ImageView;

    invoke-static {p2}, Lcom/android/incallui/util/VideoCallUtils;->toGrayscale(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallVGAUsaFragment;->mPreviewImage:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallVGAUsaFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e020d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    iput-boolean v3, p0, Lcom/android/incallui/fragment/VideoCallVGAUsaFragment;->mPreviewImageReady:Z

    goto :goto_0

    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Preview : update - success, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/incallui/service/vt/VideoCallLog;->image(Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Preview : update - failed, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/incallui/service/vt/VideoCallLog;->image(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public updatePrimaryCall(Lcom/android/incallui/Call;)V
    .locals 2

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/InCallPresenter;->getActivity()Lcom/android/incallui/InCallActivity;

    move-result-object v0

    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallConfig;->CONCEPT_USA_CDMA()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallConfig;->CONCEPT_CAN_BMC()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallConfig;->CONCEPT_CAN_VMC()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    if-eqz v0, :cond_1

    invoke-static {p1}, Lcom/android/incallui/service/vt/VideoCallControl;->needToShowDataDialog(Lcom/android/incallui/Call;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lcom/android/incallui/InCallActivity;->showDataChargeAlertDialog()V

    invoke-virtual {p1}, Lcom/android/incallui/Call;->getSecCall()Lcom/android/incallui/SecCall;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/SecCall;->setDataDialogAsShown()V

    :cond_1
    invoke-super {p0, p1}, Lcom/android/incallui/fragment/VideoCallBaseFragment;->updatePrimaryCall(Lcom/android/incallui/Call;)V

    return-void
.end method
