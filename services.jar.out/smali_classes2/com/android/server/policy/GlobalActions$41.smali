.class Lcom/android/server/policy/GlobalActions$41;
.super Landroid/telephony/PhoneStateListener;
.source "GlobalActions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/policy/GlobalActions;->getPhoneStateListener(II)Landroid/telephony/PhoneStateListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/policy/GlobalActions;


# direct methods
.method constructor <init>(Lcom/android/server/policy/GlobalActions;I)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/policy/GlobalActions$41;->this$0:Lcom/android/server/policy/GlobalActions;

    invoke-direct {p0, p2}, Landroid/telephony/PhoneStateListener;-><init>(I)V

    return-void
.end method


# virtual methods
.method public onServiceStateChanged(Landroid/telephony/ServiceState;)V
    .locals 8

    const/4 v7, 0x0

    const/4 v6, 0x3

    iget-object v3, p0, Lcom/android/server/policy/GlobalActions$41;->this$0:Lcom/android/server/policy/GlobalActions;

    iget v4, p0, Lcom/android/server/policy/GlobalActions$41;->mSubId:I

    invoke-static {v3, v4}, Lcom/android/server/policy/GlobalActions;->-wrap17(Lcom/android/server/policy/GlobalActions;I)I

    move-result v2

    iget-object v3, p0, Lcom/android/server/policy/GlobalActions$41;->this$0:Lcom/android/server/policy/GlobalActions;

    invoke-static {v3}, Lcom/android/server/policy/GlobalActions;->-get26(Lcom/android/server/policy/GlobalActions;)Z

    move-result v3

    if-eqz v3, :cond_0

    if-nez p1, :cond_1

    :cond_0
    const-string/jumbo v3, "GlobalActions"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "mHasTelephony : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/policy/GlobalActions$41;->this$0:Lcom/android/server/policy/GlobalActions;

    invoke-static {v5}, Lcom/android/server/policy/GlobalActions;->-get26(Lcom/android/server/policy/GlobalActions;)Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " state:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    const-string/jumbo v3, "GlobalActions"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onServiceStateChanged("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ") : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getState()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " MSim "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/policy/GlobalActions$41;->this$0:Lcom/android/server/policy/GlobalActions;

    invoke-static {v5}, Lcom/android/server/policy/GlobalActions;->-wrap7(Lcom/android/server/policy/GlobalActions;)Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/server/policy/GlobalActions$41;->this$0:Lcom/android/server/policy/GlobalActions;

    invoke-static {v3}, Lcom/android/server/policy/GlobalActions;->-get44(Lcom/android/server/policy/GlobalActions;)[I

    move-result-object v3

    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getState()I

    move-result v4

    aput v4, v3, v2

    const/4 v1, 0x0

    const/4 v0, 0x0

    :goto_0
    iget-object v3, p0, Lcom/android/server/policy/GlobalActions$41;->this$0:Lcom/android/server/policy/GlobalActions;

    invoke-static {v3}, Lcom/android/server/policy/GlobalActions;->-get46(Lcom/android/server/policy/GlobalActions;)I

    move-result v3

    if-ge v0, v3, :cond_6

    iget-object v3, p0, Lcom/android/server/policy/GlobalActions$41;->this$0:Lcom/android/server/policy/GlobalActions;

    invoke-static {v3}, Lcom/android/server/policy/GlobalActions;->-wrap7(Lcom/android/server/policy/GlobalActions;)Z

    move-result v3

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/android/server/policy/GlobalActions$41;->this$0:Lcom/android/server/policy/GlobalActions;

    invoke-static {v3, v7}, Lcom/android/server/policy/GlobalActions;->-wrap9(Lcom/android/server/policy/GlobalActions;I)Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/android/server/policy/GlobalActions$41;->this$0:Lcom/android/server/policy/GlobalActions;

    const/4 v4, 0x1

    invoke-static {v3, v4}, Lcom/android/server/policy/GlobalActions;->-wrap9(Lcom/android/server/policy/GlobalActions;I)Z

    move-result v3

    if-eqz v3, :cond_4

    :cond_2
    iget-object v3, p0, Lcom/android/server/policy/GlobalActions$41;->this$0:Lcom/android/server/policy/GlobalActions;

    invoke-static {v3, v0}, Lcom/android/server/policy/GlobalActions;->-wrap9(Lcom/android/server/policy/GlobalActions;I)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/server/policy/GlobalActions$41;->this$0:Lcom/android/server/policy/GlobalActions;

    invoke-static {v3}, Lcom/android/server/policy/GlobalActions;->-get44(Lcom/android/server/policy/GlobalActions;)[I

    move-result-object v3

    aget v3, v3, v0

    if-ne v3, v6, :cond_3

    iget-object v3, p0, Lcom/android/server/policy/GlobalActions$41;->this$0:Lcom/android/server/policy/GlobalActions;

    invoke-static {v3}, Lcom/android/server/policy/GlobalActions;->-wrap6(Lcom/android/server/policy/GlobalActions;)Z

    move-result v3

    if-eqz v3, :cond_3

    const/4 v1, 0x1

    :cond_3
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    iget-object v3, p0, Lcom/android/server/policy/GlobalActions$41;->this$0:Lcom/android/server/policy/GlobalActions;

    invoke-static {v3}, Lcom/android/server/policy/GlobalActions;->-get44(Lcom/android/server/policy/GlobalActions;)[I

    move-result-object v3

    aget v3, v3, v7

    if-ne v3, v6, :cond_3

    const/4 v1, 0x1

    goto :goto_1

    :cond_5
    iget-object v3, p0, Lcom/android/server/policy/GlobalActions$41;->this$0:Lcom/android/server/policy/GlobalActions;

    invoke-static {v3}, Lcom/android/server/policy/GlobalActions;->-get44(Lcom/android/server/policy/GlobalActions;)[I

    move-result-object v3

    aget v3, v3, v7

    if-ne v3, v6, :cond_3

    const/4 v1, 0x1

    goto :goto_1

    :cond_6
    const-string/jumbo v3, "GlobalActions"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onServiceStateChanged inAirplaneMode="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " inAirplaneModeOn="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/policy/GlobalActions$41;->this$0:Lcom/android/server/policy/GlobalActions;

    invoke-static {v5}, Lcom/android/server/policy/GlobalActions;->-wrap6(Lcom/android/server/policy/GlobalActions;)Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/server/policy/GlobalActions$41;->this$0:Lcom/android/server/policy/GlobalActions;

    invoke-static {v3}, Lcom/android/server/policy/GlobalActions;->-wrap6(Lcom/android/server/policy/GlobalActions;)Z

    move-result v3

    if-eq v1, v3, :cond_7

    return-void

    :cond_7
    iget-object v4, p0, Lcom/android/server/policy/GlobalActions$41;->this$0:Lcom/android/server/policy/GlobalActions;

    if-eqz v1, :cond_9

    sget-object v3, Lcom/android/server/policy/GlobalActions$ToggleAction$State;->On:Lcom/android/server/policy/GlobalActions$ToggleAction$State;

    :goto_2
    invoke-static {v4, v3}, Lcom/android/server/policy/GlobalActions;->-set0(Lcom/android/server/policy/GlobalActions;Lcom/android/server/policy/GlobalActions$ToggleAction$State;)Lcom/android/server/policy/GlobalActions$ToggleAction$State;

    const-string/jumbo v3, "GlobalActions"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onServiceStateChanged inAirplaneMode="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " mAirplaneState="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/policy/GlobalActions$41;->this$0:Lcom/android/server/policy/GlobalActions;

    invoke-static {v5}, Lcom/android/server/policy/GlobalActions;->-get8(Lcom/android/server/policy/GlobalActions;)Lcom/android/server/policy/GlobalActions$ToggleAction$State;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/server/policy/GlobalActions$41;->this$0:Lcom/android/server/policy/GlobalActions;

    invoke-static {v3}, Lcom/android/server/policy/GlobalActions;->-get25(Lcom/android/server/policy/GlobalActions;)Landroid/os/Handler;

    move-result-object v3

    if-eqz v3, :cond_8

    iget-object v3, p0, Lcom/android/server/policy/GlobalActions$41;->this$0:Lcom/android/server/policy/GlobalActions;

    invoke-static {v3}, Lcom/android/server/policy/GlobalActions;->-get25(Lcom/android/server/policy/GlobalActions;)Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_8
    return-void

    :cond_9
    sget-object v3, Lcom/android/server/policy/GlobalActions$ToggleAction$State;->Off:Lcom/android/server/policy/GlobalActions$ToggleAction$State;

    goto :goto_2
.end method
