.class public interface abstract Lcom/android/server/am/IMultiWindowManagerServiceBridge;
.super Ljava/lang/Object;
.source "IMultiWindowManagerServiceBridge.java"


# virtual methods
.method public abstract addGrantPermissionComponent(Ljava/lang/String;)V
.end method

.method public abstract addTaskBoundsUnchangedDuringResizeIfNeededLocked(Lcom/android/server/am/TaskRecord;Landroid/graphics/Rect;Landroid/graphics/Rect;)V
.end method

.method public abstract adjustForMaximumTaskDimensions(Lcom/android/server/am/TaskRecord;Landroid/graphics/Rect;)V
.end method

.method public abstract adjustStacksOrderLocked(IILcom/android/server/am/TaskRecord;Lcom/android/server/am/ActivityStack;)I
.end method

.method public abstract adjustedForImeStateChanged(Z)V
.end method

.method public abstract applyDexCompatConfigurationLocked(Lcom/android/server/am/ActivityRecord;Landroid/content/res/Configuration;Landroid/content/pm/ApplicationInfo;Ljava/lang/String;)V
.end method

.method public abstract applyFreeformMinimizePolicyLocked(I)V
.end method

.method public abstract checkLaunchPolicyLocked(Landroid/content/pm/ActivityInfo;)Z
.end method

.method public abstract checkRunningFreeformWithLoggingLocked(Lcom/android/server/am/TaskRecord;)V
.end method

.method public abstract cleanUpAssociatedTargetProcess(Lcom/android/server/am/ProcessRecord;Z)V
.end method

.method public abstract clearAutoResize(Ljava/lang/String;)V
.end method

.method public abstract deferDetachDockStackLocked()V
.end method

.method public abstract dumpLocked(Ljava/io/PrintWriter;Z)V
.end method

.method public abstract ensureDockedResize(Landroid/graphics/Rect;Z)V
.end method

.method public abstract ensureDockedStackVisible()V
.end method

.method public abstract getBoundsInDeXFromRecentTasks(Lcom/android/server/am/TaskRecord;)Landroid/graphics/Rect;
.end method

.method public abstract getDecorCaptionWindowHeight()I
.end method

.method public abstract getIndexOfFreeformStackLocked()I
.end method

.method public abstract getMaxMultiInstanceCnt()I
.end method

.method public abstract getMultiInstanceCntLocked(Lcom/android/server/am/ActivityRecord;)I
.end method

.method public abstract getMultiWindowSettingsLocked(I)Landroid/os/Bundle;
.end method

.method public abstract getOppositeMultiWindowStackId(I)I
.end method

.method public abstract getPairActivityUserId(Landroid/content/Intent;)I
.end method

.method public abstract getStackBehindFreeformLocked()Lcom/android/server/am/ActivityStack;
.end method

.method public abstract getStackIdsShowWhenLocked()I
.end method

.method public abstract getSupportScreenBounds(Lcom/android/server/am/TaskRecord;)Landroid/graphics/Rect;
.end method

.method public abstract getTaskMaxDimensions(Landroid/graphics/Point;Landroid/content/pm/ActivityInfo;)V
.end method

.method public abstract getTaskMinDimensions(Landroid/graphics/Point;Landroid/content/pm/ActivityInfo;)V
.end method

.method public abstract init()V
.end method

.method public abstract initializePairActivityModeLocked(Lcom/android/server/am/TaskRecord;Z)V
.end method

.method public abstract isAllTaskHiddenLocked(Lcom/android/server/am/ActivityStack;Z)Z
.end method

.method public abstract isAppToBlockFloatingMultiWindows(Ljava/lang/String;)Z
.end method

.method public abstract isAutoResizingEnabled()Z
.end method

.method public abstract isDeferResumeTopActivityLocked()Z
.end method

.method public abstract isDexCompatConfigurationTargetLocked(Landroid/content/pm/ApplicationInfo;Lcom/android/server/am/ActivityRecord;)Z
.end method

.method public abstract isDockedPairActivity(Lcom/android/server/am/ActivityRecord;)Z
.end method

.method public abstract isEnsureDockedMode()Z
.end method

.method public abstract isForceResizable(Landroid/content/pm/ActivityInfo;)Z
.end method

.method public abstract isFreeformStackVisibleLocked()Z
.end method

.method public abstract isFullScreenPairActivity(Lcom/android/server/am/ActivityRecord;)Z
.end method

.method public abstract isGamePackage(Ljava/lang/String;)Z
.end method

.method public abstract isLaunchableForMultiInstance(Landroid/content/pm/ActivityInfo;)Z
.end method

.method public abstract isLaunchingPairActivitiesLocked()Z
.end method

.method public abstract isMaximizeButtonVisibility(Landroid/os/IBinder;)Z
.end method

.method public abstract isMinTaskDimensionsChangedLocked(Lcom/android/server/am/ActivityRecord;)Z
.end method

.method public abstract isMovingMultiWindowTasksToFullScreenLocked()Z
.end method

.method public abstract isPairActivity(Lcom/android/server/am/ActivityRecord;)Z
.end method

.method public abstract isResizable(Landroid/content/pm/ResolveInfo;)Z
.end method

.method public abstract isSnapWindowResizing()Z
.end method

