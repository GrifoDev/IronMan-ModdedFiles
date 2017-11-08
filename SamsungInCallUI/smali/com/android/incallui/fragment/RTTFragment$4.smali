.class Lcom/android/incallui/fragment/RTTFragment$4;
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

.field final synthetic val$chatMessage:Lcom/android/incallui/rtt/ChatMessage;


# direct methods
.method constructor <init>(Lcom/android/incallui/fragment/RTTFragment;Lcom/android/incallui/rtt/ChatMessage;)V
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/fragment/RTTFragment$4;->this$0:Lcom/android/incallui/fragment/RTTFragment;

    iput-object p2, p0, Lcom/android/incallui/fragment/RTTFragment$4;->val$chatMessage:Lcom/android/incallui/rtt/ChatMessage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/android/incallui/fragment/RTTFragment$4;->this$0:Lcom/android/incallui/fragment/RTTFragment;

    iget-object v1, p0, Lcom/android/incallui/fragment/RTTFragment$4;->val$chatMessage:Lcom/android/incallui/rtt/ChatMessage;

    invoke-virtual {v0, v1}, Lcom/android/incallui/fragment/RTTFragment;->displayMessage(Lcom/android/incallui/rtt/ChatMessage;)V

    return-void
.end method
