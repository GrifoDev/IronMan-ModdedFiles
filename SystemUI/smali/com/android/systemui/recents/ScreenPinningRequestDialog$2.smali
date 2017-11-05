.class Lcom/android/systemui/recents/ScreenPinningRequestDialog$2;
.super Ljava/lang/Object;
.source "ScreenPinningRequestDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/recents/ScreenPinningRequestDialog;->showUnablePrompt()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/recents/ScreenPinningRequestDialog;


# direct methods
.method constructor <init>(Lcom/android/systemui/recents/ScreenPinningRequestDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/recents/ScreenPinningRequestDialog$2;->this$0:Lcom/android/systemui/recents/ScreenPinningRequestDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/recents/ScreenPinningRequestDialog$2;->this$0:Lcom/android/systemui/recents/ScreenPinningRequestDialog;

    invoke-virtual {v0}, Lcom/android/systemui/recents/ScreenPinningRequestDialog;->clearPrompt()V

    return-void
.end method
