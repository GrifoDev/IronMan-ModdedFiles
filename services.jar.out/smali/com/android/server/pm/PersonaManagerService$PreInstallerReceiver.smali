.class public Lcom/android/server/pm/PersonaManagerService$PreInstallerReceiver;
.super Landroid/content/BroadcastReceiver;
.source "PersonaManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/PersonaManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "PreInstallerReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/pm/PersonaManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/pm/PersonaManagerService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/pm/PersonaManagerService$PreInstallerReceiver;->this$0:Lcom/android/server/pm/PersonaManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "com.samsung.intent.action.PREINSTALLER_FINISH"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const-string/jumbo v4, "PersonaManagerService"

    const-string/jumbo v5, "com.samsung.intent.action.PREINSTALLER_FINISH"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/android/server/pm/PersonaManagerService$PreInstallerReceiver;->this$0:Lcom/android/server/pm/PersonaManagerService;

    invoke-virtual {v4}, Lcom/android/server/pm/PersonaManagerService;->getPersonaIds()[I

    move-result-object v1

    const-string/jumbo v4, "user"

    invoke-virtual {p1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/UserManager;

    if-eqz v1, :cond_1

    array-length v4, v1

    if-lez v4, :cond_1

    const/4 v0, 0x0

    :goto_0
    array-length v4, v1

    if-ge v0, v4, :cond_1

    if-eqz v2, :cond_0

    aget v4, v1, v0

    invoke-virtual {v2, v4}, Landroid/os/UserManager;->isUserRunning(I)Z

    move-result v4

    if-eqz v4, :cond_0

    aget v4, v1, v0

    invoke-static {v4}, Landroid/os/storage/StorageManager;->isUserKeyUnlocked(I)Z

    move-result v4

    if-eqz v4, :cond_0

    new-instance v3, Landroid/content/Intent;

    const-string/jumbo v4, "com.sec.knox.UPDATE_WIDGET"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v4, "android.intent.extra.user_handle"

    aget v5, v1, v0

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v4, p0, Lcom/android/server/pm/PersonaManagerService$PreInstallerReceiver;->this$0:Lcom/android/server/pm/PersonaManagerService;

    invoke-static {v4}, Lcom/android/server/pm/PersonaManagerService;->-get5(Lcom/android/server/pm/PersonaManagerService;)Landroid/content/Context;

    move-result-object v4

    new-instance v5, Landroid/os/UserHandle;

    aget v6, v1, v0

    invoke-direct {v5, v6}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v4, v3, v5}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v4, p0, Lcom/android/server/pm/PersonaManagerService$PreInstallerReceiver;->this$0:Lcom/android/server/pm/PersonaManagerService;

    const/4 v5, 0x1

    invoke-static {v4, v5}, Lcom/android/server/pm/PersonaManagerService;->-set4(Lcom/android/server/pm/PersonaManagerService;Z)Z

    :cond_1
    return-void
.end method
