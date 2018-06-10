.class public final Lcom/google/gson/JsonParser;
.super Ljava/lang/Object;
.source "JsonParser.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public parse(Lcom/google/gson/stream/JsonReader;)Lcom/google/gson/JsonElement;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/gson/JsonIOException;,
            Lcom/google/gson/JsonSyntaxException;
        }
    .end annotation

    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->isLenient()Z

    move-result v4

    const/4 v5, 0x1

    invoke-virtual {p1, v5}, Lcom/google/gson/stream/JsonReader;->setLenient(Z)V

    :try_start_0
    invoke-static {p1}, Lcom/google/gson/internal/Streams;->parse(Lcom/google/gson/stream/JsonReader;)Lcom/google/gson/JsonElement;
    :try_end_0
    .catch Ljava/lang/StackOverflowError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    invoke-virtual {p1, v4}, Lcom/google/gson/stream/JsonReader;->setLenient(Z)V

    return-object v0

    :catch_0
    move-exception v3

    :try_start_1
    new-instance v5, Lcom/google/gson/JsonParseException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Failed parsing JSON source: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " to Json"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6, v3}, Lcom/google/gson/JsonParseException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v1

    invoke-virtual {p1, v4}, Lcom/google/gson/stream/JsonReader;->setLenient(Z)V

    throw v1

    :catch_1
    move-exception v2

    :try_start_2
    new-instance v5, Lcom/google/gson/JsonParseException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Failed parsing JSON source: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " to Json"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6, v2}, Lcom/google/gson/JsonParseException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
.end method

.method public parse(Ljava/io/Reader;)Lcom/google/gson/JsonElement;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/gson/JsonIOException;,
            Lcom/google/gson/JsonSyntaxException;
        }
    .end annotation

    :try_start_0
    new-instance v4, Lcom/google/gson/stream/JsonReader;

    invoke-direct {v4, p1}, Lcom/google/gson/stream/JsonReader;-><init>(Ljava/io/Reader;)V

    invoke-virtual {p0, v4}, Lcom/google/gson/JsonParser;->parse(Lcom/google/gson/stream/JsonReader;)Lcom/google/gson/JsonElement;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/gson/JsonElement;->isJsonNull()Z

    move-result v5

    if-eqz v5, :cond_1

    :cond_0
    return-object v3

    :cond_1
    invoke-virtual {v4}, Lcom/google/gson/stream/JsonReader;->peek()Lcom/google/gson/stream/JsonToken;

    move-result-object v5

    sget-object v6, Lcom/google/gson/stream/JsonToken;->END_DOCUMENT:Lcom/google/gson/stream/JsonToken;

    if-eq v5, v6, :cond_0

    new-instance v5, Lcom/google/gson/JsonSyntaxException;

    const-string/jumbo v6, "Did not consume the entire document."

    invoke-direct {v5, v6}, Lcom/google/gson/JsonSyntaxException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_0
    .catch Lcom/google/gson/stream/MalformedJsonException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_2

    :catch_0
    move-exception v0

    new-instance v5, Lcom/google/gson/JsonSyntaxException;

    invoke-direct {v5, v0}, Lcom/google/gson/JsonSyntaxException;-><init>(Ljava/lang/Throwable;)V

    throw v5

    :catch_1
    move-exception v1

    new-instance v5, Lcom/google/gson/JsonIOException;

    invoke-direct {v5, v1}, Lcom/google/gson/JsonIOException;-><init>(Ljava/lang/Throwable;)V

    throw v5

    :catch_2
    move-exception v2

    new-instance v5, Lcom/google/gson/JsonSyntaxException;

    invoke-direct {v5, v2}, Lcom/google/gson/JsonSyntaxException;-><init>(Ljava/lang/Throwable;)V

    throw v5
.end method

.method public parse(Ljava/lang/String;)Lcom/google/gson/JsonElement;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/gson/JsonSyntaxException;
        }
    .end annotation

    new-instance v0, Ljava/io/StringReader;

    invoke-direct {v0, p1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/google/gson/JsonParser;->parse(Ljava/io/Reader;)Lcom/google/gson/JsonElement;

    move-result-object v0

    return-object v0
.end method
