.class public Lcom/android/incallui/agif/AgifTabIndicator;
.super Landroid/widget/LinearLayout;

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "AgifTabIndicator"


# instance fields
.field mAgifPackageInfo:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/incallui/agif/AgifLoader$AgifPackageInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mAgifViewPager:Lcom/android/incallui/agif/AgifViewPager;

.field private mContext:Landroid/content/Context;

.field protected mHasRecent:Z

.field protected mHasSetting:Z

.field protected selectPage:I

.field private tabIndicator:[Lcom/android/incallui/agif/AgifTabImageView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/incallui/agif/AgifTabIndicator;->mAgifViewPager:Lcom/android/incallui/agif/AgifViewPager;

    iput-boolean v1, p0, Lcom/android/incallui/agif/AgifTabIndicator;->mHasRecent:Z

    iput-boolean v1, p0, Lcom/android/incallui/agif/AgifTabIndicator;->mHasSetting:Z

    iput-object p1, p0, Lcom/android/incallui/agif/AgifTabIndicator;->mContext:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/incallui/agif/AgifTabIndicator;->mAgifViewPager:Lcom/android/incallui/agif/AgifViewPager;

    iput-boolean v1, p0, Lcom/android/incallui/agif/AgifTabIndicator;->mHasRecent:Z

    iput-boolean v1, p0, Lcom/android/incallui/agif/AgifTabIndicator;->mHasSetting:Z

    iput-object p1, p0, Lcom/android/incallui/agif/AgifTabIndicator;->mContext:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/incallui/agif/AgifTabIndicator;->mAgifViewPager:Lcom/android/incallui/agif/AgifViewPager;

    iput-boolean v1, p0, Lcom/android/incallui/agif/AgifTabIndicator;->mHasRecent:Z

    iput-boolean v1, p0, Lcom/android/incallui/agif/AgifTabIndicator;->mHasSetting:Z

    iput-object p1, p0, Lcom/android/incallui/agif/AgifTabIndicator;->mContext:Landroid/content/Context;

    return-void
.end method

.method private getPageType(II)I
    .locals 1

    iget-boolean v0, p0, Lcom/android/incallui/agif/AgifTabIndicator;->mHasRecent:Z

    if-eqz v0, :cond_0

    if-nez p2, :cond_0

    sget v0, Lcom/android/incallui/agif/AgifCallContract;->PAGE_RECENT:I

    :goto_0
    return v0

    :cond_0
    add-int/lit8 v0, p1, -0x1

    if-ne p2, v0, :cond_2

    iget-boolean v0, p0, Lcom/android/incallui/agif/AgifTabIndicator;->mHasSetting:Z

    if-eqz v0, :cond_1

    sget v0, Lcom/android/incallui/agif/AgifCallContract;->PAGE_SETTING:I

    goto :goto_0

    :cond_1
    sget v0, Lcom/android/incallui/agif/AgifCallContract;->PAGE_CONTENT:I

    goto :goto_0

    :cond_2
    sget v0, Lcom/android/incallui/agif/AgifCallContract;->PAGE_CONTENT:I

    goto :goto_0
.end method

.method private removeAgifResources()V
    .locals 4

    const/4 v1, 0x0

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/android/incallui/agif/AgifTabIndicator;->tabIndicator:[Lcom/android/incallui/agif/AgifTabImageView;

    if-eqz v0, :cond_2

    move v0, v1

    :goto_0
    iget-object v2, p0, Lcom/android/incallui/agif/AgifTabIndicator;->tabIndicator:[Lcom/android/incallui/agif/AgifTabImageView;

    array-length v2, v2

    if-ge v0, v2, :cond_1

    iget-object v2, p0, Lcom/android/incallui/agif/AgifTabIndicator;->tabIndicator:[Lcom/android/incallui/agif/AgifTabImageView;

    aget-object v2, v2, v0

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/incallui/agif/AgifTabIndicator;->tabIndicator:[Lcom/android/incallui/agif/AgifTabImageView;

    aget-object v2, v2, v0

    invoke-virtual {v2, v3}, Lcom/android/incallui/agif/AgifTabImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    iget-object v2, p0, Lcom/android/incallui/agif/AgifTabIndicator;->tabIndicator:[Lcom/android/incallui/agif/AgifTabImageView;

    aget-object v2, v2, v0

    invoke-virtual {v2, v1}, Lcom/android/incallui/agif/AgifTabImageView;->setImageResource(I)V

    iget-object v2, p0, Lcom/android/incallui/agif/AgifTabIndicator;->tabIndicator:[Lcom/android/incallui/agif/AgifTabImageView;

    aget-object v2, v2, v0

    invoke-virtual {v2, v3}, Lcom/android/incallui/agif/AgifTabImageView;->setForeground(Landroid/graphics/drawable/Drawable;)V

    iget-object v2, p0, Lcom/android/incallui/agif/AgifTabIndicator;->tabIndicator:[Lcom/android/incallui/agif/AgifTabImageView;

    aget-object v2, v2, v0

    invoke-virtual {v2, v3}, Lcom/android/incallui/agif/AgifTabImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iput-object v3, p0, Lcom/android/incallui/agif/AgifTabIndicator;->tabIndicator:[Lcom/android/incallui/agif/AgifTabImageView;

    :cond_2
    iget-object v0, p0, Lcom/android/incallui/agif/AgifTabIndicator;->mAgifPackageInfo:Ljava/util/ArrayList;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/incallui/agif/AgifTabIndicator;->mAgifPackageInfo:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iput-object v3, p0, Lcom/android/incallui/agif/AgifTabIndicator;->mAgifPackageInfo:Ljava/util/ArrayList;

    :cond_3
    iget-object v0, p0, Lcom/android/incallui/agif/AgifTabIndicator;->mAgifViewPager:Lcom/android/incallui/agif/AgifViewPager;

    if-eqz v0, :cond_4

    iput-object v3, p0, Lcom/android/incallui/agif/AgifTabIndicator;->mAgifViewPager:Lcom/android/incallui/agif/AgifViewPager;

    :cond_4
    return-void
.end method


# virtual methods
.method public createAgifTabIndicator(ILjava/lang/String;Lcom/android/incallui/agif/AgifViewPager;ZZ)V
    .locals 12

    const-string v1, "AgifTabIndicator"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "createAgifTabIndicator = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/incallui/agif/AgifTabIndicator;->removeAllViewsInLayout()V

    const-string v1, "agif_enhanced_service"

    invoke-static {v1}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    move/from16 v0, p4

    iput-boolean v0, p0, Lcom/android/incallui/agif/AgifTabIndicator;->mHasRecent:Z

    move/from16 v0, p5

    iput-boolean v0, p0, Lcom/android/incallui/agif/AgifTabIndicator;->mHasSetting:Z

    :cond_0
    iput-object p3, p0, Lcom/android/incallui/agif/AgifTabIndicator;->mAgifViewPager:Lcom/android/incallui/agif/AgifViewPager;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/incallui/agif/AgifTabIndicator;->mAgifPackageInfo:Ljava/util/ArrayList;

    invoke-static {}, Lcom/android/incallui/agif/AgifLoader;->getInstance()Lcom/android/incallui/agif/AgifLoader;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/android/incallui/agif/AgifLoader;->getAgifPackageInfo(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/android/incallui/agif/AgifLoader;->getInstance()Lcom/android/incallui/agif/AgifLoader;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/android/incallui/agif/AgifLoader;->getAgifPackageInfo(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    iput-object v1, p0, Lcom/android/incallui/agif/AgifTabIndicator;->mAgifPackageInfo:Ljava/util/ArrayList;

    const-string v1, "AgifTabIndicator"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "createAgifTabIndicator package info size = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/incallui/agif/AgifTabIndicator;->mAgifPackageInfo:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    iget-object v1, p0, Lcom/android/incallui/agif/AgifTabIndicator;->mAgifPackageInfo:Ljava/util/ArrayList;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/incallui/agif/AgifTabIndicator;->mAgifPackageInfo:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-gtz v1, :cond_3

    :cond_2
    const-string v1, "AgifTabIndicator"

    const-string v2, "The package info is null."

    invoke-static {v1, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_3
    iget-boolean v1, p0, Lcom/android/incallui/agif/AgifTabIndicator;->mHasSetting:Z

    if-eqz v1, :cond_4

    add-int/lit8 p1, p1, 0x1

    :cond_4
    new-array v1, p1, [Lcom/android/incallui/agif/AgifTabImageView;

    iput-object v1, p0, Lcom/android/incallui/agif/AgifTabIndicator;->tabIndicator:[Lcom/android/incallui/agif/AgifTabImageView;

    iget-object v1, p0, Lcom/android/incallui/agif/AgifTabIndicator;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a02cb

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v3, v1

    iget-object v1, p0, Lcom/android/incallui/agif/AgifTabIndicator;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a02c5

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v4, v1

    iget-object v1, p0, Lcom/android/incallui/agif/AgifTabIndicator;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a02c8

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v5, v1

    iget-object v1, p0, Lcom/android/incallui/agif/AgifTabIndicator;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a02c9

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v6, v1

    iget-object v1, p0, Lcom/android/incallui/agif/AgifTabIndicator;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a02c7

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v7, v1

    const/4 v2, 0x0

    :goto_1
    if-ge v2, p1, :cond_9

    invoke-direct {p0, p1, v2}, Lcom/android/incallui/agif/AgifTabIndicator;->getPageType(II)I

    move-result v8

    iget-boolean v1, p0, Lcom/android/incallui/agif/AgifTabIndicator;->mHasRecent:Z

    if-eqz v1, :cond_6

    add-int/lit8 v1, v2, -0x1

    :goto_2
    iget-object v9, p0, Lcom/android/incallui/agif/AgifTabIndicator;->tabIndicator:[Lcom/android/incallui/agif/AgifTabImageView;

    new-instance v10, Lcom/android/incallui/agif/AgifTabImageView;

    iget-object v11, p0, Lcom/android/incallui/agif/AgifTabIndicator;->mContext:Landroid/content/Context;

    invoke-direct {v10, v11}, Lcom/android/incallui/agif/AgifTabImageView;-><init>(Landroid/content/Context;)V

    aput-object v10, v9, v2

    new-instance v9, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v9, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const v10, 0x800003

    iput v10, v9, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    iget-object v10, p0, Lcom/android/incallui/agif/AgifTabIndicator;->tabIndicator:[Lcom/android/incallui/agif/AgifTabImageView;

    aget-object v10, v10, v2

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Lcom/android/incallui/agif/AgifTabImageView;->setFocusable(Z)V

    iget-object v10, p0, Lcom/android/incallui/agif/AgifTabIndicator;->tabIndicator:[Lcom/android/incallui/agif/AgifTabImageView;

    aget-object v10, v10, v2

    invoke-virtual {v10, v9}, Lcom/android/incallui/agif/AgifTabImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v9, p0, Lcom/android/incallui/agif/AgifTabIndicator;->tabIndicator:[Lcom/android/incallui/agif/AgifTabImageView;

    aget-object v9, v9, v2

    invoke-virtual {v9, v5, v6, v5, v7}, Lcom/android/incallui/agif/AgifTabImageView;->setPadding(IIII)V

    iget-object v9, p0, Lcom/android/incallui/agif/AgifTabIndicator;->tabIndicator:[Lcom/android/incallui/agif/AgifTabImageView;

    aget-object v9, v9, v2

    iget-object v10, p0, Lcom/android/incallui/agif/AgifTabIndicator;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f02005a

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/android/incallui/agif/AgifTabImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    sget v9, Lcom/android/incallui/agif/AgifCallContract;->PAGE_RECENT:I

    if-ne v8, v9, :cond_7

    iget-object v1, p0, Lcom/android/incallui/agif/AgifTabIndicator;->tabIndicator:[Lcom/android/incallui/agif/AgifTabImageView;

    aget-object v1, v1, v2

    const v8, 0x7f020058

    invoke-virtual {v1, v8}, Lcom/android/incallui/agif/AgifTabImageView;->setImageResource(I)V

    iget-object v1, p0, Lcom/android/incallui/agif/AgifTabIndicator;->tabIndicator:[Lcom/android/incallui/agif/AgifTabImageView;

    aget-object v1, v1, v2

    invoke-virtual {p0}, Lcom/android/incallui/agif/AgifTabIndicator;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0900bb

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Lcom/android/incallui/agif/AgifTabImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_5
    :goto_3
    iget-object v1, p0, Lcom/android/incallui/agif/AgifTabIndicator;->tabIndicator:[Lcom/android/incallui/agif/AgifTabImageView;

    aget-object v1, v1, v2

    const v8, 0x7f100013

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v1, v8, v9}, Lcom/android/incallui/agif/AgifTabImageView;->setTag(ILjava/lang/Object;)V

    iget-object v1, p0, Lcom/android/incallui/agif/AgifTabIndicator;->tabIndicator:[Lcom/android/incallui/agif/AgifTabImageView;

    aget-object v1, v1, v2

    invoke-virtual {v1, p0}, Lcom/android/incallui/agif/AgifTabImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/android/incallui/agif/AgifTabIndicator;->tabIndicator:[Lcom/android/incallui/agif/AgifTabImageView;

    aget-object v1, v1, v2

    const/4 v8, 0x1

    invoke-virtual {v1, v8}, Lcom/android/incallui/agif/AgifTabImageView;->semSetHoverPopupType(I)V

    iget-object v1, p0, Lcom/android/incallui/agif/AgifTabIndicator;->tabIndicator:[Lcom/android/incallui/agif/AgifTabImageView;

    aget-object v1, v1, v2

    invoke-virtual {p0, v1}, Lcom/android/incallui/agif/AgifTabIndicator;->addView(Landroid/view/View;)V

    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_1

    :cond_6
    move v1, v2

    goto/16 :goto_2

    :cond_7
    sget v9, Lcom/android/incallui/agif/AgifCallContract;->PAGE_SETTING:I

    if-ne v8, v9, :cond_8

    iget-object v1, p0, Lcom/android/incallui/agif/AgifTabIndicator;->tabIndicator:[Lcom/android/incallui/agif/AgifTabImageView;

    aget-object v1, v1, v2

    const v8, 0x7f02005c

    invoke-virtual {v1, v8}, Lcom/android/incallui/agif/AgifTabImageView;->setImageResource(I)V

    iget-object v1, p0, Lcom/android/incallui/agif/AgifTabIndicator;->tabIndicator:[Lcom/android/incallui/agif/AgifTabImageView;

    aget-object v1, v1, v2

    invoke-virtual {p0}, Lcom/android/incallui/agif/AgifTabIndicator;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0900bd

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Lcom/android/incallui/agif/AgifTabImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_3

    :cond_8
    iget-object v8, p0, Lcom/android/incallui/agif/AgifTabIndicator;->mAgifPackageInfo:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-le v8, v1, :cond_5

    iget-object v8, p0, Lcom/android/incallui/agif/AgifTabIndicator;->tabIndicator:[Lcom/android/incallui/agif/AgifTabImageView;

    aget-object v8, v8, v2

    iget-object v9, p0, Lcom/android/incallui/agif/AgifTabIndicator;->mAgifPackageInfo:Ljava/util/ArrayList;

    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/agif/AgifLoader$AgifPackageInfo;

    iget-object v1, v1, Lcom/android/incallui/agif/AgifLoader$AgifPackageInfo;->contentName:Ljava/lang/String;

    invoke-virtual {v8, v1}, Lcom/android/incallui/agif/AgifTabImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_3

    :cond_9
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/incallui/agif/AgifTabIndicator;->updateAgifTabIndicator(I)V

    goto/16 :goto_0
.end method

.method public getSelectPage()I
    .locals 1

    iget v0, p0, Lcom/android/incallui/agif/AgifTabIndicator;->selectPage:I

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 5

    const v1, 0x7f100013

    if-eqz p1, :cond_0

    invoke-virtual {p1, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v0, p0, Lcom/android/incallui/agif/AgifTabIndicator;->tabIndicator:[Lcom/android/incallui/agif/AgifTabImageView;

    array-length v0, v0

    invoke-direct {p0, v0, v1}, Lcom/android/incallui/agif/AgifTabIndicator;->getPageType(II)I

    move-result v0

    const-string v2, "AgifTabIndicator"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onClick = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-ltz v1, :cond_0

    sget v2, Lcom/android/incallui/agif/AgifCallContract;->PAGE_SETTING:I

    if-ne v0, v2, :cond_2

    invoke-static {}, Lcom/android/incallui/util/VoiceCallAppLogging;->agifScreen_settings()V

    invoke-static {}, Lcom/android/incallui/util/PackageHelpers;->showStickerSettingActivity()V

    goto :goto_0

    :cond_2
    iget-boolean v0, p0, Lcom/android/incallui/agif/AgifTabIndicator;->mHasRecent:Z

    if-eqz v0, :cond_4

    add-int/lit8 v0, v1, -0x1

    :goto_1
    iget-boolean v2, p0, Lcom/android/incallui/agif/AgifTabIndicator;->mHasRecent:Z

    if-eqz v2, :cond_5

    if-nez v1, :cond_5

    invoke-static {}, Lcom/android/incallui/util/VoiceCallAppLogging;->agifScreen_recent()V

    :cond_3
    :goto_2
    invoke-virtual {p0, v1}, Lcom/android/incallui/agif/AgifTabIndicator;->updateAgifTabIndicator(I)V

    iget-boolean v0, p0, Lcom/android/incallui/agif/AgifTabIndicator;->mHasSetting:Z

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/android/incallui/agif/AgifTabIndicator;->mAgifViewPager:Lcom/android/incallui/agif/AgifViewPager;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/incallui/agif/AgifTabIndicator;->mAgifViewPager:Lcom/android/incallui/agif/AgifViewPager;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/incallui/agif/AgifViewPager;->setCurrentItem(IZ)V

    goto :goto_0

    :cond_4
    move v0, v1

    goto :goto_1

    :cond_5
    iget-object v2, p0, Lcom/android/incallui/agif/AgifTabIndicator;->mAgifPackageInfo:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/incallui/agif/AgifTabIndicator;->mAgifPackageInfo:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/agif/AgifLoader$AgifPackageInfo;

    iget-object v0, v0, Lcom/android/incallui/agif/AgifLoader$AgifPackageInfo;->contentName:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/incallui/util/VoiceCallAppLogging;->agifScreen_selectAgifSet(Ljava/lang/String;)V

    goto :goto_2

    :cond_6
    invoke-static {}, Lcom/android/incallui/UiAdapter;->getInstance()Lcom/android/incallui/UiAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/UiAdapter;->getAgifUi()Lcom/android/incallui/AgifPresenter$AgifUi;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/incallui/UiAdapter;->getInstance()Lcom/android/incallui/UiAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/UiAdapter;->getAgifUi()Lcom/android/incallui/AgifPresenter$AgifUi;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/android/incallui/AgifPresenter$AgifUi;->selectAgifPage(I)V

    goto/16 :goto_0
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    invoke-direct {p0}, Lcom/android/incallui/agif/AgifTabIndicator;->removeAgifResources()V

    return-void
.end method

.method public removeAllViewsInLayout()V
    .locals 0

    invoke-super {p0}, Landroid/widget/LinearLayout;->removeAllViewsInLayout()V

    invoke-direct {p0}, Lcom/android/incallui/agif/AgifTabIndicator;->removeAgifResources()V

    return-void
.end method

.method public setEnabled(Z)V
    .locals 3

    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    const-string v0, "AgifTabIndicator"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setEnabled = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/incallui/agif/AgifTabIndicator;->tabIndicator:[Lcom/android/incallui/agif/AgifTabImageView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/agif/AgifTabIndicator;->tabIndicator:[Lcom/android/incallui/agif/AgifTabImageView;

    array-length v0, v0

    if-lez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/incallui/agif/AgifTabIndicator;->tabIndicator:[Lcom/android/incallui/agif/AgifTabImageView;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/android/incallui/agif/AgifTabIndicator;->tabIndicator:[Lcom/android/incallui/agif/AgifTabImageView;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Lcom/android/incallui/agif/AgifTabImageView;->setEnabled(Z)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public updateAgifTabIndicator(I)V
    .locals 6

    const/4 v2, 0x0

    const-string v0, "AgifTabIndicator"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateAgifTabIndicator = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/incallui/agif/AgifTabIndicator;->tabIndicator:[Lcom/android/incallui/agif/AgifTabImageView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/agif/AgifTabIndicator;->tabIndicator:[Lcom/android/incallui/agif/AgifTabImageView;

    array-length v0, v0

    if-gtz v0, :cond_1

    :cond_0
    return-void

    :cond_1
    iput p1, p0, Lcom/android/incallui/agif/AgifTabIndicator;->selectPage:I

    iget-object v0, p0, Lcom/android/incallui/agif/AgifTabIndicator;->tabIndicator:[Lcom/android/incallui/agif/AgifTabImageView;

    array-length v3, v0

    move v1, v2

    :goto_0
    iget-object v0, p0, Lcom/android/incallui/agif/AgifTabIndicator;->tabIndicator:[Lcom/android/incallui/agif/AgifTabImageView;

    array-length v0, v0

    if-ge v1, v0, :cond_0

    iget-boolean v0, p0, Lcom/android/incallui/agif/AgifTabIndicator;->mHasRecent:Z

    if-eqz v0, :cond_3

    add-int/lit8 v0, v1, -0x1

    :goto_1
    if-ne v1, p1, :cond_4

    iget-object v4, p0, Lcom/android/incallui/agif/AgifTabIndicator;->tabIndicator:[Lcom/android/incallui/agif/AgifTabImageView;

    aget-object v4, v4, v1

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/android/incallui/agif/AgifTabImageView;->setSelected(Z)V

    invoke-direct {p0, v3, v1}, Lcom/android/incallui/agif/AgifTabIndicator;->getPageType(II)I

    move-result v4

    sget v5, Lcom/android/incallui/agif/AgifCallContract;->PAGE_CONTENT:I

    if-ne v4, v5, :cond_2

    iget-object v4, p0, Lcom/android/incallui/agif/AgifTabIndicator;->mAgifPackageInfo:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-le v4, v0, :cond_2

    iget-object v4, p0, Lcom/android/incallui/agif/AgifTabIndicator;->tabIndicator:[Lcom/android/incallui/agif/AgifTabImageView;

    aget-object v4, v4, v1

    iget-object v5, p0, Lcom/android/incallui/agif/AgifTabIndicator;->mAgifPackageInfo:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/agif/AgifLoader$AgifPackageInfo;

    iget-object v0, v0, Lcom/android/incallui/agif/AgifLoader$AgifPackageInfo;->trayIconOn:Landroid/graphics/Bitmap;

    invoke-virtual {v4, v0}, Lcom/android/incallui/agif/AgifTabImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :cond_2
    :goto_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_1

    :cond_4
    iget-object v4, p0, Lcom/android/incallui/agif/AgifTabIndicator;->tabIndicator:[Lcom/android/incallui/agif/AgifTabImageView;

    aget-object v4, v4, v1

    invoke-virtual {v4, v2}, Lcom/android/incallui/agif/AgifTabImageView;->setSelected(Z)V

    invoke-direct {p0, v3, v1}, Lcom/android/incallui/agif/AgifTabIndicator;->getPageType(II)I

    move-result v4

    sget v5, Lcom/android/incallui/agif/AgifCallContract;->PAGE_CONTENT:I

    if-ne v4, v5, :cond_2

    iget-object v4, p0, Lcom/android/incallui/agif/AgifTabIndicator;->mAgifPackageInfo:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-le v4, v0, :cond_2

    iget-object v4, p0, Lcom/android/incallui/agif/AgifTabIndicator;->tabIndicator:[Lcom/android/incallui/agif/AgifTabImageView;

    aget-object v4, v4, v1

    iget-object v5, p0, Lcom/android/incallui/agif/AgifTabIndicator;->mAgifPackageInfo:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/agif/AgifLoader$AgifPackageInfo;

    iget-object v0, v0, Lcom/android/incallui/agif/AgifLoader$AgifPackageInfo;->trayIconOff:Landroid/graphics/Bitmap;

    invoke-virtual {v4, v0}, Lcom/android/incallui/agif/AgifTabImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_2
.end method
