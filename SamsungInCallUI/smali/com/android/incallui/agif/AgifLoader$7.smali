.class Lcom/android/incallui/agif/AgifLoader$7;
.super Landroid/content/AsyncQueryHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/incallui/agif/AgifLoader;->loadRecommendedApps()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/agif/AgifLoader;


# direct methods
.method constructor <init>(Lcom/android/incallui/agif/AgifLoader;Landroid/content/ContentResolver;)V
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/agif/AgifLoader$7;->this$0:Lcom/android/incallui/agif/AgifLoader;

    invoke-direct {p0, p2}, Landroid/content/AsyncQueryHandler;-><init>(Landroid/content/ContentResolver;)V

    return-void
.end method


# virtual methods
.method protected onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .locals 12

    const/4 v0, 0x0

    const/4 v8, 0x3

    if-eqz p3, :cond_2

    const-string v1, "AgifLoader"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "loadRecommendedApps, onQueryComplete = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {p3}, Landroid/database/Cursor;->getCount()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/incallui/agif/AgifLoader$7;->this$0:Lcom/android/incallui/agif/AgifLoader;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v1, v2}, Lcom/android/incallui/agif/AgifLoader;->access$302(Lcom/android/incallui/agif/AgifLoader;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move v9, v0

    :goto_0
    :try_start_0
    invoke-interface {p3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    if-ge v9, v8, :cond_0

    sget-object v0, Lcom/android/incallui/agif/AgifCallContract;->CONTENT_URI_RECOMMENDED:Landroid/net/Uri;

    const/4 v1, 0x0

    invoke-interface {p3, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    int-to-long v2, v1

    invoke-static {v0, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    const/4 v0, 0x1

    invoke-interface {p3, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v0, 0x6

    invoke-interface {p3, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/16 v0, 0x8

    invoke-interface {p3, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v0, 0x4

    invoke-interface {p3, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    const-string v0, "installed"

    invoke-interface {p3, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p3, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    iget-object v0, p0, Lcom/android/incallui/agif/AgifLoader$7;->this$0:Lcom/android/incallui/agif/AgifLoader;

    invoke-static {v0}, Lcom/android/incallui/agif/AgifLoader;->access$300(Lcom/android/incallui/agif/AgifLoader;)Ljava/util/ArrayList;

    move-result-object v10

    new-instance v0, Lcom/android/incallui/agif/AgifLoader$RecommendedContents;

    iget-object v1, p0, Lcom/android/incallui/agif/AgifLoader$7;->this$0:Lcom/android/incallui/agif/AgifLoader;

    const-string v11, "TRUE"

    invoke-virtual {v11, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    invoke-direct/range {v0 .. v7}, Lcom/android/incallui/agif/AgifLoader$RecommendedContents;-><init>(Lcom/android/incallui/agif/AgifLoader;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {v10, v9, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    const-string v0, "AgifLoader"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "loadRecommendedApps, onQueryComplete cursor = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v0, v9, 0x1

    move v9, v0

    goto :goto_0

    :cond_0
    if-eqz p3, :cond_1

    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    :cond_1
    iget-object v0, p0, Lcom/android/incallui/agif/AgifLoader$7;->this$0:Lcom/android/incallui/agif/AgifLoader;

    invoke-static {v0}, Lcom/android/incallui/agif/AgifLoader;->access$300(Lcom/android/incallui/agif/AgifLoader;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/incallui/agif/AgifLoader$7;->this$0:Lcom/android/incallui/agif/AgifLoader;

    invoke-static {v0}, Lcom/android/incallui/agif/AgifLoader;->access$300(Lcom/android/incallui/agif/AgifLoader;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ne v0, v8, :cond_3

    invoke-static {}, Lcom/android/incallui/UiAdapter;->getInstance()Lcom/android/incallui/UiAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/UiAdapter;->getAgifUi()Lcom/android/incallui/AgifPresenter$AgifUi;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/android/incallui/UiAdapter;->getInstance()Lcom/android/incallui/UiAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/UiAdapter;->getAgifUi()Lcom/android/incallui/AgifPresenter$AgifUi;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/incallui/AgifPresenter$AgifUi;->updateRecommendPage()V

    :cond_2
    :goto_1
    return-void

    :cond_3
    iget-object v0, p0, Lcom/android/incallui/agif/AgifLoader$7;->this$0:Lcom/android/incallui/agif/AgifLoader;

    invoke-static {v0}, Lcom/android/incallui/agif/AgifLoader;->access$300(Lcom/android/incallui/agif/AgifLoader;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/android/incallui/agif/AgifLoader$7;->this$0:Lcom/android/incallui/agif/AgifLoader;

    invoke-static {v0}, Lcom/android/incallui/agif/AgifLoader;->access$300(Lcom/android/incallui/agif/AgifLoader;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    sub-int v0, v8, v0

    :goto_2
    iget-object v1, p0, Lcom/android/incallui/agif/AgifLoader$7;->this$0:Lcom/android/incallui/agif/AgifLoader;

    invoke-virtual {v1, v0}, Lcom/android/incallui/agif/AgifLoader;->loadRecommendedInstalledApps(I)V

    goto :goto_1

    :catch_0
    move-exception v0

    :try_start_1
    const-string v1, "AgifLoader"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "loadRecommendedApps, onQueryComplete error."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/incallui/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p3, :cond_4

    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    :cond_4
    iget-object v0, p0, Lcom/android/incallui/agif/AgifLoader$7;->this$0:Lcom/android/incallui/agif/AgifLoader;

    invoke-static {v0}, Lcom/android/incallui/agif/AgifLoader;->access$300(Lcom/android/incallui/agif/AgifLoader;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/incallui/agif/AgifLoader$7;->this$0:Lcom/android/incallui/agif/AgifLoader;

    invoke-static {v0}, Lcom/android/incallui/agif/AgifLoader;->access$300(Lcom/android/incallui/agif/AgifLoader;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ne v0, v8, :cond_5

    invoke-static {}, Lcom/android/incallui/UiAdapter;->getInstance()Lcom/android/incallui/UiAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/UiAdapter;->getAgifUi()Lcom/android/incallui/AgifPresenter$AgifUi;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/android/incallui/UiAdapter;->getInstance()Lcom/android/incallui/UiAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/UiAdapter;->getAgifUi()Lcom/android/incallui/AgifPresenter$AgifUi;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/incallui/AgifPresenter$AgifUi;->updateRecommendPage()V

    goto :goto_1

    :cond_5
    iget-object v0, p0, Lcom/android/incallui/agif/AgifLoader$7;->this$0:Lcom/android/incallui/agif/AgifLoader;

    invoke-static {v0}, Lcom/android/incallui/agif/AgifLoader;->access$300(Lcom/android/incallui/agif/AgifLoader;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/incallui/agif/AgifLoader$7;->this$0:Lcom/android/incallui/agif/AgifLoader;

    invoke-static {v0}, Lcom/android/incallui/agif/AgifLoader;->access$300(Lcom/android/incallui/agif/AgifLoader;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    sub-int/2addr v8, v0

    :cond_6
    iget-object v0, p0, Lcom/android/incallui/agif/AgifLoader$7;->this$0:Lcom/android/incallui/agif/AgifLoader;

    invoke-virtual {v0, v8}, Lcom/android/incallui/agif/AgifLoader;->loadRecommendedInstalledApps(I)V

    goto :goto_1

    :catchall_0
    move-exception v0

    if-eqz p3, :cond_7

    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    :cond_7
    iget-object v1, p0, Lcom/android/incallui/agif/AgifLoader$7;->this$0:Lcom/android/incallui/agif/AgifLoader;

    invoke-static {v1}, Lcom/android/incallui/agif/AgifLoader;->access$300(Lcom/android/incallui/agif/AgifLoader;)Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_9

    iget-object v1, p0, Lcom/android/incallui/agif/AgifLoader$7;->this$0:Lcom/android/incallui/agif/AgifLoader;

    invoke-static {v1}, Lcom/android/incallui/agif/AgifLoader;->access$300(Lcom/android/incallui/agif/AgifLoader;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ne v1, v8, :cond_9

    invoke-static {}, Lcom/android/incallui/UiAdapter;->getInstance()Lcom/android/incallui/UiAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/UiAdapter;->getAgifUi()Lcom/android/incallui/AgifPresenter$AgifUi;

    move-result-object v1

    if-eqz v1, :cond_8

    invoke-static {}, Lcom/android/incallui/UiAdapter;->getInstance()Lcom/android/incallui/UiAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/UiAdapter;->getAgifUi()Lcom/android/incallui/AgifPresenter$AgifUi;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/incallui/AgifPresenter$AgifUi;->updateRecommendPage()V

    :cond_8
    :goto_3
    throw v0

    :cond_9
    iget-object v1, p0, Lcom/android/incallui/agif/AgifLoader$7;->this$0:Lcom/android/incallui/agif/AgifLoader;

    invoke-static {v1}, Lcom/android/incallui/agif/AgifLoader;->access$300(Lcom/android/incallui/agif/AgifLoader;)Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_a

    iget-object v1, p0, Lcom/android/incallui/agif/AgifLoader$7;->this$0:Lcom/android/incallui/agif/AgifLoader;

    invoke-static {v1}, Lcom/android/incallui/agif/AgifLoader;->access$300(Lcom/android/incallui/agif/AgifLoader;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    sub-int/2addr v8, v1

    :cond_a
    iget-object v1, p0, Lcom/android/incallui/agif/AgifLoader$7;->this$0:Lcom/android/incallui/agif/AgifLoader;

    invoke-virtual {v1, v8}, Lcom/android/incallui/agif/AgifLoader;->loadRecommendedInstalledApps(I)V

    goto :goto_3

    :cond_b
    move v0, v8

    goto/16 :goto_2
.end method
