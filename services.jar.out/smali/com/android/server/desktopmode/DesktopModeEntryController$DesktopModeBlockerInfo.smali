.class Lcom/android/server/desktopmode/DesktopModeEntryController$DesktopModeBlockerInfo;
.super Ljava/lang/Object;
.source "DesktopModeEntryController.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/desktopmode/DesktopModeEntryController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DesktopModeBlockerInfo"
.end annotation


# instance fields
.field final blocker:Lcom/samsung/android/desktopmode/IDesktopModeBlocker;

.field final name:Ljava/lang/String;

.field final pid:I

.field final synthetic this$0:Lcom/android/server/desktopmode/DesktopModeEntryController;

.field final uid:I


# direct methods
.method constructor <init>(Lcom/android/server/desktopmode/DesktopModeEntryController;Lcom/samsung/android/desktopmode/IDesktopModeBlocker;Ljava/lang/String;II)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/desktopmode/DesktopModeEntryController$DesktopModeBlockerInfo;->this$0:Lcom/android/server/desktopmode/DesktopModeEntryController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/server/desktopmode/DesktopModeEntryController$DesktopModeBlockerInfo;->blocker:Lcom/samsung/android/desktopmode/IDesktopModeBlocker;

    iput-object p3, p0, Lcom/android/server/desktopmode/DesktopModeEntryController$DesktopModeBlockerInfo;->name:Ljava/lang/String;

    iput p4, p0, Lcom/android/server/desktopmode/DesktopModeEntryController$DesktopModeBlockerInfo;->pid:I

    iput p5, p0, Lcom/android/server/desktopmode/DesktopModeEntryController$DesktopModeBlockerInfo;->uid:I

    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 3

    invoke-static {}, Lcom/android/server/desktopmode/DesktopModeEntryController;->-get0()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "binderDied(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeEntryController$DesktopModeBlockerInfo;->this$0:Lcom/android/server/desktopmode/DesktopModeEntryController;

    invoke-static {v0}, Lcom/android/server/desktopmode/DesktopModeEntryController;->-get1(Lcom/android/server/desktopmode/DesktopModeEntryController;)Ljava/util/Map;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeEntryController$DesktopModeBlockerInfo;->this$0:Lcom/android/server/desktopmode/DesktopModeEntryController;

    invoke-static {v0}, Lcom/android/server/desktopmode/DesktopModeEntryController;->-get1(Lcom/android/server/desktopmode/DesktopModeEntryController;)Ljava/util/Map;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/desktopmode/DesktopModeEntryController$DesktopModeBlockerInfo;->blocker:Lcom/samsung/android/desktopmode/IDesktopModeBlocker;

    invoke-interface {v2}, Lcom/samsung/android/desktopmode/IDesktopModeBlocker;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeEntryController$DesktopModeBlockerInfo;->blocker:Lcom/samsung/android/desktopmode/IDesktopModeBlocker;

    invoke-interface {v0}, Lcom/samsung/android/desktopmode/IDesktopModeBlocker;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    new-instance v1, Ljava/lang/StringBuilder;

    const-class v2, Lcom/android/server/desktopmode/DesktopModeEntryController$DesktopModeBlockerInfo;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/desktopmode/DesktopModeEntryController$DesktopModeBlockerInfo;->blocker:Lcom/samsung/android/desktopmode/IDesktopModeBlocker;

    if-eqz v2, :cond_0

    :try_start_0
    const-string/jumbo v2, "identifier="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/desktopmode/DesktopModeEntryController$DesktopModeBlockerInfo;->blocker:Lcom/samsung/android/desktopmode/IDesktopModeBlocker;

    invoke-interface {v3}, Lcom/samsung/android/desktopmode/IDesktopModeBlocker;->getIdentifier()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    const-string/jumbo v2, "name="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/desktopmode/DesktopModeEntryController$DesktopModeBlockerInfo;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", pid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/server/desktopmode/DesktopModeEntryController$DesktopModeBlockerInfo;->pid:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", uid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/server/desktopmode/DesktopModeEntryController$DesktopModeBlockerInfo;->uid:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    :catch_0
    move-exception v0

    goto :goto_0
.end method
