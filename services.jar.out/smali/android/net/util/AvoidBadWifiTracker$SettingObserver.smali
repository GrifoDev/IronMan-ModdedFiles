.class Landroid/net/util/AvoidBadWifiTracker$SettingObserver;
.super Landroid/database/ContentObserver;
.source "AvoidBadWifiTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/util/AvoidBadWifiTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SettingObserver"
.end annotation


# instance fields
.field private final mUri:Landroid/net/Uri;

.field final synthetic this$0:Landroid/net/util/AvoidBadWifiTracker;


# direct methods
.method public constructor <init>(Landroid/net/util/AvoidBadWifiTracker;)V
    .locals 3

    iput-object p1, p0, Landroid/net/util/AvoidBadWifiTracker$SettingObserver;->this$0:Landroid/net/util/AvoidBadWifiTracker;

    const/4 v1, 0x0

    invoke-direct {p0, v1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    const-string/jumbo v1, "network_avoid_bad_wifi"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iput-object v1, p0, Landroid/net/util/AvoidBadWifiTracker$SettingObserver;->mUri:Landroid/net/Uri;

    invoke-static {p1}, Landroid/net/util/AvoidBadWifiTracker;->-get1(Landroid/net/util/AvoidBadWifiTracker;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Landroid/net/util/AvoidBadWifiTracker$SettingObserver;->mUri:Landroid/net/Uri;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 2

    invoke-static {}, Landroid/net/util/AvoidBadWifiTracker;->-get0()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "Should never be reached."

    invoke-static {v0, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onChange(ZLandroid/net/Uri;)V
    .locals 1

    iget-object v0, p0, Landroid/net/util/AvoidBadWifiTracker$SettingObserver;->mUri:Landroid/net/Uri;

    invoke-virtual {v0, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Landroid/net/util/AvoidBadWifiTracker$SettingObserver;->this$0:Landroid/net/util/AvoidBadWifiTracker;

    invoke-virtual {v0}, Landroid/net/util/AvoidBadWifiTracker;->reevaluate()V

    return-void
.end method
