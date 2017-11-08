.class public final Lcom/android/incallui/CallDetails;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/incallui/CallDetails$VideoDimensionType;,
        Lcom/android/incallui/CallDetails$Domain;
    }
.end annotation


# static fields
.field public static final RADIO_TECH_EPDG:Ljava/lang/String; = "epdg"

.field public static final RADIO_TECH_LTE:Ljava/lang/String; = "lte"

.field public static final RADIO_TECH_VOWIFI:Ljava/lang/String; = "vowifi"

.field public static final SEC_EXTRA_HOLD_ON_BY_OTHER_PARTY:Ljava/lang/String; = "IsHoldedByTheOtherParty"

.field public static final TAG:Ljava/lang/String; = " CallDetails - "


# instance fields
.field private mAudioCodec:Ljava/lang/String;

.field private mAudioCodecType:I

.field private mCVOEnabled:Z

.field private mCall:Lcom/android/incallui/Call;

.field private mCallExtraClone:Landroid/os/Bundle;

.field private mCallType:I

.field private mConnectionId:Ljava/lang/String;

.field private mDomain:I

.field private mHDIcon:Z

.field private mIsEarlyMedia:Z

.field private mIsIMSConference:Z

.field private mIsMultiparty:Z

.field private mIsParticipat:Z

.field private mIsTheOtherPartyOnHold:Z

.field private mLineMSISDN:Ljava/lang/String;

.field private mRadioTech:Ljava/lang/String;

.field private mSessionId:I

.field private mVideoDimensionType:I


# direct methods
.method public constructor <init>(Lcom/android/incallui/Call;)V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v1, p0, Lcom/android/incallui/CallDetails;->mDomain:I

    iput v1, p0, Lcom/android/incallui/CallDetails;->mCallType:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/incallui/CallDetails;->mSessionId:I

    iput v1, p0, Lcom/android/incallui/CallDetails;->mAudioCodecType:I

    iput v1, p0, Lcom/android/incallui/CallDetails;->mVideoDimensionType:I

    const-string v0, ""

    iput-object v0, p0, Lcom/android/incallui/CallDetails;->mAudioCodec:Ljava/lang/String;

    iput-object v2, p0, Lcom/android/incallui/CallDetails;->mRadioTech:Ljava/lang/String;

    const-string v0, "unknown"

    iput-object v0, p0, Lcom/android/incallui/CallDetails;->mConnectionId:Ljava/lang/String;

    iput-object v2, p0, Lcom/android/incallui/CallDetails;->mLineMSISDN:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/android/incallui/CallDetails;->mHDIcon:Z

    iput-boolean v1, p0, Lcom/android/incallui/CallDetails;->mIsParticipat:Z

    iput-boolean v1, p0, Lcom/android/incallui/CallDetails;->mCVOEnabled:Z

    iput-boolean v1, p0, Lcom/android/incallui/CallDetails;->mIsTheOtherPartyOnHold:Z

    iput-boolean v1, p0, Lcom/android/incallui/CallDetails;->mIsEarlyMedia:Z

    iput-boolean v1, p0, Lcom/android/incallui/CallDetails;->mIsIMSConference:Z

    iput-boolean v1, p0, Lcom/android/incallui/CallDetails;->mIsMultiparty:Z

    iput-object p1, p0, Lcom/android/incallui/CallDetails;->mCall:Lcom/android/incallui/Call;

    return-void
.end method

