.class public Lcom/samsung/android/lib/dexcontrol/fota/debug/DexFotaLibDataObserver;
.super Ljava/lang/Object;
.source "DexFotaLibDataObserver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/lib/dexcontrol/fota/debug/DexFotaLibDataObserver$DatavEentHandler;,
        Lcom/samsung/android/lib/dexcontrol/fota/debug/DexFotaLibDataObserver$DexFotaLibDataObserverListener;
    }
.end annotation


# static fields
.field public static final DATA_TYPE_ERROR_MESSAGE:I = 0x3

.field public static final DATA_TYPE_UPDATE_MESSAGE:I = 0x2

.field public static final DATA_TYPE_USB_DEVICE:I = 0x1

.field private static final TAG:Ljava/lang/String; = "DexFotaLibDataObserver"

.field private static mThis:Lcom/samsung/android/lib/dexcontrol/fota/debug/DexFotaLibDataObserver;


# instance fields
.field private mDatavEentHandler:Lcom/samsung/android/lib/dexcontrol/fota/debug/DexFotaLibDataObserver$DatavEentHandler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/samsung/android/lib/dexcontrol/fota/debug/DexFotaLibDataObserver;->mThis:Lcom/samsung/android/lib/dexcontrol/fota/debug/DexFotaLibDataObserver;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/lib/dexcontrol/fota/debug/DexFotaLibDataObserver;->mDatavEentHandler:Lcom/samsung/android/lib/dexcontrol/fota/debug/DexFotaLibDataObserver$DatavEentHandler;

    new-instance v0, Lcom/samsung/android/lib/dexcontrol/fota/debug/DexFotaLibDataObserver$DatavEentHandler;

    invoke-direct {v0}, Lcom/samsung/android/lib/dexcontrol/fota/debug/DexFotaLibDataObserver$DatavEentHandler;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/lib/dexcontrol/fota/debug/DexFotaLibDataObserver;->mDatavEentHandler:Lcom/samsung/android/lib/dexcontrol/fota/debug/DexFotaLibDataObserver$DatavEentHandler;

    return-void
.end method

.method public static getInstance()Lcom/samsung/android/lib/dexcontrol/fota/debug/DexFotaLibDataObserver;
    .locals 1

    sget-object v0, Lcom/samsung/android/lib/dexcontrol/fota/debug/DexFotaLibDataObserver;->mThis:Lcom/samsung/android/lib/dexcontrol/fota/debug/DexFotaLibDataObserver;

    if-eqz v0, :cond_0

    :goto_0
    sget-object v0, Lcom/samsung/android/lib/dexcontrol/fota/debug/DexFotaLibDataObserver;->mThis:Lcom/samsung/android/lib/dexcontrol/fota/debug/DexFotaLibDataObserver;

    return-object v0

    :cond_0
    new-instance v0, Lcom/samsung/android/lib/dexcontrol/fota/debug/DexFotaLibDataObserver;

    invoke-direct {v0}, Lcom/samsung/android/lib/dexcontrol/fota/debug/DexFotaLibDataObserver;-><init>()V

    sput-object v0, Lcom/samsung/android/lib/dexcontrol/fota/debug/DexFotaLibDataObserver;->mThis:Lcom/samsung/android/lib/dexcontrol/fota/debug/DexFotaLibDataObserver;

    goto :goto_0
.end method


# virtual methods
.method public setErrorMessage(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/lib/dexcontrol/fota/debug/DexFotaLibDataObserver;->mDatavEentHandler:Lcom/samsung/android/lib/dexcontrol/fota/debug/DexFotaLibDataObserver$DatavEentHandler;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/lib/dexcontrol/fota/debug/DexFotaLibDataObserver;->mDatavEentHandler:Lcom/samsung/android/lib/dexcontrol/fota/debug/DexFotaLibDataObserver$DatavEentHandler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1, p1}, Lcom/samsung/android/lib/dexcontrol/fota/debug/DexFotaLibDataObserver$DatavEentHandler;->send(ILjava/lang/Object;)V

    goto :goto_0
.end method

.method public setListener(Lcom/samsung/android/lib/dexcontrol/fota/debug/DexFotaLibDataObserver$DatavEentHandler;Lcom/samsung/android/lib/dexcontrol/fota/debug/DexFotaLibDataObserver$DexFotaLibDataObserverListener;)V
    .locals 1

    iput-object p1, p0, Lcom/samsung/android/lib/dexcontrol/fota/debug/DexFotaLibDataObserver;->mDatavEentHandler:Lcom/samsung/android/lib/dexcontrol/fota/debug/DexFotaLibDataObserver$DatavEentHandler;

    iget-object v0, p0, Lcom/samsung/android/lib/dexcontrol/fota/debug/DexFotaLibDataObserver;->mDatavEentHandler:Lcom/samsung/android/lib/dexcontrol/fota/debug/DexFotaLibDataObserver$DatavEentHandler;

    invoke-virtual {v0, p2}, Lcom/samsung/android/lib/dexcontrol/fota/debug/DexFotaLibDataObserver$DatavEentHandler;->setListener(Lcom/samsung/android/lib/dexcontrol/fota/debug/DexFotaLibDataObserver$DexFotaLibDataObserverListener;)V

    return-void
.end method

.method public setUpdateMessage(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/lib/dexcontrol/fota/debug/DexFotaLibDataObserver;->mDatavEentHandler:Lcom/samsung/android/lib/dexcontrol/fota/debug/DexFotaLibDataObserver$DatavEentHandler;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/lib/dexcontrol/fota/debug/DexFotaLibDataObserver;->mDatavEentHandler:Lcom/samsung/android/lib/dexcontrol/fota/debug/DexFotaLibDataObserver$DatavEentHandler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p1}, Lcom/samsung/android/lib/dexcontrol/fota/debug/DexFotaLibDataObserver$DatavEentHandler;->send(ILjava/lang/Object;)V

    goto :goto_0
.end method

.method public setUsbDevice(Landroid/hardware/usb/UsbDevice;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/lib/dexcontrol/fota/debug/DexFotaLibDataObserver;->mDatavEentHandler:Lcom/samsung/android/lib/dexcontrol/fota/debug/DexFotaLibDataObserver$DatavEentHandler;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/lib/dexcontrol/fota/debug/DexFotaLibDataObserver;->mDatavEentHandler:Lcom/samsung/android/lib/dexcontrol/fota/debug/DexFotaLibDataObserver$DatavEentHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Lcom/samsung/android/lib/dexcontrol/fota/debug/DexFotaLibDataObserver$DatavEentHandler;->send(ILjava/lang/Object;)V

    goto :goto_0
.end method
