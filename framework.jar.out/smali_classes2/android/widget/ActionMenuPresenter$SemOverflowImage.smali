.class Landroid/widget/ActionMenuPresenter$SemOverflowImage;
.super Landroid/widget/ImageView;
.source "ActionMenuPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/ActionMenuPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SemOverflowImage"
.end annotation


# instance fields
.field private mDefaultBackground:Landroid/graphics/drawable/Drawable;

.field private mShowingButtonBackground:Landroid/graphics/drawable/Drawable;

.field final synthetic this$0:Landroid/widget/ActionMenuPresenter;


# direct methods
.method public constructor <init>(Landroid/widget/ActionMenuPresenter;Landroid/content/Context;)V
    .locals 3

    const/4 v2, 0x1

    iput-object p1, p0, Landroid/widget/ActionMenuPresenter$SemOverflowImage;->this$0:Landroid/widget/ActionMenuPresenter;

    const/4 v0, 0x0

    const v1, 0x10102f6

    invoke-direct {p0, p2, v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-virtual {p0, v2}, Landroid/view/View;->setClickable(Z)V

    invoke-virtual {p0, v2}, Landroid/view/View;->setFocusable(Z)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-virtual {p0, v2}, Landroid/view/View;->setEnabled(Z)V

    invoke-virtual {p0}, Landroid/view/View;->getHoverUIFeatureLevel()I

    move-result v0

    const/4 v1, 0x2

    if-lt v0, v1, :cond_0

    invoke-virtual {p0, v2}, Landroid/view/View;->semSetHoverPopupType(I)V

    invoke-direct {p0}, Landroid/widget/ActionMenuPresenter$SemOverflowImage;->setSemHoverPopupOffset()V

    invoke-virtual {p0, v2}, Landroid/view/View;->setLongClickable(Z)V

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/ActionMenuPresenter$SemOverflowImage;->mDefaultBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10807ec

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/ActionMenuPresenter$SemOverflowImage;->mShowingButtonBackground:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0}, Landroid/widget/ActionMenuPresenter$SemOverflowImage;->changeButtonBackground()V

    return-void
.end method

.method private changeButtonBackground()V
    .locals 5

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "show_button_background"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    instance-of v2, v0, Landroid/graphics/drawable/RippleDrawable;

    if-eqz v2, :cond_1

    iput-object v0, p0, Landroid/widget/ActionMenuPresenter$SemOverflowImage;->mDefaultBackground:Landroid/graphics/drawable/Drawable;

    :goto_1
    if-eqz v1, :cond_2

    iget-object v2, p0, Landroid/widget/ActionMenuPresenter$SemOverflowImage;->mShowingButtonBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :goto_2
    return-void

    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    iget-object v2, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    const v3, 0x10807ec

    invoke-virtual {v2, v3}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Landroid/widget/ActionMenuPresenter$SemOverflowImage;->mShowingButtonBackground:Landroid/graphics/drawable/Drawable;

    goto :goto_1

    :cond_2
    iget-object v2, p0, Landroid/widget/ActionMenuPresenter$SemOverflowImage;->mDefaultBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_2
.end method

.method private setSemHoverPopupOffset()V
    .locals 4

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v3

    sub-int/2addr v2, v3

    div-int/lit8 v0, v2, 0x2

    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Landroid/view/View;->semGetHoverPopup(Z)Lcom/samsung/android/widget/SemHoverPopupWindow;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/samsung/android/widget/SemHoverPopupWindow;->setOffset(II)V

    :cond_0
    return-void
.end method


