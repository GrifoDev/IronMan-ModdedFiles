.class Landroid/net/util/AvoidBadWifiTracker$1;
.super Landroid/content/BroadcastReceiver;
.source "AvoidBadWifiTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/net/util/AvoidBadWifiTracker;-><init>(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/net/util/AvoidBadWifiTracker;


# direct methods
.method constructor <init>(Landroid/net/util/AvoidBadWifiTracker;)V
    .locals 0

    iput-object p1, p0, Landroid/net/util/AvoidBadWifiTracker$1;->this$0:Landroid/net/util/AvoidBadWifiTracker;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    iget-object v0, p0, Landroid/net/util/AvoidBadWifiTracker$1;->this$0:Landroid/net/util/AvoidBadWifiTracker;

    invoke-virtual {v0}, Landroid/net/util/AvoidBadWifiTracker;->reevaluate()V

    return-void
.end method
