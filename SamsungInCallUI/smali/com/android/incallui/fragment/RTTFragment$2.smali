.class Lcom/android/incallui/fragment/RTTFragment$2;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/incallui/fragment/RTTFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field addedString:Ljava/lang/String;

.field beforestring:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/incallui/fragment/RTTFragment;


# direct methods
.method constructor <init>(Lcom/android/incallui/fragment/RTTFragment;)V
    .locals 1

    iput-object p1, p0, Lcom/android/incallui/fragment/RTTFragment$2;->this$0:Lcom/android/incallui/fragment/RTTFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/android/incallui/fragment/RTTFragment$2;->addedString:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/android/incallui/fragment/RTTFragment$2;->beforestring:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 10

    const/4 v6, 0x0

    const/4 v7, -0x1

    const/4 v9, 0x1

    const-string v0, "afterTextChanged "

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/fragment/RTTFragment$2;->this$0:Lcom/android/incallui/fragment/RTTFragment;

    invoke-static {v0}, Lcom/android/incallui/fragment/RTTFragment;->access$000(Lcom/android/incallui/fragment/RTTFragment;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/widget/Button;->setEnabled(Z)V

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/fragment/RTTFragment$2;->this$0:Lcom/android/incallui/fragment/RTTFragment;

    invoke-static {v0}, Lcom/android/incallui/fragment/RTTFragment;->access$000(Lcom/android/incallui/fragment/RTTFragment;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v9}, Landroid/widget/Button;->setEnabled(Z)V

    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/android/incallui/fragment/RTTFragment$2;->this$0:Lcom/android/incallui/fragment/RTTFragment;

    invoke-static {v0}, Lcom/android/incallui/fragment/RTTFragment;->access$100(Lcom/android/incallui/fragment/RTTFragment;)Lcom/android/incallui/rtt/ChatAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/rtt/ChatAdapter;->findMyLastRealTimePosition()I

    move-result v0

    if-eq v0, v7, :cond_3

    iget-object v1, p0, Lcom/android/incallui/fragment/RTTFragment$2;->this$0:Lcom/android/incallui/fragment/RTTFragment;

    invoke-virtual {v1, v0}, Lcom/android/incallui/fragment/RTTFragment;->removeMessage(I)V

    iget-object v0, p0, Lcom/android/incallui/fragment/RTTFragment$2;->this$0:Lcom/android/incallui/fragment/RTTFragment;

    invoke-virtual {v0}, Lcom/android/incallui/fragment/RTTFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/incallui/fragment/RTTFragment$2;->this$0:Lcom/android/incallui/fragment/RTTFragment;

    invoke-virtual {v0}, Lcom/android/incallui/fragment/RTTFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcom/android/incallui/fragment/RTTFragment$2$1;

    invoke-direct {v1, p0}, Lcom/android/incallui/fragment/RTTFragment$2$1;-><init>(Lcom/android/incallui/fragment/RTTFragment$2;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_2
    iget-object v0, p0, Lcom/android/incallui/fragment/RTTFragment$2;->this$0:Lcom/android/incallui/fragment/RTTFragment;

    invoke-virtual {v0}, Lcom/android/incallui/fragment/RTTFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/incallui/fragment/RTTFragment$2;->this$0:Lcom/android/incallui/fragment/RTTFragment;

    invoke-virtual {v0}, Lcom/android/incallui/fragment/RTTFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/RTTPresenter;

    const-string v1, "\t"

    invoke-virtual {v0, v1}, Lcom/android/incallui/RTTPresenter;->sendRttMessage(Ljava/lang/String;)V

    :cond_3
    :goto_0
    return-void

    :cond_4
    iget-object v0, p0, Lcom/android/incallui/fragment/RTTFragment$2;->this$0:Lcom/android/incallui/fragment/RTTFragment;

    invoke-static {v0}, Lcom/android/incallui/fragment/RTTFragment;->access$200(Lcom/android/incallui/fragment/RTTFragment;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/fragment/RTTFragment$2;->addedString:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/incallui/fragment/RTTFragment$2;->beforestring:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/incallui/fragment/RTTFragment$2;->addedString:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "strings are same "

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, ""

    iput-object v0, p0, Lcom/android/incallui/fragment/RTTFragment$2;->beforestring:Ljava/lang/String;

    goto :goto_0

    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "afterTextChanged incoming = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/fragment/RTTFragment$2;->addedString:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "afterTextChanged substring to display on chatbox= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/fragment/RTTFragment$2;->addedString:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/incallui/fragment/RTTFragment$2;->addedString:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/incallui/fragment/RTTFragment$2;->this$0:Lcom/android/incallui/fragment/RTTFragment;

    invoke-static {v0}, Lcom/android/incallui/fragment/RTTFragment;->access$300(Lcom/android/incallui/fragment/RTTFragment;)Landroid/os/CountDownTimer;

    move-result-object v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/incallui/fragment/RTTFragment$2;->this$0:Lcom/android/incallui/fragment/RTTFragment;

    invoke-static {v0}, Lcom/android/incallui/fragment/RTTFragment;->access$300(Lcom/android/incallui/fragment/RTTFragment;)Landroid/os/CountDownTimer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    :cond_6
    iget-object v8, p0, Lcom/android/incallui/fragment/RTTFragment$2;->this$0:Lcom/android/incallui/fragment/RTTFragment;

    new-instance v0, Lcom/android/incallui/fragment/RTTFragment$2$2;

    const-wide/16 v2, 0x1388

    const-wide/16 v4, 0x2710

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/incallui/fragment/RTTFragment$2$2;-><init>(Lcom/android/incallui/fragment/RTTFragment$2;JJ)V

    invoke-static {v8, v0}, Lcom/android/incallui/fragment/RTTFragment;->access$302(Lcom/android/incallui/fragment/RTTFragment;Landroid/os/CountDownTimer;)Landroid/os/CountDownTimer;

    iget-object v0, p0, Lcom/android/incallui/fragment/RTTFragment$2;->this$0:Lcom/android/incallui/fragment/RTTFragment;

    invoke-static {v0}, Lcom/android/incallui/fragment/RTTFragment;->access$300(Lcom/android/incallui/fragment/RTTFragment;)Landroid/os/CountDownTimer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "afterTextChanged (beforestring length= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/fragment/RTTFragment$2;->beforestring:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "addedString length= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/fragment/RTTFragment$2;->addedString:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/incallui/fragment/RTTFragment$2;->addedString:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    iget-object v1, p0, Lcom/android/incallui/fragment/RTTFragment$2;->beforestring:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-le v0, v1, :cond_7

    iget-object v0, p0, Lcom/android/incallui/fragment/RTTFragment$2;->beforestring:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    :goto_1
    move v1, v6

    move v2, v7

    :goto_2
    if-ge v1, v0, :cond_8

    iget-object v3, p0, Lcom/android/incallui/fragment/RTTFragment$2;->addedString:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    iget-object v4, p0, Lcom/android/incallui/fragment/RTTFragment$2;->beforestring:Ljava/lang/String;

    invoke-virtual {v4, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-ne v3, v4, :cond_8

    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_7
    iget-object v0, p0, Lcom/android/incallui/fragment/RTTFragment$2;->addedString:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    goto :goto_1

    :cond_8
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "afterTextChanged end:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "matchIndex"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/incallui/fragment/RTTFragment$2;->beforestring:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    iget-object v1, p0, Lcom/android/incallui/fragment/RTTFragment$2;->addedString:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    if-ne v0, v1, :cond_c

    iget-object v0, p0, Lcom/android/incallui/fragment/RTTFragment$2;->addedString:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ne v2, v0, :cond_c

    iget-object v0, p0, Lcom/android/incallui/fragment/RTTFragment$2;->this$0:Lcom/android/incallui/fragment/RTTFragment;

    invoke-virtual {v0}, Lcom/android/incallui/fragment/RTTFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v0

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/android/incallui/fragment/RTTFragment$2;->this$0:Lcom/android/incallui/fragment/RTTFragment;

    invoke-virtual {v0}, Lcom/android/incallui/fragment/RTTFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/RTTPresenter;

    const-string v1, "\u0008"

    invoke-virtual {v0, v1}, Lcom/android/incallui/RTTPresenter;->sendRttMessage(Ljava/lang/String;)V

    :cond_9
    :goto_3
    iget-object v0, p0, Lcom/android/incallui/fragment/RTTFragment$2;->this$0:Lcom/android/incallui/fragment/RTTFragment;

    invoke-static {v0}, Lcom/android/incallui/fragment/RTTFragment;->access$100(Lcom/android/incallui/fragment/RTTFragment;)Lcom/android/incallui/rtt/ChatAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/rtt/ChatAdapter;->findMyLastRealTimePosition()I

    move-result v0

    if-eq v0, v7, :cond_10

    iget-object v1, p0, Lcom/android/incallui/fragment/RTTFragment$2;->this$0:Lcom/android/incallui/fragment/RTTFragment;

    invoke-static {v1}, Lcom/android/incallui/fragment/RTTFragment;->access$100(Lcom/android/incallui/fragment/RTTFragment;)Lcom/android/incallui/rtt/ChatAdapter;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/incallui/rtt/ChatAdapter;->getItem(I)Lcom/android/incallui/rtt/ChatMessage;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "afterTextChanged lastPosition addedString.substring(beforestring.length())= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/incallui/fragment/RTTFragment$2;->addedString:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "lastPosition"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v1, :cond_a

    iget-object v2, p0, Lcom/android/incallui/fragment/RTTFragment$2;->beforestring:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-gt v2, v9, :cond_f

    iget-object v2, p0, Lcom/android/incallui/fragment/RTTFragment$2;->beforestring:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    iget-object v3, p0, Lcom/android/incallui/fragment/RTTFragment$2;->addedString:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-le v2, v3, :cond_f

    iget-object v1, p0, Lcom/android/incallui/fragment/RTTFragment$2;->this$0:Lcom/android/incallui/fragment/RTTFragment;

    invoke-virtual {v1, v0}, Lcom/android/incallui/fragment/RTTFragment;->removeMessage(I)V

    :cond_a
    :goto_4
    iget-object v0, p0, Lcom/android/incallui/fragment/RTTFragment$2;->this$0:Lcom/android/incallui/fragment/RTTFragment;

    invoke-virtual {v0}, Lcom/android/incallui/fragment/RTTFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/android/incallui/fragment/RTTFragment$2;->this$0:Lcom/android/incallui/fragment/RTTFragment;

    invoke-virtual {v0}, Lcom/android/incallui/fragment/RTTFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcom/android/incallui/fragment/RTTFragment$2$3;

    invoke-direct {v1, p0}, Lcom/android/incallui/fragment/RTTFragment$2$3;-><init>(Lcom/android/incallui/fragment/RTTFragment$2;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_b
    :goto_5
    iget-object v0, p0, Lcom/android/incallui/fragment/RTTFragment$2;->this$0:Lcom/android/incallui/fragment/RTTFragment;

    invoke-static {v0}, Lcom/android/incallui/fragment/RTTFragment;->access$300(Lcom/android/incallui/fragment/RTTFragment;)Landroid/os/CountDownTimer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    goto/16 :goto_0

    :cond_c
    iget-object v0, p0, Lcom/android/incallui/fragment/RTTFragment$2;->addedString:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x2

    if-ne v2, v0, :cond_d

    iget-object v0, p0, Lcom/android/incallui/fragment/RTTFragment$2;->this$0:Lcom/android/incallui/fragment/RTTFragment;

    invoke-virtual {v0}, Lcom/android/incallui/fragment/RTTFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v0

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/android/incallui/fragment/RTTFragment$2;->addedString:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    iget-object v1, p0, Lcom/android/incallui/fragment/RTTFragment$2;->beforestring:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    if-ne v0, v1, :cond_d

    iget-object v0, p0, Lcom/android/incallui/fragment/RTTFragment$2;->this$0:Lcom/android/incallui/fragment/RTTFragment;

    invoke-virtual {v0}, Lcom/android/incallui/fragment/RTTFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/RTTPresenter;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/incallui/fragment/RTTFragment$2;->addedString:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/incallui/fragment/RTTFragment$2;->beforestring:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/incallui/RTTPresenter;->sendRttMessage(Ljava/lang/String;)V

    goto/16 :goto_3

    :cond_d
    iget-object v0, p0, Lcom/android/incallui/fragment/RTTFragment$2;->this$0:Lcom/android/incallui/fragment/RTTFragment;

    invoke-virtual {v0}, Lcom/android/incallui/fragment/RTTFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/incallui/fragment/RTTFragment$2;->beforestring:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-ge v2, v0, :cond_e

    move v1, v6

    :goto_6
    iget-object v0, p0, Lcom/android/incallui/fragment/RTTFragment$2;->beforestring:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    sub-int/2addr v0, v2

    add-int/lit8 v0, v0, -0x1

    if-ge v1, v0, :cond_e

    iget-object v0, p0, Lcom/android/incallui/fragment/RTTFragment$2;->this$0:Lcom/android/incallui/fragment/RTTFragment;

    invoke-virtual {v0}, Lcom/android/incallui/fragment/RTTFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/RTTPresenter;

    const-string v3, "\u0008"

    invoke-virtual {v0, v3}, Lcom/android/incallui/RTTPresenter;->sendRttMessage(Ljava/lang/String;)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_6

    :cond_e
    iget-object v0, p0, Lcom/android/incallui/fragment/RTTFragment$2;->this$0:Lcom/android/incallui/fragment/RTTFragment;

    invoke-virtual {v0}, Lcom/android/incallui/fragment/RTTFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/RTTPresenter;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/android/incallui/fragment/RTTFragment$2;->addedString:Ljava/lang/String;

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v3, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/incallui/RTTPresenter;->sendRttMessage(Ljava/lang/String;)V

    goto/16 :goto_3

    :cond_f
    iget-object v0, p0, Lcom/android/incallui/fragment/RTTFragment$2;->addedString:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/android/incallui/rtt/ChatMessage;->setMessage(Ljava/lang/String;)V

    goto/16 :goto_4

    :cond_10
    new-instance v0, Lcom/android/incallui/rtt/ChatMessage;

    invoke-direct {v0}, Lcom/android/incallui/rtt/ChatMessage;-><init>()V

    invoke-virtual {v0, v9}, Lcom/android/incallui/rtt/ChatMessage;->setMe(Z)V

    invoke-virtual {v0, v9}, Lcom/android/incallui/rtt/ChatMessage;->setRealTime(Z)V

    iget-object v1, p0, Lcom/android/incallui/fragment/RTTFragment$2;->addedString:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/incallui/rtt/ChatMessage;->setMessage(Ljava/lang/String;)V

    invoke-static {}, Ljava/text/DateFormat;->getDateTimeInstance()Ljava/text/DateFormat;

    move-result-object v1

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1, v2}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/incallui/rtt/ChatMessage;->setDate(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/incallui/fragment/RTTFragment$2;->this$0:Lcom/android/incallui/fragment/RTTFragment;

    invoke-static {v1}, Lcom/android/incallui/fragment/RTTFragment;->access$504(Lcom/android/incallui/fragment/RTTFragment;)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/android/incallui/rtt/ChatMessage;->setId(J)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "new chat bubble onTextChanged idCount="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/incallui/fragment/RTTFragment$2;->this$0:Lcom/android/incallui/fragment/RTTFragment;

    invoke-static {v2}, Lcom/android/incallui/fragment/RTTFragment;->access$500(Lcom/android/incallui/fragment/RTTFragment;)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "addedString="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/incallui/fragment/RTTFragment$2;->addedString:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/incallui/fragment/RTTFragment$2;->this$0:Lcom/android/incallui/fragment/RTTFragment;

    invoke-virtual {v1}, Lcom/android/incallui/fragment/RTTFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    if-eqz v1, :cond_b

    iget-object v1, p0, Lcom/android/incallui/fragment/RTTFragment$2;->this$0:Lcom/android/incallui/fragment/RTTFragment;

    invoke-virtual {v1}, Lcom/android/incallui/fragment/RTTFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    new-instance v2, Lcom/android/incallui/fragment/RTTFragment$2$4;

    invoke-direct {v2, p0, v0}, Lcom/android/incallui/fragment/RTTFragment$2$4;-><init>(Lcom/android/incallui/fragment/RTTFragment$2;Lcom/android/incallui/rtt/ChatMessage;)V

    invoke-virtual {v1, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto/16 :goto_5
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "beforeTextChanged "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/fragment/RTTFragment$2;->beforestring:Ljava/lang/String;

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 2

    const-string v0, "onTextChanged "

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onTextChanged start= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "before"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "count"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method
