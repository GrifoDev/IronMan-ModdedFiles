.class public Lcom/android/incallui/agif/StickerSettingAdapter;
.super Landroid/widget/BaseAdapter;

# interfaces
.implements Lcom/samsung/android/animation/SemAbsDragAndDropAnimator$DragAndDropController;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/incallui/agif/StickerSettingAdapter$CustomViewHolder;,
        Lcom/android/incallui/agif/StickerSettingAdapter$LongClickListener;,
        Lcom/android/incallui/agif/StickerSettingAdapter$CheckChangeListener;
    }
.end annotation


# static fields
.field protected static final EDIT_MODE:I = 0x2

.field private static final LOG_TAG:Ljava/lang/String; = "StickerSettingAdapter"

.field protected static final NORMAL_MODE:I = 0x1


# instance fields
.field private mCheckChangeListener:Lcom/android/incallui/agif/StickerSettingAdapter$CheckChangeListener;

.field private mContext:Landroid/content/Context;

.field private mCurrentMode:I

.field private mInflater:Landroid/view/LayoutInflater;

.field private mLongClickListener:Lcom/android/incallui/agif/StickerSettingAdapter$LongClickListener;

.field private mStickerOrderInfo:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/incallui/agif/StickerSettingActivity$StickerOrderInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/incallui/agif/StickerSettingActivity$StickerOrderInfo;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    iput-object p1, p0, Lcom/android/incallui/agif/StickerSettingAdapter;->mContext:Landroid/content/Context;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/android/incallui/agif/StickerSettingAdapter;->mStickerOrderInfo:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/android/incallui/agif/StickerSettingAdapter;->mContext:Landroid/content/Context;

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/android/incallui/agif/StickerSettingAdapter;->mInflater:Landroid/view/LayoutInflater;

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/incallui/agif/StickerSettingAdapter;->mCurrentMode:I

    return-void
.end method

.method static synthetic access$000(Lcom/android/incallui/agif/StickerSettingAdapter;)Lcom/android/incallui/agif/StickerSettingAdapter$CheckChangeListener;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/agif/StickerSettingAdapter;->mCheckChangeListener:Lcom/android/incallui/agif/StickerSettingAdapter$CheckChangeListener;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/incallui/agif/StickerSettingAdapter;)I
    .locals 1

    iget v0, p0, Lcom/android/incallui/agif/StickerSettingAdapter;->mCurrentMode:I

    return v0
.end method

.method static synthetic access$200(Lcom/android/incallui/agif/StickerSettingAdapter;)Lcom/android/incallui/agif/StickerSettingAdapter$LongClickListener;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/agif/StickerSettingAdapter;->mLongClickListener:Lcom/android/incallui/agif/StickerSettingAdapter$LongClickListener;

    return-object v0
.end method


