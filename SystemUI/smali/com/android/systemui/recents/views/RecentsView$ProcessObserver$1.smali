.class Lcom/android/systemui/recents/views/RecentsView$ProcessObserver$1;
.super Ljava/lang/Object;
.source "RecentsView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/recents/views/RecentsView$ProcessObserver;->onProcessDied(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/systemui/recents/views/RecentsView$ProcessObserver;

.field final synthetic val$pid:I


# direct methods
.method constructor <init>(Lcom/android/systemui/recents/views/RecentsView$ProcessObserver;I)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/recents/views/RecentsView$ProcessObserver$1;->this$1:Lcom/android/systemui/recents/views/RecentsView$ProcessObserver;

    iput p2, p0, Lcom/android/systemui/recents/views/RecentsView$ProcessObserver$1;->val$pid:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    iget-object v2, p0, Lcom/android/systemui/recents/views/RecentsView$ProcessObserver$1;->this$1:Lcom/android/systemui/recents/views/RecentsView$ProcessObserver;

    iget-object v2, v2, Lcom/android/systemui/recents/views/RecentsView$ProcessObserver;->this$0:Lcom/android/systemui/recents/views/RecentsView;

    invoke-static {v2}, Lcom/android/systemui/recents/views/RecentsView;->-get12(Lcom/android/systemui/recents/views/RecentsView;)Ljava/util/ArrayList;

    move-result-object v2

    iget v3, p0, Lcom/android/systemui/recents/views/RecentsView$ProcessObserver$1;->val$pid:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string/jumbo v2, "RecentsView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "ProcessObserver  : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/systemui/recents/views/RecentsView$ProcessObserver$1;->val$pid:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/systemui/recents/views/RecentsView$ProcessObserver$1;->this$1:Lcom/android/systemui/recents/views/RecentsView$ProcessObserver;

    iget-object v2, v2, Lcom/android/systemui/recents/views/RecentsView$ProcessObserver;->this$0:Lcom/android/systemui/recents/views/RecentsView;

    invoke-static {v2}, Lcom/android/systemui/recents/views/RecentsView;->-get12(Lcom/android/systemui/recents/views/RecentsView;)Ljava/util/ArrayList;

    move-result-object v2

    iget v3, p0, Lcom/android/systemui/recents/views/RecentsView$ProcessObserver$1;->val$pid:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v2, p0, Lcom/android/systemui/recents/views/RecentsView$ProcessObserver$1;->this$1:Lcom/android/systemui/recents/views/RecentsView$ProcessObserver;

    iget-object v2, v2, Lcom/android/systemui/recents/views/RecentsView$ProcessObserver;->this$0:Lcom/android/systemui/recents/views/RecentsView;

    invoke-static {v2}, Lcom/android/systemui/recents/views/RecentsView;->-get12(Lcom/android/systemui/recents/views/RecentsView;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/recents/views/RecentsView$ProcessObserver$1;->this$1:Lcom/android/systemui/recents/views/RecentsView$ProcessObserver;

    iget-object v3, v3, Lcom/android/systemui/recents/views/RecentsView$ProcessObserver;->this$0:Lcom/android/systemui/recents/views/RecentsView;

    invoke-static {v3}, Lcom/android/systemui/recents/views/RecentsView;->-get7(Lcom/android/systemui/recents/views/RecentsView;)Lcom/android/systemui/recents/views/RecentsView$ProcessObserver;

    move-result-object v3

    invoke-interface {v2, v3}, Landroid/app/IActivityManager;->unregisterProcessObserver(Landroid/app/IProcessObserver;)V

    iget-object v2, p0, Lcom/android/systemui/recents/views/RecentsView$ProcessObserver$1;->this$1:Lcom/android/systemui/recents/views/RecentsView$ProcessObserver;

    invoke-static {v2}, Lcom/android/systemui/recents/views/RecentsView$ProcessObserver;->-get0(Lcom/android/systemui/recents/views/RecentsView$ProcessObserver;)Ljava/lang/Runnable;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/systemui/recents/views/RecentsView$ProcessObserver$1;->this$1:Lcom/android/systemui/recents/views/RecentsView$ProcessObserver;

    invoke-static {v2}, Lcom/android/systemui/recents/views/RecentsView$ProcessObserver;->-get0(Lcom/android/systemui/recents/views/RecentsView$ProcessObserver;)Ljava/lang/Runnable;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/recents/views/RecentsView$ProcessObserver$1;->this$1:Lcom/android/systemui/recents/views/RecentsView$ProcessObserver;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/android/systemui/recents/views/RecentsView$ProcessObserver;->-set0(Lcom/android/systemui/recents/views/RecentsView$ProcessObserver;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    iget-object v2, p0, Lcom/android/systemui/recents/views/RecentsView$ProcessObserver$1;->this$1:Lcom/android/systemui/recents/views/RecentsView$ProcessObserver;

    iget-object v2, v2, Lcom/android/systemui/recents/views/RecentsView$ProcessObserver;->this$0:Lcom/android/systemui/recents/views/RecentsView;

    invoke-static {v2}, Lcom/android/systemui/recents/views/RecentsView;->-get3(Lcom/android/systemui/recents/views/RecentsView;)Landroid/os/Handler;

    move-result-object v2

    const-wide/16 v4, 0x190

    invoke-virtual {v2, v1, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
