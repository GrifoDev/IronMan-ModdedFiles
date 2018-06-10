.class public interface abstract Lcom/samsung/android/lib/dexcontrol/fota/usb/IUsbDeviceChecker$UsbDeviceListener;
.super Ljava/lang/Object;
.source "IUsbDeviceChecker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/lib/dexcontrol/fota/usb/IUsbDeviceChecker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "UsbDeviceListener"
.end annotation


# virtual methods
.method public abstract onDeviceAttached(ILandroid/hardware/usb/UsbDevice;)V
.end method

.method public abstract onDeviceDetached()V
.end method

.method public abstract onError(I)V
.end method

.method public abstract onHdmiConnected(Z)V
.end method
