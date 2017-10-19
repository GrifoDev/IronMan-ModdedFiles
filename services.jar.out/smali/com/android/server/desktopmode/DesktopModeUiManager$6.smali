.class Lcom/android/server/desktopmode/DesktopModeUiManager$6;
.super Ljava/lang/Object;
.source "DesktopModeUiManager.java"

# interfaces
.implements Lcom/android/server/desktopmode/DesktopModeUiManager$InternalServiceCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/desktopmode/DesktopModeUiManager;->showNotification(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/desktopmode/DesktopModeUiManager;

.field final synthetic val$type:I


# direct methods
.method constructor <init>(Lcom/android/server/desktopmode/DesktopModeUiManager;I)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/desktopmode/DesktopModeUiManager$6;->this$0:Lcom/android/server/desktopmode/DesktopModeUiManager;

    iput p2, p0, Lcom/android/server/desktopmode/DesktopModeUiManager$6;->val$type:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeUiManager$6;->this$0:Lcom/android/server/desktopmode/DesktopModeUiManager;

    iget v1, p0, Lcom/android/server/desktopmode/DesktopModeUiManager$6;->val$type:I

    invoke-virtual {v0, v1}, Lcom/android/server/desktopmode/DesktopModeUiManager;->showNotification(I)V

    return-void
.end method
