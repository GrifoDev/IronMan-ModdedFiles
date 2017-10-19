.class Lcom/android/server/desktopmode/CoverSupportStateController$2;
.super Landroid/database/ContentObserver;
.source "CoverSupportStateController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/desktopmode/CoverSupportStateController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/desktopmode/CoverSupportStateController;


# direct methods
.method constructor <init>(Lcom/android/server/desktopmode/CoverSupportStateController;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/desktopmode/CoverSupportStateController$2;->this$0:Lcom/android/server/desktopmode/CoverSupportStateController;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 4

    iget-object v1, p0, Lcom/android/server/desktopmode/CoverSupportStateController$2;->this$0:Lcom/android/server/desktopmode/CoverSupportStateController;

    invoke-static {v1}, Lcom/android/server/desktopmode/CoverSupportStateController;->-get1(Lcom/android/server/desktopmode/CoverSupportStateController;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "mobile_keyboard"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    const/4 v0, 0x1

    :goto_0
    iget-object v1, p0, Lcom/android/server/desktopmode/CoverSupportStateController$2;->this$0:Lcom/android/server/desktopmode/CoverSupportStateController;

    invoke-static {v1}, Lcom/android/server/desktopmode/CoverSupportStateController;->-get5(Lcom/android/server/desktopmode/CoverSupportStateController;)Z

    move-result v1

    if-eq v1, v0, :cond_1

    sget-boolean v1, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/android/server/desktopmode/CoverSupportStateController;->-get0()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "mKeyboardCoverEnabled="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v1, p0, Lcom/android/server/desktopmode/CoverSupportStateController$2;->this$0:Lcom/android/server/desktopmode/CoverSupportStateController;

    invoke-static {v1, v0}, Lcom/android/server/desktopmode/CoverSupportStateController;->-set1(Lcom/android/server/desktopmode/CoverSupportStateController;Z)Z

    iget-object v1, p0, Lcom/android/server/desktopmode/CoverSupportStateController$2;->this$0:Lcom/android/server/desktopmode/CoverSupportStateController;

    invoke-static {v1}, Lcom/android/server/desktopmode/CoverSupportStateController;->-wrap0(Lcom/android/server/desktopmode/CoverSupportStateController;)Z

    :cond_1
    return-void

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method
