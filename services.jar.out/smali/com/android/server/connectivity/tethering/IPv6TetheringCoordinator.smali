.class public Lcom/android/server/connectivity/tethering/IPv6TetheringCoordinator;
.super Ljava/lang/Object;
.source "IPv6TetheringCoordinator.java"


# static fields
.field private static final DBG:Z

.field private static final TAG:Ljava/lang/String;

.field private static final VDBG:Z


# instance fields
.field private final mActiveDownstreams:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;",
            ">;"
        }
    .end annotation
.end field

.field private final mNotifyList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;",
            ">;"
        }
    .end annotation
.end field

.field private mUpstreamNetworkState:Landroid/net/NetworkState;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/android/server/connectivity/tethering/IPv6TetheringCoordinator;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/connectivity/tethering/IPv6TetheringCoordinator;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/connectivity/tethering/IPv6TetheringCoordinator;->mNotifyList:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/android/server/connectivity/tethering/IPv6TetheringCoordinator;->mActiveDownstreams:Ljava/util/LinkedList;

    return-void
.end method

.method private static canTetherIPv6(Landroid/net/NetworkState;)Z
    .locals 9

    const/4 v1, 0x0

    if-eqz p0, :cond_4

    iget-object v7, p0, Landroid/net/NetworkState;->network:Landroid/net/Network;

    if-eqz v7, :cond_4

    iget-object v7, p0, Landroid/net/NetworkState;->linkProperties:Landroid/net/LinkProperties;

    if-eqz v7, :cond_4

    iget-object v7, p0, Landroid/net/NetworkState;->networkCapabilities:Landroid/net/NetworkCapabilities;

    if-eqz v7, :cond_4

    iget-object v7, p0, Landroid/net/NetworkState;->linkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v7}, Landroid/net/LinkProperties;->isProvisioned()Z

    move-result v7

    if-eqz v7, :cond_4

    iget-object v7, p0, Landroid/net/NetworkState;->linkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v7}, Landroid/net/LinkProperties;->hasIPv6DefaultRoute()Z

    move-result v7

    if-eqz v7, :cond_4

    iget-object v7, p0, Landroid/net/NetworkState;->linkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v7}, Landroid/net/LinkProperties;->hasGlobalIPv6Address()Z

    move-result v7

    if-eqz v7, :cond_4

    iget-object v7, p0, Landroid/net/NetworkState;->networkCapabilities:Landroid/net/NetworkCapabilities;

    invoke-virtual {v7, v1}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v0

    :goto_0
    const/4 v5, 0x0

    const/4 v6, 0x0

    if-eqz v0, :cond_2

    iget-object v7, p0, Landroid/net/NetworkState;->linkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v7}, Landroid/net/LinkProperties;->getAllRoutes()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/RouteInfo;

    invoke-virtual {v2}, Landroid/net/RouteInfo;->isIPv4Default()Z

    move-result v7

    if-eqz v7, :cond_5

    move-object v5, v2

    :cond_1
    :goto_1
    if-eqz v5, :cond_0

    if-eqz v6, :cond_0

    :cond_2
    if-eqz v5, :cond_6

    if-eqz v6, :cond_6

    invoke-virtual {v5}, Landroid/net/RouteInfo;->getInterface()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_6

    invoke-virtual {v5}, Landroid/net/RouteInfo;->getInterface()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6}, Landroid/net/RouteInfo;->getInterface()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    :goto_2
    if-eqz v0, :cond_3

    move v1, v4

    :cond_3
    return v1

    :cond_4
    move v0, v1

    goto :goto_0

    :cond_5
    invoke-virtual {v2}, Landroid/net/RouteInfo;->isIPv6Default()Z

    move-result v7

    if-eqz v7, :cond_1

    move-object v6, v2

    goto :goto_1

    :cond_6
    const/4 v4, 0x0

    goto :goto_2
.end method

