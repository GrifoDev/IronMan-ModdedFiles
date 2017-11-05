.class Lcom/android/systemui/statusbar/phone/SecNavigationBarView$6;
.super Ljava/lang/Object;
.source "SecNavigationBarView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/SecNavigationBarView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/SecNavigationBarView;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/SecNavigationBarView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView$6;->this$0:Lcom/android/systemui/statusbar/phone/SecNavigationBarView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 9

    const/4 v8, 0x0

    const-wide/16 v6, 0x190

    const/4 v3, 0x0

    sget-boolean v4, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->DEBUG:Z

    if-eqz v4, :cond_0

    const-string/jumbo v4, "SecNavigationBarView"

    const-string/jumbo v5, "ImmersivePinClickListener clicked"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView$6;->this$0:Lcom/android/systemui/statusbar/phone/SecNavigationBarView;

    invoke-static {v4}, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->-get9(Lcom/android/systemui/statusbar/phone/SecNavigationBarView;)J

    move-result-wide v4

    sub-long v4, v0, v4

    cmp-long v4, v4, v6

    if-lez v4, :cond_3

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView$6;->this$0:Lcom/android/systemui/statusbar/phone/SecNavigationBarView;

    invoke-static {v3, v0, v1}, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->-set3(Lcom/android/systemui/statusbar/phone/SecNavigationBarView;J)J

    invoke-static {}, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->-get12()I

    move-result v3

    if-lez v3, :cond_2

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView$6;->this$0:Lcom/android/systemui/statusbar/phone/SecNavigationBarView;

    invoke-static {v3}, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->-get13(Lcom/android/systemui/statusbar/phone/SecNavigationBarView;)I

    move-result v3

    invoke-static {}, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->-get12()I

    move-result v4

    if-ge v3, v4, :cond_1

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView$6;->this$0:Lcom/android/systemui/statusbar/phone/SecNavigationBarView;

    invoke-static {v3}, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->-get13(Lcom/android/systemui/statusbar/phone/SecNavigationBarView;)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-static {v3, v4}, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->-set4(Lcom/android/systemui/statusbar/phone/SecNavigationBarView;I)I

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView$6;->this$0:Lcom/android/systemui/statusbar/phone/SecNavigationBarView;

    invoke-static {v3}, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->-get4(Lcom/android/systemui/statusbar/phone/SecNavigationBarView;)Landroid/content/Context;

    move-result-object v3

    const-string/jumbo v4, "NavigationBarForceImmersiveToastCount"

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView$6;->this$0:Lcom/android/systemui/statusbar/phone/SecNavigationBarView;

    invoke-static {v5}, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->-get13(Lcom/android/systemui/statusbar/phone/SecNavigationBarView;)I

    move-result v5

    invoke-static {v3, v4, v5}, Lcom/android/systemui/Prefs;->putInt(Landroid/content/Context;Ljava/lang/String;I)V

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView$6;->this$0:Lcom/android/systemui/statusbar/phone/SecNavigationBarView;

    invoke-static {v3}, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->-get6(Lcom/android/systemui/statusbar/phone/SecNavigationBarView;)Landroid/os/Handler;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView$6;->this$0:Lcom/android/systemui/statusbar/phone/SecNavigationBarView;

    iget-object v4, v4, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mShowPinButtonToastRunnable:Ljava/lang/Runnable;

    invoke-virtual {v3, v4, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView$6;->this$0:Lcom/android/systemui/statusbar/phone/SecNavigationBarView;

    invoke-static {v3}, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->-get13(Lcom/android/systemui/statusbar/phone/SecNavigationBarView;)I

    move-result v3

    invoke-static {}, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->-get11()I

    move-result v4

    if-ge v3, v4, :cond_1

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView$6;->this$0:Lcom/android/systemui/statusbar/phone/SecNavigationBarView;

    invoke-static {v3}, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->-get6(Lcom/android/systemui/statusbar/phone/SecNavigationBarView;)Landroid/os/Handler;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView$6;->this$0:Lcom/android/systemui/statusbar/phone/SecNavigationBarView;

    iget-object v4, v4, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mShowPinButtonToastRunnable:Ljava/lang/Runnable;

    invoke-virtual {v3, v4, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_3
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView$6;->this$0:Lcom/android/systemui/statusbar/phone/SecNavigationBarView;

    invoke-static {v4}, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->-get6(Lcom/android/systemui/statusbar/phone/SecNavigationBarView;)Landroid/os/Handler;

    move-result-object v4

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView$6;->this$0:Lcom/android/systemui/statusbar/phone/SecNavigationBarView;

    iget-object v5, v5, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mShowPinButtonToastRunnable:Ljava/lang/Runnable;

    invoke-virtual {v4, v5}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView$6;->this$0:Lcom/android/systemui/statusbar/phone/SecNavigationBarView;

    const-wide/16 v6, 0x0

    invoke-static {v4, v6, v7}, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->-set3(Lcom/android/systemui/statusbar/phone/SecNavigationBarView;J)J

    invoke-static {}, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->-get12()I

    move-result v4

    if-nez v4, :cond_4

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView$6;->this$0:Lcom/android/systemui/statusbar/phone/SecNavigationBarView;

    invoke-static {v4}, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->-get13(Lcom/android/systemui/statusbar/phone/SecNavigationBarView;)I

    move-result v4

    invoke-static {}, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->-get11()I

    move-result v5

    if-ge v4, v5, :cond_4

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView$6;->this$0:Lcom/android/systemui/statusbar/phone/SecNavigationBarView;

    invoke-static {v4}, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->-get13(Lcom/android/systemui/statusbar/phone/SecNavigationBarView;)I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    invoke-static {v4, v5}, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->-set4(Lcom/android/systemui/statusbar/phone/SecNavigationBarView;I)I

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView$6;->this$0:Lcom/android/systemui/statusbar/phone/SecNavigationBarView;

    invoke-static {v4}, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->-get4(Lcom/android/systemui/statusbar/phone/SecNavigationBarView;)Landroid/content/Context;

    move-result-object v4

    const-string/jumbo v5, "NavigationBarForceImmersiveToastCount"

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView$6;->this$0:Lcom/android/systemui/statusbar/phone/SecNavigationBarView;

    invoke-static {v6}, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->-get13(Lcom/android/systemui/statusbar/phone/SecNavigationBarView;)I

    move-result v6

    invoke-static {v4, v5, v6}, Lcom/android/systemui/Prefs;->putInt(Landroid/content/Context;Ljava/lang/String;I)V

    :cond_4
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView$6;->this$0:Lcom/android/systemui/statusbar/phone/SecNavigationBarView;

    invoke-static {v4}, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->-get7(Lcom/android/systemui/statusbar/phone/SecNavigationBarView;)Z

    move-result v4

    if-nez v4, :cond_5

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView$6;->this$0:Lcom/android/systemui/statusbar/phone/SecNavigationBarView;

    invoke-static {v4}, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->-wrap0(Lcom/android/systemui/statusbar/phone/SecNavigationBarView;)Landroid/app/Dialog;

    move-result-object v4

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView$6;->this$0:Lcom/android/systemui/statusbar/phone/SecNavigationBarView;

    invoke-static {v4}, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->-get5(Lcom/android/systemui/statusbar/phone/SecNavigationBarView;)Landroid/app/AlertDialog;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/AlertDialog;->show()V

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView$6;->this$0:Lcom/android/systemui/statusbar/phone/SecNavigationBarView;

    invoke-virtual {v4, v3}, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->setPinButtonVisibility(Z)V

    return-void

    :cond_5
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView$6;->this$0:Lcom/android/systemui/statusbar/phone/SecNavigationBarView;

    invoke-static {v4}, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->-get4(Lcom/android/systemui/statusbar/phone/SecNavigationBarView;)Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/android/systemui/statusbar/NavigationBarSettingsHelper;->getInstance(Landroid/content/Context;)Lcom/android/systemui/statusbar/NavigationBarSettingsHelper;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/NavigationBarSettingsHelper;->getNavigationBarHideEnabled()Z

    move-result v2

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView$6;->this$0:Lcom/android/systemui/statusbar/phone/SecNavigationBarView;

    invoke-static {v4}, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->-get4(Lcom/android/systemui/statusbar/phone/SecNavigationBarView;)Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/android/systemui/statusbar/NavigationBarSettingsHelper;->getInstance(Landroid/content/Context;)Lcom/android/systemui/statusbar/NavigationBarSettingsHelper;

    move-result-object v4

    if-eqz v2, :cond_7

    :goto_1
    invoke-virtual {v4, v3}, Lcom/android/systemui/statusbar/NavigationBarSettingsHelper;->setNavigationBarHideEnabled(Z)V

    invoke-static {}, Lcom/android/systemui/statusbar/phone/NaviBarHideController;->getInstance()Lcom/android/systemui/statusbar/phone/NaviBarHideController;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView$6;->this$0:Lcom/android/systemui/statusbar/phone/SecNavigationBarView;

    invoke-static {v4}, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->-get4(Lcom/android/systemui/statusbar/phone/SecNavigationBarView;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/systemui/statusbar/phone/NaviBarHideController;->setNavigationBarImmersiveMode(Landroid/content/Context;)Z

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView$6;->this$0:Lcom/android/systemui/statusbar/phone/SecNavigationBarView;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->updateImmersivePinIcon()V

    sget-boolean v3, Lcom/android/systemui/SystemUIRune;->SUPPORT_GSIM_LOG:Z

    if-eqz v3, :cond_6

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView$6;->this$0:Lcom/android/systemui/statusbar/phone/SecNavigationBarView;

    invoke-static {v3}, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->-get4(Lcom/android/systemui/statusbar/phone/SecNavigationBarView;)Landroid/content/Context;

    move-result-object v4

    const-string/jumbo v5, "com.android.systemui"

    const-string/jumbo v6, "NBFI"

    if-eqz v2, :cond_8

    const-string/jumbo v3, "Hide"

    :goto_2
    invoke-static {v4, v5, v6, v3, v8}, Lcom/android/keyguard/util/GsimLogManager;->sendLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_6
    return-void

    :cond_7
    const/4 v3, 0x1

    goto :goto_1

    :cond_8
    const-string/jumbo v3, "Show"

    goto :goto_2
.end method
