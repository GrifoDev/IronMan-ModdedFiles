.class public Lcom/android/server/am/MultiWindowAutoResizeController;
.super Ljava/lang/Object;
.source "MultiWindowAutoResizeController.java"


# static fields
.field private static final DEBUG:Z

.field private static final INVALID_POSITION:I = 0x7fffffff

.field private static final TAG:Ljava/lang/String; = "MultiWindowAutoResizeController"

.field private static final TARGET_SIZE_DONT_EXISTS:I = -0x2


# instance fields
.field private mDeferred:Z

.field private mDisplayHeight:I

.field private mDisplaySize:I

.field private mDisplaySizePoint:Landroid/graphics/Point;

.field private mDisplayWidth:I

.field private mDividerSize:I

.field private mDockStackSide:I

.field private mDockedStackBounds:Landroid/graphics/Rect;

.field private mDockedTask:Lcom/android/server/am/TaskRecord;

.field private mDockedTaskAutoResizePosition:I

.field private mDockedTaskAutoResizeRect:Landroid/graphics/Rect;

.field private mDockedTaskBounds:Landroid/graphics/Rect;

.field private mFitTaskToStackSize:Z

.field private mFocusedTask:Lcom/android/server/am/TaskRecord;

.field private mFullScreenStackBounds:Landroid/graphics/Rect;

.field private mFullScreenTask:Lcom/android/server/am/TaskRecord;

.field private mFullScreenTaskAutoResizePosition:I

.field private mFullScreenTaskBounds:Landroid/graphics/Rect;

.field private mFullscreenTaskAutoResizeRect:Landroid/graphics/Rect;

.field private mHasTargetPosChanged:Z

.field private mInitialize:Z

.field private mIsAutoResized:Z

.field private mIsDockFocused:Z

.field private mIsLandScape:Z

.field private mMaxPos:I

.field private mMinPos:I

.field private mRotation:I

.field private mService:Lcom/android/server/am/ActivityManagerService;

.field private final mStableInsets:Landroid/graphics/Rect;

.field private mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

.field private mWindowManager:Lcom/android/server/wm/WindowManagerService;

.field private shouldWorkForEnsureDock:Z

.field private tmpRect:Landroid/graphics/Rect;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    move-result v0

    sput-boolean v0, Lcom/android/server/am/MultiWindowAutoResizeController;->DEBUG:Z

    return-void
.end method

.method constructor <init>(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/ActivityStackSupervisor;Lcom/android/server/wm/WindowManagerService;)V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/MultiWindowAutoResizeController;->mStableInsets:Landroid/graphics/Rect;

    iput-boolean v1, p0, Lcom/android/server/am/MultiWindowAutoResizeController;->mInitialize:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/am/MultiWindowAutoResizeController;->mDockStackSide:I

    iput-boolean v1, p0, Lcom/android/server/am/MultiWindowAutoResizeController;->mIsLandScape:Z

    const v0, 0x7fffffff

    iput v0, p0, Lcom/android/server/am/MultiWindowAutoResizeController;->mMinPos:I

    const/high16 v0, -0x80000000

    iput v0, p0, Lcom/android/server/am/MultiWindowAutoResizeController;->mMaxPos:I

    iput-boolean v1, p0, Lcom/android/server/am/MultiWindowAutoResizeController;->mIsAutoResized:Z

    iput-boolean v1, p0, Lcom/android/server/am/MultiWindowAutoResizeController;->mHasTargetPosChanged:Z

    iput-object v2, p0, Lcom/android/server/am/MultiWindowAutoResizeController;->mDockedTask:Lcom/android/server/am/TaskRecord;

    iput-object v2, p0, Lcom/android/server/am/MultiWindowAutoResizeController;->mFullScreenTask:Lcom/android/server/am/TaskRecord;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/MultiWindowAutoResizeController;->mDockedTaskBounds:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/MultiWindowAutoResizeController;->mFullScreenTaskBounds:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/MultiWindowAutoResizeController;->mDockedStackBounds:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/MultiWindowAutoResizeController;->mFullScreenStackBounds:Landroid/graphics/Rect;

    iput-boolean v1, p0, Lcom/android/server/am/MultiWindowAutoResizeController;->mFitTaskToStackSize:Z

    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/MultiWindowAutoResizeController;->mDisplaySizePoint:Landroid/graphics/Point;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/MultiWindowAutoResizeController;->tmpRect:Landroid/graphics/Rect;

    iput-boolean v1, p0, Lcom/android/server/am/MultiWindowAutoResizeController;->mDeferred:Z

    iput-object p1, p0, Lcom/android/server/am/MultiWindowAutoResizeController;->mService:Lcom/android/server/am/ActivityManagerService;

    iput-object p2, p0, Lcom/android/server/am/MultiWindowAutoResizeController;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iput-object p3, p0, Lcom/android/server/am/MultiWindowAutoResizeController;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    const-string/jumbo v0, "MultiWindowAutoResizeController Initialization"

    invoke-virtual {p0, v0}, Lcom/android/server/am/MultiWindowAutoResizeController;->clearAutoResizeState(Ljava/lang/String;)V

    return-void
.end method

.method private areTasksOverlappedOrExpanded()Z
    .locals 4

    iget-boolean v2, p0, Lcom/android/server/am/MultiWindowAutoResizeController;->mIsLandScape:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/server/am/MultiWindowAutoResizeController;->mDockedTaskBounds:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v0

    :goto_0
    iget-boolean v2, p0, Lcom/android/server/am/MultiWindowAutoResizeController;->mIsLandScape:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/server/am/MultiWindowAutoResizeController;->mFullScreenTaskBounds:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v1

    :goto_1
    add-int v2, v0, v1

    iget v3, p0, Lcom/android/server/am/MultiWindowAutoResizeController;->mDisplaySize:I

    if-le v2, v3, :cond_2

    const/4 v2, 0x1

    :goto_2
    return v2

    :cond_0
    iget-object v2, p0, Lcom/android/server/am/MultiWindowAutoResizeController;->mDockedTaskBounds:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v0

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/android/server/am/MultiWindowAutoResizeController;->mFullScreenTaskBounds:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v1

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    goto :goto_2
.end method

