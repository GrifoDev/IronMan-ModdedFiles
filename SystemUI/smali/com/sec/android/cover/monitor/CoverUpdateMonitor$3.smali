.class Lcom/sec/android/cover/monitor/CoverUpdateMonitor$3;
.super Landroid/content/BroadcastReceiver;
.source "CoverUpdateMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/cover/monitor/CoverUpdateMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/cover/monitor/CoverUpdateMonitor;


# direct methods
.method constructor <init>(Lcom/sec/android/cover/monitor/CoverUpdateMonitor;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor$3;->this$0:Lcom/sec/android/cover/monitor/CoverUpdateMonitor;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 13

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v10, "CoverUpdateMonitor"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "received broadcast "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v10, "android.intent.action.DATE_CHANGED"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_0

    const-string/jumbo v10, "android.intent.action.TIME_SET"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    :cond_0
    iget-object v10, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor$3;->this$0:Lcom/sec/android/cover/monitor/CoverUpdateMonitor;

    invoke-static {v10}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->-get1(Lcom/sec/android/cover/monitor/CoverUpdateMonitor;)Landroid/os/Handler;

    move-result-object v10

    const/16 v11, 0x12d

    invoke-virtual {v10, v11}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_1
    :goto_0
    return-void

    :cond_2
    const-string/jumbo v10, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    iget-object v10, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor$3;->this$0:Lcom/sec/android/cover/monitor/CoverUpdateMonitor;

    invoke-static {v10}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->-get1(Lcom/sec/android/cover/monitor/CoverUpdateMonitor;)Landroid/os/Handler;

    move-result-object v10

    new-instance v11, Lcom/sec/android/cover/monitor/CoverUpdateMonitor$BatteryStatus;

    invoke-direct {v11, p2}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor$BatteryStatus;-><init>(Landroid/content/Intent;)V

    const/16 v12, 0x12e

    invoke-virtual {v10, v12, v11}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    iget-object v10, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor$3;->this$0:Lcom/sec/android/cover/monitor/CoverUpdateMonitor;

    invoke-static {v10}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->-get1(Lcom/sec/android/cover/monitor/CoverUpdateMonitor;)Landroid/os/Handler;

    move-result-object v10

    invoke-virtual {v10, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    :cond_3
    const-string/jumbo v10, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    iget-object v10, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor$3;->this$0:Lcom/sec/android/cover/monitor/CoverUpdateMonitor;

    invoke-static {v10}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->-get1(Lcom/sec/android/cover/monitor/CoverUpdateMonitor;)Landroid/os/Handler;

    move-result-object v10

    const/16 v11, 0x130

    invoke-virtual {v10, v11}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    :cond_4
    const-string/jumbo v10, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_5

    iget-object v10, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor$3;->this$0:Lcom/sec/android/cover/monitor/CoverUpdateMonitor;

    invoke-static {v10}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->-get1(Lcom/sec/android/cover/monitor/CoverUpdateMonitor;)Landroid/os/Handler;

    move-result-object v10

    const/16 v11, 0x131

    invoke-virtual {v10, v11}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    :cond_5
    const-string/jumbo v10, "android.intent.action.BATTERY_LOW"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_6

    iget-object v10, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor$3;->this$0:Lcom/sec/android/cover/monitor/CoverUpdateMonitor;

    invoke-static {v10}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->-get1(Lcom/sec/android/cover/monitor/CoverUpdateMonitor;)Landroid/os/Handler;

    move-result-object v10

    const/16 v11, 0x132

    invoke-virtual {v10, v11}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    :cond_6
    const-string/jumbo v10, "android.intent.action.ACTION_POWER_CONNECTED"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_7

    const-string/jumbo v10, "android.intent.action.ACTION_POWER_DISCONNECTED"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_8

    :cond_7
    iget-object v10, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor$3;->this$0:Lcom/sec/android/cover/monitor/CoverUpdateMonitor;

    invoke-static {v10}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->-get1(Lcom/sec/android/cover/monitor/CoverUpdateMonitor;)Landroid/os/Handler;

    move-result-object v10

    const-string/jumbo v11, "android.intent.action.ACTION_POWER_CONNECTED"

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    const/16 v12, 0x133

    invoke-virtual {v10, v12, v11}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    iget-object v10, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor$3;->this$0:Lcom/sec/android/cover/monitor/CoverUpdateMonitor;

    invoke-static {v10}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->-get1(Lcom/sec/android/cover/monitor/CoverUpdateMonitor;)Landroid/os/Handler;

    move-result-object v10

    invoke-virtual {v10, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    :cond_8
    const-string/jumbo v10, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_9

    iget-object v10, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor$3;->this$0:Lcom/sec/android/cover/monitor/CoverUpdateMonitor;

    invoke-static {v10}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->-get1(Lcom/sec/android/cover/monitor/CoverUpdateMonitor;)Landroid/os/Handler;

    move-result-object v10

    const/16 v11, 0x134

    invoke-virtual {v10, v11}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    :cond_9
    const-string/jumbo v10, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_a

    iget-object v10, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor$3;->this$0:Lcom/sec/android/cover/monitor/CoverUpdateMonitor;

    invoke-static {v10}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->-get1(Lcom/sec/android/cover/monitor/CoverUpdateMonitor;)Landroid/os/Handler;

    move-result-object v10

    const/16 v11, 0x135

    invoke-virtual {v10, v11}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    :cond_a
    const-string/jumbo v10, "com.samsung.cover.REMOTEVIEWS_UPDATE"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_b

    iget-object v10, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor$3;->this$0:Lcom/sec/android/cover/monitor/CoverUpdateMonitor;

    invoke-static {v10}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->-get1(Lcom/sec/android/cover/monitor/CoverUpdateMonitor;)Landroid/os/Handler;

    move-result-object v10

    new-instance v11, Lcom/sec/android/cover/monitor/CoverUpdateMonitor$RemoteViewInfo;

    invoke-direct {v11, p2}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor$RemoteViewInfo;-><init>(Landroid/content/Intent;)V

    const/16 v12, 0x136

    invoke-virtual {v10, v12, v11}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    iget-object v10, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor$3;->this$0:Lcom/sec/android/cover/monitor/CoverUpdateMonitor;

    invoke-static {v10}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->-get1(Lcom/sec/android/cover/monitor/CoverUpdateMonitor;)Landroid/os/Handler;

    move-result-object v10

    invoke-virtual {v10, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    :cond_b
    const-string/jumbo v10, "android.settings.POWERSAVINGMODE_CHANGED"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_c

    const-string/jumbo v10, "android.settings.POWERSAVING_MODE_SWITCH_CHANGED"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_d

    :cond_c
    iget-object v10, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor$3;->this$0:Lcom/sec/android/cover/monitor/CoverUpdateMonitor;

    invoke-static {v10}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->-get1(Lcom/sec/android/cover/monitor/CoverUpdateMonitor;)Landroid/os/Handler;

    move-result-object v10

    const/16 v11, 0x138

    invoke-virtual {v10, v11}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    :cond_d
    const-string/jumbo v10, "com.samsung.pen.INSERT"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_e

    const-string/jumbo v10, "penInsert"

    const/4 v11, 0x1

    invoke-virtual {p2, v10, v11}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v7

    iget-object v10, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor$3;->this$0:Lcom/sec/android/cover/monitor/CoverUpdateMonitor;

    invoke-static {v10}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->-get1(Lcom/sec/android/cover/monitor/CoverUpdateMonitor;)Landroid/os/Handler;

    move-result-object v10

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    const/16 v12, 0x139

    invoke-virtual {v10, v12, v11}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    iget-object v10, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor$3;->this$0:Lcom/sec/android/cover/monitor/CoverUpdateMonitor;

    invoke-static {v10}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->-get1(Lcom/sec/android/cover/monitor/CoverUpdateMonitor;)Landroid/os/Handler;

    move-result-object v10

    invoke-virtual {v10, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    :cond_e
    const-string/jumbo v10, "com.sec.android.sviewcover.CHANGE_COVER_BACKGROUND"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_f

    iget-object v10, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor$3;->this$0:Lcom/sec/android/cover/monitor/CoverUpdateMonitor;

    invoke-static {v10}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->-get1(Lcom/sec/android/cover/monitor/CoverUpdateMonitor;)Landroid/os/Handler;

    move-result-object v10

    const/16 v11, 0x13a

    invoke-virtual {v10, v11}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    :cond_f
    const-string/jumbo v10, "com.bst.floatingmsg.quicktalkshow"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_10

    iget-object v10, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor$3;->this$0:Lcom/sec/android/cover/monitor/CoverUpdateMonitor;

    invoke-static {v10}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->-get1(Lcom/sec/android/cover/monitor/CoverUpdateMonitor;)Landroid/os/Handler;

    move-result-object v10

    const/16 v11, 0x13b

    invoke-virtual {v10, v11}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    :cond_10
    const-string/jumbo v10, "com.bst.floatingmsg.quicktalkhide"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_11

    iget-object v10, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor$3;->this$0:Lcom/sec/android/cover/monitor/CoverUpdateMonitor;

    invoke-static {v10}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->-get1(Lcom/sec/android/cover/monitor/CoverUpdateMonitor;)Landroid/os/Handler;

    move-result-object v10

    const/16 v11, 0x13c

    invoke-virtual {v10, v11}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    :cond_11
    const-string/jumbo v10, "android.media.VOLUME_CHANGED_ACTION"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_12

    const-string/jumbo v10, "android.media.EXTRA_VOLUME_STREAM_TYPE"

    const/4 v11, -0x1

    invoke-virtual {p2, v10, v11}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v8

    const-string/jumbo v10, "android.media.EXTRA_VOLUME_STREAM_VALUE"

    const/4 v11, -0x1

    invoke-virtual {p2, v10, v11}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v9

    iget-object v10, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor$3;->this$0:Lcom/sec/android/cover/monitor/CoverUpdateMonitor;

    invoke-static {v10}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->-get1(Lcom/sec/android/cover/monitor/CoverUpdateMonitor;)Landroid/os/Handler;

    move-result-object v10

    const/16 v11, 0x13d

    invoke-virtual {v10, v11}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    iput v8, v3, Landroid/os/Message;->arg1:I

    iput v9, v3, Landroid/os/Message;->arg2:I

    iget-object v10, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor$3;->this$0:Lcom/sec/android/cover/monitor/CoverUpdateMonitor;

    invoke-static {v10}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->-get1(Lcom/sec/android/cover/monitor/CoverUpdateMonitor;)Landroid/os/Handler;

    move-result-object v10

    invoke-virtual {v10, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    :cond_12
    const-string/jumbo v10, "android.intent.action.USER_SWITCHED"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_13

    const-string/jumbo v10, "android.intent.extra.user_handle"

    const/4 v11, 0x0

    invoke-virtual {p2, v10, v11}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    const-string/jumbo v10, "old_user_id"

    const/4 v11, 0x0

    invoke-virtual {p2, v10, v11}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    iget-object v10, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor$3;->this$0:Lcom/sec/android/cover/monitor/CoverUpdateMonitor;

    invoke-static {v10}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->-get1(Lcom/sec/android/cover/monitor/CoverUpdateMonitor;)Landroid/os/Handler;

    move-result-object v10

    const/16 v11, 0x13e

    invoke-virtual {v10, v11}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    iput v4, v3, Landroid/os/Message;->arg1:I

    iput v5, v3, Landroid/os/Message;->arg2:I

    iget-object v10, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor$3;->this$0:Lcom/sec/android/cover/monitor/CoverUpdateMonitor;

    invoke-static {v10}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->-get1(Lcom/sec/android/cover/monitor/CoverUpdateMonitor;)Landroid/os/Handler;

    move-result-object v10

    invoke-virtual {v10, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    :cond_13
    const-string/jumbo v10, "com.samsung.intent.action.EMERGENCY_STATE_CHANGED"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_14

    iget-object v10, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor$3;->this$0:Lcom/sec/android/cover/monitor/CoverUpdateMonitor;

    invoke-static {v10}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->-get1(Lcom/sec/android/cover/monitor/CoverUpdateMonitor;)Landroid/os/Handler;

    move-result-object v10

    const/16 v11, 0x140

    invoke-virtual {v10, v11}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    :cond_14
    const-string/jumbo v10, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_15

    invoke-virtual {p2}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v6

    iget-object v10, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor$3;->this$0:Lcom/sec/android/cover/monitor/CoverUpdateMonitor;

    invoke-static {v10}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->-get1(Lcom/sec/android/cover/monitor/CoverUpdateMonitor;)Landroid/os/Handler;

    move-result-object v10

    const/16 v11, 0x145

    invoke-virtual {v10, v11, v6}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    iget-object v10, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor$3;->this$0:Lcom/sec/android/cover/monitor/CoverUpdateMonitor;

    invoke-static {v10}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->-get1(Lcom/sec/android/cover/monitor/CoverUpdateMonitor;)Landroid/os/Handler;

    move-result-object v10

    invoke-virtual {v10, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    :cond_15
    const-string/jumbo v10, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_16

    invoke-virtual {p2}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v6

    iget-object v10, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor$3;->this$0:Lcom/sec/android/cover/monitor/CoverUpdateMonitor;

    invoke-static {v10}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->-get1(Lcom/sec/android/cover/monitor/CoverUpdateMonitor;)Landroid/os/Handler;

    move-result-object v10

    const/16 v11, 0x146

    invoke-virtual {v10, v11, v6}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    iget-object v10, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor$3;->this$0:Lcom/sec/android/cover/monitor/CoverUpdateMonitor;

    invoke-static {v10}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->-get1(Lcom/sec/android/cover/monitor/CoverUpdateMonitor;)Landroid/os/Handler;

    move-result-object v10

    invoke-virtual {v10, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    :cond_16
    const-string/jumbo v10, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_17

    invoke-virtual {p2}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v6

    iget-object v10, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor$3;->this$0:Lcom/sec/android/cover/monitor/CoverUpdateMonitor;

    invoke-static {v10}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->-get1(Lcom/sec/android/cover/monitor/CoverUpdateMonitor;)Landroid/os/Handler;

    move-result-object v10

    const/16 v11, 0x147

    invoke-virtual {v10, v11, v6}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    iget-object v10, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor$3;->this$0:Lcom/sec/android/cover/monitor/CoverUpdateMonitor;

    invoke-static {v10}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->-get1(Lcom/sec/android/cover/monitor/CoverUpdateMonitor;)Landroid/os/Handler;

    move-result-object v10

    invoke-virtual {v10, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    :cond_17
    const-string/jumbo v10, "FONT_THEME_CHANGED"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_18

    const-string/jumbo v10, "clock"

    invoke-virtual {p2, v10}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v10, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor$3;->this$0:Lcom/sec/android/cover/monitor/CoverUpdateMonitor;

    invoke-static {v10}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->-get1(Lcom/sec/android/cover/monitor/CoverUpdateMonitor;)Landroid/os/Handler;

    move-result-object v10

    const/16 v11, 0x148

    invoke-virtual {v10, v11, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    iget-object v10, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor$3;->this$0:Lcom/sec/android/cover/monitor/CoverUpdateMonitor;

    invoke-static {v10}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->-get1(Lcom/sec/android/cover/monitor/CoverUpdateMonitor;)Landroid/os/Handler;

    move-result-object v10

    invoke-virtual {v10, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    :cond_18
    const-string/jumbo v10, "com.samsung.android.theme.themecenter.THEME_APPLY"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_19

    iget-object v10, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor$3;->this$0:Lcom/sec/android/cover/monitor/CoverUpdateMonitor;

    const-string/jumbo v11, "packageName"

    invoke-virtual {p2, v11}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->-set0(Lcom/sec/android/cover/monitor/CoverUpdateMonitor;Ljava/lang/String;)Ljava/lang/String;

    iget-object v10, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor$3;->this$0:Lcom/sec/android/cover/monitor/CoverUpdateMonitor;

    invoke-static {v10}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->-get1(Lcom/sec/android/cover/monitor/CoverUpdateMonitor;)Landroid/os/Handler;

    move-result-object v10

    iget-object v11, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor$3;->this$0:Lcom/sec/android/cover/monitor/CoverUpdateMonitor;

    invoke-static {v11}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->-get0(Lcom/sec/android/cover/monitor/CoverUpdateMonitor;)Ljava/lang/String;

    move-result-object v11

    const/16 v12, 0x14a

    invoke-virtual {v10, v12, v11}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    iget-object v10, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor$3;->this$0:Lcom/sec/android/cover/monitor/CoverUpdateMonitor;

    invoke-static {v10}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->-get1(Lcom/sec/android/cover/monitor/CoverUpdateMonitor;)Landroid/os/Handler;

    move-result-object v10

    invoke-virtual {v10, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    :cond_19
    const-string/jumbo v10, "android.intent.action.SERVICE_STATE"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1a

    iget-object v10, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor$3;->this$0:Lcom/sec/android/cover/monitor/CoverUpdateMonitor;

    invoke-static {v10}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->-get1(Lcom/sec/android/cover/monitor/CoverUpdateMonitor;)Landroid/os/Handler;

    move-result-object v10

    const/16 v11, 0x14c

    invoke-virtual {v10, v11}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    :cond_1a
    const-string/jumbo v10, "com.samsung.android.bixby.intent.action.CLIENT_VIEW_STATE_UPDATED"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    const/4 v2, 0x0

    const-string/jumbo v10, "com.samsung.android.bixby.intent.extra.VIEW_STATE"

    const/4 v11, 0x0

    invoke-virtual {p2, v10, v11}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v10

    const/4 v11, 0x1

    if-ne v10, v11, :cond_1b

    const/4 v2, 0x1

    :goto_1
    iget-object v10, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor$3;->this$0:Lcom/sec/android/cover/monitor/CoverUpdateMonitor;

    invoke-static {v10}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->-get1(Lcom/sec/android/cover/monitor/CoverUpdateMonitor;)Landroid/os/Handler;

    move-result-object v10

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    const/16 v12, 0x151

    invoke-virtual {v10, v12, v11}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    iget-object v10, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor$3;->this$0:Lcom/sec/android/cover/monitor/CoverUpdateMonitor;

    invoke-static {v10}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->-get1(Lcom/sec/android/cover/monitor/CoverUpdateMonitor;)Landroid/os/Handler;

    move-result-object v10

    invoke-virtual {v10, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    :cond_1b
    const/4 v2, 0x0

    goto :goto_1
.end method