.method public abstract isTaskOrientationChangedLocked(Lcom/android/server/am/ActivityRecord;)Z
.end method

.method public abstract isVisibleStackBehindFreeformLocked(Lcom/android/server/am/ActivityStack;Lcom/android/server/am/ActivityRecord;)Z
.end method

.method public abstract logMultiWindowBehavior(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract logMultiWindowBehavior(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract logMultiWindowBehavior(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V
.end method

.method public abstract logMultiWindowBehavior([Ljava/lang/String;[Ljava/lang/String;)V
.end method

.method public abstract logSplitWindowComplete(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract minimizeAllTasksInFreeformLocked()Z
.end method

.method public abstract minimizeOhterFreeforms(Landroid/os/IBinder;)V
.end method

.method public abstract moveDockedTasksToFullscreenStack(ZZ)Z
.end method

.method public abstract moveMultiWindowTasksToFullScreen()V
.end method

.method public abstract moveProfileTasksToBackLocked(I)V
.end method

.method public abstract moveTasksToFullscreenStackExceptTopTaskLocked(IZZ)V
.end method

.method public abstract nofitySwappingDockedAndFullscreenLocked(Z)V
.end method

.method public abstract notifyActivityStackAttachedLocked(II)V
.end method

.method public abstract notifyActivityStackDetachedLocked(II)V
.end method

.method public abstract notifyApplyFreeformMinimizePolicy(I)V
.end method

.method public abstract notifyDockedStackMinimizedChange(Z)V
.end method

.method public abstract notifyFreeformMinimizeStateChanged(Landroid/graphics/Rect;ILandroid/content/ComponentName;II)V
.end method

.method public abstract notifyFreefromWindowAnimationEnd(IILandroid/graphics/Rect;)V
.end method

.method public abstract notifyLastDockTaskToBackTransitionFinishedLocked(Landroid/os/IBinder;)V
.end method

.method public abstract notifyMultiWindowAppTransitionFinishedLocked()V
.end method

.method public abstract notifyMultiWindowFocusedChangeLocked(Ljava/lang/String;)V
.end method

.method public abstract notifyProcessKillByClosingFreeform(I)V
.end method

.method public abstract notifyScreenFreezeAnimationFinished()V
.end method

.method public abstract onConfigurationChangedCompleteLocked(I)V
.end method

.method public abstract onConfigurationChangedLocked(I)V
.end method

.method public abstract postMoveTaskToStackLocked(Lcom/android/server/am/ActivityStack;Lcom/android/server/am/ActivityStack;Lcom/android/server/am/TaskRecord;)V
.end method

.method public abstract postStartPairActivities(Ljava/lang/String;)V
.end method

.method public abstract preStartPairActivities()V
.end method

.method public abstract requestAutoResizingIfNeeded(Landroid/graphics/Rect;)Z
.end method

.method public abstract restoreFullscreenStateLocked(Ljava/lang/String;Lcom/android/server/am/TaskRecord;)V
.end method

.method public abstract rotateFreeformTask(Landroid/os/IBinder;)V
.end method

.method public abstract rotationAnimationStateChangedLocked(Z)V
.end method

.method public abstract setBoundsForNewConfig(ILandroid/graphics/Rect;)V
.end method

.method public abstract setFreeformStackVisibilityLocked(Z)V
.end method

.method public abstract setHiddenTaskLocked(Lcom/android/server/am/TaskRecord;I)V
.end method

.method public abstract setMaxVisibleFreeformCount(I)V
.end method

.method public abstract setProcessKillAfterRemovingTaskLocked(Lcom/android/server/am/TaskRecord;)V
.end method

.method public abstract setSlideModeLocked(IZ)V
.end method

.method public abstract setSnapWindowLocked(ZLandroid/graphics/Rect;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract setSystemService(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/wm/WindowManagerService;)V
.end method

.method public abstract setTaskDimensions(Lcom/android/server/am/ActivityRecord;)V
.end method

.method public abstract setTaskDimensions(Lcom/android/server/am/TaskRecord;)V
.end method

.method public abstract startSplitResizeAnimIfNeededLocked(Landroid/graphics/Rect;Landroid/graphics/Rect;)V
.end method

.method public abstract startUserLocked(IZZ)V
.end method

.method public abstract stopUserLocked(I)V
.end method

.method public abstract suspendResize(ILandroid/graphics/Rect;)Z
.end method

.method public abstract systemBooted()V
.end method

.method public abstract unminimizeAllTasksInFreeformLocked()V
.end method

.method public abstract updateDexCompatLaunchPolicy(Lcom/android/server/am/TaskRecord;Landroid/content/pm/ActivityInfo;)V
.end method

.method public abstract updateDexCompatModeLocked(Lcom/android/server/am/TaskRecord;)V
.end method

.method public abstract updateDexCompatModeLocked(Lcom/android/server/am/TaskRecord;Landroid/content/pm/ActivityInfo;Landroid/app/ActivityOptions;)V
.end method

.method public abstract updateNonFocusedVisibleActivityLocked(Lcom/android/server/am/ActivityStack;Lcom/android/server/am/ActivityRecord;ZZLjava/lang/String;)Z
.end method

.method public abstract updateSupportFreeformDensityLocked(Lcom/android/server/am/TaskRecord;)Z
.end method
