.class Lcom/android/incallui/fragment/VideoCallBaseFragment$4;
.super Lcom/android/incallui/InCallContentViewListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/incallui/fragment/VideoCallBaseFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/fragment/VideoCallBaseFragment;


# direct methods
.method constructor <init>(Lcom/android/incallui/fragment/VideoCallBaseFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/fragment/VideoCallBaseFragment$4;->this$0:Lcom/android/incallui/fragment/VideoCallBaseFragment;

    invoke-direct {p0}, Lcom/android/incallui/InCallContentViewListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onContentViewChange(II)V
    .locals 4

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallBaseFragment$4;->getContentView()Landroid/view/View;

    move-result-object v0

    const-string v1, "VIDEOZOOM"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "PreviewContainer - ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/view/View;->getX()F

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/view/View;->getY()F

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ") "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " X "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/incallui/service/vt/VideoCallLog;->feature(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallBaseFragment$4;->this$0:Lcom/android/incallui/fragment/VideoCallBaseFragment;

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/android/incallui/fragment/VideoCallBaseFragment$4;->this$0:Lcom/android/incallui/fragment/VideoCallBaseFragment;

    iget-object v2, v2, Lcom/android/incallui/fragment/VideoCallBaseFragment;->mVideoCallMetrics:Lcom/android/incallui/service/vt/VideoCallMetrics;

    invoke-virtual {v2}, Lcom/android/incallui/service/vt/VideoCallMetrics;->getPreviewDimension()Lcom/android/incallui/service/vt/VideoDimension;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/service/vt/VideoDimension;->getAspectRatio()F

    move-result v2

    invoke-virtual {v0, v1, v2, p1, p2}, Lcom/android/incallui/fragment/VideoCallBaseFragment;->setTransform(IFII)V

    return-void
.end method
