.class Lcom/android/systemui/stackdivider/DividerView$5;
.super Ljava/lang/Object;
.source "DividerView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/stackdivider/DividerView;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/stackdivider/DividerView;

.field final synthetic val$reason:I


# direct methods
.method constructor <init>(Lcom/android/systemui/stackdivider/DividerView;I)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/stackdivider/DividerView$5;->this$0:Lcom/android/systemui/stackdivider/DividerView;

    iput p2, p0, Lcom/android/systemui/stackdivider/DividerView$5;->val$reason:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView$5;->this$0:Lcom/android/systemui/stackdivider/DividerView;

    invoke-static {v0}, Lcom/android/systemui/stackdivider/DividerView;->-get8(Lcom/android/systemui/stackdivider/DividerView;)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/stackdivider/events/DividerStartSnapModeEvent;

    iget v2, p0, Lcom/android/systemui/stackdivider/DividerView$5;->val$reason:I

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v2}, Lcom/android/systemui/stackdivider/events/DividerStartSnapModeEvent;-><init>(ZZI)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/events/EventBus;->send(Lcom/android/systemui/recents/events/EventBus$Event;)V

    return-void
.end method