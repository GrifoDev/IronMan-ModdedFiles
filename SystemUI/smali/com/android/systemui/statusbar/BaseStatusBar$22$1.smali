.class Lcom/android/systemui/statusbar/BaseStatusBar$22$1;
.super Ljava/lang/Object;
.source "BaseStatusBar.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/BaseStatusBar$22;->onLongClick(Landroid/view/View;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/systemui/statusbar/BaseStatusBar$22;

.field final synthetic val$guts:Lcom/android/systemui/statusbar/NotificationGuts;

.field final synthetic val$row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/BaseStatusBar$22;Lcom/android/systemui/statusbar/NotificationGuts;Lcom/android/systemui/statusbar/ExpandableNotificationRow;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/BaseStatusBar$22$1;->this$1:Lcom/android/systemui/statusbar/BaseStatusBar$22;

    iput-object p2, p0, Lcom/android/systemui/statusbar/BaseStatusBar$22$1;->val$guts:Lcom/android/systemui/statusbar/NotificationGuts;

    iput-object p3, p0, Lcom/android/systemui/statusbar/BaseStatusBar$22$1;->val$row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    const/4 v9, -0x1

    const-wide/high16 v10, 0x4000000000000000L    # 2.0

    const/4 v7, 0x1

    const/4 v6, 0x0

    iget-object v8, p0, Lcom/android/systemui/statusbar/BaseStatusBar$22$1;->this$1:Lcom/android/systemui/statusbar/BaseStatusBar$22;

    iget-object v8, v8, Lcom/android/systemui/statusbar/BaseStatusBar$22;->this$0:Lcom/android/systemui/statusbar/BaseStatusBar;

    invoke-virtual {v8, v9, v9, v6, v6}, Lcom/android/systemui/statusbar/BaseStatusBar;->dismissPopups(IIZZ)V

    iget-object v8, p0, Lcom/android/systemui/statusbar/BaseStatusBar$22$1;->val$guts:Lcom/android/systemui/statusbar/NotificationGuts;

    invoke-virtual {v8, v6}, Lcom/android/systemui/statusbar/NotificationGuts;->setVisibility(I)V

    iget-object v8, p0, Lcom/android/systemui/statusbar/BaseStatusBar$22$1;->val$guts:Lcom/android/systemui/statusbar/NotificationGuts;

    invoke-virtual {v8}, Lcom/android/systemui/statusbar/NotificationGuts;->getWidth()I

    move-result v8

    int-to-double v8, v8

    div-double v2, v8, v10

    iget-object v8, p0, Lcom/android/systemui/statusbar/BaseStatusBar$22$1;->val$guts:Lcom/android/systemui/statusbar/NotificationGuts;

    invoke-virtual {v8}, Lcom/android/systemui/statusbar/NotificationGuts;->getHeight()I

    move-result v8

    int-to-double v8, v8

    div-double v4, v8, v10

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v8

    double-to-float v1, v8

    iget-object v8, p0, Lcom/android/systemui/statusbar/BaseStatusBar$22$1;->val$guts:Lcom/android/systemui/statusbar/NotificationGuts;

    double-to-int v9, v2

    double-to-int v10, v4

    const/4 v11, 0x0

    invoke-static {v8, v9, v10, v11, v1}, Landroid/view/ViewAnimationUtils;->createCircularReveal(Landroid/view/View;IIFF)Landroid/animation/Animator;

    move-result-object v0

    const-wide/16 v8, 0x168

    invoke-virtual {v0, v8, v9}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    sget-object v8, Lcom/android/systemui/Interpolators;->LINEAR_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v8}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v8, Lcom/android/systemui/statusbar/BaseStatusBar$22$1$1;

    iget-object v9, p0, Lcom/android/systemui/statusbar/BaseStatusBar$22$1;->val$row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-direct {v8, p0, v9}, Lcom/android/systemui/statusbar/BaseStatusBar$22$1$1;-><init>(Lcom/android/systemui/statusbar/BaseStatusBar$22$1;Lcom/android/systemui/statusbar/ExpandableNotificationRow;)V

    invoke-virtual {v0, v8}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    iget-object v8, p0, Lcom/android/systemui/statusbar/BaseStatusBar$22$1;->val$guts:Lcom/android/systemui/statusbar/NotificationGuts;

    iget-object v9, p0, Lcom/android/systemui/statusbar/BaseStatusBar$22$1;->this$1:Lcom/android/systemui/statusbar/BaseStatusBar$22;

    iget-object v9, v9, Lcom/android/systemui/statusbar/BaseStatusBar$22;->this$0:Lcom/android/systemui/statusbar/BaseStatusBar;

    iget v9, v9, Lcom/android/systemui/statusbar/BaseStatusBar;->mState:I

    if-ne v9, v7, :cond_0

    move v6, v7

    :cond_0
    invoke-virtual {v8, v7, v6}, Lcom/android/systemui/statusbar/NotificationGuts;->setExposed(ZZ)V

    iget-object v6, p0, Lcom/android/systemui/statusbar/BaseStatusBar$22$1;->val$row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v6}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->closeRemoteInput()V

    iget-object v6, p0, Lcom/android/systemui/statusbar/BaseStatusBar$22$1;->val$row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v6, v7}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->notifyHeightChanged(Z)V

    sget-boolean v6, Lcom/android/systemui/statusbar/BaseStatusBar;->mIsDeskMode:Z

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/android/systemui/statusbar/BaseStatusBar$22$1;->this$1:Lcom/android/systemui/statusbar/BaseStatusBar$22;

    iget-object v6, v6, Lcom/android/systemui/statusbar/BaseStatusBar$22;->this$0:Lcom/android/systemui/statusbar/BaseStatusBar;

    iget-object v6, v6, Lcom/android/systemui/statusbar/BaseStatusBar;->mDeskPanel:Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanel;

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/android/systemui/statusbar/BaseStatusBar$22$1;->this$1:Lcom/android/systemui/statusbar/BaseStatusBar$22;

    iget-object v6, v6, Lcom/android/systemui/statusbar/BaseStatusBar$22;->this$0:Lcom/android/systemui/statusbar/BaseStatusBar;

    iget-object v6, v6, Lcom/android/systemui/statusbar/BaseStatusBar;->mDeskPanel:Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanel;

    invoke-virtual {v6}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanel;->resizeNotificationPanelHeight()V

    :cond_1
    iget-object v6, p0, Lcom/android/systemui/statusbar/BaseStatusBar$22$1;->this$1:Lcom/android/systemui/statusbar/BaseStatusBar$22;

    iget-object v6, v6, Lcom/android/systemui/statusbar/BaseStatusBar$22;->this$0:Lcom/android/systemui/statusbar/BaseStatusBar;

    iget-object v7, p0, Lcom/android/systemui/statusbar/BaseStatusBar$22$1;->val$guts:Lcom/android/systemui/statusbar/NotificationGuts;

    invoke-static {v6, v7}, Lcom/android/systemui/statusbar/BaseStatusBar;->-set1(Lcom/android/systemui/statusbar/BaseStatusBar;Lcom/android/systemui/statusbar/NotificationGuts;)Lcom/android/systemui/statusbar/NotificationGuts;

    return-void
.end method
