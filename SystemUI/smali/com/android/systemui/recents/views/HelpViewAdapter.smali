.class Lcom/android/systemui/recents/views/HelpViewAdapter;
.super Landroid/support/v4/view/PagerAdapter;
.source "HelpViewPager.java"


# instance fields
.field mContents:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/recents/views/AbstractHelpPopup$HelpContent;",
            ">;"
        }
    .end annotation
.end field

.field mContext:Landroid/content/Context;

.field mHelpPopup:Lcom/android/systemui/recents/views/AbstractHelpPopup;

.field mInflater:Landroid/view/LayoutInflater;

.field mLastDeviceOrientation:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/recents/views/AbstractHelpPopup;I)V
    .locals 1

    invoke-direct {p0}, Landroid/support/v4/view/PagerAdapter;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/recents/views/HelpViewAdapter;->mContents:Ljava/util/ArrayList;

    iput-object p1, p0, Lcom/android/systemui/recents/views/HelpViewAdapter;->mContext:Landroid/content/Context;

    iput p3, p0, Lcom/android/systemui/recents/views/HelpViewAdapter;->mLastDeviceOrientation:I

    const-string/jumbo v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/android/systemui/recents/views/HelpViewAdapter;->mInflater:Landroid/view/LayoutInflater;

    iput-object p2, p0, Lcom/android/systemui/recents/views/HelpViewAdapter;->mHelpPopup:Lcom/android/systemui/recents/views/AbstractHelpPopup;

    return-void
.end method


