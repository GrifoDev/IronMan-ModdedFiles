.class public Lcom/android/incallui/fragment/view/CallCardCrbtView;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/android/incallui/fragment/view/ICallCardViewAdapter;


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "CallCardCrbtView"


# instance fields
.field private mCrbtCallInfoContainer:Landroid/view/View;

.field private mCrbtCallStateLabel:Landroid/widget/TextView;

.field private mCrbtLabel:Landroid/widget/TextView;

.field private mCrbtName:Landroid/widget/TextView;

.field private mCrbtPhoneNumber:Landroid/widget/TextView;

.field private mCrbtPhoneNumberLocator:Landroid/widget/TextView;

.field private mCrbtPhoto:Landroid/widget/ImageView;

.field private mCrbtSlash:Landroid/widget/TextView;

.field private mCrbtStub:Landroid/view/ViewStub;

.field private mCrbtVideoView:Landroid/view/TextureView;

.field private mEarlyMediaSurface:Lcom/android/incallui/fragment/view/EarlyMediaSurface;

.field private final mFragment:Lcom/android/incallui/fragment/CallCardFragment;

.field private mIsDisplayReady:Z

.field protected mPreparingAnimation:Landroid/view/View;

.field private mSimIconLabel:Landroid/widget/ImageView;

.field private mSimIconLabelLarge:Landroid/widget/ImageView;

.field private mSimIconLabelLargeStub:Landroid/view/ViewStub;

.field private mSimIconLabelStub:Landroid/view/ViewStub;

.field private mView:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/android/incallui/fragment/CallCardFragment;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/incallui/fragment/view/CallCardCrbtView;->mIsDisplayReady:Z

    iput-object p1, p0, Lcom/android/incallui/fragment/view/CallCardCrbtView;->mFragment:Lcom/android/incallui/fragment/CallCardFragment;

    return-void
.end method

.method private arrangePrimaryLayout(Lcom/android/incallui/fragment/VoiceCallCardFragment;)V
    .locals 3

    const-string v0, "crbt_video_cmcc"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/android/incallui/util/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/incallui/ContactInfoCache;->getInstance(Landroid/content/Context;)Lcom/android/incallui/ContactInfoCache;

    move-result-object v1

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/android/incallui/ContactInfoCache;->getInfo(Ljava/lang/String;)Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/android/incallui/fragment/view/CallCardCrbtView;->setInfo(Lcom/android/incallui/fragment/VoiceCallCardFragment;Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;)V

    :cond_0
    return-void
.end method