.method private calculateAutoResizeMinMaxPosition()V
    .locals 7

    new-instance v0, Lcom/android/internal/policy/DividerSnapAlgorithm;

    iget-object v1, p0, Lcom/android/server/am/MultiWindowAutoResizeController;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget v2, p0, Lcom/android/server/am/MultiWindowAutoResizeController;->mDisplayWidth:I

    iget v3, p0, Lcom/android/server/am/MultiWindowAutoResizeController;->mDisplayHeight:I

    iget v4, p0, Lcom/android/server/am/MultiWindowAutoResizeController;->mDividerSize:I

    iget-boolean v5, p0, Lcom/android/server/am/MultiWindowAutoResizeController;->mIsLandScape:Z

    if-eqz v5, :cond_0

    const/4 v5, 0x0

    :goto_0
    iget-object v6, p0, Lcom/android/server/am/MultiWindowAutoResizeController;->mStableInsets:Landroid/graphics/Rect;

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/policy/DividerSnapAlgorithm;-><init>(Landroid/content/res/Resources;IIIZLandroid/graphics/Rect;)V

    invoke-virtual {v0}, Lcom/android/internal/policy/DividerSnapAlgorithm;->getFirstSplitTarget()Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    move-result-object v1

    iget v1, v1, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;->position:I

    iput v1, p0, Lcom/android/server/am/MultiWindowAutoResizeController;->mMinPos:I

    invoke-virtual {v0}, Lcom/android/internal/policy/DividerSnapAlgorithm;->getLastSplitTarget()Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    move-result-object v1

    iget v1, v1, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;->position:I

    iput v1, p0, Lcom/android/server/am/MultiWindowAutoResizeController;->mMaxPos:I

    return-void

    :cond_0
    const/4 v5, 0x1

    goto :goto_0
.end method

.method private calculateRectForPosition(ZI)Landroid/graphics/Rect;
    .locals 6

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    if-eqz p1, :cond_0

    iget v1, p0, Lcom/android/server/am/MultiWindowAutoResizeController;->mDockStackSide:I

    iget v3, p0, Lcom/android/server/am/MultiWindowAutoResizeController;->mDisplayWidth:I

    iget v4, p0, Lcom/android/server/am/MultiWindowAutoResizeController;->mDisplayHeight:I

    iget v5, p0, Lcom/android/server/am/MultiWindowAutoResizeController;->mDividerSize:I

    move v0, p2

    invoke-static/range {v0 .. v5}, Lcom/android/internal/policy/DockedDividerUtils;->calculateBoundsForPosition(IILandroid/graphics/Rect;III)V

    :goto_0
    return-object v2

    :cond_0
    iget v0, p0, Lcom/android/server/am/MultiWindowAutoResizeController;->mDockStackSide:I

    invoke-static {v0}, Lcom/android/internal/policy/DockedDividerUtils;->invertDockSide(I)I

    move-result v1

    iget v3, p0, Lcom/android/server/am/MultiWindowAutoResizeController;->mDisplayWidth:I

    iget v4, p0, Lcom/android/server/am/MultiWindowAutoResizeController;->mDisplayHeight:I

    iget v5, p0, Lcom/android/server/am/MultiWindowAutoResizeController;->mDividerSize:I

    move v0, p2

    invoke-static/range {v0 .. v5}, Lcom/android/internal/policy/DockedDividerUtils;->calculateBoundsForPosition(IILandroid/graphics/Rect;III)V

    goto :goto_0
.end method

.method private static dockSideTopLeft(I)Z
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x2

    if-eq p0, v1, :cond_0

    if-ne p0, v0, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getAutoResizingTaskPosition(Z)I
    .locals 1

    if-eqz p1, :cond_0

    iget v0, p0, Lcom/android/server/am/MultiWindowAutoResizeController;->mDockedTaskAutoResizePosition:I

    return v0

    :cond_0
    iget v0, p0, Lcom/android/server/am/MultiWindowAutoResizeController;->mFullScreenTaskAutoResizePosition:I

    return v0
.end method

.method private getCurrentDividerPosition()I
    .locals 3

    iget-object v0, p0, Lcom/android/server/am/MultiWindowAutoResizeController;->mDockedStackBounds:Landroid/graphics/Rect;

    iget v1, p0, Lcom/android/server/am/MultiWindowAutoResizeController;->mDockStackSide:I

    iget v2, p0, Lcom/android/server/am/MultiWindowAutoResizeController;->mDividerSize:I

    invoke-static {v0, v1, v2}, Lcom/android/internal/policy/DockedDividerUtils;->calculatePositionForBounds(Landroid/graphics/Rect;II)I

    move-result v0

    return v0
.end method