# virtual methods
.method public destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 6

    move-object v1, p3

    check-cast v1, Landroid/view/View;

    const v2, 0x7f130436

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    check-cast p3, Landroid/view/View;

    invoke-virtual {p1, p3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    const-string/jumbo v1, "HelpViewAdapter"

    const-string/jumbo v2, "destroyItem(%d)\n"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public getCount()I
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/recents/views/HelpViewAdapter;->mContents:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItemPosition(Ljava/lang/Object;)I
    .locals 1

    const/4 v0, -0x2

    return v0
.end method

.method public getPageTitle(I)Ljava/lang/CharSequence;
    .locals 1

    invoke-super {p0, p1}, Landroid/support/v4/view/PagerAdapter;->getPageTitle(I)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 19

    const-string/jumbo v14, "HelpViewAdapter"

    const-string/jumbo v15, "instantiateItem(%d)\n"

    const/16 v16, 0x1

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    const/16 v18, 0x0

    aput-object v17, v16, v18

    invoke-static/range {v15 .. v16}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/recents/views/HelpViewAdapter;->mContext:Landroid/content/Context;

    invoke-static {v14}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v9

    const v14, 0x7f04015f

    const/4 v15, 0x0

    invoke-virtual {v9, v14, v15}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v13

    const v14, 0x7f130434

    invoke-virtual {v13, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup;

    const/4 v10, 0x0

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/systemui/recents/views/HelpViewAdapter;->mLastDeviceOrientation:I

    const/4 v15, 0x2

    if-ne v14, v15, :cond_3

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/recents/views/HelpViewAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x7f0d0455

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v10

    :goto_0
    const-string/jumbo v14, "HelpAdapter"

    const-string/jumbo v15, "instantiateItem() padding=%d, mConfiguration.orientation=%d\n"

    const/16 v16, 0x2

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    const/16 v18, 0x0

    aput-object v17, v16, v18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/recents/views/HelpViewAdapter;->mLastDeviceOrientation:I

    move/from16 v17, v0

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    const/16 v18, 0x1

    aput-object v17, v16, v18

    invoke-static/range {v15 .. v16}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-virtual {v5, v10, v14, v10, v15}, Landroid/view/ViewGroup;->setPadding(IIII)V

    const/4 v14, 0x2

    invoke-virtual {v5, v14}, Landroid/view/ViewGroup;->setAccessibilityLiveRegion(I)V

    const v14, 0x7f130435

    invoke-virtual {v13, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const v14, 0x7f130436

    invoke-virtual {v13, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    const v14, 0x7f130437

    invoke-virtual {v13, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/TextView;

    const v14, 0x7f130438

    invoke-virtual {v13, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/android/systemui/recents/misc/HelpHubTextView;

    const v14, 0x7f130439

    invoke-virtual {v13, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/Button;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/recents/views/HelpViewAdapter;->mContents:Ljava/util/ArrayList;

    move/from16 v0, p2

    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/recents/views/AbstractHelpPopup$HelpContent;

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Lcom/android/systemui/recents/views/AbstractHelpPopup$HelpContent;->isValidContent()Z

    move-result v14

    if-eqz v14, :cond_4

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/recents/views/HelpViewAdapter;->mContext:Landroid/content/Context;

    iget v15, v1, Lcom/android/systemui/recents/views/AbstractHelpPopup$HelpContent;->imageResId:I

    invoke-virtual {v14, v15}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v14

    invoke-virtual {v7, v14}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/recents/views/HelpViewAdapter;->mContext:Landroid/content/Context;

    iget v15, v1, Lcom/android/systemui/recents/views/AbstractHelpPopup$HelpContent;->contentDescResId:I

    invoke-virtual {v14, v15}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v14

    invoke-virtual {v7, v14}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    new-instance v8, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v14, -0x1

    const/4 v15, -0x2

    invoke-direct {v8, v14, v15}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/4 v14, 0x1

    iput v14, v8, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    const/high16 v14, 0x3f800000    # 1.0f

    iput v14, v8, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/systemui/recents/views/HelpViewAdapter;->mLastDeviceOrientation:I

    const/4 v15, 0x2

    if-ne v14, v15, :cond_0

    const/4 v14, -0x2

    iput v14, v8, Landroid/widget/LinearLayout$LayoutParams;->width:I

    :cond_0
    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/recents/views/HelpViewAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x7f0d0452

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v14, -0x1

    invoke-direct {v4, v14, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/systemui/recents/views/HelpViewAdapter;->mLastDeviceOrientation:I

    const/4 v15, 0x2

    if-ne v14, v15, :cond_5

    const/4 v14, 0x0

    iput v14, v4, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    :goto_1
    invoke-virtual {v2, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget v14, v1, Lcom/android/systemui/recents/views/AbstractHelpPopup$HelpContent;->subtitleResId:I

    invoke-virtual {v12, v14}, Landroid/widget/TextView;->setText(I)V

    iget-object v14, v1, Lcom/android/systemui/recents/views/AbstractHelpPopup$HelpContent;->helpHubImageResId:[I

    if-eqz v14, :cond_1

    iget-object v14, v1, Lcom/android/systemui/recents/views/AbstractHelpPopup$HelpContent;->helpHubImageResId:[I

    invoke-virtual {v6, v14}, Lcom/android/systemui/recents/misc/HelpHubTextView;->setIconList([I)V

    :cond_1
    iget v14, v1, Lcom/android/systemui/recents/views/AbstractHelpPopup$HelpContent;->helpHubTextResId:I

    invoke-virtual {v6, v14}, Lcom/android/systemui/recents/misc/HelpHubTextView;->changeText(I)V

    iget v14, v1, Lcom/android/systemui/recents/views/AbstractHelpPopup$HelpContent;->buttonTitleId:I

    const/4 v15, -0x1

    if-eq v14, v15, :cond_2

    sget-boolean v14, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->SAMSUNG_MULTIWINDOW_DYNAMIC_ENABLED:Z

    if-eqz v14, :cond_2

    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSettingHelper()Lcom/android/systemui/recents/model/RecentsSettingHelper;

    move-result-object v14

    invoke-virtual {v14}, Lcom/android/systemui/recents/model/RecentsSettingHelper;->isMultiWindowSettingEnabled()Z

    move-result v14

    if-eqz v14, :cond_2

    const-string/jumbo v14, "com.android.settings"

    invoke-static {v14}, Lcom/android/systemui/recents/model/RecentsPackageMonitor;->isInstalled(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_2

    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSettingHelper()Lcom/android/systemui/recents/model/RecentsSettingHelper;

    move-result-object v14

    invoke-virtual {v14}, Lcom/android/systemui/recents/model/RecentsSettingHelper;->isUPSModeEnabled()Z

    move-result v14

    if-eqz v14, :cond_6

    :cond_2
    const/16 v14, 0x8

    invoke-virtual {v11, v14}, Landroid/widget/Button;->setVisibility(I)V

    :goto_2
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/recents/views/HelpViewAdapter;->mContext:Landroid/content/Context;

    iget v15, v1, Lcom/android/systemui/recents/views/AbstractHelpPopup$HelpContent;->contentDescResId:I

    invoke-virtual {v14, v15}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v14

    invoke-virtual {v5, v14}, Landroid/view/ViewGroup;->setContentDescription(Ljava/lang/CharSequence;)V

    const/4 v14, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v13, v14}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    return-object v13

    :cond_3
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/recents/views/HelpViewAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x7f0d0454

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v10

    goto/16 :goto_0

    :cond_4
    const/4 v14, 0x0

    return-object v14

    :cond_5
    const/high16 v14, 0x3f800000    # 1.0f

    iput v14, v4, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    goto :goto_1

    :cond_6
    const/4 v14, 0x0

    invoke-virtual {v11, v14}, Landroid/widget/Button;->setVisibility(I)V

    iget v14, v1, Lcom/android/systemui/recents/views/AbstractHelpPopup$HelpContent;->buttonTitleId:I

    invoke-virtual {v11, v14}, Landroid/widget/Button;->setText(I)V

    new-instance v14, Lcom/android/systemui/recents/views/HelpViewAdapter$1;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Lcom/android/systemui/recents/views/HelpViewAdapter$1;-><init>(Lcom/android/systemui/recents/views/HelpViewAdapter;)V

    invoke-virtual {v11, v14}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_2
.end method

.method public isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 1

    if-ne p1, p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onConfigurationChanged(I)V
    .locals 0

    iput p1, p0, Lcom/android/systemui/recents/views/HelpViewAdapter;->mLastDeviceOrientation:I

    invoke-virtual {p0}, Lcom/android/systemui/recents/views/HelpViewAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public setContents(Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/recents/views/AbstractHelpPopup$HelpContent;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/systemui/recents/views/HelpViewAdapter;->mContents:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/android/systemui/recents/views/HelpViewAdapter;->mContents:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Lcom/android/systemui/recents/views/HelpViewAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/recents/views/HelpViewAdapter;->mContents:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/HelpViewAdapter;->notifyDataSetChanged()V

    return-void
.end method
