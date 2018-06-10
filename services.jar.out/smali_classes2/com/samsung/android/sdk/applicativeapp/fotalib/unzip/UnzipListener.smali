.class public interface abstract Lcom/samsung/android/sdk/applicativeapp/fotalib/unzip/UnzipListener;
.super Ljava/lang/Object;
.source "UnzipListener.java"


# virtual methods
.method public abstract onError(Ljava/lang/String;)V
.end method

.method public abstract onFinishedUnzip(Ljava/util/List;)V
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

.method public abstract onProgress(Ljava/lang/String;I)V
.end method
