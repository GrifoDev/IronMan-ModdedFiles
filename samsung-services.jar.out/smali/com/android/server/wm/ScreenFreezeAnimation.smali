.class public Lcom/android/server/wm/ScreenFreezeAnimation;
.super Ljava/lang/Object;
.source "ScreenFreezeAnimation.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/ScreenFreezeAnimation$ScreenFreezeSurface;
    }
.end annotation


# static fields
.field static final DEBUG:Z

.field static final FREEZE_LAYER:I = 0x1e8481

.field public static final MW_ANIMATION_FREEFORM_RESIZED:I = 0x3

.field public static final MW_ANIMATION_SPLIT_RESIZED:I = 0x1

.field public static final MW_ANIMATION_SPLIT_SWITCHED:I = 0x2

.field public static final MW_ANIMATION_UNSET:I = -0x1

.field private static final STATE_ANIM_READY:I = 0x1

.field private static final STATE_ANIM_RUNNING:I = 0x2

.field private static final STATE_FREEZING_SCREEN:I = 0x0

.field private static final STATE_INITIALIZING:I = -0x1

.field static final TAG:Ljava/lang/String; = "ScreenFreezeAnimation"


# instance fields
.field mAnimRunning:Z

.field mAnimation:Landroid/view/animation/Animation;

.field private mCheckFitToScreen:Z

.field final mContext:Landroid/content/Context;

.field private mDisplayRect:Landroid/graphics/Rect;

.field private mDockBottom:I

.field private mFreezeAnimState:I

.field mFreezeSurface:Lcom/android/server/wm/ScreenFreezeAnimation$ScreenFreezeSurface;

.field private final mInternal:Lcom/android/server/wm/MultiWindowManagerInternal;

.field mNextScreenFreezeAnimation:I

.field private final mService:Lcom/android/server/wm/WindowManagerService;

.field final mSession:Landroid/view/SurfaceSession;

.field mStartTime:J

.field mTargetWindowList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/wm/WindowState;",
            ">;"
        }
    .end annotation
.end field

.field mTransformation:Landroid/view/animation/Transformation;

.field mWaitForRecents:Z

.field private mWaitingAppToken:Lcom/android/server/wm/AppWindowToken;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    move-result v0

    sput-boolean v0, Lcom/android/server/wm/ScreenFreezeAnimation;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/SurfaceSession;Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/MultiWindowManagerInternal;)V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x0

    const/4 v1, -0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v1, p0, Lcom/android/server/wm/ScreenFreezeAnimation;->mNextScreenFreezeAnimation:I

    iput v1, p0, Lcom/android/server/wm/ScreenFreezeAnimation;->mFreezeAnimState:I

    iput-boolean v2, p0, Lcom/android/server/wm/ScreenFreezeAnimation;->mAnimRunning:Z

    iput-object v3, p0, Lcom/android/server/wm/ScreenFreezeAnimation;->mAnimation:Landroid/view/animation/Animation;

    iput-object v3, p0, Lcom/android/server/wm/ScreenFreezeAnimation;->mFreezeSurface:Lcom/android/server/wm/ScreenFreezeAnimation$ScreenFreezeSurface;

    new-instance v0, Landroid/view/animation/Transformation;

    invoke-direct {v0}, Landroid/view/animation/Transformation;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/ScreenFreezeAnimation;->mTransformation:Landroid/view/animation/Transformation;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/ScreenFreezeAnimation;->mTargetWindowList:Ljava/util/ArrayList;

    iput-object v3, p0, Lcom/android/server/wm/ScreenFreezeAnimation;->mWaitingAppToken:Lcom/android/server/wm/AppWindowToken;

    iput-boolean v2, p0, Lcom/android/server/wm/ScreenFreezeAnimation;->mWaitForRecents:Z

    iput-boolean v2, p0, Lcom/android/server/wm/ScreenFreezeAnimation;->mCheckFitToScreen:Z

    iput v1, p0, Lcom/android/server/wm/ScreenFreezeAnimation;->mDockBottom:I

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/ScreenFreezeAnimation;->mDisplayRect:Landroid/graphics/Rect;

    iput-object p1, p0, Lcom/android/server/wm/ScreenFreezeAnimation;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/server/wm/ScreenFreezeAnimation;->mSession:Landroid/view/SurfaceSession;

    iput-object p3, p0, Lcom/android/server/wm/ScreenFreezeAnimation;->mService:Lcom/android/server/wm/WindowManagerService;

    iput-object p4, p0, Lcom/android/server/wm/ScreenFreezeAnimation;->mInternal:Lcom/android/server/wm/MultiWindowManagerInternal;

    return-void
.end method

