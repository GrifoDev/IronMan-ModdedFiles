.class final Lcom/android/server/am/MultiWindowManagerService$H;
.super Landroid/os/Handler;
.source "MultiWindowManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/MultiWindowManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "H"
.end annotation


# static fields
.field public static final NOTIFY_ACTIVITY_STACK_ATTACHED:I = 0xc

.field public static final NOTIFY_ACTIVITY_STACK_DETACHED:I = 0xd

.field public static final NOTIFY_APPLY_FREEFORM_MINIMIZE_POLICY:I = 0xb

.field public static final NOTIFY_AUTO_RESIZE_STATE_CHANGED:I = 0x10

.field public static final NOTIFY_DOCKED_MINIMIZED_CHANGED:I = 0xa

.field public static final NOTIFY_FREEFORM_MINIMIZE_STATE_CHANGED:I = 0x1

.field public static final NOTIFY_FREEFORM_WINDOW_ANIMATION_END:I = 0x2

.field public static final NOTIFY_LAST_DOCKED_TASK_TO_BACK_TRANSITION_FINISHED:I = 0x6

.field public static final NOTIFY_MULTIWINDOW_APP_TRANSITION_FINISHED:I = 0x5

.field public static final NOTIFY_MULTIWINDOW_FOCUS_CHANGED:I = 0x4

.field public static final NOTIFY_MULTIWINDOW_SETTING_CHANGED:I = 0x3

.field public static final NOTIFY_PROCESS_KILL_BY_CLOSING_FREEFORM:I = 0xe

.field public static final NOTIFY_SCREEN_FREEZE_ANIMATION_FINISHED:I = 0x9

.field public static final NOTIFY_SNAP_WINDOW_DISMISSED:I = 0xf

.field public static final SCHEDULE_INITIALIZE_PAIRACTIVITY_MODE:I = 0x11

.field public static final SCHEDULE_INITIALIZE_PAIRACTIVITY_MODE_DURATON:I = 0x7d0

.field public static final SCHEDULE_MINIMIZE_ALL:I = 0x8

.field public static final SCHEDULE_SET_MULTIWINDOW_SETTING_TO_REPOSITORY:I = 0x7

.field public static final UNUSED:I


