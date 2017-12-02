.class Lcom/samsung/android/settings/notification/SoundModeSettings$3$1;
.super Landroid/os/CountDownTimer;
.source "SoundModeSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/notification/SoundModeSettings$3;->onStateReceived()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/android/settings/notification/SoundModeSettings$3;

.field final synthetic val$hours:I

.field final synthetic val$intervalHour:I

.field final synthetic val$minutes:I


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/notification/SoundModeSettings$3;JJIII)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/notification/SoundModeSettings$3$1;->this$1:Lcom/samsung/android/settings/notification/SoundModeSettings$3;

    iput p6, p0, Lcom/samsung/android/settings/notification/SoundModeSettings$3$1;->val$intervalHour:I

    iput p7, p0, Lcom/samsung/android/settings/notification/SoundModeSettings$3$1;->val$minutes:I

    iput p8, p0, Lcom/samsung/android/settings/notification/SoundModeSettings$3$1;->val$hours:I

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 12

    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v9, 0x0

    invoke-static {}, Lcom/samsung/android/settings/notification/SoundModeSettings;->-get0()Landroid/media/AudioManager;

    move-result-object v5

    iget v6, p0, Lcom/samsung/android/settings/notification/SoundModeSettings$3$1;->val$intervalHour:I

    iget v7, p0, Lcom/samsung/android/settings/notification/SoundModeSettings$3$1;->val$minutes:I

    add-int/2addr v6, v7

    invoke-virtual {v5, v6}, Landroid/media/AudioManager;->setMuteInterval(I)V

    iget-object v5, p0, Lcom/samsung/android/settings/notification/SoundModeSettings$3$1;->this$1:Lcom/samsung/android/settings/notification/SoundModeSettings$3;

    iget-object v5, v5, Lcom/samsung/android/settings/notification/SoundModeSettings$3;->this$0:Lcom/samsung/android/settings/notification/SoundModeSettings;

    invoke-static {v5}, Lcom/samsung/android/settings/notification/SoundModeSettings;->-wrap4(Lcom/samsung/android/settings/notification/SoundModeSettings;)V

    iget-object v5, p0, Lcom/samsung/android/settings/notification/SoundModeSettings$3$1;->this$1:Lcom/samsung/android/settings/notification/SoundModeSettings$3;

    iget-object v5, v5, Lcom/samsung/android/settings/notification/SoundModeSettings$3;->this$0:Lcom/samsung/android/settings/notification/SoundModeSettings;

    invoke-static {v5}, Lcom/samsung/android/settings/notification/SoundModeSettings;->-get3(Lcom/samsung/android/settings/notification/SoundModeSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v5

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/samsung/android/settings/notification/SoundModeSettings$3$1;->this$1:Lcom/samsung/android/settings/notification/SoundModeSettings$3;

    iget-object v5, v5, Lcom/samsung/android/settings/notification/SoundModeSettings$3;->this$0:Lcom/samsung/android/settings/notification/SoundModeSettings;

    invoke-static {v5}, Lcom/samsung/android/settings/notification/SoundModeSettings;->-get3(Lcom/samsung/android/settings/notification/SoundModeSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v5

    const-string/jumbo v6, "MuteDuration"

    const-string/jumbo v7, "Exist"

    const-string/jumbo v8, "yes"

    invoke-virtual {v5, v6, v7, v8}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "%s %s"

    const-string/jumbo v0, "%s"

    iget-object v5, p0, Lcom/samsung/android/settings/notification/SoundModeSettings$3$1;->this$1:Lcom/samsung/android/settings/notification/SoundModeSettings$3;

    iget-object v5, v5, Lcom/samsung/android/settings/notification/SoundModeSettings$3;->this$0:Lcom/samsung/android/settings/notification/SoundModeSettings;

    invoke-virtual {v5}, Lcom/samsung/android/settings/notification/SoundModeSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    iget v6, p0, Lcom/samsung/android/settings/notification/SoundModeSettings$3$1;->val$hours:I

    const v7, 0x7f130001

    invoke-virtual {v5, v7, v6}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v5

    new-array v6, v10, [Ljava/lang/Object;

    iget v7, p0, Lcom/samsung/android/settings/notification/SoundModeSettings$3$1;->val$hours:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v9

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iget v5, p0, Lcom/samsung/android/settings/notification/SoundModeSettings$3$1;->val$hours:I

    if-ne v5, v11, :cond_0

    iget-object v5, p0, Lcom/samsung/android/settings/notification/SoundModeSettings$3$1;->this$1:Lcom/samsung/android/settings/notification/SoundModeSettings$3;

    iget-object v5, v5, Lcom/samsung/android/settings/notification/SoundModeSettings$3;->this$0:Lcom/samsung/android/settings/notification/SoundModeSettings;

    const v6, 0x7f0b0c32

    invoke-virtual {v5, v6}, Lcom/samsung/android/settings/notification/SoundModeSettings;->getString(I)Ljava/lang/String;

    move-result-object v2

    :cond_0
    iget-object v5, p0, Lcom/samsung/android/settings/notification/SoundModeSettings$3$1;->this$1:Lcom/samsung/android/settings/notification/SoundModeSettings$3;

    iget-object v5, v5, Lcom/samsung/android/settings/notification/SoundModeSettings$3;->this$0:Lcom/samsung/android/settings/notification/SoundModeSettings;

    invoke-virtual {v5}, Lcom/samsung/android/settings/notification/SoundModeSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    iget v6, p0, Lcom/samsung/android/settings/notification/SoundModeSettings$3$1;->val$minutes:I

    const v7, 0x7f130002

    invoke-virtual {v5, v7, v6}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v5

    new-array v6, v10, [Ljava/lang/Object;

    iget v7, p0, Lcom/samsung/android/settings/notification/SoundModeSettings$3$1;->val$minutes:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v9

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, ""

    iget v5, p0, Lcom/samsung/android/settings/notification/SoundModeSettings$3$1;->val$hours:I

    if-lez v5, :cond_2

    iget v5, p0, Lcom/samsung/android/settings/notification/SoundModeSettings$3$1;->val$minutes:I

    if-lez v5, :cond_2

    new-array v5, v11, [Ljava/lang/Object;

    aput-object v2, v5, v9

    aput-object v3, v5, v10

    invoke-static {v1, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    :goto_0
    iget-object v5, p0, Lcom/samsung/android/settings/notification/SoundModeSettings$3$1;->this$1:Lcom/samsung/android/settings/notification/SoundModeSettings$3;

    iget-object v5, v5, Lcom/samsung/android/settings/notification/SoundModeSettings$3;->this$0:Lcom/samsung/android/settings/notification/SoundModeSettings;

    invoke-static {v5}, Lcom/samsung/android/settings/notification/SoundModeSettings;->-get3(Lcom/samsung/android/settings/notification/SoundModeSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v5

    const-string/jumbo v6, "MuteDuration"

    invoke-virtual {v5, v6, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgResultParam(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v5, p0, Lcom/samsung/android/settings/notification/SoundModeSettings$3$1;->this$1:Lcom/samsung/android/settings/notification/SoundModeSettings$3;

    iget-object v5, v5, Lcom/samsung/android/settings/notification/SoundModeSettings$3;->this$0:Lcom/samsung/android/settings/notification/SoundModeSettings;

    invoke-static {v5}, Lcom/samsung/android/settings/notification/SoundModeSettings;->-get3(Lcom/samsung/android/settings/notification/SoundModeSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v5

    const-string/jumbo v6, "Mute"

    invoke-virtual {v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_1
    iget-object v5, p0, Lcom/samsung/android/settings/notification/SoundModeSettings$3$1;->this$1:Lcom/samsung/android/settings/notification/SoundModeSettings$3;

    iget-object v5, v5, Lcom/samsung/android/settings/notification/SoundModeSettings$3;->this$0:Lcom/samsung/android/settings/notification/SoundModeSettings;

    invoke-static {v5}, Lcom/samsung/android/settings/notification/SoundModeSettings;->-get3(Lcom/samsung/android/settings/notification/SoundModeSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v5

    sget-object v6, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    return-void

    :cond_2
    iget v5, p0, Lcom/samsung/android/settings/notification/SoundModeSettings$3$1;->val$hours:I

    if-nez v5, :cond_3

    new-array v5, v10, [Ljava/lang/Object;

    aput-object v3, v5, v9

    invoke-static {v0, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    :cond_3
    new-array v5, v10, [Ljava/lang/Object;

    aput-object v2, v5, v9

    invoke-static {v0, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    goto :goto_0
.end method

.method public onTick(J)V
    .locals 0

    return-void
.end method
