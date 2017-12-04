.class Lcom/android/systemui/recents/views/TaskStackView$10;
.super Ljava/lang/Object;
.source "TaskStackView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/recents/views/TaskStackView;->onBusEvent(Lcom/android/systemui/recents/events/activity/MultiWindowStateChangedEvent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/recents/views/TaskStackView;

.field final synthetic val$event:Lcom/android/systemui/recents/events/activity/MultiWindowStateChangedEvent;


# direct methods
.method constructor <init>(Lcom/android/systemui/recents/views/TaskStackView;Lcom/android/systemui/recents/events/activity/MultiWindowStateChangedEvent;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/recents/views/TaskStackView$10;->this$0:Lcom/android/systemui/recents/views/TaskStackView;

    iput-object p2, p0, Lcom/android/systemui/recents/views/TaskStackView$10;->val$event:Lcom/android/systemui/recents/events/activity/MultiWindowStateChangedEvent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    const/4 v7, 0x1

    const/4 v6, 0x0

    iget-object v3, p0, Lcom/android/systemui/recents/views/TaskStackView$10;->this$0:Lcom/android/systemui/recents/views/TaskStackView;

    invoke-static {v3}, Lcom/android/systemui/recents/views/TaskStackView;->-get0(Lcom/android/systemui/recents/views/TaskStackView;)Lcom/android/systemui/recents/views/TaskStackAnimationHelper;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/recents/views/TaskStackView$10;->val$event:Lcom/android/systemui/recents/events/activity/MultiWindowStateChangedEvent;

    iget-object v4, v4, Lcom/android/systemui/recents/events/activity/MultiWindowStateChangedEvent;->stack:Lcom/android/systemui/recents/model/TaskStack;

    iget-object v5, p0, Lcom/android/systemui/recents/views/TaskStackView$10;->val$event:Lcom/android/systemui/recents/events/activity/MultiWindowStateChangedEvent;

    invoke-virtual {v5}, Lcom/android/systemui/recents/events/activity/MultiWindowStateChangedEvent;->getAnimationTrigger()Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->startNewStackScrollAnimation(Lcom/android/systemui/recents/model/TaskStack;Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;)V

    iget-object v3, p0, Lcom/android/systemui/recents/views/TaskStackView$10;->val$event:Lcom/android/systemui/recents/events/activity/MultiWindowStateChangedEvent;

    invoke-virtual {v3}, Lcom/android/systemui/recents/events/activity/MultiWindowStateChangedEvent;->getAnimationTrigger()Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;->decrement()V

    sget-boolean v3, Lcom/android/systemui/recents/RecentsDebugFlags$Static;->EnableCloseAllLayout:Z

    if-eqz v3, :cond_0

    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v3

    new-instance v4, Lcom/android/systemui/recents/events/ui/ToggleRecentsCloseAllButtonEvent;

    invoke-direct {v4, v7}, Lcom/android/systemui/recents/events/ui/ToggleRecentsCloseAllButtonEvent;-><init>(Z)V

    invoke-virtual {v3, v4}, Lcom/android/systemui/recents/events/EventBus;->send(Lcom/android/systemui/recents/events/EventBus$Event;)V

    :cond_0
    sget-boolean v3, Lcom/android/systemui/recents/RecentsDebugFlags$Static;->EnableSnapView:Z

    if-nez v3, :cond_1

    :cond_1
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getConfiguration()Lcom/android/systemui/recents/RecentsConfiguration;

    move-result-object v3

    iget-boolean v3, v3, Lcom/android/systemui/recents/RecentsConfiguration;->isInLockTaskEditMode:Z

    if-eqz v3, :cond_3

    :cond_2
    return-void

    :cond_3
    iget-object v3, p0, Lcom/android/systemui/recents/views/TaskStackView$10;->this$0:Lcom/android/systemui/recents/views/TaskStackView;

    invoke-virtual {v3}, Lcom/android/systemui/recents/views/TaskStackView;->getTaskViews()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    :goto_0
    if-ltz v0, :cond_2

    iget-object v3, p0, Lcom/android/systemui/recents/views/TaskStackView$10;->this$0:Lcom/android/systemui/recents/views/TaskStackView;

    invoke-virtual {v3}, Lcom/android/systemui/recents/views/TaskStackView;->getTaskViews()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/recents/views/TaskView;

    add-int/lit8 v3, v1, -0x1

    if-ne v0, v3, :cond_5

    iput-boolean v7, v2, Lcom/android/systemui/recents/views/TaskView;->mFrontMostTaskView:Z

    iget-object v3, v2, Lcom/android/systemui/recents/views/TaskView;->mHeaderView:Lcom/android/systemui/recents/views/TaskViewHeader;

    invoke-virtual {v3}, Lcom/android/systemui/recents/views/TaskViewHeader;->showSnapButton()V

    invoke-virtual {v2, v6, v6}, Lcom/android/systemui/recents/views/TaskView;->showScreenRatioButton(ZI)V

    :cond_4
    :goto_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_5
    iget-boolean v3, v2, Lcom/android/systemui/recents/views/TaskView;->mFrontMostTaskView:Z

    if-eqz v3, :cond_4

    iput-boolean v6, v2, Lcom/android/systemui/recents/views/TaskView;->mFrontMostTaskView:Z

    iget-object v3, v2, Lcom/android/systemui/recents/views/TaskView;->mHeaderView:Lcom/android/systemui/recents/views/TaskViewHeader;

    invoke-virtual {v3}, Lcom/android/systemui/recents/views/TaskViewHeader;->hideSnapButton()V

    const/4 v3, 0x0

    invoke-virtual {v2, v6, v6, v6, v3}, Lcom/android/systemui/recents/views/TaskView;->hideScreenRatioButton(ZIZLandroid/animation/Animator$AnimatorListener;)V

    goto :goto_1
.end method
