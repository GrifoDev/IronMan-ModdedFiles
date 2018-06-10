.class Lcom/samsung/android/lib/dexcontrol/fota/manager/SDCFotaManagerEmul$EmulHandler;
.super Landroid/os/Handler;
.source "SDCFotaManagerEmul.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/lib/dexcontrol/fota/manager/SDCFotaManagerEmul;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "EmulHandler"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/lib/dexcontrol/fota/manager/SDCFotaManagerEmul$EmulHandler$EmulHandlerListener;
    }
.end annotation


# instance fields
.field private mCurrentHandleMessage:I

.field private mEmulHandlerListener:Lcom/samsung/android/lib/dexcontrol/fota/manager/SDCFotaManagerEmul$EmulHandler$EmulHandlerListener;


# direct methods
.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/lib/dexcontrol/fota/manager/SDCFotaManagerEmul$EmulHandler;->mCurrentHandleMessage:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/lib/dexcontrol/fota/manager/SDCFotaManagerEmul$EmulHandler;->mEmulHandlerListener:Lcom/samsung/android/lib/dexcontrol/fota/manager/SDCFotaManagerEmul$EmulHandler$EmulHandlerListener;

    return-void
.end method


# virtual methods
.method public end()V
    .locals 2

    iget v0, p0, Lcom/samsung/android/lib/dexcontrol/fota/manager/SDCFotaManagerEmul$EmulHandler;->mCurrentHandleMessage:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget v0, p0, Lcom/samsung/android/lib/dexcontrol/fota/manager/SDCFotaManagerEmul$EmulHandler;->mCurrentHandleMessage:I

    invoke-virtual {p0, v0}, Lcom/samsung/android/lib/dexcontrol/fota/manager/SDCFotaManagerEmul$EmulHandler;->removeMessages(I)V

    goto :goto_0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/lib/dexcontrol/fota/manager/SDCFotaManagerEmul$EmulHandler;->mEmulHandlerListener:Lcom/samsung/android/lib/dexcontrol/fota/manager/SDCFotaManagerEmul$EmulHandler$EmulHandlerListener;

    if-nez v0, :cond_0

    :goto_0
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    return-void

    :cond_0
    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/lib/dexcontrol/fota/manager/SDCFotaManagerEmul$EmulHandler;->mCurrentHandleMessage:I

    iget-object v0, p0, Lcom/samsung/android/lib/dexcontrol/fota/manager/SDCFotaManagerEmul$EmulHandler;->mEmulHandlerListener:Lcom/samsung/android/lib/dexcontrol/fota/manager/SDCFotaManagerEmul$EmulHandler$EmulHandlerListener;

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-interface {v0, v1}, Lcom/samsung/android/lib/dexcontrol/fota/manager/SDCFotaManagerEmul$EmulHandler$EmulHandlerListener;->onEvent(I)V

    goto :goto_0
.end method

.method public setListener(Lcom/samsung/android/lib/dexcontrol/fota/manager/SDCFotaManagerEmul$EmulHandler$EmulHandlerListener;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/lib/dexcontrol/fota/manager/SDCFotaManagerEmul$EmulHandler;->mEmulHandlerListener:Lcom/samsung/android/lib/dexcontrol/fota/manager/SDCFotaManagerEmul$EmulHandler$EmulHandlerListener;

    return-void
.end method

.method public start(II)V
    .locals 2

    invoke-virtual {p0}, Lcom/samsung/android/lib/dexcontrol/fota/manager/SDCFotaManagerEmul$EmulHandler;->end()V

    iput p1, p0, Lcom/samsung/android/lib/dexcontrol/fota/manager/SDCFotaManagerEmul$EmulHandler;->mCurrentHandleMessage:I

    int-to-long v0, p2

    invoke-virtual {p0, p1, v0, v1}, Lcom/samsung/android/lib/dexcontrol/fota/manager/SDCFotaManagerEmul$EmulHandler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method
