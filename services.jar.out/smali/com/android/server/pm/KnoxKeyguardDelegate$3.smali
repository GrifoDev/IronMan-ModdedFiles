.class Lcom/android/server/pm/KnoxKeyguardDelegate$3;
.super Ljava/lang/Object;
.source "KnoxKeyguardDelegate.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/pm/KnoxKeyguardDelegate;->showScrim(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/pm/KnoxKeyguardDelegate;

.field final synthetic val$isSecurefolder:Z


# direct methods
.method constructor <init>(Lcom/android/server/pm/KnoxKeyguardDelegate;Z)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/pm/KnoxKeyguardDelegate$3;->this$0:Lcom/android/server/pm/KnoxKeyguardDelegate;

    iput-boolean p2, p0, Lcom/android/server/pm/KnoxKeyguardDelegate$3;->val$isSecurefolder:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    invoke-static {}, Lcom/samsung/android/desktopmode/SemDesktopModeManager;->isDesktopMode()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/pm/KnoxKeyguardDelegate$3;->this$0:Lcom/android/server/pm/KnoxKeyguardDelegate;

    invoke-static {v0}, Lcom/android/server/pm/KnoxKeyguardDelegate;->-get1(Lcom/android/server/pm/KnoxKeyguardDelegate;)Lcom/android/server/pm/KnoxNativeKeyguardHost;

    move-result-object v0

    const-string/jumbo v1, "#00FFFFFF"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/pm/KnoxNativeKeyguardHost;->setBackgroundColor(I)V

    :goto_0
    iget-object v0, p0, Lcom/android/server/pm/KnoxKeyguardDelegate$3;->this$0:Lcom/android/server/pm/KnoxKeyguardDelegate;

    invoke-static {v0}, Lcom/android/server/pm/KnoxKeyguardDelegate;->-get1(Lcom/android/server/pm/KnoxKeyguardDelegate;)Lcom/android/server/pm/KnoxNativeKeyguardHost;

    move-result-object v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/server/pm/KnoxNativeKeyguardHost;->setLayerType(ILandroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/android/server/pm/KnoxKeyguardDelegate$3;->this$0:Lcom/android/server/pm/KnoxKeyguardDelegate;

    invoke-static {v0}, Lcom/android/server/pm/KnoxKeyguardDelegate;->-get1(Lcom/android/server/pm/KnoxKeyguardDelegate;)Lcom/android/server/pm/KnoxNativeKeyguardHost;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/server/pm/KnoxNativeKeyguardHost;->setVisibility(I)V

    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/android/server/pm/KnoxKeyguardDelegate$3;->val$isSecurefolder:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/pm/KnoxKeyguardDelegate$3;->this$0:Lcom/android/server/pm/KnoxKeyguardDelegate;

    iget-object v1, p0, Lcom/android/server/pm/KnoxKeyguardDelegate$3;->this$0:Lcom/android/server/pm/KnoxKeyguardDelegate;

    invoke-static {v1}, Lcom/android/server/pm/KnoxKeyguardDelegate;->-get1(Lcom/android/server/pm/KnoxKeyguardDelegate;)Lcom/android/server/pm/KnoxNativeKeyguardHost;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/pm/KnoxKeyguardDelegate;->-wrap0(Lcom/android/server/pm/KnoxKeyguardDelegate;Lcom/android/server/pm/KnoxNativeKeyguardHost;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/server/pm/KnoxKeyguardDelegate$3;->this$0:Lcom/android/server/pm/KnoxKeyguardDelegate;

    invoke-static {v0}, Lcom/android/server/pm/KnoxKeyguardDelegate;->-get1(Lcom/android/server/pm/KnoxKeyguardDelegate;)Lcom/android/server/pm/KnoxNativeKeyguardHost;

    move-result-object v0

    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Lcom/android/server/pm/KnoxNativeKeyguardHost;->setBackgroundColor(I)V

    goto :goto_0
.end method
