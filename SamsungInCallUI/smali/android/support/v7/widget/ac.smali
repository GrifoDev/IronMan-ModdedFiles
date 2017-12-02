.class Landroid/support/v7/widget/ac;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/support/v7/widget/ad;


# instance fields
.field final a:Landroid/graphics/RectF;


# direct methods
.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/ac;->a:Landroid/graphics/RectF;

    return-void
.end method

.method private a(Landroid/content/Context;IFFF)Landroid/support/v7/widget/as;
    .locals 6

    new-instance v0, Landroid/support/v7/widget/as;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v5}, Landroid/support/v7/widget/as;-><init>(Landroid/content/res/Resources;IFFF)V

    return-object v0
.end method

.method private i(Landroid/support/v7/widget/ab;)Landroid/support/v7/widget/as;
    .locals 1

    invoke-interface {p1}, Landroid/support/v7/widget/ab;->c()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/as;

    return-object v0
.end method


# virtual methods
.method public a(Landroid/support/v7/widget/ab;)F
    .locals 1

    invoke-direct {p0, p1}, Landroid/support/v7/widget/ac;->i(Landroid/support/v7/widget/ab;)Landroid/support/v7/widget/as;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/widget/as;->c()F

    move-result v0

    return v0
.end method

.method public a()V
    .locals 1

    new-instance v0, Landroid/support/v7/widget/ac$1;

    invoke-direct {v0, p0}, Landroid/support/v7/widget/ac$1;-><init>(Landroid/support/v7/widget/ac;)V

    sput-object v0, Landroid/support/v7/widget/as;->c:Landroid/support/v7/widget/as$a;

    return-void
.end method

.method public a(Landroid/support/v7/widget/ab;F)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/support/v7/widget/ac;->i(Landroid/support/v7/widget/ab;)Landroid/support/v7/widget/as;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/support/v7/widget/as;->a(F)V

    invoke-virtual {p0, p1}, Landroid/support/v7/widget/ac;->f(Landroid/support/v7/widget/ab;)V

    return-void
.end method

.method public a(Landroid/support/v7/widget/ab;I)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/support/v7/widget/ac;->i(Landroid/support/v7/widget/ab;)Landroid/support/v7/widget/as;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/support/v7/widget/as;->a(I)V

    return-void
.end method

.method public a(Landroid/support/v7/widget/ab;Landroid/content/Context;IFFF)V
    .locals 6

    move-object v0, p0

    move-object v1, p2

    move v2, p3

    move v3, p4

    move v4, p5

    move v5, p6

    invoke-direct/range {v0 .. v5}, Landroid/support/v7/widget/ac;->a(Landroid/content/Context;IFFF)Landroid/support/v7/widget/as;

    move-result-object v0

    invoke-interface {p1}, Landroid/support/v7/widget/ab;->b()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/as;->a(Z)V

    invoke-interface {p1, v0}, Landroid/support/v7/widget/ab;->a(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0, p1}, Landroid/support/v7/widget/ac;->f(Landroid/support/v7/widget/ab;)V

    return-void
.end method

.method public b(Landroid/support/v7/widget/ab;)F
    .locals 1

    invoke-direct {p0, p1}, Landroid/support/v7/widget/ac;->i(Landroid/support/v7/widget/ab;)Landroid/support/v7/widget/as;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/widget/as;->d()F

    move-result v0

    return v0
.end method

.method public b(Landroid/support/v7/widget/ab;F)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/support/v7/widget/ac;->i(Landroid/support/v7/widget/ab;)Landroid/support/v7/widget/as;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/support/v7/widget/as;->c(F)V

    invoke-virtual {p0, p1}, Landroid/support/v7/widget/ac;->f(Landroid/support/v7/widget/ab;)V

    return-void
.end method

.method public c(Landroid/support/v7/widget/ab;)F
    .locals 1

    invoke-direct {p0, p1}, Landroid/support/v7/widget/ac;->i(Landroid/support/v7/widget/ab;)Landroid/support/v7/widget/as;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/widget/as;->e()F

    move-result v0

    return v0
.end method

.method public c(Landroid/support/v7/widget/ab;F)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/support/v7/widget/ac;->i(Landroid/support/v7/widget/ab;)Landroid/support/v7/widget/as;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/support/v7/widget/as;->b(F)V

    return-void
.end method

.method public d(Landroid/support/v7/widget/ab;)F
    .locals 1

    invoke-direct {p0, p1}, Landroid/support/v7/widget/ac;->i(Landroid/support/v7/widget/ab;)Landroid/support/v7/widget/as;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/widget/as;->a()F

    move-result v0

    return v0
.end method

.method public e(Landroid/support/v7/widget/ab;)F
    .locals 1

    invoke-direct {p0, p1}, Landroid/support/v7/widget/ac;->i(Landroid/support/v7/widget/ab;)Landroid/support/v7/widget/as;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/widget/as;->b()F

    move-result v0

    return v0
.end method

.method public f(Landroid/support/v7/widget/ab;)V
    .locals 4

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    invoke-direct {p0, p1}, Landroid/support/v7/widget/ac;->i(Landroid/support/v7/widget/ab;)Landroid/support/v7/widget/as;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/as;->a(Landroid/graphics/Rect;)V

    invoke-virtual {p0, p1}, Landroid/support/v7/widget/ac;->b(Landroid/support/v7/widget/ab;)F

    move-result v1

    float-to-double v2, v1

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v1, v2

    invoke-virtual {p0, p1}, Landroid/support/v7/widget/ac;->c(Landroid/support/v7/widget/ab;)F

    move-result v2

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v2, v2

    invoke-interface {p1, v1, v2}, Landroid/support/v7/widget/ab;->a(II)V

    iget v1, v0, Landroid/graphics/Rect;->left:I

    iget v2, v0, Landroid/graphics/Rect;->top:I

    iget v3, v0, Landroid/graphics/Rect;->right:I

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    invoke-interface {p1, v1, v2, v3, v0}, Landroid/support/v7/widget/ab;->a(IIII)V

    return-void
.end method

.method public g(Landroid/support/v7/widget/ab;)V
    .locals 0

    return-void
.end method

.method public h(Landroid/support/v7/widget/ab;)V
    .locals 2

    invoke-direct {p0, p1}, Landroid/support/v7/widget/ac;->i(Landroid/support/v7/widget/ab;)Landroid/support/v7/widget/as;

    move-result-object v0

    invoke-interface {p1}, Landroid/support/v7/widget/ab;->b()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/as;->a(Z)V

    invoke-virtual {p0, p1}, Landroid/support/v7/widget/ac;->f(Landroid/support/v7/widget/ab;)V

    return-void
.end method
