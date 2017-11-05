.class public Lcom/android/systemui/recents/misc/RecentsStatistics;
.super Ljava/lang/Object;
.source "RecentsStatistics.java"


# instance fields
.field mContext:Landroid/content/Context;

.field mHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/recents/misc/RecentsStatistics;->mContext:Landroid/content/Context;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/recents/misc/RecentsStatistics;->mHandler:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public final onBusEvent(Lcom/android/systemui/recents/events/activity/AppListLaunchTaskInformationEvent;)V
    .locals 3

    const-string/jumbo v1, "502"

    const-string/jumbo v2, "5132"

    iget-boolean v0, p1, Lcom/android/systemui/recents/events/activity/AppListLaunchTaskInformationEvent;->recommendation:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "Frequently used apps"

    :goto_0
    invoke-static {v1, v2, v0}, Lcom/android/systemui/SystemUIAnalytics;->sendEventLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const-string/jumbo v0, "MW apps"

    goto :goto_0
.end method

.method public final onBusEvent(Lcom/android/systemui/recents/events/activity/DockedTopTaskEvent;)V
    .locals 2

    const-string/jumbo v0, "DOBY"

    const-string/jumbo v1, "RecentsLong"

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/recents/misc/RecentsStatistics;->sendMultiWindowDiagnosticDataToGSIM(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final onBusEvent(Lcom/android/systemui/recents/events/activity/LaunchDockedTaskByDragDropEvent;)V
    .locals 2

    const-string/jumbo v0, "DOBY"

    const-string/jumbo v1, "RecentsDragging"

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/recents/misc/RecentsStatistics;->sendMultiWindowDiagnosticDataToGSIM(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final onBusEvent(Lcom/android/systemui/recents/events/activity/LaunchSplitTaskEvent;)V
    .locals 2

    const-string/jumbo v0, "DOBY"

    const-string/jumbo v1, "RecentsMWButton"

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/recents/misc/RecentsStatistics;->sendMultiWindowDiagnosticDataToGSIM(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final onBusEvent(Lcom/android/systemui/recents/events/activity/LaunchTaskEvent;)V
    .locals 2

    const-string/jumbo v0, "RC01"

    iget-object v1, p1, Lcom/android/systemui/recents/events/activity/LaunchTaskEvent;->task:Lcom/android/systemui/recents/model/Task;

    iget-object v1, v1, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    invoke-virtual {v1}, Lcom/android/systemui/recents/model/Task$TaskKey;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/recents/misc/RecentsStatistics;->sendDiagnosticDataToGSIM(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v0, p1, Lcom/android/systemui/recents/events/activity/LaunchTaskEvent;->isFreeformDragging:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "FFBY"

    const-string/jumbo v1, "RecentsDragging"

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/recents/misc/RecentsStatistics;->sendMultiWindowDiagnosticDataToGSIM(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final onBusEvent(Lcom/android/systemui/recents/events/activity/LaunchTaskInformationEvent;)V
    .locals 6

    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSettingHelper()Lcom/android/systemui/recents/model/RecentsSettingHelper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/systemui/recents/model/RecentsSettingHelper;->isDesktopMode()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string/jumbo v1, "503"

    const-string/jumbo v0, "5141"

    :goto_0
    iget-object v2, p1, Lcom/android/systemui/recents/events/activity/LaunchTaskInformationEvent;->task:Lcom/android/systemui/recents/model/Task;

    iget-object v2, v2, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    invoke-virtual {v2}, Lcom/android/systemui/recents/model/Task$TaskKey;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    iget v3, p1, Lcom/android/systemui/recents/events/activity/LaunchTaskInformationEvent;->launchTaskIndex:I

    int-to-long v4, v3

    invoke-static {v1, v0, v2, v4, v5}, Lcom/android/systemui/SystemUIAnalytics;->sendEventLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    return-void

    :cond_0
    const-string/jumbo v1, "500"

    const-string/jumbo v0, "5101"

    goto :goto_0
.end method

.method public final onBusEvent(Lcom/android/systemui/recents/events/activity/LaunchTaskPostEvent;)V
    .locals 2

    iget-boolean v0, p1, Lcom/android/systemui/recents/events/activity/LaunchTaskPostEvent;->byDoubleTap:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "500"

    const-string/jumbo v1, "5110"

    invoke-static {v0, v1}, Lcom/android/systemui/SystemUIAnalytics;->sendEventLog(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final onBusEvent(Lcom/android/systemui/recents/events/activity/ScreenRatioChangeInformationEvent;)V
    .locals 6

    const-string/jumbo v1, "500"

    const-string/jumbo v2, "5104"

    iget-object v3, p1, Lcom/android/systemui/recents/events/activity/ScreenRatioChangeInformationEvent;->packageName:Ljava/lang/String;

    iget-boolean v0, p1, Lcom/android/systemui/recents/events/activity/ScreenRatioChangeInformationEvent;->enlarged:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    int-to-long v4, v0

    invoke-static {v1, v2, v3, v4, v5}, Lcom/android/systemui/SystemUIAnalytics;->sendEventLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    return-void

    :cond_0
    const/4 v0, 0x2

    goto :goto_0
.end method

.method public final onBusEvent(Lcom/android/systemui/recents/events/ui/DismissAllTaskViewsEvent;)V
    .locals 4

    const-string/jumbo v2, "RCA1"

    iget v3, p1, Lcom/android/systemui/recents/events/ui/DismissAllTaskViewsEvent;->allTasksCount:I

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lcom/android/systemui/recents/misc/RecentsStatistics;->sendDiagnosticDataToGSIM(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSettingHelper()Lcom/android/systemui/recents/model/RecentsSettingHelper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/systemui/recents/model/RecentsSettingHelper;->isDesktopMode()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string/jumbo v1, "503"

    const-string/jumbo v0, "5144"

    :goto_0
    iget v2, p1, Lcom/android/systemui/recents/events/ui/DismissAllTaskViewsEvent;->allTasksCount:I

    int-to-long v2, v2

    invoke-static {v1, v0, v2, v3}, Lcom/android/systemui/SystemUIAnalytics;->sendEventLog(Ljava/lang/String;Ljava/lang/String;J)V

    return-void

    :cond_0
    const-string/jumbo v1, "500"

    const-string/jumbo v0, "5105"

    goto :goto_0
.end method

.method public final onBusEvent(Lcom/android/systemui/recents/events/ui/MenuItemSelectedEvent;)V
    .locals 3

    const-string/jumbo v1, "500"

    iget v2, p1, Lcom/android/systemui/recents/events/ui/MenuItemSelectedEvent;->type:I

    packed-switch v2, :pswitch_data_0

    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_0

    invoke-static {v1, v0}, Lcom/android/systemui/SystemUIAnalytics;->sendEventLog(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void

    :pswitch_0
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSettingHelper()Lcom/android/systemui/recents/model/RecentsSettingHelper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/systemui/recents/model/RecentsSettingHelper;->isDesktopMode()Z

    move-result v2

    if-eqz v2, :cond_1

    const-string/jumbo v1, "503"

    const-string/jumbo v0, "5145"

    goto :goto_0

    :cond_1
    const-string/jumbo v0, "5106"

    goto :goto_0

    :pswitch_1
    const-string/jumbo v0, "5107"

    goto :goto_0

    :pswitch_2
    const-string/jumbo v0, "5108"

    goto :goto_0

    :pswitch_3
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSettingHelper()Lcom/android/systemui/recents/model/RecentsSettingHelper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/systemui/recents/model/RecentsSettingHelper;->isDesktopMode()Z

    move-result v2

    if-eqz v2, :cond_2

    const-string/jumbo v1, "503"

    const-string/jumbo v0, "5148"

    goto :goto_0

    :cond_2
    const-string/jumbo v0, "5109"

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public final onBusEvent(Lcom/android/systemui/recents/events/ui/RecentsAppLockEvent;)V
    .locals 4

    const-string/jumbo v2, "RSAL"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Lcom/android/systemui/recents/misc/RecentsStatistics;->sendDiagnosticDataToGSIM(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v2, p1, Lcom/android/systemui/recents/events/ui/RecentsAppLockEvent;->inEditMode:Z

    if-nez v2, :cond_0

    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSettingHelper()Lcom/android/systemui/recents/model/RecentsSettingHelper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/systemui/recents/model/RecentsSettingHelper;->isDesktopMode()Z

    move-result v2

    if-eqz v2, :cond_1

    const-string/jumbo v1, "503"

    const-string/jumbo v0, "5143"

    :goto_0
    iget-object v2, p1, Lcom/android/systemui/recents/events/ui/RecentsAppLockEvent;->task:Lcom/android/systemui/recents/model/Task;

    iget-object v2, v2, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    invoke-virtual {v2}, Lcom/android/systemui/recents/model/Task$TaskKey;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v0, v2}, Lcom/android/systemui/SystemUIAnalytics;->sendEventLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void

    :cond_1
    const-string/jumbo v1, "500"

    const-string/jumbo v0, "5103"

    goto :goto_0
.end method

.method public final onBusEvent(Lcom/android/systemui/recents/events/ui/SlidingViewToggleEvent;)V
    .locals 2

    iget-boolean v0, p1, Lcom/android/systemui/recents/events/ui/SlidingViewToggleEvent;->isRecents:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "502"

    const-string/jumbo v1, "5131"

    invoke-static {v0, v1}, Lcom/android/systemui/SystemUIAnalytics;->sendEventLog(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    const-string/jumbo v0, "500"

    const-string/jumbo v1, "5111"

    invoke-static {v0, v1}, Lcom/android/systemui/SystemUIAnalytics;->sendEventLog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final onBusEvent(Lcom/android/systemui/recents/events/ui/TaskLockSettingDoneEvent;)V
    .locals 4

    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSettingHelper()Lcom/android/systemui/recents/model/RecentsSettingHelper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/systemui/recents/model/RecentsSettingHelper;->isDesktopMode()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string/jumbo v1, "504"

    const-string/jumbo v0, "5149"

    :goto_0
    iget v2, p1, Lcom/android/systemui/recents/events/ui/TaskLockSettingDoneEvent;->lockedTaskCount:I

    int-to-long v2, v2

    invoke-static {v1, v0, v2, v3}, Lcom/android/systemui/SystemUIAnalytics;->sendEventLog(Ljava/lang/String;Ljava/lang/String;J)V

    return-void

    :cond_0
    const-string/jumbo v1, "501"

    const-string/jumbo v0, "5121"

    goto :goto_0
.end method

.method public final onBusEvent(Lcom/android/systemui/recents/events/ui/TaskLockedEvent;)V
    .locals 3

    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSettingHelper()Lcom/android/systemui/recents/model/RecentsSettingHelper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/systemui/recents/model/RecentsSettingHelper;->isDesktopMode()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string/jumbo v1, "504"

    const-string/jumbo v0, "5150"

    :goto_0
    iget-object v2, p1, Lcom/android/systemui/recents/events/ui/TaskLockedEvent;->packageName:Ljava/lang/String;

    invoke-static {v1, v0, v2}, Lcom/android/systemui/SystemUIAnalytics;->sendEventLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const-string/jumbo v1, "501"

    const-string/jumbo v0, "5122"

    goto :goto_0
.end method

.method public final onBusEvent(Lcom/android/systemui/recents/events/ui/TaskViewDismissedEvent;)V
    .locals 3

    const-string/jumbo v1, "RDBY"

    iget-boolean v0, p1, Lcom/android/systemui/recents/events/ui/TaskViewDismissedEvent;->bySwipe:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "swipe"

    :goto_0
    invoke-virtual {p0, v1, v0}, Lcom/android/systemui/recents/misc/RecentsStatistics;->sendDiagnosticDataToGSIM(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSettingHelper()Lcom/android/systemui/recents/model/RecentsSettingHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/recents/model/RecentsSettingHelper;->isDesktopMode()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "503"

    const-string/jumbo v1, "5142"

    invoke-static {v0, v1}, Lcom/android/systemui/SystemUIAnalytics;->sendEventLog(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-void

    :cond_0
    const-string/jumbo v0, "button"

    goto :goto_0

    :cond_1
    const-string/jumbo v1, "500"

    const-string/jumbo v2, "5102"

    iget-boolean v0, p1, Lcom/android/systemui/recents/events/ui/TaskViewDismissedEvent;->bySwipe:Z

    if-eqz v0, :cond_2

    const-string/jumbo v0, "Swipe"

    :goto_2
    invoke-static {v1, v2, v0}, Lcom/android/systemui/SystemUIAnalytics;->sendEventLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    const-string/jumbo v0, "Close button"

    goto :goto_2
.end method

.method sendDiagnosticDataToGSIM(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    sget-boolean v0, Lcom/android/systemui/recents/RecentsDebugFlags$Static;->EnableSurveyMode:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/recents/misc/RecentsStatistics;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/systemui/recents/misc/RecentsStatistics$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/systemui/recents/misc/RecentsStatistics$1;-><init>(Lcom/android/systemui/recents/misc/RecentsStatistics;Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method sendMultiWindowDiagnosticDataToGSIM(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/recents/misc/RecentsStatistics;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/systemui/recents/misc/RecentsStatistics$2;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/systemui/recents/misc/RecentsStatistics$2;-><init>(Lcom/android/systemui/recents/misc/RecentsStatistics;Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
