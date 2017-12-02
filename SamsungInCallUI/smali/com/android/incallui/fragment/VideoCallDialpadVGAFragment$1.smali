.class Lcom/android/incallui/fragment/VideoCallDialpadVGAFragment$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/incallui/fragment/VideoCallDialpadVGAFragment;->setupLayout()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/fragment/VideoCallDialpadVGAFragment;

.field final synthetic val$observer:Landroid/view/ViewTreeObserver;


# direct methods
.method constructor <init>(Lcom/android/incallui/fragment/VideoCallDialpadVGAFragment;Landroid/view/ViewTreeObserver;)V
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/fragment/VideoCallDialpadVGAFragment$1;->this$0:Lcom/android/incallui/fragment/VideoCallDialpadVGAFragment;

    iput-object p2, p0, Lcom/android/incallui/fragment/VideoCallDialpadVGAFragment$1;->val$observer:Landroid/view/ViewTreeObserver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 2

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallDialpadVGAFragment$1;->val$observer:Landroid/view/ViewTreeObserver;

    invoke-virtual {v0}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallDialpadVGAFragment$1;->this$0:Lcom/android/incallui/fragment/VideoCallDialpadVGAFragment;

    invoke-virtual {v0}, Lcom/android/incallui/fragment/VideoCallDialpadVGAFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallDialpadVGAFragment$1;->val$observer:Landroid/view/ViewTreeObserver;

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallDialpadVGAFragment$1;->this$0:Lcom/android/incallui/fragment/VideoCallDialpadVGAFragment;

    invoke-virtual {v0}, Lcom/android/incallui/fragment/VideoCallDialpadVGAFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0586

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallDialpadVGAFragment$1;->this$0:Lcom/android/incallui/fragment/VideoCallDialpadVGAFragment;

    iget-object v1, v1, Lcom/android/incallui/fragment/VideoCallDialpadVGAFragment;->mHideButton:Landroid/widget/ImageView;

    invoke-static {v1, v0, v0}, Lcom/android/incallui/util/GraphicResourceUtils;->setRippleSize(Landroid/view/View;II)V

    goto :goto_0
.end method
