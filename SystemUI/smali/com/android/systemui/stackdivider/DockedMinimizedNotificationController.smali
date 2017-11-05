.class Lcom/android/systemui/stackdivider/DockedMinimizedNotificationController;
.super Ljava/lang/Object;
.source "DockedMinimizedNotificationController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/stackdivider/DockedMinimizedNotificationController$H;,
        Lcom/android/systemui/stackdivider/DockedMinimizedNotificationController$UserSwitchObserver;
    }
.end annotation


# static fields
.field private static final DEBUG:Z


# instance fields
.field private final mConfiguration:Landroid/content/res/Configuration;

.field private final mContext:Landroid/content/Context;

.field private mCurrentUserId:I

.field private final mDockedStackDismissPendingIntent:Landroid/app/PendingIntent;

.field private final mH:Landroid/os/Handler;

.field private mHasDockMinimized:Z

.field private mIsHeadsUp:Z

.field private final mLaunchDockModePendingIntent:Landroid/app/PendingIntent;

.field private final mMultiWindowManager:Lcom/samsung/android/bridge/multiwindow/MultiWindowManagerBridge;

.field private final mPackageName:Ljava/lang/String;

.field private mReceiverEnabled:Z

.field private mRegistered:Z

.field private mRegisteredInfo:Landroid/content/pm/ActivityInfo;

.field private final mUpdateNotificationPendingIntent:Landroid/app/PendingIntent;


# direct methods
.method static synthetic -get0()Z
    .locals 1

    sget-boolean v0, Lcom/android/systemui/stackdivider/DockedMinimizedNotificationController;->DEBUG:Z

    return v0
.end method

