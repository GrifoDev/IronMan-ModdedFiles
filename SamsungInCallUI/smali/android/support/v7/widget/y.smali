.class Landroid/support/v7/widget/y;
.super Landroid/support/v7/widget/x;


# static fields
.field private static final b:[I


# instance fields
.field private c:Landroid/support/v7/widget/az;

.field private d:Landroid/support/v7/widget/az;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Landroid/support/v7/widget/y;->b:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x1010392
        0x1010393
    .end array-data
.end method

.method constructor <init>(Landroid/widget/TextView;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/support/v7/widget/x;-><init>(Landroid/widget/TextView;)V

    return-void
.end method


# virtual methods
.method a()V
    .locals 3

    invoke-super {p0}, Landroid/support/v7/widget/x;->a()V

    iget-object v0, p0, Landroid/support/v7/widget/y;->c:Landroid/support/v7/widget/az;

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/y;->d:Landroid/support/v7/widget/az;

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/y;->a:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getCompoundDrawablesRelative()[Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v1, v0, v1

    iget-object v2, p0, Landroid/support/v7/widget/y;->c:Landroid/support/v7/widget/az;

    invoke-virtual {p0, v1, v2}, Landroid/support/v7/widget/y;->a(Landroid/graphics/drawable/Drawable;Landroid/support/v7/widget/az;)V

    const/4 v1, 0x2

    aget-object v0, v0, v1

    iget-object v1, p0, Landroid/support/v7/widget/y;->d:Landroid/support/v7/widget/az;

    invoke-virtual {p0, v0, v1}, Landroid/support/v7/widget/y;->a(Landroid/graphics/drawable/Drawable;Landroid/support/v7/widget/az;)V

    :cond_1
    return-void
.end method

.method a(Landroid/util/AttributeSet;I)V
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    invoke-super {p0, p1, p2}, Landroid/support/v7/widget/x;->a(Landroid/util/AttributeSet;I)V

    iget-object v0, p0, Landroid/support/v7/widget/y;->a:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {}, Landroid/support/v7/widget/k;->a()Landroid/support/v7/widget/k;

    move-result-object v1

    sget-object v2, Landroid/support/v7/widget/y;->b:[I

    invoke-virtual {v0, p1, v2, p2, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2, v4, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    invoke-static {v0, v1, v3}, Landroid/support/v7/widget/y;->a(Landroid/content/Context;Landroid/support/v7/widget/k;I)Landroid/support/v7/widget/az;

    move-result-object v3

    iput-object v3, p0, Landroid/support/v7/widget/y;->c:Landroid/support/v7/widget/az;

    :cond_0
    invoke-virtual {v2, v5}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v2, v5, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    invoke-static {v0, v1, v3}, Landroid/support/v7/widget/y;->a(Landroid/content/Context;Landroid/support/v7/widget/k;I)Landroid/support/v7/widget/az;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/widget/y;->d:Landroid/support/v7/widget/az;

    :cond_1
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method
