.class Lcom/android/server/desktopmode/DesktopModeHwManager$9;
.super Landroid/content/BroadcastReceiver;
.source "DesktopModeHwManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/desktopmode/DesktopModeHwManager;-><init>(Landroid/content/Context;Lcom/android/server/desktopmode/SettingsHelper;Landroid/os/Looper;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/desktopmode/DesktopModeHwManager;


# direct methods
.method constructor <init>(Lcom/android/server/desktopmode/DesktopModeHwManager;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/desktopmode/DesktopModeHwManager$9;->this$0:Lcom/android/server/desktopmode/DesktopModeHwManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v5, "android.bluetooth.device.action.ACL_DISCONNECTED"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    const-string/jumbo v5, "com.samsung.bluetooth.device.extra.DISCONNECTION_REASON"

    const/4 v6, 0x0

    invoke-virtual {p2, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    const-string/jumbo v5, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {p2, v5}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/BluetoothDevice;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->getBluetoothClass()Landroid/bluetooth/BluetoothClass;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothClass;->semGetPeripheralMinorClass()I

    move-result v3

    sget-boolean v5, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v5, :cond_0

    invoke-static {}, Lcom/android/server/desktopmode/DesktopModeHwManager;->-get0()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "minorClass="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ", reason="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/16 v5, 0x13

    if-ne v4, v5, :cond_2

    const/16 v5, 0x580

    if-ne v3, v5, :cond_2

    iget-object v5, p0, Lcom/android/server/desktopmode/DesktopModeHwManager$9;->this$0:Lcom/android/server/desktopmode/DesktopModeHwManager;

    const/4 v6, 0x1

    invoke-static {v5, v6}, Lcom/android/server/desktopmode/DesktopModeHwManager;->-set0(Lcom/android/server/desktopmode/DesktopModeHwManager;Z)Z

    sget-boolean v5, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v5, :cond_1

    invoke-static {}, Lcom/android/server/desktopmode/DesktopModeHwManager;->-get0()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "mIsBtMouseDeepSleep=true"

    invoke-static {v5, v6}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v5, p0, Lcom/android/server/desktopmode/DesktopModeHwManager$9;->this$0:Lcom/android/server/desktopmode/DesktopModeHwManager;

    invoke-static {v5}, Lcom/android/server/desktopmode/DesktopModeHwManager;->-get9(Lcom/android/server/desktopmode/DesktopModeHwManager;)Z

    move-result v5

    if-nez v5, :cond_2

    iget-object v5, p0, Lcom/android/server/desktopmode/DesktopModeHwManager$9;->this$0:Lcom/android/server/desktopmode/DesktopModeHwManager;

    invoke-static {v5}, Lcom/android/server/desktopmode/DesktopModeHwManager;->-wrap2(Lcom/android/server/desktopmode/DesktopModeHwManager;)Z

    :cond_2
    :goto_0
    return-void

    :cond_3
    const-string/jumbo v5, "android.intent.action.ACTION_POWER_CONNECTED"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    sget-boolean v5, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v5, :cond_4

    invoke-static {}, Lcom/android/server/desktopmode/DesktopModeHwManager;->-get0()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "onReceive() in DesktopModeHwManager, action="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    iget-object v5, p0, Lcom/android/server/desktopmode/DesktopModeHwManager$9;->this$0:Lcom/android/server/desktopmode/DesktopModeHwManager;

    invoke-virtual {v5}, Lcom/android/server/desktopmode/DesktopModeHwManager;->isDexPadConnected()Z

    move-result v5

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/android/server/desktopmode/DesktopModeHwManager$9;->this$0:Lcom/android/server/desktopmode/DesktopModeHwManager;

    invoke-virtual {v5}, Lcom/android/server/desktopmode/DesktopModeHwManager;->isDockFotaUpdateInProgress()Z

    move-result v5

    xor-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/android/server/desktopmode/DesktopModeHwManager$9;->this$0:Lcom/android/server/desktopmode/DesktopModeHwManager;

    invoke-static {v5}, Lcom/android/server/desktopmode/DesktopModeHwManager;->-get4(Lcom/android/server/desktopmode/DesktopModeHwManager;)Lcom/android/server/desktopmode/DockManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/server/desktopmode/DockManager;->updateAdaptiveFastChargingSettingsEnabled()V

    iget-object v5, p0, Lcom/android/server/desktopmode/DesktopModeHwManager$9;->this$0:Lcom/android/server/desktopmode/DesktopModeHwManager;

    invoke-static {v5}, Lcom/android/server/desktopmode/DesktopModeHwManager;->-get4(Lcom/android/server/desktopmode/DesktopModeHwManager;)Lcom/android/server/desktopmode/DockManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/server/desktopmode/DockManager;->requestConnectedPowerChargerInfoUpdate()V

    goto :goto_0

    :cond_5
    const-string/jumbo v5, "android.intent.action.ACTION_POWER_DISCONNECTED"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    sget-boolean v5, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v5, :cond_6

    invoke-static {}, Lcom/android/server/desktopmode/DesktopModeHwManager;->-get0()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "onReceive() in DesktopModeHwManager, action="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    iget-object v5, p0, Lcom/android/server/desktopmode/DesktopModeHwManager$9;->this$0:Lcom/android/server/desktopmode/DesktopModeHwManager;

    invoke-virtual {v5}, Lcom/android/server/desktopmode/DesktopModeHwManager;->isDexPadConnected()Z

    move-result v5

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/android/server/desktopmode/DesktopModeHwManager$9;->this$0:Lcom/android/server/desktopmode/DesktopModeHwManager;

    invoke-virtual {v5}, Lcom/android/server/desktopmode/DesktopModeHwManager;->isDockFotaUpdateInProgress()Z

    move-result v5

    xor-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/android/server/desktopmode/DesktopModeHwManager$9;->this$0:Lcom/android/server/desktopmode/DesktopModeHwManager;

    invoke-static {v5}, Lcom/android/server/desktopmode/DesktopModeHwManager;->-get4(Lcom/android/server/desktopmode/DesktopModeHwManager;)Lcom/android/server/desktopmode/DockManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/server/desktopmode/DockManager;->updateAdaptiveFastChargingSettingsEnabled()V

    iget-object v5, p0, Lcom/android/server/desktopmode/DesktopModeHwManager$9;->this$0:Lcom/android/server/desktopmode/DesktopModeHwManager;

    invoke-static {v5}, Lcom/android/server/desktopmode/DesktopModeHwManager;->-get4(Lcom/android/server/desktopmode/DesktopModeHwManager;)Lcom/android/server/desktopmode/DockManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/server/desktopmode/DockManager;->requestConnectedPowerChargerInfoUpdate()V

    goto/16 :goto_0
.end method
