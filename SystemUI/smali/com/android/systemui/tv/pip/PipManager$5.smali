.class Lcom/android/systemui/tv/pip/PipManager$5;
.super Lcom/android/systemui/recents/misc/SystemServicesProxy$TaskStackListener;
.source "PipManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/tv/pip/PipManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/tv/pip/PipManager;


# direct methods
.method constructor <init>(Lcom/android/systemui/tv/pip/PipManager;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/tv/pip/PipManager$5;->this$0:Lcom/android/systemui/tv/pip/PipManager;

    invoke-direct {p0}, Lcom/android/systemui/recents/misc/SystemServicesProxy$TaskStackListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onActivityPinned()V
    .locals 7

    const/4 v6, 0x1

    const/4 v5, 0x0

    iget-object v2, p0, Lcom/android/systemui/tv/pip/PipManager$5;->this$0:Lcom/android/systemui/tv/pip/PipManager;

    invoke-static {v2}, Lcom/android/systemui/tv/pip/PipManager;->-wrap0(Lcom/android/systemui/tv/pip/PipManager;)Landroid/app/ActivityManager$StackInfo;

    move-result-object v1

    if-nez v1, :cond_0

    const-string/jumbo v2, "PipManager"

    const-string/jumbo v3, "Cannot find pinned stack"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v2, p0, Lcom/android/systemui/tv/pip/PipManager$5;->this$0:Lcom/android/systemui/tv/pip/PipManager;

    iget-object v3, v1, Landroid/app/ActivityManager$StackInfo;->taskIds:[I

    iget-object v4, v1, Landroid/app/ActivityManager$StackInfo;->taskIds:[I

    array-length v4, v4

    add-int/lit8 v4, v4, -0x1

    aget v3, v3, v4

    invoke-static {v2, v3}, Lcom/android/systemui/tv/pip/PipManager;->-set3(Lcom/android/systemui/tv/pip/PipManager;I)I

    iget-object v2, p0, Lcom/android/systemui/tv/pip/PipManager$5;->this$0:Lcom/android/systemui/tv/pip/PipManager;

    iget-object v3, v1, Landroid/app/ActivityManager$StackInfo;->taskNames:[Ljava/lang/String;

    iget-object v4, v1, Landroid/app/ActivityManager$StackInfo;->taskNames:[Ljava/lang/String;

    array-length v4, v4

    add-int/lit8 v4, v4, -0x1

    aget-object v3, v3, v4

    invoke-static {v3}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/systemui/tv/pip/PipManager;->-set2(Lcom/android/systemui/tv/pip/PipManager;Landroid/content/ComponentName;)Landroid/content/ComponentName;

    iget-object v2, p0, Lcom/android/systemui/tv/pip/PipManager$5;->this$0:Lcom/android/systemui/tv/pip/PipManager;

    invoke-static {v2, v6}, Lcom/android/systemui/tv/pip/PipManager;->-set4(Lcom/android/systemui/tv/pip/PipManager;I)I

    iget-object v2, p0, Lcom/android/systemui/tv/pip/PipManager$5;->this$0:Lcom/android/systemui/tv/pip/PipManager;

    iget-object v3, p0, Lcom/android/systemui/tv/pip/PipManager$5;->this$0:Lcom/android/systemui/tv/pip/PipManager;

    invoke-static {v3}, Lcom/android/systemui/tv/pip/PipManager;->-get4(Lcom/android/systemui/tv/pip/PipManager;)Landroid/graphics/Rect;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/systemui/tv/pip/PipManager;->-set0(Lcom/android/systemui/tv/pip/PipManager;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/android/systemui/tv/pip/PipManager$5;->this$0:Lcom/android/systemui/tv/pip/PipManager;

    invoke-static {v2}, Lcom/android/systemui/tv/pip/PipManager;->-wrap4(Lcom/android/systemui/tv/pip/PipManager;)V

    iget-object v2, p0, Lcom/android/systemui/tv/pip/PipManager$5;->this$0:Lcom/android/systemui/tv/pip/PipManager;

    invoke-static {v2}, Lcom/android/systemui/tv/pip/PipManager;->-get3(Lcom/android/systemui/tv/pip/PipManager;)Landroid/media/session/MediaSessionManager;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/tv/pip/PipManager$5;->this$0:Lcom/android/systemui/tv/pip/PipManager;

    invoke-static {v3}, Lcom/android/systemui/tv/pip/PipManager;->-get0(Lcom/android/systemui/tv/pip/PipManager;)Landroid/media/session/MediaSessionManager$OnActiveSessionsChangedListener;

    move-result-object v3

    invoke-virtual {v2, v3, v5}, Landroid/media/session/MediaSessionManager;->addOnActiveSessionsChangedListener(Landroid/media/session/MediaSessionManager$OnActiveSessionsChangedListener;Landroid/content/ComponentName;)V

    iget-object v2, p0, Lcom/android/systemui/tv/pip/PipManager$5;->this$0:Lcom/android/systemui/tv/pip/PipManager;

    iget-object v3, p0, Lcom/android/systemui/tv/pip/PipManager$5;->this$0:Lcom/android/systemui/tv/pip/PipManager;

    invoke-static {v3}, Lcom/android/systemui/tv/pip/PipManager;->-get3(Lcom/android/systemui/tv/pip/PipManager;)Landroid/media/session/MediaSessionManager;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/media/session/MediaSessionManager;->getActiveSessions(Landroid/content/ComponentName;)Ljava/util/List;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/systemui/tv/pip/PipManager;->-wrap7(Lcom/android/systemui/tv/pip/PipManager;Ljava/util/List;)V

    iget-object v2, p0, Lcom/android/systemui/tv/pip/PipManager$5;->this$0:Lcom/android/systemui/tv/pip/PipManager;

    invoke-static {v2}, Lcom/android/systemui/tv/pip/PipManager;->-get5(Lcom/android/systemui/tv/pip/PipManager;)Lcom/android/systemui/tv/pip/PipRecentsOverlayManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/systemui/tv/pip/PipRecentsOverlayManager;->isRecentsShown()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/systemui/tv/pip/PipManager$5;->this$0:Lcom/android/systemui/tv/pip/PipManager;

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Lcom/android/systemui/tv/pip/PipManager;->resizePinnedStack(I)V

    :cond_1
    iget-object v2, p0, Lcom/android/systemui/tv/pip/PipManager$5;->this$0:Lcom/android/systemui/tv/pip/PipManager;

    invoke-static {v2}, Lcom/android/systemui/tv/pip/PipManager;->-get2(Lcom/android/systemui/tv/pip/PipManager;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    :goto_0
    if-ltz v0, :cond_2

    iget-object v2, p0, Lcom/android/systemui/tv/pip/PipManager$5;->this$0:Lcom/android/systemui/tv/pip/PipManager;

    invoke-static {v2}, Lcom/android/systemui/tv/pip/PipManager;->-get2(Lcom/android/systemui/tv/pip/PipManager;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/tv/pip/PipManager$Listener;

    invoke-interface {v2}, Lcom/android/systemui/tv/pip/PipManager$Listener;->onPipEntered()V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/android/systemui/tv/pip/PipManager$5;->this$0:Lcom/android/systemui/tv/pip/PipManager;

    invoke-static {v2, v6}, Lcom/android/systemui/tv/pip/PipManager;->-wrap8(Lcom/android/systemui/tv/pip/PipManager;Z)V

    return-void
.end method

.method public onPinnedActivityRestartAttempt()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/tv/pip/PipManager$5;->this$0:Lcom/android/systemui/tv/pip/PipManager;

    invoke-virtual {v0}, Lcom/android/systemui/tv/pip/PipManager;->movePipToFullscreen()V

    return-void
.end method

.method public onPinnedStackAnimationEnded()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/tv/pip/PipManager$5;->this$0:Lcom/android/systemui/tv/pip/PipManager;

    invoke-static {v0}, Lcom/android/systemui/tv/pip/PipManager;->-get8(Lcom/android/systemui/tv/pip/PipManager;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/android/systemui/tv/pip/PipManager$5;->this$0:Lcom/android/systemui/tv/pip/PipManager;

    invoke-static {v0}, Lcom/android/systemui/tv/pip/PipManager;->-get5(Lcom/android/systemui/tv/pip/PipManager;)Lcom/android/systemui/tv/pip/PipRecentsOverlayManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/tv/pip/PipRecentsOverlayManager;->isRecentsShown()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/tv/pip/PipManager$5;->this$0:Lcom/android/systemui/tv/pip/PipManager;

    invoke-static {v0}, Lcom/android/systemui/tv/pip/PipManager;->-wrap6(Lcom/android/systemui/tv/pip/PipManager;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/tv/pip/PipManager$5;->this$0:Lcom/android/systemui/tv/pip/PipManager;

    iget-object v1, p0, Lcom/android/systemui/tv/pip/PipManager$5;->this$0:Lcom/android/systemui/tv/pip/PipManager;

    invoke-static {v1}, Lcom/android/systemui/tv/pip/PipManager;->-get8(Lcom/android/systemui/tv/pip/PipManager;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/tv/pip/PipManager;->resizePinnedStack(I)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/android/systemui/tv/pip/PipManager$5;->this$0:Lcom/android/systemui/tv/pip/PipManager;

    invoke-static {v0}, Lcom/android/systemui/tv/pip/PipManager;->-get5(Lcom/android/systemui/tv/pip/PipManager;)Lcom/android/systemui/tv/pip/PipRecentsOverlayManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/tv/pip/PipRecentsOverlayManager;->addPipRecentsOverlayView()V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/android/systemui/tv/pip/PipManager$5;->this$0:Lcom/android/systemui/tv/pip/PipManager;

    invoke-static {v0}, Lcom/android/systemui/tv/pip/PipManager;->-wrap5(Lcom/android/systemui/tv/pip/PipManager;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public onTaskStackChanged()V
    .locals 8

    const/4 v7, 0x1

    const/4 v6, 0x0

    iget-object v4, p0, Lcom/android/systemui/tv/pip/PipManager$5;->this$0:Lcom/android/systemui/tv/pip/PipManager;

    invoke-static {v4}, Lcom/android/systemui/tv/pip/PipManager;->-get8(Lcom/android/systemui/tv/pip/PipManager;)I

    move-result v4

    if-eqz v4, :cond_4

    const/4 v1, 0x0

    iget-object v4, p0, Lcom/android/systemui/tv/pip/PipManager$5;->this$0:Lcom/android/systemui/tv/pip/PipManager;

    invoke-static {v4}, Lcom/android/systemui/tv/pip/PipManager;->-wrap0(Lcom/android/systemui/tv/pip/PipManager;)Landroid/app/ActivityManager$StackInfo;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v4, v3, Landroid/app/ActivityManager$StackInfo;->taskIds:[I

    if-nez v4, :cond_1

    :cond_0
    const-string/jumbo v4, "PipManager"

    const-string/jumbo v5, "There is nothing in pinned stack"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/android/systemui/tv/pip/PipManager$5;->this$0:Lcom/android/systemui/tv/pip/PipManager;

    invoke-static {v4, v6}, Lcom/android/systemui/tv/pip/PipManager;->-wrap2(Lcom/android/systemui/tv/pip/PipManager;Z)V

    return-void

    :cond_1
    iget-object v4, v3, Landroid/app/ActivityManager$StackInfo;->taskIds:[I

    array-length v4, v4

    add-int/lit8 v2, v4, -0x1

    :goto_0
    if-ltz v2, :cond_2

    iget-object v4, v3, Landroid/app/ActivityManager$StackInfo;->taskIds:[I

    aget v4, v4, v2

    iget-object v5, p0, Lcom/android/systemui/tv/pip/PipManager$5;->this$0:Lcom/android/systemui/tv/pip/PipManager;

    invoke-static {v5}, Lcom/android/systemui/tv/pip/PipManager;->-get6(Lcom/android/systemui/tv/pip/PipManager;)I

    move-result v5

    if-ne v4, v5, :cond_3

    const/4 v1, 0x1

    :cond_2
    if-nez v1, :cond_4

    iget-object v4, p0, Lcom/android/systemui/tv/pip/PipManager$5;->this$0:Lcom/android/systemui/tv/pip/PipManager;

    invoke-static {v4, v7}, Lcom/android/systemui/tv/pip/PipManager;->-wrap2(Lcom/android/systemui/tv/pip/PipManager;Z)V

    return-void

    :cond_3
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_4
    iget-object v4, p0, Lcom/android/systemui/tv/pip/PipManager$5;->this$0:Lcom/android/systemui/tv/pip/PipManager;

    invoke-static {v4}, Lcom/android/systemui/tv/pip/PipManager;->-get8(Lcom/android/systemui/tv/pip/PipManager;)I

    move-result v4

    if-ne v4, v7, :cond_5

    iget-object v4, p0, Lcom/android/systemui/tv/pip/PipManager$5;->this$0:Lcom/android/systemui/tv/pip/PipManager;

    invoke-static {v4}, Lcom/android/systemui/tv/pip/PipManager;->-wrap1(Lcom/android/systemui/tv/pip/PipManager;)Z

    move-result v4

    if-eqz v4, :cond_6

    iget-object v4, p0, Lcom/android/systemui/tv/pip/PipManager$5;->this$0:Lcom/android/systemui/tv/pip/PipManager;

    invoke-static {v4}, Lcom/android/systemui/tv/pip/PipManager;->-get7(Lcom/android/systemui/tv/pip/PipManager;)Landroid/graphics/Rect;

    move-result-object v0

    :goto_1
    iget-object v4, p0, Lcom/android/systemui/tv/pip/PipManager$5;->this$0:Lcom/android/systemui/tv/pip/PipManager;

    invoke-static {v4}, Lcom/android/systemui/tv/pip/PipManager;->-get4(Lcom/android/systemui/tv/pip/PipManager;)Landroid/graphics/Rect;

    move-result-object v4

    if-eq v4, v0, :cond_5

    iget-object v4, p0, Lcom/android/systemui/tv/pip/PipManager$5;->this$0:Lcom/android/systemui/tv/pip/PipManager;

    invoke-static {v4, v0}, Lcom/android/systemui/tv/pip/PipManager;->-set1(Lcom/android/systemui/tv/pip/PipManager;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    iget-object v4, p0, Lcom/android/systemui/tv/pip/PipManager$5;->this$0:Lcom/android/systemui/tv/pip/PipManager;

    invoke-virtual {v4, v7}, Lcom/android/systemui/tv/pip/PipManager;->resizePinnedStack(I)V

    :cond_5
    return-void

    :cond_6
    iget-object v4, p0, Lcom/android/systemui/tv/pip/PipManager$5;->this$0:Lcom/android/systemui/tv/pip/PipManager;

    invoke-static {v4}, Lcom/android/systemui/tv/pip/PipManager;->-get1(Lcom/android/systemui/tv/pip/PipManager;)Landroid/graphics/Rect;

    move-result-object v0

    goto :goto_1
.end method
