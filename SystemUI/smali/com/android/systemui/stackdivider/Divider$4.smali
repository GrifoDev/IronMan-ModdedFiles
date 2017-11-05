.class Lcom/android/systemui/stackdivider/Divider$4;
.super Ljava/lang/Object;
.source "Divider.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/stackdivider/Divider;->startAutoResize(ILandroid/graphics/Rect;Landroid/graphics/Rect;ZI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/stackdivider/Divider;

.field final synthetic val$dockTaskRect:Landroid/graphics/Rect;

.field final synthetic val$fullscreenTaskRect:Landroid/graphics/Rect;

.field final synthetic val$position:I

.field final synthetic val$resetTaskBoundsAfterAnim:Z


# direct methods
.method constructor <init>(Lcom/android/systemui/stackdivider/Divider;ILandroid/graphics/Rect;Landroid/graphics/Rect;Z)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/stackdivider/Divider$4;->this$0:Lcom/android/systemui/stackdivider/Divider;

    iput p2, p0, Lcom/android/systemui/stackdivider/Divider$4;->val$position:I

    iput-object p3, p0, Lcom/android/systemui/stackdivider/Divider$4;->val$dockTaskRect:Landroid/graphics/Rect;

    iput-object p4, p0, Lcom/android/systemui/stackdivider/Divider$4;->val$fullscreenTaskRect:Landroid/graphics/Rect;

    iput-boolean p5, p0, Lcom/android/systemui/stackdivider/Divider$4;->val$resetTaskBoundsAfterAnim:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-object v0, p0, Lcom/android/systemui/stackdivider/Divider$4;->this$0:Lcom/android/systemui/stackdivider/Divider;

    invoke-static {v0}, Lcom/android/systemui/stackdivider/Divider;->-get4(Lcom/android/systemui/stackdivider/Divider;)Lcom/android/systemui/stackdivider/DividerView;

    move-result-object v0

    iget v1, p0, Lcom/android/systemui/stackdivider/Divider$4;->val$position:I

    iget-object v2, p0, Lcom/android/systemui/stackdivider/Divider$4;->val$dockTaskRect:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/android/systemui/stackdivider/Divider$4;->val$fullscreenTaskRect:Landroid/graphics/Rect;

    iget-boolean v4, p0, Lcom/android/systemui/stackdivider/Divider$4;->val$resetTaskBoundsAfterAnim:Z

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/systemui/stackdivider/DividerView;->flingToAutoResizePosition(ILandroid/graphics/Rect;Landroid/graphics/Rect;Z)V

    return-void
.end method
