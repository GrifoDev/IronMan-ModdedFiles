.class Lcom/android/server/policy/GlobalActions$43;
.super Ljava/lang/Object;
.source "GlobalActions.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/policy/GlobalActions;->adjustBottomView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/policy/GlobalActions;


# direct methods
.method constructor <init>(Lcom/android/server/policy/GlobalActions;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/policy/GlobalActions$43;->this$0:Lcom/android/server/policy/GlobalActions;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 4

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    iget-object v1, p0, Lcom/android/server/policy/GlobalActions$43;->this$0:Lcom/android/server/policy/GlobalActions;

    iget-object v2, p0, Lcom/android/server/policy/GlobalActions$43;->this$0:Lcom/android/server/policy/GlobalActions;

    invoke-static {v2}, Lcom/android/server/policy/GlobalActions;->-wrap8(Lcom/android/server/policy/GlobalActions;)Z

    move-result v2

    invoke-static {}, Lcom/android/server/policy/GlobalActions;->-get65()Z

    move-result v3

    invoke-static {v1, v0, v2, v3}, Lcom/android/server/policy/GlobalActions;->-wrap2(Lcom/android/server/policy/GlobalActions;IZZ)Z

    move-result v1

    return v1
.end method
