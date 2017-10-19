.class Lcom/android/server/wm/NaviBarHidePolicyManager$1;
.super Landroid/content/BroadcastReceiver;
.source "NaviBarHidePolicyManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/NaviBarHidePolicyManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wm/NaviBarHidePolicyManager;


# direct methods
.method constructor <init>(Lcom/android/server/wm/NaviBarHidePolicyManager;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/wm/NaviBarHidePolicyManager$1;->this$0:Lcom/android/server/wm/NaviBarHidePolicyManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8

    const/4 v6, -0x1

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v5, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v5

    if-eqz v5, :cond_1

    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v2

    :goto_0
    const-string/jumbo v5, "android.intent.extra.UID"

    invoke-virtual {p2, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    if-eqz v2, :cond_0

    if-ne v4, v6, :cond_2

    :cond_0
    return-void

    :cond_1
    const/4 v2, 0x0

    goto :goto_0

    :cond_2
    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v5

    invoke-static {v4}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v6

    const/16 v7, 0x80

    invoke-interface {v5, v2, v7, v6}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    if-eqz v1, :cond_4

    iget-object v5, p0, Lcom/android/server/wm/NaviBarHidePolicyManager$1;->this$0:Lcom/android/server/wm/NaviBarHidePolicyManager;

    invoke-static {v5}, Lcom/android/server/wm/NaviBarHidePolicyManager;->-get0(Lcom/android/server/wm/NaviBarHidePolicyManager;)Ljava/util/ArrayList;

    move-result-object v5

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/android/server/wm/NaviBarHidePolicyManager$1;->this$0:Lcom/android/server/wm/NaviBarHidePolicyManager;

    invoke-static {v5}, Lcom/android/server/wm/NaviBarHidePolicyManager;->-get0(Lcom/android/server/wm/NaviBarHidePolicyManager;)Ljava/util/ArrayList;

    move-result-object v5

    iget-object v6, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/android/server/wm/NaviBarHidePolicyManager$1;->this$0:Lcom/android/server/wm/NaviBarHidePolicyManager;

    invoke-static {v5}, Lcom/android/server/wm/NaviBarHidePolicyManager;->-get0(Lcom/android/server/wm/NaviBarHidePolicyManager;)Ljava/util/ArrayList;

    move-result-object v5

    iget-object v6, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_3
    iget-object v5, v1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz v5, :cond_4

    iget-object v5, v1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string/jumbo v6, "com.samsung.android.non_immersive"

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/android/server/wm/NaviBarHidePolicyManager$1;->this$0:Lcom/android/server/wm/NaviBarHidePolicyManager;

    invoke-static {v5}, Lcom/android/server/wm/NaviBarHidePolicyManager;->-get0(Lcom/android/server/wm/NaviBarHidePolicyManager;)Ljava/util/ArrayList;

    move-result-object v5

    iget-object v6, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_4
    :goto_1
    return-void

    :catch_0
    move-exception v3

    const-string/jumbo v5, "NaviBarHidePolicyManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Failed to get aInfo for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method