.method static synthetic -get1(Lcom/android/systemui/stackdivider/DockedMinimizedNotificationController;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/stackdivider/DockedMinimizedNotificationController;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/systemui/stackdivider/DockedMinimizedNotificationController;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/stackdivider/DockedMinimizedNotificationController;->mH:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/systemui/stackdivider/DockedMinimizedNotificationController;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/stackdivider/DockedMinimizedNotificationController;->mIsHeadsUp:Z

    return v0
.end method

.method static synthetic -get4(Lcom/android/systemui/stackdivider/DockedMinimizedNotificationController;)Lcom/samsung/android/bridge/multiwindow/MultiWindowManagerBridge;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/stackdivider/DockedMinimizedNotificationController;->mMultiWindowManager:Lcom/samsung/android/bridge/multiwindow/MultiWindowManagerBridge;

    return-object v0
.end method

.method static synthetic -get5(Lcom/android/systemui/stackdivider/DockedMinimizedNotificationController;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/stackdivider/DockedMinimizedNotificationController;->mReceiverEnabled:Z

    return v0
.end method

.method static synthetic -get6(Lcom/android/systemui/stackdivider/DockedMinimizedNotificationController;)Landroid/content/pm/ActivityInfo;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/stackdivider/DockedMinimizedNotificationController;->mRegisteredInfo:Landroid/content/pm/ActivityInfo;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/systemui/stackdivider/DockedMinimizedNotificationController;I)I
    .locals 0

    iput p1, p0, Lcom/android/systemui/stackdivider/DockedMinimizedNotificationController;->mCurrentUserId:I

    return p1
.end method

.method static synthetic -set1(Lcom/android/systemui/stackdivider/DockedMinimizedNotificationController;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/stackdivider/DockedMinimizedNotificationController;->mHasDockMinimized:Z

    return p1
.end method

.method static synthetic -set2(Lcom/android/systemui/stackdivider/DockedMinimizedNotificationController;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/stackdivider/DockedMinimizedNotificationController;->mReceiverEnabled:Z

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/systemui/stackdivider/DockedMinimizedNotificationController;Landroid/content/Context;Ljava/lang/String;Z)Landroid/app/Notification;
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/stackdivider/DockedMinimizedNotificationController;->buildNotification(Landroid/content/Context;Ljava/lang/String;Z)Landroid/app/Notification;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Lcom/android/systemui/stackdivider/DockedMinimizedNotificationController;Ljava/lang/String;)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/systemui/stackdivider/DockedMinimizedNotificationController;->getSystemSetting(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap2(Lcom/android/systemui/stackdivider/DockedMinimizedNotificationController;Landroid/content/Context;Landroid/content/pm/ActivityInfo;)Ljava/lang/String;
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/stackdivider/DockedMinimizedNotificationController;->getAppName(Landroid/content/Context;Landroid/content/pm/ActivityInfo;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap3(Lcom/android/systemui/stackdivider/DockedMinimizedNotificationController;Landroid/app/Notification;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/stackdivider/DockedMinimizedNotificationController;->enqueueNotification(Landroid/app/Notification;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui/stackdivider/DockedMinimizedNotificationController;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    const/high16 v3, 0x8000000

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v2, p0, Lcom/android/systemui/stackdivider/DockedMinimizedNotificationController;->mRegistered:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/stackdivider/DockedMinimizedNotificationController;->mRegisteredInfo:Landroid/content/pm/ActivityInfo;

    iput-boolean v2, p0, Lcom/android/systemui/stackdivider/DockedMinimizedNotificationController;->mIsHeadsUp:Z

    iput-object p1, p0, Lcom/android/systemui/stackdivider/DockedMinimizedNotificationController;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/stackdivider/DockedMinimizedNotificationController;->mPackageName:Ljava/lang/String;

    new-instance v0, Lcom/samsung/android/bridge/multiwindow/MultiWindowManagerBridge;

    invoke-direct {v0}, Lcom/samsung/android/bridge/multiwindow/MultiWindowManagerBridge;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/stackdivider/DockedMinimizedNotificationController;->mMultiWindowManager:Lcom/samsung/android/bridge/multiwindow/MultiWindowManagerBridge;

    new-instance v0, Landroid/content/res/Configuration;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    iput-object v0, p0, Lcom/android/systemui/stackdivider/DockedMinimizedNotificationController;->mConfiguration:Landroid/content/res/Configuration;

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/stackdivider/DockedMinimizedNotificationController;->mCurrentUserId:I

    const-string/jumbo v0, "db_has_dock_minimized"

    invoke-direct {p0, v0}, Lcom/android/systemui/stackdivider/DockedMinimizedNotificationController;->getSystemSetting(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/stackdivider/DockedMinimizedNotificationController;->mHasDockMinimized:Z

    iput-boolean v2, p0, Lcom/android/systemui/stackdivider/DockedMinimizedNotificationController;->mReceiverEnabled:Z

    new-instance v0, Lcom/android/systemui/stackdivider/DockedMinimizedNotificationController$H;

    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/stackdivider/DockedMinimizedNotificationController$H;-><init>(Lcom/android/systemui/stackdivider/DockedMinimizedNotificationController;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/systemui/stackdivider/DockedMinimizedNotificationController;->mH:Landroid/os/Handler;

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.samsung.android.multiwindow.action.DISMISS_MINIMIZED_DOCKED_STACK"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {p1, v2, v0, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/stackdivider/DockedMinimizedNotificationController;->mDockedStackDismissPendingIntent:Landroid/app/PendingIntent;

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.samsung.android.multiwindow.action.LAUNCH_DOCK_MODE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {p1, v2, v0, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/stackdivider/DockedMinimizedNotificationController;->mLaunchDockModePendingIntent:Landroid/app/PendingIntent;

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.samsung.android.multiwindow.action.UPDATE_NOTIFICATION"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {p1, v2, v0, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/stackdivider/DockedMinimizedNotificationController;->mUpdateNotificationPendingIntent:Landroid/app/PendingIntent;

    invoke-direct {p0, p1}, Lcom/android/systemui/stackdivider/DockedMinimizedNotificationController;->registerReceiver(Landroid/content/Context;)V

    invoke-direct {p0}, Lcom/android/systemui/stackdivider/DockedMinimizedNotificationController;->registerUserSwitchObserver()V

    return-void
.end method

.method private buildNotification(Landroid/content/Context;Ljava/lang/String;Z)Landroid/app/Notification;
    .locals 12

    const v11, 0x7f0d003e

    const v10, 0x1020455

    const v9, 0x1020454

    const v8, 0x102044d

    const/4 v7, 0x1

    new-instance v0, Landroid/app/Notification$Builder;

    invoke-direct {v0, p1}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    const v4, 0x7f020389

    invoke-virtual {v0, v4}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    move-result-object v4

    const-string/jumbo v5, "docked_minimized_notification_group"

    invoke-virtual {v4, v5}, Landroid/app/Notification$Builder;->setGroup(Ljava/lang/String;)Landroid/app/Notification$Builder;

    move-result-object v4

    invoke-virtual {v4, p2}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v4

    const v5, 0x7f0b000c

    invoke-virtual {p1, v5}, Landroid/content/Context;->getColor(I)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    move-result-object v4

    const v5, 0x7f0f0010

    invoke-virtual {p1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v4

    new-array v5, v7, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p2, v5, v6

    const v6, 0x7f0f0013

    invoke-virtual {p1, v6, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v4

    new-instance v5, Landroid/app/Notification$BigTextStyle;

    invoke-direct {v5}, Landroid/app/Notification$BigTextStyle;-><init>()V

    invoke-virtual {v4, v5}, Landroid/app/Notification$Builder;->setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/systemui/stackdivider/DockedMinimizedNotificationController;->mLaunchDockModePendingIntent:Landroid/app/PendingIntent;

    invoke-virtual {v4, v5}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v4

    const/4 v5, -0x1

    invoke-virtual {v4, v5}, Landroid/app/Notification$Builder;->setVisibility(I)Landroid/app/Notification$Builder;

    move-result-object v4

    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Landroid/app/Notification$Builder;->setPriority(I)Landroid/app/Notification$Builder;

    if-eqz p3, :cond_0

    iget-object v4, p0, Lcom/android/systemui/stackdivider/DockedMinimizedNotificationController;->mUpdateNotificationPendingIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v4}, Landroid/app/Notification$Builder;->setDeleteIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/app/Notification$Builder;->setDefaults(I)Landroid/app/Notification$Builder;

    :goto_0
    invoke-virtual {v0}, Landroid/app/Notification$Builder;->createContentView()Landroid/widget/RemoteViews;

    move-result-object v1

    const v4, 0x7f0f000f

    invoke-virtual {p1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v8, v4}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    new-instance v3, Landroid/widget/RemoteViews;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const v5, 0x7f040054

    invoke-direct {v3, v4, v5}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v1, v9, v3}, Landroid/widget/RemoteViews;->addView(ILandroid/widget/RemoteViews;)V

    iget-object v4, p0, Lcom/android/systemui/stackdivider/DockedMinimizedNotificationController;->mDockedStackDismissPendingIntent:Landroid/app/PendingIntent;

    const v5, 0x7f1301b1

    invoke-virtual {v1, v5, v4}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    invoke-virtual {v1, v10, v11}, Landroid/widget/RemoteViews;->setViewLayoutMarginEndDimen(II)V

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setCustomContentView(Landroid/widget/RemoteViews;)Landroid/app/Notification$Builder;

    invoke-virtual {v0}, Landroid/app/Notification$Builder;->createBigContentView()Landroid/widget/RemoteViews;

    move-result-object v2

    const v4, 0x7f0f000f

    invoke-virtual {p1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v8, v4}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    invoke-virtual {v2, v9, v3}, Landroid/widget/RemoteViews;->addView(ILandroid/widget/RemoteViews;)V

    iget-object v4, p0, Lcom/android/systemui/stackdivider/DockedMinimizedNotificationController;->mDockedStackDismissPendingIntent:Landroid/app/PendingIntent;

    const v5, 0x7f1301b1

    invoke-virtual {v2, v5, v4}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    invoke-virtual {v2, v10, v11}, Landroid/widget/RemoteViews;->setViewLayoutMarginEndDimen(II)V

    invoke-virtual {v0, v2}, Landroid/app/Notification$Builder;->setCustomBigContentView(Landroid/widget/RemoteViews;)Landroid/app/Notification$Builder;

    iput-boolean p3, p0, Lcom/android/systemui/stackdivider/DockedMinimizedNotificationController;->mIsHeadsUp:Z

    invoke-virtual {v0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v4

    return-object v4

    :cond_0
    invoke-virtual {v0, v7}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    goto :goto_0
.end method

.method private enqueueNotification(Landroid/app/Notification;)V
    .locals 9

    const/4 v0, 0x1

    :try_start_0
    new-array v6, v0, [I

    invoke-static {}, Landroid/app/NotificationManager;->getService()Landroid/app/INotificationManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/stackdivider/DockedMinimizedNotificationController;->mPackageName:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/systemui/stackdivider/DockedMinimizedNotificationController;->mPackageName:Ljava/lang/String;

    const-string/jumbo v3, "DividerNotification"

    const v4, 0x7f0f000f

    const/4 v7, -0x1

    move-object v5, p1

    invoke-interface/range {v0 .. v7}, Landroid/app/INotificationManager;->enqueueNotificationWithTag(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/app/Notification;[II)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/stackdivider/DockedMinimizedNotificationController;->mReceiverEnabled:Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v8

    const-string/jumbo v0, "DividerNotification"

    const-string/jumbo v1, "Error showing notification for minimized docked app"

    invoke-static {v0, v1, v8}, Lcom/samsung/android/util/SemLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private getAppName(Landroid/content/Context;Landroid/content/pm/ActivityInfo;)Ljava/lang/String;
    .locals 1

    if-eqz p2, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string/jumbo v0, ""

    return-object v0
.end method

.method private getSystemSetting(Ljava/lang/String;)Z
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/systemui/stackdivider/DockedMinimizedNotificationController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget v2, p0, Lcom/android/systemui/stackdivider/DockedMinimizedNotificationController;->mCurrentUserId:I

    invoke-static {v1, p1, v0, v2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private putSystemSetting(Ljava/lang/String;I)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/stackdivider/DockedMinimizedNotificationController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget v1, p0, Lcom/android/systemui/stackdivider/DockedMinimizedNotificationController;->mCurrentUserId:I

    invoke-static {v0, p1, p2, v1}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    return-void
.end method

.method private registerNotification(Landroid/content/pm/ActivityInfo;)V
    .locals 10

    const/4 v5, 0x0

    const/4 v6, 0x1

    iget-object v1, p0, Lcom/android/systemui/stackdivider/DockedMinimizedNotificationController;->mContext:Landroid/content/Context;

    invoke-direct {p0, v1, p1}, Lcom/android/systemui/stackdivider/DockedMinimizedNotificationController;->getAppName(Landroid/content/Context;Landroid/content/pm/ActivityInfo;)Ljava/lang/String;

    move-result-object v0

    iget-boolean v4, p0, Lcom/android/systemui/stackdivider/DockedMinimizedNotificationController;->mHasDockMinimized:Z

    if-eqz v4, :cond_0

    move v4, v5

    :goto_0
    invoke-direct {p0, v1, v0, v4}, Lcom/android/systemui/stackdivider/DockedMinimizedNotificationController;->buildNotification(Landroid/content/Context;Ljava/lang/String;Z)Landroid/app/Notification;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/systemui/stackdivider/DockedMinimizedNotificationController;->enqueueNotification(Landroid/app/Notification;)V

    iget-boolean v4, p0, Lcom/android/systemui/stackdivider/DockedMinimizedNotificationController;->mHasDockMinimized:Z

    if-eqz v4, :cond_1

    invoke-direct {p0, v1, v0}, Lcom/android/systemui/stackdivider/DockedMinimizedNotificationController;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    :goto_1
    iput-boolean v6, p0, Lcom/android/systemui/stackdivider/DockedMinimizedNotificationController;->mRegistered:Z

    iput-object p1, p0, Lcom/android/systemui/stackdivider/DockedMinimizedNotificationController;->mRegisteredInfo:Landroid/content/pm/ActivityInfo;

    return-void

    :cond_0
    move v4, v6

    goto :goto_0

    :cond_1
    iput-boolean v6, p0, Lcom/android/systemui/stackdivider/DockedMinimizedNotificationController;->mHasDockMinimized:Z

    const-string/jumbo v4, "db_has_dock_minimized"

    invoke-direct {p0, v4, v6}, Lcom/android/systemui/stackdivider/DockedMinimizedNotificationController;->putSystemSetting(Ljava/lang/String;I)V

    iget-object v4, p0, Lcom/android/systemui/stackdivider/DockedMinimizedNotificationController;->mH:Landroid/os/Handler;

    invoke-virtual {v4, v5, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    iget-object v4, p0, Lcom/android/systemui/stackdivider/DockedMinimizedNotificationController;->mH:Landroid/os/Handler;

    const-wide/16 v8, 0x1388

    invoke-virtual {v4, v2, v8, v9}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_1
.end method

.method private registerReceiver(Landroid/content/Context;)V
    .locals 4

    new-instance v1, Lcom/android/systemui/stackdivider/DockedMinimizedNotificationController$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/stackdivider/DockedMinimizedNotificationController$1;-><init>(Lcom/android/systemui/stackdivider/DockedMinimizedNotificationController;)V

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v2, "com.samsung.android.multiwindow.action.DISMISS_MINIMIZED_DOCKED_STACK"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v2, "com.samsung.android.multiwindow.action.LAUNCH_DOCK_MODE"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v2, "com.samsung.android.multiwindow.action.UPDATE_NOTIFICATION"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v2, "com.samsung.systemui.statusbar.EXPANDED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v2, "android.permission.MANAGE_ACTIVITY_STACKS"

    const/4 v3, 0x0

    invoke-virtual {p1, v1, v0, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    return-void
.end method

.method private registerUserSwitchObserver()V
    .locals 4

    new-instance v1, Lcom/android/systemui/stackdivider/DockedMinimizedNotificationController$UserSwitchObserver;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/systemui/stackdivider/DockedMinimizedNotificationController$UserSwitchObserver;-><init>(Lcom/android/systemui/stackdivider/DockedMinimizedNotificationController;Lcom/android/systemui/stackdivider/DockedMinimizedNotificationController$UserSwitchObserver;)V

    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v2

    const-string/jumbo v3, "DividerNotification"

    invoke-interface {v2, v1, v3}, Landroid/app/IActivityManager;->registerUserSwitchObserver(Landroid/app/IUserSwitchObserver;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v2, "DividerNotification"

    const-string/jumbo v3, "Error register UserSwitchObserver for DockMinimizedNotification"

    invoke-static {v2, v3, v0}, Lcom/samsung/android/util/SemLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private showToast(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4

    const/4 v3, 0x0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p2, v1, v3

    const v2, 0x7f0f0011

    invoke-virtual {p1, v2, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->getView()Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Landroid/view/View;->setTextDirection(I)V

    invoke-virtual {v0}, Landroid/widget/Toast;->setShowForAllUsers()V

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method private unregisterNotification()V
    .locals 7

    const/4 v6, 0x0

    :try_start_0
    invoke-static {}, Landroid/app/NotificationManager;->getService()Landroid/app/INotificationManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/stackdivider/DockedMinimizedNotificationController;->mPackageName:Ljava/lang/String;

    const-string/jumbo v3, "DividerNotification"

    const v4, 0x7f0f000f

    const/4 v5, -0x1

    invoke-interface {v1, v2, v3, v4, v5}, Landroid/app/INotificationManager;->cancelNotificationWithTag(Ljava/lang/String;Ljava/lang/String;II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v1, p0, Lcom/android/systemui/stackdivider/DockedMinimizedNotificationController;->mH:Landroid/os/Handler;

    invoke-virtual {v1, v6}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/stackdivider/DockedMinimizedNotificationController;->mH:Landroid/os/Handler;

    invoke-virtual {v1, v6}, Landroid/os/Handler;->removeMessages(I)V

    :cond_0
    iput-boolean v6, p0, Lcom/android/systemui/stackdivider/DockedMinimizedNotificationController;->mRegistered:Z

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/systemui/stackdivider/DockedMinimizedNotificationController;->mRegisteredInfo:Landroid/content/pm/ActivityInfo;

    iput-boolean v6, p0, Lcom/android/systemui/stackdivider/DockedMinimizedNotificationController;->mReceiverEnabled:Z

    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "DividerNotification"

    const-string/jumbo v2, "Error canceling notification for service"

    invoke-static {v1, v2, v0}, Lcom/samsung/android/util/SemLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method


# virtual methods
.method onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    iget-object v1, p0, Lcom/android/systemui/stackdivider/DockedMinimizedNotificationController;->mConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v1, p1}, Landroid/content/res/Configuration;->updateFrom(Landroid/content/res/Configuration;)I

    move-result v0

    iget-boolean v1, p0, Lcom/android/systemui/stackdivider/DockedMinimizedNotificationController;->mRegistered:Z

    if-eqz v1, :cond_0

    and-int/lit16 v1, v0, 0x2004

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/android/systemui/stackdivider/DockedMinimizedNotificationController;->unregisterNotification()V

    iget-object v1, p0, Lcom/android/systemui/stackdivider/DockedMinimizedNotificationController;->mRegisteredInfo:Landroid/content/pm/ActivityInfo;

    invoke-direct {p0, v1}, Lcom/android/systemui/stackdivider/DockedMinimizedNotificationController;->registerNotification(Landroid/content/pm/ActivityInfo;)V

    :cond_0
    return-void
.end method

.method public setDockedStackMinimized(ZZLandroid/content/pm/ActivityInfo;)V
    .locals 3

    const-string/jumbo v0, "DividerNotification"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setDockedStackMinimized, minimized="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_1

    sget-boolean v0, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->MINIMIZED_DOCK_DYNAMIC_ENABLED:Z

    if-eqz v0, :cond_0

    if-eqz p2, :cond_0

    invoke-direct {p0, p3}, Lcom/android/systemui/stackdivider/DockedMinimizedNotificationController;->registerNotification(Landroid/content/pm/ActivityInfo;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-direct {p0}, Lcom/android/systemui/stackdivider/DockedMinimizedNotificationController;->unregisterNotification()V

    goto :goto_0
.end method