.method private static getIPv6OnlyLinkProperties(Landroid/net/LinkProperties;)Landroid/net/LinkProperties;
    .locals 10

    const/16 v9, 0x40

    new-instance v7, Landroid/net/LinkProperties;

    invoke-direct {v7}, Landroid/net/LinkProperties;-><init>()V

    if-nez p0, :cond_0

    return-object v7

    :cond_0
    invoke-virtual {p0}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/net/LinkProperties;->setInterfaceName(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/net/LinkProperties;->getMtu()I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/net/LinkProperties;->setMtu(I)V

    invoke-virtual {p0}, Landroid/net/LinkProperties;->getLinkAddresses()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/LinkAddress;

    invoke-virtual {v3}, Landroid/net/LinkAddress;->isGlobalPreferred()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-virtual {v3}, Landroid/net/LinkAddress;->getPrefixLength()I

    move-result v8

    if-ne v8, v9, :cond_1

    invoke-virtual {v7, v3}, Landroid/net/LinkProperties;->addLinkAddress(Landroid/net/LinkAddress;)Z

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Landroid/net/LinkProperties;->getRoutes()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_3
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/RouteInfo;

    invoke-virtual {v5}, Landroid/net/RouteInfo;->getDestination()Landroid/net/IpPrefix;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/IpPrefix;->getAddress()Ljava/net/InetAddress;

    move-result-object v8

    instance-of v8, v8, Ljava/net/Inet6Address;

    if-eqz v8, :cond_3

    invoke-virtual {v0}, Landroid/net/IpPrefix;->getPrefixLength()I

    move-result v8

    if-gt v8, v9, :cond_3

    invoke-virtual {v7, v5}, Landroid/net/LinkProperties;->addRoute(Landroid/net/RouteInfo;)Z

    goto :goto_1

    :cond_4
    invoke-virtual {p0}, Landroid/net/LinkProperties;->getDnsServers()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_5
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/net/InetAddress;

    invoke-static {v1}, Lcom/android/server/connectivity/tethering/IPv6TetheringCoordinator;->isIPv6GlobalAddress(Ljava/net/InetAddress;)Z

    move-result v8

    if-eqz v8, :cond_5

    invoke-virtual {v7, v1}, Landroid/net/LinkProperties;->addDnsServer(Ljava/net/InetAddress;)Z

    goto :goto_2

    :cond_6
    invoke-virtual {p0}, Landroid/net/LinkProperties;->getDomains()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/net/LinkProperties;->setDomains(Ljava/lang/String;)V

    return-object v7
.end method

.method private getInterfaceIPv6LinkProperties(Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;)Landroid/net/LinkProperties;
    .locals 5

    const/4 v4, 0x0

    iget-object v2, p0, Lcom/android/server/connectivity/tethering/IPv6TetheringCoordinator;->mUpstreamNetworkState:Landroid/net/NetworkState;

    if-nez v2, :cond_0

    return-object v4

    :cond_0
    invoke-virtual {p1}, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->interfaceType()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    return-object v4

    :cond_1
    iget-object v2, p0, Lcom/android/server/connectivity/tethering/IPv6TetheringCoordinator;->mActiveDownstreams:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;

    if-eqz v0, :cond_2

    if-ne v0, p1, :cond_2

    iget-object v2, p0, Lcom/android/server/connectivity/tethering/IPv6TetheringCoordinator;->mUpstreamNetworkState:Landroid/net/NetworkState;

    iget-object v2, v2, Landroid/net/NetworkState;->linkProperties:Landroid/net/LinkProperties;

    invoke-static {v2}, Lcom/android/server/connectivity/tethering/IPv6TetheringCoordinator;->getIPv6OnlyLinkProperties(Landroid/net/LinkProperties;)Landroid/net/LinkProperties;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/LinkProperties;->hasIPv6DefaultRoute()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v1}, Landroid/net/LinkProperties;->hasGlobalIPv6Address()Z

    move-result v2

    if-eqz v2, :cond_2

    return-object v1

    :cond_2
    return-object v4
.end method

.method private static isIPv6GlobalAddress(Ljava/net/InetAddress;)Z
    .locals 2

    const/4 v0, 0x0

    instance-of v1, p0, Ljava/net/Inet6Address;

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Ljava/net/InetAddress;->isAnyLocalAddress()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0}, Ljava/net/InetAddress;->isLoopbackAddress()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Ljava/net/InetAddress;->isLinkLocalAddress()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Ljava/net/InetAddress;->isSiteLocalAddress()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Ljava/net/InetAddress;->isMulticastAddress()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method private setUpstreamNetworkState(Landroid/net/NetworkState;)V
    .locals 7

    const/4 v1, 0x0

    if-nez p1, :cond_0

    iput-object v1, p0, Lcom/android/server/connectivity/tethering/IPv6TetheringCoordinator;->mUpstreamNetworkState:Landroid/net/NetworkState;

    :goto_0
    return-void

    :cond_0
    new-instance v0, Landroid/net/NetworkState;

    new-instance v2, Landroid/net/LinkProperties;

    iget-object v3, p1, Landroid/net/NetworkState;->linkProperties:Landroid/net/LinkProperties;

    invoke-direct {v2, v3}, Landroid/net/LinkProperties;-><init>(Landroid/net/LinkProperties;)V

    new-instance v3, Landroid/net/NetworkCapabilities;

    iget-object v4, p1, Landroid/net/NetworkState;->networkCapabilities:Landroid/net/NetworkCapabilities;

    invoke-direct {v3, v4}, Landroid/net/NetworkCapabilities;-><init>(Landroid/net/NetworkCapabilities;)V

    new-instance v4, Landroid/net/Network;

    iget-object v5, p1, Landroid/net/NetworkState;->network:Landroid/net/Network;

    invoke-direct {v4, v5}, Landroid/net/Network;-><init>(Landroid/net/Network;)V

    move-object v5, v1

    move-object v6, v1

    invoke-direct/range {v0 .. v6}, Landroid/net/NetworkState;-><init>(Landroid/net/NetworkInfo;Landroid/net/LinkProperties;Landroid/net/NetworkCapabilities;Landroid/net/Network;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/connectivity/tethering/IPv6TetheringCoordinator;->mUpstreamNetworkState:Landroid/net/NetworkState;

    goto :goto_0
.end method

.method private static stopIPv6TetheringOn(Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;)V
    .locals 3

    const/4 v2, 0x0

    const v0, 0x50071

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v2, v2, v1}, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->sendMessage(IIILjava/lang/Object;)V

    return-void
