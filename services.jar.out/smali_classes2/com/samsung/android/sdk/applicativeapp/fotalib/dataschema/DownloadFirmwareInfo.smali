.class public Lcom/samsung/android/sdk/applicativeapp/fotalib/dataschema/DownloadFirmwareInfo;
.super Ljava/lang/Object;
.source "DownloadFirmwareInfo.java"


# instance fields
.field private destinationFolderPath:Ljava/lang/String;

.field private firmwareDownloadListener:Lcom/samsung/android/sdk/applicativeapp/fotalib/FirmwareDownloadListener;

.field private firmwareInfo:Lcom/samsung/android/sdk/applicativeapp/fotalib/FirmwareInfo;

.field private hashInfo:Lcom/samsung/android/sdk/applicativeapp/fotalib/FirmwareInfo;

.field private hashKey:Ljava/lang/String;

.field private locationId:Ljava/lang/String;

.field private productId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sdk/applicativeapp/fotalib/dataschema/DownloadFirmwareInfo;->firmwareInfo:Lcom/samsung/android/sdk/applicativeapp/fotalib/FirmwareInfo;

    iput-object v0, p0, Lcom/samsung/android/sdk/applicativeapp/fotalib/dataschema/DownloadFirmwareInfo;->hashInfo:Lcom/samsung/android/sdk/applicativeapp/fotalib/FirmwareInfo;

    iput-object v0, p0, Lcom/samsung/android/sdk/applicativeapp/fotalib/dataschema/DownloadFirmwareInfo;->productId:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/sdk/applicativeapp/fotalib/dataschema/DownloadFirmwareInfo;->locationId:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/sdk/applicativeapp/fotalib/dataschema/DownloadFirmwareInfo;->destinationFolderPath:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/sdk/applicativeapp/fotalib/dataschema/DownloadFirmwareInfo;->firmwareDownloadListener:Lcom/samsung/android/sdk/applicativeapp/fotalib/FirmwareDownloadListener;

    iput-object v0, p0, Lcom/samsung/android/sdk/applicativeapp/fotalib/dataschema/DownloadFirmwareInfo;->hashKey:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getDestinationFolderPath()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/applicativeapp/fotalib/dataschema/DownloadFirmwareInfo;->destinationFolderPath:Ljava/lang/String;

    return-object v0
.end method

.method public getFirmwareDownloadListener()Lcom/samsung/android/sdk/applicativeapp/fotalib/FirmwareDownloadListener;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/applicativeapp/fotalib/dataschema/DownloadFirmwareInfo;->firmwareDownloadListener:Lcom/samsung/android/sdk/applicativeapp/fotalib/FirmwareDownloadListener;

    return-object v0
.end method

.method public getFirmwareInfo()Lcom/samsung/android/sdk/applicativeapp/fotalib/FirmwareInfo;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/applicativeapp/fotalib/dataschema/DownloadFirmwareInfo;->firmwareInfo:Lcom/samsung/android/sdk/applicativeapp/fotalib/FirmwareInfo;

    return-object v0
.end method

.method public getHashInfo()Lcom/samsung/android/sdk/applicativeapp/fotalib/FirmwareInfo;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/applicativeapp/fotalib/dataschema/DownloadFirmwareInfo;->hashInfo:Lcom/samsung/android/sdk/applicativeapp/fotalib/FirmwareInfo;

    return-object v0
.end method

.method public getHashKey()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/applicativeapp/fotalib/dataschema/DownloadFirmwareInfo;->hashKey:Ljava/lang/String;

    return-object v0
.end method

.method public getLocationId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/applicativeapp/fotalib/dataschema/DownloadFirmwareInfo;->locationId:Ljava/lang/String;

    return-object v0
.end method

.method public getProductId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/applicativeapp/fotalib/dataschema/DownloadFirmwareInfo;->productId:Ljava/lang/String;

    return-object v0
.end method

.method public setDestinationFolderPath(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/applicativeapp/fotalib/dataschema/DownloadFirmwareInfo;->destinationFolderPath:Ljava/lang/String;

    return-void
.end method

.method public setFirmwareDownloadListener(Lcom/samsung/android/sdk/applicativeapp/fotalib/FirmwareDownloadListener;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/applicativeapp/fotalib/dataschema/DownloadFirmwareInfo;->firmwareDownloadListener:Lcom/samsung/android/sdk/applicativeapp/fotalib/FirmwareDownloadListener;

    return-void
.end method

.method public setFirmwareInfo(Lcom/samsung/android/sdk/applicativeapp/fotalib/FirmwareInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/applicativeapp/fotalib/dataschema/DownloadFirmwareInfo;->firmwareInfo:Lcom/samsung/android/sdk/applicativeapp/fotalib/FirmwareInfo;

    return-void
.end method

.method public setHashInfo(Lcom/samsung/android/sdk/applicativeapp/fotalib/FirmwareInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/applicativeapp/fotalib/dataschema/DownloadFirmwareInfo;->hashInfo:Lcom/samsung/android/sdk/applicativeapp/fotalib/FirmwareInfo;

    return-void
.end method

.method public setHashKey(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/applicativeapp/fotalib/dataschema/DownloadFirmwareInfo;->hashKey:Ljava/lang/String;

    return-void
.end method

.method public setLocationId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/applicativeapp/fotalib/dataschema/DownloadFirmwareInfo;->locationId:Ljava/lang/String;

    return-void
.end method

.method public setProductId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/applicativeapp/fotalib/dataschema/DownloadFirmwareInfo;->productId:Ljava/lang/String;

    return-void
.end method