.method private initValues()V
    .locals 5

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/server/am/MultiWindowAutoResizeController;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mConfiguration:Landroid/content/res/Configuration;

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/android/server/am/MultiWindowAutoResizeController;->mIsLandScape:Z

    iget-object v0, p0, Lcom/android/server/am/MultiWindowAutoResizeController;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, p0, Lcom/android/server/am/MultiWindowAutoResizeController;->mDisplaySizePoint:Landroid/graphics/Point;

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/WindowManagerService;->getBaseDisplaySize(ILandroid/graphics/Point;)V

    iget-object v0, p0, Lcom/android/server/am/MultiWindowAutoResizeController;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->getRotation()I

    move-result v0

    iput v0, p0, Lcom/android/server/am/MultiWindowAutoResizeController;->mRotation:I

    iget-boolean v0, p0, Lcom/android/server/am/MultiWindowAutoResizeController;->mIsLandScape:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/am/MultiWindowAutoResizeController;->mDisplaySizePoint:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->y:I

    :goto_1
    iput v0, p0, Lcom/android/server/am/MultiWindowAutoResizeController;->mDisplayWidth:I

    iget-boolean v0, p0, Lcom/android/server/am/MultiWindowAutoResizeController;->mIsLandScape:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/server/am/MultiWindowAutoResizeController;->mDisplaySizePoint:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    :goto_2
    iput v0, p0, Lcom/android/server/am/MultiWindowAutoResizeController;->mDisplayHeight:I

    iget-boolean v0, p0, Lcom/android/server/am/MultiWindowAutoResizeController;->mIsLandScape:Z

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/android/server/am/MultiWindowAutoResizeController;->mDisplayWidth:I

    :goto_3
    iput v0, p0, Lcom/android/server/am/MultiWindowAutoResizeController;->mDisplaySize:I

    iget-object v0, p0, Lcom/android/server/am/MultiWindowAutoResizeController;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->getDockedStackSide()I

    move-result v0

    iput v0, p0, Lcom/android/server/am/MultiWindowAutoResizeController;->mDockStackSide:I

    iget-object v0, p0, Lcom/android/server/am/MultiWindowAutoResizeController;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mMultiWindowManagerInternal:Lcom/android/server/wm/IMultiWindowManagerInternalBridge;

    invoke-interface {v0}, Lcom/android/server/wm/IMultiWindowManagerInternalBridge;->getDividerSize()I

    move-result v0

    iput v0, p0, Lcom/android/server/am/MultiWindowAutoResizeController;->mDividerSize:I

    iget-object v0, p0, Lcom/android/server/am/MultiWindowAutoResizeController;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mMultiWindowManagerInternal:Lcom/android/server/wm/IMultiWindowManagerInternalBridge;

    iget v1, p0, Lcom/android/server/am/MultiWindowAutoResizeController;->mRotation:I

    iget v2, p0, Lcom/android/server/am/MultiWindowAutoResizeController;->mDisplayWidth:I

    iget v3, p0, Lcom/android/server/am/MultiWindowAutoResizeController;->mDisplayHeight:I

    iget-object v4, p0, Lcom/android/server/am/MultiWindowAutoResizeController;->mStableInsets:Landroid/graphics/Rect;

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/android/server/wm/IMultiWindowManagerInternalBridge;->getStableInsets(IIILandroid/graphics/Rect;)V

    invoke-direct {p0}, Lcom/android/server/am/MultiWindowAutoResizeController;->calculateAutoResizeMinMaxPosition()V

    const-string/jumbo v0, "MultiWindowAutoResizeController Initialization"

    invoke-virtual {p0, v0}, Lcom/android/server/am/MultiWindowAutoResizeController;->clearAutoResizeState(Ljava/lang/String;)V

    return-void

    :cond_0
    move v0, v1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/server/am/MultiWindowAutoResizeController;->mDisplaySizePoint:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/android/server/am/MultiWindowAutoResizeController;->mDisplaySizePoint:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->y:I

    goto :goto_2

    :cond_3
    iget v0, p0, Lcom/android/server/am/MultiWindowAutoResizeController;->mDisplayHeight:I

    goto :goto_3
.end method

.method private isGapCreatedForPosition(II)Z
    .locals 5

    iget-boolean v3, p0, Lcom/android/server/am/MultiWindowAutoResizeController;->mIsLandScape:Z

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/server/am/MultiWindowAutoResizeController;->mDockedTaskBounds:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v0

    :goto_0
    iget-boolean v3, p0, Lcom/android/server/am/MultiWindowAutoResizeController;->mIsLandScape:Z

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/server/am/MultiWindowAutoResizeController;->mFullScreenTaskBounds:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v2

    :goto_1
    const/4 v3, 0x3

    if-ne p1, v3, :cond_3

    add-int v3, p2, v2

    iget v4, p0, Lcom/android/server/am/MultiWindowAutoResizeController;->mDividerSize:I

    add-int/2addr v3, v4

    iget v4, p0, Lcom/android/server/am/MultiWindowAutoResizeController;->mDisplaySize:I

    if-ge v3, v4, :cond_2

    const/4 v1, 0x1

    :goto_2
    return v1

    :cond_0
    iget-object v3, p0, Lcom/android/server/am/MultiWindowAutoResizeController;->mDockedTaskBounds:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v0

    goto :goto_0

    :cond_1
    iget-object v3, p0, Lcom/android/server/am/MultiWindowAutoResizeController;->mFullScreenTaskBounds:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v2

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    goto :goto_2

    :cond_3
    iget v3, p0, Lcom/android/server/am/MultiWindowAutoResizeController;->mDisplaySize:I

    sub-int/2addr v3, p2

    add-int/2addr v3, v0

    iget v4, p0, Lcom/android/server/am/MultiWindowAutoResizeController;->mDisplaySize:I

    if-ge v3, v4, :cond_4

    const/4 v1, 0x1

    goto :goto_2

    :cond_4
    const/4 v1, 0x0

    goto :goto_2
.end method