.method private loadScreenFreezeAnimation(I)Z
    .locals 9

    const/4 v2, -0x1

    const/4 v8, 0x1

    const/4 v5, 0x0

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/android/server/wm/ScreenFreezeAnimation;->mFreezeSurface:Lcom/android/server/wm/ScreenFreezeAnimation$ScreenFreezeSurface;

    if-nez v0, :cond_0

    return v5

    :cond_0
    if-ne p1, v8, :cond_1

    iget-object v0, p0, Lcom/android/server/wm/ScreenFreezeAnimation;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mMultiWindowManagerInternal:Lcom/android/server/wm/IMultiWindowManagerInternalBridge;

    const/16 v1, 0xc9

    move-object v4, v3

    move v6, v5

    move-object v7, v3

    invoke-interface/range {v0 .. v7}, Lcom/android/server/wm/IMultiWindowManagerInternalBridge;->loadMultiWindowTransitionLocked(IILandroid/graphics/Rect;Landroid/graphics/Rect;ZZLandroid/view/animation/Animation;)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/ScreenFreezeAnimation;->mAnimation:Landroid/view/animation/Animation;

    iget-object v0, p0, Lcom/android/server/wm/ScreenFreezeAnimation;->mAnimation:Landroid/view/animation/Animation;

    iget-object v1, p0, Lcom/android/server/wm/ScreenFreezeAnimation;->mFreezeSurface:Lcom/android/server/wm/ScreenFreezeAnimation$ScreenFreezeSurface;

    iget-object v1, v1, Lcom/android/server/wm/ScreenFreezeAnimation$ScreenFreezeSurface;->mRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->centerX()I

    move-result v1

    iget-object v2, p0, Lcom/android/server/wm/ScreenFreezeAnimation;->mFreezeSurface:Lcom/android/server/wm/ScreenFreezeAnimation$ScreenFreezeSurface;

    iget-object v2, v2, Lcom/android/server/wm/ScreenFreezeAnimation$ScreenFreezeSurface;->mRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->centerY()I

    move-result v2

    iget-object v3, p0, Lcom/android/server/wm/ScreenFreezeAnimation;->mFreezeSurface:Lcom/android/server/wm/ScreenFreezeAnimation$ScreenFreezeSurface;

    iget-object v3, v3, Lcom/android/server/wm/ScreenFreezeAnimation$ScreenFreezeSurface;->mRect:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->centerX()I

    move-result v3

    iget-object v4, p0, Lcom/android/server/wm/ScreenFreezeAnimation;->mFreezeSurface:Lcom/android/server/wm/ScreenFreezeAnimation$ScreenFreezeSurface;

    iget-object v4, v4, Lcom/android/server/wm/ScreenFreezeAnimation$ScreenFreezeSurface;->mRect:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->centerY()I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/animation/Animation;->initialize(IIII)V

    iget-object v0, p0, Lcom/android/server/wm/ScreenFreezeAnimation;->mAnimation:Landroid/view/animation/Animation;

    iget-object v1, p0, Lcom/android/server/wm/ScreenFreezeAnimation;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowManagerService;->getTransitionAnimationScaleLocked()F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->scaleCurrentDuration(F)V

    return v8

    :cond_1
    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    const/4 v0, 0x3

    if-ne p1, v0, :cond_4

    :cond_2
    iget-object v0, p0, Lcom/android/server/wm/ScreenFreezeAnimation;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mMultiWindowManagerInternal:Lcom/android/server/wm/IMultiWindowManagerInternalBridge;

    const/16 v1, 0xca

    move-object v4, v3

    move v6, v5

    move-object v7, v3

    invoke-interface/range {v0 .. v7}, Lcom/android/server/wm/IMultiWindowManagerInternalBridge;->loadMultiWindowTransitionLocked(IILandroid/graphics/Rect;Landroid/graphics/Rect;ZZLandroid/view/animation/Animation;)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/ScreenFreezeAnimation;->mAnimation:Landroid/view/animation/Animation;

    iget-object v0, p0, Lcom/android/server/wm/ScreenFreezeAnimation;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->isDesktopModeLocked()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/server/wm/ScreenFreezeAnimation;->mAnimation:Landroid/view/animation/Animation;

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    :cond_3
    iget-object v0, p0, Lcom/android/server/wm/ScreenFreezeAnimation;->mAnimation:Landroid/view/animation/Animation;

    iget-object v1, p0, Lcom/android/server/wm/ScreenFreezeAnimation;->mFreezeSurface:Lcom/android/server/wm/ScreenFreezeAnimation$ScreenFreezeSurface;

    iget-object v1, v1, Lcom/android/server/wm/ScreenFreezeAnimation$ScreenFreezeSurface;->mRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->centerX()I

    move-result v1

    iget-object v2, p0, Lcom/android/server/wm/ScreenFreezeAnimation;->mFreezeSurface:Lcom/android/server/wm/ScreenFreezeAnimation$ScreenFreezeSurface;

    iget-object v2, v2, Lcom/android/server/wm/ScreenFreezeAnimation$ScreenFreezeSurface;->mRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->centerY()I

    move-result v2

    iget-object v3, p0, Lcom/android/server/wm/ScreenFreezeAnimation;->mFreezeSurface:Lcom/android/server/wm/ScreenFreezeAnimation$ScreenFreezeSurface;

    iget-object v3, v3, Lcom/android/server/wm/ScreenFreezeAnimation$ScreenFreezeSurface;->mRect:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->centerX()I

    move-result v3

    iget-object v4, p0, Lcom/android/server/wm/ScreenFreezeAnimation;->mFreezeSurface:Lcom/android/server/wm/ScreenFreezeAnimation$ScreenFreezeSurface;

    iget-object v4, v4, Lcom/android/server/wm/ScreenFreezeAnimation$ScreenFreezeSurface;->mRect:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->centerY()I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/animation/Animation;->initialize(IIII)V

    iget-object v0, p0, Lcom/android/server/wm/ScreenFreezeAnimation;->mAnimation:Landroid/view/animation/Animation;

    iget-object v1, p0, Lcom/android/server/wm/ScreenFreezeAnimation;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowManagerService;->getTransitionAnimationScaleLocked()F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->scaleCurrentDuration(F)V

    return v8

    :cond_4
    return v5
.end method

