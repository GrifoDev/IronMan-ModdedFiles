.class public abstract Landroid/content/IBridgeService$Stub;
.super Landroid/os/Binder;
.source "IBridgeService.java"

# interfaces
.implements Landroid/content/IBridgeService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/IBridgeService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/IBridgeService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.content.IBridgeService"

.field static final TRANSACTION_queryProvider:I = 0x1

.field static final TRANSACTION_registerProvider:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string/jumbo v0, "android.content.IBridgeService"

    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/content/IBridgeService;
    .locals 2

    const/4 v1, 0x0

    if-nez p0, :cond_0

    return-object v1

    :cond_0
    const-string/jumbo v1, "android.content.IBridgeService"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/content/IBridgeService;

    if-eqz v1, :cond_1

    check-cast v0, Landroid/content/IBridgeService;

    return-object v0

    :cond_1
    new-instance v1, Landroid/content/IBridgeService$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/content/IBridgeService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v10, 0x1

    sparse-switch p1, :sswitch_data_0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    :sswitch_0
    const-string/jumbo v0, "android.content.IBridgeService"

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v10

    :sswitch_1
    const-string/jumbo v0, "android.content.IBridgeService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    move-object v0, p0

    invoke-virtual/range {v0 .. v7}, Landroid/content/IBridgeService$Stub;->queryProvider(Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/content/CustomCursor;

    move-result-object v9

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v9, :cond_0

    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v9, p3, v10}, Landroid/content/CustomCursor;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_0
    return v10

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    :sswitch_2
    const-string/jumbo v0, "android.content.IBridgeService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/content/IProviderCallBack$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/IProviderCallBack;

    move-result-object v8

    invoke-virtual {p0, v1, v8}, Landroid/content/IBridgeService$Stub;->registerProvider(Ljava/lang/String;Landroid/content/IProviderCallBack;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v10

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
