.class Lcom/android/incallui/agif/StickerSettingActivity$3;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/ActionMode$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/incallui/agif/StickerSettingActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field mCustomView:Landroid/view/View;

.field final synthetic this$0:Lcom/android/incallui/agif/StickerSettingActivity;


# direct methods
.method constructor <init>(Lcom/android/incallui/agif/StickerSettingActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/agif/StickerSettingActivity$3;->this$0:Lcom/android/incallui/agif/StickerSettingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z
    .locals 3

    const-string v0, "StickerSettingActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onActionItemClicked = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :pswitch_0
    iget-object v0, p0, Lcom/android/incallui/agif/StickerSettingActivity$3;->this$0:Lcom/android/incallui/agif/StickerSettingActivity;

    invoke-static {v0}, Lcom/android/incallui/agif/StickerSettingActivity;->access$000(Lcom/android/incallui/agif/StickerSettingActivity;)V

    const/4 v0, 0x1

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x7f10052d
        :pswitch_0
    .end packed-switch
.end method

.method public onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 6

    const/4 v0, 0x0

    const/4 v2, 0x1

    const-string v1, "StickerSettingActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onCreateActionMode = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/view/ActionMode;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v1

    const v3, 0x7f120006

    invoke-virtual {v1, v3, p2}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    iget-object v1, p0, Lcom/android/incallui/agif/StickerSettingActivity$3;->this$0:Lcom/android/incallui/agif/StickerSettingActivity;

    invoke-virtual {v1}, Lcom/android/incallui/agif/StickerSettingActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const v3, 0x7f040189

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/incallui/agif/StickerSettingActivity$3;->mCustomView:Landroid/view/View;

    iget-object v1, p0, Lcom/android/incallui/agif/StickerSettingActivity$3;->mCustomView:Landroid/view/View;

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, -0x2

    const/4 v5, -0x1

    invoke-direct {v3, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lcom/android/incallui/agif/StickerSettingActivity$3;->mCustomView:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/ActionMode;->setCustomView(Landroid/view/View;)V

    iget-object v1, p0, Lcom/android/incallui/agif/StickerSettingActivity$3;->this$0:Lcom/android/incallui/agif/StickerSettingActivity;

    iget-object v1, v1, Lcom/android/incallui/agif/StickerSettingActivity;->mStickerSettingAdapter:Lcom/android/incallui/agif/StickerSettingAdapter;

    invoke-virtual {v1}, Lcom/android/incallui/agif/StickerSettingAdapter;->getAllCheckedCount()I

    move-result v1

    if-nez v1, :cond_0

    move v1, v2

    :goto_0
    iget-object v3, p0, Lcom/android/incallui/agif/StickerSettingActivity$3;->this$0:Lcom/android/incallui/agif/StickerSettingActivity;

    iget-object v4, p0, Lcom/android/incallui/agif/StickerSettingActivity$3;->mCustomView:Landroid/view/View;

    const v5, 0x7f1004c6

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, v3, Lcom/android/incallui/agif/StickerSettingActivity;->mSelectAllContainer:Landroid/view/View;

    if-eqz v1, :cond_1

    iget-object v0, p0, Lcom/android/incallui/agif/StickerSettingActivity$3;->this$0:Lcom/android/incallui/agif/StickerSettingActivity;

    iget-object v0, v0, Lcom/android/incallui/agif/StickerSettingActivity;->mSelectAllContainer:Landroid/view/View;

    const/16 v3, 0x8

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    :goto_1
    iget-object v3, p0, Lcom/android/incallui/agif/StickerSettingActivity$3;->this$0:Lcom/android/incallui/agif/StickerSettingActivity;

    iget-object v0, p0, Lcom/android/incallui/agif/StickerSettingActivity$3;->mCustomView:Landroid/view/View;

    const v4, 0x7f1004c7

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, v3, Lcom/android/incallui/agif/StickerSettingActivity;->mSelectAll:Landroid/widget/CheckBox;

    iget-object v3, p0, Lcom/android/incallui/agif/StickerSettingActivity$3;->this$0:Lcom/android/incallui/agif/StickerSettingActivity;

    iget-object v0, p0, Lcom/android/incallui/agif/StickerSettingActivity$3;->mCustomView:Landroid/view/View;

    const v4, 0x7f1004c9

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v3, Lcom/android/incallui/agif/StickerSettingActivity;->mSelectText:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/android/incallui/agif/StickerSettingActivity$3;->this$0:Lcom/android/incallui/agif/StickerSettingActivity;

    iget-object v0, v0, Lcom/android/incallui/agif/StickerSettingActivity;->mSelectText:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/incallui/agif/StickerSettingActivity$3;->this$0:Lcom/android/incallui/agif/StickerSettingActivity;

    invoke-virtual {v3}, Lcom/android/incallui/agif/StickerSettingActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a05b6

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    iget-object v4, p0, Lcom/android/incallui/agif/StickerSettingActivity$3;->this$0:Lcom/android/incallui/agif/StickerSettingActivity;

    iget-object v4, v4, Lcom/android/incallui/agif/StickerSettingActivity;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/incallui/util/GraphicResourceUtils;->getDensity(Landroid/content/Context;)F

    move-result v4

    div-float/2addr v3, v4

    iget-object v4, p0, Lcom/android/incallui/agif/StickerSettingActivity$3;->this$0:Lcom/android/incallui/agif/StickerSettingActivity;

    iget-object v4, v4, Lcom/android/incallui/agif/StickerSettingActivity;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/incallui/util/GraphicResourceUtils;->setTextSizeUntilLargeSize(Landroid/content/Context;)F

    move-result v4

    mul-float/2addr v3, v4

    invoke-virtual {v0, v2, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    if-eqz v1, :cond_2

    const v0, 0x7f09035e

    :goto_2
    iget-object v3, p0, Lcom/android/incallui/agif/StickerSettingActivity$3;->this$0:Lcom/android/incallui/agif/StickerSettingActivity;

    iget-object v3, v3, Lcom/android/incallui/agif/StickerSettingActivity;->mSelectText:Landroid/widget/TextView;

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(I)V

    if-eqz v1, :cond_3

    const v0, 0x7f0a05b0

    move v1, v0

    :goto_3
    iget-object v0, p0, Lcom/android/incallui/agif/StickerSettingActivity$3;->this$0:Lcom/android/incallui/agif/StickerSettingActivity;

    iget-object v0, v0, Lcom/android/incallui/agif/StickerSettingActivity;->mSelectText:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    iget-object v3, p0, Lcom/android/incallui/agif/StickerSettingActivity$3;->this$0:Lcom/android/incallui/agif/StickerSettingActivity;

    invoke-virtual {v3}, Lcom/android/incallui/agif/StickerSettingActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    iget-object v1, p0, Lcom/android/incallui/agif/StickerSettingActivity$3;->this$0:Lcom/android/incallui/agif/StickerSettingActivity;

    iget-object v1, v1, Lcom/android/incallui/agif/StickerSettingActivity;->mSelectText:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return v2

    :cond_0
    move v1, v0

    goto/16 :goto_0

    :cond_1
    iget-object v3, p0, Lcom/android/incallui/agif/StickerSettingActivity$3;->this$0:Lcom/android/incallui/agif/StickerSettingActivity;

    iget-object v3, v3, Lcom/android/incallui/agif/StickerSettingActivity;->mSelectAllContainer:Landroid/view/View;

    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/incallui/agif/StickerSettingActivity$3;->this$0:Lcom/android/incallui/agif/StickerSettingActivity;

    iget-object v0, v0, Lcom/android/incallui/agif/StickerSettingActivity;->mSelectAllContainer:Landroid/view/View;

    new-instance v3, Lcom/android/incallui/agif/StickerSettingActivity$3$1;

    invoke-direct {v3, p0}, Lcom/android/incallui/agif/StickerSettingActivity$3$1;-><init>(Lcom/android/incallui/agif/StickerSettingActivity$3;)V

    invoke-virtual {v0, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_1

    :cond_2
    const v0, 0x7f09035d

    goto :goto_2

    :cond_3
    const v0, 0x7f0a05b5

    move v1, v0

    goto :goto_3
.end method

.method public onDestroyActionMode(Landroid/view/ActionMode;)V
    .locals 3

    const-string v0, "StickerSettingActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDestroyActionMode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/incallui/agif/StickerSettingActivity$3;->this$0:Lcom/android/incallui/agif/StickerSettingActivity;

    iget v0, v0, Lcom/android/incallui/agif/StickerSettingActivity;->mCurrentMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/incallui/agif/StickerSettingActivity$3;->this$0:Lcom/android/incallui/agif/StickerSettingActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/incallui/agif/StickerSettingActivity;->access$100(Lcom/android/incallui/agif/StickerSettingActivity;I)V

    :cond_0
    return-void
.end method

.method public onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 3

    const-string v0, "StickerSettingActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPrepareActionMode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/android/incallui/agif/StickerSettingActivity$3$2;

    invoke-direct {v1, p0}, Lcom/android/incallui/agif/StickerSettingActivity$3$2;-><init>(Lcom/android/incallui/agif/StickerSettingActivity$3;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    const/4 v0, 0x0

    return v0
.end method
