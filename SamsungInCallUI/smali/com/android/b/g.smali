.class public Lcom/android/b/g;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/android/b/j;


# static fields
.field private static a:Ljava/lang/String;


# instance fields
.field private final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/b/e;",
            ">;"
        }
    .end annotation
.end field

.field private c:Lcom/android/b/e;

.field private final d:I

.field private final e:Landroid/accounts/Account;

.field private final f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/b/i;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "vCard"

    sput-object v0, Lcom/android/b/g;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    const/high16 v0, -0x40000000    # -2.0f

    invoke-direct {p0, v0, v1, v1}, Lcom/android/b/g;-><init>(ILandroid/accounts/Account;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(ILandroid/accounts/Account;Ljava/lang/String;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/b/g;->b:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/b/g;->f:Ljava/util/List;

    iput p1, p0, Lcom/android/b/g;->d:I

    iput-object p2, p0, Lcom/android/b/g;->e:Landroid/accounts/Account;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    iget-object v0, p0, Lcom/android/b/g;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/b/i;

    invoke-interface {v0}, Lcom/android/b/i;->b()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public a(Lcom/android/b/i;)V
    .locals 1

    iget-object v0, p0, Lcom/android/b/g;->f:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public a(Lcom/android/b/s;)V
    .locals 1

    iget-object v0, p0, Lcom/android/b/g;->c:Lcom/android/b/e;

    invoke-virtual {v0, p1}, Lcom/android/b/e;->a(Lcom/android/b/s;)V

    return-void
.end method

.method public b()V
    .locals 2

    iget-object v0, p0, Lcom/android/b/g;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/b/i;

    invoke-interface {v0}, Lcom/android/b/i;->c()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public c()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/b/g;->c:Lcom/android/b/e;

    iget-object v0, p0, Lcom/android/b/g;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public d()V
    .locals 3

    new-instance v0, Lcom/android/b/e;

    iget v1, p0, Lcom/android/b/g;->d:I

    iget-object v2, p0, Lcom/android/b/g;->e:Landroid/accounts/Account;

    invoke-direct {v0, v1, v2}, Lcom/android/b/e;-><init>(ILandroid/accounts/Account;)V

    iput-object v0, p0, Lcom/android/b/g;->c:Lcom/android/b/e;

    iget-object v0, p0, Lcom/android/b/g;->b:Ljava/util/List;

    iget-object v1, p0, Lcom/android/b/g;->c:Lcom/android/b/e;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public e()V
    .locals 3

    iget-object v0, p0, Lcom/android/b/g;->c:Lcom/android/b/e;

    invoke-virtual {v0}, Lcom/android/b/e;->a()V

    iget-object v0, p0, Lcom/android/b/g;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/b/i;

    iget-object v2, p0, Lcom/android/b/g;->c:Lcom/android/b/e;

    invoke-interface {v0, v2}, Lcom/android/b/i;->a(Lcom/android/b/e;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/b/g;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v0, 0x1

    if-le v1, v0, :cond_1

    iget-object v0, p0, Lcom/android/b/g;->b:Ljava/util/List;

    add-int/lit8 v2, v1, -0x2

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/b/e;

    iget-object v2, p0, Lcom/android/b/g;->c:Lcom/android/b/e;

    invoke-virtual {v0, v2}, Lcom/android/b/e;->a(Lcom/android/b/e;)V

    iput-object v0, p0, Lcom/android/b/g;->c:Lcom/android/b/e;

    :goto_1
    iget-object v0, p0, Lcom/android/b/g;->b:Ljava/util/List;

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    return-void

    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/b/g;->c:Lcom/android/b/e;

    goto :goto_1
.end method
