.class public Lcom/android/incallui/agif/AgifRecentImageAdapter;
.super Lcom/android/incallui/agif/AgifImageAdapter;


# static fields
.field protected static final LOG_TAG:Ljava/lang/String; = "AgifRecentImageAdapter"


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/ArrayList;IZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/incallui/agif/AgifLoader$AgifContentsInfo;",
            ">;IZ)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/incallui/agif/AgifImageAdapter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;IZ)V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    iget v0, p0, Lcom/android/incallui/agif/AgifRecentImageAdapter;->mSize:I

    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    invoke-super {p0, p1, p2, p3}, Lcom/android/incallui/agif/AgifImageAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public init(Ljava/util/ArrayList;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/incallui/agif/AgifLoader$AgifContentsInfo;",
            ">;I)V"
        }
    .end annotation

    const/4 v2, 0x6

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/incallui/agif/AgifRecentImageAdapter;->mPackageName:Ljava/lang/String;

    invoke-static {}, Lcom/android/incallui/agif/AgifLoader;->getInstance()Lcom/android/incallui/agif/AgifLoader;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/agif/AgifRecentImageAdapter;->mCallState:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/incallui/agif/AgifLoader;->getAgifStickerRecentInfoSize(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/incallui/agif/AgifRecentImageAdapter;->mSize:I

    iget v0, p0, Lcom/android/incallui/agif/AgifRecentImageAdapter;->mSize:I

    if-le v0, v2, :cond_0

    iput v2, p0, Lcom/android/incallui/agif/AgifRecentImageAdapter;->mSize:I

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    iget v1, p0, Lcom/android/incallui/agif/AgifRecentImageAdapter;->mSize:I

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/android/incallui/agif/AgifRecentImageAdapter;->mAgifContentsInfo:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/android/incallui/agif/AgifRecentImageAdapter;->mAgifContentsInfo:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/android/incallui/agif/AgifRecentImageAdapter;->mSize:I

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/agif/AgifRecentImageAdapter;->mAgifContentsInfo:Ljava/util/ArrayList;

    invoke-static {}, Lcom/android/incallui/agif/AgifLoader;->getInstance()Lcom/android/incallui/agif/AgifLoader;

    move-result-object v1

    iget-object v2, p0, Lcom/android/incallui/agif/AgifRecentImageAdapter;->mCallState:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/android/incallui/agif/AgifLoader;->getAgifStickerRecentInfo(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_1
    return-void
.end method
