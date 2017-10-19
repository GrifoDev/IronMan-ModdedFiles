.class Lcom/android/server/am/MARsTrigger$2;
.super Landroid/content/BroadcastReceiver;
.source "MARsTrigger.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/MARsTrigger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/MARsTrigger;


# direct methods
.method constructor <init>(Lcom/android/server/am/MARsTrigger;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/am/MARsTrigger$2;->this$0:Lcom/android/server/am/MARsTrigger;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 12

    const/4 v11, 0x3

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v6, "com.android.server.am.ACTION_UI_SET_ALWAYS_OPTIMIZING"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    const-string/jumbo v6, "com.android.server.am.ACTION_SMUI_SETTING_TRUN_ON"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    const-string/jumbo v6, "com.android.server.am.ACTION_PACKAGE_NOTUSED_RECENTLY"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    :cond_0
    iget-object v6, p0, Lcom/android/server/am/MARsTrigger$2;->this$0:Lcom/android/server/am/MARsTrigger;

    iget-object v7, p0, Lcom/android/server/am/MARsTrigger$2;->this$0:Lcom/android/server/am/MARsTrigger;

    invoke-static {v7, v0}, Lcom/android/server/am/MARsTrigger;->-wrap2(Lcom/android/server/am/MARsTrigger;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v9, v7}, Lcom/android/server/am/MARsTrigger;->-wrap4(Lcom/android/server/am/MARsTrigger;ILjava/lang/String;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    const-string/jumbo v6, "FIRST_ALARM_APPLOCKER"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    const-string/jumbo v6, "REPEAT_ALARM_APPLOCKER"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    :cond_3
    iget-object v6, p0, Lcom/android/server/am/MARsTrigger$2;->this$0:Lcom/android/server/am/MARsTrigger;

    iget-object v6, v6, Lcom/android/server/am/MARsTrigger;->mPolicyManager:Lcom/android/server/am/MARsPolicyManager;

    invoke-virtual {v6}, Lcom/android/server/am/MARsPolicyManager;->getScreenOnState()Z

    move-result v6

    if-nez v6, :cond_1

    iget-object v6, p0, Lcom/android/server/am/MARsTrigger$2;->this$0:Lcom/android/server/am/MARsTrigger;

    iget-object v7, p0, Lcom/android/server/am/MARsTrigger$2;->this$0:Lcom/android/server/am/MARsTrigger;

    invoke-static {v7, v0}, Lcom/android/server/am/MARsTrigger;->-wrap2(Lcom/android/server/am/MARsTrigger;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v9, v7}, Lcom/android/server/am/MARsTrigger;->-wrap4(Lcom/android/server/am/MARsTrigger;ILjava/lang/String;)V

    iget-object v6, p0, Lcom/android/server/am/MARsTrigger$2;->this$0:Lcom/android/server/am/MARsTrigger;

    const-string/jumbo v7, "REPEAT_ALARM_APPLOCKER"

    iget-object v8, p0, Lcom/android/server/am/MARsTrigger$2;->this$0:Lcom/android/server/am/MARsTrigger;

    iget-wide v8, v8, Lcom/android/server/am/MARsTrigger;->mAppLockerRepeatAlarmInterval:J

    invoke-static {v6, v7, v8, v9}, Lcom/android/server/am/MARsTrigger;->-wrap3(Lcom/android/server/am/MARsTrigger;Ljava/lang/String;J)V

    goto :goto_0

    :cond_4
    const-string/jumbo v6, "com.android.server.am.ACTION_UI_SET_AUTORUN_OFF"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    iget-object v6, p0, Lcom/android/server/am/MARsTrigger$2;->this$0:Lcom/android/server/am/MARsTrigger;

    iget-object v7, p0, Lcom/android/server/am/MARsTrigger$2;->this$0:Lcom/android/server/am/MARsTrigger;

    invoke-static {v7, v0}, Lcom/android/server/am/MARsTrigger;->-wrap2(Lcom/android/server/am/MARsTrigger;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v10, v7}, Lcom/android/server/am/MARsTrigger;->-wrap4(Lcom/android/server/am/MARsTrigger;ILjava/lang/String;)V

    goto :goto_0

    :cond_5
    const-string/jumbo v6, "FIRST_ALARM_AUTORUN"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_6

    const-string/jumbo v6, "REPEAT_ALARM_AUTORUN"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    :cond_6
    iget-object v6, p0, Lcom/android/server/am/MARsTrigger$2;->this$0:Lcom/android/server/am/MARsTrigger;

    iget-object v6, v6, Lcom/android/server/am/MARsTrigger;->mPolicyManager:Lcom/android/server/am/MARsPolicyManager;

    invoke-virtual {v6}, Lcom/android/server/am/MARsPolicyManager;->getScreenOnState()Z

    move-result v6

    if-nez v6, :cond_1

    iget-object v6, p0, Lcom/android/server/am/MARsTrigger$2;->this$0:Lcom/android/server/am/MARsTrigger;

    iget-object v7, p0, Lcom/android/server/am/MARsTrigger$2;->this$0:Lcom/android/server/am/MARsTrigger;

    invoke-static {v7, v0}, Lcom/android/server/am/MARsTrigger;->-wrap2(Lcom/android/server/am/MARsTrigger;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v10, v7}, Lcom/android/server/am/MARsTrigger;->-wrap4(Lcom/android/server/am/MARsTrigger;ILjava/lang/String;)V

    iget-object v6, p0, Lcom/android/server/am/MARsTrigger$2;->this$0:Lcom/android/server/am/MARsTrigger;

    iget-object v6, v6, Lcom/android/server/am/MARsTrigger;->mHandler:Lcom/android/server/am/MARsTrigger$MARsTriggerHandler;

    new-instance v7, Lcom/android/server/am/MARsTrigger$2$1;

    invoke-direct {v7, p0}, Lcom/android/server/am/MARsTrigger$2$1;-><init>(Lcom/android/server/am/MARsTrigger$2;)V

    const-wide/16 v8, 0x64

    invoke-virtual {v6, v7, v8, v9}, Lcom/android/server/am/MARsTrigger$MARsTriggerHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_7
    const-string/jumbo v6, "FIRST_ALARM_AUTORUN_TRAFFIC_STAT"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    iget-object v6, p0, Lcom/android/server/am/MARsTrigger$2;->this$0:Lcom/android/server/am/MARsTrigger;

    iget-object v6, v6, Lcom/android/server/am/MARsTrigger;->mPolicyManager:Lcom/android/server/am/MARsPolicyManager;

    invoke-virtual {v6}, Lcom/android/server/am/MARsPolicyManager;->getScreenOnState()Z

    move-result v6

    if-nez v6, :cond_1

    iget-object v6, p0, Lcom/android/server/am/MARsTrigger$2;->this$0:Lcom/android/server/am/MARsTrigger;

    iget-object v6, v6, Lcom/android/server/am/MARsTrigger;->mPolicyManager:Lcom/android/server/am/MARsPolicyManager;

    invoke-virtual {v6}, Lcom/android/server/am/MARsPolicyManager;->updateTrafficStat()V

    iget-object v6, p0, Lcom/android/server/am/MARsTrigger$2;->this$0:Lcom/android/server/am/MARsTrigger;

    iget-object v6, v6, Lcom/android/server/am/MARsTrigger;->mPolicyManager:Lcom/android/server/am/MARsPolicyManager;

    invoke-virtual {v6}, Lcom/android/server/am/MARsPolicyManager;->updateLocationStat()V

    iget-object v6, p0, Lcom/android/server/am/MARsTrigger$2;->this$0:Lcom/android/server/am/MARsTrigger;

    const-string/jumbo v7, "FIRST_ALARM_AUTORUN"

    iget-object v8, p0, Lcom/android/server/am/MARsTrigger$2;->this$0:Lcom/android/server/am/MARsTrigger;

    iget-wide v8, v8, Lcom/android/server/am/MARsTrigger;->mAutoRunTrafficStatCollectorInterval:J

    invoke-static {v6, v7, v8, v9}, Lcom/android/server/am/MARsTrigger;->-wrap3(Lcom/android/server/am/MARsTrigger;Ljava/lang/String;J)V

    goto/16 :goto_0

    :cond_8
    const-string/jumbo v6, "REPEAT_ALARM_AUTORUN_TRAFFIC_STAT"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_9

    iget-object v6, p0, Lcom/android/server/am/MARsTrigger$2;->this$0:Lcom/android/server/am/MARsTrigger;

    iget-object v6, v6, Lcom/android/server/am/MARsTrigger;->mPolicyManager:Lcom/android/server/am/MARsPolicyManager;

    invoke-virtual {v6}, Lcom/android/server/am/MARsPolicyManager;->getScreenOnState()Z

    move-result v6

    if-nez v6, :cond_1

    iget-object v6, p0, Lcom/android/server/am/MARsTrigger$2;->this$0:Lcom/android/server/am/MARsTrigger;

    iget-object v6, v6, Lcom/android/server/am/MARsTrigger;->mPolicyManager:Lcom/android/server/am/MARsPolicyManager;

    invoke-virtual {v6}, Lcom/android/server/am/MARsPolicyManager;->updateTrafficStat()V

    iget-object v6, p0, Lcom/android/server/am/MARsTrigger$2;->this$0:Lcom/android/server/am/MARsTrigger;

    iget-object v6, v6, Lcom/android/server/am/MARsTrigger;->mPolicyManager:Lcom/android/server/am/MARsPolicyManager;

    invoke-virtual {v6}, Lcom/android/server/am/MARsPolicyManager;->updateLocationStat()V

    iget-object v6, p0, Lcom/android/server/am/MARsTrigger$2;->this$0:Lcom/android/server/am/MARsTrigger;

    const-string/jumbo v7, "REPEAT_ALARM_AUTORUN"

    iget-object v8, p0, Lcom/android/server/am/MARsTrigger$2;->this$0:Lcom/android/server/am/MARsTrigger;

    iget-wide v8, v8, Lcom/android/server/am/MARsTrigger;->mAutoRunTrafficStatCollectorInterval:J

    invoke-static {v6, v7, v8, v9}, Lcom/android/server/am/MARsTrigger;->-wrap3(Lcom/android/server/am/MARsTrigger;Ljava/lang/String;J)V

    goto/16 :goto_0

    :cond_9
    const-string/jumbo v6, "com.samsung.intent.action.SET_RUNNING_LOCATION"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_a

    :try_start_0
    iget-object v6, p0, Lcom/android/server/am/MARsTrigger$2;->this$0:Lcom/android/server/am/MARsTrigger;

    iget-object v6, v6, Lcom/android/server/am/MARsTrigger;->mPolicyManager:Lcom/android/server/am/MARsPolicyManager;

    invoke-virtual {v6, p2}, Lcom/android/server/am/MARsPolicyManager;->updateRunningLocationPackages(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v1

    const-string/jumbo v6, "MARsTrigger"

    const-string/jumbo v7, "RuntimeException occurred in mPolicyIntentReceiver!"

    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_a
    const-string/jumbo v6, "com.samsung.android.server.am.ACTION_UI_TRIGGER_POLICY"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_b

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    if-eqz v2, :cond_1

    const-string/jumbo v6, "POLICY_NAME"

    const-string/jumbo v7, ""

    invoke-virtual {v2, v6, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-object v6, p0, Lcom/android/server/am/MARsTrigger$2;->this$0:Lcom/android/server/am/MARsTrigger;

    invoke-static {v6, v4}, Lcom/android/server/am/MARsTrigger;->-wrap1(Lcom/android/server/am/MARsTrigger;Ljava/lang/String;)I

    move-result v5

    const-string/jumbo v6, "PACKAGE_NAME"

    invoke-virtual {v2, v6}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    if-eqz v5, :cond_1

    if-eqz v3, :cond_1

    iget-object v6, p0, Lcom/android/server/am/MARsTrigger$2;->this$0:Lcom/android/server/am/MARsTrigger;

    iget-object v6, v6, Lcom/android/server/am/MARsTrigger;->mPolicyManager:Lcom/android/server/am/MARsPolicyManager;

    invoke-virtual {v6, v5, v3}, Lcom/android/server/am/MARsPolicyManager;->forceRunPolicyForSpecificPackage(ILjava/util/ArrayList;)V

    goto/16 :goto_0

    :cond_b
    const-string/jumbo v6, "FIRST_ALARM_ARES_TRAFFIC_STAT"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_c

    iget-object v6, p0, Lcom/android/server/am/MARsTrigger$2;->this$0:Lcom/android/server/am/MARsTrigger;

    const-string/jumbo v7, "force"

    invoke-virtual {p2, v7, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v7

    invoke-static {v6, v7}, Lcom/android/server/am/MARsTrigger;->-set1(Lcom/android/server/am/MARsTrigger;Z)Z

    iget-object v6, p0, Lcom/android/server/am/MARsTrigger$2;->this$0:Lcom/android/server/am/MARsTrigger;

    iget-object v6, v6, Lcom/android/server/am/MARsTrigger;->mPolicyManager:Lcom/android/server/am/MARsPolicyManager;

    invoke-virtual {v6}, Lcom/android/server/am/MARsPolicyManager;->getScreenOnState()Z

    move-result v6

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/android/server/am/MARsTrigger$2;->this$0:Lcom/android/server/am/MARsTrigger;

    iget-object v6, v6, Lcom/android/server/am/MARsTrigger;->mPolicyManager:Lcom/android/server/am/MARsPolicyManager;

    invoke-virtual {v6}, Lcom/android/server/am/MARsPolicyManager;->getCarModeOnState()Z

    move-result v6

    if-nez v6, :cond_1

    iget-object v6, p0, Lcom/android/server/am/MARsTrigger$2;->this$0:Lcom/android/server/am/MARsTrigger;

    iget-object v6, v6, Lcom/android/server/am/MARsTrigger;->mPolicyManager:Lcom/android/server/am/MARsPolicyManager;

    invoke-virtual {v6}, Lcom/android/server/am/MARsPolicyManager;->updateTrafficStat()V

    iget-object v6, p0, Lcom/android/server/am/MARsTrigger$2;->this$0:Lcom/android/server/am/MARsTrigger;

    iget-object v6, v6, Lcom/android/server/am/MARsTrigger;->mPolicyManager:Lcom/android/server/am/MARsPolicyManager;

    invoke-virtual {v6}, Lcom/android/server/am/MARsPolicyManager;->updateLocationStat()V

    iget-object v6, p0, Lcom/android/server/am/MARsTrigger$2;->this$0:Lcom/android/server/am/MARsTrigger;

    const-string/jumbo v7, "ALARM_ARES_MEMORY_NOT_ENOUGH"

    iget-object v8, p0, Lcom/android/server/am/MARsTrigger$2;->this$0:Lcom/android/server/am/MARsTrigger;

    iget-wide v8, v8, Lcom/android/server/am/MARsTrigger;->mAutoRunTrafficStatCollectorInterval:J

    invoke-static {v6, v7, v8, v9}, Lcom/android/server/am/MARsTrigger;->-wrap3(Lcom/android/server/am/MARsTrigger;Ljava/lang/String;J)V

    goto/16 :goto_0

    :cond_c
    const-string/jumbo v6, "com.android.server.am.ACTION_UI_SET_ARES"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_d

    iget-object v6, p0, Lcom/android/server/am/MARsTrigger$2;->this$0:Lcom/android/server/am/MARsTrigger;

    iget-object v7, p0, Lcom/android/server/am/MARsTrigger$2;->this$0:Lcom/android/server/am/MARsTrigger;

    invoke-static {v7, v0}, Lcom/android/server/am/MARsTrigger;->-wrap2(Lcom/android/server/am/MARsTrigger;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v11, v7}, Lcom/android/server/am/MARsTrigger;->-wrap4(Lcom/android/server/am/MARsTrigger;ILjava/lang/String;)V

    goto/16 :goto_0

    :cond_d
    const-string/jumbo v6, "com.android.server.am.ACTION_MEMORY_NOT_ENOUGH_ARES"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_e

    iget-object v6, p0, Lcom/android/server/am/MARsTrigger$2;->this$0:Lcom/android/server/am/MARsTrigger;

    iget-object v6, v6, Lcom/android/server/am/MARsTrigger;->mPolicyManager:Lcom/android/server/am/MARsPolicyManager;

    invoke-virtual {v6}, Lcom/android/server/am/MARsPolicyManager;->getScreenOnState()Z

    move-result v6

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/android/server/am/MARsTrigger$2;->this$0:Lcom/android/server/am/MARsTrigger;

    iget-object v6, v6, Lcom/android/server/am/MARsTrigger;->mPolicyManager:Lcom/android/server/am/MARsPolicyManager;

    invoke-virtual {v6}, Lcom/android/server/am/MARsPolicyManager;->getCarModeOnState()Z

    move-result v6

    if-nez v6, :cond_1

    iget-object v6, p0, Lcom/android/server/am/MARsTrigger$2;->this$0:Lcom/android/server/am/MARsTrigger;

    iget-object v6, v6, Lcom/android/server/am/MARsTrigger;->mPolicyManager:Lcom/android/server/am/MARsPolicyManager;

    invoke-virtual {v6}, Lcom/android/server/am/MARsPolicyManager;->updateTrafficStat()V

    iget-object v6, p0, Lcom/android/server/am/MARsTrigger$2;->this$0:Lcom/android/server/am/MARsTrigger;

    iget-object v6, v6, Lcom/android/server/am/MARsTrigger;->mPolicyManager:Lcom/android/server/am/MARsPolicyManager;

    invoke-virtual {v6}, Lcom/android/server/am/MARsPolicyManager;->updateLocationStat()V

    iget-object v6, p0, Lcom/android/server/am/MARsTrigger$2;->this$0:Lcom/android/server/am/MARsTrigger;

    const-string/jumbo v7, "ALARM_ARES_MEMORY_NOT_ENOUGH"

    iget-object v8, p0, Lcom/android/server/am/MARsTrigger$2;->this$0:Lcom/android/server/am/MARsTrigger;

    iget-wide v8, v8, Lcom/android/server/am/MARsTrigger;->mAutoRunTrafficStatCollectorInterval:J

    invoke-static {v6, v7, v8, v9}, Lcom/android/server/am/MARsTrigger;->-wrap3(Lcom/android/server/am/MARsTrigger;Ljava/lang/String;J)V

    goto/16 :goto_0

    :cond_e
    const-string/jumbo v6, "ALARM_ARES_MEMORY_NOT_ENOUGH"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/android/server/am/MARsTrigger$2;->this$0:Lcom/android/server/am/MARsTrigger;

    iget-object v6, v6, Lcom/android/server/am/MARsTrigger;->mPolicyManager:Lcom/android/server/am/MARsPolicyManager;

    invoke-virtual {v6}, Lcom/android/server/am/MARsPolicyManager;->getScreenOnState()Z

    move-result v6

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/android/server/am/MARsTrigger$2;->this$0:Lcom/android/server/am/MARsTrigger;

    iget-object v6, v6, Lcom/android/server/am/MARsTrigger;->mPolicyManager:Lcom/android/server/am/MARsPolicyManager;

    invoke-virtual {v6}, Lcom/android/server/am/MARsPolicyManager;->getCarModeOnState()Z

    move-result v6

    if-nez v6, :cond_1

    iget-object v6, p0, Lcom/android/server/am/MARsTrigger$2;->this$0:Lcom/android/server/am/MARsTrigger;

    iget-object v6, v6, Lcom/android/server/am/MARsTrigger;->mPolicyManager:Lcom/android/server/am/MARsPolicyManager;

    invoke-virtual {v6}, Lcom/android/server/am/MARsPolicyManager;->updateTrafficStat()V

    iget-object v6, p0, Lcom/android/server/am/MARsTrigger$2;->this$0:Lcom/android/server/am/MARsTrigger;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-static {v6, v8, v9}, Lcom/android/server/am/MARsTrigger;->-set2(Lcom/android/server/am/MARsTrigger;J)J

    iget-object v6, p0, Lcom/android/server/am/MARsTrigger$2;->this$0:Lcom/android/server/am/MARsTrigger;

    iget-object v6, v6, Lcom/android/server/am/MARsTrigger;->mPolicyManager:Lcom/android/server/am/MARsPolicyManager;

    iget-object v7, p0, Lcom/android/server/am/MARsTrigger$2;->this$0:Lcom/android/server/am/MARsTrigger;

    invoke-static {v7}, Lcom/android/server/am/MARsTrigger;->-get2(Lcom/android/server/am/MARsTrigger;)Z

    move-result v7

    invoke-virtual {v6, v11, v7}, Lcom/android/server/am/MARsPolicyManager;->forceRunPolicyForMemoryNotEnough(IZ)V

    goto/16 :goto_0
.end method