.end method

.method private stopIPv6TetheringOnAllInterfaces()V
    .locals 3

    iget-object v2, p0, Lcom/android/server/connectivity/tethering/IPv6TetheringCoordinator;->mNotifyList:Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;

    invoke-static {v0}, Lcom/android/server/connectivity/tethering/IPv6TetheringCoordinator;->stopIPv6TetheringOn(Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private static toDebugString(Landroid/net/NetworkState;)Ljava/lang/String;
    .locals 4

    if-nez p0, :cond_0

    const-string/jumbo v0, "NetworkState{null}"

    return-object v0

    :cond_0
    const-string/jumbo v0, "NetworkState{%s, %s, %s}"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Landroid/net/NetworkState;->network:Landroid/net/Network;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-object v2, p0, Landroid/net/NetworkState;->networkCapabilities:Landroid/net/NetworkCapabilities;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    iget-object v2, p0, Landroid/net/NetworkState;->linkProperties:Landroid/net/LinkProperties;

    const/4 v3, 0x2

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private updateIPv6TetheringInterfaces()V
    .locals 5

    const/4 v4, 0x0

    iget-object v3, p0, Lcom/android/server/connectivity/tethering/IPv6TetheringCoordinator;->mNotifyList:Ljava/util/ArrayList;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;

    invoke-direct {p0, v1}, Lcom/android/server/connectivity/tethering/IPv6TetheringCoordinator;->getInterfaceIPv6LinkProperties(Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;)Landroid/net/LinkProperties;

    move-result-object v0

    const v3, 0x50071

    invoke-virtual {v1, v3, v4, v4, v0}, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->sendMessage(IIILjava/lang/Object;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public addActiveDownstream(Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/connectivity/tethering/IPv6TetheringCoordinator;->mActiveDownstreams:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/server/connectivity/tethering/IPv6TetheringCoordinator;->mActiveDownstreams:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->offer(Ljava/lang/Object;)Z

    invoke-direct {p0}, Lcom/android/server/connectivity/tethering/IPv6TetheringCoordinator;->updateIPv6TetheringInterfaces()V

    :cond_0
    return-void
.end method

.method public removeActiveDownstream(Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;)V
    .locals 1

    invoke-static {p1}, Lcom/android/server/connectivity/tethering/IPv6TetheringCoordinator;->stopIPv6TetheringOn(Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;)V

    iget-object v0, p0, Lcom/android/server/connectivity/tethering/IPv6TetheringCoordinator;->mActiveDownstreams:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/server/connectivity/tethering/IPv6TetheringCoordinator;->updateIPv6TetheringInterfaces()V

    :cond_0
    return-void
.end method

.method public updateUpstreamNetworkState(Landroid/net/NetworkState;)V
    .locals 2

    const/4 v1, 0x0

    invoke-static {p1}, Lcom/android/server/connectivity/tethering/IPv6TetheringCoordinator;->canTetherIPv6(Landroid/net/NetworkState;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/server/connectivity/tethering/IPv6TetheringCoordinator;->stopIPv6TetheringOnAllInterfaces()V

    invoke-direct {p0, v1}, Lcom/android/server/connectivity/tethering/IPv6TetheringCoordinator;->setUpstreamNetworkState(Landroid/net/NetworkState;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/connectivity/tethering/IPv6TetheringCoordinator;->mUpstreamNetworkState:Landroid/net/NetworkState;

    if-eqz v0, :cond_1

    iget-object v0, p1, Landroid/net/NetworkState;->network:Landroid/net/Network;

    iget-object v1, p0, Lcom/android/server/connectivity/tethering/IPv6TetheringCoordinator;->mUpstreamNetworkState:Landroid/net/NetworkState;

    iget-object v1, v1, Landroid/net/NetworkState;->network:Landroid/net/Network;

    invoke-virtual {v0, v1}, Landroid/net/Network;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    :goto_0
    invoke-direct {p0, p1}, Lcom/android/server/connectivity/tethering/IPv6TetheringCoordinator;->setUpstreamNetworkState(Landroid/net/NetworkState;)V

    invoke-direct {p0}, Lcom/android/server/connectivity/tethering/IPv6TetheringCoordinator;->updateIPv6TetheringInterfaces()V

    return-void

    :cond_2
    invoke-direct {p0}, Lcom/android/server/connectivity/tethering/IPv6TetheringCoordinator;->stopIPv6TetheringOnAllInterfaces()V

    goto :goto_0
.end method
