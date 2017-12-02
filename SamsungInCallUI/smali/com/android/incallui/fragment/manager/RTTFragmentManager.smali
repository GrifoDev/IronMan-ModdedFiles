.class public Lcom/android/incallui/fragment/manager/RTTFragmentManager;
.super Lcom/android/incallui/fragment/manager/BaseFragmentManager;

# interfaces
.implements Lcom/android/incallui/InCallPresenter$IncomingCallListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/incallui/fragment/manager/RTTFragmentManager$FragmentMode;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/incallui/fragment/manager/BaseFragmentManager",
        "<",
        "Lcom/android/incallui/fragment/RTTFragment;",
        ">;",
        "Lcom/android/incallui/InCallPresenter$IncomingCallListener;"
    }
.end annotation


# static fields
.field protected static final LOG_TAG:Ljava/lang/String; = "RTTFragmentManager"


# instance fields
.field mCurrentFragment:Lcom/android/incallui/fragment/RTTFragment;

.field private mIsShowing:Z


# direct methods
.method public constructor <init>(Lcom/android/incallui/InCallActivity;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/incallui/fragment/manager/BaseFragmentManager;-><init>(Lcom/android/incallui/InCallActivity;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/incallui/fragment/manager/RTTFragmentManager;->mIsShowing:Z

    const-string v0, "RTTFragmentManager..."

    invoke-virtual {p0, v0}, Lcom/android/incallui/fragment/manager/RTTFragmentManager;->log(Ljava/lang/String;)V

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/InCallPresenter;->addIncomingCallListener(Lcom/android/incallui/InCallPresenter$IncomingCallListener;)V

    return-void
.end method

.method private removeCurrentRTTFragment()V
    .locals 1

    sget-object v0, Lcom/android/incallui/fragment/manager/RTTFragmentManager$FragmentMode;->EMPTY:Lcom/android/incallui/fragment/manager/RTTFragmentManager$FragmentMode;

    iput-object v0, p0, Lcom/android/incallui/fragment/manager/RTTFragmentManager;->mFragmentType:Ljava/lang/Enum;

    invoke-super {p0}, Lcom/android/incallui/fragment/manager/BaseFragmentManager;->removeCurrentFragment()V

    return-void
.end method


# virtual methods
.method public bridge synthetic checkAndSet(Z)Lcom/android/incallui/BaseFragment;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/android/incallui/fragment/manager/RTTFragmentManager;->checkAndSet(Z)Lcom/android/incallui/fragment/RTTFragment;

    move-result-object v0

    return-object v0
.end method

.method public checkAndSet(Z)Lcom/android/incallui/fragment/RTTFragment;
    .locals 2

    iget-object v0, p0, Lcom/android/incallui/fragment/manager/RTTFragmentManager;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/fragment/manager/RTTFragmentManager;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    invoke-virtual {v0}, Lcom/android/incallui/InCallActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/fragment/manager/RTTFragmentManager;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    invoke-virtual {v0}, Lcom/android/incallui/InCallActivity;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    sget-object v0, Lcom/android/incallui/fragment/manager/RTTFragmentManager$FragmentMode;->DEFAULT:Lcom/android/incallui/fragment/manager/RTTFragmentManager$FragmentMode;

    if-nez p1, :cond_2

    iget-object v1, p0, Lcom/android/incallui/fragment/manager/RTTFragmentManager;->mFragmentType:Ljava/lang/Enum;

    if-eq v1, v0, :cond_3

    :cond_2
    invoke-virtual {p0, v0, p1}, Lcom/android/incallui/fragment/manager/RTTFragmentManager;->setFragment(Ljava/lang/Enum;Z)V

    iput-object v0, p0, Lcom/android/incallui/fragment/manager/RTTFragmentManager;->mFragmentType:Ljava/lang/Enum;

    :cond_3
    iget-object v0, p0, Lcom/android/incallui/fragment/manager/RTTFragmentManager;->mCurrentFragment:Lcom/android/incallui/fragment/RTTFragment;

    goto :goto_0
.end method

.method public bridge synthetic getFragment()Lcom/android/incallui/BaseFragment;
    .locals 1

    invoke-virtual {p0}, Lcom/android/incallui/fragment/manager/RTTFragmentManager;->getFragment()Lcom/android/incallui/fragment/RTTFragment;

    move-result-object v0

    return-object v0
.end method

.method public getFragment()Lcom/android/incallui/fragment/RTTFragment;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/fragment/manager/RTTFragmentManager;->mCurrentFragment:Lcom/android/incallui/fragment/RTTFragment;

    return-object v0
.end method

.method public hideRTT()V
    .locals 2

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/android/incallui/fragment/manager/RTTFragmentManager;->getFragment()Lcom/android/incallui/fragment/RTTFragment;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/fragment/manager/RTTFragmentManager;->getFragment()Lcom/android/incallui/fragment/RTTFragment;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/incallui/fragment/RTTFragment;->hideSoftInput(Z)V

    invoke-direct {p0}, Lcom/android/incallui/fragment/manager/RTTFragmentManager;->removeCurrentRTTFragment()V

    :cond_0
    iput-boolean v1, p0, Lcom/android/incallui/fragment/manager/RTTFragmentManager;->mIsShowing:Z

    return-void
.end method

.method public isShowing()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/incallui/fragment/manager/RTTFragmentManager;->mIsShowing:Z

    return v0
.end method

.method protected makeTestList()V
    .locals 5

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/incallui/fragment/manager/RTTFragmentManager;->mTestFragmentList:Ljava/util/List;

    invoke-static {}, Lcom/android/incallui/fragment/manager/RTTFragmentManager$FragmentMode;->values()[Lcom/android/incallui/fragment/manager/RTTFragmentManager$FragmentMode;

    move-result-object v1

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    iget-object v4, p0, Lcom/android/incallui/fragment/manager/RTTFragmentManager;->mTestFragmentList:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onDestroy()V
    .locals 1

    invoke-super {p0}, Lcom/android/incallui/fragment/manager/BaseFragmentManager;->onDestroy()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/incallui/fragment/manager/RTTFragmentManager;->mIsShowing:Z

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/InCallPresenter;->removeIncomingCallListener(Lcom/android/incallui/InCallPresenter$IncomingCallListener;)V

    return-void
.end method

.method public onIncomingCall(Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/Call;)V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/incallui/fragment/manager/RTTFragmentManager;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/fragment/manager/RTTFragmentManager;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    invoke-virtual {v0}, Lcom/android/incallui/InCallActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/fragment/manager/RTTFragmentManager;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    invoke-virtual {v0}, Lcom/android/incallui/InCallActivity;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/incallui/fragment/manager/RTTFragmentManager;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    invoke-virtual {v0, v1, v1}, Lcom/android/incallui/InCallActivity;->displayDialpad(ZZ)V

    goto :goto_0
.end method

.method public bridge synthetic setCurrentFragment(Lcom/android/incallui/BaseFragment;)V
    .locals 0

    check-cast p1, Lcom/android/incallui/fragment/RTTFragment;

    invoke-virtual {p0, p1}, Lcom/android/incallui/fragment/manager/RTTFragmentManager;->setCurrentFragment(Lcom/android/incallui/fragment/RTTFragment;)V

    return-void
.end method

.method public setCurrentFragment(Lcom/android/incallui/fragment/RTTFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/fragment/manager/RTTFragmentManager;->mCurrentFragment:Lcom/android/incallui/fragment/RTTFragment;

    return-void
.end method

.method protected setFragment(Ljava/lang/Enum;Z)V
    .locals 4

    const v1, 0x7f10031e

    const/4 v0, 0x0

    sget-object v2, Lcom/android/incallui/fragment/manager/RTTFragmentManager$1;->$SwitchMap$com$android$incallui$fragment$manager$RTTFragmentManager$FragmentMode:[I

    check-cast p1, Lcom/android/incallui/fragment/manager/RTTFragmentManager$FragmentMode;

    invoke-virtual {p1}, Lcom/android/incallui/fragment/manager/RTTFragmentManager$FragmentMode;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    :goto_0
    if-eqz v0, :cond_0

    invoke-virtual {p0, v1, v0, p2}, Lcom/android/incallui/fragment/manager/RTTFragmentManager;->setFragmentInternal(ILandroid/app/Fragment;Z)V

    :cond_0
    return-void

    :pswitch_0
    new-instance v0, Lcom/android/incallui/fragment/RTTFragment;

    invoke-direct {v0}, Lcom/android/incallui/fragment/RTTFragment;-><init>()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public showRTT()V
    .locals 3

    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/android/incallui/fragment/manager/RTTFragmentManager;->checkAndSet(Z)Lcom/android/incallui/fragment/RTTFragment;

    iget-object v0, p0, Lcom/android/incallui/fragment/manager/RTTFragmentManager;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    invoke-virtual {v0}, Lcom/android/incallui/InCallActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/incallui/fragment/manager/RTTFragmentManager;->getFragment()Lcom/android/incallui/fragment/RTTFragment;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/fragment/manager/RTTFragmentManager;->getFragment()Lcom/android/incallui/fragment/RTTFragment;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/FragmentTransaction;->show(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    :cond_0
    iput-boolean v2, p0, Lcom/android/incallui/fragment/manager/RTTFragmentManager;->mIsShowing:Z

    iget-object v0, p0, Lcom/android/incallui/fragment/manager/RTTFragmentManager;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    invoke-virtual {v0}, Lcom/android/incallui/InCallActivity;->updateNavigationBarFlag()V

    return-void
.end method

.method public updateFragment()V
    .locals 3

    iget-object v0, p0, Lcom/android/incallui/fragment/manager/RTTFragmentManager;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/fragment/manager/RTTFragmentManager;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    invoke-virtual {v0}, Lcom/android/incallui/InCallActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/fragment/manager/RTTFragmentManager;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    invoke-virtual {v0}, Lcom/android/incallui/InCallActivity;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/android/incallui/util/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getState()I

    move-result v1

    const/16 v2, 0xa

    if-eq v1, v2, :cond_2

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getState()I

    move-result v0

    const/16 v1, 0x9

    if-ne v0, v1, :cond_2

    :cond_2
    iget-boolean v0, p0, Lcom/android/incallui/fragment/manager/RTTFragmentManager;->mIsShowing:Z

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/incallui/fragment/manager/RTTFragmentManager;->checkAndSet(Z)Lcom/android/incallui/fragment/RTTFragment;

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/android/incallui/fragment/manager/RTTFragmentManager;->mCurrentFragment:Lcom/android/incallui/fragment/RTTFragment;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/incallui/fragment/manager/RTTFragmentManager;->removeCurrentRTTFragment()V

    goto :goto_0
.end method
