.class Lcom/android/server/policy/GlobalActions$25;
.super Lcom/android/server/policy/GlobalActions$ToggleAction;
.source "GlobalActions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/policy/GlobalActions;->makeActionsItems()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mIsFirstEmergency:Z

.field private mIsVT:Z

.field private mShowConditionalEmergency:Z

.field final synthetic this$0:Lcom/android/server/policy/GlobalActions;


# direct methods
.method constructor <init>(Lcom/android/server/policy/GlobalActions;IIIII)V
    .locals 7

    const/4 v6, 0x0

    iput-object p1, p0, Lcom/android/server/policy/GlobalActions$25;->this$0:Lcom/android/server/policy/GlobalActions;

    move-object v0, p0

    move v1, p2

    move v2, p3

    move v3, p4

    move v4, p5

    move v5, p6

    invoke-direct/range {v0 .. v5}, Lcom/android/server/policy/GlobalActions$ToggleAction;-><init>(IIIII)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/policy/GlobalActions$25;->mIsFirstEmergency:Z

    iput-boolean v6, p0, Lcom/android/server/policy/GlobalActions$25;->mShowConditionalEmergency:Z

    iput-boolean v6, p0, Lcom/android/server/policy/GlobalActions$25;->mIsVT:Z

    return-void
.end method


# virtual methods
.method protected changeStateFromPress(Z)V
    .locals 3

    const-string/jumbo v0, "GlobalActions"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "in changeStateFromPress of LongLifeMode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public isEnabled()Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/policy/GlobalActions$25;->this$0:Lcom/android/server/policy/GlobalActions;

    invoke-static {v0}, Lcom/android/server/policy/GlobalActions;->-get57(Lcom/android/server/policy/GlobalActions;)Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->isVideoCall()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/policy/GlobalActions$25;->mIsVT:Z

    iget-boolean v0, p0, Lcom/android/server/policy/GlobalActions$25;->mIsVT:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-super {p0}, Lcom/android/server/policy/GlobalActions$ToggleAction;->isEnabled()Z

    move-result v0

    return v0
.end method

