.class Lcom/android/incallui/fragment/VoiceCallButtonFragment$12;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/incallui/fragment/VoiceCallButtonFragment;->showRTTErrorDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/fragment/VoiceCallButtonFragment;


# direct methods
.method constructor <init>(Lcom/android/incallui/fragment/VoiceCallButtonFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment$12;->this$0:Lcom/android/incallui/fragment/VoiceCallButtonFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment$12;->this$0:Lcom/android/incallui/fragment/VoiceCallButtonFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->access$802(Lcom/android/incallui/fragment/VoiceCallButtonFragment;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    return-void
.end method
