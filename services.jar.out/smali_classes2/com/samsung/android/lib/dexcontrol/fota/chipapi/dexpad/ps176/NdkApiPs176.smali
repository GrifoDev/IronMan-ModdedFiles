.class public Lcom/samsung/android/lib/dexcontrol/fota/chipapi/dexpad/ps176/NdkApiPs176;
.super Ljava/lang/Object;
.source "NdkApiPs176.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/lib/dexcontrol/fota/chipapi/dexpad/ps176/NdkApiPs176$FwVersionInfo;,
        Lcom/samsung/android/lib/dexcontrol/fota/chipapi/dexpad/ps176/NdkApiPs176$NdkApiPs176Listener;
    }
.end annotation


# static fields
.field public static final GPU_MARKER_AMD:I = 0x1

.field public static final GPU_MARKER_INTEL:I = 0x0

.field public static final GPU_MARKER_NVIDIA:I = 0x2

.field public static final GPU_MARKER_UNKNOWN:I = 0x3


# instance fields
.field private mNdkApiPs176Listener:Lcom/samsung/android/lib/dexcontrol/fota/chipapi/dexpad/ps176/NdkApiPs176$NdkApiPs176Listener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string/jumbo v0, "native_ps176"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/lib/dexcontrol/fota/chipapi/dexpad/ps176/NdkApiPs176;->mNdkApiPs176Listener:Lcom/samsung/android/lib/dexcontrol/fota/chipapi/dexpad/ps176/NdkApiPs176$NdkApiPs176Listener;

    return-void
.end method


# virtual methods
.method public native close()V
.end method

.method public native downloadFirmware(Ljava/lang/String;)Z
.end method

.method public native getFwVersion()Lcom/samsung/android/lib/dexcontrol/fota/chipapi/dexpad/ps176/NdkApiPs176$FwVersionInfo;
.end method

.method public native isPs176Connected()Z
.end method

.method public onDownloadFirmwareProgressChanged(F)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/lib/dexcontrol/fota/chipapi/dexpad/ps176/NdkApiPs176;->mNdkApiPs176Listener:Lcom/samsung/android/lib/dexcontrol/fota/chipapi/dexpad/ps176/NdkApiPs176$NdkApiPs176Listener;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/lib/dexcontrol/fota/chipapi/dexpad/ps176/NdkApiPs176;->mNdkApiPs176Listener:Lcom/samsung/android/lib/dexcontrol/fota/chipapi/dexpad/ps176/NdkApiPs176$NdkApiPs176Listener;

    invoke-interface {v0, p1}, Lcom/samsung/android/lib/dexcontrol/fota/chipapi/dexpad/ps176/NdkApiPs176$NdkApiPs176Listener;->onDownloadFirmwareProgressChanged(F)V

    goto :goto_0
.end method

.method public native open()Z
.end method

.method public setListener(Lcom/samsung/android/lib/dexcontrol/fota/chipapi/dexpad/ps176/NdkApiPs176$NdkApiPs176Listener;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/lib/dexcontrol/fota/chipapi/dexpad/ps176/NdkApiPs176;->mNdkApiPs176Listener:Lcom/samsung/android/lib/dexcontrol/fota/chipapi/dexpad/ps176/NdkApiPs176$NdkApiPs176Listener;

    return-void
.end method

.method public native verifyFirmware()Z
.end method
