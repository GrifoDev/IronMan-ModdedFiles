.class public final Lcom/google/gson/internal/StringMap;
.super Ljava/util/AbstractMap;
.source "StringMap.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/gson/internal/StringMap$1;,
        Lcom/google/gson/internal/StringMap$EntrySet;,
        Lcom/google/gson/internal/StringMap$KeySet;,
        Lcom/google/gson/internal/StringMap$LinkedEntry;,
        Lcom/google/gson/internal/StringMap$LinkedHashIterator;,
        Lcom/google/gson/internal/StringMap$Values;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractMap",
        "<",
        "Ljava/lang/String;",
        "TV;>;"
    }
.end annotation


# static fields
.field private static final EMPTY_TABLE:[Ljava/util/Map$Entry;

.field private static final MAXIMUM_CAPACITY:I = 0x40000000

.field private static final MINIMUM_CAPACITY:I = 0x4

.field private static final seed:I


# instance fields
.field private entrySet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/util/Map$Entry",
            "<",
            "Ljava/lang/String;",
            "TV;>;>;"
        }
    .end annotation
.end field

.field private header:Lcom/google/gson/internal/StringMap$LinkedEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/gson/internal/StringMap$LinkedEntry",
            "<TV;>;"
        }
    .end annotation
.end field

.field private keySet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private size:I

.field private table:[Lcom/google/gson/internal/StringMap$LinkedEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lcom/google/gson/internal/StringMap$LinkedEntry",
            "<TV;>;"
        }
    .end annotation
.end field

.field private threshold:I