# instance fields
.field final synthetic this$0:Lcom/android/server/am/MultiWindowManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/am/MultiWindowManagerService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/am/MultiWindowManagerService$H;->this$0:Lcom/android/server/am/MultiWindowManagerService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 51

    move-object/from16 v0, p1

    iget v11, v0, Landroid/os/Message;->what:I

    packed-switch v11, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    sget-boolean v11, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->SAMSUNG_MULTIWINDOW_DYNAMIC_ENABLED:Z

    if-eqz v11, :cond_0

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/am/MultiWindowManagerService$H;->this$0:Lcom/android/server/am/MultiWindowManagerService;

    invoke-static {v11}, Lcom/android/server/am/MultiWindowManagerService;->-get2(Lcom/android/server/am/MultiWindowManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v15

    monitor-enter v15

    :try_start_0
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v20, v0

    check-cast v20, Lcom/android/internal/os/SomeArgs;

    move-object/from16 v0, v20

    iget v7, v0, Lcom/android/internal/os/SomeArgs;->argi1:I

    move-object/from16 v0, v20

    iget v9, v0, Lcom/android/internal/os/SomeArgs;->argi2:I

    move-object/from16 v0, v20

    iget v10, v0, Lcom/android/internal/os/SomeArgs;->argi3:I

    move-object/from16 v0, v20

    iget-object v6, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v6, Landroid/graphics/Rect;

    move-object/from16 v0, v20

    iget-object v8, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v8, Landroid/content/ComponentName;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/am/MultiWindowManagerService$H;->this$0:Lcom/android/server/am/MultiWindowManagerService;

    invoke-static {v11}, Lcom/android/server/am/MultiWindowManagerService;->-get2(Lcom/android/server/am/MultiWindowManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v11

    invoke-virtual {v11}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v18

    const/16 v33, 0x0

    :goto_1
    move/from16 v0, v33

    move/from16 v1, v18

    if-ge v0, v1, :cond_1

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/am/MultiWindowManagerService$H;->this$0:Lcom/android/server/am/MultiWindowManagerService;

    invoke-static {v11}, Lcom/android/server/am/MultiWindowManagerService;->-get2(Lcom/android/server/am/MultiWindowManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v11

    move/from16 v0, v33

    invoke-virtual {v11, v0}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/multiwindow/IMultiWindowCallback;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-interface/range {v5 .. v10}, Lcom/samsung/android/multiwindow/IMultiWindowCallback;->onStateChanged(Landroid/graphics/Rect;ILandroid/content/ComponentName;II)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_2
    add-int/lit8 v33, v33, 0x1

    goto :goto_1

    :catch_0
    move-exception v28

    :try_start_2
    const-string/jumbo v11, "MultiWindowManagerService"

    const-string/jumbo v16, "onStateChanged, RemoteException occured"

    move-object/from16 v0, v16

    invoke-static {v11, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v11

    monitor-exit v15

    throw v11

    :cond_1
    :try_start_3
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/am/MultiWindowManagerService$H;->this$0:Lcom/android/server/am/MultiWindowManagerService;

    invoke-static {v11}, Lcom/android/server/am/MultiWindowManagerService;->-get2(Lcom/android/server/am/MultiWindowManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v11

    invoke-virtual {v11}, Landroid/os/RemoteCallbackList;->finishBroadcast()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_3
    monitor-exit v15

    goto :goto_0

    :pswitch_1
    sget-boolean v11, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->SAMSUNG_MULTIWINDOW_DYNAMIC_ENABLED:Z

    if-eqz v11, :cond_0

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/am/MultiWindowManagerService$H;->this$0:Lcom/android/server/am/MultiWindowManagerService;

    invoke-static {v11}, Lcom/android/server/am/MultiWindowManagerService;->-get2(Lcom/android/server/am/MultiWindowManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v15

    monitor-enter v15

    :try_start_4
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v20, v0

    check-cast v20, Lcom/android/internal/os/SomeArgs;

    move-object/from16 v0, v20

    iget v7, v0, Lcom/android/internal/os/SomeArgs;->argi1:I

    move-object/from16 v0, v20

    iget v0, v0, Lcom/android/internal/os/SomeArgs;->argi2:I

    move/from16 v49, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    move-object/from16 v45, v0

    check-cast v45, Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/am/MultiWindowManagerService$H;->this$0:Lcom/android/server/am/MultiWindowManagerService;

    invoke-static {v11}, Lcom/android/server/am/MultiWindowManagerService;->-get2(Lcom/android/server/am/MultiWindowManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v11

    invoke-virtual {v11}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v18

    const/16 v33, 0x0

    :goto_4
    move/from16 v0, v33

    move/from16 v1, v18

    if-ge v0, v1, :cond_2

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/am/MultiWindowManagerService$H;->this$0:Lcom/android/server/am/MultiWindowManagerService;

    invoke-static {v11}, Lcom/android/server/am/MultiWindowManagerService;->-get2(Lcom/android/server/am/MultiWindowManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v11

    move/from16 v0, v33

    invoke-virtual {v11, v0}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/multiwindow/IMultiWindowCallback;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    move/from16 v0, v49

    move-object/from16 v1, v45

    invoke-interface {v5, v7, v0, v1}, Lcom/samsung/android/multiwindow/IMultiWindowCallback;->onAnimationEnd(IILandroid/graphics/Rect;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :goto_5
    add-int/lit8 v33, v33, 0x1

    goto :goto_4

    :catch_1
    move-exception v28

    :try_start_6
    const-string/jumbo v11, "MultiWindowManagerService"

    const-string/jumbo v16, "onAnimationEnd, RemoteException occured"

    move-object/from16 v0, v16

    invoke-static {v11, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto :goto_5

    :catchall_1
    move-exception v11

    monitor-exit v15

    throw v11

    :cond_2
    :try_start_7
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/am/MultiWindowManagerService$H;->this$0:Lcom/android/server/am/MultiWindowManagerService;

    invoke-static {v11}, Lcom/android/server/am/MultiWindowManagerService;->-get2(Lcom/android/server/am/MultiWindowManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v11

    invoke-virtual {v11}, Landroid/os/RemoteCallbackList;->finishBroadcast()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    goto :goto_3

    :pswitch_2
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/am/MultiWindowManagerService$H;->this$0:Lcom/android/server/am/MultiWindowManagerService;

    invoke-static {v11}, Lcom/android/server/am/MultiWindowManagerService;->-get6(Lcom/android/server/am/MultiWindowManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v15

    monitor-enter v15

    :try_start_8
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v20, v0

    check-cast v20, Lcom/android/internal/os/SomeArgs;

    move-object/from16 v0, v20

    iget v11, v0, Lcom/android/internal/os/SomeArgs;->argi1:I

    const/16 v16, 0x1

    move/from16 v0, v16

    if-ne v11, v0, :cond_3

    const/16 v36, 0x1

    :goto_6
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/am/MultiWindowManagerService$H;->this$0:Lcom/android/server/am/MultiWindowManagerService;

    invoke-static {v11}, Lcom/android/server/am/MultiWindowManagerService;->-get6(Lcom/android/server/am/MultiWindowManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v11

    invoke-virtual {v11}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v42

    const/16 v33, 0x0

    :goto_7
    move/from16 v0, v33

    move/from16 v1, v42

    if-ge v0, v1, :cond_4

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/am/MultiWindowManagerService$H;->this$0:Lcom/android/server/am/MultiWindowManagerService;

    invoke-static {v11}, Lcom/android/server/am/MultiWindowManagerService;->-get6(Lcom/android/server/am/MultiWindowManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v11

    move/from16 v0, v33

    invoke-virtual {v11, v0}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v34

    check-cast v34, Lcom/samsung/android/multiwindow/IMultiWindowEventListener;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    :try_start_9
    move-object/from16 v0, v34

    move/from16 v1, v36

    invoke-interface {v0, v1}, Lcom/samsung/android/multiwindow/IMultiWindowEventListener;->onMultiWindowSettingChanged(Z)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_9} :catch_2
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    :goto_8
    add-int/lit8 v33, v33, 0x1

    goto :goto_7

    :cond_3
    const/16 v36, 0x0

    goto :goto_6

    :catch_2
    move-exception v28

    :try_start_a
    const-string/jumbo v11, "MultiWindowManagerService"

    const-string/jumbo v16, "Error delivering MultiWindowSetting changed event."

    move-object/from16 v0, v16

    move-object/from16 v1, v28

    invoke-static {v11, v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    goto :goto_8

    :catchall_2
    move-exception v11

    monitor-exit v15

    throw v11

    :cond_4
    :try_start_b
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/am/MultiWindowManagerService$H;->this$0:Lcom/android/server/am/MultiWindowManagerService;

    invoke-static {v11}, Lcom/android/server/am/MultiWindowManagerService;->-get6(Lcom/android/server/am/MultiWindowManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v11

    invoke-virtual {v11}, Landroid/os/RemoteCallbackList;->finishBroadcast()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    goto/16 :goto_3

    :pswitch_3
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/am/MultiWindowManagerService$H;->this$0:Lcom/android/server/am/MultiWindowManagerService;

    invoke-static {v11}, Lcom/android/server/am/MultiWindowManagerService;->-get6(Lcom/android/server/am/MultiWindowManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v15

    monitor-enter v15

    :try_start_c
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v20, v0

    check-cast v20, Lcom/android/internal/os/SomeArgs;

    move-object/from16 v0, v20

    iget v0, v0, Lcom/android/internal/os/SomeArgs;->argi1:I

    move/from16 v29, v0

    move-object/from16 v0, v20

    iget v0, v0, Lcom/android/internal/os/SomeArgs;->argi2:I

    move/from16 v30, v0

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/am/MultiWindowManagerService$H;->this$0:Lcom/android/server/am/MultiWindowManagerService;

    invoke-static {v11}, Lcom/android/server/am/MultiWindowManagerService;->-get6(Lcom/android/server/am/MultiWindowManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v11

    invoke-virtual {v11}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v42

    const/16 v33, 0x0

    :goto_9
    move/from16 v0, v33

    move/from16 v1, v42

    if-ge v0, v1, :cond_5

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/am/MultiWindowManagerService$H;->this$0:Lcom/android/server/am/MultiWindowManagerService;

    invoke-static {v11}, Lcom/android/server/am/MultiWindowManagerService;->-get6(Lcom/android/server/am/MultiWindowManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v11

    move/from16 v0, v33

    invoke-virtual {v11, v0}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v34

    check-cast v34, Lcom/samsung/android/multiwindow/IMultiWindowEventListener;
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_3

    :try_start_d
    move-object/from16 v0, v34

    move/from16 v1, v29

    move/from16 v2, v30

    invoke-interface {v0, v1, v2}, Lcom/samsung/android/multiwindow/IMultiWindowEventListener;->onMultiWindowFocusChanged(II)V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_d} :catch_3
    .catchall {:try_start_d .. :try_end_d} :catchall_3

    :goto_a
    add-int/lit8 v33, v33, 0x1

    goto :goto_9

    :catch_3
    move-exception v28

    :try_start_e
    const-string/jumbo v11, "MultiWindowManagerService"

    const-string/jumbo v16, "Error delivering MultiWindow focus change event."

    move-object/from16 v0, v16

    move-object/from16 v1, v28

    invoke-static {v11, v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_3

    goto :goto_a

    :catchall_3
    move-exception v11

    monitor-exit v15

    throw v11

    :cond_5
    :try_start_f
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/am/MultiWindowManagerService$H;->this$0:Lcom/android/server/am/MultiWindowManagerService;

    invoke-static {v11}, Lcom/android/server/am/MultiWindowManagerService;->-get6(Lcom/android/server/am/MultiWindowManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v11

    invoke-virtual {v11}, Landroid/os/RemoteCallbackList;->finishBroadcast()V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_3

    goto/16 :goto_3

    :pswitch_4
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/am/MultiWindowManagerService$H;->this$0:Lcom/android/server/am/MultiWindowManagerService;

    invoke-static {v11}, Lcom/android/server/am/MultiWindowManagerService;->-get6(Lcom/android/server/am/MultiWindowManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v15

    monitor-enter v15

    :try_start_10
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/am/MultiWindowManagerService$H;->this$0:Lcom/android/server/am/MultiWindowManagerService;

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-static {v11, v0}, Lcom/android/server/am/MultiWindowManagerService;->-set0(Lcom/android/server/am/MultiWindowManagerService;Z)Z

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v20, v0

    check-cast v20, Lcom/android/internal/os/SomeArgs;

    move-object/from16 v0, v20

    iget v0, v0, Lcom/android/internal/os/SomeArgs;->argi1:I

    move/from16 v21, v0

    move-object/from16 v0, v20

    iget v11, v0, Lcom/android/internal/os/SomeArgs;->argi2:I

    const/16 v16, 0x1

    move/from16 v0, v16

    if-ne v11, v0, :cond_6

    const/16 v39, 0x1

    :goto_b
    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    move-object/from16 v27, v0

    check-cast v27, Landroid/graphics/Rect;

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    move-object/from16 v32, v0

    check-cast v32, Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/am/MultiWindowManagerService$H;->this$0:Lcom/android/server/am/MultiWindowManagerService;

    invoke-static {v11}, Lcom/android/server/am/MultiWindowManagerService;->-get6(Lcom/android/server/am/MultiWindowManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v11

    invoke-virtual {v11}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v42

    const/16 v33, 0x0

    :goto_c
    move/from16 v0, v33

    move/from16 v1, v42

    if-ge v0, v1, :cond_7

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/am/MultiWindowManagerService$H;->this$0:Lcom/android/server/am/MultiWindowManagerService;

    invoke-static {v11}, Lcom/android/server/am/MultiWindowManagerService;->-get6(Lcom/android/server/am/MultiWindowManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v11

    move/from16 v0, v33

    invoke-virtual {v11, v0}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v34

    check-cast v34, Lcom/samsung/android/multiwindow/IMultiWindowEventListener;
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_4

    :try_start_11
    move-object/from16 v0, v34

    move/from16 v1, v21

    move-object/from16 v2, v27

    move-object/from16 v3, v32

    move/from16 v4, v39

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/samsung/android/multiwindow/IMultiWindowEventListener;->onAutoResizeStateChanged(ILandroid/graphics/Rect;Landroid/graphics/Rect;Z)V
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_11 .. :try_end_11} :catch_4
    .catchall {:try_start_11 .. :try_end_11} :catchall_4

    :goto_d
    add-int/lit8 v33, v33, 0x1

    goto :goto_c

    :cond_6
    const/16 v39, 0x0

    goto :goto_b

    :catch_4
    move-exception v28

    :try_start_12
    const-string/jumbo v11, "MultiWindowManagerService"

    const-string/jumbo v16, "Error delivering Auto-Resize state change event."

    move-object/from16 v0, v16

    move-object/from16 v1, v28

    invoke-static {v11, v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_4

    goto :goto_d

    :catchall_4
    move-exception v11

    monitor-exit v15

    throw v11

    :cond_7
    :try_start_13
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/am/MultiWindowManagerService$H;->this$0:Lcom/android/server/am/MultiWindowManagerService;

    invoke-static {v11}, Lcom/android/server/am/MultiWindowManagerService;->-get6(Lcom/android/server/am/MultiWindowManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v11

    invoke-virtual {v11}, Landroid/os/RemoteCallbackList;->finishBroadcast()V
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_4

    goto/16 :goto_3

    :pswitch_5
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/am/MultiWindowManagerService$H;->this$0:Lcom/android/server/am/MultiWindowManagerService;

    invoke-static {v11}, Lcom/android/server/am/MultiWindowManagerService;->-get6(Lcom/android/server/am/MultiWindowManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v15

    monitor-enter v15

    :try_start_14
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/am/MultiWindowManagerService$H;->this$0:Lcom/android/server/am/MultiWindowManagerService;

    invoke-static {v11}, Lcom/android/server/am/MultiWindowManagerService;->-get6(Lcom/android/server/am/MultiWindowManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v11

    invoke-virtual {v11}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v42

    const/16 v33, 0x0

    :goto_e
    move/from16 v0, v33

    move/from16 v1, v42

    if-ge v0, v1, :cond_8

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/am/MultiWindowManagerService$H;->this$0:Lcom/android/server/am/MultiWindowManagerService;

    invoke-static {v11}, Lcom/android/server/am/MultiWindowManagerService;->-get6(Lcom/android/server/am/MultiWindowManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v11

    move/from16 v0, v33

    invoke-virtual {v11, v0}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v34

    check-cast v34, Lcom/samsung/android/multiwindow/IMultiWindowEventListener;
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_5

    :try_start_15
    invoke-interface/range {v34 .. v34}, Lcom/samsung/android/multiwindow/IMultiWindowEventListener;->onMultiWindowAppTransitionFinished()V
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_15 .. :try_end_15} :catch_5
    .catchall {:try_start_15 .. :try_end_15} :catchall_5

    :goto_f
    add-int/lit8 v33, v33, 0x1

    goto :goto_e

    :catch_5
    move-exception v28

    :try_start_16
    const-string/jumbo v11, "MultiWindowManagerService"

    const-string/jumbo v16, "Error delivering MultiWindow App Transition Finished event."

    move-object/from16 v0, v16

    move-object/from16 v1, v28

    invoke-static {v11, v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_5

    goto :goto_f

    :catchall_5
    move-exception v11

    monitor-exit v15

    throw v11

    :cond_8
    :try_start_17
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/am/MultiWindowManagerService$H;->this$0:Lcom/android/server/am/MultiWindowManagerService;

    invoke-static {v11}, Lcom/android/server/am/MultiWindowManagerService;->-get6(Lcom/android/server/am/MultiWindowManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v11

    invoke-virtual {v11}, Landroid/os/RemoteCallbackList;->finishBroadcast()V
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_5

    goto/16 :goto_3

    :pswitch_6
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/am/MultiWindowManagerService$H;->this$0:Lcom/android/server/am/MultiWindowManagerService;

    invoke-static {v11}, Lcom/android/server/am/MultiWindowManagerService;->-get1(Lcom/android/server/am/MultiWindowManagerService;)Lcom/android/server/am/ActivityManagerService;

    move-result-object v50

    monitor-enter v50

    :try_start_18
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/am/MultiWindowManagerService$H;->this$0:Lcom/android/server/am/MultiWindowManagerService;

    invoke-static {v11}, Lcom/android/server/am/MultiWindowManagerService;->-get7(Lcom/android/server/am/MultiWindowManagerService;)Lcom/android/server/am/ActivityStackSupervisor;

    move-result-object v11

    const/4 v15, 0x3

    invoke-virtual {v11, v15}, Lcom/android/server/am/ActivityStackSupervisor;->getStack(I)Lcom/android/server/am/ActivityStack;
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_6

    move-result-object v23

    if-nez v23, :cond_9

    monitor-exit v50

    return-void

    :cond_9
    :try_start_19
    invoke-virtual/range {v23 .. v23}, Lcom/android/server/am/ActivityStack;->getAllTasks()Ljava/util/ArrayList;

    move-result-object v46

    const/4 v11, 0x0

    move-object/from16 v0, v46

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v48

    check-cast v48, Lcom/android/server/am/TaskRecord;
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_6

    if-nez v48, :cond_a

    monitor-exit v50

    return-void

    :cond_a
    :try_start_1a
    invoke-virtual/range {v48 .. v48}, Lcom/android/server/am/TaskRecord;->getTopActivity()Lcom/android/server/am/ActivityRecord;
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_6

    move-result-object v19

    if-nez v19, :cond_b

    monitor-exit v50

    return-void

    :cond_b
    :try_start_1b
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/am/MultiWindowManagerService$H;->this$0:Lcom/android/server/am/MultiWindowManagerService;

    invoke-static {v11}, Lcom/android/server/am/MultiWindowManagerService;->-get7(Lcom/android/server/am/MultiWindowManagerService;)Lcom/android/server/am/ActivityStackSupervisor;

    move-result-object v11

    move-object/from16 v0, v48

    iget v12, v0, Lcom/android/server/am/TaskRecord;->taskId:I

    const-string/jumbo v16, "moveTaskToBack"

    const/4 v13, 0x1

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v17, 0x1

    invoke-virtual/range {v11 .. v17}, Lcom/android/server/am/ActivityStackSupervisor;->moveTaskToStackLocked(IIZZLjava/lang/String;Z)Z
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_6

    monitor-exit v50

    goto/16 :goto_0

    :catchall_6
    move-exception v11

    monitor-exit v50

    throw v11

    :pswitch_7
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/am/MultiWindowManagerService$H;->this$0:Lcom/android/server/am/MultiWindowManagerService;

    invoke-static {v11}, Lcom/android/server/am/MultiWindowManagerService;->-get1(Lcom/android/server/am/MultiWindowManagerService;)Lcom/android/server/am/ActivityManagerService;

    move-result-object v17

    monitor-enter v17

    :try_start_1c
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v20, v0

    check-cast v20, Lcom/android/internal/os/SomeArgs;

    move-object/from16 v0, v20

    iget-object v12, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v12, Ljava/lang/String;

    move-object/from16 v0, v20

    iget-object v13, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v13, Ljava/lang/Class;

    move-object/from16 v0, v20

    iget-object v14, v0, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    move-object/from16 v0, v20

    iget-object v11, v0, Lcom/android/internal/os/SomeArgs;->arg4:Ljava/lang/Object;

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v9

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/am/MultiWindowManagerService$H;->this$0:Lcom/android/server/am/MultiWindowManagerService;

    iget-object v11, v11, Lcom/android/server/am/MultiWindowManagerService;->mMultiWindowSettingsObserver:Lcom/android/server/am/MultiWindowSettingsObserver;

    const/16 v16, 0x1

    move v15, v9

    invoke-virtual/range {v11 .. v16}, Lcom/android/server/am/MultiWindowSettingsObserver;->setMultiWindowSettingToRepository(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;IZ)V
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_7

    monitor-exit v17

    goto/16 :goto_0

    :catchall_7
    move-exception v11

    monitor-exit v17

    throw v11

    :pswitch_8
    sget-boolean v11, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->SAMSUNG_MULTIWINDOW_DYNAMIC_ENABLED:Z

    if-eqz v11, :cond_0

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/am/MultiWindowManagerService$H;->this$0:Lcom/android/server/am/MultiWindowManagerService;

    const/4 v15, -0x1

    invoke-virtual {v11, v15}, Lcom/android/server/am/MultiWindowManagerService;->minimizeAllFreeform(I)Z

    goto/16 :goto_0

    :pswitch_9
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/am/MultiWindowManagerService$H;->this$0:Lcom/android/server/am/MultiWindowManagerService;

    invoke-static {v11}, Lcom/android/server/am/MultiWindowManagerService;->-get6(Lcom/android/server/am/MultiWindowManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v15

    monitor-enter v15

    :try_start_1d
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/am/MultiWindowManagerService$H;->this$0:Lcom/android/server/am/MultiWindowManagerService;

    invoke-static {v11}, Lcom/android/server/am/MultiWindowManagerService;->-get6(Lcom/android/server/am/MultiWindowManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v11

    invoke-virtual {v11}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v42

    const/16 v33, 0x0

    :goto_10
    move/from16 v0, v33

    move/from16 v1, v42

    if-ge v0, v1, :cond_c

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/am/MultiWindowManagerService$H;->this$0:Lcom/android/server/am/MultiWindowManagerService;

    invoke-static {v11}, Lcom/android/server/am/MultiWindowManagerService;->-get6(Lcom/android/server/am/MultiWindowManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v11

    move/from16 v0, v33

    invoke-virtual {v11, v0}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v34

    check-cast v34, Lcom/samsung/android/multiwindow/IMultiWindowEventListener;
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_8

    :try_start_1e
    invoke-interface/range {v34 .. v34}, Lcom/samsung/android/multiwindow/IMultiWindowEventListener;->onMultiWindowScreenFreezeAnimationFinished()V
    :try_end_1e
    .catch Landroid/os/RemoteException; {:try_start_1e .. :try_end_1e} :catch_6
    .catchall {:try_start_1e .. :try_end_1e} :catchall_8

    :goto_11
    add-int/lit8 v33, v33, 0x1

    goto :goto_10

    :catch_6
    move-exception v28

    :try_start_1f
    const-string/jumbo v11, "MultiWindowManagerService"

    const-string/jumbo v16, "Error delivering onMultiWindowScreenFreezeAnimationFinished event."

    move-object/from16 v0, v16

    move-object/from16 v1, v28

    invoke-static {v11, v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1f
    .catchall {:try_start_1f .. :try_end_1f} :catchall_8

    goto :goto_11

    :catchall_8
    move-exception v11

    monitor-exit v15

    throw v11

    :cond_c
    :try_start_20
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/am/MultiWindowManagerService$H;->this$0:Lcom/android/server/am/MultiWindowManagerService;

    invoke-static {v11}, Lcom/android/server/am/MultiWindowManagerService;->-get6(Lcom/android/server/am/MultiWindowManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v11

    invoke-virtual {v11}, Landroid/os/RemoteCallbackList;->finishBroadcast()V
    :try_end_20
    .catchall {:try_start_20 .. :try_end_20} :catchall_8

    goto/16 :goto_3

    :pswitch_a
    const/16 v41, 0x0

    move-object/from16 v0, p1

    iget v11, v0, Landroid/os/Message;->arg1:I

    const/4 v15, 0x1

    if-ne v11, v15, :cond_f

    const/16 v35, 0x1

    :goto_12
    const/16 v24, 0x0

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/am/MultiWindowManagerService$H;->this$0:Lcom/android/server/am/MultiWindowManagerService;

    invoke-static {v11}, Lcom/android/server/am/MultiWindowManagerService;->-get1(Lcom/android/server/am/MultiWindowManagerService;)Lcom/android/server/am/ActivityManagerService;

    move-result-object v15

    monitor-enter v15

    :try_start_21
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/am/MultiWindowManagerService$H;->this$0:Lcom/android/server/am/MultiWindowManagerService;

    invoke-static {v11}, Lcom/android/server/am/MultiWindowManagerService;->-get1(Lcom/android/server/am/MultiWindowManagerService;)Lcom/android/server/am/ActivityManagerService;

    move-result-object v11

    iget-object v11, v11, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    const/16 v16, 0x3

    move/from16 v0, v16

    invoke-virtual {v11, v0}, Lcom/android/server/am/ActivityStackSupervisor;->getStack(I)Lcom/android/server/am/ActivityStack;

    move-result-object v25

    if-eqz v25, :cond_e

    invoke-virtual/range {v25 .. v25}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked()Lcom/android/server/am/ActivityRecord;

    move-result-object v47

    if-eqz v47, :cond_e

    move-object/from16 v0, v47

    iget-object v11, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    if-eqz v11, :cond_e

    move-object/from16 v0, v47

    iget-object v11, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    invoke-virtual {v11}, Lcom/android/server/am/TaskRecord;->getRootActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v40

    if-eqz v40, :cond_d

    move-object/from16 v0, v40

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    move-object/from16 v41, v0
    :try_end_21
    .catchall {:try_start_21 .. :try_end_21} :catchall_9

    :cond_d
    const/16 v24, 0x1

    :cond_e
    monitor-exit v15

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/am/MultiWindowManagerService$H;->this$0:Lcom/android/server/am/MultiWindowManagerService;

    invoke-static {v11}, Lcom/android/server/am/MultiWindowManagerService;->-get6(Lcom/android/server/am/MultiWindowManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v15

    monitor-enter v15

    :try_start_22
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/am/MultiWindowManagerService$H;->this$0:Lcom/android/server/am/MultiWindowManagerService;

    invoke-static {v11}, Lcom/android/server/am/MultiWindowManagerService;->-get6(Lcom/android/server/am/MultiWindowManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v11

    invoke-virtual {v11}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v42

    const/16 v33, 0x0

    :goto_13
    move/from16 v0, v33

    move/from16 v1, v42

    if-ge v0, v1, :cond_10

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/am/MultiWindowManagerService$H;->this$0:Lcom/android/server/am/MultiWindowManagerService;

    invoke-static {v11}, Lcom/android/server/am/MultiWindowManagerService;->-get6(Lcom/android/server/am/MultiWindowManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v11

    move/from16 v0, v33

    invoke-virtual {v11, v0}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v34

    check-cast v34, Lcom/samsung/android/multiwindow/IMultiWindowEventListener;
    :try_end_22
    .catchall {:try_start_22 .. :try_end_22} :catchall_a

    :try_start_23
    move-object/from16 v0, v34

    move/from16 v1, v35

    move/from16 v2, v24

    move-object/from16 v3, v41

    invoke-interface {v0, v1, v2, v3}, Lcom/samsung/android/multiwindow/IMultiWindowEventListener;->onMultiWindowDockedMinimizedChanged(ZZLandroid/content/pm/ActivityInfo;)V
    :try_end_23
    .catch Landroid/os/RemoteException; {:try_start_23 .. :try_end_23} :catch_7
    .catchall {:try_start_23 .. :try_end_23} :catchall_a

    :goto_14
    add-int/lit8 v33, v33, 0x1

    goto :goto_13

    :cond_f
    const/16 v35, 0x0

    goto :goto_12

    :catchall_9
    move-exception v11

    monitor-exit v15

    throw v11

    :catch_7
    move-exception v28

    :try_start_24
    const-string/jumbo v11, "MultiWindowManagerService"

    const-string/jumbo v16, "Error delivering onMultiWindowDockedMinimizedChanged event."

    move-object/from16 v0, v16

    move-object/from16 v1, v28

    invoke-static {v11, v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_24
    .catchall {:try_start_24 .. :try_end_24} :catchall_a

    goto :goto_14

    :catchall_a
    move-exception v11

    monitor-exit v15

    throw v11

    :cond_10
    :try_start_25
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/am/MultiWindowManagerService$H;->this$0:Lcom/android/server/am/MultiWindowManagerService;

    invoke-static {v11}, Lcom/android/server/am/MultiWindowManagerService;->-get6(Lcom/android/server/am/MultiWindowManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v11

    invoke-virtual {v11}, Landroid/os/RemoteCallbackList;->finishBroadcast()V
    :try_end_25
    .catchall {:try_start_25 .. :try_end_25} :catchall_a

    goto/16 :goto_3

    :pswitch_b
    move-object/from16 v0, p1

    iget v7, v0, Landroid/os/Message;->arg1:I

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/am/MultiWindowManagerService$H;->this$0:Lcom/android/server/am/MultiWindowManagerService;

    invoke-static {v11}, Lcom/android/server/am/MultiWindowManagerService;->-get1(Lcom/android/server/am/MultiWindowManagerService;)Lcom/android/server/am/ActivityManagerService;

    move-result-object v15

    monitor-enter v15

    :try_start_26
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/am/MultiWindowManagerService$H;->this$0:Lcom/android/server/am/MultiWindowManagerService;

    invoke-virtual {v11, v7}, Lcom/android/server/am/MultiWindowManagerService;->applyFreeformMinimizePolicyLocked(I)V
    :try_end_26
    .catchall {:try_start_26 .. :try_end_26} :catchall_b

    :goto_15
    monitor-exit v15

    goto/16 :goto_0

    :catchall_b
    move-exception v11

    monitor-exit v15

    throw v11

    :pswitch_c
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v43, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v22, v0

    invoke-static {}, Lcom/android/server/am/MultiWindowManagerService;->-get0()Z

    move-result v11

    if-eqz v11, :cond_11

    const-string/jumbo v11, "MultiWindowManagerService"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "NOTIFY_ACTIVITY_STACK_ATTACHED, stackId="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move/from16 v0, v43

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, ", displayId="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move/from16 v0, v22

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v11, v15}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_11
    const/4 v11, 0x2

    move/from16 v0, v43

    if-ne v0, v11, :cond_0

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/am/MultiWindowManagerService$H;->this$0:Lcom/android/server/am/MultiWindowManagerService;

    const-string/jumbo v15, "freeform attached"

    invoke-static {v11, v15}, Lcom/android/server/am/MultiWindowManagerService;->-wrap0(Lcom/android/server/am/MultiWindowManagerService;Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_d
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v43, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v22, v0

    invoke-static {}, Lcom/android/server/am/MultiWindowManagerService;->-get0()Z

    move-result v11

    if-eqz v11, :cond_12

    const-string/jumbo v11, "MultiWindowManagerService"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "NOTIFY_ACTIVITY_STACK_DETACHED, stackId="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move/from16 v0, v43

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, ", displayId="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move/from16 v0, v22

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v11, v15}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_12
    const/4 v11, 0x2

    move/from16 v0, v43

    if-ne v0, v11, :cond_13

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/am/MultiWindowManagerService$H;->this$0:Lcom/android/server/am/MultiWindowManagerService;

    const-string/jumbo v15, "freeform detached"

    invoke-static {v11, v15}, Lcom/android/server/am/MultiWindowManagerService;->-wrap3(Lcom/android/server/am/MultiWindowManagerService;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_13
    const/4 v11, 0x3

    move/from16 v0, v43

    if-ne v0, v11, :cond_0

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/am/MultiWindowManagerService$H;->this$0:Lcom/android/server/am/MultiWindowManagerService;

    invoke-static {v11}, Lcom/android/server/am/MultiWindowManagerService;->-get1(Lcom/android/server/am/MultiWindowManagerService;)Lcom/android/server/am/ActivityManagerService;

    move-result-object v15

    monitor-enter v15

    :try_start_27
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/am/MultiWindowManagerService$H;->this$0:Lcom/android/server/am/MultiWindowManagerService;

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-static {v11, v0}, Lcom/android/server/am/MultiWindowManagerService;->-set1(Lcom/android/server/am/MultiWindowManagerService;Z)Z
    :try_end_27
    .catchall {:try_start_27 .. :try_end_27} :catchall_c

    goto/16 :goto_15

    :catchall_c
    move-exception v11

    monitor-exit v15

    throw v11

    :pswitch_e
    sget-boolean v11, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->SAMSUNG_MULTIWINDOW_DYNAMIC_ENABLED:Z

    if-eqz v11, :cond_0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v37, v0

    invoke-static {}, Lcom/android/server/am/MultiWindowManagerService;->-get0()Z

    move-result v11

    if-eqz v11, :cond_14

    const-string/jumbo v11, "MultiWindowManagerService"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "NOTIFY_PROCESS_KILL_BY_CLOSING_FREEFORM, pid="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move/from16 v0, v37

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v11, v15}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_14
    const/16 v44, 0x0

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/am/MultiWindowManagerService$H;->this$0:Lcom/android/server/am/MultiWindowManagerService;

    invoke-static {v11}, Lcom/android/server/am/MultiWindowManagerService;->-get1(Lcom/android/server/am/MultiWindowManagerService;)Lcom/android/server/am/ActivityManagerService;

    move-result-object v11

    iget-object v15, v11, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Landroid/util/SparseArray;

    monitor-enter v15

    :try_start_28
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/am/MultiWindowManagerService$H;->this$0:Lcom/android/server/am/MultiWindowManagerService;

    invoke-static {v11}, Lcom/android/server/am/MultiWindowManagerService;->-get1(Lcom/android/server/am/MultiWindowManagerService;)Lcom/android/server/am/ActivityManagerService;

    move-result-object v11

    iget-object v11, v11, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Landroid/util/SparseArray;

    move/from16 v0, v37

    invoke-virtual {v11, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v44

    check-cast v44, Lcom/android/server/am/ProcessRecord;
    :try_end_28
    .catchall {:try_start_28 .. :try_end_28} :catchall_d

    monitor-exit v15

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/am/MultiWindowManagerService$H;->this$0:Lcom/android/server/am/MultiWindowManagerService;

    const/4 v15, 0x1

    move-object/from16 v0, v44

    invoke-virtual {v11, v0, v15}, Lcom/android/server/am/MultiWindowManagerService;->cleanUpAssociatedTargetProcess(Lcom/android/server/am/ProcessRecord;Z)V

    goto/16 :goto_0

    :catchall_d
    move-exception v11

    monitor-exit v15

    throw v11

    :pswitch_f
    sget-boolean v11, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->SNAP_WINDOW_SUPPORT:Z

    if-eqz v11, :cond_0

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/am/MultiWindowManagerService$H;->this$0:Lcom/android/server/am/MultiWindowManagerService;

    invoke-static {v11}, Lcom/android/server/am/MultiWindowManagerService;->-get6(Lcom/android/server/am/MultiWindowManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v15

    monitor-enter v15

    :try_start_29
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v38, v0

    check-cast v38, Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/am/MultiWindowManagerService$H;->this$0:Lcom/android/server/am/MultiWindowManagerService;

    invoke-static {v11}, Lcom/android/server/am/MultiWindowManagerService;->-get6(Lcom/android/server/am/MultiWindowManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v11

    invoke-virtual {v11}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v42

    const/16 v33, 0x0

    :goto_16
    move/from16 v0, v33

    move/from16 v1, v42

    if-ge v0, v1, :cond_15

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/am/MultiWindowManagerService$H;->this$0:Lcom/android/server/am/MultiWindowManagerService;

    invoke-static {v11}, Lcom/android/server/am/MultiWindowManagerService;->-get6(Lcom/android/server/am/MultiWindowManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v11

    move/from16 v0, v33

    invoke-virtual {v11, v0}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v34

    check-cast v34, Lcom/samsung/android/multiwindow/IMultiWindowEventListener;
    :try_end_29
    .catchall {:try_start_29 .. :try_end_29} :catchall_e

    :try_start_2a
    move-object/from16 v0, v34

    move-object/from16 v1, v38

    invoke-interface {v0, v1}, Lcom/samsung/android/multiwindow/IMultiWindowEventListener;->onSnapWindowDismissed(Ljava/lang/String;)V
    :try_end_2a
    .catch Landroid/os/RemoteException; {:try_start_2a .. :try_end_2a} :catch_8
    .catchall {:try_start_2a .. :try_end_2a} :catchall_e

    :goto_17
    add-int/lit8 v33, v33, 0x1

    goto :goto_16

    :catch_8
    move-exception v28

    :try_start_2b
    const-string/jumbo v11, "MultiWindowManagerService"

    const-string/jumbo v16, "Error delivering onSnapWindowDismissed event."

    move-object/from16 v0, v16

    move-object/from16 v1, v28

    invoke-static {v11, v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2b
    .catchall {:try_start_2b .. :try_end_2b} :catchall_e

    goto :goto_17

    :catchall_e
    move-exception v11

    monitor-exit v15

    throw v11

    :cond_15
    :try_start_2c
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/am/MultiWindowManagerService$H;->this$0:Lcom/android/server/am/MultiWindowManagerService;

    invoke-static {v11}, Lcom/android/server/am/MultiWindowManagerService;->-get6(Lcom/android/server/am/MultiWindowManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v11

    invoke-virtual {v11}, Landroid/os/RemoteCallbackList;->finishBroadcast()V
    :try_end_2c
    .catchall {:try_start_2c .. :try_end_2c} :catchall_e

    goto/16 :goto_3

    :pswitch_10
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/am/MultiWindowManagerService$H;->this$0:Lcom/android/server/am/MultiWindowManagerService;

    invoke-static {v11}, Lcom/android/server/am/MultiWindowManagerService;->-get1(Lcom/android/server/am/MultiWindowManagerService;)Lcom/android/server/am/ActivityManagerService;

    move-result-object v15

    monitor-enter v15

    :try_start_2d
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/am/MultiWindowManagerService$H;->this$0:Lcom/android/server/am/MultiWindowManagerService;

    invoke-static {v11}, Lcom/android/server/am/MultiWindowManagerService;->-get7(Lcom/android/server/am/MultiWindowManagerService;)Lcom/android/server/am/ActivityStackSupervisor;

    move-result-object v11

    const/16 v16, 0x3

    move/from16 v0, v16

    invoke-virtual {v11, v0}, Lcom/android/server/am/ActivityStackSupervisor;->getStack(I)Lcom/android/server/am/ActivityStack;

    move-result-object v26

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/am/MultiWindowManagerService$H;->this$0:Lcom/android/server/am/MultiWindowManagerService;

    const/16 v16, 0x0

    move-object/from16 v0, v26

    move/from16 v1, v16

    invoke-static {v11, v0, v1}, Lcom/android/server/am/MultiWindowManagerService;->-wrap1(Lcom/android/server/am/MultiWindowManagerService;Lcom/android/server/am/ActivityStack;Z)V

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/am/MultiWindowManagerService$H;->this$0:Lcom/android/server/am/MultiWindowManagerService;

    invoke-static {v11}, Lcom/android/server/am/MultiWindowManagerService;->-get7(Lcom/android/server/am/MultiWindowManagerService;)Lcom/android/server/am/ActivityStackSupervisor;

    move-result-object v11

    const/16 v16, 0x1

    move/from16 v0, v16

    invoke-virtual {v11, v0}, Lcom/android/server/am/ActivityStackSupervisor;->getStack(I)Lcom/android/server/am/ActivityStack;

    move-result-object v31

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/am/MultiWindowManagerService$H;->this$0:Lcom/android/server/am/MultiWindowManagerService;

    const/16 v16, 0x0

    move-object/from16 v0, v31

    move/from16 v1, v16

    invoke-static {v11, v0, v1}, Lcom/android/server/am/MultiWindowManagerService;->-wrap1(Lcom/android/server/am/MultiWindowManagerService;Lcom/android/server/am/ActivityStack;Z)V
    :try_end_2d
    .catchall {:try_start_2d .. :try_end_2d} :catchall_f

    goto/16 :goto_15

    :catchall_f
    move-exception v11

    monitor-exit v15

    throw v11

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_4
        :pswitch_10
    .end packed-switch
.end method
