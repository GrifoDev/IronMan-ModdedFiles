.class Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer$6;
.super Landroid/os/Handler;
.source "KeyguardServiceBoxContainer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;


# direct methods
.method constructor <init>(Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer$6;->this$0:Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x1180

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer$6;->this$0:Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;

    invoke-static {v0}, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->-wrap3(Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;)V

    iget-object v0, p0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer$6;->this$0:Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;

    invoke-static {v0}, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->-wrap8(Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;)V

    iget-object v0, p0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer$6;->this$0:Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;

    invoke-virtual {v0}, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->reissueAllPages()V

    iget-object v0, p0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer$6;->this$0:Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;

    invoke-static {v0}, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->-wrap6(Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;)V

    iget-object v0, p0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer$6;->this$0:Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;

    invoke-static {v0}, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->-get7(Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;)Lcom/android/keyguard/servicebox/pages/clock/KeyguardOwnerInfoView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/servicebox/pages/clock/KeyguardOwnerInfoView;->updateOwnerInfo()V

    iget-object v0, p0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer$6;->this$0:Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;

    invoke-static {v0}, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->-get7(Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;)Lcom/android/keyguard/servicebox/pages/clock/KeyguardOwnerInfoView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/servicebox/pages/clock/KeyguardOwnerInfoView;->updateChildViewsLook()V

    :cond_0
    return-void
.end method