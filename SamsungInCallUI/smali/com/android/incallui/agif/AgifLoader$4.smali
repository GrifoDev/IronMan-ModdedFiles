.class Lcom/android/incallui/agif/AgifLoader$4;
.super Landroid/content/AsyncQueryHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/incallui/agif/AgifLoader;->loadPreloadStickerContents(Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/agif/AgifLoader;

.field final synthetic val$isLastSticker:Z

.field final synthetic val$packageName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/incallui/agif/AgifLoader;Landroid/content/ContentResolver;Ljava/lang/String;Z)V
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/agif/AgifLoader$4;->this$0:Lcom/android/incallui/agif/AgifLoader;

    iput-object p3, p0, Lcom/android/incallui/agif/AgifLoader$4;->val$packageName:Ljava/lang/String;

    iput-boolean p4, p0, Lcom/android/incallui/agif/AgifLoader$4;->val$isLastSticker:Z

    invoke-direct {p0, p2}, Landroid/content/AsyncQueryHandler;-><init>(Landroid/content/ContentResolver;)V

    return-void
.end method


# virtual methods
.method protected onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .locals 8

    const/4 v1, 0x0

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    if-eqz p3, :cond_3

    const-string v0, "AgifLoader"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "loadPreloadStickerContents, onQueryComplete = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {p3}, Landroid/database/Cursor;->getCount()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v2, v1

    :goto_0
    :try_start_0
    invoke-interface {p3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/incallui/agif/AgifCallContract;->CONTENT_URI_AGIF:Landroid/net/Uri;

    const/4 v4, 0x0

    invoke-interface {p3, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    int-to-long v4, v4

    invoke-static {v0, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v4

    const/4 v0, 0x2

    invoke-interface {p3, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v0, 0x6

    if-ge v2, v0, :cond_f

    const/4 v0, 0x1

    :goto_1
    new-instance v6, Lcom/android/incallui/agif/AgifLoader$AgifContentsInfo;

    iget-object v7, p0, Lcom/android/incallui/agif/AgifLoader$4;->this$0:Lcom/android/incallui/agif/AgifLoader;

    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v6, v7, v4, v5, v0}, Lcom/android/incallui/agif/AgifLoader$AgifContentsInfo;-><init>(Lcom/android/incallui/agif/AgifLoader;Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {v3, v2, v6}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_0
    if-eqz p3, :cond_1

    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    :cond_1
    iget-object v0, p0, Lcom/android/incallui/agif/AgifLoader$4;->this$0:Lcom/android/incallui/agif/AgifLoader;

    invoke-static {v0}, Lcom/android/incallui/agif/AgifLoader;->access$000(Lcom/android/incallui/agif/AgifLoader;)Ljava/util/HashMap;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/incallui/agif/AgifLoader$4;->this$0:Lcom/android/incallui/agif/AgifLoader;

    invoke-static {v0}, Lcom/android/incallui/agif/AgifLoader;->access$000(Lcom/android/incallui/agif/AgifLoader;)Ljava/util/HashMap;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/agif/AgifLoader$4;->val$packageName:Ljava/lang/String;

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    iget-boolean v0, p0, Lcom/android/incallui/agif/AgifLoader$4;->val$isLastSticker:Z

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/InCallPresenter;->getCallPopupService()Lcom/android/incallui/service/SecCallPopupService;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/InCallPresenter;->getCallPopupService()Lcom/android/incallui/service/SecCallPopupService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/service/SecCallPopupService;->getPopupContainer()Lcom/android/incallui/service/SecCallPopupContainer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/service/SecCallPopupContainer;->getRejectMsgContentPopup()Lcom/android/incallui/RejectMsgContentPopup;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/RejectMsgContentPopup;->notifyAgifSetChanged()V

    :cond_3
    :goto_2
    return-void

    :cond_4
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/CallList;->hasIncomingCall()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-static {}, Lcom/android/incallui/UiAdapter;->getInstance()Lcom/android/incallui/UiAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/UiAdapter;->getAnswerUi()Lcom/android/incallui/AnswerUi;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-static {}, Lcom/android/incallui/UiAdapter;->getInstance()Lcom/android/incallui/UiAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/UiAdapter;->getAnswerUi()Lcom/android/incallui/AnswerUi;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/incallui/AnswerUi;->notifyAgifSetChanged()V

    goto :goto_2

    :cond_5
    invoke-static {}, Lcom/android/incallui/UiAdapter;->getInstance()Lcom/android/incallui/UiAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/UiAdapter;->getAgifUi()Lcom/android/incallui/AgifPresenter$AgifUi;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/android/incallui/UiAdapter;->getInstance()Lcom/android/incallui/UiAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/UiAdapter;->getAgifUi()Lcom/android/incallui/AgifPresenter$AgifUi;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/incallui/AgifPresenter$AgifUi;->notifyAgifSetChanged()V

    goto :goto_2

    :catch_0
    move-exception v0

    :try_start_1
    const-string v1, "AgifLoader"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "loadPreloadStickerContents, onQueryComplete error."

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p3, :cond_6

    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    :cond_6
    iget-object v0, p0, Lcom/android/incallui/agif/AgifLoader$4;->this$0:Lcom/android/incallui/agif/AgifLoader;

    invoke-static {v0}, Lcom/android/incallui/agif/AgifLoader;->access$000(Lcom/android/incallui/agif/AgifLoader;)Ljava/util/HashMap;

    move-result-object v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/incallui/agif/AgifLoader$4;->this$0:Lcom/android/incallui/agif/AgifLoader;

    invoke-static {v0}, Lcom/android/incallui/agif/AgifLoader;->access$000(Lcom/android/incallui/agif/AgifLoader;)Ljava/util/HashMap;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/agif/AgifLoader$4;->val$packageName:Ljava/lang/String;

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_7
    iget-boolean v0, p0, Lcom/android/incallui/agif/AgifLoader$4;->val$isLastSticker:Z

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/InCallPresenter;->getCallPopupService()Lcom/android/incallui/service/SecCallPopupService;

    move-result-object v0

    if-eqz v0, :cond_8

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

    :cond_8
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/CallList;->hasIncomingCall()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-static {}, Lcom/android/incallui/UiAdapter;->getInstance()Lcom/android/incallui/UiAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/UiAdapter;->getAnswerUi()Lcom/android/incallui/AnswerUi;

    move-result-object v0

    if-eqz v0, :cond_9

    invoke-static {}, Lcom/android/incallui/UiAdapter;->getInstance()Lcom/android/incallui/UiAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/UiAdapter;->getAnswerUi()Lcom/android/incallui/AnswerUi;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/incallui/AnswerUi;->notifyAgifSetChanged()V

    goto/16 :goto_2

    :cond_9
    invoke-static {}, Lcom/android/incallui/UiAdapter;->getInstance()Lcom/android/incallui/UiAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/UiAdapter;->getAgifUi()Lcom/android/incallui/AgifPresenter$AgifUi;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/android/incallui/UiAdapter;->getInstance()Lcom/android/incallui/UiAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/UiAdapter;->getAgifUi()Lcom/android/incallui/AgifPresenter$AgifUi;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/incallui/AgifPresenter$AgifUi;->notifyAgifSetChanged()V

    goto/16 :goto_2

    :catchall_0
    move-exception v0

    if-eqz p3, :cond_a

    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    :cond_a
    iget-object v1, p0, Lcom/android/incallui/agif/AgifLoader$4;->this$0:Lcom/android/incallui/agif/AgifLoader;

    invoke-static {v1}, Lcom/android/incallui/agif/AgifLoader;->access$000(Lcom/android/incallui/agif/AgifLoader;)Ljava/util/HashMap;

    move-result-object v1

    if-eqz v1, :cond_b

    iget-object v1, p0, Lcom/android/incallui/agif/AgifLoader$4;->this$0:Lcom/android/incallui/agif/AgifLoader;

    invoke-static {v1}, Lcom/android/incallui/agif/AgifLoader;->access$000(Lcom/android/incallui/agif/AgifLoader;)Ljava/util/HashMap;

    move-result-object v1

    iget-object v2, p0, Lcom/android/incallui/agif/AgifLoader$4;->val$packageName:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_b
    iget-boolean v1, p0, Lcom/android/incallui/agif/AgifLoader$4;->val$isLastSticker:Z

    if-eqz v1, :cond_c

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/InCallPresenter;->getCallPopupService()Lcom/android/incallui/service/SecCallPopupService;

    move-result-object v1

    if-eqz v1, :cond_d

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/InCallPresenter;->getCallPopupService()Lcom/android/incallui/service/SecCallPopupService;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/service/SecCallPopupService;->getPopupContainer()Lcom/android/incallui/service/SecCallPopupContainer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/service/SecCallPopupContainer;->getRejectMsgContentPopup()Lcom/android/incallui/RejectMsgContentPopup;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/RejectMsgContentPopup;->notifyAgifSetChanged()V

    :cond_c
    :goto_3
    throw v0

    :cond_d
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/CallList;->hasIncomingCall()Z

    move-result v1

    if-eqz v1, :cond_e

    invoke-static {}, Lcom/android/incallui/UiAdapter;->getInstance()Lcom/android/incallui/UiAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/UiAdapter;->getAnswerUi()Lcom/android/incallui/AnswerUi;

    move-result-object v1

    if-eqz v1, :cond_e

    invoke-static {}, Lcom/android/incallui/UiAdapter;->getInstance()Lcom/android/incallui/UiAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/UiAdapter;->getAnswerUi()Lcom/android/incallui/AnswerUi;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/incallui/AnswerUi;->notifyAgifSetChanged()V

    goto :goto_3

    :cond_e
    invoke-static {}, Lcom/android/incallui/UiAdapter;->getInstance()Lcom/android/incallui/UiAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/UiAdapter;->getAgifUi()Lcom/android/incallui/AgifPresenter$AgifUi;

    move-result-object v1

    if-eqz v1, :cond_c

    invoke-static {}, Lcom/android/incallui/UiAdapter;->getInstance()Lcom/android/incallui/UiAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/UiAdapter;->getAgifUi()Lcom/android/incallui/AgifPresenter$AgifUi;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/incallui/AgifPresenter$AgifUi;->notifyAgifSetChanged()V

    goto :goto_3

    :cond_f
    move v0, v1

    goto/16 :goto_1
.end method
