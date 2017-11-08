.class public Lcom/samsung/android/provider/rttcallprovider/a;
.super Ljava/lang/Object;


# instance fields
.field a:I

.field b:Ljava/lang/String;

.field c:J

.field d:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;JLjava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/samsung/android/provider/rttcallprovider/a;->a:I

    iput-object p2, p0, Lcom/samsung/android/provider/rttcallprovider/a;->b:Ljava/lang/String;

    iput-wide p3, p0, Lcom/samsung/android/provider/rttcallprovider/a;->c:J

    iput-object p5, p0, Lcom/samsung/android/provider/rttcallprovider/a;->d:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 2

    const/4 v0, 0x1

    iget v1, p0, Lcom/samsung/android/provider/rttcallprovider/a;->a:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/provider/rttcallprovider/a;->b:Ljava/lang/String;

    return-object v0
.end method

.method public c()J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/provider/rttcallprovider/a;->c:J

    return-wide v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/provider/rttcallprovider/a;->d:Ljava/lang/String;

    return-object v0
.end method
