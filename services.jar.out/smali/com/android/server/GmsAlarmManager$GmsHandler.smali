.class Lcom/android/server/GmsAlarmManager$GmsHandler;
.super Landroid/os/Handler;
.source "GmsAlarmManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/GmsAlarmManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GmsHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/GmsAlarmManager;


# direct methods
.method public constructor <init>(Lcom/android/server/GmsAlarmManager;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/GmsAlarmManager$GmsHandler;->this$0:Lcom/android/server/GmsAlarmManager;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 8

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x0

    const/4 v4, 0x1

    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    const-string/jumbo v1, "GmsAlarmManager"

    const-string/jumbo v2, "receiver delay check network message"

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/server/GmsAlarmManager$GmsHandler;->this$0:Lcom/android/server/GmsAlarmManager;

    invoke-static {v1}, Lcom/android/server/GmsAlarmManager;->-get9(Lcom/android/server/GmsAlarmManager;)Lcom/android/server/GmsAlarmManager$GmsHandler;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/android/server/GmsAlarmManager$GmsHandler;->removeMessages(I)V

    iget-object v1, p0, Lcom/android/server/GmsAlarmManager$GmsHandler;->this$0:Lcom/android/server/GmsAlarmManager;

    invoke-static {v1}, Lcom/android/server/GmsAlarmManager;->-get9(Lcom/android/server/GmsAlarmManager;)Lcom/android/server/GmsAlarmManager$GmsHandler;

    move-result-object v1

    const-wide/32 v2, 0x36ee80

    invoke-virtual {v1, v4, v2, v3}, Lcom/android/server/GmsAlarmManager$GmsHandler;->sendEmptyMessageDelayed(IJ)Z

    iget-object v1, p0, Lcom/android/server/GmsAlarmManager$GmsHandler;->this$0:Lcom/android/server/GmsAlarmManager;

    invoke-static {v1}, Lcom/android/server/GmsAlarmManager;->-get12(Lcom/android/server/GmsAlarmManager;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/server/GmsAlarmManager$GmsHandler;->this$0:Lcom/android/server/GmsAlarmManager;

    invoke-static {v1}, Lcom/android/server/GmsAlarmManager;->-get14(Lcom/android/server/GmsAlarmManager;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    iget-object v1, p0, Lcom/android/server/GmsAlarmManager$GmsHandler;->this$0:Lcom/android/server/GmsAlarmManager;

    invoke-static {v1}, Lcom/android/server/GmsAlarmManager;->-get8(Lcom/android/server/GmsAlarmManager;)Z

    move-result v0

    iget-object v1, p0, Lcom/android/server/GmsAlarmManager$GmsHandler;->this$0:Lcom/android/server/GmsAlarmManager;

    invoke-static {v1}, Lcom/android/server/GmsAlarmManager;->-get2(Lcom/android/server/GmsAlarmManager;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/server/GmsAlarmManager$GmsHandler;->this$0:Lcom/android/server/GmsAlarmManager;

    invoke-static {v1}, Lcom/android/server/GmsAlarmManager;->-wrap2(Lcom/android/server/GmsAlarmManager;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/server/GmsAlarmManager$GmsHandler;->this$0:Lcom/android/server/GmsAlarmManager;

    invoke-static {v1}, Lcom/android/server/GmsAlarmManager;->-wrap0(Lcom/android/server/GmsAlarmManager;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/server/GmsAlarmManager$GmsHandler;->this$0:Lcom/android/server/GmsAlarmManager;

    const-string/jumbo v2, "https://www.google.com/"

    const/16 v3, 0xc8

    invoke-static {v1, v2, v3}, Lcom/android/server/GmsAlarmManager;->-wrap1(Lcom/android/server/GmsAlarmManager;Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/server/GmsAlarmManager$GmsHandler;->this$0:Lcom/android/server/GmsAlarmManager;

    invoke-static {v1, v4}, Lcom/android/server/GmsAlarmManager;->-set3(Lcom/android/server/GmsAlarmManager;Z)Z

    :goto_1
    iget-object v1, p0, Lcom/android/server/GmsAlarmManager$GmsHandler;->this$0:Lcom/android/server/GmsAlarmManager;

    invoke-static {v1, v5}, Lcom/android/server/GmsAlarmManager;->-set7(Lcom/android/server/GmsAlarmManager;Z)Z

    if-eqz v0, :cond_4

    iget-object v1, p0, Lcom/android/server/GmsAlarmManager$GmsHandler;->this$0:Lcom/android/server/GmsAlarmManager;

    invoke-static {v1}, Lcom/android/server/GmsAlarmManager;->-get0(Lcom/android/server/GmsAlarmManager;)Lcom/android/server/GmsAlarmManager$NetWorkStats;

    move-result-object v1

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/android/server/GmsAlarmManager$NetWorkStats;->setEndTime(J)V

    :goto_2
    iget-object v1, p0, Lcom/android/server/GmsAlarmManager$GmsHandler;->this$0:Lcom/android/server/GmsAlarmManager;

    invoke-static {v1}, Lcom/android/server/GmsAlarmManager;->-get8(Lcom/android/server/GmsAlarmManager;)Z

    move-result v1

    if-nez v1, :cond_5

    iget-object v1, p0, Lcom/android/server/GmsAlarmManager$GmsHandler;->this$0:Lcom/android/server/GmsAlarmManager;

    invoke-static {v1}, Lcom/android/server/GmsAlarmManager;->-get9(Lcom/android/server/GmsAlarmManager;)Lcom/android/server/GmsAlarmManager$GmsHandler;

    move-result-object v1

    invoke-virtual {v1, v6}, Lcom/android/server/GmsAlarmManager$GmsHandler;->removeMessages(I)V

    iget-object v1, p0, Lcom/android/server/GmsAlarmManager$GmsHandler;->this$0:Lcom/android/server/GmsAlarmManager;

    invoke-static {v1}, Lcom/android/server/GmsAlarmManager;->-get9(Lcom/android/server/GmsAlarmManager;)Lcom/android/server/GmsAlarmManager$GmsHandler;

    move-result-object v1

    invoke-virtual {v1, v6}, Lcom/android/server/GmsAlarmManager$GmsHandler;->sendEmptyMessage(I)Z

    iget-object v1, p0, Lcom/android/server/GmsAlarmManager$GmsHandler;->this$0:Lcom/android/server/GmsAlarmManager;

    invoke-static {v1}, Lcom/android/server/GmsAlarmManager;->-get15(Lcom/android/server/GmsAlarmManager;)Lcom/android/server/GmsAlarmManager$NetWorkStats;

    move-result-object v1

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/android/server/GmsAlarmManager$NetWorkStats;->addStartTime(J)V

    goto/16 :goto_0

    :cond_1
    iget-object v1, p0, Lcom/android/server/GmsAlarmManager$GmsHandler;->this$0:Lcom/android/server/GmsAlarmManager;

    invoke-static {v1}, Lcom/android/server/GmsAlarmManager;->-get4(Lcom/android/server/GmsAlarmManager;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "GmsAlarmManager"

    const-string/jumbo v2, "Screen is off,skip check"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_2
    iget-object v1, p0, Lcom/android/server/GmsAlarmManager$GmsHandler;->this$0:Lcom/android/server/GmsAlarmManager;

    invoke-static {v1, v5}, Lcom/android/server/GmsAlarmManager;->-set3(Lcom/android/server/GmsAlarmManager;Z)Z

    goto :goto_1

    :cond_3
    iget-object v1, p0, Lcom/android/server/GmsAlarmManager$GmsHandler;->this$0:Lcom/android/server/GmsAlarmManager;

    invoke-static {v1, v4}, Lcom/android/server/GmsAlarmManager;->-set3(Lcom/android/server/GmsAlarmManager;Z)Z

    goto :goto_1

    :cond_4
    iget-object v1, p0, Lcom/android/server/GmsAlarmManager$GmsHandler;->this$0:Lcom/android/server/GmsAlarmManager;

    invoke-static {v1}, Lcom/android/server/GmsAlarmManager;->-get15(Lcom/android/server/GmsAlarmManager;)Lcom/android/server/GmsAlarmManager$NetWorkStats;

    move-result-object v1

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/android/server/GmsAlarmManager$NetWorkStats;->setEndTime(J)V

    goto :goto_2

    :cond_5
    iget-object v1, p0, Lcom/android/server/GmsAlarmManager$GmsHandler;->this$0:Lcom/android/server/GmsAlarmManager;

    invoke-static {v1}, Lcom/android/server/GmsAlarmManager;->-get9(Lcom/android/server/GmsAlarmManager;)Lcom/android/server/GmsAlarmManager$GmsHandler;

    move-result-object v1

    invoke-virtual {v1, v7}, Lcom/android/server/GmsAlarmManager$GmsHandler;->removeMessages(I)V

    iget-object v1, p0, Lcom/android/server/GmsAlarmManager$GmsHandler;->this$0:Lcom/android/server/GmsAlarmManager;

    invoke-static {v1}, Lcom/android/server/GmsAlarmManager;->-get9(Lcom/android/server/GmsAlarmManager;)Lcom/android/server/GmsAlarmManager$GmsHandler;

    move-result-object v1

    invoke-virtual {v1, v7}, Lcom/android/server/GmsAlarmManager$GmsHandler;->sendEmptyMessage(I)Z

    iget-object v1, p0, Lcom/android/server/GmsAlarmManager$GmsHandler;->this$0:Lcom/android/server/GmsAlarmManager;

    invoke-static {v1}, Lcom/android/server/GmsAlarmManager;->-get0(Lcom/android/server/GmsAlarmManager;)Lcom/android/server/GmsAlarmManager$NetWorkStats;

    move-result-object v1

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/android/server/GmsAlarmManager$NetWorkStats;->addStartTime(J)V

    goto/16 :goto_0

    :pswitch_1
    iget-object v1, p0, Lcom/android/server/GmsAlarmManager$GmsHandler;->this$0:Lcom/android/server/GmsAlarmManager;

    invoke-static {v1}, Lcom/android/server/GmsAlarmManager;->-get4(Lcom/android/server/GmsAlarmManager;)Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/android/server/GmsAlarmManager$GmsHandler;->this$0:Lcom/android/server/GmsAlarmManager;

    invoke-static {v1, v5}, Lcom/android/server/GmsAlarmManager;->-set2(Lcom/android/server/GmsAlarmManager;Z)Z

    iget-object v1, p0, Lcom/android/server/GmsAlarmManager$GmsHandler;->this$0:Lcom/android/server/GmsAlarmManager;

    invoke-static {v1, v6}, Lcom/android/server/GmsAlarmManager;->-wrap9(Lcom/android/server/GmsAlarmManager;I)V

    :cond_6
    iget-object v1, p0, Lcom/android/server/GmsAlarmManager$GmsHandler;->this$0:Lcom/android/server/GmsAlarmManager;

    invoke-static {v1}, Lcom/android/server/GmsAlarmManager;->-get3(Lcom/android/server/GmsAlarmManager;)Z

    move-result v1

    if-eqz v1, :cond_7

    return-void

    :cond_7
    const-string/jumbo v1, "GmsAlarmManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "MSG_DISABLE_GMS_NETWORK:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/GmsAlarmManager$GmsHandler;->this$0:Lcom/android/server/GmsAlarmManager;

    invoke-static {v3}, Lcom/android/server/GmsAlarmManager;->-get7(Lcom/android/server/GmsAlarmManager;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/GmsAlarmManager$GmsHandler;->this$0:Lcom/android/server/GmsAlarmManager;

    invoke-static {v3}, Lcom/android/server/GmsAlarmManager;->-get13(Lcom/android/server/GmsAlarmManager;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/GmsAlarmManager$GmsHandler;->this$0:Lcom/android/server/GmsAlarmManager;

    invoke-static {v3}, Lcom/android/server/GmsAlarmManager;->-get5(Lcom/android/server/GmsAlarmManager;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/server/GmsAlarmManager$GmsHandler;->this$0:Lcom/android/server/GmsAlarmManager;

    invoke-static {v1}, Lcom/android/server/GmsAlarmManager;->-get1(Lcom/android/server/GmsAlarmManager;)Z

    move-result v1

    if-nez v1, :cond_8

    invoke-static {}, Lcom/android/server/EventLogTags;->writeSecDisableNet()V

    iget-object v1, p0, Lcom/android/server/GmsAlarmManager$GmsHandler;->this$0:Lcom/android/server/GmsAlarmManager;

    invoke-static {v1, v5}, Lcom/android/server/GmsAlarmManager;->-wrap11(Lcom/android/server/GmsAlarmManager;Z)V

    :cond_8
    iget-object v1, p0, Lcom/android/server/GmsAlarmManager$GmsHandler;->this$0:Lcom/android/server/GmsAlarmManager;

    invoke-static {v1, v4}, Lcom/android/server/GmsAlarmManager;->-set1(Lcom/android/server/GmsAlarmManager;Z)Z

    iget-object v1, p0, Lcom/android/server/GmsAlarmManager$GmsHandler;->this$0:Lcom/android/server/GmsAlarmManager;

    invoke-static {v1, v5}, Lcom/android/server/GmsAlarmManager;->-wrap10(Lcom/android/server/GmsAlarmManager;Z)V

    iget-object v1, p0, Lcom/android/server/GmsAlarmManager$GmsHandler;->this$0:Lcom/android/server/GmsAlarmManager;

    invoke-static {v1, v6}, Lcom/android/server/GmsAlarmManager;->-wrap9(Lcom/android/server/GmsAlarmManager;I)V

    goto/16 :goto_0

    :pswitch_2
    iget-object v1, p0, Lcom/android/server/GmsAlarmManager$GmsHandler;->this$0:Lcom/android/server/GmsAlarmManager;

    invoke-static {v1}, Lcom/android/server/GmsAlarmManager;->-get4(Lcom/android/server/GmsAlarmManager;)Z

    move-result v1

    if-eqz v1, :cond_9

    iget-object v1, p0, Lcom/android/server/GmsAlarmManager$GmsHandler;->this$0:Lcom/android/server/GmsAlarmManager;

    invoke-static {v1, v5}, Lcom/android/server/GmsAlarmManager;->-set2(Lcom/android/server/GmsAlarmManager;Z)Z

    iget-object v1, p0, Lcom/android/server/GmsAlarmManager$GmsHandler;->this$0:Lcom/android/server/GmsAlarmManager;

    invoke-static {v1, v4}, Lcom/android/server/GmsAlarmManager;->-wrap9(Lcom/android/server/GmsAlarmManager;I)V

    :cond_9
    iget-object v1, p0, Lcom/android/server/GmsAlarmManager$GmsHandler;->this$0:Lcom/android/server/GmsAlarmManager;

    invoke-static {v1}, Lcom/android/server/GmsAlarmManager;->-get3(Lcom/android/server/GmsAlarmManager;)Z

    move-result v1

    if-nez v1, :cond_a

    return-void

    :cond_a
    const-string/jumbo v1, "GmsAlarmManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "MSG_ENABLE_GMS_NETWORK:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/GmsAlarmManager$GmsHandler;->this$0:Lcom/android/server/GmsAlarmManager;

    invoke-static {v3}, Lcom/android/server/GmsAlarmManager;->-get7(Lcom/android/server/GmsAlarmManager;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/GmsAlarmManager$GmsHandler;->this$0:Lcom/android/server/GmsAlarmManager;

    invoke-static {v3}, Lcom/android/server/GmsAlarmManager;->-get13(Lcom/android/server/GmsAlarmManager;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/GmsAlarmManager$GmsHandler;->this$0:Lcom/android/server/GmsAlarmManager;

    invoke-static {v3}, Lcom/android/server/GmsAlarmManager;->-get5(Lcom/android/server/GmsAlarmManager;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/server/GmsAlarmManager$GmsHandler;->this$0:Lcom/android/server/GmsAlarmManager;

    invoke-static {v1}, Lcom/android/server/GmsAlarmManager;->-get1(Lcom/android/server/GmsAlarmManager;)Z

    move-result v1

    if-nez v1, :cond_b

    invoke-static {}, Lcom/android/server/EventLogTags;->writeSecEnableNet()V

    iget-object v1, p0, Lcom/android/server/GmsAlarmManager$GmsHandler;->this$0:Lcom/android/server/GmsAlarmManager;

    invoke-static {v1, v4}, Lcom/android/server/GmsAlarmManager;->-wrap11(Lcom/android/server/GmsAlarmManager;Z)V

    :cond_b
    iget-object v1, p0, Lcom/android/server/GmsAlarmManager$GmsHandler;->this$0:Lcom/android/server/GmsAlarmManager;

    invoke-static {v1, v5}, Lcom/android/server/GmsAlarmManager;->-set1(Lcom/android/server/GmsAlarmManager;Z)Z

    iget-object v1, p0, Lcom/android/server/GmsAlarmManager$GmsHandler;->this$0:Lcom/android/server/GmsAlarmManager;

    invoke-static {v1}, Lcom/android/server/GmsAlarmManager;->-wrap6(Lcom/android/server/GmsAlarmManager;)V

    iget-object v1, p0, Lcom/android/server/GmsAlarmManager$GmsHandler;->this$0:Lcom/android/server/GmsAlarmManager;

    invoke-static {v1, v4}, Lcom/android/server/GmsAlarmManager;->-wrap10(Lcom/android/server/GmsAlarmManager;Z)V

    iget-object v1, p0, Lcom/android/server/GmsAlarmManager$GmsHandler;->this$0:Lcom/android/server/GmsAlarmManager;

    invoke-static {v1, v4}, Lcom/android/server/GmsAlarmManager;->-wrap9(Lcom/android/server/GmsAlarmManager;I)V

    goto/16 :goto_0

    :pswitch_3
    iget-object v1, p0, Lcom/android/server/GmsAlarmManager$GmsHandler;->this$0:Lcom/android/server/GmsAlarmManager;

    invoke-static {v1}, Lcom/android/server/GmsAlarmManager;->-get3(Lcom/android/server/GmsAlarmManager;)Z

    move-result v1

    if-eqz v1, :cond_c

    iget-object v1, p0, Lcom/android/server/GmsAlarmManager$GmsHandler;->this$0:Lcom/android/server/GmsAlarmManager;

    invoke-static {v1}, Lcom/android/server/GmsAlarmManager;->-get1(Lcom/android/server/GmsAlarmManager;)Z

    move-result v1

    if-eqz v1, :cond_d

    :cond_c
    :goto_3
    iget-object v1, p0, Lcom/android/server/GmsAlarmManager$GmsHandler;->this$0:Lcom/android/server/GmsAlarmManager;

    invoke-static {v1, v4}, Lcom/android/server/GmsAlarmManager;->-set0(Lcom/android/server/GmsAlarmManager;Z)Z

    goto/16 :goto_0

    :cond_d
    const-string/jumbo v1, "GmsAlarmManager"

    const-string/jumbo v2, "MSG_ENABLE_GMS_NETWORK_BY_CHARGING"

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/server/EventLogTags;->writeSecEnableNetByCharging()V

    iget-object v1, p0, Lcom/android/server/GmsAlarmManager$GmsHandler;->this$0:Lcom/android/server/GmsAlarmManager;

    invoke-static {v1, v4}, Lcom/android/server/GmsAlarmManager;->-wrap11(Lcom/android/server/GmsAlarmManager;Z)V

    iget-object v1, p0, Lcom/android/server/GmsAlarmManager$GmsHandler;->this$0:Lcom/android/server/GmsAlarmManager;

    invoke-static {v1}, Lcom/android/server/GmsAlarmManager;->-wrap6(Lcom/android/server/GmsAlarmManager;)V

    goto :goto_3

    :pswitch_4
    iget-object v1, p0, Lcom/android/server/GmsAlarmManager$GmsHandler;->this$0:Lcom/android/server/GmsAlarmManager;

    invoke-static {v1}, Lcom/android/server/GmsAlarmManager;->-get3(Lcom/android/server/GmsAlarmManager;)Z

    move-result v1

    if-eqz v1, :cond_e

    iget-object v1, p0, Lcom/android/server/GmsAlarmManager$GmsHandler;->this$0:Lcom/android/server/GmsAlarmManager;

    invoke-static {v1}, Lcom/android/server/GmsAlarmManager;->-get1(Lcom/android/server/GmsAlarmManager;)Z

    move-result v1

    if-eqz v1, :cond_e

    const-string/jumbo v1, "GmsAlarmManager"

    const-string/jumbo v2, "MSG_DISABLE_GMS_NETWORK_BY_UNCHARGING"

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/server/EventLogTags;->writeSecDisableNetByUncharging()V

    iget-object v1, p0, Lcom/android/server/GmsAlarmManager$GmsHandler;->this$0:Lcom/android/server/GmsAlarmManager;

    invoke-static {v1, v5}, Lcom/android/server/GmsAlarmManager;->-wrap11(Lcom/android/server/GmsAlarmManager;Z)V

    :cond_e
    iget-object v1, p0, Lcom/android/server/GmsAlarmManager$GmsHandler;->this$0:Lcom/android/server/GmsAlarmManager;

    invoke-static {v1, v5}, Lcom/android/server/GmsAlarmManager;->-set0(Lcom/android/server/GmsAlarmManager;Z)Z

    goto/16 :goto_0

    :pswitch_5
    iget-object v1, p0, Lcom/android/server/GmsAlarmManager$GmsHandler;->this$0:Lcom/android/server/GmsAlarmManager;

    const-string/jumbo v2, "com.android.server.gmsalarmmanager"

    const-string/jumbo v3, "GNET"

    iget-object v4, p0, Lcom/android/server/GmsAlarmManager$GmsHandler;->this$0:Lcom/android/server/GmsAlarmManager;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    invoke-static {v4, v6, v7}, Lcom/android/server/GmsAlarmManager;->-wrap3(Lcom/android/server/GmsAlarmManager;J)Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v2, v3, v4}, Lcom/android/server/GmsAlarmManager;->-wrap5(Lcom/android/server/GmsAlarmManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/GmsAlarmManager$GmsHandler;->this$0:Lcom/android/server/GmsAlarmManager;

    const-wide/32 v2, 0x5265c00

    invoke-static {v1, v2, v3}, Lcom/android/server/GmsAlarmManager;->-wrap8(Lcom/android/server/GmsAlarmManager;J)V

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method
