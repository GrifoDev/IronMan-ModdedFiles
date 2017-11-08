.class Lcom/samsung/android/settings/face/bixbysetupwizard/BixbyIconViewLayout$2;
.super Ljava/lang/Object;
.source "BixbyIconViewLayout.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/face/bixbysetupwizard/BixbyIconViewLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/face/bixbysetupwizard/BixbyIconViewLayout;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/face/bixbysetupwizard/BixbyIconViewLayout;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/BixbyIconViewLayout$2;->this$0:Lcom/samsung/android/settings/face/bixbysetupwizard/BixbyIconViewLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/BixbyIconViewLayout$2;->this$0:Lcom/samsung/android/settings/face/bixbysetupwizard/BixbyIconViewLayout;

    invoke-static {v0}, Lcom/samsung/android/settings/face/bixbysetupwizard/BixbyIconViewLayout;->-get1(Lcom/samsung/android/settings/face/bixbysetupwizard/BixbyIconViewLayout;)Lcom/samsung/android/settings/face/bixbysetupwizard/BixbyIconViewAnimation;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/settings/face/bixbysetupwizard/BixbyIconViewAnimation;->getCurrentRadius()F

    move-result v0

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/BixbyIconViewLayout$2;->this$0:Lcom/samsung/android/settings/face/bixbysetupwizard/BixbyIconViewLayout;

    invoke-static {v0}, Lcom/samsung/android/settings/face/bixbysetupwizard/BixbyIconViewLayout;->-get0(Lcom/samsung/android/settings/face/bixbysetupwizard/BixbyIconViewLayout;)Lcom/samsung/android/settings/face/bixbysetupwizard/BixbyIconView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/settings/face/bixbysetupwizard/BixbyIconView;->clearAnimation()V

    iget-object v0, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/BixbyIconViewLayout$2;->this$0:Lcom/samsung/android/settings/face/bixbysetupwizard/BixbyIconViewLayout;

    invoke-static {v0}, Lcom/samsung/android/settings/face/bixbysetupwizard/BixbyIconViewLayout;->-get5(Lcom/samsung/android/settings/face/bixbysetupwizard/BixbyIconViewLayout;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/BixbyIconViewLayout$2;->this$0:Lcom/samsung/android/settings/face/bixbysetupwizard/BixbyIconViewLayout;

    invoke-static {v0}, Lcom/samsung/android/settings/face/bixbysetupwizard/BixbyIconViewLayout;->-get5(Lcom/samsung/android/settings/face/bixbysetupwizard/BixbyIconViewLayout;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
