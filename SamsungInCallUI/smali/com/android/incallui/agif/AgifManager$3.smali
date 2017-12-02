.class Lcom/android/incallui/agif/AgifManager$3;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/android/incallui/agif/AgifManager$ShowCallStickersListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/incallui/agif/AgifManager;->createShowCallStickersListener()Lcom/android/incallui/agif/AgifManager$ShowCallStickersListener;
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

    iput-object p1, p0, Lcom/android/incallui/agif/AgifManager$3;->this$0:Lcom/android/incallui/agif/AgifManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onShowCallStickersChanged(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/agif/AgifManager$3;->this$0:Lcom/android/incallui/agif/AgifManager;

    invoke-static {v0}, Lcom/android/incallui/agif/AgifManager;->access$100(Lcom/android/incallui/agif/AgifManager;)Lcom/android/incallui/AgifPresenter;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/agif/AgifManager$3;->this$0:Lcom/android/incallui/agif/AgifManager;

    invoke-static {v0}, Lcom/android/incallui/agif/AgifManager;->access$100(Lcom/android/incallui/agif/AgifManager;)Lcom/android/incallui/AgifPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/AgifPresenter;->onShowCallStickerSettingChanged()V

    :cond_0
    return-void
.end method
