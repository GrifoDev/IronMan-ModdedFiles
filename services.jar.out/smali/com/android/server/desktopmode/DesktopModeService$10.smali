.class Lcom/android/server/desktopmode/DesktopModeService$10;
.super Ljava/lang/Object;
.source "DesktopModeService.java"

# interfaces
.implements Lcom/android/server/desktopmode/DesktopModeUiManager$InternalDialogCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/desktopmode/DesktopModeService;->showLaunchConfirmDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/desktopmode/DesktopModeService;

.field final synthetic val$coverPartiallySupported:Z

.field final synthetic val$externalDisplayConnected:Z


# direct methods
.method constructor <init>(Lcom/android/server/desktopmode/DesktopModeService;ZZ)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/desktopmode/DesktopModeService$10;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    iput-boolean p2, p0, Lcom/android/server/desktopmode/DesktopModeService$10;->val$externalDisplayConnected:Z

    iput-boolean p3, p0, Lcom/android/server/desktopmode/DesktopModeService$10;->val$coverPartiallySupported:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClickButtonNegative()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService$10;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {v0}, Lcom/android/server/desktopmode/DesktopModeService;->-wrap3(Lcom/android/server/desktopmode/DesktopModeService;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService$10;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-virtual {v0, v2}, Lcom/android/server/desktopmode/DesktopModeService;->scheduleUpdateDesktopMode(Z)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService$10;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-virtual {v0, v2}, Lcom/android/server/desktopmode/DesktopModeService;->setHdmiSettings(Z)V

    goto :goto_0
.end method

.method public onClickButtonPositive()V
    .locals 2

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService$10;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {v0}, Lcom/android/server/desktopmode/DesktopModeService;->-wrap3(Lcom/android/server/desktopmode/DesktopModeService;)I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService$10;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-virtual {v0, v1}, Lcom/android/server/desktopmode/DesktopModeService;->scheduleUpdateDesktopMode(Z)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService$10;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-virtual {v0, v1}, Lcom/android/server/desktopmode/DesktopModeService;->setHdmiSettings(Z)V

    goto :goto_0
.end method

.method public onDismiss()V
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x0

    iget-boolean v0, p0, Lcom/android/server/desktopmode/DesktopModeService$10;->val$externalDisplayConnected:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/desktopmode/DesktopModeService$10;->val$coverPartiallySupported:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService$10;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {v0}, Lcom/android/server/desktopmode/DesktopModeService;->-get6(Lcom/android/server/desktopmode/DesktopModeService;)Lcom/samsung/android/desktopmode/SemDesktopModeState;

    move-result-object v0

    iget v0, v0, Lcom/samsung/android/desktopmode/SemDesktopModeState;->enabled:I

    if-ne v0, v4, :cond_0

    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService$10;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {v0}, Lcom/android/server/desktopmode/DesktopModeService;->-get3(Lcom/android/server/desktopmode/DesktopModeService;)Lcom/android/server/desktopmode/CoverSupportStateController;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/android/server/desktopmode/CoverSupportStateController;->disableCoverManager(Z)V

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService$10;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {v0}, Lcom/android/server/desktopmode/DesktopModeService;->-get6(Lcom/android/server/desktopmode/DesktopModeService;)Lcom/samsung/android/desktopmode/SemDesktopModeState;

    move-result-object v0

    const/16 v1, 0xa

    invoke-virtual {v0, v4, v1}, Lcom/samsung/android/desktopmode/SemDesktopModeState;->compareTo(II)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService$10;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {v0}, Lcom/android/server/desktopmode/DesktopModeService;->-get30(Lcom/android/server/desktopmode/DesktopModeService;)Lcom/android/server/desktopmode/DesktopModeUiManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/desktopmode/DesktopModeUiManager;->getCurrentDialogType()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService$10;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {v0, v4, v3}, Lcom/android/server/desktopmode/DesktopModeService;->-wrap22(Lcom/android/server/desktopmode/DesktopModeService;II)V

    :cond_1
    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService$10;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    const/4 v1, 0x1

    invoke-static {v0, v3, v1}, Lcom/android/server/desktopmode/DesktopModeService;->-wrap33(Lcom/android/server/desktopmode/DesktopModeService;ZZ)V

    return-void

    :cond_2
    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService$10;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {v0}, Lcom/android/server/desktopmode/DesktopModeService;->-get30(Lcom/android/server/desktopmode/DesktopModeService;)Lcom/android/server/desktopmode/DesktopModeUiManager;

    move-result-object v0

    const/16 v1, 0x67

    const/16 v2, 0x6f

    invoke-virtual {v0, v1, v2}, Lcom/android/server/desktopmode/DesktopModeUiManager;->dismissPresentation(II)V

    goto :goto_0
.end method

.method public onShow()V
    .locals 6

    const/16 v5, 0x6f

    const/16 v2, 0x67

    const/4 v4, 0x2

    const/4 v3, 0x1

    iget-boolean v1, p0, Lcom/android/server/desktopmode/DesktopModeService$10;->val$externalDisplayConnected:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/server/desktopmode/DesktopModeService$10;->val$coverPartiallySupported:Z

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/server/desktopmode/DesktopModeService$10;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {v1}, Lcom/android/server/desktopmode/DesktopModeService;->-get3(Lcom/android/server/desktopmode/DesktopModeService;)Lcom/android/server/desktopmode/CoverSupportStateController;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/android/server/desktopmode/CoverSupportStateController;->disableCoverManager(Z)V

    iget-object v1, p0, Lcom/android/server/desktopmode/DesktopModeService$10;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {v1}, Lcom/android/server/desktopmode/DesktopModeService;->-get30(Lcom/android/server/desktopmode/DesktopModeService;)Lcom/android/server/desktopmode/DesktopModeUiManager;

    move-result-object v1

    invoke-virtual {v1, v2, v5}, Lcom/android/server/desktopmode/DesktopModeUiManager;->dismissPresentation(II)V

    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/server/desktopmode/DesktopModeService$10;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {v1}, Lcom/android/server/desktopmode/DesktopModeService;->-get6(Lcom/android/server/desktopmode/DesktopModeService;)Lcom/samsung/android/desktopmode/SemDesktopModeState;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v4, v2}, Lcom/samsung/android/desktopmode/SemDesktopModeState;->compareTo(II)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/server/desktopmode/DesktopModeService$10;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {v1}, Lcom/android/server/desktopmode/DesktopModeService;->-get30(Lcom/android/server/desktopmode/DesktopModeService;)Lcom/android/server/desktopmode/DesktopModeUiManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/desktopmode/DesktopModeUiManager;->getCurrentDialogType()I

    move-result v0

    if-eq v0, v4, :cond_1

    if-ne v0, v3, :cond_2

    :cond_1
    iget-object v1, p0, Lcom/android/server/desktopmode/DesktopModeService$10;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    const/16 v2, 0xa

    invoke-static {v1, v4, v2}, Lcom/android/server/desktopmode/DesktopModeService;->-wrap22(Lcom/android/server/desktopmode/DesktopModeService;II)V

    :cond_2
    iget-object v1, p0, Lcom/android/server/desktopmode/DesktopModeService$10;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {v1, v3}, Lcom/android/server/desktopmode/DesktopModeService;->-wrap34(Lcom/android/server/desktopmode/DesktopModeService;Z)V

    return-void

    :cond_3
    iget-object v1, p0, Lcom/android/server/desktopmode/DesktopModeService$10;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {v1}, Lcom/android/server/desktopmode/DesktopModeService;->-get30(Lcom/android/server/desktopmode/DesktopModeService;)Lcom/android/server/desktopmode/DesktopModeUiManager;

    move-result-object v1

    invoke-virtual {v1, v2, v5}, Lcom/android/server/desktopmode/DesktopModeUiManager;->showPresentation(II)V

    goto :goto_0
.end method
