.class Lcom/android/server/bridge/operations/DbObserver$2;
.super Ljava/lang/Object;
.source "DbObserver.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/bridge/operations/DbObserver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/bridge/operations/DbObserver;


# direct methods
.method constructor <init>(Lcom/android/server/bridge/operations/DbObserver;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/bridge/operations/DbObserver$2;->this$0:Lcom/android/server/bridge/operations/DbObserver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 14

    const/4 v2, 0x0

    const/4 v9, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-wide/16 v0, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v5, 0x0

    const-string/jumbo v8, "SyncTypeCalendar"

    iget-object v10, p0, Lcom/android/server/bridge/operations/DbObserver$2;->this$0:Lcom/android/server/bridge/operations/DbObserver;

    invoke-static {v10}, Lcom/android/server/bridge/operations/DbObserver;->-wrap3(Lcom/android/server/bridge/operations/DbObserver;)Ljava/util/ArrayList;

    move-result-object v2

    iget-object v10, p0, Lcom/android/server/bridge/operations/DbObserver$2;->this$0:Lcom/android/server/bridge/operations/DbObserver;

    invoke-static {v10}, Lcom/android/server/bridge/operations/DbObserver;->-wrap0(Lcom/android/server/bridge/operations/DbObserver;)I

    move-result v3

    iget-object v10, p0, Lcom/android/server/bridge/operations/DbObserver$2;->this$0:Lcom/android/server/bridge/operations/DbObserver;

    invoke-static {v10}, Lcom/android/server/bridge/operations/DbObserver;->-wrap5(Lcom/android/server/bridge/operations/DbObserver;)Ljava/util/ArrayList;

    move-result-object v9

    iget-object v10, p0, Lcom/android/server/bridge/operations/DbObserver$2;->this$0:Lcom/android/server/bridge/operations/DbObserver;

    invoke-static {v10}, Lcom/android/server/bridge/operations/DbObserver;->-wrap2(Lcom/android/server/bridge/operations/DbObserver;)I

    move-result v4

    iget-object v10, p0, Lcom/android/server/bridge/operations/DbObserver$2;->this$0:Lcom/android/server/bridge/operations/DbObserver;

    invoke-static {v10}, Lcom/android/server/bridge/operations/DbObserver;->-wrap6(Lcom/android/server/bridge/operations/DbObserver;)J

    move-result-wide v0

    if-eqz v2, :cond_6

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-lez v10, :cond_6

    :goto_0
    iget-object v10, p0, Lcom/android/server/bridge/operations/DbObserver$2;->this$0:Lcom/android/server/bridge/operations/DbObserver;

    invoke-static {v10}, Lcom/android/server/bridge/operations/DbObserver;->-get0(Lcom/android/server/bridge/operations/DbObserver;)Ljava/lang/String;

    move-result-object v10

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "mCalendarRunnable , mNo_of_events_last_synced : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/android/server/bridge/operations/DbObserver$2;->this$0:Lcom/android/server/bridge/operations/DbObserver;

    invoke-static {v12}, Lcom/android/server/bridge/operations/DbObserver;->-get6(Lcom/android/server/bridge/operations/DbObserver;)I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, " ,mPresent_no_of_Events : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v6, 0x1

    const-string/jumbo v8, "SyncTypeEvents"

    iget-object v10, p0, Lcom/android/server/bridge/operations/DbObserver$2;->this$0:Lcom/android/server/bridge/operations/DbObserver;

    invoke-static {v10, v3}, Lcom/android/server/bridge/operations/DbObserver;->-set4(Lcom/android/server/bridge/operations/DbObserver;I)I

    :cond_0
    if-eqz v9, :cond_7

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-lez v10, :cond_7

    :goto_1
    iget-object v10, p0, Lcom/android/server/bridge/operations/DbObserver$2;->this$0:Lcom/android/server/bridge/operations/DbObserver;

    invoke-static {v10}, Lcom/android/server/bridge/operations/DbObserver;->-get0(Lcom/android/server/bridge/operations/DbObserver;)Ljava/lang/String;

    move-result-object v10

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "mCalendarRunnable , mNo_of_tasks_last_synced  : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/android/server/bridge/operations/DbObserver$2;->this$0:Lcom/android/server/bridge/operations/DbObserver;

    invoke-static {v12}, Lcom/android/server/bridge/operations/DbObserver;->-get7(Lcom/android/server/bridge/operations/DbObserver;)I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, " ,mPresent_no_of_Tasks : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v7, 0x1

    const-string/jumbo v8, "SyncTypeTasks"

    iget-object v10, p0, Lcom/android/server/bridge/operations/DbObserver$2;->this$0:Lcom/android/server/bridge/operations/DbObserver;

    invoke-static {v10, v4}, Lcom/android/server/bridge/operations/DbObserver;->-set5(Lcom/android/server/bridge/operations/DbObserver;I)I

    :cond_1
    iget-object v10, p0, Lcom/android/server/bridge/operations/DbObserver$2;->this$0:Lcom/android/server/bridge/operations/DbObserver;

    invoke-static {v10}, Lcom/android/server/bridge/operations/DbObserver;->-get4(Lcom/android/server/bridge/operations/DbObserver;)J

    move-result-wide v10

    cmp-long v10, v10, v0

    if-eqz v10, :cond_2

    iget-object v10, p0, Lcom/android/server/bridge/operations/DbObserver$2;->this$0:Lcom/android/server/bridge/operations/DbObserver;

    invoke-static {v10}, Lcom/android/server/bridge/operations/DbObserver;->-get0(Lcom/android/server/bridge/operations/DbObserver;)Ljava/lang/String;

    move-result-object v10

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "mCalendarRunnable , mLastSyncedCalendarColor  : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/android/server/bridge/operations/DbObserver$2;->this$0:Lcom/android/server/bridge/operations/DbObserver;

    invoke-static {v12}, Lcom/android/server/bridge/operations/DbObserver;->-get4(Lcom/android/server/bridge/operations/DbObserver;)J

    move-result-wide v12

    invoke-virtual {v11, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, " ,mCurrentCalendarColor : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v5, 0x1

    const-string/jumbo v8, "SyncTypeColor"

    iget-object v10, p0, Lcom/android/server/bridge/operations/DbObserver$2;->this$0:Lcom/android/server/bridge/operations/DbObserver;

    invoke-static {v10, v0, v1}, Lcom/android/server/bridge/operations/DbObserver;->-set2(Lcom/android/server/bridge/operations/DbObserver;J)J

    :cond_2
    if-nez v6, :cond_3

    if-nez v7, :cond_3

    if-eqz v5, :cond_5

    :cond_3
    if-eqz v7, :cond_4

    if-eqz v6, :cond_4

    const-string/jumbo v8, "SyncTypeCalendar"

    :cond_4
    iget-object v10, p0, Lcom/android/server/bridge/operations/DbObserver$2;->this$0:Lcom/android/server/bridge/operations/DbObserver;

    invoke-static {v10}, Lcom/android/server/bridge/operations/DbObserver;->-get0(Lcom/android/server/bridge/operations/DbObserver;)Ljava/lang/String;

    move-result-object v10

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "Calling doSyncForSyncer for CALENDAR , SyncType : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v10, p0, Lcom/android/server/bridge/operations/DbObserver$2;->this$0:Lcom/android/server/bridge/operations/DbObserver;

    invoke-static {v10}, Lcom/android/server/bridge/operations/DbObserver;->-get8(Lcom/android/server/bridge/operations/DbObserver;)Lcom/samsung/android/knox/SemRemoteContentManager;

    move-result-object v10

    const-string/jumbo v11, "Calendar"

    iget-object v12, p0, Lcom/android/server/bridge/operations/DbObserver$2;->this$0:Lcom/android/server/bridge/operations/DbObserver;

    invoke-static {v12}, Lcom/android/server/bridge/operations/DbObserver;->-get9(Lcom/android/server/bridge/operations/DbObserver;)I

    move-result v12

    invoke-virtual {v10, v11, v12, v8}, Lcom/samsung/android/knox/SemRemoteContentManager;->doSyncForSyncer(Ljava/lang/String;ILjava/lang/String;)V

    iget-object v10, p0, Lcom/android/server/bridge/operations/DbObserver$2;->this$0:Lcom/android/server/bridge/operations/DbObserver;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    invoke-static {v10, v12, v13}, Lcom/android/server/bridge/operations/DbObserver;->-set0(Lcom/android/server/bridge/operations/DbObserver;J)J

    iget-object v10, p0, Lcom/android/server/bridge/operations/DbObserver$2;->this$0:Lcom/android/server/bridge/operations/DbObserver;

    invoke-static {v10}, Lcom/android/server/bridge/operations/DbObserver;->-get0(Lcom/android/server/bridge/operations/DbObserver;)Ljava/lang/String;

    move-result-object v10

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "mCalendarRunnable , mCalendar_last_synced_timeStamp :"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/android/server/bridge/operations/DbObserver$2;->this$0:Lcom/android/server/bridge/operations/DbObserver;

    invoke-static {v12}, Lcom/android/server/bridge/operations/DbObserver;->-get1(Lcom/android/server/bridge/operations/DbObserver;)J

    move-result-wide v12

    invoke-virtual {v11, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    return-void

    :cond_6
    iget-object v10, p0, Lcom/android/server/bridge/operations/DbObserver$2;->this$0:Lcom/android/server/bridge/operations/DbObserver;

    invoke-static {v10}, Lcom/android/server/bridge/operations/DbObserver;->-get6(Lcom/android/server/bridge/operations/DbObserver;)I

    move-result v10

    if-eq v3, v10, :cond_0

    goto/16 :goto_0

    :cond_7
    iget-object v10, p0, Lcom/android/server/bridge/operations/DbObserver$2;->this$0:Lcom/android/server/bridge/operations/DbObserver;

    invoke-static {v10}, Lcom/android/server/bridge/operations/DbObserver;->-get7(Lcom/android/server/bridge/operations/DbObserver;)I

    move-result v10

    if-eq v4, v10, :cond_1

    goto/16 :goto_1
.end method
