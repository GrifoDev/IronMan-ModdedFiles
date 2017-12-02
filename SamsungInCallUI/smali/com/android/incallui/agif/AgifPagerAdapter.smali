.class public Lcom/android/incallui/agif/AgifPagerAdapter;
.super Landroid/support/v4/view/ac;


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "AgifPagerAdapter"


# instance fields
.field protected mCategory:Ljava/lang/String;

.field protected mContext:Landroid/content/Context;

.field protected mHasRecent:Z

.field protected mInflater:Landroid/view/LayoutInflater;

.field protected mIsRejectPage:Z

.field protected mPageCount:I


# direct methods
.method public constructor <init>(Landroid/content/Context;ILjava/lang/String;Z)V
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0}, Landroid/support/v4/view/ac;-><init>()V

    iput-boolean v1, p0, Lcom/android/incallui/agif/AgifPagerAdapter;->mHasRecent:Z

    iput-boolean v1, p0, Lcom/android/incallui/agif/AgifPagerAdapter;->mIsRejectPage:Z

    iput-object p1, p0, Lcom/android/incallui/agif/AgifPagerAdapter;->mContext:Landroid/content/Context;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    iput-object v2, p0, Lcom/android/incallui/agif/AgifPagerAdapter;->mInflater:Landroid/view/LayoutInflater;

    iput p2, p0, Lcom/android/incallui/agif/AgifPagerAdapter;->mPageCount:I

    iput-object p3, p0, Lcom/android/incallui/agif/AgifPagerAdapter;->mCategory:Ljava/lang/String;

    const-string v2, "agif_enhanced_service"

    invoke-static {v2}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    iput-boolean v0, p0, Lcom/android/incallui/agif/AgifPagerAdapter;->mHasRecent:Z

    if-nez p4, :cond_1

    :goto_0
    iput-boolean v0, p0, Lcom/android/incallui/agif/AgifPagerAdapter;->mIsRejectPage:Z

    :cond_0
    return-void

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method private getPageType(II)I
    .locals 1

    iget-boolean v0, p0, Lcom/android/incallui/agif/AgifPagerAdapter;->mHasRecent:Z

    if-eqz v0, :cond_0

    if-nez p2, :cond_0

    sget v0, Lcom/android/incallui/agif/AgifCallContract;->PAGE_RECENT:I

    :goto_0
    return v0

    :cond_0
    sget v0, Lcom/android/incallui/agif/AgifCallContract;->PAGE_CONTENT:I

    goto :goto_0
.end method


# virtual methods
.method public destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 3

    const-string v0, "AgifPagerAdapter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "destroyItem position = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p3, :cond_0

    instance-of v0, p3, Lcom/android/incallui/agif/AgifGridView;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, Lcom/android/incallui/agif/AgifGridView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/incallui/agif/AgifGridView;->setAdapter(Landroid/widget/ListAdapter;)V

    :cond_0
    check-cast p1, Landroid/support/v4/view/ViewPager;

    check-cast p3, Landroid/view/View;

    invoke-virtual {p1, p3}, Landroid/support/v4/view/ViewPager;->removeView(Landroid/view/View;)V

    return-void
.end method

.method public getCount()I
    .locals 1

    iget v0, p0, Lcom/android/incallui/agif/AgifPagerAdapter;->mPageCount:I

    return v0
.end method

.method public getItemPosition(Ljava/lang/Object;)I
    .locals 1

    const/4 v0, -0x2

    return v0
.end method

