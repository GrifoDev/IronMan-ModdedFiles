.class public Lcom/android/incallui/agif/StickerSettingActivity;
.super Landroid/app/Activity;

# interfaces
.implements Lcom/android/incallui/agif/StickerSettingAdapter$CheckChangeListener;
.implements Lcom/android/incallui/agif/StickerSettingAdapter$LongClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/incallui/agif/StickerSettingActivity$AgifOrderObserver;,
        Lcom/android/incallui/agif/StickerSettingActivity$StickerOrderInfo;
    }
.end annotation


# static fields
.field protected static final CURRENT_CHECK_DATA:Ljava/lang/String; = "StickerSettingActivity.current_check_data"

.field protected static final CURRENT_MODE:Ljava/lang/String; = "StickerSettingActivity.current_mode"

.field protected static final EDIT_MODE:I = 0x2

.field protected static final LOG_TAG:Ljava/lang/String; = "StickerSettingActivity"

.field protected static final MENU_ID_EDIT:I = 0x2

.field protected static final NORMAL_MODE:I = 0x1


# instance fields
.field protected mActionMode:Landroid/view/ActionMode;

.field private mActionModeCallback:Landroid/view/ActionMode$Callback;

.field private mAgifOrderObserver:Lcom/android/incallui/agif/StickerSettingActivity$AgifOrderObserver;

.field protected mContext:Landroid/content/Context;

.field protected mCurrentMode:I

.field private mDndAnimator:Lcom/samsung/android/animation/SemDragAndDropListAnimator;

.field protected mIsReCreate:Z

