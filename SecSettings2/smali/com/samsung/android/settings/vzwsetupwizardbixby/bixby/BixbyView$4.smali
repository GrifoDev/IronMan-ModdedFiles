.class Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView$4;
.super Ljava/lang/Object;
.source "BixbyView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView;->stopParticleAnimation(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView$4;->this$0:Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView$4;->this$0:Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView;

    invoke-static {v0}, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView;->-get2(Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView;)Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/ParticleViewLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/ParticleViewLayout;->stopParticleAnimaion()V

    return-void
.end method
