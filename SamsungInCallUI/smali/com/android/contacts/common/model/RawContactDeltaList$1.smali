.class final Lcom/android/contacts/common/model/RawContactDeltaList$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/common/model/RawContactDeltaList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/android/contacts/common/model/RawContactDeltaList;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)Lcom/android/contacts/common/model/RawContactDeltaList;
    .locals 1

    new-instance v0, Lcom/android/contacts/common/model/RawContactDeltaList;

    invoke-direct {v0}, Lcom/android/contacts/common/model/RawContactDeltaList;-><init>()V

    invoke-virtual {v0, p1}, Lcom/android/contacts/common/model/RawContactDeltaList;->a(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public a(I)[Lcom/android/contacts/common/model/RawContactDeltaList;
    .locals 1

    new-array v0, p1, [Lcom/android/contacts/common/model/RawContactDeltaList;

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/android/contacts/common/model/RawContactDeltaList$1;->a(Landroid/os/Parcel;)Lcom/android/contacts/common/model/RawContactDeltaList;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/android/contacts/common/model/RawContactDeltaList$1;->a(I)[Lcom/android/contacts/common/model/RawContactDeltaList;

    move-result-object v0

    return-object v0
.end method
