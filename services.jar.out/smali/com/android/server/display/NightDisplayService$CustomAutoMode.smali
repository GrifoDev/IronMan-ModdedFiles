.class Lcom/android/server/display/NightDisplayService$CustomAutoMode;
.super Lcom/android/server/display/NightDisplayService$AutoMode;
.source "NightDisplayService.java"

# interfaces
.implements Landroid/app/AlarmManager$OnAlarmListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/NightDisplayService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CustomAutoMode"
.end annotation


# instance fields
.field private final mAlarmManager:Landroid/app/AlarmManager;

.field private mEndTime:Lcom/android/internal/app/NightDisplayController$LocalTime;

.field private mLastActivatedTime:Ljava/util/Calendar;

.field private mStartTime:Lcom/android/internal/app/NightDisplayController$LocalTime;

.field private final mTimeChangedReceiver:Landroid/content/BroadcastReceiver;

.field final synthetic this$0:Lcom/android/server/display/NightDisplayService;


# direct methods
.method static synthetic -wrap0(Lcom/android/server/display/NightDisplayService$CustomAutoMode;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/display/NightDisplayService$CustomAutoMode;->updateActivated()V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/display/NightDisplayService;)V
    .locals 2

    iput-object p1, p0, Lcom/android/server/display/NightDisplayService$CustomAutoMode;->this$0:Lcom/android/server/display/NightDisplayService;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/server/display/NightDisplayService$AutoMode;-><init>(Lcom/android/server/display/NightDisplayService;Lcom/android/server/display/NightDisplayService$AutoMode;)V

    invoke-virtual {p1}, Lcom/android/server/display/NightDisplayService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "alarm"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    iput-object v0, p0, Lcom/android/server/display/NightDisplayService$CustomAutoMode;->mAlarmManager:Landroid/app/AlarmManager;

    new-instance v0, Lcom/android/server/display/NightDisplayService$CustomAutoMode$1;

    invoke-direct {v0, p0}, Lcom/android/server/display/NightDisplayService$CustomAutoMode$1;-><init>(Lcom/android/server/display/NightDisplayService$CustomAutoMode;)V

    iput-object v0, p0, Lcom/android/server/display/NightDisplayService$CustomAutoMode;->mTimeChangedReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method private updateActivated()V
    .locals 15

    const/16 v14, 0xc

    const/16 v13, 0xb

    const/4 v12, 0x6

    const/4 v10, 0x1

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v6

    iget-object v11, p0, Lcom/android/server/display/NightDisplayService$CustomAutoMode;->mStartTime:Lcom/android/internal/app/NightDisplayController$LocalTime;

    invoke-virtual {v11, v6}, Lcom/android/internal/app/NightDisplayController$LocalTime;->getDateTimeBefore(Ljava/util/Calendar;)Ljava/util/Calendar;

    move-result-object v8

    iget-object v11, p0, Lcom/android/server/display/NightDisplayService$CustomAutoMode;->mEndTime:Lcom/android/internal/app/NightDisplayController$LocalTime;

    invoke-virtual {v11, v8}, Lcom/android/internal/app/NightDisplayController$LocalTime;->getDateTimeAfter(Ljava/util/Calendar;)Ljava/util/Calendar;

    move-result-object v3

    invoke-virtual {v6, v3}, Ljava/util/Calendar;->before(Ljava/lang/Object;)Z

    move-result v0

    iget-object v11, p0, Lcom/android/server/display/NightDisplayService$CustomAutoMode;->this$0:Lcom/android/server/display/NightDisplayService;

    invoke-static {v11}, Lcom/android/server/display/NightDisplayService;->-get8(Lcom/android/server/display/NightDisplayService;)Ljava/lang/Boolean;

    move-result-object v11

    if-eqz v11, :cond_0

    iget-object v11, p0, Lcom/android/server/display/NightDisplayService$CustomAutoMode;->mLastActivatedTime:Ljava/util/Calendar;

    if-nez v11, :cond_4

    :cond_0
    move v7, v10

    :goto_0
    if-nez v7, :cond_2

    iget-object v11, p0, Lcom/android/server/display/NightDisplayService$CustomAutoMode;->this$0:Lcom/android/server/display/NightDisplayService;

    invoke-static {v11}, Lcom/android/server/display/NightDisplayService;->-get8(Lcom/android/server/display/NightDisplayService;)Ljava/lang/Boolean;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v11

    if-eq v11, v0, :cond_2

    invoke-virtual {v6}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v1

    iget-object v11, p0, Lcom/android/server/display/NightDisplayService$CustomAutoMode;->mLastActivatedTime:Ljava/util/Calendar;

    invoke-virtual {v11}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v11

    invoke-virtual {v1, v11}, Ljava/util/TimeZone;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_1

    iget-object v11, p0, Lcom/android/server/display/NightDisplayService$CustomAutoMode;->mLastActivatedTime:Ljava/util/Calendar;

    invoke-virtual {v11, v10}, Ljava/util/Calendar;->get(I)I

    move-result v9

    iget-object v11, p0, Lcom/android/server/display/NightDisplayService$CustomAutoMode;->mLastActivatedTime:Ljava/util/Calendar;

    invoke-virtual {v11, v12}, Ljava/util/Calendar;->get(I)I

    move-result v2

    iget-object v11, p0, Lcom/android/server/display/NightDisplayService$CustomAutoMode;->mLastActivatedTime:Ljava/util/Calendar;

    invoke-virtual {v11, v13}, Ljava/util/Calendar;->get(I)I

    move-result v4

    iget-object v11, p0, Lcom/android/server/display/NightDisplayService$CustomAutoMode;->mLastActivatedTime:Ljava/util/Calendar;

    invoke-virtual {v11, v14}, Ljava/util/Calendar;->get(I)I

    move-result v5

    iget-object v11, p0, Lcom/android/server/display/NightDisplayService$CustomAutoMode;->mLastActivatedTime:Ljava/util/Calendar;

    invoke-virtual {v11, v1}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    iget-object v11, p0, Lcom/android/server/display/NightDisplayService$CustomAutoMode;->mLastActivatedTime:Ljava/util/Calendar;

    invoke-virtual {v11, v10, v9}, Ljava/util/Calendar;->set(II)V

    iget-object v10, p0, Lcom/android/server/display/NightDisplayService$CustomAutoMode;->mLastActivatedTime:Ljava/util/Calendar;

    invoke-virtual {v10, v12, v2}, Ljava/util/Calendar;->set(II)V

    iget-object v10, p0, Lcom/android/server/display/NightDisplayService$CustomAutoMode;->mLastActivatedTime:Ljava/util/Calendar;

    invoke-virtual {v10, v13, v4}, Ljava/util/Calendar;->set(II)V

    iget-object v10, p0, Lcom/android/server/display/NightDisplayService$CustomAutoMode;->mLastActivatedTime:Ljava/util/Calendar;

    invoke-virtual {v10, v14, v5}, Ljava/util/Calendar;->set(II)V

    :cond_1
    iget-object v10, p0, Lcom/android/server/display/NightDisplayService$CustomAutoMode;->this$0:Lcom/android/server/display/NightDisplayService;

    invoke-static {v10}, Lcom/android/server/display/NightDisplayService;->-get8(Lcom/android/server/display/NightDisplayService;)Ljava/lang/Boolean;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    if-eqz v10, :cond_6

    iget-object v10, p0, Lcom/android/server/display/NightDisplayService$CustomAutoMode;->mStartTime:Lcom/android/internal/app/NightDisplayController$LocalTime;

    iget-object v11, p0, Lcom/android/server/display/NightDisplayService$CustomAutoMode;->mLastActivatedTime:Ljava/util/Calendar;

    invoke-virtual {v10, v11}, Lcom/android/internal/app/NightDisplayController$LocalTime;->getDateTimeBefore(Ljava/util/Calendar;)Ljava/util/Calendar;

    move-result-object v10

    invoke-virtual {v6, v10}, Ljava/util/Calendar;->before(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_5

    iget-object v10, p0, Lcom/android/server/display/NightDisplayService$CustomAutoMode;->mEndTime:Lcom/android/internal/app/NightDisplayController$LocalTime;

    iget-object v11, p0, Lcom/android/server/display/NightDisplayService$CustomAutoMode;->mLastActivatedTime:Ljava/util/Calendar;

    invoke-virtual {v10, v11}, Lcom/android/internal/app/NightDisplayController$LocalTime;->getDateTimeAfter(Ljava/util/Calendar;)Ljava/util/Calendar;

    move-result-object v10

    invoke-virtual {v6, v10}, Ljava/util/Calendar;->after(Ljava/lang/Object;)Z

    move-result v7

    :cond_2
    :goto_1
    if-eqz v7, :cond_3

    iget-object v10, p0, Lcom/android/server/display/NightDisplayService$CustomAutoMode;->this$0:Lcom/android/server/display/NightDisplayService;

    invoke-static {v10}, Lcom/android/server/display/NightDisplayService;->-get4(Lcom/android/server/display/NightDisplayService;)Lcom/android/internal/app/NightDisplayController;

    move-result-object v10

    invoke-virtual {v10, v0}, Lcom/android/internal/app/NightDisplayController;->setActivated(Z)Z

    :cond_3
    iget-object v10, p0, Lcom/android/server/display/NightDisplayService$CustomAutoMode;->this$0:Lcom/android/server/display/NightDisplayService;

    invoke-static {v10}, Lcom/android/server/display/NightDisplayService;->-get8(Lcom/android/server/display/NightDisplayService;)Ljava/lang/Boolean;

    move-result-object v10

    invoke-direct {p0, v10, v6}, Lcom/android/server/display/NightDisplayService$CustomAutoMode;->updateNextAlarm(Ljava/lang/Boolean;Ljava/util/Calendar;)V

    return-void

    :cond_4
    const/4 v7, 0x0

    goto/16 :goto_0

    :cond_5
    const/4 v7, 0x1

    goto :goto_1

    :cond_6
    iget-object v10, p0, Lcom/android/server/display/NightDisplayService$CustomAutoMode;->mEndTime:Lcom/android/internal/app/NightDisplayController$LocalTime;

    iget-object v11, p0, Lcom/android/server/display/NightDisplayService$CustomAutoMode;->mLastActivatedTime:Ljava/util/Calendar;

    invoke-virtual {v10, v11}, Lcom/android/internal/app/NightDisplayController$LocalTime;->getDateTimeBefore(Ljava/util/Calendar;)Ljava/util/Calendar;

    move-result-object v10

    invoke-virtual {v6, v10}, Ljava/util/Calendar;->before(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_7

    iget-object v10, p0, Lcom/android/server/display/NightDisplayService$CustomAutoMode;->mStartTime:Lcom/android/internal/app/NightDisplayController$LocalTime;

    iget-object v11, p0, Lcom/android/server/display/NightDisplayService$CustomAutoMode;->mLastActivatedTime:Ljava/util/Calendar;

    invoke-virtual {v10, v11}, Lcom/android/internal/app/NightDisplayController$LocalTime;->getDateTimeAfter(Ljava/util/Calendar;)Ljava/util/Calendar;

    move-result-object v10

    invoke-virtual {v6, v10}, Ljava/util/Calendar;->after(Ljava/lang/Object;)Z

    move-result v7

    goto :goto_1

    :cond_7
    const/4 v7, 0x1

    goto :goto_1
.end method

.method private updateNextAlarm(Ljava/lang/Boolean;Ljava/util/Calendar;)V
    .locals 8

    const/4 v6, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/display/NightDisplayService$CustomAutoMode;->mEndTime:Lcom/android/internal/app/NightDisplayController$LocalTime;

    invoke-virtual {v0, p2}, Lcom/android/internal/app/NightDisplayController$LocalTime;->getDateTimeAfter(Ljava/util/Calendar;)Ljava/util/Calendar;

    move-result-object v7

    :goto_0
    iget-object v0, p0, Lcom/android/server/display/NightDisplayService$CustomAutoMode;->mAlarmManager:Landroid/app/AlarmManager;

    invoke-virtual {v7}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    const-string/jumbo v4, "NightDisplayService"

    const/4 v1, 0x1

    move-object v5, p0

    invoke-virtual/range {v0 .. v6}, Landroid/app/AlarmManager;->setExact(IJLjava/lang/String;Landroid/app/AlarmManager$OnAlarmListener;Landroid/os/Handler;)V

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/server/display/NightDisplayService$CustomAutoMode;->mStartTime:Lcom/android/internal/app/NightDisplayController$LocalTime;

    invoke-virtual {v0, p2}, Lcom/android/internal/app/NightDisplayController$LocalTime;->getDateTimeAfter(Ljava/util/Calendar;)Ljava/util/Calendar;

    move-result-object v7

    goto :goto_0
.end method


# virtual methods
.method public onActivated(Z)V
    .locals 2

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/display/NightDisplayService$CustomAutoMode;->this$0:Lcom/android/server/display/NightDisplayService;

    invoke-static {v1}, Lcom/android/server/display/NightDisplayService;->-get8(Lcom/android/server/display/NightDisplayService;)Ljava/lang/Boolean;

    move-result-object v1

    if-eqz v1, :cond_0

    iput-object v0, p0, Lcom/android/server/display/NightDisplayService$CustomAutoMode;->mLastActivatedTime:Ljava/util/Calendar;

    :cond_0
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {p0, v1, v0}, Lcom/android/server/display/NightDisplayService$CustomAutoMode;->updateNextAlarm(Ljava/lang/Boolean;Ljava/util/Calendar;)V

    return-void
.end method

.method public onAlarm()V
    .locals 2

    const-string/jumbo v0, "NightDisplayService"

    const-string/jumbo v1, "onAlarm"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/server/display/NightDisplayService$CustomAutoMode;->updateActivated()V

    return-void
.end method

.method public onCustomEndTimeChanged(Lcom/android/internal/app/NightDisplayController$LocalTime;)V
    .locals 1

    iput-object p1, p0, Lcom/android/server/display/NightDisplayService$CustomAutoMode;->mEndTime:Lcom/android/internal/app/NightDisplayController$LocalTime;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/display/NightDisplayService$CustomAutoMode;->mLastActivatedTime:Ljava/util/Calendar;

    invoke-direct {p0}, Lcom/android/server/display/NightDisplayService$CustomAutoMode;->updateActivated()V

    return-void
.end method

.method public onCustomStartTimeChanged(Lcom/android/internal/app/NightDisplayController$LocalTime;)V
    .locals 1

    iput-object p1, p0, Lcom/android/server/display/NightDisplayService$CustomAutoMode;->mStartTime:Lcom/android/internal/app/NightDisplayController$LocalTime;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/display/NightDisplayService$CustomAutoMode;->mLastActivatedTime:Ljava/util/Calendar;

    invoke-direct {p0}, Lcom/android/server/display/NightDisplayService$CustomAutoMode;->updateActivated()V

    return-void
.end method

.method public onStart()V
    .locals 3

    new-instance v0, Landroid/content/IntentFilter;

    const-string/jumbo v1, "android.intent.action.TIME_SET"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/display/NightDisplayService$CustomAutoMode;->this$0:Lcom/android/server/display/NightDisplayService;

    invoke-virtual {v1}, Lcom/android/server/display/NightDisplayService;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/display/NightDisplayService$CustomAutoMode;->mTimeChangedReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/server/display/NightDisplayService$CustomAutoMode;->this$0:Lcom/android/server/display/NightDisplayService;

    invoke-static {v1}, Lcom/android/server/display/NightDisplayService;->-get4(Lcom/android/server/display/NightDisplayService;)Lcom/android/internal/app/NightDisplayController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/app/NightDisplayController;->getCustomStartTime()Lcom/android/internal/app/NightDisplayController$LocalTime;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/display/NightDisplayService$CustomAutoMode;->mStartTime:Lcom/android/internal/app/NightDisplayController$LocalTime;

    iget-object v1, p0, Lcom/android/server/display/NightDisplayService$CustomAutoMode;->this$0:Lcom/android/server/display/NightDisplayService;

    invoke-static {v1}, Lcom/android/server/display/NightDisplayService;->-get4(Lcom/android/server/display/NightDisplayService;)Lcom/android/internal/app/NightDisplayController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/app/NightDisplayController;->getCustomEndTime()Lcom/android/internal/app/NightDisplayController$LocalTime;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/display/NightDisplayService$CustomAutoMode;->mEndTime:Lcom/android/internal/app/NightDisplayController$LocalTime;

    invoke-direct {p0}, Lcom/android/server/display/NightDisplayService$CustomAutoMode;->updateActivated()V

    return-void
.end method

.method public onStop()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/display/NightDisplayService$CustomAutoMode;->this$0:Lcom/android/server/display/NightDisplayService;

    invoke-virtual {v0}, Lcom/android/server/display/NightDisplayService;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/display/NightDisplayService$CustomAutoMode;->mTimeChangedReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iget-object v0, p0, Lcom/android/server/display/NightDisplayService$CustomAutoMode;->mAlarmManager:Landroid/app/AlarmManager;

    invoke-virtual {v0, p0}, Landroid/app/AlarmManager;->cancel(Landroid/app/AlarmManager$OnAlarmListener;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/display/NightDisplayService$CustomAutoMode;->mLastActivatedTime:Ljava/util/Calendar;

    return-void
.end method