.method private inflateSimIconLabel(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/fragment/view/CallCardCrbtView;->mSimIconLabelStub:Landroid/view/ViewStub;

    if-nez v0, :cond_0

    const v0, 0x7f100102

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    iput-object v0, p0, Lcom/android/incallui/fragment/view/CallCardCrbtView;->mSimIconLabelStub:Landroid/view/ViewStub;

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/fragment/view/CallCardCrbtView;->mSimIconLabelLargeStub:Landroid/view/ViewStub;

    if-nez v0, :cond_1

    const v0, 0x7f1000ff

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    iput-object v0, p0, Lcom/android/incallui/fragment/view/CallCardCrbtView;->mSimIconLabelLargeStub:Landroid/view/ViewStub;

    :cond_1
    iget-object v0, p0, Lcom/android/incallui/fragment/view/CallCardCrbtView;->mSimIconLabelStub:Landroid/view/ViewStub;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/incallui/fragment/view/CallCardCrbtView;->mSimIconLabelStub:Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    :cond_2
    iget-object v0, p0, Lcom/android/incallui/fragment/view/CallCardCrbtView;->mSimIconLabelLargeStub:Landroid/view/ViewStub;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/incallui/fragment/view/CallCardCrbtView;->mSimIconLabelLargeStub:Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    :cond_3
    const v0, 0x7f10012b

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/incallui/fragment/view/CallCardCrbtView;->mSimIconLabel:Landroid/widget/ImageView;

    const v0, 0x7f10012c

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/incallui/fragment/view/CallCardCrbtView;->mSimIconLabelLarge:Landroid/widget/ImageView;

    return-void
.end method

.method private onViewCreated(Lcom/android/incallui/fragment/VoiceCallCardFragment;Landroid/view/View;)V
    .locals 2

    const-string v0, "crbt_video_cmcc"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const v0, 0x7f1000f6

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    iput-object v0, p0, Lcom/android/incallui/fragment/view/CallCardCrbtView;->mCrbtStub:Landroid/view/ViewStub;

    iget-object v0, p0, Lcom/android/incallui/fragment/view/CallCardCrbtView;->mCrbtStub:Landroid/view/ViewStub;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/fragment/view/CallCardCrbtView;->mCrbtStub:Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    const v0, 0x7f1000f8

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/incallui/fragment/view/CallCardCrbtView;->mCrbtCallStateLabel:Landroid/widget/TextView;

    const v0, 0x7f1000fc

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/fragment/view/CallCardCrbtView;->mCrbtCallInfoContainer:Landroid/view/View;

    const v0, 0x7f1000fd

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/incallui/fragment/view/CallCardCrbtView;->mCrbtPhoto:Landroid/widget/ImageView;

    const v0, 0x7f100100

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/incallui/fragment/view/CallCardCrbtView;->mCrbtName:Landroid/widget/TextView;

    const v0, 0x7f100103

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/incallui/fragment/view/CallCardCrbtView;->mCrbtLabel:Landroid/widget/TextView;

    const-string v0, "feature_multisim_display_sim_icon"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p2}, Lcom/android/incallui/fragment/view/CallCardCrbtView;->inflateSimIconLabel(Landroid/view/View;)V

    :cond_0
    const v0, 0x7f100104

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/incallui/fragment/view/CallCardCrbtView;->mCrbtPhoneNumber:Landroid/widget/TextView;

    const v0, 0x7f100105

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/incallui/fragment/view/CallCardCrbtView;->mCrbtSlash:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/android/incallui/fragment/view/CallCardCrbtView;->mView:Landroid/view/View;

    const v1, 0x7f1000f7

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/TextureView;

    iput-object v0, p0, Lcom/android/incallui/fragment/view/CallCardCrbtView;->mCrbtVideoView:Landroid/view/TextureView;

    const v0, 0x7f100106

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/incallui/fragment/view/CallCardCrbtView;->mCrbtPhoneNumberLocator:Landroid/widget/TextView;

    const v0, 0x7f1000f9

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/fragment/view/CallCardCrbtView;->mPreparingAnimation:Landroid/view/View;

    :cond_1
    return-void
.end method