.method private setTargetWindows(Ljava/util/ArrayList;)Z
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/wm/AppWindowToken;",
            ">;)Z"
        }
    .end annotation

    const/4 v5, 0x0

    iput-object v5, p0, Lcom/android/server/wm/ScreenFreezeAnimation;->mWaitingAppToken:Lcom/android/server/wm/AppWindowToken;

    iget-object v5, p0, Lcom/android/server/wm/ScreenFreezeAnimation;->mTargetWindowList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v3}, Lcom/android/server/wm/AppWindowToken;->findMainWindow()Lcom/android/server/wm/WindowState;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v5, v3, Lcom/android/server/wm/AppWindowToken;->allAppWindows:Lcom/android/server/wm/WindowList;

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowState;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->isVisibleLw()Z

    move-result v5

    if-nez v5, :cond_2

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowState;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    :cond_2
    sget-boolean v5, Lcom/android/server/wm/ScreenFreezeAnimation;->DEBUG:Z

    if-eqz v5, :cond_3

    const-string/jumbo v5, "ScreenFreezeAnimation"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "mTargetAppList.add : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    iget-object v5, p0, Lcom/android/server/wm/ScreenFreezeAnimation;->mTargetWindowList:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_4
    iget-object v5, p0, Lcom/android/server/wm/ScreenFreezeAnimation;->mTargetWindowList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_5

    const/4 v5, 0x0

    :goto_1
    return v5

    :cond_5
    const/4 v5, 0x1

    goto :goto_1
.end method


# virtual methods
.method checkDrawnWindowsFitToScreenForSwapTasks(I)V
    .locals 6

    const/4 v4, 0x1

    const/4 v5, 0x0

    iput-boolean v4, p0, Lcom/android/server/wm/ScreenFreezeAnimation;->mCheckFitToScreen:Z

    iput p1, p0, Lcom/android/server/wm/ScreenFreezeAnimation;->mDockBottom:I

    iget-object v3, p0, Lcom/android/server/wm/ScreenFreezeAnimation;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayInfoLocked()Landroid/view/DisplayInfo;

    move-result-object v0

    iget v3, v0, Landroid/view/DisplayInfo;->rotation:I

    if-eq v3, v4, :cond_0

    iget v3, v0, Landroid/view/DisplayInfo;->rotation:I

    const/4 v4, 0x3

    if-ne v3, v4, :cond_1

    :cond_0
    iget v2, v0, Landroid/view/DisplayInfo;->logicalHeight:I

    iget v1, v0, Landroid/view/DisplayInfo;->logicalWidth:I

    :goto_0
    iget-object v3, p0, Lcom/android/server/wm/ScreenFreezeAnimation;->mDisplayRect:Landroid/graphics/Rect;

    invoke-virtual {v3, v5, v5, v2, v1}, Landroid/graphics/Rect;->set(IIII)V

    return-void

    :cond_1
    iget v2, v0, Landroid/view/DisplayInfo;->logicalWidth:I

    iget v1, v0, Landroid/view/DisplayInfo;->logicalHeight:I

    goto :goto_0
.end method

.method public clearScreenFreezAnimation()V
    .locals 6

    const/4 v5, -0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    sget-boolean v0, Lcom/android/server/wm/ScreenFreezeAnimation;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "ScreenFreezeAnimation"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "clearScreenFreezAnimation, at : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x3

    invoke-static {v2}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iput-object v3, p0, Lcom/android/server/wm/ScreenFreezeAnimation;->mWaitingAppToken:Lcom/android/server/wm/AppWindowToken;

    iget-object v0, p0, Lcom/android/server/wm/ScreenFreezeAnimation;->mTargetWindowList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/android/server/wm/ScreenFreezeAnimation;->mAnimation:Landroid/view/animation/Animation;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/wm/ScreenFreezeAnimation;->mAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0}, Landroid/view/animation/Animation;->cancel()V

    iput-object v3, p0, Lcom/android/server/wm/ScreenFreezeAnimation;->mAnimation:Landroid/view/animation/Animation;

    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/ScreenFreezeAnimation;->mFreezeSurface:Lcom/android/server/wm/ScreenFreezeAnimation$ScreenFreezeSurface;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/server/wm/ScreenFreezeAnimation;->mFreezeSurface:Lcom/android/server/wm/ScreenFreezeAnimation$ScreenFreezeSurface;

    invoke-virtual {v0}, Lcom/android/server/wm/ScreenFreezeAnimation$ScreenFreezeSurface;->kill()V

    iput-object v3, p0, Lcom/android/server/wm/ScreenFreezeAnimation;->mFreezeSurface:Lcom/android/server/wm/ScreenFreezeAnimation$ScreenFreezeSurface;

    :cond_2
    iput-boolean v4, p0, Lcom/android/server/wm/ScreenFreezeAnimation;->mAnimRunning:Z

    iput-boolean v4, p0, Lcom/android/server/wm/ScreenFreezeAnimation;->mWaitForRecents:Z

    iput-boolean v4, p0, Lcom/android/server/wm/ScreenFreezeAnimation;->mCheckFitToScreen:Z

    iput v5, p0, Lcom/android/server/wm/ScreenFreezeAnimation;->mNextScreenFreezeAnimation:I

    iput v5, p0, Lcom/android/server/wm/ScreenFreezeAnimation;->mFreezeAnimState:I

    iget-object v0, p0, Lcom/android/server/wm/ScreenFreezeAnimation;->mInternal:Lcom/android/server/wm/MultiWindowManagerInternal;

    invoke-virtual {v0}, Lcom/android/server/wm/MultiWindowManagerInternal;->notifyScreenFreezeAnimationFinished()V

    return-void
