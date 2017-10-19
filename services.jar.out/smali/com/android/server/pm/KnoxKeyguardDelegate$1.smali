.class Lcom/android/server/pm/KnoxKeyguardDelegate$1;
.super Ljava/lang/Object;
.source "KnoxKeyguardDelegate.java"

# interfaces
.implements Lcom/samsung/android/desktopmode/SemDesktopModeManager$DesktopModeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/KnoxKeyguardDelegate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/pm/KnoxKeyguardDelegate;


# direct methods
.method constructor <init>(Lcom/android/server/pm/KnoxKeyguardDelegate;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/pm/KnoxKeyguardDelegate$1;->this$0:Lcom/android/server/pm/KnoxKeyguardDelegate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDesktopModeStateChanged(Lcom/samsung/android/desktopmode/SemDesktopModeState;)V
    .locals 3

    const-string/jumbo v0, "KnoxKeyguardDelegate"

    const-string/jumbo v1, "On DesktopMode State Changed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/pm/KnoxKeyguardDelegate$1;->this$0:Lcom/android/server/pm/KnoxKeyguardDelegate;

    invoke-static {v0}, Lcom/android/server/pm/KnoxKeyguardDelegate;->-get2(Lcom/android/server/pm/KnoxKeyguardDelegate;)I

    move-result v0

    const/16 v1, -0x2710

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/server/pm/KnoxKeyguardDelegate$1;->this$0:Lcom/android/server/pm/KnoxKeyguardDelegate;

    invoke-virtual {v0}, Lcom/android/server/pm/KnoxKeyguardDelegate;->hideScrim()V

    iget-object v0, p0, Lcom/android/server/pm/KnoxKeyguardDelegate$1;->this$0:Lcom/android/server/pm/KnoxKeyguardDelegate;

    iget-object v1, p0, Lcom/android/server/pm/KnoxKeyguardDelegate$1;->this$0:Lcom/android/server/pm/KnoxKeyguardDelegate;

    invoke-static {v1}, Lcom/android/server/pm/KnoxKeyguardDelegate;->-get2(Lcom/android/server/pm/KnoxKeyguardDelegate;)I

    move-result v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/android/server/pm/KnoxKeyguardDelegate;->-wrap6(Lcom/android/server/pm/KnoxKeyguardDelegate;IZ)V

    :cond_0
    return-void
.end method
