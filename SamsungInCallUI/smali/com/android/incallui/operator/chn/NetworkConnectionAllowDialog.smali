.class public Lcom/android/incallui/operator/chn/NetworkConnectionAllowDialog;
.super Landroid/app/Activity;


# static fields
.field private static final TAG:Ljava/lang/String; = "NetworkConnectionAllowDialog"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const-string v0, "NetworkConnectionAllowDialog"

    const-string v1, "onCreate()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p0}, Lcom/android/incallui/agif/AgifCallServiceUtils;->getNetworkConnectionAllowDialog(Landroid/content/Context;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    new-instance v1, Lcom/android/incallui/operator/chn/NetworkConnectionAllowDialog$1;

    invoke-direct {v1, p0}, Lcom/android/incallui/operator/chn/NetworkConnectionAllowDialog$1;-><init>(Lcom/android/incallui/operator/chn/NetworkConnectionAllowDialog;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    new-instance v1, Lcom/android/incallui/operator/chn/NetworkConnectionAllowDialog$2;

    invoke-direct {v1, p0}, Lcom/android/incallui/operator/chn/NetworkConnectionAllowDialog$2;-><init>(Lcom/android/incallui/operator/chn/NetworkConnectionAllowDialog;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    return-void
.end method

.method protected onDestroy()V
    .locals 2

    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    const-string v0, "NetworkConnectionAllowDialog"

    const-string v1, "onDestroy()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