.end method

.method public clearSnapWindowDeferAnimation()V
    .locals 5

    iget-object v2, p0, Lcom/android/server/wm/ScreenFreezeAnimation;->mTargetWindowList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/android/server/wm/ScreenFreezeAnimation;->mTargetWindowList:Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/WindowState;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->getTask()Lcom/android/server/wm/Task;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/server/wm/ScreenFreezeAnimation;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mMultiWindowManagerInternal:Lcom/android/server/wm/IMultiWindowManagerInternalBridge;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->getTask()Lcom/android/server/wm/Task;

    move-result-object v3

    iget v3, v3, Lcom/android/server/wm/Task;->mTaskId:I

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Lcom/android/server/wm/IMultiWindowManagerInternalBridge;->setSnapWindowDeferAnimation(IZ)Z

    goto :goto_0

    :cond_1
    return-void
.end method

.method containsTargetWindow(Lcom/android/server/wm/AppWindowToken;)Z
    .locals 3

    iget-object v2, p0, Lcom/android/server/wm/ScreenFreezeAnimation;->mTargetWindowList:Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/WindowState;

    iget-object v2, v0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v2, :cond_0

    iget-object v2, v0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-ne v2, p1, :cond_0

    const/4 v2, 0x1

    return v2

    :cond_1
    const/4 v2, 0x0

    return v2
.end method

