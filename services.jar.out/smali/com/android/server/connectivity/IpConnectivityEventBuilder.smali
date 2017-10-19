.class public final Lcom/android/server/connectivity/IpConnectivityEventBuilder;
.super Ljava/lang/Object;
.source "IpConnectivityEventBuilder.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static bytesToInts([B)[I
    .locals 3

    array-length v2, p0

    new-array v1, v2, [I

    const/4 v0, 0x0

    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_0

    aget-byte v2, p0, v0

    and-int/lit16 v2, v2, 0xff

    aput v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method private static ipSupportOf(Landroid/net/metrics/DefaultNetworkEvent;)I
    .locals 1

    iget-boolean v0, p0, Landroid/net/metrics/DefaultNetworkEvent;->prevIPv4:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/net/metrics/DefaultNetworkEvent;->prevIPv6:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    return v0

    :cond_0
    iget-boolean v0, p0, Landroid/net/metrics/DefaultNetworkEvent;->prevIPv6:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    return v0

    :cond_1
    iget-boolean v0, p0, Landroid/net/metrics/DefaultNetworkEvent;->prevIPv4:Z

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    return v0

    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method private static isBitSet(II)Z
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    shl-int v2, v0, p1

    and-int/2addr v2, p0

    if-eqz v2, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method private static netIdOf(I)Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$NetworkId;
    .locals 1

    new-instance v0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$NetworkId;

    invoke-direct {v0}, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$NetworkId;-><init>()V

    iput p0, v0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$NetworkId;->networkId:I

    return-object v0
.end method

.method public static serialize(ILjava/util/List;)[B
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Landroid/net/ConnectivityMetricsEvent;",
            ">;)[B"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpConnectivityLog;

    invoke-direct {v0}, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpConnectivityLog;-><init>()V

    invoke-static {p1}, Lcom/android/server/connectivity/IpConnectivityEventBuilder;->toProto(Ljava/util/List;)[Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpConnectivityEvent;

    move-result-object v1

    iput-object v1, v0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpConnectivityLog;->events:[Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpConnectivityEvent;

    iput p0, v0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpConnectivityLog;->droppedEvents:I

    invoke-static {v0}, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpConnectivityLog;->toByteArray(Lcom/google/protobuf/nano/MessageNano;)[B

    move-result-object v1

    return-object v1
.end method

.method private static setApfProgramEvent(Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpConnectivityEvent;Landroid/net/metrics/ApfProgramEvent;)V
    .locals 5

    const/4 v4, 0x1

    new-instance v0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$ApfProgramEvent;

    invoke-direct {v0}, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$ApfProgramEvent;-><init>()V

    iput-object v0, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpConnectivityEvent;->apfProgramEvent:Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$ApfProgramEvent;

    iget-object v0, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpConnectivityEvent;->apfProgramEvent:Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$ApfProgramEvent;

    iget-wide v2, p1, Landroid/net/metrics/ApfProgramEvent;->lifetime:J

    iput-wide v2, v0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$ApfProgramEvent;->lifetime:J

    iget-object v0, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpConnectivityEvent;->apfProgramEvent:Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$ApfProgramEvent;

    iget v1, p1, Landroid/net/metrics/ApfProgramEvent;->filteredRas:I

    iput v1, v0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$ApfProgramEvent;->filteredRas:I

    iget-object v0, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpConnectivityEvent;->apfProgramEvent:Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$ApfProgramEvent;

    iget v1, p1, Landroid/net/metrics/ApfProgramEvent;->currentRas:I

    iput v1, v0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$ApfProgramEvent;->currentRas:I

    iget-object v0, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpConnectivityEvent;->apfProgramEvent:Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$ApfProgramEvent;

    iget v1, p1, Landroid/net/metrics/ApfProgramEvent;->programLength:I

    iput v1, v0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$ApfProgramEvent;->programLength:I

    iget v0, p1, Landroid/net/metrics/ApfProgramEvent;->flags:I

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/server/connectivity/IpConnectivityEventBuilder;->isBitSet(II)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpConnectivityEvent;->apfProgramEvent:Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$ApfProgramEvent;

    iput-boolean v4, v0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$ApfProgramEvent;->dropMulticast:Z

    :cond_0
    iget v0, p1, Landroid/net/metrics/ApfProgramEvent;->flags:I

    invoke-static {v0, v4}, Lcom/android/server/connectivity/IpConnectivityEventBuilder;->isBitSet(II)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpConnectivityEvent;->apfProgramEvent:Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$ApfProgramEvent;

    iput-boolean v4, v0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$ApfProgramEvent;->hasIpv4Addr:Z

    :cond_1
    return-void
.end method

.method private static setApfStats(Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpConnectivityEvent;Landroid/net/metrics/ApfStats;)V
    .locals 4

    new-instance v0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$ApfStatistics;

    invoke-direct {v0}, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$ApfStatistics;-><init>()V

    iput-object v0, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpConnectivityEvent;->apfStatistics:Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$ApfStatistics;

    iget-object v0, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpConnectivityEvent;->apfStatistics:Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$ApfStatistics;

    iget-wide v2, p1, Landroid/net/metrics/ApfStats;->durationMs:J

    iput-wide v2, v0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$ApfStatistics;->durationMs:J

    iget-object v0, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpConnectivityEvent;->apfStatistics:Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$ApfStatistics;

    iget v1, p1, Landroid/net/metrics/ApfStats;->receivedRas:I

    iput v1, v0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$ApfStatistics;->receivedRas:I

    iget-object v0, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpConnectivityEvent;->apfStatistics:Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$ApfStatistics;

    iget v1, p1, Landroid/net/metrics/ApfStats;->matchingRas:I

    iput v1, v0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$ApfStatistics;->matchingRas:I

    iget-object v0, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpConnectivityEvent;->apfStatistics:Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$ApfStatistics;

    iget v1, p1, Landroid/net/metrics/ApfStats;->droppedRas:I

    iput v1, v0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$ApfStatistics;->droppedRas:I

    iget-object v0, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpConnectivityEvent;->apfStatistics:Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$ApfStatistics;

    iget v1, p1, Landroid/net/metrics/ApfStats;->zeroLifetimeRas:I

    iput v1, v0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$ApfStatistics;->zeroLifetimeRas:I

    iget-object v0, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpConnectivityEvent;->apfStatistics:Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$ApfStatistics;

    iget v1, p1, Landroid/net/metrics/ApfStats;->parseErrors:I

    iput v1, v0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$ApfStatistics;->parseErrors:I

    iget-object v0, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpConnectivityEvent;->apfStatistics:Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$ApfStatistics;

    iget v1, p1, Landroid/net/metrics/ApfStats;->programUpdates:I

    iput v1, v0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$ApfStatistics;->programUpdates:I

    iget-object v0, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpConnectivityEvent;->apfStatistics:Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$ApfStatistics;

    iget v1, p1, Landroid/net/metrics/ApfStats;->maxProgramSize:I

    iput v1, v0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$ApfStatistics;->maxProgramSize:I

    return-void
.end method

.method private static setDefaultNetworkEvent(Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpConnectivityEvent;Landroid/net/metrics/DefaultNetworkEvent;)V
    .locals 2

    new-instance v0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$DefaultNetworkEvent;

    invoke-direct {v0}, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$DefaultNetworkEvent;-><init>()V

    iput-object v0, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpConnectivityEvent;->defaultNetworkEvent:Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$DefaultNetworkEvent;

    iget-object v0, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpConnectivityEvent;->defaultNetworkEvent:Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$DefaultNetworkEvent;

    iget v1, p1, Landroid/net/metrics/DefaultNetworkEvent;->netId:I

    invoke-static {v1}, Lcom/android/server/connectivity/IpConnectivityEventBuilder;->netIdOf(I)Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$NetworkId;

    move-result-object v1

    iput-object v1, v0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$DefaultNetworkEvent;->networkId:Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$NetworkId;

    iget-object v0, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpConnectivityEvent;->defaultNetworkEvent:Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$DefaultNetworkEvent;

    iget v1, p1, Landroid/net/metrics/DefaultNetworkEvent;->prevNetId:I

    invoke-static {v1}, Lcom/android/server/connectivity/IpConnectivityEventBuilder;->netIdOf(I)Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$NetworkId;

    move-result-object v1

    iput-object v1, v0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$DefaultNetworkEvent;->previousNetworkId:Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$NetworkId;

    iget-object v0, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpConnectivityEvent;->defaultNetworkEvent:Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$DefaultNetworkEvent;

    iget-object v1, p1, Landroid/net/metrics/DefaultNetworkEvent;->transportTypes:[I

    iput-object v1, v0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$DefaultNetworkEvent;->transportTypes:[I

    iget-object v0, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpConnectivityEvent;->defaultNetworkEvent:Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$DefaultNetworkEvent;

    invoke-static {p1}, Lcom/android/server/connectivity/IpConnectivityEventBuilder;->ipSupportOf(Landroid/net/metrics/DefaultNetworkEvent;)I

    move-result v1

    iput v1, v0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$DefaultNetworkEvent;->previousNetworkIpSupport:I

    return-void
.end method

.method private static setDhcpClientEvent(Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpConnectivityEvent;Landroid/net/metrics/DhcpClientEvent;)V
    .locals 2

    new-instance v0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$DHCPEvent;

    invoke-direct {v0}, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$DHCPEvent;-><init>()V

    iput-object v0, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpConnectivityEvent;->dhcpEvent:Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$DHCPEvent;

    iget-object v0, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpConnectivityEvent;->dhcpEvent:Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$DHCPEvent;

    iget-object v1, p1, Landroid/net/metrics/DhcpClientEvent;->ifName:Ljava/lang/String;

    iput-object v1, v0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$DHCPEvent;->ifName:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpConnectivityEvent;->dhcpEvent:Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$DHCPEvent;

    iget-object v1, p1, Landroid/net/metrics/DhcpClientEvent;->msg:Ljava/lang/String;

    iput-object v1, v0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$DHCPEvent;->stateTransition:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpConnectivityEvent;->dhcpEvent:Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$DHCPEvent;

    iget v1, p1, Landroid/net/metrics/DhcpClientEvent;->durationMs:I

    iput v1, v0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$DHCPEvent;->durationMs:I

    return-void
.end method

.method private static setDhcpErrorEvent(Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpConnectivityEvent;Landroid/net/metrics/DhcpErrorEvent;)V
    .locals 2

    new-instance v0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$DHCPEvent;

    invoke-direct {v0}, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$DHCPEvent;-><init>()V

    iput-object v0, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpConnectivityEvent;->dhcpEvent:Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$DHCPEvent;

    iget-object v0, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpConnectivityEvent;->dhcpEvent:Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$DHCPEvent;

    iget-object v1, p1, Landroid/net/metrics/DhcpErrorEvent;->ifName:Ljava/lang/String;

    iput-object v1, v0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$DHCPEvent;->ifName:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpConnectivityEvent;->dhcpEvent:Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$DHCPEvent;

    iget v1, p1, Landroid/net/metrics/DhcpErrorEvent;->errorCode:I

    iput v1, v0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$DHCPEvent;->errorCode:I

    return-void
.end method

.method private static setDnsEvent(Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpConnectivityEvent;Landroid/net/metrics/DnsEvent;)V
    .locals 2

    new-instance v0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$DNSLookupBatch;

    invoke-direct {v0}, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$DNSLookupBatch;-><init>()V

    iput-object v0, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpConnectivityEvent;->dnsLookupBatch:Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$DNSLookupBatch;

    iget-object v0, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpConnectivityEvent;->dnsLookupBatch:Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$DNSLookupBatch;

    iget v1, p1, Landroid/net/metrics/DnsEvent;->netId:I

    invoke-static {v1}, Lcom/android/server/connectivity/IpConnectivityEventBuilder;->netIdOf(I)Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$NetworkId;

    move-result-object v1

    iput-object v1, v0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$DNSLookupBatch;->networkId:Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$NetworkId;

    iget-object v0, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpConnectivityEvent;->dnsLookupBatch:Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$DNSLookupBatch;

    iget-object v1, p1, Landroid/net/metrics/DnsEvent;->eventTypes:[B

    invoke-static {v1}, Lcom/android/server/connectivity/IpConnectivityEventBuilder;->bytesToInts([B)[I

    move-result-object v1

    iput-object v1, v0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$DNSLookupBatch;->eventTypes:[I

    iget-object v0, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpConnectivityEvent;->dnsLookupBatch:Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$DNSLookupBatch;

    iget-object v1, p1, Landroid/net/metrics/DnsEvent;->returnCodes:[B

    invoke-static {v1}, Lcom/android/server/connectivity/IpConnectivityEventBuilder;->bytesToInts([B)[I

    move-result-object v1

    iput-object v1, v0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$DNSLookupBatch;->returnCodes:[I

    iget-object v0, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpConnectivityEvent;->dnsLookupBatch:Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$DNSLookupBatch;

    iget-object v1, p1, Landroid/net/metrics/DnsEvent;->latenciesMs:[I

    iput-object v1, v0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$DNSLookupBatch;->latenciesMs:[I

    return-void
.end method

.method private static setEvent(Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpConnectivityEvent;Landroid/os/Parcelable;)Z
    .locals 2

    const/4 v1, 0x1

    instance-of v0, p1, Landroid/net/metrics/DhcpErrorEvent;

    if-eqz v0, :cond_0

    check-cast p1, Landroid/net/metrics/DhcpErrorEvent;

    invoke-static {p0, p1}, Lcom/android/server/connectivity/IpConnectivityEventBuilder;->setDhcpErrorEvent(Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpConnectivityEvent;Landroid/net/metrics/DhcpErrorEvent;)V

    return v1

    :cond_0
    instance-of v0, p1, Landroid/net/metrics/DhcpClientEvent;

    if-eqz v0, :cond_1

    check-cast p1, Landroid/net/metrics/DhcpClientEvent;

    invoke-static {p0, p1}, Lcom/android/server/connectivity/IpConnectivityEventBuilder;->setDhcpClientEvent(Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpConnectivityEvent;Landroid/net/metrics/DhcpClientEvent;)V

    return v1

    :cond_1
    instance-of v0, p1, Landroid/net/metrics/DnsEvent;

    if-eqz v0, :cond_2

    check-cast p1, Landroid/net/metrics/DnsEvent;

    invoke-static {p0, p1}, Lcom/android/server/connectivity/IpConnectivityEventBuilder;->setDnsEvent(Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpConnectivityEvent;Landroid/net/metrics/DnsEvent;)V

    return v1

    :cond_2
    instance-of v0, p1, Landroid/net/metrics/IpManagerEvent;

    if-eqz v0, :cond_3

    check-cast p1, Landroid/net/metrics/IpManagerEvent;

    invoke-static {p0, p1}, Lcom/android/server/connectivity/IpConnectivityEventBuilder;->setIpManagerEvent(Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpConnectivityEvent;Landroid/net/metrics/IpManagerEvent;)V

    return v1

    :cond_3
    instance-of v0, p1, Landroid/net/metrics/IpReachabilityEvent;

    if-eqz v0, :cond_4

    check-cast p1, Landroid/net/metrics/IpReachabilityEvent;

    invoke-static {p0, p1}, Lcom/android/server/connectivity/IpConnectivityEventBuilder;->setIpReachabilityEvent(Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpConnectivityEvent;Landroid/net/metrics/IpReachabilityEvent;)V

    return v1

    :cond_4
    instance-of v0, p1, Landroid/net/metrics/DefaultNetworkEvent;

    if-eqz v0, :cond_5

    check-cast p1, Landroid/net/metrics/DefaultNetworkEvent;

    invoke-static {p0, p1}, Lcom/android/server/connectivity/IpConnectivityEventBuilder;->setDefaultNetworkEvent(Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpConnectivityEvent;Landroid/net/metrics/DefaultNetworkEvent;)V

    return v1

    :cond_5
    instance-of v0, p1, Landroid/net/metrics/NetworkEvent;

    if-eqz v0, :cond_6

    check-cast p1, Landroid/net/metrics/NetworkEvent;

    invoke-static {p0, p1}, Lcom/android/server/connectivity/IpConnectivityEventBuilder;->setNetworkEvent(Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpConnectivityEvent;Landroid/net/metrics/NetworkEvent;)V

    return v1

    :cond_6
    instance-of v0, p1, Landroid/net/metrics/ValidationProbeEvent;

    if-eqz v0, :cond_7

    check-cast p1, Landroid/net/metrics/ValidationProbeEvent;

    invoke-static {p0, p1}, Lcom/android/server/connectivity/IpConnectivityEventBuilder;->setValidationProbeEvent(Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpConnectivityEvent;Landroid/net/metrics/ValidationProbeEvent;)V

    return v1

    :cond_7
    instance-of v0, p1, Landroid/net/metrics/ApfProgramEvent;

    if-eqz v0, :cond_8

    check-cast p1, Landroid/net/metrics/ApfProgramEvent;

    invoke-static {p0, p1}, Lcom/android/server/connectivity/IpConnectivityEventBuilder;->setApfProgramEvent(Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpConnectivityEvent;Landroid/net/metrics/ApfProgramEvent;)V

    return v1

    :cond_8
    instance-of v0, p1, Landroid/net/metrics/ApfStats;

    if-eqz v0, :cond_9

    check-cast p1, Landroid/net/metrics/ApfStats;

    invoke-static {p0, p1}, Lcom/android/server/connectivity/IpConnectivityEventBuilder;->setApfStats(Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpConnectivityEvent;Landroid/net/metrics/ApfStats;)V

    return v1

    :cond_9
    instance-of v0, p1, Landroid/net/metrics/RaEvent;

    if-eqz v0, :cond_a

    check-cast p1, Landroid/net/metrics/RaEvent;

    invoke-static {p0, p1}, Lcom/android/server/connectivity/IpConnectivityEventBuilder;->setRaEvent(Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpConnectivityEvent;Landroid/net/metrics/RaEvent;)V

    return v1

    :cond_a
    const/4 v0, 0x0

    return v0
.end method

.method private static setIpManagerEvent(Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpConnectivityEvent;Landroid/net/metrics/IpManagerEvent;)V
    .locals 4

    new-instance v0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpProvisioningEvent;

    invoke-direct {v0}, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpProvisioningEvent;-><init>()V

    iput-object v0, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpConnectivityEvent;->ipProvisioningEvent:Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpProvisioningEvent;

    iget-object v0, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpConnectivityEvent;->ipProvisioningEvent:Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpProvisioningEvent;

    iget-object v1, p1, Landroid/net/metrics/IpManagerEvent;->ifName:Ljava/lang/String;

    iput-object v1, v0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpProvisioningEvent;->ifName:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpConnectivityEvent;->ipProvisioningEvent:Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpProvisioningEvent;

    iget v1, p1, Landroid/net/metrics/IpManagerEvent;->eventType:I

    iput v1, v0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpProvisioningEvent;->eventType:I

    iget-object v0, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpConnectivityEvent;->ipProvisioningEvent:Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpProvisioningEvent;

    iget-wide v2, p1, Landroid/net/metrics/IpManagerEvent;->durationMs:J

    long-to-int v1, v2

    iput v1, v0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpProvisioningEvent;->latencyMs:I

    return-void
.end method

.method private static setIpReachabilityEvent(Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpConnectivityEvent;Landroid/net/metrics/IpReachabilityEvent;)V
    .locals 2

    new-instance v0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpReachabilityEvent;

    invoke-direct {v0}, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpReachabilityEvent;-><init>()V

    iput-object v0, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpConnectivityEvent;->ipReachabilityEvent:Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpReachabilityEvent;

    iget-object v0, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpConnectivityEvent;->ipReachabilityEvent:Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpReachabilityEvent;

    iget-object v1, p1, Landroid/net/metrics/IpReachabilityEvent;->ifName:Ljava/lang/String;

    iput-object v1, v0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpReachabilityEvent;->ifName:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpConnectivityEvent;->ipReachabilityEvent:Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpReachabilityEvent;

    iget v1, p1, Landroid/net/metrics/IpReachabilityEvent;->eventType:I

    iput v1, v0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpReachabilityEvent;->eventType:I

    return-void
.end method

.method private static setNetworkEvent(Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpConnectivityEvent;Landroid/net/metrics/NetworkEvent;)V
    .locals 4

    new-instance v0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$NetworkEvent;

    invoke-direct {v0}, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$NetworkEvent;-><init>()V

    iput-object v0, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpConnectivityEvent;->networkEvent:Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$NetworkEvent;

    iget-object v0, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpConnectivityEvent;->networkEvent:Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$NetworkEvent;

    iget v1, p1, Landroid/net/metrics/NetworkEvent;->netId:I

    invoke-static {v1}, Lcom/android/server/connectivity/IpConnectivityEventBuilder;->netIdOf(I)Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$NetworkId;

    move-result-object v1

    iput-object v1, v0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$NetworkEvent;->networkId:Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$NetworkId;

    iget-object v0, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpConnectivityEvent;->networkEvent:Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$NetworkEvent;

    iget v1, p1, Landroid/net/metrics/NetworkEvent;->eventType:I

    iput v1, v0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$NetworkEvent;->eventType:I

    iget-object v0, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpConnectivityEvent;->networkEvent:Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$NetworkEvent;

    iget-wide v2, p1, Landroid/net/metrics/NetworkEvent;->durationMs:J

    long-to-int v1, v2

    iput v1, v0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$NetworkEvent;->latencyMs:I

    return-void
.end method

.method private static setRaEvent(Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpConnectivityEvent;Landroid/net/metrics/RaEvent;)V
    .locals 4

    new-instance v0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$RaEvent;

    invoke-direct {v0}, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$RaEvent;-><init>()V

    iput-object v0, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpConnectivityEvent;->raEvent:Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$RaEvent;

    iget-object v0, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpConnectivityEvent;->raEvent:Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$RaEvent;

    iget-wide v2, p1, Landroid/net/metrics/RaEvent;->routerLifetime:J

    iput-wide v2, v0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$RaEvent;->routerLifetime:J

    iget-object v0, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpConnectivityEvent;->raEvent:Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$RaEvent;

    iget-wide v2, p1, Landroid/net/metrics/RaEvent;->prefixValidLifetime:J

    iput-wide v2, v0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$RaEvent;->prefixValidLifetime:J

    iget-object v0, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpConnectivityEvent;->raEvent:Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$RaEvent;

    iget-wide v2, p1, Landroid/net/metrics/RaEvent;->prefixPreferredLifetime:J

    iput-wide v2, v0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$RaEvent;->prefixPreferredLifetime:J

    iget-object v0, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpConnectivityEvent;->raEvent:Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$RaEvent;

    iget-wide v2, p1, Landroid/net/metrics/RaEvent;->routeInfoLifetime:J

    iput-wide v2, v0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$RaEvent;->routeInfoLifetime:J

    iget-object v0, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpConnectivityEvent;->raEvent:Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$RaEvent;

    iget-wide v2, p1, Landroid/net/metrics/RaEvent;->rdnssLifetime:J

    iput-wide v2, v0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$RaEvent;->rdnssLifetime:J

    iget-object v0, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpConnectivityEvent;->raEvent:Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$RaEvent;

    iget-wide v2, p1, Landroid/net/metrics/RaEvent;->dnsslLifetime:J

    iput-wide v2, v0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$RaEvent;->dnsslLifetime:J

    return-void
.end method

.method private static setValidationProbeEvent(Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpConnectivityEvent;Landroid/net/metrics/ValidationProbeEvent;)V
    .locals 4

    new-instance v0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$ValidationProbeEvent;

    invoke-direct {v0}, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$ValidationProbeEvent;-><init>()V

    iput-object v0, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpConnectivityEvent;->validationProbeEvent:Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$ValidationProbeEvent;

    iget-object v0, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpConnectivityEvent;->validationProbeEvent:Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$ValidationProbeEvent;

    iget v1, p1, Landroid/net/metrics/ValidationProbeEvent;->netId:I

    invoke-static {v1}, Lcom/android/server/connectivity/IpConnectivityEventBuilder;->netIdOf(I)Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$NetworkId;

    move-result-object v1

    iput-object v1, v0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$ValidationProbeEvent;->networkId:Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$NetworkId;

    iget-object v0, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpConnectivityEvent;->validationProbeEvent:Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$ValidationProbeEvent;

    iget-wide v2, p1, Landroid/net/metrics/ValidationProbeEvent;->durationMs:J

    long-to-int v1, v2

    iput v1, v0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$ValidationProbeEvent;->latencyMs:I

    iget-object v0, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpConnectivityEvent;->validationProbeEvent:Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$ValidationProbeEvent;

    iget v1, p1, Landroid/net/metrics/ValidationProbeEvent;->probeType:I

    iput v1, v0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$ValidationProbeEvent;->probeType:I

    iget-object v0, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpConnectivityEvent;->validationProbeEvent:Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$ValidationProbeEvent;

    iget v1, p1, Landroid/net/metrics/ValidationProbeEvent;->returnCode:I

    iput v1, v0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$ValidationProbeEvent;->probeResult:I

    return-void
.end method

.method public static toProto(Landroid/net/ConnectivityMetricsEvent;)Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpConnectivityEvent;
    .locals 4

    new-instance v0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpConnectivityEvent;

    invoke-direct {v0}, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpConnectivityEvent;-><init>()V

    iget-object v1, p0, Landroid/net/ConnectivityMetricsEvent;->data:Landroid/os/Parcelable;

    invoke-static {v0, v1}, Lcom/android/server/connectivity/IpConnectivityEventBuilder;->setEvent(Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpConnectivityEvent;Landroid/os/Parcelable;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    return-object v1

    :cond_0
    iget-wide v2, p0, Landroid/net/ConnectivityMetricsEvent;->timestamp:J

    iput-wide v2, v0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpConnectivityEvent;->timeMs:J

    return-object v0
.end method

.method public static toProto(Ljava/util/List;)[Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpConnectivityEvent;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/net/ConnectivityMetricsEvent;",
            ">;)[",
            "Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpConnectivityEvent;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v4

    invoke-direct {v0, v4}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityMetricsEvent;

    invoke-static {v1}, Lcom/android/server/connectivity/IpConnectivityEventBuilder;->toProto(Landroid/net/ConnectivityMetricsEvent;)Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpConnectivityEvent;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    new-array v4, v4, [Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpConnectivityEvent;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpConnectivityEvent;

    return-object v4
.end method