.method public onPress()V
    .locals 7

    const/4 v1, 0x0

    const/4 v2, 0x1

    const-string/jumbo v3, "GlobalActions"

    const-string/jumbo v4, "in onPress of LongLifeMode"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/server/policy/GlobalActions$25;->this$0:Lcom/android/server/policy/GlobalActions;

    const-string/jumbo v4, "com.android.service.GlobalAction"

    const-string/jumbo v5, "0002"

    const-string/jumbo v6, "EmergencyMode"

    invoke-static {v3, v4, v5, v6}, Lcom/android/server/policy/GlobalActions;->-wrap31(Lcom/android/server/policy/GlobalActions;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/policy/GlobalActions$25;->this$0:Lcom/android/server/policy/GlobalActions;

    invoke-static {v3}, Lcom/android/server/policy/GlobalActions;->-wrap5(Lcom/android/server/policy/GlobalActions;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v1, p0, Lcom/android/server/policy/GlobalActions$25;->this$0:Lcom/android/server/policy/GlobalActions;

    const v3, 0x10407ed

    invoke-static {v1, v3, v2}, Lcom/android/server/policy/GlobalActions;->-wrap38(Lcom/android/server/policy/GlobalActions;II)V

    return-void

    :cond_0
    iget-object v3, p0, Lcom/android/server/policy/GlobalActions$25;->this$0:Lcom/android/server/policy/GlobalActions;

    invoke-static {v3}, Lcom/android/server/policy/GlobalActions;->-get13(Lcom/android/server/policy/GlobalActions;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "isBikeMode"

    invoke-static {v3, v4, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v2, :cond_1

    iget-object v1, p0, Lcom/android/server/policy/GlobalActions$25;->this$0:Lcom/android/server/policy/GlobalActions;

    const v3, 0x10408fc

    invoke-static {v1, v3, v2}, Lcom/android/server/policy/GlobalActions;->-wrap38(Lcom/android/server/policy/GlobalActions;II)V

    return-void

    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v3, "com.samsung.intent.action.EMERGENCY_START_SERVICE_BY_ORDER"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v3, "enabled"

    iget-object v4, p0, Lcom/android/server/policy/GlobalActions$25;->this$0:Lcom/android/server/policy/GlobalActions;

    invoke-static {v4}, Lcom/android/server/policy/GlobalActions;->-get13(Lcom/android/server/policy/GlobalActions;)Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/samsung/android/emergencymode/SemEmergencyManager;->isEmergencyMode(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_2

    :goto_0
    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string/jumbo v1, "flag"

    const/16 v2, 0x10

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/server/policy/GlobalActions$25;->this$0:Lcom/android/server/policy/GlobalActions;

    invoke-static {v1}, Lcom/android/server/policy/GlobalActions;->-get13(Lcom/android/server/policy/GlobalActions;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void

    :cond_2
    move v1, v2

    goto :goto_0
.end method

.method onToggle(Z)V
    .locals 3

    const-string/jumbo v0, "GlobalActions"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "in onToggle of LongLifeMode on = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public showBeforeProvisioning()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public showConditional()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/policy/GlobalActions$25;->mIsFirstEmergency:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/policy/GlobalActions$25;->showConditionalInternal()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/policy/GlobalActions$25;->mShowConditionalEmergency:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/policy/GlobalActions$25;->mIsFirstEmergency:Z

    :cond_0
    iget-boolean v0, p0, Lcom/android/server/policy/GlobalActions$25;->mShowConditionalEmergency:Z

    return v0
.end method

.method public showConditionalInternal()Z
    .locals 11

    const/4 v10, 0x0

    const/4 v9, 0x1

    const/4 v8, 0x0

    const-string/jumbo v5, "ril.domesticOtaStart"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v5, "true"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-static {}, Lcom/android/server/policy/GlobalActions;->-get1()Z

    move-result v5

    if-eqz v5, :cond_0

    const-string/jumbo v5, "GlobalActions"

    const-string/jumbo v6, "EmergencyMode is disable on OTA mode"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return v8

    :cond_1
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v5

    const-string/jumbo v6, "SEC_FLOATING_FEATURE_COMMON_SUPPORT_SAFETYCARE"

    invoke-virtual {v5, v6}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_9

    const-string/jumbo v5, "lock"

    iget-object v6, p0, Lcom/android/server/policy/GlobalActions$25;->this$0:Lcom/android/server/policy/GlobalActions;

    invoke-static {v6}, Lcom/android/server/policy/GlobalActions;->-get13(Lcom/android/server/policy/GlobalActions;)Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string/jumbo v7, "missing_phone_lock"

    invoke-static {v6, v7}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    return v8

    :cond_2
    iget-object v5, p0, Lcom/android/server/policy/GlobalActions$25;->this$0:Lcom/android/server/policy/GlobalActions;

    invoke-static {v5}, Lcom/android/server/policy/GlobalActions;->-get55(Lcom/android/server/policy/GlobalActions;)Lcom/samsung/android/emergencymode/SemEmergencyManager;

    move-result-object v5

    if-eqz v5, :cond_8

    iget-object v5, p0, Lcom/android/server/policy/GlobalActions$25;->this$0:Lcom/android/server/policy/GlobalActions;

    const-string/jumbo v6, "content://com.sec.knox.provider2/KioskMode"

    const-string/jumbo v7, "isKioskModeEnabled"

    invoke-static {v5, v6, v7, v10}, Lcom/android/server/policy/GlobalActions;->-wrap18(Lcom/android/server/policy/GlobalActions;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "true"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    const/4 v2, 0x1

    :goto_0
    iget-object v5, p0, Lcom/android/server/policy/GlobalActions$25;->this$0:Lcom/android/server/policy/GlobalActions;

    invoke-static {v5}, Lcom/android/server/policy/GlobalActions;->-get13(Lcom/android/server/policy/GlobalActions;)Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v6, "kids_home_mode"

    invoke-static {v5, v6, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-ne v5, v9, :cond_5

    const/4 v3, 0x1

    :goto_1
    iget-object v5, p0, Lcom/android/server/policy/GlobalActions$25;->this$0:Lcom/android/server/policy/GlobalActions;

    invoke-static {v5}, Lcom/android/server/policy/GlobalActions;->-get55(Lcom/android/server/policy/GlobalActions;)Lcom/samsung/android/emergencymode/SemEmergencyManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/samsung/android/emergencymode/SemEmergencyManager;->isEmergencyMode()Z

    move-result v5

    if-eqz v5, :cond_6

    iget-object v5, p0, Lcom/android/server/policy/GlobalActions$25;->this$0:Lcom/android/server/policy/GlobalActions;

    invoke-static {v5}, Lcom/android/server/policy/GlobalActions;->-get55(Lcom/android/server/policy/GlobalActions;)Lcom/samsung/android/emergencymode/SemEmergencyManager;

    move-result-object v5

    const/16 v6, 0x600

    invoke-virtual {v5, v6}, Lcom/samsung/android/emergencymode/SemEmergencyManager;->checkModeType(I)Z

    move-result v4

    :goto_2
    iget-object v5, p0, Lcom/android/server/policy/GlobalActions$25;->this$0:Lcom/android/server/policy/GlobalActions;

    invoke-static {v5}, Lcom/android/server/policy/GlobalActions;->-get55(Lcom/android/server/policy/GlobalActions;)Lcom/samsung/android/emergencymode/SemEmergencyManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/samsung/android/emergencymode/SemEmergencyManager;->canSetMode()Z

    move-result v0

    const-string/jumbo v5, "GlobalActions"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "kioskModeEnabled ="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "kidsModeEnabled ="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "upsmModeEnabled ="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "canSetMode ="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_3

    if-eqz v4, :cond_7

    :cond_3
    :goto_3
    return v8

    :cond_4
    const/4 v2, 0x0

    goto :goto_0

    :cond_5
    const/4 v3, 0x0

    goto :goto_1

    :cond_6
    const/4 v4, 0x0

    goto :goto_2

    :cond_7
    if-nez v3, :cond_3

    if-nez v2, :cond_3

    return v9

    :cond_8
    const-string/jumbo v5, "GlobalActions"

    const-string/jumbo v6, "mEmergency : mSemEmergencyManager is null"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :cond_9
    const-string/jumbo v5, "GlobalActions"

    const-string/jumbo v6, "mEmergency : SEC_FLOATING_FEATURE_COMMON_SUPPORT_SAFETYCARE is false"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3
.end method

.method public showDuringKeyguard()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
