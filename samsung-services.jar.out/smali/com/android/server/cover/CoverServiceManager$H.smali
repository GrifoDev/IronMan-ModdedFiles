.class final Lcom/android/server/cover/CoverServiceManager$H;
.super Landroid/os/Handler;
.source "CoverServiceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/cover/CoverServiceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "H"
.end annotation


# static fields
.field static final MSG_RECONNECT_SERVICE:I = 0x2

.field static final MSG_UPDATE_COVER_STATE:I = 0x1


# instance fields
.field final synthetic this$0:Lcom/android/server/cover/CoverServiceManager;


# direct methods
.method public constructor <init>(Lcom/android/server/cover/CoverServiceManager;Landroid/os/Looper;)V
    .locals 2

    iput-object p1, p0, Lcom/android/server/cover/CoverServiceManager$H;->this$0:Lcom/android/server/cover/CoverServiceManager;

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p2, v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v1, p0, Lcom/android/server/cover/CoverServiceManager$H;->this$0:Lcom/android/server/cover/CoverServiceManager;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/samsung/android/cover/CoverState;

    invoke-static {v1, v0}, Lcom/android/server/cover/CoverServiceManager;->-wrap5(Lcom/android/server/cover/CoverServiceManager;Lcom/samsung/android/cover/CoverState;)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/android/server/cover/CoverServiceManager$H;->this$0:Lcom/android/server/cover/CoverServiceManager;

    invoke-static {v0}, Lcom/android/server/cover/CoverServiceManager;->-get6(Lcom/android/server/cover/CoverServiceManager;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/android/server/cover/CoverServiceManager$H;->this$0:Lcom/android/server/cover/CoverServiceManager;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/content/ComponentName;

    iget v3, p1, Landroid/os/Message;->arg1:I

    invoke-static {v2, v0, v3}, Lcom/android/server/cover/CoverServiceManager;->-wrap1(Lcom/android/server/cover/CoverServiceManager;Landroid/content/ComponentName;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
