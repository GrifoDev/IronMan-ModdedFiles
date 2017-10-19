.class Lcom/android/server/desktopmode/DesktopModeService$5;
.super Landroid/database/ContentObserver;
.source "DesktopModeService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/desktopmode/DesktopModeService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/desktopmode/DesktopModeService;


# direct methods
.method constructor <init>(Lcom/android/server/desktopmode/DesktopModeService;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/desktopmode/DesktopModeService$5;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;I)V
    .locals 9

    const/4 v7, 0x5

    const/4 v8, -0x1

    const/4 v4, 0x0

    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    invoke-virtual {p2}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v5, "hdmi_mode"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    iget-object v5, p0, Lcom/android/server/desktopmode/DesktopModeService$5;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {v5}, Lcom/android/server/desktopmode/DesktopModeService;->-get18(Lcom/android/server/desktopmode/DesktopModeService;)Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v6, "hdmi_mode"

    invoke-static {v5, v6, v8, p3}, Lcom/android/server/desktopmode/DesktopModeSettingsManager;->getSettingsAsUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    invoke-static {}, Lcom/android/server/desktopmode/DesktopModeService;->-get0()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-static {}, Lcom/android/server/desktopmode/DesktopModeService;->-get1()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "HDMI settings for user "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " changed to="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-ne v0, v8, :cond_1

    return-void

    :cond_1
    iget-object v5, p0, Lcom/android/server/desktopmode/DesktopModeService$5;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {v5}, Lcom/android/server/desktopmode/DesktopModeService;->-get18(Lcom/android/server/desktopmode/DesktopModeService;)Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v6, "1st_mouse"

    invoke-static {v5, v6, v4}, Lcom/android/server/desktopmode/DesktopModeSettingsManager;->setSettings(Landroid/content/ContentResolver;Ljava/lang/String;Z)V

    iget-object v5, p0, Lcom/android/server/desktopmode/DesktopModeService$5;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {v5}, Lcom/android/server/desktopmode/DesktopModeService;->-get18(Lcom/android/server/desktopmode/DesktopModeService;)Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v6, "1st_dock"

    invoke-static {v5, v6, v4}, Lcom/android/server/desktopmode/DesktopModeSettingsManager;->setSettings(Landroid/content/ContentResolver;Ljava/lang/String;Z)V

    iget-object v5, p0, Lcom/android/server/desktopmode/DesktopModeService$5;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    iget-object v6, p0, Lcom/android/server/desktopmode/DesktopModeService$5;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {v6}, Lcom/android/server/desktopmode/DesktopModeService;->-get11(Lcom/android/server/desktopmode/DesktopModeService;)Z

    move-result v6

    invoke-static {v5, v6}, Lcom/android/server/desktopmode/DesktopModeService;->-wrap24(Lcom/android/server/desktopmode/DesktopModeService;Z)V

    iget-object v5, p0, Lcom/android/server/desktopmode/DesktopModeService$5;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    if-nez v0, :cond_2

    const/4 v4, 0x1

    :cond_2
    invoke-virtual {v5, v4}, Lcom/android/server/desktopmode/DesktopModeService;->scheduleUpdateDesktopMode(Z)V

    iget-object v4, p0, Lcom/android/server/desktopmode/DesktopModeService$5;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {v4}, Lcom/android/server/desktopmode/DesktopModeService;->-get2(Lcom/android/server/desktopmode/DesktopModeService;)Landroid/content/Context;

    move-result-object v5

    if-nez v0, :cond_4

    const-string/jumbo v4, "LMTD"

    :goto_0
    const/4 v6, 0x0

    invoke-static {v5, v4, v6}, Lcom/android/server/desktopmode/DesktopModeLogger;->logGSIM(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    :goto_1
    return-void

    :cond_4
    const-string/jumbo v4, "LDTM"

    goto :goto_0

    :cond_5
    const-string/jumbo v5, "spen_mode"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    iget-object v4, p0, Lcom/android/server/desktopmode/DesktopModeService$5;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {v4}, Lcom/android/server/desktopmode/DesktopModeService;->-get19(Lcom/android/server/desktopmode/DesktopModeService;)Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/android/server/desktopmode/DesktopModeService$5;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {v4}, Lcom/android/server/desktopmode/DesktopModeService;->-get11(Lcom/android/server/desktopmode/DesktopModeService;)Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/android/server/desktopmode/DesktopModeService$5;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {v4}, Lcom/android/server/desktopmode/DesktopModeService;->-get18(Lcom/android/server/desktopmode/DesktopModeService;)Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "spen_mode"

    const/4 v6, 0x3

    invoke-static {v4, v5, v6, p3}, Lcom/android/server/desktopmode/DesktopModeSettingsManager;->getSettingsAsUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    invoke-static {}, Lcom/android/server/desktopmode/DesktopModeService;->-get0()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-static {}, Lcom/android/server/desktopmode/DesktopModeService;->-get1()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "S Pen settings for user "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " changed to="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    iget-object v4, p0, Lcom/android/server/desktopmode/DesktopModeService$5;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {v4}, Lcom/android/server/desktopmode/DesktopModeService;->-get9(Lcom/android/server/desktopmode/DesktopModeService;)Lcom/android/server/desktopmode/DesktopModeService$DesktopModeHandler;

    move-result-object v4

    invoke-virtual {v4, v7}, Lcom/android/server/desktopmode/DesktopModeService$DesktopModeHandler;->sendEmptyMessage(I)Z

    goto :goto_1

    :cond_7
    const-string/jumbo v5, "touchpad_enabled"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/android/server/desktopmode/DesktopModeService$5;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {v5}, Lcom/android/server/desktopmode/DesktopModeService;->-get18(Lcom/android/server/desktopmode/DesktopModeService;)Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v6, "touchpad_enabled"

    invoke-static {v5, v6, v4, p3}, Lcom/android/server/desktopmode/DesktopModeSettingsManager;->getSettingsAsUser(Landroid/content/ContentResolver;Ljava/lang/String;ZI)Z

    move-result v3

    invoke-static {}, Lcom/android/server/desktopmode/DesktopModeService;->-get0()Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-static {}, Lcom/android/server/desktopmode/DesktopModeService;->-get1()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Touchpad settings for user "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " changed to="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    iget-object v4, p0, Lcom/android/server/desktopmode/DesktopModeService$5;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {v4, v3}, Lcom/android/server/desktopmode/DesktopModeService;->-set6(Lcom/android/server/desktopmode/DesktopModeService;Z)Z

    iget-object v4, p0, Lcom/android/server/desktopmode/DesktopModeService$5;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {v4}, Lcom/android/server/desktopmode/DesktopModeService;->-get11(Lcom/android/server/desktopmode/DesktopModeService;)Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/android/server/desktopmode/DesktopModeService$5;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {v4}, Lcom/android/server/desktopmode/DesktopModeService;->-get9(Lcom/android/server/desktopmode/DesktopModeService;)Lcom/android/server/desktopmode/DesktopModeService$DesktopModeHandler;

    move-result-object v4

    invoke-virtual {v4, v7}, Lcom/android/server/desktopmode/DesktopModeService$DesktopModeHandler;->sendEmptyMessage(I)Z

    goto/16 :goto_1
.end method
