.class public interface abstract Lcom/samsung/android/sdk/applicativeapp/fotalib/FirmwareDownloadListener;
.super Ljava/lang/Object;
.source "FirmwareDownloadListener.java"


# virtual methods
.method public abstract onChangedProgress(II)V
.end method

.method public abstract onError(Lcom/samsung/android/sdk/applicativeapp/fotalib/ApplicativeAppFota$ErrorType;Ljava/lang/String;)V
.end method

.method public abstract onFinishedFirmwareDownload(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract onStartDownload()V
.end method
