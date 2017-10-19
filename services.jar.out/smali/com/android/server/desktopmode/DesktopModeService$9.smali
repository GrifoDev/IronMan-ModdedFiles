.class Lcom/android/server/desktopmode/DesktopModeService$9;
.super Ljava/lang/Object;
.source "DesktopModeService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/desktopmode/DesktopModeService;->onConfigurationChanged(Landroid/content/res/Configuration;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/desktopmode/DesktopModeService;

.field final synthetic val$enabled:Z


# direct methods
.method constructor <init>(Lcom/android/server/desktopmode/DesktopModeService;Z)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/desktopmode/DesktopModeService$9;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    iput-boolean p2, p0, Lcom/android/server/desktopmode/DesktopModeService$9;->val$enabled:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    const/4 v6, 0x0

    const/4 v1, 0x4

    const/4 v2, 0x2

    const/4 v3, 0x1

    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService$9;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {v0}, Lcom/android/server/desktopmode/DesktopModeService;->-get6(Lcom/android/server/desktopmode/DesktopModeService;)Lcom/samsung/android/desktopmode/SemDesktopModeState;

    move-result-object v0

    iget v0, v0, Lcom/samsung/android/desktopmode/SemDesktopModeState;->state:I

    const/16 v4, 0x1e

    if-ne v0, v4, :cond_5

    iget-boolean v0, p0, Lcom/android/server/desktopmode/DesktopModeService$9;->val$enabled:Z

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService$9;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {v0}, Lcom/android/server/desktopmode/DesktopModeService;->-get6(Lcom/android/server/desktopmode/DesktopModeService;)Lcom/samsung/android/desktopmode/SemDesktopModeState;

    move-result-object v0

    iget v0, v0, Lcom/samsung/android/desktopmode/SemDesktopModeState;->enabled:I

    const/4 v4, 0x3

    if-ne v0, v4, :cond_6

    :goto_0
    invoke-static {}, Lcom/android/server/desktopmode/DesktopModeService;->-get0()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/server/desktopmode/DesktopModeService;->-get1()Ljava/lang/String;

    move-result-object v0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onConfigurationChanged(), enabled="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/android/server/desktopmode/DesktopModeService$9;->val$enabled:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v4, p0, Lcom/android/server/desktopmode/DesktopModeService$9;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    iget-boolean v0, p0, Lcom/android/server/desktopmode/DesktopModeService$9;->val$enabled:Z

    if-eqz v0, :cond_7

    move v0, v1

    :goto_1
    const/16 v5, 0x28

    invoke-static {v4, v0, v5}, Lcom/android/server/desktopmode/DesktopModeService;->-wrap22(Lcom/android/server/desktopmode/DesktopModeService;II)V

    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService$9;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    iget-boolean v4, p0, Lcom/android/server/desktopmode/DesktopModeService$9;->val$enabled:Z

    invoke-static {v0, v4}, Lcom/android/server/desktopmode/DesktopModeService;->-set2(Lcom/android/server/desktopmode/DesktopModeService;Z)Z

    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService$9;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {v0}, Lcom/android/server/desktopmode/DesktopModeService;->-wrap30(Lcom/android/server/desktopmode/DesktopModeService;)V

    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService$9;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {v0}, Lcom/android/server/desktopmode/DesktopModeService;->-get20(Lcom/android/server/desktopmode/DesktopModeService;)Lcom/android/server/am/IActivityManagerServiceBridge;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/am/IActivityManagerServiceBridge;->clearHomeStack()V

    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService$9;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    iget-boolean v4, p0, Lcom/android/server/desktopmode/DesktopModeService$9;->val$enabled:Z

    invoke-static {v0, v4}, Lcom/android/server/desktopmode/DesktopModeService;->-wrap23(Lcom/android/server/desktopmode/DesktopModeService;Z)V

    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService$9;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {v0}, Lcom/android/server/desktopmode/DesktopModeService;->-get20(Lcom/android/server/desktopmode/DesktopModeService;)Lcom/android/server/am/IActivityManagerServiceBridge;

    move-result-object v4

    iget-boolean v0, p0, Lcom/android/server/desktopmode/DesktopModeService$9;->val$enabled:Z

    if-eqz v0, :cond_8

    move v0, v2

    :goto_2
    iget-object v5, p0, Lcom/android/server/desktopmode/DesktopModeService$9;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {v5}, Lcom/android/server/desktopmode/DesktopModeService;->-get26(Lcom/android/server/desktopmode/DesktopModeService;)I

    move-result v5

    invoke-interface {v4, v0, v5}, Lcom/android/server/am/IActivityManagerServiceBridge;->moveAllTasksToStack(II)V

    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService$9;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    iget-object v4, p0, Lcom/android/server/desktopmode/DesktopModeService$9;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {v4}, Lcom/android/server/desktopmode/DesktopModeService;->-get27(Lcom/android/server/desktopmode/DesktopModeService;)Landroid/content/Intent;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/desktopmode/DesktopModeService$9;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {v5}, Lcom/android/server/desktopmode/DesktopModeService;->-get26(Lcom/android/server/desktopmode/DesktopModeService;)I

    move-result v5

    invoke-static {v0, v4, v5}, Lcom/android/server/desktopmode/DesktopModeService;->-wrap31(Lcom/android/server/desktopmode/DesktopModeService;Landroid/content/Intent;I)V

    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService$9;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {v0}, Lcom/android/server/desktopmode/DesktopModeService;->-get22(Lcom/android/server/desktopmode/DesktopModeService;)Lcom/android/server/desktopmode/StateNotifier;

    move-result-object v0

    iget-boolean v4, p0, Lcom/android/server/desktopmode/DesktopModeService$9;->val$enabled:Z

    invoke-virtual {v0, v4}, Lcom/android/server/desktopmode/StateNotifier;->notifyDesktopModeChanged(Z)V

    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService$9;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    iget-boolean v4, p0, Lcom/android/server/desktopmode/DesktopModeService$9;->val$enabled:Z

    iget-object v5, p0, Lcom/android/server/desktopmode/DesktopModeService$9;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {v5}, Lcom/android/server/desktopmode/DesktopModeService;->-get4(Lcom/android/server/desktopmode/DesktopModeService;)I

    move-result v5

    invoke-static {v0, v4, v5}, Lcom/android/server/desktopmode/DesktopModeService;->-wrap5(Lcom/android/server/desktopmode/DesktopModeService;ZI)V

    iget-boolean v0, p0, Lcom/android/server/desktopmode/DesktopModeService$9;->val$enabled:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService$9;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {v0}, Lcom/android/server/desktopmode/DesktopModeService;->-get24(Lcom/android/server/desktopmode/DesktopModeService;)Landroid/telecom/TelecomManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telecom/TelecomManager;->isInCall()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/android/server/desktopmode/DesktopModeService;->-get0()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/android/server/desktopmode/DesktopModeService;->-get1()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v4, "Ongoing phone call!"

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService$9;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {v0, v3}, Lcom/android/server/desktopmode/DesktopModeService;->-set8(Lcom/android/server/desktopmode/DesktopModeService;Z)Z

    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService$9;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {v0}, Lcom/android/server/desktopmode/DesktopModeService;->-get24(Lcom/android/server/desktopmode/DesktopModeService;)Landroid/telecom/TelecomManager;

    move-result-object v0

    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Landroid/telecom/TelecomManager;->showInCallScreen(Z)V

    :cond_2
    invoke-static {}, Lcom/android/server/desktopmode/DesktopModePolicyManager;->closeLaunchPolicyDB()V

    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService$9;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {v0}, Lcom/android/server/desktopmode/DesktopModeService;->-wrap7(Lcom/android/server/desktopmode/DesktopModeService;)V

    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService$9;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {v0, v6}, Lcom/android/server/desktopmode/DesktopModeService;->-set5(Lcom/android/server/desktopmode/DesktopModeService;Lcom/android/server/desktopmode/DesktopModeService$Enabler;)Lcom/android/server/desktopmode/DesktopModeService$Enabler;

    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService$9;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {v0, v6}, Lcom/android/server/desktopmode/DesktopModeService;->-set0(Lcom/android/server/desktopmode/DesktopModeService;Lcom/android/server/desktopmode/DesktopModeService$Enabler;)Lcom/android/server/desktopmode/DesktopModeService$Enabler;

    :cond_3
    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService$9;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {v0}, Lcom/android/server/desktopmode/DesktopModeService;->-get19(Lcom/android/server/desktopmode/DesktopModeService;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lcom/android/server/desktopmode/DesktopModeService$9;->val$enabled:Z

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService$9;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {v0}, Lcom/android/server/desktopmode/DesktopModeService;->-get31(Lcom/android/server/desktopmode/DesktopModeService;)Lcom/android/server/wm/WindowManagerService;

    move-result-object v0

    iget-object v4, p0, Lcom/android/server/desktopmode/DesktopModeService$9;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {v4}, Lcom/android/server/desktopmode/DesktopModeService;->-get16(Lcom/android/server/desktopmode/DesktopModeService;)Landroid/view/WindowManagerPolicy$PointerEventListener;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/android/server/wm/WindowManagerService;->registerPointerEventListener(Landroid/view/WindowManagerPolicy$PointerEventListener;)V

    :cond_4
    :goto_3
    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService$9;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {v0}, Lcom/android/server/desktopmode/DesktopModeService;->-get31(Lcom/android/server/desktopmode/DesktopModeService;)Lcom/android/server/wm/WindowManagerService;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/android/server/wm/WindowManagerService;->setEventDispatching(Z)V

    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService$9;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    iget-boolean v3, p0, Lcom/android/server/desktopmode/DesktopModeService$9;->val$enabled:Z

    if-eqz v3, :cond_a

    :goto_4
    const/16 v2, 0x32

    invoke-static {v0, v1, v2}, Lcom/android/server/desktopmode/DesktopModeService;->-wrap22(Lcom/android/server/desktopmode/DesktopModeService;II)V

    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService$9;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {v0}, Lcom/android/server/desktopmode/DesktopModeService;->-wrap18(Lcom/android/server/desktopmode/DesktopModeService;)V

    :cond_5
    return-void

    :cond_6
    iget-boolean v0, p0, Lcom/android/server/desktopmode/DesktopModeService$9;->val$enabled:Z

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService$9;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {v0}, Lcom/android/server/desktopmode/DesktopModeService;->-get6(Lcom/android/server/desktopmode/DesktopModeService;)Lcom/samsung/android/desktopmode/SemDesktopModeState;

    move-result-object v0

    iget v0, v0, Lcom/samsung/android/desktopmode/SemDesktopModeState;->enabled:I

    if-ne v0, v3, :cond_5

    goto/16 :goto_0

    :cond_7
    move v0, v2

    goto/16 :goto_1

    :cond_8
    move v0, v3

    goto/16 :goto_2

    :cond_9
    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService$9;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {v0}, Lcom/android/server/desktopmode/DesktopModeService;->-get31(Lcom/android/server/desktopmode/DesktopModeService;)Lcom/android/server/wm/WindowManagerService;

    move-result-object v0

    iget-object v4, p0, Lcom/android/server/desktopmode/DesktopModeService$9;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {v4}, Lcom/android/server/desktopmode/DesktopModeService;->-get16(Lcom/android/server/desktopmode/DesktopModeService;)Landroid/view/WindowManagerPolicy$PointerEventListener;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/android/server/wm/WindowManagerService;->unregisterPointerEventListener(Landroid/view/WindowManagerPolicy$PointerEventListener;)V

    goto :goto_3

    :cond_a
    move v1, v2

    goto :goto_4
.end method
