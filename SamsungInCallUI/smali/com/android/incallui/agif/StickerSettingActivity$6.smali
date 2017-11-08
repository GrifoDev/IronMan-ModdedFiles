.class Lcom/android/incallui/agif/StickerSettingActivity$6;
.super Landroid/content/AsyncQueryHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/incallui/agif/StickerSettingActivity;->loadStickerOrder()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/agif/StickerSettingActivity;


# direct methods
.method constructor <init>(Lcom/android/incallui/agif/StickerSettingActivity;Landroid/content/ContentResolver;)V
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/agif/StickerSettingActivity$6;->this$0:Lcom/android/incallui/agif/StickerSettingActivity;

    invoke-direct {p0, p2}, Landroid/content/AsyncQueryHandler;-><init>(Landroid/content/ContentResolver;)V

    return-void
.end method


# virtual methods
.method protected onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .locals 11

    if-eqz p3, :cond_5

    const-string v0, "StickerSettingActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "loadStickerOrder, onQueryComplete = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p3}, Landroid/database/Cursor;->getCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/incallui/agif/StickerSettingActivity$6;->this$0:Lcom/android/incallui/agif/StickerSettingActivity;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0, v1}, Lcom/android/incallui/agif/StickerSettingActivity;->access$302(Lcom/android/incallui/agif/StickerSettingActivity;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    const/4 v0, 0x0

    move v8, v0

    :goto_0
    :try_start_0
    invoke-interface {p3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "package_order"

    invoke-interface {p3, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p3, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-lez v0, :cond_2

    const-string v0, "package_name"

    invoke-interface {p3, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p3, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    sget-object v0, Lcom/android/incallui/agif/AgifCallContract;->INCALLUI_PACKAGE_NAME:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "content_name"

    invoke-interface {p3, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p3, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    :cond_0
    const-string v0, "content_name"

    invoke-interface {p3, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p3, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v0, "StickerSettingActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "loadStickerOrder, contentName = "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "tray_icon_on"

    invoke-interface {p3, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p3, v0}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v4

    const-string v0, "tray_icon_off"

    invoke-interface {p3, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p3, v0}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v5

    const-string v0, "preloaded"

    invoke-interface {p3, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p3, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    iget-object v0, p0, Lcom/android/incallui/agif/StickerSettingActivity$6;->this$0:Lcom/android/incallui/agif/StickerSettingActivity;

    invoke-static {v0}, Lcom/android/incallui/agif/StickerSettingActivity;->access$400(Lcom/android/incallui/agif/StickerSettingActivity;)[Z

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/agif/StickerSettingActivity$6;->this$0:Lcom/android/incallui/agif/StickerSettingActivity;

    invoke-static {v0}, Lcom/android/incallui/agif/StickerSettingActivity;->access$400(Lcom/android/incallui/agif/StickerSettingActivity;)[Z

    move-result-object v0

    aget-boolean v0, v0, v8

    if-eqz v0, :cond_1

    const/4 v7, 0x1

    :cond_1
    iget-object v0, p0, Lcom/android/incallui/agif/StickerSettingActivity$6;->this$0:Lcom/android/incallui/agif/StickerSettingActivity;

    invoke-static {v0}, Lcom/android/incallui/agif/StickerSettingActivity;->access$300(Lcom/android/incallui/agif/StickerSettingActivity;)Ljava/util/ArrayList;

    move-result-object v9

    new-instance v0, Lcom/android/incallui/agif/StickerSettingActivity$StickerOrderInfo;

    iget-object v1, p0, Lcom/android/incallui/agif/StickerSettingActivity$6;->this$0:Lcom/android/incallui/agif/StickerSettingActivity;

    const-string v10, "TRUE"

    invoke-virtual {v10, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    invoke-direct/range {v0 .. v7}, Lcom/android/incallui/agif/StickerSettingActivity$StickerOrderInfo;-><init>(Lcom/android/incallui/agif/StickerSettingActivity;Ljava/lang/String;Ljava/lang/String;[B[BZZ)V

    invoke-virtual {v9, v8, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    add-int/lit8 v0, v8, 0x1

    move v8, v0

    goto/16 :goto_0

    :cond_3
    if-eqz p3, :cond_4

    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    :cond_4
    iget-object v0, p0, Lcom/android/incallui/agif/StickerSettingActivity$6;->this$0:Lcom/android/incallui/agif/StickerSettingActivity;

    invoke-static {v0}, Lcom/android/incallui/agif/StickerSettingActivity;->access$500(Lcom/android/incallui/agif/StickerSettingActivity;)V

    iget-object v0, p0, Lcom/android/incallui/agif/StickerSettingActivity$6;->this$0:Lcom/android/incallui/agif/StickerSettingActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/incallui/agif/StickerSettingActivity;->access$402(Lcom/android/incallui/agif/StickerSettingActivity;[Z)[Z

    :cond_5
    :goto_1
    return-void

    :catch_0
    move-exception v0

    :try_start_1
    const-string v1, "StickerSettingActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "loadStickerOrder, onQueryComplete error."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/incallui/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p3, :cond_6

    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    :cond_6
    iget-object v0, p0, Lcom/android/incallui/agif/StickerSettingActivity$6;->this$0:Lcom/android/incallui/agif/StickerSettingActivity;

    invoke-static {v0}, Lcom/android/incallui/agif/StickerSettingActivity;->access$500(Lcom/android/incallui/agif/StickerSettingActivity;)V

    iget-object v0, p0, Lcom/android/incallui/agif/StickerSettingActivity$6;->this$0:Lcom/android/incallui/agif/StickerSettingActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/incallui/agif/StickerSettingActivity;->access$402(Lcom/android/incallui/agif/StickerSettingActivity;[Z)[Z

    goto :goto_1

    :catchall_0
    move-exception v0

    if-eqz p3, :cond_7

    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    :cond_7
    iget-object v1, p0, Lcom/android/incallui/agif/StickerSettingActivity$6;->this$0:Lcom/android/incallui/agif/StickerSettingActivity;

    invoke-static {v1}, Lcom/android/incallui/agif/StickerSettingActivity;->access$500(Lcom/android/incallui/agif/StickerSettingActivity;)V

    iget-object v1, p0, Lcom/android/incallui/agif/StickerSettingActivity$6;->this$0:Lcom/android/incallui/agif/StickerSettingActivity;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/android/incallui/agif/StickerSettingActivity;->access$402(Lcom/android/incallui/agif/StickerSettingActivity;[Z)[Z

    throw v0
.end method