.method private setAutoResizingTaskPosition(II)V
    .locals 0

    packed-switch p1, :pswitch_data_0

    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    iput p2, p0, Lcom/android/server/am/MultiWindowAutoResizeController;->mDockedTaskAutoResizePosition:I

    goto :goto_0

    :pswitch_2
    iput p2, p0, Lcom/android/server/am/MultiWindowAutoResizeController;->mFullScreenTaskAutoResizePosition:I

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private setTaskRectForAutoResize(ILandroid/graphics/Rect;)V
    .locals 0

    if-eqz p2, :cond_0

    packed-switch p1, :pswitch_data_0

    :cond_0
    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    iput-object p2, p0, Lcom/android/server/am/MultiWindowAutoResizeController;->mDockedTaskAutoResizeRect:Landroid/graphics/Rect;

    goto :goto_0

    :pswitch_2
    iput-object p2, p0, Lcom/android/server/am/MultiWindowAutoResizeController;->mFullscreenTaskAutoResizeRect:Landroid/graphics/Rect;

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private shouldExpand(Z)Z
    .locals 6

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/android/server/am/MultiWindowAutoResizeController;->mDockedTaskBounds:Landroid/graphics/Rect;

    :goto_0
    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/android/server/am/MultiWindowAutoResizeController;->mDockedStackBounds:Landroid/graphics/Rect;

    :goto_1
    iget-boolean v4, p0, Lcom/android/server/am/MultiWindowAutoResizeController;->mIsLandScape:Z

    if-eqz v4, :cond_3

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v4

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v5

    if-le v4, v5, :cond_2

    :goto_2
    return v2

    :cond_0
    iget-object v1, p0, Lcom/android/server/am/MultiWindowAutoResizeController;->mFullScreenTaskBounds:Landroid/graphics/Rect;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/server/am/MultiWindowAutoResizeController;->mFullScreenStackBounds:Landroid/graphics/Rect;

    goto :goto_1

    :cond_2
    move v2, v3

    goto :goto_2

    :cond_3
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v4

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v5

    if-le v4, v5, :cond_4

    :goto_3
    return v2

    :cond_4
    move v2, v3

    goto :goto_3
.end method


# virtual methods
.method autoResizingIfNeeded(Landroid/graphics/Rect;)Z
    .locals 7

    const/4 v6, 0x0

    iget-boolean v1, p0, Lcom/android/server/am/MultiWindowAutoResizeController;->shouldWorkForEnsureDock:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/am/MultiWindowAutoResizeController;->mFocusedTask:Lcom/android/server/am/TaskRecord;

    iget-object v1, v1, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    iget v1, v1, Lcom/android/server/am/ActivityStack;->mStackId:I

    const/4 v2, 0x3

    if-eq v1, v2, :cond_1

    :cond_0
    iput-boolean v6, p0, Lcom/android/server/am/MultiWindowAutoResizeController;->shouldWorkForEnsureDock:Z

    return v6

    :cond_1
    iput-boolean v6, p0, Lcom/android/server/am/MultiWindowAutoResizeController;->shouldWorkForEnsureDock:Z

    invoke-virtual {p0}, Lcom/android/server/am/MultiWindowAutoResizeController;->calculateAutoResizeTargetPos()I

    move-result v0

    const/4 v1, -0x2

    if-ne v0, v1, :cond_2

    return v6

    :cond_2
    iget v1, p0, Lcom/android/server/am/MultiWindowAutoResizeController;->mDockStackSide:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_3

    return v6

    :cond_3
    iget v1, p0, Lcom/android/server/am/MultiWindowAutoResizeController;->mDockStackSide:I

    iget-object v2, p0, Lcom/android/server/am/MultiWindowAutoResizeController;->tmpRect:Landroid/graphics/Rect;

    iget v3, p0, Lcom/android/server/am/MultiWindowAutoResizeController;->mDisplayWidth:I

    iget v4, p0, Lcom/android/server/am/MultiWindowAutoResizeController;->mDisplayHeight:I

    iget v5, p0, Lcom/android/server/am/MultiWindowAutoResizeController;->mDividerSize:I

    invoke-static/range {v0 .. v5}, Lcom/android/internal/policy/DockedDividerUtils;->calculateBoundsForPosition(IILandroid/graphics/Rect;III)V

    iget-object v1, p0, Lcom/android/server/am/MultiWindowAutoResizeController;->tmpRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v2

    if-le v1, v2, :cond_4

    iget v1, p1, Landroid/graphics/Rect;->top:I

    iget-object v2, p0, Lcom/android/server/am/MultiWindowAutoResizeController;->tmpRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    add-int/2addr v1, v2

    iput v1, p1, Landroid/graphics/Rect;->bottom:I

    const/4 v1, 0x1

    return v1

    :cond_4
    return v6
.end method

