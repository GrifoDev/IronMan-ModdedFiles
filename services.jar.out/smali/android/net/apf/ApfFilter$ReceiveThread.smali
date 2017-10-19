.class Landroid/net/apf/ApfFilter$ReceiveThread;
.super Ljava/lang/Thread;
.source "ApfFilter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/apf/ApfFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ReceiveThread"
.end annotation


# static fields
.field private static final synthetic -android-net-apf-ApfFilter$ProcessRaResultSwitchesValues:[I


# instance fields
.field final synthetic $SWITCH_TABLE$android$net$apf$ApfFilter$ProcessRaResult:[I

.field private mDroppedRas:I

.field private mMatchingRas:I

.field private final mPacket:[B

.field private mParseErrors:I

.field private mProgramUpdates:I

.field private mReceivedRas:I

.field private final mSocket:Ljava/io/FileDescriptor;

.field private final mStart:J

.field private volatile mStopped:Z

.field private mZeroLifetimeRas:I

.field final synthetic this$0:Landroid/net/apf/ApfFilter;


# direct methods
.method private static synthetic -getandroid-net-apf-ApfFilter$ProcessRaResultSwitchesValues()[I
    .locals 3

    sget-object v0, Landroid/net/apf/ApfFilter$ReceiveThread;->-android-net-apf-ApfFilter$ProcessRaResultSwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Landroid/net/apf/ApfFilter$ReceiveThread;->-android-net-apf-ApfFilter$ProcessRaResultSwitchesValues:[I

    return-object v0

    :cond_0
    invoke-static {}, Landroid/net/apf/ApfFilter$ProcessRaResult;->values()[Landroid/net/apf/ApfFilter$ProcessRaResult;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Landroid/net/apf/ApfFilter$ProcessRaResult;->DROPPED:Landroid/net/apf/ApfFilter$ProcessRaResult;

    invoke-virtual {v1}, Landroid/net/apf/ApfFilter$ProcessRaResult;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_5

    :goto_0
    :try_start_1
    sget-object v1, Landroid/net/apf/ApfFilter$ProcessRaResult;->MATCH:Landroid/net/apf/ApfFilter$ProcessRaResult;

    invoke-virtual {v1}, Landroid/net/apf/ApfFilter$ProcessRaResult;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_4

    :goto_1
    :try_start_2
    sget-object v1, Landroid/net/apf/ApfFilter$ProcessRaResult;->PARSE_ERROR:Landroid/net/apf/ApfFilter$ProcessRaResult;

    invoke-virtual {v1}, Landroid/net/apf/ApfFilter$ProcessRaResult;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_3

    :goto_2
    :try_start_3
    sget-object v1, Landroid/net/apf/ApfFilter$ProcessRaResult;->UPDATE_EXPIRY:Landroid/net/apf/ApfFilter$ProcessRaResult;

    invoke-virtual {v1}, Landroid/net/apf/ApfFilter$ProcessRaResult;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_2

    :goto_3
    :try_start_4
    sget-object v1, Landroid/net/apf/ApfFilter$ProcessRaResult;->UPDATE_NEW_RA:Landroid/net/apf/ApfFilter$ProcessRaResult;

    invoke-virtual {v1}, Landroid/net/apf/ApfFilter$ProcessRaResult;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_1

    :goto_4
    :try_start_5
    sget-object v1, Landroid/net/apf/ApfFilter$ProcessRaResult;->ZERO_LIFETIME:Landroid/net/apf/ApfFilter$ProcessRaResult;

    invoke-virtual {v1}, Landroid/net/apf/ApfFilter$ProcessRaResult;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_0

    :goto_5
    sput-object v0, Landroid/net/apf/ApfFilter$ReceiveThread;->-android-net-apf-ApfFilter$ProcessRaResultSwitchesValues:[I

    return-object v0

    :catch_0
    move-exception v1

    goto :goto_5

    :catch_1
    move-exception v1

    goto :goto_4

    :catch_2
    move-exception v1

    goto :goto_3

    :catch_3
    move-exception v1

    goto :goto_2

    :catch_4
    move-exception v1

    goto :goto_1

    :catch_5
    move-exception v1

    goto :goto_0
.end method

.method public constructor <init>(Landroid/net/apf/ApfFilter;Ljava/io/FileDescriptor;)V
    .locals 2

    iput-object p1, p0, Landroid/net/apf/ApfFilter$ReceiveThread;->this$0:Landroid/net/apf/ApfFilter;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const/16 v0, 0x5ea

    new-array v0, v0, [B

    iput-object v0, p0, Landroid/net/apf/ApfFilter$ReceiveThread;->mPacket:[B

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/net/apf/ApfFilter$ReceiveThread;->mStart:J

    iput-object p2, p0, Landroid/net/apf/ApfFilter$ReceiveThread;->mSocket:Ljava/io/FileDescriptor;

    return-void
.end method

.method private logStats()V
    .locals 11

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v4, p0, Landroid/net/apf/ApfFilter$ReceiveThread;->mStart:J

    sub-long v2, v0, v4

    iget-object v0, p0, Landroid/net/apf/ApfFilter$ReceiveThread;->this$0:Landroid/net/apf/ApfFilter;

    invoke-static {v0}, Landroid/net/apf/ApfFilter;->-get0(Landroid/net/apf/ApfFilter;)Landroid/net/apf/ApfCapabilities;

    move-result-object v0

    iget v10, v0, Landroid/net/apf/ApfCapabilities;->maximumApfProgramSize:I

    iget-object v0, p0, Landroid/net/apf/ApfFilter$ReceiveThread;->this$0:Landroid/net/apf/ApfFilter;

    invoke-static {v0}, Landroid/net/apf/ApfFilter;->-get1(Landroid/net/apf/ApfFilter;)Landroid/net/metrics/IpConnectivityLog;

    move-result-object v0

    new-instance v1, Landroid/net/metrics/ApfStats;

    iget v4, p0, Landroid/net/apf/ApfFilter$ReceiveThread;->mReceivedRas:I

    iget v5, p0, Landroid/net/apf/ApfFilter$ReceiveThread;->mMatchingRas:I

    iget v6, p0, Landroid/net/apf/ApfFilter$ReceiveThread;->mDroppedRas:I

    iget v7, p0, Landroid/net/apf/ApfFilter$ReceiveThread;->mZeroLifetimeRas:I

    iget v8, p0, Landroid/net/apf/ApfFilter$ReceiveThread;->mParseErrors:I

    iget v9, p0, Landroid/net/apf/ApfFilter$ReceiveThread;->mProgramUpdates:I

    invoke-direct/range {v1 .. v10}, Landroid/net/metrics/ApfStats;-><init>(JIIIIIII)V

    invoke-virtual {v0, v1}, Landroid/net/metrics/IpConnectivityLog;->log(Landroid/os/Parcelable;)V

    return-void
.end method

.method private updateStats(Landroid/net/apf/ApfFilter$ProcessRaResult;)V
    .locals 2

    iget v0, p0, Landroid/net/apf/ApfFilter$ReceiveThread;->mReceivedRas:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/net/apf/ApfFilter$ReceiveThread;->mReceivedRas:I

    invoke-static {}, Landroid/net/apf/ApfFilter$ReceiveThread;->-getandroid-net-apf-ApfFilter$ProcessRaResultSwitchesValues()[I

    move-result-object v0

    invoke-virtual {p1}, Landroid/net/apf/ApfFilter$ProcessRaResult;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    return-void

    :pswitch_0
    iget v0, p0, Landroid/net/apf/ApfFilter$ReceiveThread;->mMatchingRas:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/net/apf/ApfFilter$ReceiveThread;->mMatchingRas:I

    return-void

    :pswitch_1
    iget v0, p0, Landroid/net/apf/ApfFilter$ReceiveThread;->mDroppedRas:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/net/apf/ApfFilter$ReceiveThread;->mDroppedRas:I

    return-void

    :pswitch_2
    iget v0, p0, Landroid/net/apf/ApfFilter$ReceiveThread;->mParseErrors:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/net/apf/ApfFilter$ReceiveThread;->mParseErrors:I

    return-void

    :pswitch_3
    iget v0, p0, Landroid/net/apf/ApfFilter$ReceiveThread;->mZeroLifetimeRas:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/net/apf/ApfFilter$ReceiveThread;->mZeroLifetimeRas:I

    return-void

    :pswitch_4
    iget v0, p0, Landroid/net/apf/ApfFilter$ReceiveThread;->mMatchingRas:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/net/apf/ApfFilter$ReceiveThread;->mMatchingRas:I

    iget v0, p0, Landroid/net/apf/ApfFilter$ReceiveThread;->mProgramUpdates:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/net/apf/ApfFilter$ReceiveThread;->mProgramUpdates:I

    return-void

    :pswitch_5
    iget v0, p0, Landroid/net/apf/ApfFilter$ReceiveThread;->mProgramUpdates:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/net/apf/ApfFilter$ReceiveThread;->mProgramUpdates:I

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_4
        :pswitch_5
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method public halt()V
    .locals 2

    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/net/apf/ApfFilter$ReceiveThread;->mStopped:Z

    :try_start_0
    iget-object v1, p0, Landroid/net/apf/ApfFilter$ReceiveThread;->mSocket:Ljava/io/FileDescriptor;

    invoke-static {v1}, Llibcore/io/IoBridge;->closeAndSignalBlockedThreads(Ljava/io/FileDescriptor;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public run()V
    .locals 6

    iget-object v2, p0, Landroid/net/apf/ApfFilter$ReceiveThread;->this$0:Landroid/net/apf/ApfFilter;

    const-string/jumbo v3, "begin monitoring"

    invoke-static {v2, v3}, Landroid/net/apf/ApfFilter;->-wrap8(Landroid/net/apf/ApfFilter;Ljava/lang/String;)V

    :cond_0
    :goto_0
    iget-boolean v2, p0, Landroid/net/apf/ApfFilter$ReceiveThread;->mStopped:Z

    if-nez v2, :cond_1

    :try_start_0
    iget-object v2, p0, Landroid/net/apf/ApfFilter$ReceiveThread;->mSocket:Ljava/io/FileDescriptor;

    iget-object v3, p0, Landroid/net/apf/ApfFilter$ReceiveThread;->mPacket:[B

    iget-object v4, p0, Landroid/net/apf/ApfFilter$ReceiveThread;->mPacket:[B

    array-length v4, v4

    const/4 v5, 0x0

    invoke-static {v2, v3, v5, v4}, Landroid/system/Os;->read(Ljava/io/FileDescriptor;[BII)I

    move-result v1

    iget-object v2, p0, Landroid/net/apf/ApfFilter$ReceiveThread;->this$0:Landroid/net/apf/ApfFilter;

    iget-object v3, p0, Landroid/net/apf/ApfFilter$ReceiveThread;->mPacket:[B

    invoke-static {v2, v3, v1}, Landroid/net/apf/ApfFilter;->-wrap0(Landroid/net/apf/ApfFilter;[BI)Landroid/net/apf/ApfFilter$ProcessRaResult;

    move-result-object v2

    invoke-direct {p0, v2}, Landroid/net/apf/ApfFilter$ReceiveThread;->updateStats(Landroid/net/apf/ApfFilter$ProcessRaResult;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    iget-boolean v2, p0, Landroid/net/apf/ApfFilter$ReceiveThread;->mStopped:Z

    if-nez v2, :cond_0

    const-string/jumbo v2, "ApfFilter"

    const-string/jumbo v3, "Read error"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Landroid/net/apf/ApfFilter$ReceiveThread;->logStats()V

    return-void
.end method
