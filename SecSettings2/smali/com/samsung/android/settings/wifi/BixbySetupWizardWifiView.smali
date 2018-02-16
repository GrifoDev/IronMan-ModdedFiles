.class public Lcom/samsung/android/settings/wifi/BixbySetupWizardWifiView;
.super Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView;
.source "BixbySetupWizardWifiView.java"


# instance fields
.field private mIsIntroComplete:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method private playConnectToWifiAudio()V
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/BixbySetupWizardWifiView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/Utils;->isWifiConnectivityAvailable(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "2_wifi_2_VZW"

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/wifi/BixbySetupWizardWifiView;->startScriptPlay(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/wifi/BixbySetupWizardWifiView;->startListening(I)V

    goto :goto_0
.end method


# virtual methods
.method protected getBixbyHeaderTitle()Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/BixbySetupWizardWifiView;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0b1eec

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getBixbyIntroDescription()Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/BixbySetupWizardWifiView;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0b1eeb

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getIntroAudioName()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "2_wifi_1_VZW"

    return-object v0
.end method

.method protected getSoftKeyButtonVoiceCommands()Ljava/util/HashMap;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    const v3, 0x7f1109c7

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/BixbySetupWizardWifiView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b11b9

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f1109c5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/BixbySetupWizardWifiView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b037f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f1109c9

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/BixbySetupWizardWifiView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0f23

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/BixbySetupWizardWifiView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b13d3

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public init(Landroid/content/Context;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView;->init(Landroid/content/Context;)V

    return-void
.end method

.method public isIntroComplete()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/settings/wifi/BixbySetupWizardWifiView;->mIsIntroComplete:Z

    return v0
.end method

.method public onBackButtonPressed()V
    .locals 4

    invoke-super {p0}, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView;->onMoveToPreviousScreen()V

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/BixbySetupWizardWifiView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;->mBixbyButtonHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x5dc

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method public onDestroy()V
    .locals 0

    invoke-super {p0}, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView;->onDestroy()V

    return-void
.end method

.method protected onEndIntroAnimation()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/settings/wifi/BixbySetupWizardWifiView;->mIsIntroComplete:Z

    invoke-super {p0}, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView;->onEndIntroAnimation()V

    return-void
.end method

.method protected onEndWaveAnimation()V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/BixbySetupWizardWifiView;->playConnectToWifiAudio()V

    return-void
.end method

.method public onNextButtonPressed()V
    .locals 4

    invoke-super {p0}, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView;->onMoveToNextScreen()V

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/BixbySetupWizardWifiView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;->mBixbyButtonHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x5dc

    const/4 v1, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method public onPause()V
    .locals 0

    invoke-super {p0}, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView;->onPause()V

    return-void
.end method

.method public onResume()V
    .locals 0

    invoke-super {p0}, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView;->onResume()V

    return-void
.end method

.method protected onScriptPlayCompleted()V
    .locals 1

    const/16 v0, 0x64

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/wifi/BixbySetupWizardWifiView;->startListening(I)V

    return-void
.end method