.method public createFreezeSurface(ZII)V
    .locals 17

    if-ltz p2, :cond_0

    if-gez p3, :cond_1

    :cond_0
    const-string/jumbo v2, "ScreenFreezeAnimation"

    const-string/jumbo v3, "Layer for Screenshot or ScreenFreeze can\'t be under 0"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/ScreenFreezeAnimation;->mFreezeSurface:Lcom/android/server/wm/ScreenFreezeAnimation$ScreenFreezeSurface;

    if-nez v2, :cond_5

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/ScreenFreezeAnimation;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayInfoLocked()Landroid/view/DisplayInfo;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/ScreenFreezeAnimation;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowManagerService;->isDesktopModeLocked()Z

    move-result v2

    if-eqz v2, :cond_7

    iget v2, v13, Landroid/view/DisplayInfo;->rotation:I

    if-eqz v2, :cond_2

    iget v2, v13, Landroid/view/DisplayInfo;->rotation:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_6

    :cond_2
    iget v6, v13, Landroid/view/DisplayInfo;->logicalHeight:I

    iget v7, v13, Landroid/view/DisplayInfo;->logicalWidth:I

    :goto_0
    iget v2, v13, Landroid/view/DisplayInfo;->rotation:I

    add-int/lit8 v2, v2, 0x1

    rem-int/lit8 v9, v2, 0x4

    :goto_1
    :try_start_0
    sget-boolean v2, Lcom/android/server/wm/ScreenFreezeAnimation;->DEBUG:Z

    if-eqz v2, :cond_3

    const-string/jumbo v2, "ScreenFreezeAnimation"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "create ScreenFreezeSurface, "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x7

    invoke-static {v4}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    new-instance v2, Lcom/android/server/wm/ScreenFreezeAnimation$ScreenFreezeSurface;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/ScreenFreezeAnimation;->mSession:Landroid/view/SurfaceSession;

    iget v8, v13, Landroid/view/DisplayInfo;->layerStack:I

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v11, 0x0

    move/from16 v10, p1

    move/from16 v12, p2

    invoke-direct/range {v2 .. v12}, Lcom/android/server/wm/ScreenFreezeAnimation$ScreenFreezeSurface;-><init>(Landroid/view/SurfaceSession;IIIIIIZII)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/wm/ScreenFreezeAnimation;->mFreezeSurface:Lcom/android/server/wm/ScreenFreezeAnimation$ScreenFreezeSurface;
    :try_end_0
    .catch Landroid/view/Surface$OutOfResourcesException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/ScreenFreezeAnimation;->mFreezeSurface:Lcom/android/server/wm/ScreenFreezeAnimation$ScreenFreezeSurface;

    if-eqz v2, :cond_5

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/ScreenFreezeAnimation;->mFreezeSurface:Lcom/android/server/wm/ScreenFreezeAnimation$ScreenFreezeSurface;

    iget v3, v13, Landroid/view/DisplayInfo;->layerStack:I

    invoke-virtual {v2, v3}, Lcom/android/server/wm/ScreenFreezeAnimation$ScreenFreezeSurface;->setLayerStackForSurface(I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/ScreenFreezeAnimation;->mFreezeSurface:Lcom/android/server/wm/ScreenFreezeAnimation$ScreenFreezeSurface;

    move/from16 v0, p3

    invoke-virtual {v2, v0}, Lcom/android/server/wm/ScreenFreezeAnimation$ScreenFreezeSurface;->setLayerForSurface(I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/ScreenFreezeAnimation;->mFreezeSurface:Lcom/android/server/wm/ScreenFreezeAnimation$ScreenFreezeSurface;

    invoke-virtual {v2}, Lcom/android/server/wm/ScreenFreezeAnimation$ScreenFreezeSurface;->show()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/ScreenFreezeAnimation;->mInternal:Lcom/android/server/wm/MultiWindowManagerInternal;

    invoke-virtual {v2}, Lcom/android/server/wm/MultiWindowManagerInternal;->getHandler()Landroid/os/Handler;

    move-result-object v2

    const/4 v3, 0x6

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/ScreenFreezeAnimation;->mInternal:Lcom/android/server/wm/MultiWindowManagerInternal;

    invoke-virtual {v2}, Lcom/android/server/wm/MultiWindowManagerInternal;->getHandler()Landroid/os/Handler;

    move-result-object v2

    const/4 v3, 0x6

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/wm/ScreenFreezeAnimation;->mNextScreenFreezeAnimation:I

    const/4 v3, 0x1

    if-eq v2, v3, :cond_4

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/wm/ScreenFreezeAnimation;->mNextScreenFreezeAnimation:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_a

    :cond_4
    const/16 v14, 0x7d0

    :goto_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/ScreenFreezeAnimation;->mInternal:Lcom/android/server/wm/MultiWindowManagerInternal;

    invoke-virtual {v2}, Lcom/android/server/wm/MultiWindowManagerInternal;->getHandler()Landroid/os/Handler;

    move-result-object v2

    int-to-long v4, v14

    move-object/from16 v0, v16

    invoke-virtual {v2, v0, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_5
    return-void

    :cond_6
    iget v6, v13, Landroid/view/DisplayInfo;->logicalWidth:I

    iget v7, v13, Landroid/view/DisplayInfo;->logicalHeight:I

    goto/16 :goto_0

    :cond_7
    iget v2, v13, Landroid/view/DisplayInfo;->rotation:I

    const/4 v3, 0x1

    if-eq v2, v3, :cond_8

    iget v2, v13, Landroid/view/DisplayInfo;->rotation:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_9

    :cond_8
    iget v6, v13, Landroid/view/DisplayInfo;->logicalHeight:I

    iget v7, v13, Landroid/view/DisplayInfo;->logicalWidth:I

    :goto_4
    iget v9, v13, Landroid/view/DisplayInfo;->rotation:I

    goto/16 :goto_1

    :cond_9
    iget v6, v13, Landroid/view/DisplayInfo;->logicalWidth:I

    iget v7, v13, Landroid/view/DisplayInfo;->logicalHeight:I

    goto :goto_4

    :catch_0
    move-exception v15

    const-string/jumbo v2, "ScreenFreezeAnimation"

    const-string/jumbo v3, "Unable to allocate screen freeze surface"

    invoke-static {v2, v3, v15}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    :cond_a
    const/16 v14, 0x1388

    goto :goto_3
.end method

.method dumpLocked(Ljava/io/PrintWriter;)V
    .locals 2

    const/4 v1, -0x1

    iget v0, p0, Lcom/android/server/wm/ScreenFreezeAnimation;->mFreezeAnimState:I

    if-eq v0, v1, :cond_0

    const-string/jumbo v0, "    mFreezeAnimState="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/server/wm/ScreenFreezeAnimation;->freezeAnimStateToString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_0
    iget v0, p0, Lcom/android/server/wm/ScreenFreezeAnimation;->mNextScreenFreezeAnimation:I

    if-eq v0, v1, :cond_1

    const-string/jumbo v0, "    mFreezeAnimState="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/server/wm/ScreenFreezeAnimation;->freezeAnimationToString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/ScreenFreezeAnimation;->mFreezeSurface:Lcom/android/server/wm/ScreenFreezeAnimation$ScreenFreezeSurface;

    if-eqz v0, :cond_2

    const-string/jumbo v0, "    mFreezeSurface="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/ScreenFreezeAnimation;->mFreezeSurface:Lcom/android/server/wm/ScreenFreezeAnimation$ScreenFreezeSurface;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    :cond_2
    iget-object v0, p0, Lcom/android/server/wm/ScreenFreezeAnimation;->mTargetWindowList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    const-string/jumbo v0, "    mTargetWindowList="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/ScreenFreezeAnimation;->mTargetWindowList:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    :cond_3
    iget-boolean v0, p0, Lcom/android/server/wm/ScreenFreezeAnimation;->mWaitForRecents:Z

    if-eqz v0, :cond_4

    const-string/jumbo v0, "    mWaitForRecents="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/wm/ScreenFreezeAnimation;->mWaitForRecents:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    :cond_4
    iget-object v0, p0, Lcom/android/server/wm/ScreenFreezeAnimation;->mWaitingAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v0, :cond_5

    const-string/jumbo v0, "    mWaitingAppToken="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/ScreenFreezeAnimation;->mWaitingAppToken:Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    :cond_5
    return-void
.end method

.method public executeScreenFreezeAniamtion()V
    .locals 1

    invoke-virtual {p0}, Lcom/android/server/wm/ScreenFreezeAnimation;->isAnimationSet()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/wm/ScreenFreezeAnimation;->setAnimationReady()V

    invoke-virtual {p0}, Lcom/android/server/wm/ScreenFreezeAnimation;->clearSnapWindowDeferAnimation()V

    iget-object v0, p0, Lcom/android/server/wm/ScreenFreezeAnimation;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->requestTraversal()V

    :cond_0
    return-void
.end method

.method freezeAnimStateToString()Ljava/lang/String;
    .locals 1

    iget v0, p0, Lcom/android/server/wm/ScreenFreezeAnimation;->mFreezeAnimState:I

    packed-switch v0, :pswitch_data_0

    iget v0, p0, Lcom/android/server/wm/ScreenFreezeAnimation;->mFreezeAnimState:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_0
    const-string/jumbo v0, "STATE_INITIALIZING"

    return-object v0

    :pswitch_1
    const-string/jumbo v0, "STATE_FREEZING_SCREEN"

    return-object v0

    :pswitch_2
    const-string/jumbo v0, "STATE_ANIM_READY"

    return-object v0

    :pswitch_3
    const-string/jumbo v0, "STATE_ANIM_RUNNING"

    return-object v0

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method freezeAnimationToString()Ljava/lang/String;
    .locals 1

    iget v0, p0, Lcom/android/server/wm/ScreenFreezeAnimation;->mNextScreenFreezeAnimation:I

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    iget v0, p0, Lcom/android/server/wm/ScreenFreezeAnimation;->mNextScreenFreezeAnimation:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_1
    const-string/jumbo v0, "MW_ANIMATION_UNSET"

    return-object v0

    :pswitch_2
    const-string/jumbo v0, "MW_ANIMATION_SPLIT_RESIZED"

    return-object v0

    :pswitch_3
    const-string/jumbo v0, "MW_ANIMATION_SPLIT_SWITCHED"

    return-object v0

    :pswitch_4
    const-string/jumbo v0, "MW_ANIMATION_FREEFORM_RESIZED"

    return-object v0

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method getScreenFreezeAnimation()I
    .locals 1

    iget v0, p0, Lcom/android/server/wm/ScreenFreezeAnimation;->mNextScreenFreezeAnimation:I

    return v0
.end method

.method goodToGo()V
    .locals 1

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/wm/ScreenFreezeAnimation;->mNextScreenFreezeAnimation:I

    const/4 v0, 0x2

    iput v0, p0, Lcom/android/server/wm/ScreenFreezeAnimation;->mFreezeAnimState:I

    return-void
.end method

.method public handleMultiWindowTransitionReady()I
    .locals 8

    const/4 v2, 0x0

    iget-object v6, p0, Lcom/android/server/wm/ScreenFreezeAnimation;->mTargetWindowList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v3, 0x1

    iget-object v6, p0, Lcom/android/server/wm/ScreenFreezeAnimation;->mFreezeSurface:Lcom/android/server/wm/ScreenFreezeAnimation$ScreenFreezeSurface;

    if-nez v6, :cond_2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v0, :cond_2

    if-eqz v3, :cond_2

    iget-object v6, p0, Lcom/android/server/wm/ScreenFreezeAnimation;->mTargetWindowList:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/wm/WindowState;

    iget-object v5, v6, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget-boolean v6, v5, Lcom/android/server/wm/AppWindowToken;->allDrawn:Z

    if-nez v6, :cond_0

    iget-boolean v6, v5, Lcom/android/server/wm/AppWindowToken;->startingDisplayed:Z

    if-eqz v6, :cond_1

    :cond_0
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    iget-boolean v6, v5, Lcom/android/server/wm/AppWindowToken;->startingMoved:Z

    if-nez v6, :cond_0

    const/4 v3, 0x0

    goto :goto_1

    :cond_2
    if-eqz v3, :cond_3

    invoke-virtual {p0}, Lcom/android/server/wm/ScreenFreezeAnimation;->getScreenFreezeAnimation()I

    move-result v1

    invoke-virtual {p0}, Lcom/android/server/wm/ScreenFreezeAnimation;->goodToGo()V

    iget-object v6, p0, Lcom/android/server/wm/ScreenFreezeAnimation;->mInternal:Lcom/android/server/wm/MultiWindowManagerInternal;

    invoke-virtual {v6}, Lcom/android/server/wm/MultiWindowManagerInternal;->getHandler()Landroid/os/Handler;

    move-result-object v6

    const/4 v7, 0x6

    invoke-virtual {v6, v7}, Landroid/os/Handler;->removeMessages(I)V

    const/4 v6, -0x1

    if-eq v1, v6, :cond_4

    iget-object v6, p0, Lcom/android/server/wm/ScreenFreezeAnimation;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v6}, Lcom/android/server/wm/WindowManagerService;->okToDisplay()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-direct {p0, v1}, Lcom/android/server/wm/ScreenFreezeAnimation;->loadScreenFreezeAnimation(I)Z

    :goto_2
    iget-object v6, p0, Lcom/android/server/wm/ScreenFreezeAnimation;->mTargetWindowList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    const/4 v2, 0x3

    iget-object v6, p0, Lcom/android/server/wm/ScreenFreezeAnimation;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v6}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    move-result-object v6

    const/4 v7, 0x1

    iput-boolean v7, v6, Lcom/android/server/wm/DisplayContent;->layoutNeeded:Z

    :cond_3
    return v2

    :cond_4
    invoke-virtual {p0}, Lcom/android/server/wm/ScreenFreezeAnimation;->clearScreenFreezAnimation()V

    goto :goto_2
.end method

.method public isAnimating()Z
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/server/wm/ScreenFreezeAnimation;->mFreezeSurface:Lcom/android/server/wm/ScreenFreezeAnimation$ScreenFreezeSurface;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/wm/ScreenFreezeAnimation;->mAnimation:Landroid/view/animation/Animation;

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method isAnimationReady()Z
    .locals 2

    const/4 v0, 0x1

    iget v1, p0, Lcom/android/server/wm/ScreenFreezeAnimation;->mFreezeAnimState:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isAnimationRunning()Z
    .locals 2

    iget v0, p0, Lcom/android/server/wm/ScreenFreezeAnimation;->mFreezeAnimState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isAnimationSet()Z
    .locals 2

    iget v0, p0, Lcom/android/server/wm/ScreenFreezeAnimation;->mNextScreenFreezeAnimation:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isFreezingScreen()Z
    .locals 2

    const/4 v0, 0x0

    iget v1, p0, Lcom/android/server/wm/ScreenFreezeAnimation;->mFreezeAnimState:I

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method prepare()V
    .locals 1

    invoke-virtual {p0}, Lcom/android/server/wm/ScreenFreezeAnimation;->isAnimationRunning()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/wm/ScreenFreezeAnimation;->mFreezeAnimState:I

    :cond_0
    return-void
.end method

.method setAnimationReady()V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/wm/ScreenFreezeAnimation;->mFreezeAnimState:I

    return-void
.end method

.method public setScreenFreezeAnimation(Ljava/util/ArrayList;I)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/wm/AppWindowToken;",
            ">;I)V"
        }
    .end annotation

    const/16 v4, 0x7d0

    const/4 v3, 0x1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    return-void

    :cond_1
    const/4 v1, -0x1

    const/4 v0, -0x1

    packed-switch p2, :pswitch_data_0

    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    iput p2, p0, Lcom/android/server/wm/ScreenFreezeAnimation;->mNextScreenFreezeAnimation:I

    goto :goto_0

    :pswitch_2
    invoke-direct {p0, p1}, Lcom/android/server/wm/ScreenFreezeAnimation;->setTargetWindows(Ljava/util/ArrayList;)Z

    move-result v2

    if-nez v2, :cond_3

    sget-boolean v2, Lcom/android/server/wm/ScreenFreezeAnimation;->DEBUG:Z

    if-eqz v2, :cond_2

    const-string/jumbo v2, "ScreenFreezeAnimation"

    const-string/jumbo v3, "No visible window. Abort ScreenFreezeAnimation."

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-void

    :cond_3
    iget-object v2, p0, Lcom/android/server/wm/ScreenFreezeAnimation;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-interface {v2, v4}, Landroid/view/WindowManagerPolicy;->windowTypeToLayerLw(I)I

    move-result v2

    mul-int/lit16 v2, v2, 0x2710

    add-int/lit16 v2, v2, 0x3e8

    add-int/lit8 v1, v2, -0x1

    move v0, v1

    iput p2, p0, Lcom/android/server/wm/ScreenFreezeAnimation;->mNextScreenFreezeAnimation:I

    invoke-virtual {p0, v3, v1, v1}, Lcom/android/server/wm/ScreenFreezeAnimation;->createFreezeSurface(ZII)V

    goto :goto_0

    :pswitch_3
    invoke-direct {p0, p1}, Lcom/android/server/wm/ScreenFreezeAnimation;->setTargetWindows(Ljava/util/ArrayList;)Z

    move-result v2

    if-nez v2, :cond_5

    sget-boolean v2, Lcom/android/server/wm/ScreenFreezeAnimation;->DEBUG:Z

    if-eqz v2, :cond_4

    const-string/jumbo v2, "ScreenFreezeAnimation"

    const-string/jumbo v3, "No visible window. Abort ScreenFreezeAnimation."

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    return-void

    :cond_5
    iget-object v2, p0, Lcom/android/server/wm/ScreenFreezeAnimation;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-interface {v2, v4}, Landroid/view/WindowManagerPolicy;->windowTypeToLayerLw(I)I

    move-result v2

    mul-int/lit16 v2, v2, 0x2710

    add-int/lit16 v1, v2, 0x3e8

    add-int/lit8 v0, v1, 0x1

    iput p2, p0, Lcom/android/server/wm/ScreenFreezeAnimation;->mNextScreenFreezeAnimation:I

    invoke-virtual {p0, v3, v1, v0}, Lcom/android/server/wm/ScreenFreezeAnimation;->createFreezeSurface(ZII)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method setWindowDrawn(Lcom/android/server/wm/WindowState;)V
    .locals 6

    const/4 v4, 0x1

    const/4 v5, 0x0

    iget-boolean v2, p0, Lcom/android/server/wm/ScreenFreezeAnimation;->mWaitForRecents:Z

    if-eqz v2, :cond_0

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->toString()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "com.android.systemui/com.android.systemui.recents"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    iput-boolean v5, p0, Lcom/android/server/wm/ScreenFreezeAnimation;->mWaitForRecents:Z

    iget-object v2, p0, Lcom/android/server/wm/ScreenFreezeAnimation;->mTargetWindowList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/android/server/wm/ScreenFreezeAnimation;->executeScreenFreezeAniamtion()V

    return-void

    :cond_0
    iget-boolean v2, p0, Lcom/android/server/wm/ScreenFreezeAnimation;->mCheckFitToScreen:Z

    if-eqz v2, :cond_2

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getStackId()I

    move-result v2

    const/4 v3, 0x3

    if-eq v2, v3, :cond_1

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getStackId()I

    move-result v2

    if-ne v2, v4, :cond_2

    :cond_1
    iget v2, p0, Lcom/android/server/wm/ScreenFreezeAnimation;->mDockBottom:I

    if-gez v2, :cond_2

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getStackId()I

    move-result v2

    if-ne v2, v4, :cond_2

    iget-object v2, p1, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    iget-object v3, p0, Lcom/android/server/wm/ScreenFreezeAnimation;->mDisplayRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    if-ge v2, v3, :cond_2

    return-void

    :cond_2
    iget-object v2, p0, Lcom/android/server/wm/ScreenFreezeAnimation;->mTargetWindowList:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    sget-boolean v2, Lcom/android/server/wm/ScreenFreezeAnimation;->DEBUG:Z

    if-eqz v2, :cond_3

    const-string/jumbo v2, "ScreenFreezeAnimation"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setWindowDrawn : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x7

    invoke-static {v4}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    iget-object v2, p1, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget-object v2, v2, Lcom/android/server/wm/AppWindowToken;->allAppWindows:Lcom/android/server/wm/WindowList;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_4
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/WindowState;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->hasDrawnLw()Z

    move-result v2

    if-eqz v2, :cond_4

    iget-boolean v2, v0, Lcom/android/server/wm/WindowState;->mWillReplaceWindow:Z

    if-nez v2, :cond_4

    iget-boolean v2, v0, Lcom/android/server/wm/WindowState;->mRemoveOnExit:Z

    if-nez v2, :cond_4

    iget-object v2, p0, Lcom/android/server/wm/ScreenFreezeAnimation;->mTargetWindowList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    sget-boolean v2, Lcom/android/server/wm/ScreenFreezeAnimation;->DEBUG:Z

    if-eqz v2, :cond_4

    const-string/jumbo v2, "ScreenFreezeAnimation"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setWindowDrawn, allDrawn : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_5
    iget-object v2, p1, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget-boolean v2, v2, Lcom/android/server/wm/AppWindowToken;->allDrawn:Z

    if-nez v2, :cond_6

    iget-object v2, p1, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iput-object v2, p0, Lcom/android/server/wm/ScreenFreezeAnimation;->mWaitingAppToken:Lcom/android/server/wm/AppWindowToken;

    :cond_6
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getTask()Lcom/android/server/wm/Task;

    move-result-object v2

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/android/server/wm/ScreenFreezeAnimation;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mMultiWindowManagerInternal:Lcom/android/server/wm/IMultiWindowManagerInternalBridge;

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getTask()Lcom/android/server/wm/Task;

    move-result-object v3

    iget v3, v3, Lcom/android/server/wm/Task;->mTaskId:I

    invoke-interface {v2, v3, v5}, Lcom/android/server/wm/IMultiWindowManagerInternalBridge;->setSnapWindowDeferAnimation(IZ)Z

    :cond_7
    iget-object v2, p0, Lcom/android/server/wm/ScreenFreezeAnimation;->mTargetWindowList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_8

    iget-boolean v2, p0, Lcom/android/server/wm/ScreenFreezeAnimation;->mWaitForRecents:Z

    if-eqz v2, :cond_9

    :cond_8
    :goto_1
    return-void

    :cond_9
    iget-object v2, p0, Lcom/android/server/wm/ScreenFreezeAnimation;->mWaitingAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v2, :cond_a

    iget-object v2, p0, Lcom/android/server/wm/ScreenFreezeAnimation;->mWaitingAppToken:Lcom/android/server/wm/AppWindowToken;

    iget-boolean v2, v2, Lcom/android/server/wm/AppWindowToken;->allDrawn:Z

    if-eqz v2, :cond_8

    :cond_a
    invoke-virtual {p0}, Lcom/android/server/wm/ScreenFreezeAnimation;->executeScreenFreezeAniamtion()V

    goto :goto_1
