.class public Lcom/samsung/android/lib/dexcontrol/fota/manager/SDCFotaManagerEventHandler;
.super Landroid/os/Handler;
.source "SDCFotaManagerEventHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/lib/dexcontrol/fota/manager/SDCFotaManagerEventHandler$ProgressData;
    }
.end annotation


# static fields
.field static final MESSAGE_BOOT_MODE:I = 0x1

.field static final MESSAGE_CHECKED_FOTA_UPDATE_AVAILABLE:I = 0x2

.field static final MESSAGE_END:I = 0x4

.field static final MESSAGE_ERROR:I = 0x5

.field static final MESSAGE_PROGRESS:I = 0x6

.field static final MESSAGE_START:I = 0x3


# instance fields
.field private mListener:Lcom/samsung/android/lib/dexcontrol/fota/manager/ISDCFotaManagerListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/lib/dexcontrol/fota/manager/SDCFotaManagerEventHandler;->mListener:Lcom/samsung/android/lib/dexcontrol/fota/manager/ISDCFotaManagerListener;

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6

    const/4 v2, 0x1

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/samsung/android/lib/dexcontrol/fota/manager/SDCFotaManagerEventHandler;->mListener:Lcom/samsung/android/lib/dexcontrol/fota/manager/ISDCFotaManagerListener;

    if-nez v4, :cond_0

    :goto_0
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    return-void

    :cond_0
    iget v4, p1, Landroid/os/Message;->what:I

    packed-switch v4, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const/4 v1, 0x0

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-nez v2, :cond_1

    :goto_1
    iget-object v2, p0, Lcom/samsung/android/lib/dexcontrol/fota/manager/SDCFotaManagerEventHandler;->mListener:Lcom/samsung/android/lib/dexcontrol/fota/manager/ISDCFotaManagerListener;

    iget v3, p1, Landroid/os/Message;->arg1:I

    iget v4, p1, Landroid/os/Message;->arg2:I

    invoke-interface {v2, v3, v4, v1}, Lcom/samsung/android/lib/dexcontrol/fota/manager/ISDCFotaManagerListener;->onBootMode(IILjava/util/HashMap;)V

    goto :goto_0

    :cond_1
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/util/HashMap;

    goto :goto_1

    :pswitch_1
    iget-object v4, p0, Lcom/samsung/android/lib/dexcontrol/fota/manager/SDCFotaManagerEventHandler;->mListener:Lcom/samsung/android/lib/dexcontrol/fota/manager/ISDCFotaManagerListener;

    iget v5, p1, Landroid/os/Message;->arg1:I

    if-eqz v5, :cond_2

    :goto_2
    invoke-interface {v4, v2}, Lcom/samsung/android/lib/dexcontrol/fota/manager/ISDCFotaManagerListener;->onCheckedFotaUpdateAvailable(Z)V

    goto :goto_0

    :cond_2
    move v2, v3

    goto :goto_2

    :pswitch_2
    iget-object v2, p0, Lcom/samsung/android/lib/dexcontrol/fota/manager/SDCFotaManagerEventHandler;->mListener:Lcom/samsung/android/lib/dexcontrol/fota/manager/ISDCFotaManagerListener;

    invoke-interface {v2}, Lcom/samsung/android/lib/dexcontrol/fota/manager/ISDCFotaManagerListener;->onStart()V

    goto :goto_0

    :pswitch_3
    iget-object v4, p0, Lcom/samsung/android/lib/dexcontrol/fota/manager/SDCFotaManagerEventHandler;->mListener:Lcom/samsung/android/lib/dexcontrol/fota/manager/ISDCFotaManagerListener;

    iget v5, p1, Landroid/os/Message;->arg1:I

    if-eqz v5, :cond_3

    :goto_3
    invoke-interface {v4, v2}, Lcom/samsung/android/lib/dexcontrol/fota/manager/ISDCFotaManagerListener;->onEnd(Z)V

    goto :goto_0

    :cond_3
    move v2, v3

    goto :goto_3

    :pswitch_4
    iget-object v2, p0, Lcom/samsung/android/lib/dexcontrol/fota/manager/SDCFotaManagerEventHandler;->mListener:Lcom/samsung/android/lib/dexcontrol/fota/manager/ISDCFotaManagerListener;

    iget v3, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v2, v3}, Lcom/samsung/android/lib/dexcontrol/fota/manager/ISDCFotaManagerListener;->onError(I)V

    goto :goto_0

    :pswitch_5
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/samsung/android/lib/dexcontrol/fota/manager/SDCFotaManagerEventHandler$ProgressData;

    iget-object v2, p0, Lcom/samsung/android/lib/dexcontrol/fota/manager/SDCFotaManagerEventHandler;->mListener:Lcom/samsung/android/lib/dexcontrol/fota/manager/ISDCFotaManagerListener;

    iget v3, v0, Lcom/samsung/android/lib/dexcontrol/fota/manager/SDCFotaManagerEventHandler$ProgressData;->updateType:I

    iget v4, v0, Lcom/samsung/android/lib/dexcontrol/fota/manager/SDCFotaManagerEventHandler$ProgressData;->total:I

    iget v5, v0, Lcom/samsung/android/lib/dexcontrol/fota/manager/SDCFotaManagerEventHandler$ProgressData;->index:I

    invoke-interface {v2, v3, v4, v5}, Lcom/samsung/android/lib/dexcontrol/fota/manager/ISDCFotaManagerListener;->onProgress(III)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method setListener(Lcom/samsung/android/lib/dexcontrol/fota/manager/ISDCFotaManagerListener;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/lib/dexcontrol/fota/manager/SDCFotaManagerEventHandler;->mListener:Lcom/samsung/android/lib/dexcontrol/fota/manager/ISDCFotaManagerListener;

    return-void
.end method
