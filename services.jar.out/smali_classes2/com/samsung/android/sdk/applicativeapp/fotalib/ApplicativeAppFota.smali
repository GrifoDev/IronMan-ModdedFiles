.class public Lcom/samsung/android/sdk/applicativeapp/fotalib/ApplicativeAppFota;
.super Ljava/lang/Object;
.source "ApplicativeAppFota.java"

# interfaces
.implements Lcom/samsung/android/sdk/applicativeapp/fotalib/FotaControl;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/sdk/applicativeapp/fotalib/ApplicativeAppFota$ErrorType;
    }
.end annotation


# static fields
.field private static final STR_DEFAULT_URL:Ljava/lang/String; = "https://www.samsungimaging.com/common/support/firmware/downloadUrlList.do?"

.field private static final STR_URL_PARAM_LOC:Ljava/lang/String; = "loc="

.field private static final STR_URL_PARAM_PRD_NAME:Ljava/lang/String; = "prd_mdl_name="

.field private static final STR_URL_TYPE_FIRMWARE:Ljava/lang/String; = "FW"

.field private static final STR_URL_TYPE_HASH:Ljava/lang/String; = "HASH"

.field public static final TAG:Ljava/lang/String; = "ApplicativeAppFota"


# instance fields
.field private context:Landroid/content/Context;

.field private downloadFileThread:Lcom/samsung/android/sdk/applicativeapp/fotalib/httpdownload/DownloadFileThread;

.field private downloadFirmwareInfo:Lcom/samsung/android/sdk/applicativeapp/fotalib/dataschema/DownloadFirmwareInfo;

.field private gsonXml:Lcom/stanfy/gsonxml/GsonXml;

.field private requestQueue:Lcom/android/volley/RequestQueue;

.field private unzipThread:Lcom/samsung/android/sdk/applicativeapp/fotalib/unzip/UnzipThread;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sdk/applicativeapp/fotalib/ApplicativeAppFota;->context:Landroid/content/Context;

    iput-object v0, p0, Lcom/samsung/android/sdk/applicativeapp/fotalib/ApplicativeAppFota;->requestQueue:Lcom/android/volley/RequestQueue;

    iput-object v0, p0, Lcom/samsung/android/sdk/applicativeapp/fotalib/ApplicativeAppFota;->downloadFileThread:Lcom/samsung/android/sdk/applicativeapp/fotalib/httpdownload/DownloadFileThread;

    iput-object v0, p0, Lcom/samsung/android/sdk/applicativeapp/fotalib/ApplicativeAppFota;->unzipThread:Lcom/samsung/android/sdk/applicativeapp/fotalib/unzip/UnzipThread;

    iput-object v0, p0, Lcom/samsung/android/sdk/applicativeapp/fotalib/ApplicativeAppFota;->gsonXml:Lcom/stanfy/gsonxml/GsonXml;

    iput-object v0, p0, Lcom/samsung/android/sdk/applicativeapp/fotalib/ApplicativeAppFota;->downloadFirmwareInfo:Lcom/samsung/android/sdk/applicativeapp/fotalib/dataschema/DownloadFirmwareInfo;

    const-string/jumbo v0, "ApplicativeAppFota"

    const-string/jumbo v1, "ApplicativeAppFota()"

    invoke-static {v0, v1}, Lcom/samsung/android/lib/dexcontrol/fota/debug/SLog;->m(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/samsung/android/sdk/applicativeapp/fotalib/ApplicativeAppFota;->context:Landroid/content/Context;

    new-instance v0, Lcom/android/volley/toolbox/HurlStack;

    invoke-direct {v0}, Lcom/android/volley/toolbox/HurlStack;-><init>()V

    invoke-static {p1, v0}, Lcom/samsung/android/sdk/applicativeapp/fotalib/CustomVolley;->newRequestQueue(Landroid/content/Context;Lcom/android/volley/toolbox/HttpStack;)Lcom/android/volley/RequestQueue;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/applicativeapp/fotalib/ApplicativeAppFota;->requestQueue:Lcom/android/volley/RequestQueue;

    iget-object v0, p0, Lcom/samsung/android/sdk/applicativeapp/fotalib/ApplicativeAppFota;->requestQueue:Lcom/android/volley/RequestQueue;

    invoke-virtual {v0}, Lcom/android/volley/RequestQueue;->start()V

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/sdk/applicativeapp/fotalib/ApplicativeAppFota;)Lcom/stanfy/gsonxml/GsonXml;
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/sdk/applicativeapp/fotalib/ApplicativeAppFota;->getGsonXml()Lcom/stanfy/gsonxml/GsonXml;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/samsung/android/sdk/applicativeapp/fotalib/ApplicativeAppFota;)Lcom/samsung/android/sdk/applicativeapp/fotalib/dataschema/DownloadFirmwareInfo;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/applicativeapp/fotalib/ApplicativeAppFota;->downloadFirmwareInfo:Lcom/samsung/android/sdk/applicativeapp/fotalib/dataschema/DownloadFirmwareInfo;

    return-object v0