# virtual methods
.method public canDrag(I)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public canDrop(II)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public deleteCheckedPackages()V
    .locals 5

    const-string v0, "StickerSettingAdapter"

    const-string v1, "deleteCheckedPackages()"

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/incallui/agif/StickerSettingAdapter;->mStickerOrderInfo:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/agif/StickerSettingActivity$StickerOrderInfo;

    iget-boolean v2, v0, Lcom/android/incallui/agif/StickerSettingActivity$StickerOrderInfo;->isPreload:Z

    if-nez v2, :cond_0

    iget-boolean v2, v0, Lcom/android/incallui/agif/StickerSettingActivity$StickerOrderInfo;->isChecked:Z

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/android/incallui/agif/StickerCenterManager;->getInstance()Lcom/android/incallui/agif/StickerCenterManager;

    move-result-object v2

    iget-object v0, v0, Lcom/android/incallui/agif/StickerSettingActivity$StickerOrderInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v0}, Lcom/android/incallui/agif/StickerCenterManager;->uninstallAPK(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/incallui/agif/StickerSettingAdapter;->mStickerOrderInfo:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_1
    if-ltz v1, :cond_3

    iget-object v0, p0, Lcom/android/incallui/agif/StickerSettingAdapter;->mStickerOrderInfo:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/agif/StickerSettingActivity$StickerOrderInfo;

    iget-boolean v0, v0, Lcom/android/incallui/agif/StickerSettingActivity$StickerOrderInfo;->isPreload:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/incallui/agif/StickerSettingAdapter;->mStickerOrderInfo:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/agif/StickerSettingActivity$StickerOrderInfo;

    iget-boolean v0, v0, Lcom/android/incallui/agif/StickerSettingActivity$StickerOrderInfo;->isChecked:Z

    if-eqz v0, :cond_2

    iget-object v2, p0, Lcom/android/incallui/agif/StickerSettingAdapter;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/android/incallui/agif/StickerSettingAdapter;->mStickerOrderInfo:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/agif/StickerSettingActivity$StickerOrderInfo;

    iget-object v3, v0, Lcom/android/incallui/agif/StickerSettingActivity$StickerOrderInfo;->packageName:Ljava/lang/String;

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/android/incallui/agif/StickerSettingAdapter;->mStickerOrderInfo:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/agif/StickerSettingActivity$StickerOrderInfo;

    iget-boolean v0, v0, Lcom/android/incallui/agif/StickerSettingActivity$StickerOrderInfo;->isPreload:Z

    invoke-static {v2, v3, v4, v0}, Lcom/android/incallui/agif/AgifCallServiceUtils;->updateStickerOrder(Landroid/content/Context;Ljava/lang/String;IZ)V

    iget-object v0, p0, Lcom/android/incallui/agif/StickerSettingAdapter;->mStickerOrderInfo:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_2
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_1

    :cond_3
    return-void
.end method

.method public dropDone(II)V
    .locals 3

    const-string v0, "StickerSettingAdapter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dropDone startPos = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", destPos = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/incallui/agif/StickerSettingAdapter;->mStickerOrderInfo:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/agif/StickerSettingActivity$StickerOrderInfo;

    iget-object v1, p0, Lcom/android/incallui/agif/StickerSettingAdapter;->mStickerOrderInfo:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    iget-object v1, p0, Lcom/android/incallui/agif/StickerSettingAdapter;->mStickerOrderInfo:Ljava/util/ArrayList;

    invoke-virtual {v1, p2, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    invoke-virtual {p0}, Lcom/android/incallui/agif/StickerSettingAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public getAllCheckedCount()I
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/incallui/agif/StickerSettingAdapter;->mStickerOrderInfo:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/agif/StickerSettingActivity$StickerOrderInfo;

    iget-boolean v0, v0, Lcom/android/incallui/agif/StickerSettingActivity$StickerOrderInfo;->isPreload:Z

    if-nez v0, :cond_1

    add-int/lit8 v0, v1, 0x1

    :goto_1
    move v1, v0

    goto :goto_0

    :cond_0
    return v1

    :cond_1
    move v0, v1

    goto :goto_1
.end method

.method public getCheckedCount()I
    .locals 4

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/incallui/agif/StickerSettingAdapter;->mStickerOrderInfo:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/agif/StickerSettingActivity$StickerOrderInfo;

    iget-boolean v3, v0, Lcom/android/incallui/agif/StickerSettingActivity$StickerOrderInfo;->isPreload:Z

    if-nez v3, :cond_1

    iget-boolean v0, v0, Lcom/android/incallui/agif/StickerSettingActivity$StickerOrderInfo;->isChecked:Z

    if-eqz v0, :cond_1

    add-int/lit8 v1, v1, 0x1

    move v0, v1

    :goto_1
    move v1, v0

    goto :goto_0

    :cond_0
    return v1

    :cond_1
    move v0, v1

    goto :goto_1
.end method

.method public getCount()I
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/agif/StickerSettingAdapter;->mStickerOrderInfo:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/agif/StickerSettingAdapter;->mStickerOrderInfo:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/agif/StickerSettingAdapter;->mStickerOrderInfo:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/agif/StickerSettingAdapter;->mStickerOrderInfo:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/agif/StickerSettingActivity$StickerOrderInfo;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8

    const v7, 0x7f0a059b

    const v5, 0x7f100014

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/incallui/agif/StickerSettingAdapter;->mStickerOrderInfo:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-object p2

    :cond_1
    iget-object v0, p0, Lcom/android/incallui/agif/StickerSettingAdapter;->mStickerOrderInfo:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/agif/StickerSettingActivity$StickerOrderInfo;

    if-eqz p2, :cond_2

    invoke-virtual {p2, v5}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_5

    :cond_2
    iget-object v1, p0, Lcom/android/incallui/agif/StickerSettingAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v3, 0x7f040188

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    new-instance v1, Lcom/android/incallui/agif/StickerSettingAdapter$CustomViewHolder;

    invoke-direct {v1, p0, p2}, Lcom/android/incallui/agif/StickerSettingAdapter$CustomViewHolder;-><init>(Lcom/android/incallui/agif/StickerSettingAdapter;Landroid/view/View;)V

    invoke-virtual {p2, v5, v1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    :cond_3
    invoke-virtual {v1}, Lcom/android/incallui/agif/StickerSettingAdapter$CustomViewHolder;->getStickerSettingItem()Lcom/android/incallui/agif/StickerSettingItem;

    move-result-object v5

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/incallui/util/InCallUtils;->isRtl()Z

    move-result v6

    iget v1, p0, Lcom/android/incallui/agif/StickerSettingAdapter;->mCurrentMode:I

    const/4 v3, 0x2

    if-ne v1, v3, :cond_9

    invoke-virtual {p0}, Lcom/android/incallui/agif/StickerSettingAdapter;->getAllCheckedCount()I

    move-result v1

    if-eqz v1, :cond_8

    invoke-virtual {v5}, Lcom/android/incallui/agif/StickerSettingItem;->getCheckBox()Landroid/widget/CheckBox;

    move-result-object v1

    new-instance v3, Lcom/android/incallui/agif/StickerSettingAdapter$1;

    invoke-direct {v3, p0}, Lcom/android/incallui/agif/StickerSettingAdapter$1;-><init>(Lcom/android/incallui/agif/StickerSettingAdapter;)V

    invoke-virtual {v1, v3}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    iget-boolean v1, v0, Lcom/android/incallui/agif/StickerSettingActivity$StickerOrderInfo;->isPreload:Z

    if-nez v1, :cond_7

    invoke-virtual {v5, v2}, Lcom/android/incallui/agif/StickerSettingItem;->setShowCheckbox(I)V

    iget-boolean v1, v0, Lcom/android/incallui/agif/StickerSettingActivity$StickerOrderInfo;->isChecked:Z

    if-eqz v1, :cond_6

    const/4 v1, 0x1

    :goto_1
    invoke-virtual {v5, v1}, Lcom/android/incallui/agif/StickerSettingItem;->setChecked(Z)V

    move v1, v2

    :goto_2
    iget-object v3, p0, Lcom/android/incallui/agif/StickerSettingAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a0596

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    move v4, v1

    move v1, v3

    :goto_3
    if-eqz v6, :cond_a

    move v3, v1

    :goto_4
    if-eqz v6, :cond_4

    move v1, v2

    :cond_4
    invoke-virtual {v5, v3, v2, v1, v2}, Lcom/android/incallui/agif/StickerSettingItem;->setPadding(IIII)V

    iget-object v1, v0, Lcom/android/incallui/agif/StickerSettingActivity$StickerOrderInfo;->title:Ljava/lang/String;

    invoke-virtual {v5, v1}, Lcom/android/incallui/agif/StickerSettingItem;->setStickerTitle(Ljava/lang/String;)V

    iget-object v1, v0, Lcom/android/incallui/agif/StickerSettingActivity$StickerOrderInfo;->artist:Ljava/lang/String;

    invoke-virtual {v5, v1}, Lcom/android/incallui/agif/StickerSettingItem;->setStickerArtist(Ljava/lang/String;)V

    iget-object v1, v0, Lcom/android/incallui/agif/StickerSettingActivity$StickerOrderInfo;->trayIconOn:Landroid/graphics/Bitmap;

    invoke-virtual {v5, v1, v4}, Lcom/android/incallui/agif/StickerSettingItem;->setStickerImage(Landroid/graphics/Bitmap;I)V

    new-instance v1, Lcom/android/incallui/agif/StickerSettingAdapter$2;

    invoke-direct {v1, p0, v0, v5}, Lcom/android/incallui/agif/StickerSettingAdapter$2;-><init>(Lcom/android/incallui/agif/StickerSettingAdapter;Lcom/android/incallui/agif/StickerSettingActivity$StickerOrderInfo;Lcom/android/incallui/agif/StickerSettingItem;)V

    invoke-virtual {v5, v1}, Lcom/android/incallui/agif/StickerSettingItem;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v1, Lcom/android/incallui/agif/StickerSettingAdapter$3;

    invoke-direct {v1, p0}, Lcom/android/incallui/agif/StickerSettingAdapter$3;-><init>(Lcom/android/incallui/agif/StickerSettingAdapter;)V

    invoke-virtual {v5, v1}, Lcom/android/incallui/agif/StickerSettingItem;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    const v1, 0x7f100013

    iget-object v0, v0, Lcom/android/incallui/agif/StickerSettingActivity$StickerOrderInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v1, v0}, Lcom/android/incallui/agif/StickerSettingItem;->setTag(ILjava/lang/Object;)V

    const v0, 0x7f100018

    iget v1, p0, Lcom/android/incallui/agif/StickerSettingAdapter;->mCurrentMode:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v5, v0, v1}, Lcom/android/incallui/agif/StickerSettingItem;->setTag(ILjava/lang/Object;)V

    goto/16 :goto_0

    :cond_5
    invoke-virtual {p2, v5}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/agif/StickerSettingAdapter$CustomViewHolder;

    if-nez v1, :cond_3

    const-string v0, "StickerSettingAdapter"

    const-string v1, "The viewHolder is null"

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_6
    move v1, v2

    goto :goto_1

    :cond_7
    const/4 v1, 0x4

    invoke-virtual {v5, v1}, Lcom/android/incallui/agif/StickerSettingItem;->setShowCheckbox(I)V

    move v1, v2

    goto :goto_2

    :cond_8
    iget-object v1, p0, Lcom/android/incallui/agif/StickerSettingAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    goto :goto_2

    :cond_9
    const/16 v1, 0x8

    invoke-virtual {v5, v1}, Lcom/android/incallui/agif/StickerSettingItem;->setShowCheckbox(I)V

    iget-object v1, p0, Lcom/android/incallui/agif/StickerSettingAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    move v4, v1

    move v1, v2

    goto :goto_3

    :cond_a
    move v3, v2

    goto :goto_4
.end method

.method public setAllChecked(Z)V
    .locals 3

    iget-object v0, p0, Lcom/android/incallui/agif/StickerSettingAdapter;->mStickerOrderInfo:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/agif/StickerSettingActivity$StickerOrderInfo;

    iget-boolean v2, v0, Lcom/android/incallui/agif/StickerSettingActivity$StickerOrderInfo;->isPreload:Z

    if-nez v2, :cond_0

    iput-boolean p1, v0, Lcom/android/incallui/agif/StickerSettingActivity$StickerOrderInfo;->isChecked:Z

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/android/incallui/agif/StickerSettingAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public setCheckChangeListener(Lcom/android/incallui/agif/StickerSettingAdapter$CheckChangeListener;)V
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/agif/StickerSettingAdapter;->mCheckChangeListener:Lcom/android/incallui/agif/StickerSettingAdapter$CheckChangeListener;

    return-void
.end method

.method public setLongClickListener(Lcom/android/incallui/agif/StickerSettingAdapter$LongClickListener;)V
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/agif/StickerSettingAdapter;->mLongClickListener:Lcom/android/incallui/agif/StickerSettingAdapter$LongClickListener;

    return-void
.end method

.method public setReorderMode(Z)V
    .locals 3

    const-string v0, "StickerSettingAdapter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setReorderMode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    const/4 v0, 0x2

    :goto_0
    iput v0, p0, Lcom/android/incallui/agif/StickerSettingAdapter;->mCurrentMode:I

    invoke-virtual {p0}, Lcom/android/incallui/agif/StickerSettingAdapter;->notifyDataSetChanged()V

    return-void

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method
