.class Lcom/android/incallui/util/SecUncaughtExceptionDialogActivity$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/incallui/util/SecUncaughtExceptionDialogActivity;->showGuideDialog(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/util/SecUncaughtExceptionDialogActivity;


# direct methods
.method constructor <init>(Lcom/android/incallui/util/SecUncaughtExceptionDialogActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/util/SecUncaughtExceptionDialogActivity$1;->this$0:Lcom/android/incallui/util/SecUncaughtExceptionDialogActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    iget-object v0, p0, Lcom/android/incallui/util/SecUncaughtExceptionDialogActivity$1;->this$0:Lcom/android/incallui/util/SecUncaughtExceptionDialogActivity;

    invoke-virtual {v0}, Lcom/android/incallui/util/SecUncaughtExceptionDialogActivity;->finish()V

    return-void
.end method
