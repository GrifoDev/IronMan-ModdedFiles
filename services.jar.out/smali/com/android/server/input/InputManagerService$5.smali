.class Lcom/android/server/input/InputManagerService$5;
.super Ljava/lang/Object;
.source "InputManagerService.java"

# interfaces
.implements Lcom/samsung/android/desktopmode/SemDesktopModeManager$DesktopModeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/input/InputManagerService;->start()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/input/InputManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/input/InputManagerService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/input/InputManagerService$5;->this$0:Lcom/android/server/input/InputManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDesktopModeStateChanged(Lcom/samsung/android/desktopmode/SemDesktopModeState;)V
    .locals 8

    const/4 v7, 0x2

    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v2, 0x0

    const/4 v1, 0x1

    iget v3, p1, Lcom/samsung/android/desktopmode/SemDesktopModeState;->state:I

    const/16 v4, 0x14

    if-ne v3, v4, :cond_2

    iget v3, p1, Lcom/samsung/android/desktopmode/SemDesktopModeState;->enabled:I

    if-eq v3, v5, :cond_0

    iget v3, p1, Lcom/samsung/android/desktopmode/SemDesktopModeState;->enabled:I

    if-ne v3, v1, :cond_2

    :cond_0
    iget v3, p1, Lcom/samsung/android/desktopmode/SemDesktopModeState;->enabled:I

    if-ne v3, v5, :cond_3

    move v0, v1

    :goto_0
    if-eqz v0, :cond_4

    const-string/jumbo v3, "InputManager"

    const-string/jumbo v4, "set STATE_LOADING_SCREEN_SHOWN enabled"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/server/input/InputManagerService$5;->this$0:Lcom/android/server/input/InputManagerService;

    invoke-static {v3}, Lcom/android/server/input/InputManagerService;->-get13(Lcom/android/server/input/InputManagerService;)J

    move-result-wide v4

    invoke-static {v4, v5, v7, v2}, Lcom/android/server/input/InputManagerService;->-wrap11(JII)V

    iget-object v2, p0, Lcom/android/server/input/InputManagerService$5;->this$0:Lcom/android/server/input/InputManagerService;

    invoke-static {v2}, Lcom/android/server/input/InputManagerService;->-get13(Lcom/android/server/input/InputManagerService;)J

    move-result-wide v2

    const/4 v4, -0x1

    invoke-static {v2, v3, v6, v4}, Lcom/android/server/input/InputManagerService;->-wrap11(JII)V

    iget-object v2, p0, Lcom/android/server/input/InputManagerService$5;->this$0:Lcom/android/server/input/InputManagerService;

    const/4 v3, -0x3

    invoke-static {v2, v3}, Lcom/android/server/input/InputManagerService;->-set6(Lcom/android/server/input/InputManagerService;I)I

    :goto_1
    iget-object v2, p0, Lcom/android/server/input/InputManagerService$5;->this$0:Lcom/android/server/input/InputManagerService;

    invoke-static {v2}, Lcom/android/server/input/InputManagerService;->-get13(Lcom/android/server/input/InputManagerService;)J

    move-result-wide v2

    invoke-static {v2, v3, v0}, Lcom/android/server/input/InputManagerService;->-wrap8(JZ)V

    iget-object v2, p0, Lcom/android/server/input/InputManagerService$5;->this$0:Lcom/android/server/input/InputManagerService;

    invoke-static {v2, v0}, Lcom/android/server/input/InputManagerService;->-set2(Lcom/android/server/input/InputManagerService;Z)Z

    iget-object v2, p0, Lcom/android/server/input/InputManagerService$5;->this$0:Lcom/android/server/input/InputManagerService;

    invoke-static {v2}, Lcom/android/server/input/InputManagerService;->-get6(Lcom/android/server/input/InputManagerService;)Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v1, p0, Lcom/android/server/input/InputManagerService$5;->this$0:Lcom/android/server/input/InputManagerService;

    invoke-static {v1}, Lcom/android/server/input/InputManagerService;->-wrap7(Lcom/android/server/input/InputManagerService;)V

    :cond_1
    :goto_2
    sput-boolean v0, Landroid/view/PointerIcon;->mDesktopMode:Z

    invoke-static {}, Landroid/view/PointerIcon;->clearSystemIcons()V

    iget-object v1, p0, Lcom/android/server/input/InputManagerService$5;->this$0:Lcom/android/server/input/InputManagerService;

    invoke-virtual {v1}, Lcom/android/server/input/InputManagerService;->updatePointerSpeedFromSettings()V

    :cond_2
    return-void

    :cond_3
    move v0, v2

    goto :goto_0

    :cond_4
    const-string/jumbo v3, "InputManager"

    const-string/jumbo v4, "set STATE_LOADING_SCREEN_SHOWN disabled"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/server/input/InputManagerService$5;->this$0:Lcom/android/server/input/InputManagerService;

    invoke-static {v3, v2}, Lcom/android/server/input/InputManagerService;->-set6(Lcom/android/server/input/InputManagerService;I)I

    iget-object v2, p0, Lcom/android/server/input/InputManagerService$5;->this$0:Lcom/android/server/input/InputManagerService;

    invoke-static {v2}, Lcom/android/server/input/InputManagerService;->-get13(Lcom/android/server/input/InputManagerService;)J

    move-result-wide v2

    invoke-static {v2, v3, v7, v6}, Lcom/android/server/input/InputManagerService;->-wrap11(JII)V

    iget-object v2, p0, Lcom/android/server/input/InputManagerService$5;->this$0:Lcom/android/server/input/InputManagerService;

    invoke-static {v2}, Lcom/android/server/input/InputManagerService;->-get13(Lcom/android/server/input/InputManagerService;)J

    move-result-wide v2

    invoke-static {v2, v3, v6, v5}, Lcom/android/server/input/InputManagerService;->-wrap11(JII)V

    goto :goto_1

    :cond_5
    iget-object v2, p0, Lcom/android/server/input/InputManagerService$5;->this$0:Lcom/android/server/input/InputManagerService;

    invoke-static {v2}, Lcom/android/server/input/InputManagerService;->-get11(Lcom/android/server/input/InputManagerService;)I

    move-result v2

    if-le v2, v1, :cond_6

    iget-object v1, p0, Lcom/android/server/input/InputManagerService$5;->this$0:Lcom/android/server/input/InputManagerService;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/android/server/input/InputManagerService;->-wrap23(Lcom/android/server/input/InputManagerService;Landroid/view/InputDevice;)V

    goto :goto_2

    :cond_6
    iget-object v2, p0, Lcom/android/server/input/InputManagerService$5;->this$0:Lcom/android/server/input/InputManagerService;

    invoke-static {v2}, Lcom/android/server/input/InputManagerService;->-get11(Lcom/android/server/input/InputManagerService;)I

    move-result v2

    if-ne v2, v1, :cond_1

    iget-object v1, p0, Lcom/android/server/input/InputManagerService$5;->this$0:Lcom/android/server/input/InputManagerService;

    iget-object v2, p0, Lcom/android/server/input/InputManagerService$5;->this$0:Lcom/android/server/input/InputManagerService;

    invoke-static {v2}, Lcom/android/server/input/InputManagerService;->-get12(Lcom/android/server/input/InputManagerService;)Landroid/view/InputDevice;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/input/InputManagerService;->-wrap23(Lcom/android/server/input/InputManagerService;Landroid/view/InputDevice;)V

    goto :goto_2
.end method
