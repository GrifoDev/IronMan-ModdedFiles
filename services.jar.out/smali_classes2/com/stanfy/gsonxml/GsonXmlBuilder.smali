.class public Lcom/stanfy/gsonxml/GsonXmlBuilder;
.super Ljava/lang/Object;
.source "GsonXmlBuilder.java"


# instance fields
.field private coreBuilder:Lcom/google/gson/GsonBuilder;

.field private final options:Lcom/stanfy/gsonxml/XmlReader$Options;

.field private xmlParserCreator:Lcom/stanfy/gsonxml/XmlParserCreator;


# direct methods
.method public constructor <init>()V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/stanfy/gsonxml/XmlReader$Options;

    invoke-direct {v0}, Lcom/stanfy/gsonxml/XmlReader$Options;-><init>()V

    iput-object v0, p0, Lcom/stanfy/gsonxml/GsonXmlBuilder;->options:Lcom/stanfy/gsonxml/XmlReader$Options;

    iget-object v0, p0, Lcom/stanfy/gsonxml/GsonXmlBuilder;->options:Lcom/stanfy/gsonxml/XmlReader$Options;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/stanfy/gsonxml/XmlReader$Options;->skipRoot:Z

    iget-object v0, p0, Lcom/stanfy/gsonxml/GsonXmlBuilder;->options:Lcom/stanfy/gsonxml/XmlReader$Options;

    iput-boolean v2, v0, Lcom/stanfy/gsonxml/XmlReader$Options;->namespaces:Z

    iget-object v0, p0, Lcom/stanfy/gsonxml/GsonXmlBuilder;->options:Lcom/stanfy/gsonxml/XmlReader$Options;

    iput-boolean v2, v0, Lcom/stanfy/gsonxml/XmlReader$Options;->sameNameList:Z

    return-void
.end method


# virtual methods
.method public create()Lcom/stanfy/gsonxml/GsonXml;
    .locals 4

    iget-object v0, p0, Lcom/stanfy/gsonxml/GsonXmlBuilder;->coreBuilder:Lcom/google/gson/GsonBuilder;

    if-eqz v0, :cond_0

    :goto_0
    new-instance v0, Lcom/stanfy/gsonxml/GsonXml;

    iget-object v1, p0, Lcom/stanfy/gsonxml/GsonXmlBuilder;->coreBuilder:Lcom/google/gson/GsonBuilder;

    invoke-virtual {v1}, Lcom/google/gson/GsonBuilder;->create()Lcom/google/gson/Gson;

    move-result-object v1

    iget-object v2, p0, Lcom/stanfy/gsonxml/GsonXmlBuilder;->xmlParserCreator:Lcom/stanfy/gsonxml/XmlParserCreator;

    iget-object v3, p0, Lcom/stanfy/gsonxml/GsonXmlBuilder;->options:Lcom/stanfy/gsonxml/XmlReader$Options;

    invoke-direct {v0, v1, v2, v3}, Lcom/stanfy/gsonxml/GsonXml;-><init>(Lcom/google/gson/Gson;Lcom/stanfy/gsonxml/XmlParserCreator;Lcom/stanfy/gsonxml/XmlReader$Options;)V

    return-object v0

    :cond_0
    new-instance v0, Lcom/google/gson/GsonBuilder;

    invoke-direct {v0}, Lcom/google/gson/GsonBuilder;-><init>()V

    iput-object v0, p0, Lcom/stanfy/gsonxml/GsonXmlBuilder;->coreBuilder:Lcom/google/gson/GsonBuilder;

    goto :goto_0
.end method

.method public setPrimitiveArrays(Z)Lcom/stanfy/gsonxml/GsonXmlBuilder;
    .locals 1

    iget-object v0, p0, Lcom/stanfy/gsonxml/GsonXmlBuilder;->options:Lcom/stanfy/gsonxml/XmlReader$Options;

    iput-boolean p1, v0, Lcom/stanfy/gsonxml/XmlReader$Options;->primitiveArrays:Z

    return-object p0
.end method

.method public setRootArrayPrimitive(Z)Lcom/stanfy/gsonxml/GsonXmlBuilder;
    .locals 1

    iget-object v0, p0, Lcom/stanfy/gsonxml/GsonXmlBuilder;->options:Lcom/stanfy/gsonxml/XmlReader$Options;

    iput-boolean p1, v0, Lcom/stanfy/gsonxml/XmlReader$Options;->rootArrayPrimitive:Z

    return-object p0
.end method

.method public setSameNameLists(Z)Lcom/stanfy/gsonxml/GsonXmlBuilder;
    .locals 1

    iget-object v0, p0, Lcom/stanfy/gsonxml/GsonXmlBuilder;->options:Lcom/stanfy/gsonxml/XmlReader$Options;

    iput-boolean p1, v0, Lcom/stanfy/gsonxml/XmlReader$Options;->sameNameList:Z

    return-object p0
.end method

.method public setSkipRoot(Z)Lcom/stanfy/gsonxml/GsonXmlBuilder;
    .locals 1

    iget-object v0, p0, Lcom/stanfy/gsonxml/GsonXmlBuilder;->options:Lcom/stanfy/gsonxml/XmlReader$Options;

    iput-boolean p1, v0, Lcom/stanfy/gsonxml/XmlReader$Options;->skipRoot:Z

    return-object p0
.end method

.method public setTreatNamespaces(Z)Lcom/stanfy/gsonxml/GsonXmlBuilder;
    .locals 1

    iget-object v0, p0, Lcom/stanfy/gsonxml/GsonXmlBuilder;->options:Lcom/stanfy/gsonxml/XmlReader$Options;

    iput-boolean p1, v0, Lcom/stanfy/gsonxml/XmlReader$Options;->namespaces:Z

    return-object p0
.end method

.method public setXmlParserCreator(Lcom/stanfy/gsonxml/XmlParserCreator;)Lcom/stanfy/gsonxml/GsonXmlBuilder;
    .locals 0

    iput-object p1, p0, Lcom/stanfy/gsonxml/GsonXmlBuilder;->xmlParserCreator:Lcom/stanfy/gsonxml/XmlParserCreator;

    return-object p0
.end method

.method public wrap(Lcom/google/gson/GsonBuilder;)Lcom/stanfy/gsonxml/GsonXmlBuilder;
    .locals 0

    iput-object p1, p0, Lcom/stanfy/gsonxml/GsonXmlBuilder;->coreBuilder:Lcom/google/gson/GsonBuilder;

    return-object p0
.end method
