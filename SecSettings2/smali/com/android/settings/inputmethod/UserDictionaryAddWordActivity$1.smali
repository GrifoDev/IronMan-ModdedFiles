.class Lcom/android/settings/inputmethod/UserDictionaryAddWordActivity$1;
.super Ljava/lang/Object;
.source "UserDictionaryAddWordActivity.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/inputmethod/UserDictionaryAddWordActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/inputmethod/UserDictionaryAddWordActivity;


# direct methods
.method constructor <init>(Lcom/android/settings/inputmethod/UserDictionaryAddWordActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/inputmethod/UserDictionaryAddWordActivity$1;->this$0:Lcom/android/settings/inputmethod/UserDictionaryAddWordActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public declared-synchronized afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    monitor-enter p0

    monitor-exit p0

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 2

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    array-length v0, v0

    iget-object v1, p0, Lcom/android/settings/inputmethod/UserDictionaryAddWordActivity$1;->this$0:Lcom/android/settings/inputmethod/UserDictionaryAddWordActivity;

    invoke-static {v1}, Lcom/android/settings/inputmethod/UserDictionaryAddWordActivity;->-get2(Lcom/android/settings/inputmethod/UserDictionaryAddWordActivity;)I

    move-result v1

    if-gt v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/settings/inputmethod/UserDictionaryAddWordActivity$1;->this$0:Lcom/android/settings/inputmethod/UserDictionaryAddWordActivity;

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/settings/inputmethod/UserDictionaryAddWordActivity;->-set0(Lcom/android/settings/inputmethod/UserDictionaryAddWordActivity;Ljava/lang/String;)Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 4

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    iget-object v2, p0, Lcom/android/settings/inputmethod/UserDictionaryAddWordActivity$1;->this$0:Lcom/android/settings/inputmethod/UserDictionaryAddWordActivity;

    invoke-static {v2}, Lcom/android/settings/inputmethod/UserDictionaryAddWordActivity;->-get2(Lcom/android/settings/inputmethod/UserDictionaryAddWordActivity;)I

    move-result v2

    if-gt v1, v2, :cond_0

    iget-object v1, p0, Lcom/android/settings/inputmethod/UserDictionaryAddWordActivity$1;->this$0:Lcom/android/settings/inputmethod/UserDictionaryAddWordActivity;

    invoke-static {v1}, Lcom/android/settings/inputmethod/UserDictionaryAddWordActivity;->-get1(Lcom/android/settings/inputmethod/UserDictionaryAddWordActivity;)Landroid/widget/TextView;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/settings/inputmethod/UserDictionaryAddWordActivity$1;->this$0:Lcom/android/settings/inputmethod/UserDictionaryAddWordActivity;

    invoke-static {v1}, Lcom/android/settings/inputmethod/UserDictionaryAddWordActivity;->-get0(Lcom/android/settings/inputmethod/UserDictionaryAddWordActivity;)Landroid/widget/EditText;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/inputmethod/UserDictionaryAddWordActivity$1;->this$0:Lcom/android/settings/inputmethod/UserDictionaryAddWordActivity;

    invoke-virtual {v2}, Lcom/android/settings/inputmethod/UserDictionaryAddWordActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0d012c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    iget-object v2, p0, Lcom/android/settings/inputmethod/UserDictionaryAddWordActivity$1;->this$0:Lcom/android/settings/inputmethod/UserDictionaryAddWordActivity;

    invoke-static {v2}, Lcom/android/settings/inputmethod/UserDictionaryAddWordActivity;->-get2(Lcom/android/settings/inputmethod/UserDictionaryAddWordActivity;)I

    move-result v2

    if-le v1, v2, :cond_1

    iget-object v1, p0, Lcom/android/settings/inputmethod/UserDictionaryAddWordActivity$1;->this$0:Lcom/android/settings/inputmethod/UserDictionaryAddWordActivity;

    invoke-static {v1}, Lcom/android/settings/inputmethod/UserDictionaryAddWordActivity;->-get3(Lcom/android/settings/inputmethod/UserDictionaryAddWordActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    iget-object v2, p0, Lcom/android/settings/inputmethod/UserDictionaryAddWordActivity$1;->this$0:Lcom/android/settings/inputmethod/UserDictionaryAddWordActivity;

    invoke-static {v2}, Lcom/android/settings/inputmethod/UserDictionaryAddWordActivity;->-get2(Lcom/android/settings/inputmethod/UserDictionaryAddWordActivity;)I

    move-result v2

    if-gt v1, v2, :cond_2

    iget-object v1, p0, Lcom/android/settings/inputmethod/UserDictionaryAddWordActivity$1;->this$0:Lcom/android/settings/inputmethod/UserDictionaryAddWordActivity;

    invoke-static {v1}, Lcom/android/settings/inputmethod/UserDictionaryAddWordActivity;->-get0(Lcom/android/settings/inputmethod/UserDictionaryAddWordActivity;)Landroid/widget/EditText;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/inputmethod/UserDictionaryAddWordActivity$1;->this$0:Lcom/android/settings/inputmethod/UserDictionaryAddWordActivity;

    invoke-static {v2}, Lcom/android/settings/inputmethod/UserDictionaryAddWordActivity;->-get3(Lcom/android/settings/inputmethod/UserDictionaryAddWordActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    iget-object v1, p0, Lcom/android/settings/inputmethod/UserDictionaryAddWordActivity$1;->this$0:Lcom/android/settings/inputmethod/UserDictionaryAddWordActivity;

    invoke-static {v1}, Lcom/android/settings/inputmethod/UserDictionaryAddWordActivity;->-get1(Lcom/android/settings/inputmethod/UserDictionaryAddWordActivity;)Landroid/widget/TextView;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/settings/inputmethod/UserDictionaryAddWordActivity$1;->this$0:Lcom/android/settings/inputmethod/UserDictionaryAddWordActivity;

    invoke-static {v1}, Lcom/android/settings/inputmethod/UserDictionaryAddWordActivity;->-get0(Lcom/android/settings/inputmethod/UserDictionaryAddWordActivity;)Landroid/widget/EditText;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/inputmethod/UserDictionaryAddWordActivity$1;->this$0:Lcom/android/settings/inputmethod/UserDictionaryAddWordActivity;

    invoke-static {v2}, Lcom/android/settings/inputmethod/UserDictionaryAddWordActivity;->-get0(Lcom/android/settings/inputmethod/UserDictionaryAddWordActivity;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setSelection(I)V

    :cond_1
    return-void

    :cond_2
    iget-object v1, p0, Lcom/android/settings/inputmethod/UserDictionaryAddWordActivity$1;->this$0:Lcom/android/settings/inputmethod/UserDictionaryAddWordActivity;

    invoke-static {v1}, Lcom/android/settings/inputmethod/UserDictionaryAddWordActivity;->-get0(Lcom/android/settings/inputmethod/UserDictionaryAddWordActivity;)Landroid/widget/EditText;

    move-result-object v1

    const-string/jumbo v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
