.class Lcom/android/incallui/agif/AgifImageView$1;
.super Landroid/view/ViewOutlineProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/incallui/agif/AgifImageView;->setGifDrawableBackground()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/agif/AgifImageView;


# direct methods
.method constructor <init>(Lcom/android/incallui/agif/AgifImageView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/agif/AgifImageView$1;->this$0:Lcom/android/incallui/agif/AgifImageView;

    invoke-direct {p0}, Landroid/view/ViewOutlineProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public getOutline(Landroid/view/View;Landroid/graphics/Outline;)V
    .locals 6

    const/4 v1, 0x0

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v3

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v4

    iget-object v0, p0, Lcom/android/incallui/agif/AgifImageView$1;->this$0:Lcom/android/incallui/agif/AgifImageView;

    iget-object v0, v0, Lcom/android/incallui/agif/AgifImageView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0a02cf

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iget-object v2, p0, Lcom/android/incallui/agif/AgifImageView$1;->this$0:Lcom/android/incallui/agif/AgifImageView;

    iget v2, v2, Lcom/android/incallui/agif/AgifImageView;->mOffset:F

    add-float v5, v0, v2

    move-object v0, p2

    move v2, v1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Outline;->setRoundRect(IIIIF)V

    return-void
.end method
