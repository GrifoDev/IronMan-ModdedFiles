.class public interface abstract Lcom/samsung/android/lib/dexcontrol/fota/usb/IUsbDeviceChecker;
.super Ljava/lang/Object;
.source "IUsbDeviceChecker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/lib/dexcontrol/fota/usb/IUsbDeviceChecker$UsbDeviceListener;
    }
.end annotation


# static fields
.field public static final DEX1:I = 0x0

.field public static final DEX2:I = 0x1

.field public static final ERROR_CODE_NOT_REATTACHED:I = 0x2

.field public static final ERROR_CODE_SECURITY_PERMISSION_DENIED:I = 0x1

.field public static final ERROR_CODE_UNKNOWN:I = 0x0

.field public static final UNKNOWN_DEVICE:I = -0x1


# virtual methods
.method public abstract create(Landroid/content/Context;)V
.end method

.method public abstract destroy()V
.end method

.method public abstract getConnectedDexProductId()I
.end method

.method public abstract getUsbDevice()Landroid/hardware/usb/UsbDevice;
.end method

.method public abstract isDexDeviceConnected()Z
.end method

.method public abstract requestCheckHdmiConnected()V
.end method

.method public abstract requestWaitReAttach()V
.end method

.method public abstract setListener(Lcom/samsung/android/lib/dexcontrol/fota/usb/IUsbDeviceChecker$UsbDeviceListener;)V
.end method
