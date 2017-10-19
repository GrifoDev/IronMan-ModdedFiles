.class Lcom/android/server/aod/AODManagerService$AODListenerRecord$1;
.super Landroid/os/Handler;
.source "AODManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/aod/AODManagerService$AODListenerRecord;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/aod/AODManagerService$AODListenerRecord;


# direct methods
.method constructor <init>(Lcom/android/server/aod/AODManagerService$AODListenerRecord;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/aod/AODManagerService$AODListenerRecord$1;->this$1:Lcom/android/server/aod/AODManagerService$AODListenerRecord;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 10

    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    iget v9, p1, Landroid/os/Message;->what:I

    packed-switch v9, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string/jumbo v9, "notiCount"

    invoke-virtual {v1, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    const-string/jumbo v9, "keys"

    invoke-virtual {v1, v9}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4

    iget-object v9, p0, Lcom/android/server/aod/AODManagerService$AODListenerRecord$1;->this$1:Lcom/android/server/aod/AODManagerService$AODListenerRecord;

    invoke-static {v9, v5, v4}, Lcom/android/server/aod/AODManagerService$AODListenerRecord;->-wrap2(Lcom/android/server/aod/AODManagerService$AODListenerRecord;ILjava/util/List;)V

    goto :goto_0

    :pswitch_1
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v9, "timeInfo"

    invoke-virtual {v0, v9}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v8

    const-string/jumbo v9, "description"

    invoke-virtual {v0, v9}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    iget-object v9, p0, Lcom/android/server/aod/AODManagerService$AODListenerRecord$1;->this$1:Lcom/android/server/aod/AODManagerService$AODListenerRecord;

    invoke-static {v9, v8, v3}, Lcom/android/server/aod/AODManagerService$AODListenerRecord;->-wrap1(Lcom/android/server/aod/AODManagerService$AODListenerRecord;Ljava/util/List;Ljava/util/List;)V

    goto :goto_0

    :pswitch_2
    iget-object v9, p0, Lcom/android/server/aod/AODManagerService$AODListenerRecord$1;->this$1:Lcom/android/server/aod/AODManagerService$AODListenerRecord;

    invoke-static {v9}, Lcom/android/server/aod/AODManagerService$AODListenerRecord;->-wrap0(Lcom/android/server/aod/AODManagerService$AODListenerRecord;)V

    goto :goto_0

    :pswitch_3
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    const-string/jumbo v9, "notiCount"

    invoke-virtual {v2, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v7

    const-string/jumbo v9, "statusBarNotifications"

    invoke-virtual {v2, v9}, Landroid/os/Bundle;->getParcelableArray(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object v6

    check-cast v6, [Landroid/service/notification/StatusBarNotification;

    iget-object v9, p0, Lcom/android/server/aod/AODManagerService$AODListenerRecord$1;->this$1:Lcom/android/server/aod/AODManagerService$AODListenerRecord;

    invoke-static {v9, v7, v6}, Lcom/android/server/aod/AODManagerService$AODListenerRecord;->-wrap3(Lcom/android/server/aod/AODManagerService$AODListenerRecord;I[Landroid/service/notification/StatusBarNotification;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
