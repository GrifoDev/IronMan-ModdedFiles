.class Lcom/android/incallui/agif/StickerSettingActivity$3$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/incallui/agif/StickerSettingActivity$3;->onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/incallui/agif/StickerSettingActivity$3;


# direct methods
.method constructor <init>(Lcom/android/incallui/agif/StickerSettingActivity$3;)V
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/agif/StickerSettingActivity$3$1;->this$1:Lcom/android/incallui/agif/StickerSettingActivity$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/android/incallui/agif/StickerSettingActivity$3$1;->this$1:Lcom/android/incallui/agif/StickerSettingActivity$3;

    iget-object v0, v0, Lcom/android/incallui/agif/StickerSettingActivity$3;->this$0:Lcom/android/incallui/agif/StickerSettingActivity;

    iget-object v0, v0, Lcom/android/incallui/agif/StickerSettingActivity;->mSelectAll:Landroid/widget/CheckBox;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/agif/StickerSettingActivity$3$1;->this$1:Lcom/android/incallui/agif/StickerSettingActivity$3;

    iget-object v0, v0, Lcom/android/incallui/agif/StickerSettingActivity$3;->this$0:Lcom/android/incallui/agif/StickerSettingActivity;

    iget-object v0, v0, Lcom/android/incallui/agif/StickerSettingActivity;->mSelectAll:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/agif/StickerSettingActivity$3$1;->this$1:Lcom/android/incallui/agif/StickerSettingActivity$3;

    iget-object v0, v0, Lcom/android/incallui/agif/StickerSettingActivity$3;->this$0:Lcom/android/incallui/agif/StickerSettingActivity;

    iget-object v0, v0, Lcom/android/incallui/agif/StickerSettingActivity;->mSelectAll:Landroid/widget/CheckBox;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    :goto_0
    iget-object v0, p0, Lcom/android/incallui/agif/StickerSettingActivity$3$1;->this$1:Lcom/android/incallui/agif/StickerSettingActivity$3;

    iget-object v0, v0, Lcom/android/incallui/agif/StickerSettingActivity$3;->this$0:Lcom/android/incallui/agif/StickerSettingActivity;

    iget-object v0, v0, Lcom/android/incallui/agif/StickerSettingActivity;->mStickerSettingAdapter:Lcom/android/incallui/agif/StickerSettingAdapter;

    iget-object v1, p0, Lcom/android/incallui/agif/StickerSettingActivity$3$1;->this$1:Lcom/android/incallui/agif/StickerSettingActivity$3;

    iget-object v1, v1, Lcom/android/incallui/agif/StickerSettingActivity$3;->this$0:Lcom/android/incallui/agif/StickerSettingActivity;

    iget-object v1, v1, Lcom/android/incallui/agif/StickerSettingActivity;->mSelectAll:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/incallui/agif/StickerSettingAdapter;->setAllChecked(Z)V

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/incallui/agif/StickerSettingActivity$3$1;->this$1:Lcom/android/incallui/agif/StickerSettingActivity$3;

    iget-object v0, v0, Lcom/android/incallui/agif/StickerSettingActivity$3;->this$0:Lcom/android/incallui/agif/StickerSettingActivity;

    iget-object v0, v0, Lcom/android/incallui/agif/StickerSettingActivity;->mSelectAll:Landroid/widget/CheckBox;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_0
.end method
