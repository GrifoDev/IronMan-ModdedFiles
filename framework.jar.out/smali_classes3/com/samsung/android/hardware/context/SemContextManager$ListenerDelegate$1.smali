.class Lcom/samsung/android/hardware/context/SemContextManager$ListenerDelegate$1;
.super Landroid/os/Handler;
.source "SemContextManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/hardware/context/SemContextManager$ListenerDelegate;->set(Lcom/samsung/android/hardware/context/SemContextListener;Landroid/os/Looper;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/android/hardware/context/SemContextManager$ListenerDelegate;


# direct methods
.method constructor <init>(Lcom/samsung/android/hardware/context/SemContextManager$ListenerDelegate;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/hardware/context/SemContextManager$ListenerDelegate$1;->this$1:Lcom/samsung/android/hardware/context/SemContextManager$ListenerDelegate;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7

    iget-object v4, p0, Lcom/samsung/android/hardware/context/SemContextManager$ListenerDelegate$1;->this$1:Lcom/samsung/android/hardware/context/SemContextManager$ListenerDelegate;

    invoke-static {v4}, Lcom/samsung/android/hardware/context/SemContextManager$ListenerDelegate;->-get1(Lcom/samsung/android/hardware/context/SemContextManager$ListenerDelegate;)Lcom/samsung/android/hardware/context/SemContextListener;

    move-result-object v4

    if-nez v4, :cond_0

    return-void

    :cond_0
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/samsung/android/hardware/context/SemContextEvent;

    if-nez v2, :cond_1

    return-void

    :cond_1
    iget-object v1, v2, Lcom/samsung/android/hardware/context/SemContextEvent;->semContext:Lcom/samsung/android/hardware/context/SemContext;

    if-nez v1, :cond_2

    return-void

    :cond_2
    invoke-virtual {v1}, Lcom/samsung/android/hardware/context/SemContext;->getType()I

    move-result v3

    iget-object v4, p0, Lcom/samsung/android/hardware/context/SemContextManager$ListenerDelegate$1;->this$1:Lcom/samsung/android/hardware/context/SemContextManager$ListenerDelegate;

    invoke-static {v4}, Lcom/samsung/android/hardware/context/SemContextManager$ListenerDelegate;->-get0(Lcom/samsung/android/hardware/context/SemContextManager$ListenerDelegate;)Z

    move-result v4

    if-eqz v4, :cond_3

    const-string/jumbo v4, "SemContextManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "History data is received. : type = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v3}, Lcom/samsung/android/hardware/context/SemContext;->getServiceName(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/samsung/android/hardware/context/SemContextManager$ListenerDelegate$1;->this$1:Lcom/samsung/android/hardware/context/SemContextManager$ListenerDelegate;

    invoke-static {v4}, Lcom/samsung/android/hardware/context/SemContextManager$ListenerDelegate;->-get1(Lcom/samsung/android/hardware/context/SemContextManager$ListenerDelegate;)Lcom/samsung/android/hardware/context/SemContextListener;

    move-result-object v4

    invoke-interface {v4, v2}, Lcom/samsung/android/hardware/context/SemContextListener;->onSemContextChanged(Lcom/samsung/android/hardware/context/SemContextEvent;)V

    iget-object v4, p0, Lcom/samsung/android/hardware/context/SemContextManager$ListenerDelegate$1;->this$1:Lcom/samsung/android/hardware/context/SemContextManager$ListenerDelegate;

    iget-object v4, v4, Lcom/samsung/android/hardware/context/SemContextManager$ListenerDelegate;->this$0:Lcom/samsung/android/hardware/context/SemContextManager;

    iget-object v5, p0, Lcom/samsung/android/hardware/context/SemContextManager$ListenerDelegate$1;->this$1:Lcom/samsung/android/hardware/context/SemContextManager$ListenerDelegate;

    invoke-static {v5}, Lcom/samsung/android/hardware/context/SemContextManager$ListenerDelegate;->-get1(Lcom/samsung/android/hardware/context/SemContextManager$ListenerDelegate;)Lcom/samsung/android/hardware/context/SemContextListener;

    move-result-object v5

    invoke-virtual {v4, v5, v3}, Lcom/samsung/android/hardware/context/SemContextManager;->unregisterListener(Lcom/samsung/android/hardware/context/SemContextListener;I)V

    iget-object v4, p0, Lcom/samsung/android/hardware/context/SemContextManager$ListenerDelegate$1;->this$1:Lcom/samsung/android/hardware/context/SemContextManager$ListenerDelegate;

    const/4 v5, 0x0

    invoke-static {v4, v5}, Lcom/samsung/android/hardware/context/SemContextManager$ListenerDelegate;->-set0(Lcom/samsung/android/hardware/context/SemContextManager$ListenerDelegate;Z)Z

    :goto_0
    return-void

    :cond_3
    const/4 v4, 0x6

    if-ne v3, v4, :cond_4

    invoke-virtual {v2}, Lcom/samsung/android/hardware/context/SemContextEvent;->getAutoRotationContext()Lcom/samsung/android/hardware/context/SemContextAutoRotation;

    move-result-object v0

    const-string/jumbo v4, "SemContextManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "AutoRotationEvent : Angle = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Lcom/samsung/android/hardware/context/SemContextAutoRotation;->getAngle()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    iget-object v4, p0, Lcom/samsung/android/hardware/context/SemContextManager$ListenerDelegate$1;->this$1:Lcom/samsung/android/hardware/context/SemContextManager$ListenerDelegate;

    invoke-static {v4}, Lcom/samsung/android/hardware/context/SemContextManager$ListenerDelegate;->-get1(Lcom/samsung/android/hardware/context/SemContextManager$ListenerDelegate;)Lcom/samsung/android/hardware/context/SemContextListener;

    move-result-object v4

    invoke-interface {v4, v2}, Lcom/samsung/android/hardware/context/SemContextListener;->onSemContextChanged(Lcom/samsung/android/hardware/context/SemContextEvent;)V

    goto :goto_0
.end method
