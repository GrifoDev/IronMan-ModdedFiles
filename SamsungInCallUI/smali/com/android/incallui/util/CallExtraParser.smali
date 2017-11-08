.class public Lcom/android/incallui/util/CallExtraParser;
.super Ljava/lang/Object;


# static fields
.field private static final EXTRA_AUDIO_CODEC:Ljava/lang/String; = "audio_codec"

.field private static final EXTRA_CALL_DOMAIN:Ljava/lang/String; = "call_domain"

.field private static final EXTRA_CALL_TYPE:Ljava/lang/String; = "call_type"

.field private static final EXTRA_CONNECTION_ID:Ljava/lang/String; = "connection_id"

.field private static final EXTRA_CVO_ENABLE:Ljava/lang/String; = "cvoenable"

.field private static final EXTRA_HD_ICON:Ljava/lang/String; = "hdicon"

.field private static final EXTRA_LINEMSISDN:Ljava/lang/String; = "linemsisdn"

.field private static final EXTRA_PARTICIPANT:Ljava/lang/String; = "mtconference"

.field private static final EXTRA_RADIO_TECH:Ljava/lang/String; = "radiotech"

.field private static final EXTRA_RESOLUTION:Ljava/lang/String; = "resolution"

.field private static final EXTRA_SESSION_ID:Ljava/lang/String; = "sessionId"

.field private static final EXTRA_VIDEO_CRBT:Ljava/lang/String; = "videoCRBT"

.field public static final TAG:Ljava/lang/String; = "CallExtraParser"

.field public static final UNKNOWN:Ljava/lang/String; = "unknown"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static areSame(Landroid/os/Bundle;Landroid/os/Bundle;)Z
    .locals 6

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez p0, :cond_0

    if-nez p1, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    if-eqz p0, :cond_1

    if-nez p1, :cond_2

    :cond_1
    move v0, v2

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Landroid/os/Bundle;->size()I

    move-result v0

    invoke-virtual {p1}, Landroid/os/Bundle;->size()I

    move-result v3

    if-eq v0, v3, :cond_3

    move v0, v2

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-virtual {p1}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Set;->containsAll(Ljava/util/Collection;)Z

    move-result v3

    if-nez v3, :cond_4

    move v0, v2

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

    if-eqz v4, :cond_6

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_6

    move v0, v2

    goto :goto_0

    :cond_6
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eq v4, v0, :cond_5

    move v0, v2

    goto :goto_0

    :cond_7
    move v0, v1

    goto :goto_0
.end method

.method public static getAudioCodec(Landroid/os/Bundle;)Ljava/lang/String;
    .locals 2

    const-string v0, "audio_codec"

    const-string v1, "AMR-NB"

    invoke-static {p0, v0, v1}, Lcom/android/incallui/util/CallExtraParser;->getStringValue(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getBooleanValue(Landroid/os/Bundle;Ljava/lang/String;Z)Z
    .locals 1

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1, p2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p2

    :cond_0
    return p2
.end method

.method public static getCallExtra(Landroid/telecom/Call;)Landroid/os/Bundle;
    .locals 1

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/telecom/Call;->getDetails()Landroid/telecom/Call$Details;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/telecom/Call;->getDetails()Landroid/telecom/Call$Details;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telecom/Call$Details;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getCallExtra(Lcom/android/incallui/Call;)Landroid/os/Bundle;
    .locals 1

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/Call;->getTelecomCall()Landroid/telecom/Call;

    move-result-object v0

    invoke-static {v0}, Lcom/android/incallui/util/CallExtraParser;->getCallExtra(Landroid/telecom/Call;)Landroid/os/Bundle;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getCallType(Landroid/os/Bundle;)I
    .locals 2

    const-string v0, "call_type"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/android/incallui/util/CallExtraParser;->getIntValue(Landroid/os/Bundle;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getConnectionId(Landroid/os/Bundle;)Ljava/lang/String;
    .locals 2

    const-string v0, "connection_id"

    const-string v1, "unknown"

    invoke-static {p0, v0, v1}, Lcom/android/incallui/util/CallExtraParser;->getStringValue(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getDomain(Landroid/os/Bundle;)I
    .locals 2

    const-string v0, "call_domain"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/android/incallui/util/CallExtraParser;->getIntValue(Landroid/os/Bundle;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private static getIntValue(Landroid/os/Bundle;Ljava/lang/String;I)I
    .locals 1

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1, p2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p2

    :cond_0
    return p2
.end method

.method public static getLineMSISDN(Landroid/os/Bundle;)Ljava/lang/String;
    .locals 2

    const-string v0, "linemsisdn"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/android/incallui/util/CallExtraParser;->getStringValue(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getRadioTech(Landroid/os/Bundle;)Ljava/lang/String;
    .locals 2

    const-string v0, "radiotech"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/android/incallui/util/CallExtraParser;->getStringValue(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getSessionId(Landroid/os/Bundle;)I
    .locals 3

    const/4 v0, -0x1

    const-string v1, "sessionId"

    const-string v2, ""

    invoke-static {p0, v1, v2}, Lcom/android/incallui/util/CallExtraParser;->getStringValue(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    :cond_0
    return v0
.end method

.method private static getStringValue(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1, p2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    :cond_0
    return-object p2
.end method

.method public static getVideoCrbt(Landroid/os/Bundle;)Ljava/lang/String;
    .locals 2

    const-string v0, "videoCRBT"

    const-string v1, ""

    invoke-static {p0, v0, v1}, Lcom/android/incallui/util/CallExtraParser;->getStringValue(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getVideoResolution(Landroid/os/Bundle;)Ljava/lang/String;
    .locals 2

    const-string v0, "resolution"

    const-string v1, "hd"

    invoke-static {p0, v0, v1}, Lcom/android/incallui/util/CallExtraParser;->getStringValue(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static hasDomainExtra(Landroid/os/Bundle;)Z
    .locals 1

    invoke-static {p0}, Lcom/android/incallui/util/CallExtraParser;->getDomain(Landroid/os/Bundle;)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static hasHDIcon(Landroid/os/Bundle;)Z
    .locals 3

    const-string v0, "true"

    const-string v1, "hdicon"

    const-string v2, "false"

    invoke-static {p0, v1, v2}, Lcom/android/incallui/util/CallExtraParser;->getStringValue(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isCVOEnabled(Landroid/os/Bundle;)Z
    .locals 3

    const-string v0, "true"

    const-string v1, "cvoenable"

    const-string v2, "true"

    invoke-static {p0, v1, v2}, Lcom/android/incallui/util/CallExtraParser;->getStringValue(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isParticipant(Landroid/os/Bundle;)Z
    .locals 3

    const-string v0, "true"

    const-string v1, "mtconference"

    const-string v2, "false"

    invoke-static {p0, v1, v2}, Lcom/android/incallui/util/CallExtraParser;->getStringValue(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
