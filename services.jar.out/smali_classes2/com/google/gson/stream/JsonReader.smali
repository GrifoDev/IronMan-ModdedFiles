.class public Lcom/google/gson/stream/JsonReader;
.super Ljava/lang/Object;
.source "JsonReader.java"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/gson/stream/JsonReader$2;
    }
.end annotation


# static fields
.field private static final FALSE:Ljava/lang/String; = "false"

.field private static final NON_EXECUTE_PREFIX:[C

.field private static final TRUE:Ljava/lang/String; = "true"


# instance fields
.field private final buffer:[C

.field private bufferStartColumn:I

.field private bufferStartLine:I

.field private final in:Ljava/io/Reader;

.field private lenient:Z

.field private limit:I

.field private name:Ljava/lang/String;

.field private pos:I

.field private skipping:Z

.field private stack:[Lcom/google/gson/stream/JsonScope;

.field private stackSize:I

.field private final stringPool:Lcom/google/gson/stream/StringPool;

.field private token:Lcom/google/gson/stream/JsonToken;

.field private value:Ljava/lang/String;

.field private valueLength:I

.field private valuePos:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string/jumbo v0, ")]}\'\n"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lcom/google/gson/stream/JsonReader;->NON_EXECUTE_PREFIX:[C

    new-instance v0, Lcom/google/gson/stream/JsonReader$1;

    invoke-direct {v0}, Lcom/google/gson/stream/JsonReader$1;-><init>()V

    sput-object v0, Lcom/google/gson/internal/JsonReaderInternalAccess;->INSTANCE:Lcom/google/gson/internal/JsonReaderInternalAccess;

    return-void
.end method

.method public constructor <init>(Ljava/io/Reader;)V
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/gson/stream/StringPool;

    invoke-direct {v0}, Lcom/google/gson/stream/StringPool;-><init>()V

    iput-object v0, p0, Lcom/google/gson/stream/JsonReader;->stringPool:Lcom/google/gson/stream/StringPool;

    iput-boolean v1, p0, Lcom/google/gson/stream/JsonReader;->lenient:Z

    const/16 v0, 0x400

    new-array v0, v0, [C

    iput-object v0, p0, Lcom/google/gson/stream/JsonReader;->buffer:[C

    iput v1, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    iput v1, p0, Lcom/google/gson/stream/JsonReader;->limit:I

    iput v2, p0, Lcom/google/gson/stream/JsonReader;->bufferStartLine:I

    iput v2, p0, Lcom/google/gson/stream/JsonReader;->bufferStartColumn:I

    const/16 v0, 0x20

    new-array v0, v0, [Lcom/google/gson/stream/JsonScope;

    iput-object v0, p0, Lcom/google/gson/stream/JsonReader;->stack:[Lcom/google/gson/stream/JsonScope;

    iput v1, p0, Lcom/google/gson/stream/JsonReader;->stackSize:I

    sget-object v0, Lcom/google/gson/stream/JsonScope;->EMPTY_DOCUMENT:Lcom/google/gson/stream/JsonScope;

    invoke-direct {p0, v0}, Lcom/google/gson/stream/JsonReader;->push(Lcom/google/gson/stream/JsonScope;)V

    iput-boolean v1, p0, Lcom/google/gson/stream/JsonReader;->skipping:Z

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/google/gson/stream/JsonReader;->in:Ljava/io/Reader;

    return-void

    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "in == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static synthetic access$000(Lcom/google/gson/stream/JsonReader;)Lcom/google/gson/stream/JsonToken;
    .locals 1

    iget-object v0, p0, Lcom/google/gson/stream/JsonReader;->token:Lcom/google/gson/stream/JsonToken;

    return-object v0
.end method

.method static synthetic access$002(Lcom/google/gson/stream/JsonReader;Lcom/google/gson/stream/JsonToken;)Lcom/google/gson/stream/JsonToken;
    .locals 0

    iput-object p1, p0, Lcom/google/gson/stream/JsonReader;->token:Lcom/google/gson/stream/JsonToken;

    return-object p1
.end method

.method static synthetic access$100(Lcom/google/gson/stream/JsonReader;)I
    .locals 1

    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->getLineNumber()I

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/google/gson/stream/JsonReader;)I
    .locals 1

    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->getColumnNumber()I

    move-result v0

    return v0
.end method

.method static synthetic access$302(Lcom/google/gson/stream/JsonReader;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/google/gson/stream/JsonReader;->value:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$400(Lcom/google/gson/stream/JsonReader;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/gson/stream/JsonReader;->name:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$402(Lcom/google/gson/stream/JsonReader;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/google/gson/stream/JsonReader;->name:Ljava/lang/String;

    return-object p1
.end method

.method private advance()Lcom/google/gson/stream/JsonToken;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->peek()Lcom/google/gson/stream/JsonToken;

    iget-object v0, p0, Lcom/google/gson/stream/JsonReader;->token:Lcom/google/gson/stream/JsonToken;

    iput-object v1, p0, Lcom/google/gson/stream/JsonReader;->token:Lcom/google/gson/stream/JsonToken;

    iput-object v1, p0, Lcom/google/gson/stream/JsonReader;->value:Ljava/lang/String;

    iput-object v1, p0, Lcom/google/gson/stream/JsonReader;->name:Ljava/lang/String;

    return-object v0
.end method

.method private checkLenient()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/google/gson/stream/JsonReader;->lenient:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string/jumbo v0, "Use JsonReader.setLenient(true) to accept malformed JSON"

    invoke-direct {p0, v0}, Lcom/google/gson/stream/JsonReader;->syntaxError(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v0

    throw v0
.end method

.method private consumeNonExecutePrefix()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/google/gson/stream/JsonReader;->nextNonWhitespace(Z)I

    iget v1, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    iget v1, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    sget-object v2, Lcom/google/gson/stream/JsonReader;->NON_EXECUTE_PREFIX:[C

    array-length v2, v2

    add-int/2addr v1, v2

    iget v2, p0, Lcom/google/gson/stream/JsonReader;->limit:I

    if-gt v1, v2, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    sget-object v1, Lcom/google/gson/stream/JsonReader;->NON_EXECUTE_PREFIX:[C

    array-length v1, v1

    if-lt v0, v1, :cond_2

    iget v1, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    sget-object v2, Lcom/google/gson/stream/JsonReader;->NON_EXECUTE_PREFIX:[C

    array-length v2, v2

    add-int/2addr v1, v2

    iput v1, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    return-void

    :cond_1
    sget-object v1, Lcom/google/gson/stream/JsonReader;->NON_EXECUTE_PREFIX:[C

    array-length v1, v1

    invoke-direct {p0, v1}, Lcom/google/gson/stream/JsonReader;->fillBuffer(I)Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_2
    iget-object v1, p0, Lcom/google/gson/stream/JsonReader;->buffer:[C

    iget v2, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    add-int/2addr v2, v0

    aget-char v1, v1, v2

    sget-object v2, Lcom/google/gson/stream/JsonReader;->NON_EXECUTE_PREFIX:[C

    aget-char v2, v2, v0

    if-ne v1, v2, :cond_3

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method private decodeLiteral()Lcom/google/gson/stream/JsonToken;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v6, 0x55

    const/16 v5, 0x45

    const/4 v4, 0x4

    const/16 v3, 0x6c

    const/16 v2, 0x4c

    iget v0, p0, Lcom/google/gson/stream/JsonReader;->valuePos:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/google/gson/stream/JsonReader;->valueLength:I

    if-eq v0, v4, :cond_1

    :goto_0
    iget v0, p0, Lcom/google/gson/stream/JsonReader;->valueLength:I

    if-eq v0, v4, :cond_a

    :goto_1
    iget v0, p0, Lcom/google/gson/stream/JsonReader;->valueLength:I

    const/4 v1, 0x5

    if-eq v0, v1, :cond_13

    :goto_2
    iget-object v0, p0, Lcom/google/gson/stream/JsonReader;->stringPool:Lcom/google/gson/stream/StringPool;

    iget-object v1, p0, Lcom/google/gson/stream/JsonReader;->buffer:[C

    iget v2, p0, Lcom/google/gson/stream/JsonReader;->valuePos:I

    iget v3, p0, Lcom/google/gson/stream/JsonReader;->valueLength:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/gson/stream/StringPool;->get([CII)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/gson/stream/JsonReader;->value:Ljava/lang/String;

    iget-object v0, p0, Lcom/google/gson/stream/JsonReader;->buffer:[C

    iget v1, p0, Lcom/google/gson/stream/JsonReader;->valuePos:I

    iget v2, p0, Lcom/google/gson/stream/JsonReader;->valueLength:I

    invoke-direct {p0, v0, v1, v2}, Lcom/google/gson/stream/JsonReader;->decodeNumber([CII)Lcom/google/gson/stream/JsonToken;

    move-result-object v0

    return-object v0

    :cond_0
    sget-object v0, Lcom/google/gson/stream/JsonToken;->STRING:Lcom/google/gson/stream/JsonToken;

    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/google/gson/stream/JsonReader;->buffer:[C

    iget v1, p0, Lcom/google/gson/stream/JsonReader;->valuePos:I

    aget-char v0, v0, v1

    const/16 v1, 0x6e

    if-ne v1, v0, :cond_6

    :cond_2
    iget-object v0, p0, Lcom/google/gson/stream/JsonReader;->buffer:[C

    iget v1, p0, Lcom/google/gson/stream/JsonReader;->valuePos:I

    add-int/lit8 v1, v1, 0x1

    aget-char v0, v0, v1

    const/16 v1, 0x75

    if-ne v1, v0, :cond_7

    :cond_3
    iget-object v0, p0, Lcom/google/gson/stream/JsonReader;->buffer:[C

    iget v1, p0, Lcom/google/gson/stream/JsonReader;->valuePos:I

    add-int/lit8 v1, v1, 0x2

    aget-char v0, v0, v1

    if-ne v3, v0, :cond_8

    :cond_4
    iget-object v0, p0, Lcom/google/gson/stream/JsonReader;->buffer:[C

    iget v1, p0, Lcom/google/gson/stream/JsonReader;->valuePos:I

    add-int/lit8 v1, v1, 0x3

    aget-char v0, v0, v1

    if-ne v3, v0, :cond_9

    :cond_5
    const-string/jumbo v0, "null"

    iput-object v0, p0, Lcom/google/gson/stream/JsonReader;->value:Ljava/lang/String;

    sget-object v0, Lcom/google/gson/stream/JsonToken;->NULL:Lcom/google/gson/stream/JsonToken;

    return-object v0

    :cond_6
    iget-object v0, p0, Lcom/google/gson/stream/JsonReader;->buffer:[C

    iget v1, p0, Lcom/google/gson/stream/JsonReader;->valuePos:I

    aget-char v0, v0, v1

    const/16 v1, 0x4e

    if-eq v1, v0, :cond_2

    goto :goto_0

    :cond_7
    iget-object v0, p0, Lcom/google/gson/stream/JsonReader;->buffer:[C

    iget v1, p0, Lcom/google/gson/stream/JsonReader;->valuePos:I

    add-int/lit8 v1, v1, 0x1

    aget-char v0, v0, v1

    if-eq v6, v0, :cond_3

    goto :goto_0

    :cond_8
    iget-object v0, p0, Lcom/google/gson/stream/JsonReader;->buffer:[C

    iget v1, p0, Lcom/google/gson/stream/JsonReader;->valuePos:I

    add-int/lit8 v1, v1, 0x2

    aget-char v0, v0, v1

    if-eq v2, v0, :cond_4

    goto :goto_0

    :cond_9
    iget-object v0, p0, Lcom/google/gson/stream/JsonReader;->buffer:[C

    iget v1, p0, Lcom/google/gson/stream/JsonReader;->valuePos:I

    add-int/lit8 v1, v1, 0x3

    aget-char v0, v0, v1

    if-eq v2, v0, :cond_5

    goto/16 :goto_0

    :cond_a
    iget-object v0, p0, Lcom/google/gson/stream/JsonReader;->buffer:[C

    iget v1, p0, Lcom/google/gson/stream/JsonReader;->valuePos:I

    aget-char v0, v0, v1

    const/16 v1, 0x74

    if-ne v1, v0, :cond_f

    :cond_b
    iget-object v0, p0, Lcom/google/gson/stream/JsonReader;->buffer:[C

    iget v1, p0, Lcom/google/gson/stream/JsonReader;->valuePos:I

    add-int/lit8 v1, v1, 0x1

    aget-char v0, v0, v1

    const/16 v1, 0x72

    if-ne v1, v0, :cond_10

    :cond_c
    iget-object v0, p0, Lcom/google/gson/stream/JsonReader;->buffer:[C

    iget v1, p0, Lcom/google/gson/stream/JsonReader;->valuePos:I

    add-int/lit8 v1, v1, 0x2

    aget-char v0, v0, v1

    const/16 v1, 0x75

    if-ne v1, v0, :cond_11

    :cond_d
    iget-object v0, p0, Lcom/google/gson/stream/JsonReader;->buffer:[C

    iget v1, p0, Lcom/google/gson/stream/JsonReader;->valuePos:I

    add-int/lit8 v1, v1, 0x3

    aget-char v0, v0, v1

    const/16 v1, 0x65

    if-ne v1, v0, :cond_12

    :cond_e
    const-string/jumbo v0, "true"

    iput-object v0, p0, Lcom/google/gson/stream/JsonReader;->value:Ljava/lang/String;

    sget-object v0, Lcom/google/gson/stream/JsonToken;->BOOLEAN:Lcom/google/gson/stream/JsonToken;

    return-object v0

    :cond_f
    iget-object v0, p0, Lcom/google/gson/stream/JsonReader;->buffer:[C

    iget v1, p0, Lcom/google/gson/stream/JsonReader;->valuePos:I

    aget-char v0, v0, v1

    const/16 v1, 0x54

    if-eq v1, v0, :cond_b

    goto/16 :goto_1

    :cond_10
    iget-object v0, p0, Lcom/google/gson/stream/JsonReader;->buffer:[C

    iget v1, p0, Lcom/google/gson/stream/JsonReader;->valuePos:I

    add-int/lit8 v1, v1, 0x1

    aget-char v0, v0, v1

    const/16 v1, 0x52

    if-eq v1, v0, :cond_c

    goto/16 :goto_1

    :cond_11
    iget-object v0, p0, Lcom/google/gson/stream/JsonReader;->buffer:[C

    iget v1, p0, Lcom/google/gson/stream/JsonReader;->valuePos:I

    add-int/lit8 v1, v1, 0x2

    aget-char v0, v0, v1

    if-eq v6, v0, :cond_d

    goto/16 :goto_1

    :cond_12
    iget-object v0, p0, Lcom/google/gson/stream/JsonReader;->buffer:[C

    iget v1, p0, Lcom/google/gson/stream/JsonReader;->valuePos:I

    add-int/lit8 v1, v1, 0x3

    aget-char v0, v0, v1

    if-eq v5, v0, :cond_e

    goto/16 :goto_1

    :cond_13
    iget-object v0, p0, Lcom/google/gson/stream/JsonReader;->buffer:[C

    iget v1, p0, Lcom/google/gson/stream/JsonReader;->valuePos:I

    aget-char v0, v0, v1

    const/16 v1, 0x66

    if-ne v1, v0, :cond_19

    :cond_14
    iget-object v0, p0, Lcom/google/gson/stream/JsonReader;->buffer:[C

    iget v1, p0, Lcom/google/gson/stream/JsonReader;->valuePos:I

    add-int/lit8 v1, v1, 0x1

    aget-char v0, v0, v1

    const/16 v1, 0x61

    if-ne v1, v0, :cond_1a

    :cond_15
    iget-object v0, p0, Lcom/google/gson/stream/JsonReader;->buffer:[C

    iget v1, p0, Lcom/google/gson/stream/JsonReader;->valuePos:I

    add-int/lit8 v1, v1, 0x2

    aget-char v0, v0, v1

    if-ne v3, v0, :cond_1b

    :cond_16
    iget-object v0, p0, Lcom/google/gson/stream/JsonReader;->buffer:[C

    iget v1, p0, Lcom/google/gson/stream/JsonReader;->valuePos:I

    add-int/lit8 v1, v1, 0x3

    aget-char v0, v0, v1

    const/16 v1, 0x73

    if-ne v1, v0, :cond_1c

    :cond_17
    iget-object v0, p0, Lcom/google/gson/stream/JsonReader;->buffer:[C

    iget v1, p0, Lcom/google/gson/stream/JsonReader;->valuePos:I

    add-int/lit8 v1, v1, 0x4

    aget-char v0, v0, v1

    const/16 v1, 0x65

    if-ne v1, v0, :cond_1d

    :cond_18
    const-string/jumbo v0, "false"

    iput-object v0, p0, Lcom/google/gson/stream/JsonReader;->value:Ljava/lang/String;

    sget-object v0, Lcom/google/gson/stream/JsonToken;->BOOLEAN:Lcom/google/gson/stream/JsonToken;

    return-object v0

    :cond_19
    iget-object v0, p0, Lcom/google/gson/stream/JsonReader;->buffer:[C

    iget v1, p0, Lcom/google/gson/stream/JsonReader;->valuePos:I

    aget-char v0, v0, v1

    const/16 v1, 0x46

    if-eq v1, v0, :cond_14

    goto/16 :goto_2

    :cond_1a
    iget-object v0, p0, Lcom/google/gson/stream/JsonReader;->buffer:[C

    iget v1, p0, Lcom/google/gson/stream/JsonReader;->valuePos:I

    add-int/lit8 v1, v1, 0x1

    aget-char v0, v0, v1

    const/16 v1, 0x41

    if-eq v1, v0, :cond_15

    goto/16 :goto_2

    :cond_1b
    iget-object v0, p0, Lcom/google/gson/stream/JsonReader;->buffer:[C

    iget v1, p0, Lcom/google/gson/stream/JsonReader;->valuePos:I

    add-int/lit8 v1, v1, 0x2

    aget-char v0, v0, v1

    if-eq v2, v0, :cond_16

    goto/16 :goto_2

    :cond_1c
    iget-object v0, p0, Lcom/google/gson/stream/JsonReader;->buffer:[C

    iget v1, p0, Lcom/google/gson/stream/JsonReader;->valuePos:I

    add-int/lit8 v1, v1, 0x3

    aget-char v0, v0, v1

    const/16 v1, 0x53

    if-eq v1, v0, :cond_17

    goto/16 :goto_2

    :cond_1d
    iget-object v0, p0, Lcom/google/gson/stream/JsonReader;->buffer:[C

    iget v1, p0, Lcom/google/gson/stream/JsonReader;->valuePos:I

    add-int/lit8 v1, v1, 0x4

    aget-char v0, v0, v1

    if-eq v5, v0, :cond_18

    goto/16 :goto_2
.end method

.method private decodeNumber([CII)Lcom/google/gson/stream/JsonToken;
    .locals 6

    const/16 v5, 0x2d

    const/16 v4, 0x39

    const/16 v3, 0x30

    move v1, p2

    aget-char v0, p1, p2

    if-eq v0, v5, :cond_1

    :goto_0
    if-eq v0, v3, :cond_2

    const/16 v2, 0x31

    if-ge v0, v2, :cond_8

    :cond_0
    sget-object v2, Lcom/google/gson/stream/JsonToken;->STRING:Lcom/google/gson/stream/JsonToken;

    return-object v2

    :cond_1
    add-int/lit8 v1, p2, 0x1

    aget-char v0, p1, v1

    goto :goto_0

    :cond_2
    add-int/lit8 v1, v1, 0x1

    aget-char v0, p1, v1

    :cond_3
    const/16 v2, 0x2e

    if-eq v0, v2, :cond_9

    :cond_4
    const/16 v2, 0x65

    if-ne v0, v2, :cond_a

    :cond_5
    add-int/lit8 v1, v1, 0x1

    aget-char v0, p1, v1

    const/16 v2, 0x2b

    if-ne v0, v2, :cond_c

    :cond_6
    add-int/lit8 v1, v1, 0x1

    aget-char v0, p1, v1

    :goto_1
    if-ge v0, v3, :cond_d

    :cond_7
    sget-object v2, Lcom/google/gson/stream/JsonToken;->STRING:Lcom/google/gson/stream/JsonToken;

    return-object v2

    :cond_8
    if-gt v0, v4, :cond_0

    add-int/lit8 v1, v1, 0x1

    aget-char v0, p1, v1

    :goto_2
    if-lt v0, v3, :cond_3

    if-gt v0, v4, :cond_3

    add-int/lit8 v1, v1, 0x1

    aget-char v0, p1, v1

    goto :goto_2

    :cond_9
    add-int/lit8 v1, v1, 0x1

    aget-char v0, p1, v1

    :goto_3
    if-lt v0, v3, :cond_4

    if-gt v0, v4, :cond_4

    add-int/lit8 v1, v1, 0x1

    aget-char v0, p1, v1

    goto :goto_3

    :cond_a
    const/16 v2, 0x45

    if-eq v0, v2, :cond_5

    :cond_b
    add-int v2, p2, p3

    if-eq v1, v2, :cond_e

    sget-object v2, Lcom/google/gson/stream/JsonToken;->STRING:Lcom/google/gson/stream/JsonToken;

    return-object v2

    :cond_c
    if-eq v0, v5, :cond_6

    goto :goto_1

    :cond_d
    if-gt v0, v4, :cond_7

    add-int/lit8 v1, v1, 0x1

    aget-char v0, p1, v1

    :goto_4
    if-lt v0, v3, :cond_b

    if-gt v0, v4, :cond_b

    add-int/lit8 v1, v1, 0x1

    aget-char v0, p1, v1

    goto :goto_4

    :cond_e
    sget-object v2, Lcom/google/gson/stream/JsonToken;->NUMBER:Lcom/google/gson/stream/JsonToken;

    return-object v2
.end method

.method private expect(Lcom/google/gson/stream/JsonToken;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->peek()Lcom/google/gson/stream/JsonToken;

    iget-object v0, p0, Lcom/google/gson/stream/JsonReader;->token:Lcom/google/gson/stream/JsonToken;

    if-ne v0, p1, :cond_0

    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->advance()Lcom/google/gson/stream/JsonToken;

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Expected "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " but was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->peek()Lcom/google/gson/stream/JsonToken;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " at line "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->getLineNumber()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " column "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->getColumnNumber()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private fillBuffer(I)Z
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v11, 0x1

    const/4 v10, 0x0

    iget-object v0, p0, Lcom/google/gson/stream/JsonReader;->buffer:[C

    iget v3, p0, Lcom/google/gson/stream/JsonReader;->bufferStartLine:I

    iget v1, p0, Lcom/google/gson/stream/JsonReader;->bufferStartColumn:I

    const/4 v2, 0x0

    iget v4, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    :goto_0
    if-lt v2, v4, :cond_1

    iput v3, p0, Lcom/google/gson/stream/JsonReader;->bufferStartLine:I

    iput v1, p0, Lcom/google/gson/stream/JsonReader;->bufferStartColumn:I

    iget v6, p0, Lcom/google/gson/stream/JsonReader;->limit:I

    iget v7, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    if-ne v6, v7, :cond_3

    iput v10, p0, Lcom/google/gson/stream/JsonReader;->limit:I

    :goto_1
    iput v10, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    :cond_0
    iget-object v6, p0, Lcom/google/gson/stream/JsonReader;->in:Ljava/io/Reader;

    iget v7, p0, Lcom/google/gson/stream/JsonReader;->limit:I

    array-length v8, v0

    iget v9, p0, Lcom/google/gson/stream/JsonReader;->limit:I

    sub-int/2addr v8, v9

    invoke-virtual {v6, v0, v7, v8}, Ljava/io/Reader;->read([CII)I

    move-result v5

    const/4 v6, -0x1

    if-ne v5, v6, :cond_4

    return v10

    :cond_1
    aget-char v6, v0, v2

    const/16 v7, 0xa

    if-eq v6, v7, :cond_2

    add-int/lit8 v1, v1, 0x1

    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    add-int/lit8 v3, v3, 0x1

    const/4 v1, 0x1

    goto :goto_2

    :cond_3
    iget v6, p0, Lcom/google/gson/stream/JsonReader;->limit:I

    iget v7, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    sub-int/2addr v6, v7

    iput v6, p0, Lcom/google/gson/stream/JsonReader;->limit:I

    iget v6, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    iget v7, p0, Lcom/google/gson/stream/JsonReader;->limit:I

    invoke-static {v0, v6, v0, v10, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_1

    :cond_4
    iget v6, p0, Lcom/google/gson/stream/JsonReader;->limit:I

    add-int/2addr v6, v5

    iput v6, p0, Lcom/google/gson/stream/JsonReader;->limit:I

    iget v6, p0, Lcom/google/gson/stream/JsonReader;->bufferStartLine:I

    if-eq v6, v11, :cond_6

    :cond_5
    :goto_3
    iget v6, p0, Lcom/google/gson/stream/JsonReader;->limit:I

    if-lt v6, p1, :cond_0

    return v11

    :cond_6
    iget v6, p0, Lcom/google/gson/stream/JsonReader;->bufferStartColumn:I

    if-ne v6, v11, :cond_5

    iget v6, p0, Lcom/google/gson/stream/JsonReader;->limit:I

    if-lez v6, :cond_5

    aget-char v6, v0, v10

    const v7, 0xfeff

    if-ne v6, v7, :cond_5

    iget v6, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    iget v6, p0, Lcom/google/gson/stream/JsonReader;->bufferStartColumn:I

    add-int/lit8 v6, v6, -0x1

    iput v6, p0, Lcom/google/gson/stream/JsonReader;->bufferStartColumn:I

    goto :goto_3
.end method

.method private getColumnNumber()I
    .locals 4

    iget v1, p0, Lcom/google/gson/stream/JsonReader;->bufferStartColumn:I

    const/4 v0, 0x0

    :goto_0
    iget v2, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    if-lt v0, v2, :cond_0

    return v1

    :cond_0
    iget-object v2, p0, Lcom/google/gson/stream/JsonReader;->buffer:[C

    aget-char v2, v2, v0

    const/16 v3, 0xa

    if-eq v2, v3, :cond_1

    add-int/lit8 v1, v1, 0x1

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x1

    goto :goto_1
.end method

.method private getLineNumber()I
    .locals 4

    iget v1, p0, Lcom/google/gson/stream/JsonReader;->bufferStartLine:I

    const/4 v0, 0x0

    :goto_0
    iget v2, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    if-lt v0, v2, :cond_0

    return v1

    :cond_0
    iget-object v2, p0, Lcom/google/gson/stream/JsonReader;->buffer:[C

    aget-char v2, v2, v0

    const/16 v3, 0xa

    if-eq v2, v3, :cond_1

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method private nextInArray(Z)Lcom/google/gson/stream/JsonToken;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v3, 0x1

    if-nez p1, :cond_0

    invoke-direct {p0, v3}, Lcom/google/gson/stream/JsonReader;->nextNonWhitespace(Z)I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    const-string/jumbo v0, "Unterminated array"

    invoke-direct {p0, v0}, Lcom/google/gson/stream/JsonReader;->syntaxError(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/google/gson/stream/JsonReader;->stack:[Lcom/google/gson/stream/JsonScope;

    iget v1, p0, Lcom/google/gson/stream/JsonReader;->stackSize:I

    add-int/lit8 v1, v1, -0x1

    sget-object v2, Lcom/google/gson/stream/JsonScope;->NONEMPTY_ARRAY:Lcom/google/gson/stream/JsonScope;

    aput-object v2, v0, v1

    :goto_0
    :sswitch_0
    invoke-direct {p0, v3}, Lcom/google/gson/stream/JsonReader;->nextNonWhitespace(Z)I

    move-result v0

    sparse-switch v0, :sswitch_data_1

    iget v0, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->nextValue()Lcom/google/gson/stream/JsonToken;

    move-result-object v0

    return-object v0

    :sswitch_1
    iget v0, p0, Lcom/google/gson/stream/JsonReader;->stackSize:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/gson/stream/JsonReader;->stackSize:I

    sget-object v0, Lcom/google/gson/stream/JsonToken;->END_ARRAY:Lcom/google/gson/stream/JsonToken;

    iput-object v0, p0, Lcom/google/gson/stream/JsonReader;->token:Lcom/google/gson/stream/JsonToken;

    return-object v0

    :sswitch_2
    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->checkLenient()V

    goto :goto_0

    :sswitch_3
    if-nez p1, :cond_1

    :sswitch_4
    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->checkLenient()V

    iget v0, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    const-string/jumbo v0, "null"

    iput-object v0, p0, Lcom/google/gson/stream/JsonReader;->value:Ljava/lang/String;

    sget-object v0, Lcom/google/gson/stream/JsonToken;->NULL:Lcom/google/gson/stream/JsonToken;

    iput-object v0, p0, Lcom/google/gson/stream/JsonReader;->token:Lcom/google/gson/stream/JsonToken;

    return-object v0

    :cond_1
    iget v0, p0, Lcom/google/gson/stream/JsonReader;->stackSize:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/gson/stream/JsonReader;->stackSize:I

    sget-object v0, Lcom/google/gson/stream/JsonToken;->END_ARRAY:Lcom/google/gson/stream/JsonToken;

    iput-object v0, p0, Lcom/google/gson/stream/JsonReader;->token:Lcom/google/gson/stream/JsonToken;

    return-object v0

    nop

    :sswitch_data_0
    .sparse-switch
        0x2c -> :sswitch_0
        0x3b -> :sswitch_2
        0x5d -> :sswitch_1
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        0x2c -> :sswitch_4
        0x3b -> :sswitch_4
        0x5d -> :sswitch_3
    .end sparse-switch
.end method

.method private nextInObject(Z)Lcom/google/gson/stream/JsonToken;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v3, 0x1

    const/4 v2, 0x0

    if-nez p1, :cond_0

    invoke-direct {p0, v3}, Lcom/google/gson/stream/JsonReader;->nextNonWhitespace(Z)I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    const-string/jumbo v1, "Unterminated object"

    invoke-direct {p0, v1}, Lcom/google/gson/stream/JsonReader;->syntaxError(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v1

    throw v1

    :cond_0
    invoke-direct {p0, v3}, Lcom/google/gson/stream/JsonReader;->nextNonWhitespace(Z)I

    move-result v1

    packed-switch v1, :pswitch_data_0

    iget v1, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    :sswitch_0
    invoke-direct {p0, v3}, Lcom/google/gson/stream/JsonReader;->nextNonWhitespace(Z)I

    move-result v0

    sparse-switch v0, :sswitch_data_1

    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->checkLenient()V

    iget v1, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    invoke-direct {p0, v2}, Lcom/google/gson/stream/JsonReader;->nextLiteral(Z)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/gson/stream/JsonReader;->name:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/gson/stream/JsonReader;->name:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_1

    :goto_0
    iget-object v1, p0, Lcom/google/gson/stream/JsonReader;->stack:[Lcom/google/gson/stream/JsonScope;

    iget v2, p0, Lcom/google/gson/stream/JsonReader;->stackSize:I

    add-int/lit8 v2, v2, -0x1

    sget-object v3, Lcom/google/gson/stream/JsonScope;->DANGLING_NAME:Lcom/google/gson/stream/JsonScope;

    aput-object v3, v1, v2

    sget-object v1, Lcom/google/gson/stream/JsonToken;->NAME:Lcom/google/gson/stream/JsonToken;

    iput-object v1, p0, Lcom/google/gson/stream/JsonReader;->token:Lcom/google/gson/stream/JsonToken;

    return-object v1

    :pswitch_0
    iget v1, p0, Lcom/google/gson/stream/JsonReader;->stackSize:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/google/gson/stream/JsonReader;->stackSize:I

    sget-object v1, Lcom/google/gson/stream/JsonToken;->END_OBJECT:Lcom/google/gson/stream/JsonToken;

    iput-object v1, p0, Lcom/google/gson/stream/JsonReader;->token:Lcom/google/gson/stream/JsonToken;

    return-object v1

    :sswitch_1
    iget v1, p0, Lcom/google/gson/stream/JsonReader;->stackSize:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/google/gson/stream/JsonReader;->stackSize:I

    sget-object v1, Lcom/google/gson/stream/JsonToken;->END_OBJECT:Lcom/google/gson/stream/JsonToken;

    iput-object v1, p0, Lcom/google/gson/stream/JsonReader;->token:Lcom/google/gson/stream/JsonToken;

    return-object v1

    :sswitch_2
    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->checkLenient()V

    :sswitch_3
    int-to-char v1, v0

    invoke-direct {p0, v1}, Lcom/google/gson/stream/JsonReader;->nextString(C)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/gson/stream/JsonReader;->name:Ljava/lang/String;

    goto :goto_0

    :cond_1
    const-string/jumbo v1, "Expected name"

    invoke-direct {p0, v1}, Lcom/google/gson/stream/JsonReader;->syntaxError(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v1

    throw v1

    :sswitch_data_0
    .sparse-switch
        0x2c -> :sswitch_0
        0x3b -> :sswitch_0
        0x7d -> :sswitch_1
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x7d
        :pswitch_0
    .end packed-switch

    :sswitch_data_1
    .sparse-switch
        0x22 -> :sswitch_3
        0x27 -> :sswitch_2
    .end sparse-switch
.end method

.method private nextLiteral(Z)Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v5, 0x0

    const/4 v0, 0x0

    const/4 v3, -0x1

    iput v3, p0, Lcom/google/gson/stream/JsonReader;->valuePos:I

    iput v5, p0, Lcom/google/gson/stream/JsonReader;->valueLength:I

    const/4 v1, 0x0

    :cond_0
    :goto_0
    iget v3, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    add-int/2addr v3, v1

    iget v4, p0, Lcom/google/gson/stream/JsonReader;->limit:I

    if-lt v3, v4, :cond_2

    iget-object v3, p0, Lcom/google/gson/stream/JsonReader;->buffer:[C

    array-length v3, v3

    if-lt v1, v3, :cond_3

    if-eqz v0, :cond_4

    :goto_1
    iget-object v3, p0, Lcom/google/gson/stream/JsonReader;->buffer:[C

    iget v4, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    invoke-virtual {v0, v3, v4, v1}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/google/gson/stream/JsonReader;->valueLength:I

    add-int/2addr v3, v1

    iput v3, p0, Lcom/google/gson/stream/JsonReader;->valueLength:I

    iget v3, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    add-int/2addr v3, v1

    iput v3, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    const/4 v1, 0x0

    const/4 v3, 0x1

    invoke-direct {p0, v3}, Lcom/google/gson/stream/JsonReader;->fillBuffer(I)Z

    move-result v3

    if-nez v3, :cond_0

    :goto_2
    :sswitch_0
    if-nez p1, :cond_5

    :cond_1
    iget-boolean v3, p0, Lcom/google/gson/stream/JsonReader;->skipping:Z

    if-nez v3, :cond_6

    if-eqz v0, :cond_7

    iget-object v3, p0, Lcom/google/gson/stream/JsonReader;->buffer:[C

    iget v4, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    invoke-virtual {v0, v3, v4, v1}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_3
    iget v3, p0, Lcom/google/gson/stream/JsonReader;->valueLength:I

    add-int/2addr v3, v1

    iput v3, p0, Lcom/google/gson/stream/JsonReader;->valueLength:I

    iget v3, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    add-int/2addr v3, v1

    iput v3, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    return-object v2

    :cond_2
    iget-object v3, p0, Lcom/google/gson/stream/JsonReader;->buffer:[C

    iget v4, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    add-int/2addr v4, v1

    aget-char v3, v3, v4

    sparse-switch v3, :sswitch_data_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :sswitch_1
    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->checkLenient()V

    goto :goto_2

    :cond_3
    add-int/lit8 v3, v1, 0x1

    invoke-direct {p0, v3}, Lcom/google/gson/stream/JsonReader;->fillBuffer(I)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/google/gson/stream/JsonReader;->buffer:[C

    iget v4, p0, Lcom/google/gson/stream/JsonReader;->limit:I

    aput-char v5, v3, v4

    goto :goto_2

    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_1

    :cond_5
    if-nez v0, :cond_1

    iget v3, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    iput v3, p0, Lcom/google/gson/stream/JsonReader;->valuePos:I

    const/4 v2, 0x0

    goto :goto_3

    :cond_6
    const-string/jumbo v2, "skipped!"

    goto :goto_3

    :cond_7
    iget-object v3, p0, Lcom/google/gson/stream/JsonReader;->stringPool:Lcom/google/gson/stream/StringPool;

    iget-object v4, p0, Lcom/google/gson/stream/JsonReader;->buffer:[C

    iget v5, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    invoke-virtual {v3, v4, v5, v1}, Lcom/google/gson/stream/StringPool;->get([CII)Ljava/lang/String;

    move-result-object v2

    goto :goto_3

    :sswitch_data_0
    .sparse-switch
        0x9 -> :sswitch_0
        0xa -> :sswitch_0
        0xc -> :sswitch_0
        0xd -> :sswitch_0
        0x20 -> :sswitch_0
        0x23 -> :sswitch_1
        0x2c -> :sswitch_0
        0x2f -> :sswitch_1
        0x3a -> :sswitch_0
        0x3b -> :sswitch_1
        0x3d -> :sswitch_1
        0x5b -> :sswitch_0
        0x5c -> :sswitch_1
        0x5d -> :sswitch_0
        0x7b -> :sswitch_0
        0x7d -> :sswitch_0
    .end sparse-switch
.end method

.method private nextNonWhitespace(Z)I
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/gson/stream/JsonReader;->buffer:[C

    iget v4, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    iget v3, p0, Lcom/google/gson/stream/JsonReader;->limit:I

    :goto_0
    if-eq v4, v3, :cond_0

    :goto_1
    add-int/lit8 v5, v4, 0x1

    aget-char v1, v0, v4

    sparse-switch v1, :sswitch_data_0

    iput v5, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    return v1

    :cond_0
    iput v4, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    const/4 v7, 0x1

    invoke-direct {p0, v7}, Lcom/google/gson/stream/JsonReader;->fillBuffer(I)Z

    move-result v7

    if-eqz v7, :cond_4

    iget v4, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    iget v3, p0, Lcom/google/gson/stream/JsonReader;->limit:I

    goto :goto_1

    :sswitch_0
    move v4, v5

    goto :goto_0

    :sswitch_1
    iput v5, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    if-eq v5, v3, :cond_2

    :cond_1
    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->checkLenient()V

    iget v7, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    aget-char v6, v0, v7

    sparse-switch v6, :sswitch_data_1

    return v1

    :cond_2
    iget v7, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    add-int/lit8 v7, v7, -0x1

    iput v7, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    const/4 v7, 0x2

    invoke-direct {p0, v7}, Lcom/google/gson/stream/JsonReader;->fillBuffer(I)Z

    move-result v2

    iget v7, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    add-int/lit8 v7, v7, 0x1

    iput v7, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    if-nez v2, :cond_1

    return v1

    :sswitch_2
    iget v7, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    add-int/lit8 v7, v7, 0x1

    iput v7, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    const-string/jumbo v7, "*/"

    invoke-direct {p0, v7}, Lcom/google/gson/stream/JsonReader;->skipTo(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    iget v7, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    add-int/lit8 v4, v7, 0x2

    iget v3, p0, Lcom/google/gson/stream/JsonReader;->limit:I

    goto :goto_0

    :cond_3
    const-string/jumbo v7, "Unterminated comment"

    invoke-direct {p0, v7}, Lcom/google/gson/stream/JsonReader;->syntaxError(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v7

    throw v7

    :sswitch_3
    iget v7, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    add-int/lit8 v7, v7, 0x1

    iput v7, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->skipToEndOfLine()V

    iget v4, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    iget v3, p0, Lcom/google/gson/stream/JsonReader;->limit:I

    goto :goto_0

    :sswitch_4
    iput v5, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->checkLenient()V

    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->skipToEndOfLine()V

    iget v4, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    iget v3, p0, Lcom/google/gson/stream/JsonReader;->limit:I

    goto :goto_0

    :cond_4
    if-nez p1, :cond_5

    const/4 v7, -0x1

    return v7

    :cond_5
    new-instance v7, Ljava/io/EOFException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "End of input at line "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->getLineNumber()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " column "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->getColumnNumber()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v7

    nop

    :sswitch_data_0
    .sparse-switch
        0x9 -> :sswitch_0
        0xa -> :sswitch_0
        0xd -> :sswitch_0
        0x20 -> :sswitch_0
        0x23 -> :sswitch_4
        0x2f -> :sswitch_1
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        0x2a -> :sswitch_2
        0x2f -> :sswitch_3
    .end sparse-switch
.end method

.method private nextString(C)Ljava/lang/String;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/gson/stream/JsonReader;->buffer:[C

    const/4 v1, 0x0

    :cond_0
    iget v4, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    iget v3, p0, Lcom/google/gson/stream/JsonReader;->limit:I

    move v6, v4

    move v5, v4

    :goto_0
    if-lt v5, v3, :cond_1

    if-eqz v1, :cond_7

    :goto_1
    sub-int v7, v5, v6

    invoke-virtual {v1, v0, v6, v7}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    iput v5, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    const/4 v7, 0x1

    invoke-direct {p0, v7}, Lcom/google/gson/stream/JsonReader;->fillBuffer(I)Z

    move-result v7

    if-nez v7, :cond_0

    const-string/jumbo v7, "Unterminated string"

    invoke-direct {p0, v7}, Lcom/google/gson/stream/JsonReader;->syntaxError(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v7

    throw v7

    :cond_1
    add-int/lit8 v4, v5, 0x1

    aget-char v2, v0, v5

    if-eq v2, p1, :cond_2

    const/16 v7, 0x5c

    if-eq v2, v7, :cond_5

    :goto_2
    move v5, v4

    goto :goto_0

    :cond_2
    iput v4, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    iget-boolean v7, p0, Lcom/google/gson/stream/JsonReader;->skipping:Z

    if-nez v7, :cond_3

    if-eqz v1, :cond_4

    sub-int v7, v4, v6

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {v1, v0, v6, v7}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    return-object v7

    :cond_3
    const-string/jumbo v7, "skipped!"

    return-object v7

    :cond_4
    iget-object v7, p0, Lcom/google/gson/stream/JsonReader;->stringPool:Lcom/google/gson/stream/StringPool;

    sub-int v8, v4, v6

    add-int/lit8 v8, v8, -0x1

    invoke-virtual {v7, v0, v6, v8}, Lcom/google/gson/stream/StringPool;->get([CII)Ljava/lang/String;

    move-result-object v7

    return-object v7

    :cond_5
    iput v4, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    if-eqz v1, :cond_6

    :goto_3
    sub-int v7, v4, v6

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {v1, v0, v6, v7}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->readEscapeCharacter()C

    move-result v7

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    iget v3, p0, Lcom/google/gson/stream/JsonReader;->limit:I

    move v6, v4

    goto :goto_2

    :cond_6
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_3

    :cond_7
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_1
.end method

.method private nextValue()Lcom/google/gson/stream/JsonToken;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/google/gson/stream/JsonReader;->nextNonWhitespace(Z)I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    iget v1, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->readLiteral()Lcom/google/gson/stream/JsonToken;

    move-result-object v1

    return-object v1

    :sswitch_0
    sget-object v1, Lcom/google/gson/stream/JsonScope;->EMPTY_OBJECT:Lcom/google/gson/stream/JsonScope;

    invoke-direct {p0, v1}, Lcom/google/gson/stream/JsonReader;->push(Lcom/google/gson/stream/JsonScope;)V

    sget-object v1, Lcom/google/gson/stream/JsonToken;->BEGIN_OBJECT:Lcom/google/gson/stream/JsonToken;

    iput-object v1, p0, Lcom/google/gson/stream/JsonReader;->token:Lcom/google/gson/stream/JsonToken;

    return-object v1

    :sswitch_1
    sget-object v1, Lcom/google/gson/stream/JsonScope;->EMPTY_ARRAY:Lcom/google/gson/stream/JsonScope;

    invoke-direct {p0, v1}, Lcom/google/gson/stream/JsonReader;->push(Lcom/google/gson/stream/JsonScope;)V

    sget-object v1, Lcom/google/gson/stream/JsonToken;->BEGIN_ARRAY:Lcom/google/gson/stream/JsonToken;

    iput-object v1, p0, Lcom/google/gson/stream/JsonReader;->token:Lcom/google/gson/stream/JsonToken;

    return-object v1

    :sswitch_2
    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->checkLenient()V

    :sswitch_3
    int-to-char v1, v0

    invoke-direct {p0, v1}, Lcom/google/gson/stream/JsonReader;->nextString(C)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/gson/stream/JsonReader;->value:Ljava/lang/String;

    sget-object v1, Lcom/google/gson/stream/JsonToken;->STRING:Lcom/google/gson/stream/JsonToken;

    iput-object v1, p0, Lcom/google/gson/stream/JsonReader;->token:Lcom/google/gson/stream/JsonToken;

    return-object v1

    :sswitch_data_0
    .sparse-switch
        0x22 -> :sswitch_3
        0x27 -> :sswitch_2
        0x5b -> :sswitch_1
        0x7b -> :sswitch_0
    .end sparse-switch
.end method

.method private objectValue()Lcom/google/gson/stream/JsonToken;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v2, 0x1

    invoke-direct {p0, v2}, Lcom/google/gson/stream/JsonReader;->nextNonWhitespace(Z)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    const-string/jumbo v0, "Expected \':\'"

    invoke-direct {p0, v0}, Lcom/google/gson/stream/JsonReader;->syntaxError(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    :pswitch_1
    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->checkLenient()V

    iget v0, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    iget v1, p0, Lcom/google/gson/stream/JsonReader;->limit:I

    if-ge v0, v1, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/google/gson/stream/JsonReader;->buffer:[C

    iget v1, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    aget-char v0, v0, v1

    const/16 v1, 0x3e

    if-eq v0, v1, :cond_2

    :goto_0
    :pswitch_2
    iget-object v0, p0, Lcom/google/gson/stream/JsonReader;->stack:[Lcom/google/gson/stream/JsonScope;

    iget v1, p0, Lcom/google/gson/stream/JsonReader;->stackSize:I

    add-int/lit8 v1, v1, -0x1

    sget-object v2, Lcom/google/gson/stream/JsonScope;->NONEMPTY_OBJECT:Lcom/google/gson/stream/JsonScope;

    aput-object v2, v0, v1

    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->nextValue()Lcom/google/gson/stream/JsonToken;

    move-result-object v0

    return-object v0

    :cond_1
    invoke-direct {p0, v2}, Lcom/google/gson/stream/JsonReader;->fillBuffer(I)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_2
    iget v0, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x3a
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private push(Lcom/google/gson/stream/JsonScope;)V
    .locals 4

    const/4 v3, 0x0

    iget v1, p0, Lcom/google/gson/stream/JsonReader;->stackSize:I

    iget-object v2, p0, Lcom/google/gson/stream/JsonReader;->stack:[Lcom/google/gson/stream/JsonScope;

    array-length v2, v2

    if-eq v1, v2, :cond_0

    :goto_0
    iget-object v1, p0, Lcom/google/gson/stream/JsonReader;->stack:[Lcom/google/gson/stream/JsonScope;

    iget v2, p0, Lcom/google/gson/stream/JsonReader;->stackSize:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/google/gson/stream/JsonReader;->stackSize:I

    aput-object p1, v1, v2

    return-void

    :cond_0
    iget v1, p0, Lcom/google/gson/stream/JsonReader;->stackSize:I

    mul-int/lit8 v1, v1, 0x2

    new-array v0, v1, [Lcom/google/gson/stream/JsonScope;

    iget-object v1, p0, Lcom/google/gson/stream/JsonReader;->stack:[Lcom/google/gson/stream/JsonScope;

    iget v2, p0, Lcom/google/gson/stream/JsonReader;->stackSize:I

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v0, p0, Lcom/google/gson/stream/JsonReader;->stack:[Lcom/google/gson/stream/JsonScope;

    goto :goto_0
.end method

.method private readEscapeCharacter()C
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v10, 0x4

    iget v5, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    iget v6, p0, Lcom/google/gson/stream/JsonReader;->limit:I

    if-eq v5, v6, :cond_1

    :cond_0
    iget-object v5, p0, Lcom/google/gson/stream/JsonReader;->buffer:[C

    iget v6, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    add-int/lit8 v7, v6, 0x1

    iput v7, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    aget-char v2, v5, v6

    sparse-switch v2, :sswitch_data_0

    :sswitch_0
    return v2

    :cond_1
    const/4 v5, 0x1

    invoke-direct {p0, v5}, Lcom/google/gson/stream/JsonReader;->fillBuffer(I)Z

    move-result v5

    if-nez v5, :cond_0

    const-string/jumbo v5, "Unterminated escape sequence"

    invoke-direct {p0, v5}, Lcom/google/gson/stream/JsonReader;->syntaxError(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v5

    throw v5

    :sswitch_1
    iget v5, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    add-int/lit8 v5, v5, 0x4

    iget v6, p0, Lcom/google/gson/stream/JsonReader;->limit:I

    if-gt v5, v6, :cond_3

    :cond_2
    const/4 v4, 0x0

    iget v3, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    add-int/lit8 v1, v3, 0x4

    :goto_0
    if-lt v3, v1, :cond_4

    iget v5, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    add-int/lit8 v5, v5, 0x4

    iput v5, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    return v4

    :cond_3
    invoke-direct {p0, v10}, Lcom/google/gson/stream/JsonReader;->fillBuffer(I)Z

    move-result v5

    if-nez v5, :cond_2

    const-string/jumbo v5, "Unterminated escape sequence"

    invoke-direct {p0, v5}, Lcom/google/gson/stream/JsonReader;->syntaxError(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v5

    throw v5

    :cond_4
    iget-object v5, p0, Lcom/google/gson/stream/JsonReader;->buffer:[C

    aget-char v0, v5, v3

    shl-int/lit8 v5, v4, 0x4

    int-to-char v4, v5

    const/16 v5, 0x30

    if-ge v0, v5, :cond_8

    :cond_5
    const/16 v5, 0x61

    if-ge v0, v5, :cond_9

    :cond_6
    const/16 v5, 0x41

    if-ge v0, v5, :cond_a

    :cond_7
    new-instance v5, Ljava/lang/NumberFormatException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "\\u"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/google/gson/stream/JsonReader;->stringPool:Lcom/google/gson/stream/StringPool;

    iget-object v8, p0, Lcom/google/gson/stream/JsonReader;->buffer:[C

    iget v9, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    invoke-virtual {v7, v8, v9, v10}, Lcom/google/gson/stream/StringPool;->get([CII)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_8
    const/16 v5, 0x39

    if-gt v0, v5, :cond_5

    add-int/lit8 v5, v0, -0x30

    add-int/2addr v5, v4

    int-to-char v4, v5

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_9
    const/16 v5, 0x66

    if-gt v0, v5, :cond_6

    add-int/lit8 v5, v0, -0x61

    add-int/lit8 v5, v5, 0xa

    add-int/2addr v5, v4

    int-to-char v4, v5

    goto :goto_1

    :cond_a
    const/16 v5, 0x46

    if-gt v0, v5, :cond_7

    add-int/lit8 v5, v0, -0x41

    add-int/lit8 v5, v5, 0xa

    add-int/2addr v5, v4

    int-to-char v4, v5

    goto :goto_1

    :sswitch_2
    const/16 v5, 0x9

    return v5

    :sswitch_3
    const/16 v5, 0x8

    return v5

    :sswitch_4
    const/16 v5, 0xa

    return v5

    :sswitch_5
    const/16 v5, 0xd

    return v5

    :sswitch_6
    const/16 v5, 0xc

    return v5

    nop

    :sswitch_data_0
    .sparse-switch
        0x22 -> :sswitch_0
        0x27 -> :sswitch_0
        0x5c -> :sswitch_0
        0x62 -> :sswitch_3
        0x66 -> :sswitch_6
        0x6e -> :sswitch_4
        0x72 -> :sswitch_5
        0x74 -> :sswitch_2
        0x75 -> :sswitch_1
    .end sparse-switch
.end method

.method private readLiteral()Lcom/google/gson/stream/JsonToken;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/gson/stream/JsonReader;->nextLiteral(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/gson/stream/JsonReader;->value:Ljava/lang/String;

    iget v0, p0, Lcom/google/gson/stream/JsonReader;->valueLength:I

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->decodeLiteral()Lcom/google/gson/stream/JsonToken;

    move-result-object v0

    iput-object v0, p0, Lcom/google/gson/stream/JsonReader;->token:Lcom/google/gson/stream/JsonToken;

    iget-object v0, p0, Lcom/google/gson/stream/JsonReader;->token:Lcom/google/gson/stream/JsonToken;

    sget-object v1, Lcom/google/gson/stream/JsonToken;->STRING:Lcom/google/gson/stream/JsonToken;

    if-eq v0, v1, :cond_1

    :goto_0
    iget-object v0, p0, Lcom/google/gson/stream/JsonReader;->token:Lcom/google/gson/stream/JsonToken;

    return-object v0

    :cond_0
    const-string/jumbo v0, "Expected literal value"

    invoke-direct {p0, v0}, Lcom/google/gson/stream/JsonReader;->syntaxError(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    :cond_1
    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->checkLenient()V

    goto :goto_0
.end method

.method private skipTo(Ljava/lang/String;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v3, 0x0

    :goto_0
    iget v1, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v1, v2

    iget v2, p0, Lcom/google/gson/stream/JsonReader;->limit:I

    if-gt v1, v2, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-lt v0, v1, :cond_2

    const/4 v1, 0x1

    return v1

    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/google/gson/stream/JsonReader;->fillBuffer(I)Z

    move-result v1

    if-nez v1, :cond_0

    return v3

    :cond_2
    iget-object v1, p0, Lcom/google/gson/stream/JsonReader;->buffer:[C

    iget v2, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    add-int/2addr v2, v0

    aget-char v1, v1, v2

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-ne v1, v2, :cond_3

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    iget v1, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    goto :goto_0
.end method

.method private skipToEndOfLine()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :goto_0
    iget v1, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    iget v2, p0, Lcom/google/gson/stream/JsonReader;->limit:I

    if-ge v1, v2, :cond_2

    :cond_0
    iget-object v1, p0, Lcom/google/gson/stream/JsonReader;->buffer:[C

    iget v2, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    aget-char v0, v1, v2

    const/16 v1, 0xd

    if-ne v0, v1, :cond_3

    :cond_1
    :goto_1
    return-void

    :cond_2
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/google/gson/stream/JsonReader;->fillBuffer(I)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    :cond_3
    const/16 v1, 0xa

    if-eq v0, v1, :cond_1

    goto :goto_0
.end method

.method private syntaxError(Ljava/lang/String;)Ljava/io/IOException;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lcom/google/gson/stream/MalformedJsonException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " at line "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->getLineNumber()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " column "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->getColumnNumber()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/gson/stream/MalformedJsonException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public beginArray()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/google/gson/stream/JsonToken;->BEGIN_ARRAY:Lcom/google/gson/stream/JsonToken;

    invoke-direct {p0, v0}, Lcom/google/gson/stream/JsonReader;->expect(Lcom/google/gson/stream/JsonToken;)V

    return-void
.end method

.method public beginObject()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/google/gson/stream/JsonToken;->BEGIN_OBJECT:Lcom/google/gson/stream/JsonToken;

    invoke-direct {p0, v0}, Lcom/google/gson/stream/JsonReader;->expect(Lcom/google/gson/stream/JsonToken;)V

    return-void
.end method

.method public close()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/gson/stream/JsonReader;->value:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/gson/stream/JsonReader;->token:Lcom/google/gson/stream/JsonToken;

    iget-object v0, p0, Lcom/google/gson/stream/JsonReader;->stack:[Lcom/google/gson/stream/JsonScope;

    sget-object v1, Lcom/google/gson/stream/JsonScope;->CLOSED:Lcom/google/gson/stream/JsonScope;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/gson/stream/JsonReader;->stackSize:I

    iget-object v0, p0, Lcom/google/gson/stream/JsonReader;->in:Ljava/io/Reader;

    invoke-virtual {v0}, Ljava/io/Reader;->close()V

    return-void
.end method

.method public endArray()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/google/gson/stream/JsonToken;->END_ARRAY:Lcom/google/gson/stream/JsonToken;

    invoke-direct {p0, v0}, Lcom/google/gson/stream/JsonReader;->expect(Lcom/google/gson/stream/JsonToken;)V

    return-void
.end method

.method public endObject()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/google/gson/stream/JsonToken;->END_OBJECT:Lcom/google/gson/stream/JsonToken;

    invoke-direct {p0, v0}, Lcom/google/gson/stream/JsonReader;->expect(Lcom/google/gson/stream/JsonToken;)V

    return-void
.end method

.method public hasNext()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->peek()Lcom/google/gson/stream/JsonToken;

    iget-object v0, p0, Lcom/google/gson/stream/JsonReader;->token:Lcom/google/gson/stream/JsonToken;

    sget-object v1, Lcom/google/gson/stream/JsonToken;->END_OBJECT:Lcom/google/gson/stream/JsonToken;

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/google/gson/stream/JsonReader;->token:Lcom/google/gson/stream/JsonToken;

    sget-object v1, Lcom/google/gson/stream/JsonToken;->END_ARRAY:Lcom/google/gson/stream/JsonToken;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final isLenient()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/gson/stream/JsonReader;->lenient:Z

    return v0
.end method

.method public nextBoolean()Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->peek()Lcom/google/gson/stream/JsonToken;

    iget-object v1, p0, Lcom/google/gson/stream/JsonReader;->token:Lcom/google/gson/stream/JsonToken;

    sget-object v2, Lcom/google/gson/stream/JsonToken;->BOOLEAN:Lcom/google/gson/stream/JsonToken;

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/google/gson/stream/JsonReader;->value:Ljava/lang/String;

    const-string/jumbo v2, "true"

    if-eq v1, v2, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->advance()Lcom/google/gson/stream/JsonToken;

    return v0

    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Expected a boolean but was "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/google/gson/stream/JsonReader;->token:Lcom/google/gson/stream/JsonToken;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " at line "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->getLineNumber()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " column "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->getColumnNumber()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public nextDouble()D
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->peek()Lcom/google/gson/stream/JsonToken;

    iget-object v2, p0, Lcom/google/gson/stream/JsonReader;->token:Lcom/google/gson/stream/JsonToken;

    sget-object v3, Lcom/google/gson/stream/JsonToken;->STRING:Lcom/google/gson/stream/JsonToken;

    if-ne v2, v3, :cond_2

    :cond_0
    iget-object v2, p0, Lcom/google/gson/stream/JsonReader;->value:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    cmpl-double v2, v0, v2

    if-ltz v2, :cond_1

    iget-object v2, p0, Lcom/google/gson/stream/JsonReader;->value:Ljava/lang/String;

    const-string/jumbo v3, "0"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    :cond_1
    iget-boolean v2, p0, Lcom/google/gson/stream/JsonReader;->lenient:Z

    if-eqz v2, :cond_4

    :goto_0
    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->advance()Lcom/google/gson/stream/JsonToken;

    return-wide v0

    :cond_2
    iget-object v2, p0, Lcom/google/gson/stream/JsonReader;->token:Lcom/google/gson/stream/JsonToken;

    sget-object v3, Lcom/google/gson/stream/JsonToken;->NUMBER:Lcom/google/gson/stream/JsonToken;

    if-eq v2, v3, :cond_0

    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Expected a double but was "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/google/gson/stream/JsonReader;->token:Lcom/google/gson/stream/JsonToken;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " at line "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->getLineNumber()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " column "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->getColumnNumber()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_3
    new-instance v2, Lcom/google/gson/stream/MalformedJsonException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "JSON forbids octal prefixes: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/google/gson/stream/JsonReader;->value:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " at line "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->getLineNumber()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " column "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->getColumnNumber()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/google/gson/stream/MalformedJsonException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_4
    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v2

    if-eqz v2, :cond_6

    :cond_5
    new-instance v2, Lcom/google/gson/stream/MalformedJsonException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "JSON forbids NaN and infinities: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/google/gson/stream/JsonReader;->value:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " at line "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->getLineNumber()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " column "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->getColumnNumber()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/google/gson/stream/MalformedJsonException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_6
    invoke-static {v0, v1}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v2

    if-nez v2, :cond_5

    goto/16 :goto_0
.end method

.method public nextInt()I
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->peek()Lcom/google/gson/stream/JsonToken;

    iget-object v5, p0, Lcom/google/gson/stream/JsonReader;->token:Lcom/google/gson/stream/JsonToken;

    sget-object v6, Lcom/google/gson/stream/JsonToken;->STRING:Lcom/google/gson/stream/JsonToken;

    if-ne v5, v6, :cond_4

    :cond_0
    :try_start_0
    iget-object v5, p0, Lcom/google/gson/stream/JsonReader;->value:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    :cond_1
    int-to-long v6, v3

    const-wide/16 v8, 0x1

    cmp-long v5, v6, v8

    if-gez v5, :cond_2

    const/4 v4, 0x1

    :cond_2
    if-nez v4, :cond_3

    iget-object v4, p0, Lcom/google/gson/stream/JsonReader;->value:Ljava/lang/String;

    const-string/jumbo v5, "0"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_5

    :cond_3
    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->advance()Lcom/google/gson/stream/JsonToken;

    return v3

    :cond_4
    iget-object v5, p0, Lcom/google/gson/stream/JsonReader;->token:Lcom/google/gson/stream/JsonToken;

    sget-object v6, Lcom/google/gson/stream/JsonToken;->NUMBER:Lcom/google/gson/stream/JsonToken;

    if-eq v5, v6, :cond_0

    new-instance v4, Ljava/lang/IllegalStateException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Expected an int but was "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/google/gson/stream/JsonReader;->token:Lcom/google/gson/stream/JsonToken;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " at line "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->getLineNumber()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " column "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->getColumnNumber()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    :catch_0
    move-exception v2

    iget-object v5, p0, Lcom/google/gson/stream/JsonReader;->value:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    double-to-int v3, v0

    int-to-double v6, v3

    cmpl-double v5, v6, v0

    if-eqz v5, :cond_1

    new-instance v4, Ljava/lang/NumberFormatException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Expected an int but was "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/google/gson/stream/JsonReader;->value:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " at line "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->getLineNumber()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " column "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->getColumnNumber()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_5
    new-instance v4, Lcom/google/gson/stream/MalformedJsonException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "JSON forbids octal prefixes: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/google/gson/stream/JsonReader;->value:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " at line "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->getLineNumber()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " column "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->getColumnNumber()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/google/gson/stream/MalformedJsonException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method public nextLong()J
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->peek()Lcom/google/gson/stream/JsonToken;

    iget-object v6, p0, Lcom/google/gson/stream/JsonReader;->token:Lcom/google/gson/stream/JsonToken;

    sget-object v7, Lcom/google/gson/stream/JsonToken;->STRING:Lcom/google/gson/stream/JsonToken;

    if-ne v6, v7, :cond_4

    :cond_0
    :try_start_0
    iget-object v6, p0, Lcom/google/gson/stream/JsonReader;->value:Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v4

    :cond_1
    const-wide/16 v6, 0x1

    cmp-long v6, v4, v6

    if-gez v6, :cond_2

    const/4 v3, 0x1

    :cond_2
    if-nez v3, :cond_3

    iget-object v3, p0, Lcom/google/gson/stream/JsonReader;->value:Ljava/lang/String;

    const-string/jumbo v6, "0"

    invoke-virtual {v3, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_5

    :cond_3
    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->advance()Lcom/google/gson/stream/JsonToken;

    return-wide v4

    :cond_4
    iget-object v6, p0, Lcom/google/gson/stream/JsonReader;->token:Lcom/google/gson/stream/JsonToken;

    sget-object v7, Lcom/google/gson/stream/JsonToken;->NUMBER:Lcom/google/gson/stream/JsonToken;

    if-eq v6, v7, :cond_0

    new-instance v3, Ljava/lang/IllegalStateException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Expected a long but was "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/google/gson/stream/JsonReader;->token:Lcom/google/gson/stream/JsonToken;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " at line "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->getLineNumber()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " column "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->getColumnNumber()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    :catch_0
    move-exception v2

    iget-object v6, p0, Lcom/google/gson/stream/JsonReader;->value:Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    double-to-long v4, v0

    long-to-double v6, v4

    cmpl-double v6, v6, v0

    if-eqz v6, :cond_1

    new-instance v3, Ljava/lang/NumberFormatException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Expected a long but was "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/google/gson/stream/JsonReader;->value:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " at line "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->getLineNumber()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " column "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->getColumnNumber()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v6}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_5
    new-instance v3, Lcom/google/gson/stream/MalformedJsonException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "JSON forbids octal prefixes: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/google/gson/stream/JsonReader;->value:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " at line "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->getLineNumber()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " column "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->getColumnNumber()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v6}, Lcom/google/gson/stream/MalformedJsonException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public nextName()Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->peek()Lcom/google/gson/stream/JsonToken;

    iget-object v1, p0, Lcom/google/gson/stream/JsonReader;->token:Lcom/google/gson/stream/JsonToken;

    sget-object v2, Lcom/google/gson/stream/JsonToken;->NAME:Lcom/google/gson/stream/JsonToken;

    if-ne v1, v2, :cond_0

    iget-object v0, p0, Lcom/google/gson/stream/JsonReader;->name:Ljava/lang/String;

    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->advance()Lcom/google/gson/stream/JsonToken;

    return-object v0

    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Expected a name but was "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->peek()Lcom/google/gson/stream/JsonToken;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " at line "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->getLineNumber()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " column "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->getColumnNumber()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public nextNull()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->peek()Lcom/google/gson/stream/JsonToken;

    iget-object v0, p0, Lcom/google/gson/stream/JsonReader;->token:Lcom/google/gson/stream/JsonToken;

    sget-object v1, Lcom/google/gson/stream/JsonToken;->NULL:Lcom/google/gson/stream/JsonToken;

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->advance()Lcom/google/gson/stream/JsonToken;

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Expected null but was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/gson/stream/JsonReader;->token:Lcom/google/gson/stream/JsonToken;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " at line "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->getLineNumber()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " column "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->getColumnNumber()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public nextString()Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->peek()Lcom/google/gson/stream/JsonToken;

    iget-object v1, p0, Lcom/google/gson/stream/JsonReader;->token:Lcom/google/gson/stream/JsonToken;

    sget-object v2, Lcom/google/gson/stream/JsonToken;->STRING:Lcom/google/gson/stream/JsonToken;

    if-ne v1, v2, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/google/gson/stream/JsonReader;->value:Ljava/lang/String;

    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->advance()Lcom/google/gson/stream/JsonToken;

    return-object v0

    :cond_1
    iget-object v1, p0, Lcom/google/gson/stream/JsonReader;->token:Lcom/google/gson/stream/JsonToken;

    sget-object v2, Lcom/google/gson/stream/JsonToken;->NUMBER:Lcom/google/gson/stream/JsonToken;

    if-eq v1, v2, :cond_0

    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Expected a string but was "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->peek()Lcom/google/gson/stream/JsonToken;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " at line "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->getLineNumber()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " column "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->getColumnNumber()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public peek()Lcom/google/gson/stream/JsonToken;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v6, 0x1

    const/4 v5, 0x0

    iget-object v2, p0, Lcom/google/gson/stream/JsonReader;->token:Lcom/google/gson/stream/JsonToken;

    if-nez v2, :cond_0

    sget-object v2, Lcom/google/gson/stream/JsonReader$2;->$SwitchMap$com$google$gson$stream$JsonScope:[I

    iget-object v3, p0, Lcom/google/gson/stream/JsonReader;->stack:[Lcom/google/gson/stream/JsonScope;

    iget v4, p0, Lcom/google/gson/stream/JsonReader;->stackSize:I

    add-int/lit8 v4, v4, -0x1

    aget-object v3, v3, v4

    invoke-virtual {v3}, Lcom/google/gson/stream/JsonScope;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    :cond_0
    iget-object v2, p0, Lcom/google/gson/stream/JsonReader;->token:Lcom/google/gson/stream/JsonToken;

    return-object v2

    :pswitch_0
    iget-boolean v2, p0, Lcom/google/gson/stream/JsonReader;->lenient:Z

    if-nez v2, :cond_2

    :goto_0
    iget-object v2, p0, Lcom/google/gson/stream/JsonReader;->stack:[Lcom/google/gson/stream/JsonScope;

    iget v3, p0, Lcom/google/gson/stream/JsonReader;->stackSize:I

    add-int/lit8 v3, v3, -0x1

    sget-object v4, Lcom/google/gson/stream/JsonScope;->NONEMPTY_DOCUMENT:Lcom/google/gson/stream/JsonScope;

    aput-object v4, v2, v3

    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->nextValue()Lcom/google/gson/stream/JsonToken;

    move-result-object v1

    iget-boolean v2, p0, Lcom/google/gson/stream/JsonReader;->lenient:Z

    if-eqz v2, :cond_3

    :cond_1
    return-object v1

    :cond_2
    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->consumeNonExecutePrefix()V

    goto :goto_0

    :cond_3
    iget-object v2, p0, Lcom/google/gson/stream/JsonReader;->token:Lcom/google/gson/stream/JsonToken;

    sget-object v3, Lcom/google/gson/stream/JsonToken;->BEGIN_ARRAY:Lcom/google/gson/stream/JsonToken;

    if-eq v2, v3, :cond_1

    iget-object v2, p0, Lcom/google/gson/stream/JsonReader;->token:Lcom/google/gson/stream/JsonToken;

    sget-object v3, Lcom/google/gson/stream/JsonToken;->BEGIN_OBJECT:Lcom/google/gson/stream/JsonToken;

    if-eq v2, v3, :cond_1

    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Expected JSON document to start with \'[\' or \'{\' but was "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/google/gson/stream/JsonReader;->token:Lcom/google/gson/stream/JsonToken;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " at line "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->getLineNumber()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " column "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->getColumnNumber()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    :pswitch_1
    invoke-direct {p0, v6}, Lcom/google/gson/stream/JsonReader;->nextInArray(Z)Lcom/google/gson/stream/JsonToken;

    move-result-object v2

    return-object v2

    :pswitch_2
    invoke-direct {p0, v5}, Lcom/google/gson/stream/JsonReader;->nextInArray(Z)Lcom/google/gson/stream/JsonToken;

    move-result-object v2

    return-object v2

    :pswitch_3
    invoke-direct {p0, v6}, Lcom/google/gson/stream/JsonReader;->nextInObject(Z)Lcom/google/gson/stream/JsonToken;

    move-result-object v2

    return-object v2

    :pswitch_4
    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->objectValue()Lcom/google/gson/stream/JsonToken;

    move-result-object v2

    return-object v2

    :pswitch_5
    invoke-direct {p0, v5}, Lcom/google/gson/stream/JsonReader;->nextInObject(Z)Lcom/google/gson/stream/JsonToken;

    move-result-object v2

    return-object v2

    :pswitch_6
    invoke-direct {p0, v5}, Lcom/google/gson/stream/JsonReader;->nextNonWhitespace(Z)I

    move-result v0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_4

    iget v2, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    iget-boolean v2, p0, Lcom/google/gson/stream/JsonReader;->lenient:Z

    if-eqz v2, :cond_5

    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->nextValue()Lcom/google/gson/stream/JsonToken;

    move-result-object v2

    return-object v2

    :cond_4
    sget-object v2, Lcom/google/gson/stream/JsonToken;->END_DOCUMENT:Lcom/google/gson/stream/JsonToken;

    return-object v2

    :cond_5
    const-string/jumbo v2, "Expected EOF"

    invoke-direct {p0, v2}, Lcom/google/gson/stream/JsonReader;->syntaxError(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v2

    throw v2

    :pswitch_7
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string/jumbo v3, "JsonReader is closed"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method public final setLenient(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/google/gson/stream/JsonReader;->lenient:Z

    return-void
.end method

.method public skipValue()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v4, 0x0

    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/google/gson/stream/JsonReader;->skipping:Z

    const/4 v1, 0x0

    :cond_0
    :try_start_0
    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->advance()Lcom/google/gson/stream/JsonToken;

    move-result-object v2

    sget-object v3, Lcom/google/gson/stream/JsonToken;->BEGIN_ARRAY:Lcom/google/gson/stream/JsonToken;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v2, v3, :cond_2

    :cond_1
    add-int/lit8 v1, v1, 0x1

    :goto_0
    if-nez v1, :cond_0

    iput-boolean v4, p0, Lcom/google/gson/stream/JsonReader;->skipping:Z

    return-void

    :cond_2
    :try_start_1
    sget-object v3, Lcom/google/gson/stream/JsonToken;->BEGIN_OBJECT:Lcom/google/gson/stream/JsonToken;

    if-eq v2, v3, :cond_1

    sget-object v3, Lcom/google/gson/stream/JsonToken;->END_ARRAY:Lcom/google/gson/stream/JsonToken;

    if-ne v2, v3, :cond_4

    :cond_3
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_4
    sget-object v3, Lcom/google/gson/stream/JsonToken;->END_OBJECT:Lcom/google/gson/stream/JsonToken;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eq v2, v3, :cond_3

    goto :goto_0

    :catchall_0
    move-exception v0

    iput-boolean v4, p0, Lcom/google/gson/stream/JsonReader;->skipping:Z

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " at line "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->getLineNumber()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " column "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->getColumnNumber()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
