.class Lcom/android/settings/gestures/GestureSettings$2;
.super Landroid/support/v7/widget/RecyclerView$OnScrollListener;
.source "GestureSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/gestures/GestureSettings;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/gestures/GestureSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/gestures/GestureSettings;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/gestures/GestureSettings$2;->this$0:Lcom/android/settings/gestures/GestureSettings;

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$OnScrollListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrollStateChanged(Landroid/support/v7/widget/RecyclerView;I)V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    if-ne p2, v4, :cond_0

    iget-object v2, p0, Lcom/android/settings/gestures/GestureSettings$2;->this$0:Lcom/android/settings/gestures/GestureSettings;

    invoke-static {v2}, Lcom/android/settings/gestures/GestureSettings;->-get0(Lcom/android/settings/gestures/GestureSettings;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/gestures/GesturePreference;

    invoke-virtual {v0, v4}, Lcom/android/settings/gestures/GesturePreference;->setScrolling(Z)V

    goto :goto_0

    :cond_0
    if-nez p2, :cond_1

    iget-object v2, p0, Lcom/android/settings/gestures/GestureSettings$2;->this$0:Lcom/android/settings/gestures/GestureSettings;

    invoke-static {v2}, Lcom/android/settings/gestures/GestureSettings;->-get0(Lcom/android/settings/gestures/GestureSettings;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/gestures/GesturePreference;

    invoke-virtual {v0, v3}, Lcom/android/settings/gestures/GesturePreference;->setScrolling(Z)V

    goto :goto_1

    :cond_1
    return-void
.end method

.method public onScrolled(Landroid/support/v7/widget/RecyclerView;II)V
    .locals 0

    return-void
.end method
