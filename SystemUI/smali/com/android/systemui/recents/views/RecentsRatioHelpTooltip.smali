.class public Lcom/android/systemui/recents/views/RecentsRatioHelpTooltip;
.super Landroid/widget/LinearLayout;
.source "RecentsRatioHelpTooltip.java"


# instance fields
.field private mArrowDirection:Z

.field private mHelpHubText:Lcom/android/systemui/recents/misc/HelpHubTextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/recents/views/RecentsRatioHelpTooltip;->mArrowDirection:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/recents/views/RecentsRatioHelpTooltip;->mArrowDirection:Z

    return-void
.end method


# virtual methods
.method public onFinishInflate()V
    .locals 2

    const v0, 0x7f130438

    invoke-virtual {p0, v0}, Lcom/android/systemui/recents/views/RecentsRatioHelpTooltip;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/recents/misc/HelpHubTextView;

    iput-object v0, p0, Lcom/android/systemui/recents/views/RecentsRatioHelpTooltip;->mHelpHubText:Lcom/android/systemui/recents/misc/HelpHubTextView;

    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsRatioHelpTooltip;->mHelpHubText:Lcom/android/systemui/recents/misc/HelpHubTextView;

    const v1, 0x3f4ccccd    # 0.8f

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/misc/HelpHubTextView;->setCustomScale(F)V

    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsRatioHelpTooltip;->mHelpHubText:Lcom/android/systemui/recents/misc/HelpHubTextView;

    const v1, 0x7f0f06db

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/misc/HelpHubTextView;->changeText(I)V

    return-void
.end method

