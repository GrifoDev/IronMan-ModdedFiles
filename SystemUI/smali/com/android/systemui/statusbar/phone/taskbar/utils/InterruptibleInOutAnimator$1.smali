.class Lcom/android/systemui/statusbar/phone/taskbar/utils/InterruptibleInOutAnimator$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "InterruptibleInOutAnimator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/phone/taskbar/utils/InterruptibleInOutAnimator;-><init>(JFF)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/taskbar/utils/InterruptibleInOutAnimator;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/taskbar/utils/InterruptibleInOutAnimator;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/taskbar/utils/InterruptibleInOutAnimator$1;->this$0:Lcom/android/systemui/statusbar/phone/taskbar/utils/InterruptibleInOutAnimator;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/utils/InterruptibleInOutAnimator$1;->this$0:Lcom/android/systemui/statusbar/phone/taskbar/utils/InterruptibleInOutAnimator;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/phone/taskbar/utils/InterruptibleInOutAnimator;->-set0(Lcom/android/systemui/statusbar/phone/taskbar/utils/InterruptibleInOutAnimator;I)I

    return-void
.end method
