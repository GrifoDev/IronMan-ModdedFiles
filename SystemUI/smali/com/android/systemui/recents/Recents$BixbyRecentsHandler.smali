.class public Lcom/android/systemui/recents/Recents$BixbyRecentsHandler;
.super Ljava/lang/Object;
.source "Recents.java"

# interfaces
.implements Lcom/android/systemui/recents/bixby/IBixbyRecentsHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/recents/Recents;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "BixbyRecentsHandler"
.end annotation


# instance fields
.field lastErrorNo:I

.field final synthetic this$0:Lcom/android/systemui/recents/Recents;


# direct methods
.method public constructor <init>(Lcom/android/systemui/recents/Recents;)V
    .locals 1

    iput-object p1, p0, Lcom/android/systemui/recents/Recents$BixbyRecentsHandler;->this$0:Lcom/android/systemui/recents/Recents;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/recents/Recents$BixbyRecentsHandler;->lastErrorNo:I

    return-void
.end method


# virtual methods
.method public getLastErrorNo()I
    .locals 1

    iget v0, p0, Lcom/android/systemui/recents/Recents$BixbyRecentsHandler;->lastErrorNo:I

    return v0
.end method

.method public isChangeableAppExist(Z)Z
    .locals 6

    const/4 v5, 0x0

    iget-object v4, p0, Lcom/android/systemui/recents/Recents$BixbyRecentsHandler;->this$0:Lcom/android/systemui/recents/Recents;

    invoke-static {v4}, Lcom/android/systemui/recents/Recents;->-get1(Lcom/android/systemui/recents/Recents;)Lcom/android/systemui/recents/RecentsImpl;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/systemui/recents/RecentsImpl;->getLastStack()Lcom/android/systemui/recents/model/TaskStack;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/android/systemui/recents/model/TaskStack;->getStackTasks()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/recents/model/Task;

    if-eqz p1, :cond_0

    invoke-virtual {v3}, Lcom/android/systemui/recents/model/Task;->isFreeformTask()Z

    move-result v4

    if-eqz v4, :cond_2

    :cond_0
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSystemServices()Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getScreenRatioState(Lcom/android/systemui/recents/model/Task;)I

    move-result v0

    const/4 v4, 0x2

    if-ne v0, v4, :cond_1

    const/4 v4, -0x1

    iput v4, p0, Lcom/android/systemui/recents/Recents$BixbyRecentsHandler;->lastErrorNo:I

    return v5

    :cond_1
    const/4 v4, 0x1

    return v4

    :cond_2
    const/4 v4, -0x2

    iput v4, p0, Lcom/android/systemui/recents/Recents$BixbyRecentsHandler;->lastErrorNo:I

    return v5
.end method
