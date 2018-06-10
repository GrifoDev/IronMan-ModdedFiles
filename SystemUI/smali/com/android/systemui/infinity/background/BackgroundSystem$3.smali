.class Lcom/android/systemui/infinity/background/BackgroundSystem$3;
.super Ljava/lang/Object;
.source "BackgroundSystem.java"

# interfaces
.implements Lcom/altamirasoft/glanimationutil/GLValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/infinity/background/BackgroundSystem;->showHome()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/infinity/background/BackgroundSystem;


# direct methods
.method constructor <init>(Lcom/android/systemui/infinity/background/BackgroundSystem;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/infinity/background/BackgroundSystem$3;->this$0:Lcom/android/systemui/infinity/background/BackgroundSystem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Lcom/altamirasoft/glanimationutil/GLValueAnimator;)V
    .locals 3

    invoke-virtual {p1}, Lcom/altamirasoft/glanimationutil/GLValueAnimator;->getCurrentValue()F

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/infinity/background/BackgroundSystem$3;->this$0:Lcom/android/systemui/infinity/background/BackgroundSystem;

    iput v0, v1, Lcom/android/systemui/infinity/background/BackgroundSystem;->backgroundLockAlpha:F

    iget-object v1, p0, Lcom/android/systemui/infinity/background/BackgroundSystem$3;->this$0:Lcom/android/systemui/infinity/background/BackgroundSystem;

    const/high16 v2, 0x3f800000    # 1.0f

    add-float/2addr v2, v0

    iput v2, v1, Lcom/android/systemui/infinity/background/BackgroundSystem;->backgroundLockScale:F

    return-void
.end method