.method public instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 9

    const v8, 0x7f1000b2

    const v7, 0x7f040028

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v4, 0x0

    invoke-static {}, Lcom/android/incallui/agif/AgifLoader;->getInstance()Lcom/android/incallui/agif/AgifLoader;

    move-result-object v2

    const-string v0, "AgifPagerAdapter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "instantiateItem position = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", mPageCount = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Lcom/android/incallui/agif/AgifPagerAdapter;->mPageCount:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget v0, p0, Lcom/android/incallui/agif/AgifPagerAdapter;->mPageCount:I

    invoke-direct {p0, v0, p2}, Lcom/android/incallui/agif/AgifPagerAdapter;->getPageType(II)I

    move-result v0

    sget v1, Lcom/android/incallui/agif/AgifCallContract;->PAGE_RECENT:I

    if-ne v0, v1, :cond_3

    check-cast p1, Landroid/support/v4/view/ViewPager;

    iget-boolean v0, p0, Lcom/android/incallui/agif/AgifPagerAdapter;->mIsRejectPage:Z

    if-eqz v0, :cond_0

    const-string v0, "call_state_reject"

    :goto_0
    invoke-static {}, Lcom/android/incallui/agif/AgifLoader;->getInstance()Lcom/android/incallui/agif/AgifLoader;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/incallui/agif/AgifLoader;->getAgifStickerRecentInfoSize(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/agif/AgifPagerAdapter;->mInflater:Landroid/view/LayoutInflater;

    invoke-virtual {v0, v7, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/agif/AgifGridView;

    new-instance v3, Lcom/android/incallui/agif/AgifRecentImageAdapter;

    iget-object v4, p0, Lcom/android/incallui/agif/AgifPagerAdapter;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/incallui/agif/AgifPagerAdapter;->mCategory:Ljava/lang/String;

    invoke-virtual {v2, v5}, Lcom/android/incallui/agif/AgifLoader;->getAgifContentsInfo(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    iget-boolean v5, p0, Lcom/android/incallui/agif/AgifPagerAdapter;->mIsRejectPage:Z

    invoke-direct {v3, v4, v2, p2, v5}, Lcom/android/incallui/agif/AgifRecentImageAdapter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;IZ)V

    invoke-virtual {v0, v3}, Lcom/android/incallui/agif/AgifGridView;->setAdapter(Landroid/widget/ListAdapter;)V

    new-instance v2, Lcom/android/incallui/agif/AgifPagerAdapter$1;

    invoke-direct {v2, p0}, Lcom/android/incallui/agif/AgifPagerAdapter$1;-><init>(Lcom/android/incallui/agif/AgifPagerAdapter;)V

    invoke-virtual {v0, v2}, Lcom/android/incallui/agif/AgifGridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    move-object v0, v1

    :goto_1
    invoke-virtual {p1, v0, v6}, Landroid/support/v4/view/ViewPager;->addView(Landroid/view/View;I)V

    :goto_2
    return-object v0

    :cond_0
    const-string v0, "call_state_calling"

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/incallui/agif/AgifPagerAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f040023

    invoke-virtual {v0, v1, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/CallList;->hasIncomingCall()Z

    move-result v0

    if-eqz v0, :cond_2

    const v0, 0x7f10009a

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    const/16 v2, 0x10

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setGravity(I)V

    :cond_2
    const v0, 0x7f10009b

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/incallui/agif/AgifPagerAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a02e4

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    iget-object v3, p0, Lcom/android/incallui/agif/AgifPagerAdapter;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/incallui/util/GraphicResourceUtils;->getDensity(Landroid/content/Context;)F

    move-result v3

    div-float/2addr v2, v3

    iget-object v3, p0, Lcom/android/incallui/agif/AgifPagerAdapter;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/incallui/util/GraphicResourceUtils;->setTextSizeUntilLargeSize(Landroid/content/Context;)F

    move-result v3

    mul-float/2addr v2, v3

    invoke-virtual {v0, v5, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    const v0, 0x7f10009c

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/incallui/agif/AgifPagerAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a02e2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    iget-object v3, p0, Lcom/android/incallui/agif/AgifPagerAdapter;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/incallui/util/GraphicResourceUtils;->getDensity(Landroid/content/Context;)F

    move-result v3

    div-float/2addr v2, v3

    iget-object v3, p0, Lcom/android/incallui/agif/AgifPagerAdapter;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/incallui/util/GraphicResourceUtils;->setTextSizeUntilLargeSize(Landroid/content/Context;)F

    move-result v3

    mul-float/2addr v2, v3

    invoke-virtual {v0, v5, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    move-object v0, v1

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/android/incallui/agif/AgifPagerAdapter;->mInflater:Landroid/view/LayoutInflater;

    invoke-virtual {v0, v7, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast p1, Landroid/support/v4/view/ViewPager;

    invoke-virtual {v1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/agif/AgifGridView;

    new-instance v3, Lcom/android/incallui/agif/AgifImageAdapter;

    iget-object v4, p0, Lcom/android/incallui/agif/AgifPagerAdapter;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/incallui/agif/AgifPagerAdapter;->mCategory:Ljava/lang/String;

    invoke-virtual {v2, v5}, Lcom/android/incallui/agif/AgifLoader;->getAgifContentsInfo(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    iget-boolean v5, p0, Lcom/android/incallui/agif/AgifPagerAdapter;->mHasRecent:Z

    if-eqz v5, :cond_4

    add-int/lit8 p2, p2, -0x1

    :cond_4
    iget-boolean v5, p0, Lcom/android/incallui/agif/AgifPagerAdapter;->mIsRejectPage:Z

    invoke-direct {v3, v4, v2, p2, v5}, Lcom/android/incallui/agif/AgifImageAdapter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;IZ)V

    invoke-virtual {v0, v3}, Lcom/android/incallui/agif/AgifGridView;->setAdapter(Landroid/widget/ListAdapter;)V

    new-instance v2, Lcom/android/incallui/agif/AgifPagerAdapter$2;

    invoke-direct {v2, p0}, Lcom/android/incallui/agif/AgifPagerAdapter$2;-><init>(Lcom/android/incallui/agif/AgifPagerAdapter;)V

    invoke-virtual {v0, v2}, Lcom/android/incallui/agif/AgifGridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    invoke-virtual {p1, v1, v6}, Landroid/support/v4/view/ViewPager;->addView(Landroid/view/View;I)V

    move-object v0, v1

    goto/16 :goto_2
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

.method public setPage(Landroid/view/ViewGroup;IZ)V
    .locals 6

    iput p2, p0, Lcom/android/incallui/agif/AgifPagerAdapter;->mPageCount:I

    instance-of v0, p1, Lcom/android/incallui/agif/AgifViewPager;

    if-eqz v0, :cond_0

    move-object v3, p1

    check-cast v3, Lcom/android/incallui/agif/AgifViewPager;

    invoke-virtual {v3}, Lcom/android/incallui/agif/AgifViewPager;->getAgifTabIndicator()Lcom/android/incallui/agif/AgifTabIndicator;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v3}, Lcom/android/incallui/agif/AgifViewPager;->getAgifTabIndicator()Lcom/android/incallui/agif/AgifTabIndicator;

    move-result-object v0

    iget v1, p0, Lcom/android/incallui/agif/AgifPagerAdapter;->mPageCount:I

    iget-object v2, p0, Lcom/android/incallui/agif/AgifPagerAdapter;->mCategory:Ljava/lang/String;

    iget-boolean v4, p0, Lcom/android/incallui/agif/AgifPagerAdapter;->mHasRecent:Z

    move v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/android/incallui/agif/AgifTabIndicator;->createAgifTabIndicator(ILjava/lang/String;Lcom/android/incallui/agif/AgifViewPager;ZZ)V

    :cond_0
    return-void
.end method
