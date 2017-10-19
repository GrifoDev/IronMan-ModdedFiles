.class Lcom/android/server/desktopmode/DesktopModeService$PackageStateReceiver;
.super Landroid/content/BroadcastReceiver;
.source "DesktopModeService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/desktopmode/DesktopModeService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PackageStateReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/desktopmode/DesktopModeService;


# direct methods
.method private constructor <init>(Lcom/android/server/desktopmode/DesktopModeService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/desktopmode/DesktopModeService$PackageStateReceiver;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/desktopmode/DesktopModeService;Lcom/android/server/desktopmode/DesktopModeService$PackageStateReceiver;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/desktopmode/DesktopModeService$PackageStateReceiver;-><init>(Lcom/android/server/desktopmode/DesktopModeService;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/desktopmode/DesktopModeService$PackageStateReceiver;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {v2}, Lcom/android/server/desktopmode/DesktopModeService;->-get15(Lcom/android/server/desktopmode/DesktopModeService;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/android/server/desktopmode/DesktopModeService;->-get0()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {}, Lcom/android/server/desktopmode/DesktopModeService;->-get1()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "PackageStateReceiver, action="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "  package="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const-string/jumbo v2, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string/jumbo v2, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string/jumbo v2, "android.intent.action.PACKAGE_FULLY_REMOVED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    :cond_2
    iget-object v2, p0, Lcom/android/server/desktopmode/DesktopModeService$PackageStateReceiver;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {v2, v1}, Lcom/android/server/desktopmode/DesktopModeService;->-wrap2(Lcom/android/server/desktopmode/DesktopModeService;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v3, p0, Lcom/android/server/desktopmode/DesktopModeService$PackageStateReceiver;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    iget-object v2, p0, Lcom/android/server/desktopmode/DesktopModeService$PackageStateReceiver;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {v2}, Lcom/android/server/desktopmode/DesktopModeService;->-get15(Lcom/android/server/desktopmode/DesktopModeService;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    const-string/jumbo v4, "com.sec.knox.kccagent"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    xor-int/2addr v2, v4

    invoke-virtual {v3, v2}, Lcom/android/server/desktopmode/DesktopModeService;->scheduleUpdateDesktopMode(Z)V

    :cond_3
    :goto_0
    return-void

    :cond_4
    const-string/jumbo v2, "android.intent.action.PACKAGE_REPLACED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    const-string/jumbo v2, "android.intent.action.PACKAGE_DATA_CLEARED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_5
    const-string/jumbo v2, "com.sec.android.app.desktoplauncher"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    const-string/jumbo v2, "android.intent.action.PACKAGE_DATA_CLEARED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/android/server/desktopmode/DesktopModeService$PackageStateReceiver;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    iget-object v3, p0, Lcom/android/server/desktopmode/DesktopModeService$PackageStateReceiver;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {v3}, Lcom/android/server/desktopmode/DesktopModeService;->-get4(Lcom/android/server/desktopmode/DesktopModeService;)I

    move-result v3

    invoke-static {v2, v3}, Lcom/android/server/desktopmode/DesktopModeService;->-wrap8(Lcom/android/server/desktopmode/DesktopModeService;I)V

    :cond_6
    iget-object v2, p0, Lcom/android/server/desktopmode/DesktopModeService$PackageStateReceiver;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    iget-object v3, p0, Lcom/android/server/desktopmode/DesktopModeService$PackageStateReceiver;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {v3}, Lcom/android/server/desktopmode/DesktopModeService;->-get11(Lcom/android/server/desktopmode/DesktopModeService;)Z

    move-result v3

    invoke-static {v2, v3}, Lcom/android/server/desktopmode/DesktopModeService;->-wrap26(Lcom/android/server/desktopmode/DesktopModeService;Z)V

    iget-object v2, p0, Lcom/android/server/desktopmode/DesktopModeService$PackageStateReceiver;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {v2}, Lcom/android/server/desktopmode/DesktopModeService;->-get11(Lcom/android/server/desktopmode/DesktopModeService;)Z

    move-result v2

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/android/server/desktopmode/DesktopModeService$PackageStateReceiver;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {v2}, Lcom/android/server/desktopmode/DesktopModeService;->-wrap30(Lcom/android/server/desktopmode/DesktopModeService;)V

    :cond_7
    iget-object v2, p0, Lcom/android/server/desktopmode/DesktopModeService$PackageStateReceiver;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {v2}, Lcom/android/server/desktopmode/DesktopModeService;->-get2(Lcom/android/server/desktopmode/DesktopModeService;)Landroid/content/Context;

    move-result-object v2

    new-instance v3, Landroid/content/Intent;

    const-string/jumbo v4, "com.samsung.android.desktopmode.action.UPDATE_DATABASE"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v4, "com.sec.android.app.desktoplauncher"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/desktopmode/DesktopModeService$PackageStateReceiver;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {v4}, Lcom/android/server/desktopmode/DesktopModeService;->-get4(Lcom/android/server/desktopmode/DesktopModeService;)I

    move-result v4

    invoke-static {v4}, Landroid/os/UserHandle;->semOf(I)Landroid/os/UserHandle;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto :goto_0
.end method
