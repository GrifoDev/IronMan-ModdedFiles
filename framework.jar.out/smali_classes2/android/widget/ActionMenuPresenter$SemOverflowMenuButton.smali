.class public Landroid/widget/ActionMenuPresenter$SemOverflowMenuButton;
.super Landroid/widget/FrameLayout;
.source "ActionMenuPresenter.java"

# interfaces
.implements Landroid/widget/ActionMenuView$ActionMenuChildView;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/ActionMenuPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SemOverflowMenuButton"
.end annotation


# static fields
.field private static final BADGE_LIMIT_NUMBER:I = 0x63


# instance fields
.field private mBadgeAdditionalWidth:F

.field private mBadgeDefaultWidth:F

.field private mBadgeView:Landroid/widget/TextView;

.field final synthetic this$0:Landroid/widget/ActionMenuPresenter;


# direct methods
.method public constructor <init>(Landroid/widget/ActionMenuPresenter;Landroid/content/Context;)V
    .locals 4

    const/4 v3, -0x2

    iput-object p1, p0, Landroid/widget/ActionMenuPresenter$SemOverflowMenuButton;->this$0:Landroid/widget/ActionMenuPresenter;

    invoke-direct {p0, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    invoke-static {p1}, Landroid/widget/ActionMenuPresenter;->-get10(Landroid/widget/ActionMenuPresenter;)Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v1, Landroid/widget/ActionMenuPresenter$SemOverflowText;

    invoke-direct {v1, p1, p2}, Landroid/widget/ActionMenuPresenter$SemOverflowText;-><init>(Landroid/widget/ActionMenuPresenter;Landroid/content/Context;)V

    :goto_0
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v2, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const-string/jumbo v2, "layout_inflater"

    invoke-virtual {p2, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    const v2, 0x10900f6

    const/4 v3, 0x0

    invoke-virtual {v0, v2, p0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Landroid/widget/ActionMenuPresenter$SemOverflowMenuButton;->mBadgeView:Landroid/widget/TextView;

    iget-object v2, p0, Landroid/widget/ActionMenuPresenter$SemOverflowMenuButton;->mBadgeView:Landroid/widget/TextView;

    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x105031a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    int-to-float v2, v2

    iput v2, p0, Landroid/widget/ActionMenuPresenter$SemOverflowMenuButton;->mBadgeAdditionalWidth:F

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x1050319

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    iput v2, p0, Landroid/widget/ActionMenuPresenter$SemOverflowMenuButton;->mBadgeDefaultWidth:F

    return-void

    :cond_0
    new-instance v1, Landroid/widget/ActionMenuPresenter$SemOverflowImage;

    invoke-direct {v1, p1, p2}, Landroid/widget/ActionMenuPresenter$SemOverflowImage;-><init>(Landroid/widget/ActionMenuPresenter;Landroid/content/Context;)V

    goto :goto_0
.end method


# virtual methods
.method public needsDividerAfter()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public needsDividerBefore()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 5

    const v4, 0x10501fe

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget-object v1, p0, Landroid/widget/ActionMenuPresenter$SemOverflowMenuButton;->mBadgeView:Landroid/widget/TextView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/widget/ActionMenuPresenter$SemOverflowMenuButton;->mBadgeView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Landroid/widget/ActionMenuPresenter$SemOverflowMenuButton;->mBadgeView:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x10501ff

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    int-to-float v2, v2

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1050319

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    iput v1, p0, Landroid/widget/ActionMenuPresenter$SemOverflowMenuButton;->mBadgeDefaultWidth:F

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x105031a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, Landroid/widget/ActionMenuPresenter$SemOverflowMenuButton;->mBadgeAdditionalWidth:F

    iget-object v1, p0, Landroid/widget/ActionMenuPresenter$SemOverflowMenuButton;->mBadgeView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v1, p0, Landroid/widget/ActionMenuPresenter$SemOverflowMenuButton;->mBadgeDefaultWidth:F

    iget-object v2, p0, Landroid/widget/ActionMenuPresenter$SemOverflowMenuButton;->mBadgeView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    int-to-float v2, v2

    iget v3, p0, Landroid/widget/ActionMenuPresenter$SemOverflowMenuButton;->mBadgeAdditionalWidth:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10501fc

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {p0}, Landroid/view/View;->getLayoutDirection()I

    move-result v1

    const/4 v2, 0x1

    if-ne v2, v1, :cond_2

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    :goto_1
    iget-object v1, p0, Landroid/widget/ActionMenuPresenter$SemOverflowMenuButton;->mBadgeView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    goto :goto_1
.end method

.method setBadgeNumber(I)V
    .locals 7

    const/4 v6, 0x0

    if-lez p1, :cond_1

    const/16 v3, 0x63

    if-le p1, v3, :cond_0

    const/16 v0, 0x63

    :goto_0
    iget-object v3, p0, Landroid/widget/ActionMenuPresenter$SemOverflowMenuButton;->this$0:Landroid/widget/ActionMenuPresenter;

    invoke-static {v3}, Landroid/widget/ActionMenuPresenter;->-get5(Landroid/widget/ActionMenuPresenter;)Ljava/text/NumberFormat;

    move-result-object v3

    int-to-long v4, v0

    invoke-virtual {v3, v4, v5}, Ljava/text/NumberFormat;->format(J)Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Landroid/widget/ActionMenuPresenter$SemOverflowMenuButton;->mBadgeView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    iget v3, p0, Landroid/widget/ActionMenuPresenter$SemOverflowMenuButton;->mBadgeDefaultWidth:F

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    int-to-float v4, v4

    iget v5, p0, Landroid/widget/ActionMenuPresenter$SemOverflowMenuButton;->mBadgeAdditionalWidth:F

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    float-to-int v3, v3

    iput v3, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget-object v3, p0, Landroid/widget/ActionMenuPresenter$SemOverflowMenuButton;->mBadgeView:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v3, p0, Landroid/widget/ActionMenuPresenter$SemOverflowMenuButton;->mBadgeView:Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v3, p0, Landroid/widget/ActionMenuPresenter$SemOverflowMenuButton;->mBadgeView:Landroid/widget/TextView;

    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    :goto_1
    return-void

    :cond_0
    move v0, p1

    goto :goto_0

    :cond_1
    iget-object v3, p0, Landroid/widget/ActionMenuPresenter$SemOverflowMenuButton;->mBadgeView:Landroid/widget/TextView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v3, p0, Landroid/widget/ActionMenuPresenter$SemOverflowMenuButton;->mBadgeView:Landroid/widget/TextView;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1
.end method
