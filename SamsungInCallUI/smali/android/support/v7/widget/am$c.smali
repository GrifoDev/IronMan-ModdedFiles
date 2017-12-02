.class Landroid/support/v7/widget/am$c;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/widget/am;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "c"
.end annotation


# instance fields
.field final synthetic a:Landroid/support/v7/widget/am;


# direct methods
.method private constructor <init>(Landroid/support/v7/widget/am;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v7/widget/am$c;->a:Landroid/support/v7/widget/am;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/support/v7/widget/am;Landroid/support/v7/widget/am$1;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/support/v7/widget/am$c;-><init>(Landroid/support/v7/widget/am;)V

    return-void
.end method


# virtual methods
.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 0

    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 2

    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/am$c;->a:Landroid/support/v7/widget/am;

    invoke-virtual {v0}, Landroid/support/v7/widget/am;->n()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/am$c;->a:Landroid/support/v7/widget/am;

    iget-object v0, v0, Landroid/support/v7/widget/am;->c:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/am$c;->a:Landroid/support/v7/widget/am;

    invoke-static {v0}, Landroid/support/v7/widget/am;->c(Landroid/support/v7/widget/am;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v7/widget/am$c;->a:Landroid/support/v7/widget/am;

    invoke-static {v1}, Landroid/support/v7/widget/am;->b(Landroid/support/v7/widget/am;)Landroid/support/v7/widget/am$e;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Landroid/support/v7/widget/am$c;->a:Landroid/support/v7/widget/am;

    invoke-static {v0}, Landroid/support/v7/widget/am;->b(Landroid/support/v7/widget/am;)Landroid/support/v7/widget/am$e;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/widget/am$e;->run()V

    :cond_0
    return-void
.end method
