.class public Lcom/samsung/android/sdk/applicativeapp/fotalib/FirmwareInfo;
.super Ljava/lang/Object;
.source "FirmwareInfo.java"


# instance fields
.field private Description:Ljava/lang/String;

.field private DescriptionKor:Ljava/lang/String;

.field private DownloadURL:Ljava/lang/String;

.field private FWVersion:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/samsung/android/sdk/applicativeapp/fotalib/FirmwareInfo;->FWVersion:Ljava/lang/String;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/samsung/android/sdk/applicativeapp/fotalib/FirmwareInfo;->DownloadURL:Ljava/lang/String;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/samsung/android/sdk/applicativeapp/fotalib/FirmwareInfo;->Description:Ljava/lang/String;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/samsung/android/sdk/applicativeapp/fotalib/FirmwareInfo;->DescriptionKor:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getDescription()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/applicativeapp/fotalib/FirmwareInfo;->Description:Ljava/lang/String;

    return-object v0
.end method

.method public getDescriptionKor()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/applicativeapp/fotalib/FirmwareInfo;->DescriptionKor:Ljava/lang/String;

    return-object v0
.end method

.method public getDownloadURL()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/applicativeapp/fotalib/FirmwareInfo;->DownloadURL:Ljava/lang/String;

    return-object v0
.end method

.method public getFWVersion()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/applicativeapp/fotalib/FirmwareInfo;->FWVersion:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/samsung/android/sdk/applicativeapp/fotalib/FirmwareInfo;->FWVersion:Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/samsung/android/sdk/applicativeapp/fotalib/FirmwareInfo;->DownloadURL:Ljava/lang/String;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/samsung/android/sdk/applicativeapp/fotalib/FirmwareInfo;->Description:Ljava/lang/String;

    const/4 v3, 0x2

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/samsung/android/sdk/applicativeapp/fotalib/FirmwareInfo;->DescriptionKor:Ljava/lang/String;

    const/4 v3, 0x3

    aput-object v2, v1, v3

    const-string/jumbo v2, "{version=%s,downloadUrl=%s,description=%s,descriptionKor=%s"

    invoke-static {v0, v2, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
