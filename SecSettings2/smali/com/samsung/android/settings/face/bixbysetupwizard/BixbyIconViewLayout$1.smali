.class Lcom/samsung/android/settings/face/bixbysetupwizard/BixbyIconViewLayout$1;
.super Landroid/os/Handler;
.source "BixbyIconViewLayout.java"


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

    iput-object p1, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/BixbyIconViewLayout$1;->this$0:Lcom/samsung/android/settings/face/bixbysetupwizard/BixbyIconViewLayout;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0xc8

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/BixbyIconViewLayout$1;->this$0:Lcom/samsung/android/settings/face/bixbysetupwizard/BixbyIconViewLayout;

    invoke-static {v0}, Lcom/samsung/android/settings/face/bixbysetupwizard/BixbyIconViewLayout;->-get5(Lcom/samsung/android/settings/face/bixbysetupwizard/BixbyIconViewLayout;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/BixbyIconViewLayout$1;->this$0:Lcom/samsung/android/settings/face/bixbysetupwizard/BixbyIconViewLayout;

    invoke-static {v1}, Lcom/samsung/android/settings/face/bixbysetupwizard/BixbyIconViewLayout;->-get6(Lcom/samsung/android/settings/face/bixbysetupwizard/BixbyIconViewLayout;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x64

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/BixbyIconViewLayout$1;->this$0:Lcom/samsung/android/settings/face/bixbysetupwizard/BixbyIconViewLayout;

    invoke-static {v0}, Lcom/samsung/android/settings/face/bixbysetupwizard/BixbyIconViewLayout;->-get5(Lcom/samsung/android/settings/face/bixbysetupwizard/BixbyIconViewLayout;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/BixbyIconViewLayout$1;->this$0:Lcom/samsung/android/settings/face/bixbysetupwizard/BixbyIconViewLayout;

    invoke-static {v1}, Lcom/samsung/android/settings/face/bixbysetupwizard/BixbyIconViewLayout;->-get7(Lcom/samsung/android/settings/face/bixbysetupwizard/BixbyIconViewLayout;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_2
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x12c

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/BixbyIconViewLayout$1;->this$0:Lcom/samsung/android/settings/face/bixbysetupwizard/BixbyIconViewLayout;

    invoke-static {v0}, Lcom/samsung/android/settings/face/bixbysetupwizard/BixbyIconViewLayout;->-get5(Lcom/samsung/android/settings/face/bixbysetupwizard/BixbyIconViewLayout;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/BixbyIconViewLayout$1;->this$0:Lcom/samsung/android/settings/face/bixbysetupwizard/BixbyIconViewLayout;

    invoke-static {v1}, Lcom/samsung/android/settings/face/bixbysetupwizard/BixbyIconViewLayout;->-get9(Lcom/samsung/android/settings/face/bixbysetupwizard/BixbyIconViewLayout;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method
