.class Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$AuthenticationRequestReturnStatus;
.super Ljava/lang/Object;
.source "KnoxVpnProxyServer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AuthenticationRequestReturnStatus"
.end annotation


# instance fields
.field public returnValue:I

.field public serverSocket:Ljava/net/Socket;


# direct methods
.method public constructor <init>(Ljava/net/Socket;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$AuthenticationRequestReturnStatus;->serverSocket:Ljava/net/Socket;

    iput p2, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$AuthenticationRequestReturnStatus;->returnValue:I

    return-void
.end method
