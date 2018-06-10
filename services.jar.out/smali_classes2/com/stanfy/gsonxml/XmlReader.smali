.class public Lcom/stanfy/gsonxml/XmlReader;
.super Lcom/google/gson/stream/JsonReader;
.source "XmlReader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stanfy/gsonxml/XmlReader$3;,
        Lcom/stanfy/gsonxml/XmlReader$AttributesData;,
        Lcom/stanfy/gsonxml/XmlReader$ClosedTag;,
        Lcom/stanfy/gsonxml/XmlReader$Creator;,
        Lcom/stanfy/gsonxml/XmlReader$Options;,
        Lcom/stanfy/gsonxml/XmlReader$RefsPool;,
        Lcom/stanfy/gsonxml/XmlReader$Scope;,
        Lcom/stanfy/gsonxml/XmlReader$TokenRef;,
        Lcom/stanfy/gsonxml/XmlReader$ValueRef;,
        Lcom/stanfy/gsonxml/XmlReader$XmlTokenInfo;
    }
.end annotation


# static fields
.field private static final END_TAG:I = 0x2

.field private static final IGNORE:I = -0x1

.field private static final START_TAG:I = 0x1

.field private static final VALUE:I = 0x3


# instance fields
.field private final attributes:Lcom/stanfy/gsonxml/XmlReader$AttributesData;

.field private final closeStack:Lcom/stanfy/gsonxml/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/stanfy/gsonxml/Stack",
            "<",
            "Lcom/stanfy/gsonxml/XmlReader$ClosedTag;",
            ">;"
        }
    .end annotation
.end field

.field private endReached:Z

.field private expectedToken:Lcom/google/gson/stream/JsonToken;

.field private firstStart:Z

.field private lastTextWhiteSpace:Z

.field final options:Lcom/stanfy/gsonxml/XmlReader$Options;

.field private final scopeStack:Lcom/stanfy/gsonxml/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/stanfy/gsonxml/Stack",
            "<",
            "Lcom/stanfy/gsonxml/XmlReader$Scope;",
            ">;"
        }
    .end annotation
.end field

.field private skipping:Z

.field private textNameCounter:I

.field private token:Lcom/google/gson/stream/JsonToken;

.field private final tokensPool:Lcom/stanfy/gsonxml/XmlReader$RefsPool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/stanfy/gsonxml/XmlReader$RefsPool",
            "<",
            "Lcom/stanfy/gsonxml/XmlReader$TokenRef;",
            ">;"
        }
    .end annotation
.end field

.field private tokensQueue:Lcom/stanfy/gsonxml/XmlReader$TokenRef;

.field private tokensQueueStart:Lcom/stanfy/gsonxml/XmlReader$TokenRef;

.field private final valuesPool:Lcom/stanfy/gsonxml/XmlReader$RefsPool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/stanfy/gsonxml/XmlReader$RefsPool",
            "<",
            "Lcom/stanfy/gsonxml/XmlReader$ValueRef;",
            ">;"
        }
    .end annotation
.end field

.field private valuesQueue:Lcom/stanfy/gsonxml/XmlReader$ValueRef;

.field private valuesQueueStart:Lcom/stanfy/gsonxml/XmlReader$ValueRef;

.field private final xmlParser:Lorg/xmlpull/v1/XmlPullParser;

.field private final xmlToken:Lcom/stanfy/gsonxml/XmlReader$XmlTokenInfo;


