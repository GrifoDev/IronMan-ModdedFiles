.class Lcom/android/systemui/recents/views/AppInfoViewHolder$1;
.super Ljava/lang/Object;
.source "AppInfoViewHolder.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/recents/views/AppInfoViewHolder;->startApp(Lcom/android/systemui/recents/model/AppInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/recents/views/AppInfoViewHolder$1$-void_run__LambdaImpl0;
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/recents/views/AppInfoViewHolder;

.field final synthetic val$appInfo:Lcom/android/systemui/recents/model/AppInfo;


# direct methods
.method static synthetic -com_android_systemui_recents_views_AppInfoViewHolder$1_lambda$1(Lcom/android/systemui/recents/misc/SystemServicesProxy;ILjava/lang/String;Ljava/lang/String;Landroid/app/ActivityManager$RunningTaskInfo;)Z
    .locals 4

    const/4 v2, 0x0

    iget-object v3, p4, Landroid/app/ActivityManager$RunningTaskInfo;->baseActivity:Landroid/content/ComponentName;

    invoke-virtual {p0, v3}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getTaskAffinity(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v0

    iget-object v3, p4, Landroid/app/ActivityManager$RunningTaskInfo;->baseActivity:Landroid/content/ComponentName;

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    iget v3, p4, Landroid/app/ActivityManager$RunningTaskInfo;->userId:I

    if-ne v3, p1, :cond_0

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    if-eqz p3, :cond_1

    if-eqz v0, :cond_0

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    :cond_0
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x1

    goto :goto_0
.end method

.method constructor <init>(Lcom/android/systemui/recents/views/AppInfoViewHolder;Lcom/android/systemui/recents/model/AppInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/recents/views/AppInfoViewHolder$1;->this$0:Lcom/android/systemui/recents/views/AppInfoViewHolder;

    iput-object p2, p0, Lcom/android/systemui/recents/views/AppInfoViewHolder$1;->val$appInfo:Lcom/android/systemui/recents/model/AppInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 22

    const/4 v13, 0x0

    :try_start_0
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSystemServices()Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getDockedTasks()Ljava/util/List;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/recents/views/AppInfoViewHolder$1;->val$appInfo:Lcom/android/systemui/recents/model/AppInfo;

    iget-object v5, v5, Lcom/android/systemui/recents/model/AppInfo;->resolveInfo:Landroid/content/pm/ResolveInfo;

    iget-object v5, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v15, v5, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/recents/views/AppInfoViewHolder$1;->val$appInfo:Lcom/android/systemui/recents/model/AppInfo;

    iget-object v5, v5, Lcom/android/systemui/recents/model/AppInfo;->resolveInfo:Landroid/content/pm/ResolveInfo;

    iget-object v5, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v5, Landroid/content/pm/ActivityInfo;->taskAffinity:Ljava/lang/String;

    move-object/from16 v19, v0

    const/4 v4, -0x1

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/recents/views/AppInfoViewHolder$1;->val$appInfo:Lcom/android/systemui/recents/model/AppInfo;

    iget v7, v5, Lcom/android/systemui/recents/model/AppInfo;->userId:I

    const/16 v21, 0x0

    if-eqz v20, :cond_0

    invoke-interface/range {v20 .. v20}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v5

    const-wide/16 v8, 0x1

    invoke-interface {v5, v8, v9}, Ljava/util/stream/Stream;->skip(J)Ljava/util/stream/Stream;

    move-result-object v5

    new-instance v6, Lcom/android/systemui/recents/views/AppInfoViewHolder$1$-void_run__LambdaImpl0;

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    invoke-direct {v6, v0, v7, v15, v1}, Lcom/android/systemui/recents/views/AppInfoViewHolder$1$-void_run__LambdaImpl0;-><init>(Lcom/android/systemui/recents/misc/SystemServicesProxy;ILjava/lang/String;Ljava/lang/String;)V

    invoke-interface {v5, v6}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v5

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/app/ActivityManager$RunningTaskInfo;

    const/4 v13, 0x1

    move-object/from16 v0, v17

    iget v4, v0, Landroid/app/ActivityManager$RunningTaskInfo;->id:I

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/recents/views/AppInfoViewHolder$1;->val$appInfo:Lcom/android/systemui/recents/model/AppInfo;

    iget-object v5, v5, Lcom/android/systemui/recents/model/AppInfo;->resolveInfo:Landroid/content/pm/ResolveInfo;

    iget-object v5, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v0, v16

    invoke-virtual {v0, v5, v7}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getBadgedActivityLabel(Landroid/content/pm/ActivityInfo;I)Ljava/lang/String;

    move-result-object v21

    :cond_0
    if-eqz v13, :cond_1

    new-instance v3, Lcom/android/systemui/recents/model/Task$TaskKey;

    const-wide/16 v8, -0x1

    const-wide/16 v10, -0x1

    const/4 v5, 0x3

    const/4 v6, 0x0

    invoke-direct/range {v3 .. v11}, Lcom/android/systemui/recents/model/Task$TaskKey;-><init>(IILandroid/content/Intent;IJJ)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/recents/views/AppInfoViewHolder$1;->this$0:Lcom/android/systemui/recents/views/AppInfoViewHolder;

    iget-object v5, v5, Lcom/android/systemui/recents/views/AppInfoViewHolder;->mContext:Landroid/content/Context;

    const/4 v6, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, v21

    invoke-virtual {v0, v5, v3, v1, v6}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->startActivityFromRecents(Landroid/content/Context;Lcom/android/systemui/recents/model/Task$TaskKey;Ljava/lang/String;Landroid/app/ActivityOptions;)Z

    :goto_0
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/recents/views/AppInfoViewHolder$1;->this$0:Lcom/android/systemui/recents/views/AppInfoViewHolder;

    iget-object v5, v5, Lcom/android/systemui/recents/views/AppInfoViewHolder;->mContext:Landroid/content/Context;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/systemui/recents/views/AppInfoViewHolder$1;->val$appInfo:Lcom/android/systemui/recents/model/AppInfo;

    iget-object v8, v8, Lcom/android/systemui/recents/model/AppInfo;->resolveInfo:Landroid/content/pm/ResolveInfo;

    iget-object v8, v8, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v8, v8, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v8, ":"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/16 v8, 0x115

    invoke-static {v5, v8, v6}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;ILjava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/recents/views/AppInfoViewHolder$1;->val$appInfo:Lcom/android/systemui/recents/model/AppInfo;

    iget v6, v5, Lcom/android/systemui/recents/model/AppInfo;->executeCount:I

    add-int/lit8 v6, v6, 0x1

    iput v6, v5, Lcom/android/systemui/recents/model/AppInfo;->executeCount:I

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/recents/views/AppInfoViewHolder$1;->this$0:Lcom/android/systemui/recents/views/AppInfoViewHolder;

    iget-object v5, v5, Lcom/android/systemui/recents/views/AppInfoViewHolder;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/systemui/recents/views/AppInfoViewHolder$1;->val$appInfo:Lcom/android/systemui/recents/model/AppInfo;

    iget-object v6, v6, Lcom/android/systemui/recents/model/AppInfo;->resolveInfo:Landroid/content/pm/ResolveInfo;

    iget-object v6, v6, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/systemui/recents/views/AppInfoViewHolder$1;->val$appInfo:Lcom/android/systemui/recents/model/AppInfo;

    iget v8, v8, Lcom/android/systemui/recents/model/AppInfo;->executeCount:I

    invoke-static {v5, v6, v8}, Lcom/android/systemui/recents/misc/AppListUsageStats;->storeCount(Landroid/content/Context;Ljava/lang/String;I)V

    :goto_1
    return-void

    :cond_1
    new-instance v12, Landroid/content/Intent;

    const-string/jumbo v5, "android.intent.action.MAIN"

    invoke-direct {v12, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v5, "android.intent.category.LAUNCHER"

    invoke-virtual {v12, v5}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    new-instance v5, Landroid/content/ComponentName;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/systemui/recents/views/AppInfoViewHolder$1;->val$appInfo:Lcom/android/systemui/recents/model/AppInfo;

    iget-object v6, v6, Lcom/android/systemui/recents/model/AppInfo;->resolveInfo:Landroid/content/pm/ResolveInfo;

    iget-object v6, v6, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/systemui/recents/views/AppInfoViewHolder$1;->val$appInfo:Lcom/android/systemui/recents/model/AppInfo;

    iget-object v8, v8, Lcom/android/systemui/recents/model/AppInfo;->resolveInfo:Landroid/content/pm/ResolveInfo;

    iget-object v8, v8, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v8, v8, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v5, v6, v8}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v12, v5}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const-string/jumbo v5, "com.google.android.youtube"

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/systemui/recents/views/AppInfoViewHolder$1;->val$appInfo:Lcom/android/systemui/recents/model/AppInfo;

    iget-object v6, v6, Lcom/android/systemui/recents/model/AppInfo;->resolveInfo:Landroid/content/pm/ResolveInfo;

    iget-object v6, v6, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    const/high16 v5, 0x10000000

    invoke-virtual {v12, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    :goto_2
    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    move-result-object v14

    const/4 v5, 0x1

    invoke-virtual {v14, v5}, Landroid/app/ActivityOptions;->setLaunchStackId(I)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/recents/views/AppInfoViewHolder$1;->this$0:Lcom/android/systemui/recents/views/AppInfoViewHolder;

    iget-object v5, v5, Lcom/android/systemui/recents/views/AppInfoViewHolder;->mContext:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v6

    new-instance v8, Landroid/os/UserHandle;

    invoke-direct {v8, v7}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v5, v12, v6, v8}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/Bundle;Landroid/os/UserHandle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    :cond_2
    const/high16 v5, 0x10200000

    :try_start_1
    invoke-virtual {v12, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2
.end method
