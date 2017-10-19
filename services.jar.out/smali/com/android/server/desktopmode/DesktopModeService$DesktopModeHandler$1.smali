.class Lcom/android/server/desktopmode/DesktopModeService$DesktopModeHandler$1;
.super Ljava/lang/Object;
.source "DesktopModeService.java"

# interfaces
.implements Lcom/android/server/desktopmode/DesktopModeUiManager$InternalServiceCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/desktopmode/DesktopModeService$DesktopModeHandler;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/desktopmode/DesktopModeService$DesktopModeHandler;

.field final synthetic val$enter:Z


# direct methods
.method constructor <init>(Lcom/android/server/desktopmode/DesktopModeService$DesktopModeHandler;Z)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/desktopmode/DesktopModeService$DesktopModeHandler$1;->this$1:Lcom/android/server/desktopmode/DesktopModeService$DesktopModeHandler;

    iput-boolean p2, p0, Lcom/android/server/desktopmode/DesktopModeService$DesktopModeHandler$1;->val$enter:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService$DesktopModeHandler$1;->this$1:Lcom/android/server/desktopmode/DesktopModeService$DesktopModeHandler;

    iget-object v0, v0, Lcom/android/server/desktopmode/DesktopModeService$DesktopModeHandler;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    iget-boolean v1, p0, Lcom/android/server/desktopmode/DesktopModeService$DesktopModeHandler$1;->val$enter:Z

    invoke-static {v0, v1}, Lcom/android/server/desktopmode/DesktopModeService;->-wrap17(Lcom/android/server/desktopmode/DesktopModeService;Z)V

    return-void
.end method
