.class Lcom/android/incallui/fragment/RTTFragment$7$3;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/incallui/fragment/RTTFragment$7;->afterTextChanged(Landroid/text/Editable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/incallui/fragment/RTTFragment$7;


# direct methods
.method constructor <init>(Lcom/android/incallui/fragment/RTTFragment$7;)V
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/fragment/RTTFragment$7$3;->this$1:Lcom/android/incallui/fragment/RTTFragment$7;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/fragment/RTTFragment$7$3;->this$1:Lcom/android/incallui/fragment/RTTFragment$7;

    iget-object v0, v0, Lcom/android/incallui/fragment/RTTFragment$7;->this$0:Lcom/android/incallui/fragment/RTTFragment;

    invoke-virtual {v0}, Lcom/android/incallui/fragment/RTTFragment;->updateMessage()V

    return-void
.end method
