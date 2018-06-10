.class abstract Lcom/google/gson/internal/StringMap$LinkedHashIterator;
.super Ljava/lang/Object;
.source "StringMap.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/gson/internal/StringMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "LinkedHashIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Iterator",
        "<TT;>;"
    }
.end annotation


# instance fields
.field lastReturned:Lcom/google/gson/internal/StringMap$LinkedEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/gson/internal/StringMap$LinkedEntry",
            "<TV;>;"
        }
    .end annotation
.end field

.field next:Lcom/google/gson/internal/StringMap$LinkedEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/gson/internal/StringMap$LinkedEntry",
            "<TV;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/google/gson/internal/StringMap;


# direct methods
.method private constructor <init>(Lcom/google/gson/internal/StringMap;)V
    .locals 1

    iput-object p1, p0, Lcom/google/gson/internal/StringMap$LinkedHashIterator;->this$0:Lcom/google/gson/internal/StringMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p0, Lcom/google/gson/internal/StringMap$LinkedHashIterator;->this$0:Lcom/google/gson/internal/StringMap;

    invoke-static {v0}, Lcom/google/gson/internal/StringMap;->access$300(Lcom/google/gson/internal/StringMap;)Lcom/google/gson/internal/StringMap$LinkedEntry;

    move-result-object v0

    iget-object v0, v0, Lcom/google/gson/internal/StringMap$LinkedEntry;->nxt:Lcom/google/gson/internal/StringMap$LinkedEntry;

    iput-object v0, p0, Lcom/google/gson/internal/StringMap$LinkedHashIterator;->next:Lcom/google/gson/internal/StringMap$LinkedEntry;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/gson/internal/StringMap$LinkedHashIterator;->lastReturned:Lcom/google/gson/internal/StringMap$LinkedEntry;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/gson/internal/StringMap;Lcom/google/gson/internal/StringMap$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/gson/internal/StringMap$LinkedHashIterator;-><init>(Lcom/google/gson/internal/StringMap;)V

    return-void
.end method


# virtual methods
.method public final hasNext()Z
    .locals 2

    iget-object v0, p0, Lcom/google/gson/internal/StringMap$LinkedHashIterator;->next:Lcom/google/gson/internal/StringMap$LinkedEntry;

    iget-object v1, p0, Lcom/google/gson/internal/StringMap$LinkedHashIterator;->this$0:Lcom/google/gson/internal/StringMap;

    invoke-static {v1}, Lcom/google/gson/internal/StringMap;->access$300(Lcom/google/gson/internal/StringMap;)Lcom/google/gson/internal/StringMap$LinkedEntry;

    move-result-object v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method final nextEntry()Lcom/google/gson/internal/StringMap$LinkedEntry;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/gson/internal/StringMap$LinkedEntry",
            "<TV;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/gson/internal/StringMap$LinkedHashIterator;->next:Lcom/google/gson/internal/StringMap$LinkedEntry;

    iget-object v1, p0, Lcom/google/gson/internal/StringMap$LinkedHashIterator;->this$0:Lcom/google/gson/internal/StringMap;

    invoke-static {v1}, Lcom/google/gson/internal/StringMap;->access$300(Lcom/google/gson/internal/StringMap;)Lcom/google/gson/internal/StringMap$LinkedEntry;

    move-result-object v1

    if-eq v0, v1, :cond_0

    iget-object v1, v0, Lcom/google/gson/internal/StringMap$LinkedEntry;->nxt:Lcom/google/gson/internal/StringMap$LinkedEntry;

    iput-object v1, p0, Lcom/google/gson/internal/StringMap$LinkedHashIterator;->next:Lcom/google/gson/internal/StringMap$LinkedEntry;

    iput-object v0, p0, Lcom/google/gson/internal/StringMap$LinkedHashIterator;->lastReturned:Lcom/google/gson/internal/StringMap$LinkedEntry;

    return-object v0

    :cond_0
    new-instance v1, Ljava/util/NoSuchElementException;

    invoke-direct {v1}, Ljava/util/NoSuchElementException;-><init>()V

    throw v1
.end method

.method public final remove()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/google/gson/internal/StringMap$LinkedHashIterator;->lastReturned:Lcom/google/gson/internal/StringMap$LinkedEntry;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/gson/internal/StringMap$LinkedHashIterator;->this$0:Lcom/google/gson/internal/StringMap;

    iget-object v1, p0, Lcom/google/gson/internal/StringMap$LinkedHashIterator;->lastReturned:Lcom/google/gson/internal/StringMap$LinkedEntry;

    iget-object v1, v1, Lcom/google/gson/internal/StringMap$LinkedEntry;->key:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/gson/internal/StringMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object v2, p0, Lcom/google/gson/internal/StringMap$LinkedHashIterator;->lastReturned:Lcom/google/gson/internal/StringMap$LinkedEntry;

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method