.end method

.method public stepAnimationLocked(J)Z
    .locals 3

    iget-object v1, p0, Lcom/android/server/wm/ScreenFreezeAnimation;->mFreezeSurface:Lcom/android/server/wm/ScreenFreezeAnimation$ScreenFreezeSurface;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/wm/ScreenFreezeAnimation;->mAnimation:Landroid/view/animation/Animation;

    if-nez v1, :cond_1

    :cond_0
    const/4 v1, 0x0

    return v1

    :cond_1
    iget-boolean v1, p0, Lcom/android/server/wm/ScreenFreezeAnimation;->mAnimRunning:Z

    if-nez v1, :cond_2

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/wm/ScreenFreezeAnimation;->mAnimRunning:Z

    iput-wide p1, p0, Lcom/android/server/wm/ScreenFreezeAnimation;->mStartTime:J

    iget-object v1, p0, Lcom/android/server/wm/ScreenFreezeAnimation;->mAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v1, p1, p2}, Landroid/view/animation/Animation;->setStartTime(J)V

    :cond_2
    iget-object v1, p0, Lcom/android/server/wm/ScreenFreezeAnimation;->mTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v1}, Landroid/view/animation/Transformation;->clear()V

    iget-object v1, p0, Lcom/android/server/wm/ScreenFreezeAnimation;->mAnimation:Landroid/view/animation/Animation;

    iget-object v2, p0, Lcom/android/server/wm/ScreenFreezeAnimation;->mTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v1, p1, p2, v2}, Landroid/view/animation/Animation;->getTransformation(JLandroid/view/animation/Transformation;)Z

    move-result v0

    iget-object v1, p0, Lcom/android/server/wm/ScreenFreezeAnimation;->mFreezeSurface:Lcom/android/server/wm/ScreenFreezeAnimation$ScreenFreezeSurface;

    iget-object v2, p0, Lcom/android/server/wm/ScreenFreezeAnimation;->mTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v1, v2}, Lcom/android/server/wm/ScreenFreezeAnimation$ScreenFreezeSurface;->setAnimationTransform(Landroid/view/animation/Transformation;)V

    return v0
.end method

.method public timeout()V
    .locals 3

    const-string/jumbo v0, "ScreenFreezeAnimation"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "timeout, mFreezeSurface="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wm/ScreenFreezeAnimation;->mFreezeSurface:Lcom/android/server/wm/ScreenFreezeAnimation$ScreenFreezeSurface;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/server/wm/ScreenFreezeAnimation;->isAnimationSet()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/wm/ScreenFreezeAnimation;->executeScreenFreezeAniamtion()V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wm/ScreenFreezeAnimation;->clearScreenFreezAnimation()V

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "ScreenFreezeSurface"

    return-object v0
.end method