# direct methods
.method public constructor <init>(Ljava/io/Reader;Lcom/stanfy/gsonxml/XmlParserCreator;Lcom/stanfy/gsonxml/XmlReader$Options;)V
    .locals 4

    const/4 v3, 0x0

    invoke-direct {p0, p1}, Lcom/google/gson/stream/JsonReader;-><init>(Ljava/io/Reader;)V

    new-instance v1, Lcom/stanfy/gsonxml/XmlReader$RefsPool;

    new-instance v2, Lcom/stanfy/gsonxml/XmlReader$1;

    invoke-direct {v2, p0}, Lcom/stanfy/gsonxml/XmlReader$1;-><init>(Lcom/stanfy/gsonxml/XmlReader;)V

    invoke-direct {v1, v2}, Lcom/stanfy/gsonxml/XmlReader$RefsPool;-><init>(Lcom/stanfy/gsonxml/XmlReader$Creator;)V

    iput-object v1, p0, Lcom/stanfy/gsonxml/XmlReader;->tokensPool:Lcom/stanfy/gsonxml/XmlReader$RefsPool;

    new-instance v1, Lcom/stanfy/gsonxml/XmlReader$RefsPool;

    new-instance v2, Lcom/stanfy/gsonxml/XmlReader$2;

    invoke-direct {v2, p0}, Lcom/stanfy/gsonxml/XmlReader$2;-><init>(Lcom/stanfy/gsonxml/XmlReader;)V

    invoke-direct {v1, v2}, Lcom/stanfy/gsonxml/XmlReader$RefsPool;-><init>(Lcom/stanfy/gsonxml/XmlReader$Creator;)V

    iput-object v1, p0, Lcom/stanfy/gsonxml/XmlReader;->valuesPool:Lcom/stanfy/gsonxml/XmlReader$RefsPool;

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/stanfy/gsonxml/XmlReader;->firstStart:Z

    iput-boolean v3, p0, Lcom/stanfy/gsonxml/XmlReader;->lastTextWhiteSpace:Z

    new-instance v1, Lcom/stanfy/gsonxml/Stack;

    invoke-direct {v1}, Lcom/stanfy/gsonxml/Stack;-><init>()V

    iput-object v1, p0, Lcom/stanfy/gsonxml/XmlReader;->scopeStack:Lcom/stanfy/gsonxml/Stack;

    new-instance v1, Lcom/stanfy/gsonxml/Stack;

    invoke-direct {v1}, Lcom/stanfy/gsonxml/Stack;-><init>()V

    iput-object v1, p0, Lcom/stanfy/gsonxml/XmlReader;->closeStack:Lcom/stanfy/gsonxml/Stack;

    iput v3, p0, Lcom/stanfy/gsonxml/XmlReader;->textNameCounter:I

    new-instance v1, Lcom/stanfy/gsonxml/XmlReader$XmlTokenInfo;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/stanfy/gsonxml/XmlReader$XmlTokenInfo;-><init>(Lcom/stanfy/gsonxml/XmlReader$1;)V

    iput-object v1, p0, Lcom/stanfy/gsonxml/XmlReader;->xmlToken:Lcom/stanfy/gsonxml/XmlReader$XmlTokenInfo;

    new-instance v1, Lcom/stanfy/gsonxml/XmlReader$AttributesData;

    const/16 v2, 0xa

    invoke-direct {v1, p0, v2}, Lcom/stanfy/gsonxml/XmlReader$AttributesData;-><init>(Lcom/stanfy/gsonxml/XmlReader;I)V

    iput-object v1, p0, Lcom/stanfy/gsonxml/XmlReader;->attributes:Lcom/stanfy/gsonxml/XmlReader$AttributesData;

    invoke-interface {p2}, Lcom/stanfy/gsonxml/XmlParserCreator;->createParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v1

    iput-object v1, p0, Lcom/stanfy/gsonxml/XmlReader;->xmlParser:Lorg/xmlpull/v1/XmlPullParser;

    iput-object p3, p0, Lcom/stanfy/gsonxml/XmlReader;->options:Lcom/stanfy/gsonxml/XmlReader$Options;

    iget-object v1, p0, Lcom/stanfy/gsonxml/XmlReader;->xmlToken:Lcom/stanfy/gsonxml/XmlReader$XmlTokenInfo;

    const/4 v2, -0x1

    iput v2, v1, Lcom/stanfy/gsonxml/XmlReader$XmlTokenInfo;->type:I

    :try_start_0
    iget-object v1, p0, Lcom/stanfy/gsonxml/XmlReader;->xmlParser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v1, p1}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V

    iget-object v1, p0, Lcom/stanfy/gsonxml/XmlReader;->xmlParser:Lorg/xmlpull/v1/XmlPullParser;

    iget-boolean v2, p3, Lcom/stanfy/gsonxml/XmlReader$Options;->namespaces:Z

    const-string/jumbo v3, "http://xmlpull.org/v1/doc/features.html#process-namespaces"

    invoke-interface {v1, v3, v2}, Lorg/xmlpull/v1/XmlPullParser;->setFeature(Ljava/lang/String;Z)V
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private adaptCurrentToken()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v5, 0x1

    iget-object v3, p0, Lcom/stanfy/gsonxml/XmlReader;->token:Lcom/google/gson/stream/JsonToken;

    iget-object v4, p0, Lcom/stanfy/gsonxml/XmlReader;->expectedToken:Lcom/google/gson/stream/JsonToken;

    if-eq v3, v4, :cond_1

    iget-object v3, p0, Lcom/stanfy/gsonxml/XmlReader;->expectedToken:Lcom/google/gson/stream/JsonToken;

    sget-object v4, Lcom/google/gson/stream/JsonToken;->BEGIN_ARRAY:Lcom/google/gson/stream/JsonToken;

    if-ne v3, v4, :cond_2

    sget-object v3, Lcom/stanfy/gsonxml/XmlReader$3;->$SwitchMap$com$google$gson$stream$JsonToken:[I

    iget-object v4, p0, Lcom/stanfy/gsonxml/XmlReader;->token:Lcom/google/gson/stream/JsonToken;

    invoke-virtual {v4}, Lcom/google/gson/stream/JsonToken;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :cond_1
    return-void

    :cond_2
    return-void

    :pswitch_0
    sget-object v3, Lcom/google/gson/stream/JsonToken;->BEGIN_ARRAY:Lcom/google/gson/stream/JsonToken;

    iput-object v3, p0, Lcom/stanfy/gsonxml/XmlReader;->token:Lcom/google/gson/stream/JsonToken;

    iget-object v3, p0, Lcom/stanfy/gsonxml/XmlReader;->scopeStack:Lcom/stanfy/gsonxml/Stack;

    invoke-virtual {v3}, Lcom/stanfy/gsonxml/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/stanfy/gsonxml/XmlReader$Scope;

    invoke-direct {p0}, Lcom/stanfy/gsonxml/XmlReader;->peekNextToken()Lcom/google/gson/stream/JsonToken;

    move-result-object v3

    sget-object v4, Lcom/google/gson/stream/JsonToken;->NAME:Lcom/google/gson/stream/JsonToken;

    if-ne v3, v4, :cond_0

    iget-object v3, p0, Lcom/stanfy/gsonxml/XmlReader;->options:Lcom/stanfy/gsonxml/XmlReader$Options;

    iget-boolean v3, v3, Lcom/stanfy/gsonxml/XmlReader$Options;->sameNameList:Z

    if-nez v3, :cond_6

    invoke-direct {p0}, Lcom/stanfy/gsonxml/XmlReader;->nextToken()Lcom/google/gson/stream/JsonToken;

    invoke-direct {p0}, Lcom/stanfy/gsonxml/XmlReader;->nextValue()Lcom/stanfy/gsonxml/XmlReader$ValueRef;

    iget-object v3, p0, Lcom/stanfy/gsonxml/XmlReader;->scopeStack:Lcom/stanfy/gsonxml/Stack;

    invoke-virtual {v3}, Lcom/stanfy/gsonxml/Stack;->size()I

    move-result v1

    iget-object v3, p0, Lcom/stanfy/gsonxml/XmlReader;->options:Lcom/stanfy/gsonxml/XmlReader$Options;

    iget-boolean v3, v3, Lcom/stanfy/gsonxml/XmlReader$Options;->primitiveArrays:Z

    if-nez v3, :cond_7

    :cond_3
    :goto_1
    iget-object v3, p0, Lcom/stanfy/gsonxml/XmlReader;->scopeStack:Lcom/stanfy/gsonxml/Stack;

    const/4 v4, 0x3

    invoke-virtual {v3, v4, v1}, Lcom/stanfy/gsonxml/Stack;->cleanup(II)I

    move-result v1

    iget-object v3, p0, Lcom/stanfy/gsonxml/XmlReader;->options:Lcom/stanfy/gsonxml/XmlReader$Options;

    iget-boolean v3, v3, Lcom/stanfy/gsonxml/XmlReader$Options;->primitiveArrays:Z

    if-nez v3, :cond_8

    :cond_4
    iget-object v3, p0, Lcom/stanfy/gsonxml/XmlReader;->scopeStack:Lcom/stanfy/gsonxml/Stack;

    sget-object v4, Lcom/stanfy/gsonxml/XmlReader$Scope;->INSIDE_ARRAY:Lcom/stanfy/gsonxml/XmlReader$Scope;

    invoke-virtual {v3, v1, v4}, Lcom/stanfy/gsonxml/Stack;->pushAt(ILjava/lang/Object;)V

    iget-object v3, p0, Lcom/stanfy/gsonxml/XmlReader;->scopeStack:Lcom/stanfy/gsonxml/Stack;

    invoke-virtual {v3}, Lcom/stanfy/gsonxml/Stack;->size()I

    move-result v3

    add-int/lit8 v4, v1, 0x1

    if-gt v3, v4, :cond_9

    :cond_5
    iget-object v3, p0, Lcom/stanfy/gsonxml/XmlReader;->scopeStack:Lcom/stanfy/gsonxml/Stack;

    add-int/lit8 v4, v1, 0x1

    sget-object v5, Lcom/stanfy/gsonxml/XmlReader$Scope;->INSIDE_OBJECT:Lcom/stanfy/gsonxml/XmlReader$Scope;

    invoke-virtual {v3, v4, v5}, Lcom/stanfy/gsonxml/Stack;->pushAt(ILjava/lang/Object;)V

    :goto_2
    invoke-direct {p0}, Lcom/stanfy/gsonxml/XmlReader;->peekNextToken()Lcom/google/gson/stream/JsonToken;

    move-result-object v3

    sget-object v4, Lcom/google/gson/stream/JsonToken;->BEGIN_OBJECT:Lcom/google/gson/stream/JsonToken;

    if-eq v3, v4, :cond_0

    sget-object v3, Lcom/google/gson/stream/JsonToken;->BEGIN_OBJECT:Lcom/google/gson/stream/JsonToken;

    invoke-direct {p0, v3}, Lcom/stanfy/gsonxml/XmlReader;->pushToQueue(Lcom/google/gson/stream/JsonToken;)V

    goto :goto_0

    :cond_6
    iget-object v3, p0, Lcom/stanfy/gsonxml/XmlReader;->scopeStack:Lcom/stanfy/gsonxml/Stack;

    invoke-virtual {v3, v5}, Lcom/stanfy/gsonxml/Stack;->cleanup(I)I

    sget-object v3, Lcom/google/gson/stream/JsonToken;->BEGIN_OBJECT:Lcom/google/gson/stream/JsonToken;

    invoke-direct {p0, v3}, Lcom/stanfy/gsonxml/XmlReader;->pushToQueue(Lcom/google/gson/stream/JsonToken;)V

    iget-object v3, p0, Lcom/stanfy/gsonxml/XmlReader;->scopeStack:Lcom/stanfy/gsonxml/Stack;

    sget-object v4, Lcom/stanfy/gsonxml/XmlReader$Scope;->INSIDE_EMBEDDED_ARRAY:Lcom/stanfy/gsonxml/XmlReader$Scope;

    invoke-virtual {v3, v4}, Lcom/stanfy/gsonxml/Stack;->push(Ljava/lang/Object;)V

    iget-object v3, p0, Lcom/stanfy/gsonxml/XmlReader;->scopeStack:Lcom/stanfy/gsonxml/Stack;

    sget-object v4, Lcom/stanfy/gsonxml/XmlReader$Scope;->INSIDE_OBJECT:Lcom/stanfy/gsonxml/XmlReader$Scope;

    invoke-virtual {v3, v4}, Lcom/stanfy/gsonxml/Stack;->push(Ljava/lang/Object;)V

    sget-object v3, Lcom/stanfy/gsonxml/XmlReader$Scope;->NAME:Lcom/stanfy/gsonxml/XmlReader$Scope;

    if-ne v0, v3, :cond_0

    iget-object v3, p0, Lcom/stanfy/gsonxml/XmlReader;->scopeStack:Lcom/stanfy/gsonxml/Stack;

    sget-object v4, Lcom/stanfy/gsonxml/XmlReader$Scope;->NAME:Lcom/stanfy/gsonxml/XmlReader$Scope;

    invoke-virtual {v3, v4}, Lcom/stanfy/gsonxml/Stack;->push(Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_7
    invoke-direct {p0}, Lcom/stanfy/gsonxml/XmlReader;->peekNextToken()Lcom/google/gson/stream/JsonToken;

    move-result-object v3

    if-nez v3, :cond_3

    invoke-direct {p0, v5}, Lcom/stanfy/gsonxml/XmlReader;->fillQueues(Z)V

    goto :goto_1

    :cond_8
    invoke-direct {p0}, Lcom/stanfy/gsonxml/XmlReader;->peekNextToken()Lcom/google/gson/stream/JsonToken;

    move-result-object v3

    sget-object v4, Lcom/google/gson/stream/JsonToken;->STRING:Lcom/google/gson/stream/JsonToken;

    if-ne v3, v4, :cond_4

    iget-object v3, p0, Lcom/stanfy/gsonxml/XmlReader;->scopeStack:Lcom/stanfy/gsonxml/Stack;

    sget-object v4, Lcom/stanfy/gsonxml/XmlReader$Scope;->INSIDE_PRIMITIVE_ARRAY:Lcom/stanfy/gsonxml/XmlReader$Scope;

    invoke-virtual {v3, v1, v4}, Lcom/stanfy/gsonxml/Stack;->pushAt(ILjava/lang/Object;)V

    goto/16 :goto_0

    :cond_9
    iget-object v3, p0, Lcom/stanfy/gsonxml/XmlReader;->scopeStack:Lcom/stanfy/gsonxml/Stack;

    add-int/lit8 v4, v1, 0x1

    invoke-virtual {v3, v4}, Lcom/stanfy/gsonxml/Stack;->get(I)Ljava/lang/Object;

    move-result-object v3

    sget-object v4, Lcom/stanfy/gsonxml/XmlReader$Scope;->INSIDE_OBJECT:Lcom/stanfy/gsonxml/XmlReader$Scope;

    if-ne v3, v4, :cond_5

    goto :goto_2

    :pswitch_1
    sget-object v3, Lcom/google/gson/stream/JsonToken;->BEGIN_ARRAY:Lcom/google/gson/stream/JsonToken;

    iput-object v3, p0, Lcom/stanfy/gsonxml/XmlReader;->token:Lcom/google/gson/stream/JsonToken;

    iget-object v3, p0, Lcom/stanfy/gsonxml/XmlReader;->options:Lcom/stanfy/gsonxml/XmlReader$Options;

    iget-boolean v3, v3, Lcom/stanfy/gsonxml/XmlReader$Options;->sameNameList:Z

    if-nez v3, :cond_a

    sget-object v3, Lcom/google/gson/stream/JsonToken;->END_ARRAY:Lcom/google/gson/stream/JsonToken;

    invoke-direct {p0, v3}, Lcom/stanfy/gsonxml/XmlReader;->pushToQueue(Lcom/google/gson/stream/JsonToken;)V

    goto/16 :goto_0

    :cond_a
    iget-object v3, p0, Lcom/stanfy/gsonxml/XmlReader;->options:Lcom/stanfy/gsonxml/XmlReader$Options;

    iget-boolean v3, v3, Lcom/stanfy/gsonxml/XmlReader$Options;->primitiveArrays:Z

    if-nez v3, :cond_b

    invoke-direct {p0}, Lcom/stanfy/gsonxml/XmlReader;->nextValue()Lcom/stanfy/gsonxml/XmlReader$ValueRef;

    move-result-object v3

    iget-object v2, v3, Lcom/stanfy/gsonxml/XmlReader$ValueRef;->value:Ljava/lang/String;

    sget-object v3, Lcom/google/gson/stream/JsonToken;->END_OBJECT:Lcom/google/gson/stream/JsonToken;

    invoke-direct {p0, v3}, Lcom/stanfy/gsonxml/XmlReader;->pushToQueue(Lcom/google/gson/stream/JsonToken;)V

    sget-object v3, Lcom/google/gson/stream/JsonToken;->STRING:Lcom/google/gson/stream/JsonToken;

    invoke-direct {p0, v3}, Lcom/stanfy/gsonxml/XmlReader;->pushToQueue(Lcom/google/gson/stream/JsonToken;)V

    sget-object v3, Lcom/google/gson/stream/JsonToken;->NAME:Lcom/google/gson/stream/JsonToken;

    invoke-direct {p0, v3}, Lcom/stanfy/gsonxml/XmlReader;->pushToQueue(Lcom/google/gson/stream/JsonToken;)V

    sget-object v3, Lcom/google/gson/stream/JsonToken;->BEGIN_OBJECT:Lcom/google/gson/stream/JsonToken;

    invoke-direct {p0, v3}, Lcom/stanfy/gsonxml/XmlReader;->pushToQueue(Lcom/google/gson/stream/JsonToken;)V

    invoke-direct {p0, v2}, Lcom/stanfy/gsonxml/XmlReader;->pushToQueue(Ljava/lang/String;)V

    const-string/jumbo v3, "$"

    invoke-direct {p0, v3}, Lcom/stanfy/gsonxml/XmlReader;->pushToQueue(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stanfy/gsonxml/XmlReader;->scopeStack:Lcom/stanfy/gsonxml/Stack;

    sget-object v4, Lcom/stanfy/gsonxml/XmlReader$Scope;->INSIDE_EMBEDDED_ARRAY:Lcom/stanfy/gsonxml/XmlReader$Scope;

    invoke-virtual {v3, v4}, Lcom/stanfy/gsonxml/Stack;->push(Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_b
    sget-object v3, Lcom/google/gson/stream/JsonToken;->STRING:Lcom/google/gson/stream/JsonToken;

    invoke-direct {p0, v3}, Lcom/stanfy/gsonxml/XmlReader;->pushToQueue(Lcom/google/gson/stream/JsonToken;)V

    iget-object v3, p0, Lcom/stanfy/gsonxml/XmlReader;->scopeStack:Lcom/stanfy/gsonxml/Stack;

    sget-object v4, Lcom/stanfy/gsonxml/XmlReader$Scope;->INSIDE_PRIMITIVE_EMBEDDED_ARRAY:Lcom/stanfy/gsonxml/XmlReader$Scope;

    invoke-virtual {v3, v4}, Lcom/stanfy/gsonxml/Stack;->push(Ljava/lang/Object;)V

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private addTextToQueue(Ljava/lang/String;Z)V
    .locals 3

    if-nez p2, :cond_2

    :cond_0
    sget-object v0, Lcom/google/gson/stream/JsonToken;->STRING:Lcom/google/gson/stream/JsonToken;

    invoke-direct {p0, v0}, Lcom/stanfy/gsonxml/XmlReader;->addToQueue(Lcom/google/gson/stream/JsonToken;)V

    invoke-direct {p0, p1}, Lcom/stanfy/gsonxml/XmlReader;->addToQueue(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lcom/stanfy/gsonxml/XmlReader;->tokensQueue:Lcom/stanfy/gsonxml/XmlReader$TokenRef;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/stanfy/gsonxml/XmlReader;->tokensQueue:Lcom/stanfy/gsonxml/XmlReader$TokenRef;

    iget-object v0, v0, Lcom/stanfy/gsonxml/XmlReader$TokenRef;->token:Lcom/google/gson/stream/JsonToken;

    sget-object v1, Lcom/google/gson/stream/JsonToken;->STRING:Lcom/google/gson/stream/JsonToken;

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/stanfy/gsonxml/XmlReader;->valuesQueue:Lcom/stanfy/gsonxml/XmlReader$ValueRef;

    iget-object v2, v1, Lcom/stanfy/gsonxml/XmlReader$ValueRef;->value:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/stanfy/gsonxml/XmlReader$ValueRef;->value:Ljava/lang/String;

    goto :goto_0
.end method

.method private addToQueue(Lcom/google/gson/stream/JsonToken;)V
    .locals 3

    const/4 v2, 0x0

    iget-object v1, p0, Lcom/stanfy/gsonxml/XmlReader;->tokensPool:Lcom/stanfy/gsonxml/XmlReader$RefsPool;

    invoke-virtual {v1}, Lcom/stanfy/gsonxml/XmlReader$RefsPool;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/stanfy/gsonxml/XmlReader$TokenRef;

    iput-object p1, v0, Lcom/stanfy/gsonxml/XmlReader$TokenRef;->token:Lcom/google/gson/stream/JsonToken;

    iput-object v2, v0, Lcom/stanfy/gsonxml/XmlReader$TokenRef;->next:Lcom/stanfy/gsonxml/XmlReader$TokenRef;

    iget-object v1, p0, Lcom/stanfy/gsonxml/XmlReader;->tokensQueue:Lcom/stanfy/gsonxml/XmlReader$TokenRef;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/stanfy/gsonxml/XmlReader;->tokensQueue:Lcom/stanfy/gsonxml/XmlReader$TokenRef;

    iput-object v0, v1, Lcom/stanfy/gsonxml/XmlReader$TokenRef;->next:Lcom/stanfy/gsonxml/XmlReader$TokenRef;

    iput-object v0, p0, Lcom/stanfy/gsonxml/XmlReader;->tokensQueue:Lcom/stanfy/gsonxml/XmlReader$TokenRef;

    :goto_0
    return-void

    :cond_0
    iput-object v0, p0, Lcom/stanfy/gsonxml/XmlReader;->tokensQueue:Lcom/stanfy/gsonxml/XmlReader$TokenRef;

    iput-object v0, p0, Lcom/stanfy/gsonxml/XmlReader;->tokensQueueStart:Lcom/stanfy/gsonxml/XmlReader$TokenRef;

    goto :goto_0
.end method

.method private addToQueue(Lcom/stanfy/gsonxml/XmlReader$AttributesData;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    iget v0, p1, Lcom/stanfy/gsonxml/XmlReader$AttributesData;->count:I

    const/4 v1, 0x0

    :goto_0
    if-lt v1, v0, :cond_0

    return-void

    :cond_0
    sget-object v2, Lcom/google/gson/stream/JsonToken;->NAME:Lcom/google/gson/stream/JsonToken;

    invoke-direct {p0, v2}, Lcom/stanfy/gsonxml/XmlReader;->addToQueue(Lcom/google/gson/stream/JsonToken;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "@"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1, v1}, Lcom/stanfy/gsonxml/XmlReader$AttributesData;->getName(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/stanfy/gsonxml/XmlReader;->addToQueue(Ljava/lang/String;)V

    sget-object v2, Lcom/google/gson/stream/JsonToken;->STRING:Lcom/google/gson/stream/JsonToken;

    invoke-direct {p0, v2}, Lcom/stanfy/gsonxml/XmlReader;->addToQueue(Lcom/google/gson/stream/JsonToken;)V

    iget-object v2, p1, Lcom/stanfy/gsonxml/XmlReader$AttributesData;->values:[Ljava/lang/String;

    aget-object v2, v2, v1

    invoke-direct {p0, v2}, Lcom/stanfy/gsonxml/XmlReader;->addToQueue(Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private addToQueue(Ljava/lang/String;)V
    .locals 3

    const/4 v2, 0x0

    iget-object v1, p0, Lcom/stanfy/gsonxml/XmlReader;->valuesPool:Lcom/stanfy/gsonxml/XmlReader$RefsPool;

    invoke-virtual {v1}, Lcom/stanfy/gsonxml/XmlReader$RefsPool;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/stanfy/gsonxml/XmlReader$ValueRef;

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/stanfy/gsonxml/XmlReader$ValueRef;->value:Ljava/lang/String;

    iput-object v2, v0, Lcom/stanfy/gsonxml/XmlReader$ValueRef;->next:Lcom/stanfy/gsonxml/XmlReader$ValueRef;

    iget-object v1, p0, Lcom/stanfy/gsonxml/XmlReader;->valuesQueue:Lcom/stanfy/gsonxml/XmlReader$ValueRef;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/stanfy/gsonxml/XmlReader;->valuesQueue:Lcom/stanfy/gsonxml/XmlReader$ValueRef;

    iput-object v0, v1, Lcom/stanfy/gsonxml/XmlReader$ValueRef;->next:Lcom/stanfy/gsonxml/XmlReader$ValueRef;

    iput-object v0, p0, Lcom/stanfy/gsonxml/XmlReader;->valuesQueue:Lcom/stanfy/gsonxml/XmlReader$ValueRef;

    :goto_0
    return-void

    :cond_0
    iput-object v0, p0, Lcom/stanfy/gsonxml/XmlReader;->valuesQueue:Lcom/stanfy/gsonxml/XmlReader$ValueRef;

    iput-object v0, p0, Lcom/stanfy/gsonxml/XmlReader;->valuesQueueStart:Lcom/stanfy/gsonxml/XmlReader$ValueRef;

    goto :goto_0
.end method

.method private dump()Ljava/lang/CharSequence;
    .locals 3

    const/16 v2, 0xa

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Scopes: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/stanfy/gsonxml/XmlReader;->scopeStack:Lcom/stanfy/gsonxml/Stack;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "Closed tags: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/stanfy/gsonxml/XmlReader;->closeStack:Lcom/stanfy/gsonxml/Stack;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "Token: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/stanfy/gsonxml/XmlReader;->token:Lcom/google/gson/stream/JsonToken;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "Tokens queue: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/stanfy/gsonxml/XmlReader;->tokensQueueStart:Lcom/stanfy/gsonxml/XmlReader$TokenRef;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "Values queue: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/stanfy/gsonxml/XmlReader;->valuesQueueStart:Lcom/stanfy/gsonxml/XmlReader$ValueRef;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    return-object v0
.end method

.method private expect(Lcom/google/gson/stream/JsonToken;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/stanfy/gsonxml/XmlReader;->peek()Lcom/google/gson/stream/JsonToken;

    move-result-object v0

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/stanfy/gsonxml/XmlReader;->token:Lcom/google/gson/stream/JsonToken;

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " expected, but met "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0}, Lcom/stanfy/gsonxml/XmlReader;->dump()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private fillQueues(Z)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    const/4 v4, 0x0

    move v0, p1

    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/stanfy/gsonxml/XmlReader;->tokensQueue:Lcom/stanfy/gsonxml/XmlReader$TokenRef;

    if-eqz v2, :cond_3

    :cond_1
    if-nez v0, :cond_4

    :cond_2
    :goto_1
    return-void

    :cond_3
    iget-boolean v2, p0, Lcom/stanfy/gsonxml/XmlReader;->endReached:Z

    if-nez v2, :cond_1

    :cond_4
    invoke-direct {p0}, Lcom/stanfy/gsonxml/XmlReader;->nextXmlInfo()Lcom/stanfy/gsonxml/XmlReader$XmlTokenInfo;

    move-result-object v1

    iget-boolean v2, p0, Lcom/stanfy/gsonxml/XmlReader;->endReached:Z

    if-nez v2, :cond_5

    iget v2, v1, Lcom/stanfy/gsonxml/XmlReader$XmlTokenInfo;->type:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    const/4 v0, 0x0

    iget v2, v1, Lcom/stanfy/gsonxml/XmlReader$XmlTokenInfo;->type:I

    packed-switch v2, :pswitch_data_0

    :goto_2
    if-nez v0, :cond_0

    iget-boolean v2, p0, Lcom/stanfy/gsonxml/XmlReader;->skipping:Z

    if-nez v2, :cond_2

    goto :goto_0

    :cond_5
    iget-object v2, p0, Lcom/stanfy/gsonxml/XmlReader;->options:Lcom/stanfy/gsonxml/XmlReader$Options;

    iget-boolean v2, v2, Lcom/stanfy/gsonxml/XmlReader$Options;->skipRoot:Z

    if-nez v2, :cond_2

    sget-object v2, Lcom/google/gson/stream/JsonToken;->END_OBJECT:Lcom/google/gson/stream/JsonToken;

    invoke-direct {p0, v2}, Lcom/stanfy/gsonxml/XmlReader;->addToQueue(Lcom/google/gson/stream/JsonToken;)V

    goto :goto_1

    :pswitch_0
    iget-boolean v2, p0, Lcom/stanfy/gsonxml/XmlReader;->firstStart:Z

    if-nez v2, :cond_6

    invoke-direct {p0, v1}, Lcom/stanfy/gsonxml/XmlReader;->processStart(Lcom/stanfy/gsonxml/XmlReader$XmlTokenInfo;)V

    goto :goto_2

    :cond_6
    iput-boolean v4, p0, Lcom/stanfy/gsonxml/XmlReader;->firstStart:Z

    invoke-direct {p0, v1}, Lcom/stanfy/gsonxml/XmlReader;->processRoot(Lcom/stanfy/gsonxml/XmlReader$XmlTokenInfo;)V

    goto :goto_2

    :pswitch_1
    invoke-direct {p0, v1}, Lcom/stanfy/gsonxml/XmlReader;->processText(Lcom/stanfy/gsonxml/XmlReader$XmlTokenInfo;)Z

    move-result v0

    goto :goto_2

    :pswitch_2
    invoke-direct {p0, v1}, Lcom/stanfy/gsonxml/XmlReader;->processEnd(Lcom/stanfy/gsonxml/XmlReader$XmlTokenInfo;)V

    goto :goto_2

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private fixScopeStack()V
    .locals 2

    iget-object v0, p0, Lcom/stanfy/gsonxml/XmlReader;->scopeStack:Lcom/stanfy/gsonxml/Stack;

    sget-object v1, Lcom/stanfy/gsonxml/XmlReader$Scope;->NAME:Lcom/stanfy/gsonxml/XmlReader$Scope;

    invoke-virtual {v0, v1}, Lcom/stanfy/gsonxml/Stack;->fix(Ljava/lang/Object;)V

    return-void
.end method

.method static nameWithNs(Ljava/lang/String;Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    move-object v3, p0

    move-object v2, p1

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-object v3

    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_0

    if-nez p2, :cond_3

    :cond_2
    :goto_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "<"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ">"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_3
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v4

    invoke-interface {p2, v4}, Lorg/xmlpull/v1/XmlPullParser;->getNamespaceCount(I)I

    move-result v0

    const/4 v1, 0x0

    :goto_2
    if-ge v1, v0, :cond_2

    invoke-interface {p2, v1}, Lorg/xmlpull/v1/XmlPullParser;->getNamespaceUri(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_4
    invoke-interface {p2, v1}, Lorg/xmlpull/v1/XmlPullParser;->getNamespacePrefix(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_1
.end method

.method private nextToken()Lcom/google/gson/stream/JsonToken;
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/stanfy/gsonxml/XmlReader;->tokensQueueStart:Lcom/stanfy/gsonxml/XmlReader$TokenRef;

    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/stanfy/gsonxml/XmlReader$TokenRef;->next:Lcom/stanfy/gsonxml/XmlReader$TokenRef;

    iput-object v1, p0, Lcom/stanfy/gsonxml/XmlReader;->tokensQueueStart:Lcom/stanfy/gsonxml/XmlReader$TokenRef;

    iget-object v1, p0, Lcom/stanfy/gsonxml/XmlReader;->tokensQueue:Lcom/stanfy/gsonxml/XmlReader$TokenRef;

    if-eq v0, v1, :cond_1

    :goto_0
    iget-object v1, p0, Lcom/stanfy/gsonxml/XmlReader;->tokensPool:Lcom/stanfy/gsonxml/XmlReader$RefsPool;

    invoke-virtual {v1, v0}, Lcom/stanfy/gsonxml/XmlReader$RefsPool;->release(Ljava/lang/Object;)V

    iget-object v1, v0, Lcom/stanfy/gsonxml/XmlReader$TokenRef;->token:Lcom/google/gson/stream/JsonToken;

    return-object v1

    :cond_0
    sget-object v1, Lcom/google/gson/stream/JsonToken;->END_DOCUMENT:Lcom/google/gson/stream/JsonToken;

    return-object v1

    :cond_1
    iput-object v2, p0, Lcom/stanfy/gsonxml/XmlReader;->tokensQueue:Lcom/stanfy/gsonxml/XmlReader$TokenRef;

    goto :goto_0
.end method

.method private nextValue()Lcom/stanfy/gsonxml/XmlReader$ValueRef;
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/stanfy/gsonxml/XmlReader;->valuesQueueStart:Lcom/stanfy/gsonxml/XmlReader$ValueRef;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/stanfy/gsonxml/XmlReader;->valuesQueue:Lcom/stanfy/gsonxml/XmlReader$ValueRef;

    if-eq v0, v1, :cond_1

    :goto_0
    iget-object v1, p0, Lcom/stanfy/gsonxml/XmlReader;->valuesPool:Lcom/stanfy/gsonxml/XmlReader$RefsPool;

    invoke-virtual {v1, v0}, Lcom/stanfy/gsonxml/XmlReader$RefsPool;->release(Ljava/lang/Object;)V

    iget-object v1, v0, Lcom/stanfy/gsonxml/XmlReader$ValueRef;->next:Lcom/stanfy/gsonxml/XmlReader$ValueRef;

    iput-object v1, p0, Lcom/stanfy/gsonxml/XmlReader;->valuesQueueStart:Lcom/stanfy/gsonxml/XmlReader$ValueRef;

    return-object v0

    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "No value can be given"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    iput-object v2, p0, Lcom/stanfy/gsonxml/XmlReader;->valuesQueue:Lcom/stanfy/gsonxml/XmlReader$ValueRef;

    goto :goto_0
.end method

.method private nextXmlInfo()Lcom/stanfy/gsonxml/XmlReader$XmlTokenInfo;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    const/4 v7, -0x1

    const/4 v6, 0x1

    const/4 v5, 0x0

    iget-object v4, p0, Lcom/stanfy/gsonxml/XmlReader;->xmlParser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v3

    iget-object v1, p0, Lcom/stanfy/gsonxml/XmlReader;->xmlToken:Lcom/stanfy/gsonxml/XmlReader$XmlTokenInfo;

    invoke-virtual {v1}, Lcom/stanfy/gsonxml/XmlReader$XmlTokenInfo;->clear()V

    packed-switch v3, :pswitch_data_0

    :goto_0
    iput v7, v1, Lcom/stanfy/gsonxml/XmlReader$XmlTokenInfo;->type:I

    :cond_0
    :goto_1
    return-object v1

    :pswitch_0
    iput v6, v1, Lcom/stanfy/gsonxml/XmlReader$XmlTokenInfo;->type:I

    iget-object v4, p0, Lcom/stanfy/gsonxml/XmlReader;->xmlParser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lcom/stanfy/gsonxml/XmlReader$XmlTokenInfo;->name:Ljava/lang/String;

    iget-object v4, p0, Lcom/stanfy/gsonxml/XmlReader;->xmlParser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getNamespace()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lcom/stanfy/gsonxml/XmlReader$XmlTokenInfo;->ns:Ljava/lang/String;

    iget-object v4, p0, Lcom/stanfy/gsonxml/XmlReader;->xmlParser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v4, p0, Lcom/stanfy/gsonxml/XmlReader;->attributes:Lcom/stanfy/gsonxml/XmlReader$AttributesData;

    iget-object v5, p0, Lcom/stanfy/gsonxml/XmlReader;->xmlParser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-virtual {v4, v5}, Lcom/stanfy/gsonxml/XmlReader$AttributesData;->fill(Lorg/xmlpull/v1/XmlPullParser;)V

    iget-object v4, p0, Lcom/stanfy/gsonxml/XmlReader;->attributes:Lcom/stanfy/gsonxml/XmlReader$AttributesData;

    iput-object v4, v1, Lcom/stanfy/gsonxml/XmlReader$XmlTokenInfo;->attributesData:Lcom/stanfy/gsonxml/XmlReader$AttributesData;

    goto :goto_1

    :pswitch_1
    const/4 v4, 0x2

    iput v4, v1, Lcom/stanfy/gsonxml/XmlReader$XmlTokenInfo;->type:I

    iget-object v4, p0, Lcom/stanfy/gsonxml/XmlReader;->xmlParser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lcom/stanfy/gsonxml/XmlReader$XmlTokenInfo;->name:Ljava/lang/String;

    iget-object v4, p0, Lcom/stanfy/gsonxml/XmlReader;->xmlParser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getNamespace()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lcom/stanfy/gsonxml/XmlReader$XmlTokenInfo;->ns:Ljava/lang/String;

    goto :goto_1

    :pswitch_2
    iget-object v4, p0, Lcom/stanfy/gsonxml/XmlReader;->xmlParser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_1

    iput-boolean v5, p0, Lcom/stanfy/gsonxml/XmlReader;->lastTextWhiteSpace:Z

    const/4 v4, 0x3

    iput v4, v1, Lcom/stanfy/gsonxml/XmlReader$XmlTokenInfo;->type:I

    iput-object v2, v1, Lcom/stanfy/gsonxml/XmlReader$XmlTokenInfo;->value:Ljava/lang/String;

    goto :goto_1

    :cond_1
    iput-boolean v6, p0, Lcom/stanfy/gsonxml/XmlReader;->lastTextWhiteSpace:Z

    iput v7, v1, Lcom/stanfy/gsonxml/XmlReader$XmlTokenInfo;->type:I

    return-object v1

    :pswitch_3
    iput-boolean v6, p0, Lcom/stanfy/gsonxml/XmlReader;->endReached:Z

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private peekNextToken()Lcom/google/gson/stream/JsonToken;
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/stanfy/gsonxml/XmlReader;->tokensQueueStart:Lcom/stanfy/gsonxml/XmlReader$TokenRef;

    if-nez v1, :cond_0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/stanfy/gsonxml/XmlReader;->tokensQueueStart:Lcom/stanfy/gsonxml/XmlReader$TokenRef;

    iget-object v0, v0, Lcom/stanfy/gsonxml/XmlReader$TokenRef;->token:Lcom/google/gson/stream/JsonToken;

    goto :goto_0
.end method

.method private processEnd(Lcom/stanfy/gsonxml/XmlReader$XmlTokenInfo;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    const/4 v6, 0x0

    sget-object v5, Lcom/stanfy/gsonxml/XmlReader$3;->$SwitchMap$com$stanfy$gsonxml$XmlReader$Scope:[I

    iget-object v4, p0, Lcom/stanfy/gsonxml/XmlReader;->scopeStack:Lcom/stanfy/gsonxml/Stack;

    invoke-virtual {v4}, Lcom/stanfy/gsonxml/Stack;->peek()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/stanfy/gsonxml/XmlReader$Scope;

    invoke-virtual {v4}, Lcom/stanfy/gsonxml/XmlReader$Scope;->ordinal()I

    move-result v4

    aget v4, v5, v4

    packed-switch v4, :pswitch_data_0

    :goto_0
    iget-object v4, p0, Lcom/stanfy/gsonxml/XmlReader;->options:Lcom/stanfy/gsonxml/XmlReader$Options;

    iget-boolean v4, v4, Lcom/stanfy/gsonxml/XmlReader$Options;->sameNameList:Z

    if-nez v4, :cond_1

    :goto_1
    return-void

    :pswitch_0
    sget-object v4, Lcom/google/gson/stream/JsonToken;->END_OBJECT:Lcom/google/gson/stream/JsonToken;

    invoke-direct {p0, v4}, Lcom/stanfy/gsonxml/XmlReader;->addToQueue(Lcom/google/gson/stream/JsonToken;)V

    iput v6, p0, Lcom/stanfy/gsonxml/XmlReader;->textNameCounter:I

    invoke-direct {p0}, Lcom/stanfy/gsonxml/XmlReader;->fixScopeStack()V

    goto :goto_0

    :pswitch_1
    iget-object v4, p0, Lcom/stanfy/gsonxml/XmlReader;->scopeStack:Lcom/stanfy/gsonxml/Stack;

    invoke-virtual {v4}, Lcom/stanfy/gsonxml/Stack;->drop()V

    goto :goto_0

    :pswitch_2
    sget-object v4, Lcom/google/gson/stream/JsonToken;->END_ARRAY:Lcom/google/gson/stream/JsonToken;

    invoke-direct {p0, v4}, Lcom/stanfy/gsonxml/XmlReader;->addToQueue(Lcom/google/gson/stream/JsonToken;)V

    sget-object v4, Lcom/google/gson/stream/JsonToken;->END_OBJECT:Lcom/google/gson/stream/JsonToken;

    invoke-direct {p0, v4}, Lcom/stanfy/gsonxml/XmlReader;->addToQueue(Lcom/google/gson/stream/JsonToken;)V

    invoke-direct {p0}, Lcom/stanfy/gsonxml/XmlReader;->fixScopeStack()V

    invoke-direct {p0}, Lcom/stanfy/gsonxml/XmlReader;->fixScopeStack()V

    goto :goto_0

    :pswitch_3
    sget-object v4, Lcom/google/gson/stream/JsonToken;->END_ARRAY:Lcom/google/gson/stream/JsonToken;

    invoke-direct {p0, v4}, Lcom/stanfy/gsonxml/XmlReader;->addToQueue(Lcom/google/gson/stream/JsonToken;)V

    invoke-direct {p0}, Lcom/stanfy/gsonxml/XmlReader;->fixScopeStack()V

    goto :goto_0

    :pswitch_4
    iget-boolean v4, p0, Lcom/stanfy/gsonxml/XmlReader;->lastTextWhiteSpace:Z

    if-nez v4, :cond_0

    :goto_2
    invoke-direct {p0}, Lcom/stanfy/gsonxml/XmlReader;->fixScopeStack()V

    goto :goto_0

    :cond_0
    const-string/jumbo v4, ""

    const/4 v5, 0x1

    invoke-direct {p0, v4, v5}, Lcom/stanfy/gsonxml/XmlReader;->addTextToQueue(Ljava/lang/String;Z)V

    goto :goto_2

    :cond_1
    iget-object v4, p0, Lcom/stanfy/gsonxml/XmlReader;->xmlParser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v3

    iget-object v4, p0, Lcom/stanfy/gsonxml/XmlReader;->options:Lcom/stanfy/gsonxml/XmlReader$Options;

    iget-boolean v4, v4, Lcom/stanfy/gsonxml/XmlReader$Options;->namespaces:Z

    if-nez v4, :cond_4

    iget-object v1, p1, Lcom/stanfy/gsonxml/XmlReader$XmlTokenInfo;->name:Ljava/lang/String;

    :goto_3
    iget-object v0, p0, Lcom/stanfy/gsonxml/XmlReader;->closeStack:Lcom/stanfy/gsonxml/Stack;

    const/4 v2, 0x0

    :goto_4
    invoke-virtual {v0}, Lcom/stanfy/gsonxml/Stack;->size()I

    move-result v4

    if-gtz v4, :cond_5

    :cond_2
    invoke-virtual {v0}, Lcom/stanfy/gsonxml/Stack;->size()I

    move-result v4

    if-nez v4, :cond_6

    :cond_3
    new-instance v4, Lcom/stanfy/gsonxml/XmlReader$ClosedTag;

    invoke-direct {v4, v3, v1}, Lcom/stanfy/gsonxml/XmlReader$ClosedTag;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v4}, Lcom/stanfy/gsonxml/Stack;->push(Ljava/lang/Object;)V

    goto :goto_1

    :cond_4
    iget-object v4, p0, Lcom/stanfy/gsonxml/XmlReader;->xmlParser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-virtual {p1, v4}, Lcom/stanfy/gsonxml/XmlReader$XmlTokenInfo;->getName(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v1

    goto :goto_3

    :cond_5
    invoke-virtual {v0}, Lcom/stanfy/gsonxml/Stack;->peek()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/stanfy/gsonxml/XmlReader$ClosedTag;

    iget v4, v4, Lcom/stanfy/gsonxml/XmlReader$ClosedTag;->depth:I

    if-le v4, v3, :cond_2

    invoke-virtual {v0}, Lcom/stanfy/gsonxml/Stack;->drop()V

    goto :goto_4

    :cond_6
    invoke-virtual {v0}, Lcom/stanfy/gsonxml/Stack;->peek()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/stanfy/gsonxml/XmlReader$ClosedTag;

    iget v4, v4, Lcom/stanfy/gsonxml/XmlReader$ClosedTag;->depth:I

    if-lt v4, v3, :cond_3

    invoke-virtual {v0}, Lcom/stanfy/gsonxml/Stack;->peek()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/stanfy/gsonxml/XmlReader$ClosedTag;

    iput-object v1, v4, Lcom/stanfy/gsonxml/XmlReader$ClosedTag;->name:Ljava/lang/String;

    goto/16 :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private processRoot(Lcom/stanfy/gsonxml/XmlReader$XmlTokenInfo;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    iget-object v0, p0, Lcom/stanfy/gsonxml/XmlReader;->options:Lcom/stanfy/gsonxml/XmlReader$Options;

    iget-boolean v0, v0, Lcom/stanfy/gsonxml/XmlReader$Options;->skipRoot:Z

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/stanfy/gsonxml/XmlReader$XmlTokenInfo;->attributesData:Lcom/stanfy/gsonxml/XmlReader$AttributesData;

    if-nez v0, :cond_1

    sget-object v0, Lcom/stanfy/gsonxml/XmlReader$3;->$SwitchMap$com$google$gson$stream$JsonToken:[I

    iget-object v1, p0, Lcom/stanfy/gsonxml/XmlReader;->expectedToken:Lcom/google/gson/stream/JsonToken;

    invoke-virtual {v1}, Lcom/google/gson/stream/JsonToken;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "First expectedToken="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/stanfy/gsonxml/XmlReader;->expectedToken:Lcom/google/gson/stream/JsonToken;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " (not begin_object/begin_array)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/stanfy/gsonxml/XmlReader;->expectedToken:Lcom/google/gson/stream/JsonToken;

    invoke-direct {p0, v0}, Lcom/stanfy/gsonxml/XmlReader;->addToQueue(Lcom/google/gson/stream/JsonToken;)V

    iget-object v0, p0, Lcom/stanfy/gsonxml/XmlReader;->scopeStack:Lcom/stanfy/gsonxml/Stack;

    sget-object v1, Lcom/stanfy/gsonxml/XmlReader$Scope;->INSIDE_OBJECT:Lcom/stanfy/gsonxml/XmlReader$Scope;

    invoke-virtual {v0, v1}, Lcom/stanfy/gsonxml/Stack;->push(Ljava/lang/Object;)V

    invoke-direct {p0, p1}, Lcom/stanfy/gsonxml/XmlReader;->processStart(Lcom/stanfy/gsonxml/XmlReader$XmlTokenInfo;)V

    :goto_0
    return-void

    :cond_1
    sget-object v0, Lcom/google/gson/stream/JsonToken;->BEGIN_OBJECT:Lcom/google/gson/stream/JsonToken;

    invoke-direct {p0, v0}, Lcom/stanfy/gsonxml/XmlReader;->addToQueue(Lcom/google/gson/stream/JsonToken;)V

    iget-object v0, p0, Lcom/stanfy/gsonxml/XmlReader;->scopeStack:Lcom/stanfy/gsonxml/Stack;

    sget-object v1, Lcom/stanfy/gsonxml/XmlReader$Scope;->INSIDE_OBJECT:Lcom/stanfy/gsonxml/XmlReader$Scope;

    invoke-virtual {v0, v1}, Lcom/stanfy/gsonxml/Stack;->push(Ljava/lang/Object;)V

    iget-object v0, p1, Lcom/stanfy/gsonxml/XmlReader$XmlTokenInfo;->attributesData:Lcom/stanfy/gsonxml/XmlReader$AttributesData;

    invoke-direct {p0, v0}, Lcom/stanfy/gsonxml/XmlReader;->addToQueue(Lcom/stanfy/gsonxml/XmlReader$AttributesData;)V

    goto :goto_0

    :pswitch_1
    sget-object v0, Lcom/google/gson/stream/JsonToken;->BEGIN_OBJECT:Lcom/google/gson/stream/JsonToken;

    invoke-direct {p0, v0}, Lcom/stanfy/gsonxml/XmlReader;->addToQueue(Lcom/google/gson/stream/JsonToken;)V

    iget-object v0, p0, Lcom/stanfy/gsonxml/XmlReader;->scopeStack:Lcom/stanfy/gsonxml/Stack;

    sget-object v1, Lcom/stanfy/gsonxml/XmlReader$Scope;->INSIDE_OBJECT:Lcom/stanfy/gsonxml/XmlReader$Scope;

    invoke-virtual {v0, v1}, Lcom/stanfy/gsonxml/Stack;->push(Ljava/lang/Object;)V

    goto :goto_0

    :pswitch_2
    sget-object v0, Lcom/google/gson/stream/JsonToken;->BEGIN_ARRAY:Lcom/google/gson/stream/JsonToken;

    invoke-direct {p0, v0}, Lcom/stanfy/gsonxml/XmlReader;->addToQueue(Lcom/google/gson/stream/JsonToken;)V

    iget-object v1, p0, Lcom/stanfy/gsonxml/XmlReader;->scopeStack:Lcom/stanfy/gsonxml/Stack;

    iget-object v0, p0, Lcom/stanfy/gsonxml/XmlReader;->options:Lcom/stanfy/gsonxml/XmlReader$Options;

    iget-boolean v0, v0, Lcom/stanfy/gsonxml/XmlReader$Options;->rootArrayPrimitive:Z

    if-nez v0, :cond_2

    sget-object v0, Lcom/stanfy/gsonxml/XmlReader$Scope;->INSIDE_ARRAY:Lcom/stanfy/gsonxml/XmlReader$Scope;

    :goto_1
    invoke-virtual {v1, v0}, Lcom/stanfy/gsonxml/Stack;->push(Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/stanfy/gsonxml/XmlReader$Scope;->INSIDE_PRIMITIVE_ARRAY:Lcom/stanfy/gsonxml/XmlReader$Scope;

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private processStart(Lcom/stanfy/gsonxml/XmlReader$XmlTokenInfo;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/stanfy/gsonxml/XmlReader;->scopeStack:Lcom/stanfy/gsonxml/Stack;

    invoke-virtual {v4}, Lcom/stanfy/gsonxml/Stack;->peek()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/stanfy/gsonxml/XmlReader$Scope;

    iget-object v4, p0, Lcom/stanfy/gsonxml/XmlReader;->options:Lcom/stanfy/gsonxml/XmlReader$Options;

    iget-boolean v4, v4, Lcom/stanfy/gsonxml/XmlReader$Options;->sameNameList:Z

    if-nez v4, :cond_1

    :cond_0
    :goto_0
    sget-object v4, Lcom/stanfy/gsonxml/XmlReader$3;->$SwitchMap$com$stanfy$gsonxml$XmlReader$Scope:[I

    invoke-virtual {v2}, Lcom/stanfy/gsonxml/XmlReader$Scope;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_0

    :goto_1
    if-nez v3, :cond_3

    :goto_2
    iget-object v4, p1, Lcom/stanfy/gsonxml/XmlReader$XmlTokenInfo;->attributesData:Lcom/stanfy/gsonxml/XmlReader$AttributesData;

    if-nez v4, :cond_4

    :goto_3
    return-void

    :cond_1
    iget-boolean v4, v2, Lcom/stanfy/gsonxml/XmlReader$Scope;->insideArray:Z

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/stanfy/gsonxml/XmlReader;->closeStack:Lcom/stanfy/gsonxml/Stack;

    invoke-virtual {v4}, Lcom/stanfy/gsonxml/Stack;->size()I

    move-result v4

    if-lez v4, :cond_0

    iget-object v4, p0, Lcom/stanfy/gsonxml/XmlReader;->closeStack:Lcom/stanfy/gsonxml/Stack;

    invoke-virtual {v4}, Lcom/stanfy/gsonxml/Stack;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/stanfy/gsonxml/XmlReader$ClosedTag;

    iget v4, v1, Lcom/stanfy/gsonxml/XmlReader$ClosedTag;->depth:I

    iget-object v5, p0, Lcom/stanfy/gsonxml/XmlReader;->xmlParser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v5

    if-ne v4, v5, :cond_0

    iget-object v4, p0, Lcom/stanfy/gsonxml/XmlReader;->options:Lcom/stanfy/gsonxml/XmlReader$Options;

    iget-boolean v4, v4, Lcom/stanfy/gsonxml/XmlReader$Options;->namespaces:Z

    if-nez v4, :cond_2

    iget-object v0, p1, Lcom/stanfy/gsonxml/XmlReader$XmlTokenInfo;->name:Ljava/lang/String;

    :goto_4
    iget-object v4, v1, Lcom/stanfy/gsonxml/XmlReader$ClosedTag;->name:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    sget-object v4, Lcom/google/gson/stream/JsonToken;->END_ARRAY:Lcom/google/gson/stream/JsonToken;

    invoke-direct {p0, v4}, Lcom/stanfy/gsonxml/XmlReader;->addToQueue(Lcom/google/gson/stream/JsonToken;)V

    invoke-direct {p0}, Lcom/stanfy/gsonxml/XmlReader;->fixScopeStack()V

    iget-object v4, p0, Lcom/stanfy/gsonxml/XmlReader;->scopeStack:Lcom/stanfy/gsonxml/Stack;

    invoke-virtual {v4}, Lcom/stanfy/gsonxml/Stack;->peek()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/stanfy/gsonxml/XmlReader$Scope;

    goto :goto_0

    :cond_2
    iget-object v4, p0, Lcom/stanfy/gsonxml/XmlReader;->xmlParser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-virtual {p1, v4}, Lcom/stanfy/gsonxml/XmlReader$XmlTokenInfo;->getName(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    :pswitch_0
    const/4 v3, 0x0

    iget-object v4, p0, Lcom/stanfy/gsonxml/XmlReader;->scopeStack:Lcom/stanfy/gsonxml/Stack;

    sget-object v5, Lcom/stanfy/gsonxml/XmlReader$Scope;->PRIMITIVE_VALUE:Lcom/stanfy/gsonxml/XmlReader$Scope;

    invoke-virtual {v4, v5}, Lcom/stanfy/gsonxml/Stack;->push(Ljava/lang/Object;)V

    goto :goto_1

    :pswitch_1
    const/4 v3, 0x0

    :pswitch_2
    sget-object v4, Lcom/google/gson/stream/JsonToken;->BEGIN_OBJECT:Lcom/google/gson/stream/JsonToken;

    invoke-direct {p0, v4}, Lcom/stanfy/gsonxml/XmlReader;->addToQueue(Lcom/google/gson/stream/JsonToken;)V

    iget-object v4, p0, Lcom/stanfy/gsonxml/XmlReader;->scopeStack:Lcom/stanfy/gsonxml/Stack;

    sget-object v5, Lcom/stanfy/gsonxml/XmlReader$Scope;->INSIDE_OBJECT:Lcom/stanfy/gsonxml/XmlReader$Scope;

    invoke-virtual {v4, v5}, Lcom/stanfy/gsonxml/Stack;->push(Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    iget-object v4, p0, Lcom/stanfy/gsonxml/XmlReader;->scopeStack:Lcom/stanfy/gsonxml/Stack;

    sget-object v5, Lcom/stanfy/gsonxml/XmlReader$Scope;->NAME:Lcom/stanfy/gsonxml/XmlReader$Scope;

    invoke-virtual {v4, v5}, Lcom/stanfy/gsonxml/Stack;->push(Ljava/lang/Object;)V

    sget-object v4, Lcom/google/gson/stream/JsonToken;->NAME:Lcom/google/gson/stream/JsonToken;

    invoke-direct {p0, v4}, Lcom/stanfy/gsonxml/XmlReader;->addToQueue(Lcom/google/gson/stream/JsonToken;)V

    iget-object v4, p0, Lcom/stanfy/gsonxml/XmlReader;->xmlParser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-virtual {p1, v4}, Lcom/stanfy/gsonxml/XmlReader$XmlTokenInfo;->getName(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/stanfy/gsonxml/XmlReader;->addToQueue(Ljava/lang/String;)V

    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/stanfy/gsonxml/XmlReader;->lastTextWhiteSpace:Z

    goto :goto_2

    :cond_4
    iget-object v4, p0, Lcom/stanfy/gsonxml/XmlReader;->scopeStack:Lcom/stanfy/gsonxml/Stack;

    invoke-virtual {v4}, Lcom/stanfy/gsonxml/Stack;->peek()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/stanfy/gsonxml/XmlReader$Scope;

    sget-object v4, Lcom/stanfy/gsonxml/XmlReader$Scope;->PRIMITIVE_VALUE:Lcom/stanfy/gsonxml/XmlReader$Scope;

    if-eq v2, v4, :cond_5

    sget-object v4, Lcom/stanfy/gsonxml/XmlReader$Scope;->NAME:Lcom/stanfy/gsonxml/XmlReader$Scope;

    if-eq v2, v4, :cond_6

    :goto_5
    iget-object v4, p1, Lcom/stanfy/gsonxml/XmlReader$XmlTokenInfo;->attributesData:Lcom/stanfy/gsonxml/XmlReader$AttributesData;

    invoke-direct {p0, v4}, Lcom/stanfy/gsonxml/XmlReader;->addToQueue(Lcom/stanfy/gsonxml/XmlReader$AttributesData;)V

    goto/16 :goto_3

    :cond_5
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string/jumbo v5, "Attributes data in primitive scope"

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_6
    sget-object v4, Lcom/google/gson/stream/JsonToken;->BEGIN_OBJECT:Lcom/google/gson/stream/JsonToken;

    invoke-direct {p0, v4}, Lcom/stanfy/gsonxml/XmlReader;->addToQueue(Lcom/google/gson/stream/JsonToken;)V

    iget-object v4, p0, Lcom/stanfy/gsonxml/XmlReader;->scopeStack:Lcom/stanfy/gsonxml/Stack;

    sget-object v5, Lcom/stanfy/gsonxml/XmlReader$Scope;->INSIDE_OBJECT:Lcom/stanfy/gsonxml/XmlReader$Scope;

    invoke-virtual {v4, v5}, Lcom/stanfy/gsonxml/Stack;->push(Ljava/lang/Object;)V

    goto :goto_5

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private processText(Lcom/stanfy/gsonxml/XmlReader$XmlTokenInfo;)Z
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    sget-object v2, Lcom/stanfy/gsonxml/XmlReader$3;->$SwitchMap$com$stanfy$gsonxml$XmlReader$Scope:[I

    iget-object v1, p0, Lcom/stanfy/gsonxml/XmlReader;->scopeStack:Lcom/stanfy/gsonxml/Stack;

    invoke-virtual {v1}, Lcom/stanfy/gsonxml/Stack;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/stanfy/gsonxml/XmlReader$Scope;

    invoke-virtual {v1}, Lcom/stanfy/gsonxml/XmlReader$Scope;->ordinal()I

    move-result v1

    aget v1, v2, v1

    packed-switch v1, :pswitch_data_0

    new-instance v1, Lcom/google/gson/JsonSyntaxException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Cannot process text \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lcom/stanfy/gsonxml/XmlReader$XmlTokenInfo;->value:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\' inside scope "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/stanfy/gsonxml/XmlReader;->scopeStack:Lcom/stanfy/gsonxml/Stack;

    invoke-virtual {v3}, Lcom/stanfy/gsonxml/Stack;->peek()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/google/gson/JsonSyntaxException;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_0
    iget-object v1, p1, Lcom/stanfy/gsonxml/XmlReader$XmlTokenInfo;->value:Ljava/lang/String;

    invoke-direct {p0, v1, v3}, Lcom/stanfy/gsonxml/XmlReader;->addTextToQueue(Ljava/lang/String;Z)V

    return v3

    :pswitch_1
    iget-object v1, p1, Lcom/stanfy/gsonxml/XmlReader$XmlTokenInfo;->value:Ljava/lang/String;

    invoke-direct {p0, v1, v4}, Lcom/stanfy/gsonxml/XmlReader;->addTextToQueue(Ljava/lang/String;Z)V

    return v4

    :pswitch_2
    const-string/jumbo v0, "$"

    iget v1, p0, Lcom/stanfy/gsonxml/XmlReader;->textNameCounter:I

    if-gtz v1, :cond_0

    :goto_0
    iget v1, p0, Lcom/stanfy/gsonxml/XmlReader;->textNameCounter:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/stanfy/gsonxml/XmlReader;->textNameCounter:I

    sget-object v1, Lcom/google/gson/stream/JsonToken;->NAME:Lcom/google/gson/stream/JsonToken;

    invoke-direct {p0, v1}, Lcom/stanfy/gsonxml/XmlReader;->addToQueue(Lcom/google/gson/stream/JsonToken;)V

    invoke-direct {p0, v0}, Lcom/stanfy/gsonxml/XmlReader;->addToQueue(Ljava/lang/String;)V

    iget-object v1, p1, Lcom/stanfy/gsonxml/XmlReader$XmlTokenInfo;->value:Ljava/lang/String;

    invoke-direct {p0, v1, v3}, Lcom/stanfy/gsonxml/XmlReader;->addTextToQueue(Ljava/lang/String;Z)V

    return v3

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/stanfy/gsonxml/XmlReader;->textNameCounter:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private pushToQueue(Lcom/google/gson/stream/JsonToken;)V
    .locals 3

    const/4 v2, 0x0

    iget-object v1, p0, Lcom/stanfy/gsonxml/XmlReader;->tokensPool:Lcom/stanfy/gsonxml/XmlReader$RefsPool;

    invoke-virtual {v1}, Lcom/stanfy/gsonxml/XmlReader$RefsPool;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/stanfy/gsonxml/XmlReader$TokenRef;

    iput-object p1, v0, Lcom/stanfy/gsonxml/XmlReader$TokenRef;->token:Lcom/google/gson/stream/JsonToken;

    iput-object v2, v0, Lcom/stanfy/gsonxml/XmlReader$TokenRef;->next:Lcom/stanfy/gsonxml/XmlReader$TokenRef;

    iget-object v1, p0, Lcom/stanfy/gsonxml/XmlReader;->tokensQueueStart:Lcom/stanfy/gsonxml/XmlReader$TokenRef;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/stanfy/gsonxml/XmlReader;->tokensQueueStart:Lcom/stanfy/gsonxml/XmlReader$TokenRef;

    iput-object v1, v0, Lcom/stanfy/gsonxml/XmlReader$TokenRef;->next:Lcom/stanfy/gsonxml/XmlReader$TokenRef;

    iput-object v0, p0, Lcom/stanfy/gsonxml/XmlReader;->tokensQueueStart:Lcom/stanfy/gsonxml/XmlReader$TokenRef;

    :goto_0
    return-void

    :cond_0
    iput-object v0, p0, Lcom/stanfy/gsonxml/XmlReader;->tokensQueueStart:Lcom/stanfy/gsonxml/XmlReader$TokenRef;

    iput-object v0, p0, Lcom/stanfy/gsonxml/XmlReader;->tokensQueue:Lcom/stanfy/gsonxml/XmlReader$TokenRef;

    goto :goto_0
.end method

.method private pushToQueue(Ljava/lang/String;)V
    .locals 3

    const/4 v2, 0x0

    iget-object v1, p0, Lcom/stanfy/gsonxml/XmlReader;->valuesPool:Lcom/stanfy/gsonxml/XmlReader$RefsPool;

    invoke-virtual {v1}, Lcom/stanfy/gsonxml/XmlReader$RefsPool;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/stanfy/gsonxml/XmlReader$ValueRef;

    iput-object p1, v0, Lcom/stanfy/gsonxml/XmlReader$ValueRef;->value:Ljava/lang/String;

    iput-object v2, v0, Lcom/stanfy/gsonxml/XmlReader$ValueRef;->next:Lcom/stanfy/gsonxml/XmlReader$ValueRef;

    iget-object v1, p0, Lcom/stanfy/gsonxml/XmlReader;->valuesQueueStart:Lcom/stanfy/gsonxml/XmlReader$ValueRef;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/stanfy/gsonxml/XmlReader;->valuesQueueStart:Lcom/stanfy/gsonxml/XmlReader$ValueRef;

    iput-object v1, v0, Lcom/stanfy/gsonxml/XmlReader$ValueRef;->next:Lcom/stanfy/gsonxml/XmlReader$ValueRef;

    iput-object v0, p0, Lcom/stanfy/gsonxml/XmlReader;->valuesQueueStart:Lcom/stanfy/gsonxml/XmlReader$ValueRef;

    :goto_0
    return-void

    :cond_0
    iput-object v0, p0, Lcom/stanfy/gsonxml/XmlReader;->valuesQueue:Lcom/stanfy/gsonxml/XmlReader$ValueRef;

    iput-object v0, p0, Lcom/stanfy/gsonxml/XmlReader;->valuesQueueStart:Lcom/stanfy/gsonxml/XmlReader$ValueRef;

    goto :goto_0
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

    iput-object v0, p0, Lcom/stanfy/gsonxml/XmlReader;->expectedToken:Lcom/google/gson/stream/JsonToken;

    iget-object v0, p0, Lcom/stanfy/gsonxml/XmlReader;->expectedToken:Lcom/google/gson/stream/JsonToken;

    invoke-direct {p0, v0}, Lcom/stanfy/gsonxml/XmlReader;->expect(Lcom/google/gson/stream/JsonToken;)V

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

    iput-object v0, p0, Lcom/stanfy/gsonxml/XmlReader;->expectedToken:Lcom/google/gson/stream/JsonToken;

    iget-object v0, p0, Lcom/stanfy/gsonxml/XmlReader;->expectedToken:Lcom/google/gson/stream/JsonToken;

    invoke-direct {p0, v0}, Lcom/stanfy/gsonxml/XmlReader;->expect(Lcom/google/gson/stream/JsonToken;)V

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

    iput-object v0, p0, Lcom/stanfy/gsonxml/XmlReader;->expectedToken:Lcom/google/gson/stream/JsonToken;

    iget-object v0, p0, Lcom/stanfy/gsonxml/XmlReader;->expectedToken:Lcom/google/gson/stream/JsonToken;

    invoke-direct {p0, v0}, Lcom/stanfy/gsonxml/XmlReader;->expect(Lcom/google/gson/stream/JsonToken;)V

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

    iput-object v0, p0, Lcom/stanfy/gsonxml/XmlReader;->expectedToken:Lcom/google/gson/stream/JsonToken;

    iget-object v0, p0, Lcom/stanfy/gsonxml/XmlReader;->expectedToken:Lcom/google/gson/stream/JsonToken;

    invoke-direct {p0, v0}, Lcom/stanfy/gsonxml/XmlReader;->expect(Lcom/google/gson/stream/JsonToken;)V

    return-void
.end method

.method public hasNext()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/stanfy/gsonxml/XmlReader;->peek()Lcom/google/gson/stream/JsonToken;

    iget-object v0, p0, Lcom/stanfy/gsonxml/XmlReader;->token:Lcom/google/gson/stream/JsonToken;

    sget-object v1, Lcom/google/gson/stream/JsonToken;->END_OBJECT:Lcom/google/gson/stream/JsonToken;

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/stanfy/gsonxml/XmlReader;->token:Lcom/google/gson/stream/JsonToken;

    sget-object v1, Lcom/google/gson/stream/JsonToken;->END_ARRAY:Lcom/google/gson/stream/JsonToken;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public nextBoolean()Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v2, 0x1

    sget-object v1, Lcom/google/gson/stream/JsonToken;->BOOLEAN:Lcom/google/gson/stream/JsonToken;

    invoke-direct {p0, v1}, Lcom/stanfy/gsonxml/XmlReader;->expect(Lcom/google/gson/stream/JsonToken;)V

    invoke-direct {p0}, Lcom/stanfy/gsonxml/XmlReader;->nextValue()Lcom/stanfy/gsonxml/XmlReader$ValueRef;

    move-result-object v1

    iget-object v0, v1, Lcom/stanfy/gsonxml/XmlReader$ValueRef;->value:Ljava/lang/String;

    const-string/jumbo v1, "true"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "false"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Cannot parse <"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "> to boolean"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    return v2

    :cond_1
    return v2
.end method

.method public nextDouble()D
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/google/gson/stream/JsonToken;->STRING:Lcom/google/gson/stream/JsonToken;

    invoke-direct {p0, v0}, Lcom/stanfy/gsonxml/XmlReader;->expect(Lcom/google/gson/stream/JsonToken;)V

    invoke-direct {p0}, Lcom/stanfy/gsonxml/XmlReader;->nextValue()Lcom/stanfy/gsonxml/XmlReader$ValueRef;

    move-result-object v0

    iget-object v0, v0, Lcom/stanfy/gsonxml/XmlReader$ValueRef;->value:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    return-wide v0
.end method

.method public nextInt()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/google/gson/stream/JsonToken;->STRING:Lcom/google/gson/stream/JsonToken;

    invoke-direct {p0, v0}, Lcom/stanfy/gsonxml/XmlReader;->expect(Lcom/google/gson/stream/JsonToken;)V

    invoke-direct {p0}, Lcom/stanfy/gsonxml/XmlReader;->nextValue()Lcom/stanfy/gsonxml/XmlReader$ValueRef;

    move-result-object v0

    iget-object v0, v0, Lcom/stanfy/gsonxml/XmlReader$ValueRef;->value:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public nextLong()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/google/gson/stream/JsonToken;->STRING:Lcom/google/gson/stream/JsonToken;

    invoke-direct {p0, v0}, Lcom/stanfy/gsonxml/XmlReader;->expect(Lcom/google/gson/stream/JsonToken;)V

    invoke-direct {p0}, Lcom/stanfy/gsonxml/XmlReader;->nextValue()Lcom/stanfy/gsonxml/XmlReader$ValueRef;

    move-result-object v0

    iget-object v0, v0, Lcom/stanfy/gsonxml/XmlReader$ValueRef;->value:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public nextName()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/google/gson/stream/JsonToken;->NAME:Lcom/google/gson/stream/JsonToken;

    iput-object v0, p0, Lcom/stanfy/gsonxml/XmlReader;->expectedToken:Lcom/google/gson/stream/JsonToken;

    sget-object v0, Lcom/google/gson/stream/JsonToken;->NAME:Lcom/google/gson/stream/JsonToken;

    invoke-direct {p0, v0}, Lcom/stanfy/gsonxml/XmlReader;->expect(Lcom/google/gson/stream/JsonToken;)V

    invoke-direct {p0}, Lcom/stanfy/gsonxml/XmlReader;->nextValue()Lcom/stanfy/gsonxml/XmlReader$ValueRef;

    move-result-object v0

    iget-object v0, v0, Lcom/stanfy/gsonxml/XmlReader$ValueRef;->value:Ljava/lang/String;

    return-object v0
.end method

.method public nextString()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/google/gson/stream/JsonToken;->STRING:Lcom/google/gson/stream/JsonToken;

    invoke-direct {p0, v0}, Lcom/stanfy/gsonxml/XmlReader;->expect(Lcom/google/gson/stream/JsonToken;)V

    invoke-direct {p0}, Lcom/stanfy/gsonxml/XmlReader;->nextValue()Lcom/stanfy/gsonxml/XmlReader$ValueRef;

    move-result-object v0

    iget-object v0, v0, Lcom/stanfy/gsonxml/XmlReader$ValueRef;->value:Ljava/lang/String;

    return-object v0
.end method

.method public peek()Lcom/google/gson/stream/JsonToken;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v2, 0x0

    iget-object v1, p0, Lcom/stanfy/gsonxml/XmlReader;->expectedToken:Lcom/google/gson/stream/JsonToken;

    if-eqz v1, :cond_1

    :cond_0
    iget-object v1, p0, Lcom/stanfy/gsonxml/XmlReader;->token:Lcom/google/gson/stream/JsonToken;

    if-nez v1, :cond_2

    const/4 v1, 0x0

    :try_start_0
    invoke-direct {p0, v1}, Lcom/stanfy/gsonxml/XmlReader;->fillQueues(Z)V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/stanfy/gsonxml/XmlReader;->expectedToken:Lcom/google/gson/stream/JsonToken;

    invoke-direct {p0}, Lcom/stanfy/gsonxml/XmlReader;->nextToken()Lcom/google/gson/stream/JsonToken;

    move-result-object v1

    iput-object v1, p0, Lcom/stanfy/gsonxml/XmlReader;->token:Lcom/google/gson/stream/JsonToken;
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_1

    return-object v1

    :cond_1
    iget-boolean v1, p0, Lcom/stanfy/gsonxml/XmlReader;->firstStart:Z

    if-eqz v1, :cond_0

    sget-object v1, Lcom/google/gson/stream/JsonToken;->BEGIN_OBJECT:Lcom/google/gson/stream/JsonToken;

    return-object v1

    :cond_2
    :try_start_1
    invoke-direct {p0}, Lcom/stanfy/gsonxml/XmlReader;->adaptCurrentToken()V
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_0

    iput-object v2, p0, Lcom/stanfy/gsonxml/XmlReader;->expectedToken:Lcom/google/gson/stream/JsonToken;

    iget-object v1, p0, Lcom/stanfy/gsonxml/XmlReader;->token:Lcom/google/gson/stream/JsonToken;

    return-object v1

    :catch_0
    move-exception v0

    new-instance v1, Lcom/google/gson/JsonSyntaxException;

    const-string/jumbo v2, "XML parsing exception"

    invoke-direct {v1, v2, v0}, Lcom/google/gson/JsonSyntaxException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :catch_1
    move-exception v0

    new-instance v1, Lcom/google/gson/JsonSyntaxException;

    const-string/jumbo v2, "XML parsing exception"

    invoke-direct {v1, v2, v0}, Lcom/google/gson/JsonSyntaxException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
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

    iput-boolean v3, p0, Lcom/stanfy/gsonxml/XmlReader;->skipping:Z

    const/4 v1, 0x0

    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/stanfy/gsonxml/XmlReader;->peek()Lcom/google/gson/stream/JsonToken;

    move-result-object v2

    sget-object v3, Lcom/google/gson/stream/JsonToken;->BEGIN_ARRAY:Lcom/google/gson/stream/JsonToken;

    if-ne v2, v3, :cond_3

    :cond_1
    add-int/lit8 v1, v1, 0x1

    :cond_2
    :goto_0
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/stanfy/gsonxml/XmlReader;->token:Lcom/google/gson/stream/JsonToken;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    iput-boolean v4, p0, Lcom/stanfy/gsonxml/XmlReader;->skipping:Z

    return-void

    :cond_3
    :try_start_1
    sget-object v3, Lcom/google/gson/stream/JsonToken;->BEGIN_OBJECT:Lcom/google/gson/stream/JsonToken;

    if-eq v2, v3, :cond_1

    sget-object v3, Lcom/google/gson/stream/JsonToken;->END_ARRAY:Lcom/google/gson/stream/JsonToken;

    if-ne v2, v3, :cond_5

    :cond_4
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_5
    sget-object v3, Lcom/google/gson/stream/JsonToken;->END_OBJECT:Lcom/google/gson/stream/JsonToken;

    if-eq v2, v3, :cond_4

    iget-object v3, p0, Lcom/stanfy/gsonxml/XmlReader;->valuesQueue:Lcom/stanfy/gsonxml/XmlReader$ValueRef;

    if-eqz v3, :cond_2

    invoke-direct {p0}, Lcom/stanfy/gsonxml/XmlReader;->nextValue()Lcom/stanfy/gsonxml/XmlReader$ValueRef;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    iput-boolean v4, p0, Lcom/stanfy/gsonxml/XmlReader;->skipping:Z

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "--- XmlReader ---\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Lcom/stanfy/gsonxml/XmlReader;->dump()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