.method public updateView(Lcom/android/systemui/recents/views/TaskView;Landroid/graphics/Rect;IIZ)V
    .locals 24

    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/recents/views/TaskView;->getAndUpdateScreenRatioState()I

    move-result v21

    if-eqz v21, :cond_0

    return-void

    :cond_0
    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/recents/views/TaskView;->getRatioButtonLocation()[I

    move-result-object v13

    const v21, 0x7f130446

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/views/RecentsRatioHelpTooltip;->findViewById(I)Landroid/view/View;

    move-result-object v19

    check-cast v19, Landroid/widget/FrameLayout;

    const v21, 0x7f13044a

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/views/RecentsRatioHelpTooltip;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/ImageButton;

    const v21, 0x7f13044b

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/views/RecentsRatioHelpTooltip;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/LinearLayout;

    invoke-virtual/range {v19 .. v19}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v10

    check-cast v10, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual/range {v18 .. v18}, Landroid/widget/ImageButton;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    check-cast v9, Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual/range {v17 .. v17}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    check-cast v8, Landroid/widget/FrameLayout$LayoutParams;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/views/RecentsRatioHelpTooltip;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    const v22, 0x7f0d046b

    invoke-virtual/range {v21 .. v22}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/recents/views/TaskView;->getLocationOnScreen()[I

    move-result-object v21

    const/16 v22, 0x0

    aget v21, v21, v22

    add-int v21, v21, v3

    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v22, v0

    sub-int v21, v21, v22

    move/from16 v0, v21

    invoke-virtual {v10, v0}, Landroid/widget/LinearLayout$LayoutParams;->setMarginStart(I)V

    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/recents/views/TaskView;->getLocationOnScreen()[I

    move-result-object v21

    const/16 v22, 0x0

    aget v21, v21, v22

    add-int v21, v21, v3

    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v22, v0

    sub-int v21, v21, v22

    move/from16 v0, v21

    invoke-virtual {v10, v0}, Landroid/widget/LinearLayout$LayoutParams;->setMarginEnd(I)V

    if-eqz p5, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/views/RecentsRatioHelpTooltip;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    const v22, 0x7f0d046d

    invoke-virtual/range {v21 .. v22}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v21

    move/from16 v0, v21

    iput v0, v9, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    const/16 v21, 0x0

    move/from16 v0, v21

    iput v0, v8, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    const/16 v21, 0x0

    move/from16 v0, v21

    iput v0, v8, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    :goto_0
    move-object/from16 v0, v19

    invoke-virtual {v0, v10}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    move-object/from16 v0, v18

    invoke-virtual {v0, v9}, Landroid/widget/ImageButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    move-object/from16 v0, v17

    invoke-virtual {v0, v8}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const v21, 0x7f130447

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/views/RecentsRatioHelpTooltip;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/view/ViewGroup;

    const v21, 0x7f130448

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/views/RecentsRatioHelpTooltip;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/view/ViewGroup;

    const v21, 0x7f130449

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/views/RecentsRatioHelpTooltip;->findViewById(I)Landroid/view/View;

    move-result-object v16

    check-cast v16, Landroid/view/ViewGroup;

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/recents/views/RecentsRatioHelpTooltip;->mArrowDirection:Z

    move/from16 v21, v0

    move/from16 v0, v21

    move/from16 v1, p5

    if-eq v0, v1, :cond_1

    move/from16 v0, p5

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/systemui/recents/views/RecentsRatioHelpTooltip;->mArrowDirection:Z

    if-eqz p5, :cond_3

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/recents/views/RecentsRatioHelpTooltip;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    const v22, 0x7f02049c

    invoke-virtual/range {v21 .. v22}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v15, v0}, Landroid/view/ViewGroup;->setBackground(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/recents/views/RecentsRatioHelpTooltip;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    const v22, 0x7f02049a

    invoke-virtual/range {v21 .. v22}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v14, v0}, Landroid/view/ViewGroup;->setBackground(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/recents/views/RecentsRatioHelpTooltip;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    const v22, 0x7f02049e

    invoke-virtual/range {v21 .. v22}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v21

    move-object/from16 v0, v16

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    :goto_1
    invoke-virtual {v15}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v11

    const/16 v21, 0x0

    aget v21, v13, v21

    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/recents/views/TaskView;->getRatioButtonWidth()I

    move-result v22

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    const/high16 v23, 0x40000000    # 2.0f

    div-float v22, v22, v23

    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/recents/views/TaskView;->getAnimationScale()F

    move-result v23

    mul-float v22, v22, v23

    move/from16 v0, v22

    float-to-int v0, v0

    move/from16 v22, v0

    add-int v21, v21, v22

    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/recents/views/TaskView;->getLocationOnScreen()[I

    move-result-object v22

    const/16 v23, 0x0

    aget v22, v22, v23

    add-int v22, v22, v3

    sub-int v21, v21, v22

    invoke-virtual {v14}, Landroid/view/ViewGroup;->getWidth()I

    move-result v22

    div-int/lit8 v22, v22, 0x2

    sub-int v21, v21, v22

    move/from16 v0, v21

    iput v0, v11, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-virtual {v15, v11}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v21, v0

    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v22, v0

    add-int v12, v21, v22

    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v21, v0

    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v22, v0

    add-int v20, v21, v22

    sub-int v7, p3, v12

    sub-int v4, p4, v20

    const/high16 v21, -0x80000000

    move/from16 v0, v21

    invoke-static {v7, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v21

    const/high16 v22, -0x80000000

    move/from16 v0, v22

    invoke-static {v4, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v22

    move-object/from16 v0, p0

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/recents/views/RecentsRatioHelpTooltip;->measure(II)V

    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v21, v0

    add-int/lit8 v5, v21, 0x0

    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v21, v0

    add-int/lit8 v6, v21, 0x0

    add-int v21, v5, v7

    add-int v22, v6, v4

    move-object/from16 v0, p0

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v5, v6, v1, v2}, Lcom/android/systemui/recents/views/RecentsRatioHelpTooltip;->layout(IIII)V

    return-void

    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/views/RecentsRatioHelpTooltip;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    const v22, 0x7f0d046c

    invoke-virtual/range {v21 .. v22}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/views/RecentsRatioHelpTooltip;->mContext:Landroid/content/Context;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v22

    const v23, 0x7f0d046d

    invoke-virtual/range {v22 .. v23}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v22

    add-int v21, v21, v22

    move/from16 v0, v21

    iput v0, v9, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/views/RecentsRatioHelpTooltip;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    const v22, 0x7f0d046c

    invoke-virtual/range {v21 .. v22}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v21

    move/from16 v0, v21

    iput v0, v8, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/views/RecentsRatioHelpTooltip;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    const v22, 0x7f0d046c

    invoke-virtual/range {v21 .. v22}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v21

    move/from16 v0, v21

    neg-int v0, v0

    move/from16 v21, v0

    move/from16 v0, v21

    iput v0, v8, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    goto/16 :goto_0

    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/recents/views/RecentsRatioHelpTooltip;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    const v22, 0x7f02049d

    invoke-virtual/range {v21 .. v22}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v15, v0}, Landroid/view/ViewGroup;->setBackground(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/recents/views/RecentsRatioHelpTooltip;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    const v22, 0x7f02049b

    invoke-virtual/range {v21 .. v22}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v14, v0}, Landroid/view/ViewGroup;->setBackground(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/recents/views/RecentsRatioHelpTooltip;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    const v22, 0x7f02049f

    invoke-virtual/range {v21 .. v22}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v21

    move-object/from16 v0, v16

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_1
.end method
