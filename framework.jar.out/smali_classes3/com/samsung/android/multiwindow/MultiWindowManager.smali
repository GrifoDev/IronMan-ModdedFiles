.class public Lcom/samsung/android/multiwindow/MultiWindowManager;
.super Ljava/lang/Object;
.source "MultiWindowManager.java"

# interfaces
.implements Lcom/samsung/android/bridge/multiwindow/MultiWindowManagerBridge$IMultiWindowManagerBridge;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/multiwindow/MultiWindowManager$1;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String;

.field private static final gDefault:Landroid/util/Singleton;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Singleton",
            "<",
            "Lcom/samsung/android/multiwindow/IMultiWindowManager;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/samsung/android/multiwindow/MultiWindowManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/multiwindow/MultiWindowManager;->TAG:Ljava/lang/String;

    new-instance v0, Lcom/samsung/android/multiwindow/MultiWindowManager$1;

    invoke-direct {v0}, Lcom/samsung/android/multiwindow/MultiWindowManager$1;-><init>()V

    sput-object v0, Lcom/samsung/android/multiwindow/MultiWindowManager;->gDefault:Landroid/util/Singleton;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getDefault()Lcom/samsung/android/multiwindow/IMultiWindowManager;
    .locals 1

    sget-object v0, Lcom/samsung/android/multiwindow/MultiWindowManager;->gDefault:Landroid/util/Singleton;

    invoke-virtual {v0}, Landroid/util/Singleton;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/multiwindow/IMultiWindowManager;

    return-object v0
.end method

