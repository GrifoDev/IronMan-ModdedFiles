.class Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/ParticleViewLayout$4;
.super Ljava/lang/Object;
.source "ParticleViewLayout.java"

# interfaces
.implements Ljava/lang/Runnable;


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

    iput-object p1, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/ParticleViewLayout$4;->this$0:Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/ParticleViewLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    const/4 v7, 0x6

    const/4 v6, 0x4

    iget-object v4, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/ParticleViewLayout$4;->this$0:Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/ParticleViewLayout;

    const/4 v5, 0x3

    invoke-static {v4, v5, v6}, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/ParticleViewLayout;->-wrap0(Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/ParticleViewLayout;II)I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v4, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/ParticleViewLayout$4;->this$0:Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/ParticleViewLayout;

    invoke-static {v4}, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/ParticleViewLayout;->-get5(Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/ParticleViewLayout;)Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/ParticleView;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/ParticleView;->addMidCircleBig()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget-object v4, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/ParticleViewLayout$4;->this$0:Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/ParticleViewLayout;

    const/4 v5, 0x5

    invoke-static {v4, v5, v7}, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/ParticleViewLayout;->-wrap0(Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/ParticleViewLayout;II)I

    move-result v2

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v2, :cond_1

    iget-object v4, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/ParticleViewLayout$4;->this$0:Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/ParticleViewLayout;

    invoke-static {v4}, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/ParticleViewLayout;->-get5(Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/ParticleViewLayout;)Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/ParticleView;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/ParticleView;->addMidCircleMid()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    iget-object v4, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/ParticleViewLayout$4;->this$0:Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/ParticleViewLayout;

    invoke-static {v4, v6, v7}, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/ParticleViewLayout;->-wrap0(Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/ParticleViewLayout;II)I

    move-result v3

    const/4 v1, 0x0

    :goto_2
    if-ge v1, v3, :cond_2

    iget-object v4, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/ParticleViewLayout$4;->this$0:Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/ParticleViewLayout;

    invoke-static {v4}, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/ParticleViewLayout;->-get5(Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/ParticleViewLayout;)Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/ParticleView;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/ParticleView;->addMidCircleSmall()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_2
    iget-object v4, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/ParticleViewLayout$4;->this$0:Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/ParticleViewLayout;

    invoke-static {v4}, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/ParticleViewLayout;->-get5(Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/ParticleViewLayout;)Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/ParticleView;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/ParticleView;->invalidate()V

    iget-object v4, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/ParticleViewLayout$4;->this$0:Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/ParticleViewLayout;

    invoke-static {v4}, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/ParticleViewLayout;->-get0(Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/ParticleViewLayout;)Landroid/os/Handler;

    move-result-object v4

    const-wide/16 v6, 0x3e8

    invoke-virtual {v4, p0, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
