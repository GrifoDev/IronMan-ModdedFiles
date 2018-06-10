.class public Lcom/samsung/android/lib/dexcontrol/fota/debug/DexFotaLibDataObserver$DatavEentHandler;
.super Landroid/os/Handler;
.source "DexFotaLibDataObserver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/lib/dexcontrol/fota/debug/DexFotaLibDataObserver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DatavEentHandler"
.end annotation


# instance fields
.field private mListener:Lcom/samsung/android/lib/dexcontrol/fota/debug/DexFotaLibDataObserver$DexFotaLibDataObserverListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/lib/dexcontrol/fota/debug/DexFotaLibDataObserver$DatavEentHandler;->mListener:Lcom/samsung/android/lib/dexcontrol/fota/debug/DexFotaLibDataObserver$DexFotaLibDataObserverListener;

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/lib/dexcontrol/fota/debug/DexFotaLibDataObserver$DatavEentHandler;->mListener:Lcom/samsung/android/lib/dexcontrol/fota/debug/DexFotaLibDataObserver$DexFotaLibDataObserverListener;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    return-void

    :cond_1
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lcom/samsung/android/lib/dexcontrol/fota/debug/DexFotaLibDataObserver$DatavEentHandler;->mListener:Lcom/samsung/android/lib/dexcontrol/fota/debug/DexFotaLibDataObserver$DexFotaLibDataObserverListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/lib/dexcontrol/fota/debug/DexFotaLibDataObserver$DatavEentHandler;->mListener:Lcom/samsung/android/lib/dexcontrol/fota/debug/DexFotaLibDataObserver$DexFotaLibDataObserverListener;

    iget v1, p1, Landroid/os/Message;->what:I

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/samsung/android/lib/dexcontrol/fota/debug/DexFotaLibDataObserver$DexFotaLibDataObserverListener;->onDataChanged(ILjava/lang/Object;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method send(ILjava/lang/Object;)V
    .locals 1

    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    iput p1, v0, Landroid/os/Message;->what:I

    iput-object p2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {p0, v0}, Lcom/samsung/android/lib/dexcontrol/fota/debug/DexFotaLibDataObserver$DatavEentHandler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method setListener(Lcom/samsung/android/lib/dexcontrol/fota/debug/DexFotaLibDataObserver$DexFotaLibDataObserverListener;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/lib/dexcontrol/fota/debug/DexFotaLibDataObserver$DatavEentHandler;->mListener:Lcom/samsung/android/lib/dexcontrol/fota/debug/DexFotaLibDataObserver$DexFotaLibDataObserverListener;

    return-void
.end method
