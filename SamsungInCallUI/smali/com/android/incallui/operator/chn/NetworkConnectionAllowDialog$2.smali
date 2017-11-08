.class Lcom/android/incallui/operator/chn/NetworkConnectionAllowDialog$2;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/incallui/operator/chn/NetworkConnectionAllowDialog;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/operator/chn/NetworkConnectionAllowDialog;


# direct methods
.method constructor <init>(Lcom/android/incallui/operator/chn/NetworkConnectionAllowDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/operator/chn/NetworkConnectionAllowDialog$2;->this$0:Lcom/android/incallui/operator/chn/NetworkConnectionAllowDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 2

    const-string v0, "NetworkConnectionAllowDialog"

    const-string v1, "onCancel()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/incallui/InCallUISystemDB;->isNetworkPermissionAllowed()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    iget-object v1, p0, Lcom/android/incallui/operator/chn/NetworkConnectionAllowDialog$2;->this$0:Lcom/android/incallui/operator/chn/NetworkConnectionAllowDialog;

    invoke-virtual {v1, v0}, Lcom/android/incallui/operator/chn/NetworkConnectionAllowDialog;->setResult(I)V

    iget-object v0, p0, Lcom/android/incallui/operator/chn/NetworkConnectionAllowDialog$2;->this$0:Lcom/android/incallui/operator/chn/NetworkConnectionAllowDialog;

    invoke-virtual {v0}, Lcom/android/incallui/operator/chn/NetworkConnectionAllowDialog;->finish()V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
