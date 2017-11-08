.class public Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby$VoiceCallback;
.super Ljava/lang/Object;
.source "FaceSetupwizardBixby.java"

# interfaces
.implements Lcom/samsung/android/settings/face/bixbysetupwizard/VoiceCommandHelper$VoiceCommandHelperCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "VoiceCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby$VoiceCallback;->this$0:Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/String;)V
    .locals 3

    const-string/jumbo v0, "FcstFaceSetupwizardBixby"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onError : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onResult(Ljava/lang/String;)V
    .locals 7

    const/16 v6, 0x3f0

    const-string/jumbo v3, "FcstFaceSetupwizardBixby"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "VoiceCommand Received : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby$VoiceCallback;->this$0:Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;

    invoke-static {v3}, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->-get1(Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b051c

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby$VoiceCallback;->this$0:Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;

    invoke-static {v3}, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->-get1(Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b051b

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby$VoiceCallback;->this$0:Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;

    invoke-static {v3}, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->-get1(Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b0f13

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    :cond_0
    iget-object v3, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby$VoiceCallback;->this$0:Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;

    sget-object v4, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby$PAUSE_STATE;->NORMAL:Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby$PAUSE_STATE;

    invoke-static {v3, v4}, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->-set4(Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby$PAUSE_STATE;)Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby$PAUSE_STATE;

    iget-object v3, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby$VoiceCallback;->this$0:Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;

    const/4 v4, -0x1

    invoke-static {v3, v4}, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->-wrap12(Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;I)V

    iget-object v3, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby$VoiceCallback;->this$0:Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;

    invoke-static {v3}, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->-get4(Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;)Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby$FaceBixbyHandler;

    move-result-object v3

    invoke-virtual {v3, v6}, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby$FaceBixbyHandler;->sendEmptyMessage(I)Z

    :cond_1
    :goto_0
    return-void

    :cond_2
    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby$VoiceCallback;->this$0:Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;

    sget-object v4, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby$PAUSE_STATE;->NORMAL:Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby$PAUSE_STATE;

    invoke-static {v3, v4}, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->-set4(Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby$PAUSE_STATE;)Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby$PAUSE_STATE;

    iget-object v3, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby$VoiceCallback;->this$0:Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;

    invoke-static {v3}, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->-wrap2(Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;)V

    iget-object v3, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby$VoiceCallback;->this$0:Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->-wrap10(Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;I)V

    iget-object v3, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby$VoiceCallback;->this$0:Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;

    invoke-static {v3}, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->-get4(Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;)Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby$FaceBixbyHandler;

    move-result-object v3

    invoke-virtual {v3, v6}, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby$FaceBixbyHandler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method
