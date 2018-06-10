.class public Lcom/stanfy/gsonxml/GsonXml;
.super Ljava/lang/Object;
.source "GsonXml.java"


# instance fields
.field private final core:Lcom/google/gson/Gson;

.field private final options:Lcom/stanfy/gsonxml/XmlReader$Options;

.field private final xmlParserCreator:Lcom/stanfy/gsonxml/XmlParserCreator;


# direct methods
.method constructor <init>(Lcom/google/gson/Gson;Lcom/stanfy/gsonxml/XmlParserCreator;Lcom/stanfy/gsonxml/XmlReader$Options;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p2, :cond_0

    iput-object p1, p0, Lcom/stanfy/gsonxml/GsonXml;->core:Lcom/google/gson/Gson;

    iput-object p2, p0, Lcom/stanfy/gsonxml/GsonXml;->xmlParserCreator:Lcom/stanfy/gsonxml/XmlParserCreator;

    iput-object p3, p0, Lcom/stanfy/gsonxml/GsonXml;->options:Lcom/stanfy/gsonxml/XmlReader$Options;

    return-void

    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "XmlParserCreator is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static assertFullConsumption(Ljava/lang/Object;Lcom/google/gson/stream/JsonReader;)V
    .locals 4

    if-nez p0, :cond_1

    :cond_0
    return-void

    :cond_1
    :try_start_0
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->peek()Lcom/google/gson/stream/JsonToken;

    move-result-object v2

    sget-object v3, Lcom/google/gson/stream/JsonToken;->END_DOCUMENT:Lcom/google/gson/stream/JsonToken;

    if-eq v2, v3, :cond_0

    new-instance v2, Lcom/google/gson/JsonIOException;

    const-string/jumbo v3, "JSON document was not fully consumed."

    invoke-direct {v2, v3}, Lcom/google/gson/JsonIOException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catch Lcom/google/gson/stream/MalformedJsonException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    :catch_0
    move-exception v0

    new-instance v2, Lcom/google/gson/JsonSyntaxException;

    invoke-direct {v2, v0}, Lcom/google/gson/JsonSyntaxException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    :catch_1
    move-exception v1

    new-instance v2, Lcom/google/gson/JsonIOException;

    invoke-direct {v2, v1}, Lcom/google/gson/JsonIOException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method


# virtual methods
.method public fromXml(Lcom/stanfy/gsonxml/XmlReader;Ljava/lang/reflect/Type;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/stanfy/gsonxml/XmlReader;",
            "Ljava/lang/reflect/Type;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/gson/JsonIOException;,
            Lcom/google/gson/JsonSyntaxException;
        }
    .end annotation

    iget-object v0, p0, Lcom/stanfy/gsonxml/GsonXml;->core:Lcom/google/gson/Gson;

    invoke-virtual {v0, p1, p2}, Lcom/google/gson/Gson;->fromJson(Lcom/google/gson/stream/JsonReader;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public fromXml(Ljava/io/Reader;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/io/Reader;",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/gson/JsonSyntaxException;,
            Lcom/google/gson/JsonIOException;
        }
    .end annotation

    new-instance v0, Lcom/stanfy/gsonxml/XmlReader;

    iget-object v2, p0, Lcom/stanfy/gsonxml/GsonXml;->xmlParserCreator:Lcom/stanfy/gsonxml/XmlParserCreator;

    iget-object v3, p0, Lcom/stanfy/gsonxml/GsonXml;->options:Lcom/stanfy/gsonxml/XmlReader$Options;

    invoke-direct {v0, p1, v2, v3}, Lcom/stanfy/gsonxml/XmlReader;-><init>(Ljava/io/Reader;Lcom/stanfy/gsonxml/XmlParserCreator;Lcom/stanfy/gsonxml/XmlReader$Options;)V

    invoke-virtual {p0, v0, p2}, Lcom/stanfy/gsonxml/GsonXml;->fromXml(Lcom/stanfy/gsonxml/XmlReader;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/stanfy/gsonxml/GsonXml;->assertFullConsumption(Ljava/lang/Object;Lcom/google/gson/stream/JsonReader;)V

    invoke-static {p2}, Lcom/google/gson/internal/Primitives;->wrap(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    return-object v2
.end method

.method public fromXml(Ljava/io/Reader;Ljava/lang/reflect/Type;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/io/Reader;",
            "Ljava/lang/reflect/Type;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/gson/JsonIOException;,
            Lcom/google/gson/JsonSyntaxException;
        }
    .end annotation

    new-instance v0, Lcom/stanfy/gsonxml/XmlReader;

    iget-object v2, p0, Lcom/stanfy/gsonxml/GsonXml;->xmlParserCreator:Lcom/stanfy/gsonxml/XmlParserCreator;

    iget-object v3, p0, Lcom/stanfy/gsonxml/GsonXml;->options:Lcom/stanfy/gsonxml/XmlReader$Options;

    invoke-direct {v0, p1, v2, v3}, Lcom/stanfy/gsonxml/XmlReader;-><init>(Ljava/io/Reader;Lcom/stanfy/gsonxml/XmlParserCreator;Lcom/stanfy/gsonxml/XmlReader$Options;)V

    invoke-virtual {p0, v0, p2}, Lcom/stanfy/gsonxml/GsonXml;->fromXml(Lcom/stanfy/gsonxml/XmlReader;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/stanfy/gsonxml/GsonXml;->assertFullConsumption(Ljava/lang/Object;Lcom/google/gson/stream/JsonReader;)V

    return-object v1
.end method

.method public fromXml(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/gson/JsonSyntaxException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/stanfy/gsonxml/GsonXml;->fromXml(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {p2}, Lcom/google/gson/internal/Primitives;->wrap(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public fromXml(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Type;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/gson/JsonSyntaxException;
        }
    .end annotation

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    new-instance v0, Ljava/io/StringReader;

    invoke-direct {v0, p1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, p2}, Lcom/stanfy/gsonxml/GsonXml;->fromXml(Ljava/io/Reader;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v1

    return-object v1

    :cond_0
    return-object v2
.end method

.method public getGson()Lcom/google/gson/Gson;
    .locals 1

    iget-object v0, p0, Lcom/stanfy/gsonxml/GsonXml;->core:Lcom/google/gson/Gson;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/stanfy/gsonxml/GsonXml;->core:Lcom/google/gson/Gson;

    invoke-virtual {v0}, Lcom/google/gson/Gson;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
