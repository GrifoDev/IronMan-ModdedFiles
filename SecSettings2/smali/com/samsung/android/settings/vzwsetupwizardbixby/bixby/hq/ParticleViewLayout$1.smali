.class Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/ParticleViewLayout$1;
.super Landroid/os/Handler;
.source "ParticleViewLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/ParticleViewLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/ParticleViewLayout;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/ParticleViewLayout;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/ParticleViewLayout$1;->this$0:Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/ParticleViewLayout;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 10

    const-wide/16 v8, 0xa7

    const v7, 0x43a68000    # 333.0f

    const/high16 v6, 0x43270000    # 167.0f

    const/high16 v5, 0x42dc0000    # 110.0f

    const/high16 v4, 0x42b40000    # 90.0f

    const-string/jumbo v1, "ParticleViewLayout"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "mHandler msg what : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/ParticleViewLayout$1;->this$0:Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/ParticleViewLayout;

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-static {v1, v2}, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/ParticleViewLayout;->-set0(Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/ParticleViewLayout;I)I

    iget v1, p1, Landroid/os/Message;->what:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/ParticleViewLayout$1;->this$0:Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/ParticleViewLayout;

    invoke-static {v1}, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/ParticleViewLayout;->-get0(Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/ParticleViewLayout;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/ParticleViewLayout$1;->this$0:Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/ParticleViewLayout;

    invoke-static {v2}, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/ParticleViewLayout;->-get4(Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/ParticleViewLayout;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v1, p1, Landroid/os/Message;->what:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    iget-object v1, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/ParticleViewLayout$1;->this$0:Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/ParticleViewLayout;

    invoke-static {v1}, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/ParticleViewLayout;->-get0(Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/ParticleViewLayout;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/ParticleViewLayout$1;->this$0:Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/ParticleViewLayout;

    invoke-static {v2}, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/ParticleViewLayout;->-get3(Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/ParticleViewLayout;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_2
    iget v1, p1, Landroid/os/Message;->what:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_3

    iget-object v1, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/ParticleViewLayout$1;->this$0:Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/ParticleViewLayout;

    invoke-static {v1}, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/ParticleViewLayout;->-get5(Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/ParticleViewLayout;)Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/ParticleView;

    move-result-object v1

    invoke-virtual {v1, v4, v6, v5, v7}, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/ParticleView;->startBixbyScaleAnimation(FFFF)Z

    iget-object v1, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/ParticleViewLayout$1;->this$0:Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/ParticleViewLayout;

    invoke-static {v1}, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/ParticleViewLayout;->-get0(Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/ParticleViewLayout;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/ParticleViewLayout$1;->this$0:Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/ParticleViewLayout;

    invoke-static {v2}, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/ParticleViewLayout;->-get2(Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/ParticleViewLayout;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-virtual {v1, v2, v8, v9}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_3
    iget v1, p1, Landroid/os/Message;->what:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_4

    iget-object v1, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/ParticleViewLayout$1;->this$0:Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/ParticleViewLayout;

    invoke-static {v1}, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/ParticleViewLayout;->-get5(Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/ParticleViewLayout;)Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/ParticleView;

    move-result-object v1

    invoke-virtual {v1, v4, v6, v5, v7}, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/ParticleView;->startBixbyScaleAnimation(FFFF)Z

    iget-object v1, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/ParticleViewLayout$1;->this$0:Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/ParticleViewLayout;

    invoke-static {v1}, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/ParticleViewLayout;->-get0(Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/ParticleViewLayout;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/ParticleViewLayout$1;->this$0:Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/ParticleViewLayout;

    invoke-static {v2}, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/ParticleViewLayout;->-get1(Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/ParticleViewLayout;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-virtual {v1, v2, v8, v9}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_4
    iget v1, p1, Landroid/os/Message;->what:I

    const/16 v2, 0x64

    if-ne v1, v2, :cond_6

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-nez v1, :cond_5

    iget-object v1, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/ParticleViewLayout$1;->this$0:Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/ParticleViewLayout;

    invoke-static {v1}, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/ParticleViewLayout;->-get5(Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/ParticleViewLayout;)Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/ParticleView;

    move-result-object v1

    invoke-virtual {v1, v4, v6, v5, v7}, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/ParticleView;->startBixbyScaleAnimation(FFFF)Z

    :goto_1
    iget-object v1, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/ParticleViewLayout$1;->this$0:Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/ParticleViewLayout;

    invoke-static {v1}, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/ParticleViewLayout;->-get5(Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/ParticleViewLayout;)Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/ParticleView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/ParticleView;->invalidate()V

    goto :goto_0

    :cond_5
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/Bundle;

    iget-object v1, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/ParticleViewLayout$1;->this$0:Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/ParticleViewLayout;

    invoke-static {v1}, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/ParticleViewLayout;->-get5(Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/ParticleViewLayout;)Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/ParticleView;

    move-result-object v1

    const-string/jumbo v2, "scale1"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v2

    const-string/jumbo v3, "duration1"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v3

    const-string/jumbo v4, "scale2"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v4

    const-string/jumbo v5, "duration2"

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v5

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/ParticleView;->startBixbyScaleAnimation(FFFF)Z

    goto :goto_1

    :cond_6
    iget v1, p1, Landroid/os/Message;->what:I

    const/16 v2, 0xc8

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/ParticleViewLayout$1;->this$0:Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/ParticleViewLayout;

    invoke-static {v1}, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/ParticleViewLayout;->-get0(Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/ParticleViewLayout;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/ParticleViewLayout$1;->this$0:Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/ParticleViewLayout;

    invoke-static {v2}, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/ParticleViewLayout;->-get7(Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/ParticleViewLayout;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_0
.end method
