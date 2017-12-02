.class Lcom/android/incallui/agif/AgifManager$4;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/android/incallui/InCallPresenter$InCallStateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/incallui/agif/AgifManager;->createInCallStateListener()Lcom/android/incallui/InCallPresenter$InCallStateListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/agif/AgifManager;


# direct methods
.method constructor <init>(Lcom/android/incallui/agif/AgifManager;)V
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/agif/AgifManager$4;->this$0:Lcom/android/incallui/agif/AgifManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStateChange(Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/CallList;)V
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/agif/AgifManager$4;->this$0:Lcom/android/incallui/agif/AgifManager;

    invoke-static {v0}, Lcom/android/incallui/agif/AgifManager;->access$100(Lcom/android/incallui/agif/AgifManager;)Lcom/android/incallui/AgifPresenter;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/agif/AgifManager$4;->this$0:Lcom/android/incallui/agif/AgifManager;

    invoke-static {v0}, Lcom/android/incallui/agif/AgifManager;->access$100(Lcom/android/incallui/agif/AgifManager;)Lcom/android/incallui/AgifPresenter;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/incallui/AgifPresenter;->onInCallStateChanged(Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/CallList;)V

    :cond_0
    return-void
.end method