.field private mItemCheckedState:[Z

.field protected mListView:Landroid/widget/ListView;

.field protected mMenu:Landroid/view/Menu;

.field protected mSelectAll:Landroid/widget/CheckBox;

.field protected mSelectAllContainer:Landroid/view/View;

.field protected mSelectText:Landroid/widget/TextView;

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

.field protected mStickerSettingAdapter:Lcom/android/incallui/agif/StickerSettingAdapter;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/incallui/agif/StickerSettingActivity;->mMenu:Landroid/view/Menu;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/incallui/agif/StickerSettingActivity;->mIsReCreate:Z

    new-instance v0, Lcom/android/incallui/agif/StickerSettingActivity$3;

    invoke-direct {v0, p0}, Lcom/android/incallui/agif/StickerSettingActivity$3;-><init>(Lcom/android/incallui/agif/StickerSettingActivity;)V

    iput-object v0, p0, Lcom/android/incallui/agif/StickerSettingActivity;->mActionModeCallback:Landroid/view/ActionMode$Callback;

    return-void
.end method

.method static synthetic access$000(Lcom/android/incallui/agif/StickerSettingActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/incallui/agif/StickerSettingActivity;->showDeleteStickerDialog()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/incallui/agif/StickerSettingActivity;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/incallui/agif/StickerSettingActivity;->onModeChanged(I)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/incallui/agif/StickerSettingActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/incallui/agif/StickerSettingActivity;->stopActionMode()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/incallui/agif/StickerSettingActivity;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/agif/StickerSettingActivity;->mStickerOrderInfo:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$302(Lcom/android/incallui/agif/StickerSettingActivity;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/agif/StickerSettingActivity;->mStickerOrderInfo:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic access$400(Lcom/android/incallui/agif/StickerSettingActivity;)[Z
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/agif/StickerSettingActivity;->mItemCheckedState:[Z

    return-object v0
.end method

.method static synthetic access$402(Lcom/android/incallui/agif/StickerSettingActivity;[Z)[Z
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/agif/StickerSettingActivity;->mItemCheckedState:[Z

    return-object p1
.end method

.method static synthetic access$500(Lcom/android/incallui/agif/StickerSettingActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/incallui/agif/StickerSettingActivity;->inflateStickerSettingList()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/incallui/agif/StickerSettingActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/incallui/agif/StickerSettingActivity;->loadStickerOrder()V

    return-void
.end method

.method private clearStickerOrderInfo()V
    .locals 2

    const-string v0, "StickerSettingActivity"

    const-string v1, "clearStickerOrderInfo() - "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/incallui/agif/StickerSettingActivity;->mStickerOrderInfo:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/android/incallui/agif/StickerSettingActivity;->mStickerOrderInfo:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/agif/StickerSettingActivity;->mStickerOrderInfo:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/agif/StickerSettingActivity;->mStickerOrderInfo:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/agif/StickerSettingActivity$StickerOrderInfo;

    invoke-virtual {v0}, Lcom/android/incallui/agif/StickerSettingActivity$StickerOrderInfo;->clear()V

    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    return-void
.end method

.method private inflateStickerSettingList()V
    .locals 3

    const/4 v2, 0x2

    const-string v0, "StickerSettingActivity"

    const-string v1, "inflateStickerSettingList()"

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/incallui/agif/StickerSettingActivity;->mStickerOrderInfo:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    const-string v0, "StickerSettingActivity"

    const-string v1, "The StickerOrderInfo is null."

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v0, Lcom/android/incallui/agif/StickerSettingAdapter;

    iget-object v1, p0, Lcom/android/incallui/agif/StickerSettingActivity;->mStickerOrderInfo:Ljava/util/ArrayList;

    invoke-direct {v0, p0, v1}, Lcom/android/incallui/agif/StickerSettingAdapter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;)V

    iput-object v0, p0, Lcom/android/incallui/agif/StickerSettingActivity;->mStickerSettingAdapter:Lcom/android/incallui/agif/StickerSettingAdapter;

    iget-object v0, p0, Lcom/android/incallui/agif/StickerSettingActivity;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/android/incallui/agif/StickerSettingActivity;->mStickerSettingAdapter:Lcom/android/incallui/agif/StickerSettingAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v0, p0, Lcom/android/incallui/agif/StickerSettingActivity;->mListView:Landroid/widget/ListView;

    new-instance v1, Lcom/android/incallui/agif/StickerSettingActivity$1;

    invoke-direct {v1, p0}, Lcom/android/incallui/agif/StickerSettingActivity$1;-><init>(Lcom/android/incallui/agif/StickerSettingActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    iget-object v0, p0, Lcom/android/incallui/agif/StickerSettingActivity;->mListView:Landroid/widget/ListView;

    new-instance v1, Lcom/android/incallui/agif/StickerSettingActivity$2;

    invoke-direct {v1, p0}, Lcom/android/incallui/agif/StickerSettingActivity$2;-><init>(Lcom/android/incallui/agif/StickerSettingActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    iget-object v0, p0, Lcom/android/incallui/agif/StickerSettingActivity;->mStickerSettingAdapter:Lcom/android/incallui/agif/StickerSettingAdapter;

    invoke-virtual {v0, p0}, Lcom/android/incallui/agif/StickerSettingAdapter;->setCheckChangeListener(Lcom/android/incallui/agif/StickerSettingAdapter$CheckChangeListener;)V

    iget-object v0, p0, Lcom/android/incallui/agif/StickerSettingActivity;->mStickerSettingAdapter:Lcom/android/incallui/agif/StickerSettingAdapter;

    invoke-virtual {v0, p0}, Lcom/android/incallui/agif/StickerSettingAdapter;->setLongClickListener(Lcom/android/incallui/agif/StickerSettingAdapter$LongClickListener;)V

    iget-object v0, p0, Lcom/android/incallui/agif/StickerSettingActivity;->mStickerSettingAdapter:Lcom/android/incallui/agif/StickerSettingAdapter;

    invoke-virtual {v0}, Lcom/android/incallui/agif/StickerSettingAdapter;->notifyDataSetChanged()V

    new-instance v0, Lcom/samsung/android/animation/SemDragAndDropListAnimator;

    iget-object v1, p0, Lcom/android/incallui/agif/StickerSettingActivity;->mListView:Landroid/widget/ListView;

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/animation/SemDragAndDropListAnimator;-><init>(Landroid/content/Context;Landroid/widget/ListView;)V

    iput-object v0, p0, Lcom/android/incallui/agif/StickerSettingActivity;->mDndAnimator:Lcom/samsung/android/animation/SemDragAndDropListAnimator;

    iget-object v0, p0, Lcom/android/incallui/agif/StickerSettingActivity;->mDndAnimator:Lcom/samsung/android/animation/SemDragAndDropListAnimator;

    iget-object v1, p0, Lcom/android/incallui/agif/StickerSettingActivity;->mStickerSettingAdapter:Lcom/android/incallui/agif/StickerSettingAdapter;

    invoke-virtual {v0, v1}, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->setDragAndDropController(Lcom/samsung/android/animation/SemAbsDragAndDropAnimator$DragAndDropController;)V

    iget-object v0, p0, Lcom/android/incallui/agif/StickerSettingActivity;->mDndAnimator:Lcom/samsung/android/animation/SemDragAndDropListAnimator;

    const v1, 0x7f020364

    invoke-virtual {v0, v1}, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->setDragGrabHandleDrawable(I)V

    iget-object v0, p0, Lcom/android/incallui/agif/StickerSettingActivity;->mDndAnimator:Lcom/samsung/android/animation/SemDragAndDropListAnimator;

    const v1, 0x800005

    invoke-virtual {v0, v1}, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->setDragGrabHandlePositionGravity(I)V

    iget v0, p0, Lcom/android/incallui/agif/StickerSettingActivity;->mCurrentMode:I

    if-ne v0, v2, :cond_0

    iget-boolean v0, p0, Lcom/android/incallui/agif/StickerSettingActivity;->mIsReCreate:Z

    if-eqz v0, :cond_2

    invoke-direct {p0, v2}, Lcom/android/incallui/agif/StickerSettingActivity;->onModeChanged(I)V

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Lcom/android/incallui/agif/StickerSettingActivity;->stopActionMode()V

    goto :goto_0
.end method

.method private initMenuItem()V
    .locals 4

    const/4 v3, 0x2

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/incallui/agif/StickerSettingActivity;->mMenu:Landroid/view/Menu;

    const v1, 0x7f090361

    invoke-interface {v0, v2, v3, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    return-void
.end method

.method private loadStickerOrder()V
    .locals 8

    const/4 v2, 0x0

    const-string v0, "support_sticker_center"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/android/incallui/agif/StickerSettingActivity$6;

    invoke-virtual {p0}, Lcom/android/incallui/agif/StickerSettingActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/incallui/agif/StickerSettingActivity$6;-><init>(Lcom/android/incallui/agif/StickerSettingActivity;Landroid/content/ContentResolver;)V

    const/4 v1, 0x0

    sget-object v3, Lcom/android/incallui/agif/AgifCallContract;->CONTENT_URI_STICKER_ORDER:Landroid/net/Uri;

    const-string v7, "package_order DESC"

    move-object v4, v2

    move-object v5, v2

    move-object v6, v2

    invoke-virtual/range {v0 .. v7}, Landroid/content/AsyncQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private notifyUpdateOrderList()V
    .locals 3

    sget-object v0, Lcom/android/incallui/agif/AgifCallContract;->CONTENT_URI_STICKER_ORDER:Landroid/net/Uri;

    const-string v1, "notify_update"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/incallui/agif/StickerSettingActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    return-void
.end method

.method private onModeChanged(I)V
    .locals 7

    const/4 v4, 0x2

    const/4 v6, 0x1

    const/4 v2, 0x0

    const-string v0, "StickerSettingActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onModeChanged() - "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-ne p1, v4, :cond_1

    iget-object v0, p0, Lcom/android/incallui/agif/StickerSettingActivity;->mActionModeCallback:Landroid/view/ActionMode$Callback;

    invoke-virtual {p0, v0}, Lcom/android/incallui/agif/StickerSettingActivity;->startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/agif/StickerSettingActivity;->mActionMode:Landroid/view/ActionMode;

    iput v4, p0, Lcom/android/incallui/agif/StickerSettingActivity;->mCurrentMode:I

    iget-object v0, p0, Lcom/android/incallui/agif/StickerSettingActivity;->mStickerSettingAdapter:Lcom/android/incallui/agif/StickerSettingAdapter;

    invoke-virtual {v0, v6}, Lcom/android/incallui/agif/StickerSettingAdapter;->setReorderMode(Z)V

    invoke-virtual {p0}, Lcom/android/incallui/agif/StickerSettingActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a05ad

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    invoke-static {}, Lcom/android/incallui/util/InCallUtils;->isRtl()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/agif/StickerSettingActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a05ae

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    :cond_0
    iget-object v1, p0, Lcom/android/incallui/agif/StickerSettingActivity;->mDndAnimator:Lcom/samsung/android/animation/SemDragAndDropListAnimator;

    invoke-virtual {v1, v0, v2, v0, v2}, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->setDragGrabHandlePadding(IIII)V

    iget-object v0, p0, Lcom/android/incallui/agif/StickerSettingActivity;->mDndAnimator:Lcom/samsung/android/animation/SemDragAndDropListAnimator;

    invoke-virtual {v0, v6}, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->setDraggable(Z)V

    invoke-virtual {p0}, Lcom/android/incallui/agif/StickerSettingActivity;->onCheckChange()V

    invoke-direct {p0}, Lcom/android/incallui/agif/StickerSettingActivity;->updateMenuItem()V

    :goto_0
    return-void

    :cond_1
    iget v0, p0, Lcom/android/incallui/agif/StickerSettingActivity;->mCurrentMode:I

    if-ne v0, v4, :cond_3

    iget-object v0, p0, Lcom/android/incallui/agif/StickerSettingActivity;->mStickerSettingAdapter:Lcom/android/incallui/agif/StickerSettingAdapter;

    invoke-virtual {v0}, Lcom/android/incallui/agif/StickerSettingAdapter;->getCount()I

    move-result v3

    move v1, v2

    :goto_1
    if-ge v1, v3, :cond_3

    iget-object v0, p0, Lcom/android/incallui/agif/StickerSettingActivity;->mStickerSettingAdapter:Lcom/android/incallui/agif/StickerSettingAdapter;

    invoke-virtual {v0, v1}, Lcom/android/incallui/agif/StickerSettingAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/android/incallui/agif/StickerSettingActivity$StickerOrderInfo;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/incallui/agif/StickerSettingActivity;->mStickerSettingAdapter:Lcom/android/incallui/agif/StickerSettingAdapter;

    invoke-virtual {v0, v1}, Lcom/android/incallui/agif/StickerSettingAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/agif/StickerSettingActivity$StickerOrderInfo;

    iget-object v4, v0, Lcom/android/incallui/agif/StickerSettingActivity$StickerOrderInfo;->packageName:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/incallui/agif/StickerSettingActivity;->mStickerSettingAdapter:Lcom/android/incallui/agif/StickerSettingAdapter;

    invoke-virtual {v0, v1}, Lcom/android/incallui/agif/StickerSettingAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/agif/StickerSettingActivity$StickerOrderInfo;

    iget-boolean v0, v0, Lcom/android/incallui/agif/StickerSettingActivity$StickerOrderInfo;->isPreload:Z

    sub-int v5, v3, v1

    invoke-static {p0, v4, v5, v0}, Lcom/android/incallui/agif/AgifCallServiceUtils;->updateStickerOrder(Landroid/content/Context;Ljava/lang/String;IZ)V

    :cond_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/incallui/agif/StickerSettingActivity;->mActionMode:Landroid/view/ActionMode;

    iput v6, p0, Lcom/android/incallui/agif/StickerSettingActivity;->mCurrentMode:I

    iget-object v0, p0, Lcom/android/incallui/agif/StickerSettingActivity;->mStickerSettingAdapter:Lcom/android/incallui/agif/StickerSettingAdapter;

    invoke-virtual {v0, v2}, Lcom/android/incallui/agif/StickerSettingAdapter;->setReorderMode(Z)V

    iget-object v0, p0, Lcom/android/incallui/agif/StickerSettingActivity;->mDndAnimator:Lcom/samsung/android/animation/SemDragAndDropListAnimator;

    invoke-virtual {v0, v2}, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->setDraggable(Z)V

    invoke-direct {p0}, Lcom/android/incallui/agif/StickerSettingActivity;->notifyUpdateOrderList()V

    goto :goto_0
.end method

.method private showDeleteStickerDialog()V
    .locals 5

    const/4 v4, 0x1

    iget-object v0, p0, Lcom/android/incallui/agif/StickerSettingActivity;->mStickerSettingAdapter:Lcom/android/incallui/agif/StickerSettingAdapter;

    invoke-virtual {v0}, Lcom/android/incallui/agif/StickerSettingAdapter;->getCheckedCount()I

    move-result v0

    if-le v0, v4, :cond_0

    const v1, 0x7f09035b

    new-array v2, v4, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v3

    invoke-virtual {p0, v1, v2}, Lcom/android/incallui/agif/StickerSettingActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f090360

    new-instance v3, Lcom/android/incallui/agif/StickerSettingActivity$4;

    invoke-direct {v3, p0}, Lcom/android/incallui/agif/StickerSettingActivity$4;-><init>(Lcom/android/incallui/agif/StickerSettingActivity;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const/high16 v2, 0x1040000

    new-instance v3, Lcom/android/incallui/agif/StickerSettingActivity$5;

    invoke-direct {v3, p0}, Lcom/android/incallui/agif/StickerSettingActivity$5;-><init>(Lcom/android/incallui/agif/StickerSettingActivity;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog;->requestWindowFeature(I)Z

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    return-void

    :cond_0
    const v0, 0x7f09035c

    invoke-virtual {p0, v0}, Lcom/android/incallui/agif/StickerSettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private stopActionMode()V
    .locals 2

    const-string v0, "StickerSettingActivity"

    const-string v1, "stopActionMode = "

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/incallui/agif/StickerSettingActivity;->mActionMode:Landroid/view/ActionMode;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/agif/StickerSettingActivity;->mActionMode:Landroid/view/ActionMode;

    invoke-virtual {v0}, Landroid/view/ActionMode;->finish()V

    :cond_0
    return-void
.end method

.method private updateMenuItem()V
    .locals 4

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/incallui/agif/StickerSettingActivity;->mActionMode:Landroid/view/ActionMode;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/agif/StickerSettingActivity;->mActionMode:Landroid/view/ActionMode;

    invoke-virtual {v0}, Landroid/view/ActionMode;->getMenu()Landroid/view/Menu;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/agif/StickerSettingActivity;->mActionMode:Landroid/view/ActionMode;

    invoke-virtual {v0}, Landroid/view/ActionMode;->getMenu()Landroid/view/Menu;

    move-result-object v0

    const v3, 0x7f10052d

    invoke-interface {v0, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v0, p0, Lcom/android/incallui/agif/StickerSettingActivity;->mStickerSettingAdapter:Lcom/android/incallui/agif/StickerSettingAdapter;

    invoke-virtual {v0}, Lcom/android/incallui/agif/StickerSettingAdapter;->getAllCheckedCount()I

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    :goto_0
    invoke-interface {v3, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    iget-object v0, p0, Lcom/android/incallui/agif/StickerSettingActivity;->mStickerSettingAdapter:Lcom/android/incallui/agif/StickerSettingAdapter;

    invoke-virtual {v0}, Lcom/android/incallui/agif/StickerSettingAdapter;->getCheckedCount()I

    move-result v0

    if-lez v0, :cond_2

    :goto_1
    invoke-interface {v3, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    :cond_0
    return-void

    :cond_1
    move v0, v2

    goto :goto_0

    :cond_2
    move v1, v2

    goto :goto_1
.end method


# virtual methods
.method public onBackPressed()V
    .locals 0

    invoke-virtual {p0}, Lcom/android/incallui/agif/StickerSettingActivity;->finishAndRemoveTask()V

    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    return-void
.end method

.method public onCheckChange()V
    .locals 4

    const/4 v1, 0x1

    const/4 v2, 0x0

    const-string v0, "StickerSettingActivity"

    const-string v3, "onCheckChange"

    invoke-static {v0, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/incallui/agif/StickerSettingActivity;->mStickerSettingAdapter:Lcom/android/incallui/agif/StickerSettingAdapter;

    invoke-virtual {v0}, Lcom/android/incallui/agif/StickerSettingAdapter;->getAllCheckedCount()I

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    :goto_0
    iget-object v3, p0, Lcom/android/incallui/agif/StickerSettingActivity;->mSelectText:Landroid/widget/TextView;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/incallui/agif/StickerSettingActivity;->mSelectAll:Landroid/widget/CheckBox;

    if-eqz v3, :cond_0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/agif/StickerSettingActivity;->mStickerSettingAdapter:Lcom/android/incallui/agif/StickerSettingAdapter;

    invoke-virtual {v0}, Lcom/android/incallui/agif/StickerSettingAdapter;->getCheckedCount()I

    move-result v0

    if-lez v0, :cond_3

    iget-object v0, p0, Lcom/android/incallui/agif/StickerSettingActivity;->mSelectText:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/incallui/agif/StickerSettingActivity;->mStickerSettingAdapter:Lcom/android/incallui/agif/StickerSettingAdapter;

    invoke-virtual {v3}, Lcom/android/incallui/agif/StickerSettingAdapter;->getCheckedCount()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/incallui/agif/StickerSettingActivity;->mStickerSettingAdapter:Lcom/android/incallui/agif/StickerSettingAdapter;

    invoke-virtual {v0}, Lcom/android/incallui/agif/StickerSettingAdapter;->getCheckedCount()I

    move-result v0

    iget-object v3, p0, Lcom/android/incallui/agif/StickerSettingActivity;->mStickerSettingAdapter:Lcom/android/incallui/agif/StickerSettingAdapter;

    invoke-virtual {v3}, Lcom/android/incallui/agif/StickerSettingAdapter;->getAllCheckedCount()I

    move-result v3

    if-ge v0, v3, :cond_2

    iget-object v0, p0, Lcom/android/incallui/agif/StickerSettingActivity;->mSelectAll:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/agif/StickerSettingActivity;->mSelectAll:Landroid/widget/CheckBox;

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    :cond_0
    :goto_1
    invoke-direct {p0}, Lcom/android/incallui/agif/StickerSettingActivity;->updateMenuItem()V

    return-void

    :cond_1
    move v0, v2

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/incallui/agif/StickerSettingActivity;->mSelectText:Landroid/widget/TextView;

    const v2, 0x7f090362

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/android/incallui/agif/StickerSettingActivity;->mSelectAll:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/agif/StickerSettingActivity;->mSelectAll:Landroid/widget/CheckBox;

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/android/incallui/agif/StickerSettingActivity;->mSelectText:Landroid/widget/TextView;

    const v1, 0x7f09035d

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/android/incallui/agif/StickerSettingActivity;->mSelectAll:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/agif/StickerSettingActivity;->mSelectAll:Landroid/widget/CheckBox;

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_1
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    const/4 v3, 0x1

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const-string v0, "StickerSettingActivity"

    const-string v1, "onCreate()"

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    const v0, 0x7f040187

    invoke-virtual {p0, v0}, Lcom/android/incallui/agif/StickerSettingActivity;->setContentView(I)V

    invoke-virtual {p0}, Lcom/android/incallui/agif/StickerSettingActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, v3}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    :cond_0
    const v0, 0x7f09035f

    invoke-virtual {p0, v0}, Lcom/android/incallui/agif/StickerSettingActivity;->setTitle(I)V

    iput-object p0, p0, Lcom/android/incallui/agif/StickerSettingActivity;->mContext:Landroid/content/Context;

    if-eqz p1, :cond_3

    const-string v0, "StickerSettingActivity.current_mode"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "StickerSettingActivity.current_mode"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/incallui/agif/StickerSettingActivity;->mCurrentMode:I

    iput-boolean v3, p0, Lcom/android/incallui/agif/StickerSettingActivity;->mIsReCreate:Z

    :goto_0
    if-eqz p1, :cond_1

    const-string v0, "StickerSettingActivity.current_check_data"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "StickerSettingActivity.current_check_data"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBooleanArray(Ljava/lang/String;)[Z

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/agif/StickerSettingActivity;->mItemCheckedState:[Z

    :cond_1
    const v0, 0x7f1004bf

    invoke-virtual {p0, v0}, Lcom/android/incallui/agif/StickerSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/android/incallui/agif/StickerSettingActivity;->mListView:Landroid/widget/ListView;

    iget-object v0, p0, Lcom/android/incallui/agif/StickerSettingActivity;->mListView:Landroid/widget/ListView;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setChoiceMode(I)V

    invoke-direct {p0}, Lcom/android/incallui/agif/StickerSettingActivity;->loadStickerOrder()V

    const-string v0, "support_sticker_center"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/android/incallui/agif/StickerCenterManager;->getInstance()Lcom/android/incallui/agif/StickerCenterManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/agif/StickerCenterManager;->init(Landroid/content/Context;)V

    :cond_2
    new-instance v0, Lcom/android/incallui/agif/StickerSettingActivity$AgifOrderObserver;

    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {v0, p0, v1}, Lcom/android/incallui/agif/StickerSettingActivity$AgifOrderObserver;-><init>(Lcom/android/incallui/agif/StickerSettingActivity;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/incallui/agif/StickerSettingActivity;->mAgifOrderObserver:Lcom/android/incallui/agif/StickerSettingActivity$AgifOrderObserver;

    invoke-virtual {p0}, Lcom/android/incallui/agif/StickerSettingActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/incallui/agif/AgifCallContract;->CONTENT_URI_STICKER_ORDER:Landroid/net/Uri;

    iget-object v2, p0, Lcom/android/incallui/agif/StickerSettingActivity;->mAgifOrderObserver:Lcom/android/incallui/agif/StickerSettingActivity$AgifOrderObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void

    :cond_3
    iput v3, p0, Lcom/android/incallui/agif/StickerSettingActivity;->mCurrentMode:I

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 1

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    iput-object p1, p0, Lcom/android/incallui/agif/StickerSettingActivity;->mMenu:Landroid/view/Menu;

    invoke-direct {p0}, Lcom/android/incallui/agif/StickerSettingActivity;->initMenuItem()V

    const/4 v0, 0x1

    return v0
.end method

.method protected onDestroy()V
    .locals 3

    const/4 v2, 0x0

    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    const-string v0, "StickerSettingActivity"

    const-string v1, "onDestroy()"

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/incallui/agif/StickerSettingActivity;->clearStickerOrderInfo()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/incallui/agif/StickerSettingActivity;->mCurrentMode:I

    iget-object v0, p0, Lcom/android/incallui/agif/StickerSettingActivity;->mActionMode:Landroid/view/ActionMode;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/agif/StickerSettingActivity;->mActionMode:Landroid/view/ActionMode;

    invoke-virtual {v0}, Landroid/view/ActionMode;->finish()V

    iput-object v2, p0, Lcom/android/incallui/agif/StickerSettingActivity;->mActionMode:Landroid/view/ActionMode;

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/agif/StickerSettingActivity;->mAgifOrderObserver:Lcom/android/incallui/agif/StickerSettingActivity$AgifOrderObserver;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/incallui/agif/StickerSettingActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/agif/StickerSettingActivity;->mAgifOrderObserver:Lcom/android/incallui/agif/StickerSettingActivity$AgifOrderObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    iput-object v2, p0, Lcom/android/incallui/agif/StickerSettingActivity;->mAgifOrderObserver:Lcom/android/incallui/agif/StickerSettingActivity$AgifOrderObserver;

    :cond_1
    iget-object v0, p0, Lcom/android/incallui/agif/StickerSettingActivity;->mItemCheckedState:[Z

    if-eqz v0, :cond_2

    iput-object v2, p0, Lcom/android/incallui/agif/StickerSettingActivity;->mItemCheckedState:[Z

    :cond_2
    invoke-static {}, Lcom/android/incallui/agif/StickerCenterManager;->getInstance()Lcom/android/incallui/agif/StickerCenterManager;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/android/incallui/agif/StickerCenterManager;->getInstance()Lcom/android/incallui/agif/StickerCenterManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/agif/StickerCenterManager;->tearDown()V

    :cond_3
    return-void
.end method

.method public onLongClick(Landroid/view/View;)V
    .locals 2

    const-string v0, "StickerSettingActivity"

    const-string v1, "onLongClick"

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget v0, p0, Lcom/android/incallui/agif/StickerSettingActivity;->mCurrentMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/android/incallui/agif/StickerSettingActivity;->onModeChanged(I)V

    :cond_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    :goto_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_1
    return v0

    :sswitch_0
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/android/incallui/agif/StickerSettingActivity;->onModeChanged(I)V

    goto :goto_0

    :sswitch_1
    invoke-virtual {p0}, Lcom/android/incallui/agif/StickerSettingActivity;->finishAndRemoveTask()V

    const/4 v0, 0x1

    goto :goto_1

    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_0
        0x102002c -> :sswitch_1
    .end sparse-switch
.end method

.method protected onPause()V
    .locals 2

    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    const-string v0, "StickerSettingActivity"

    const-string v1, "onPause()"

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/incallui/agif/StickerSettingActivity;->finishAndRemoveTask()V

    return-void
.end method

.method protected onResume()V
    .locals 2

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    const-string v0, "StickerSettingActivity"

    const-string v1, "onResume()"

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 5

    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    const-string v0, "StickerSettingActivity"

    const-string v1, "onSaveInstanceState()"

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "StickerSettingActivity.current_mode"

    iget v1, p0, Lcom/android/incallui/agif/StickerSettingActivity;->mCurrentMode:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget v0, p0, Lcom/android/incallui/agif/StickerSettingActivity;->mCurrentMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/android/incallui/agif/StickerSettingActivity;->mStickerSettingAdapter:Lcom/android/incallui/agif/StickerSettingAdapter;

    invoke-virtual {v0}, Lcom/android/incallui/agif/StickerSettingAdapter;->getCount()I

    move-result v2

    new-array v0, v2, [Z

    iput-object v0, p0, Lcom/android/incallui/agif/StickerSettingActivity;->mItemCheckedState:[Z

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_1

    iget-object v0, p0, Lcom/android/incallui/agif/StickerSettingActivity;->mStickerSettingAdapter:Lcom/android/incallui/agif/StickerSettingAdapter;

    invoke-virtual {v0, v1}, Lcom/android/incallui/agif/StickerSettingAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/android/incallui/agif/StickerSettingActivity$StickerOrderInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/agif/StickerSettingActivity;->mStickerSettingAdapter:Lcom/android/incallui/agif/StickerSettingAdapter;

    invoke-virtual {v0, v1}, Lcom/android/incallui/agif/StickerSettingAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/agif/StickerSettingActivity$StickerOrderInfo;

    iget-object v3, v0, Lcom/android/incallui/agif/StickerSettingActivity$StickerOrderInfo;->packageName:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/incallui/agif/StickerSettingActivity;->mStickerSettingAdapter:Lcom/android/incallui/agif/StickerSettingAdapter;

    invoke-virtual {v0, v1}, Lcom/android/incallui/agif/StickerSettingAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/agif/StickerSettingActivity$StickerOrderInfo;

    iget-boolean v0, v0, Lcom/android/incallui/agif/StickerSettingActivity$StickerOrderInfo;->isPreload:Z

    sub-int v4, v2, v1

    invoke-static {p0, v3, v4, v0}, Lcom/android/incallui/agif/AgifCallServiceUtils;->updateStickerOrder(Landroid/content/Context;Ljava/lang/String;IZ)V

    iget-object v3, p0, Lcom/android/incallui/agif/StickerSettingActivity;->mItemCheckedState:[Z

    iget-object v0, p0, Lcom/android/incallui/agif/StickerSettingActivity;->mStickerSettingAdapter:Lcom/android/incallui/agif/StickerSettingAdapter;

    invoke-virtual {v0, v1}, Lcom/android/incallui/agif/StickerSettingAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/agif/StickerSettingActivity$StickerOrderInfo;

    iget-boolean v0, v0, Lcom/android/incallui/agif/StickerSettingActivity$StickerOrderInfo;->isChecked:Z

    aput-boolean v0, v3, v1

    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/incallui/agif/StickerSettingActivity;->mStickerSettingAdapter:Lcom/android/incallui/agif/StickerSettingAdapter;

    invoke-virtual {v0}, Lcom/android/incallui/agif/StickerSettingAdapter;->getCheckedCount()I

    move-result v0

    if-lez v0, :cond_2

    const-string v0, "StickerSettingActivity.current_check_data"

    iget-object v1, p0, Lcom/android/incallui/agif/StickerSettingActivity;->mItemCheckedState:[Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBooleanArray(Ljava/lang/String;[Z)V

    :cond_2
    return-void
.end method
