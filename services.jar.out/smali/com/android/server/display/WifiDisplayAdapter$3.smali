.class Lcom/android/server/display/WifiDisplayAdapter$3;
.super Landroid/content/BroadcastReceiver;
.source "WifiDisplayAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/WifiDisplayAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/display/WifiDisplayAdapter;


# direct methods
.method constructor <init>(Lcom/android/server/display/WifiDisplayAdapter;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/display/WifiDisplayAdapter$3;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 9

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    const-string/jumbo v3, "WifiDisplayAdapter"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "    onReceive : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "android.server.display.wfd.DISCONNECT"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/server/display/WifiDisplayAdapter$3;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-virtual {v3}, Lcom/android/server/display/WifiDisplayAdapter;->getSyncRoot()Lcom/android/server/display/DisplayManagerService$SyncRoot;

    move-result-object v4

    monitor-enter v4

    :try_start_0
    iget-object v3, p0, Lcom/android/server/display/WifiDisplayAdapter$3;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-static {v3}, Lcom/android/server/display/WifiDisplayAdapter;->-wrap9(Lcom/android/server/display/WifiDisplayAdapter;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    :goto_0
    monitor-exit v4

    :cond_1
    :goto_1
    return-void

    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3

    :cond_2
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "com.samsung.wfd.notification"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    iget-object v3, p0, Lcom/android/server/display/WifiDisplayAdapter$3;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-virtual {v3}, Lcom/android/server/display/WifiDisplayAdapter;->getSyncRoot()Lcom/android/server/display/DisplayManagerService$SyncRoot;

    move-result-object v4

    monitor-enter v4

    :try_start_1
    iget-object v3, p0, Lcom/android/server/display/WifiDisplayAdapter$3;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-static {v3}, Lcom/android/server/display/WifiDisplayAdapter;->-get7(Lcom/android/server/display/WifiDisplayAdapter;)I

    move-result v3

    if-eq v3, v8, :cond_3

    iget-object v3, p0, Lcom/android/server/display/WifiDisplayAdapter$3;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-static {v3}, Lcom/android/server/display/WifiDisplayAdapter;->-get5(Lcom/android/server/display/WifiDisplayAdapter;)I

    move-result v3

    if-ne v3, v7, :cond_0

    :cond_3
    iget-object v3, p0, Lcom/android/server/display/WifiDisplayAdapter$3;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-static {v3}, Lcom/android/server/display/WifiDisplayAdapter;->-get5(Lcom/android/server/display/WifiDisplayAdapter;)I

    move-result v3

    if-ne v3, v7, :cond_4

    iget-object v3, p0, Lcom/android/server/display/WifiDisplayAdapter$3;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-static {v3}, Lcom/android/server/display/WifiDisplayAdapter;->-wrap24(Lcom/android/server/display/WifiDisplayAdapter;)V

    :cond_4
    iget-object v3, p0, Lcom/android/server/display/WifiDisplayAdapter$3;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-static {v3}, Lcom/android/server/display/WifiDisplayAdapter;->-get7(Lcom/android/server/display/WifiDisplayAdapter;)I

    move-result v3

    if-ne v3, v8, :cond_5

    iget-object v3, p0, Lcom/android/server/display/WifiDisplayAdapter$3;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-virtual {v3}, Lcom/android/server/display/WifiDisplayAdapter;->requestDisconnectLocked()V

    :cond_5
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v5, "wifi_display_on"

    const/4 v6, 0x0

    invoke-static {v3, v5, v6}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v3, p0, Lcom/android/server/display/WifiDisplayAdapter$3;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    const-string/jumbo v5, "DCON"

    const-string/jumbo v6, "NOTICARD_DIS"

    invoke-static {v3, v5, v6}, Lcom/android/server/display/WifiDisplayAdapter;->-wrap13(Lcom/android/server/display/WifiDisplayAdapter;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v3

    monitor-exit v4

    throw v3

    :cond_6
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "com.sec.android.screensharing.LOGGING"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    iget-object v3, p0, Lcom/android/server/display/WifiDisplayAdapter$3;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    const-string/jumbo v4, "feature"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "extra"

    invoke-virtual {p2, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/android/server/display/WifiDisplayAdapter;->-wrap13(Lcom/android/server/display/WifiDisplayAdapter;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_7
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "com.samsung.intent.action.SEC_PRESENTATION_START"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    :try_start_2
    iget-object v3, p0, Lcom/android/server/display/WifiDisplayAdapter$3;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    const-string/jumbo v4, "ownerPackageName"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/server/display/WifiDisplayAdapter;->-wrap34(Lcom/android/server/display/WifiDisplayAdapter;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_1

    :catch_0
    move-exception v1

    const-string/jumbo v3, "WifiDisplayAdapter"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "SEM_PRESENTATION_START Error : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :cond_8
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "com.samsung.intent.action.WIFI_DISPLAY_SINK_STATE"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    iget-object v3, p0, Lcom/android/server/display/WifiDisplayAdapter$3;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    const-string/jumbo v4, "state"

    invoke-virtual {p2, v4, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    invoke-static {v3, v4}, Lcom/android/server/display/WifiDisplayAdapter;->-set4(Lcom/android/server/display/WifiDisplayAdapter;I)I

    iget-object v3, p0, Lcom/android/server/display/WifiDisplayAdapter$3;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-virtual {v3}, Lcom/android/server/display/WifiDisplayAdapter;->isWfdConnected()Z

    goto/16 :goto_1

    :cond_9
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "android.intent.action.HDMI_PLUGGED"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    const-string/jumbo v3, "state"

    invoke-virtual {p2, v3, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    iget-object v3, p0, Lcom/android/server/display/WifiDisplayAdapter$3;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-static {v3}, Lcom/android/server/display/WifiDisplayAdapter;->-get12(Lcom/android/server/display/WifiDisplayAdapter;)Lcom/android/server/display/WifiDisplayController;

    move-result-object v3

    if-eqz v3, :cond_a

    iget-object v3, p0, Lcom/android/server/display/WifiDisplayAdapter$3;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-static {v3}, Lcom/android/server/display/WifiDisplayAdapter;->-get12(Lcom/android/server/display/WifiDisplayAdapter;)Lcom/android/server/display/WifiDisplayController;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/android/server/display/WifiDisplayController;->setHdmiConnectionState(Z)V

    :cond_a
    iget-object v3, p0, Lcom/android/server/display/WifiDisplayAdapter$3;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-static {v3}, Lcom/android/server/display/WifiDisplayAdapter;->-get15(Lcom/android/server/display/WifiDisplayAdapter;)Lcom/android/server/display/IpRemoteDisplayController;

    move-result-object v3

    if-eqz v3, :cond_b

    iget-object v3, p0, Lcom/android/server/display/WifiDisplayAdapter$3;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-static {v3}, Lcom/android/server/display/WifiDisplayAdapter;->-get15(Lcom/android/server/display/WifiDisplayAdapter;)Lcom/android/server/display/IpRemoteDisplayController;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/android/server/display/IpRemoteDisplayController;->setHdmiConnectionState(Z)V

    :cond_b
    const-string/jumbo v3, "WifiDisplayAdapter"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Received ACTION_HDMI_PLUGGED : state = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :cond_c
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "android.intent.action.USER_SWITCHED"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string/jumbo v3, "android.intent.extra.user_handle"

    invoke-virtual {p2, v3, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    const-string/jumbo v3, "WifiDisplayAdapter"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "User changed : currentUserId = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_1

    iget-object v3, p0, Lcom/android/server/display/WifiDisplayAdapter$3;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-static {v3, v0}, Lcom/android/server/display/WifiDisplayAdapter;->-wrap22(Lcom/android/server/display/WifiDisplayAdapter;I)V

    iget-object v3, p0, Lcom/android/server/display/WifiDisplayAdapter$3;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-static {v3, v0}, Lcom/android/server/display/WifiDisplayAdapter;->-wrap23(Lcom/android/server/display/WifiDisplayAdapter;I)V

    goto/16 :goto_1
.end method
