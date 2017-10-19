.class Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine$TetheredState;
.super Lcom/android/internal/util/State;
.source "TetherInterfaceStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "TetheredState"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;


# direct methods
.method constructor <init>(Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine$TetheredState;->this$0:Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method

.method private cleanupUpstream()V
    .locals 6

    const/4 v5, 0x0

    const-string/jumbo v1, "TetherInterfaceSM"

    const-string/jumbo v2, "cleanupUpstream "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine$TetheredState;->this$0:Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;

    invoke-static {v1}, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->-get5(Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    :try_start_0
    const-string/jumbo v1, "TetherInterfaceSM"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "commeted mStatsService.forceUpdate() is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine$TetheredState;->this$0:Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;

    invoke-static {v3}, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->-get5(Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine$TetheredState;->this$0:Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;

    invoke-static {v1}, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->-get8(Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;)Landroid/net/INetworkStatsService;

    move-result-object v1

    invoke-interface {v1}, Landroid/net/INetworkStatsService;->forceUpdate()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    :goto_0
    :try_start_1
    iget-object v1, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine$TetheredState;->this$0:Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;

    invoke-static {v1}, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->-get6(Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;)Landroid/os/INetworkManagementService;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine$TetheredState;->this$0:Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;

    invoke-static {v2}, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->-get1(Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine$TetheredState;->this$0:Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;

    invoke-static {v3}, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->-get5(Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Landroid/os/INetworkManagementService;->stopInterfaceForwarding(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    :goto_1
    :try_start_2
    iget-object v1, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine$TetheredState;->this$0:Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;

    invoke-static {v1}, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->-get6(Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;)Landroid/os/INetworkManagementService;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine$TetheredState;->this$0:Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;

    invoke-static {v2}, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->-get1(Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine$TetheredState;->this$0:Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;

    invoke-static {v3}, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->-get5(Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Landroid/os/INetworkManagementService;->disableNat(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    :goto_2
    :try_start_3
    const-string/jumbo v1, "SKT"

    invoke-static {}, Lcom/android/internal/telephony/TelephonyFeatures;->getMainOperatorName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string/jumbo v1, "KOO"

    invoke-static {}, Lcom/android/internal/telephony/TelephonyFeatures;->getMainOperatorName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine$TetheredState;->this$0:Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;

    invoke-static {v1}, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->-get6(Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;)Landroid/os/INetworkManagementService;

    move-result-object v1

    const-string/jumbo v2, "false"

    iget-object v3, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine$TetheredState;->this$0:Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;

    invoke-static {v3}, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->-get1(Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine$TetheredState;->this$0:Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;

    iget-object v4, v4, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->mActualUpstreamIfaceName:Ljava/lang/String;

    invoke-interface {v1, v2, v3, v4}, Landroid/os/INetworkManagementService;->updateRa(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    :goto_3
    iget-object v1, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine$TetheredState;->this$0:Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;

    invoke-static {v1, v5}, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->-set1(Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;Ljava/lang/String;)Ljava/lang/String;

    :cond_0
    return-void

    :cond_1
    :try_start_4
    const-string/jumbo v1, "TetherInterfaceSM"

    const-string/jumbo v2, "don\'t sent RA, It can cause deactivation of some PDN "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_3

    :catch_0
    move-exception v0

    const-string/jumbo v1, "TetherInterfaceSM"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Exception update RA: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :catch_1
    move-exception v0

    goto :goto_2

    :catch_2
    move-exception v0

    goto :goto_1

    :catch_3
    move-exception v0

    goto/16 :goto_0
.end method


# virtual methods
.method public enter()V
    .locals 6

    iget-object v1, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine$TetheredState;->this$0:Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->-wrap0(Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;Z)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine$TetheredState;->this$0:Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;

    const/16 v2, 0xa

    invoke-static {v1, v2}, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->-set0(Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;I)I

    iget-object v1, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine$TetheredState;->this$0:Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;

    iget-object v2, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine$TetheredState;->this$0:Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;

    invoke-static {v2}, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->-get2(Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;)Lcom/android/internal/util/State;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->-wrap2(Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;Lcom/android/internal/util/IState;)V

    return-void

    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine$TetheredState;->this$0:Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;

    invoke-static {v1}, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->-get6(Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;)Landroid/os/INetworkManagementService;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine$TetheredState;->this$0:Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;

    invoke-static {v2}, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->-get1(Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Landroid/os/INetworkManagementService;->tetherInterface(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v1, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine$TetheredState;->this$0:Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;

    invoke-static {v1}, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->-get3(Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine$TetheredState;->this$0:Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;

    invoke-static {v1}, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->-get0(Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;)Lcom/android/server/connectivity/tethering/IPv6TetheringInterfaceServices;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/connectivity/tethering/IPv6TetheringInterfaceServices;->start()Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine$TetheredState;->this$0:Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;

    invoke-static {v1}, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->-get9(Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;)Lcom/android/server/connectivity/tethering/IControlsTethering;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine$TetheredState;->this$0:Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;

    invoke-static {v2}, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->-get1(Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine$TetheredState;->this$0:Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;

    iget-object v4, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine$TetheredState;->this$0:Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;

    invoke-static {v4}, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->-get4(Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;)I

    move-result v4

    const/4 v5, 0x2

    invoke-interface {v1, v2, v3, v5, v4}, Lcom/android/server/connectivity/tethering/IControlsTethering;->notifyInterfaceStateChange(Ljava/lang/String;Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;II)V

    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "TetherInterfaceSM"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Error Tethering: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine$TetheredState;->this$0:Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;

    const/4 v2, 0x6

    invoke-static {v1, v2}, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->-set0(Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;I)I

    iget-object v1, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine$TetheredState;->this$0:Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;

    iget-object v2, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine$TetheredState;->this$0:Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;

    invoke-static {v2}, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->-get2(Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;)Lcom/android/internal/util/State;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->-wrap2(Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;Lcom/android/internal/util/IState;)V

    return-void

    :cond_2
    const-string/jumbo v1, "TetherInterfaceSM"

    const-string/jumbo v2, "Failed to start IPv6TetheringInterfaceServices"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public exit()V
    .locals 4

    iget-object v1, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine$TetheredState;->this$0:Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;

    invoke-static {v1}, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->-get0(Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;)Lcom/android/server/connectivity/tethering/IPv6TetheringInterfaceServices;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/connectivity/tethering/IPv6TetheringInterfaceServices;->stop()V

    invoke-direct {p0}, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine$TetheredState;->cleanupUpstream()V

    :try_start_0
    iget-object v1, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine$TetheredState;->this$0:Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;

    invoke-static {v1}, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->-get6(Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;)Landroid/os/INetworkManagementService;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine$TetheredState;->this$0:Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;

    invoke-static {v2}, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->-get1(Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Landroid/os/INetworkManagementService;->untetherInterface(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v1, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine$TetheredState;->this$0:Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->-wrap0(Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;Z)Z

    return-void

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine$TetheredState;->this$0:Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;

    const/4 v2, 0x7

    invoke-static {v1, v2}, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->-set0(Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;I)I

    const-string/jumbo v1, "TetherInterfaceSM"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Failed to untether interface: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 12

    const/16 v11, 0x8

    const/4 v10, 0x1

    iget-object v6, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine$TetheredState;->this$0:Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;

    iget v7, p1, Landroid/os/Message;->what:I

    invoke-static {v6, p0, v7}, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->-wrap1(Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;Lcom/android/internal/util/State;I)V

    const/4 v4, 0x1

    iget v6, p1, Landroid/os/Message;->what:I

    packed-switch v6, :pswitch_data_0

    :pswitch_0
    const/4 v4, 0x0

    :cond_0
    :goto_0
    return v4

    :pswitch_1
    iget-object v6, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine$TetheredState;->this$0:Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;

    iget-object v7, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine$TetheredState;->this$0:Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;

    invoke-static {v7}, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->-get2(Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;)Lcom/android/internal/util/State;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->-wrap2(Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;Lcom/android/internal/util/IState;)V

    goto :goto_0

    :pswitch_2
    iget-object v6, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine$TetheredState;->this$0:Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;

    iget-object v7, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine$TetheredState;->this$0:Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;

    invoke-static {v7}, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->-get12(Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;)Lcom/android/internal/util/State;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->-wrap2(Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;Lcom/android/internal/util/IState;)V

    goto :goto_0

    :pswitch_3
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/util/HashMap;

    const-string/jumbo v6, "iface"

    invoke-virtual {v2, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iget-object v7, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine$TetheredState;->this$0:Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;

    const-string/jumbo v6, "actualIface"

    invoke-virtual {v2, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    iput-object v6, v7, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->mActualUpstreamIfaceName:Ljava/lang/String;

    const-string/jumbo v5, ""

    if-eqz v3, :cond_1

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "newUpstreamIfaceName = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    :cond_1
    iget-object v6, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine$TetheredState;->this$0:Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;

    iget-object v6, v6, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->mActualUpstreamIfaceName:Ljava/lang/String;

    if-eqz v6, :cond_2

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ", mActualUpstreamIfaceName = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine$TetheredState;->this$0:Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;

    iget-object v7, v7, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->mActualUpstreamIfaceName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    :cond_2
    iget-object v6, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine$TetheredState;->this$0:Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;

    invoke-static {v6}, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->-get5(Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_3

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ", mMyUpstreamIfaceName = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine$TetheredState;->this$0:Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;

    invoke-static {v7}, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->-get5(Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    :cond_3
    const-string/jumbo v6, "TetherInterfaceSM"

    invoke-static {v6, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v6, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine$TetheredState;->this$0:Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;

    invoke-static {v6}, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->-get5(Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;)Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_4

    if-eqz v3, :cond_0

    :cond_4
    iget-object v6, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine$TetheredState;->this$0:Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;

    invoke-static {v6}, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->-get5(Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_6

    iget-object v6, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine$TetheredState;->this$0:Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;

    invoke-static {v6}, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->-get5(Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    :try_start_0
    const-string/jumbo v6, "SKT"

    invoke-static {}, Lcom/android/internal/telephony/TelephonyFeatures;->getMainOperatorName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_5

    const-string/jumbo v6, "KOO"

    invoke-static {}, Lcom/android/internal/telephony/TelephonyFeatures;->getMainOperatorName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_5

    iget-object v6, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine$TetheredState;->this$0:Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;

    invoke-static {v6}, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->-get6(Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;)Landroid/os/INetworkManagementService;

    move-result-object v6

    const-string/jumbo v7, "true"

    iget-object v8, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine$TetheredState;->this$0:Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;

    invoke-static {v8}, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->-get1(Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;)Ljava/lang/String;

    move-result-object v8

    iget-object v9, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine$TetheredState;->this$0:Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;

    iget-object v9, v9, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->mActualUpstreamIfaceName:Ljava/lang/String;

    invoke-interface {v6, v7, v8, v9}, Landroid/os/INetworkManagementService;->updateRa(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v6, "TetherInterfaceSM"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Exception update RA: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine$TetheredState;->cleanupUpstream()V

    :try_start_1
    iget-object v6, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine$TetheredState;->this$0:Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;

    invoke-static {v6}, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->-get6(Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;)Landroid/os/INetworkManagementService;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine$TetheredState;->this$0:Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;

    invoke-static {v7}, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->-get1(Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Landroid/os/INetworkManagementService;->untetherInterface(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4

    :goto_1
    iget-object v6, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine$TetheredState;->this$0:Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;

    invoke-static {v6, v11}, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->-set0(Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;I)I

    iget-object v6, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine$TetheredState;->this$0:Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;

    iget-object v7, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine$TetheredState;->this$0:Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;

    invoke-static {v7}, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->-get2(Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;)Lcom/android/internal/util/State;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->-wrap2(Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;Lcom/android/internal/util/IState;)V

    return v10

    :cond_5
    :try_start_2
    const-string/jumbo v6, "TetherInterfaceSM"

    const-string/jumbo v7, "don\'t sent RA, It can cause deactivation of some PDN "

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_0

    :cond_6
    invoke-direct {p0}, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine$TetheredState;->cleanupUpstream()V

    if-eqz v3, :cond_7

    :try_start_3
    iget-object v6, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine$TetheredState;->this$0:Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;

    invoke-static {v6}, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->-get6(Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;)Landroid/os/INetworkManagementService;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine$TetheredState;->this$0:Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;

    invoke-static {v7}, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->-get1(Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7, v3}, Landroid/os/INetworkManagementService;->enableNat(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v6, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine$TetheredState;->this$0:Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;

    invoke-static {v6}, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->-get6(Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;)Landroid/os/INetworkManagementService;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine$TetheredState;->this$0:Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;

    invoke-static {v7}, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->-get1(Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7, v3}, Landroid/os/INetworkManagementService;->startInterfaceForwarding(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    :try_start_4
    const-string/jumbo v6, "SKT"

    invoke-static {}, Lcom/android/internal/telephony/TelephonyFeatures;->getMainOperatorName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_a

    const-string/jumbo v6, "KOO"

    invoke-static {}, Lcom/android/internal/telephony/TelephonyFeatures;->getMainOperatorName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_a

    iget-object v6, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine$TetheredState;->this$0:Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;

    invoke-static {v6}, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->-get6(Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;)Landroid/os/INetworkManagementService;

    move-result-object v6

    const-string/jumbo v7, "true"

    iget-object v8, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine$TetheredState;->this$0:Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;

    invoke-static {v8}, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->-get1(Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;)Ljava/lang/String;

    move-result-object v8

    iget-object v9, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine$TetheredState;->this$0:Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;

    iget-object v9, v9, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->mActualUpstreamIfaceName:Ljava/lang/String;

    invoke-interface {v6, v7, v8, v9}, Landroid/os/INetworkManagementService;->updateRa(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    :cond_7
    :goto_2
    const-string/jumbo v6, "LGT"

    invoke-static {}, Lcom/android/internal/telephony/TelephonyFeatures;->getMainOperatorName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_8

    const-string/jumbo v6, "TEL"

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v7

    const-string/jumbo v8, "CscFeature_RIL_PDPRetryMechanism4"

    invoke-virtual {v7, v8}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_9

    :cond_8
    iget-object v6, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine$TetheredState;->this$0:Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;

    invoke-static {v6}, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->-get7(Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;)I

    move-result v6

    const/4 v7, 0x4

    if-ne v6, v7, :cond_9

    iget-object v6, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine$TetheredState;->this$0:Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;

    invoke-static {v6}, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->-get10(Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;)Lcom/android/internal/util/StateMachine;

    move-result-object v6

    const v7, 0x50007

    invoke-virtual {v6, v7}, Lcom/android/internal/util/StateMachine;->sendMessage(I)V

    :cond_9
    iget-object v6, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine$TetheredState;->this$0:Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;

    invoke-static {v6, v3}, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->-set1(Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_0

    :catch_1
    move-exception v0

    const-string/jumbo v6, "TetherInterfaceSM"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Exception enabling Nat: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v6, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine$TetheredState;->this$0:Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;

    invoke-static {v6, v11}, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->-set0(Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;I)I

    iget-object v6, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine$TetheredState;->this$0:Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;

    iget-object v7, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine$TetheredState;->this$0:Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;

    invoke-static {v7}, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->-get2(Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;)Lcom/android/internal/util/State;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->-wrap2(Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;Lcom/android/internal/util/IState;)V

    return v10

    :cond_a
    :try_start_5
    const-string/jumbo v6, "TetherInterfaceSM"

    const-string/jumbo v7, "don\'t sent RA, It can cause deactivation of some PDN "

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_2

    :catch_2
    move-exception v0

    const-string/jumbo v6, "TetherInterfaceSM"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Exception update RA: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine$TetheredState;->cleanupUpstream()V

    :try_start_6
    iget-object v6, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine$TetheredState;->this$0:Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;

    invoke-static {v6}, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->-get6(Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;)Landroid/os/INetworkManagementService;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine$TetheredState;->this$0:Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;

    invoke-static {v7}, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->-get1(Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Landroid/os/INetworkManagementService;->untetherInterface(Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    :goto_3
    iget-object v6, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine$TetheredState;->this$0:Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;

    invoke-static {v6, v11}, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->-set0(Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;I)I

    iget-object v6, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine$TetheredState;->this$0:Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;

    iget-object v7, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine$TetheredState;->this$0:Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;

    invoke-static {v7}, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->-get2(Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;)Lcom/android/internal/util/State;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->-wrap2(Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;Lcom/android/internal/util/IState;)V

    return v10

    :pswitch_4
    iget-object v6, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine$TetheredState;->this$0:Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;

    invoke-static {v6}, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->-get0(Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;)Lcom/android/server/connectivity/tethering/IPv6TetheringInterfaceServices;

    move-result-object v7

    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Landroid/net/LinkProperties;

    invoke-virtual {v7, v6}, Lcom/android/server/connectivity/tethering/IPv6TetheringInterfaceServices;->updateUpstreamIPv6LinkProperties(Landroid/net/LinkProperties;)V

    goto/16 :goto_0

    :pswitch_5
    iget-object v6, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine$TetheredState;->this$0:Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;

    const/4 v7, 0x5

    invoke-static {v6, v7}, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->-set0(Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;I)I

    iget-object v6, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine$TetheredState;->this$0:Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;

    iget-object v7, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine$TetheredState;->this$0:Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;

    invoke-static {v7}, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->-get2(Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;)Lcom/android/internal/util/State;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->-wrap2(Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;Lcom/android/internal/util/IState;)V

    goto/16 :goto_0

    :catch_3
    move-exception v1

    goto :goto_3

    :catch_4
    move-exception v1

    goto/16 :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x50067
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
