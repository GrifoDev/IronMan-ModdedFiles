.class public Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView$AnimationStateHandler;
.super Landroid/os/Handler;
.source "BixbyView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "AnimationStateHandler"
.end annotation


# instance fields
.field private final mBixbyView:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView;)V
    .locals 1

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView$AnimationStateHandler;->mBixbyView:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5

    iget-object v2, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView$AnimationStateHandler;->mBixbyView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget v2, p1, Landroid/os/Message;->what:I

    invoke-static {v0, v2}, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView;->-set1(Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView;I)I

    const-string/jumbo v2, "Settings -> BixbyView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "mCurrentMessageInProcess in Handler -> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v0}, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView;->-get0(Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    :cond_1
    :goto_0
    return-void

    :pswitch_0
    invoke-virtual {v0}, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView;->suppressAnimation()V

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView;->startListening(I)V

    goto :goto_0

    :pswitch_1
    sget-object v2, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView$AnimStates;->STARTED:Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView$AnimStates;

    invoke-static {v0, v2}, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView;->-set0(Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView;Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView$AnimStates;)Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView$AnimStates;

    invoke-static {v0}, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView;->-wrap5(Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView;)V

    goto :goto_0

    :pswitch_2
    invoke-static {v0}, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView;->-wrap3(Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView;)V

    goto :goto_0

    :pswitch_3
    invoke-static {v0}, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView;->-wrap6(Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView;)V

    const-wide/16 v2, 0x190

    const/4 v4, 0x4

    invoke-virtual {p0, v4, v2, v3}, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView$AnimationStateHandler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    :pswitch_4
    invoke-virtual {v0}, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView;->onEndWaveAnimation()V

    goto :goto_0

    :pswitch_5
    invoke-static {v0}, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView;->-get2(Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView;)Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/ParticleViewLayout;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/ParticleViewLayout;->startUserSayingAnimation()V

    invoke-static {v0}, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView;->-get3(Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView;)Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/VoiceCommandHelper;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-static {v0}, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView;->-get3(Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView;)Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/VoiceCommandHelper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/VoiceCommandHelper;->startListening()V

    goto :goto_0

    :pswitch_6
    invoke-static {v0}, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView;->-get2(Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView;)Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/ParticleViewLayout;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/ParticleViewLayout;->stopUserSayingAnimation()V

    invoke-static {v0}, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView;->-get3(Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView;)Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/VoiceCommandHelper;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-static {v0}, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView;->-get3(Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView;)Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/VoiceCommandHelper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/VoiceCommandHelper;->stopListening()V

    goto :goto_0

    :pswitch_7
    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-static {v0, v1}, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView;->-wrap2(Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView;I)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method
