.class final Lcom/google/gson/internal/StringMap$EntrySet;
.super Ljava/util/AbstractSet;
.source "StringMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/gson/internal/StringMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "EntrySet"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractSet",
        "<",
        "Ljava/util/Map$Entry",
        "<",
        "Ljava/lang/String;",
        "TV;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/gson/internal/StringMap;


# direct methods
.method private constructor <init>(Lcom/google/gson/internal/StringMap;)V
    .locals 0

    iput-object p1, p0, Lcom/google/gson/internal/StringMap$EntrySet;->this$0:Lcom/google/gson/internal/StringMap;

    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/gson/internal/StringMap;Lcom/google/gson/internal/StringMap$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/gson/internal/StringMap$EntrySet;-><init>(Lcom/google/gson/internal/StringMap;)V

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    iget-object v0, p0, Lcom/google/gson/internal/StringMap$EntrySet;->this$0:Lcom/google/gson/internal/StringMap;

    invoke-virtual {v0}, Lcom/google/gson/internal/StringMap;->clear()V

    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 5

    const/4 v2, 0x0

    instance-of v3, p1, Ljava/util/Map$Entry;

    if-eqz v3, :cond_1

    move-object v0, p1

    check-cast v0, Ljava/util/Map$Entry;

    iget-object v3, p0, Lcom/google/gson/internal/StringMap$EntrySet;->this$0:Lcom/google/gson/internal/StringMap;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/gson/internal/StringMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_2

    :cond_0
    :goto_0
    return v2

    :cond_1
    return v2

    :cond_2
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    goto :goto_0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Ljava/util/Map$Entry",
            "<",
            "Ljava/lang/String;",
            "TV;>;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/gson/internal/StringMap$EntrySet$1;

    invoke-direct {v0, p0}, Lcom/google/gson/internal/StringMap$EntrySet$1;-><init>(Lcom/google/gson/internal/StringMap$EntrySet;)V

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 4

    const/4 v2, 0x0

    instance-of v1, p1, Ljava/util/Map$Entry;

    if-eqz v1, :cond_0

    move-object v0, p1

    check-cast v0, Ljava/util/Map$Entry;

    iget-object v1, p0, Lcom/google/gson/internal/StringMap$EntrySet;->this$0:Lcom/google/gson/internal/StringMap;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/google/gson/internal/StringMap;->access$600(Lcom/google/gson/internal/StringMap;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    return v1

    :cond_0
    return v2
.end method

.method public size()I
    .locals 1

    iget-object v0, p0, Lcom/google/gson/internal/StringMap$EntrySet;->this$0:Lcom/google/gson/internal/StringMap;

    invoke-static {v0}, Lcom/google/gson/internal/StringMap;->access$500(Lcom/google/gson/internal/StringMap;)I

    move-result v0

    return v0
.end method
