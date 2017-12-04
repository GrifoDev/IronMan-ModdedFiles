.class Lcom/android/systemui/qs/tiles/FlashlightTile$1;
.super Landroid/content/BroadcastReceiver;
.source "FlashlightTile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/tiles/FlashlightTile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/tiles/FlashlightTile;


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/tiles/FlashlightTile;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/FlashlightTile$1;->this$0:Lcom/android/systemui/qs/tiles/FlashlightTile;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 9

    const/4 v6, 0x1

    const/4 v8, 0x0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v5, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/android/systemui/qs/tiles/FlashlightTile$1;->this$0:Lcom/android/systemui/qs/tiles/FlashlightTile;

    invoke-static {v5}, Lcom/android/systemui/qs/tiles/FlashlightTile;->-get4(Lcom/android/systemui/qs/tiles/FlashlightTile;)Lcom/android/systemui/statusbar/policy/FlashlightController;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/policy/FlashlightController;->isEnabled()Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/systemui/qs/tiles/FlashlightTile$1;->this$0:Lcom/android/systemui/qs/tiles/FlashlightTile;

    invoke-static {v5, v6}, Lcom/android/systemui/qs/tiles/FlashlightTile;->-wrap2(Lcom/android/systemui/qs/tiles/FlashlightTile;Z)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string/jumbo v5, "com.samsung.systemui.statusbar.action.FLASHLIGHT_OFF"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    const-string/jumbo v5, "android.intent.action.ACTION_SHUTDOWN"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    :cond_2
    iget-object v5, p0, Lcom/android/systemui/qs/tiles/FlashlightTile$1;->this$0:Lcom/android/systemui/qs/tiles/FlashlightTile;

    invoke-static {v5}, Lcom/android/systemui/qs/tiles/FlashlightTile;->-get1(Lcom/android/systemui/qs/tiles/FlashlightTile;)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "onReceive : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Lcom/android/systemui/qs/tiles/FlashlightTile$1;->this$0:Lcom/android/systemui/qs/tiles/FlashlightTile;

    invoke-static {v5}, Lcom/android/systemui/qs/tiles/FlashlightTile;->-get4(Lcom/android/systemui/qs/tiles/FlashlightTile;)Lcom/android/systemui/statusbar/policy/FlashlightController;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/policy/FlashlightController;->isEnabled()Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/systemui/qs/tiles/FlashlightTile$1;->this$0:Lcom/android/systemui/qs/tiles/FlashlightTile;

    invoke-static {v5}, Lcom/android/systemui/qs/tiles/FlashlightTile;->-get4(Lcom/android/systemui/qs/tiles/FlashlightTile;)Lcom/android/systemui/statusbar/policy/FlashlightController;

    move-result-object v5

    invoke-virtual {v5, v8}, Lcom/android/systemui/statusbar/policy/FlashlightController;->setFlashlight(Z)V

    goto :goto_0

    :cond_3
    const-string/jumbo v5, "com.samsung.intent.action.SIOP_LEVEL_CHANGED"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v5

    const-string/jumbo v6, "flash_led_disable"

    invoke-virtual {v5, v6, v8}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    iget-object v5, p0, Lcom/android/systemui/qs/tiles/FlashlightTile$1;->this$0:Lcom/android/systemui/qs/tiles/FlashlightTile;

    invoke-static {v5}, Lcom/android/systemui/qs/tiles/FlashlightTile;->-get1(Lcom/android/systemui/qs/tiles/FlashlightTile;)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "onReceive : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " limitFlash "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Lcom/android/systemui/qs/tiles/FlashlightTile$1;->this$0:Lcom/android/systemui/qs/tiles/FlashlightTile;

    invoke-static {v5}, Lcom/android/systemui/qs/tiles/FlashlightTile;->-get4(Lcom/android/systemui/qs/tiles/FlashlightTile;)Lcom/android/systemui/statusbar/policy/FlashlightController;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/policy/FlashlightController;->isEnabled()Z

    move-result v5

    if-eqz v5, :cond_0

    if-eqz v4, :cond_0

    iget-object v5, p0, Lcom/android/systemui/qs/tiles/FlashlightTile$1;->this$0:Lcom/android/systemui/qs/tiles/FlashlightTile;

    invoke-static {v5}, Lcom/android/systemui/qs/tiles/FlashlightTile;->-get4(Lcom/android/systemui/qs/tiles/FlashlightTile;)Lcom/android/systemui/statusbar/policy/FlashlightController;

    move-result-object v5

    invoke-virtual {v5, v8}, Lcom/android/systemui/statusbar/policy/FlashlightController;->setFlashlight(Z)V

    goto/16 :goto_0

    :cond_4
    const-string/jumbo v5, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const-string/jumbo v5, "level"

    invoke-virtual {p2, v5, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    const-string/jumbo v5, "status"

    invoke-virtual {p2, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    const/4 v5, 0x5

    if-gt v2, v5, :cond_5

    const/4 v5, 0x2

    if-eq v1, v5, :cond_5

    iget-object v5, p0, Lcom/android/systemui/qs/tiles/FlashlightTile$1;->this$0:Lcom/android/systemui/qs/tiles/FlashlightTile;

    invoke-static {v5, v6}, Lcom/android/systemui/qs/tiles/FlashlightTile;->-set0(Lcom/android/systemui/qs/tiles/FlashlightTile;Z)Z

    iget-object v5, p0, Lcom/android/systemui/qs/tiles/FlashlightTile$1;->this$0:Lcom/android/systemui/qs/tiles/FlashlightTile;

    invoke-static {v5}, Lcom/android/systemui/qs/tiles/FlashlightTile;->-get2(Lcom/android/systemui/qs/tiles/FlashlightTile;)Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/android/keyguard/util/SettingsHelper;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/util/SettingsHelper;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/keyguard/util/SettingsHelper;->isEmergencyMode()Z

    move-result v3

    iget-object v5, p0, Lcom/android/systemui/qs/tiles/FlashlightTile$1;->this$0:Lcom/android/systemui/qs/tiles/FlashlightTile;

    invoke-static {v5}, Lcom/android/systemui/qs/tiles/FlashlightTile;->-get1(Lcom/android/systemui/qs/tiles/FlashlightTile;)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "ACTION_BATTERY_CHANGED - Level :: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ", emEnabled :: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Lcom/android/systemui/qs/tiles/FlashlightTile$1;->this$0:Lcom/android/systemui/qs/tiles/FlashlightTile;

    invoke-static {v5}, Lcom/android/systemui/qs/tiles/FlashlightTile;->-get4(Lcom/android/systemui/qs/tiles/FlashlightTile;)Lcom/android/systemui/statusbar/policy/FlashlightController;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/policy/FlashlightController;->isEnabled()Z

    move-result v5

    if-eqz v5, :cond_0

    if-nez v3, :cond_0

    iget-object v5, p0, Lcom/android/systemui/qs/tiles/FlashlightTile$1;->this$0:Lcom/android/systemui/qs/tiles/FlashlightTile;

    iget-object v6, p0, Lcom/android/systemui/qs/tiles/FlashlightTile$1;->this$0:Lcom/android/systemui/qs/tiles/FlashlightTile;

    invoke-static {v6}, Lcom/android/systemui/qs/tiles/FlashlightTile;->-get2(Lcom/android/systemui/qs/tiles/FlashlightTile;)Landroid/content/Context;

    move-result-object v6

    const v7, 0x7f0f04ee

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/systemui/qs/tiles/FlashlightTile;->-wrap1(Lcom/android/systemui/qs/tiles/FlashlightTile;Ljava/lang/CharSequence;)V

    iget-object v5, p0, Lcom/android/systemui/qs/tiles/FlashlightTile$1;->this$0:Lcom/android/systemui/qs/tiles/FlashlightTile;

    invoke-static {v5}, Lcom/android/systemui/qs/tiles/FlashlightTile;->-get4(Lcom/android/systemui/qs/tiles/FlashlightTile;)Lcom/android/systemui/statusbar/policy/FlashlightController;

    move-result-object v5

    invoke-virtual {v5, v8}, Lcom/android/systemui/statusbar/policy/FlashlightController;->setFlashlight(Z)V

    goto/16 :goto_0

    :cond_5
    iget-object v5, p0, Lcom/android/systemui/qs/tiles/FlashlightTile$1;->this$0:Lcom/android/systemui/qs/tiles/FlashlightTile;

    invoke-static {v5, v8}, Lcom/android/systemui/qs/tiles/FlashlightTile;->-set0(Lcom/android/systemui/qs/tiles/FlashlightTile;Z)Z

    goto/16 :goto_0
.end method
