.class final Lcom/android/server/wm/NaviBarHidePolicyManager$NaviBarHidePolicyHandler;
.super Landroid/os/Handler;
.source "NaviBarHidePolicyManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/NaviBarHidePolicyManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "NaviBarHidePolicyHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wm/NaviBarHidePolicyManager;


# direct methods
.method constructor <init>(Lcom/android/server/wm/NaviBarHidePolicyManager;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/wm/NaviBarHidePolicyManager$NaviBarHidePolicyHandler;->this$0:Lcom/android/server/wm/NaviBarHidePolicyManager;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v1, p0, Lcom/android/server/wm/NaviBarHidePolicyManager$NaviBarHidePolicyHandler;->this$0:Lcom/android/server/wm/NaviBarHidePolicyManager;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/android/server/wm/NaviBarHidePolicyManager$NaviBarHidePolicyHandler;->this$0:Lcom/android/server/wm/NaviBarHidePolicyManager;

    invoke-virtual {v0}, Lcom/android/server/wm/NaviBarHidePolicyManager;->notifyAll()V
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
    .end packed-switch
.end method
