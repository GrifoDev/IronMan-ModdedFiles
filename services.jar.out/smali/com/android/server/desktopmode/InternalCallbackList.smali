.class public Lcom/android/server/desktopmode/InternalCallbackList;
.super Ljava/lang/Object;
.source "InternalCallbackList.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/desktopmode/InternalCallbackList$Data;
    }
.end annotation


# static fields
.field private static final DEFAULT_VALUE:I = -0x1


# instance fields
.field mDataList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/desktopmode/InternalCallbackList$Data;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/desktopmode/InternalCallbackList;->mDataList:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method add(IILcom/android/server/desktopmode/DesktopModeUiManager$InternalServiceCallback;)V
    .locals 2

    if-eqz p3, :cond_0

    iget-object v0, p0, Lcom/android/server/desktopmode/InternalCallbackList;->mDataList:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/server/desktopmode/InternalCallbackList$Data;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/android/server/desktopmode/InternalCallbackList$Data;-><init>(Lcom/android/server/desktopmode/InternalCallbackList;IILcom/android/server/desktopmode/DesktopModeUiManager$InternalServiceCallback;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method add(ILcom/android/server/desktopmode/DesktopModeUiManager$InternalServiceCallback;)V
    .locals 1

    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0, p2}, Lcom/android/server/desktopmode/InternalCallbackList;->add(IILcom/android/server/desktopmode/DesktopModeUiManager$InternalServiceCallback;)V

    return-void
.end method

.method add(Lcom/android/server/desktopmode/DesktopModeUiManager$InternalServiceCallback;)V
    .locals 1

    const/4 v0, -0x1

    invoke-virtual {p0, v0, v0, p1}, Lcom/android/server/desktopmode/InternalCallbackList;->add(IILcom/android/server/desktopmode/DesktopModeUiManager$InternalServiceCallback;)V

    return-void
.end method

.method clear()V
    .locals 1

    iget-object v0, p0, Lcom/android/server/desktopmode/InternalCallbackList;->mDataList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method notifyCallbacks()V
    .locals 3

    iget-object v2, p0, Lcom/android/server/desktopmode/InternalCallbackList;->mDataList:Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/desktopmode/InternalCallbackList$Data;

    iget-object v2, v0, Lcom/android/server/desktopmode/InternalCallbackList$Data;->mCallback:Lcom/android/server/desktopmode/DesktopModeUiManager$InternalServiceCallback;

    invoke-interface {v2}, Lcom/android/server/desktopmode/DesktopModeUiManager$InternalServiceCallback;->onServiceConnected()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/android/server/desktopmode/InternalCallbackList;->clear()V

    return-void
.end method

.method remove(I)V
    .locals 1

    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/server/desktopmode/InternalCallbackList;->remove(II)V

    return-void
.end method

.method remove(II)V
    .locals 4

    const/4 v3, -0x1

    if-ne p1, v3, :cond_0

    return-void

    :cond_0
    iget-object v2, p0, Lcom/android/server/desktopmode/InternalCallbackList;->mDataList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    if-eq p2, v3, :cond_1

    const/16 v2, 0x65

    if-ne p2, v2, :cond_3

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/desktopmode/InternalCallbackList$Data;

    if-nez p1, :cond_2

    iget v2, v0, Lcom/android/server/desktopmode/InternalCallbackList$Data;->mType:I

    invoke-static {v2}, Lcom/samsung/android/desktopmode/DesktopModeUiConstants;->checkDialogType(I)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_2
    iget v2, v0, Lcom/android/server/desktopmode/InternalCallbackList$Data;->mType:I

    if-ne v2, p1, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_3
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/desktopmode/InternalCallbackList$Data;

    iget v2, v0, Lcom/android/server/desktopmode/InternalCallbackList$Data;->mType:I

    if-ne v2, p1, :cond_3

    iget v2, v0, Lcom/android/server/desktopmode/InternalCallbackList$Data;->mWhere:I

    if-ne v2, p2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_1

    :cond_4
    return-void
.end method
