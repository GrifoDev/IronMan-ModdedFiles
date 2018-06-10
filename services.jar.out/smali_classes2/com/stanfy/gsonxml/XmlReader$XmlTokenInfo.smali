.class final Lcom/stanfy/gsonxml/XmlReader$XmlTokenInfo;
.super Ljava/lang/Object;
.source "XmlReader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stanfy/gsonxml/XmlReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "XmlTokenInfo"
.end annotation


# instance fields
.field attributesData:Lcom/stanfy/gsonxml/XmlReader$AttributesData;

.field name:Ljava/lang/String;

.field ns:Ljava/lang/String;

.field type:I

.field value:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/stanfy/gsonxml/XmlReader$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/stanfy/gsonxml/XmlReader$XmlTokenInfo;-><init>()V

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, -0x1

    iput v0, p0, Lcom/stanfy/gsonxml/XmlReader$XmlTokenInfo;->type:I

    iput-object v1, p0, Lcom/stanfy/gsonxml/XmlReader$XmlTokenInfo;->name:Ljava/lang/String;

    iput-object v1, p0, Lcom/stanfy/gsonxml/XmlReader$XmlTokenInfo;->value:Ljava/lang/String;

    iput-object v1, p0, Lcom/stanfy/gsonxml/XmlReader$XmlTokenInfo;->ns:Ljava/lang/String;

    iput-object v1, p0, Lcom/stanfy/gsonxml/XmlReader$XmlTokenInfo;->attributesData:Lcom/stanfy/gsonxml/XmlReader$AttributesData;

    return-void
.end method

.method public getName(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    iget-object v0, p0, Lcom/stanfy/gsonxml/XmlReader$XmlTokenInfo;->name:Ljava/lang/String;

    iget-object v1, p0, Lcom/stanfy/gsonxml/XmlReader$XmlTokenInfo;->ns:Ljava/lang/String;

    invoke-static {v0, v1, p1}, Lcom/stanfy/gsonxml/XmlReader;->nameWithNs(Ljava/lang/String;Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "xml "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v0, p0, Lcom/stanfy/gsonxml/XmlReader$XmlTokenInfo;->type:I

    const/4 v2, 0x1

    if-eq v0, v2, :cond_0

    iget v0, p0, Lcom/stanfy/gsonxml/XmlReader$XmlTokenInfo;->type:I

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1

    const-string/jumbo v0, "value"

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " <"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/stanfy/gsonxml/XmlReader$XmlTokenInfo;->ns:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/stanfy/gsonxml/XmlReader$XmlTokenInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ">="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/stanfy/gsonxml/XmlReader$XmlTokenInfo;->value:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lcom/stanfy/gsonxml/XmlReader$XmlTokenInfo;->attributesData:Lcom/stanfy/gsonxml/XmlReader$AttributesData;

    if-nez v0, :cond_2

    const-string/jumbo v0, ""

    :goto_1
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string/jumbo v0, "start"

    goto :goto_0

    :cond_1
    const-string/jumbo v0, "end"

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/stanfy/gsonxml/XmlReader$XmlTokenInfo;->attributesData:Lcom/stanfy/gsonxml/XmlReader$AttributesData;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method
