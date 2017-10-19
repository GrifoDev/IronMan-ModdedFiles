.class public interface abstract Lcom/samsung/android/stickercenter/IStickerCenter;
.super Ljava/lang/Object;
.source "IStickerCenter.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/stickercenter/IStickerCenter$Stub;
    }
.end annotation


# virtual methods
.method public abstract deleteContent(Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/stickercenter/IStickerCenterCallback;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract installContent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Lcom/samsung/android/stickercenter/IStickerCenterCallback;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
