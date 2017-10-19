.class Lcom/android/server/cover/CoverServiceManager$1;
.super Landroid/content/BroadcastReceiver;
.source "CoverServiceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/cover/CoverServiceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/cover/CoverServiceManager;


# direct methods
.method constructor <init>(Lcom/android/server/cover/CoverServiceManager;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/cover/CoverServiceManager$1;->this$0:Lcom/android/server/cover/CoverServiceManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 12

    const/4 v11, 0x0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v7

    if-nez v7, :cond_0

    return-void

    :cond_0
    invoke-virtual {v7}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_1

    return-void

    :cond_1
    const-string/jumbo v8, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string/jumbo v8, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    sget-boolean v8, Lcom/android/server/cover/CoverManagerDebugConfig;->SAFE_DEBUG:Z

    if-eqz v8, :cond_2

    invoke-static {}, Lcom/android/server/cover/CoverServiceManager;->-get1()Ljava/lang/String;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "onReceive : action = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, " pkgName = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    if-nez v1, :cond_3

    if-eqz v2, :cond_5

    :cond_3
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v4

    if-nez v2, :cond_4

    if-eqz v4, :cond_6

    const-string/jumbo v8, "android.intent.extra.REPLACING"

    invoke-virtual {v4, v8, v11}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v8

    if-eqz v8, :cond_6

    :cond_4
    iget-object v8, p0, Lcom/android/server/cover/CoverServiceManager$1;->this$0:Lcom/android/server/cover/CoverServiceManager;

    invoke-static {v8, v5}, Lcom/android/server/cover/CoverServiceManager;->-wrap2(Lcom/android/server/cover/CoverServiceManager;Ljava/lang/String;)Z

    move-result v6

    :goto_0
    iget-object v8, p0, Lcom/android/server/cover/CoverServiceManager$1;->this$0:Lcom/android/server/cover/CoverServiceManager;

    invoke-static {v8}, Lcom/android/server/cover/CoverServiceManager;->-get4(Lcom/android/server/cover/CoverServiceManager;)Lcom/android/server/cover/CoverServiceManager$OnCoverStateProvider;

    move-result-object v8

    invoke-interface {v8}, Lcom/android/server/cover/CoverServiceManager$OnCoverStateProvider;->getCoverStateFromCoverServiceManager()Lcom/samsung/android/cover/CoverState;

    move-result-object v3

    if-eqz v6, :cond_5

    invoke-virtual {v3}, Lcom/samsung/android/cover/CoverState;->getAttachState()Z

    move-result v8

    if-eqz v8, :cond_5

    iget-object v8, p0, Lcom/android/server/cover/CoverServiceManager$1;->this$0:Lcom/android/server/cover/CoverServiceManager;

    invoke-virtual {v3}, Lcom/samsung/android/cover/CoverState;->getType()I

    move-result v9

    invoke-virtual {v8, v9, v11}, Lcom/android/server/cover/CoverServiceManager;->bindCoverService(IZ)V

    :cond_5
    return-void

    :cond_6
    iget-object v8, p0, Lcom/android/server/cover/CoverServiceManager$1;->this$0:Lcom/android/server/cover/CoverServiceManager;

    invoke-static {v8, v5}, Lcom/android/server/cover/CoverServiceManager;->-wrap0(Lcom/android/server/cover/CoverServiceManager;Ljava/lang/String;)Z

    move-result v6

    goto :goto_0
.end method
