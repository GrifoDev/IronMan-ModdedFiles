.class Lcom/android/server/desktopmode/EmergencyModeBlocker;
.super Landroid/content/BroadcastReceiver;
.source "EmergencyModeBlocker.java"

# interfaces
.implements Lcom/samsung/android/desktopmode/SemDesktopModeManager$DesktopModeBlocker;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/desktopmode/EmergencyModeBlocker$H;
    }
.end annotation


# static fields
.field private static final DELAY_UPDATE:I = 0x2710

.field private static final MSG_UPDATE:I = 0x1

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mBlockerRegistered:Z

.field private mContext:Landroid/content/Context;

.field private mH:Lcom/android/server/desktopmode/EmergencyModeBlocker$H;

.field private mManager:Lcom/samsung/android/desktopmode/SemDesktopModeManager;


# direct methods
.method static synthetic -wrap0(Lcom/android/server/desktopmode/EmergencyModeBlocker;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/desktopmode/EmergencyModeBlocker;->updateBlockerRegistration(Z)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/android/server/desktopmode/EmergencyModeBlocker;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/desktopmode/EmergencyModeBlocker;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    const/4 v3, 0x0

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    iput-boolean v3, p0, Lcom/android/server/desktopmode/EmergencyModeBlocker;->mBlockerRegistered:Z

    iput-object p1, p0, Lcom/android/server/desktopmode/EmergencyModeBlocker;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/android/server/desktopmode/EmergencyModeBlocker;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/IntentFilter;

    const-string/jumbo v2, "com.samsung.intent.action.EMERGENCY_STATE_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const-string/jumbo v0, "desktopmode"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/desktopmode/SemDesktopModeManager;

    iput-object v0, p0, Lcom/android/server/desktopmode/EmergencyModeBlocker;->mManager:Lcom/samsung/android/desktopmode/SemDesktopModeManager;

    new-instance v0, Lcom/android/server/desktopmode/EmergencyModeBlocker$H;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/desktopmode/EmergencyModeBlocker$H;-><init>(Lcom/android/server/desktopmode/EmergencyModeBlocker;Lcom/android/server/desktopmode/EmergencyModeBlocker$H;)V

    iput-object v0, p0, Lcom/android/server/desktopmode/EmergencyModeBlocker;->mH:Lcom/android/server/desktopmode/EmergencyModeBlocker$H;

    invoke-direct {p0, v3}, Lcom/android/server/desktopmode/EmergencyModeBlocker;->scheduleUpdateBlockerRegistration(Z)V

    return-void
.end method

.method private isEmergencyModeInSettings()Z
    .locals 7

    const/4 v6, 0x0

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    iget-object v1, p0, Lcom/android/server/desktopmode/EmergencyModeBlocker;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v4, "emergency_mode"

    const/4 v5, -0x2

    invoke-static {v1, v4, v6, v5}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private scheduleUpdateBlockerRegistration(Z)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/server/desktopmode/EmergencyModeBlocker;->scheduleUpdateBlockerRegistration(ZI)V

    return-void
.end method

.method private scheduleUpdateBlockerRegistration(ZI)V
    .locals 4

    const/4 v3, 0x1

    iget-object v0, p0, Lcom/android/server/desktopmode/EmergencyModeBlocker;->mH:Lcom/android/server/desktopmode/EmergencyModeBlocker$H;

    invoke-virtual {v0, v3}, Lcom/android/server/desktopmode/EmergencyModeBlocker$H;->removeMessages(I)V

    iget-object v0, p0, Lcom/android/server/desktopmode/EmergencyModeBlocker;->mH:Lcom/android/server/desktopmode/EmergencyModeBlocker$H;

    iget-object v1, p0, Lcom/android/server/desktopmode/EmergencyModeBlocker;->mH:Lcom/android/server/desktopmode/EmergencyModeBlocker$H;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Lcom/android/server/desktopmode/EmergencyModeBlocker$H;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    int-to-long v2, p2

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/desktopmode/EmergencyModeBlocker$H;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method private updateBlockerRegistration(Z)V
    .locals 1

    if-nez p1, :cond_0

    invoke-direct {p0}, Lcom/android/server/desktopmode/EmergencyModeBlocker;->isEmergencyModeInSettings()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    iget-boolean v0, p0, Lcom/android/server/desktopmode/EmergencyModeBlocker;->mBlockerRegistered:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/desktopmode/EmergencyModeBlocker;->mBlockerRegistered:Z

    iget-object v0, p0, Lcom/android/server/desktopmode/EmergencyModeBlocker;->mManager:Lcom/samsung/android/desktopmode/SemDesktopModeManager;

    invoke-virtual {v0, p0}, Lcom/samsung/android/desktopmode/SemDesktopModeManager;->registerBlocker(Lcom/samsung/android/desktopmode/SemDesktopModeManager$DesktopModeBlocker;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-boolean v0, p0, Lcom/android/server/desktopmode/EmergencyModeBlocker;->mBlockerRegistered:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/desktopmode/EmergencyModeBlocker;->mBlockerRegistered:Z

    iget-object v0, p0, Lcom/android/server/desktopmode/EmergencyModeBlocker;->mManager:Lcom/samsung/android/desktopmode/SemDesktopModeManager;

    invoke-virtual {v0, p0}, Lcom/samsung/android/desktopmode/SemDesktopModeManager;->unregisterBlocker(Lcom/samsung/android/desktopmode/SemDesktopModeManager$DesktopModeBlocker;)V

    goto :goto_0
.end method


# virtual methods
.method public getBlockingMessage()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getIdentifier()Ljava/lang/String;
    .locals 1

    const-class v0, Lcom/android/server/desktopmode/EmergencyModeBlocker;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5

    const/4 v4, 0x0

    const-string/jumbo v1, "reason"

    invoke-virtual {p2, v1, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    sget-boolean v1, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/server/desktopmode/EmergencyModeBlocker;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "EMERGENCY_STATE_CHANGED reason="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/android/server/desktopmode/EmergencyModeBlocker;->scheduleUpdateBlockerRegistration(Z)V

    goto :goto_0

    :pswitch_1
    const/16 v1, 0x2710

    invoke-direct {p0, v4, v1}, Lcom/android/server/desktopmode/EmergencyModeBlocker;->scheduleUpdateBlockerRegistration(ZI)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
