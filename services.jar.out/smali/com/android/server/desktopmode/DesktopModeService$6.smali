.class Lcom/android/server/desktopmode/DesktopModeService$6;
.super Ljava/lang/Object;
.source "DesktopModeService.java"

# interfaces
.implements Landroid/view/WindowManagerPolicy$PointerEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/desktopmode/DesktopModeService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/desktopmode/DesktopModeService;


# direct methods
.method constructor <init>(Lcom/android/server/desktopmode/DesktopModeService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/desktopmode/DesktopModeService$6;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPointerEvent(Landroid/view/MotionEvent;)V
    .locals 3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDevice()Landroid/view/InputDevice;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    const/16 v2, 0x9

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/android/server/desktopmode/DesktopModeService$6;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {v1}, Lcom/android/server/desktopmode/DesktopModeService;->-get14(Lcom/android/server/desktopmode/DesktopModeService;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/16 v1, 0x4002

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->isFromSource(I)Z

    move-result v1

    if-nez v1, :cond_2

    if-eqz v0, :cond_0

    const-string/jumbo v1, "sec_e-pen-pad"

    invoke-virtual {v0}, Landroid/view/InputDevice;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_2
    iget-object v1, p0, Lcom/android/server/desktopmode/DesktopModeService$6;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/android/server/desktopmode/DesktopModeService;->-set3(Lcom/android/server/desktopmode/DesktopModeService;Z)Z

    iget-object v1, p0, Lcom/android/server/desktopmode/DesktopModeService$6;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {v1}, Lcom/android/server/desktopmode/DesktopModeService;->-wrap35(Lcom/android/server/desktopmode/DesktopModeService;)V

    goto :goto_0
.end method
