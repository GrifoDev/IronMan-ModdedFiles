.class Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/util/BixbyScriptPlayer$2;
.super Lcom/sec/android/app/suwscriptplayer/ISuwScriptPlayerCallback$Stub;
.source "BixbyScriptPlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/util/BixbyScriptPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/util/BixbyScriptPlayer;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/util/BixbyScriptPlayer;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/util/BixbyScriptPlayer$2;->this$0:Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/util/BixbyScriptPlayer;

    invoke-direct {p0}, Lcom/sec/android/app/suwscriptplayer/ISuwScriptPlayerCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onPlayCompleted()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/util/BixbyScriptPlayer$2;->this$0:Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/util/BixbyScriptPlayer;

    invoke-virtual {v0}, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/util/BixbyScriptPlayer;->stopScriptPlay()V

    iget-object v0, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/util/BixbyScriptPlayer$2;->this$0:Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/util/BixbyScriptPlayer;

    invoke-static {v0}, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/util/BixbyScriptPlayer;->-get0(Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/util/BixbyScriptPlayer;)Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/IBixbyScriptPlayerStates;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/IBixbyScriptPlayerStates;->onScriptPlayCompleted()V

    return-void
.end method
