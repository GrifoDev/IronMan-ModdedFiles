.class Lcom/android/incallui/InCallActivity$7;
.super Landroid/content/BroadcastReceiver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/incallui/InCallActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/InCallActivity;


# direct methods
.method constructor <init>(Lcom/android/incallui/InCallActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/InCallActivity$7;->this$0:Lcom/android/incallui/InCallActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5

    const/16 v4, 0xa9

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/InCallPresenter;->getProximitySensor()Lcom/android/incallui/ProximitySensor;

    move-result-object v0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mScreenOnOffProximityReceiver: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/CallList;->hasLiveCall()Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v2, p0, Lcom/android/incallui/InCallActivity$7;->this$0:Lcom/android/incallui/InCallActivity;

    invoke-static {v2}, Lcom/android/incallui/InCallActivity;->access$700(Lcom/android/incallui/InCallActivity;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/incallui/InCallActivity$7;->this$0:Lcom/android/incallui/InCallActivity;

    invoke-static {v2}, Lcom/android/incallui/InCallActivity;->access$700(Lcom/android/incallui/InCallActivity;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/os/Handler;->removeMessages(I)V

    :cond_2
    const-string v2, "android.intent.action.ACTION_SCREEN_ON_BY_PROXIMITY"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v1, p0, Lcom/android/incallui/InCallActivity$7;->this$0:Lcom/android/incallui/InCallActivity;

    invoke-static {v1}, Lcom/android/incallui/InCallActivity;->access$800(Lcom/android/incallui/InCallActivity;)Landroid/app/SemStatusBarManager;

    move-result-object v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/incallui/InCallActivity$7;->this$0:Lcom/android/incallui/InCallActivity;

    invoke-static {v1}, Lcom/android/incallui/InCallActivity;->access$800(Lcom/android/incallui/InCallActivity;)Landroid/app/SemStatusBarManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/SemStatusBarManager;->collapsePanels()V

    :cond_3
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/incallui/ProximitySensor;->setScreenOffByProximity(Z)V

    goto :goto_0

    :cond_4
    const-string v2, "android.intent.action.ACTION_SCREEN_OFF_BY_PROXIMITY"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/incallui/InCallActivity$7;->this$0:Lcom/android/incallui/InCallActivity;

    invoke-static {v1}, Lcom/android/incallui/InCallActivity;->access$700(Lcom/android/incallui/InCallActivity;)Landroid/os/Handler;

    move-result-object v1

    const-wide/16 v2, 0x1f4

    invoke-virtual {v1, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/incallui/ProximitySensor;->setScreenOffByProximity(Z)V

    goto :goto_0
.end method
