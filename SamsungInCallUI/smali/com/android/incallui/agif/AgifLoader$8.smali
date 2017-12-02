.class Lcom/android/incallui/agif/AgifLoader$8;
.super Landroid/content/AsyncQueryHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/incallui/agif/AgifLoader;->loadRecentContents(Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/agif/AgifLoader;

.field final synthetic val$callState:Ljava/lang/String;

.field final synthetic val$isShowRandomAgif:Z


# direct methods
.method constructor <init>(Lcom/android/incallui/agif/AgifLoader;Landroid/content/ContentResolver;Ljava/lang/String;Z)V
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/agif/AgifLoader$8;->this$0:Lcom/android/incallui/agif/AgifLoader;

    iput-object p3, p0, Lcom/android/incallui/agif/AgifLoader$8;->val$callState:Ljava/lang/String;

    iput-boolean p4, p0, Lcom/android/incallui/agif/AgifLoader$8;->val$isShowRandomAgif:Z

    invoke-direct {p0, p2}, Landroid/content/AsyncQueryHandler;-><init>(Landroid/content/ContentResolver;)V

    return-void
.end method


# virtual methods
.method protected onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .locals 7

    const/4 v0, 0x0

    if-eqz p3, :cond_4

    const-string v1, "AgifLoader"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "loadRecentContents, onQueryComplete = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {p3}, Landroid/database/Cursor;->getCount()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " = callState = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/incallui/agif/AgifLoader$8;->val$callState:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move v1, v0

    :goto_0
    :try_start_0
    invoke-interface {p3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "package_name"

    invoke-interface {p3, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p3, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x2

    invoke-interface {p3, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/incallui/agif/AgifLoader$8;->this$0:Lcom/android/incallui/agif/AgifLoader;

    const/4 v5, 0x1

    invoke-virtual {v4, v3, v5, v0}, Lcom/android/incallui/agif/AgifLoader;->getAgifContentUri(Ljava/lang/String;ZLjava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1
    new-instance v4, Lcom/android/incallui/agif/AgifLoader$AgifContentsInfo;

    iget-object v5, p0, Lcom/android/incallui/agif/AgifLoader$8;->this$0:Lcom/android/incallui/agif/AgifLoader;

    const/4 v6, 0x0

    invoke-direct {v4, v5, v0, v3, v6}, Lcom/android/incallui/agif/AgifLoader$AgifContentsInfo;-><init>(Lcom/android/incallui/agif/AgifLoader;Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {v2, v1, v4}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    if-eqz p3, :cond_2

    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    :cond_2
    iget-object v0, p0, Lcom/android/incallui/agif/AgifLoader$8;->this$0:Lcom/android/incallui/agif/AgifLoader;

    invoke-static {v0}, Lcom/android/incallui/agif/AgifLoader;->access$400(Lcom/android/incallui/agif/AgifLoader;)Ljava/util/HashMap;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/incallui/agif/AgifLoader$8;->this$0:Lcom/android/incallui/agif/AgifLoader;

    invoke-static {v0}, Lcom/android/incallui/agif/AgifLoader;->access$400(Lcom/android/incallui/agif/AgifLoader;)Ljava/util/HashMap;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/agif/AgifLoader$8;->val$callState:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/InCallPresenter;->getCallPopupService()Lcom/android/incallui/service/SecCallPopupService;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/InCallPresenter;->getCallPopupService()Lcom/android/incallui/service/SecCallPopupService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/service/SecCallPopupService;->getPopupContainer()Lcom/android/incallui/service/SecCallPopupContainer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/service/SecCallPopupContainer;->getRejectMsgContentPopup()Lcom/android/incallui/RejectMsgContentPopup;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/RejectMsgContentPopup;->notifyAgifSetChanged()V

    :cond_4
    :goto_2
    return-void

    :cond_5
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/CallList;->hasIncomingCall()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-static {}, Lcom/android/incallui/UiAdapter;->getInstance()Lcom/android/incallui/UiAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/UiAdapter;->getAnswerUi()Lcom/android/incallui/AnswerUi;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-static {}, Lcom/android/incallui/UiAdapter;->getInstance()Lcom/android/incallui/UiAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/UiAdapter;->getAnswerUi()Lcom/android/incallui/AnswerUi;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/incallui/AnswerUi;->notifyAgifSetChanged()V

    goto :goto_2

    :cond_6
    invoke-static {}, Lcom/android/incallui/UiAdapter;->getInstance()Lcom/android/incallui/UiAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/UiAdapter;->getAgifUi()Lcom/android/incallui/AgifPresenter$AgifUi;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-static {}, Lcom/android/incallui/UiAdapter;->getInstance()Lcom/android/incallui/UiAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/UiAdapter;->getAgifUi()Lcom/android/incallui/AgifPresenter$AgifUi;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/incallui/AgifPresenter$AgifUi;->notifyAgifSetChanged()V

    iget-boolean v0, p0, Lcom/android/incallui/agif/AgifLoader$8;->val$isShowRandomAgif:Z

    if-eqz v0, :cond_4

    invoke-static {}, Lcom/android/incallui/agif/AgifCallServiceUtils;->showRandomAgif()V

    goto :goto_2

    :catch_0
    move-exception v0

    :try_start_1
    const-string v1, "AgifLoader"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "loadRecentContents, onQueryComplete error."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/incallui/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p3, :cond_7

    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    :cond_7
    iget-object v0, p0, Lcom/android/incallui/agif/AgifLoader$8;->this$0:Lcom/android/incallui/agif/AgifLoader;

    invoke-static {v0}, Lcom/android/incallui/agif/AgifLoader;->access$400(Lcom/android/incallui/agif/AgifLoader;)Ljava/util/HashMap;

    move-result-object v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/android/incallui/agif/AgifLoader$8;->this$0:Lcom/android/incallui/agif/AgifLoader;

    invoke-static {v0}, Lcom/android/incallui/agif/AgifLoader;->access$400(Lcom/android/incallui/agif/AgifLoader;)Ljava/util/HashMap;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/agif/AgifLoader$8;->val$callState:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_8
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/InCallPresenter;->getCallPopupService()Lcom/android/incallui/service/SecCallPopupService;

    move-result-object v0

    if-eqz v0, :cond_9

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/InCallPresenter;->getCallPopupService()Lcom/android/incallui/service/SecCallPopupService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/service/SecCallPopupService;->getPopupContainer()Lcom/android/incallui/service/SecCallPopupContainer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/service/SecCallPopupContainer;->getRejectMsgContentPopup()Lcom/android/incallui/RejectMsgContentPopup;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/RejectMsgContentPopup;->notifyAgifSetChanged()V

    goto/16 :goto_2

    :cond_9
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/CallList;->hasIncomingCall()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-static {}, Lcom/android/incallui/UiAdapter;->getInstance()Lcom/android/incallui/UiAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/UiAdapter;->getAnswerUi()Lcom/android/incallui/AnswerUi;

    move-result-object v0

    if-eqz v0, :cond_a

    invoke-static {}, Lcom/android/incallui/UiAdapter;->getInstance()Lcom/android/incallui/UiAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/UiAdapter;->getAnswerUi()Lcom/android/incallui/AnswerUi;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/incallui/AnswerUi;->notifyAgifSetChanged()V

    goto/16 :goto_2

    :cond_a
    invoke-static {}, Lcom/android/incallui/UiAdapter;->getInstance()Lcom/android/incallui/UiAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/UiAdapter;->getAgifUi()Lcom/android/incallui/AgifPresenter$AgifUi;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-static {}, Lcom/android/incallui/UiAdapter;->getInstance()Lcom/android/incallui/UiAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/UiAdapter;->getAgifUi()Lcom/android/incallui/AgifPresenter$AgifUi;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/incallui/AgifPresenter$AgifUi;->notifyAgifSetChanged()V

    iget-boolean v0, p0, Lcom/android/incallui/agif/AgifLoader$8;->val$isShowRandomAgif:Z

    if-eqz v0, :cond_4

    invoke-static {}, Lcom/android/incallui/agif/AgifCallServiceUtils;->showRandomAgif()V

    goto/16 :goto_2

    :catchall_0
    move-exception v0

    if-eqz p3, :cond_b

    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    :cond_b
    iget-object v1, p0, Lcom/android/incallui/agif/AgifLoader$8;->this$0:Lcom/android/incallui/agif/AgifLoader;

    invoke-static {v1}, Lcom/android/incallui/agif/AgifLoader;->access$400(Lcom/android/incallui/agif/AgifLoader;)Ljava/util/HashMap;

    move-result-object v1

    if-eqz v1, :cond_c

    iget-object v1, p0, Lcom/android/incallui/agif/AgifLoader$8;->this$0:Lcom/android/incallui/agif/AgifLoader;

    invoke-static {v1}, Lcom/android/incallui/agif/AgifLoader;->access$400(Lcom/android/incallui/agif/AgifLoader;)Ljava/util/HashMap;

    move-result-object v1

    iget-object v3, p0, Lcom/android/incallui/agif/AgifLoader$8;->val$callState:Ljava/lang/String;

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_c
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/InCallPresenter;->getCallPopupService()Lcom/android/incallui/service/SecCallPopupService;

    move-result-object v1

    if-eqz v1, :cond_e

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/InCallPresenter;->getCallPopupService()Lcom/android/incallui/service/SecCallPopupService;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/service/SecCallPopupService;->getPopupContainer()Lcom/android/incallui/service/SecCallPopupContainer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/service/SecCallPopupContainer;->getRejectMsgContentPopup()Lcom/android/incallui/RejectMsgContentPopup;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/RejectMsgContentPopup;->notifyAgifSetChanged()V

    :cond_d
    :goto_3
    throw v0

    :cond_e
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/CallList;->hasIncomingCall()Z

    move-result v1

    if-eqz v1, :cond_f

    invoke-static {}, Lcom/android/incallui/UiAdapter;->getInstance()Lcom/android/incallui/UiAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/UiAdapter;->getAnswerUi()Lcom/android/incallui/AnswerUi;

    move-result-object v1

    if-eqz v1, :cond_f

    invoke-static {}, Lcom/android/incallui/UiAdapter;->getInstance()Lcom/android/incallui/UiAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/UiAdapter;->getAnswerUi()Lcom/android/incallui/AnswerUi;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/incallui/AnswerUi;->notifyAgifSetChanged()V

    goto :goto_3

    :cond_f
    invoke-static {}, Lcom/android/incallui/UiAdapter;->getInstance()Lcom/android/incallui/UiAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/UiAdapter;->getAgifUi()Lcom/android/incallui/AgifPresenter$AgifUi;

    move-result-object v1

    if-eqz v1, :cond_d

    invoke-static {}, Lcom/android/incallui/UiAdapter;->getInstance()Lcom/android/incallui/UiAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/UiAdapter;->getAgifUi()Lcom/android/incallui/AgifPresenter$AgifUi;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/incallui/AgifPresenter$AgifUi;->notifyAgifSetChanged()V

    iget-boolean v1, p0, Lcom/android/incallui/agif/AgifLoader$8;->val$isShowRandomAgif:Z

    if-eqz v1, :cond_d

    invoke-static {}, Lcom/android/incallui/agif/AgifCallServiceUtils;->showRandomAgif()V

    goto :goto_3
.end method
