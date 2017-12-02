.class Lcom/android/incallui/fragment/RTTFragment$5;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/incallui/fragment/RTTFragment;->onRttEvent(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/fragment/RTTFragment;

.field final synthetic val$lastPosition:I


# direct methods
.method constructor <init>(Lcom/android/incallui/fragment/RTTFragment;I)V
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/fragment/RTTFragment$5;->this$0:Lcom/android/incallui/fragment/RTTFragment;

    iput p2, p0, Lcom/android/incallui/fragment/RTTFragment$5;->val$lastPosition:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    const-string v0, "run mitender chatMessage length= "

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/incallui/fragment/RTTFragment$5;->this$0:Lcom/android/incallui/fragment/RTTFragment;

    iget v1, p0, Lcom/android/incallui/fragment/RTTFragment$5;->val$lastPosition:I

    invoke-virtual {v0, v1}, Lcom/android/incallui/fragment/RTTFragment;->removeMessage(I)V

    iget-object v0, p0, Lcom/android/incallui/fragment/RTTFragment$5;->this$0:Lcom/android/incallui/fragment/RTTFragment;

    invoke-virtual {v0}, Lcom/android/incallui/fragment/RTTFragment;->updateMessage()V

    return-void
.end method
