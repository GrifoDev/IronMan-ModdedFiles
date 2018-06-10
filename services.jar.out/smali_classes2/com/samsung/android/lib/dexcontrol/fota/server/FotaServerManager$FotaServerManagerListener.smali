.class public interface abstract Lcom/samsung/android/lib/dexcontrol/fota/server/FotaServerManager$FotaServerManagerListener;
.super Ljava/lang/Object;
.source "FotaServerManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/lib/dexcontrol/fota/server/FotaServerManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "FotaServerManagerListener"
.end annotation


# virtual methods
.method public abstract onCheckToUpdateResult(Z)V
.end method

.method public abstract onDownloadToUpdateResult(Ljava/util/HashMap;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract onError(I)V
.end method

.method public abstract onStartDownload()V
.end method
