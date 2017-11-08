.class Lcom/samsung/android/settings/mirrorlink/MirrorLink$TetherChangeReceiver;
.super Landroid/content/BroadcastReceiver;
.source "MirrorLink.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/mirrorlink/MirrorLink;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TetherChangeReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/mirrorlink/MirrorLink;


# direct methods
.method private constructor <init>(Lcom/samsung/android/settings/mirrorlink/MirrorLink;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/mirrorlink/MirrorLink$TetherChangeReceiver;->this$0:Lcom/samsung/android/settings/mirrorlink/MirrorLink;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/settings/mirrorlink/MirrorLink;Lcom/samsung/android/settings/mirrorlink/MirrorLink$TetherChangeReceiver;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/mirrorlink/MirrorLink$TetherChangeReceiver;-><init>(Lcom/samsung/android/settings/mirrorlink/MirrorLink;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "com.samsung.android.mirrorlink.action.ML_UEVENT"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    const-string/jumbo v3, "mirrorlink"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "START"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/samsung/android/settings/mirrorlink/MirrorLink$TetherChangeReceiver;->this$0:Lcom/samsung/android/settings/mirrorlink/MirrorLink;

    invoke-static {v2, v5}, Lcom/samsung/android/settings/mirrorlink/MirrorLink;->-set1(Lcom/samsung/android/settings/mirrorlink/MirrorLink;Z)Z

    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/samsung/android/settings/mirrorlink/MirrorLink$TetherChangeReceiver;->this$0:Lcom/samsung/android/settings/mirrorlink/MirrorLink;

    invoke-static {v2}, Lcom/samsung/android/settings/mirrorlink/MirrorLink;->-get5(Lcom/samsung/android/settings/mirrorlink/MirrorLink;)Z

    move-result v2

    if-nez v2, :cond_6

    iget-object v2, p0, Lcom/samsung/android/settings/mirrorlink/MirrorLink$TetherChangeReceiver;->this$0:Lcom/samsung/android/settings/mirrorlink/MirrorLink;

    invoke-static {v2}, Lcom/samsung/android/settings/mirrorlink/MirrorLink;->-wrap0(Lcom/samsung/android/settings/mirrorlink/MirrorLink;)Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "usb_tethering_enabled"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v2, p0, Lcom/samsung/android/settings/mirrorlink/MirrorLink$TetherChangeReceiver;->this$0:Lcom/samsung/android/settings/mirrorlink/MirrorLink;

    invoke-static {v2}, Lcom/samsung/android/settings/mirrorlink/MirrorLink;->-wrap2(Lcom/samsung/android/settings/mirrorlink/MirrorLink;)V

    :cond_1
    :goto_1
    return-void

    :cond_2
    const-string/jumbo v2, "RELEASE"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/samsung/android/settings/mirrorlink/MirrorLink$TetherChangeReceiver;->this$0:Lcom/samsung/android/settings/mirrorlink/MirrorLink;

    invoke-static {v2, v4}, Lcom/samsung/android/settings/mirrorlink/MirrorLink;->-set1(Lcom/samsung/android/settings/mirrorlink/MirrorLink;Z)Z

    goto :goto_0

    :cond_3
    const-string/jumbo v2, "android.hardware.usb.action.USB_STATE"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/samsung/android/settings/mirrorlink/MirrorLink$TetherChangeReceiver;->this$0:Lcom/samsung/android/settings/mirrorlink/MirrorLink;

    const-string/jumbo v3, "connected"

    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    invoke-static {v2, v3}, Lcom/samsung/android/settings/mirrorlink/MirrorLink;->-set4(Lcom/samsung/android/settings/mirrorlink/MirrorLink;Z)Z

    iget-object v2, p0, Lcom/samsung/android/settings/mirrorlink/MirrorLink$TetherChangeReceiver;->this$0:Lcom/samsung/android/settings/mirrorlink/MirrorLink;

    const-string/jumbo v3, "configured"

    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    invoke-static {v2, v3}, Lcom/samsung/android/settings/mirrorlink/MirrorLink;->-set3(Lcom/samsung/android/settings/mirrorlink/MirrorLink;Z)Z

    iget-object v2, p0, Lcom/samsung/android/settings/mirrorlink/MirrorLink$TetherChangeReceiver;->this$0:Lcom/samsung/android/settings/mirrorlink/MirrorLink;

    const-string/jumbo v3, "ncm"

    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    invoke-static {v2, v3}, Lcom/samsung/android/settings/mirrorlink/MirrorLink;->-set0(Lcom/samsung/android/settings/mirrorlink/MirrorLink;Z)Z

    goto :goto_0

    :cond_4
    const-string/jumbo v2, "android.intent.action.MEDIA_SHARED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/samsung/android/settings/mirrorlink/MirrorLink$TetherChangeReceiver;->this$0:Lcom/samsung/android/settings/mirrorlink/MirrorLink;

    invoke-static {v2, v5}, Lcom/samsung/android/settings/mirrorlink/MirrorLink;->-set2(Lcom/samsung/android/settings/mirrorlink/MirrorLink;Z)Z

    iget-object v2, p0, Lcom/samsung/android/settings/mirrorlink/MirrorLink$TetherChangeReceiver;->this$0:Lcom/samsung/android/settings/mirrorlink/MirrorLink;

    invoke-static {v2}, Lcom/samsung/android/settings/mirrorlink/MirrorLink;->-wrap2(Lcom/samsung/android/settings/mirrorlink/MirrorLink;)V

    goto :goto_0

    :cond_5
    const-string/jumbo v2, "android.intent.action.MEDIA_UNSHARED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/samsung/android/settings/mirrorlink/MirrorLink$TetherChangeReceiver;->this$0:Lcom/samsung/android/settings/mirrorlink/MirrorLink;

    invoke-static {v2, v4}, Lcom/samsung/android/settings/mirrorlink/MirrorLink;->-set2(Lcom/samsung/android/settings/mirrorlink/MirrorLink;Z)Z

    iget-object v2, p0, Lcom/samsung/android/settings/mirrorlink/MirrorLink$TetherChangeReceiver;->this$0:Lcom/samsung/android/settings/mirrorlink/MirrorLink;

    invoke-static {v2}, Lcom/samsung/android/settings/mirrorlink/MirrorLink;->-wrap2(Lcom/samsung/android/settings/mirrorlink/MirrorLink;)V

    goto :goto_0

    :cond_6
    iget-object v2, p0, Lcom/samsung/android/settings/mirrorlink/MirrorLink$TetherChangeReceiver;->this$0:Lcom/samsung/android/settings/mirrorlink/MirrorLink;

    invoke-static {v2}, Lcom/samsung/android/settings/mirrorlink/MirrorLink;->-get4(Lcom/samsung/android/settings/mirrorlink/MirrorLink;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/samsung/android/settings/mirrorlink/MirrorLink$TetherChangeReceiver;->this$0:Lcom/samsung/android/settings/mirrorlink/MirrorLink;

    invoke-static {v2}, Lcom/samsung/android/settings/mirrorlink/MirrorLink;->-get1(Lcom/samsung/android/settings/mirrorlink/MirrorLink;)Z

    move-result v2

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/samsung/android/settings/mirrorlink/MirrorLink$TetherChangeReceiver;->this$0:Lcom/samsung/android/settings/mirrorlink/MirrorLink;

    invoke-static {v2}, Lcom/samsung/android/settings/mirrorlink/MirrorLink;->-get3(Lcom/samsung/android/settings/mirrorlink/MirrorLink;)Z

    move-result v2

    if-nez v2, :cond_8

    :cond_7
    iget-object v2, p0, Lcom/samsung/android/settings/mirrorlink/MirrorLink$TetherChangeReceiver;->this$0:Lcom/samsung/android/settings/mirrorlink/MirrorLink;

    invoke-static {v2}, Lcom/samsung/android/settings/mirrorlink/MirrorLink;->-get1(Lcom/samsung/android/settings/mirrorlink/MirrorLink;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/samsung/android/settings/mirrorlink/MirrorLink$TetherChangeReceiver;->this$0:Lcom/samsung/android/settings/mirrorlink/MirrorLink;

    invoke-static {v2}, Lcom/samsung/android/settings/mirrorlink/MirrorLink;->-get3(Lcom/samsung/android/settings/mirrorlink/MirrorLink;)Z

    move-result v2

    if-nez v2, :cond_1

    :cond_8
    iget-object v2, p0, Lcom/samsung/android/settings/mirrorlink/MirrorLink$TetherChangeReceiver;->this$0:Lcom/samsung/android/settings/mirrorlink/MirrorLink;

    invoke-static {v2}, Lcom/samsung/android/settings/mirrorlink/MirrorLink;->-wrap2(Lcom/samsung/android/settings/mirrorlink/MirrorLink;)V

    goto/16 :goto_1
.end method
