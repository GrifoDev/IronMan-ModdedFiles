.class final Lcom/android/server/wm/MultiWindowManagerInternal$MultiWindowHandlerImpl;
.super Landroid/os/Handler;
.source "MultiWindowManagerInternal.java"

# interfaces
.implements Lcom/android/server/wm/IMultiWindowManagerInternalBridge$MultiWindowHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/MultiWindowManagerInternal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "MultiWindowHandlerImpl"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wm/MultiWindowManagerInternal;


# direct methods
.method constructor <init>(Lcom/android/server/wm/MultiWindowManagerInternal;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/wm/MultiWindowManagerInternal$MultiWindowHandlerImpl;->this$0:Lcom/android/server/wm/MultiWindowManagerInternal;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 25

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v20, v0

    packed-switch v20, :pswitch_data_0

    :cond_0
    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    sget-boolean v20, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->SAMSUNG_MULTIWINDOW_DYNAMIC_ENABLED:Z

    if-eqz v20, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/MultiWindowManagerInternal$MultiWindowHandlerImpl;->this$0:Lcom/android/server/wm/MultiWindowManagerInternal;

    move-object/from16 v21, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v20, v0

    check-cast v20, Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector$ResizeInfo;

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/server/wm/MultiWindowManagerInternal;->enterFreeformTask(Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector$ResizeInfo;)V

    goto :goto_0

    :pswitch_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/MultiWindowManagerInternal$MultiWindowHandlerImpl;->this$0:Lcom/android/server/wm/MultiWindowManagerInternal;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/server/wm/MultiWindowManagerInternal;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    move-object/from16 v21, v0

    monitor-enter v21

    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/MultiWindowManagerInternal$MultiWindowHandlerImpl;->this$0:Lcom/android/server/wm/MultiWindowManagerInternal;

    move-object/from16 v20, v0

    const-string/jumbo v22, "complete"

    const/16 v23, 0x0

    const/16 v24, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, v23

    move/from16 v2, v24

    move-object/from16 v3, v22

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/wm/MultiWindowManagerInternal;->setFreeformRelaunchAnimState(Ljava/util/ArrayList;ILjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    :goto_1
    monitor-exit v21

    goto :goto_0

    :catchall_0
    move-exception v20

    monitor-exit v21

    throw v20

    :pswitch_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/MultiWindowManagerInternal$MultiWindowHandlerImpl;->this$0:Lcom/android/server/wm/MultiWindowManagerInternal;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/server/wm/MultiWindowManagerInternal;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    move-object/from16 v21, v0

    monitor-enter v21

    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/MultiWindowManagerInternal$MultiWindowHandlerImpl;->this$0:Lcom/android/server/wm/MultiWindowManagerInternal;

    move-object/from16 v20, v0

    const-string/jumbo v22, "timeout"

    const/16 v23, 0x0

    const/16 v24, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, v23

    move/from16 v2, v24

    move-object/from16 v3, v22

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/wm/MultiWindowManagerInternal;->setFreeformRelaunchAnimState(Ljava/util/ArrayList;ILjava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v20

    monitor-exit v21

    throw v20

    :pswitch_4
    sget-boolean v20, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->SAMSUNG_MULTIWINDOW_DYNAMIC_ENABLED:Z

    if-eqz v20, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/MultiWindowManagerInternal$MultiWindowHandlerImpl;->this$0:Lcom/android/server/wm/MultiWindowManagerInternal;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/server/wm/MultiWindowManagerInternal;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mTaskPositioner:Lcom/android/server/wm/TaskPositioner;

    move-object/from16 v20, v0

    if-eqz v20, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/MultiWindowManagerInternal$MultiWindowHandlerImpl;->this$0:Lcom/android/server/wm/MultiWindowManagerInternal;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/server/wm/MultiWindowManagerInternal;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mTaskPositioner:Lcom/android/server/wm/TaskPositioner;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/server/wm/TaskPositioner;->hideDimLayer()V

    goto/16 :goto_0

    :pswitch_5
    sget-boolean v20, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->SAMSUNG_MULTIWINDOW_DYNAMIC_ENABLED:Z

    if-eqz v20, :cond_0

    sget-boolean v20, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->FREEFORM_SLIDE_MODE:Z

    if-eqz v20, :cond_0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v19, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v20, v0

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_2

    const/16 v16, 0x1

    :goto_2
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v17, v0

    check-cast v17, Landroid/graphics/Rect;

    :try_start_2
    new-instance v15, Lcom/samsung/android/multiwindow/MultiWindowManager;

    invoke-direct {v15}, Lcom/samsung/android/multiwindow/MultiWindowManager;-><init>()V

    move/from16 v0, v19

    move/from16 v1, v16

    invoke-virtual {v15, v0, v1}, Lcom/samsung/android/multiwindow/MultiWindowManager;->setSlideMode(IZ)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/MultiWindowManagerInternal$MultiWindowHandlerImpl;->this$0:Lcom/android/server/wm/MultiWindowManagerInternal;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/server/wm/MultiWindowManagerInternal;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mActivityManager:Landroid/app/IActivityManager;

    move-object/from16 v20, v0

    const/16 v21, 0x1

    move-object/from16 v0, v20

    move/from16 v1, v19

    move-object/from16 v2, v17

    move/from16 v3, v21

    invoke-interface {v0, v1, v2, v3}, Landroid/app/IActivityManager;->resizeTask(ILandroid/graphics/Rect;I)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v8

    invoke-virtual {v8}, Landroid/os/RemoteException;->printStackTrace()V

    goto/16 :goto_0

    :cond_2
    const/16 v16, 0x0

    goto :goto_2

    :pswitch_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/MultiWindowManagerInternal$MultiWindowHandlerImpl;->this$0:Lcom/android/server/wm/MultiWindowManagerInternal;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/server/wm/MultiWindowManagerInternal;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    move-object/from16 v21, v0

    monitor-enter v21

    :try_start_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/MultiWindowManagerInternal$MultiWindowHandlerImpl;->this$0:Lcom/android/server/wm/MultiWindowManagerInternal;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/server/wm/MultiWindowManagerInternal;->mScreenFreezeAnimation:Lcom/android/server/wm/ScreenFreezeAnimation;

    move-object/from16 v20, v0

    if-eqz v20, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/MultiWindowManagerInternal$MultiWindowHandlerImpl;->this$0:Lcom/android/server/wm/MultiWindowManagerInternal;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/server/wm/MultiWindowManagerInternal;->mScreenFreezeAnimation:Lcom/android/server/wm/ScreenFreezeAnimation;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/server/wm/ScreenFreezeAnimation;->timeout()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto/16 :goto_1

    :catchall_2
    move-exception v20

    monitor-exit v21

    throw v20

    :pswitch_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/MultiWindowManagerInternal$MultiWindowHandlerImpl;->this$0:Lcom/android/server/wm/MultiWindowManagerInternal;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/server/wm/MultiWindowManagerInternal;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    move-object/from16 v21, v0

    monitor-enter v21

    const/16 v20, 0x8

    :try_start_4
    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/server/wm/MultiWindowManagerInternal$MultiWindowHandlerImpl;->removeMessages(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/MultiWindowManagerInternal$MultiWindowHandlerImpl;->this$0:Lcom/android/server/wm/MultiWindowManagerInternal;

    move-object/from16 v20, v0

    const-string/jumbo v22, "complete"

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-static {v0, v1}, Lcom/android/server/wm/MultiWindowManagerInternal;->-wrap0(Lcom/android/server/wm/MultiWindowManagerInternal;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    goto/16 :goto_1

    :catchall_3
    move-exception v20

    monitor-exit v21

    throw v20

    :pswitch_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/MultiWindowManagerInternal$MultiWindowHandlerImpl;->this$0:Lcom/android/server/wm/MultiWindowManagerInternal;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/server/wm/MultiWindowManagerInternal;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    move-object/from16 v21, v0

    monitor-enter v21

    :try_start_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/MultiWindowManagerInternal$MultiWindowHandlerImpl;->this$0:Lcom/android/server/wm/MultiWindowManagerInternal;

    move-object/from16 v20, v0

    const-string/jumbo v22, "timeout"

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-static {v0, v1}, Lcom/android/server/wm/MultiWindowManagerInternal;->-wrap0(Lcom/android/server/wm/MultiWindowManagerInternal;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    goto/16 :goto_1

    :catchall_4
    move-exception v20

    monitor-exit v21

    throw v20

    :pswitch_9
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/MultiWindowManagerInternal$MultiWindowHandlerImpl;->this$0:Lcom/android/server/wm/MultiWindowManagerInternal;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/server/wm/MultiWindowManagerInternal;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    move-object/from16 v21, v0

    monitor-enter v21

    :try_start_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/MultiWindowManagerInternal$MultiWindowHandlerImpl;->this$0:Lcom/android/server/wm/MultiWindowManagerInternal;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/android/server/wm/MultiWindowManagerInternal;->-get1(Lcom/android/server/wm/MultiWindowManagerInternal;)Ljava/util/HashMap;

    move-result-object v20

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/MultiWindowManagerInternal$MultiWindowHandlerImpl;->this$0:Lcom/android/server/wm/MultiWindowManagerInternal;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/android/server/wm/MultiWindowManagerInternal;->-get1(Lcom/android/server/wm/MultiWindowManagerInternal;)Ljava/util/HashMap;

    move-result-object v20

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v20, "MultiWindowManagerInternal"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v23, "MULTIWINDOW_ENTER_FREEFORM_TASK_TIMEOUT, taskId="

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_5

    goto/16 :goto_1

    :catchall_5
    move-exception v20

    monitor-exit v21

    throw v20

    :pswitch_a
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v7

    const-string/jumbo v20, "appid"

    move-object/from16 v0, v20

    invoke-virtual {v7, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v20, v0

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_3

    const-string/jumbo v20, "feature"

    move-object/from16 v0, v20

    invoke-virtual {v7, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const-string/jumbo v20, "extra"

    move-object/from16 v0, v20

    invoke-virtual {v7, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/MultiWindowManagerInternal$MultiWindowHandlerImpl;->this$0:Lcom/android/server/wm/MultiWindowManagerInternal;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/server/wm/MultiWindowManagerInternal;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-static {v5, v0, v11, v9}, Lcom/samsung/android/multiwindow/MultiWindowLogger;->logGSIM(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_3
    const-string/jumbo v20, "features"

    move-object/from16 v0, v20

    invoke-virtual {v7, v0}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v12

    const-string/jumbo v20, "extras"

    move-object/from16 v0, v20

    invoke-virtual {v7, v0}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/MultiWindowManagerInternal$MultiWindowHandlerImpl;->this$0:Lcom/android/server/wm/MultiWindowManagerInternal;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/server/wm/MultiWindowManagerInternal;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-static {v5, v0, v12, v10}, Lcom/samsung/android/multiwindow/MultiWindowLogger;->logGSIM(Ljava/lang/String;Landroid/content/Context;[Ljava/lang/String;[Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_b
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v20, v0

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_4

    const/4 v4, 0x1

    :goto_3
    move-object/from16 v0, p1

    iget-object v6, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/MultiWindowManagerInternal$MultiWindowHandlerImpl;->this$0:Lcom/android/server/wm/MultiWindowManagerInternal;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/server/wm/MultiWindowManagerInternal;->mMultiWindowManagerService:Lcom/android/server/am/IMultiWindowManagerServiceBridge;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-interface {v0, v6, v4}, Lcom/android/server/am/IMultiWindowManagerServiceBridge;->ensureDockedResize(Landroid/graphics/Rect;Z)V

    goto/16 :goto_0

    :cond_4
    const/4 v4, 0x0

    goto :goto_3

    :pswitch_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/MultiWindowManagerInternal$MultiWindowHandlerImpl;->this$0:Lcom/android/server/wm/MultiWindowManagerInternal;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/server/wm/MultiWindowManagerInternal;->mMultiWindowManagerService:Lcom/android/server/am/IMultiWindowManagerServiceBridge;

    move-object/from16 v20, v0

    invoke-interface/range {v20 .. v20}, Lcom/android/server/am/IMultiWindowManagerServiceBridge;->ensureDockedStackVisible()V

    goto/16 :goto_0

    :pswitch_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/MultiWindowManagerInternal$MultiWindowHandlerImpl;->this$0:Lcom/android/server/wm/MultiWindowManagerInternal;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/server/wm/MultiWindowManagerInternal;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    move-object/from16 v21, v0

    monitor-enter v21

    :try_start_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/MultiWindowManagerInternal$MultiWindowHandlerImpl;->this$0:Lcom/android/server/wm/MultiWindowManagerInternal;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/server/wm/MultiWindowManagerInternal;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/server/wm/WindowManagerService;->isDesktopModeLocked()Z
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_6

    move-result v14

    monitor-exit v21

    if-eqz v14, :cond_0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v18, v0

    check-cast v18, Lcom/android/server/wm/Task;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/MultiWindowManagerInternal$MultiWindowHandlerImpl;->this$0:Lcom/android/server/wm/MultiWindowManagerInternal;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/server/wm/MultiWindowManagerInternal;->mGuideWindow:Lcom/samsung/android/multiwindow/MultiWindowGuideWindow;

    move-object/from16 v20, v0

    if-eqz v20, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/MultiWindowManagerInternal$MultiWindowHandlerImpl;->this$0:Lcom/android/server/wm/MultiWindowManagerInternal;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/server/wm/MultiWindowManagerInternal;->mGuideWindow:Lcom/samsung/android/multiwindow/MultiWindowGuideWindow;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/samsung/android/multiwindow/MultiWindowGuideWindow;->dismiss()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/MultiWindowManagerInternal$MultiWindowHandlerImpl;->this$0:Lcom/android/server/wm/MultiWindowManagerInternal;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    iput-object v0, v1, Lcom/android/server/wm/MultiWindowManagerInternal;->mGuideWindow:Lcom/samsung/android/multiwindow/MultiWindowGuideWindow;

    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/MultiWindowManagerInternal$MultiWindowHandlerImpl;->this$0:Lcom/android/server/wm/MultiWindowManagerInternal;

    move-object/from16 v20, v0

    new-instance v21, Lcom/samsung/android/multiwindow/MultiWindowGuideWindow;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/MultiWindowManagerInternal$MultiWindowHandlerImpl;->this$0:Lcom/android/server/wm/MultiWindowManagerInternal;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/server/wm/MultiWindowManagerInternal;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v22, v0

    invoke-direct/range {v21 .. v22}, Lcom/samsung/android/multiwindow/MultiWindowGuideWindow;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    iput-object v0, v1, Lcom/android/server/wm/MultiWindowManagerInternal;->mGuideWindow:Lcom/samsung/android/multiwindow/MultiWindowGuideWindow;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/MultiWindowManagerInternal$MultiWindowHandlerImpl;->this$0:Lcom/android/server/wm/MultiWindowManagerInternal;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/server/wm/MultiWindowManagerInternal;->mGuideWindow:Lcom/samsung/android/multiwindow/MultiWindowGuideWindow;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/samsung/android/multiwindow/MultiWindowGuideWindow;->isAttached()Z

    move-result v20

    if-nez v20, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/MultiWindowManagerInternal$MultiWindowHandlerImpl;->this$0:Lcom/android/server/wm/MultiWindowManagerInternal;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/server/wm/MultiWindowManagerInternal;->mGuideWindow:Lcom/samsung/android/multiwindow/MultiWindowGuideWindow;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/samsung/android/multiwindow/MultiWindowGuideWindow;->initialize()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/MultiWindowManagerInternal$MultiWindowHandlerImpl;->this$0:Lcom/android/server/wm/MultiWindowManagerInternal;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/server/wm/MultiWindowManagerInternal;->mGuideWindow:Lcom/samsung/android/multiwindow/MultiWindowGuideWindow;

    move-object/from16 v20, v0

    const/16 v21, 0x1

    invoke-virtual/range {v20 .. v21}, Lcom/samsung/android/multiwindow/MultiWindowGuideWindow;->setGuideState(I)V

    new-instance v13, Landroid/graphics/Rect;

    invoke-direct {v13}, Landroid/graphics/Rect;-><init>()V

    move-object/from16 v0, v18

    invoke-virtual {v0, v13}, Lcom/android/server/wm/Task;->getBounds(Landroid/graphics/Rect;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/MultiWindowManagerInternal$MultiWindowHandlerImpl;->this$0:Lcom/android/server/wm/MultiWindowManagerInternal;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/server/wm/MultiWindowManagerInternal;->mGuideWindow:Lcom/samsung/android/multiwindow/MultiWindowGuideWindow;

    move-object/from16 v20, v0

    const/16 v21, 0x1

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v0, v13, v1}, Lcom/samsung/android/multiwindow/MultiWindowGuideWindow;->show(Landroid/graphics/Rect;Z)V

    goto/16 :goto_0

    :catchall_6
    move-exception v20

    monitor-exit v21

    throw v20

    :pswitch_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/MultiWindowManagerInternal$MultiWindowHandlerImpl;->this$0:Lcom/android/server/wm/MultiWindowManagerInternal;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/server/wm/MultiWindowManagerInternal;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    move-object/from16 v21, v0

    monitor-enter v21

    :try_start_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/MultiWindowManagerInternal$MultiWindowHandlerImpl;->this$0:Lcom/android/server/wm/MultiWindowManagerInternal;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/server/wm/MultiWindowManagerInternal;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/server/wm/WindowManagerService;->isDesktopModeLocked()Z
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_7

    move-result v14

    monitor-exit v21

    if-eqz v14, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/MultiWindowManagerInternal$MultiWindowHandlerImpl;->this$0:Lcom/android/server/wm/MultiWindowManagerInternal;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/server/wm/MultiWindowManagerInternal;->mGuideWindow:Lcom/samsung/android/multiwindow/MultiWindowGuideWindow;

    move-object/from16 v20, v0

    if-eqz v20, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/MultiWindowManagerInternal$MultiWindowHandlerImpl;->this$0:Lcom/android/server/wm/MultiWindowManagerInternal;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/server/wm/MultiWindowManagerInternal;->mGuideWindow:Lcom/samsung/android/multiwindow/MultiWindowGuideWindow;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/samsung/android/multiwindow/MultiWindowGuideWindow;->dismiss()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/MultiWindowManagerInternal$MultiWindowHandlerImpl;->this$0:Lcom/android/server/wm/MultiWindowManagerInternal;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    iput-object v0, v1, Lcom/android/server/wm/MultiWindowManagerInternal;->mGuideWindow:Lcom/samsung/android/multiwindow/MultiWindowGuideWindow;

    goto/16 :goto_0

    :catchall_7
    move-exception v20

    monitor-exit v21

    throw v20

    :pswitch_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/MultiWindowManagerInternal$MultiWindowHandlerImpl;->this$0:Lcom/android/server/wm/MultiWindowManagerInternal;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/server/wm/MultiWindowManagerInternal;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    move-object/from16 v21, v0

    monitor-enter v21

    :try_start_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/MultiWindowManagerInternal$MultiWindowHandlerImpl;->this$0:Lcom/android/server/wm/MultiWindowManagerInternal;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/server/wm/MultiWindowManagerInternal;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/android/server/wm/DisplayContent;->getDockedDividerController()Lcom/android/server/wm/DockedStackDividerController;

    move-result-object v20

    const/16 v22, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/server/wm/DockedStackDividerController;->setForceHideForDivider(Z)V

    const-string/jumbo v20, "MultiWindowManagerInternal"

    const-string/jumbo v22, "MULTIWINDOW_DEPRESS_DIVIDER_VISIBLE_TIMEOUT: force hide Divider is false."

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/MultiWindowManagerInternal$MultiWindowHandlerImpl;->this$0:Lcom/android/server/wm/MultiWindowManagerInternal;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/server/wm/MultiWindowManagerInternal;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWindowPlacerLocked:Lcom/android/server/wm/WindowSurfacePlacer;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/server/wm/WindowSurfacePlacer;->performSurfacePlacement()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_8

    goto/16 :goto_1

    :catchall_8
    move-exception v20

    monitor-exit v21

    throw v20

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_0
        :pswitch_0
        :pswitch_9
        :pswitch_a
        :pswitch_0
        :pswitch_b
        :pswitch_d
        :pswitch_e
        :pswitch_c
        :pswitch_f
    .end packed-switch
.end method