.method calculateAutoResizeTargetPos()I
    .locals 4

    iget-boolean v2, p0, Lcom/android/server/am/MultiWindowAutoResizeController;->mInitialize:Z

    if-nez v2, :cond_0

    invoke-direct {p0}, Lcom/android/server/am/MultiWindowAutoResizeController;->initValues()V

    iget-boolean v2, p0, Lcom/android/server/am/MultiWindowAutoResizeController;->mInitialize:Z

    if-eqz v2, :cond_1

    const/4 v2, 0x0

    :goto_0
    iput-boolean v2, p0, Lcom/android/server/am/MultiWindowAutoResizeController;->mInitialize:Z

    :cond_0
    iget-boolean v2, p0, Lcom/android/server/am/MultiWindowAutoResizeController;->mIsLandScape:Z

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/server/am/MultiWindowAutoResizeController;->mFocusedTask:Lcom/android/server/am/TaskRecord;

    iget v0, v2, Lcom/android/server/am/TaskRecord;->mMinWidth:I

    :goto_1
    const/4 v2, -0x1

    if-ne v0, v2, :cond_3

    const/4 v2, -0x2

    return v2

    :cond_1
    const/4 v2, 0x1

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/android/server/am/MultiWindowAutoResizeController;->mFocusedTask:Lcom/android/server/am/TaskRecord;

    iget v0, v2, Lcom/android/server/am/TaskRecord;->mMinHeight:I

    goto :goto_1

    :cond_3
    iget-boolean v2, p0, Lcom/android/server/am/MultiWindowAutoResizeController;->mIsDockFocused:Z

    iget v3, p0, Lcom/android/server/am/MultiWindowAutoResizeController;->mDockStackSide:I

    invoke-static {v3}, Lcom/android/server/am/MultiWindowAutoResizeController;->dockSideTopLeft(I)Z

    move-result v3

    xor-int/2addr v2, v3

    if-eqz v2, :cond_5

    iget v2, p0, Lcom/android/server/am/MultiWindowAutoResizeController;->mDisplaySize:I

    sub-int/2addr v2, v0

    iget v3, p0, Lcom/android/server/am/MultiWindowAutoResizeController;->mDividerSize:I

    sub-int v1, v2, v3

    :goto_2
    iget v2, p0, Lcom/android/server/am/MultiWindowAutoResizeController;->mMinPos:I

    if-ge v1, v2, :cond_6

    iget v1, p0, Lcom/android/server/am/MultiWindowAutoResizeController;->mMinPos:I

    :cond_4
    :goto_3
    return v1

    :cond_5
    move v1, v0

    goto :goto_2

    :cond_6
    iget v2, p0, Lcom/android/server/am/MultiWindowAutoResizeController;->mMaxPos:I

    if-le v1, v2, :cond_4

    iget v1, p0, Lcom/android/server/am/MultiWindowAutoResizeController;->mMaxPos:I

    goto :goto_3
.end method

.method public clearAutoResizeState(Ljava/lang/String;)V
    .locals 4

    const v3, 0x7fffffff

    sget-boolean v0, Lcom/android/server/am/MultiWindowAutoResizeController;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "MultiWindowAutoResizeController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "clearAutoResizeState(), reason: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/am/MultiWindowAutoResizeController;->mIsAutoResized:Z

    iput v3, p0, Lcom/android/server/am/MultiWindowAutoResizeController;->mDockedTaskAutoResizePosition:I

    iput v3, p0, Lcom/android/server/am/MultiWindowAutoResizeController;->mFullScreenTaskAutoResizePosition:I

    return-void
.end method

.method continueAutoResizeLocked()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/am/MultiWindowAutoResizeController;->mDeferred:Z

    return-void
.end method

.method deferAutoResizeLocked()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/am/MultiWindowAutoResizeController;->mDeferred:Z

    return-void
.end method

