.class Lcom/android/systemui/infinity/tangram/TangramSystem$3;
.super Ljava/lang/Object;
.source "TangramSystem.java"

# interfaces
.implements Lcom/altamirasoft/glanimationutil/GLValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/infinity/tangram/TangramSystem;->hide()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/infinity/tangram/TangramSystem;


# direct methods
.method constructor <init>(Lcom/android/systemui/infinity/tangram/TangramSystem;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/infinity/tangram/TangramSystem$3;->this$0:Lcom/android/systemui/infinity/tangram/TangramSystem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Lcom/altamirasoft/glanimationutil/GLValueAnimator;)V
    .locals 5

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    invoke-virtual {p1}, Lcom/altamirasoft/glanimationutil/GLValueAnimator;->getCurrentValue()F

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/infinity/tangram/TangramSystem$3;->this$0:Lcom/android/systemui/infinity/tangram/TangramSystem;

    iput v0, v1, Lcom/android/systemui/infinity/tangram/TangramSystem;->hideingProgress:F

    iget-object v1, p0, Lcom/android/systemui/infinity/tangram/TangramSystem$3;->this$0:Lcom/android/systemui/infinity/tangram/TangramSystem;

    const v2, 0x3f99999a    # 1.2f

    mul-float/2addr v2, v0

    sub-float v2, v4, v2

    iput v2, v1, Lcom/android/systemui/infinity/tangram/TangramSystem;->overallAlpha:F

    iget-object v1, p0, Lcom/android/systemui/infinity/tangram/TangramSystem$3;->this$0:Lcom/android/systemui/infinity/tangram/TangramSystem;

    iget v1, v1, Lcom/android/systemui/infinity/tangram/TangramSystem;->overallAlpha:F

    cmpg-float v1, v1, v3

    if-gez v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/infinity/tangram/TangramSystem$3;->this$0:Lcom/android/systemui/infinity/tangram/TangramSystem;

    iput v3, v1, Lcom/android/systemui/infinity/tangram/TangramSystem;->overallAlpha:F

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/infinity/tangram/TangramSystem$3;->this$0:Lcom/android/systemui/infinity/tangram/TangramSystem;

    sub-float v2, v4, v0

    const/high16 v3, 0x40000000    # 2.0f

    sub-float v2, v3, v2

    iput v2, v1, Lcom/android/systemui/infinity/tangram/TangramSystem;->overallScale:F

    iget-object v1, p0, Lcom/android/systemui/infinity/tangram/TangramSystem$3;->this$0:Lcom/android/systemui/infinity/tangram/TangramSystem;

    iget-object v2, p0, Lcom/android/systemui/infinity/tangram/TangramSystem$3;->this$0:Lcom/android/systemui/infinity/tangram/TangramSystem;

    iget v2, v2, Lcom/android/systemui/infinity/tangram/TangramSystem;->hideingProgress:F

    invoke-static {v1, v2}, Lcom/android/systemui/infinity/tangram/TangramSystem;->-wrap0(Lcom/android/systemui/infinity/tangram/TangramSystem;F)V

    return-void
.end method
