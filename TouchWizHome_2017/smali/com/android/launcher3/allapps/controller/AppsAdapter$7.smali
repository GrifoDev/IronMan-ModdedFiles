.class Lcom/android/launcher3/allapps/controller/AppsAdapter$7;
.super Ljava/lang/Object;
.source "AppsAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/allapps/controller/AppsAdapter;->addItemToFolder(Lcom/android/launcher3/folder/FolderInfo;Ljava/util/ArrayList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/allapps/controller/AppsAdapter;

.field final synthetic val$folder:Lcom/android/launcher3/folder/FolderInfo;

.field final synthetic val$items:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/android/launcher3/allapps/controller/AppsAdapter;Lcom/android/launcher3/folder/FolderInfo;Ljava/util/ArrayList;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/allapps/controller/AppsAdapter$7;->this$0:Lcom/android/launcher3/allapps/controller/AppsAdapter;

    iput-object p2, p0, Lcom/android/launcher3/allapps/controller/AppsAdapter$7;->val$folder:Lcom/android/launcher3/folder/FolderInfo;

    iput-object p3, p0, Lcom/android/launcher3/allapps/controller/AppsAdapter$7;->val$items:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    const/4 v8, -0x1

    iget-object v4, p0, Lcom/android/launcher3/allapps/controller/AppsAdapter$7;->this$0:Lcom/android/launcher3/allapps/controller/AppsAdapter;

    iget-object v4, v4, Lcom/android/launcher3/allapps/controller/AppsAdapter;->mListener:Lcom/android/launcher3/allapps/controller/AppsAdapter$DataListener;

    iget-object v5, p0, Lcom/android/launcher3/allapps/controller/AppsAdapter$7;->val$folder:Lcom/android/launcher3/folder/FolderInfo;

    iget-wide v6, v5, Lcom/android/launcher3/folder/FolderInfo;->id:J

    invoke-interface {v4, v6, v7}, Lcom/android/launcher3/allapps/controller/AppsAdapter$DataListener;->getAppsIconByItemId(J)Landroid/view/View;

    move-result-object v4

    instance-of v4, v4, Lcom/android/launcher3/folder/view/FolderIconView;

    if-nez v4, :cond_3

    iget-object v4, p0, Lcom/android/launcher3/allapps/controller/AppsAdapter$7;->val$items:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/common/base/item/IconInfo;

    iget-object v5, p0, Lcom/android/launcher3/allapps/controller/AppsAdapter$7;->this$0:Lcom/android/launcher3/allapps/controller/AppsAdapter;

    iget-object v5, v5, Lcom/android/launcher3/allapps/controller/AppsAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/launcher3/allapps/controller/AppsAdapter$7;->this$0:Lcom/android/launcher3/allapps/controller/AppsAdapter;

    iget-object v5, v5, Lcom/android/launcher3/allapps/controller/AppsAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v5, p0, Lcom/android/launcher3/allapps/controller/AppsAdapter$7;->this$0:Lcom/android/launcher3/allapps/controller/AppsAdapter;

    invoke-virtual {v5, v0}, Lcom/android/launcher3/allapps/controller/AppsAdapter;->removeViewAndReorder(Lcom/android/launcher3/common/base/item/IconInfo;)V

    goto :goto_0

    :cond_1
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v4, p0, Lcom/android/launcher3/allapps/controller/AppsAdapter$7;->val$items:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/common/base/item/IconInfo;

    iget-object v5, p0, Lcom/android/launcher3/allapps/controller/AppsAdapter$7;->val$folder:Lcom/android/launcher3/folder/FolderInfo;

    iget-wide v6, v5, Lcom/android/launcher3/folder/FolderInfo;->id:J

    iput-wide v6, v0, Lcom/android/launcher3/common/base/item/IconInfo;->container:J

    const-wide/16 v6, -0x1

    iput-wide v6, v0, Lcom/android/launcher3/common/base/item/IconInfo;->screenId:J

    iput v8, v0, Lcom/android/launcher3/common/base/item/IconInfo;->rank:I

    const/4 v5, 0x1

    iput-boolean v5, v0, Lcom/android/launcher3/common/base/item/IconInfo;->mDirty:Z

    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    const-string v5, "container"

    iget-object v6, p0, Lcom/android/launcher3/allapps/controller/AppsAdapter$7;->val$folder:Lcom/android/launcher3/folder/FolderInfo;

    iget-wide v6, v6, Lcom/android/launcher3/folder/FolderInfo;->id:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v5, "screen"

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v5, "rank"

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    iget-object v4, p0, Lcom/android/launcher3/allapps/controller/AppsAdapter$7;->this$0:Lcom/android/launcher3/allapps/controller/AppsAdapter;

    iget-object v5, p0, Lcom/android/launcher3/allapps/controller/AppsAdapter$7;->this$0:Lcom/android/launcher3/allapps/controller/AppsAdapter;

    iget-object v5, v5, Lcom/android/launcher3/allapps/controller/AppsAdapter;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v4, v5, v3, v1}, Lcom/android/launcher3/allapps/controller/AppsAdapter;->updateItemsInDatabaseHelper(Landroid/content/Context;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    :cond_3
    const-string v4, "addItemToFolder item : "

    iget-object v5, p0, Lcom/android/launcher3/allapps/controller/AppsAdapter$7;->val$items:Ljava/util/ArrayList;

    invoke-static {v4, v5}, Lcom/android/launcher3/allapps/controller/AppsAdapter;->debugItemInfo(Ljava/lang/String;Ljava/util/ArrayList;)V

    iget-object v4, p0, Lcom/android/launcher3/allapps/controller/AppsAdapter$7;->val$folder:Lcom/android/launcher3/folder/FolderInfo;

    iget-object v5, p0, Lcom/android/launcher3/allapps/controller/AppsAdapter$7;->val$items:Ljava/util/ArrayList;

    invoke-virtual {v4, v5}, Lcom/android/launcher3/folder/FolderInfo;->add(Ljava/util/ArrayList;)V

    return-void
.end method
