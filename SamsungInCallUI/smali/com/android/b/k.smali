.class public abstract Lcom/android/b/k;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract a()V
.end method

.method public abstract a(Lcom/android/b/j;)V
.end method

.method public abstract a(Ljava/io/InputStream;)V
.end method

.method public a(Ljava/io/InputStream;Lcom/android/b/j;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0, p2}, Lcom/android/b/k;->a(Lcom/android/b/j;)V

    invoke-virtual {p0, p1}, Lcom/android/b/k;->a(Ljava/io/InputStream;)V

    return-void
.end method
