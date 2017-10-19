.class Lcom/samsung/android/codecsolution/CodecSolutionManagerService$MultiWindowEventListener;
.super Lcom/samsung/android/multiwindow/IMultiWindowEventListener$Stub;
.source "CodecSolutionManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/codecsolution/CodecSolutionManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MultiWindowEventListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/codecsolution/CodecSolutionManagerService;


# direct methods
.method private constructor <init>(Lcom/samsung/android/codecsolution/CodecSolutionManagerService;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/codecsolution/CodecSolutionManagerService$MultiWindowEventListener;->this$0:Lcom/samsung/android/codecsolution/CodecSolutionManagerService;

    invoke-direct {p0}, Lcom/samsung/android/multiwindow/IMultiWindowEventListener$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/codecsolution/CodecSolutionManagerService;Lcom/samsung/android/codecsolution/CodecSolutionManagerService$MultiWindowEventListener;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/codecsolution/CodecSolutionManagerService$MultiWindowEventListener;-><init>(Lcom/samsung/android/codecsolution/CodecSolutionManagerService;)V

    return-void
.end method


# virtual methods
.method public onAutoResizeStateChanged(ILandroid/graphics/Rect;Landroid/graphics/Rect;Z)V
    .locals 0

    return-void
.end method

.method public onMultiWindowAppTransitionFinished()V
    .locals 0

    return-void
.end method

.method public onMultiWindowDockedMinimizedChanged(ZZLandroid/content/pm/ActivityInfo;)V
    .locals 0

    return-void
.end method

.method public onMultiWindowFocusChanged(II)V
    .locals 8

    const/4 v7, 0x2

    const/4 v5, 0x0

    iget-object v4, p0, Lcom/samsung/android/codecsolution/CodecSolutionManagerService$MultiWindowEventListener;->this$0:Lcom/samsung/android/codecsolution/CodecSolutionManagerService;

    invoke-static {v4, v5}, Lcom/samsung/android/codecsolution/CodecSolutionManagerService;->-set6(Lcom/samsung/android/codecsolution/CodecSolutionManagerService;Ljava/lang/String;)Ljava/lang/String;

    iget-object v4, p0, Lcom/samsung/android/codecsolution/CodecSolutionManagerService$MultiWindowEventListener;->this$0:Lcom/samsung/android/codecsolution/CodecSolutionManagerService;

    const/4 v5, 0x0

    invoke-static {v4, v5}, Lcom/samsung/android/codecsolution/CodecSolutionManagerService;->-set5(Lcom/samsung/android/codecsolution/CodecSolutionManagerService;Z)Z

    iget-object v4, p0, Lcom/samsung/android/codecsolution/CodecSolutionManagerService$MultiWindowEventListener;->this$0:Lcom/samsung/android/codecsolution/CodecSolutionManagerService;

    invoke-static {v4}, Lcom/samsung/android/codecsolution/CodecSolutionManagerService;->-get0(Lcom/samsung/android/codecsolution/CodecSolutionManagerService;)Landroid/app/ActivityManager;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v2

    if-nez v2, :cond_0

    const-string/jumbo v4, "CodecSolution"

    const-string/jumbo v5, "MultiWindowEventListener::runningTaskInfoList is null."

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    const-string/jumbo v4, "CodecSolution"

    const-string/jumbo v5, "MultiWindowEventListener::runningTaskInfoList is empty."

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    const/4 v1, 0x0

    const/4 v0, 0x0

    :goto_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-ge v0, v4, :cond_2

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_3

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/ActivityManager$RunningTaskInfo;

    iget v4, v4, Landroid/app/ActivityManager$RunningTaskInfo;->id:I

    if-ne v4, p2, :cond_3

    const-string/jumbo v4, "CodecSolution"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "index "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " matches with focusedTaskId. ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager$RunningTaskInfo;

    :cond_2
    if-nez v1, :cond_4

    const-string/jumbo v4, "CodecSolution"

    const-string/jumbo v5, "MultiWindowEventListener::runningTaskInfo is null."

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    iget-object v4, v1, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_5

    const-string/jumbo v4, "CodecSolution"

    const-string/jumbo v5, "MultiWindowEventListener::getPackageName is null."

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_5
    iget-object v4, p0, Lcom/samsung/android/codecsolution/CodecSolutionManagerService$MultiWindowEventListener;->this$0:Lcom/samsung/android/codecsolution/CodecSolutionManagerService;

    invoke-static {v4, v3}, Lcom/samsung/android/codecsolution/CodecSolutionManagerService;->-set6(Lcom/samsung/android/codecsolution/CodecSolutionManagerService;Ljava/lang/String;)Ljava/lang/String;

    iget v4, v1, Landroid/app/ActivityManager$RunningTaskInfo;->stackId:I

    if-ne v4, v7, :cond_6

    iget-object v4, p0, Lcom/samsung/android/codecsolution/CodecSolutionManagerService$MultiWindowEventListener;->this$0:Lcom/samsung/android/codecsolution/CodecSolutionManagerService;

    const/4 v5, 0x1

    invoke-static {v4, v5}, Lcom/samsung/android/codecsolution/CodecSolutionManagerService;->-set5(Lcom/samsung/android/codecsolution/CodecSolutionManagerService;Z)Z

    :cond_6
    return-void
.end method

.method public onMultiWindowScreenFreezeAnimationFinished()V
    .locals 0

    return-void
.end method

.method public onMultiWindowSettingChanged(Z)V
    .locals 0

    return-void
.end method

.method public onSnapWindowDismissed(Ljava/lang/String;)V
    .locals 0

    return-void
.end method
