.class Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView$1;
.super Ljava/lang/Object;
.source "BixbyView.java"

# interfaces
.implements Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/IBixbyScriptPlayerStates;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView;
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

    iput-object p1, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView$1;->this$0:Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScriptPlayCompleted()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView$1;->this$0:Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView;

    invoke-static {v0}, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView;->-wrap4(Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView;)V

    return-void
.end method

.method public onScriptPlayError()V
    .locals 2

    const-string/jumbo v0, "Settings -> BixbyView"

    const-string/jumbo v1, "onScriptPlayError"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView$1;->this$0:Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView;

    invoke-static {v0}, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView;->-wrap4(Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView;)V

    return-void
.end method

.method public onScriptPlayerServiceConnected()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView$1;->this$0:Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView;

    iget-object v1, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView$1;->this$0:Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView;

    invoke-virtual {v1}, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView;->getIntroAudioName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView;->startScriptPlay(Ljava/lang/String;)V

    return-void
.end method
