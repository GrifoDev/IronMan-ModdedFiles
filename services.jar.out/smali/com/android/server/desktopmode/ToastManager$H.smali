.class final Lcom/android/server/desktopmode/ToastManager$H;
.super Landroid/os/Handler;
.source "ToastManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/desktopmode/ToastManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "H"
.end annotation


# static fields
.field static final MSG_CANCEL_ALL_TOASTS:I = 0x2

.field static final MSG_SHOW_TOAST:I = 0x1


# instance fields
.field final synthetic this$0:Lcom/android/server/desktopmode/ToastManager;


# direct methods
.method constructor <init>(Lcom/android/server/desktopmode/ToastManager;Landroid/os/Looper;)V
    .locals 2

    iput-object p1, p0, Lcom/android/server/desktopmode/ToastManager$H;->this$0:Lcom/android/server/desktopmode/ToastManager;

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p2, v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7

    iget v4, p1, Landroid/os/Message;->what:I

    packed-switch v4, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget v0, p1, Landroid/os/Message;->arg1:I

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    iget-object v4, p0, Lcom/android/server/desktopmode/ToastManager$H;->this$0:Lcom/android/server/desktopmode/ToastManager;

    invoke-static {v4}, Lcom/android/server/desktopmode/ToastManager;->-get1(Lcom/android/server/desktopmode/ToastManager;)Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->setShowForAllUsers()V

    invoke-virtual {v2}, Landroid/widget/Toast;->getView()Landroid/view/View;

    move-result-object v4

    new-instance v5, Lcom/android/server/desktopmode/ToastManager$H$1;

    invoke-direct {v5, p0, v2, v1}, Lcom/android/server/desktopmode/ToastManager$H$1;-><init>(Lcom/android/server/desktopmode/ToastManager$H;Landroid/widget/Toast;Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    iget-object v4, p0, Lcom/android/server/desktopmode/ToastManager$H;->this$0:Lcom/android/server/desktopmode/ToastManager;

    invoke-static {v4}, Lcom/android/server/desktopmode/ToastManager;->-get2(Lcom/android/server/desktopmode/ToastManager;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    sget-boolean v4, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v4, :cond_0

    invoke-static {}, Lcom/android/server/desktopmode/ToastManager;->-get0()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Toast.show("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "), mToasts="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/desktopmode/ToastManager$H;->this$0:Lcom/android/server/desktopmode/ToastManager;

    invoke-static {v6}, Lcom/android/server/desktopmode/ToastManager;->-get2(Lcom/android/server/desktopmode/ToastManager;)Ljava/util/List;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :pswitch_1
    sget-boolean v4, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v4, :cond_1

    invoke-static {}, Lcom/android/server/desktopmode/ToastManager;->-get0()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "cancelToasts()"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v4, p0, Lcom/android/server/desktopmode/ToastManager$H;->this$0:Lcom/android/server/desktopmode/ToastManager;

    invoke-static {v4}, Lcom/android/server/desktopmode/ToastManager;->-get2(Lcom/android/server/desktopmode/ToastManager;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/Toast;

    invoke-virtual {v2}, Landroid/widget/Toast;->cancel()V

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