.end method

.method static synthetic access$200(Lcom/samsung/android/sdk/applicativeapp/fotalib/ApplicativeAppFota;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/sdk/applicativeapp/fotalib/ApplicativeAppFota;->requestHashInfoForDownload()V

    return-void
.end method

.method static synthetic access$300(Lcom/samsung/android/sdk/applicativeapp/fotalib/ApplicativeAppFota;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/sdk/applicativeapp/fotalib/ApplicativeAppFota;->downloadHashFile()V

    return-void
.end method

.method static synthetic access$400(Lcom/samsung/android/sdk/applicativeapp/fotalib/ApplicativeAppFota;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/sdk/applicativeapp/fotalib/ApplicativeAppFota;->clearDownloadFileThread()V

    return-void
.end method

.method static synthetic access$500(Lcom/samsung/android/sdk/applicativeapp/fotalib/ApplicativeAppFota;)Lcom/samsung/android/sdk/applicativeapp/fotalib/httpdownload/DownloadFileThread;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/applicativeapp/fotalib/ApplicativeAppFota;->downloadFileThread:Lcom/samsung/android/sdk/applicativeapp/fotalib/httpdownload/DownloadFileThread;

    return-object v0
.end method

.method static synthetic access$502(Lcom/samsung/android/sdk/applicativeapp/fotalib/ApplicativeAppFota;Lcom/samsung/android/sdk/applicativeapp/fotalib/httpdownload/DownloadFileThread;)Lcom/samsung/android/sdk/applicativeapp/fotalib/httpdownload/DownloadFileThread;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/applicativeapp/fotalib/ApplicativeAppFota;->downloadFileThread:Lcom/samsung/android/sdk/applicativeapp/fotalib/httpdownload/DownloadFileThread;

    return-object p1
.end method

.method static synthetic access$600(Lcom/samsung/android/sdk/applicativeapp/fotalib/ApplicativeAppFota;Ljava/lang/String;)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/applicativeapp/fotalib/ApplicativeAppFota;->verifyFirmwareFile(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$700(Lcom/samsung/android/sdk/applicativeapp/fotalib/ApplicativeAppFota;Ljava/lang/String;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/sdk/applicativeapp/fotalib/ApplicativeAppFota;->unzipDownloadFile(Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic access$800(Lcom/samsung/android/sdk/applicativeapp/fotalib/ApplicativeAppFota;Ljava/lang/String;)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/applicativeapp/fotalib/ApplicativeAppFota;->setHashKey(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$900(Lcom/samsung/android/sdk/applicativeapp/fotalib/ApplicativeAppFota;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/sdk/applicativeapp/fotalib/ApplicativeAppFota;->downloadFirmwareFile()V

    return-void
.end method

.method private clearDownloadFileThread()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/samsung/android/sdk/applicativeapp/fotalib/ApplicativeAppFota;->downloadFileThread:Lcom/samsung/android/sdk/applicativeapp/fotalib/httpdownload/DownloadFileThread;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sdk/applicativeapp/fotalib/ApplicativeAppFota;->downloadFileThread:Lcom/samsung/android/sdk/applicativeapp/fotalib/httpdownload/DownloadFileThread;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/applicativeapp/fotalib/httpdownload/DownloadFileThread;->stopDownloading()V

    iput-object v1, p0, Lcom/samsung/android/sdk/applicativeapp/fotalib/ApplicativeAppFota;->downloadFileThread:Lcom/samsung/android/sdk/applicativeapp/fotalib/httpdownload/DownloadFileThread;

    goto :goto_0
.end method

.method private clearUnzipThread()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/samsung/android/sdk/applicativeapp/fotalib/ApplicativeAppFota;->unzipThread:Lcom/samsung/android/sdk/applicativeapp/fotalib/unzip/UnzipThread;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sdk/applicativeapp/fotalib/ApplicativeAppFota;->unzipThread:Lcom/samsung/android/sdk/applicativeapp/fotalib/unzip/UnzipThread;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/applicativeapp/fotalib/unzip/UnzipThread;->stopUnzip()V

    iput-object v1, p0, Lcom/samsung/android/sdk/applicativeapp/fotalib/ApplicativeAppFota;->unzipThread:Lcom/samsung/android/sdk/applicativeapp/fotalib/unzip/UnzipThread;

    goto :goto_0
.end method

.method private createDownloadInputStreamRequest(Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/sdk/applicativeapp/fotalib/httpdownload/DownloadFileListener;)Lcom/samsung/android/sdk/applicativeapp/fotalib/httpdownload/InputStreamRequest;
    .locals 6

    new-instance v0, Lcom/samsung/android/sdk/applicativeapp/fotalib/httpdownload/InputStreamRequest;

    new-instance v3, Lcom/samsung/android/sdk/applicativeapp/fotalib/ApplicativeAppFota$6;

    invoke-direct {v3, p0, p1, p2, p3}, Lcom/samsung/android/sdk/applicativeapp/fotalib/ApplicativeAppFota$6;-><init>(Lcom/samsung/android/sdk/applicativeapp/fotalib/ApplicativeAppFota;Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/sdk/applicativeapp/fotalib/httpdownload/DownloadFileListener;)V

    new-instance v4, Lcom/samsung/android/sdk/applicativeapp/fotalib/ApplicativeAppFota$7;

    invoke-direct {v4, p0}, Lcom/samsung/android/sdk/applicativeapp/fotalib/ApplicativeAppFota$7;-><init>(Lcom/samsung/android/sdk/applicativeapp/fotalib/ApplicativeAppFota;)V

    const/4 v5, 0x0

    const/4 v1, 0x0

    move-object v2, p1

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/sdk/applicativeapp/fotalib/httpdownload/InputStreamRequest;-><init>(ILjava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;Ljava/util/HashMap;)V

    return-object v0
.end method

.method private downloadFirmwareFile()V
    .locals 4

    const-string/jumbo v2, "ApplicativeAppFota"

    const-string/jumbo v3, "downloadFirmwareFile"

    invoke-static {v2, v3}, Lcom/samsung/android/lib/dexcontrol/fota/debug/SLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/android/sdk/applicativeapp/fotalib/ApplicativeAppFota;->downloadFirmwareInfo:Lcom/samsung/android/sdk/applicativeapp/fotalib/dataschema/DownloadFirmwareInfo;

    invoke-virtual {v2}, Lcom/samsung/android/sdk/applicativeapp/fotalib/dataschema/DownloadFirmwareInfo;->getFirmwareDownloadListener()Lcom/samsung/android/sdk/applicativeapp/fotalib/FirmwareDownloadListener;

    move-result-object v2

    invoke-interface {v2}, Lcom/samsung/android/sdk/applicativeapp/fotalib/FirmwareDownloadListener;->onStartDownload()V

    iget-object v2, p0, Lcom/samsung/android/sdk/applicativeapp/fotalib/ApplicativeAppFota;->downloadFirmwareInfo:Lcom/samsung/android/sdk/applicativeapp/fotalib/dataschema/DownloadFirmwareInfo;

    invoke-virtual {v2}, Lcom/samsung/android/sdk/applicativeapp/fotalib/dataschema/DownloadFirmwareInfo;->getFirmwareInfo()Lcom/samsung/android/sdk/applicativeapp/fotalib/FirmwareInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/sdk/applicativeapp/fotalib/FirmwareInfo;->getDownloadURL()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/sdk/applicativeapp/fotalib/ApplicativeAppFota;->downloadFirmwareInfo:Lcom/samsung/android/sdk/applicativeapp/fotalib/dataschema/DownloadFirmwareInfo;

    invoke-virtual {v2}, Lcom/samsung/android/sdk/applicativeapp/fotalib/dataschema/DownloadFirmwareInfo;->getDestinationFolderPath()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/samsung/android/sdk/applicativeapp/fotalib/ApplicativeAppFota$8;

    invoke-direct {v3, p0}, Lcom/samsung/android/sdk/applicativeapp/fotalib/ApplicativeAppFota$8;-><init>(Lcom/samsung/android/sdk/applicativeapp/fotalib/ApplicativeAppFota;)V

    invoke-direct {p0, v1, v2, v3}, Lcom/samsung/android/sdk/applicativeapp/fotalib/ApplicativeAppFota;->createDownloadInputStreamRequest(Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/sdk/applicativeapp/fotalib/httpdownload/DownloadFileListener;)Lcom/samsung/android/sdk/applicativeapp/fotalib/httpdownload/InputStreamRequest;

    move-result-object v0

    iget-object v2, p0, Lcom/samsung/android/sdk/applicativeapp/fotalib/ApplicativeAppFota;->requestQueue:Lcom/android/volley/RequestQueue;

    invoke-virtual {v2, v0}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    return-void
.end method

.method private downloadHashFile()V
    .locals 4

    const-string/jumbo v2, "ApplicativeAppFota"

    const-string/jumbo v3, "downloadHashFile"

    invoke-static {v2, v3}, Lcom/samsung/android/lib/dexcontrol/fota/debug/SLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/android/sdk/applicativeapp/fotalib/ApplicativeAppFota;->downloadFirmwareInfo:Lcom/samsung/android/sdk/applicativeapp/fotalib/dataschema/DownloadFirmwareInfo;

    invoke-virtual {v2}, Lcom/samsung/android/sdk/applicativeapp/fotalib/dataschema/DownloadFirmwareInfo;->getHashInfo()Lcom/samsung/android/sdk/applicativeapp/fotalib/FirmwareInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/sdk/applicativeapp/fotalib/FirmwareInfo;->getDownloadURL()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/sdk/applicativeapp/fotalib/ApplicativeAppFota;->downloadFirmwareInfo:Lcom/samsung/android/sdk/applicativeapp/fotalib/dataschema/DownloadFirmwareInfo;

    invoke-virtual {v2}, Lcom/samsung/android/sdk/applicativeapp/fotalib/dataschema/DownloadFirmwareInfo;->getDestinationFolderPath()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/samsung/android/sdk/applicativeapp/fotalib/ApplicativeAppFota$9;

    invoke-direct {v3, p0}, Lcom/samsung/android/sdk/applicativeapp/fotalib/ApplicativeAppFota$9;-><init>(Lcom/samsung/android/sdk/applicativeapp/fotalib/ApplicativeAppFota;)V

    invoke-direct {p0, v1, v2, v3}, Lcom/samsung/android/sdk/applicativeapp/fotalib/ApplicativeAppFota;->createDownloadInputStreamRequest(Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/sdk/applicativeapp/fotalib/httpdownload/DownloadFileListener;)Lcom/samsung/android/sdk/applicativeapp/fotalib/httpdownload/InputStreamRequest;

    move-result-object v0

    iget-object v2, p0, Lcom/samsung/android/sdk/applicativeapp/fotalib/ApplicativeAppFota;->requestQueue:Lcom/android/volley/RequestQueue;

    invoke-virtual {v2, v0}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    return-void
.end method

.method private getFirmwareInfoRequest(Ljava/lang/String;Lcom/samsung/android/sdk/applicativeapp/fotalib/FirmwareInfoListener;)Lcom/android/volley/toolbox/StringRequest;
    .locals 4

    new-instance v0, Lcom/android/volley/toolbox/StringRequest;

    new-instance v1, Lcom/samsung/android/sdk/applicativeapp/fotalib/ApplicativeAppFota$2;

    invoke-direct {v1, p0, p2}, Lcom/samsung/android/sdk/applicativeapp/fotalib/ApplicativeAppFota$2;-><init>(Lcom/samsung/android/sdk/applicativeapp/fotalib/ApplicativeAppFota;Lcom/samsung/android/sdk/applicativeapp/fotalib/FirmwareInfoListener;)V

    new-instance v2, Lcom/samsung/android/sdk/applicativeapp/fotalib/ApplicativeAppFota$3;

    invoke-direct {v2, p0, p2}, Lcom/samsung/android/sdk/applicativeapp/fotalib/ApplicativeAppFota$3;-><init>(Lcom/samsung/android/sdk/applicativeapp/fotalib/ApplicativeAppFota;Lcom/samsung/android/sdk/applicativeapp/fotalib/FirmwareInfoListener;)V

    const/4 v3, 0x0

    invoke-direct {v0, v3, p1, v1, v2}, Lcom/android/volley/toolbox/StringRequest;-><init>(ILjava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    return-object v0
.end method

.method private getGsonXml()Lcom/stanfy/gsonxml/GsonXml;
    .locals 3

    const-string/jumbo v1, "ApplicativeAppFota"

    const-string/jumbo v2, "getGsonXml()"

    invoke-static {v1, v2}, Lcom/samsung/android/lib/dexcontrol/fota/debug/SLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/sdk/applicativeapp/fotalib/ApplicativeAppFota;->gsonXml:Lcom/stanfy/gsonxml/GsonXml;

    if-eqz v1, :cond_0

    :goto_0
    iget-object v1, p0, Lcom/samsung/android/sdk/applicativeapp/fotalib/ApplicativeAppFota;->gsonXml:Lcom/stanfy/gsonxml/GsonXml;

    return-object v1

    :cond_0
    new-instance v0, Lcom/samsung/android/sdk/applicativeapp/fotalib/ApplicativeAppFota$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/sdk/applicativeapp/fotalib/ApplicativeAppFota$1;-><init>(Lcom/samsung/android/sdk/applicativeapp/fotalib/ApplicativeAppFota;)V

    new-instance v1, Lcom/stanfy/gsonxml/GsonXmlBuilder;

    invoke-direct {v1}, Lcom/stanfy/gsonxml/GsonXmlBuilder;-><init>()V

    invoke-virtual {v1, v0}, Lcom/stanfy/gsonxml/GsonXmlBuilder;->setXmlParserCreator(Lcom/stanfy/gsonxml/XmlParserCreator;)Lcom/stanfy/gsonxml/GsonXmlBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/stanfy/gsonxml/GsonXmlBuilder;->create()Lcom/stanfy/gsonxml/GsonXml;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/sdk/applicativeapp/fotalib/ApplicativeAppFota;->gsonXml:Lcom/stanfy/gsonxml/GsonXml;

    goto :goto_0
.end method

.method private isNetworkAvailable()Z
    .locals 5

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/samsung/android/sdk/applicativeapp/fotalib/ApplicativeAppFota;->context:Landroid/content/Context;

    const-string/jumbo v4, "connectivity"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v2

    :cond_1
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    goto :goto_0
.end method

.method private makeFirmwareInfoURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "https://www.samsungimaging.com/common/support/firmware/downloadUrlList.do?prd_mdl_name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "&"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "loc="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private requestFirmwareInfo(Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/sdk/applicativeapp/fotalib/FirmwareInfoListener;Ljava/lang/String;)V
    .locals 4

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "requestFirmwareInfo : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " , "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " , "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "ApplicativeAppFota"

    invoke-static {v3, v2}, Lcom/samsung/android/lib/dexcontrol/fota/debug/SLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2, p4}, Lcom/samsung/android/sdk/applicativeapp/fotalib/ApplicativeAppFota;->makeFirmwareInfoURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, p3}, Lcom/samsung/android/sdk/applicativeapp/fotalib/ApplicativeAppFota;->getFirmwareInfoRequest(Ljava/lang/String;Lcom/samsung/android/sdk/applicativeapp/fotalib/FirmwareInfoListener;)Lcom/android/volley/toolbox/StringRequest;

    move-result-object v0

    iget-object v2, p0, Lcom/samsung/android/sdk/applicativeapp/fotalib/ApplicativeAppFota;->requestQueue:Lcom/android/volley/RequestQueue;

    invoke-virtual {v2, v0}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    return-void
.end method

.method private requestFirmwareInfoForDownload()V
    .locals 3

    const-string/jumbo v0, "ApplicativeAppFota"

    const-string/jumbo v1, "requestFirmwareInfoForDownload()"

    invoke-static {v0, v1}, Lcom/samsung/android/lib/dexcontrol/fota/debug/SLog;->m(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/sdk/applicativeapp/fotalib/ApplicativeAppFota;->downloadFirmwareInfo:Lcom/samsung/android/sdk/applicativeapp/fotalib/dataschema/DownloadFirmwareInfo;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/applicativeapp/fotalib/dataschema/DownloadFirmwareInfo;->getProductId()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/sdk/applicativeapp/fotalib/ApplicativeAppFota;->downloadFirmwareInfo:Lcom/samsung/android/sdk/applicativeapp/fotalib/dataschema/DownloadFirmwareInfo;

    invoke-virtual {v1}, Lcom/samsung/android/sdk/applicativeapp/fotalib/dataschema/DownloadFirmwareInfo;->getLocationId()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/sdk/applicativeapp/fotalib/ApplicativeAppFota$4;

    invoke-direct {v2, p0}, Lcom/samsung/android/sdk/applicativeapp/fotalib/ApplicativeAppFota$4;-><init>(Lcom/samsung/android/sdk/applicativeapp/fotalib/ApplicativeAppFota;)V

    invoke-virtual {p0, v0, v1, v2}, Lcom/samsung/android/sdk/applicativeapp/fotalib/ApplicativeAppFota;->requestFirmwareInfo(Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/sdk/applicativeapp/fotalib/FirmwareInfoListener;)V

    return-void
.end method

.method private requestHashInfo(Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/sdk/applicativeapp/fotalib/FirmwareInfoListener;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "requestHashInfo : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " , "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "ApplicativeAppFota"

    invoke-static {v1, v0}, Lcom/samsung/android/lib/dexcontrol/fota/debug/SLog;->m(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "HASH"

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/samsung/android/sdk/applicativeapp/fotalib/ApplicativeAppFota;->requestFirmwareInfo(Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/sdk/applicativeapp/fotalib/FirmwareInfoListener;Ljava/lang/String;)V

    return-void
.end method

.method private requestHashInfoForDownload()V
    .locals 3

    const-string/jumbo v0, "ApplicativeAppFota"

    const-string/jumbo v1, "requestHashInfoForDownload"

    invoke-static {v0, v1}, Lcom/samsung/android/lib/dexcontrol/fota/debug/SLog;->m(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/sdk/applicativeapp/fotalib/ApplicativeAppFota;->downloadFirmwareInfo:Lcom/samsung/android/sdk/applicativeapp/fotalib/dataschema/DownloadFirmwareInfo;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/applicativeapp/fotalib/dataschema/DownloadFirmwareInfo;->getProductId()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/sdk/applicativeapp/fotalib/ApplicativeAppFota;->downloadFirmwareInfo:Lcom/samsung/android/sdk/applicativeapp/fotalib/dataschema/DownloadFirmwareInfo;

    invoke-virtual {v1}, Lcom/samsung/android/sdk/applicativeapp/fotalib/dataschema/DownloadFirmwareInfo;->getLocationId()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/sdk/applicativeapp/fotalib/ApplicativeAppFota$5;

    invoke-direct {v2, p0}, Lcom/samsung/android/sdk/applicativeapp/fotalib/ApplicativeAppFota$5;-><init>(Lcom/samsung/android/sdk/applicativeapp/fotalib/ApplicativeAppFota;)V

    invoke-direct {p0, v0, v1, v2}, Lcom/samsung/android/sdk/applicativeapp/fotalib/ApplicativeAppFota;->requestHashInfo(Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/sdk/applicativeapp/fotalib/FirmwareInfoListener;)V

    return-void
.end method

.method private setHashKey(Ljava/lang/String;)Z
    .locals 10

    :try_start_0
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->length()J

    move-result-wide v8

    long-to-int v7, v8

    new-array v1, v7, [B

    new-instance v6, Ljava/io/FileInputStream;

    invoke-direct {v6, v5}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    invoke-virtual {v6, v1}, Ljava/io/FileInputStream;->read([B)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V

    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v1}, Ljava/lang/String;-><init>([B)V

    iget-object v8, p0, Lcom/samsung/android/sdk/applicativeapp/fotalib/ApplicativeAppFota;->downloadFirmwareInfo:Lcom/samsung/android/sdk/applicativeapp/fotalib/dataschema/DownloadFirmwareInfo;

    invoke-virtual {v8, v4}, Lcom/samsung/android/sdk/applicativeapp/fotalib/dataschema/DownloadFirmwareInfo;->setHashKey(Ljava/lang/String;)V

    const-string/jumbo v8, "ApplicativeAppFota"

    const-string/jumbo v9, "success get hashkey"

    invoke-static {v8, v9}, Lcom/samsung/android/lib/dexcontrol/fota/debug/SLog;->m(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    const/4 v8, 0x1

    return v8

    :catchall_0
    move-exception v0

    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V

    throw v0
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v9, "ApplicativeAppFota"

    invoke-static {v9, v8}, Lcom/samsung/android/lib/dexcontrol/fota/debug/SLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    const/4 v8, 0x0

    return v8

    :catch_1
    move-exception v3

    invoke-virtual {v3}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v9, "ApplicativeAppFota"

    invoke-static {v9, v8}, Lcom/samsung/android/lib/dexcontrol/fota/debug/SLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private unzipDownloadFile(Ljava/lang/String;Z)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "unzipDownloadFile : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " , "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "ApplicativeAppFota"

    invoke-static {v1, v0}, Lcom/samsung/android/lib/dexcontrol/fota/debug/SLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/sdk/applicativeapp/fotalib/ApplicativeAppFota;->clearUnzipThread()V

    new-instance v0, Lcom/samsung/android/sdk/applicativeapp/fotalib/unzip/UnzipThread;

    iget-object v1, p0, Lcom/samsung/android/sdk/applicativeapp/fotalib/ApplicativeAppFota;->downloadFirmwareInfo:Lcom/samsung/android/sdk/applicativeapp/fotalib/dataschema/DownloadFirmwareInfo;

    invoke-virtual {v1}, Lcom/samsung/android/sdk/applicativeapp/fotalib/dataschema/DownloadFirmwareInfo;->getDestinationFolderPath()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/sdk/applicativeapp/fotalib/ApplicativeAppFota$10;

    invoke-direct {v2, p0, p1}, Lcom/samsung/android/sdk/applicativeapp/fotalib/ApplicativeAppFota$10;-><init>(Lcom/samsung/android/sdk/applicativeapp/fotalib/ApplicativeAppFota;Ljava/lang/String;)V

    invoke-direct {v0, p1, v1, v2}, Lcom/samsung/android/sdk/applicativeapp/fotalib/unzip/UnzipThread;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/sdk/applicativeapp/fotalib/unzip/UnzipListener;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/applicativeapp/fotalib/ApplicativeAppFota;->unzipThread:Lcom/samsung/android/sdk/applicativeapp/fotalib/unzip/UnzipThread;

    iget-object v0, p0, Lcom/samsung/android/sdk/applicativeapp/fotalib/ApplicativeAppFota;->unzipThread:Lcom/samsung/android/sdk/applicativeapp/fotalib/unzip/UnzipThread;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/applicativeapp/fotalib/unzip/UnzipThread;->start()V

    return-void
.end method

.method private verifyFileSha256(Ljava/io/File;Ljava/lang/String;)Z
    .locals 13

    const/4 v6, 0x0

    const/4 v4, 0x0

    :try_start_0
    const-string/jumbo v11, "SHA-256"

    invoke-static {v11}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    :try_start_1
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    const/16 v11, 0x400

    new-array v0, v11, [B

    const/4 v8, 0x0

    :goto_0
    :try_start_2
    invoke-virtual {v4, v0}, Ljava/io/FileInputStream;->read([B)I
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    move-result v8

    const/4 v11, -0x1

    if-ne v8, v11, :cond_0

    invoke-virtual {v6}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v7

    new-instance v9, Ljava/lang/StringBuffer;

    invoke-direct {v9}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v5, 0x0

    :goto_1
    array-length v11, v7

    if-lt v5, v11, :cond_1

    invoke-virtual {v9}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v10

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "Local ZIP File Hash (SHA256) : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const-string/jumbo v12, "ApplicativeAppFota"

    invoke-static {v12, v11}, Lcom/samsung/android/lib/dexcontrol/fota/debug/SLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "Server ZIP File Hash (SHA256) : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const-string/jumbo v12, "ApplicativeAppFota"

    invoke-static {v12, v11}, Lcom/samsung/android/lib/dexcontrol/fota/debug/SLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_2

    const-string/jumbo v11, "ApplicativeAppFota"

    const-string/jumbo v12, "ZIP File Hash Verify Failed!"

    invoke-static {v11, v12}, Lcom/samsung/android/lib/dexcontrol/fota/debug/SLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v11, 0x0

    return v11

    :catch_0
    move-exception v3

    const-string/jumbo v11, "ApplicativeAppFota"

    const-string/jumbo v12, "SHA-256 MessageDigest Failed"

    invoke-static {v11, v12}, Lcom/samsung/android/lib/dexcontrol/fota/debug/SLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v11, 0x0

    return v11

    :catch_1
    move-exception v1

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "FileNotFound : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const-string/jumbo v12, "ApplicativeAppFota"

    invoke-static {v12, v11}, Lcom/samsung/android/lib/dexcontrol/fota/debug/SLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v11, 0x0

    return v11

    :cond_0
    const/4 v11, 0x0

    :try_start_3
    invoke-virtual {v6, v0, v11, v8}, Ljava/security/MessageDigest;->update([BII)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto/16 :goto_0

    :catch_2
    move-exception v2

    const-string/jumbo v11, "ApplicativeAppFota"

    const-string/jumbo v12, "IO Exception while md.update"

    invoke-static {v11, v12}, Lcom/samsung/android/lib/dexcontrol/fota/debug/SLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v11, 0x0

    return v11

    :cond_1
    aget-byte v11, v7, v5

    and-int/lit16 v11, v11, 0xff

    add-int/lit16 v11, v11, 0x100

    const/16 v12, 0x10

    invoke-static {v11, v12}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_1

    :cond_2
    const-string/jumbo v11, "ApplicativeAppFota"

    const-string/jumbo v12, "ZIP File Hash Verify Success!"

    invoke-static {v11, v12}, Lcom/samsung/android/lib/dexcontrol/fota/debug/SLog;->m(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v11, 0x1

    return v11
.end method

.method private verifyFirmwareFile(Ljava/lang/String;)Z
    .locals 2

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/sdk/applicativeapp/fotalib/ApplicativeAppFota;->downloadFirmwareInfo:Lcom/samsung/android/sdk/applicativeapp/fotalib/dataschema/DownloadFirmwareInfo;

    invoke-virtual {v1}, Lcom/samsung/android/sdk/applicativeapp/fotalib/dataschema/DownloadFirmwareInfo;->getHashKey()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/sdk/applicativeapp/fotalib/ApplicativeAppFota;->verifyFileSha256(Ljava/io/File;Ljava/lang/String;)Z

    move-result v1

    return v1
.end method


# virtual methods
.method public requestFirmwareInfo(Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/sdk/applicativeapp/fotalib/FirmwareInfoListener;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "requestFirmwareInfo : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " , "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "ApplicativeAppFota"

    invoke-static {v1, v0}, Lcom/samsung/android/lib/dexcontrol/fota/debug/SLog;->m(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "FW"

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/samsung/android/sdk/applicativeapp/fotalib/ApplicativeAppFota;->requestFirmwareInfo(Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/sdk/applicativeapp/fotalib/FirmwareInfoListener;Ljava/lang/String;)V

    return-void
.end method

.method public startDownloadFirmware(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/sdk/applicativeapp/fotalib/FirmwareDownloadListener;)V
    .locals 2

    const-string/jumbo v0, "ApplicativeAppFota"

    const-string/jumbo v1, "startDownloadFirmware()"

    invoke-static {v0, v1}, Lcom/samsung/android/lib/dexcontrol/fota/debug/SLog;->m(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/sdk/applicativeapp/fotalib/ApplicativeAppFota;->isNetworkAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    new-instance v0, Lcom/samsung/android/sdk/applicativeapp/fotalib/dataschema/DownloadFirmwareInfo;

    invoke-direct {v0}, Lcom/samsung/android/sdk/applicativeapp/fotalib/dataschema/DownloadFirmwareInfo;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sdk/applicativeapp/fotalib/ApplicativeAppFota;->downloadFirmwareInfo:Lcom/samsung/android/sdk/applicativeapp/fotalib/dataschema/DownloadFirmwareInfo;

    iget-object v0, p0, Lcom/samsung/android/sdk/applicativeapp/fotalib/ApplicativeAppFota;->downloadFirmwareInfo:Lcom/samsung/android/sdk/applicativeapp/fotalib/dataschema/DownloadFirmwareInfo;

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/applicativeapp/fotalib/dataschema/DownloadFirmwareInfo;->setProductId(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/sdk/applicativeapp/fotalib/ApplicativeAppFota;->downloadFirmwareInfo:Lcom/samsung/android/sdk/applicativeapp/fotalib/dataschema/DownloadFirmwareInfo;

    invoke-virtual {v0, p2}, Lcom/samsung/android/sdk/applicativeapp/fotalib/dataschema/DownloadFirmwareInfo;->setLocationId(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/sdk/applicativeapp/fotalib/ApplicativeAppFota;->downloadFirmwareInfo:Lcom/samsung/android/sdk/applicativeapp/fotalib/dataschema/DownloadFirmwareInfo;

    invoke-virtual {v0, p3}, Lcom/samsung/android/sdk/applicativeapp/fotalib/dataschema/DownloadFirmwareInfo;->setDestinationFolderPath(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/sdk/applicativeapp/fotalib/ApplicativeAppFota;->downloadFirmwareInfo:Lcom/samsung/android/sdk/applicativeapp/fotalib/dataschema/DownloadFirmwareInfo;

    invoke-virtual {v0, p4}, Lcom/samsung/android/sdk/applicativeapp/fotalib/dataschema/DownloadFirmwareInfo;->setFirmwareDownloadListener(Lcom/samsung/android/sdk/applicativeapp/fotalib/FirmwareDownloadListener;)V

    invoke-direct {p0}, Lcom/samsung/android/sdk/applicativeapp/fotalib/ApplicativeAppFota;->requestFirmwareInfoForDownload()V

    return-void

    :cond_0
    sget-object v0, Lcom/samsung/android/sdk/applicativeapp/fotalib/ApplicativeAppFota$ErrorType;->Network:Lcom/samsung/android/sdk/applicativeapp/fotalib/ApplicativeAppFota$ErrorType;

    const-string/jumbo v1, ""

    invoke-interface {p4, v0, v1}, Lcom/samsung/android/sdk/applicativeapp/fotalib/FirmwareDownloadListener;->onError(Lcom/samsung/android/sdk/applicativeapp/fotalib/ApplicativeAppFota$ErrorType;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public declared-synchronized stopDownloadFirmware()V
    .locals 2

    monitor-enter p0

    :try_start_0
    const-string/jumbo v0, "ApplicativeAppFota"

    const-string/jumbo v1, "stopDownloadFirmware()"

    invoke-static {v0, v1}, Lcom/samsung/android/lib/dexcontrol/fota/debug/SLog;->m(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/sdk/applicativeapp/fotalib/ApplicativeAppFota;->clearDownloadFileThread()V

    invoke-direct {p0}, Lcom/samsung/android/sdk/applicativeapp/fotalib/ApplicativeAppFota;->clearUnzipThread()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
