.class Lcom/android/server/wm/FreeformStackWindowController$2;
.super Ljava/lang/Object;
.source "FreeformStackWindowController.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/wm/FreeformStackWindowController;->createKeepVisibleAnimation()Landroid/view/animation/Animation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wm/FreeformStackWindowController;


# direct methods
.method constructor <init>(Lcom/android/server/wm/FreeformStackWindowController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/wm/FreeformStackWindowController$2;->this$0:Lcom/android/server/wm/FreeformStackWindowController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2

    invoke-static {}, Lcom/android/server/wm/FreeformStackWindowController;->-get0()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "FreeformStackWindowController"

    const-string/jumbo v1, "keep_visible_animation onAnimationEnd()"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 2

    invoke-static {}, Lcom/android/server/wm/FreeformStackWindowController;->-get0()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "FreeformStackWindowController"

    const-string/jumbo v1, "keep_visible_animation onAnimationStart()"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method
