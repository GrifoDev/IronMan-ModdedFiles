.class Lcom/android/server/mate/MateService$1;
.super Lcom/android/server/mate/MateServiceLocal;
.source "MateService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/mate/MateService;->onStart()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/mate/MateService;


# direct methods
.method constructor <init>(Lcom/android/server/mate/MateService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/mate/MateService$1;->this$0:Lcom/android/server/mate/MateService;

    invoke-direct {p0}, Lcom/android/server/mate/MateServiceLocal;-><init>()V

    return-void
.end method


# virtual methods
.method public accessoryStateChanged(Z[B[B)V
    .locals 4

    :try_start_0
    iget-object v1, p0, Lcom/android/server/mate/MateService$1;->this$0:Lcom/android/server/mate/MateService;

    invoke-static {v1}, Lcom/android/server/mate/MateService;->-get0(Lcom/android/server/mate/MateService;)Lcom/samsung/android/mateservice/MateServiceImpl;

    move-result-object v1

    invoke-static {}, Lcom/samsung/android/mateservice/common/BundleArgs$Builder;->get()Lcom/samsung/android/mateservice/common/BundleArgs$Builder;

    move-result-object v2

    const-string/jumbo v3, "attached"

    invoke-virtual {v2, v3, p1}, Lcom/samsung/android/mateservice/common/BundleArgs$Builder;->put(Ljava/lang/String;Z)Lcom/samsung/android/mateservice/common/BundleArgs$Builder;

    move-result-object v2

    const-string/jumbo v3, "data"

    invoke-virtual {v2, v3, p2}, Lcom/samsung/android/mateservice/common/BundleArgs$Builder;->put(Ljava/lang/String;[B)Lcom/samsung/android/mateservice/common/BundleArgs$Builder;

    move-result-object v2

    const-string/jumbo v3, "extraData"

    invoke-virtual {v2, v3, p3}, Lcom/samsung/android/mateservice/common/BundleArgs$Builder;->put(Ljava/lang/String;[B)Lcom/samsung/android/mateservice/common/BundleArgs$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/mateservice/common/BundleArgs$Builder;->build()Landroid/os/Bundle;

    move-result-object v2

    const v3, 0x110001

    invoke-virtual {v1, v3, v2}, Lcom/samsung/android/mateservice/MateServiceImpl;->executeAction(ILandroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {}, Lcom/samsung/android/mateservice/util/UtilLog;->isDebugLogLevel()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public executeAction(ILandroid/os/Bundle;)Landroid/os/Bundle;
    .locals 2

    :try_start_0
    iget-object v1, p0, Lcom/android/server/mate/MateService$1;->this$0:Lcom/android/server/mate/MateService;

    invoke-static {v1}, Lcom/android/server/mate/MateService;->-get0(Lcom/android/server/mate/MateService;)Lcom/samsung/android/mateservice/MateServiceImpl;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Lcom/samsung/android/mateservice/MateServiceImpl;->executeAction(ILandroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    :catch_0
    move-exception v0

    invoke-static {}, Lcom/samsung/android/mateservice/util/UtilLog;->isDebugLogLevel()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method public screenTurnedOff()V
    .locals 4

    :try_start_0
    iget-object v1, p0, Lcom/android/server/mate/MateService$1;->this$0:Lcom/android/server/mate/MateService;

    invoke-static {v1}, Lcom/android/server/mate/MateService;->-get0(Lcom/android/server/mate/MateService;)Lcom/samsung/android/mateservice/MateServiceImpl;

    move-result-object v1

    const v2, 0x210002

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/mateservice/MateServiceImpl;->executeAction(ILandroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {}, Lcom/samsung/android/mateservice/util/UtilLog;->isDebugLogLevel()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method
