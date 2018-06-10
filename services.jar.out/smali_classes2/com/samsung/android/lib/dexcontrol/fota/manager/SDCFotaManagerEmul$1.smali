.class Lcom/samsung/android/lib/dexcontrol/fota/manager/SDCFotaManagerEmul$1;
.super Ljava/lang/Object;
.source "SDCFotaManagerEmul.java"

# interfaces
.implements Lcom/samsung/android/lib/dexcontrol/fota/manager/SDCFotaManagerEmul$EmulHandler$EmulHandlerListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/lib/dexcontrol/fota/manager/SDCFotaManagerEmul;->initEmulator()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/lib/dexcontrol/fota/manager/SDCFotaManagerEmul;


# direct methods
.method constructor <init>(Lcom/samsung/android/lib/dexcontrol/fota/manager/SDCFotaManagerEmul;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/lib/dexcontrol/fota/manager/SDCFotaManagerEmul$1;->this$0:Lcom/samsung/android/lib/dexcontrol/fota/manager/SDCFotaManagerEmul;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEvent(I)V
    .locals 7

    const/4 v2, 0x0

    const/16 v6, 0x3e8

    const/4 v5, 0x2

    const/4 v4, 0x3

    const/4 v3, 0x1

    packed-switch p1, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget-object v1, p0, Lcom/samsung/android/lib/dexcontrol/fota/manager/SDCFotaManagerEmul$1;->this$0:Lcom/samsung/android/lib/dexcontrol/fota/manager/SDCFotaManagerEmul;

    invoke-static {v1, v5}, Lcom/samsung/android/lib/dexcontrol/fota/manager/SDCFotaManagerEmul;->access$000(Lcom/samsung/android/lib/dexcontrol/fota/manager/SDCFotaManagerEmul;I)V

    iget-object v1, p0, Lcom/samsung/android/lib/dexcontrol/fota/manager/SDCFotaManagerEmul$1;->this$0:Lcom/samsung/android/lib/dexcontrol/fota/manager/SDCFotaManagerEmul;

    invoke-static {v1}, Lcom/samsung/android/lib/dexcontrol/fota/manager/SDCFotaManagerEmul;->access$100(Lcom/samsung/android/lib/dexcontrol/fota/manager/SDCFotaManagerEmul;)Lcom/samsung/android/lib/dexcontrol/fota/manager/EventHandlerManager;

    move-result-object v1

    invoke-virtual {v1, v3, v2, v2}, Lcom/samsung/android/lib/dexcontrol/fota/manager/EventHandlerManager;->invokeSelfListener(III)V

    iget-object v1, p0, Lcom/samsung/android/lib/dexcontrol/fota/manager/SDCFotaManagerEmul$1;->this$0:Lcom/samsung/android/lib/dexcontrol/fota/manager/SDCFotaManagerEmul;

    invoke-static {v1}, Lcom/samsung/android/lib/dexcontrol/fota/manager/SDCFotaManagerEmul;->access$200(Lcom/samsung/android/lib/dexcontrol/fota/manager/SDCFotaManagerEmul;)Lcom/samsung/android/lib/dexcontrol/fota/manager/SDCFotaManagerEmul$EmulHandler;

    move-result-object v1

    const/16 v2, 0x7d0

    invoke-virtual {v1, v5, v2}, Lcom/samsung/android/lib/dexcontrol/fota/manager/SDCFotaManagerEmul$EmulHandler;->start(II)V

    goto :goto_0

    :pswitch_1
    iget-object v1, p0, Lcom/samsung/android/lib/dexcontrol/fota/manager/SDCFotaManagerEmul$1;->this$0:Lcom/samsung/android/lib/dexcontrol/fota/manager/SDCFotaManagerEmul;

    invoke-static {v1, v4}, Lcom/samsung/android/lib/dexcontrol/fota/manager/SDCFotaManagerEmul;->access$000(Lcom/samsung/android/lib/dexcontrol/fota/manager/SDCFotaManagerEmul;I)V

    iget-object v1, p0, Lcom/samsung/android/lib/dexcontrol/fota/manager/SDCFotaManagerEmul$1;->this$0:Lcom/samsung/android/lib/dexcontrol/fota/manager/SDCFotaManagerEmul;

    invoke-static {v1}, Lcom/samsung/android/lib/dexcontrol/fota/manager/SDCFotaManagerEmul;->access$100(Lcom/samsung/android/lib/dexcontrol/fota/manager/SDCFotaManagerEmul;)Lcom/samsung/android/lib/dexcontrol/fota/manager/EventHandlerManager;

    move-result-object v1

    invoke-virtual {v1, v3, v3, v3}, Lcom/samsung/android/lib/dexcontrol/fota/manager/EventHandlerManager;->invokeSelfListener(III)V

    goto :goto_0

    :pswitch_2
    iget-object v1, p0, Lcom/samsung/android/lib/dexcontrol/fota/manager/SDCFotaManagerEmul$1;->this$0:Lcom/samsung/android/lib/dexcontrol/fota/manager/SDCFotaManagerEmul;

    const/4 v2, 0x4

    invoke-static {v1, v2}, Lcom/samsung/android/lib/dexcontrol/fota/manager/SDCFotaManagerEmul;->access$000(Lcom/samsung/android/lib/dexcontrol/fota/manager/SDCFotaManagerEmul;I)V

    iget-object v1, p0, Lcom/samsung/android/lib/dexcontrol/fota/manager/SDCFotaManagerEmul$1;->this$0:Lcom/samsung/android/lib/dexcontrol/fota/manager/SDCFotaManagerEmul;

    invoke-static {v1}, Lcom/samsung/android/lib/dexcontrol/fota/manager/SDCFotaManagerEmul;->access$100(Lcom/samsung/android/lib/dexcontrol/fota/manager/SDCFotaManagerEmul;)Lcom/samsung/android/lib/dexcontrol/fota/manager/EventHandlerManager;

    move-result-object v1

    invoke-virtual {v1, v5, v3}, Lcom/samsung/android/lib/dexcontrol/fota/manager/EventHandlerManager;->invokeSelfListener(IZ)V

    goto :goto_0

    :pswitch_3
    iget-object v1, p0, Lcom/samsung/android/lib/dexcontrol/fota/manager/SDCFotaManagerEmul$1;->this$0:Lcom/samsung/android/lib/dexcontrol/fota/manager/SDCFotaManagerEmul;

    invoke-static {v1, v4}, Lcom/samsung/android/lib/dexcontrol/fota/manager/SDCFotaManagerEmul;->access$000(Lcom/samsung/android/lib/dexcontrol/fota/manager/SDCFotaManagerEmul;I)V

    iget-object v1, p0, Lcom/samsung/android/lib/dexcontrol/fota/manager/SDCFotaManagerEmul$1;->this$0:Lcom/samsung/android/lib/dexcontrol/fota/manager/SDCFotaManagerEmul;

    invoke-static {v1}, Lcom/samsung/android/lib/dexcontrol/fota/manager/SDCFotaManagerEmul;->access$100(Lcom/samsung/android/lib/dexcontrol/fota/manager/SDCFotaManagerEmul;)Lcom/samsung/android/lib/dexcontrol/fota/manager/EventHandlerManager;

    move-result-object v1

    invoke-virtual {v1, v5, v2}, Lcom/samsung/android/lib/dexcontrol/fota/manager/EventHandlerManager;->invokeSelfListener(IZ)V

    goto :goto_0

    :pswitch_4
    iget-object v1, p0, Lcom/samsung/android/lib/dexcontrol/fota/manager/SDCFotaManagerEmul$1;->this$0:Lcom/samsung/android/lib/dexcontrol/fota/manager/SDCFotaManagerEmul;

    invoke-static {v1}, Lcom/samsung/android/lib/dexcontrol/fota/manager/SDCFotaManagerEmul;->access$300(Lcom/samsung/android/lib/dexcontrol/fota/manager/SDCFotaManagerEmul;)I

    move-result v1

    rem-int/lit8 v1, v1, 0x3

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/lib/dexcontrol/fota/manager/SDCFotaManagerEmul$1;->this$0:Lcom/samsung/android/lib/dexcontrol/fota/manager/SDCFotaManagerEmul;

    invoke-static {v1}, Lcom/samsung/android/lib/dexcontrol/fota/manager/SDCFotaManagerEmul;->access$300(Lcom/samsung/android/lib/dexcontrol/fota/manager/SDCFotaManagerEmul;)I

    move-result v1

    rem-int/lit8 v1, v1, 0x3

    if-eq v1, v3, :cond_2

    iget-object v1, p0, Lcom/samsung/android/lib/dexcontrol/fota/manager/SDCFotaManagerEmul$1;->this$0:Lcom/samsung/android/lib/dexcontrol/fota/manager/SDCFotaManagerEmul;

    invoke-static {v1}, Lcom/samsung/android/lib/dexcontrol/fota/manager/SDCFotaManagerEmul;->access$300(Lcom/samsung/android/lib/dexcontrol/fota/manager/SDCFotaManagerEmul;)I

    move-result v1

    rem-int/lit8 v1, v1, 0x3

    if-ne v1, v5, :cond_0

    iget-object v1, p0, Lcom/samsung/android/lib/dexcontrol/fota/manager/SDCFotaManagerEmul$1;->this$0:Lcom/samsung/android/lib/dexcontrol/fota/manager/SDCFotaManagerEmul;

    invoke-static {v1, v5}, Lcom/samsung/android/lib/dexcontrol/fota/manager/SDCFotaManagerEmul;->access$400(Lcom/samsung/android/lib/dexcontrol/fota/manager/SDCFotaManagerEmul;I)V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/samsung/android/lib/dexcontrol/fota/manager/SDCFotaManagerEmul$1;->this$0:Lcom/samsung/android/lib/dexcontrol/fota/manager/SDCFotaManagerEmul;

    invoke-static {v1}, Lcom/samsung/android/lib/dexcontrol/fota/manager/SDCFotaManagerEmul;->access$100(Lcom/samsung/android/lib/dexcontrol/fota/manager/SDCFotaManagerEmul;)Lcom/samsung/android/lib/dexcontrol/fota/manager/EventHandlerManager;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/samsung/android/lib/dexcontrol/fota/manager/EventHandlerManager;->invokeSelfListener(I)V

    iget-object v1, p0, Lcom/samsung/android/lib/dexcontrol/fota/manager/SDCFotaManagerEmul$1;->this$0:Lcom/samsung/android/lib/dexcontrol/fota/manager/SDCFotaManagerEmul;

    invoke-static {v1}, Lcom/samsung/android/lib/dexcontrol/fota/manager/SDCFotaManagerEmul;->access$200(Lcom/samsung/android/lib/dexcontrol/fota/manager/SDCFotaManagerEmul;)Lcom/samsung/android/lib/dexcontrol/fota/manager/SDCFotaManagerEmul$EmulHandler;

    move-result-object v1

    const/4 v2, 0x6

    invoke-virtual {v1, v2, v6}, Lcom/samsung/android/lib/dexcontrol/fota/manager/SDCFotaManagerEmul$EmulHandler;->start(II)V

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/samsung/android/lib/dexcontrol/fota/manager/SDCFotaManagerEmul$1;->this$0:Lcom/samsung/android/lib/dexcontrol/fota/manager/SDCFotaManagerEmul;

    invoke-static {v1, v3}, Lcom/samsung/android/lib/dexcontrol/fota/manager/SDCFotaManagerEmul;->access$400(Lcom/samsung/android/lib/dexcontrol/fota/manager/SDCFotaManagerEmul;I)V

    goto/16 :goto_0

    :pswitch_5
    new-instance v0, Lcom/samsung/android/lib/dexcontrol/fota/manager/SDCFotaManagerEventHandler$ProgressData;

    iget-object v1, p0, Lcom/samsung/android/lib/dexcontrol/fota/manager/SDCFotaManagerEmul$1;->this$0:Lcom/samsung/android/lib/dexcontrol/fota/manager/SDCFotaManagerEmul;

    invoke-static {v1}, Lcom/samsung/android/lib/dexcontrol/fota/manager/SDCFotaManagerEmul;->access$500(Lcom/samsung/android/lib/dexcontrol/fota/manager/SDCFotaManagerEmul;)I

    move-result v1

    invoke-direct {v0, v3, v4, v1}, Lcom/samsung/android/lib/dexcontrol/fota/manager/SDCFotaManagerEventHandler$ProgressData;-><init>(III)V

    iget-object v1, p0, Lcom/samsung/android/lib/dexcontrol/fota/manager/SDCFotaManagerEmul$1;->this$0:Lcom/samsung/android/lib/dexcontrol/fota/manager/SDCFotaManagerEmul;

    invoke-static {v1}, Lcom/samsung/android/lib/dexcontrol/fota/manager/SDCFotaManagerEmul;->access$100(Lcom/samsung/android/lib/dexcontrol/fota/manager/SDCFotaManagerEmul;)Lcom/samsung/android/lib/dexcontrol/fota/manager/EventHandlerManager;

    move-result-object v1

    const/4 v2, 0x6

    invoke-virtual {v1, v2, v0}, Lcom/samsung/android/lib/dexcontrol/fota/manager/EventHandlerManager;->invokeSelfListener(ILjava/lang/Object;)V

    iget-object v1, p0, Lcom/samsung/android/lib/dexcontrol/fota/manager/SDCFotaManagerEmul$1;->this$0:Lcom/samsung/android/lib/dexcontrol/fota/manager/SDCFotaManagerEmul;

    invoke-static {v1}, Lcom/samsung/android/lib/dexcontrol/fota/manager/SDCFotaManagerEmul;->access$500(Lcom/samsung/android/lib/dexcontrol/fota/manager/SDCFotaManagerEmul;)I

    move-result v1

    if-eq v1, v4, :cond_3

    iget-object v1, p0, Lcom/samsung/android/lib/dexcontrol/fota/manager/SDCFotaManagerEmul$1;->this$0:Lcom/samsung/android/lib/dexcontrol/fota/manager/SDCFotaManagerEmul;

    invoke-static {v1}, Lcom/samsung/android/lib/dexcontrol/fota/manager/SDCFotaManagerEmul;->access$200(Lcom/samsung/android/lib/dexcontrol/fota/manager/SDCFotaManagerEmul;)Lcom/samsung/android/lib/dexcontrol/fota/manager/SDCFotaManagerEmul$EmulHandler;

    move-result-object v1

    const/4 v2, 0x6

    invoke-virtual {v1, v2, v6}, Lcom/samsung/android/lib/dexcontrol/fota/manager/SDCFotaManagerEmul$EmulHandler;->start(II)V

    :goto_1
    iget-object v1, p0, Lcom/samsung/android/lib/dexcontrol/fota/manager/SDCFotaManagerEmul$1;->this$0:Lcom/samsung/android/lib/dexcontrol/fota/manager/SDCFotaManagerEmul;

    invoke-static {v1}, Lcom/samsung/android/lib/dexcontrol/fota/manager/SDCFotaManagerEmul;->access$508(Lcom/samsung/android/lib/dexcontrol/fota/manager/SDCFotaManagerEmul;)I

    goto/16 :goto_0

    :cond_3
    iget-object v1, p0, Lcom/samsung/android/lib/dexcontrol/fota/manager/SDCFotaManagerEmul$1;->this$0:Lcom/samsung/android/lib/dexcontrol/fota/manager/SDCFotaManagerEmul;

    invoke-static {v1}, Lcom/samsung/android/lib/dexcontrol/fota/manager/SDCFotaManagerEmul;->access$200(Lcom/samsung/android/lib/dexcontrol/fota/manager/SDCFotaManagerEmul;)Lcom/samsung/android/lib/dexcontrol/fota/manager/SDCFotaManagerEmul$EmulHandler;

    move-result-object v1

    const/4 v2, 0x7

    invoke-virtual {v1, v2, v6}, Lcom/samsung/android/lib/dexcontrol/fota/manager/SDCFotaManagerEmul$EmulHandler;->start(II)V

    goto :goto_1

    :pswitch_6
    new-instance v0, Lcom/samsung/android/lib/dexcontrol/fota/manager/SDCFotaManagerEventHandler$ProgressData;

    iget-object v1, p0, Lcom/samsung/android/lib/dexcontrol/fota/manager/SDCFotaManagerEmul$1;->this$0:Lcom/samsung/android/lib/dexcontrol/fota/manager/SDCFotaManagerEmul;

    invoke-static {v1}, Lcom/samsung/android/lib/dexcontrol/fota/manager/SDCFotaManagerEmul;->access$600(Lcom/samsung/android/lib/dexcontrol/fota/manager/SDCFotaManagerEmul;)I

    move-result v1

    invoke-direct {v0, v5, v4, v1}, Lcom/samsung/android/lib/dexcontrol/fota/manager/SDCFotaManagerEventHandler$ProgressData;-><init>(III)V

    iget-object v1, p0, Lcom/samsung/android/lib/dexcontrol/fota/manager/SDCFotaManagerEmul$1;->this$0:Lcom/samsung/android/lib/dexcontrol/fota/manager/SDCFotaManagerEmul;

    invoke-static {v1}, Lcom/samsung/android/lib/dexcontrol/fota/manager/SDCFotaManagerEmul;->access$100(Lcom/samsung/android/lib/dexcontrol/fota/manager/SDCFotaManagerEmul;)Lcom/samsung/android/lib/dexcontrol/fota/manager/EventHandlerManager;

    move-result-object v1

    const/4 v2, 0x6

    invoke-virtual {v1, v2, v0}, Lcom/samsung/android/lib/dexcontrol/fota/manager/EventHandlerManager;->invokeSelfListener(ILjava/lang/Object;)V

    iget-object v1, p0, Lcom/samsung/android/lib/dexcontrol/fota/manager/SDCFotaManagerEmul$1;->this$0:Lcom/samsung/android/lib/dexcontrol/fota/manager/SDCFotaManagerEmul;

    invoke-static {v1}, Lcom/samsung/android/lib/dexcontrol/fota/manager/SDCFotaManagerEmul;->access$600(Lcom/samsung/android/lib/dexcontrol/fota/manager/SDCFotaManagerEmul;)I

    move-result v1

    if-eq v1, v4, :cond_4

    iget-object v1, p0, Lcom/samsung/android/lib/dexcontrol/fota/manager/SDCFotaManagerEmul$1;->this$0:Lcom/samsung/android/lib/dexcontrol/fota/manager/SDCFotaManagerEmul;

    invoke-static {v1}, Lcom/samsung/android/lib/dexcontrol/fota/manager/SDCFotaManagerEmul;->access$200(Lcom/samsung/android/lib/dexcontrol/fota/manager/SDCFotaManagerEmul;)Lcom/samsung/android/lib/dexcontrol/fota/manager/SDCFotaManagerEmul$EmulHandler;

    move-result-object v1

    const/4 v2, 0x7

    invoke-virtual {v1, v2, v6}, Lcom/samsung/android/lib/dexcontrol/fota/manager/SDCFotaManagerEmul$EmulHandler;->start(II)V

    :goto_2
    iget-object v1, p0, Lcom/samsung/android/lib/dexcontrol/fota/manager/SDCFotaManagerEmul$1;->this$0:Lcom/samsung/android/lib/dexcontrol/fota/manager/SDCFotaManagerEmul;

    invoke-static {v1}, Lcom/samsung/android/lib/dexcontrol/fota/manager/SDCFotaManagerEmul;->access$608(Lcom/samsung/android/lib/dexcontrol/fota/manager/SDCFotaManagerEmul;)I

    goto/16 :goto_0

    :cond_4
    iget-object v1, p0, Lcom/samsung/android/lib/dexcontrol/fota/manager/SDCFotaManagerEmul$1;->this$0:Lcom/samsung/android/lib/dexcontrol/fota/manager/SDCFotaManagerEmul;

    invoke-static {v1}, Lcom/samsung/android/lib/dexcontrol/fota/manager/SDCFotaManagerEmul;->access$200(Lcom/samsung/android/lib/dexcontrol/fota/manager/SDCFotaManagerEmul;)Lcom/samsung/android/lib/dexcontrol/fota/manager/SDCFotaManagerEmul$EmulHandler;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2, v6}, Lcom/samsung/android/lib/dexcontrol/fota/manager/SDCFotaManagerEmul$EmulHandler;->start(II)V

    goto :goto_2

    :pswitch_7
    iget-object v1, p0, Lcom/samsung/android/lib/dexcontrol/fota/manager/SDCFotaManagerEmul$1;->this$0:Lcom/samsung/android/lib/dexcontrol/fota/manager/SDCFotaManagerEmul;

    invoke-static {v1, v4}, Lcom/samsung/android/lib/dexcontrol/fota/manager/SDCFotaManagerEmul;->access$000(Lcom/samsung/android/lib/dexcontrol/fota/manager/SDCFotaManagerEmul;I)V

    iget-object v1, p0, Lcom/samsung/android/lib/dexcontrol/fota/manager/SDCFotaManagerEmul$1;->this$0:Lcom/samsung/android/lib/dexcontrol/fota/manager/SDCFotaManagerEmul;

    invoke-static {v1}, Lcom/samsung/android/lib/dexcontrol/fota/manager/SDCFotaManagerEmul;->access$100(Lcom/samsung/android/lib/dexcontrol/fota/manager/SDCFotaManagerEmul;)Lcom/samsung/android/lib/dexcontrol/fota/manager/EventHandlerManager;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/lib/dexcontrol/fota/manager/EventHandlerManager;->invokeSelfListener(II)V

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
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method
