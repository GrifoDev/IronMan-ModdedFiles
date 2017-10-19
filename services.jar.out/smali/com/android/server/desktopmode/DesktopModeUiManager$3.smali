.class Lcom/android/server/desktopmode/DesktopModeUiManager$3;
.super Lcom/samsung/android/desktopmode/IDesktopModeUiServiceCallback$Stub;
.source "DesktopModeUiManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/desktopmode/DesktopModeUiManager;->showDialog(ILcom/android/server/desktopmode/DesktopModeUiManager$InternalDialogCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/desktopmode/DesktopModeUiManager;

.field final synthetic val$callback:Lcom/android/server/desktopmode/DesktopModeUiManager$InternalDialogCallback;


# direct methods
.method constructor <init>(Lcom/android/server/desktopmode/DesktopModeUiManager;Lcom/android/server/desktopmode/DesktopModeUiManager$InternalDialogCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/desktopmode/DesktopModeUiManager$3;->this$0:Lcom/android/server/desktopmode/DesktopModeUiManager;

    iput-object p2, p0, Lcom/android/server/desktopmode/DesktopModeUiManager$3;->val$callback:Lcom/android/server/desktopmode/DesktopModeUiManager$InternalDialogCallback;

    invoke-direct {p0}, Lcom/samsung/android/desktopmode/IDesktopModeUiServiceCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onClickButtonNegative()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeUiManager$3;->val$callback:Lcom/android/server/desktopmode/DesktopModeUiManager$InternalDialogCallback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeUiManager$3;->val$callback:Lcom/android/server/desktopmode/DesktopModeUiManager$InternalDialogCallback;

    invoke-interface {v0}, Lcom/android/server/desktopmode/DesktopModeUiManager$InternalDialogCallback;->onClickButtonNegative()V

    :cond_0
    return-void
.end method

.method public onClickButtonPositive()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeUiManager$3;->val$callback:Lcom/android/server/desktopmode/DesktopModeUiManager$InternalDialogCallback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeUiManager$3;->val$callback:Lcom/android/server/desktopmode/DesktopModeUiManager$InternalDialogCallback;

    invoke-interface {v0}, Lcom/android/server/desktopmode/DesktopModeUiManager$InternalDialogCallback;->onClickButtonPositive()V

    :cond_0
    return-void
.end method

.method public onDismiss()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeUiManager$3;->val$callback:Lcom/android/server/desktopmode/DesktopModeUiManager$InternalDialogCallback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeUiManager$3;->val$callback:Lcom/android/server/desktopmode/DesktopModeUiManager$InternalDialogCallback;

    invoke-interface {v0}, Lcom/android/server/desktopmode/DesktopModeUiManager$InternalDialogCallback;->onDismiss()V

    :cond_0
    return-void
.end method

.method public onShow()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeUiManager$3;->val$callback:Lcom/android/server/desktopmode/DesktopModeUiManager$InternalDialogCallback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeUiManager$3;->val$callback:Lcom/android/server/desktopmode/DesktopModeUiManager$InternalDialogCallback;

    invoke-interface {v0}, Lcom/android/server/desktopmode/DesktopModeUiManager$InternalDialogCallback;->onShow()V

    :cond_0
    return-void
.end method