.method private setCallState(Lcom/android/incallui/fragment/VoiceCallCardFragment;I)V
    .locals 7

    const/16 v6, 0x8

    const/4 v1, 0x1

    const/4 v2, 0x0

    const-string v0, "crbt_video_cmcc"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v0

    const/4 v3, 0x0

    invoke-static {v0, v3, v2}, Lcom/android/incallui/util/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Lcom/android/incallui/Call;->getCallDetails()Lcom/android/incallui/CallDetails;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/CallDetails;->isEarlyMedia()Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    :goto_0
    const-string v4, "CallCardCrbtView"

    const-string v5, "setCallState"

    invoke-static {v4, v5}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v4, 0x6

    if-ne p2, v4, :cond_4

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/incallui/fragment/view/CallCardCrbtView;->mEarlyMediaSurface:Lcom/android/incallui/fragment/view/EarlyMediaSurface;

    if-nez v0, :cond_2

    new-instance v0, Lcom/android/incallui/fragment/view/EarlyMediaSurface;

    iget-object v4, p0, Lcom/android/incallui/fragment/view/CallCardCrbtView;->mCrbtVideoView:Landroid/view/TextureView;

    invoke-direct {v0, v3, v4}, Lcom/android/incallui/fragment/view/EarlyMediaSurface;-><init>(Lcom/android/incallui/Call;Landroid/view/TextureView;)V

    iput-object v0, p0, Lcom/android/incallui/fragment/view/CallCardCrbtView;->mEarlyMediaSurface:Lcom/android/incallui/fragment/view/EarlyMediaSurface;

    :goto_1
    invoke-virtual {p1}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/incallui/ContactInfoCache;->getInstance(Landroid/content/Context;)Lcom/android/incallui/ContactInfoCache;

    move-result-object v0

    invoke-virtual {v3}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/android/incallui/ContactInfoCache;->getInfo(Ljava/lang/String;)Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/android/incallui/fragment/view/CallCardCrbtView;->setInfo(Lcom/android/incallui/fragment/VoiceCallCardFragment;Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;)V

    iget-object v0, p0, Lcom/android/incallui/fragment/view/CallCardCrbtView;->mCrbtStub:Landroid/view/ViewStub;

    invoke-virtual {v0, v2}, Landroid/view/ViewStub;->setVisibility(I)V

    iget-boolean v0, p0, Lcom/android/incallui/fragment/view/CallCardCrbtView;->mIsDisplayReady:Z

    if-nez v0, :cond_0

    invoke-virtual {p0, v1}, Lcom/android/incallui/fragment/view/CallCardCrbtView;->showPreparingAnimation(Z)V

    :cond_0
    :goto_2
    return-void

    :cond_1
    move v0, v2

    goto :goto_0

    :cond_2
    iget-boolean v0, p0, Lcom/android/incallui/fragment/view/CallCardCrbtView;->mIsDisplayReady:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/incallui/fragment/view/CallCardCrbtView;->mCrbtVideoView:Landroid/view/TextureView;

    invoke-virtual {v0, v6}, Landroid/view/TextureView;->setVisibility(I)V

    :cond_3
    iget-object v0, p0, Lcom/android/incallui/fragment/view/CallCardCrbtView;->mEarlyMediaSurface:Lcom/android/incallui/fragment/view/EarlyMediaSurface;

    invoke-virtual {v0, v3}, Lcom/android/incallui/fragment/view/EarlyMediaSurface;->updateCall(Lcom/android/incallui/Call;)V

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lcom/android/incallui/fragment/view/CallCardCrbtView;->mCrbtStub:Landroid/view/ViewStub;

    invoke-virtual {v0, v6}, Landroid/view/ViewStub;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/incallui/fragment/view/CallCardCrbtView;->mEarlyMediaSurface:Lcom/android/incallui/fragment/view/EarlyMediaSurface;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/incallui/fragment/view/CallCardCrbtView;->mEarlyMediaSurface:Lcom/android/incallui/fragment/view/EarlyMediaSurface;

    invoke-virtual {v0}, Lcom/android/incallui/fragment/view/EarlyMediaSurface;->clear()V

    :cond_5
    iput-boolean v2, p0, Lcom/android/incallui/fragment/view/CallCardCrbtView;->mIsDisplayReady:Z

    goto :goto_2
.end method

