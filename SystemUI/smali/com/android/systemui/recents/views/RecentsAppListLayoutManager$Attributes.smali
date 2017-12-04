.class public Lcom/android/systemui/recents/views/RecentsAppListLayoutManager$Attributes;
.super Ljava/lang/Object;
.source "RecentsAppListLayoutManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/recents/views/RecentsAppListLayoutManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Attributes"
.end annotation


# instance fields
.field public mHeaderHeight:I

.field public mItemIconWidth:I

.field public mItemTextDarkColor:I

.field public mItemTextShadowColor:I

.field public mItemTextShadowSize:F

.field public mItemTextShadowYDistance:F

.field public mItemTextWhiteColor:I

.field public mOffsetEdge:I

.field public mOffsetGap:I

.field public mOffsetTop:I

.field public mSpanCount:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d03ca

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v0

    iput v0, p0, Lcom/android/systemui/recents/views/RecentsAppListLayoutManager$Attributes;->mItemTextShadowSize:F

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d03cb

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v0

    iput v0, p0, Lcom/android/systemui/recents/views/RecentsAppListLayoutManager$Attributes;->mItemTextShadowYDistance:F

    const v0, 0x7f0b010f

    invoke-virtual {p1, v0}, Landroid/content/Context;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/recents/views/RecentsAppListLayoutManager$Attributes;->mItemTextShadowColor:I

    const v0, 0x7f0b010e

    invoke-virtual {p1, v0}, Landroid/content/Context;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/recents/views/RecentsAppListLayoutManager$Attributes;->mItemTextDarkColor:I

    const v0, 0x7f0b010d

    invoke-virtual {p1, v0}, Landroid/content/Context;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/recents/views/RecentsAppListLayoutManager$Attributes;->mItemTextWhiteColor:I

    invoke-direct {p0, p1}, Lcom/android/systemui/recents/views/RecentsAppListLayoutManager$Attributes;->load(Landroid/content/Context;)V

    return-void
.end method

.method private load(Landroid/content/Context;)V
    .locals 2

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c0063

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/recents/views/RecentsAppListLayoutManager$Attributes;->mSpanCount:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d0470

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/systemui/recents/views/RecentsAppListLayoutManager$Attributes;->mOffsetTop:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d0471

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/systemui/recents/views/RecentsAppListLayoutManager$Attributes;->mOffsetGap:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d0472

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/systemui/recents/views/RecentsAppListLayoutManager$Attributes;->mOffsetEdge:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d0475

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/systemui/recents/views/RecentsAppListLayoutManager$Attributes;->mHeaderHeight:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d047a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/systemui/recents/views/RecentsAppListLayoutManager$Attributes;->mItemIconWidth:I

    return-void
.end method


# virtual methods
.method public reinitialize(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/recents/views/RecentsAppListLayoutManager$Attributes;->load(Landroid/content/Context;)V

    return-void
.end method
