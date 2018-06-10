.class public abstract Lcom/google/gson/internal/UnsafeAllocator;
.super Ljava/lang/Object;
.source "UnsafeAllocator.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create()Lcom/google/gson/internal/UnsafeAllocator;
    .locals 11

    :try_start_0
    const-string/jumbo v8, "sun.misc.Unsafe"

    invoke-static {v8}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v7

    const-string/jumbo v8, "theUnsafe"

    invoke-virtual {v7, v8}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    const/4 v8, 0x1

    invoke-virtual {v2, v8}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    const/4 v8, 0x0

    invoke-virtual {v2, v8}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Class;

    const-class v9, Ljava/lang/Class;

    const/4 v10, 0x0

    aput-object v9, v8, v10

    const-string/jumbo v9, "allocateInstance"

    invoke-virtual {v7, v9, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    new-instance v8, Lcom/google/gson/internal/UnsafeAllocator$1;

    invoke-direct {v8, v0, v6}, Lcom/google/gson/internal/UnsafeAllocator$1;-><init>(Ljava/lang/reflect/Method;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v8

    :catch_0
    move-exception v4

    const/4 v8, 0x2

    :try_start_1
    new-array v8, v8, [Ljava/lang/Class;

    const-class v9, Ljava/lang/Class;

    const/4 v10, 0x0

    aput-object v9, v8, v10

    const-class v9, Ljava/lang/Class;

    const/4 v10, 0x1

    aput-object v9, v8, v10

    const-class v9, Ljava/io/ObjectInputStream;

    const-string/jumbo v10, "newInstance"

    invoke-virtual {v9, v10, v8}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    const/4 v8, 0x1

    invoke-virtual {v5, v8}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    new-instance v8, Lcom/google/gson/internal/UnsafeAllocator$2;

    invoke-direct {v8, v5}, Lcom/google/gson/internal/UnsafeAllocator$2;-><init>(Ljava/lang/reflect/Method;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    return-object v8

    :catch_1
    move-exception v4

    const/4 v8, 0x1

    :try_start_2
    new-array v8, v8, [Ljava/lang/Class;

    const-class v9, Ljava/lang/Class;

    const/4 v10, 0x0

    aput-object v9, v8, v10

    const-class v9, Ljava/io/ObjectStreamClass;

    const-string/jumbo v10, "getConstructorId"

    invoke-virtual {v9, v10, v8}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    const/4 v8, 0x1

    invoke-virtual {v3, v8}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const-class v9, Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v9, v8, v10

    const/4 v9, 0x0

    invoke-virtual {v3, v9, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Class;

    const-class v9, Ljava/lang/Class;

    const/4 v10, 0x0

    aput-object v9, v8, v10

    sget-object v9, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v10, 0x1

    aput-object v9, v8, v10

    const-class v9, Ljava/io/ObjectStreamClass;

    const-string/jumbo v10, "newInstance"

    invoke-virtual {v9, v10, v8}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    const/4 v8, 0x1

    invoke-virtual {v5, v8}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    new-instance v8, Lcom/google/gson/internal/UnsafeAllocator$3;

    invoke-direct {v8, v5, v1}, Lcom/google/gson/internal/UnsafeAllocator$3;-><init>(Ljava/lang/reflect/Method;I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    return-object v8

    :catch_2
    move-exception v4

    new-instance v8, Lcom/google/gson/internal/UnsafeAllocator$4;

    invoke-direct {v8}, Lcom/google/gson/internal/UnsafeAllocator$4;-><init>()V

    return-object v8
.end method


# virtual methods
.method public abstract newInstance(Ljava/lang/Class;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method
