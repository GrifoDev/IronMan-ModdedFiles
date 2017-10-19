.class Lcom/android/server/desktopmode/DesktopModeUiManager$2;
.super Ljava/lang/Object;
.source "DesktopModeUiManager.java"

# interfaces
.implements Lcom/android/server/desktopmode/DesktopModeUiManager$InternalServiceCallback;


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

.field final synthetic val$dialogType:I


# direct methods
.method constructor <init>(Lcom/android/server/desktopmode/DesktopModeUiManager;ILcom/android/server/desktopmode/DesktopModeUiManager$InternalDialogCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/desktopmode/DesktopModeUiManager$2;->this$0:Lcom/android/server/desktopmode/DesktopModeUiManager;

    iput p2, p0, Lcom/android/server/desktopmode/DesktopModeUiManager$2;->val$dialogType:I

    iput-object p3, p0, Lcom/android/server/desktopmode/DesktopModeUiManager$2;->val$callback:Lcom/android/server/desktopmode/DesktopModeUiManager$InternalDialogCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected()V
    .locals 3

    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeUiManager$2;->this$0:Lcom/android/server/desktopmode/DesktopModeUiManager;

    iget v1, p0, Lcom/android/server/desktopmode/DesktopModeUiManager$2;->val$dialogType:I

    iget-object v2, p0, Lcom/android/server/desktopmode/DesktopModeUiManager$2;->val$callback:Lcom/android/server/desktopmode/DesktopModeUiManager$InternalDialogCallback;

    invoke-virtual {v0, v1, v2}, Lcom/android/server/desktopmode/DesktopModeUiManager;->showDialog(ILcom/android/server/desktopmode/DesktopModeUiManager$InternalDialogCallback;)V

    return-void
.end method
