.class Lcom/android/launcher3/common/drag/DragManager$3;
.super Ljava/lang/Object;
.source "DragManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/common/drag/DragManager;->endDrag()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/common/drag/DragManager;

.field final synthetic val$deferredDragInfo:Ljava/lang/Object;

.field final synthetic val$deferredDragObject:Lcom/android/launcher3/common/drag/DropTarget$DragObject;

.field final synthetic val$deferredDragView:Lcom/android/launcher3/common/drag/DragView;


# direct methods
.method constructor <init>(Lcom/android/launcher3/common/drag/DragManager;Ljava/lang/Object;Lcom/android/launcher3/common/drag/DragView;Lcom/android/launcher3/common/drag/DropTarget$DragObject;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/common/drag/DragManager$3;->this$0:Lcom/android/launcher3/common/drag/DragManager;

    iput-object p2, p0, Lcom/android/launcher3/common/drag/DragManager$3;->val$deferredDragInfo:Ljava/lang/Object;

    iput-object p3, p0, Lcom/android/launcher3/common/drag/DragManager$3;->val$deferredDragView:Lcom/android/launcher3/common/drag/DragView;

    iput-object p4, p0, Lcom/android/launcher3/common/drag/DragManager$3;->val$deferredDragObject:Lcom/android/launcher3/common/drag/DropTarget$DragObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v1, p0, Lcom/android/launcher3/common/drag/DragManager$3;->val$deferredDragInfo:Ljava/lang/Object;

    instance-of v1, v1, Lcom/android/launcher3/common/base/item/PendingAddItemInfo;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/launcher3/common/drag/DragManager$3;->val$deferredDragInfo:Ljava/lang/Object;

    check-cast v1, Lcom/android/launcher3/common/base/item/PendingAddItemInfo;

    invoke-virtual {v1}, Lcom/android/launcher3/common/base/item/PendingAddItemInfo;->getProviderInfo()Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo;

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    :goto_0
    iget-object v1, p0, Lcom/android/launcher3/common/drag/DragManager$3;->val$deferredDragView:Lcom/android/launcher3/common/drag/DragView;

    invoke-virtual {v1}, Lcom/android/launcher3/common/drag/DragView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_0

    if-nez v0, :cond_0

    iget-object v1, p0, Lcom/android/launcher3/common/drag/DragManager$3;->val$deferredDragView:Lcom/android/launcher3/common/drag/DragView;

    invoke-virtual {v1}, Lcom/android/launcher3/common/drag/DragView;->remove()V

    const-string v1, "Launcher.DragManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "force remove deferredDragView - cancelled="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/launcher3/common/drag/DragManager$3;->val$deferredDragObject:Lcom/android/launcher3/common/drag/DropTarget$DragObject;

    iget-boolean v3, v3, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->cancelled:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", cancelDropFolder="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/launcher3/common/drag/DragManager$3;->val$deferredDragObject:Lcom/android/launcher3/common/drag/DropTarget$DragObject;

    iget-boolean v3, v3, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->cancelDropFolder:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", restored="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/launcher3/common/drag/DragManager$3;->val$deferredDragObject:Lcom/android/launcher3/common/drag/DropTarget$DragObject;

    iget-boolean v3, v3, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->restored:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", source="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/launcher3/common/drag/DragManager$3;->val$deferredDragObject:Lcom/android/launcher3/common/drag/DropTarget$DragObject;

    iget-object v3, v3, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragSource:Lcom/android/launcher3/common/drag/DragSource;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", info="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/launcher3/common/drag/DragManager$3;->val$deferredDragObject:Lcom/android/launcher3/common/drag/DropTarget$DragObject;

    iget-object v3, v3, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
