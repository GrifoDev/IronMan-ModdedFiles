.class public Lcom/android/incallui/agif/StickerSettingItem;
.super Landroid/widget/RelativeLayout;


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "StickerSettingItem"


# instance fields
.field private mArtist:Landroid/widget/TextView;

.field private mCheckBox:Landroid/widget/CheckBox;

.field private mTitle:Landroid/widget/TextView;

.field private mTrayImage:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method public getCheckBox()Landroid/widget/CheckBox;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/agif/StickerSettingItem;->mCheckBox:Landroid/widget/CheckBox;

    return-object v0
.end method

.method protected onFinishInflate()V
    .locals 1

    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    const v0, 0x7f1004a6

    invoke-virtual {p0, v0}, Lcom/android/incallui/agif/StickerSettingItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/android/incallui/agif/StickerSettingItem;->mCheckBox:Landroid/widget/CheckBox;

    const v0, 0x7f1004a8

    invoke-virtual {p0, v0}, Lcom/android/incallui/agif/StickerSettingItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/incallui/agif/StickerSettingItem;->mTrayImage:Landroid/widget/ImageView;

    const v0, 0x7f1004a9

    invoke-virtual {p0, v0}, Lcom/android/incallui/agif/StickerSettingItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/incallui/agif/StickerSettingItem;->mTitle:Landroid/widget/TextView;

    const v0, 0x7f1004aa

    invoke-virtual {p0, v0}, Lcom/android/incallui/agif/StickerSettingItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/incallui/agif/StickerSettingItem;->mArtist:Landroid/widget/TextView;

    return-void
.end method

.method public setChecked(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/agif/StickerSettingItem;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0, p1}, Landroid/widget/CheckBox;->setChecked(Z)V

    iget-object v0, p0, Lcom/android/incallui/agif/StickerSettingItem;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->jumpDrawablesToCurrentState()V

    return-void
.end method

.method public setShowCheckbox(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/agif/StickerSettingItem;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0, p1}, Landroid/widget/CheckBox;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/android/incallui/agif/StickerSettingItem;->invalidate()V

    invoke-virtual {p0}, Lcom/android/incallui/agif/StickerSettingItem;->requestLayout()V

    return-void
.end method

.method public setStickerArtist(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/agif/StickerSettingItem;->mArtist:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/android/incallui/agif/StickerSettingItem;->invalidate()V

    return-void
.end method

.method public setStickerImage(Landroid/graphics/Bitmap;I)V
    .locals 2

    iget-object v0, p0, Lcom/android/incallui/agif/StickerSettingItem;->mTrayImage:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    iget-object v0, p0, Lcom/android/incallui/agif/StickerSettingItem;->mTrayImage:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {v0, p2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    iget-object v1, p0, Lcom/android/incallui/agif/StickerSettingItem;->mTrayImage:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0}, Lcom/android/incallui/agif/StickerSettingItem;->invalidate()V

    return-void
.end method

.method public setStickerTitle(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/agif/StickerSettingItem;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/android/incallui/agif/StickerSettingItem;->invalidate()V

    return-void
.end method
