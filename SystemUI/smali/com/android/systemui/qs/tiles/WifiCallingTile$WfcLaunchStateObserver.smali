.class Lcom/android/systemui/qs/tiles/WifiCallingTile$WfcLaunchStateObserver;
.super Landroid/database/ContentObserver;
.source "WifiCallingTile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/tiles/WifiCallingTile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WfcLaunchStateObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/tiles/WifiCallingTile;


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/tiles/WifiCallingTile;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/WifiCallingTile$WfcLaunchStateObserver;->this$0:Lcom/android/systemui/qs/tiles/WifiCallingTile;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/qs/tiles/WifiCallingTile$WfcLaunchStateObserver;->onChange(ZLandroid/net/Uri;)V

    return-void
.end method

.method public onChange(ZLandroid/net/Uri;)V
    .locals 4

    const/4 v3, 0x1

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/WifiCallingTile$WfcLaunchStateObserver;->this$0:Lcom/android/systemui/qs/tiles/WifiCallingTile;

    invoke-static {v1}, Lcom/android/systemui/qs/tiles/WifiCallingTile;->-get3(Lcom/android/systemui/qs/tiles/WifiCallingTile;)Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, "launch_state"

    invoke-static {v1, v2, v3}, Lcom/android/systemui/statusbar/policy/WifiCallingDBController;->getInt(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v3, :cond_0

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/WifiCallingTile$WfcLaunchStateObserver;->this$0:Lcom/android/systemui/qs/tiles/WifiCallingTile;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/android/systemui/qs/tiles/WifiCallingTile;->-set0(Lcom/android/systemui/qs/tiles/WifiCallingTile;Z)Z

    :goto_0
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/WifiCallingTile$WfcLaunchStateObserver;->this$0:Lcom/android/systemui/qs/tiles/WifiCallingTile;

    invoke-virtual {v1}, Lcom/android/systemui/qs/tiles/WifiCallingTile;->refreshState()V

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/WifiCallingTile$WfcLaunchStateObserver;->this$0:Lcom/android/systemui/qs/tiles/WifiCallingTile;

    invoke-static {v1}, Lcom/android/systemui/qs/tiles/WifiCallingTile;->-get0(Lcom/android/systemui/qs/tiles/WifiCallingTile;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onChange done, mActProcessATT "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/qs/tiles/WifiCallingTile$WfcLaunchStateObserver;->this$0:Lcom/android/systemui/qs/tiles/WifiCallingTile;

    invoke-static {v3}, Lcom/android/systemui/qs/tiles/WifiCallingTile;->-get1(Lcom/android/systemui/qs/tiles/WifiCallingTile;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/WifiCallingTile$WfcLaunchStateObserver;->this$0:Lcom/android/systemui/qs/tiles/WifiCallingTile;

    invoke-static {v1, v3}, Lcom/android/systemui/qs/tiles/WifiCallingTile;->-set0(Lcom/android/systemui/qs/tiles/WifiCallingTile;Z)Z

    goto :goto_0
.end method