.method private setCallStatelabel(Lcom/android/incallui/fragment/VoiceCallCardFragment;)V
    .locals 2

    invoke-static {}, Lcom/android/incallui/util/InCallUtils;->getCallCardDialingString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "assisted_dialing_enable"

    invoke-static {v1}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/android/incallui/operator/usa/InCallUIExtension;->getDialingLabelFromAssistedDialing(Landroid/content/Context;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    :cond_0
    iget-object v1, p0, Lcom/android/incallui/fragment/view/CallCardCrbtView;->mCrbtCallStateLabel:Landroid/widget/TextView;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/incallui/fragment/view/CallCardCrbtView;->mCrbtCallStateLabel:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    return-void
.end method

.method private setInfo(Lcom/android/incallui/fragment/VoiceCallCardFragment;Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;)V
    .locals 3

    const/4 v0, 0x0

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2, v0}, Lcom/android/incallui/util/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/android/incallui/Call;->getCallDetails()Lcom/android/incallui/CallDetails;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/CallDetails;->isEarlyMedia()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    if-eqz v1, :cond_1

    if-nez v0, :cond_2

    :cond_1
    const-string v0, "CallCardCrbtView"

    const-string v1, "call is null or not Video CRBT mode"

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_2
    invoke-direct {p0, p1}, Lcom/android/incallui/fragment/view/CallCardCrbtView;->setCallStatelabel(Lcom/android/incallui/fragment/VoiceCallCardFragment;)V

    if-eqz p2, :cond_3

    invoke-direct {p0, p1, p2}, Lcom/android/incallui/fragment/view/CallCardCrbtView;->setPhoto(Lcom/android/incallui/fragment/VoiceCallCardFragment;Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;)V

    invoke-direct {p0, p1, p2}, Lcom/android/incallui/fragment/view/CallCardCrbtView;->setName(Lcom/android/incallui/fragment/VoiceCallCardFragment;Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;)V

    invoke-direct {p0, p2}, Lcom/android/incallui/fragment/view/CallCardCrbtView;->setLabel(Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;)V

    invoke-direct {p0, p1, p2}, Lcom/android/incallui/fragment/view/CallCardCrbtView;->setPhoneNumber(Lcom/android/incallui/fragment/VoiceCallCardFragment;Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;)V

    const-string v0, "feature_multisim_display_sim_icon"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {v1}, Lcom/android/incallui/util/InCallUtilsMultiSIM;->getPhoneId(Lcom/android/incallui/Call;)I

    move-result v0

    invoke-virtual {p0, p1, v0, p2}, Lcom/android/incallui/fragment/view/CallCardCrbtView;->setPrimarySimIconLabel(Lcom/android/incallui/fragment/VoiceCallCardFragment;ILcom/android/incallui/ContactInfoCache$ContactCacheEntry;)V

    :cond_3
    invoke-direct {p0, p1}, Lcom/android/incallui/fragment/view/CallCardCrbtView;->setPhoneNumberLocator(Lcom/android/incallui/fragment/VoiceCallCardFragment;)V

    goto :goto_0
.end method

.method private setLabel(Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;)V
    .locals 2

    iget-object v0, p1, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->label:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/incallui/fragment/view/CallCardCrbtView;->mCrbtLabel:Landroid/widget/TextView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/incallui/fragment/view/CallCardCrbtView;->mCrbtLabel:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method private setName(Lcom/android/incallui/fragment/VoiceCallCardFragment;Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;)V
    .locals 2

    invoke-virtual {p1}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/CallCardPresenter;

    invoke-virtual {v0, p2}, Lcom/android/incallui/CallCardPresenter;->getNameForCall(Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/fragment/view/CallCardCrbtView;->mCrbtName:Landroid/widget/TextView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/incallui/fragment/view/CallCardCrbtView;->mCrbtName:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method private setPhoneNumber(Lcom/android/incallui/fragment/VoiceCallCardFragment;Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;)V
    .locals 2

    invoke-virtual {p1}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/CallCardPresenter;

    invoke-virtual {v0, p2}, Lcom/android/incallui/CallCardPresenter;->getNumberForCall(Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/fragment/view/CallCardCrbtView;->mCrbtPhoneNumber:Landroid/widget/TextView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/incallui/fragment/view/CallCardCrbtView;->mCrbtPhoneNumber:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method private setPhoneNumberLocator(Lcom/android/incallui/fragment/VoiceCallCardFragment;)V
    .locals 4

    const/16 v3, 0x8

    const/4 v2, 0x0

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1, v2}, Lcom/android/incallui/util/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getPhoneNumberLocator()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/fragment/view/CallCardCrbtView;->mCrbtPhoneNumberLocator:Landroid/widget/TextView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/incallui/fragment/view/CallCardCrbtView;->mCrbtSlash:Landroid/widget/TextView;

    if-eqz v1, :cond_0

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/android/incallui/fragment/view/CallCardCrbtView;->mCrbtPhoneNumberLocator:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p1}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getCallNumberAndLabel()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/fragment/view/CallCardCrbtView;->mCrbtSlash:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_0
    iget-object v0, p0, Lcom/android/incallui/fragment/view/CallCardCrbtView;->mCrbtPhoneNumberLocator:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_0
    :goto_1
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/incallui/fragment/view/CallCardCrbtView;->mCrbtSlash:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/incallui/fragment/view/CallCardCrbtView;->mCrbtSlash:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/incallui/fragment/view/CallCardCrbtView;->mCrbtPhoneNumberLocator:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1
.end method