.field private values:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<TV;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/google/gson/internal/StringMap$LinkedEntry;

    sput-object v0, Lcom/google/gson/internal/StringMap;->EMPTY_TABLE:[Ljava/util/Map$Entry;

    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    invoke-virtual {v0}, Ljava/util/Random;->nextInt()I

    move-result v0

    sput v0, Lcom/google/gson/internal/StringMap;->seed:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V

    sget-object v0, Lcom/google/gson/internal/StringMap;->EMPTY_TABLE:[Ljava/util/Map$Entry;

    check-cast v0, [Lcom/google/gson/internal/StringMap$LinkedEntry;

    check-cast v0, [Lcom/google/gson/internal/StringMap$LinkedEntry;

    iput-object v0, p0, Lcom/google/gson/internal/StringMap;->table:[Lcom/google/gson/internal/StringMap$LinkedEntry;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/gson/internal/StringMap;->threshold:I

    new-instance v0, Lcom/google/gson/internal/StringMap$LinkedEntry;

    invoke-direct {v0}, Lcom/google/gson/internal/StringMap$LinkedEntry;-><init>()V

    iput-object v0, p0, Lcom/google/gson/internal/StringMap;->header:Lcom/google/gson/internal/StringMap$LinkedEntry;

    return-void
.end method

.method static synthetic access$300(Lcom/google/gson/internal/StringMap;)Lcom/google/gson/internal/StringMap$LinkedEntry;
    .locals 1

    iget-object v0, p0, Lcom/google/gson/internal/StringMap;->header:Lcom/google/gson/internal/StringMap$LinkedEntry;

    return-object v0
.end method

.method static synthetic access$500(Lcom/google/gson/internal/StringMap;)I
    .locals 1

    iget v0, p0, Lcom/google/gson/internal/StringMap;->size:I

    return v0
.end method

.method static synthetic access$600(Lcom/google/gson/internal/StringMap;Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/google/gson/internal/StringMap;->removeMapping(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private addNewEntry(Ljava/lang/String;Ljava/lang/Object;II)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "TV;II)V"
        }
    .end annotation

    iget-object v5, p0, Lcom/google/gson/internal/StringMap;->header:Lcom/google/gson/internal/StringMap$LinkedEntry;

    iget-object v6, v5, Lcom/google/gson/internal/StringMap$LinkedEntry;->prv:Lcom/google/gson/internal/StringMap$LinkedEntry;

    new-instance v0, Lcom/google/gson/internal/StringMap$LinkedEntry;

    iget-object v1, p0, Lcom/google/gson/internal/StringMap;->table:[Lcom/google/gson/internal/StringMap$LinkedEntry;

    aget-object v4, v1, p4

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    invoke-direct/range {v0 .. v6}, Lcom/google/gson/internal/StringMap$LinkedEntry;-><init>(Ljava/lang/String;Ljava/lang/Object;ILcom/google/gson/internal/StringMap$LinkedEntry;Lcom/google/gson/internal/StringMap$LinkedEntry;Lcom/google/gson/internal/StringMap$LinkedEntry;)V

    iget-object v1, p0, Lcom/google/gson/internal/StringMap;->table:[Lcom/google/gson/internal/StringMap$LinkedEntry;

    iput-object v0, v5, Lcom/google/gson/internal/StringMap$LinkedEntry;->prv:Lcom/google/gson/internal/StringMap$LinkedEntry;

    iput-object v0, v6, Lcom/google/gson/internal/StringMap$LinkedEntry;->nxt:Lcom/google/gson/internal/StringMap$LinkedEntry;

    aput-object v0, v1, p4

    return-void
.end method

.method private doubleCapacity()[Lcom/google/gson/internal/StringMap$LinkedEntry;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[",
            "Lcom/google/gson/internal/StringMap$LinkedEntry",
            "<TV;>;"
        }
    .end annotation

    const/4 v11, 0x0

    iget-object v9, p0, Lcom/google/gson/internal/StringMap;->table:[Lcom/google/gson/internal/StringMap$LinkedEntry;

    array-length v8, v9

    const/high16 v10, 0x40000000    # 2.0f

    if-eq v8, v10, :cond_0

    mul-int/lit8 v5, v8, 0x2

    invoke-direct {p0, v5}, Lcom/google/gson/internal/StringMap;->makeTable(I)[Lcom/google/gson/internal/StringMap$LinkedEntry;

    move-result-object v6

    iget v10, p0, Lcom/google/gson/internal/StringMap;->size:I

    if-eqz v10, :cond_1

    const/4 v3, 0x0

    :goto_0
    if-lt v3, v8, :cond_2

    return-object v6

    :cond_0
    return-object v9

    :cond_1
    return-object v6

    :cond_2
    aget-object v1, v9, v3

    if-eqz v1, :cond_3

    iget v10, v1, Lcom/google/gson/internal/StringMap$LinkedEntry;->hash:I

    and-int v2, v10, v8

    const/4 v0, 0x0

    or-int v10, v3, v2

    aput-object v1, v6, v10

    iget-object v4, v1, Lcom/google/gson/internal/StringMap$LinkedEntry;->next:Lcom/google/gson/internal/StringMap$LinkedEntry;

    :goto_1
    if-nez v4, :cond_4

    if-nez v0, :cond_7

    :cond_3
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_4
    iget v10, v4, Lcom/google/gson/internal/StringMap$LinkedEntry;->hash:I

    and-int v7, v10, v8

    if-ne v7, v2, :cond_5

    :goto_3
    move-object v1, v4

    iget-object v4, v4, Lcom/google/gson/internal/StringMap$LinkedEntry;->next:Lcom/google/gson/internal/StringMap$LinkedEntry;

    goto :goto_1

    :cond_5
    if-eqz v0, :cond_6

    iput-object v4, v0, Lcom/google/gson/internal/StringMap$LinkedEntry;->next:Lcom/google/gson/internal/StringMap$LinkedEntry;

    :goto_4
    move-object v0, v1

    move v2, v7

    goto :goto_3

    :cond_6
    or-int v10, v3, v7

    aput-object v4, v6, v10

    goto :goto_4

    :cond_7
    iput-object v11, v0, Lcom/google/gson/internal/StringMap$LinkedEntry;->next:Lcom/google/gson/internal/StringMap$LinkedEntry;

    goto :goto_2
.end method

.method private getEntry(Ljava/lang/String;)Lcom/google/gson/internal/StringMap$LinkedEntry;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/gson/internal/StringMap$LinkedEntry",
            "<TV;>;"
        }
    .end annotation

    const/4 v5, 0x0

    if-eqz p1, :cond_0

    invoke-static {p1}, Lcom/google/gson/internal/StringMap;->hash(Ljava/lang/String;)I

    move-result v2

    iget-object v3, p0, Lcom/google/gson/internal/StringMap;->table:[Lcom/google/gson/internal/StringMap$LinkedEntry;

    array-length v4, v3

    add-int/lit8 v4, v4, -0x1

    and-int/2addr v4, v2

    aget-object v0, v3, v4

    :goto_0
    if-nez v0, :cond_1

    return-object v5

    :cond_0
    return-object v5

    :cond_1
    iget-object v1, v0, Lcom/google/gson/internal/StringMap$LinkedEntry;->key:Ljava/lang/String;

    if-ne v1, p1, :cond_3

    :cond_2
    return-object v0

    :cond_3
    iget v4, v0, Lcom/google/gson/internal/StringMap$LinkedEntry;->hash:I

    if-eq v4, v2, :cond_4

    :goto_1
    iget-object v0, v0, Lcom/google/gson/internal/StringMap$LinkedEntry;->next:Lcom/google/gson/internal/StringMap$LinkedEntry;

    goto :goto_0

    :cond_4
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    goto :goto_1
.end method

.method private static hash(Ljava/lang/String;)I
    .locals 6

    sget v0, Lcom/google/gson/internal/StringMap;->seed:I

    const/4 v3, 0x0

    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    if-lt v3, v4, :cond_0

    ushr-int/lit8 v4, v0, 0x14

    ushr-int/lit8 v5, v0, 0xc

    xor-int/2addr v4, v5

    xor-int/2addr v0, v4

    ushr-int/lit8 v4, v0, 0x7

    xor-int/2addr v4, v0

    ushr-int/lit8 v5, v0, 0x4

    xor-int/2addr v4, v5

    return v4

    :cond_0
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    add-int v1, v0, v4

    add-int v4, v1, v1

    shl-int/lit8 v2, v4, 0xa

    ushr-int/lit8 v4, v2, 0x6

    xor-int v0, v2, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method private makeTable(I)[Lcom/google/gson/internal/StringMap$LinkedEntry;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)[",
            "Lcom/google/gson/internal/StringMap$LinkedEntry",
            "<TV;>;"
        }
    .end annotation

    new-array v0, p1, [Lcom/google/gson/internal/StringMap$LinkedEntry;

    check-cast v0, [Lcom/google/gson/internal/StringMap$LinkedEntry;

    iput-object v0, p0, Lcom/google/gson/internal/StringMap;->table:[Lcom/google/gson/internal/StringMap$LinkedEntry;

    shr-int/lit8 v1, p1, 0x1

    shr-int/lit8 v2, p1, 0x2

    add-int/2addr v1, v2

    iput v1, p0, Lcom/google/gson/internal/StringMap;->threshold:I

    return-object v0
.end method

.method private removeMapping(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 7

    const/4 v6, 0x0

    if-nez p1, :cond_1

    :cond_0
    return v6

    :cond_1
    instance-of v5, p1, Ljava/lang/String;

    if-eqz v5, :cond_0

    move-object v5, p1

    check-cast v5, Ljava/lang/String;

    invoke-static {v5}, Lcom/google/gson/internal/StringMap;->hash(Ljava/lang/String;)I

    move-result v1

    iget-object v4, p0, Lcom/google/gson/internal/StringMap;->table:[Lcom/google/gson/internal/StringMap$LinkedEntry;

    array-length v5, v4

    add-int/lit8 v5, v5, -0x1

    and-int v2, v1, v5

    aget-object v0, v4, v2

    const/4 v3, 0x0

    :goto_0
    if-nez v0, :cond_2

    return v6

    :cond_2
    iget v5, v0, Lcom/google/gson/internal/StringMap$LinkedEntry;->hash:I

    if-eq v5, v1, :cond_4

    :cond_3
    move-object v3, v0

    iget-object v0, v0, Lcom/google/gson/internal/StringMap$LinkedEntry;->next:Lcom/google/gson/internal/StringMap$LinkedEntry;

    goto :goto_0

    :cond_4
    iget-object v5, v0, Lcom/google/gson/internal/StringMap$LinkedEntry;->key:Ljava/lang/String;

    invoke-virtual {p1, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    if-eqz p2, :cond_6

    iget-object v5, v0, Lcom/google/gson/internal/StringMap$LinkedEntry;->value:Ljava/lang/Object;

    invoke-virtual {p2, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    :cond_5
    if-eqz v3, :cond_8

    iget-object v5, v0, Lcom/google/gson/internal/StringMap$LinkedEntry;->next:Lcom/google/gson/internal/StringMap$LinkedEntry;

    iput-object v5, v3, Lcom/google/gson/internal/StringMap$LinkedEntry;->next:Lcom/google/gson/internal/StringMap$LinkedEntry;

    :goto_1
    iget v5, p0, Lcom/google/gson/internal/StringMap;->size:I

    add-int/lit8 v5, v5, -0x1

    iput v5, p0, Lcom/google/gson/internal/StringMap;->size:I

    invoke-direct {p0, v0}, Lcom/google/gson/internal/StringMap;->unlink(Lcom/google/gson/internal/StringMap$LinkedEntry;)V

    const/4 v5, 0x1

    return v5

    :cond_6
    iget-object v5, v0, Lcom/google/gson/internal/StringMap$LinkedEntry;->value:Ljava/lang/Object;

    if-eqz v5, :cond_5

    :cond_7
    return v6

    :cond_8
    iget-object v5, v0, Lcom/google/gson/internal/StringMap$LinkedEntry;->next:Lcom/google/gson/internal/StringMap$LinkedEntry;

    aput-object v5, v4, v2

    goto :goto_1
.end method

.method private unlink(Lcom/google/gson/internal/StringMap$LinkedEntry;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gson/internal/StringMap$LinkedEntry",
            "<TV;>;)V"
        }
    .end annotation

    const/4 v2, 0x0

    iget-object v0, p1, Lcom/google/gson/internal/StringMap$LinkedEntry;->prv:Lcom/google/gson/internal/StringMap$LinkedEntry;

    iget-object v1, p1, Lcom/google/gson/internal/StringMap$LinkedEntry;->nxt:Lcom/google/gson/internal/StringMap$LinkedEntry;

    iput-object v1, v0, Lcom/google/gson/internal/StringMap$LinkedEntry;->nxt:Lcom/google/gson/internal/StringMap$LinkedEntry;

    iget-object v0, p1, Lcom/google/gson/internal/StringMap$LinkedEntry;->nxt:Lcom/google/gson/internal/StringMap$LinkedEntry;

    iget-object v1, p1, Lcom/google/gson/internal/StringMap$LinkedEntry;->prv:Lcom/google/gson/internal/StringMap$LinkedEntry;

    iput-object v1, v0, Lcom/google/gson/internal/StringMap$LinkedEntry;->prv:Lcom/google/gson/internal/StringMap$LinkedEntry;

    iput-object v2, p1, Lcom/google/gson/internal/StringMap$LinkedEntry;->prv:Lcom/google/gson/internal/StringMap$LinkedEntry;

    iput-object v2, p1, Lcom/google/gson/internal/StringMap$LinkedEntry;->nxt:Lcom/google/gson/internal/StringMap$LinkedEntry;

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 6

    const/4 v5, 0x0

    const/4 v4, 0x0

    iget v3, p0, Lcom/google/gson/internal/StringMap;->size:I

    if-nez v3, :cond_0

    :goto_0
    iget-object v1, p0, Lcom/google/gson/internal/StringMap;->header:Lcom/google/gson/internal/StringMap$LinkedEntry;

    iget-object v0, v1, Lcom/google/gson/internal/StringMap$LinkedEntry;->nxt:Lcom/google/gson/internal/StringMap$LinkedEntry;

    :goto_1
    if-ne v0, v1, :cond_1

    iput-object v1, v1, Lcom/google/gson/internal/StringMap$LinkedEntry;->prv:Lcom/google/gson/internal/StringMap$LinkedEntry;

    iput-object v1, v1, Lcom/google/gson/internal/StringMap$LinkedEntry;->nxt:Lcom/google/gson/internal/StringMap$LinkedEntry;

    return-void

    :cond_0
    iget-object v3, p0, Lcom/google/gson/internal/StringMap;->table:[Lcom/google/gson/internal/StringMap$LinkedEntry;

    invoke-static {v3, v4}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    iput v5, p0, Lcom/google/gson/internal/StringMap;->size:I

    goto :goto_0

    :cond_1
    iget-object v2, v0, Lcom/google/gson/internal/StringMap$LinkedEntry;->nxt:Lcom/google/gson/internal/StringMap$LinkedEntry;

    iput-object v4, v0, Lcom/google/gson/internal/StringMap$LinkedEntry;->prv:Lcom/google/gson/internal/StringMap$LinkedEntry;

    iput-object v4, v0, Lcom/google/gson/internal/StringMap$LinkedEntry;->nxt:Lcom/google/gson/internal/StringMap$LinkedEntry;

    move-object v0, v2

    goto :goto_1
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .locals 2

    const/4 v0, 0x0

    instance-of v1, p1, Ljava/lang/String;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    check-cast p1, Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/google/gson/internal/StringMap;->getEntry(Ljava/lang/String;)Lcom/google/gson/internal/StringMap$LinkedEntry;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public entrySet()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/util/Map$Entry",
            "<",
            "Ljava/lang/String;",
            "TV;>;>;"
        }
    .end annotation

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/google/gson/internal/StringMap;->entrySet:Ljava/util/Set;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/gson/internal/StringMap$EntrySet;

    invoke-direct {v0, p0, v1}, Lcom/google/gson/internal/StringMap$EntrySet;-><init>(Lcom/google/gson/internal/StringMap;Lcom/google/gson/internal/StringMap$1;)V

    iput-object v0, p0, Lcom/google/gson/internal/StringMap;->entrySet:Ljava/util/Set;

    :cond_0
    return-object v0
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    const/4 v1, 0x0

    instance-of v2, p1, Ljava/lang/String;

    if-nez v2, :cond_0

    return-object v1

    :cond_0
    check-cast p1, Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/google/gson/internal/StringMap;->getEntry(Ljava/lang/String;)Lcom/google/gson/internal/StringMap$LinkedEntry;

    move-result-object v0

    if-nez v0, :cond_1

    :goto_0
    return-object v1

    :cond_1
    iget-object v1, v0, Lcom/google/gson/internal/StringMap$LinkedEntry;->value:Ljava/lang/Object;

    goto :goto_0
.end method

.method public keySet()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/google/gson/internal/StringMap;->keySet:Ljava/util/Set;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/gson/internal/StringMap$KeySet;

    invoke-direct {v0, p0, v1}, Lcom/google/gson/internal/StringMap$KeySet;-><init>(Lcom/google/gson/internal/StringMap;Lcom/google/gson/internal/StringMap$1;)V

    iput-object v0, p0, Lcom/google/gson/internal/StringMap;->keySet:Ljava/util/Set;

    :cond_0
    return-object v0
.end method

.method public bridge synthetic put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/google/gson/internal/StringMap;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "TV;)TV;"
        }
    .end annotation

    const/4 v7, 0x0

    if-eqz p1, :cond_0

    invoke-static {p1}, Lcom/google/gson/internal/StringMap;->hash(Ljava/lang/String;)I

    move-result v1

    iget-object v4, p0, Lcom/google/gson/internal/StringMap;->table:[Lcom/google/gson/internal/StringMap$LinkedEntry;

    array-length v5, v4

    add-int/lit8 v5, v5, -0x1

    and-int v2, v1, v5

    aget-object v0, v4, v2

    :goto_0
    if-nez v0, :cond_1

    iget v5, p0, Lcom/google/gson/internal/StringMap;->size:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Lcom/google/gson/internal/StringMap;->size:I

    iget v6, p0, Lcom/google/gson/internal/StringMap;->threshold:I

    if-gt v5, v6, :cond_4

    :goto_1
    invoke-direct {p0, p1, p2, v1, v2}, Lcom/google/gson/internal/StringMap;->addNewEntry(Ljava/lang/String;Ljava/lang/Object;II)V

    return-object v7

    :cond_0
    new-instance v5, Ljava/lang/NullPointerException;

    const-string/jumbo v6, "key == null"

    invoke-direct {v5, v6}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_1
    iget v5, v0, Lcom/google/gson/internal/StringMap$LinkedEntry;->hash:I

    if-eq v5, v1, :cond_3

    :cond_2
    iget-object v0, v0, Lcom/google/gson/internal/StringMap$LinkedEntry;->next:Lcom/google/gson/internal/StringMap$LinkedEntry;

    goto :goto_0

    :cond_3
    iget-object v5, v0, Lcom/google/gson/internal/StringMap$LinkedEntry;->key:Ljava/lang/String;

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    iget-object v3, v0, Lcom/google/gson/internal/StringMap$LinkedEntry;->value:Ljava/lang/Object;

    iput-object p2, v0, Lcom/google/gson/internal/StringMap$LinkedEntry;->value:Ljava/lang/Object;

    return-object v3

    :cond_4
    invoke-direct {p0}, Lcom/google/gson/internal/StringMap;->doubleCapacity()[Lcom/google/gson/internal/StringMap$LinkedEntry;

    move-result-object v4

    array-length v5, v4

    add-int/lit8 v5, v5, -0x1

    and-int v2, v1, v5

    goto :goto_1
.end method

.method public remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    const/4 v6, 0x0

    if-nez p1, :cond_1

    :cond_0
    return-object v6

    :cond_1
    instance-of v5, p1, Ljava/lang/String;

    if-eqz v5, :cond_0

    move-object v5, p1

    check-cast v5, Ljava/lang/String;

    invoke-static {v5}, Lcom/google/gson/internal/StringMap;->hash(Ljava/lang/String;)I

    move-result v1

    iget-object v4, p0, Lcom/google/gson/internal/StringMap;->table:[Lcom/google/gson/internal/StringMap$LinkedEntry;

    array-length v5, v4

    add-int/lit8 v5, v5, -0x1

    and-int v2, v1, v5

    aget-object v0, v4, v2

    const/4 v3, 0x0

    :goto_0
    if-nez v0, :cond_2

    return-object v6

    :cond_2
    iget v5, v0, Lcom/google/gson/internal/StringMap$LinkedEntry;->hash:I

    if-eq v5, v1, :cond_4

    :cond_3
    move-object v3, v0

    iget-object v0, v0, Lcom/google/gson/internal/StringMap$LinkedEntry;->next:Lcom/google/gson/internal/StringMap$LinkedEntry;

    goto :goto_0

    :cond_4
    iget-object v5, v0, Lcom/google/gson/internal/StringMap$LinkedEntry;->key:Ljava/lang/String;

    invoke-virtual {p1, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    if-eqz v3, :cond_5

    iget-object v5, v0, Lcom/google/gson/internal/StringMap$LinkedEntry;->next:Lcom/google/gson/internal/StringMap$LinkedEntry;

    iput-object v5, v3, Lcom/google/gson/internal/StringMap$LinkedEntry;->next:Lcom/google/gson/internal/StringMap$LinkedEntry;

    :goto_1
    iget v5, p0, Lcom/google/gson/internal/StringMap;->size:I

    add-int/lit8 v5, v5, -0x1

    iput v5, p0, Lcom/google/gson/internal/StringMap;->size:I

    invoke-direct {p0, v0}, Lcom/google/gson/internal/StringMap;->unlink(Lcom/google/gson/internal/StringMap$LinkedEntry;)V

    iget-object v5, v0, Lcom/google/gson/internal/StringMap$LinkedEntry;->value:Ljava/lang/Object;

    return-object v5

    :cond_5
    iget-object v5, v0, Lcom/google/gson/internal/StringMap$LinkedEntry;->next:Lcom/google/gson/internal/StringMap$LinkedEntry;

    aput-object v5, v4, v2

    goto :goto_1
.end method

.method public size()I
    .locals 1

    iget v0, p0, Lcom/google/gson/internal/StringMap;->size:I

    return v0
.end method

.method public values()Ljava/util/Collection;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<TV;>;"
        }
    .end annotation

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/google/gson/internal/StringMap;->values:Ljava/util/Collection;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/gson/internal/StringMap$Values;

    invoke-direct {v0, p0, v1}, Lcom/google/gson/internal/StringMap$Values;-><init>(Lcom/google/gson/internal/StringMap;Lcom/google/gson/internal/StringMap$1;)V

    iput-object v0, p0, Lcom/google/gson/internal/StringMap;->values:Ljava/util/Collection;

    :cond_0
    return-object v0
.end method
