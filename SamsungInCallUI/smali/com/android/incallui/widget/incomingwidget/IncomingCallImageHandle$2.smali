.class Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle$2;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;


# direct methods
.method constructor <init>(Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;)V
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle$2;->this$0:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 2

    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle$2;->this$0:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;

    const-string v1, "mHandleImageViewLayout - onFocusChange"

    invoke-virtual {v0, v1}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->log(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle$2;->this$0:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->access$1202(Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;Z)Z

    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle$2;->this$0:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;

    invoke-virtual {v0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->processForActive()V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle$2;->this$0:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;

    invoke-virtual {v0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->processForNormal()V

    goto :goto_0
.end method
