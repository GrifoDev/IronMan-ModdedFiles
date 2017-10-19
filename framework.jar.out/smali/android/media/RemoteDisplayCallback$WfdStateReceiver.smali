.class Landroid/media/RemoteDisplayCallback$WfdStateReceiver;
.super Landroid/content/BroadcastReceiver;
.source "RemoteDisplayCallback.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/RemoteDisplayCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WfdStateReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/media/RemoteDisplayCallback;


# direct methods
.method private constructor <init>(Landroid/media/RemoteDisplayCallback;)V
    .locals 0

    iput-object p1, p0, Landroid/media/RemoteDisplayCallback$WfdStateReceiver;->this$0:Landroid/media/RemoteDisplayCallback;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/media/RemoteDisplayCallback;Landroid/media/RemoteDisplayCallback$WfdStateReceiver;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/media/RemoteDisplayCallback$WfdStateReceiver;-><init>(Landroid/media/RemoteDisplayCallback;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7

    const/4 v6, 0x0

    const/4 v5, 0x1

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v3, "com.samsung.wfd.LAUNCH_WFD_UPDATE"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string/jumbo v3, "RemoteDisplayCallback"

    const-string/jumbo v4, "send command: UpdateUserInput >> 1"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Landroid/media/RemoteDisplayCallback$WfdStateReceiver;->this$0:Landroid/media/RemoteDisplayCallback;

    const-string/jumbo v4, "upgd"

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-static {v3, v4, v5}, Landroid/media/RemoteDisplayCallback;->-wrap0(Landroid/media/RemoteDisplayCallback;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string/jumbo v3, "android.intent.action.WIFI_DISPLAY_UPDATE_INPUT_FROM_APP"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const-string/jumbo v3, "RemoteDisplayCallback"

    const-string/jumbo v4, "send command: UpdateUserInput >> 0"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Landroid/media/RemoteDisplayCallback$WfdStateReceiver;->this$0:Landroid/media/RemoteDisplayCallback;

    const-string/jumbo v4, "upgd"

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-static {v3, v4, v5}, Landroid/media/RemoteDisplayCallback;->-wrap0(Landroid/media/RemoteDisplayCallback;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    const-string/jumbo v3, "com.samsung.intent.action.WIFI_DISPLAY_TCP_TRANSPORT"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-static {v5}, Landroid/media/RemoteDisplayCallback;->-set1(I)I

    iget-object v3, p0, Landroid/media/RemoteDisplayCallback$WfdStateReceiver;->this$0:Landroid/media/RemoteDisplayCallback;

    const-string/jumbo v4, "tcp"

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-static {v3, v4, v5}, Landroid/media/RemoteDisplayCallback;->-wrap0(Landroid/media/RemoteDisplayCallback;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :cond_3
    const-string/jumbo v3, "com.samsung.intent.action.WIFI_DISPLAY_UDP_TRANSPORT"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-static {v6}, Landroid/media/RemoteDisplayCallback;->-set1(I)I

    iget-object v3, p0, Landroid/media/RemoteDisplayCallback$WfdStateReceiver;->this$0:Landroid/media/RemoteDisplayCallback;

    const-string/jumbo v4, "udp"

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-static {v3, v4, v5}, Landroid/media/RemoteDisplayCallback;->-wrap0(Landroid/media/RemoteDisplayCallback;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :cond_4
    const-string/jumbo v3, "android.media.VOLUME_CHANGED_ACTION"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string/jumbo v3, "android.media.EXTRA_VOLUME_STREAM_TYPE"

    invoke-virtual {p2, v3, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    const-string/jumbo v3, "android.media.EXTRA_VOLUME_STREAM_VALUE"

    invoke-virtual {p2, v3, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    const/4 v3, 0x3

    if-ne v1, v3, :cond_0

    iget-object v3, p0, Landroid/media/RemoteDisplayCallback$WfdStateReceiver;->this$0:Landroid/media/RemoteDisplayCallback;

    invoke-static {v3}, Landroid/media/RemoteDisplayCallback;->-get0(Landroid/media/RemoteDisplayCallback;)I

    move-result v3

    if-ne v3, v2, :cond_5

    const-string/jumbo v3, "RemoteDisplayCallback"

    const-string/jumbo v4, "same volume! skip to send command!"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_5
    invoke-static {}, Landroid/media/RemoteDisplayCallback;->-get1()I

    move-result v3

    rem-int/lit8 v3, v3, 0x2

    if-ne v3, v5, :cond_0

    iget-object v3, p0, Landroid/media/RemoteDisplayCallback$WfdStateReceiver;->this$0:Landroid/media/RemoteDisplayCallback;

    invoke-static {v3, v2}, Landroid/media/RemoteDisplayCallback;->-set0(Landroid/media/RemoteDisplayCallback;I)I

    const-string/jumbo v3, "RemoteDisplayCallback"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "send command: curr stream vol:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Landroid/media/RemoteDisplayCallback$WfdStateReceiver;->this$0:Landroid/media/RemoteDisplayCallback;

    invoke-static {v5}, Landroid/media/RemoteDisplayCallback;->-get0(Landroid/media/RemoteDisplayCallback;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Landroid/media/RemoteDisplayCallback$WfdStateReceiver;->this$0:Landroid/media/RemoteDisplayCallback;

    const-string/jumbo v4, "vol"

    iget-object v5, p0, Landroid/media/RemoteDisplayCallback$WfdStateReceiver;->this$0:Landroid/media/RemoteDisplayCallback;

    invoke-static {v5}, Landroid/media/RemoteDisplayCallback;->-get0(Landroid/media/RemoteDisplayCallback;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v3, v4, v5}, Landroid/media/RemoteDisplayCallback;->-wrap0(Landroid/media/RemoteDisplayCallback;Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_0
.end method
