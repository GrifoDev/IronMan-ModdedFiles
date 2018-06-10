.class Lcom/samsung/android/lib/dexcontrol/fota/usb/UsbDeviceChecker$WaitHandler;
.super Landroid/os/Handler;
.source "UsbDeviceChecker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/lib/dexcontrol/fota/usb/UsbDeviceChecker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "WaitHandler"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/lib/dexcontrol/fota/usb/UsbDeviceChecker$WaitHandler$WaitHandlerListener;
    }
.end annotation


# static fields
.field public static final MESSAGE_WAIT:I = 0x4


# instance fields
.field private mIsWaiting:Z

.field private mLock:Ljava/util/concurrent/locks/Lock;

.field private mWaitHandlerListener:Lcom/samsung/android/lib/dexcontrol/fota/usb/UsbDeviceChecker$WaitHandler$WaitHandlerListener;


# direct methods
.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/lib/dexcontrol/fota/usb/UsbDeviceChecker$WaitHandler;->mWaitHandlerListener:Lcom/samsung/android/lib/dexcontrol/fota/usb/UsbDeviceChecker$WaitHandler$WaitHandlerListener;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/lib/dexcontrol/fota/usb/UsbDeviceChecker$WaitHandler;->mIsWaiting:Z

    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/lib/dexcontrol/fota/usb/UsbDeviceChecker$WaitHandler;->mLock:Ljava/util/concurrent/locks/Lock;

    return-void
.end method


# virtual methods
.method public end()V
    .locals 1

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/samsung/android/lib/dexcontrol/fota/usb/UsbDeviceChecker$WaitHandler;->removeMessages(I)V

    iget-object v0, p0, Lcom/samsung/android/lib/dexcontrol/fota/usb/UsbDeviceChecker$WaitHandler;->mLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/lib/dexcontrol/fota/usb/UsbDeviceChecker$WaitHandler;->mIsWaiting:Z

    iget-object v0, p0, Lcom/samsung/android/lib/dexcontrol/fota/usb/UsbDeviceChecker$WaitHandler;->mLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/lib/dexcontrol/fota/usb/UsbDeviceChecker$WaitHandler;->mWaitHandlerListener:Lcom/samsung/android/lib/dexcontrol/fota/usb/UsbDeviceChecker$WaitHandler$WaitHandlerListener;

    if-nez v0, :cond_0

    :goto_0
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    return-void

    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lcom/samsung/android/lib/dexcontrol/fota/usb/UsbDeviceChecker$WaitHandler;->mLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/lib/dexcontrol/fota/usb/UsbDeviceChecker$WaitHandler;->mIsWaiting:Z

    iget-object v0, p0, Lcom/samsung/android/lib/dexcontrol/fota/usb/UsbDeviceChecker$WaitHandler;->mLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    iget-object v0, p0, Lcom/samsung/android/lib/dexcontrol/fota/usb/UsbDeviceChecker$WaitHandler;->mWaitHandlerListener:Lcom/samsung/android/lib/dexcontrol/fota/usb/UsbDeviceChecker$WaitHandler$WaitHandlerListener;

    invoke-interface {v0}, Lcom/samsung/android/lib/dexcontrol/fota/usb/UsbDeviceChecker$WaitHandler$WaitHandlerListener;->onEvent()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method

.method public isWaiting()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/lib/dexcontrol/fota/usb/UsbDeviceChecker$WaitHandler;->mIsWaiting:Z

    return v0
.end method

.method public setListener(Lcom/samsung/android/lib/dexcontrol/fota/usb/UsbDeviceChecker$WaitHandler$WaitHandlerListener;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/lib/dexcontrol/fota/usb/UsbDeviceChecker$WaitHandler;->mWaitHandlerListener:Lcom/samsung/android/lib/dexcontrol/fota/usb/UsbDeviceChecker$WaitHandler$WaitHandlerListener;

    return-void
.end method

.method public start(I)V
    .locals 3

    invoke-virtual {p0}, Lcom/samsung/android/lib/dexcontrol/fota/usb/UsbDeviceChecker$WaitHandler;->end()V

    int-to-long v0, p1

    const/4 v2, 0x4

    invoke-virtual {p0, v2, v0, v1}, Lcom/samsung/android/lib/dexcontrol/fota/usb/UsbDeviceChecker$WaitHandler;->sendEmptyMessageDelayed(IJ)Z

    iget-object v0, p0, Lcom/samsung/android/lib/dexcontrol/fota/usb/UsbDeviceChecker$WaitHandler;->mLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/lib/dexcontrol/fota/usb/UsbDeviceChecker$WaitHandler;->mIsWaiting:Z

    iget-object v0, p0, Lcom/samsung/android/lib/dexcontrol/fota/usb/UsbDeviceChecker$WaitHandler;->mLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void
.end method
