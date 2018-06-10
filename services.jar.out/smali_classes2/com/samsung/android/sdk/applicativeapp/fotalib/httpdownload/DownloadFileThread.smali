.class public Lcom/samsung/android/sdk/applicativeapp/fotalib/httpdownload/DownloadFileThread;
.super Ljava/lang/Thread;
.source "DownloadFileThread.java"


# instance fields
.field private TAG:Ljava/lang/String;

.field private destinationFolderPath:Ljava/lang/String;

.field private downloadFileListener:Lcom/samsung/android/sdk/applicativeapp/fotalib/httpdownload/DownloadFileListener;

.field private fileName:Ljava/lang/String;

.field private inputStream:Ljava/io/InputStream;

.field private lengthOfFile:I

.field private stopDownloadingFlag:Z


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/io/InputStream;Lcom/samsung/android/sdk/applicativeapp/fotalib/httpdownload/DownloadFileListener;)V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const-string/jumbo v0, "Fota_DownloadFileThread"

    iput-object v0, p0, Lcom/samsung/android/sdk/applicativeapp/fotalib/httpdownload/DownloadFileThread;->TAG:Ljava/lang/String;

    iput-object v1, p0, Lcom/samsung/android/sdk/applicativeapp/fotalib/httpdownload/DownloadFileThread;->destinationFolderPath:Ljava/lang/String;

    iput-object v1, p0, Lcom/samsung/android/sdk/applicativeapp/fotalib/httpdownload/DownloadFileThread;->fileName:Ljava/lang/String;

    iput-object v1, p0, Lcom/samsung/android/sdk/applicativeapp/fotalib/httpdownload/DownloadFileThread;->inputStream:Ljava/io/InputStream;

    iput-object v1, p0, Lcom/samsung/android/sdk/applicativeapp/fotalib/httpdownload/DownloadFileThread;->downloadFileListener:Lcom/samsung/android/sdk/applicativeapp/fotalib/httpdownload/DownloadFileListener;

    iput v2, p0, Lcom/samsung/android/sdk/applicativeapp/fotalib/httpdownload/DownloadFileThread;->lengthOfFile:I

    iput-boolean v2, p0, Lcom/samsung/android/sdk/applicativeapp/fotalib/httpdownload/DownloadFileThread;->stopDownloadingFlag:Z

    iput p1, p0, Lcom/samsung/android/sdk/applicativeapp/fotalib/httpdownload/DownloadFileThread;->lengthOfFile:I

    iput-object p2, p0, Lcom/samsung/android/sdk/applicativeapp/fotalib/httpdownload/DownloadFileThread;->destinationFolderPath:Ljava/lang/String;

    iput-object p3, p0, Lcom/samsung/android/sdk/applicativeapp/fotalib/httpdownload/DownloadFileThread;->fileName:Ljava/lang/String;

    iput-object p4, p0, Lcom/samsung/android/sdk/applicativeapp/fotalib/httpdownload/DownloadFileThread;->inputStream:Ljava/io/InputStream;

    iput-object p5, p0, Lcom/samsung/android/sdk/applicativeapp/fotalib/httpdownload/DownloadFileThread;->downloadFileListener:Lcom/samsung/android/sdk/applicativeapp/fotalib/httpdownload/DownloadFileListener;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    :try_start_0
    new-instance v4, Ljava/io/File;

    iget-object v7, p0, Lcom/samsung/android/sdk/applicativeapp/fotalib/httpdownload/DownloadFileThread;->destinationFolderPath:Ljava/lang/String;

    iget-object v8, p0, Lcom/samsung/android/sdk/applicativeapp/fotalib/httpdownload/DownloadFileThread;->fileName:Ljava/lang/String;

    invoke-direct {v4, v7, v8}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v7, p0, Lcom/samsung/android/sdk/applicativeapp/fotalib/httpdownload/DownloadFileThread;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "destination: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/samsung/android/sdk/applicativeapp/fotalib/httpdownload/DownloadFileThread;->destinationFolderPath:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/samsung/android/sdk/applicativeapp/fotalib/httpdownload/DownloadFileThread;->fileName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v5, Ljava/io/BufferedOutputStream;

    new-instance v7, Ljava/io/FileOutputStream;

    invoke-direct {v7, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v5, v7}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    const/16 v7, 0x1000

    new-array v1, v7, [B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    const/4 v6, 0x0

    const/4 v0, 0x0

    :cond_0
    :goto_0
    :try_start_1
    iget-boolean v7, p0, Lcom/samsung/android/sdk/applicativeapp/fotalib/httpdownload/DownloadFileThread;->stopDownloadingFlag:Z

    if-eqz v7, :cond_2

    :cond_1
    invoke-virtual {v5}, Ljava/io/BufferedOutputStream;->flush()V

    invoke-virtual {v5}, Ljava/io/BufferedOutputStream;->close()V

    iget-object v7, p0, Lcom/samsung/android/sdk/applicativeapp/fotalib/httpdownload/DownloadFileThread;->inputStream:Ljava/io/InputStream;

    invoke-virtual {v7}, Ljava/io/InputStream;->close()V

    iget-object v7, p0, Lcom/samsung/android/sdk/applicativeapp/fotalib/httpdownload/DownloadFileThread;->downloadFileListener:Lcom/samsung/android/sdk/applicativeapp/fotalib/httpdownload/DownloadFileListener;

    if-nez v7, :cond_3

    :goto_1
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " Close"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, "FotaTest"

    invoke-static {v8, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    return-void

    :cond_2
    iget-object v7, p0, Lcom/samsung/android/sdk/applicativeapp/fotalib/httpdownload/DownloadFileThread;->inputStream:Ljava/io/InputStream;

    invoke-virtual {v7, v1}, Ljava/io/InputStream;->read([B)I

    move-result v0

    const/4 v7, -0x1

    if-eq v0, v7, :cond_1

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "read Data"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, "FotaTest"

    invoke-static {v8, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    add-int/2addr v6, v0

    const/4 v7, 0x0

    invoke-virtual {v5, v1, v7, v0}, Ljava/io/BufferedOutputStream;->write([BII)V

    iget-object v7, p0, Lcom/samsung/android/sdk/applicativeapp/fotalib/httpdownload/DownloadFileThread;->downloadFileListener:Lcom/samsung/android/sdk/applicativeapp/fotalib/httpdownload/DownloadFileListener;

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/samsung/android/sdk/applicativeapp/fotalib/httpdownload/DownloadFileThread;->downloadFileListener:Lcom/samsung/android/sdk/applicativeapp/fotalib/httpdownload/DownloadFileListener;

    iget v8, p0, Lcom/samsung/android/sdk/applicativeapp/fotalib/httpdownload/DownloadFileThread;->lengthOfFile:I

    invoke-interface {v7, v6, v8}, Lcom/samsung/android/sdk/applicativeapp/fotalib/httpdownload/DownloadFileListener;->onChangedProgress(II)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_0
    move-exception v2

    :try_start_2
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    :catch_1
    move-exception v3

    iget-object v7, p0, Lcom/samsung/android/sdk/applicativeapp/fotalib/httpdownload/DownloadFileThread;->TAG:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_3
    :try_start_3
    iget-object v7, p0, Lcom/samsung/android/sdk/applicativeapp/fotalib/httpdownload/DownloadFileThread;->downloadFileListener:Lcom/samsung/android/sdk/applicativeapp/fotalib/httpdownload/DownloadFileListener;

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8}, Lcom/samsung/android/sdk/applicativeapp/fotalib/httpdownload/DownloadFileListener;->onFinished(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1
.end method

.method public stopDownloading()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/sdk/applicativeapp/fotalib/httpdownload/DownloadFileThread;->stopDownloadingFlag:Z

    return-void
.end method
