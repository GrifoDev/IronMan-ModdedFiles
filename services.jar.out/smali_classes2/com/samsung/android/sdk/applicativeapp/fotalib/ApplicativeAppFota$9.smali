.class Lcom/samsung/android/sdk/applicativeapp/fotalib/ApplicativeAppFota$9;
.super Ljava/lang/Object;
.source "ApplicativeAppFota.java"

# interfaces
.implements Lcom/samsung/android/sdk/applicativeapp/fotalib/httpdownload/DownloadFileListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/sdk/applicativeapp/fotalib/ApplicativeAppFota;->downloadHashFile()V
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

    iput-object p1, p0, Lcom/samsung/android/sdk/applicativeapp/fotalib/ApplicativeAppFota$9;->this$0:Lcom/samsung/android/sdk/applicativeapp/fotalib/ApplicativeAppFota;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChangedProgress(II)V
    .locals 0

    return-void
.end method

.method public onError(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "downloadHashFile onError "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "ApplicativeAppFota"

    invoke-static {v1, v0}, Lcom/samsung/android/lib/dexcontrol/fota/debug/SLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/sdk/applicativeapp/fotalib/ApplicativeAppFota$9;->this$0:Lcom/samsung/android/sdk/applicativeapp/fotalib/ApplicativeAppFota;

    invoke-static {v0}, Lcom/samsung/android/sdk/applicativeapp/fotalib/ApplicativeAppFota;->access$100(Lcom/samsung/android/sdk/applicativeapp/fotalib/ApplicativeAppFota;)Lcom/samsung/android/sdk/applicativeapp/fotalib/dataschema/DownloadFirmwareInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/sdk/applicativeapp/fotalib/dataschema/DownloadFirmwareInfo;->getFirmwareDownloadListener()Lcom/samsung/android/sdk/applicativeapp/fotalib/FirmwareDownloadListener;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/sdk/applicativeapp/fotalib/ApplicativeAppFota$ErrorType;->Downloading:Lcom/samsung/android/sdk/applicativeapp/fotalib/ApplicativeAppFota$ErrorType;

    invoke-interface {v0, v1, p1}, Lcom/samsung/android/sdk/applicativeapp/fotalib/FirmwareDownloadListener;->onError(Lcom/samsung/android/sdk/applicativeapp/fotalib/ApplicativeAppFota$ErrorType;Ljava/lang/String;)V

    return-void
.end method

.method public onFinished(Ljava/lang/String;)V
    .locals 2

    const-string/jumbo v0, "ApplicativeAppFota"

    const-string/jumbo v1, "onFinishedFirmwareDownload"

    invoke-static {v0, v1}, Lcom/samsung/android/lib/dexcontrol/fota/debug/SLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/sdk/applicativeapp/fotalib/ApplicativeAppFota$9;->this$0:Lcom/samsung/android/sdk/applicativeapp/fotalib/ApplicativeAppFota;

    invoke-static {v0, p1}, Lcom/samsung/android/sdk/applicativeapp/fotalib/ApplicativeAppFota;->access$800(Lcom/samsung/android/sdk/applicativeapp/fotalib/ApplicativeAppFota;Ljava/lang/String;)Z

    iget-object v0, p0, Lcom/samsung/android/sdk/applicativeapp/fotalib/ApplicativeAppFota$9;->this$0:Lcom/samsung/android/sdk/applicativeapp/fotalib/ApplicativeAppFota;

    invoke-static {v0}, Lcom/samsung/android/sdk/applicativeapp/fotalib/ApplicativeAppFota;->access$900(Lcom/samsung/android/sdk/applicativeapp/fotalib/ApplicativeAppFota;)V

    return-void
.end method
