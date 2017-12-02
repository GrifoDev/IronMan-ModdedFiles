.class Lcom/android/incallui/rtt/RTTAlertDialogActivity$3;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


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


# direct methods
.method constructor <init>(Lcom/android/incallui/rtt/RTTAlertDialogActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/rtt/RTTAlertDialogActivity$3;->this$0:Lcom/android/incallui/rtt/RTTAlertDialogActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/rtt/RTTAlertDialogActivity$3;->this$0:Lcom/android/incallui/rtt/RTTAlertDialogActivity;

    invoke-virtual {v0}, Lcom/android/incallui/rtt/RTTAlertDialogActivity;->finish()V

    return-void
.end method