.method dismissAutoResizeLocked()V
    .locals 11

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/server/am/MultiWindowAutoResizeController;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityStackSupervisor;->getStack(I)Lcom/android/server/am/ActivityStack;

    move-result-object v7

    iget-object v0, p0, Lcom/android/server/am/MultiWindowAutoResizeController;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v0, v3}, Lcom/android/server/am/ActivityStackSupervisor;->getStack(I)Lcom/android/server/am/ActivityStack;

    move-result-object v10

    if-eqz v7, :cond_0

    if-nez v10, :cond_1

    :cond_0
    return-void

    :cond_1
    invoke-virtual {v7, v2}, Lcom/android/server/am/ActivityStack;->getStackVisibilityLocked(Lcom/android/server/am/ActivityRecord;)I

    move-result v0

    if-ne v0, v3, :cond_2

    invoke-virtual {v10, v2}, Lcom/android/server/am/ActivityStack;->getStackVisibilityLocked(Lcom/android/server/am/ActivityRecord;)I

    move-result v0

    if-eq v0, v3, :cond_3

    :cond_2
    return-void

    :cond_3
    invoke-virtual {v7}, Lcom/android/server/am/ActivityStack;->topTask()Lcom/android/server/am/TaskRecord;

    move-result-object v8

    invoke-virtual {v10}, Lcom/android/server/am/ActivityStack;->topTask()Lcom/android/server/am/TaskRecord;

    move-result-object v9

    if-eqz v8, :cond_4

    if-nez v9, :cond_5

    :cond_4
    return-void

    :cond_5
    iget-object v0, v8, Lcom/android/server/am/TaskRecord;->mBounds:Landroid/graphics/Rect;

    if-eqz v0, :cond_4

    iget-object v0, v9, Lcom/android/server/am/TaskRecord;->mBounds:Landroid/graphics/Rect;

    if-eqz v0, :cond_4

    const-string/jumbo v0, "dismissAutoResize"

    invoke-virtual {p0, v0}, Lcom/android/server/am/MultiWindowAutoResizeController;->clearAutoResizeState(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/am/MultiWindowAutoResizeController;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mMultiWindowManager:Lcom/android/server/am/IMultiWindowManagerServiceBridge;

    invoke-interface {v0}, Lcom/android/server/am/IMultiWindowManagerServiceBridge;->isEnsureDockedMode()Z

    move-result v0

    if-eqz v0, :cond_6

    return-void

    :cond_6
    iget-object v0, p0, Lcom/android/server/am/MultiWindowAutoResizeController;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v1, v7, Lcom/android/server/am/ActivityStack;->mBounds:Landroid/graphics/Rect;

    const/4 v6, 0x0

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/am/ActivityStackSupervisor;->resizeDockedStackLocked(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Z)V

    return-void
.end method

.method public getAutoResizePositionLocked(Lcom/android/server/am/ActivityStack;Lcom/android/server/am/TaskRecord;Ljava/lang/String;)I
    .locals 10

    iget-boolean v1, p0, Lcom/android/server/am/MultiWindowAutoResizeController;->mDeferred:Z

    if-eqz v1, :cond_1

    sget-boolean v1, Lcom/android/server/am/MultiWindowAutoResizeController;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string/jumbo v1, "MultiWindowAutoResizeController"

    const-string/jumbo v2, "Auto-resize deferred"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/16 v1, -0x63

    return v1

    :cond_1
    invoke-virtual {p1}, Lcom/android/server/am/ActivityStack;->getStackId()I

    move-result v9

    const/4 v1, 0x3

    if-eq v9, v1, :cond_3

    const/4 v1, 0x1

    if-eq v9, v1, :cond_3

    :cond_2
    const/16 v1, -0x63

    return v1

    :cond_3
    const-string/jumbo v1, "swapDockedAndFullscreenStack"

    invoke-virtual {p3, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/server/am/MultiWindowAutoResizeController;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Lcom/android/server/am/ActivityStackSupervisor;->getStack(I)Lcom/android/server/am/ActivityStack;

    move-result-object v6

    iget-object v1, p0, Lcom/android/server/am/MultiWindowAutoResizeController;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/server/am/ActivityStackSupervisor;->getStack(I)Lcom/android/server/am/ActivityStack;

    move-result-object v7

    if-eqz v6, :cond_4

    if-eqz v7, :cond_4

    if-ne p1, v6, :cond_6

    move-object v1, p2

    :goto_0
    iput-object v1, p0, Lcom/android/server/am/MultiWindowAutoResizeController;->mDockedTask:Lcom/android/server/am/TaskRecord;

    if-ne p1, v7, :cond_7

    move-object v1, p2

    :goto_1
    iput-object v1, p0, Lcom/android/server/am/MultiWindowAutoResizeController;->mFullScreenTask:Lcom/android/server/am/TaskRecord;

    :cond_4
    if-eqz v6, :cond_5

    if-nez v7, :cond_8

    :cond_5
    const/16 v1, -0x63

    return v1

    :cond_6
    invoke-virtual {v6}, Lcom/android/server/am/ActivityStack;->topTask()Lcom/android/server/am/TaskRecord;

    move-result-object v1

    goto :goto_0

    :cond_7
    invoke-virtual {v7}, Lcom/android/server/am/ActivityStack;->topTask()Lcom/android/server/am/TaskRecord;

    move-result-object v1

    goto :goto_1

    :cond_8
    iget-object v1, p0, Lcom/android/server/am/MultiWindowAutoResizeController;->mDockedTask:Lcom/android/server/am/TaskRecord;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/android/server/am/MultiWindowAutoResizeController;->mFullScreenTask:Lcom/android/server/am/TaskRecord;

    if-eqz v1, :cond_5

    iget-object v1, v6, Lcom/android/server/am/ActivityStack;->mBounds:Landroid/graphics/Rect;

    if-eqz v1, :cond_5

    iget-object v1, v7, Lcom/android/server/am/ActivityStack;->mBounds:Landroid/graphics/Rect;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/android/server/am/MultiWindowAutoResizeController;->mDockedTask:Lcom/android/server/am/TaskRecord;

    iget-object v1, v1, Lcom/android/server/am/TaskRecord;->mBounds:Landroid/graphics/Rect;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/android/server/am/MultiWindowAutoResizeController;->mFullScreenTask:Lcom/android/server/am/TaskRecord;

    iget-object v1, v1, Lcom/android/server/am/TaskRecord;->mBounds:Landroid/graphics/Rect;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/android/server/am/MultiWindowAutoResizeController;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowManagerService;->getDockedStackSide()I

    move-result v1

    iput v1, p0, Lcom/android/server/am/MultiWindowAutoResizeController;->mDockStackSide:I

    iget v1, p0, Lcom/android/server/am/MultiWindowAutoResizeController;->mDockStackSide:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_a

    sget-boolean v1, Lcom/android/server/am/MultiWindowAutoResizeController;->DEBUG:Z

    if-eqz v1, :cond_9

    const-string/jumbo v1, "MultiWindowAutoResizeController"

    const-string/jumbo v2, "dockStackside is invalid"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    const/16 v1, -0x63

    return v1

    :cond_a
    iput-object p2, p0, Lcom/android/server/am/MultiWindowAutoResizeController;->mFocusedTask:Lcom/android/server/am/TaskRecord;

    const/4 v1, 0x3

    if-ne v9, v1, :cond_b

    const/4 v1, 0x1

    :goto_2
    iput-boolean v1, p0, Lcom/android/server/am/MultiWindowAutoResizeController;->mIsDockFocused:Z

    sget-boolean v1, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->ENSURE_DOCKED_VIEW_SUPPORT:Z

    if-eqz v1, :cond_c

    iget-object v1, p0, Lcom/android/server/am/MultiWindowAutoResizeController;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mMultiWindowManagerInternal:Lcom/android/server/wm/IMultiWindowManagerInternalBridge;

    invoke-interface {v1}, Lcom/android/server/wm/IMultiWindowManagerInternalBridge;->isEnsureDockedResizing()Z

    move-result v1

    if-eqz v1, :cond_c

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/am/MultiWindowAutoResizeController;->shouldWorkForEnsureDock:Z

    const/16 v1, -0x63

    return v1

    :cond_b
    const/4 v1, 0x0

    goto :goto_2

    :cond_c
    iget-object v1, p0, Lcom/android/server/am/MultiWindowAutoResizeController;->mDockedStackBounds:Landroid/graphics/Rect;

    iget-object v2, v6, Lcom/android/server/am/ActivityStack;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v1, p0, Lcom/android/server/am/MultiWindowAutoResizeController;->mFullScreenStackBounds:Landroid/graphics/Rect;

    iget-object v2, v7, Lcom/android/server/am/ActivityStack;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v1, p0, Lcom/android/server/am/MultiWindowAutoResizeController;->mDockedTaskBounds:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/android/server/am/MultiWindowAutoResizeController;->mDockedTask:Lcom/android/server/am/TaskRecord;

    iget-object v2, v2, Lcom/android/server/am/TaskRecord;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v1, p0, Lcom/android/server/am/MultiWindowAutoResizeController;->mFullScreenTaskBounds:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/android/server/am/MultiWindowAutoResizeController;->mFullScreenTask:Lcom/android/server/am/TaskRecord;

    iget-object v2, v2, Lcom/android/server/am/TaskRecord;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    const-string/jumbo v1, "moveTaskToStack"

    invoke-virtual {p3, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_e

    const-string/jumbo v1, "moveTaskToStack"

    invoke-virtual {p0, v1}, Lcom/android/server/am/MultiWindowAutoResizeController;->clearAutoResizeState(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/server/am/MultiWindowAutoResizeController;->calculateAutoResizeTargetPos()I

    move-result v0

    const/4 v1, -0x2

    if-ne v0, v1, :cond_d

    invoke-direct {p0}, Lcom/android/server/am/MultiWindowAutoResizeController;->getCurrentDividerPosition()I

    move-result v0

    :cond_d
    iget v1, p0, Lcom/android/server/am/MultiWindowAutoResizeController;->mDockStackSide:I

    iget-object v2, p0, Lcom/android/server/am/MultiWindowAutoResizeController;->mDockedTaskBounds:Landroid/graphics/Rect;

    iget v3, p0, Lcom/android/server/am/MultiWindowAutoResizeController;->mDisplayWidth:I

    iget v4, p0, Lcom/android/server/am/MultiWindowAutoResizeController;->mDisplayHeight:I

    iget v5, p0, Lcom/android/server/am/MultiWindowAutoResizeController;->mDividerSize:I

    invoke-static/range {v0 .. v5}, Lcom/android/internal/policy/DockedDividerUtils;->calculateBoundsForPosition(IILandroid/graphics/Rect;III)V

    iget v1, p0, Lcom/android/server/am/MultiWindowAutoResizeController;->mDockStackSide:I

    invoke-static {v1}, Lcom/android/internal/policy/DockedDividerUtils;->invertDockSide(I)I

    move-result v1

    iget-object v2, p0, Lcom/android/server/am/MultiWindowAutoResizeController;->mFullScreenTaskBounds:Landroid/graphics/Rect;

    iget v3, p0, Lcom/android/server/am/MultiWindowAutoResizeController;->mDisplayWidth:I

    iget v4, p0, Lcom/android/server/am/MultiWindowAutoResizeController;->mDisplayHeight:I

    iget v5, p0, Lcom/android/server/am/MultiWindowAutoResizeController;->mDividerSize:I

    invoke-static/range {v0 .. v5}, Lcom/android/internal/policy/DockedDividerUtils;->calculateBoundsForPosition(IILandroid/graphics/Rect;III)V

    :cond_e
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/am/MultiWindowAutoResizeController;->mFitTaskToStackSize:Z

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/am/MultiWindowAutoResizeController;->mHasTargetPosChanged:Z

    const/16 v8, -0x63

    iget-boolean v1, p0, Lcom/android/server/am/MultiWindowAutoResizeController;->mIsDockFocused:Z

    invoke-direct {p0, v1}, Lcom/android/server/am/MultiWindowAutoResizeController;->shouldExpand(Z)Z

    move-result v1

    if-eqz v1, :cond_13

    iget-boolean v1, p0, Lcom/android/server/am/MultiWindowAutoResizeController;->mIsAutoResized:Z

    if-nez v1, :cond_12

    invoke-virtual {p0}, Lcom/android/server/am/MultiWindowAutoResizeController;->calculateAutoResizeTargetPos()I

    move-result v0

    const/4 v1, -0x2

    if-ne v0, v1, :cond_f

    const-string/jumbo v1, "MultiWindowAutoResizeController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getAutoResizePositionLocked(), discarded Auto-Resize(expand) for (stackId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ") reason: TARGET_SIZE_DONT_EXISTS"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v1, -0x63

    return v1

    :cond_f
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/am/MultiWindowAutoResizeController;->mIsAutoResized:Z

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/am/MultiWindowAutoResizeController;->mHasTargetPosChanged:Z

    iget-object v1, p0, Lcom/android/server/am/MultiWindowAutoResizeController;->mDockedTaskBounds:Landroid/graphics/Rect;

    const/4 v2, 0x3

    invoke-direct {p0, v2, v1}, Lcom/android/server/am/MultiWindowAutoResizeController;->setTaskRectForAutoResize(ILandroid/graphics/Rect;)V

    iget-object v1, p0, Lcom/android/server/am/MultiWindowAutoResizeController;->mFullScreenTaskBounds:Landroid/graphics/Rect;

    const/4 v2, 0x1

    invoke-direct {p0, v2, v1}, Lcom/android/server/am/MultiWindowAutoResizeController;->setTaskRectForAutoResize(ILandroid/graphics/Rect;)V

    invoke-direct {p0, v9, v0}, Lcom/android/server/am/MultiWindowAutoResizeController;->setAutoResizingTaskPosition(II)V

    const/4 v1, 0x3

    if-ne v9, v1, :cond_11

    const/4 v1, 0x1

    :goto_3
    invoke-direct {p0}, Lcom/android/server/am/MultiWindowAutoResizeController;->getCurrentDividerPosition()I

    move-result v2

    invoke-direct {p0, v1, v2}, Lcom/android/server/am/MultiWindowAutoResizeController;->setAutoResizingTaskPosition(II)V

    move v8, v0

    :goto_4
    sget-boolean v1, Lcom/android/server/am/MultiWindowAutoResizeController;->DEBUG:Z

    if-eqz v1, :cond_10

    const-string/jumbo v1, "MultiWindowAutoResizeController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getAutoResizePositionLocked(), should Auto-Resize(expand) for (stackId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ") to position = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_10
    :goto_5
    return v8

    :cond_11
    const/4 v1, 0x3

    goto :goto_3

    :cond_12
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/am/MultiWindowAutoResizeController;->mIsAutoResized:Z

    iget-boolean v1, p0, Lcom/android/server/am/MultiWindowAutoResizeController;->mIsDockFocused:Z

    invoke-direct {p0, v1}, Lcom/android/server/am/MultiWindowAutoResizeController;->getAutoResizingTaskPosition(Z)I

    move-result v8

    goto :goto_4

    :cond_13
    iget-boolean v1, p0, Lcom/android/server/am/MultiWindowAutoResizeController;->mIsAutoResized:Z

    if-eqz v1, :cond_10

    invoke-direct {p0}, Lcom/android/server/am/MultiWindowAutoResizeController;->areTasksOverlappedOrExpanded()Z

    move-result v1

    if-eqz v1, :cond_10

    invoke-virtual {p0}, Lcom/android/server/am/MultiWindowAutoResizeController;->calculateAutoResizeTargetPos()I

    move-result v0

    const/4 v1, -0x2

    if-eq v0, v1, :cond_14

    invoke-direct {p0, v9, v0}, Lcom/android/server/am/MultiWindowAutoResizeController;->isGapCreatedForPosition(II)Z

    move-result v1

    if-nez v1, :cond_14

    iget-boolean v1, p0, Lcom/android/server/am/MultiWindowAutoResizeController;->mIsDockFocused:Z

    invoke-direct {p0, v1}, Lcom/android/server/am/MultiWindowAutoResizeController;->getAutoResizingTaskPosition(Z)I

    move-result v1

    if-ne v0, v1, :cond_16

    :cond_14
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/am/MultiWindowAutoResizeController;->mIsAutoResized:Z

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/am/MultiWindowAutoResizeController;->mFitTaskToStackSize:Z

    iget-boolean v1, p0, Lcom/android/server/am/MultiWindowAutoResizeController;->mIsDockFocused:Z

    invoke-direct {p0, v1}, Lcom/android/server/am/MultiWindowAutoResizeController;->getAutoResizingTaskPosition(Z)I

    move-result v8

    :cond_15
    :goto_6
    sget-boolean v1, Lcom/android/server/am/MultiWindowAutoResizeController;->DEBUG:Z

    if-eqz v1, :cond_10

    const-string/jumbo v1, "MultiWindowAutoResizeController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getAutoResizePositionLocked(), should Auto-Resize(shrink) for (stackId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ") to position = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    :cond_16
    const v1, 0x7fffffff

    if-eq v0, v1, :cond_15

    iget-boolean v1, p0, Lcom/android/server/am/MultiWindowAutoResizeController;->mIsDockFocused:Z

    invoke-direct {p0, v1}, Lcom/android/server/am/MultiWindowAutoResizeController;->getAutoResizingTaskPosition(Z)I

    move-result v1

    if-eq v0, v1, :cond_15

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/am/MultiWindowAutoResizeController;->mIsAutoResized:Z

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/am/MultiWindowAutoResizeController;->mHasTargetPosChanged:Z

    iget-boolean v1, p0, Lcom/android/server/am/MultiWindowAutoResizeController;->mIsDockFocused:Z

    invoke-direct {p0, v1, v0}, Lcom/android/server/am/MultiWindowAutoResizeController;->calculateRectForPosition(ZI)Landroid/graphics/Rect;

    move-result-object v1

    invoke-direct {p0, v9, v1}, Lcom/android/server/am/MultiWindowAutoResizeController;->setTaskRectForAutoResize(ILandroid/graphics/Rect;)V

    invoke-direct {p0, v9, v0}, Lcom/android/server/am/MultiWindowAutoResizeController;->setAutoResizingTaskPosition(II)V

    move v8, v0

    goto :goto_6
.end method

.method getTaskRectForAutoResize(I)Landroid/graphics/Rect;
    .locals 2

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    packed-switch p1, :pswitch_data_0

    :goto_0
    :pswitch_0
    return-object v0

    :pswitch_1
    iget-object v1, p0, Lcom/android/server/am/MultiWindowAutoResizeController;->mDockedTaskAutoResizeRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_0

    :pswitch_2
    iget-object v1, p0, Lcom/android/server/am/MultiWindowAutoResizeController;->mFullscreenTaskAutoResizeRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public hasTargetPosChanged()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/am/MultiWindowAutoResizeController;->mHasTargetPosChanged:Z

    return v0
.end method

.method public isAutoResized()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/am/MultiWindowAutoResizeController;->mIsAutoResized:Z

    return v0
.end method

.method onConfigurationChangedLocked(I)V
    .locals 1

    and-int/lit16 v0, p1, 0x1480

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/server/am/MultiWindowAutoResizeController;->initValues()V

    const-string/jumbo v0, "onConfigurationChangedLocked"

    invoke-virtual {p0, v0}, Lcom/android/server/am/MultiWindowAutoResizeController;->clearAutoResizeState(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public shouldFitTaskToStackSize()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/am/MultiWindowAutoResizeController;->mFitTaskToStackSize:Z

    return v0
.end method
