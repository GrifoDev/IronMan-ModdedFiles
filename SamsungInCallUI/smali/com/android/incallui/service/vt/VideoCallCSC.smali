.class Lcom/android/incallui/service/vt/VideoCallCSC;
.super Ljava/lang/Object;


# static fields
.field private static sInstance:Lcom/android/incallui/service/vt/VideoCallCSC;


# instance fields
.field protected CALL_STATE_LABEL:Z

.field protected CAPABILITY:Ljava/lang/String;

.field protected CONFERENCE_ADD_USER:Z

.field protected DEPENDENCY_TYPE:Ljava/lang/String;

.field protected EARLY_MEDIA:Z

.field protected EPDG_CALL:Z

.field protected HANDOVER_NOTIFICATION_TYPE:Ljava/lang/String;

.field protected PRIVACY_CAPTURE:Z

.field protected SUPPORT_CVO:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/android/incallui/service/vt/VideoCallCSC;->sInstance:Lcom/android/incallui/service/vt/VideoCallCSC;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/android/incallui/service/vt/VideoCallCSC;->DEPENDENCY_TYPE:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/android/incallui/service/vt/VideoCallCSC;->SUPPORT_CVO:Z

    iput-boolean v1, p0, Lcom/android/incallui/service/vt/VideoCallCSC;->CONFERENCE_ADD_USER:Z

    iput-boolean v1, p0, Lcom/android/incallui/service/vt/VideoCallCSC;->EARLY_MEDIA:Z

    const-string v0, ""

    iput-object v0, p0, Lcom/android/incallui/service/vt/VideoCallCSC;->HANDOVER_NOTIFICATION_TYPE:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/android/incallui/service/vt/VideoCallCSC;->CALL_STATE_LABEL:Z

    iput-boolean v1, p0, Lcom/android/incallui/service/vt/VideoCallCSC;->EPDG_CALL:Z

    iput-boolean v1, p0, Lcom/android/incallui/service/vt/VideoCallCSC;->PRIVACY_CAPTURE:Z

    const-string v0, ""

    iput-object v0, p0, Lcom/android/incallui/service/vt/VideoCallCSC;->CAPABILITY:Ljava/lang/String;

    invoke-direct {p0}, Lcom/android/incallui/service/vt/VideoCallCSC;->load()V

    return-void
.end method

.method protected static forceUpdate()Lcom/android/incallui/service/vt/VideoCallCSC;
    .locals 1

    sget-object v0, Lcom/android/incallui/service/vt/VideoCallCSC;->sInstance:Lcom/android/incallui/service/vt/VideoCallCSC;

    if-eqz v0, :cond_0

    const-string v0, "Forecely update VideoCallCSC"

    invoke-static {v0}, Lcom/android/incallui/service/vt/VideoCallLog;->csc(Ljava/lang/String;)V

    sget-object v0, Lcom/android/incallui/service/vt/VideoCallCSC;->sInstance:Lcom/android/incallui/service/vt/VideoCallCSC;

    invoke-direct {v0}, Lcom/android/incallui/service/vt/VideoCallCSC;->load()V

    :goto_0
    sget-object v0, Lcom/android/incallui/service/vt/VideoCallCSC;->sInstance:Lcom/android/incallui/service/vt/VideoCallCSC;

    return-object v0

    :cond_0
    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallCSC;->getInstance()Lcom/android/incallui/service/vt/VideoCallCSC;

    goto :goto_0
.end method

.method protected static getInstance()Lcom/android/incallui/service/vt/VideoCallCSC;
    .locals 1

    sget-object v0, Lcom/android/incallui/service/vt/VideoCallCSC;->sInstance:Lcom/android/incallui/service/vt/VideoCallCSC;

    if-nez v0, :cond_0

    const-string v0, "Create VideoCallCSC"

    invoke-static {v0}, Lcom/android/incallui/service/vt/VideoCallLog;->csc(Ljava/lang/String;)V

    new-instance v0, Lcom/android/incallui/service/vt/VideoCallCSC;

    invoke-direct {v0}, Lcom/android/incallui/service/vt/VideoCallCSC;-><init>()V

    sput-object v0, Lcom/android/incallui/service/vt/VideoCallCSC;->sInstance:Lcom/android/incallui/service/vt/VideoCallCSC;

    :cond_0
    sget-object v0, Lcom/android/incallui/service/vt/VideoCallCSC;->sInstance:Lcom/android/incallui/service/vt/VideoCallCSC;

    return-object v0
.end method

.method private load()V
    .locals 2

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    const-string v1, "CscFeature_VT_ConfigOpStyleForDependency"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/service/vt/VideoCallCSC;->DEPENDENCY_TYPE:Ljava/lang/String;

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    const-string v1, "CscFeature_VT_SupportCvo"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/incallui/service/vt/VideoCallCSC;->SUPPORT_CVO:Z

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    const-string v1, "CscFeature_VT_SupportGroupCall"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/incallui/service/vt/VideoCallCSC;->CONFERENCE_ADD_USER:Z

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    const-string v1, "CscFeature_VT_ConfigRingbackTone"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/incallui/service/vt/VideoCallCSC;->EARLY_MEDIA:Z

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    const-string v1, "CscFeature_VT_ConfigOpStyleForHandoverNotification"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/service/vt/VideoCallCSC;->HANDOVER_NOTIFICATION_TYPE:Ljava/lang/String;

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    const-string v1, "CscFeature_VT_ConfigOpStyleForCallStateLabel"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/incallui/service/vt/VideoCallCSC;->CALL_STATE_LABEL:Z

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    const-string v1, "CscFeature_VT_SupprotEpdgCallGuideBanner"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/incallui/service/vt/VideoCallCSC;->EPDG_CALL:Z

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    const-string v1, "CscFeature_VT_ConfigPrivacyPolicy"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "capture"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/incallui/service/vt/VideoCallCSC;->PRIVACY_CAPTURE:Z

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    const-string v1, "CscFeature_VT_ConfigCapability"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/service/vt/VideoCallCSC;->CAPABILITY:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "load() - CAPABILITY  : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/service/vt/VideoCallCSC;->CAPABILITY:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/incallui/service/vt/VideoCallLog;->csc(Ljava/lang/String;)V

    return-void
.end method
