.class final Lcom/samsung/android/provider/agifcallprovider/AgifCallService$a;
.super Landroid/os/Handler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/provider/agifcallprovider/AgifCallService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/provider/agifcallprovider/AgifCallService;


# direct methods
.method public constructor <init>(Lcom/samsung/android/provider/agifcallprovider/AgifCallService;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/provider/agifcallprovider/AgifCallService$a;->a:Lcom/samsung/android/provider/agifcallprovider/AgifCallService;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public declared-synchronized handleMessage(Landroid/os/Message;)V
    .locals 3

    monitor-enter p0

    :try_start_0
    const-string v0, "AgifCallService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleMessage-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p1, Landroid/os/Message;->arg1:I

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    :pswitch_0
    iget-object v0, p0, Lcom/samsung/android/provider/agifcallprovider/AgifCallService$a;->a:Lcom/samsung/android/provider/agifcallprovider/AgifCallService;

    iget-object v1, p0, Lcom/samsung/android/provider/agifcallprovider/AgifCallService$a;->a:Lcom/samsung/android/provider/agifcallprovider/AgifCallService;

    invoke-static {v1}, Lcom/samsung/android/provider/agifcallprovider/AgifCallService;->b(Lcom/samsung/android/provider/agifcallprovider/AgifCallService;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/provider/agifcallprovider/AgifCallService;->stopSelfResult(I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :pswitch_1
    :try_start_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    sget-object v1, Lcom/samsung/android/provider/agifcallprovider/AgifCallService;->a:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Lcom/samsung/android/provider/agifcallprovider/c;

    iget-object v2, p0, Lcom/samsung/android/provider/agifcallprovider/AgifCallService$a;->a:Lcom/samsung/android/provider/agifcallprovider/AgifCallService;

    invoke-direct {v1, v2, v0}, Lcom/samsung/android/provider/agifcallprovider/c;-><init>(Lcom/samsung/android/provider/agifcallprovider/AgifCallService;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/samsung/android/provider/agifcallprovider/c;->a()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :pswitch_2
    :try_start_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    sget-object v1, Lcom/samsung/android/provider/agifcallprovider/AgifCallService;->a:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Lcom/samsung/android/provider/agifcallprovider/c;

    iget-object v2, p0, Lcom/samsung/android/provider/agifcallprovider/AgifCallService$a;->a:Lcom/samsung/android/provider/agifcallprovider/AgifCallService;

    invoke-direct {v1, v2, v0}, Lcom/samsung/android/provider/agifcallprovider/c;-><init>(Lcom/samsung/android/provider/agifcallprovider/AgifCallService;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/samsung/android/provider/agifcallprovider/c;->b()V

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Lcom/samsung/android/provider/agifcallprovider/AgifCallService$a;->a:Lcom/samsung/android/provider/agifcallprovider/AgifCallService;

    invoke-static {v0}, Lcom/samsung/android/provider/agifcallprovider/b;->b(Landroid/content/Context;)V

    goto :goto_0

    :pswitch_4
    iget-object v0, p0, Lcom/samsung/android/provider/agifcallprovider/AgifCallService$a;->a:Lcom/samsung/android/provider/agifcallprovider/AgifCallService;

    invoke-static {v0}, Lcom/samsung/android/provider/agifcallprovider/b;->a(Landroid/content/Context;)V

    goto :goto_0

    :pswitch_5
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    new-instance v1, Lcom/samsung/android/provider/agifcallprovider/c;

    iget-object v2, p0, Lcom/samsung/android/provider/agifcallprovider/AgifCallService$a;->a:Lcom/samsung/android/provider/agifcallprovider/AgifCallService;

    invoke-direct {v1, v2, v0}, Lcom/samsung/android/provider/agifcallprovider/c;-><init>(Lcom/samsung/android/provider/agifcallprovider/AgifCallService;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/samsung/android/provider/agifcallprovider/c;->c()V

    goto :goto_0

    :pswitch_6
    iget-object v0, p0, Lcom/samsung/android/provider/agifcallprovider/AgifCallService$a;->a:Lcom/samsung/android/provider/agifcallprovider/AgifCallService;

    invoke-static {v0}, Lcom/samsung/android/provider/agifcallprovider/AgifCallService;->a(Lcom/samsung/android/provider/agifcallprovider/AgifCallService;)V

    goto :goto_0

    :pswitch_7
    iget-object v1, p0, Lcom/samsung/android/provider/agifcallprovider/AgifCallService$a;->a:Lcom/samsung/android/provider/agifcallprovider/AgifCallService;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/content/Intent;

    invoke-static {v1, v0}, Lcom/samsung/android/provider/agifcallprovider/AgifCallService;->a(Lcom/samsung/android/provider/agifcallprovider/AgifCallService;Landroid/content/Intent;)V

    goto :goto_0

    :pswitch_8
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    new-instance v1, Lcom/samsung/android/provider/agifcallprovider/c;

    iget-object v2, p0, Lcom/samsung/android/provider/agifcallprovider/AgifCallService$a;->a:Lcom/samsung/android/provider/agifcallprovider/AgifCallService;

    invoke-direct {v1, v2, v0}, Lcom/samsung/android/provider/agifcallprovider/c;-><init>(Lcom/samsung/android/provider/agifcallprovider/AgifCallService;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/samsung/android/provider/agifcallprovider/c;->c()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_8
    .end packed-switch
.end method
