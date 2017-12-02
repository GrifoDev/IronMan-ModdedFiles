.class Lcom/android/incallui/RejectMsgContentPopup$4;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/incallui/RejectMsgContentPopup;->configureRejectMsgList(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/RejectMsgContentPopup;


# direct methods
.method constructor <init>(Lcom/android/incallui/RejectMsgContentPopup;)V
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/RejectMsgContentPopup$4;->this$0:Lcom/android/incallui/RejectMsgContentPopup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 2

    iget-object v0, p0, Lcom/android/incallui/RejectMsgContentPopup$4;->this$0:Lcom/android/incallui/RejectMsgContentPopup;

    iget-object v1, p0, Lcom/android/incallui/RejectMsgContentPopup$4;->this$0:Lcom/android/incallui/RejectMsgContentPopup;

    iget-object v1, v1, Lcom/android/incallui/RejectMsgContentPopup;->mRejectMsgList:Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Lcom/android/incallui/RejectMsgContentPopup;->setListViewHeightBasedOnChildren(Landroid/widget/ListView;)V

    return-void
.end method
