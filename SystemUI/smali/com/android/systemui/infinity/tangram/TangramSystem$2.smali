.class Lcom/android/systemui/infinity/tangram/TangramSystem$2;
.super Ljava/lang/Object;
.source "TangramSystem.java"

# interfaces
.implements Lcom/altamirasoft/glanimationutil/GLValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/infinity/tangram/TangramSystem;->show()V
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

    iput-object p1, p0, Lcom/android/systemui/infinity/tangram/TangramSystem$2;->this$0:Lcom/android/systemui/infinity/tangram/TangramSystem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Lcom/altamirasoft/glanimationutil/GLValueAnimator;)V
    .locals 3

    invoke-virtual {p1}, Lcom/altamirasoft/glanimationutil/GLValueAnimator;->getCurrentValue()F

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/infinity/tangram/TangramSystem$2;->this$0:Lcom/android/systemui/infinity/tangram/TangramSystem;

    const/4 v2, 0x0

    iput v2, v1, Lcom/android/systemui/infinity/tangram/TangramSystem;->hideingProgress:F

    iget-object v1, p0, Lcom/android/systemui/infinity/tangram/TangramSystem$2;->this$0:Lcom/android/systemui/infinity/tangram/TangramSystem;

    iput v0, v1, Lcom/android/systemui/infinity/tangram/TangramSystem;->showingProgress:F

    return-void
.end method
