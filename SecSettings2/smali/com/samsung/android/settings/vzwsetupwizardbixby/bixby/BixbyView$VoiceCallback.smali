.class public Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView$VoiceCallback;
.super Ljava/lang/Object;
.source "BixbyView.java"

# interfaces
.implements Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/VoiceCommandHelper$VoiceCommandHelperCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "VoiceCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView;


# direct methods
.method protected constructor <init>(Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView$VoiceCallback;->this$0:Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/String;)V
    .locals 3

    const-string/jumbo v0, "Settings -> BixbyView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onError : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onResult(Ljava/lang/String;)V
    .locals 5

    const-string/jumbo v2, "Settings -> BixbyView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "VoiceCommand Received : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_0

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-object v2, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView$VoiceCallback;->this$0:Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView;

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView;->-wrap0(Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    iget-object v2, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView$VoiceCallback;->this$0:Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView;

    invoke-static {v2}, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView;->-get1(Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView;)Z

    move-result v2

    if-nez v2, :cond_2

    if-nez v0, :cond_3

    :cond_2
    return-void

    :cond_3
    iget-object v2, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView$VoiceCallback;->this$0:Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView$VoiceCallback;->this$0:Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView;

    invoke-static {v2, v1}, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView;->-wrap1(Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView;Landroid/view/View;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v1}, Landroid/view/View;->hasWindowFocus()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const v3, 0x7f1109c5

    if-eq v2, v3, :cond_4

    const-string/jumbo v2, "Settings -> BixbyView"

    const-string/jumbo v3, "Don\'t stop listening when refresh button is clicked."

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView$VoiceCallback;->this$0:Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView;

    invoke-virtual {v2}, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView;->stopListening()V

    :cond_4
    invoke-virtual {v1}, Landroid/view/View;->performClick()Z

    return-void
.end method