.method private setPhoto(Lcom/android/incallui/fragment/VoiceCallCardFragment;Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;)V
    .locals 4

    iget-object v0, p2, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->photo:Landroid/graphics/drawable/Drawable;

    iget-boolean v1, p2, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->isPersonalPhotoAvailable:Z

    if-nez v1, :cond_0

    invoke-virtual {p1}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f02048f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :cond_0
    iget-object v1, p2, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->gifPhoto:Lcom/android/incallui/gif/GifDrawable;

    invoke-virtual {p1}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a0346

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    invoke-static {v0, v2}, Lcom/android/incallui/util/GraphicResourceUtils;->getCircledDrawable(Landroid/graphics/drawable/Drawable;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget-object v2, p0, Lcom/android/incallui/fragment/view/CallCardCrbtView;->mCrbtPhoto:Landroid/widget/ImageView;

    if-eqz v2, :cond_1

    if-eqz v1, :cond_2

    iget-object v0, p0, Lcom/android/incallui/fragment/view/CallCardCrbtView;->mCrbtPhoto:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/android/incallui/fragment/view/CallCardCrbtView;->mCrbtPhoto:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/android/incallui/util/GifUtil;->setOutline(Landroid/view/View;I)V

    invoke-static {v1}, Lcom/android/incallui/util/GifUtil;->playGif(Lcom/android/incallui/gif/GifDrawable;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v1, p0, Lcom/android/incallui/fragment/view/CallCardCrbtView;->mCrbtPhoto:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method private setPrimary(Lcom/android/incallui/fragment/VoiceCallCardFragment;Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;)V
    .locals 1

    const-string v0, "crbt_video_cmcc"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1, p2}, Lcom/android/incallui/fragment/view/CallCardCrbtView;->setInfo(Lcom/android/incallui/fragment/VoiceCallCardFragment;Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public animateForAnswerCall()V
    .locals 0

    return-void
.end method

.method public animateForSwap()V
    .locals 0

    return-void
.end method

.method public arrangePrimaryLayout()V
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/fragment/view/CallCardCrbtView;->mFragment:Lcom/android/incallui/fragment/CallCardFragment;

    instance-of v0, v0, Lcom/android/incallui/fragment/VoiceCallCardFragment;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/fragment/view/CallCardCrbtView;->mFragment:Lcom/android/incallui/fragment/CallCardFragment;

    check-cast v0, Lcom/android/incallui/fragment/VoiceCallCardFragment;

    invoke-direct {p0, v0}, Lcom/android/incallui/fragment/view/CallCardCrbtView;->arrangePrimaryLayout(Lcom/android/incallui/fragment/VoiceCallCardFragment;)V

    :cond_0
    return-void
.end method

.method public isShowingPreparingAnimation()Z
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/fragment/view/CallCardCrbtView;->mPreparingAnimation:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/fragment/view/CallCardCrbtView;->mPreparingAnimation:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onDestroyView()V
    .locals 3

    const/4 v2, 0x0

    const-string v0, "CallCardCrbtView"

    const-string v1, "onDestroyView"

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/incallui/fragment/view/CallCardCrbtView;->mCrbtPhoto:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/fragment/view/CallCardCrbtView;->mCrbtPhoto:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/fragment/view/CallCardCrbtView;->mSimIconLabel:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/fragment/view/CallCardCrbtView;->mSimIconLabel:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    iget-object v0, p0, Lcom/android/incallui/fragment/view/CallCardCrbtView;->mSimIconLabelLarge:Landroid/widget/ImageView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/incallui/fragment/view/CallCardCrbtView;->mSimIconLabelLarge:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_2
    return-void
.end method

.method public onPeerDimensionChanged(II)V
    .locals 3

    iget-object v0, p0, Lcom/android/incallui/fragment/view/CallCardCrbtView;->mCrbtVideoView:Landroid/view/TextureView;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v0, "crbt_video_cmcc"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/fragment/view/CallCardCrbtView;->mFragment:Lcom/android/incallui/fragment/CallCardFragment;

    instance-of v0, v0, Lcom/android/incallui/fragment/VoiceCallCardFragment;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/fragment/view/CallCardCrbtView;->mFragment:Lcom/android/incallui/fragment/CallCardFragment;

    check-cast v0, Lcom/android/incallui/fragment/VoiceCallCardFragment;

    iget-object v1, p0, Lcom/android/incallui/fragment/view/CallCardCrbtView;->mCrbtVideoView:Landroid/view/TextureView;

    invoke-virtual {v1}, Landroid/view/TextureView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    if-le p1, p2, :cond_2

    invoke-virtual {v0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0a034d

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, v1, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    :goto_1
    iget-object v0, p0, Lcom/android/incallui/fragment/view/CallCardCrbtView;->mCrbtVideoView:Landroid/view/TextureView;

    invoke-virtual {v0, v1}, Landroid/view/TextureView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0a034e

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, v1, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    goto :goto_1
.end method

.method public onResume()V
    .locals 0

    return-void
.end method

.method public onViewCreated(Landroid/view/View;)V
    .locals 1

    iput-object p1, p0, Lcom/android/incallui/fragment/view/CallCardCrbtView;->mView:Landroid/view/View;

    iget-object v0, p0, Lcom/android/incallui/fragment/view/CallCardCrbtView;->mFragment:Lcom/android/incallui/fragment/CallCardFragment;

    instance-of v0, v0, Lcom/android/incallui/fragment/VoiceCallCardFragment;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/fragment/view/CallCardCrbtView;->mFragment:Lcom/android/incallui/fragment/CallCardFragment;

    check-cast v0, Lcom/android/incallui/fragment/VoiceCallCardFragment;

    invoke-direct {p0, v0, p1}, Lcom/android/incallui/fragment/view/CallCardCrbtView;->onViewCreated(Lcom/android/incallui/fragment/VoiceCallCardFragment;Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public setCallState(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/fragment/view/CallCardCrbtView;->mFragment:Lcom/android/incallui/fragment/CallCardFragment;

    instance-of v0, v0, Lcom/android/incallui/fragment/VoiceCallCardFragment;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/fragment/view/CallCardCrbtView;->mFragment:Lcom/android/incallui/fragment/CallCardFragment;

    check-cast v0, Lcom/android/incallui/fragment/VoiceCallCardFragment;

    invoke-direct {p0, v0, p1}, Lcom/android/incallui/fragment/view/CallCardCrbtView;->setCallState(Lcom/android/incallui/fragment/VoiceCallCardFragment;I)V

    :cond_0
    return-void
.end method

.method public setPrimary(Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;)V
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/fragment/view/CallCardCrbtView;->mFragment:Lcom/android/incallui/fragment/CallCardFragment;

    instance-of v0, v0, Lcom/android/incallui/fragment/VoiceCallCardFragment;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/fragment/view/CallCardCrbtView;->mFragment:Lcom/android/incallui/fragment/CallCardFragment;

    check-cast v0, Lcom/android/incallui/fragment/VoiceCallCardFragment;

    invoke-direct {p0, v0, p1}, Lcom/android/incallui/fragment/view/CallCardCrbtView;->setPrimary(Lcom/android/incallui/fragment/VoiceCallCardFragment;Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;)V

    :cond_0
    return-void
.end method

.method public setPrimarySimIconLabel(Lcom/android/incallui/fragment/VoiceCallCardFragment;ILcom/android/incallui/ContactInfoCache$ContactCacheEntry;)V
    .locals 5

    const/4 v4, 0x1

    const/16 v3, 0x8

    const/4 v2, 0x0

    if-gez p2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getCallNumberAndLabel()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/incallui/fragment/view/CallCardCrbtView;->mSimIconLabelLarge:Landroid/widget/ImageView;

    if-nez v1, :cond_3

    :cond_2
    if-eqz p3, :cond_5

    iget-object v1, p3, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->time:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    :cond_3
    iget-object v0, p0, Lcom/android/incallui/fragment/view/CallCardCrbtView;->mSimIconLabelLarge:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-static {p2, v1}, Lcom/android/incallui/util/InCallUtilsMultiSIM;->getSimImage(II)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    const-string v0, "rich_call_screen_cmcc"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getChnFeatureView()Lcom/android/incallui/fragment/view/CallCardChnFeatureView;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getChnFeatureView()Lcom/android/incallui/fragment/view/CallCardChnFeatureView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/fragment/view/CallCardChnFeatureView;->isRichScreen()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/incallui/fragment/view/CallCardCrbtView;->mSimIconLabelLarge:Landroid/widget/ImageView;

    invoke-static {p2, v4}, Lcom/android/incallui/util/InCallUtilsMultiSIM;->getSimImage(II)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_4
    iget-object v0, p0, Lcom/android/incallui/fragment/view/CallCardCrbtView;->mSimIconLabelLarge:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/incallui/fragment/view/CallCardCrbtView;->mSimIconLabel:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/incallui/fragment/view/CallCardCrbtView;->mCrbtLabel:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/incallui/fragment/view/CallCardCrbtView;->mCrbtPhoneNumber:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    :cond_5
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/fragment/view/CallCardCrbtView;->mSimIconLabel:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/fragment/view/CallCardCrbtView;->mSimIconLabelLarge:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/fragment/view/CallCardCrbtView;->mSimIconLabel:Landroid/widget/ImageView;

    invoke-static {p2, v4}, Lcom/android/incallui/util/InCallUtilsMultiSIM;->getSimImage(II)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lcom/android/incallui/fragment/view/CallCardCrbtView;->mSimIconLabelLarge:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/incallui/fragment/view/CallCardCrbtView;->mSimIconLabel:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/incallui/fragment/view/CallCardCrbtView;->mCrbtLabel:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/incallui/fragment/view/CallCardCrbtView;->mCrbtPhoneNumber:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_0
.end method

.method public showPreparingAnimation(Z)V
    .locals 2

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/android/incallui/fragment/view/CallCardCrbtView;->mPreparingAnimation:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/fragment/view/CallCardCrbtView;->mPreparingAnimation:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "CallCardCrbtView"

    const-string v1, "PreparingAnimation - SHOW"

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/incallui/fragment/view/CallCardCrbtView;->mPreparingAnimation:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/incallui/fragment/view/CallCardCrbtView;->mPreparingAnimation:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/fragment/view/CallCardCrbtView;->mPreparingAnimation:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "CallCardCrbtView"

    const-string v1, "PreparingAnimation - HIDE"

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/incallui/fragment/view/CallCardCrbtView;->mPreparingAnimation:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public updateVideoSessionEvent(ILcom/android/incallui/Call;)V
    .locals 2

    const/4 v1, 0x0

    packed-switch p1, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/incallui/fragment/view/CallCardCrbtView;->mIsDisplayReady:Z

    iget-object v0, p0, Lcom/android/incallui/fragment/view/CallCardCrbtView;->mCrbtVideoView:Landroid/view/TextureView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/fragment/view/CallCardCrbtView;->mCrbtVideoView:Landroid/view/TextureView;

    invoke-virtual {v0}, Landroid/view/TextureView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/fragment/view/CallCardCrbtView;->mCrbtVideoView:Landroid/view/TextureView;

    invoke-virtual {v0, v1}, Landroid/view/TextureView;->setVisibility(I)V

    :cond_0
    invoke-virtual {p0, v1}, Lcom/android/incallui/fragment/view/CallCardCrbtView;->showPreparingAnimation(Z)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0xc8
        :pswitch_0
    .end packed-switch
.end method
