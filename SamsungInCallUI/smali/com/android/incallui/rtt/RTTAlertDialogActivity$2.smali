.class Lcom/android/incallui/rtt/RTTAlertDialogActivity$2;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/incallui/rtt/RTTAlertDialogActivity;->createDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/rtt/RTTAlertDialogActivity;

.field final synthetic val$checkBox:Landroid/widget/CheckBox;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/android/incallui/rtt/RTTAlertDialogActivity;Landroid/widget/CheckBox;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/rtt/RTTAlertDialogActivity$2;->this$0:Lcom/android/incallui/rtt/RTTAlertDialogActivity;

    iput-object p2, p0, Lcom/android/incallui/rtt/RTTAlertDialogActivity$2;->val$checkBox:Landroid/widget/CheckBox;

    iput-object p3, p0, Lcom/android/incallui/rtt/RTTAlertDialogActivity$2;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object v0, p0, Lcom/android/incallui/rtt/RTTAlertDialogActivity$2;->val$checkBox:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "RTTAlertDialogActivity"

    const-string v1, "showInfoDialog positive checkbox checked"

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/incallui/rtt/RTTAlertDialogActivity$2;->this$0:Lcom/android/incallui/rtt/RTTAlertDialogActivity;

    iget-object v1, p0, Lcom/android/incallui/rtt/RTTAlertDialogActivity$2;->val$context:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/android/incallui/rtt/RTTAlertDialogActivity;->access$000(Lcom/android/incallui/rtt/RTTAlertDialogActivity;Landroid/content/Context;)V

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/rtt/RTTAlertDialogActivity$2;->this$0:Lcom/android/incallui/rtt/RTTAlertDialogActivity;

    invoke-virtual {v0}, Lcom/android/incallui/rtt/RTTAlertDialogActivity;->finish()V

    return-void
.end method
