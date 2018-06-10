.class final Lcom/stanfy/gsonxml/Stack;
.super Ljava/lang/Object;
.source "Stack.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private array:[Ljava/lang/Object;

.field private size:I


# direct methods
.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x20

    new-array v0, v0, [Ljava/lang/Object;

    iput-object v0, p0, Lcom/stanfy/gsonxml/Stack;->array:[Ljava/lang/Object;

    const/4 v0, 0x0

    iput v0, p0, Lcom/stanfy/gsonxml/Stack;->size:I

    return-void
.end method

.method private ensureStack()V
    .locals 4

    const/4 v3, 0x0

    iget v1, p0, Lcom/stanfy/gsonxml/Stack;->size:I

    iget-object v2, p0, Lcom/stanfy/gsonxml/Stack;->array:[Ljava/lang/Object;

    array-length v2, v2

    if-eq v1, v2, :cond_0

    :goto_0
    return-void

    :cond_0
    iget v1, p0, Lcom/stanfy/gsonxml/Stack;->size:I

    mul-int/lit8 v1, v1, 0x2

    new-array v0, v1, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/stanfy/gsonxml/Stack;->array:[Ljava/lang/Object;

    iget v2, p0, Lcom/stanfy/gsonxml/Stack;->size:I

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v0, p0, Lcom/stanfy/gsonxml/Stack;->array:[Ljava/lang/Object;

    goto :goto_0
.end method


# virtual methods
.method public cleanup(I)I
    .locals 1

    iget v0, p0, Lcom/stanfy/gsonxml/Stack;->size:I

    invoke-virtual {p0, p1, v0}, Lcom/stanfy/gsonxml/Stack;->cleanup(II)I

    move-result v0

    return v0
.end method

.method public cleanup(II)I
    .locals 6

    const/4 v5, 0x0

    iget v0, p0, Lcom/stanfy/gsonxml/Stack;->size:I

    if-lt p2, v0, :cond_0

    iget v2, p0, Lcom/stanfy/gsonxml/Stack;->size:I

    sub-int v3, p1, p2

    add-int/2addr v3, v0

    sub-int/2addr v2, v3

    iput v2, p0, Lcom/stanfy/gsonxml/Stack;->size:I

    :goto_0
    iget v2, p0, Lcom/stanfy/gsonxml/Stack;->size:I

    if-ltz v2, :cond_2

    :goto_1
    sub-int v2, p2, p1

    return v2

    :cond_0
    move v1, p2

    :goto_2
    if-lt v1, v0, :cond_1

    iget v2, p0, Lcom/stanfy/gsonxml/Stack;->size:I

    sub-int/2addr v2, p1

    iput v2, p0, Lcom/stanfy/gsonxml/Stack;->size:I

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/stanfy/gsonxml/Stack;->array:[Ljava/lang/Object;

    sub-int v3, v1, p1

    iget-object v4, p0, Lcom/stanfy/gsonxml/Stack;->array:[Ljava/lang/Object;

    aget-object v4, v4, v1

    aput-object v4, v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_2
    iput v5, p0, Lcom/stanfy/gsonxml/Stack;->size:I

    goto :goto_1
.end method

.method public drop()V
    .locals 1

    iget v0, p0, Lcom/stanfy/gsonxml/Stack;->size:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/stanfy/gsonxml/Stack;->size:I

    return-void
.end method

.method public fix(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    iget v0, p0, Lcom/stanfy/gsonxml/Stack;->size:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/stanfy/gsonxml/Stack;->size:I

    iget v0, p0, Lcom/stanfy/gsonxml/Stack;->size:I

    if-gtz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/stanfy/gsonxml/Stack;->array:[Ljava/lang/Object;

    iget v1, p0, Lcom/stanfy/gsonxml/Stack;->size:I

    add-int/lit8 v1, v1, -0x1

    aget-object v0, v0, v1

    if-ne v0, p1, :cond_0

    iget v0, p0, Lcom/stanfy/gsonxml/Stack;->size:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/stanfy/gsonxml/Stack;->size:I

    goto :goto_0
.end method

.method public get(I)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/stanfy/gsonxml/Stack;->array:[Ljava/lang/Object;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public peek()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/stanfy/gsonxml/Stack;->array:[Ljava/lang/Object;

    iget v1, p0, Lcom/stanfy/gsonxml/Stack;->size:I

    add-int/lit8 v1, v1, -0x1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public push(Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/stanfy/gsonxml/Stack;->ensureStack()V

    iget-object v0, p0, Lcom/stanfy/gsonxml/Stack;->array:[Ljava/lang/Object;

    iget v1, p0, Lcom/stanfy/gsonxml/Stack;->size:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/stanfy/gsonxml/Stack;->size:I

    aput-object p1, v0, v1

    return-void
.end method

.method public pushAt(ILjava/lang/Object;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITT;)V"
        }
    .end annotation

    move v1, p1

    if-ltz p1, :cond_0

    :goto_0
    invoke-direct {p0}, Lcom/stanfy/gsonxml/Stack;->ensureStack()V

    iget v2, p0, Lcom/stanfy/gsonxml/Stack;->size:I

    add-int/lit8 v0, v2, -0x1

    :goto_1
    if-ge v0, v1, :cond_1

    iget-object v2, p0, Lcom/stanfy/gsonxml/Stack;->array:[Ljava/lang/Object;

    aput-object p2, v2, v1

    iget v2, p0, Lcom/stanfy/gsonxml/Stack;->size:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/stanfy/gsonxml/Stack;->size:I

    return-void

    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/stanfy/gsonxml/Stack;->array:[Ljava/lang/Object;

    add-int/lit8 v3, v0, 0x1

    iget-object v4, p0, Lcom/stanfy/gsonxml/Stack;->array:[Ljava/lang/Object;

    aget-object v4, v4, v0

    aput-object v4, v2, v3

    add-int/lit8 v0, v0, -0x1

    goto :goto_1
.end method

.method public size()I
    .locals 1

    iget v0, p0, Lcom/stanfy/gsonxml/Stack;->size:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v0, 0x0

    :goto_0
    iget v2, p0, Lcom/stanfy/gsonxml/Stack;->size:I

    if-lt v0, v2, :cond_0

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-gtz v2, :cond_1

    :goto_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    :cond_0
    iget-object v2, p0, Lcom/stanfy/gsonxml/Stack;->array:[Ljava/lang/Object;

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x3e

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    goto :goto_1
.end method
