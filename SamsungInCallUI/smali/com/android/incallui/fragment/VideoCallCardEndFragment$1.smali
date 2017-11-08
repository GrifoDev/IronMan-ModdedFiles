.class Lcom/android/incallui/fragment/VideoCallCardEndFragment$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/incallui/fragment/VideoCallCardEndFragment;->updateVisibilityByPriority()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/fragment/VideoCallCardEndFragment;

.field final synthetic val$observer:Landroid/view/ViewTreeObserver;


# direct methods
.method constructor <init>(Lcom/android/incallui/fragment/VideoCallCardEndFragment;Landroid/view/ViewTreeObserver;)V
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/fragment/VideoCallCardEndFragment$1;->this$0:Lcom/android/incallui/fragment/VideoCallCardEndFragment;

    iput-object p2, p0, Lcom/android/incallui/fragment/VideoCallCardEndFragment$1;->val$observer:Landroid/view/ViewTreeObserver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 9

    const/4 v0, 0x1

    const/16 v8, 0x8

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/incallui/fragment/VideoCallCardEndFragment$1;->val$observer:Landroid/view/ViewTreeObserver;

    invoke-virtual {v2}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v2, p0, Lcom/android/incallui/fragment/VideoCallCardEndFragment$1;->this$0:Lcom/android/incallui/fragment/VideoCallCardEndFragment;

    invoke-virtual {v2}, Lcom/android/incallui/fragment/VideoCallCardEndFragment;->isAdded()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/incallui/fragment/VideoCallCardEndFragment$1;->val$observer:Landroid/view/ViewTreeObserver;

    invoke-virtual {v2, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    iget-object v2, p0, Lcom/android/incallui/fragment/VideoCallCardEndFragment$1;->this$0:Lcom/android/incallui/fragment/VideoCallCardEndFragment;

    invoke-virtual {v2}, Lcom/android/incallui/fragment/VideoCallCardEndFragment;->needToUpdateMultiWindowLayout()Z

    move-result v2

    invoke-static {}, Lcom/android/incallui/util/DesktopModeManager;->isDesktopMode()Z

    move-result v3

    if-nez v2, :cond_2

    if-eqz v3, :cond_e

    :cond_2
    iget-object v2, p0, Lcom/android/incallui/fragment/VideoCallCardEndFragment$1;->this$0:Lcom/android/incallui/fragment/VideoCallCardEndFragment;

    iget-object v2, v2, Lcom/android/incallui/fragment/VideoCallCardEndFragment;->mCallStateContainer:Landroid/view/View;

    invoke-virtual {v2, v1, v1}, Landroid/view/View;->measure(II)V

    iget-object v2, p0, Lcom/android/incallui/fragment/VideoCallCardEndFragment$1;->this$0:Lcom/android/incallui/fragment/VideoCallCardEndFragment;

    iget-object v2, v2, Lcom/android/incallui/fragment/VideoCallCardEndFragment;->mCallStateContainer:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    iget-object v4, p0, Lcom/android/incallui/fragment/VideoCallCardEndFragment$1;->this$0:Lcom/android/incallui/fragment/VideoCallCardEndFragment;

    iget-object v4, v4, Lcom/android/incallui/fragment/VideoCallCardEndFragment;->mNameContainer:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v4

    iget-object v5, p0, Lcom/android/incallui/fragment/VideoCallCardEndFragment$1;->this$0:Lcom/android/incallui/fragment/VideoCallCardEndFragment;

    iget-object v5, v5, Lcom/android/incallui/fragment/VideoCallCardEndFragment;->mCallNumberAndLabel:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v5

    iget-object v6, p0, Lcom/android/incallui/fragment/VideoCallCardEndFragment$1;->this$0:Lcom/android/incallui/fragment/VideoCallCardEndFragment;

    iget-object v6, v6, Lcom/android/incallui/fragment/VideoCallCardEndFragment;->mEndCallContactBtn:Landroid/widget/Button;

    invoke-virtual {v6}, Landroid/widget/Button;->getHeight()I

    move-result v6

    iget-object v7, p0, Lcom/android/incallui/fragment/VideoCallCardEndFragment$1;->this$0:Lcom/android/incallui/fragment/VideoCallCardEndFragment;

    iget-object v7, v7, Lcom/android/incallui/fragment/VideoCallCardEndFragment;->mPrimaryCallCardContainer:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getHeight()I

    move-result v7

    if-eqz v3, :cond_6

    add-int v3, v2, v4

    add-int/2addr v3, v6

    if-le v3, v7, :cond_6

    iget-object v2, p0, Lcom/android/incallui/fragment/VideoCallCardEndFragment$1;->this$0:Lcom/android/incallui/fragment/VideoCallCardEndFragment;

    iget v2, v2, Lcom/android/incallui/fragment/VideoCallCardEndFragment;->mCallCardCase:I

    if-eq v2, v1, :cond_13

    :goto_1
    iget-object v2, p0, Lcom/android/incallui/fragment/VideoCallCardEndFragment$1;->this$0:Lcom/android/incallui/fragment/VideoCallCardEndFragment;

    iget-object v2, v2, Lcom/android/incallui/fragment/VideoCallCardEndFragment;->mCallNumberAndLabel:Landroid/view/View;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/incallui/fragment/VideoCallCardEndFragment$1;->this$0:Lcom/android/incallui/fragment/VideoCallCardEndFragment;

    iget-object v2, v2, Lcom/android/incallui/fragment/VideoCallCardEndFragment;->mCallNumberAndLabel:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/android/incallui/fragment/VideoCallCardEndFragment$1;->this$0:Lcom/android/incallui/fragment/VideoCallCardEndFragment;

    iget-object v2, v2, Lcom/android/incallui/fragment/VideoCallCardEndFragment;->mCallNumberAndLabel:Landroid/view/View;

    invoke-virtual {v2, v8}, Landroid/view/View;->setVisibility(I)V

    :cond_3
    iget-object v2, p0, Lcom/android/incallui/fragment/VideoCallCardEndFragment$1;->this$0:Lcom/android/incallui/fragment/VideoCallCardEndFragment;

    iget-object v2, v2, Lcom/android/incallui/fragment/VideoCallCardEndFragment;->mCityId:Landroid/widget/TextView;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/android/incallui/fragment/VideoCallCardEndFragment$1;->this$0:Lcom/android/incallui/fragment/VideoCallCardEndFragment;

    iget-object v2, v2, Lcom/android/incallui/fragment/VideoCallCardEndFragment;->mCityId:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getVisibility()I

    move-result v2

    if-nez v2, :cond_4

    iget-object v2, p0, Lcom/android/incallui/fragment/VideoCallCardEndFragment$1;->this$0:Lcom/android/incallui/fragment/VideoCallCardEndFragment;

    iget-object v2, v2, Lcom/android/incallui/fragment/VideoCallCardEndFragment;->mCityId:Landroid/widget/TextView;

    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_4
    iget-object v2, p0, Lcom/android/incallui/fragment/VideoCallCardEndFragment$1;->this$0:Lcom/android/incallui/fragment/VideoCallCardEndFragment;

    invoke-virtual {v2, v1}, Lcom/android/incallui/fragment/VideoCallCardEndFragment;->showEndcallContactBtn(Z)V

    :goto_2
    move v1, v0

    :goto_3
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardEndFragment$1;->this$0:Lcom/android/incallui/fragment/VideoCallCardEndFragment;

    iget v0, v0, Lcom/android/incallui/fragment/VideoCallCardEndFragment;->mCallCardCase:I

    if-eq v0, v1, :cond_5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateVisibilityByPriority - case "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/incallui/service/vt/VideoCallLog;->callcard(Ljava/lang/String;)V

    :cond_5
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardEndFragment$1;->this$0:Lcom/android/incallui/fragment/VideoCallCardEndFragment;

    iput v1, v0, Lcom/android/incallui/fragment/VideoCallCardEndFragment;->mCallCardCase:I

    goto/16 :goto_0

    :cond_6
    add-int/2addr v2, v4

    add-int/2addr v2, v5

    add-int/2addr v2, v6

    if-le v2, v7, :cond_9

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/android/incallui/fragment/VideoCallCardEndFragment$1;->this$0:Lcom/android/incallui/fragment/VideoCallCardEndFragment;

    iget-object v2, v2, Lcom/android/incallui/fragment/VideoCallCardEndFragment;->mCallNumberAndLabel:Landroid/view/View;

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/android/incallui/fragment/VideoCallCardEndFragment$1;->this$0:Lcom/android/incallui/fragment/VideoCallCardEndFragment;

    iget-object v2, v2, Lcom/android/incallui/fragment/VideoCallCardEndFragment;->mCallNumberAndLabel:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-nez v2, :cond_7

    iget-object v2, p0, Lcom/android/incallui/fragment/VideoCallCardEndFragment$1;->this$0:Lcom/android/incallui/fragment/VideoCallCardEndFragment;

    iget-object v2, v2, Lcom/android/incallui/fragment/VideoCallCardEndFragment;->mCallNumberAndLabel:Landroid/view/View;

    invoke-virtual {v2, v8}, Landroid/view/View;->setVisibility(I)V

    :cond_7
    iget-object v2, p0, Lcom/android/incallui/fragment/VideoCallCardEndFragment$1;->this$0:Lcom/android/incallui/fragment/VideoCallCardEndFragment;

    iget-object v2, v2, Lcom/android/incallui/fragment/VideoCallCardEndFragment;->mCityId:Landroid/widget/TextView;

    if-eqz v2, :cond_8

    iget-object v2, p0, Lcom/android/incallui/fragment/VideoCallCardEndFragment$1;->this$0:Lcom/android/incallui/fragment/VideoCallCardEndFragment;

    iget-object v2, v2, Lcom/android/incallui/fragment/VideoCallCardEndFragment;->mCityId:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getVisibility()I

    move-result v2

    if-nez v2, :cond_8

    iget-object v2, p0, Lcom/android/incallui/fragment/VideoCallCardEndFragment$1;->this$0:Lcom/android/incallui/fragment/VideoCallCardEndFragment;

    iget-object v2, v2, Lcom/android/incallui/fragment/VideoCallCardEndFragment;->mCityId:Landroid/widget/TextView;

    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_8
    iget-object v2, p0, Lcom/android/incallui/fragment/VideoCallCardEndFragment$1;->this$0:Lcom/android/incallui/fragment/VideoCallCardEndFragment;

    invoke-virtual {v2, v0}, Lcom/android/incallui/fragment/VideoCallCardEndFragment;->showEndcallContactBtn(Z)V

    move v0, v1

    goto :goto_2

    :cond_9
    const/4 v2, 0x3

    iget-object v3, p0, Lcom/android/incallui/fragment/VideoCallCardEndFragment$1;->this$0:Lcom/android/incallui/fragment/VideoCallCardEndFragment;

    iget-object v3, v3, Lcom/android/incallui/fragment/VideoCallCardEndFragment;->mCallNumberAndLabel:Landroid/view/View;

    if-eqz v3, :cond_c

    iget-object v3, p0, Lcom/android/incallui/fragment/VideoCallCardEndFragment$1;->this$0:Lcom/android/incallui/fragment/VideoCallCardEndFragment;

    iget-object v3, v3, Lcom/android/incallui/fragment/VideoCallCardEndFragment;->mCallNumberAndLabel:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-ne v3, v8, :cond_c

    iget-object v3, p0, Lcom/android/incallui/fragment/VideoCallCardEndFragment$1;->this$0:Lcom/android/incallui/fragment/VideoCallCardEndFragment;

    iget-object v3, v3, Lcom/android/incallui/fragment/VideoCallCardEndFragment;->mPhoneNumber:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_a

    iget-object v3, p0, Lcom/android/incallui/fragment/VideoCallCardEndFragment$1;->this$0:Lcom/android/incallui/fragment/VideoCallCardEndFragment;

    iget-object v3, v3, Lcom/android/incallui/fragment/VideoCallCardEndFragment;->mPhoneNumber:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_c

    :cond_a
    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallConfig;->isJpnUX()Z

    move-result v3

    if-eqz v3, :cond_b

    invoke-static {}, Lcom/android/incallui/util/InCallUtils;->isHideCallerInfo()Z

    move-result v3

    if-nez v3, :cond_c

    :cond_b
    iget-object v3, p0, Lcom/android/incallui/fragment/VideoCallCardEndFragment$1;->this$0:Lcom/android/incallui/fragment/VideoCallCardEndFragment;

    iget-object v3, v3, Lcom/android/incallui/fragment/VideoCallCardEndFragment;->mCallNumberAndLabel:Landroid/view/View;

    invoke-virtual {v3, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_c
    iget-object v3, p0, Lcom/android/incallui/fragment/VideoCallCardEndFragment$1;->this$0:Lcom/android/incallui/fragment/VideoCallCardEndFragment;

    iget-object v3, v3, Lcom/android/incallui/fragment/VideoCallCardEndFragment;->mCityId:Landroid/widget/TextView;

    if-eqz v3, :cond_d

    iget-object v3, p0, Lcom/android/incallui/fragment/VideoCallCardEndFragment$1;->this$0:Lcom/android/incallui/fragment/VideoCallCardEndFragment;

    iget-object v3, v3, Lcom/android/incallui/fragment/VideoCallCardEndFragment;->mCityId:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getVisibility()I

    move-result v3

    if-ne v3, v8, :cond_d

    iget-object v3, p0, Lcom/android/incallui/fragment/VideoCallCardEndFragment$1;->this$0:Lcom/android/incallui/fragment/VideoCallCardEndFragment;

    iget-object v3, v3, Lcom/android/incallui/fragment/VideoCallCardEndFragment;->mCityId:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_d

    iget-object v3, p0, Lcom/android/incallui/fragment/VideoCallCardEndFragment$1;->this$0:Lcom/android/incallui/fragment/VideoCallCardEndFragment;

    iget-object v3, v3, Lcom/android/incallui/fragment/VideoCallCardEndFragment;->mCityId:Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_d
    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallCardEndFragment$1;->this$0:Lcom/android/incallui/fragment/VideoCallCardEndFragment;

    invoke-virtual {v1, v0}, Lcom/android/incallui/fragment/VideoCallCardEndFragment;->showEndcallContactBtn(Z)V

    move v0, v2

    goto/16 :goto_2

    :cond_e
    iget-object v2, p0, Lcom/android/incallui/fragment/VideoCallCardEndFragment$1;->this$0:Lcom/android/incallui/fragment/VideoCallCardEndFragment;

    iget-object v2, v2, Lcom/android/incallui/fragment/VideoCallCardEndFragment;->mCallNumberAndLabel:Landroid/view/View;

    if-eqz v2, :cond_11

    iget-object v2, p0, Lcom/android/incallui/fragment/VideoCallCardEndFragment$1;->this$0:Lcom/android/incallui/fragment/VideoCallCardEndFragment;

    iget-object v2, v2, Lcom/android/incallui/fragment/VideoCallCardEndFragment;->mCallNumberAndLabel:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-ne v2, v8, :cond_11

    iget-object v2, p0, Lcom/android/incallui/fragment/VideoCallCardEndFragment$1;->this$0:Lcom/android/incallui/fragment/VideoCallCardEndFragment;

    iget-object v2, v2, Lcom/android/incallui/fragment/VideoCallCardEndFragment;->mPhoneNumber:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_f

    iget-object v2, p0, Lcom/android/incallui/fragment/VideoCallCardEndFragment$1;->this$0:Lcom/android/incallui/fragment/VideoCallCardEndFragment;

    iget-object v2, v2, Lcom/android/incallui/fragment/VideoCallCardEndFragment;->mPhoneNumber:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_11

    :cond_f
    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallConfig;->isJpnUX()Z

    move-result v2

    if-eqz v2, :cond_10

    invoke-static {}, Lcom/android/incallui/util/InCallUtils;->isHideCallerInfo()Z

    move-result v2

    if-nez v2, :cond_11

    :cond_10
    iget-object v2, p0, Lcom/android/incallui/fragment/VideoCallCardEndFragment$1;->this$0:Lcom/android/incallui/fragment/VideoCallCardEndFragment;

    iget-object v2, v2, Lcom/android/incallui/fragment/VideoCallCardEndFragment;->mCallNumberAndLabel:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_11
    iget-object v2, p0, Lcom/android/incallui/fragment/VideoCallCardEndFragment$1;->this$0:Lcom/android/incallui/fragment/VideoCallCardEndFragment;

    iget-object v2, v2, Lcom/android/incallui/fragment/VideoCallCardEndFragment;->mCityId:Landroid/widget/TextView;

    if-eqz v2, :cond_12

    iget-object v2, p0, Lcom/android/incallui/fragment/VideoCallCardEndFragment$1;->this$0:Lcom/android/incallui/fragment/VideoCallCardEndFragment;

    iget-object v2, v2, Lcom/android/incallui/fragment/VideoCallCardEndFragment;->mCityId:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getVisibility()I

    move-result v2

    if-ne v2, v8, :cond_12

    iget-object v2, p0, Lcom/android/incallui/fragment/VideoCallCardEndFragment$1;->this$0:Lcom/android/incallui/fragment/VideoCallCardEndFragment;

    iget-object v2, v2, Lcom/android/incallui/fragment/VideoCallCardEndFragment;->mCityId:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_12

    iget-object v2, p0, Lcom/android/incallui/fragment/VideoCallCardEndFragment$1;->this$0:Lcom/android/incallui/fragment/VideoCallCardEndFragment;

    iget-object v2, v2, Lcom/android/incallui/fragment/VideoCallCardEndFragment;->mCityId:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_12
    iget-object v2, p0, Lcom/android/incallui/fragment/VideoCallCardEndFragment$1;->this$0:Lcom/android/incallui/fragment/VideoCallCardEndFragment;

    invoke-virtual {v2, v0}, Lcom/android/incallui/fragment/VideoCallCardEndFragment;->showEndcallContactBtn(Z)V

    goto/16 :goto_3

    :cond_13
    move v0, v1

    goto/16 :goto_1
.end method
