.class Lcom/android/launcher3/folder/view/FolderView$20;
.super Ljava/lang/Object;
.source "FolderView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/folder/view/FolderView;->onItemRemoved(Lcom/android/launcher3/common/base/item/IconInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/folder/view/FolderView;

.field final synthetic val$item:Lcom/android/launcher3/common/base/item/IconInfo;

.field final synthetic val$v:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/android/launcher3/folder/view/FolderView;Landroid/view/View;Lcom/android/launcher3/common/base/item/IconInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/folder/view/FolderView$20;->this$0:Lcom/android/launcher3/folder/view/FolderView;

    iput-object p2, p0, Lcom/android/launcher3/folder/view/FolderView$20;->val$v:Landroid/view/View;

    iput-object p3, p0, Lcom/android/launcher3/folder/view/FolderView$20;->val$item:Lcom/android/launcher3/common/base/item/IconInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/android/launcher3/folder/view/FolderView$20;->this$0:Lcom/android/launcher3/folder/view/FolderView;

    invoke-static {v0}, Lcom/android/launcher3/folder/view/FolderView;->access$1800(Lcom/android/launcher3/folder/view/FolderView;)Lcom/android/launcher3/common/multiselect/MultiSelectManager;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/folder/view/FolderView$20;->this$0:Lcom/android/launcher3/folder/view/FolderView;

    invoke-static {v0}, Lcom/android/launcher3/folder/view/FolderView;->access$1800(Lcom/android/launcher3/folder/view/FolderView;)Lcom/android/launcher3/common/multiselect/MultiSelectManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/common/multiselect/MultiSelectManager;->isMultiSelectMode()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/folder/view/FolderView$20;->val$v:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/folder/view/FolderView$20;->this$0:Lcom/android/launcher3/folder/view/FolderView;

    invoke-static {v0}, Lcom/android/launcher3/folder/view/FolderView;->access$1900(Lcom/android/launcher3/folder/view/FolderView;)Lcom/android/launcher3/Launcher;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/folder/view/FolderView$20;->val$item:Lcom/android/launcher3/common/base/item/IconInfo;

    invoke-static {v0, v1}, Lcom/android/launcher3/Utilities;->isAppEnabled(Landroid/content/Context;Lcom/android/launcher3/common/base/item/IconInfo;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/folder/view/FolderView$20;->this$0:Lcom/android/launcher3/folder/view/FolderView;

    invoke-static {v0}, Lcom/android/launcher3/folder/view/FolderView;->access$1800(Lcom/android/launcher3/folder/view/FolderView;)Lcom/android/launcher3/common/multiselect/MultiSelectManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/folder/view/FolderView$20;->val$v:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/common/multiselect/MultiSelectManager;->removeCheckedApp(Landroid/view/View;)V

    :cond_0
    return-void
.end method