# virtual methods
.method public jumpDrawablesToCurrentState()V
    .locals 0

    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 10

    const v9, 0x10102f6

    const/4 v8, 0x0

    const/4 v7, 0x0

    const/4 v6, -0x1

    invoke-super {p0, p1}, Landroid/widget/ImageView;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    sget-object v5, Lcom/android/internal/R$styleable;->View:[I

    invoke-virtual {v4, v8, v5, v9, v7}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    const/16 v4, 0x25

    invoke-virtual {v0, v4, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    invoke-virtual {p0, v4}, Landroid/view/View;->setMinimumHeight(I)V

    const/16 v4, 0x2c

    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {p0, v4}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    sget-object v5, Lcom/android/internal/R$styleable;->ImageView:[I

    invoke-virtual {v4, v8, v5, v9, v7}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v1

    invoke-virtual {v1, v7, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    if-eq v3, v6, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {p0, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    invoke-direct {p0}, Landroid/widget/ActionMenuPresenter$SemOverflowImage;->setSemHoverPopupOffset()V

    invoke-direct {p0}, Landroid/widget/ActionMenuPresenter$SemOverflowImage;->changeButtonBackground()V

    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/widget/ImageView;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    const-string/jumbo v0, "android.widget.Button"

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setCanOpenPopup(Z)V

    return-void
.end method

.method public performClick()Z
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x1

    invoke-super {p0}, Landroid/widget/ImageView;->performClick()Z

    move-result v1

    if-eqz v1, :cond_0

    return v2

    :cond_0
    invoke-virtual {p0, v3}, Landroid/view/View;->playSoundEffect(I)V

    iget-object v1, p0, Landroid/widget/ActionMenuPresenter$SemOverflowImage;->this$0:Landroid/widget/ActionMenuPresenter;

    invoke-virtual {v1}, Landroid/widget/ActionMenuPresenter;->showOverflowMenu()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->isHovered()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0, v2, v3}, Landroid/view/View;->semGetHoverPopup(IZ)Lcom/samsung/android/widget/SemHoverPopupWindow;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/samsung/android/widget/SemHoverPopupWindow;->dismiss()V

    :cond_1
    return v2
.end method

.method public performLongClick()Z
    .locals 29

    invoke-super/range {p0 .. p0}, Landroid/widget/ImageView;->performLongClick()Z

    move-result v26

    if-eqz v26, :cond_0

    const/16 v26, 0x1

    return v26

    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    const/16 v26, 0x2

    move/from16 v0, v26

    new-array v0, v0, [I

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    move-result v22

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHeight()I

    move-result v10

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingStart()I

    move-result v14

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingEnd()I

    move-result v13

    invoke-static {}, Landroid/view/ViewRootImpl;->isDesktopmode()Z

    move-result v11

    if-eqz v11, :cond_5

    const/16 v26, 0x2

    move/from16 v0, v26

    new-array v0, v0, [I

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/view/View;->getLocationInWindow([I)V

    new-instance v8, Landroid/graphics/Rect;

    invoke-direct {v8}, Landroid/graphics/Rect;-><init>()V

    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/ActionMenuPresenter$SemOverflowImage;->this$0:Landroid/widget/ActionMenuPresenter;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Landroid/widget/ActionMenuPresenter;->-get4(Landroid/widget/ActionMenuPresenter;)Lcom/android/internal/view/menu/MenuView;

    move-result-object v26

    if-eqz v26, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/ActionMenuPresenter$SemOverflowImage;->this$0:Landroid/widget/ActionMenuPresenter;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Landroid/widget/ActionMenuPresenter;->-get4(Landroid/widget/ActionMenuPresenter;)Lcom/android/internal/view/menu/MenuView;

    move-result-object v26

    check-cast v26, Landroid/view/View;

    invoke-virtual/range {v26 .. v26}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v26

    check-cast v26, Landroid/view/View;

    move-object/from16 v21, v26

    :goto_0
    move-object/from16 v0, v21

    instance-of v0, v0, Landroid/widget/Toolbar;

    move/from16 v26, v0

    if-eqz v26, :cond_1

    invoke-virtual/range {v21 .. v21}, Landroid/view/View;->getWidth()I

    move-result v26

    iget v0, v8, Landroid/graphics/Rect;->right:I

    move/from16 v27, v0

    iget v0, v8, Landroid/graphics/Rect;->left:I

    move/from16 v28, v0

    sub-int v27, v27, v28

    move/from16 v0, v26

    move/from16 v1, v27

    if-ge v0, v1, :cond_1

    const/16 v26, 0x0

    aget v26, v19, v26

    const/16 v27, 0x0

    aget v27, v23, v27

    sub-int v26, v26, v27

    iget v0, v8, Landroid/graphics/Rect;->left:I

    move/from16 v27, v0

    sub-int v6, v26, v27

    :cond_1
    const/16 v26, 0x1

    aget v26, v23, v26

    add-int v25, v26, v10

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getLayoutDirection()I

    move-result v26

    if-nez v26, :cond_4

    iget v0, v8, Landroid/graphics/Rect;->right:I

    move/from16 v26, v0

    iget v0, v8, Landroid/graphics/Rect;->left:I

    move/from16 v27, v0

    sub-int v26, v26, v27

    const/16 v27, 0x0

    aget v27, v23, v27

    add-int v27, v27, v22

    sub-int v26, v26, v27

    sub-int v27, v22, v14

    sub-int v27, v27, v13

    div-int/lit8 v27, v27, 0x2

    add-int v26, v26, v27

    add-int v26, v26, v13

    sub-int v24, v26, v6

    :cond_2
    :goto_1
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v26

    const/16 v27, 0x0

    move-object/from16 v0, v26

    move/from16 v1, v27

    invoke-static {v4, v0, v1}, Landroid/widget/Toast;->twMakeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    const v26, 0x800035

    move/from16 v0, v26

    move/from16 v1, v24

    move/from16 v2, v25

    invoke-virtual {v3, v0, v1, v2}, Landroid/widget/Toast;->setGravity(III)V

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    const/16 v26, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/view/View;->performHapticFeedback(I)Z

    const/16 v26, 0x1

    return v26

    :cond_3
    const/16 v21, 0x0

    goto/16 :goto_0

    :cond_4
    const/16 v26, 0x0

    aget v26, v23, v26

    add-int v26, v26, v22

    sub-int v27, v22, v14

    sub-int v27, v27, v13

    div-int/lit8 v27, v27, 0x2

    sub-int v26, v26, v27

    sub-int v24, v26, v14

    goto :goto_1

    :cond_5
    const-string/jumbo v26, "window"

    move-object/from16 v0, v26

    invoke-virtual {v4, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Landroid/view/WindowManager;

    invoke-interface/range {v26 .. v26}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v7

    new-instance v16, Landroid/util/DisplayMetrics;

    invoke-direct/range {v16 .. v16}, Landroid/util/DisplayMetrics;-><init>()V

    move-object/from16 v0, v16

    invoke-virtual {v7, v0}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    move-object/from16 v0, v16

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    move/from16 v17, v0

    const v26, 0x1050019

    move-object/from16 v0, v18

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v20

    const/16 v26, 0x0

    aget v26, v19, v26

    add-int v26, v26, v22

    sub-int v26, v17, v26

    sub-int v27, v22, v14

    sub-int v27, v27, v13

    div-int/lit8 v27, v27, 0x2

    add-int v26, v26, v27

    add-int v24, v26, v13

    const/16 v26, 0x1

    aget v26, v19, v26

    add-int v26, v26, v10

    sub-int v25, v26, v20

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getLayoutDirection()I

    move-result v26

    if-nez v26, :cond_6

    const v26, 0x112006b

    move-object/from16 v0, v18

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-virtual/range {v18 .. v18}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v26

    move-object/from16 v0, v26

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    move/from16 v26, v0

    const/16 v27, 0x2

    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_2

    const v26, 0x105001a

    move-object/from16 v0, v18

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v12

    invoke-virtual/range {v18 .. v18}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v26

    move-object/from16 v0, v26

    iget v5, v0, Landroid/util/DisplayMetrics;->density:F

    move-object/from16 v0, v16

    iget v15, v0, Landroid/util/DisplayMetrics;->density:F

    div-float v26, v12, v5

    mul-float v26, v26, v15

    move/from16 v0, v26

    float-to-int v0, v0

    move/from16 v26, v0

    sub-int v24, v24, v26

    goto/16 :goto_1

    :cond_6
    const/16 v26, 0x0

    aget v26, v19, v26

    add-int v26, v26, v22

    sub-int v27, v22, v14

    sub-int v27, v27, v13

    div-int/lit8 v27, v27, 0x2

    sub-int v26, v26, v27

    sub-int v24, v26, v14

    goto/16 :goto_1
.end method

.method protected setFrame(IIII)Z
    .locals 9

    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/ImageView;->setFrame(IIII)Z

    move-result v1

    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v2, :cond_0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v6

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v4

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v7

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v8

    sub-int v5, v7, v8

    div-int/lit8 v3, v5, 0x2

    add-int v7, v3, v6

    const/4 v8, 0x0

    invoke-virtual {v0, v3, v8, v7, v4}, Landroid/graphics/drawable/Drawable;->setHotspotBounds(IIII)V

    :cond_0
    invoke-direct {p0}, Landroid/widget/ActionMenuPresenter$SemOverflowImage;->setSemHoverPopupOffset()V

    return v1
.end method
