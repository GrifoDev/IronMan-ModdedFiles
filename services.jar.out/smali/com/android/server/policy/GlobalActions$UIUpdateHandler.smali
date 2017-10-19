.class final Lcom/android/server/policy/GlobalActions$UIUpdateHandler;
.super Landroid/os/Handler;
.source "GlobalActions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/GlobalActions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "UIUpdateHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/policy/GlobalActions;


# direct methods
.method private constructor <init>(Lcom/android/server/policy/GlobalActions;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/policy/GlobalActions$UIUpdateHandler;->this$0:Lcom/android/server/policy/GlobalActions;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/policy/GlobalActions;Lcom/android/server/policy/GlobalActions$UIUpdateHandler;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/policy/GlobalActions$UIUpdateHandler;-><init>(Lcom/android/server/policy/GlobalActions;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 12

    const/4 v7, 0x1

    const-wide/16 v10, 0x12c

    const/4 v9, 0x0

    const/4 v8, 0x0

    iget v6, p1, Landroid/os/Message;->what:I

    packed-switch v6, :pswitch_data_0

    :cond_0
    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    invoke-static {}, Lcom/android/server/policy/GlobalActions;->-get67()Z

    move-result v6

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/android/server/policy/GlobalActions$UIUpdateHandler;->this$0:Lcom/android/server/policy/GlobalActions;

    invoke-static {v6}, Lcom/android/server/policy/GlobalActions;->-get30(Lcom/android/server/policy/GlobalActions;)Z

    move-result v6

    if-eqz v6, :cond_2

    :cond_1
    iget-object v6, p0, Lcom/android/server/policy/GlobalActions$UIUpdateHandler;->this$0:Lcom/android/server/policy/GlobalActions;

    invoke-static {v6}, Lcom/android/server/policy/GlobalActions;->-wrap26(Lcom/android/server/policy/GlobalActions;)V

    goto :goto_0

    :cond_2
    iget-object v6, p0, Lcom/android/server/policy/GlobalActions$UIUpdateHandler;->this$0:Lcom/android/server/policy/GlobalActions;

    invoke-static {v6}, Lcom/android/server/policy/GlobalActions;->-get6(Lcom/android/server/policy/GlobalActions;)Lcom/android/server/policy/GlobalActions$MyAdapter;

    move-result-object v6

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/android/server/policy/GlobalActions$UIUpdateHandler;->this$0:Lcom/android/server/policy/GlobalActions;

    invoke-static {v6}, Lcom/android/server/policy/GlobalActions;->-get18(Lcom/android/server/policy/GlobalActions;)Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;

    move-result-object v6

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/android/server/policy/GlobalActions$UIUpdateHandler;->this$0:Lcom/android/server/policy/GlobalActions;

    invoke-static {v6}, Lcom/android/server/policy/GlobalActions;->-get24(Lcom/android/server/policy/GlobalActions;)Lcom/android/server/policy/globalactions/GlobalActionsFrameLayout;

    move-result-object v6

    const v7, 0x10203c9

    invoke-virtual {v6, v7}, Lcom/android/server/policy/globalactions/GlobalActionsFrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    const/4 v0, 0x0

    :goto_1
    iget-object v6, p0, Lcom/android/server/policy/GlobalActions$UIUpdateHandler;->this$0:Lcom/android/server/policy/GlobalActions;

    invoke-static {v6}, Lcom/android/server/policy/GlobalActions;->-get6(Lcom/android/server/policy/GlobalActions;)Lcom/android/server/policy/GlobalActions$MyAdapter;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/server/policy/GlobalActions$MyAdapter;->getCount()I

    move-result v6

    if-ge v0, v6, :cond_4

    iget-object v6, p0, Lcom/android/server/policy/GlobalActions$UIUpdateHandler;->this$0:Lcom/android/server/policy/GlobalActions;

    iget-object v7, p0, Lcom/android/server/policy/GlobalActions$UIUpdateHandler;->this$0:Lcom/android/server/policy/GlobalActions;

    invoke-static {v7}, Lcom/android/server/policy/GlobalActions;->-wrap8(Lcom/android/server/policy/GlobalActions;)Z

    move-result v7

    invoke-static {v6, v7}, Lcom/android/server/policy/GlobalActions;->-wrap0(Lcom/android/server/policy/GlobalActions;Z)Landroid/view/ViewGroup;

    move-result-object v6

    invoke-virtual {v6, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    if-eqz v5, :cond_3

    invoke-virtual {v5}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    invoke-virtual {v6, v9}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    invoke-virtual {v6, v10, v11}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_4
    iget-object v6, p0, Lcom/android/server/policy/GlobalActions$UIUpdateHandler;->this$0:Lcom/android/server/policy/GlobalActions;

    invoke-static {v6, v9}, Lcom/android/server/policy/GlobalActions;->-wrap41(Lcom/android/server/policy/GlobalActions;F)V

    if-eqz v3, :cond_5

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    invoke-virtual {v6, v9}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    invoke-virtual {v6, v10, v11}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    new-instance v7, Lcom/android/server/policy/GlobalActions$UIUpdateHandler$1;

    invoke-direct {v7, p0}, Lcom/android/server/policy/GlobalActions$UIUpdateHandler$1;-><init>(Lcom/android/server/policy/GlobalActions$UIUpdateHandler;)V

    invoke-virtual {v6, v7}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/ViewPropertyAnimator;->start()V

    :cond_5
    iget-object v6, p0, Lcom/android/server/policy/GlobalActions$UIUpdateHandler;->this$0:Lcom/android/server/policy/GlobalActions;

    invoke-static {v6}, Lcom/android/server/policy/GlobalActions;->-get11(Lcom/android/server/policy/GlobalActions;)Landroid/widget/LinearLayout;

    move-result-object v6

    if-eqz v6, :cond_6

    iget-object v6, p0, Lcom/android/server/policy/GlobalActions$UIUpdateHandler;->this$0:Lcom/android/server/policy/GlobalActions;

    invoke-static {v6}, Lcom/android/server/policy/GlobalActions;->-get11(Lcom/android/server/policy/GlobalActions;)Landroid/widget/LinearLayout;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v6

    if-nez v6, :cond_6

    iget-object v6, p0, Lcom/android/server/policy/GlobalActions$UIUpdateHandler;->this$0:Lcom/android/server/policy/GlobalActions;

    invoke-static {v6}, Lcom/android/server/policy/GlobalActions;->-get11(Lcom/android/server/policy/GlobalActions;)Landroid/widget/LinearLayout;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/LinearLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    invoke-virtual {v6, v9}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    invoke-virtual {v6, v10, v11}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    :cond_6
    iget-object v6, p0, Lcom/android/server/policy/GlobalActions$UIUpdateHandler;->this$0:Lcom/android/server/policy/GlobalActions;

    invoke-static {v6}, Lcom/android/server/policy/GlobalActions;->-get16(Lcom/android/server/policy/GlobalActions;)Landroid/widget/LinearLayout;

    move-result-object v6

    if-eqz v6, :cond_7

    iget-object v6, p0, Lcom/android/server/policy/GlobalActions$UIUpdateHandler;->this$0:Lcom/android/server/policy/GlobalActions;

    invoke-static {v6}, Lcom/android/server/policy/GlobalActions;->-get16(Lcom/android/server/policy/GlobalActions;)Landroid/widget/LinearLayout;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v6

    if-nez v6, :cond_7

    iget-object v6, p0, Lcom/android/server/policy/GlobalActions$UIUpdateHandler;->this$0:Lcom/android/server/policy/GlobalActions;

    invoke-static {v6}, Lcom/android/server/policy/GlobalActions;->-get16(Lcom/android/server/policy/GlobalActions;)Landroid/widget/LinearLayout;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/LinearLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    invoke-virtual {v6, v9}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    invoke-virtual {v6, v10, v11}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    :cond_7
    iget-object v6, p0, Lcom/android/server/policy/GlobalActions$UIUpdateHandler;->this$0:Lcom/android/server/policy/GlobalActions;

    invoke-static {v6}, Lcom/android/server/policy/GlobalActions;->-get23(Lcom/android/server/policy/GlobalActions;)Landroid/widget/LinearLayout;

    move-result-object v6

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/android/server/policy/GlobalActions$UIUpdateHandler;->this$0:Lcom/android/server/policy/GlobalActions;

    invoke-static {v6}, Lcom/android/server/policy/GlobalActions;->-get23(Lcom/android/server/policy/GlobalActions;)Landroid/widget/LinearLayout;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v6

    if-nez v6, :cond_0

    iget-object v6, p0, Lcom/android/server/policy/GlobalActions$UIUpdateHandler;->this$0:Lcom/android/server/policy/GlobalActions;

    invoke-static {v6}, Lcom/android/server/policy/GlobalActions;->-get23(Lcom/android/server/policy/GlobalActions;)Landroid/widget/LinearLayout;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/LinearLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    invoke-virtual {v6, v9}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    invoke-virtual {v6, v10, v11}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    goto/16 :goto_0

    :pswitch_2
    iget-object v6, p0, Lcom/android/server/policy/GlobalActions$UIUpdateHandler;->this$0:Lcom/android/server/policy/GlobalActions;

    invoke-static {v6}, Lcom/android/server/policy/GlobalActions;->-get6(Lcom/android/server/policy/GlobalActions;)Lcom/android/server/policy/GlobalActions$MyAdapter;

    move-result-object v6

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/android/server/policy/GlobalActions$UIUpdateHandler;->this$0:Lcom/android/server/policy/GlobalActions;

    invoke-static {v6}, Lcom/android/server/policy/GlobalActions;->-get6(Lcom/android/server/policy/GlobalActions;)Lcom/android/server/policy/GlobalActions$MyAdapter;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/server/policy/GlobalActions$MyAdapter;->notifyDataSetChanged()V

    goto/16 :goto_0

    :pswitch_3
    iget-object v6, p0, Lcom/android/server/policy/GlobalActions$UIUpdateHandler;->this$0:Lcom/android/server/policy/GlobalActions;

    invoke-static {v6}, Lcom/android/server/policy/GlobalActions;->-get6(Lcom/android/server/policy/GlobalActions;)Lcom/android/server/policy/GlobalActions$MyAdapter;

    move-result-object v6

    if-eqz v6, :cond_8

    iget-object v6, p0, Lcom/android/server/policy/GlobalActions$UIUpdateHandler;->this$0:Lcom/android/server/policy/GlobalActions;

    invoke-static {v6}, Lcom/android/server/policy/GlobalActions;->-get6(Lcom/android/server/policy/GlobalActions;)Lcom/android/server/policy/GlobalActions$MyAdapter;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/server/policy/GlobalActions$MyAdapter;->notifyDataSetChanged()V

    :cond_8
    invoke-static {}, Lcom/android/server/policy/GlobalActions;->-get73()Landroid/view/View;

    move-result-object v6

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/android/server/policy/GlobalActions$UIUpdateHandler;->this$0:Lcom/android/server/policy/GlobalActions;

    invoke-static {v6}, Lcom/android/server/policy/GlobalActions;->-get56(Lcom/android/server/policy/GlobalActions;)Lcom/android/server/policy/GlobalActions$SilentModeAction;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/server/policy/GlobalActions$SilentModeAction;->updateRingerMode()V

    goto/16 :goto_0

    :pswitch_4
    iget-object v6, p0, Lcom/android/server/policy/GlobalActions$UIUpdateHandler;->this$0:Lcom/android/server/policy/GlobalActions;

    invoke-static {v6}, Lcom/android/server/policy/GlobalActions;->-get6(Lcom/android/server/policy/GlobalActions;)Lcom/android/server/policy/GlobalActions$MyAdapter;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/server/policy/GlobalActions$MyAdapter;->notifyDataSetChanged()V

    iget-object v6, p0, Lcom/android/server/policy/GlobalActions$UIUpdateHandler;->this$0:Lcom/android/server/policy/GlobalActions;

    invoke-static {v6}, Lcom/android/server/policy/GlobalActions;->-wrap28(Lcom/android/server/policy/GlobalActions;)V

    goto/16 :goto_0

    :pswitch_5
    const-string/jumbo v6, "GlobalActions"

    const-string/jumbo v7, "handleMessage : MESSAGE_REFRESH_AIRPLANEMODE"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v6, p0, Lcom/android/server/policy/GlobalActions$UIUpdateHandler;->this$0:Lcom/android/server/policy/GlobalActions;

    invoke-static {v6}, Lcom/android/server/policy/GlobalActions;->-get7(Lcom/android/server/policy/GlobalActions;)Lcom/android/server/policy/GlobalActions$ToggleAction;

    move-result-object v6

    if-eqz v6, :cond_9

    const-string/jumbo v6, "GlobalActions"

    const-string/jumbo v7, "handleMessage : MESSAGE_REFRESH_AIRPLANEMODE : call mAirplaneModeAction.updateState"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v6, p0, Lcom/android/server/policy/GlobalActions$UIUpdateHandler;->this$0:Lcom/android/server/policy/GlobalActions;

    invoke-static {v6}, Lcom/android/server/policy/GlobalActions;->-get7(Lcom/android/server/policy/GlobalActions;)Lcom/android/server/policy/GlobalActions$ToggleAction;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/policy/GlobalActions$UIUpdateHandler;->this$0:Lcom/android/server/policy/GlobalActions;

    invoke-static {v7}, Lcom/android/server/policy/GlobalActions;->-get8(Lcom/android/server/policy/GlobalActions;)Lcom/android/server/policy/GlobalActions$ToggleAction$State;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/server/policy/GlobalActions$ToggleAction;->updateState(Lcom/android/server/policy/GlobalActions$ToggleAction$State;)V

    iget-object v6, p0, Lcom/android/server/policy/GlobalActions$UIUpdateHandler;->this$0:Lcom/android/server/policy/GlobalActions;

    iget-object v7, p0, Lcom/android/server/policy/GlobalActions$UIUpdateHandler;->this$0:Lcom/android/server/policy/GlobalActions;

    invoke-static {v7}, Lcom/android/server/policy/GlobalActions;->-get7(Lcom/android/server/policy/GlobalActions;)Lcom/android/server/policy/GlobalActions$ToggleAction;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/server/policy/GlobalActions;->-wrap40(Lcom/android/server/policy/GlobalActions;Lcom/android/server/policy/GlobalActions$ToggleAction;)V

    :cond_9
    iget-object v6, p0, Lcom/android/server/policy/GlobalActions$UIUpdateHandler;->this$0:Lcom/android/server/policy/GlobalActions;

    invoke-static {v6}, Lcom/android/server/policy/GlobalActions;->-get6(Lcom/android/server/policy/GlobalActions;)Lcom/android/server/policy/GlobalActions$MyAdapter;

    move-result-object v6

    if-eqz v6, :cond_0

    const-string/jumbo v6, "GlobalActions"

    const-string/jumbo v7, "handleMessage : MESSAGE_REFRESH_AIRPLANEMODE : call mAdapter.notifyDataSetChanged"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v6, p0, Lcom/android/server/policy/GlobalActions$UIUpdateHandler;->this$0:Lcom/android/server/policy/GlobalActions;

    invoke-static {v6}, Lcom/android/server/policy/GlobalActions;->-get6(Lcom/android/server/policy/GlobalActions;)Lcom/android/server/policy/GlobalActions$MyAdapter;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/server/policy/GlobalActions$MyAdapter;->notifyDataSetChanged()V

    goto/16 :goto_0

    :pswitch_6
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v6, "com.samsung.cover.STATE_CHANGE"

    invoke-virtual {v2, v6}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v6, "suppressCoverUI"

    invoke-virtual {v2, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string/jumbo v6, "miniModeUI"

    invoke-virtual {v2, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string/jumbo v7, "sender"

    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v2, v7, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v6, p0, Lcom/android/server/policy/GlobalActions$UIUpdateHandler;->this$0:Lcom/android/server/policy/GlobalActions;

    invoke-static {v6}, Lcom/android/server/policy/GlobalActions;->-get13(Lcom/android/server/policy/GlobalActions;)Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    :pswitch_7
    iget-object v6, p0, Lcom/android/server/policy/GlobalActions$UIUpdateHandler;->this$0:Lcom/android/server/policy/GlobalActions;

    invoke-static {v6, v7, v8}, Lcom/android/server/policy/GlobalActions;->-wrap29(Lcom/android/server/policy/GlobalActions;ZZ)V

    goto/16 :goto_0

    :pswitch_8
    iget-object v6, p0, Lcom/android/server/policy/GlobalActions$UIUpdateHandler;->this$0:Lcom/android/server/policy/GlobalActions;

    invoke-static {v6, v8, v8}, Lcom/android/server/policy/GlobalActions;->-wrap29(Lcom/android/server/policy/GlobalActions;ZZ)V

    goto/16 :goto_0

    :pswitch_9
    iget-object v6, p0, Lcom/android/server/policy/GlobalActions$UIUpdateHandler;->this$0:Lcom/android/server/policy/GlobalActions;

    iget-object v7, p0, Lcom/android/server/policy/GlobalActions$UIUpdateHandler;->this$0:Lcom/android/server/policy/GlobalActions;

    invoke-static {v7}, Lcom/android/server/policy/GlobalActions;->-wrap8(Lcom/android/server/policy/GlobalActions;)Z

    move-result v7

    invoke-static {v6, v7}, Lcom/android/server/policy/GlobalActions;->-wrap22(Lcom/android/server/policy/GlobalActions;Z)V

    goto/16 :goto_0

    :pswitch_a
    iget-object v6, p0, Lcom/android/server/policy/GlobalActions$UIUpdateHandler;->this$0:Lcom/android/server/policy/GlobalActions;

    invoke-static {v6}, Lcom/android/server/policy/GlobalActions;->-get18(Lcom/android/server/policy/GlobalActions;)Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;

    move-result-object v6

    if-eqz v6, :cond_0

    const/4 v0, 0x0

    :goto_2
    iget-object v6, p0, Lcom/android/server/policy/GlobalActions$UIUpdateHandler;->this$0:Lcom/android/server/policy/GlobalActions;

    invoke-static {v6}, Lcom/android/server/policy/GlobalActions;->-get6(Lcom/android/server/policy/GlobalActions;)Lcom/android/server/policy/GlobalActions$MyAdapter;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/server/policy/GlobalActions$MyAdapter;->getCount()I

    move-result v6

    if-ge v0, v6, :cond_0

    iget-object v6, p0, Lcom/android/server/policy/GlobalActions$UIUpdateHandler;->this$0:Lcom/android/server/policy/GlobalActions;

    iget-object v7, p0, Lcom/android/server/policy/GlobalActions$UIUpdateHandler;->this$0:Lcom/android/server/policy/GlobalActions;

    invoke-static {v7}, Lcom/android/server/policy/GlobalActions;->-wrap8(Lcom/android/server/policy/GlobalActions;)Z

    move-result v7

    invoke-static {v6, v7}, Lcom/android/server/policy/GlobalActions;->-wrap0(Lcom/android/server/policy/GlobalActions;Z)Landroid/view/ViewGroup;

    move-result-object v6

    invoke-virtual {v6, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    const v6, 0x1020006

    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    iget-object v7, p0, Lcom/android/server/policy/GlobalActions$UIUpdateHandler;->this$0:Lcom/android/server/policy/GlobalActions;

    invoke-static {v7}, Lcom/android/server/policy/GlobalActions;->-get33(Lcom/android/server/policy/GlobalActions;)I

    move-result v7

    if-ne v6, v7, :cond_a

    iget-object v6, p0, Lcom/android/server/policy/GlobalActions$UIUpdateHandler;->this$0:Lcom/android/server/policy/GlobalActions;

    iget-object v7, p0, Lcom/android/server/policy/GlobalActions$UIUpdateHandler;->this$0:Lcom/android/server/policy/GlobalActions;

    invoke-static {v7}, Lcom/android/server/policy/GlobalActions;->-get6(Lcom/android/server/policy/GlobalActions;)Lcom/android/server/policy/GlobalActions$MyAdapter;

    move-result-object v7

    invoke-virtual {v7, v0}, Lcom/android/server/policy/GlobalActions$MyAdapter;->getItem(I)Lcom/android/server/policy/GlobalActions$Action;

    move-result-object v7

    invoke-static {v6, v4, v7, v8}, Lcom/android/server/policy/GlobalActions;->-wrap25(Lcom/android/server/policy/GlobalActions;Landroid/view/View;Lcom/android/server/policy/GlobalActions$Action;Z)V

    :cond_a
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :pswitch_b
    iget-object v6, p0, Lcom/android/server/policy/GlobalActions$UIUpdateHandler;->this$0:Lcom/android/server/policy/GlobalActions;

    iget-object v7, p0, Lcom/android/server/policy/GlobalActions$UIUpdateHandler;->this$0:Lcom/android/server/policy/GlobalActions;

    invoke-static {v7}, Lcom/android/server/policy/GlobalActions;->-get32(Lcom/android/server/policy/GlobalActions;)I

    move-result v7

    invoke-static {v6, v7}, Lcom/android/server/policy/GlobalActions;->-wrap27(Lcom/android/server/policy/GlobalActions;I)V

    goto/16 :goto_0

    :pswitch_c
    iget-object v6, p0, Lcom/android/server/policy/GlobalActions$UIUpdateHandler;->this$0:Lcom/android/server/policy/GlobalActions;

    invoke-static {v6}, Lcom/android/server/policy/GlobalActions;->-wrap30(Lcom/android/server/policy/GlobalActions;)V

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_3
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_0
        :pswitch_c
    .end packed-switch
.end method
