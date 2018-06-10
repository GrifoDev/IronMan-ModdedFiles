.class Lcom/samsung/android/sdk/applicativeapp/fotalib/ApplicativeAppFota$7;
.super Ljava/lang/Object;
.source "ApplicativeAppFota.java"

# interfaces
.implements Lcom/android/volley/Response$ErrorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/sdk/applicativeapp/fotalib/ApplicativeAppFota;->createDownloadInputStreamRequest(Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/sdk/applicativeapp/fotalib/httpdownload/DownloadFileListener;)Lcom/samsung/android/sdk/applicativeapp/fotalib/httpdownload/InputStreamRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/sdk/applicativeapp/fotalib/ApplicativeAppFota;


# direct methods
.method constructor <init>(Lcom/samsung/android/sdk/applicativeapp/fotalib/ApplicativeAppFota;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/applicativeapp/fotalib/ApplicativeAppFota$7;->this$0:Lcom/samsung/android/sdk/applicativeapp/fotalib/ApplicativeAppFota;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onErrorResponse(Lcom/android/volley/VolleyError;)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "createDownloadInputStreamRequest onErrorResponse : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/volley/VolleyError;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "ApplicativeAppFota"

    invoke-static {v1, v0}, Lcom/samsung/android/lib/dexcontrol/fota/debug/SLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/sdk/applicativeapp/fotalib/ApplicativeAppFota$7;->this$0:Lcom/samsung/android/sdk/applicativeapp/fotalib/ApplicativeAppFota;

    invoke-static {v0}, Lcom/samsung/android/sdk/applicativeapp/fotalib/ApplicativeAppFota;->access$100(Lcom/samsung/android/sdk/applicativeapp/fotalib/ApplicativeAppFota;)Lcom/samsung/android/sdk/applicativeapp/fotalib/dataschema/DownloadFirmwareInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/sdk/applicativeapp/fotalib/dataschema/DownloadFirmwareInfo;->getFirmwareDownloadListener()Lcom/samsung/android/sdk/applicativeapp/fotalib/FirmwareDownloadListener;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/sdk/applicativeapp/fotalib/ApplicativeAppFota$ErrorType;->Downloading:Lcom/samsung/android/sdk/applicativeapp/fotalib/ApplicativeAppFota$ErrorType;

    invoke-virtual {p1}, Lcom/android/volley/VolleyError;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/samsung/android/sdk/applicativeapp/fotalib/FirmwareDownloadListener;->onError(Lcom/samsung/android/sdk/applicativeapp/fotalib/ApplicativeAppFota$ErrorType;Ljava/lang/String;)V

    return-void
.end method
