.class public Lcom/android/incallui/rtt/ChatMessage;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable;


# instance fields
.field private dateTime:Ljava/lang/String;

.field private id:J

.field private isMe:Z

.field private isRealTime:Z

.field private message:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/incallui/rtt/ChatMessage;->id:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/android/incallui/rtt/ChatMessage;->isMe:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/rtt/ChatMessage;->message:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/rtt/ChatMessage;->dateTime:Ljava/lang/String;

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getDate()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/rtt/ChatMessage;->dateTime:Ljava/lang/String;

    return-object v0
.end method

.method public getId()J
    .locals 2

    iget-wide v0, p0, Lcom/android/incallui/rtt/ChatMessage;->id:J

    return-wide v0
.end method

.method public getIsme()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/incallui/rtt/ChatMessage;->isMe:Z

    return v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/rtt/ChatMessage;->message:Ljava/lang/String;

    return-object v0
.end method

.method public getRealTime()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/incallui/rtt/ChatMessage;->isRealTime:Z

    return v0
.end method

.method public setDate(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/rtt/ChatMessage;->dateTime:Ljava/lang/String;

    return-void
.end method

.method public setId(J)V
    .locals 1

    iput-wide p1, p0, Lcom/android/incallui/rtt/ChatMessage;->id:J

    return-void
.end method

.method public setMe(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/incallui/rtt/ChatMessage;->isMe:Z

    return-void
.end method

.method public setMessage(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/rtt/ChatMessage;->message:Ljava/lang/String;

    return-void
.end method

.method public setRealTime(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/incallui/rtt/ChatMessage;->isRealTime:Z

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    iget-wide v0, p0, Lcom/android/incallui/rtt/ChatMessage;->id:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-boolean v0, p0, Lcom/android/incallui/rtt/ChatMessage;->isMe:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    iget-object v0, p0, Lcom/android/incallui/rtt/ChatMessage;->message:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/incallui/rtt/ChatMessage;->dateTime:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
