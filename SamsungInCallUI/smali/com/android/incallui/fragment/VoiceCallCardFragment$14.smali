.class Lcom/android/incallui/fragment/VoiceCallCardFragment$14;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/incallui/fragment/VoiceCallCardFragment;->setCallCardPriority(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/fragment/VoiceCallCardFragment;

.field final synthetic val$observer:Landroid/view/ViewTreeObserver;

.field final synthetic val$type:I


# direct methods
.method constructor <init>(Lcom/android/incallui/fragment/VoiceCallCardFragment;ILandroid/view/ViewTreeObserver;)V
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment$14;->this$0:Lcom/android/incallui/fragment/VoiceCallCardFragment;

    iput p2, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment$14;->val$type:I

    iput-object p3, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment$14;->val$observer:Landroid/view/ViewTreeObserver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 26

    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/incallui/fragment/VoiceCallCardFragment$14;->val$type:I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/incallui/fragment/VoiceCallCardFragment$14;->val$observer:Landroid/view/ViewTreeObserver;

    invoke-virtual {v2}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/incallui/fragment/VoiceCallCardFragment$14;->this$0:Lcom/android/incallui/fragment/VoiceCallCardFragment;

    invoke-virtual {v2}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->isAdded()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Lcom/android/incallui/util/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v16

    if-eqz v16, :cond_0

    invoke-virtual/range {v16 .. v16}, Lcom/android/incallui/Call;->getState()I

    move-result v17

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/incallui/fragment/VoiceCallCardFragment$14;->val$observer:Landroid/view/ViewTreeObserver;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    const-string v2, "setCallCardPriority..."

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/incallui/fragment/VoiceCallCardFragment$14;->this$0:Lcom/android/incallui/fragment/VoiceCallCardFragment;

    iget-object v2, v2, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mCallStateContainer:Landroid/view/View;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/View;->measure(II)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/incallui/fragment/VoiceCallCardFragment$14;->this$0:Lcom/android/incallui/fragment/VoiceCallCardFragment;

    iget-object v2, v2, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mCallStateContainer:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v18

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/incallui/fragment/VoiceCallCardFragment$14;->this$0:Lcom/android/incallui/fragment/VoiceCallCardFragment;

    iget-object v2, v2, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mPrimaryNameLayout:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getHeight()I

    move-result v19

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/incallui/fragment/VoiceCallCardFragment$14;->this$0:Lcom/android/incallui/fragment/VoiceCallCardFragment;

    iget-object v2, v2, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mCallNumberAndLabel:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v20

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/incallui/fragment/VoiceCallCardFragment$14;->this$0:Lcom/android/incallui/fragment/VoiceCallCardFragment;

    iget-object v2, v2, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mThirdPriorityInfoLayout:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v21

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/incallui/fragment/VoiceCallCardFragment$14;->this$0:Lcom/android/incallui/fragment/VoiceCallCardFragment;

    iget-object v2, v2, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mForthPriorityInfoLayout:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v22

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/incallui/fragment/VoiceCallCardFragment$14;->this$0:Lcom/android/incallui/fragment/VoiceCallCardFragment;

    iget-object v2, v2, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mPhotoContainer:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-nez v2, :cond_11

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/incallui/fragment/VoiceCallCardFragment$14;->this$0:Lcom/android/incallui/fragment/VoiceCallCardFragment;

    iget-object v2, v2, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mPhotoContainer:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    move v3, v2

    :goto_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/incallui/fragment/VoiceCallCardFragment$14;->this$0:Lcom/android/incallui/fragment/VoiceCallCardFragment;

    invoke-virtual {v2}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f0a02bb

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v2, v4

    float-to-int v0, v2

    move/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/incallui/fragment/VoiceCallCardFragment$14;->this$0:Lcom/android/incallui/fragment/VoiceCallCardFragment;

    iget-object v2, v2, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mAgifPhotoContainer:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v24

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/incallui/fragment/VoiceCallCardFragment$14;->this$0:Lcom/android/incallui/fragment/VoiceCallCardFragment;

    iget-object v4, v4, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mCallerInfoView:Lcom/android/incallui/fragment/view/CallCardCallerInfoView;

    if-eqz v4, :cond_27

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/incallui/fragment/VoiceCallCardFragment$14;->this$0:Lcom/android/incallui/fragment/VoiceCallCardFragment;

    iget-object v2, v2, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mCallerInfoView:Lcom/android/incallui/fragment/view/CallCardCallerInfoView;

    invoke-virtual {v2}, Lcom/android/incallui/fragment/view/CallCardCallerInfoView;->getERIHeight()I

    move-result v2

    move v4, v2

    :goto_2
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/incallui/fragment/VoiceCallCardFragment$14;->this$0:Lcom/android/incallui/fragment/VoiceCallCardFragment;

    iget-object v2, v2, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mTwoPhoneView:Lcom/android/incallui/fragment/view/CallCardTwoPhoneView;

    if-eqz v2, :cond_12

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/incallui/fragment/VoiceCallCardFragment$14;->this$0:Lcom/android/incallui/fragment/VoiceCallCardFragment;

    iget-object v2, v2, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mTwoPhoneView:Lcom/android/incallui/fragment/view/CallCardTwoPhoneView;

    invoke-virtual {v2}, Lcom/android/incallui/fragment/view/CallCardTwoPhoneView;->isTwoPhoneTextVisible()Z

    move-result v2

    if-eqz v2, :cond_12

    const/4 v2, 0x1

    move v13, v2

    :goto_3
    const-wide/16 v6, 0x0

    const/16 v2, 0x8

    move/from16 v0, v17

    if-eq v0, v2, :cond_2

    const/16 v2, 0x9

    move/from16 v0, v17

    if-eq v0, v2, :cond_2

    const/16 v2, 0xa

    move/from16 v0, v17

    if-ne v0, v2, :cond_3

    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/incallui/fragment/VoiceCallCardFragment$14;->this$0:Lcom/android/incallui/fragment/VoiceCallCardFragment;

    invoke-virtual {v2}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v6, 0x7f0a0054

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-double v6, v2

    const/16 v2, 0x8

    move/from16 v0, v17

    if-ne v0, v2, :cond_13

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/incallui/fragment/VoiceCallCardFragment$14;->this$0:Lcom/android/incallui/fragment/VoiceCallCardFragment;

    invoke-virtual {v2}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v8, 0x7f0a0055

    invoke-virtual {v2, v8}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-double v8, v2

    add-double/2addr v6, v8

    :cond_3
    :goto_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/incallui/fragment/VoiceCallCardFragment$14;->this$0:Lcom/android/incallui/fragment/VoiceCallCardFragment;

    iget-object v2, v2, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mPrimaryCallInfoBannerContainer:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout$LayoutParams;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/incallui/fragment/VoiceCallCardFragment$14;->this$0:Lcom/android/incallui/fragment/VoiceCallCardFragment;

    iget v8, v8, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mDisplayHeight:I

    int-to-float v8, v8

    iget v2, v2, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    mul-float/2addr v2, v8

    float-to-double v8, v2

    const-wide v10, 0x3f847ae147ae147bL    # 0.01

    mul-double/2addr v8, v10

    invoke-virtual/range {v16 .. v16}, Lcom/android/incallui/Call;->getState()I

    move-result v2

    const/4 v10, 0x4

    if-ne v2, v10, :cond_4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/incallui/fragment/VoiceCallCardFragment$14;->this$0:Lcom/android/incallui/fragment/VoiceCallCardFragment;

    iget-object v2, v2, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mPrimaryCallInfo:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v2

    int-to-float v2, v2

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/incallui/fragment/VoiceCallCardFragment$14;->this$0:Lcom/android/incallui/fragment/VoiceCallCardFragment;

    invoke-virtual {v8}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0a0148

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v8

    sub-float/2addr v2, v8

    float-to-double v8, v2

    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/incallui/fragment/VoiceCallCardFragment$14;->this$0:Lcom/android/incallui/fragment/VoiceCallCardFragment;

    invoke-virtual {v2}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v10, 0x7f0a0221

    invoke-virtual {v2, v10}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-double v10, v2

    invoke-static {}, Lcom/android/incallui/util/ScreenControlUtils;->isSplitMode()Z

    move-result v2

    if-eqz v2, :cond_26

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/incallui/fragment/VoiceCallCardFragment$14;->this$0:Lcom/android/incallui/fragment/VoiceCallCardFragment;

    iget-object v2, v2, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mChnFeatureView:Lcom/android/incallui/fragment/view/CallCardChnFeatureView;

    if-eqz v2, :cond_14

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/incallui/fragment/VoiceCallCardFragment$14;->this$0:Lcom/android/incallui/fragment/VoiceCallCardFragment;

    iget-object v2, v2, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mChnFeatureView:Lcom/android/incallui/fragment/view/CallCardChnFeatureView;

    invoke-virtual {v2}, Lcom/android/incallui/fragment/view/CallCardChnFeatureView;->isElapsedTimeCTCVisible()Z

    move-result v2

    if-eqz v2, :cond_14

    invoke-static {}, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager;->getInstance()Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager;

    move-result-object v2

    if-eqz v2, :cond_14

    invoke-static {}, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager;->getInstance()Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager;->isRecording()Z

    move-result v2

    if-eqz v2, :cond_14

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/incallui/fragment/VoiceCallCardFragment$14;->this$0:Lcom/android/incallui/fragment/VoiceCallCardFragment;

    invoke-virtual {v2}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v5, 0x7f0a0490

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    mul-int/lit8 v2, v2, 0x2

    int-to-double v10, v2

    const/4 v2, 0x1

    :goto_5
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/incallui/fragment/VoiceCallCardFragment$14;->this$0:Lcom/android/incallui/fragment/VoiceCallCardFragment;

    invoke-virtual {v5}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v14, 0x7f0a0148

    invoke-virtual {v5, v14}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    float-to-double v14, v5

    const/4 v5, 0x4

    move/from16 v0, v17

    if-eq v0, v5, :cond_5

    const/4 v5, 0x6

    move/from16 v0, v17

    if-ne v0, v5, :cond_18

    :cond_5
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/incallui/fragment/VoiceCallCardFragment$14;->this$0:Lcom/android/incallui/fragment/VoiceCallCardFragment;

    iget-object v5, v5, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mIndicatorArea:Landroid/view/ViewGroup;

    if-eqz v5, :cond_18

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/incallui/fragment/VoiceCallCardFragment$14;->this$0:Lcom/android/incallui/fragment/VoiceCallCardFragment;

    iget-object v5, v5, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mIndicatorArea:Landroid/view/ViewGroup;

    invoke-virtual {v5}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v5

    const/16 v25, 0x8

    move/from16 v0, v25

    if-ne v5, v0, :cond_18

    const-wide/16 v14, 0x0

    :cond_6
    :goto_6
    add-int v5, v18, v19

    add-int v5, v5, v20

    add-int v5, v5, v21

    add-int v5, v5, v22

    int-to-double v0, v5

    move-wide/from16 v18, v0

    add-double v10, v10, v18

    add-double/2addr v10, v14

    int-to-double v4, v4

    add-double/2addr v4, v10

    int-to-double v10, v3

    add-double/2addr v4, v10

    sub-double v4, v8, v4

    const/16 v3, 0x8

    move/from16 v0, v17

    if-eq v0, v3, :cond_7

    const/16 v3, 0x9

    move/from16 v0, v17

    if-eq v0, v3, :cond_7

    const/16 v3, 0xa

    move/from16 v0, v17

    if-eq v0, v3, :cond_7

    add-double/2addr v4, v6

    :cond_7
    invoke-virtual/range {v16 .. v16}, Lcom/android/incallui/Call;->getState()I

    move-result v3

    const/4 v8, 0x4

    if-eq v3, v8, :cond_8

    invoke-static {}, Lcom/android/incallui/UiAdapter;->getInstance()Lcom/android/incallui/UiAdapter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/incallui/UiAdapter;->getAgifUi()Lcom/android/incallui/AgifPresenter$AgifUi;

    move-result-object v3

    if-eqz v3, :cond_8

    invoke-static {}, Lcom/android/incallui/UiAdapter;->getInstance()Lcom/android/incallui/UiAdapter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/incallui/UiAdapter;->getAgifUi()Lcom/android/incallui/AgifPresenter$AgifUi;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/incallui/AgifPresenter$AgifUi;->isShowGifButton()Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-static {}, Lcom/android/incallui/UiAdapter;->getInstance()Lcom/android/incallui/UiAdapter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/incallui/UiAdapter;->getAgifUi()Lcom/android/incallui/AgifPresenter$AgifUi;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/incallui/AgifPresenter$AgifUi;->isShowAgifContainer()Z

    move-result v3

    if-eqz v3, :cond_8

    move/from16 v0, v23

    int-to-double v8, v0

    sub-double/2addr v4, v8

    :cond_8
    invoke-virtual/range {v16 .. v16}, Lcom/android/incallui/Call;->getState()I

    move-result v3

    const/4 v8, 0x4

    if-ne v3, v8, :cond_9

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/incallui/fragment/VoiceCallCardFragment$14;->this$0:Lcom/android/incallui/fragment/VoiceCallCardFragment;

    invoke-virtual {v3}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->isDisplayingAgif()Z

    move-result v3

    if-eqz v3, :cond_9

    move/from16 v0, v24

    int-to-double v8, v0

    sub-double/2addr v4, v8

    :cond_9
    const-string v3, "VoiceCallCardFragment"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, " remainArea "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v3, v8}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    cmpg-double v3, v4, v6

    if-gtz v3, :cond_1f

    if-eqz v22, :cond_a

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/incallui/fragment/VoiceCallCardFragment$14;->this$0:Lcom/android/incallui/fragment/VoiceCallCardFragment;

    iget-object v3, v3, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mForthPriorityInfoLayout:Landroid/view/View;

    const/16 v8, 0x8

    invoke-virtual {v3, v8}, Landroid/view/View;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/incallui/fragment/VoiceCallCardFragment$14;->this$0:Lcom/android/incallui/fragment/VoiceCallCardFragment;

    iget-object v3, v3, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mThirdPriorityInfoLayout:Landroid/view/View;

    const/4 v8, 0x0

    invoke-virtual {v3, v8}, Landroid/view/View;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/incallui/fragment/VoiceCallCardFragment$14;->this$0:Lcom/android/incallui/fragment/VoiceCallCardFragment;

    iget-object v3, v3, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mCallNumberAndLabel:Landroid/view/View;

    const/4 v8, 0x0

    invoke-virtual {v3, v8}, Landroid/view/View;->setVisibility(I)V

    move/from16 v0, v22

    int-to-double v8, v0

    add-double/2addr v4, v8

    const-string v3, "VoiceCallCardFragment"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "4th line is gone "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v3, v8}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_a
    cmpg-double v3, v4, v6

    if-gtz v3, :cond_b

    if-eqz v21, :cond_b

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/incallui/fragment/VoiceCallCardFragment$14;->this$0:Lcom/android/incallui/fragment/VoiceCallCardFragment;

    iget-object v3, v3, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mThirdPriorityInfoLayout:Landroid/view/View;

    const/16 v8, 0x8

    invoke-virtual {v3, v8}, Landroid/view/View;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/incallui/fragment/VoiceCallCardFragment$14;->this$0:Lcom/android/incallui/fragment/VoiceCallCardFragment;

    iget-object v3, v3, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mCallNumberAndLabel:Landroid/view/View;

    const/4 v8, 0x0

    invoke-virtual {v3, v8}, Landroid/view/View;->setVisibility(I)V

    move/from16 v0, v21

    int-to-double v8, v0

    add-double/2addr v4, v8

    const-string v3, "VoiceCallCardFragment"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "3rd line is gone "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v3, v8}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_b
    cmpg-double v3, v4, v6

    if-gtz v3, :cond_25

    if-eqz v2, :cond_1a

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/incallui/fragment/VoiceCallCardFragment$14;->this$0:Lcom/android/incallui/fragment/VoiceCallCardFragment;

    iget-object v8, v3, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mCallNumberAndLabel:Landroid/view/View;

    if-eqz v13, :cond_19

    const/16 v3, 0x8

    :goto_7
    invoke-virtual {v8, v3}, Landroid/view/View;->setVisibility(I)V

    move/from16 v0, v20

    int-to-double v8, v0

    add-double/2addr v8, v4

    add-double/2addr v4, v8

    :cond_c
    :goto_8
    const-wide/16 v8, 0x0

    cmpg-double v3, v4, v8

    if-gtz v3, :cond_d

    invoke-static {}, Lcom/android/incallui/util/DesktopModeManager;->getInstance()Lcom/android/incallui/util/DesktopModeManager;

    invoke-static {}, Lcom/android/incallui/util/DesktopModeManager;->isDesktopMode()Z

    move-result v3

    if-nez v3, :cond_e

    :cond_d
    if-eqz v2, :cond_1e

    cmpg-double v3, v4, v6

    if-gez v3, :cond_1e

    :cond_e
    const/16 v3, 0x9

    move/from16 v0, v17

    if-eq v0, v3, :cond_f

    const/16 v3, 0xa

    move/from16 v0, v17

    if-ne v0, v3, :cond_1d

    :cond_f
    const/4 v3, 0x4

    :goto_9
    const-wide/16 v6, 0x0

    cmpg-double v6, v4, v6

    if-gtz v6, :cond_10

    invoke-static {}, Lcom/android/incallui/util/DesktopModeManager;->getInstance()Lcom/android/incallui/util/DesktopModeManager;

    invoke-static {}, Lcom/android/incallui/util/DesktopModeManager;->isDesktopMode()Z

    move-result v6

    if-eqz v6, :cond_10

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/incallui/fragment/VoiceCallCardFragment$14;->this$0:Lcom/android/incallui/fragment/VoiceCallCardFragment;

    iget-object v6, v6, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mForthPriorityInfoLayout:Landroid/view/View;

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Landroid/view/View;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/incallui/fragment/VoiceCallCardFragment$14;->this$0:Lcom/android/incallui/fragment/VoiceCallCardFragment;

    iget-object v6, v6, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mThirdPriorityInfoLayout:Landroid/view/View;

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Landroid/view/View;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/incallui/fragment/VoiceCallCardFragment$14;->this$0:Lcom/android/incallui/fragment/VoiceCallCardFragment;

    iget-object v6, v6, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mCallNumberAndLabel:Landroid/view/View;

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Landroid/view/View;->setVisibility(I)V

    :cond_10
    invoke-static {}, Lcom/android/incallui/util/ScreenControlUtils;->isSplitMode()Z

    move-result v6

    if-eqz v6, :cond_23

    if-eqz v2, :cond_23

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/incallui/fragment/VoiceCallCardFragment$14;->this$0:Lcom/android/incallui/fragment/VoiceCallCardFragment;

    iget-object v2, v2, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mCallNumberAndLabelDummy:Landroid/view/View;

    const/16 v4, 0x8

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    :goto_a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/incallui/fragment/VoiceCallCardFragment$14;->this$0:Lcom/android/incallui/fragment/VoiceCallCardFragment;

    invoke-static {v2, v3}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->access$500(Lcom/android/incallui/fragment/VoiceCallCardFragment;I)V

    const-string v2, "agif_call_service"

    invoke-static {v2}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/incallui/fragment/VoiceCallCardFragment$14;->this$0:Lcom/android/incallui/fragment/VoiceCallCardFragment;

    invoke-static {v2}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->access$600(Lcom/android/incallui/fragment/VoiceCallCardFragment;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/incallui/fragment/VoiceCallCardFragment$14;->this$0:Lcom/android/incallui/fragment/VoiceCallCardFragment;

    invoke-virtual {v2}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/incallui/ContactInfoCache;->getInstance(Landroid/content/Context;)Lcom/android/incallui/ContactInfoCache;

    move-result-object v2

    invoke-virtual/range {v16 .. v16}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/incallui/ContactInfoCache;->getInfo(Ljava/lang/String;)Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/incallui/fragment/VoiceCallCardFragment$14;->this$0:Lcom/android/incallui/fragment/VoiceCallCardFragment;

    invoke-virtual {v3}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->isDisplayingAgif()Z

    move-result v3

    if-eqz v3, :cond_0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/incallui/fragment/VoiceCallCardFragment$14;->this$0:Lcom/android/incallui/fragment/VoiceCallCardFragment;

    move/from16 v0, v17

    move-object/from16 v1, v16

    invoke-static {v3, v0, v1, v2}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->access$700(Lcom/android/incallui/fragment/VoiceCallCardFragment;ILcom/android/incallui/Call;Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;)V

    goto/16 :goto_0

    :cond_11
    const/4 v2, 0x0

    move v3, v2

    goto/16 :goto_1

    :cond_12
    const/4 v2, 0x0

    move v13, v2

    goto/16 :goto_3

    :cond_13
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/incallui/fragment/VoiceCallCardFragment$14;->this$0:Lcom/android/incallui/fragment/VoiceCallCardFragment;

    iget-object v2, v2, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mBelowButtonLayout:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v2, v2, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    int-to-double v8, v2

    add-double/2addr v6, v8

    goto/16 :goto_4

    :cond_14
    invoke-static {}, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager;->getInstance()Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager;

    move-result-object v2

    if-eqz v2, :cond_16

    invoke-static {}, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager;->getInstance()Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager;->isRecording()Z

    move-result v2

    if-nez v2, :cond_15

    invoke-static {}, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager;->getInstance()Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager;->isPaused()Z

    move-result v2

    if-eqz v2, :cond_16

    :cond_15
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/incallui/fragment/VoiceCallCardFragment$14;->this$0:Lcom/android/incallui/fragment/VoiceCallCardFragment;

    invoke-virtual {v2}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v5, 0x7f0a0490

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    int-to-double v10, v2

    const/4 v2, 0x1

    goto/16 :goto_5

    :cond_16
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/incallui/fragment/VoiceCallCardFragment$14;->this$0:Lcom/android/incallui/fragment/VoiceCallCardFragment;

    iget-object v2, v2, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mChnFeatureView:Lcom/android/incallui/fragment/view/CallCardChnFeatureView;

    if-eqz v2, :cond_17

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/incallui/fragment/VoiceCallCardFragment$14;->this$0:Lcom/android/incallui/fragment/VoiceCallCardFragment;

    iget-object v2, v2, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mChnFeatureView:Lcom/android/incallui/fragment/view/CallCardChnFeatureView;

    invoke-virtual {v2}, Lcom/android/incallui/fragment/view/CallCardChnFeatureView;->isElapsedTimeCTCVisible()Z

    move-result v2

    if-eqz v2, :cond_17

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/incallui/fragment/VoiceCallCardFragment$14;->this$0:Lcom/android/incallui/fragment/VoiceCallCardFragment;

    invoke-virtual {v2}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v5, 0x7f0a0490

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    int-to-double v10, v2

    const/4 v2, 0x1

    goto/16 :goto_5

    :cond_17
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/incallui/fragment/VoiceCallCardFragment$14;->this$0:Lcom/android/incallui/fragment/VoiceCallCardFragment;

    iget-object v2, v2, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mCallerInfoView:Lcom/android/incallui/fragment/view/CallCardCallerInfoView;

    if-eqz v2, :cond_26

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/incallui/fragment/VoiceCallCardFragment$14;->this$0:Lcom/android/incallui/fragment/VoiceCallCardFragment;

    iget-object v2, v2, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mCallerInfoView:Lcom/android/incallui/fragment/view/CallCardCallerInfoView;

    invoke-virtual {v2}, Lcom/android/incallui/fragment/view/CallCardCallerInfoView;->isEriInfoTextVisible()Z

    move-result v2

    if-eqz v2, :cond_26

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/incallui/fragment/VoiceCallCardFragment$14;->this$0:Lcom/android/incallui/fragment/VoiceCallCardFragment;

    invoke-virtual {v2}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v5, 0x7f0a0490

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    mul-int/lit8 v2, v2, 0x2

    int-to-double v10, v2

    const/4 v2, 0x1

    goto/16 :goto_5

    :cond_18
    invoke-static {}, Lcom/android/incallui/util/ScreenControlUtils;->isSplitMode()Z

    move-result v5

    if-eqz v5, :cond_6

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/incallui/fragment/VoiceCallCardFragment$14;->this$0:Lcom/android/incallui/fragment/VoiceCallCardFragment;

    invoke-virtual {v5}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v14, 0x7f0a03c5

    invoke-virtual {v5, v14}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    float-to-double v14, v5

    goto/16 :goto_6

    :cond_19
    const/4 v3, 0x4

    goto/16 :goto_7

    :cond_1a
    if-nez v20, :cond_1b

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/incallui/fragment/VoiceCallCardFragment$14;->this$0:Lcom/android/incallui/fragment/VoiceCallCardFragment;

    iget-object v3, v3, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mCallNumberAndLabel:Landroid/view/View;

    const/16 v8, 0x8

    invoke-virtual {v3, v8}, Landroid/view/View;->setVisibility(I)V

    const-string v3, "VoiceCallCardFragment"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "2nd line is gone "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v3, v8}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_8

    :cond_1b
    const-wide/16 v8, 0x0

    cmpl-double v3, v6, v8

    if-eqz v3, :cond_c

    invoke-static {}, Lcom/android/incallui/UiAdapter;->getInstance()Lcom/android/incallui/UiAdapter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/incallui/UiAdapter;->getAgifUi()Lcom/android/incallui/AgifPresenter$AgifUi;

    move-result-object v3

    if-eqz v3, :cond_1c

    invoke-static {}, Lcom/android/incallui/UiAdapter;->getInstance()Lcom/android/incallui/UiAdapter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/incallui/UiAdapter;->getAgifUi()Lcom/android/incallui/AgifPresenter$AgifUi;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/incallui/AgifPresenter$AgifUi;->isShowGifButton()Z

    move-result v3

    if-eqz v3, :cond_1c

    invoke-static {}, Lcom/android/incallui/UiAdapter;->getInstance()Lcom/android/incallui/UiAdapter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/incallui/UiAdapter;->getAgifUi()Lcom/android/incallui/AgifPresenter$AgifUi;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/incallui/AgifPresenter$AgifUi;->isShowAgifContainer()Z

    move-result v3

    if-nez v3, :cond_c

    :cond_1c
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/incallui/fragment/VoiceCallCardFragment$14;->this$0:Lcom/android/incallui/fragment/VoiceCallCardFragment;

    iget-object v3, v3, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mCallNumberAndLabel:Landroid/view/View;

    const/4 v8, 0x4

    invoke-virtual {v3, v8}, Landroid/view/View;->setVisibility(I)V

    move/from16 v0, v20

    int-to-double v8, v0

    add-double/2addr v8, v4

    add-double/2addr v4, v8

    const-string v3, "VoiceCallCardFragment"

    const-string v8, "2nd line is invisible "

    invoke-static {v3, v8}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_8

    :cond_1d
    const/16 v3, 0x8

    move/from16 v0, v17

    if-ne v0, v3, :cond_25

    if-eqz v2, :cond_25

    const/4 v3, 0x4

    goto/16 :goto_9

    :cond_1e
    cmpl-double v3, v4, v6

    if-lez v3, :cond_25

    const/16 v3, 0x8

    move/from16 v0, v17

    if-ne v0, v3, :cond_25

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/incallui/fragment/VoiceCallCardFragment$14;->this$0:Lcom/android/incallui/fragment/VoiceCallCardFragment;

    iget-object v3, v3, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mResumeCallBtn:Landroid/widget/Button;

    if-eqz v3, :cond_25

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/incallui/fragment/VoiceCallCardFragment$14;->this$0:Lcom/android/incallui/fragment/VoiceCallCardFragment;

    iget-object v3, v3, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mResumeCallBtn:Landroid/widget/Button;

    invoke-virtual {v3}, Landroid/widget/Button;->getVisibility()I

    move-result v3

    if-eqz v3, :cond_25

    const/4 v3, 0x1

    goto/16 :goto_9

    :cond_1f
    if-eqz v22, :cond_20

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/incallui/fragment/VoiceCallCardFragment$14;->this$0:Lcom/android/incallui/fragment/VoiceCallCardFragment;

    iget-object v3, v3, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mForthPriorityInfoLayout:Landroid/view/View;

    const/4 v8, 0x0

    invoke-virtual {v3, v8}, Landroid/view/View;->setVisibility(I)V

    :cond_20
    if-eqz v21, :cond_21

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/incallui/fragment/VoiceCallCardFragment$14;->this$0:Lcom/android/incallui/fragment/VoiceCallCardFragment;

    iget-object v3, v3, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mThirdPriorityInfoLayout:Landroid/view/View;

    const/4 v8, 0x0

    invoke-virtual {v3, v8}, Landroid/view/View;->setVisibility(I)V

    :cond_21
    if-eqz v20, :cond_22

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/incallui/fragment/VoiceCallCardFragment$14;->this$0:Lcom/android/incallui/fragment/VoiceCallCardFragment;

    iget-object v3, v3, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mCallNumberAndLabel:Landroid/view/View;

    const/4 v8, 0x0

    invoke-virtual {v3, v8}, Landroid/view/View;->setVisibility(I)V

    :cond_22
    cmpl-double v3, v4, v6

    if-lez v3, :cond_25

    const/16 v3, 0x8

    move/from16 v0, v17

    if-ne v0, v3, :cond_25

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/incallui/fragment/VoiceCallCardFragment$14;->this$0:Lcom/android/incallui/fragment/VoiceCallCardFragment;

    iget-object v3, v3, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mResumeCallBtn:Landroid/widget/Button;

    if-eqz v3, :cond_25

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/incallui/fragment/VoiceCallCardFragment$14;->this$0:Lcom/android/incallui/fragment/VoiceCallCardFragment;

    iget-object v3, v3, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mResumeCallBtn:Landroid/widget/Button;

    invoke-virtual {v3}, Landroid/widget/Button;->getVisibility()I

    move-result v3

    if-eqz v3, :cond_25

    const/4 v3, 0x1

    goto/16 :goto_9

    :cond_23
    invoke-static {}, Lcom/android/incallui/UiAdapter;->getInstance()Lcom/android/incallui/UiAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/UiAdapter;->isInMultiWindowMode()Z

    move-result v2

    if-eqz v2, :cond_24

    sget-boolean v2, Lcom/android/incallui/secrcs/RcsShareUI;->isCrane:Z

    if-nez v2, :cond_24

    if-nez v22, :cond_24

    if-nez v21, :cond_24

    if-nez v20, :cond_24

    const-wide/16 v6, 0x0

    cmpl-double v2, v4, v6

    if-lez v2, :cond_24

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/incallui/fragment/VoiceCallCardFragment$14;->this$0:Lcom/android/incallui/fragment/VoiceCallCardFragment;

    iget-object v2, v2, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mCallNumberAndLabelDummy:Landroid/view/View;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_a

    :cond_24
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/incallui/fragment/VoiceCallCardFragment$14;->this$0:Lcom/android/incallui/fragment/VoiceCallCardFragment;

    iget-object v2, v2, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mCallNumberAndLabelDummy:Landroid/view/View;

    const/16 v4, 0x8

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_a

    :cond_25
    move v3, v12

    goto/16 :goto_9

    :cond_26
    move v2, v5

    goto/16 :goto_5

    :cond_27
    move v4, v2

    goto/16 :goto_2
.end method
