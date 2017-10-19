.class Lcom/android/server/desktopmode/DesktopModeUiManager$4;
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

.field final synthetic val$dialogType:I


# direct methods
.method constructor <init>(Lcom/android/server/desktopmode/DesktopModeUiManager;I)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/desktopmode/DesktopModeUiManager$4;->this$0:Lcom/android/server/desktopmode/DesktopModeUiManager;

    iput p2, p0, Lcom/android/server/desktopmode/DesktopModeUiManager$4;->val$dialogType:I

    invoke-direct {p0}, Lcom/samsung/android/desktopmode/IDesktopModeUiServiceCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onClickButtonNegative()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method

.method public onClickButtonPositive()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeUiManager$4;->this$0:Lcom/android/server/desktopmode/DesktopModeUiManager;

    iget-object v1, v0, Lcom/android/server/desktopmode/DesktopModeUiManager;->mResolver:Landroid/content/ContentResolver;

    iget v0, p0, Lcom/android/server/desktopmode/DesktopModeUiManager$4;->val$dialogType:I

    const/4 v2, 0x4

    if-ne v0, v2, :cond_0

    const-string/jumbo v0, "1st_mouse"

    :goto_0
    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Lcom/android/server/desktopmode/DesktopModeSettingsManager;->setSettings(Landroid/content/ContentResolver;Ljava/lang/String;Z)V

    return-void

    :cond_0
    const-string/jumbo v0, "1st_dock"

    goto :goto_0
.end method

.method public onDismiss()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method

.method public onShow()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method