.method private static warningException(Ljava/lang/Exception;)V
    .locals 3

    sget-object v0, Lcom/samsung/android/multiwindow/MultiWindowManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "warningException() : caller="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Debug;->getCaller()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public alignTasksToStackBounds()V
    .locals 2

    :try_start_0
    invoke-static {}, Lcom/samsung/android/multiwindow/MultiWindowManager;->getDefault()Lcom/samsung/android/multiwindow/IMultiWindowManager;

    move-result-object v1

    invoke-interface {v1}, Lcom/samsung/android/multiwindow/IMultiWindowManager;->alignTasksToStackBounds()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/samsung/android/multiwindow/MultiWindowManager;->warningException(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public changeFreeformMode()V
    .locals 2

    :try_start_0
    invoke-static {}, Lcom/samsung/android/multiwindow/MultiWindowManager;->getDefault()Lcom/samsung/android/multiwindow/IMultiWindowManager;

    move-result-object v1

    invoke-interface {v1}, Lcom/samsung/android/multiwindow/IMultiWindowManager;->changeFreeformMode()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/samsung/android/multiwindow/MultiWindowManager;->warningException(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public completeToggleSplitScreen()V
    .locals 2

    :try_start_0
    invoke-static {}, Lcom/samsung/android/multiwindow/MultiWindowManager;->getDefault()Lcom/samsung/android/multiwindow/IMultiWindowManager;

    move-result-object v1

    invoke-interface {v1}, Lcom/samsung/android/multiwindow/IMultiWindowManager;->completeToggleSplitScreen()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/samsung/android/multiwindow/MultiWindowManager;->warningException(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public enterFreeformTask(I)V
    .locals 2

    :try_start_0
    invoke-static {}, Lcom/samsung/android/multiwindow/MultiWindowManager;->getDefault()Lcom/samsung/android/multiwindow/IMultiWindowManager;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/samsung/android/multiwindow/IMultiWindowManager;->enterFreeformTask(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/samsung/android/multiwindow/MultiWindowManager;->warningException(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public exitDockedMode()Z
    .locals 2

    :try_start_0
    invoke-static {}, Lcom/samsung/android/multiwindow/MultiWindowManager;->getDefault()Lcom/samsung/android/multiwindow/IMultiWindowManager;

    move-result-object v1

    invoke-interface {v1}, Lcom/samsung/android/multiwindow/IMultiWindowManager;->exitDockedMode()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/samsung/android/multiwindow/MultiWindowManager;->warningException(Ljava/lang/Exception;)V

    const/4 v1, 0x0

    return v1
.end method

.method public exitMultiWindow(Landroid/os/IBinder;)Z
    .locals 2

    :try_start_0
    invoke-static {}, Lcom/samsung/android/multiwindow/MultiWindowManager;->getDefault()Lcom/samsung/android/multiwindow/IMultiWindowManager;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/samsung/android/multiwindow/IMultiWindowManager;->exitMultiWindow(Landroid/os/IBinder;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/samsung/android/multiwindow/MultiWindowManager;->warningException(Ljava/lang/Exception;)V

    const/4 v1, 0x0

    return v1
.end method

.method public getFreeformTasks(I)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Landroid/app/ActivityManager$RunningTaskInfo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    :try_start_0
    invoke-static {}, Lcom/samsung/android/multiwindow/MultiWindowManager;->getDefault()Lcom/samsung/android/multiwindow/IMultiWindowManager;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/samsung/android/multiwindow/IMultiWindowManager;->getFreeformTasks(I)Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/samsung/android/multiwindow/MultiWindowManager;->warningException(Ljava/lang/Exception;)V

    const/4 v1, 0x0

    return-object v1
.end method

.method public getImeTargetFreeformTaskId()I
    .locals 2

    :try_start_0
    invoke-static {}, Lcom/samsung/android/multiwindow/MultiWindowManager;->getDefault()Lcom/samsung/android/multiwindow/IMultiWindowManager;

    move-result-object v1

    invoke-interface {v1}, Lcom/samsung/android/multiwindow/IMultiWindowManager;->getImeTargetFreeformTaskId()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/samsung/android/multiwindow/MultiWindowManager;->warningException(Ljava/lang/Exception;)V

    const/4 v1, -0x1

    return v1
.end method

.method public getMaxMultiInstanceCnt()I
    .locals 2

    :try_start_0
    invoke-static {}, Lcom/samsung/android/multiwindow/MultiWindowManager;->getDefault()Lcom/samsung/android/multiwindow/IMultiWindowManager;

    move-result-object v1

    invoke-interface {v1}, Lcom/samsung/android/multiwindow/IMultiWindowManager;->getMaxMultiInstanceCnt()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/samsung/android/multiwindow/MultiWindowManager;->warningException(Ljava/lang/Exception;)V

    const/4 v1, -0x1

    return v1
.end method

.method public getMultiWindowModeStates(I)I
    .locals 2

    :try_start_0
    invoke-static {}, Lcom/samsung/android/multiwindow/MultiWindowManager;->getDefault()Lcom/samsung/android/multiwindow/IMultiWindowManager;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/samsung/android/multiwindow/IMultiWindowManager;->getMultiWindowModeStates(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/samsung/android/multiwindow/MultiWindowManager;->warningException(Ljava/lang/Exception;)V

    const/4 v1, 0x0

    return v1
.end method

.method public getRunningTasksInfo(II)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List",
            "<",
            "Landroid/app/ActivityManager$RunningTaskInfo;",
            ">;"
        }
    .end annotation

    :try_start_0
    invoke-static {}, Lcom/samsung/android/multiwindow/MultiWindowManager;->getDefault()Lcom/samsung/android/multiwindow/IMultiWindowManager;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/samsung/android/multiwindow/IMultiWindowManager;->getRunningTasksInfo(II)Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/samsung/android/multiwindow/MultiWindowManager;->warningException(Ljava/lang/Exception;)V

    const/4 v1, 0x0

    return-object v1
.end method

.method public getSnapTargetAspectRatioRect()Landroid/graphics/Rect;
    .locals 2

    :try_start_0
    invoke-static {}, Lcom/samsung/android/multiwindow/MultiWindowManager;->getDefault()Lcom/samsung/android/multiwindow/IMultiWindowManager;

    move-result-object v1

    invoke-interface {v1}, Lcom/samsung/android/multiwindow/IMultiWindowManager;->getSnapTargetAspectRatioRect()Landroid/graphics/Rect;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/samsung/android/multiwindow/MultiWindowManager;->warningException(Ljava/lang/Exception;)V

    const/4 v1, 0x0

    return-object v1
.end method

.method public getTargetStackRect(I)Landroid/graphics/Rect;
    .locals 2

    :try_start_0
    invoke-static {}, Lcom/samsung/android/multiwindow/MultiWindowManager;->getDefault()Lcom/samsung/android/multiwindow/IMultiWindowManager;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/samsung/android/multiwindow/IMultiWindowManager;->getTargetStackRect(I)Landroid/graphics/Rect;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/samsung/android/multiwindow/MultiWindowManager;->warningException(Ljava/lang/Exception;)V

    const/4 v1, 0x0

    return-object v1
.end method

.method public getTopRunningTaskInfo(I)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Landroid/app/ActivityManager$RunningTaskInfo;",
            ">;"
        }
    .end annotation

    :try_start_0
    invoke-static {}, Lcom/samsung/android/multiwindow/MultiWindowManager;->getDefault()Lcom/samsung/android/multiwindow/IMultiWindowManager;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/samsung/android/multiwindow/IMultiWindowManager;->getTopRunningTaskInfo(I)Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/samsung/android/multiwindow/MultiWindowManager;->warningException(Ljava/lang/Exception;)V

    const/4 v1, 0x0

    return-object v1
.end method

.method public hasDockedStack()Z
    .locals 2

    :try_start_0
    invoke-static {}, Lcom/samsung/android/multiwindow/MultiWindowManager;->getDefault()Lcom/samsung/android/multiwindow/IMultiWindowManager;

    move-result-object v1

    invoke-interface {v1}, Lcom/samsung/android/multiwindow/IMultiWindowManager;->hasDockedStack()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/samsung/android/multiwindow/MultiWindowManager;->warningException(Ljava/lang/Exception;)V

    const/4 v1, 0x0

    return v1
.end method

.method public isExpandedDockedStack()Z
    .locals 2

    :try_start_0
    invoke-static {}, Lcom/samsung/android/multiwindow/MultiWindowManager;->getDefault()Lcom/samsung/android/multiwindow/IMultiWindowManager;

    move-result-object v1

    invoke-interface {v1}, Lcom/samsung/android/multiwindow/IMultiWindowManager;->isExpandedDockedStack()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/samsung/android/multiwindow/MultiWindowManager;->warningException(Ljava/lang/Exception;)V

    const/4 v1, 0x0

    return v1
.end method

.method public isForceResizable(Landroid/content/pm/ActivityInfo;)Z
    .locals 2

    :try_start_0
    invoke-static {}, Lcom/samsung/android/multiwindow/MultiWindowManager;->getDefault()Lcom/samsung/android/multiwindow/IMultiWindowManager;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/samsung/android/multiwindow/IMultiWindowManager;->isForceResizable(Landroid/content/pm/ActivityInfo;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/samsung/android/multiwindow/MultiWindowManager;->warningException(Ljava/lang/Exception;)V

    const/4 v1, 0x0

    return v1
.end method

.method public isLaunchableForMultiInstance(Landroid/content/pm/ActivityInfo;)Z
    .locals 2

    :try_start_0
    invoke-static {}, Lcom/samsung/android/multiwindow/MultiWindowManager;->getDefault()Lcom/samsung/android/multiwindow/IMultiWindowManager;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/samsung/android/multiwindow/IMultiWindowManager;->isLaunchableForMultiInstance(Landroid/content/pm/ActivityInfo;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/samsung/android/multiwindow/MultiWindowManager;->warningException(Ljava/lang/Exception;)V

    const/4 v1, 0x0

    return v1
.end method

.method public isMaximizeButtonVisibility(Landroid/os/IBinder;)Z
    .locals 2

    :try_start_0
    invoke-static {}, Lcom/samsung/android/multiwindow/MultiWindowManager;->getDefault()Lcom/samsung/android/multiwindow/IMultiWindowManager;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/samsung/android/multiwindow/IMultiWindowManager;->isMaximizeButtonVisibility(Landroid/os/IBinder;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/samsung/android/multiwindow/MultiWindowManager;->warningException(Ljava/lang/Exception;)V

    const/4 v1, 0x1

    return v1
.end method

.method public isResizable(Landroid/content/pm/ResolveInfo;)Z
    .locals 4

    const/4 v3, 0x0

    if-nez p1, :cond_0

    return v3

    :cond_0
    :try_start_0
    iget-object v0, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v0, :cond_1

    iget v2, v0, Landroid/content/pm/ActivityInfo;->resizeMode:I

    invoke-static {v2}, Landroid/content/pm/ActivityInfo;->isResizeableMode(I)Z

    move-result v2

    if-nez v2, :cond_2

    :cond_1
    invoke-static {}, Lcom/samsung/android/multiwindow/MultiWindowManager;->getDefault()Lcom/samsung/android/multiwindow/IMultiWindowManager;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/samsung/android/multiwindow/IMultiWindowManager;->isResizable(Landroid/content/pm/ResolveInfo;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    :goto_0
    return v2

    :cond_2
    const/4 v2, 0x1

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-static {v1}, Lcom/samsung/android/multiwindow/MultiWindowManager;->warningException(Ljava/lang/Exception;)V

    return v3
.end method

.method public isSnapTargetHideStatusbar()Z
    .locals 2

    :try_start_0
    invoke-static {}, Lcom/samsung/android/multiwindow/MultiWindowManager;->getDefault()Lcom/samsung/android/multiwindow/IMultiWindowManager;

    move-result-object v1

    invoke-interface {v1}, Lcom/samsung/android/multiwindow/IMultiWindowManager;->isSnapTargetHideStatusbar()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/samsung/android/multiwindow/MultiWindowManager;->warningException(Ljava/lang/Exception;)V

    const/4 v1, 0x0

    return v1
.end method

.method public isSnapWindowRunning()Z
    .locals 2

    :try_start_0
    invoke-static {}, Lcom/samsung/android/multiwindow/MultiWindowManager;->getDefault()Lcom/samsung/android/multiwindow/IMultiWindowManager;

    move-result-object v1

    invoke-interface {v1}, Lcom/samsung/android/multiwindow/IMultiWindowManager;->isSnapWindowRunning()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/samsung/android/multiwindow/MultiWindowManager;->warningException(Ljava/lang/Exception;)V

    const/4 v1, 0x0

    return v1
.end method

.method public isSnapWindowTarget(I)Z
    .locals 2

    :try_start_0
    invoke-static {}, Lcom/samsung/android/multiwindow/MultiWindowManager;->getDefault()Lcom/samsung/android/multiwindow/IMultiWindowManager;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/samsung/android/multiwindow/IMultiWindowManager;->isSnapWindowTarget(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/samsung/android/multiwindow/MultiWindowManager;->warningException(Ljava/lang/Exception;)V

    const/4 v1, 0x0

    return v1
.end method

.method public isStatusBarVisible()Z
    .locals 2

    :try_start_0
    invoke-static {}, Lcom/samsung/android/multiwindow/MultiWindowManager;->getDefault()Lcom/samsung/android/multiwindow/IMultiWindowManager;

    move-result-object v1

    invoke-interface {v1}, Lcom/samsung/android/multiwindow/IMultiWindowManager;->isStatusBarVisible()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/samsung/android/multiwindow/MultiWindowManager;->warningException(Ljava/lang/Exception;)V

    const/4 v1, 0x0

    return v1
.end method

.method public makeGhostFreeform(Landroid/os/IBinder;I)V
    .locals 2

    :try_start_0
    invoke-static {}, Lcom/samsung/android/multiwindow/MultiWindowManager;->getDefault()Lcom/samsung/android/multiwindow/IMultiWindowManager;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/samsung/android/multiwindow/IMultiWindowManager;->makeGhostFreeform(Landroid/os/IBinder;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/samsung/android/multiwindow/MultiWindowManager;->warningException(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public maximizeStackByDivider(Z)V
    .locals 2

    :try_start_0
    invoke-static {}, Lcom/samsung/android/multiwindow/MultiWindowManager;->getDefault()Lcom/samsung/android/multiwindow/IMultiWindowManager;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/samsung/android/multiwindow/IMultiWindowManager;->maximizeStackByDivider(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/samsung/android/multiwindow/MultiWindowManager;->warningException(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public maximizeTopTask()Z
    .locals 2

    :try_start_0
    invoke-static {}, Lcom/samsung/android/multiwindow/MultiWindowManager;->getDefault()Lcom/samsung/android/multiwindow/IMultiWindowManager;

    move-result-object v1

    invoke-interface {v1}, Lcom/samsung/android/multiwindow/IMultiWindowManager;->maximizeTopTask()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/samsung/android/multiwindow/MultiWindowManager;->warningException(Ljava/lang/Exception;)V

    const/4 v1, 0x0

    return v1
.end method

.method public minimizeAllFreeform(I)Z
    .locals 2

    :try_start_0
    invoke-static {}, Lcom/samsung/android/multiwindow/MultiWindowManager;->getDefault()Lcom/samsung/android/multiwindow/IMultiWindowManager;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/samsung/android/multiwindow/IMultiWindowManager;->minimizeAllFreeform(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/samsung/android/multiwindow/MultiWindowManager;->warningException(Ljava/lang/Exception;)V

    const/4 v1, 0x0

    return v1
.end method

.method public minimizeOhterFreeforms(Landroid/os/IBinder;)V
    .locals 2

    :try_start_0
    invoke-static {}, Lcom/samsung/android/multiwindow/MultiWindowManager;->getDefault()Lcom/samsung/android/multiwindow/IMultiWindowManager;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/samsung/android/multiwindow/IMultiWindowManager;->minimizeOhterFreeforms(Landroid/os/IBinder;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/samsung/android/multiwindow/MultiWindowManager;->warningException(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public minimizeSearchedTask(Ljava/lang/String;)I
    .locals 2

    :try_start_0
    invoke-static {}, Lcom/samsung/android/multiwindow/MultiWindowManager;->getDefault()Lcom/samsung/android/multiwindow/IMultiWindowManager;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/samsung/android/multiwindow/IMultiWindowManager;->minimizeSearchedTask(Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/samsung/android/multiwindow/MultiWindowManager;->warningException(Ljava/lang/Exception;)V

    const/4 v1, -0x1

    return v1
.end method

.method public minimizeTask(I)V
    .locals 2

    :try_start_0
    invoke-static {}, Lcom/samsung/android/multiwindow/MultiWindowManager;->getDefault()Lcom/samsung/android/multiwindow/IMultiWindowManager;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/samsung/android/multiwindow/IMultiWindowManager;->minimizeTask(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/samsung/android/multiwindow/MultiWindowManager;->warningException(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public minimizeTopTask()Z
    .locals 2

    :try_start_0
    invoke-static {}, Lcom/samsung/android/multiwindow/MultiWindowManager;->getDefault()Lcom/samsung/android/multiwindow/IMultiWindowManager;

    move-result-object v1

    invoke-interface {v1}, Lcom/samsung/android/multiwindow/IMultiWindowManager;->minimizeTopTask()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/samsung/android/multiwindow/MultiWindowManager;->warningException(Ljava/lang/Exception;)V

    const/4 v1, 0x0

    return v1
.end method

.method public moveActivityTaskToBack(Landroid/os/IBinder;ZZ)Z
    .locals 2

    :try_start_0
    invoke-static {}, Lcom/samsung/android/multiwindow/MultiWindowManager;->getDefault()Lcom/samsung/android/multiwindow/IMultiWindowManager;

    move-result-object v1

    invoke-interface {v1, p1, p2, p3}, Lcom/samsung/android/multiwindow/IMultiWindowManager;->moveActivityTaskToBack(Landroid/os/IBinder;ZZ)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/samsung/android/multiwindow/MultiWindowManager;->warningException(Ljava/lang/Exception;)V

    const/4 v1, 0x0

    return v1
.end method

.method public moveMultiWindowTasksToFullScreen()V
    .locals 2

    :try_start_0
    invoke-static {}, Lcom/samsung/android/multiwindow/MultiWindowManager;->getDefault()Lcom/samsung/android/multiwindow/IMultiWindowManager;

    move-result-object v1

    invoke-interface {v1}, Lcom/samsung/android/multiwindow/IMultiWindowManager;->moveMultiWindowTasksToFullScreen()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/samsung/android/multiwindow/MultiWindowManager;->warningException(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public registerMultiWindowEventListener(Lcom/samsung/android/multiwindow/IMultiWindowEventListener;)V
    .locals 2

    :try_start_0
    invoke-static {}, Lcom/samsung/android/multiwindow/MultiWindowManager;->getDefault()Lcom/samsung/android/multiwindow/IMultiWindowManager;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/samsung/android/multiwindow/IMultiWindowManager;->registerMultiWindowEventListener(Lcom/samsung/android/multiwindow/IMultiWindowEventListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/samsung/android/multiwindow/MultiWindowManager;->warningException(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public registerMultiWindowServiceCallback(Lcom/samsung/android/multiwindow/IMultiWindowCallback;)V
    .locals 2

    :try_start_0
    invoke-static {}, Lcom/samsung/android/multiwindow/MultiWindowManager;->getDefault()Lcom/samsung/android/multiwindow/IMultiWindowManager;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/samsung/android/multiwindow/IMultiWindowManager;->registerMultiWindowServiceCallback(Lcom/samsung/android/multiwindow/IMultiWindowCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/samsung/android/multiwindow/MultiWindowManager;->warningException(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public removeFocusedTask()Z
    .locals 2

    :try_start_0
    invoke-static {}, Lcom/samsung/android/multiwindow/MultiWindowManager;->getDefault()Lcom/samsung/android/multiwindow/IMultiWindowManager;

    move-result-object v1

    invoke-interface {v1}, Lcom/samsung/android/multiwindow/IMultiWindowManager;->removeFocusedTask()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/samsung/android/multiwindow/MultiWindowManager;->warningException(Ljava/lang/Exception;)V

    const/4 v1, 0x0

    return v1
.end method

.method public removeFreeformTasks(I)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    :try_start_0
    invoke-static {}, Lcom/samsung/android/multiwindow/MultiWindowManager;->getDefault()Lcom/samsung/android/multiwindow/IMultiWindowManager;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/samsung/android/multiwindow/IMultiWindowManager;->removeFreeformTasks(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/samsung/android/multiwindow/MultiWindowManager;->warningException(Ljava/lang/Exception;)V

    const/4 v1, 0x0

    return v1
.end method

.method public removeSearchedTask(Ljava/lang/String;)Z
    .locals 2

    :try_start_0
    invoke-static {}, Lcom/samsung/android/multiwindow/MultiWindowManager;->getDefault()Lcom/samsung/android/multiwindow/IMultiWindowManager;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/samsung/android/multiwindow/IMultiWindowManager;->removeSearchedTask(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/samsung/android/multiwindow/MultiWindowManager;->warningException(Ljava/lang/Exception;)V

    const/4 v1, 0x0

    return v1
.end method

.method public removeTaskIfNeeded(Z)Z
    .locals 2

    :try_start_0
    invoke-static {}, Lcom/samsung/android/multiwindow/MultiWindowManager;->getDefault()Lcom/samsung/android/multiwindow/IMultiWindowManager;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/samsung/android/multiwindow/IMultiWindowManager;->removeTaskIfNeeded(Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/samsung/android/multiwindow/MultiWindowManager;->warningException(Ljava/lang/Exception;)V

    const/4 v1, 0x0

    return v1
.end method

.method public reportMinimizeContainerBounds(Landroid/graphics/Rect;)V
    .locals 2

    :try_start_0
    invoke-static {}, Lcom/samsung/android/multiwindow/MultiWindowManager;->getDefault()Lcom/samsung/android/multiwindow/IMultiWindowManager;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/samsung/android/multiwindow/IMultiWindowManager;->reportMinimizeContainerBounds(Landroid/graphics/Rect;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/samsung/android/multiwindow/MultiWindowManager;->warningException(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public rotateFreeformTask(Landroid/os/IBinder;)V
    .locals 2

    :try_start_0
    invoke-static {}, Lcom/samsung/android/multiwindow/MultiWindowManager;->getDefault()Lcom/samsung/android/multiwindow/IMultiWindowManager;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/samsung/android/multiwindow/IMultiWindowManager;->rotateFreeformTask(Landroid/os/IBinder;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/samsung/android/multiwindow/MultiWindowManager;->warningException(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public setAutoResizeAnimating(Z)V
    .locals 2

    :try_start_0
    invoke-static {}, Lcom/samsung/android/multiwindow/MultiWindowManager;->getDefault()Lcom/samsung/android/multiwindow/IMultiWindowManager;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/samsung/android/multiwindow/IMultiWindowManager;->setAutoResizeAnimating(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/samsung/android/multiwindow/MultiWindowManager;->warningException(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public setDividerButtonsDimLayer(ZFI)V
    .locals 2

    :try_start_0
    invoke-static {}, Lcom/samsung/android/multiwindow/MultiWindowManager;->getDefault()Lcom/samsung/android/multiwindow/IMultiWindowManager;

    move-result-object v1

    invoke-interface {v1, p1, p2, p3}, Lcom/samsung/android/multiwindow/IMultiWindowManager;->setDividerButtonsDimLayer(ZFI)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/samsung/android/multiwindow/MultiWindowManager;->warningException(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public setDockedStackDividerButtonsTouchRegion(Landroid/graphics/Rect;)V
    .locals 2

    :try_start_0
    invoke-static {}, Lcom/samsung/android/multiwindow/MultiWindowManager;->getDefault()Lcom/samsung/android/multiwindow/IMultiWindowManager;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/samsung/android/multiwindow/IMultiWindowManager;->setDockedStackDividerButtonsTouchRegion(Landroid/graphics/Rect;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/samsung/android/multiwindow/MultiWindowManager;->warningException(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public setLaunchBounds(ILandroid/graphics/Rect;)V
    .locals 2

    :try_start_0
    invoke-static {}, Lcom/samsung/android/multiwindow/MultiWindowManager;->getDefault()Lcom/samsung/android/multiwindow/IMultiWindowManager;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/samsung/android/multiwindow/IMultiWindowManager;->setLaunchBounds(ILandroid/graphics/Rect;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/samsung/android/multiwindow/MultiWindowManager;->warningException(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public setMultiWindowEnabled(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 1

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/samsung/android/multiwindow/MultiWindowManager;->setMultiWindowEnabledForUser(Ljava/lang/String;Ljava/lang/String;ZI)V

    return-void
.end method

.method public setMultiWindowEnabledForUser(Ljava/lang/String;Ljava/lang/String;ZI)V
    .locals 2

    :try_start_0
    invoke-static {}, Lcom/samsung/android/multiwindow/MultiWindowManager;->getDefault()Lcom/samsung/android/multiwindow/IMultiWindowManager;

    move-result-object v1

    invoke-interface {v1, p1, p2, p3, p4}, Lcom/samsung/android/multiwindow/IMultiWindowManager;->setMultiWindowEnabledForUser(Ljava/lang/String;Ljava/lang/String;ZI)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/samsung/android/multiwindow/MultiWindowManager;->warningException(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public setSlideMode(IZ)V
    .locals 2

    :try_start_0
    invoke-static {}, Lcom/samsung/android/multiwindow/MultiWindowManager;->getDefault()Lcom/samsung/android/multiwindow/IMultiWindowManager;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/samsung/android/multiwindow/IMultiWindowManager;->setSlideMode(IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/samsung/android/multiwindow/MultiWindowManager;->warningException(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public setSnapWindow(ZLandroid/graphics/Rect;ILjava/lang/String;)V
    .locals 2

    :try_start_0
    invoke-static {}, Lcom/samsung/android/multiwindow/MultiWindowManager;->getDefault()Lcom/samsung/android/multiwindow/IMultiWindowManager;

    move-result-object v1

    invoke-interface {v1, p1, p2, p3, p4}, Lcom/samsung/android/multiwindow/IMultiWindowManager;->setSnapWindow(ZLandroid/graphics/Rect;ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/samsung/android/multiwindow/MultiWindowManager;->warningException(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public showRecentApps()V
    .locals 2

    :try_start_0
    invoke-static {}, Lcom/samsung/android/multiwindow/MultiWindowManager;->getDefault()Lcom/samsung/android/multiwindow/IMultiWindowManager;

    move-result-object v1

    invoke-interface {v1}, Lcom/samsung/android/multiwindow/IMultiWindowManager;->showRecentApps()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/samsung/android/multiwindow/MultiWindowManager;->warningException(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public showSnapWindowGuideView(I)V
    .locals 2

    :try_start_0
    invoke-static {}, Lcom/samsung/android/multiwindow/MultiWindowManager;->getDefault()Lcom/samsung/android/multiwindow/IMultiWindowManager;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/samsung/android/multiwindow/IMultiWindowManager;->showSnapWindowGuideView(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/samsung/android/multiwindow/MultiWindowManager;->warningException(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public slideFreeform(Landroid/os/IBinder;)V
    .locals 2

    :try_start_0
    invoke-static {}, Lcom/samsung/android/multiwindow/MultiWindowManager;->getDefault()Lcom/samsung/android/multiwindow/IMultiWindowManager;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/samsung/android/multiwindow/IMultiWindowManager;->slideFreeform(Landroid/os/IBinder;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/samsung/android/multiwindow/MultiWindowManager;->warningException(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public slideOrUnslideAllFreeform(Z)V
    .locals 2

    :try_start_0
    invoke-static {}, Lcom/samsung/android/multiwindow/MultiWindowManager;->getDefault()Lcom/samsung/android/multiwindow/IMultiWindowManager;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/samsung/android/multiwindow/IMultiWindowManager;->slideOrUnslideAllFreeform(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/samsung/android/multiwindow/MultiWindowManager;->warningException(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public startDividerDragging()V
    .locals 2

    :try_start_0
    invoke-static {}, Lcom/samsung/android/multiwindow/MultiWindowManager;->getDefault()Lcom/samsung/android/multiwindow/IMultiWindowManager;

    move-result-object v1

    invoke-interface {v1}, Lcom/samsung/android/multiwindow/IMultiWindowManager;->startDividerDragging()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/samsung/android/multiwindow/MultiWindowManager;->warningException(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public startFreeform()I
    .locals 2

    :try_start_0
    invoke-static {}, Lcom/samsung/android/multiwindow/MultiWindowManager;->getDefault()Lcom/samsung/android/multiwindow/IMultiWindowManager;

    move-result-object v1

    invoke-interface {v1}, Lcom/samsung/android/multiwindow/IMultiWindowManager;->startFreeform()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/samsung/android/multiwindow/MultiWindowManager;->warningException(Ljava/lang/Exception;)V

    const/4 v1, -0x1

    return v1
.end method

.method public startPairActivities(Landroid/content/Context;Landroid/content/Intent;Landroid/content/Intent;ILandroid/os/UserHandle;Landroid/os/UserHandle;)V
    .locals 5

    const v4, 0x10204000

    const/4 v3, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    sget-object v1, Lcom/samsung/android/multiwindow/MultiWindowManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "startPairActivities() param has null : context="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " docked="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " full="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    if-eqz p3, :cond_0

    const/4 v1, 0x3

    invoke-virtual {p2, v1}, Landroid/content/Intent;->setPairActivity(I)V

    if-eqz p5, :cond_2

    invoke-virtual {p5}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    invoke-virtual {p2, v1}, Landroid/content/Intent;->setPairActivityUserId(I)V

    :cond_2
    invoke-virtual {p2, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {p3, v3}, Landroid/content/Intent;->setPairActivity(I)V

    if-eqz p6, :cond_3

    invoke-virtual {p6}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    invoke-virtual {p3, v1}, Landroid/content/Intent;->setPairActivityUserId(I)V

    :cond_3
    invoke-virtual {p3, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/4 v1, 0x2

    new-array v1, v1, [Landroid/content/Intent;

    aput-object p3, v1, v2

    aput-object p2, v1, v3

    invoke-virtual {p1, v1}, Landroid/content/Context;->startActivities([Landroid/content/Intent;)V

    if-eqz p4, :cond_4

    :try_start_0
    invoke-static {}, Lcom/samsung/android/multiwindow/MultiWindowManager;->getDefault()Lcom/samsung/android/multiwindow/IMultiWindowManager;

    move-result-object v1

    invoke-interface {v1, p4}, Lcom/samsung/android/multiwindow/IMultiWindowManager;->resizeDockedStack(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_4
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/samsung/android/multiwindow/MultiWindowManager;->warningException(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public startResizingFreeformTask(Landroid/os/IBinder;II)V
    .locals 2

    :try_start_0
    invoke-static {}, Lcom/samsung/android/multiwindow/MultiWindowManager;->getDefault()Lcom/samsung/android/multiwindow/IMultiWindowManager;

    move-result-object v1

    invoke-interface {v1, p1, p2, p3}, Lcom/samsung/android/multiwindow/IMultiWindowManager;->startResizingFreeformTask(Landroid/os/IBinder;II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/samsung/android/multiwindow/MultiWindowManager;->warningException(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public stopDividerDragging()V
    .locals 2

    :try_start_0
    invoke-static {}, Lcom/samsung/android/multiwindow/MultiWindowManager;->getDefault()Lcom/samsung/android/multiwindow/IMultiWindowManager;

    move-result-object v1

    invoke-interface {v1}, Lcom/samsung/android/multiwindow/IMultiWindowManager;->stopDividerDragging()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/samsung/android/multiwindow/MultiWindowManager;->warningException(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public unregisterMultiWindowServiceCallback(Lcom/samsung/android/multiwindow/IMultiWindowCallback;)V
    .locals 2

    :try_start_0
    invoke-static {}, Lcom/samsung/android/multiwindow/MultiWindowManager;->getDefault()Lcom/samsung/android/multiwindow/IMultiWindowManager;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/samsung/android/multiwindow/IMultiWindowManager;->unregisterMultiWindowServiceCallback(Lcom/samsung/android/multiwindow/IMultiWindowCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/samsung/android/multiwindow/MultiWindowManager;->warningException(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public updateTaskPositionInTaskBar(Ljava/util/HashMap;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/graphics/Point;",
            ">;)V"
        }
    .end annotation

    :try_start_0
    invoke-static {}, Lcom/samsung/android/multiwindow/MultiWindowManager;->getDefault()Lcom/samsung/android/multiwindow/IMultiWindowManager;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/samsung/android/multiwindow/IMultiWindowManager;->updateTaskPositionInTaskBar(Ljava/util/Map;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/samsung/android/multiwindow/MultiWindowManager;->warningException(Ljava/lang/Exception;)V

    goto :goto_0
.end method
