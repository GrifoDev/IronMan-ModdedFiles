.class Lcom/android/incallui/agif/StickerSettingAdapter$3;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/incallui/agif/StickerSettingAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/agif/StickerSettingAdapter;


# direct methods
.method constructor <init>(Lcom/android/incallui/agif/StickerSettingAdapter;)V
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/agif/StickerSettingAdapter$3;->this$0:Lcom/android/incallui/agif/StickerSettingAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/agif/StickerSettingAdapter$3;->this$0:Lcom/android/incallui/agif/StickerSettingAdapter;

    invoke-static {v0}, Lcom/android/incallui/agif/StickerSettingAdapter;->access$200(Lcom/android/incallui/agif/StickerSettingAdapter;)Lcom/android/incallui/agif/StickerSettingAdapter$LongClickListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/agif/StickerSettingAdapter$3;->this$0:Lcom/android/incallui/agif/StickerSettingAdapter;

    invoke-static {v0}, Lcom/android/incallui/agif/StickerSettingAdapter;->access$200(Lcom/android/incallui/agif/StickerSettingAdapter;)Lcom/android/incallui/agif/StickerSettingAdapter$LongClickListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/incallui/agif/StickerSettingAdapter$LongClickListener;->onLongClick(Landroid/view/View;)V

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
