.class public Lcom/samsung/android/sdk/applicativeapp/fotalib/unzip/UnzipThread;
.super Ljava/lang/Thread;
.source "UnzipThread.java"


# static fields
.field private static final BUFFER_SIZE:I = 0x1000

.field private static final TAG:Ljava/lang/String; = "FotaUnzip"


# instance fields
.field private destinationPath:Ljava/lang/String;

.field private sourceFilePath:Ljava/lang/String;

.field private stopUnzipFlag:Z

.field private unzipListener:Lcom/samsung/android/sdk/applicativeapp/fotalib/unzip/UnzipListener;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/sdk/applicativeapp/fotalib/unzip/UnzipListener;)V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sdk/applicativeapp/fotalib/unzip/UnzipThread;->sourceFilePath:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/sdk/applicativeapp/fotalib/unzip/UnzipThread;->destinationPath:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/sdk/applicativeapp/fotalib/unzip/UnzipThread;->unzipListener:Lcom/samsung/android/sdk/applicativeapp/fotalib/unzip/UnzipListener;

    iput-boolean v1, p0, Lcom/samsung/android/sdk/applicativeapp/fotalib/unzip/UnzipThread;->stopUnzipFlag:Z

    iput-object p1, p0, Lcom/samsung/android/sdk/applicativeapp/fotalib/unzip/UnzipThread;->sourceFilePath:Ljava/lang/String;

    const-string/jumbo v0, "/"

    invoke-virtual {p2, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    iput-object p2, p0, Lcom/samsung/android/sdk/applicativeapp/fotalib/unzip/UnzipThread;->destinationPath:Ljava/lang/String;

    iput-object p3, p0, Lcom/samsung/android/sdk/applicativeapp/fotalib/unzip/UnzipThread;->unzipListener:Lcom/samsung/android/sdk/applicativeapp/fotalib/unzip/UnzipListener;

    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    goto :goto_0
.end method


# virtual methods
.method public run()V
    .locals 12

    const-string/jumbo v9, "FotaUnzip"

    const-string/jumbo v10, "unzip started"

    invoke-static {v9, v10}, Lcom/samsung/android/lib/dexcontrol/fota/debug/SLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    :try_start_0
    new-instance v8, Ljava/util/zip/ZipInputStream;

    new-instance v9, Ljava/io/FileInputStream;

    new-instance v10, Ljava/io/File;

    iget-object v11, p0, Lcom/samsung/android/sdk/applicativeapp/fotalib/unzip/UnzipThread;->sourceFilePath:Ljava/lang/String;

    invoke-direct {v10, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v9, v10}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v8, v9}, Ljava/util/zip/ZipInputStream;-><init>(Ljava/io/InputStream;)V

    const/16 v9, 0x1000

    new-array v1, v9, [B

    const/4 v6, 0x0

    const/4 v4, 0x0

    :goto_0
    iget-boolean v9, p0, Lcom/samsung/android/sdk/applicativeapp/fotalib/unzip/UnzipThread;->stopUnzipFlag:Z

    if-eqz v9, :cond_2

    :cond_0
    invoke-virtual {v8}, Ljava/util/zip/ZipInputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v9, p0, Lcom/samsung/android/sdk/applicativeapp/fotalib/unzip/UnzipThread;->unzipListener:Lcom/samsung/android/sdk/applicativeapp/fotalib/unzip/UnzipListener;

    if-nez v9, :cond_8

    :cond_1
    :goto_1
    return-void

    :cond_2
    :try_start_1
    invoke-virtual {v8}, Ljava/util/zip/ZipInputStream;->getNextEntry()Ljava/util/zip/ZipEntry;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-virtual {v4}, Ljava/util/zip/ZipEntry;->isDirectory()Z

    move-result v9

    if-nez v9, :cond_5

    new-instance v5, Ljava/io/FileOutputStream;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, p0, Lcom/samsung/android/sdk/applicativeapp/fotalib/unzip/UnzipThread;->destinationPath:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v4}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v5, v9}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    :cond_3
    :goto_2
    iget-boolean v9, p0, Lcom/samsung/android/sdk/applicativeapp/fotalib/unzip/UnzipThread;->stopUnzipFlag:Z

    if-eqz v9, :cond_7

    :cond_4
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "[FILE] "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/samsung/android/sdk/applicativeapp/fotalib/unzip/UnzipThread;->destinationPath:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v4}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const-string/jumbo v10, "FotaUnzip"

    invoke-static {v10, v9}, Lcom/samsung/android/lib/dexcontrol/fota/debug/SLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, p0, Lcom/samsung/android/sdk/applicativeapp/fotalib/unzip/UnzipThread;->destinationPath:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v4}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v7, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v3

    :try_start_2
    invoke-virtual {v3}, Ljava/lang/Exception;->getStackTrace()[Ljava/lang/StackTraceElement;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "FAILED"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v3}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const-string/jumbo v10, "FotaUnzip"

    invoke-static {v10, v9}, Lcom/samsung/android/lib/dexcontrol/fota/debug/SLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v9, p0, Lcom/samsung/android/sdk/applicativeapp/fotalib/unzip/UnzipThread;->unzipListener:Lcom/samsung/android/sdk/applicativeapp/fotalib/unzip/UnzipListener;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-nez v9, :cond_9

    :goto_3
    iget-object v9, p0, Lcom/samsung/android/sdk/applicativeapp/fotalib/unzip/UnzipThread;->unzipListener:Lcom/samsung/android/sdk/applicativeapp/fotalib/unzip/UnzipListener;

    if-eqz v9, :cond_1

    iget-object v9, p0, Lcom/samsung/android/sdk/applicativeapp/fotalib/unzip/UnzipThread;->unzipListener:Lcom/samsung/android/sdk/applicativeapp/fotalib/unzip/UnzipListener;

    invoke-interface {v9, v7}, Lcom/samsung/android/sdk/applicativeapp/fotalib/unzip/UnzipListener;->onFinishedUnzip(Ljava/util/List;)V

    goto/16 :goto_1

    :cond_5
    :try_start_3
    new-instance v2, Ljava/io/File;

    iget-object v9, p0, Lcom/samsung/android/sdk/applicativeapp/fotalib/unzip/UnzipThread;->destinationPath:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v2, v9, v10}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v9

    if-eqz v9, :cond_6

    :goto_4
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "[DIR] "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v4}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const-string/jumbo v10, "FotaUnzip"

    invoke-static {v10, v9}, Lcom/samsung/android/lib/dexcontrol/fota/debug/SLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    iget-object v9, p0, Lcom/samsung/android/sdk/applicativeapp/fotalib/unzip/UnzipThread;->unzipListener:Lcom/samsung/android/sdk/applicativeapp/fotalib/unzip/UnzipListener;

    if-nez v9, :cond_a

    :goto_5
    throw v0

    :cond_6
    :try_start_4
    invoke-virtual {v2}, Ljava/io/File;->mkdir()Z

    goto :goto_4

    :cond_7
    invoke-virtual {v8, v1}, Ljava/util/zip/ZipInputStream;->read([B)I

    move-result v6

    const/4 v9, -0x1

    if-eq v6, v9, :cond_4

    const/4 v9, 0x0

    invoke-virtual {v5, v1, v9, v6}, Ljava/io/FileOutputStream;->write([BII)V

    iget-object v9, p0, Lcom/samsung/android/sdk/applicativeapp/fotalib/unzip/UnzipThread;->unzipListener:Lcom/samsung/android/sdk/applicativeapp/fotalib/unzip/UnzipListener;

    if-eqz v9, :cond_3

    iget-object v9, p0, Lcom/samsung/android/sdk/applicativeapp/fotalib/unzip/UnzipThread;->unzipListener:Lcom/samsung/android/sdk/applicativeapp/fotalib/unzip/UnzipListener;

    invoke-virtual {v4}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v9, v10, v6}, Lcom/samsung/android/sdk/applicativeapp/fotalib/unzip/UnzipListener;->onProgress(Ljava/lang/String;I)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_2

    :cond_8
    iget-object v9, p0, Lcom/samsung/android/sdk/applicativeapp/fotalib/unzip/UnzipThread;->unzipListener:Lcom/samsung/android/sdk/applicativeapp/fotalib/unzip/UnzipListener;

    invoke-interface {v9, v7}, Lcom/samsung/android/sdk/applicativeapp/fotalib/unzip/UnzipListener;->onFinishedUnzip(Ljava/util/List;)V

    goto/16 :goto_1

    :cond_9
    :try_start_5
    iget-object v9, p0, Lcom/samsung/android/sdk/applicativeapp/fotalib/unzip/UnzipThread;->unzipListener:Lcom/samsung/android/sdk/applicativeapp/fotalib/unzip/UnzipListener;

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v9, v10}, Lcom/samsung/android/sdk/applicativeapp/fotalib/unzip/UnzipListener;->onError(Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_3

    :cond_a
    iget-object v9, p0, Lcom/samsung/android/sdk/applicativeapp/fotalib/unzip/UnzipThread;->unzipListener:Lcom/samsung/android/sdk/applicativeapp/fotalib/unzip/UnzipListener;

    invoke-interface {v9, v7}, Lcom/samsung/android/sdk/applicativeapp/fotalib/unzip/UnzipListener;->onFinishedUnzip(Ljava/util/List;)V

    goto :goto_5
.end method

.method public stopUnzip()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/sdk/applicativeapp/fotalib/unzip/UnzipThread;->stopUnzipFlag:Z

    return-void
.end method
