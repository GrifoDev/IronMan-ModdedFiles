.class Lcom/android/systemui/recents/views/RecentsView$15;
.super Ljava/lang/Object;
.source "RecentsView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/recents/views/RecentsView;->onBusEvent(Lcom/android/systemui/recents/events/activity/RequestScreenRatioTimeoutEvent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/recents/views/RecentsView;

.field final synthetic val$event:Lcom/android/systemui/recents/events/activity/RequestScreenRatioTimeoutEvent;


# direct methods
.method constructor <init>(Lcom/android/systemui/recents/views/RecentsView;Lcom/android/systemui/recents/events/activity/RequestScreenRatioTimeoutEvent;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/recents/views/RecentsView$15;->this$0:Lcom/android/systemui/recents/views/RecentsView;

    iput-object p2, p0, Lcom/android/systemui/recents/views/RecentsView$15;->val$event:Lcom/android/systemui/recents/events/activity/RequestScreenRatioTimeoutEvent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    const/4 v5, 0x0

    iget-object v1, p0, Lcom/android/systemui/recents/views/RecentsView$15;->this$0:Lcom/android/systemui/recents/views/RecentsView;

    invoke-static {v1}, Lcom/android/systemui/recents/views/RecentsView;->-get7(Lcom/android/systemui/recents/views/RecentsView;)Lcom/android/systemui/recents/views/RecentsView$ProcessObserver;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/recents/views/RecentsView$ProcessObserver;->getRunnable()Ljava/lang/Runnable;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/recents/views/RecentsView$15;->val$event:Lcom/android/systemui/recents/events/activity/RequestScreenRatioTimeoutEvent;

    iget-object v1, v1, Lcom/android/systemui/recents/events/activity/RequestScreenRatioTimeoutEvent;->runnable:Ljava/lang/Runnable;

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/recents/views/RecentsView$15;->this$0:Lcom/android/systemui/recents/views/RecentsView;

    invoke-static {v2}, Lcom/android/systemui/recents/views/RecentsView;->-get7(Lcom/android/systemui/recents/views/RecentsView;)Lcom/android/systemui/recents/views/RecentsView$ProcessObserver;

    move-result-object v2

    invoke-interface {v1, v2}, Landroid/app/IActivityManager;->unregisterProcessObserver(Landroid/app/IProcessObserver;)V

    iget-object v1, p0, Lcom/android/systemui/recents/views/RecentsView$15;->this$0:Lcom/android/systemui/recents/views/RecentsView;

    invoke-static {v1}, Lcom/android/systemui/recents/views/RecentsView;->-get7(Lcom/android/systemui/recents/views/RecentsView;)Lcom/android/systemui/recents/views/RecentsView$ProcessObserver;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/systemui/recents/views/RecentsView$ProcessObserver;->setRunnable(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v1, p0, Lcom/android/systemui/recents/views/RecentsView$15;->this$0:Lcom/android/systemui/recents/views/RecentsView;

    iget-object v2, p0, Lcom/android/systemui/recents/views/RecentsView$15;->val$event:Lcom/android/systemui/recents/events/activity/RequestScreenRatioTimeoutEvent;

    iget-object v2, v2, Lcom/android/systemui/recents/events/activity/RequestScreenRatioTimeoutEvent;->taskView:Lcom/android/systemui/recents/views/TaskView;

    iget-object v3, p0, Lcom/android/systemui/recents/views/RecentsView$15;->val$event:Lcom/android/systemui/recents/events/activity/RequestScreenRatioTimeoutEvent;

    iget-object v3, v3, Lcom/android/systemui/recents/events/activity/RequestScreenRatioTimeoutEvent;->task:Lcom/android/systemui/recents/model/Task;

    invoke-virtual {v1, v2, v3}, Lcom/android/systemui/recents/views/RecentsView;->changeConventionalMode(Lcom/android/systemui/recents/views/TaskView;Lcom/android/systemui/recents/model/Task;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/recents/views/RecentsView$15;->this$0:Lcom/android/systemui/recents/views/RecentsView;

    invoke-static {v1}, Lcom/android/systemui/recents/views/RecentsView;->-get1(Lcom/android/systemui/recents/views/RecentsView;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/recents/views/RecentsView$15;->this$0:Lcom/android/systemui/recents/views/RecentsView;

    invoke-static {v2}, Lcom/android/systemui/recents/views/RecentsView;->-get1(Lcom/android/systemui/recents/views/RecentsView;)Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/android/systemui/recents/views/RecentsView$15;->val$event:Lcom/android/systemui/recents/events/activity/RequestScreenRatioTimeoutEvent;

    iget-object v4, v4, Lcom/android/systemui/recents/events/activity/RequestScreenRatioTimeoutEvent;->task:Lcom/android/systemui/recents/model/Task;

    iget-object v4, v4, Lcom/android/systemui/recents/model/Task;->title:Ljava/lang/String;

    aput-object v4, v3, v5

    const v4, 0x7f0f06eb

    invoke-virtual {v2, v4, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    :cond_0
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getConfiguration()Lcom/android/systemui/recents/RecentsConfiguration;

    move-result-object v1

    iput-boolean v5, v1, Lcom/android/systemui/recents/RecentsConfiguration;->blockTouchAction:Z

    :cond_1
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method