.method public static areBundlesEqual(Landroid/os/Bundle;Landroid/os/Bundle;)Z
    .locals 6

    const/4 v2, 0x1

    const/4 v1, 0x0

    if-nez p0, :cond_0

    if-nez p1, :cond_0

    :goto_0
    return v2

    :cond_0
    if-eqz p0, :cond_1

    if-nez p1, :cond_2

    :cond_1
    move v0, v1

    :goto_1
    move v2, v0

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Landroid/os/Bundle;->size()I

    move-result v0

    invoke-virtual {p1}, Landroid/os/Bundle;->size()I

    move-result v3

    if-eq v0, v3, :cond_3

    move v0, v1

    goto :goto_1

    :cond_3
    invoke-virtual {p0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-virtual {p1}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Set;->containsAll(Ljava/util/Collection;)Z

    move-result v3

    if-nez v3, :cond_4

    move v2, v1

    goto :goto_0

    :cond_4
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_5
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v4, :cond_6

    invoke-virtual {v4, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_6

    move v0, v1

    goto :goto_1

    :cond_6
    if-nez v4, :cond_5

    if-eqz v0, :cond_5

    move v0, v1

    goto :goto_1

    :cond_7
    move v0, v2

    goto :goto_1
.end method

.method public static areSame(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    if-nez p0, :cond_0

    if-nez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    if-eqz p0, :cond_1

    if-nez p1, :cond_2

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public static getCompareResult(Landroid/os/Bundle;Landroid/os/Bundle;)Ljava/lang/String;
    .locals 10

    const/4 v0, 0x1

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v1, "{"

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, ", "

    if-nez p0, :cond_1

    if-nez p1, :cond_1

    :goto_0
    if-nez v0, :cond_0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    if-eqz p0, :cond_2

    if-nez p1, :cond_3

    :cond_2
    move v0, v2

    goto :goto_0

    :cond_3
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5, p0}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6, p1}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    invoke-virtual {v5}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    move v1, v0

    :cond_4
    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v5, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v6, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    invoke-static {v8, v9}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_6

    if-nez v1, :cond_5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "["

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v8, ":"

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v8, "]"

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v1, v2

    :cond_6
    invoke-virtual {v6, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-virtual {v6, v0}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    goto :goto_1

    :cond_7
    invoke-virtual {v6}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_8
    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v5, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v6, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    invoke-static {v8, v9}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_8

    if-nez v1, :cond_9

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_9
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "["

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v1, v2

    goto :goto_2

    :cond_a
    move v0, v1

    goto/16 :goto_0
.end method

.method private setAudioCodec(Landroid/os/Bundle;)V
    .locals 2

    invoke-static {p1}, Lcom/android/incallui/util/CallExtraParser;->getAudioCodec(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/CallDetails;->mAudioCodec:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iput-object v0, p0, Lcom/android/incallui/CallDetails;->mAudioCodec:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setAudioCodec - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/CallDetails;->mAudioCodec:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/incallui/CallDetails;->log(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/incallui/CallDetails;->setAudioCodecType()V

    :cond_0
    return-void
.end method

.method private setAudioCodecType()V
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/incallui/CallDetails;->mAudioCodec:Ljava/lang/String;

    const-string v2, "EVS-WB"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/incallui/CallDetails;->mAudioCodec:Ljava/lang/String;

    const-string v2, "AMR-WB"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_0
    const/4 v0, 0x1

    :cond_1
    :goto_0
    iget v1, p0, Lcom/android/incallui/CallDetails;->mAudioCodecType:I

    if-eq v1, v0, :cond_2

    iput v0, p0, Lcom/android/incallui/CallDetails;->mAudioCodecType:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setAudioCodecType - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/incallui/CallDetails;->mAudioCodecType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/incallui/CallDetails;->log(Ljava/lang/String;)V

    :cond_2
    return-void

    :cond_3
    iget-object v1, p0, Lcom/android/incallui/CallDetails;->mAudioCodec:Ljava/lang/String;

    const-string v2, "EVS-SWB"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v0, 0x8

    goto :goto_0
.end method

.method private setCVOStatus(Landroid/os/Bundle;)V
    .locals 2

    invoke-static {p1}, Lcom/android/incallui/util/CallExtraParser;->isCVOEnabled(Landroid/os/Bundle;)Z

    move-result v0

    iget-boolean v1, p0, Lcom/android/incallui/CallDetails;->mCVOEnabled:Z

    if-eq v1, v0, :cond_0

    iput-boolean v0, p0, Lcom/android/incallui/CallDetails;->mCVOEnabled:Z

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setCVOStatus - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/incallui/CallDetails;->mCVOEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/incallui/CallDetails;->log(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private setCallType(Landroid/os/Bundle;)V
    .locals 2

    invoke-static {p1}, Lcom/android/incallui/util/CallExtraParser;->getCallType(Landroid/os/Bundle;)I

    move-result v0

    iget v1, p0, Lcom/android/incallui/CallDetails;->mCallType:I

    if-eq v1, v0, :cond_0

    iput v0, p0, Lcom/android/incallui/CallDetails;->mCallType:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setCallType - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/incallui/CallDetails;->mCallType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/incallui/CallDetails;->log(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private setConferenceState(Landroid/os/Bundle;)V
    .locals 2

    invoke-static {p1}, Lcom/android/incallui/util/CallExtraParser;->isParticipant(Landroid/os/Bundle;)Z

    move-result v0

    iget-boolean v1, p0, Lcom/android/incallui/CallDetails;->mIsParticipat:Z

    if-eq v1, v0, :cond_0

    iput-boolean v0, p0, Lcom/android/incallui/CallDetails;->mIsParticipat:Z

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setConferenceState - isParticipant="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/incallui/CallDetails;->mIsParticipat:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/incallui/CallDetails;->log(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private setConnectionId(Landroid/os/Bundle;)V
    .locals 2

    invoke-static {p1}, Lcom/android/incallui/util/CallExtraParser;->getConnectionId(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/CallDetails;->mConnectionId:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iput-object v0, p0, Lcom/android/incallui/CallDetails;->mConnectionId:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setConnectionId - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/CallDetails;->mConnectionId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/incallui/CallDetails;->log(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private setDomain(Landroid/os/Bundle;)V
    .locals 2

    invoke-static {p1}, Lcom/android/incallui/util/CallExtraParser;->getDomain(Landroid/os/Bundle;)I

    move-result v0

    iget v1, p0, Lcom/android/incallui/CallDetails;->mDomain:I

    if-eq v1, v0, :cond_0

    iput v0, p0, Lcom/android/incallui/CallDetails;->mDomain:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setDomain - call extras domain="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/incallui/CallDetails;->mDomain:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/incallui/CallDetails;->log(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private setEarlyMediaState(Landroid/os/Bundle;)V
    .locals 4

    const/4 v0, 0x0

    invoke-static {p1}, Lcom/android/incallui/util/CallExtraParser;->getVideoCrbt(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/incallui/CallDetails;->isPSDomain()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/incallui/CallDetails;->mCall:Lcom/android/incallui/Call;

    invoke-virtual {v2}, Lcom/android/incallui/Call;->getState()I

    move-result v2

    const/4 v3, 0x6

    if-ne v2, v3, :cond_0

    const-string v2, "true"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    iget-boolean v1, p0, Lcom/android/incallui/CallDetails;->mIsEarlyMedia:Z

    if-eq v1, v0, :cond_1

    iput-boolean v0, p0, Lcom/android/incallui/CallDetails;->mIsEarlyMedia:Z

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setEarlyMediaState - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/incallui/CallDetails;->mIsEarlyMedia:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/incallui/CallDetails;->log(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method private setHDIcon(Landroid/os/Bundle;)V
    .locals 2

    invoke-static {p1}, Lcom/android/incallui/util/CallExtraParser;->hasHDIcon(Landroid/os/Bundle;)Z

    move-result v0

    iget-boolean v1, p0, Lcom/android/incallui/CallDetails;->mHDIcon:Z

    if-eq v1, v0, :cond_0

    iput-boolean v0, p0, Lcom/android/incallui/CallDetails;->mHDIcon:Z

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setHdIcon - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/incallui/CallDetails;->mHDIcon:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/incallui/CallDetails;->log(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private setIMSConference(Ljava/util/HashMap;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-static {p1}, Lcom/android/incallui/util/SecCallExtraParser;->isIMSConferenceCall(Ljava/util/HashMap;)Z

    move-result v0

    iget-boolean v1, p0, Lcom/android/incallui/CallDetails;->mIsIMSConference:Z

    if-eq v1, v0, :cond_0

    iput-boolean v0, p0, Lcom/android/incallui/CallDetails;->mIsIMSConference:Z

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setIMSConference - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/incallui/CallDetails;->log(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private setIsMultiparty(Ljava/util/HashMap;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-static {p1}, Lcom/android/incallui/util/SecCallExtraParser;->isMultiparty(Ljava/util/HashMap;)Z

    move-result v0

    iget-boolean v1, p0, Lcom/android/incallui/CallDetails;->mIsMultiparty:Z

    if-eq v1, v0, :cond_0

    iput-boolean v0, p0, Lcom/android/incallui/CallDetails;->mIsMultiparty:Z

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setIsMultiparty - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/incallui/CallDetails;->log(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private setLineMSISDN(Landroid/os/Bundle;)V
    .locals 2

    invoke-static {p1}, Lcom/android/incallui/util/CallExtraParser;->getLineMSISDN(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/CallDetails;->mLineMSISDN:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/android/incallui/CallDetails;->areSame(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    iput-object v0, p0, Lcom/android/incallui/CallDetails;->mLineMSISDN:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setLineMSISDN - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/CallDetails;->mLineMSISDN:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/incallui/CallDetails;->log(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private setRadioTech(Landroid/os/Bundle;)V
    .locals 4

    invoke-static {p1}, Lcom/android/incallui/util/CallExtraParser;->getRadioTech(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/CallDetails;->mRadioTech:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/android/incallui/CallDetails;->areSame(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/incallui/CallDetails;->mRadioTech:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/incallui/CallDetails;->mRadioTech:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setRadioTech - "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/incallui/CallDetails;->mRadioTech:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/incallui/CallDetails;->log(Ljava/lang/String;)V

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    iget-object v2, p0, Lcom/android/incallui/CallDetails;->mCall:Lcom/android/incallui/Call;

    iget-object v3, p0, Lcom/android/incallui/CallDetails;->mRadioTech:Ljava/lang/String;

    invoke-virtual {v0, v2, v1, v3}, Lcom/android/incallui/InCallPresenter;->onRadioTechChanged(Lcom/android/incallui/Call;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private setSessionId(Landroid/os/Bundle;)V
    .locals 2

    invoke-static {p1}, Lcom/android/incallui/util/CallExtraParser;->getSessionId(Landroid/os/Bundle;)I

    move-result v0

    iget v1, p0, Lcom/android/incallui/CallDetails;->mSessionId:I

    if-eq v1, v0, :cond_0

    iput v0, p0, Lcom/android/incallui/CallDetails;->mSessionId:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setSessionId - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/incallui/CallDetails;->mSessionId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/incallui/CallDetails;->log(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private setTheOtherPartyOnHold(Ljava/util/HashMap;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/incallui/CallDetails;->mCall:Lcom/android/incallui/Call;

    invoke-virtual {v1}, Lcom/android/incallui/Call;->isConferenceCall()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p1}, Lcom/android/incallui/util/SecCallExtraParser;->isHoldOnByTheOtherParty(Ljava/util/HashMap;)Z

    move-result v0

    :cond_0
    iget-boolean v1, p0, Lcom/android/incallui/CallDetails;->mIsTheOtherPartyOnHold:Z

    if-eq v1, v0, :cond_1

    iput-boolean v0, p0, Lcom/android/incallui/CallDetails;->mIsTheOtherPartyOnHold:Z

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setTheOtherPartyOnHold - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/incallui/CallDetails;->mIsTheOtherPartyOnHold:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/incallui/CallDetails;->log(Ljava/lang/String;)V

    :cond_1
    iget-object v0, p0, Lcom/android/incallui/CallDetails;->mCall:Lcom/android/incallui/Call;

    invoke-virtual {v0}, Lcom/android/incallui/Call;->isVideoCall()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/incallui/CallDetails;->mCall:Lcom/android/incallui/Call;

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getSecCall()Lcom/android/incallui/SecCall;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/incallui/CallDetails;->mIsTheOtherPartyOnHold:Z

    invoke-virtual {v0, v1}, Lcom/android/incallui/SecCall;->isTheOtherPartyStateChanged(Z)Z

    iget-object v0, p0, Lcom/android/incallui/CallDetails;->mCall:Lcom/android/incallui/Call;

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getVideoDetails()Lcom/android/incallui/service/vt/VideoDetails;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/incallui/CallDetails;->mIsTheOtherPartyOnHold:Z

    invoke-virtual {v0, v1}, Lcom/android/incallui/service/vt/VideoDetails;->setPeerVideoBusy(Z)V

    :cond_2
    return-void
.end method


# virtual methods
.method public areCallExtrasEqual(Landroid/os/Bundle;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/CallDetails;->mCallExtraClone:Landroid/os/Bundle;

    invoke-static {v0, p1}, Lcom/android/incallui/CallDetails;->areBundlesEqual(Landroid/os/Bundle;Landroid/os/Bundle;)Z

    move-result v0

    return v0
.end method

.method public canShowHDIcon()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/incallui/CallDetails;->mHDIcon:Z

    return v0
.end method

.method public getAudioCodecType()I
    .locals 1

    iget v0, p0, Lcom/android/incallui/CallDetails;->mAudioCodecType:I

    return v0
.end method

.method public getConnectionId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/CallDetails;->mConnectionId:Ljava/lang/String;

    return-object v0
.end method

.method public getDomain()I
    .locals 1

    iget v0, p0, Lcom/android/incallui/CallDetails;->mDomain:I

    return v0
.end method

.method public getLineMSISDN()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/CallDetails;->mLineMSISDN:Ljava/lang/String;

    return-object v0
.end method

.method public getRadioTech()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/CallDetails;->mRadioTech:Ljava/lang/String;

    return-object v0
.end method

.method public getSessionId()I
    .locals 1

    iget v0, p0, Lcom/android/incallui/CallDetails;->mSessionId:I

    return v0
.end method

.method public getVideoDimensionType()I
    .locals 1

    iget v0, p0, Lcom/android/incallui/CallDetails;->mVideoDimensionType:I

    return v0
.end method

.method public isCVOEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/incallui/CallDetails;->mCVOEnabled:Z

    return v0
.end method

.method public isEarlyMedia()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/incallui/CallDetails;->mIsEarlyMedia:Z

    return v0
.end method

.method public isEpdgCall()Z
    .locals 2

    const-string v0, "epdg"

    iget-object v1, p0, Lcom/android/incallui/CallDetails;->mRadioTech:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isIMSConferenceCall()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/incallui/CallDetails;->mIsIMSConference:Z

    return v0
.end method

.method public isLteCall()Z
    .locals 2

    const-string v0, "lte"

    iget-object v1, p0, Lcom/android/incallui/CallDetails;->mRadioTech:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isMultiparty()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/incallui/CallDetails;->mIsMultiparty:Z

    return v0
.end method

.method public isPSDomain()Z
    .locals 2

    iget v0, p0, Lcom/android/incallui/CallDetails;->mDomain:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isTheOtherPartyOnHold()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/incallui/CallDetails;->mIsTheOtherPartyOnHold:Z

    return v0
.end method

.method public isWiFiCall()Z
    .locals 2

    const-string v0, "vowifi"

    iget-object v1, p0, Lcom/android/incallui/CallDetails;->mRadioTech:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public log(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/incallui/CallDetails;->mCall:Lcom/android/incallui/Call;

    invoke-virtual {v1}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " CallDetails - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, p1, v1}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public setVideoDimensionType(Landroid/os/Bundle;)V
    .locals 7

    const/4 v2, 0x7

    const/4 v1, 0x4

    const/4 v3, 0x6

    const/4 v0, 0x3

    const/4 v4, 0x1

    invoke-static {p1}, Lcom/android/incallui/util/CallExtraParser;->getVideoResolution(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v5

    iget v6, p0, Lcom/android/incallui/CallDetails;->mDomain:I

    if-eq v6, v4, :cond_0

    const-string v6, "qcif"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    :cond_0
    move v0, v4

    :cond_1
    :goto_0
    iget v1, p0, Lcom/android/incallui/CallDetails;->mVideoDimensionType:I

    if-eq v0, v1, :cond_6

    iput v0, p0, Lcom/android/incallui/CallDetails;->mVideoDimensionType:I

    sget-boolean v1, Lcom/android/incallui/service/vt/VideoCallConfig;->CAN_USE_PREVIEW_DIMENSION:Z

    if-nez v1, :cond_3

    const/16 v2, 0x1e0

    const/16 v1, 0x280

    if-ne v0, v3, :cond_e

    const/16 v2, 0x2d0

    const/16 v1, 0x500

    :cond_2
    :goto_1
    iget-object v5, p0, Lcom/android/incallui/CallDetails;->mCall:Lcom/android/incallui/Call;

    invoke-virtual {v5}, Lcom/android/incallui/Call;->getVideoDetails()Lcom/android/incallui/service/vt/VideoDetails;

    move-result-object v5

    invoke-virtual {v5, v2, v1}, Lcom/android/incallui/service/vt/VideoDetails;->setPreviewDimension(II)V

    :cond_3
    sget-boolean v1, Lcom/android/incallui/service/vt/VideoCallConfig;->CAN_USE_PEER_DIMENSION:Z

    if-nez v1, :cond_5

    const/16 v2, 0x1e0

    const/16 v1, 0x280

    if-ne v0, v3, :cond_f

    const/16 v2, 0x2d0

    const/16 v1, 0x500

    :cond_4
    :goto_2
    iget-object v3, p0, Lcom/android/incallui/CallDetails;->mCall:Lcom/android/incallui/Call;

    invoke-virtual {v3}, Lcom/android/incallui/Call;->getVideoDetails()Lcom/android/incallui/service/vt/VideoDetails;

    move-result-object v3

    invoke-virtual {v3, v2, v1}, Lcom/android/incallui/service/vt/VideoDetails;->setPeerDimension(II)V

    :cond_5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setVideoDimensionType - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/incallui/CallDetails;->log(Ljava/lang/String;)V

    :cond_6
    return-void

    :cond_7
    const-string v6, "qvga"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    const/4 v1, 0x2

    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallConfig;->CONCEPT_KOR_KTT()Z

    move-result v5

    if-eqz v5, :cond_10

    iget-object v5, p0, Lcom/android/incallui/CallDetails;->mCall:Lcom/android/incallui/Call;

    invoke-virtual {v5}, Lcom/android/incallui/Call;->getState()I

    move-result v5

    if-ne v5, v0, :cond_10

    move v0, v2

    goto :goto_0

    :cond_8
    const-string v6, "hd"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_a

    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallConfig;->CONCEPT_KOR_LGU()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-boolean v2, p0, Lcom/android/incallui/CallDetails;->mIsIMSConference:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/incallui/CallDetails;->mCall:Lcom/android/incallui/Call;

    invoke-virtual {v2}, Lcom/android/incallui/Call;->getState()I

    move-result v2

    const/16 v5, 0xd

    if-eq v2, v5, :cond_9

    if-eq v2, v3, :cond_9

    if-ne v2, v0, :cond_1

    :cond_9
    move v0, v1

    goto/16 :goto_0

    :cond_a
    const-string v6, "hd_land"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_b

    move v0, v1

    goto/16 :goto_0

    :cond_b
    const-string v1, "cif"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    const/4 v0, 0x5

    goto/16 :goto_0

    :cond_c
    const-string v1, "hd720"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    move v0, v3

    goto/16 :goto_0

    :cond_d
    const-string v1, "qvga_land"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    move v0, v2

    goto/16 :goto_0

    :cond_e
    if-ne v0, v4, :cond_2

    const/16 v2, 0xb0

    const/16 v1, 0x90

    goto/16 :goto_1

    :cond_f
    if-ne v0, v4, :cond_4

    const/16 v2, 0xb0

    const/16 v1, 0x90

    goto/16 :goto_2

    :cond_10
    move v0, v1

    goto/16 :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    const-string v0, " CallDetails{SessionId=%d, CallType=%d, Resolution=%s, IsTheOtherPartyOnHold=%s, EarlyMedia=%s} "

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget v3, p0, Lcom/android/incallui/CallDetails;->mSessionId:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget v3, p0, Lcom/android/incallui/CallDetails;->mCallType:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget v3, p0, Lcom/android/incallui/CallDetails;->mVideoDimensionType:I

    invoke-static {v3}, Lcom/android/incallui/CallDetails$VideoDimensionType;->toString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    iget-boolean v3, p0, Lcom/android/incallui/CallDetails;->mIsTheOtherPartyOnHold:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x4

    iget-boolean v3, p0, Lcom/android/incallui/CallDetails;->mIsEarlyMedia:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public updateFromCallExtras(Landroid/os/Bundle;)V
    .locals 1

    if-nez p1, :cond_0

    const-string v0, "updateFromCallExtras - return, CallExtras is null"

    invoke-virtual {p0, v0}, Lcom/android/incallui/CallDetails;->log(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/os/Bundle;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    iput-object v0, p0, Lcom/android/incallui/CallDetails;->mCallExtraClone:Landroid/os/Bundle;

    invoke-direct {p0, p1}, Lcom/android/incallui/CallDetails;->setSessionId(Landroid/os/Bundle;)V

    invoke-direct {p0, p1}, Lcom/android/incallui/CallDetails;->setDomain(Landroid/os/Bundle;)V

    invoke-virtual {p0, p1}, Lcom/android/incallui/CallDetails;->setVideoDimensionType(Landroid/os/Bundle;)V

    invoke-direct {p0, p1}, Lcom/android/incallui/CallDetails;->setCallType(Landroid/os/Bundle;)V

    invoke-direct {p0, p1}, Lcom/android/incallui/CallDetails;->setHDIcon(Landroid/os/Bundle;)V

    invoke-direct {p0, p1}, Lcom/android/incallui/CallDetails;->setAudioCodec(Landroid/os/Bundle;)V

    invoke-direct {p0, p1}, Lcom/android/incallui/CallDetails;->setRadioTech(Landroid/os/Bundle;)V

    invoke-direct {p0, p1}, Lcom/android/incallui/CallDetails;->setConferenceState(Landroid/os/Bundle;)V

    invoke-direct {p0, p1}, Lcom/android/incallui/CallDetails;->setCVOStatus(Landroid/os/Bundle;)V

    invoke-direct {p0, p1}, Lcom/android/incallui/CallDetails;->setEarlyMediaState(Landroid/os/Bundle;)V

    invoke-direct {p0, p1}, Lcom/android/incallui/CallDetails;->setSessionId(Landroid/os/Bundle;)V

    invoke-direct {p0, p1}, Lcom/android/incallui/CallDetails;->setConnectionId(Landroid/os/Bundle;)V

    invoke-direct {p0, p1}, Lcom/android/incallui/CallDetails;->setLineMSISDN(Landroid/os/Bundle;)V

    invoke-virtual {p0, p1}, Lcom/android/incallui/CallDetails;->updateFromSecCallExtras(Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method public updateFromSecCallExtras(Landroid/os/Bundle;)V
    .locals 1

    invoke-static {p1}, Lcom/android/incallui/util/SecCallExtraParser;->getSecCallExtra(Landroid/os/Bundle;)Ljava/util/HashMap;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-direct {p0, v0}, Lcom/android/incallui/CallDetails;->setTheOtherPartyOnHold(Ljava/util/HashMap;)V

    invoke-direct {p0, v0}, Lcom/android/incallui/CallDetails;->setIMSConference(Ljava/util/HashMap;)V

    invoke-direct {p0, v0}, Lcom/android/incallui/CallDetails;->setIsMultiparty(Ljava/util/HashMap;)V

    :cond_0
    return-void
.end method
