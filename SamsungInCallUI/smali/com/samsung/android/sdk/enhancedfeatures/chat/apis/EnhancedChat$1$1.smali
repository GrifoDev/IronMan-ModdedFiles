.class Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChat$1$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChat$1;->onKeyUpdateSuccess(Lcom/samsung/android/sdk/ssf/message/io/KeySet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChat$1;


# direct methods
.method constructor <init>(Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChat$1;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChat$1$1;->this$1:Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChat$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChat$1$1;->this$1:Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChat$1;

    iget-object v0, v0, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChat$1;->val$getChatChannelListener:Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/listeners/GetChatChannelListener;

    const/16 v1, 0x32c9

    const-string v2, "Server session initiation failed!"

    invoke-interface {v0, v1, v2}, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/listeners/GetChatChannelListener;->onError(ILjava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChat$1$1;->this$1:Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChat$1;

    iget-object v0, v0, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChat$1;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChat;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChat;->access$002(Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/EnhancedChat;Z)Z

    return-void
.end method
