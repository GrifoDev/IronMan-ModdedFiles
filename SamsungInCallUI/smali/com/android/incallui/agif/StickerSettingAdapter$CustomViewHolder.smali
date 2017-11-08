.class Lcom/android/incallui/agif/StickerSettingAdapter$CustomViewHolder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/incallui/agif/StickerSettingAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CustomViewHolder"
.end annotation


# instance fields
.field private final mStickerSettingItem:Lcom/android/incallui/agif/StickerSettingItem;

.field final synthetic this$0:Lcom/android/incallui/agif/StickerSettingAdapter;


# direct methods
.method public constructor <init>(Lcom/android/incallui/agif/StickerSettingAdapter;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/agif/StickerSettingAdapter$CustomViewHolder;->this$0:Lcom/android/incallui/agif/StickerSettingAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    check-cast p2, Lcom/android/incallui/agif/StickerSettingItem;

    iput-object p2, p0, Lcom/android/incallui/agif/StickerSettingAdapter$CustomViewHolder;->mStickerSettingItem:Lcom/android/incallui/agif/StickerSettingItem;

    return-void
.end method


# virtual methods
.method public getStickerSettingItem()Lcom/android/incallui/agif/StickerSettingItem;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/agif/StickerSettingAdapter$CustomViewHolder;->mStickerSettingItem:Lcom/android/incallui/agif/StickerSettingItem;

    return-object v0
.end method
