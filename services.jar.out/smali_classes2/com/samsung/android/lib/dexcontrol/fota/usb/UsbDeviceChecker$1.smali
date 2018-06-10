.class Lcom/samsung/android/lib/dexcontrol/fota/usb/UsbDeviceChecker$1;
.super Ljava/lang/Object;
.source "UsbDeviceChecker.java"

# interfaces
.implements Lcom/samsung/android/lib/dexcontrol/fota/usb/UsbDeviceChecker$WaitHandler$WaitHandlerListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/lib/dexcontrol/fota/usb/UsbDeviceChecker;->requestWaitReAttach()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/lib/dexcontrol/fota/usb/UsbDeviceChecker;


# direct methods
.method constructor <init>(Lcom/samsung/android/lib/dexcontrol/fota/usb/UsbDeviceChecker;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/lib/dexcontrol/fota/usb/UsbDeviceChecker$1;->this$0:Lcom/samsung/android/lib/dexcontrol/fota/usb/UsbDeviceChecker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEvent()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/lib/dexcontrol/fota/usb/UsbDeviceChecker$1;->this$0:Lcom/samsung/android/lib/dexcontrol/fota/usb/UsbDeviceChecker;

    invoke-static {v0}, Lcom/samsung/android/lib/dexcontrol/fota/usb/UsbDeviceChecker;->access$000(Lcom/samsung/android/lib/dexcontrol/fota/usb/UsbDeviceChecker;)Lcom/samsung/android/lib/dexcontrol/fota/usb/IUsbDeviceChecker$UsbDeviceListener;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/lib/dexcontrol/fota/usb/UsbDeviceChecker$1;->this$0:Lcom/samsung/android/lib/dexcontrol/fota/usb/UsbDeviceChecker;

    invoke-static {v0}, Lcom/samsung/android/lib/dexcontrol/fota/usb/UsbDeviceChecker;->access$000(Lcom/samsung/android/lib/dexcontrol/fota/usb/UsbDeviceChecker;)Lcom/samsung/android/lib/dexcontrol/fota/usb/IUsbDeviceChecker$UsbDeviceListener;

    move-result-object v0

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Lcom/samsung/android/lib/dexcontrol/fota/usb/IUsbDeviceChecker$UsbDeviceListener;->onError(I)V

    goto :goto_0
.end method
