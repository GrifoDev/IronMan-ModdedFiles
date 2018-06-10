.class public interface abstract Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperManager$ChipUpdateHelperManagerListener;
.super Ljava/lang/Object;
.source "ChipUpdateHelperManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ChipUpdateHelperManagerListener"
.end annotation


# virtual methods
.method public abstract onError(I)V
.end method

.method public abstract onNotifyDetachForUpdate()V
.end method

.method public abstract onRequestDeviceChipInfoList(Ljava/util/ArrayList;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/lib/dexcontrol/fota/data/SDCBinaryInfo;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract onUpdateEnd(Z)V
.end method

.method public abstract onUpdateProgress(II)V
.end method

.method public abstract onUpdateProgressOneChip(F)V
.end method

.method public abstract onUpdateStart()V
.end method
