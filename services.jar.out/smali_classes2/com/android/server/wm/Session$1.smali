.class Lcom/android/server/wm/Session$1;
.super Landroid/content/BroadcastReceiver;
.source "Session.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/Session;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wm/Session;


# direct methods
.method constructor <init>(Lcom/android/server/wm/Session;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/wm/Session$1;->this$0:Lcom/android/server/wm/Session;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/Session$1;->this$0:Lcom/android/server/wm/Session;

    invoke-static {v0}, Lcom/android/server/wm/Session;->-get0(Lcom/android/server/wm/Session;)Lcom/android/server/wm/AlertWindowNotification;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/Session$1;->this$0:Lcom/android/server/wm/Session;

    invoke-static {v0}, Lcom/android/server/wm/Session;->-get1(Lcom/android/server/wm/Session;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/Session$1;->this$0:Lcom/android/server/wm/Session;

    invoke-static {v0}, Lcom/android/server/wm/Session;->-get0(Lcom/android/server/wm/Session;)Lcom/android/server/wm/AlertWindowNotification;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/AlertWindowNotification;->cancel()V

    iget-object v0, p0, Lcom/android/server/wm/Session$1;->this$0:Lcom/android/server/wm/Session;

    invoke-static {v0}, Lcom/android/server/wm/Session;->-get0(Lcom/android/server/wm/Session;)Lcom/android/server/wm/AlertWindowNotification;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/AlertWindowNotification;->post()V

    :cond_0
    return-void
.end method
