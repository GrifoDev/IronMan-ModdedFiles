.class final Lcom/stanfy/gsonxml/XmlReader$AttributesData;
.super Ljava/lang/Object;
.source "XmlReader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stanfy/gsonxml/XmlReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "AttributesData"
.end annotation


# instance fields
.field count:I

.field names:[Ljava/lang/String;

.field ns:[Ljava/lang/String;

.field final synthetic this$0:Lcom/stanfy/gsonxml/XmlReader;

.field values:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/stanfy/gsonxml/XmlReader;I)V
    .locals 1

    iput-object p1, p0, Lcom/stanfy/gsonxml/XmlReader$AttributesData;->this$0:Lcom/stanfy/gsonxml/XmlReader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/stanfy/gsonxml/XmlReader$AttributesData;->count:I

    invoke-direct {p0, p2}, Lcom/stanfy/gsonxml/XmlReader$AttributesData;->createArrays(I)V

    return-void
.end method

.method private createArrays(I)V
    .locals 1

    new-array v0, p1, [Ljava/lang/String;

    iput-object v0, p0, Lcom/stanfy/gsonxml/XmlReader$AttributesData;->names:[Ljava/lang/String;

    new-array v0, p1, [Ljava/lang/String;

    iput-object v0, p0, Lcom/stanfy/gsonxml/XmlReader$AttributesData;->values:[Ljava/lang/String;

    new-array v0, p1, [Ljava/lang/String;

    iput-object v0, p0, Lcom/stanfy/gsonxml/XmlReader$AttributesData;->ns:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public fill(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 4

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v0

    iget-object v2, p0, Lcom/stanfy/gsonxml/XmlReader$AttributesData;->names:[Ljava/lang/String;

    array-length v2, v2

    if-gt v0, v2, :cond_0

    :goto_0
    iput v0, p0, Lcom/stanfy/gsonxml/XmlReader$AttributesData;->count:I

    const/4 v1, 0x0

    :goto_1
    if-lt v1, v0, :cond_1

    return-void

    :cond_0
    invoke-direct {p0, v0}, Lcom/stanfy/gsonxml/XmlReader$AttributesData;->createArrays(I)V

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/stanfy/gsonxml/XmlReader$AttributesData;->names:[Ljava/lang/String;

    invoke-interface {p1, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1

    iget-object v2, p0, Lcom/stanfy/gsonxml/XmlReader$AttributesData;->this$0:Lcom/stanfy/gsonxml/XmlReader;

    iget-object v2, v2, Lcom/stanfy/gsonxml/XmlReader;->options:Lcom/stanfy/gsonxml/XmlReader$Options;

    iget-boolean v2, v2, Lcom/stanfy/gsonxml/XmlReader$Options;->namespaces:Z

    if-nez v2, :cond_2

    :goto_2
    iget-object v2, p0, Lcom/stanfy/gsonxml/XmlReader$AttributesData;->values:[Ljava/lang/String;

    invoke-interface {p1, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    iget-object v2, p0, Lcom/stanfy/gsonxml/XmlReader$AttributesData;->ns:[Ljava/lang/String;

    invoke-interface {p1, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributePrefix(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1

    goto :goto_2
.end method

.method public getName(I)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    iget-object v0, p0, Lcom/stanfy/gsonxml/XmlReader$AttributesData;->names:[Ljava/lang/String;

    aget-object v0, v0, p1

    iget-object v1, p0, Lcom/stanfy/gsonxml/XmlReader$AttributesData;->ns:[Ljava/lang/String;

    aget-object v1, v1, p1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/stanfy/gsonxml/XmlReader;->nameWithNs(Ljava/lang/String;Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
