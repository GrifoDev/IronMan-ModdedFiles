.class Lcom/android/incallui/fragment/RTTFragment$6;
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


# direct methods
.method constructor <init>(Lcom/android/incallui/fragment/RTTFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/fragment/RTTFragment$6;->this$0:Lcom/android/incallui/fragment/RTTFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/fragment/RTTFragment$6;->this$0:Lcom/android/incallui/fragment/RTTFragment;

    invoke-virtual {v0}, Lcom/android/incallui/fragment/RTTFragment;->updateMessage()V

    return-void
.end method
