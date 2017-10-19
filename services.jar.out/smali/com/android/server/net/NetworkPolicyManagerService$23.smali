.class Lcom/android/server/net/NetworkPolicyManagerService$23;
.super Ljava/lang/Object;
.source "NetworkPolicyManagerService.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/net/NetworkPolicyManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/net/NetworkPolicyManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/net/NetworkPolicyManagerService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/net/NetworkPolicyManagerService$23;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 44

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v35, v0

    sparse-switch v35, :sswitch_data_0

    const/16 v35, 0x0

    return v35

    :sswitch_0
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v29, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v30, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$23;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    move-object/from16 v35, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$23;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    move-object/from16 v36, v0

    invoke-static/range {v36 .. v36}, Lcom/android/server/net/NetworkPolicyManagerService;->-get2(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/net/INetworkPolicyListener;

    move-result-object v36

    move-object/from16 v0, v35

    move-object/from16 v1, v36

    move/from16 v2, v29

    move/from16 v3, v30

    invoke-static {v0, v1, v2, v3}, Lcom/android/server/net/NetworkPolicyManagerService;->-wrap10(Lcom/android/server/net/NetworkPolicyManagerService;Landroid/net/INetworkPolicyListener;II)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$23;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    move-object/from16 v35, v0

    invoke-static/range {v35 .. v35}, Lcom/android/server/net/NetworkPolicyManagerService;->-get7(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v15

    const/4 v10, 0x0

    :goto_0
    if-ge v10, v15, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$23;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    move-object/from16 v35, v0

    invoke-static/range {v35 .. v35}, Lcom/android/server/net/NetworkPolicyManagerService;->-get7(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v35

    move-object/from16 v0, v35

    invoke-virtual {v0, v10}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v16

    check-cast v16, Landroid/net/INetworkPolicyListener;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$23;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    move-object/from16 v1, v16

    move/from16 v2, v29

    move/from16 v3, v30

    invoke-static {v0, v1, v2, v3}, Lcom/android/server/net/NetworkPolicyManagerService;->-wrap10(Lcom/android/server/net/NetworkPolicyManagerService;Landroid/net/INetworkPolicyListener;II)V

    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$23;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    move-object/from16 v35, v0

    invoke-static/range {v35 .. v35}, Lcom/android/server/net/NetworkPolicyManagerService;->-get7(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    const/16 v35, 0x1

    return v35

    :sswitch_1
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v20, v0

    check-cast v20, [Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$23;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    move-object/from16 v35, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$23;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    move-object/from16 v36, v0

    invoke-static/range {v36 .. v36}, Lcom/android/server/net/NetworkPolicyManagerService;->-get2(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/net/INetworkPolicyListener;

    move-result-object v36

    move-object/from16 v0, v35

    move-object/from16 v1, v36

    move-object/from16 v2, v20

    invoke-static {v0, v1, v2}, Lcom/android/server/net/NetworkPolicyManagerService;->-wrap6(Lcom/android/server/net/NetworkPolicyManagerService;Landroid/net/INetworkPolicyListener;[Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$23;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    move-object/from16 v35, v0

    invoke-static/range {v35 .. v35}, Lcom/android/server/net/NetworkPolicyManagerService;->-get7(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v15

    const/4 v10, 0x0

    :goto_1
    if-ge v10, v15, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$23;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    move-object/from16 v35, v0

    invoke-static/range {v35 .. v35}, Lcom/android/server/net/NetworkPolicyManagerService;->-get7(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v35

    move-object/from16 v0, v35

    invoke-virtual {v0, v10}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v16

    check-cast v16, Landroid/net/INetworkPolicyListener;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$23;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    move-object/from16 v1, v16

    move-object/from16 v2, v20

    invoke-static {v0, v1, v2}, Lcom/android/server/net/NetworkPolicyManagerService;->-wrap6(Lcom/android/server/net/NetworkPolicyManagerService;Landroid/net/INetworkPolicyListener;[Ljava/lang/String;)V

    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$23;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    move-object/from16 v35, v0

    invoke-static/range {v35 .. v35}, Lcom/android/server/net/NetworkPolicyManagerService;->-get7(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    const/16 v35, 0x1

    return v35

    :sswitch_2
    move-object/from16 v0, p1

    iget-object v11, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v11, Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$23;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    move-object/from16 v35, v0

    invoke-virtual/range {v35 .. v35}, Lcom/android/server/net/NetworkPolicyManagerService;->maybeRefreshTrustedTime()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$23;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPoliciesSecondLock:Ljava/lang/Object;

    move-object/from16 v36, v0

    monitor-enter v36

    :try_start_0
    new-instance v12, Ljava/lang/String;

    invoke-direct {v12}, Ljava/lang/String;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$23;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    move-object/from16 v35, v0

    const/16 v37, 0x4

    move-object/from16 v0, v35

    move/from16 v1, v37

    invoke-static {v0, v1}, Lcom/android/server/net/NetworkPolicyManagerService;->-wrap0(Lcom/android/server/net/NetworkPolicyManagerService;I)Landroid/net/LinkProperties;

    move-result-object v17

    if-eqz v17, :cond_2

    invoke-virtual/range {v17 .. v17}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v12

    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$23;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    move-object/from16 v35, v0

    invoke-static/range {v35 .. v35}, Lcom/android/server/net/NetworkPolicyManagerService;->-get8(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/util/ArraySet;

    move-result-object v35

    move-object/from16 v0, v35

    invoke-virtual {v0, v11}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v35

    if-nez v35, :cond_3

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v35

    const-string/jumbo v37, "CscFeature_RIL_SupportVolte"

    move-object/from16 v0, v35

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v35

    if-eqz v35, :cond_4

    if-eqz v11, :cond_4

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v35

    if-eqz v35, :cond_4

    :cond_3
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$23;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    move-object/from16 v35, v0

    invoke-static/range {v35 .. v35}, Lcom/android/server/net/NetworkPolicyManagerService;->-get9(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/net/INetworkStatsService;

    move-result-object v35

    invoke-interface/range {v35 .. v35}, Landroid/net/INetworkStatsService;->forceUpdate()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_2
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$23;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    move-object/from16 v35, v0

    invoke-virtual/range {v35 .. v35}, Lcom/android/server/net/NetworkPolicyManagerService;->updateNetworkEnabledNL()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$23;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    move-object/from16 v35, v0

    invoke-virtual/range {v35 .. v35}, Lcom/android/server/net/NetworkPolicyManagerService;->updateNotificationsNL()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_4
    monitor-exit v36

    const/16 v35, 0x1

    return v35

    :catchall_0
    move-exception v35

    monitor-exit v36

    throw v35

    :sswitch_3
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v35, v0

    if-eqz v35, :cond_5

    const/16 v27, 0x1

    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$23;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    move-object/from16 v35, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$23;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    move-object/from16 v36, v0

    invoke-static/range {v36 .. v36}, Lcom/android/server/net/NetworkPolicyManagerService;->-get2(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/net/INetworkPolicyListener;

    move-result-object v36

    move-object/from16 v0, v35

    move-object/from16 v1, v36

    move/from16 v2, v27

    invoke-static {v0, v1, v2}, Lcom/android/server/net/NetworkPolicyManagerService;->-wrap8(Lcom/android/server/net/NetworkPolicyManagerService;Landroid/net/INetworkPolicyListener;Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$23;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    move-object/from16 v35, v0

    invoke-static/range {v35 .. v35}, Lcom/android/server/net/NetworkPolicyManagerService;->-get7(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v15

    const/4 v10, 0x0

    :goto_4
    if-ge v10, v15, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$23;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    move-object/from16 v35, v0

    invoke-static/range {v35 .. v35}, Lcom/android/server/net/NetworkPolicyManagerService;->-get7(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v35

    move-object/from16 v0, v35

    invoke-virtual {v0, v10}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v16

    check-cast v16, Landroid/net/INetworkPolicyListener;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$23;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    move-object/from16 v1, v16

    move/from16 v2, v27

    invoke-static {v0, v1, v2}, Lcom/android/server/net/NetworkPolicyManagerService;->-wrap8(Lcom/android/server/net/NetworkPolicyManagerService;Landroid/net/INetworkPolicyListener;Z)V

    add-int/lit8 v10, v10, 0x1

    goto :goto_4

    :cond_5
    const/16 v27, 0x0

    goto :goto_3

    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$23;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    move-object/from16 v35, v0

    invoke-static/range {v35 .. v35}, Lcom/android/server/net/NetworkPolicyManagerService;->-get7(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    new-instance v13, Landroid/content/Intent;

    const-string/jumbo v35, "android.net.conn.RESTRICT_BACKGROUND_CHANGED"

    move-object/from16 v0, v35

    invoke-direct {v13, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v35, 0x40000000    # 2.0f

    move/from16 v0, v35

    invoke-virtual {v13, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$23;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    move-object/from16 v35, v0

    invoke-static/range {v35 .. v35}, Lcom/android/server/net/NetworkPolicyManagerService;->-get3(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/content/Context;

    move-result-object v35

    sget-object v36, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    move-object/from16 v0, v35

    move-object/from16 v1, v36

    invoke-virtual {v0, v13, v1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    const/16 v35, 0x1

    return v35

    :sswitch_4
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v29, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v35, v0

    const/16 v36, 0x1

    move/from16 v0, v35

    move/from16 v1, v36

    if-ne v0, v1, :cond_7

    const/4 v8, 0x1

    :goto_5
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v33, v0

    check-cast v33, Ljava/lang/Boolean;

    if-eqz v33, :cond_9

    invoke-virtual/range {v33 .. v33}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v34

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$23;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    move-object/from16 v35, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$23;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    move-object/from16 v36, v0

    invoke-static/range {v36 .. v36}, Lcom/android/server/net/NetworkPolicyManagerService;->-get2(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/net/INetworkPolicyListener;

    move-result-object v36

    move-object/from16 v0, v35

    move-object/from16 v1, v36

    move/from16 v2, v29

    move/from16 v3, v34

    invoke-static {v0, v1, v2, v3}, Lcom/android/server/net/NetworkPolicyManagerService;->-wrap9(Lcom/android/server/net/NetworkPolicyManagerService;Landroid/net/INetworkPolicyListener;IZ)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$23;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    move-object/from16 v35, v0

    invoke-static/range {v35 .. v35}, Lcom/android/server/net/NetworkPolicyManagerService;->-get7(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v15

    const/4 v10, 0x0

    :goto_6
    if-ge v10, v15, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$23;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    move-object/from16 v35, v0

    invoke-static/range {v35 .. v35}, Lcom/android/server/net/NetworkPolicyManagerService;->-get7(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v35

    move-object/from16 v0, v35

    invoke-virtual {v0, v10}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v16

    check-cast v16, Landroid/net/INetworkPolicyListener;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$23;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    move-object/from16 v1, v16

    move/from16 v2, v29

    move/from16 v3, v34

    invoke-static {v0, v1, v2, v3}, Lcom/android/server/net/NetworkPolicyManagerService;->-wrap9(Lcom/android/server/net/NetworkPolicyManagerService;Landroid/net/INetworkPolicyListener;IZ)V

    add-int/lit8 v10, v10, 0x1

    goto :goto_6

    :cond_7
    const/4 v8, 0x0

    goto :goto_5

    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$23;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    move-object/from16 v35, v0

    invoke-static/range {v35 .. v35}, Lcom/android/server/net/NetworkPolicyManagerService;->-get7(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$23;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    move-object/from16 v35, v0

    invoke-static/range {v35 .. v35}, Lcom/android/server/net/NetworkPolicyManagerService;->-get3(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/content/Context;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v23

    move-object/from16 v0, v23

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v22

    if-eqz v8, :cond_a

    if-eqz v22, :cond_a

    invoke-static/range {v29 .. v29}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v32

    const/16 v35, 0x0

    move-object/from16 v0, v22

    array-length v0, v0

    move/from16 v36, v0

    :goto_7
    move/from16 v0, v35

    move/from16 v1, v36

    if-ge v0, v1, :cond_a

    aget-object v21, v22, v35

    new-instance v13, Landroid/content/Intent;

    const-string/jumbo v37, "android.net.conn.RESTRICT_BACKGROUND_CHANGED"

    move-object/from16 v0, v37

    invoke-direct {v13, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v21

    invoke-virtual {v13, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v37, 0x40000000    # 2.0f

    move/from16 v0, v37

    invoke-virtual {v13, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$23;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    move-object/from16 v37, v0

    invoke-static/range {v37 .. v37}, Lcom/android/server/net/NetworkPolicyManagerService;->-get3(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/content/Context;

    move-result-object v37

    invoke-static/range {v32 .. v32}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v38

    move-object/from16 v0, v37

    move-object/from16 v1, v38

    invoke-virtual {v0, v13, v1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    add-int/lit8 v35, v35, 0x1

    goto :goto_7

    :cond_a
    const/16 v35, 0x1

    return v35

    :sswitch_5
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v29, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v35, v0

    const/16 v36, 0x1

    move/from16 v0, v35

    move/from16 v1, v36

    if-ne v0, v1, :cond_b

    const/4 v6, 0x1

    :goto_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$23;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    move-object/from16 v35, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$23;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    move-object/from16 v36, v0

    invoke-static/range {v36 .. v36}, Lcom/android/server/net/NetworkPolicyManagerService;->-get2(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/net/INetworkPolicyListener;

    move-result-object v36

    move-object/from16 v0, v35

    move-object/from16 v1, v36

    move/from16 v2, v29

    invoke-static {v0, v1, v2, v6}, Lcom/android/server/net/NetworkPolicyManagerService;->-wrap7(Lcom/android/server/net/NetworkPolicyManagerService;Landroid/net/INetworkPolicyListener;IZ)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$23;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    move-object/from16 v35, v0

    invoke-static/range {v35 .. v35}, Lcom/android/server/net/NetworkPolicyManagerService;->-get7(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v15

    const/4 v10, 0x0

    :goto_9
    if-ge v10, v15, :cond_c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$23;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    move-object/from16 v35, v0

    invoke-static/range {v35 .. v35}, Lcom/android/server/net/NetworkPolicyManagerService;->-get7(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v35

    move-object/from16 v0, v35

    invoke-virtual {v0, v10}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v16

    check-cast v16, Landroid/net/INetworkPolicyListener;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$23;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    move-object/from16 v1, v16

    move/from16 v2, v29

    invoke-static {v0, v1, v2, v6}, Lcom/android/server/net/NetworkPolicyManagerService;->-wrap7(Lcom/android/server/net/NetworkPolicyManagerService;Landroid/net/INetworkPolicyListener;IZ)V

    add-int/lit8 v10, v10, 0x1

    goto :goto_9

    :cond_b
    const/4 v6, 0x0

    goto :goto_8

    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$23;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    move-object/from16 v35, v0

    invoke-static/range {v35 .. v35}, Lcom/android/server/net/NetworkPolicyManagerService;->-get7(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    const/16 v35, 0x1

    return v35

    :sswitch_6
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v35, v0

    check-cast v35, Ljava/lang/Long;

    invoke-virtual/range {v35 .. v35}, Ljava/lang/Long;->longValue()J

    move-result-wide v18

    move-wide/from16 v24, v18

    :try_start_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$23;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    move-object/from16 v35, v0

    invoke-static/range {v35 .. v35}, Lcom/android/server/net/NetworkPolicyManagerService;->-get9(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/net/INetworkStatsService;

    move-result-object v35

    move-object/from16 v0, v35

    move-wide/from16 v1, v18

    invoke-interface {v0, v1, v2}, Landroid/net/INetworkStatsService;->advisePersistThreshold(J)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0

    :goto_a
    const/16 v35, 0x1

    return v35

    :sswitch_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$23;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    move-object/from16 v35, v0

    invoke-static/range {v35 .. v35}, Lcom/android/server/net/NetworkPolicyManagerService;->-wrap28(Lcom/android/server/net/NetworkPolicyManagerService;)V

    const/16 v35, 0x1

    return v35

    :sswitch_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$23;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    move-object/from16 v36, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v35, v0

    check-cast v35, Ljava/lang/String;

    move-object/from16 v0, v36

    move-object/from16 v1, v35

    invoke-static {v0, v1}, Lcom/android/server/net/NetworkPolicyManagerService;->-wrap16(Lcom/android/server/net/NetworkPolicyManagerService;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$23;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    move-object/from16 v36, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v35, v0

    check-cast v35, Ljava/lang/String;

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v37, v0

    move/from16 v0, v37

    int-to-long v0, v0

    move-wide/from16 v38, v0

    const/16 v37, 0x20

    shl-long v38, v38, v37

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v37, v0

    move/from16 v0, v37

    int-to-long v0, v0

    move-wide/from16 v40, v0

    const-wide v42, 0xffffffffL

    and-long v40, v40, v42

    or-long v38, v38, v40

    move-object/from16 v0, v36

    move-object/from16 v1, v35

    move-wide/from16 v2, v38

    invoke-static {v0, v1, v2, v3}, Lcom/android/server/net/NetworkPolicyManagerService;->-wrap18(Lcom/android/server/net/NetworkPolicyManagerService;Ljava/lang/String;J)V

    const/16 v35, 0x1

    return v35

    :sswitch_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$23;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    move-object/from16 v36, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v35, v0

    check-cast v35, Ljava/lang/String;

    move-object/from16 v0, v36

    move-object/from16 v1, v35

    invoke-static {v0, v1}, Lcom/android/server/net/NetworkPolicyManagerService;->-wrap16(Lcom/android/server/net/NetworkPolicyManagerService;Ljava/lang/String;)V

    const/16 v35, 0x1

    return v35

    :sswitch_a
    move-object/from16 v0, p1

    iget v7, v0, Landroid/os/Message;->arg1:I

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v28, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v31, v0

    check-cast v31, Landroid/util/SparseIntArray;

    if-eqz v31, :cond_d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$23;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    move-object/from16 v1, v31

    invoke-static {v0, v7, v1}, Lcom/android/server/net/NetworkPolicyManagerService;->-wrap20(Lcom/android/server/net/NetworkPolicyManagerService;ILandroid/util/SparseIntArray;)V

    :cond_d
    if-eqz v28, :cond_e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$23;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    move-object/from16 v36, v0

    const/16 v35, 0x1

    move/from16 v0, v28

    move/from16 v1, v35

    if-ne v0, v1, :cond_f

    const/16 v35, 0x1

    :goto_b
    move-object/from16 v0, v36

    move/from16 v1, v35

    invoke-static {v0, v7, v1}, Lcom/android/server/net/NetworkPolicyManagerService;->-wrap11(Lcom/android/server/net/NetworkPolicyManagerService;IZ)V

    :cond_e
    const/16 v35, 0x1

    return v35

    :cond_f
    const/16 v35, 0x0

    goto :goto_b

    :sswitch_b
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v29, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v26, v0

    const-string/jumbo v35, "onUidStateChanged"

    const-wide/32 v36, 0x200000

    move-wide/from16 v0, v36

    move-object/from16 v2, v35

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    :try_start_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$23;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidRulesFirstLock:Ljava/lang/Object;

    move-object/from16 v36, v0

    monitor-enter v36
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :try_start_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$23;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    move/from16 v1, v29

    move/from16 v2, v26

    invoke-static {v0, v1, v2}, Lcom/android/server/net/NetworkPolicyManagerService;->-wrap29(Lcom/android/server/net/NetworkPolicyManagerService;II)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    monitor-exit v36
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    const-wide/32 v36, 0x200000

    invoke-static/range {v36 .. v37}, Landroid/os/Trace;->traceEnd(J)V

    const/16 v35, 0x1

    return v35

    :catchall_1
    move-exception v35

    :try_start_7
    monitor-exit v36

    throw v35
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    :catchall_2
    move-exception v35

    const-wide/32 v36, 0x200000

    invoke-static/range {v36 .. v37}, Landroid/os/Trace;->traceEnd(J)V

    throw v35

    :sswitch_c
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v29, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$23;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidRulesFirstLock:Ljava/lang/Object;

    move-object/from16 v36, v0

    monitor-enter v36

    :try_start_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$23;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    move/from16 v1, v29

    invoke-static {v0, v1}, Lcom/android/server/net/NetworkPolicyManagerService;->-wrap17(Lcom/android/server/net/NetworkPolicyManagerService;I)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    monitor-exit v36

    const/16 v35, 0x1

    return v35

    :catchall_3
    move-exception v35

    monitor-exit v36

    throw v35

    :sswitch_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$23;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    iget-boolean v0, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mSystemReady:Z

    move/from16 v35, v0

    if-eqz v35, :cond_10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$23;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    move-object/from16 v35, v0

    invoke-static/range {v35 .. v35}, Lcom/android/server/net/NetworkPolicyManagerService;->-wrap25(Lcom/android/server/net/NetworkPolicyManagerService;)V

    :cond_10
    const/16 v35, 0x1

    return v35

    :sswitch_e
    move-object/from16 v0, p1

    iget v5, v0, Landroid/os/Message;->arg1:I

    const/16 v35, 0x1

    move/from16 v0, v35

    if-ne v0, v5, :cond_11

    const/4 v14, 0x1

    :goto_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$23;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidRulesFirstLock:Ljava/lang/Object;

    move-object/from16 v36, v0

    monitor-enter v36

    :try_start_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$23;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    move-object/from16 v35, v0

    invoke-virtual/range {v35 .. v35}, Lcom/android/server/net/NetworkPolicyManagerService;->updatePowerSaveWhitelistUL()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$23;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    move-object/from16 v35, v0

    invoke-static/range {v35 .. v35}, Lcom/android/server/net/NetworkPolicyManagerService;->-wrap25(Lcom/android/server/net/NetworkPolicyManagerService;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$23;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    move-object/from16 v35, v0

    invoke-virtual/range {v35 .. v35}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRulesForAppIdleUL()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    monitor-exit v36

    const/16 v35, 0x1

    return v35

    :cond_11
    const/4 v14, 0x0

    goto :goto_c

    :catchall_4
    move-exception v35

    monitor-exit v36

    throw v35

    :sswitch_f
    const/4 v8, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$23;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    move-object/from16 v35, v0

    invoke-static/range {v35 .. v35}, Lcom/android/server/net/NetworkPolicyManagerService;->-wrap2(Lcom/android/server/net/NetworkPolicyManagerService;)Z

    move-result v8

    if-eqz v8, :cond_12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$23;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidRulesFirstLock:Ljava/lang/Object;

    move-object/from16 v36, v0

    monitor-enter v36

    :try_start_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$23;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    move-object/from16 v35, v0

    invoke-virtual/range {v35 .. v35}, Lcom/android/server/net/NetworkPolicyManagerService;->updatePowerSaveWhitelistUL()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$23;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    move-object/from16 v35, v0

    invoke-static/range {v35 .. v35}, Lcom/android/server/net/NetworkPolicyManagerService;->-wrap25(Lcom/android/server/net/NetworkPolicyManagerService;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$23;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    move-object/from16 v35, v0

    invoke-virtual/range {v35 .. v35}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRulesForAppIdleUL()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_5

    monitor-exit v36

    :cond_12
    const/16 v35, 0x1

    return v35

    :catchall_5
    move-exception v35

    monitor-exit v36

    throw v35

    :sswitch_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$23;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    move-object/from16 v36, v0

    invoke-static {}, Lcom/android/server/net/NetworkPolicyManagerService;->-get13()Z

    move-result v35

    if-eqz v35, :cond_13

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$23;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    move-object/from16 v35, v0

    invoke-static/range {v35 .. v35}, Lcom/android/server/net/NetworkPolicyManagerService;->-get15(Lcom/android/server/net/NetworkPolicyManagerService;)Z

    move-result v35

    if-eqz v35, :cond_14

    :cond_13
    const/16 v35, 0x0

    :goto_d
    move-object/from16 v0, v36

    move/from16 v1, v35

    invoke-static {v0, v1}, Lcom/android/server/net/NetworkPolicyManagerService;->-wrap19(Lcom/android/server/net/NetworkPolicyManagerService;Z)V

    const/16 v35, 0x1

    return v35

    :cond_14
    const/16 v35, 0x1

    goto :goto_d

    :sswitch_11
    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->arg1:I

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v29, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v21, v0

    check-cast v21, Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$23;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    move-object/from16 v1, v21

    move/from16 v2, v29

    invoke-static {v0, v4, v1, v2}, Lcom/android/server/net/NetworkPolicyManagerService;->-wrap13(Lcom/android/server/net/NetworkPolicyManagerService;ILjava/lang/String;I)V

    const/16 v35, 0x1

    return v35

    :catch_0
    move-exception v9

    goto/16 :goto_a

    :catch_1
    move-exception v9

    goto/16 :goto_2

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x5 -> :sswitch_2
        0x6 -> :sswitch_3
        0x7 -> :sswitch_6
        0x8 -> :sswitch_7
        0x9 -> :sswitch_4
        0xa -> :sswitch_8
        0xb -> :sswitch_9
        0xc -> :sswitch_5
        0xd -> :sswitch_a
        0xe -> :sswitch_11
        0x3e9 -> :sswitch_b
        0x3ea -> :sswitch_c
        0x3eb -> :sswitch_e
        0x3ec -> :sswitch_10
        0x3ed -> :sswitch_f
        0x3ee -> :sswitch_d
    .end sparse-switch
.end method
