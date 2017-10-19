.class public Lcom/samsung/android/app/SemMultiWindowManager;
.super Ljava/lang/Object;
.source "SemMultiWindowManager.java"


# static fields
.field public static final DOCKED_SIZE_DEFAULT:I = 0x0

.field public static final DOCKED_SIZE_MAXIMAL:I = 0x2

.field public static final DOCKED_SIZE_MINIMAL:I = 0x1

.field public static final MODE_FREEFORM:I = 0x1

.field public static final MODE_NONE:I = 0x0

.field public static final MODE_PICTURE_IN_PICTURE:I = 0x4

.field public static final MODE_SPLIT_SCREEN:I = 0x2

.field public static final SNAP_WINDOW_GUIDE_VIEW_RATIO_16_9:I = 0x2

.field public static final SNAP_WINDOW_GUIDE_VIEW_RATIO_21_9:I = 0x3

.field public static final SNAP_WINDOW_GUIDE_VIEW_SIZE_DEFAULT:I = 0x0

.field public static final SNAP_WINDOW_GUIDE_VIEW_SIZE_MINIMAL:I = 0x1

.field private static final TAG:Ljava/lang/String; = "SemMultiWindowManager"


# instance fields
.field private mMultiWindowManager:Lcom/samsung/android/bridge/multiwindow/MultiWindowManagerBridge;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/samsung/android/bridge/multiwindow/MultiWindowManagerBridge;

    invoke-direct {v0}, Lcom/samsung/android/bridge/multiwindow/MultiWindowManagerBridge;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/SemMultiWindowManager;->mMultiWindowManager:Lcom/samsung/android/bridge/multiwindow/MultiWindowManagerBridge;

    return-void
.end method


# virtual methods
.method public getMode()I
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/app/SemMultiWindowManager;->mMultiWindowManager:Lcom/samsung/android/bridge/multiwindow/MultiWindowManagerBridge;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/bridge/multiwindow/MultiWindowManagerBridge;->getMultiWindowModeStates(I)I

    move-result v0

    return v0
.end method

.method public isResizable(Landroid/content/pm/ResolveInfo;)Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/SemMultiWindowManager;->mMultiWindowManager:Lcom/samsung/android/bridge/multiwindow/MultiWindowManagerBridge;

    invoke-virtual {v0, p1}, Lcom/samsung/android/bridge/multiwindow/MultiWindowManagerBridge;->isResizable(Landroid/content/pm/ResolveInfo;)Z

    move-result v0

    return v0
.end method

.method public setMultiWindowEnabled(Ljava/lang/String;Z)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/app/SemMultiWindowManager;->mMultiWindowManager:Lcom/samsung/android/bridge/multiwindow/MultiWindowManagerBridge;

    const-string/jumbo v1, "SEM_API"

    invoke-virtual {v0, p1, v1, p2}, Lcom/samsung/android/bridge/multiwindow/MultiWindowManagerBridge;->setMultiWindowEnabled(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public showSnapWindowGuideView(I)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/SemMultiWindowManager;->mMultiWindowManager:Lcom/samsung/android/bridge/multiwindow/MultiWindowManagerBridge;

    invoke-virtual {v0, p1}, Lcom/samsung/android/bridge/multiwindow/MultiWindowManagerBridge;->showSnapWindowGuideView(I)V

    return-void
.end method

.method public startPairActivities(Landroid/content/Context;Landroid/content/Intent;Landroid/content/Intent;I)V
    .locals 7

    const/4 v5, 0x0

    iget-object v0, p0, Lcom/samsung/android/app/SemMultiWindowManager;->mMultiWindowManager:Lcom/samsung/android/bridge/multiwindow/MultiWindowManagerBridge;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object v6, v5

    invoke-virtual/range {v0 .. v6}, Lcom/samsung/android/bridge/multiwindow/MultiWindowManagerBridge;->startPairActivities(Landroid/content/Context;Landroid/content/Intent;Landroid/content/Intent;ILandroid/os/UserHandle;Landroid/os/UserHandle;)V

    return-void
.end method

.method public startPairActivitiesAsUser(Landroid/content/Context;Landroid/content/Intent;Landroid/content/Intent;ILandroid/os/UserHandle;Landroid/os/UserHandle;)V
    .locals 7

    iget-object v0, p0, Lcom/samsung/android/app/SemMultiWindowManager;->mMultiWindowManager:Lcom/samsung/android/bridge/multiwindow/MultiWindowManagerBridge;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/samsung/android/bridge/multiwindow/MultiWindowManagerBridge;->startPairActivities(Landroid/content/Context;Landroid/content/Intent;Landroid/content/Intent;ILandroid/os/UserHandle;Landroid/os/UserHandle;)V

    return-void
.end method
