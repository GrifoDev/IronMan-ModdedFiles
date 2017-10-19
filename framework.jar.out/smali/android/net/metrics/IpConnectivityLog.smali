.class public Landroid/net/metrics/IpConnectivityLog;
.super Ljava/lang/Object;
.source "IpConnectivityLog.java"


# static fields
.field private static final DBG:Z = false

.field public static final SERVICE_NAME:Ljava/lang/String; = "connmetrics"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mService:Landroid/net/IIpConnectivityMetrics;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Landroid/net/metrics/IpConnectivityLog;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/net/metrics/IpConnectivityLog;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/net/IIpConnectivityMetrics;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/net/metrics/IpConnectivityLog;->mService:Landroid/net/IIpConnectivityMetrics;

    return-void
.end method

.method private checkLoggerService()Z
    .locals 3

    const/4 v2, 0x1

    iget-object v1, p0, Landroid/net/metrics/IpConnectivityLog;->mService:Landroid/net/IIpConnectivityMetrics;

    if-eqz v1, :cond_0

    return v2

    :cond_0
    const-string/jumbo v1, "connmetrics"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/net/IIpConnectivityMetrics$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/IIpConnectivityMetrics;

    move-result-object v0

    if-nez v0, :cond_1

    const/4 v1, 0x0

    return v1

    :cond_1
    iput-object v0, p0, Landroid/net/metrics/IpConnectivityLog;->mService:Landroid/net/IIpConnectivityMetrics;

    return v2
.end method


# virtual methods
.method public log(Landroid/os/Parcelable;)V
    .locals 2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1, p1}, Landroid/net/metrics/IpConnectivityLog;->log(JLandroid/os/Parcelable;)Z

    return-void
.end method

.method public log(JLandroid/os/Parcelable;)Z
    .locals 11

    const/4 v8, 0x0

    invoke-direct {p0}, Landroid/net/metrics/IpConnectivityLog;->checkLoggerService()Z

    move-result v1

    if-nez v1, :cond_0

    return v8

    :cond_0
    :try_start_0
    iget-object v9, p0, Landroid/net/metrics/IpConnectivityLog;->mService:Landroid/net/IIpConnectivityMetrics;

    new-instance v1, Landroid/net/ConnectivityMetricsEvent;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-wide v2, p1

    move-object v6, p3

    invoke-direct/range {v1 .. v6}, Landroid/net/ConnectivityMetricsEvent;-><init>(JIILandroid/os/Parcelable;)V

    invoke-interface {v9, v1}, Landroid/net/IIpConnectivityMetrics;->logEvent(Landroid/net/ConnectivityMetricsEvent;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v7

    if-ltz v7, :cond_1

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    move v1, v8

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Landroid/net/metrics/IpConnectivityLog;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Error logging event"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v8
.end method
