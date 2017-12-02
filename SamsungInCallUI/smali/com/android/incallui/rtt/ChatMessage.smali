.class public Lcom/android/incallui/rtt/ChatMessage;
.super Ljava/lang/Object;


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


# virtual methods
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
