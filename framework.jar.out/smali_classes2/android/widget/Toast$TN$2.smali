.class Landroid/widget/Toast$TN$2;
.super Landroid/os/Handler;
.source "Toast.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/Toast$TN;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/widget/Toast$TN;


# direct methods
.method constructor <init>(Landroid/widget/Toast$TN;)V
    .locals 0

    iput-object p1, p0, Landroid/widget/Toast$TN$2;->this$1:Landroid/widget/Toast$TN;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5

    const/4 v3, 0x0

    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/IBinder;

    iget-object v2, p0, Landroid/widget/Toast$TN$2;->this$1:Landroid/widget/Toast$TN;

    invoke-virtual {v2, v1}, Landroid/widget/Toast$TN;->handleShow(Landroid/os/IBinder;)V

    goto :goto_0

    :pswitch_1
    iget-object v2, p0, Landroid/widget/Toast$TN$2;->this$1:Landroid/widget/Toast$TN;

    invoke-virtual {v2}, Landroid/widget/Toast$TN;->handleHide()V

    iget-object v2, p0, Landroid/widget/Toast$TN$2;->this$1:Landroid/widget/Toast$TN;

    iput-object v3, v2, Landroid/widget/Toast$TN;->mNextView:Landroid/view/View;

    goto :goto_0

    :pswitch_2
    iget-object v2, p0, Landroid/widget/Toast$TN$2;->this$1:Landroid/widget/Toast$TN;

    invoke-virtual {v2}, Landroid/widget/Toast$TN;->handleHide()V

    iget-object v2, p0, Landroid/widget/Toast$TN$2;->this$1:Landroid/widget/Toast$TN;

    iput-object v3, v2, Landroid/widget/Toast$TN;->mNextView:Landroid/view/View;

    :try_start_0
    invoke-static {}, Landroid/widget/Toast;->-wrap0()Landroid/app/INotificationManager;

    move-result-object v2

    iget-object v3, p0, Landroid/widget/Toast$TN$2;->this$1:Landroid/widget/Toast$TN;

    iget-object v3, v3, Landroid/widget/Toast$TN;->mPackageName:Ljava/lang/String;

    iget-object v4, p0, Landroid/widget/Toast$TN$2;->this$1:Landroid/widget/Toast$TN;

    invoke-interface {v2, v3, v4}, Landroid/app/INotificationManager;->cancelToast(Ljava/lang/String;Landroid/app/ITransientNotification;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
